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

#include "between.h"

/* Screen Layout */
static const pos_t pg_loc = {.x = 24, .y = 12};
static const pos_t gr_loc = {.x = 0, .y = 14};
static const pos_t go_loc = {.x = 0, .y = 11};
static const pos_t wd_loc = {.x = 0, .y = 11};

/* Start a Transition "Between" Screen */
void b_scr_start(const screen_t type, const u8 round, const u8 level) {

	u16 duration;
	bool kp = false;
	u8 y;

	/* Clear the Screen */
	v_blk_scr();
	v_clr_scr();

	/* Make sure the Timer Interrupt is off */
	g_clock_on = false;

#ifndef DEBUG_SKIP_BETWEEN

	if (type == SCR_GET_READY) {

		/* Fixed Text for Get Ready Screen */
		v_print(g_strings[30], pg_loc.x, pg_loc.y * LINE_PY, 3);
		v_print(g_strings[31], pg_loc.x + 18, pg_loc.y * LINE_PY, 3);
		v_print_n(round, pg_loc.x + 12, pg_loc.y * LINE_PY, 3);
		v_print_n(level, pg_loc.x + 30, pg_loc.y * LINE_PY, 3);
		v_print_c(g_strings[32], gr_loc.y * LINE_PY, 2);
	} else if (type == SCR_GAME_OVER) {

		/* Fixed Text for Game Over Screen */
		v_print_c(g_strings[33], go_loc.y * LINE_PY, 2);
	} else if (type == SCR_CONGRATULATIONS) {

		/* Fixed Text for Demo Game Over */
		y = wd_loc.y * LINE_PY;
		v_print(g_strings[34], wd_loc.x, y, 3);
		v_print(g_strings[35], wd_loc.x, y += (LINE_PY * 2), 2);
		v_print(g_strings[36], wd_loc.x, y += LINE_PY, 2);
		v_print(g_strings[37], wd_loc.x, y += (LINE_PY * 2), 3);
	}

	/* No need for Colour Rasters on between screens */
	v_reset_pal();

	/* Set up Clock Interrupt */
	g_clock_on = false;
	g_clock.ms = g_clock.s = 0;
	cpct_setInterruptHandler(u_clock_interrupt);

	/* Start Clock */
	duration = type == SCR_GET_READY ? 3 : 5;
	g_clock_on = true;

	/* Display for a number of seconds or until a keypress */
	while ((!kp) && (g_clock.s < duration)) {

		/* Check for a keypress */
		cpct_scanKeyboard();
		kp = cpct_isAnyKeyPressed();
	}

	/* Stop Clock */
	g_clock_on = false;
	cpct_removeInterruptHandler();
	g_clock.ms = g_clock.s = 0;

#endif
}

/* Stop the Transition "Between" Screen */
void b_scr_stop(void) {

	v_wipe_scr(true);
}