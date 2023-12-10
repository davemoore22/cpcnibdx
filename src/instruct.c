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
static const pos_t tn_loc = {.x = 29, .y = 15};
static const pos_t in_loc = {.x = 0, .y = 4};
static const pos_t tl_loc = {.x = 0, .y = 0};
static const pos_t ge_loc = {.x = 0, .y = 8};

/* Instruction Snakes */
static snake_t is, ts;
static const pos_t sn_start = {.x = 30, .y = 3};
static const pos_t tn_start = {.x = 30, .y = 16};
static const u8 sn_len = 20;

/* Interrupt Index */
static u8 int_idx = 0;

/* Start Instructions Screen */
void i_start(void) {

	bool kp = false;

	/* Clear the Screen */
	v_blk_scr();
	v_clr_scr();

	/* Create the Snakes */
	s_create_snake(&is, &tl_loc, sn_len, DIR_EAST);
	s_create_snake(&ts, &tl_loc, sn_len, DIR_EAST);

	/* Draw the Screen */
	cpct_waitVSYNC();
	i_draw_border();
	i_draw_snake_first();
	i_draw_instructions(&in_loc);
	i_draw_gems(&ge_loc);

	cpct_waitVSYNC();
	cpct_setBorder(bord_col);
	int_idx = 0;
	cpct_setInterruptHandler(i_interrupt_first);

	/* Wait for a Keypress */
	while (!kp)
		kp = cpct_isAnyKeyPressed();

	
	v_wipe_scr(true);
	v_blk_scr();
	cpct_removeInterruptHandler();
	v_clr_scr();
	cpct_waitVSYNC();
	i_draw_border();
	i_draw_snake_second();
	i_draw_controls(&in_loc);
	cpct_waitVSYNC();
	cpct_setBorder(bord_col);
	int_idx = 0;
	cpct_setInterruptHandler(i_interrupt_second);

	/* Wait for a Keypress */
	kp = false;
	while (!kp)
		kp = cpct_isAnyKeyPressed();

}

/* Stop Instructions Screen */	
void i_stop(void) {

	v_wipe_scr(true);
	v_blk_scr();
	v_clr_scr();
	cpct_removeInterruptHandler();
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
static void i_draw_snake_first() {

	v_draw_snake(&is, &sn_loc);
}

/* Draw Snake */
static void i_draw_snake_second() {

	v_draw_snake(&is, &sn_loc);
	v_draw_snake(&ts, &tn_loc);
}


/* Draw Instructions */
static void i_draw_instructions(const pos_t* pos) {

	int pen;

	for (u8 y = 0; y < 20; y++) {
		pen = y < 15 ? 2 : 3;
		v_print_c(g_strings[y + 60], (y + pos->y) * LINE_PY, pen);
	}
}

/* Draw Controls */
static void i_draw_controls(const pos_t* pos) {

	u8 y;

	y = pos->y;
	v_print_c(g_strings[80], y * LINE_PY, 2);
	v_print_c(g_strings[81], (y += 2) * LINE_PY, 2);
	v_print_c(g_strings[82], (++y) * LINE_PY, 1);
	v_print_c(g_strings[83], (y += 2) * LINE_PY, 2);
	v_print_c(g_strings[84], (++y) * LINE_PY, 1);
	v_print_c(g_strings[85], (y += 2) * LINE_PY, 2);
	v_print_c(g_strings[86], (++y) * LINE_PY, 1);

	y = 17;
	v_print_c(g_strings[8], (y) * LINE_PY, 2);
	v_print_c(g_strings[87], (y += 2) * LINE_PY, 3);
	v_print_c(g_strings[88], (++y) * LINE_PY, 3);
	v_print_c(g_strings[89], (y += 2) * LINE_PY, 3);
}
	
/* Set up the Raster Splits to enable more than 4 colours on the Screen */
static void i_interrupt_first(void) {

	static const char instruct_pal[6][4] = {
		{HW_BLACK, HW_BRIGHT_WHITE, HW_BRIGHT_RED, HW_BRIGHT_RED},
		{HW_BLACK, HW_BRIGHT_WHITE, HW_LIME, HW_BRIGHT_RED},
		{HW_BLACK, HW_BRIGHT_WHITE, HW_ORANGE, HW_BRIGHT_YELLOW},
		{HW_BLACK, HW_BRIGHT_WHITE, HW_BRIGHT_MAGENTA, HW_BRIGHT_YELLOW},
		{HW_BLACK, HW_BRIGHT_WHITE, HW_BRIGHT_YELLOW, HW_PASTEL_BLUE},
		{HW_BLACK, HW_BRIGHT_WHITE, HW_PASTEL_BLUE, HW_ORANGE}};

	/* Adjust the position of some rasters to allow more fine tuning */
	if (int_idx == 2)
		u_wait(60);
	if (int_idx == 3)
		u_wait(70);

	/*
	 * This is called every 1/300 of a second, but since the screen refresh
	 * rate is 1/50 of a second, this means that using this simple method,
	 * we can change the Screen Colours a maximum of 6 times (every 33
	 * pixels) during one screen draw!
	 */
	cpct_setPalette(instruct_pal[int_idx], 4);
	int_idx = ++int_idx % 6;

	/* Scan Keyboard every 1/50 of a second */
	if (int_idx == 1)
		cpct_scanKeyboard_if();
}

/* Set up the Raster Splits to enable more than 4 colours on the Screen */
static void i_interrupt_second(void) {

	static const char instruct_pal_2[6][4] = {
		{HW_BLACK, HW_BRIGHT_WHITE, HW_LIME, HW_BRIGHT_RED},
		{HW_BLACK, HW_BRIGHT_WHITE, HW_LIME, HW_BRIGHT_RED},
		{HW_BLACK, HW_BRIGHT_WHITE, HW_LIME, HW_BRIGHT_RED},
		{HW_BLACK, HW_BRIGHT_WHITE, HW_LIME, HW_BRIGHT_RED},
		{HW_BLACK, HW_BRIGHT_WHITE, HW_LIME, HW_PASTEL_BLUE},
		{HW_BLACK, HW_BRIGHT_WHITE, HW_LIME, HW_PASTEL_BLUE}};

	/*
	 * This is called every 1/300 of a second, but since the screen refresh
	 * rate is 1/50 of a second, this means that using this simple method,
	 * we can change the Screen Colours a maximum of 6 times (every 33
	 * pixels) during one screen draw!
	 */
	cpct_setPalette(instruct_pal_2[int_idx], 4);
	int_idx = ++int_idx % 6;

	/* Scan Keyboard every 1/50 of a second */
	if (int_idx == 1)
		cpct_scanKeyboard_if();
}