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

#include "demo.h"

/* Demo Playfield/Snake Configuration */
static const pos_t pf_loc = {.x = 0, .y = 17};
static const dim_t pf_sz = {.w = 40, .h = 8};
static const pos_t sn_start = {.x = 24, .y = 6};
static const u8 sn_len = 10;
static const u8 sn_max = 26;

/* Demo Snake */
static snake_t ds;
static snake_t ds_buf;

/* Screen Layout */
const u8 bord_col = HW_BLACK;
static const pos_t au_loc = {.x = 0, .y = 10};

/* Start Demo Mode */
void d_start(void) {

	bool moved, kp = false;
	u16 loop = 0;

	/* Clear the Screen */
	v_blk_scr();
	v_clr_scr();

	/* Create the Demo Snake */
	s_create_snake(&ds, &sn_start, sn_len, DIR_EAST);

	/* Display the Demo Screen */
	cpct_waitVSYNC();
	v_draw_logo();
	d_display_text(1);
	v_draw_pf(g_demo_pf, &pf_loc, &pf_sz);

	/* Play Music*/
	s_set_music(0);

	/* Setup Screen Rasters */
	cpct_waitVSYNC();
	cpct_setBorder(bord_col);
	cpct_setInterruptHandler(d_interrupt);

	/* Draw the Whole Snake Initially */
	v_draw_snake(&ds, &pf_loc);

	/* Run Demo Mode until a Key is pressed */
	while (!kp) {
		++loop;

		/* Alternate the Credits Demo Text periodically */
		if (loop == 15001)
			d_display_text(2);
		else if (loop == 30001)
			d_display_text(1);

		/* Animate the Snake */
		if (loop % 200 == 0) {

			/* Copy the old snake into the Buffer */
			s_copy_snake(&ds, &ds_buf);

			/* Update the snake position */
			moved = s_update_snake(g_demo_pf, pf_sz.w, &ds, sn_max, true);

			/* Check for a keypress */
			kp = cpct_isAnyKeyPressed();

			/* If the snake has moved, redraw it appropriately */
			if (moved) {

				/* Undraw the Head and redraw it as a Segment */
				cpct_waitVSYNC();
				v_erase_snake_seg(&ds_buf, &pf_loc, 0);
				v_draw_snake_seg(&ds_buf, &pf_loc, 0, false);

				/* Draw the new head */
				v_draw_snake_seg(&ds, &pf_loc, 0, true);

				/* Erase the previous tail */
				v_erase_snake_seg(
					&ds_buf, &pf_loc, ds_buf.length - 1);
			}
		}

		/* Don't let loop counter overflow */
		if (loop > 30002)
			loop = 0;
	}
}

/* Stop the Demo Mode */
void d_stop(void) {

	v_wipe_scr(true);
	v_blk_scr();
	v_clr_scr();
	cpct_removeInterruptHandler();
	s_stop_sound();
}

/* Draw the text on the Demo Screen */
static void d_display_text(const u8 phase) {

	u8 y = au_loc.y * LINE_PY;

	/* Alternating Text */
	if (phase == 1) {
		v_print_c(g_strings[0], y, 1);
		v_print_c(g_strings[1], y += LINE_PY, 1);
		v_print_c(g_strings[2], y += LINE_PY * 2, 3);
		v_print_c(g_strings[3], y += LINE_PY, 3);
		v_print_c(g_strings[4], y += LINE_PY, 3);
	} else if (phase == 2) {
		v_print_c(g_strings[29], y, 1);
		v_print_c(g_strings[9], y += LINE_PY, 1);
		v_print_c(g_strings[5], y += LINE_PY * 2, 3);
		v_print_c(g_strings[6], y += LINE_PY, 3);
		v_print_c(g_strings[7], y += LINE_PY, 3);
	}
}

/* Set up the Raster Splits to enable more than 4 colours on the Screen */
static void d_interrupt(void) {

	static u8 int_idx = 0;

	static const char demo_pal[6][4] = {
		{HW_BLACK, HW_BRIGHT_YELLOW, HW_ORANGE, HW_BRIGHT_WHITE},
		{HW_BLACK, HW_BRIGHT_YELLOW, HW_ORANGE, HW_BRIGHT_WHITE},
		{HW_BLACK, HW_BRIGHT_WHITE, HW_ORANGE, HW_BRIGHT_RED},
		{HW_BLACK, HW_LIME, HW_BRIGHT_WHITE, HW_BRIGHT_RED},
		{HW_BLACK, HW_LIME, HW_PASTEL_BLUE, HW_BRIGHT_RED},
		{HW_BLACK, HW_LIME, HW_PASTEL_BLUE, HW_BRIGHT_RED}};

	/* Adjust the position of one raster to allow more fine tuning */
	if (int_idx == 3)
		u_wait(50);

	/* Play sound */
	if (int_idx == 5)
		s_play_sound();

	/*
	 * This is called every 1/300 of a second, but since the screen refresh
	 * rate is 1/50 of a second, this means that using this simple method,
	 * we can change the Screen Colours a maximum of 6 times (every 33
	 * pixels) during one screen draw!
	 */
	cpct_setPalette(demo_pal[int_idx], 4);
	int_idx = ++int_idx % 6;

	/* Scan Keyboard every 1/50 of a second */
	if (int_idx == 1)
		cpct_scanKeyboard_if();

	
}
