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

#include "hiscore.h"

/* Screen Layout */
static const pos_t cg_loc = {.x = 0, .y = 11};
static const pos_t ei_loc = {.x = 0, .y = 17};

/* Start the High Score Screen */
void h_start(const u32 score) {

	u8 y = cg_loc.y * LINE_PY;
	char name[4] = "", key;
	u8 len = 0;
	u16 count = 0;

	/* Check if we have got a high score from the game that just ended */
	if (score > g_hiscores[0].score) {

		/* Clear the Screen */
		v_blk_scr();
		v_clr_scr();

		cpct_waitVSYNC();
		v_print_c(g_strings[40], y, 2);
		v_print_c(g_strings[41], y += LINE_PY, 2);
		v_print_c(g_strings[42], y += (LINE_PY * 2), 3);
		v_reset_pal();

		/* Handle Initial Input */
		y = ei_loc.y * LINE_PY;
		while (len <= 3) {

			if (count % 200 == 0) {

				cpct_waitVSYNC();
				v_print(g_strings[43], 36, y, 2);
				v_print(name, 36, y, 1);

				cpct_scanKeyboard_f();
				key = cpct_getKeypressedAsASCII();
				if (key != 0) {

					name[len] = key;
					++len;
				}
			}

			++count;

			if (count > 10000)
				count = 0;
		}

		/*
		 * Add the Score to the Hi-Score table if we need to; note that
		 * after inserting, the table will be resorted in ascending
		 * order
		 */
		name[3] = '\0';
		if (score > g_hiscores[0].score) {
			h_insert(name, score, 0);
			u_sort_hiscores();
		}
	}

	v_wipe_scr(true);
}

/*  Stop the High Score Screen */
void h_stop(void) {

	v_wipe_scr(true);
	v_blk_scr();
	v_clr_scr();
}

/* Insert a score into the highscore table */
void h_insert(const char *initials, const u32 score, const u8 pos) {

	g_hiscores[pos].score = score;
	strcpy(g_hiscores[pos].initials, initials);
	g_hiscores[pos].width = u_get_width(score);
}

/* Check if a score is a high score */
static bool _h_check(const u32 score) {

	u32 min = g_hiscores[0].score;

	/* Find minimum score already in table */
	for (u8 i = 1; i < 5; i++) {
		if (g_hiscores[i].score < min)
			min = g_hiscores[i].score;
	}

	return score > min;
}
