/*
 * NibblerDX for the Amstrad CPC
 * Copyright (C) 2024 Dave Moore
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License
 * as published by the Free Software Foundation; either version 2
 * of the License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; If not, see <http://www.gnu.org/licenses/>.
 */

#include "game.h"

/* Game Options */
bool g_options[3];

/* Hi-Score Table */
score_t g_hiscores[5];

/* Interrupt Index */
static u8 int_idx = 0;

/* Frame Counter */
static u8 frame_c = 0;

/* Current Level */
static u8 level;
static u8 round;
static u8 lives;

/* Current Score */
static u32 score;

/* Game Playfield Screen Location */
static const pos_t pf_loc = {.x = 0, .y = 0};
static const dim_t pf_sz = {.w = 40, .h = 21};
static const pos_t hud_loc = {.x = 0, .y = 22};
static const pos_t sn_start = {.x = 24, .y = 19};

/* Gems Left on the Playfield */
static gem_t gems[25];

/* Working Playfield for the Current Level */
static u8 pf[40 * 21];

/* Game Snake */
static snake_t sn;
static snake_t sn_buf;
static const u8 sn_len = 10;
static const u8 sn_max = 62;

/* Whither or not we need to reset gems */
static bool easy_mode;
static bool reset_gems = false;

/* Set default options and hiscores (precalculated for speed) */
void g_setup(void) {

	g_options[0] = true; /* Easy Mode */
	g_options[1] = true; /* Keyboard Controls */
	g_options[2] = true; /* Sound and Music on */

	/*
	 * Populate Hi-Score table (in ascending order as this will be the order
	 * it is sorted into by the Quicksoft algorithm
	 */
	h_insert("DSM", 100, 0);
	h_insert("DSM", 1000, 1);
	h_insert("DSM", 10000, 2);
	h_insert("DSM", 100000, 3);
	h_insert("DSM", 1000000, 4);
}

/* Start a new game */
u32 g_start(void) {

	bool game_over = false, lvl_complete;
	u8 gems_left;
	bool reset_gems = true;

	/* Initial Settings */
	level = 1;
	round = 1;
	lives = 3;
	score = 0;
	easy_mode = g_options[0];
	reset_gems = true;

	/* Keep going until game over! */
	while (!game_over) {

		/* Display transition screen */
		b_scr_start(SCR_GET_READY, round, level);
		b_scr_stop();
		v_blk_scr();
		v_clr_scr();

		/* Load the appropriate level data */
		g_load_level(level, &gems_left, reset_gems);
		g_reset_snake(&sn, &sn_buf);
		if (easy_mode)
			reset_gems = false;

		/* Draw the fixed elements of the HUD */
		g_display_HUD();
		v_draw_pf(pf, &pf_loc, &pf_sz);
		v_draw_gems(gems, &pf_loc);
		v_draw_snake(&sn, &pf_loc);

		/*
		 * Setup Screen Rasters (note this raster interrupt also calls
		 * the global clock interrupt)
		 */
		v_wait_VSYNC(2);
		g_clock_on = false;
		g_clock.ms = g_clock.s = 0;
		cpct_setBorder(HW_BLACK);
		int_idx = 0;
		cpct_setInterruptHandler(g_interrupt);

		/* Switch on the Real Time Clock */
		g_clock_on = true;

		/* Start the game */
		lvl_complete = g_play_level(level, &gems_left);
		g_stop();
		g_clock_on = false;

		/* Check if we've completed the level successfully */
		if (lvl_complete) {

			/* Level Completed so onto the next! */
			++level;
			if (level > 10) {
				++round;
				level = 1;
			}
			reset_gems = true;	
		} else {

			/* Level Failed so lose a live */
			if (lives == 0) {

				/* Display Game over screen */
				g_stop();
				b_scr_start(SCR_GAME_OVER, 0, 0);
				b_scr_stop();
				h_start(score);
				h_stop();

				game_over = true;
			} else {
				v_wipe_scr(true);
				cpct_removeInterruptHandler();
				--lives;
				reset_gems = !easy_mode;
			}
		}
	}

	return score;
}

/* Stop a game */
void g_stop(void) {

	v_wipe_scr(true);
	v_blk_scr();
	v_clr_scr();
	cpct_removeInterruptHandler();
}

