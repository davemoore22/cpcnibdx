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

#include "snake.h"

/* Grow the snake (by adding a new head) */
bool s_grow_snake(
	snake_t *snake, const u8 x, const u8 y, const dir_t dir, u8 max) {

	for (int j = snake->length; j > 0; j--) {
		snake->body[j].x = snake->body[j - 1].x;
		snake->body[j].y = snake->body[j - 1].y;
	}

	snake->body[0].x = x;
	snake->body[0].y = y;
	snake->direction = dir;

	/* Adjust the length if we can */
	if (snake->length < max)
		++snake->length;

	return true;
}

/* Turn the snake around a corner, optionally changing its size */
bool s_turn_snake(
	snake_t *snake, const u8 x, const u8 y, const dir_t dir, u8 max) {

	for (int j = snake->length; j > 0; j--) {
		snake->body[j].x = snake->body[j - 1].x;
		snake->body[j].y = snake->body[j - 1].y;
	}

	snake->body[0].x = x;
	snake->body[0].y = y;
	snake->direction = dir;

	/* Optionally grow snake if we have just eaten */
	if (snake->increment > 0) {
		if (snake->length < max)
			++snake->length;
		--snake->increment;
	}

	return true;
}

/* Move the snake one square ahead, optionally changing its size */
bool s_move_snake(snake_t *snake, const dir_t dir, u8 max) {

	u8 dx, dy, hx = snake->body[0].x, hy = snake->body[0].y;

	/* Move body */
	for (int j = snake->length; j > 0; j--) {
		snake->body[j].x = snake->body[j - 1].x;
		snake->body[j].y = snake->body[j - 1].y;
	}

	/* Move head */
	u_get_delta(dir, &dx, &dy, true);
	snake->body[0].x = hx + dx;
	snake->body[0].y = hy + dy;

	/* Optionally grow snake if we have just eaten */
	if (snake->increment > 0) {
		if (snake->length < max)
			++snake->length;
		--snake->increment;
	}

	return true;
}

/* Copy a snake struct */
void s_copy_snake(const snake_t *from, snake_t *to) {

	cpct_memset(&to->body, 0x00, sizeof(to->body));

	to->direction = from->direction;
	to->length = from->length;
	to->increment = from->increment;
	for (int i = 0; i < 64; i++) {
		to->body[i].x = from->body[i].x;
		to->body[i].y = from->body[i].y;
	}
}

/* Create a new snake */
void s_create_snake(
	snake_t *snake, const pos_t *pos, const u8 len, const dir_t dir) {

	i8 dx, dy;
	u8 cx, cy;

	/* Reset the snake data */
	cpct_memset(&snake->body, 0x00, sizeof(snake->body));

	/* Set the position and direction of the head */
	snake->direction = dir;
	snake->length = len;
	snake->body[0].x = pos->x;
	snake->body[0].y = pos->y;
	snake->increment = 0;

	/* Work out x/y offsets and position of first body segment */
	u_get_delta(dir, &dx, &dy, false);
	cx = pos->x + dx;
	cy = pos->y + dy;

	/* Set all segments of the body */
	for (u8 i = 1; i < snake->length; i++) {

		snake->body[i].x = cx;
		snake->body[i].y = cy;

		cx = cx + dx;
		cy = cy + dy;
	}
}

/* Rules for Snake Movement */
bool s_update_snake(
	u8 *pf, const u8 w, snake_t *snake, const u8 max, const bool demo) {

	bool can_move;
	const dir_t dir = snake->direction;
	u8 nx = snake->body[0].x, ny = snake->body[0].y;
	dir_t new_dir;

	/* If a wall is hit, turn right if we can, and grow the Tail */
	can_move = u_test_cell(
		pf, w, snake->body[0].x, snake->body[0].y, snake->direction);
	if (!can_move) {

		/* Turn right in preference*/
		if (u_check_dir(pf, w, snake, 90)) {

			/* Move Snake */
			new_dir = u_get_dir(snake->direction, 90);
			u_get_cell(new_dir, &nx, &ny, true);
			if (!demo)
				s_turn_snake(snake, nx, ny, new_dir, max);
			else
				s_grow_snake(snake, nx, ny, new_dir, max);
			return true;
		} else if (u_check_dir(pf, w, snake, -90)) {

			/* Move Snake */
			new_dir = u_get_dir(snake->direction, -90);
			u_get_cell(new_dir, &nx, &ny, true);
			if (!demo)
				s_turn_snake(snake, nx, ny, new_dir, max);
			else
				s_grow_snake(snake, nx, ny, new_dir, max);

			return true;
		} else {

			/* We are at a dead end! */
			return false;
		}
	} else {

		/* No wall, so just move the snake in the same direction */
		return s_move_snake(snake, snake->direction, max);
	}
}

/* Handle Collison Detection */
bool s_check_collide(snake_t *snake) {

	/* Check backwards to see if this square is occupied */
	for (int j = snake->length; j > 0; j--) {

		/* Return true if there is a collision */
		if ((snake->body[0].x == snake->body[j].x) &&
			(snake->body[0].y == snake->body[j].y))
			return true;
	}

	return false;
}