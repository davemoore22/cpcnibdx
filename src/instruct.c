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

#include "instruct.h"

/* Screen Layout */
static const pos_t sn_loc = {.x = 29, .y = 2};
static const pos_t in_loc = {.x = 0, .y = 4};
static const pos_t tl_loc = {.x = 0, .y = 0};
static const pos_t ge_loc = {.x = 0, .y = 8};

/* Instruction Snake */
static snake_t is;
static const pos_t sn_start = {.x = 30, .y = 3};
static const u8 sn_len = 20;

/* Start Instructions Screen */
void i_start(void) {

	bool kp = false;

	/* Clear the Screen */
	v_blk_scr();
	v_clr_scr();

	/* Create the Demo Snake */
	s_create_snake(&is, &tl_loc, sn_len, DIR_EAST);

	/* Draw the Screen */
	cpct_waitVSYNC();
	i_draw_border();
	i_draw_snake();
	i_draw_instructions(&in_loc);
	i_draw_gems(&ge_loc);
	v_reset_pal();

	/* Wait for a Keypress */
	while (!kp) {

		cpct_scanKeyboard();
		kp = cpct_isAnyKeyPressed();
	}
}

/* Stop Instructions Screen */	
void i_stop(void) {

	v_wipe_scr(true);
	v_blk_scr();
	v_clr_scr();
}

/* Draw Border */
static void i_draw_border(void) {

	u8 *pos;

	for (int x = 2; x < 39; x++) {
		pos = v_get_sp(x * CHAR_BYTES_W, 0);
		cpct_drawTileAligned2x8_f(sprite_ts[11], pos);
		pos = v_get_sp(x * CHAR_BYTES_W, 24 * LINE_PY);
		cpct_drawTileAligned2x8_f(sprite_ts[11], pos);
	}

	for (int y = 1; y < 24; y++) {

		pos = v_get_sp(1 * CHAR_BYTES_W, y * LINE_PY);
		cpct_drawTileAligned2x8_f(sprite_ts[10], pos);
		pos = v_get_sp(39 * CHAR_BYTES_W, y * LINE_PY);
		cpct_drawTileAligned2x8_f(sprite_ts[10], pos);
	}

	pos = v_get_sp(1 * CHAR_BYTES_W, 0 * LINE_PY);
	cpct_drawTileAligned2x8_f(sprite_ts[6], pos);
	pos = v_get_sp(39 * CHAR_BYTES_W, 0 * LINE_PY);
	cpct_drawTileAligned2x8_f(sprite_ts[7], pos);
	pos = v_get_sp(1 * CHAR_BYTES_W, 24 * LINE_PY);
	cpct_drawTileAligned2x8_f(sprite_ts[8], pos);
	pos = v_get_sp(39 * CHAR_BYTES_W, 24 * LINE_PY);
	cpct_drawTileAligned2x8_f(sprite_ts[9], pos);

}

/* Draw Gems */
static void i_draw_gems(const pos_t* pos_g) {

	u8 *pos;

	for (int x = 10; x < 30; x++) {
		if (x % 3 == 0) {
			pos = v_get_sp(x * CHAR_BYTES_W, pos_g->y * LINE_PY);
			cpct_drawTileAligned2x8_f(sprite_ts[5], pos);
		}
	}
}

/* Draw Snake */
static void i_draw_snake() {

	v_draw_snake(&is, &sn_loc);
}

/* Draw Instructions */
static void i_draw_instructions(const pos_t* pos) {

	int pen;

	for (u8 y = 0; y < 20; y++) {

		pen = y < 15 ? 2 : 3;
		v_print_c(g_strings[y + 60], (y + pos->y) * LINE_PY, pen);
	}

}