/* Handle the Game Level Playing */
static bool g_play_level(const u8 level, u8* gems_left) {

	volatile bool finished = false, success = false;
	volatile u16 count = 0;
	bool move_l = false, move_r = false;
	bool paused, moved;
	u16 key_l, key_r;
	u8 c_offset = g_options[1] ? 0 : 2;
	dir_t dir = DIR_EAST;
	const u8 diff_c = g_options[0] ? 5 : 2;
	const u8 diff_mod = g_options[0] ? 1 : 10;
	i8 gem_ate;

	static const u16 controls[4][4] = {
		{Key_CursorLeft, Key_CursorRight, Joy0_Left, Joy0_Right},
		{Key_CursorUp, Key_CursorDown, Joy0_Up, Joy0_Down},
		{Key_CursorRight, Key_CursorLeft, Joy0_Right, Joy0_Left},
		{Key_CursorDown, Key_CursorUp, Joy0_Down, Joy0_Up}};

	cpct_waitVSYNC();

	/* Keep going until we've lost a life or cleared the level */
	paused = false;

	while (!finished) {

		/* Work out Controls */
		if (frame_c % 1 == 0) {
			key_l = controls[sn.direction][c_offset];
			key_r = controls[sn.direction][c_offset + 1];
			move_l = cpct_isKeyPressed(key_l);
			move_r = cpct_isKeyPressed(key_r);

			/* Quit Key */
			if (cpct_isKeyPressed(Key_Q)) {
				finished = true;
				success = false;
				lives = 0;
			}
	
#ifdef DEBUG_LEVEL_SKIP

			/* Cheat Key */
			if (cpct_isKeyPressed(Key_C)) {
				finished = true;
				success = true;
			}
#endif

			/* Pause Key */
			if (cpct_isKeyPressed(Key_P)) {
				paused = !paused;
				if (paused)
					u_wait(1000);
			}
		}

		if (paused)
			continue;

		/* Main Loop */
		if (frame_c % diff_c == 0) {

			/* Copy the old snake into the Buffer */
			s_copy_snake(&sn, &sn_buf);

			/* Update the snake position */
			moved = s_update_snake(pf, pf_sz.w, &sn, sn_max, false);
			gem_ate = u_has_eaten_gem(&sn, gems);
			if (gem_ate > -1) {

				/* Lengthen the snake by 3 segments */
				sn.increment = 3;
				gems[gem_ate].active = false;
				gems[gem_ate].loc.x = 0;
				gems[gem_ate].loc.y = 0;
				--*gems_left;
				score += level * level * round * 10 * diff_mod;
				g_redraw_score(score);
			}

			/* If we have eaten all the Gems! */
			if (*gems_left == 0) {

				success = true;
				break;
			}

			/* If the snake has moved, redraw it appropriately */
			if (moved) {

				/* Undraw the Head and redraw it as a Segment */
				cpct_waitVSYNC();
				v_erase_snake_seg(&sn_buf, &pf_loc, 0);
				v_draw_snake_seg(&sn_buf, &pf_loc, 0, false);

				/* Draw the new head */
				v_draw_snake_seg(&sn, &pf_loc, 0, true);
				
				/* Erase the Tail */
				if ((sn.increment == 0) || 
					(sn.increment == 3)) {
					v_erase_snake_seg(&sn_buf, &pf_loc,
						sn_buf.length - 1);
				}
			} else {

				/*
				 * If we can't move, we are at a dead end, and
				 * if there are still gems left, we have failed
				 * to complete the level!
				 */
				success = false;
				break;

			}

			/* Check for Collision */
#ifndef DEBUG_NO_COLLISION_DETECTION
			if (s_check_collide(&sn)) {
				success = false;
				break;
			}
#endif

			/* Briefly Flash the Border whilst Eating */
			if (sn.increment > 1)
				cpct_setBorder(HW_LIME);
			else if (sn.increment == 1)
				cpct_setBorder(bord_col);

			/* And change direction */
			if (move_l == true) {

				/* Turn snake left */
				if (u_check_dir(pf, pf_sz.w, &sn, -90)) {	
					sn.direction = u_get_dir(
						sn.direction, -90);
					move_l = false;
				}
			} else if (move_r == true) {

				/* Turn snake right */
				if (u_check_dir(pf, pf_sz.w, &sn, 90)) {	
					sn.direction = u_get_dir(
						sn.direction, 90);
					move_r = false;
				}
			}

			cpct_waitVSYNC();
		}
	}

	if (!success) {
		cpct_setBorder(HW_BRIGHT_RED);
		v_erase_snake_timed(&sn, &pf_loc, 1000);
		cpct_setBorder(HW_BLACK);
	} else
		v_flash_brd(HW_BRIGHT_GREEN, 500);

	return success;
}

/* Draw the HUD */
static void g_display_HUD(void) {

	u8 width, y = hud_loc.y * LINE_PY;

	/* Print the Current Score */
	v_print(g_strings[51], 2, y, 2);
	v_print(g_strings[50], 16, y, 1);
	width = u_get_width(score);
	v_print_n(score, 16 + (20 - (width * 2)), y, 1);

	/* Print the High Score */
	v_print(g_strings[52], 46, y, 2);
	v_print(g_strings[50], 58, y, 1);
	width = u_get_width(g_hiscores[4].score);
	v_print_n(g_hiscores[4].score, 58 + (20 - (width * 2)), y, 1);

	/* Display Remaining Lives */
	y += LINE_PY * 2;
	v_print(g_strings[53], 2, y, 2);
	g_display_lives(16, y);
	v_print(g_strings[57], 32, y, 2);

	/* Display Round and Level */
	v_print(g_strings[54], 44, y, 2);
	v_print_n(round, 58, y, 3);
	v_print(g_strings[55], 62, y, 2);
	v_print_n(level, 76, y, 3);
}

