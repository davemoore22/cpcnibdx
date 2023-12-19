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

#pragma once

#include <cpctelera.h>
#include <stdbool.h>
#include <string.h>
#include <types.h>

/* Defines */
#define C99 /* C-standard used for Compilation */
#undef C11

#define LINE_PX 8 /* Mode 1 Character Pixel/Byte Sizes */
#define LINE_PY 8
#define CHAR_BYTES_W 2
#define CHAR_BYTES_H 8

#define CELL_EMPTY 21 /* Playfield Empty Cell */

/* Between Screen type */
typedef enum {
	SCR_GET_READY = 0,
	SCR_GAME_OVER = 1,
	SCR_CONGRATULATIONS = 2
} screen_t;

/* Cardinal direction */
typedef enum {
	DIR_NONE = -1,
	DIR_NORTH = 0,
	DIR_EAST = 1,
	DIR_SOUTH = 2,
	DIR_WEST = 3
} dir_t;

/* Title Phase */
typedef enum {
	DISP_MENU = 0,
	DISP_HISCORES = 1
} phase_t;

/* Coordinate on a playfield */
typedef struct {
		u8 x; /* x coordinate (0 is top-left) */
		u8 y; /* y coordinate (0 is top-left) */
} pos_t;

/* Width and Height */
typedef struct {
		u8 w; /* width (in character cells) */
		u8 h; /* height(in character cells) */
} dim_t;

/* Gem */
typedef struct {

		pos_t loc; /* Gem Location */
		bool active; /* If Gem is still on Playfield */

} gem_t;

/* Snake object */
typedef struct {
		dir_t direction; /* direction head is moving in */
		u8 length;	 /* length of the snake in segments */
		pos_t body[64];	 /* data storage for snake segments */
		u8 increment;	 /* increment counter */
} snake_t;

/* Hiscore object */
typedef struct {
		char initials[4]; /* scorer initials (user-entered) */
		u32 score;	  /* score */
		u8 width;	  /* width in digits of score as string */
} score_t;

/* Realtime clock */
typedef struct {
		u16 ms; /* Milliseconds*/
		u16 s;	/* Seconds */
} clock_t;