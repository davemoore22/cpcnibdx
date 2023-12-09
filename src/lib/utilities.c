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

#include "utilities.h"

/* Enable Global Timer */
bool g_clock_on = false;

/* Realtime Clock */
clock_t g_clock = {.ms = 0, .s = 0};

/* Interrupt function used by Realtime Clock */
void u_clock_interrupt(void) {

	static u8 count = 0;

	/* Skip if the Realtime Clock is not enabled */
	if (g_clock_on) {

		/* On a CPC, interrupts are called every 1/300 of a second,
		 * therefore we throttle this function down to only do a tick
		 * every 1/50 of a second (20 microseconds) */
		count = ++count % 6;
		if (count == 5) {
			g_clock.ms += 20;
			if (g_clock.ms == 1000) {
				++g_clock.s;
				g_clock.ms = 0;
			}
		}

		/* Note that this will cause an error once g_timer_s > 65535,
		 * or just over 18 hours; for efficiency purposes we do not
		 * check for this overlow! */
	}
}

/* Get a delta for a cardinal direction (or its inverse) */
void u_get_delta(const dir_t dir, i8 *dx, i8 *dy, const bool ahead) {

	const i8 mult = ahead ? 1 : -1;
	const static i8 offsets[4][2] = {{0, -1}, {1, 0}, {0, 1}, {-1, 0}};

	*dx = (offsets[(int)dir][0] * mult);
	*dy = (offsets[(int)dir][1] * mult);

	return;
}

/* Get the next square in a specified direction (either aft or stern) */
void u_get_cell(const dir_t dir, u8 *cx, u8 *cy, const bool ahead) {

	i8 dx, dy;

	/* Get the delta for the direction specified (taking into account if we
	 * are looking ahead or behind) */
	u_get_delta(dir, &dx, &dy, ahead);

	/* And update the passed in coordinates */
	*cx = *cx + dx;
	*cy = *cy + dy;
}

/* See if we have eaten a gem! */
bool u_has_eaten_gem(u8 *pf, const u8 w, snake_t *snake) {

	u8 cell;

	cell = pf[snake->body[0].x + (snake->body[0].y * w)];

	return cell == CELL_GEM;
}

/* Clear a Playing Field Cell */
void u_clear_pf_cell(u8 *pf, const u8 w, const u8 x, const u8 y) {

	pf[x + (y * w)] = CELL_EMPTY;
}

/* Given a direction, get the direction x degrees (>0 degrees is clockwise) */
dir_t u_get_dir(const dir_t dir, const i16 angle) {

	i8 offset = angle / 90;
	dir_t new_dir;

	/* Only handle cardinal directions */
	if (angle % 90 != 0)
		return dir;
	if ((angle == 0) || (angle == 360))
		return dir;
	if (abs(angle) > 360)
		return dir;
	if (angle == DIR_NONE)
		return dir;

	/* Since direction enum (NESW) is (0, 1, 2, 3), we can just do this */
	new_dir = (dir + offset) % 4;
	if (new_dir < 0)
		new_dir += 4;

	return new_dir;
}

/* Check the next cell at a specified offset from a coordinate */
bool u_test_cell(const u8 *pf,
	const u8 w, const u8 x, const u8 y, const dir_t dir) {

	u8 cell, dx, dy;
	u8 cx = x, cy = y;

	u_get_delta(dir, &dx, &dy, true);
	cx += dx;
	cy += dy;
	cell = pf[cx + (cy * w)];

	return (cell == CELL_EMPTY) || (cell == CELL_GEM);
}

/* Check the next cell at a specified offset from the head of a Snake */
bool u_check_dir(const u8 *pf, const u8 w, snake_t *snake, const i16 angle) {

	u8 cx = snake->body[0].x, cy = snake->body[0].y, cell;
	u8 dx, dy;
	dir_t dir;

	dir = u_get_dir(snake->direction, angle);
	u_get_delta(dir, &dx, &dy, true);
	cx += dx;
	cy += dy;

	cell = pf[cx + (cy * w)];

	return (cell == CELL_EMPTY) || (cell == CELL_GEM);
}

/* Get the Width (in digits, i.e. characters) of a Number */
u8 u_get_width(const u32 score) {

	u8 width = 0;
	u32 num = score;

	do {
		num /= 10;
		++width;
	} while (num != 0);

	return width;
}

/* Wait for a certain number of cycles in a do nothing loop */
void u_wait(const u16 n) {

	for (u16 i = 0; i < n; i++)
		__asm__("NOP");
}

/* Wait for a keypress (interruprts will be disabled briefly) */
void u_wait_kp(void) {

	bool kp = false;
	while (!kp) {
		cpct_scanKeyboard();
		kp = cpct_isAnyKeyPressed();
	}
}

/* Sort the Hiscore table (uses C11's qsort if available) */
void u_sort_hiscores(void) {

#ifdef C11
	u8 size = sizeof(g_hiscores) / (sizeof *g_hiscores);
	qsort(g_hiscores, size, sizeof(score_t), _util_qsort_compare);
#else
	u8 n = sizeof(g_hiscores) / sizeof(g_hiscores[0]);
	u_quicksort(g_hiscores, n);
#endif
}

/* QSort Implementation for Hi-Scores (C99 only) */
static void u_quicksort(score_t *arr, u8 len) {

	u32 pivot;
	u8 i, j;
	score_t temp;

	if (len < 2)
		return;

	pivot = arr[len / 2].score;

	for (i = 0, j = len - 1;; i++, j--) {

		while (arr[i].score < pivot)
			i++;
		while (arr[j].score > pivot)
			j--;

		if (i >= j)
			break;

		temp.score = arr[i].score;
		temp.width = arr[i].width;
		strcpy(temp.initials, arr[i].initials);
		arr[i].score = arr[j].score;
		arr[i].width = arr[j].width;
		strcpy(arr[i].initials, arr[j].initials);
		arr[j].score = temp.score;
		arr[j].width = temp.width;
		strcpy(arr[j].initials, temp.initials);
	}

	u_quicksort(arr, i);
	u_quicksort(arr + i, len - i);
}

/* QSort Swap for Hi-Scores (C99 only) */
static void u_sort_swap(score_t *h1, score_t *h2) {

	void *temp = h1;
	h1 = h2;
	h2 = temp;
}

/* QSort Comparitor for Hi-Scores (>= C11 only) */
static int u_qsort_compare(const void *h1, const void *h2) {

#ifdef C11
	const score_t *p1 = (score_t *)h1;
	const score_t *p2 = (score_t *)h2;

	if (p1->score < p2->score)
		return -1;
	else if (p1->score > p2->score)
		return +1;
	else
		return 0;
#else
	/* Only here to prevent compiler warnings */
	h1 = h1;
	h2 = h2;

	return 0;
#endif
}