/* Redraw the Current Score */
static void g_redraw_score(const u32 score) {

	u8 width, y = hud_loc.y * LINE_PY;
	width = u_get_width(score);
	v_print_n(score, 16 + (20 - (width * 2)), y, 1);
}

/* Draw Remaining Lives */
static void g_display_lives(const u8 x, const u8 y) {

	u8 *pos;

	for (u8 i = 0; i < lives; i++) {

		pos = v_get_sp(x + (i * 2), y);
		cpct_drawSpriteBlended(
			pos, CHAR_BYTES_H, CHAR_BYTES_W, sprite_ts[DIR_WEST]);
	}
}

/* Raster Interrupt for the Game Screen */
static void g_interrupt(void) {

	static const char game_pal[6][4] = {
		{HW_BLACK, HW_PASTEL_BLUE, HW_BRIGHT_YELLOW, HW_BRIGHT_RED},
		{HW_BLACK, HW_PASTEL_BLUE, HW_BRIGHT_YELLOW, HW_BRIGHT_RED},
		{HW_BLACK, HW_PASTEL_BLUE, HW_BRIGHT_YELLOW, HW_BRIGHT_RED},
		{HW_BLACK, HW_PASTEL_BLUE, HW_BRIGHT_YELLOW, HW_BRIGHT_RED},
		{HW_BLACK, HW_BRIGHT_WHITE, HW_ORANGE, HW_BRIGHT_RED},
		{HW_BLACK, HW_BRIGHT_WHITE, HW_ORANGE, HW_BRIGHT_RED}};

	/* Adjust the position of one raster to allow more fine tuning */
	if (int_idx == 4)
		u_wait(75);

	/*
	 * This is called every 1/300 of a second, but since the screen refresh
	 * rate is 1/50 of a second, this means that using this simple method,
	 * we can change the Screen Colours a maximum of 6 times (every 33
	 * pixels) during one screen draw!
	 */
	if (int_idx < 4) {

		/* Handle additional ink switching per level */
		cpct_setPALColour(1, g_game_pf_cols[level -1]);
		cpct_setPALColour(2, game_pal[int_idx][2]);
		cpct_setPALColour(3, game_pal[int_idx][3]);

	} else
		cpct_setPalette(game_pal[int_idx], 4);

	int_idx = ++int_idx % 6;

	/* Frame Counter */
	if (int_idx == 0) {
		++frame_c;
		if (frame_c > 250)
			frame_c = 0;
	}

	/* Scan Keyboard every 1/50 of a second */
	if (int_idx == 1)
		cpct_scanKeyboard_if();

	/* Call the real time clock whilst in game */
	u_clock_interrupt();
}

/* Load data for current level */
static void g_load_level(const u8 level, u8 *gems_left, const bool reset_gems) {

	pos_t* gem_source;

	/* Load the Playfield */
	cpct_memset(&pf, 0x00, sizeof(pf));
	cpct_memcpy(&pf, g_game_pf[level - 1], sizeof(pf));

	/* Reload the Gems if necessary */
	if (reset_gems) {

		*gems_left = g_game_pf_count[level - 1];
		cpct_memset(&gems, 0x00, sizeof(gem_t));
		gem_source = g_game_gems[level - 1];
		for (int i = 0; i < 25; i++) {
			if (i < *gems_left) {
				gems[i].loc.x = gem_source[i].x;
				gems[i].loc.y = gem_source[i].y;
				gems[i].active = true;
			} else {
				gems[i].loc.x = 0;
				gems[i].loc.y = 0;
				gems[i].active = false;
			}
		}
	} else
		*gems_left = *gems_left;
}

/* Reset Game Snake to starting position and size */
static void g_reset_snake(snake_t *snake, snake_t *snake_buf) {

	cpct_memset(&snake->body, 0x00, sizeof(snake->body));
	cpct_memset(&snake_buf->body, 0x00, sizeof(snake_buf->body));

	s_create_snake(snake, &sn_start, sn_len, DIR_EAST);
}

/* Can the snake move forward in its current direction of travel? */
static bool g_test_can_move(
	const u8 *pf, const u8 w, const snake_t *snake, const dir_t dir) {

	i8 dx, dy;
	u8 cx = snake->body[0].x, cy = snake->body[0].y, cell;

	/* Get the cell in the direction ahead of the snake */
	u_get_delta(dir, &dx, &dy, true);

	/* All playfields are fully bounded with walls */
	cx += dx;
	cy += dy;

	/* 21 is empty space and 5 is a gem */
	cell = pf[cx + (cy * w)];
	return cell == CELL_EMPTY;
}
