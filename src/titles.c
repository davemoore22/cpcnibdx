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
#include "titles.h"

/* Interrupt Index */
static u8 int_idx = 0;

/* Screen Layout */
static const pos_t hi_loc = {.x = 18, .y = 14};
static const pos_t mn_loc = {.x = 10, .y = 14};
static const u8 mn_key_x = 19;
static const u8 mn_name_x = 24;
static const u8 mn_icon_x = 57;

/* Start the Title Screen */
cpct_keyID t_start(bool skip) {

	bool quit = false;
	u16 count = 0;
	phase_t ph = DISP_MENU;

	/* Clear the Screen */
	v_blk_scr();
	v_clr_scr();

	/* Display the Title Screen  */
	if (!skip) {
		v_draw_logo();
		t_draw_text();
		t_draw_menu(true);

		/* Setup Screen Rasters if we are using them */
		v_wait_VSYNC(2);

		cpct_setBorder(HW_BLACK);
		int_idx = 0;
		cpct_setInterruptHandler(t_interrupt);

		/*
		 * Run the Title Menu/Hi-Score table until the Quit Key is
		 * pressed, or an option is chosen!
		 */
		while (1) {
			++count;

			/* Alternate the Menu and Hi Scoress */
			if (count == 15001) {
				cpct_waitVSYNC();
				t_draw_hiscores();
				++ph;
			} else if (count == 30001) {
				cpct_waitVSYNC();
				t_draw_menu(true);
				--ph;
			}

			/* Check for a Key Press at regular intervals */
			if (count % 200 == 0) {

				cpct_scanKeyboard();
				if (cpct_isKeyPressed(Key_1)) {

					/* 1 to change Game Mode */
					g_options[0] = !g_options[0];
					if (ph == DISP_MENU) {
						cpct_waitVSYNC();
						t_draw_menu(false);
					}
				} else if (cpct_isKeyPressed(Key_2)) {

					/* 2 to change Controls */
					g_options[1] = !g_options[1];
					if (ph == DISP_MENU) {
						cpct_waitVSYNC();
						t_draw_menu(false);
					}
				} else if (cpct_isKeyPressed(Key_3)) {

					/* 3 to toggle Sound/Music on of off */
					if (ph == DISP_MENU) {
						g_options[2] = !g_options[2];
						cpct_waitVSYNC();
						t_draw_menu(false);
					}
				} else if (cpct_isKeyPressed(Key_0)) {

					/* If 0 is pressed, we can quit game */
					return Key_0;
				} else if (cpct_isKeyPressed(Key_9)) {

					/* We can start a new game */
					return Key_9;
				}
			}

			if (count > 30002)
				count = 0;
		}
	} else {

		/* Just skip directly to the game */
		return Key_9;
	}
}

/* Stop the Title Screen */
void t_stop(void) {

	v_wipe_scr(true);
	v_blk_scr();
	v_clr_scr();
	cpct_removeInterruptHandler();
	int_idx = 0;
}

/* Draw the High Score Table */
static void t_draw_hiscores(void) {

	u8 y = hi_loc.y * LINE_PY;
	u8 *bg_pos;
	char *str;

	/* Clear the Screen Area to prevent artefacts */
	bg_pos = v_get_sp(10, y - 4);
	cpct_drawSolidBox(bg_pos, 0, 60, 200 - y + 8);
	bg_pos = v_get_sp(40, y - 4);
	cpct_drawSolidBox(bg_pos, 0, 60, 200 - y + 8);

	/* Draw each line of the Hi Score table */
	v_print_c(g_strings[22], y, 3);
	y += LINE_PY * 2;

	/* Remember this is always sorted in ascending order */
	for (int i = 4; i >= 0; i--) {

		/* Display each line of the Hi-Score table */
		str = &g_hiscores[i].initials[0];
		v_print(g_hiscores[i].initials, hi_loc.x, y, 2);
		v_print(g_strings[23], hi_loc.x + 7, y, 1);
		v_print(g_strings[24], hi_loc.x + 23, y, 2);
		v_print_n(g_hiscores[i].score,
			(hi_loc.x + 43) - (g_hiscores[i].width * 2), y, 2);
		y += LINE_PY * 2;
	}
}

/*  Raster Interrupt for the Title Screen */
static void t_interrupt(void) {

	static const char title_pal[6][4] = {
		{HW_BLACK, HW_BRIGHT_YELLOW, HW_ORANGE, HW_BRIGHT_WHITE},
		{HW_BLACK, HW_BRIGHT_YELLOW, HW_ORANGE, HW_BRIGHT_WHITE},
		{HW_BLACK, HW_BRIGHT_WHITE, HW_ORANGE, HW_BRIGHT_RED},
		{HW_BLACK, HW_WHITE, HW_BRIGHT_WHITE, HW_BRIGHT_RED},
		{HW_BLACK, HW_WHITE, HW_BRIGHT_WHITE, HW_BRIGHT_RED},
		{HW_BLACK, HW_WHITE, HW_BRIGHT_WHITE, HW_ORANGE}};

	/*
	 * This is called every 1/300 of a second, but since the screen refresh
	 * rate is 1/50 of a second, this means that using this simple method,
	 * we can change the Screen Colours a maximum of 6 times (every 33
	 * pixels) during one screen draw)!
	 */
	cpct_setPalette(title_pal[int_idx], 4);
	int_idx = ++int_idx % 6;
}

/* Draw the constant Title Screen Text */
static void t_draw_text() {

	u8 y = LINE_PY * 10;

	v_print_c(g_strings[0], y, 1);
	v_print_c(g_strings[1], y += LINE_PY, 2);
}

/*  Draw a Menu Option, optionally with Icons */
static void t_draw_opt(const char *key, const char *str, const u8 y,
	const bool opt, const u8 idx, const bool icons) {

	/* These are also optionally centered horizontally */
	v_print(key, mn_key_x, y * LINE_PY, 2);
	v_print(str, mn_name_x, y * LINE_PY, 3);

	/* As icons are 16 pixels in size, slightly offset them */
	if (icons)
		t_draw_icon(mn_icon_x, (y * LINE_PY - 4), opt, idx);
}

/*  Draw/Redraw Menu Icons (on and off) corresponding to a Game Option */
static void t_draw_icon(const u8 x, const u8 y, const bool opt, const u8 idx) {

	u8 *p_icon_pos_on, *p_icon_pos_off;
	u8 rc_sprite[4 * 16];
	u16 replace_c = cpct_pens2pixelPatternPairM1(2, 1);
	int m_y = y;

	p_icon_pos_on = v_get_sp(x, m_y);
	p_icon_pos_off = v_get_sp(x + 4, m_y);

	if (opt) {

		/* If Option is set, dull the off icon */
		cpct_drawSprite(icon_ts[idx], p_icon_pos_on, 4, 16);

		cpct_memcpy(rc_sprite, icon_ts[idx + 1], 4 * 16);
		cpct_spriteColourizeM1(replace_c, 4 * 16, rc_sprite);
		cpct_drawSprite(rc_sprite, p_icon_pos_off, 4, 16);
	} else {

		/* If Option is not set, dull the on icon */
		cpct_memcpy(rc_sprite, icon_ts[idx], 4 * 16);
		cpct_spriteColourizeM1(replace_c, 4 * 16, rc_sprite);
		cpct_drawSprite(rc_sprite, p_icon_pos_on, 4, 16);

		cpct_drawSprite(icon_ts[idx + 1], p_icon_pos_off, 4, 16);
	}
}

/* Draw the Title Screen Menu */
static void t_draw_menu(bool draw_all) {

	int ly = mn_loc.y;
	const u8 line = LINE_PY;
	u8 *bg_pos;
	u8 text_y = LINE_PY * mn_loc.y;

	/* Do we want to redraw the whole menu or just the options? */
	if (draw_all) {

		/* Clear the Screen Area to prevent artefacts */
		bg_pos = v_get_sp(10, text_y - 4);
		cpct_drawSolidBox(bg_pos, 0, 60, 200 - text_y + 8);
		bg_pos = v_get_sp(40, text_y - 4);
		cpct_drawSolidBox(bg_pos, 0, 60, 200 - text_y + 8);

		/* Draw Menu and Icons */
		t_draw_opt(g_strings[10], g_strings[16], ly, g_options[0], 4,
			true);
		t_draw_opt(g_strings[11], g_strings[17], ly += 2, g_options[1],
			0, true);
		t_draw_opt(g_strings[12], g_strings[18], ly += 2, g_options[2],
			7, true);
		t_draw_opt(
			g_strings[13], g_strings[19], ly += 2, false, 0, false);
		t_draw_opt(
			g_strings[14], g_strings[20], ly += 2, false, 0, false);
		t_draw_opt(
			g_strings[15], g_strings[21], ly += 2, false, 0, false);
	} else {

		/*
		 * Only redraw the icons for speed - note we don't pass in a
		 * line to draw them, but rather a pixel position since the
		 * icons need to be placed at a pixel level since they are 16
		 * pixels high
		 */
		t_draw_icon(57, (ly * LINE_PY) - 4, g_options[0], 4);
		t_draw_icon(57, ((ly += 2) * LINE_PY) - 4, g_options[1], 0);
		t_draw_icon(57, ((ly += 2) * LINE_PY) - 4, g_options[2], 7);
	}
}
