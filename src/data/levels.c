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

#include "levels.h"


/* Demo Playfield (Tilemap exported from TILED as CSV file) */
const u8 g_demo_pf[40 * 8] = {6, 11, 11, 11, 11, 11, 11, 11, 11, 19, 11, 11, 11,
	11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 19, 11, 11, 11,
	11, 11, 11, 11, 11, 19, 11, 11, 7, 10, 21, 21, 21, 21, 21, 21, 21, 21,
	13, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
	13, 21, 21, 21, 21, 21, 21, 21, 21, 13, 21, 21, 10, 10, 21, 21, 5, 21,
	21, 6, 15, 21, 21, 21, 21, 21, 5, 21, 21, 21, 21, 21, 21, 21, 21, 21,
	21, 14, 7, 21, 5, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 10, 10,
	21, 21, 21, 21, 21, 13, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
	21, 21, 21, 21, 21, 21, 13, 21, 21, 21, 21, 21, 5, 21, 21, 21, 21, 21,
	21, 21, 10, 10, 21, 21, 21, 21, 21, 12, 21, 21, 21, 21, 21, 21, 21, 21,
	21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 12, 21, 21, 21,
	21, 21, 21, 21, 21, 21, 10, 10, 21, 21, 21, 21, 21, 8, 15, 21, 21, 21,
	21, 21, 21, 21, 5, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 14,
	9, 21, 21, 21, 21, 21, 21, 21, 21, 21, 10, 10, 21, 21, 21, 21, 21, 21,
	5, 21, 12, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
	12, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 5, 21, 10, 8, 11, 11,
	11, 11, 11, 11, 11, 11, 18, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11,
	11, 11, 11, 11, 18, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11,
	9};


/* Gem Numbers per Level */
const u8 g_game_pf_gems[10] = {20, 21, 18, 19, 14, 21, 16, 20, 24, 23};

/* Level Playfield Colours */
const u8 g_game_pf_cols[10] = {
	HW_PASTEL_BLUE, HW_LIME, HW_BRIGHT_MAGENTA, HW_WHITE, HW_ORANGE,
	HW_PASTEL_YELLOW, HW_CYAN, HW_MAUVE, HW_PINK, HW_BRIGHT_RED
	};

/* Level Playfields (Tilemaps exported from TILED as CSV file) */
const u8 g_game_pf_1[40 * 21] = {6, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11,
	11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11,
	11, 11, 11, 11, 11, 11, 11, 11, 11, 7, 10, 5, 21, 21, 21, 21, 21, 21,
	21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
	21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 5, 10, 10, 21, 12, 21,
	6, 11, 7, 5, 12, 21, 6, 11, 11, 11, 7, 21, 6, 11, 11, 11, 11, 11, 11, 7,
	21, 6, 11, 11, 11, 7, 21, 12, 5, 6, 11, 7, 21, 12, 21, 10, 10, 21, 10,
	21, 10, 21, 10, 21, 10, 21, 10, 21, 21, 21, 10, 21, 8, 11, 11, 11, 11,
	11, 11, 9, 21, 10, 21, 21, 21, 10, 21, 10, 21, 10, 21, 10, 21, 10, 21,
	10, 10, 21, 10, 21, 10, 21, 10, 21, 10, 21, 10, 21, 21, 21, 10, 21, 5,
	21, 21, 21, 21, 21, 21, 5, 21, 10, 21, 21, 21, 10, 21, 10, 21, 10, 21,
	10, 21, 10, 21, 10, 10, 21, 10, 21, 10, 21, 10, 21, 10, 21, 10, 21, 21,
	21, 10, 21, 6, 11, 11, 11, 11, 11, 11, 7, 21, 10, 21, 21, 21, 10, 21,
	10, 21, 10, 21, 10, 21, 10, 21, 10, 10, 21, 10, 21, 8, 11, 9, 21, 10,
	21, 8, 11, 11, 11, 9, 21, 10, 5, 21, 21, 21, 21, 5, 10, 21, 8, 11, 11,
	11, 9, 21, 10, 21, 8, 11, 9, 21, 10, 21, 10, 10, 21, 10, 5, 21, 21, 21,
	21, 10, 5, 21, 21, 21, 21, 21, 21, 10, 21, 6, 11, 11, 7, 21, 10, 21, 21,
	21, 21, 21, 21, 5, 10, 21, 21, 21, 21, 5, 10, 21, 10, 10, 21, 8, 11, 11,
	11, 15, 21, 8, 11, 11, 11, 11, 11, 11, 11, 9, 21, 8, 11, 11, 9, 21, 8,
	11, 11, 11, 11, 11, 11, 11, 9, 21, 14, 11, 11, 11, 9, 21, 10, 10, 21,
	21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
	21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
	21, 10, 17, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 15, 21, 14, 11,
	11, 11, 11, 11, 11, 11, 11, 11, 11, 15, 21, 14, 11, 11, 11, 11, 11, 11,
	11, 11, 11, 11, 11, 16, 10, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
	21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
	21, 21, 21, 21, 21, 21, 21, 21, 21, 10, 10, 21, 6, 11, 11, 11, 11, 7,
	21, 12, 21, 6, 11, 11, 11, 7, 21, 6, 11, 11, 11, 11, 7, 21, 6, 11, 11,
	11, 7, 21, 12, 21, 6, 11, 11, 11, 11, 7, 21, 10, 10, 21, 10, 21, 21, 21,
	21, 10, 21, 10, 5, 10, 21, 21, 21, 10, 21, 10, 21, 21, 21, 21, 10, 21,
	10, 21, 21, 21, 10, 5, 10, 21, 10, 21, 21, 21, 21, 10, 21, 10, 10, 21,
	10, 21, 21, 21, 21, 10, 21, 10, 21, 10, 21, 21, 21, 10, 21, 10, 21, 21,
	21, 21, 10, 21, 10, 21, 21, 21, 10, 21, 10, 21, 10, 21, 21, 21, 21, 10,
	21, 10, 10, 21, 10, 21, 21, 21, 21, 10, 21, 10, 21, 10, 21, 21, 21, 10,
	21, 10, 21, 21, 21, 21, 10, 21, 10, 21, 21, 21, 10, 21, 10, 21, 10, 21,
	21, 21, 21, 10, 21, 10, 10, 21, 8, 11, 11, 11, 11, 9, 21, 10, 21, 10,
	21, 21, 21, 10, 5, 10, 21, 21, 21, 21, 10, 5, 10, 21, 21, 21, 10, 21,
	10, 21, 8, 11, 11, 11, 11, 9, 21, 10, 10, 21, 21, 21, 21, 21, 21, 21, 5,
	10, 21, 10, 21, 21, 21, 10, 21, 10, 21, 21, 21, 21, 10, 21, 10, 21, 21,
	21, 10, 21, 10, 5, 21, 21, 21, 21, 21, 21, 21, 10, 10, 21, 14, 11, 11,
	11, 11, 11, 11, 9, 21, 8, 11, 11, 11, 9, 21, 8, 11, 11, 11, 11, 9, 21,
	8, 11, 11, 11, 9, 21, 8, 11, 11, 11, 11, 11, 11, 15, 21, 10, 10, 5, 21,
	21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
	21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 5,
	10, 8, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11,
	11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11,
	11, 11, 11, 11, 9};

const u8 g_game_pf_2[40 * 21] = {6, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11,
	11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 19, 11, 19, 11, 11, 11, 11, 11,
	11, 11, 11, 11, 11, 11, 11, 11, 11, 7, 10, 21, 21, 21, 21, 21, 21, 21,
	21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 8, 11, 9, 21,
	21, 21, 21, 5, 21, 21, 21, 21, 21, 21, 21, 21, 21, 10, 10, 21, 6, 11, 11,
	11, 11, 11, 7, 5, 6, 11, 11, 11, 11, 11, 11, 11, 11, 11, 15, 21, 21, 5,
	21, 21, 14, 11, 11, 11, 15, 21, 14, 11, 11, 7, 21, 12, 21, 10, 10, 21, 8,
	11, 11, 11, 11, 11, 16, 21, 10, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
	21, 6, 11, 7, 21, 21, 21, 21, 5, 21, 21, 21, 21, 21, 10, 21, 10, 21,
	10, 10, 21, 21, 21, 21, 21, 21, 21, 10, 21, 10, 21, 6, 11, 11, 11, 11,
	11, 11, 11, 7, 21, 10, 21, 10, 21, 6, 11, 11, 11, 11, 11, 11, 7, 21, 10,
	21, 10, 21, 10, 10, 21, 6, 11, 11, 11, 15, 21, 13, 21, 13, 21, 10, 21,
	21, 21, 21, 21, 21, 21, 10, 21, 10, 21, 10, 21, 10, 21, 21, 21, 21, 21,
	21, 10, 21, 10, 21, 10, 21, 10, 10, 21, 10, 5, 21, 21, 21, 21, 21, 5, 21,
	21, 10, 21, 21, 21, 21, 21, 21, 21, 10, 21, 10, 21, 10, 21, 10, 21, 21,
	21, 21, 21, 21, 10, 21, 10, 5, 10, 21, 10, 10, 21, 8, 11, 11, 11, 11, 11,
	11, 11, 11, 11, 9, 21, 21, 21, 21, 21, 21, 21, 10, 5, 10, 21, 10, 21,
	10, 21, 21, 21, 21, 5, 21, 10, 21, 13, 21, 10, 21, 10, 10, 21, 21, 21,
	21, 21, 21, 21, 21, 5, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 10, 21,
	8, 11, 9, 21, 10, 21, 21, 21, 21, 21, 21, 10, 21, 21, 21, 10, 21, 10, 10,
	21, 14, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 7, 21, 21,
	21, 10, 21, 21, 21, 21, 21, 10, 21, 21, 21, 21, 21, 21, 8, 11, 11, 11,
	9, 5, 10, 10, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
	10, 21, 21, 21, 8, 11, 11, 11, 11, 11, 9, 21, 21, 21, 21, 21, 21, 21,
	21, 21, 21, 21, 21, 10, 10, 21, 6, 11, 11, 11, 11, 11, 11, 11, 11, 11, 7,
	21, 5, 21, 10, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
	21, 21, 6, 11, 11, 11, 7, 21, 10, 10, 21, 13, 21, 21, 21, 21, 5, 21, 21,
	21, 21, 10, 21, 21, 21, 13, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
	21, 21, 21, 21, 21, 10, 21, 21, 21, 10, 21, 10, 10, 21, 21, 21, 6, 11,
	11, 11, 11, 11, 7, 21, 10, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
	21, 21, 21, 21, 21, 21, 21, 21, 21, 10, 21, 12, 21, 10, 21, 10, 10, 21,
	6, 11, 9, 6, 11, 11, 11, 11, 9, 21, 10, 21, 21, 21, 21, 21, 21, 21, 21,
	5, 21, 21, 21, 21, 21, 21, 6, 11, 11, 11, 11, 16, 21, 10, 5, 13, 21,
	10, 10, 21, 10, 21, 21, 10, 21, 21, 5, 21, 21, 21, 10, 21, 21, 21, 21,
	21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 10, 21, 21, 5, 21, 10, 21,
	10, 21, 21, 21, 10, 10, 21, 8, 11, 11, 9, 21, 6, 11, 11, 7, 21, 8, 11,
	11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 9, 21, 6, 7, 21,
	10, 21, 8, 11, 15, 21, 10, 10, 21, 21, 21, 21, 21, 21, 10, 21, 21, 10,
	21, 21, 21, 21, 21, 21, 5, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
	21, 10, 10, 21, 10, 21, 21, 21, 21, 21, 10, 10, 21, 14, 11, 11, 11, 11,
	18, 11, 11, 18, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11,
	11, 11, 11, 11, 11, 18, 9, 21, 8, 11, 11, 11, 15, 21, 10, 10, 21, 21, 21,
	21, 21, 5, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
	21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 5, 21, 21, 10, 8,
	11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11,
	11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11,
	11, 11, 9};

const u8 g_game_pf_3[40 * 21] = {6, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11,
	11, 11, 11, 11, 11, 11, 11, 7, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
	21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 10, 5, 21, 21, 21, 21, 21, 21,
	21, 21, 21, 5, 21, 21, 21, 21, 21, 21, 21, 10, 21, 21, 21, 21, 21, 21,
	21, 21, 6, 11, 11, 11, 11, 11, 11, 11, 7, 21, 21, 21, 10, 21, 6, 11, 11,
	15, 21, 6, 11, 11, 11, 11, 7, 21, 6, 11, 11, 7, 21, 10, 21, 21, 21, 6,
	11, 11, 11, 11, 9, 21, 21, 5, 21, 21, 21, 21, 10, 21, 21, 21, 10, 21,
	10, 21, 21, 21, 21, 10, 21, 6, 11, 11, 9, 21, 8, 11, 11, 9, 21, 10, 21,
	21, 21, 10, 21, 21, 21, 21, 21, 21, 14, 11, 11, 11, 15, 21, 10, 21, 21,
	21, 10, 21, 10, 5, 6, 7, 21, 10, 21, 10, 21, 21, 21, 21, 21, 21, 5, 21,
	21, 10, 21, 21, 21, 10, 21, 6, 11, 11, 7, 21, 21, 21, 21, 5, 21, 21, 10,
	21, 21, 21, 10, 21, 10, 21, 10, 10, 21, 10, 21, 10, 21, 6, 11, 11, 11,
	11, 11, 7, 21, 10, 21, 21, 21, 10, 21, 8, 11, 11, 20, 11, 19, 11, 11,
	11, 15, 21, 10, 21, 21, 21, 10, 21, 13, 21, 8, 9, 21, 10, 21, 10, 5, 10,
	21, 21, 21, 21, 21, 10, 21, 10, 21, 21, 21, 10, 21, 21, 21, 21, 10, 21,
	10, 21, 21, 21, 21, 21, 10, 21, 21, 21, 10, 21, 21, 21, 21, 21, 5, 10,
	21, 10, 21, 8, 11, 11, 11, 7, 21, 10, 21, 10, 21, 21, 21, 8, 11, 11, 7,
	21, 8, 11, 9, 21, 6, 11, 11, 11, 9, 21, 21, 21, 10, 21, 6, 11, 11, 11,
	11, 9, 21, 10, 21, 21, 21, 21, 21, 10, 21, 10, 21, 10, 21, 21, 21, 21,
	21, 21, 10, 21, 21, 5, 21, 21, 10, 21, 21, 21, 21, 21, 21, 21, 10, 21,
	8, 11, 11, 11, 11, 11, 11, 18, 11, 11, 11, 15, 21, 8, 11, 9, 21, 8, 19,
	11, 11, 11, 11, 11, 9, 21, 6, 11, 7, 21, 8, 11, 11, 11, 11, 11, 11, 7,
	10, 21, 21, 21, 21, 21, 21, 21, 5, 21, 21, 21, 21, 21, 21, 21, 21, 21,
	21, 21, 10, 21, 21, 21, 21, 21, 21, 21, 10, 21, 10, 21, 21, 5, 21, 21,
	21, 21, 21, 10, 8, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11,
	11, 11, 11, 11, 7, 21, 8, 11, 11, 15, 21, 6, 11, 11, 9, 21, 10, 21, 6,
	11, 11, 11, 11, 7, 21, 10, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
	21, 21, 21, 21, 21, 21, 21, 10, 21, 21, 21, 21, 21, 5, 10, 21, 21, 21,
	21, 10, 21, 8, 11, 11, 11, 11, 9, 21, 10, 21, 21, 21, 21, 21, 21, 21,
	21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 10, 21, 14, 11, 11, 11, 11,
	16, 21, 21, 21, 21, 10, 21, 21, 21, 21, 21, 5, 21, 21, 10, 21, 21, 21,
	21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 10, 21, 21,
	5, 21, 21, 21, 10, 21, 6, 11, 11, 9, 21, 14, 11, 11, 19, 11, 7, 21, 10,
	21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
	10, 21, 6, 11, 11, 7, 21, 8, 11, 9, 21, 21, 5, 21, 21, 21, 21, 8, 11, 9,
	21, 10, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
	21, 21, 10, 21, 10, 21, 21, 10, 21, 21, 21, 21, 21, 6, 11, 11, 11, 7,
	21, 5, 21, 21, 21, 10, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
	21, 21, 21, 21, 21, 21, 10, 21, 10, 21, 21, 8, 11, 7, 21, 6, 11, 9, 21,
	21, 21, 8, 11, 11, 11, 7, 21, 10, 21, 21, 21, 21, 21, 21, 21, 21, 21,
	21, 21, 21, 21, 21, 6, 11, 11, 11, 9, 5, 8, 11, 11, 11, 11, 9, 21, 8,
	11, 11, 11, 11, 11, 11, 11, 11, 11, 9, 21, 10, 21, 21, 21, 21, 21, 21,
	21, 21, 21, 21, 21, 21, 21, 21, 10, 21, 21, 21, 21, 21, 21, 21, 21, 21,
	21, 21, 21, 21, 21, 21, 21, 21, 21, 5, 21, 21, 21, 21, 21, 10, 21, 21,
	21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 8, 11, 11, 11, 11, 11,
	11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11,
	11, 9};

const u8 g_game_pf_4[40 * 21] = {6, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 7,
	21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
	21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 10, 21, 21, 21, 21, 21, 21, 21,
	21, 21, 21, 10, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
	21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 10, 5, 12, 21,
	12, 21, 6, 11, 11, 7, 5, 10, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
	21, 21, 6, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 7, 10,
	21, 10, 21, 10, 21, 8, 11, 7, 10, 21, 10, 21, 21, 21, 21, 21, 21, 21,
	21, 21, 21, 21, 21, 21, 10, 21, 21, 21, 21, 21, 5, 21, 21, 21, 21, 21,
	21, 21, 10, 10, 21, 10, 21, 10, 21, 21, 21, 10, 10, 21, 10, 21, 21, 21,
	21, 21, 6, 11, 11, 11, 11, 11, 7, 21, 10, 21, 14, 11, 11, 11, 11, 19,
	11, 7, 21, 6, 7, 21, 10, 10, 21, 13, 5, 8, 11, 7, 21, 10, 10, 21, 10,
	21, 21, 21, 21, 21, 10, 21, 21, 21, 21, 21, 10, 21, 10, 21, 21, 21, 21,
	21, 21, 8, 11, 9, 21, 10, 10, 21, 10, 10, 21, 21, 21, 21, 21, 10, 21, 8,
	9, 21, 10, 21, 21, 21, 21, 21, 10, 21, 6, 11, 15, 21, 10, 21, 10, 21, 6,
	11, 11, 7, 21, 21, 21, 21, 21, 10, 10, 5, 10, 8, 11, 11, 11, 7, 21, 10,
	21, 5, 21, 21, 10, 21, 21, 21, 21, 21, 10, 21, 10, 21, 21, 21, 10, 21,
	10, 5, 10, 21, 21, 8, 7, 21, 14, 11, 11, 16, 10, 21, 10, 21, 21, 21, 21,
	10, 21, 10, 21, 6, 7, 21, 10, 21, 21, 21, 21, 21, 10, 21, 10, 21, 12, 5,
	8, 11, 9, 21, 8, 11, 7, 21, 10, 21, 21, 21, 21, 10, 10, 21, 10, 21, 21,
	21, 21, 10, 21, 10, 21, 10, 10, 21, 10, 21, 21, 21, 21, 21, 10, 21, 10,
	5, 10, 21, 21, 21, 21, 21, 21, 21, 8, 11, 9, 21, 14, 7, 21, 10, 10, 21,
	10, 21, 21, 21, 21, 10, 21, 13, 21, 8, 9, 21, 10, 21, 21, 21, 21, 21,
	10, 21, 10, 21, 13, 21, 6, 11, 11, 11, 7, 21, 21, 21, 21, 21, 21, 10, 5,
	10, 10, 21, 10, 21, 21, 21, 21, 10, 21, 21, 5, 21, 21, 21, 10, 21, 21,
	21, 21, 21, 10, 21, 10, 21, 21, 21, 10, 6, 11, 11, 9, 21, 6, 11, 11, 7,
	21, 10, 21, 8, 9, 21, 10, 21, 21, 21, 21, 17, 11, 11, 11, 7, 21, 21, 10,
	21, 21, 21, 21, 21, 10, 21, 17, 11, 7, 21, 10, 10, 21, 21, 21, 21, 10,
	21, 21, 10, 21, 10, 21, 21, 21, 21, 10, 21, 21, 21, 21, 10, 21, 5, 21,
	13, 21, 21, 10, 21, 21, 21, 21, 21, 10, 21, 10, 21, 10, 21, 10, 10, 21,
	6, 7, 21, 10, 21, 21, 10, 21, 8, 11, 11, 15, 21, 10, 21, 21, 6, 11, 9,
	21, 12, 21, 21, 21, 21, 10, 21, 21, 21, 21, 21, 10, 21, 10, 21, 10, 21,
	8, 9, 21, 10, 10, 21, 10, 21, 21, 10, 21, 21, 21, 5, 21, 21, 10, 21, 21,
	10, 21, 21, 21, 17, 11, 11, 7, 21, 10, 21, 21, 21, 21, 21, 10, 21, 10,
	21, 10, 21, 21, 5, 21, 10, 10, 21, 10, 21, 21, 8, 11, 11, 11, 11, 11,
	11, 9, 21, 21, 10, 21, 12, 21, 8, 11, 7, 10, 21, 8, 11, 11, 11, 11, 11,
	9, 21, 8, 11, 9, 21, 14, 11, 11, 16, 10, 5, 10, 21, 21, 21, 21, 21, 21,
	21, 21, 21, 21, 21, 21, 10, 21, 10, 21, 5, 21, 10, 10, 21, 21, 5, 21,
	21, 21, 21, 21, 21, 5, 21, 21, 21, 21, 21, 21, 8, 9, 21, 10, 21, 21, 21,
	21, 21, 21, 21, 21, 21, 21, 21, 21, 10, 21, 8, 11, 15, 21, 8, 18, 11,
	11, 21, 21, 6, 11, 11, 11, 11, 11, 11, 11, 11, 11, 15, 21, 21, 21, 21,
	10, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 10, 21, 5, 21, 21,
	21, 21, 21, 21, 21, 21, 21, 10, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
	21, 6, 11, 11, 9, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 8, 11,
	11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 18, 11, 11, 11, 11, 11, 11, 11,
	11, 11, 11, 11, 9, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21};

const u8 g_game_pf_5[40 * 21] = {6, 11, 11, 11, 11, 11, 11, 11, 11, 7, 21, 21,
	21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
	21, 21, 6, 11, 11, 11, 19, 11, 11, 7, 10, 21, 21, 21, 21, 21, 21, 21,
	21, 10, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
	21, 21, 21, 21, 21, 21, 10, 21, 21, 21, 10, 21, 21, 10, 10, 21, 21, 21,
	21, 21, 5, 21, 21, 10, 21, 6, 11, 11, 11, 11, 11, 11, 11, 11, 7, 21, 21,
	21, 21, 21, 21, 21, 21, 21, 21, 21, 10, 21, 21, 21, 10, 21, 21, 10, 10,
	21, 21, 21, 21, 21, 21, 21, 21, 10, 21, 10, 21, 21, 21, 21, 21, 21, 21,
	21, 10, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 10, 21, 21, 5, 10,
	21, 21, 10, 10, 21, 21, 21, 21, 21, 21, 21, 21, 10, 21, 10, 21, 21, 21,
	5, 21, 21, 21, 21, 10, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 10,
	21, 21, 21, 10, 21, 21, 10, 10, 21, 21, 21, 21, 21, 21, 21, 21, 10, 21,
	10, 21, 21, 21, 21, 21, 21, 21, 21, 10, 21, 21, 6, 11, 11, 11, 11, 11,
	11, 7, 21, 10, 21, 21, 21, 10, 21, 21, 10, 10, 21, 21, 21, 21, 21, 21,
	21, 21, 10, 21, 10, 21, 21, 21, 6, 11, 15, 21, 21, 10, 21, 21, 10, 21,
	21, 21, 21, 21, 21, 10, 21, 10, 21, 21, 21, 10, 21, 5, 10, 17, 11, 11,
	11, 11, 11, 7, 21, 21, 10, 21, 10, 21, 21, 21, 10, 21, 21, 21, 21, 10,
	21, 21, 10, 21, 21, 21, 21, 21, 21, 10, 21, 10, 21, 21, 21, 10, 21, 21,
	10, 10, 21, 21, 21, 21, 21, 10, 21, 21, 8, 11, 9, 21, 21, 21, 10, 21,
	21, 21, 21, 10, 21, 21, 10, 21, 21, 21, 5, 21, 21, 10, 21, 10, 21, 21,
	14, 9, 21, 21, 10, 10, 21, 21, 21, 21, 21, 10, 21, 21, 21, 21, 21, 21,
	21, 21, 10, 21, 21, 21, 21, 10, 21, 21, 10, 21, 21, 21, 21, 21, 21, 10,
	21, 10, 21, 21, 21, 21, 21, 21, 10, 10, 21, 21, 21, 21, 21, 13, 21, 21,
	21, 21, 21, 21, 21, 21, 10, 21, 21, 21, 21, 10, 21, 21, 10, 21, 21, 6,
	15, 21, 21, 10, 21, 10, 21, 21, 21, 21, 21, 21, 10, 10, 21, 21, 21, 21,
	21, 21, 21, 5, 21, 21, 21, 21, 21, 21, 10, 21, 5, 21, 21, 8, 19, 11, 9,
	21, 21, 10, 21, 21, 21, 10, 21, 10, 21, 21, 21, 21, 21, 21, 10, 10, 21,
	21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 10, 21, 21, 21, 21,
	21, 10, 21, 21, 5, 21, 10, 21, 21, 21, 10, 21, 10, 21, 21, 21, 21, 21,
	21, 10, 10, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 6, 11, 18,
	7, 21, 21, 5, 21, 10, 21, 21, 21, 21, 10, 21, 21, 21, 8, 11, 9, 21, 21,
	21, 21, 21, 21, 10, 10, 21, 21, 21, 21, 21, 6, 11, 7, 21, 21, 21, 21,
	10, 21, 21, 10, 21, 21, 21, 21, 10, 21, 21, 21, 21, 10, 21, 21, 21, 21,
	21, 21, 21, 21, 21, 21, 21, 21, 10, 10, 21, 21, 21, 21, 21, 10, 21, 10,
	21, 21, 21, 21, 10, 21, 21, 10, 21, 21, 14, 11, 9, 21, 21, 6, 11, 18, 7,
	21, 21, 21, 21, 21, 21, 6, 11, 15, 21, 21, 10, 10, 21, 21, 5, 21, 21,
	10, 21, 10, 21, 21, 21, 21, 10, 21, 21, 10, 21, 21, 21, 21, 21, 21, 21,
	10, 21, 21, 10, 21, 21, 21, 21, 21, 21, 10, 21, 21, 21, 21, 10, 10, 21,
	21, 21, 21, 21, 10, 21, 10, 21, 21, 5, 21, 10, 21, 21, 10, 21, 21, 21,
	5, 21, 21, 21, 10, 21, 21, 10, 21, 21, 21, 21, 21, 21, 10, 5, 21, 21,
	21, 10, 10, 21, 21, 21, 21, 21, 10, 21, 10, 21, 21, 21, 21, 10, 6, 11,
	18, 11, 11, 11, 11, 11, 11, 11, 9, 21, 21, 13, 21, 5, 21, 21, 21, 21,
	10, 21, 21, 21, 21, 10, 10, 21, 21, 21, 21, 21, 10, 21, 8, 11, 11, 11,
	11, 9, 10, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
	21, 21, 21, 21, 10, 21, 21, 21, 21, 10, 8, 11, 11, 11, 11, 11, 9, 21,
	21, 21, 21, 21, 21, 21, 8, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11,
	11, 11, 11, 11, 11, 11, 11, 11, 18, 11, 11, 11, 11, 9};

const u8 g_game_pf_6[40 * 21] = {6, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11,
	11, 11, 7, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
	21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 10, 21, 21, 21, 21, 21, 5, 21,
	21, 21, 21, 21, 21, 21, 10, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
	21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 10, 5, 6, 11, 7,
	21, 14, 11, 11, 19, 7, 5, 12, 21, 10, 21, 21, 21, 21, 21, 21, 21, 21,
	21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 10,
	21, 10, 21, 10, 21, 21, 21, 21, 10, 10, 21, 10, 5, 10, 21, 21, 21, 21,
	21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 6, 11, 11, 11, 11, 11, 11,
	11, 11, 7, 10, 21, 8, 11, 9, 21, 6, 7, 21, 8, 9, 21, 13, 21, 10, 21, 21,
	21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 10, 21, 21, 21, 21,
	21, 21, 21, 21, 10, 10, 21, 21, 21, 21, 21, 10, 10, 21, 21, 21, 21, 21,
	21, 8, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 7, 21, 21, 21, 10,
	21, 6, 11, 11, 11, 11, 7, 5, 10, 10, 21, 6, 11, 7, 21, 10, 10, 21, 6,
	11, 11, 7, 21, 21, 21, 21, 21, 21, 5, 21, 21, 21, 21, 21, 21, 10, 21,
	21, 21, 10, 5, 10, 6, 11, 11, 11, 9, 21, 10, 10, 5, 10, 21, 10, 21, 10,
	10, 21, 10, 21, 21, 8, 11, 7, 21, 6, 11, 11, 11, 7, 21, 6, 11, 7, 21,
	10, 21, 21, 21, 10, 21, 10, 10, 21, 21, 21, 21, 21, 10, 10, 21, 8, 11,
	9, 21, 10, 10, 21, 10, 21, 21, 21, 21, 10, 21, 10, 6, 11, 11, 9, 21, 8,
	11, 16, 5, 10, 21, 21, 21, 10, 21, 10, 10, 21, 6, 11, 7, 21, 10, 10, 21,
	21, 5, 21, 21, 10, 10, 21, 8, 11, 11, 7, 21, 10, 21, 10, 10, 21, 21, 21,
	21, 21, 21, 10, 21, 10, 21, 21, 21, 10, 21, 8, 9, 5, 10, 21, 10, 21, 10,
	10, 21, 6, 11, 7, 21, 10, 10, 21, 21, 21, 21, 10, 21, 10, 21, 10, 10, 5,
	6, 11, 11, 7, 21, 10, 21, 10, 21, 21, 21, 10, 21, 21, 21, 21, 10, 21,
	10, 21, 10, 10, 21, 10, 21, 10, 21, 10, 8, 11, 11, 7, 21, 10, 21, 10,
	21, 10, 10, 21, 10, 6, 11, 9, 5, 13, 21, 10, 21, 21, 21, 10, 21, 6, 7,
	21, 10, 21, 10, 21, 10, 10, 21, 8, 11, 9, 21, 8, 11, 11, 7, 10, 5, 10,
	21, 10, 21, 8, 9, 21, 10, 10, 21, 5, 21, 21, 21, 8, 11, 11, 11, 9, 21,
	10, 10, 21, 10, 21, 10, 21, 10, 10, 21, 21, 21, 21, 21, 21, 21, 21, 10,
	10, 21, 10, 21, 10, 21, 21, 21, 21, 10, 10, 21, 6, 11, 7, 21, 21, 21,
	21, 21, 21, 21, 10, 8, 11, 9, 21, 10, 21, 10, 10, 5, 6, 11, 7, 21, 6, 7,
	21, 8, 9, 21, 10, 21, 10, 21, 12, 21, 14, 18, 9, 21, 8, 11, 9, 21, 6,
	11, 11, 11, 7, 21, 8, 11, 11, 11, 7, 10, 5, 10, 10, 21, 10, 21, 10, 5,
	10, 10, 21, 21, 21, 21, 10, 21, 10, 21, 10, 21, 21, 21, 21, 5, 21, 21,
	21, 21, 10, 21, 21, 21, 10, 21, 21, 21, 21, 21, 10, 10, 21, 10, 10, 21,
	8, 11, 9, 21, 10, 10, 21, 6, 7, 21, 8, 11, 18, 11, 18, 11, 11, 11, 11,
	11, 11, 11, 11, 11, 18, 11, 7, 21, 10, 21, 12, 21, 14, 11, 18, 9, 21,
	10, 10, 21, 21, 21, 21, 21, 10, 10, 21, 10, 10, 21, 21, 21, 21, 21, 21,
	21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 10, 21, 10, 21, 10, 21, 5,
	21, 21, 21, 21, 10, 10, 21, 14, 11, 11, 11, 18, 9, 21, 10, 10, 21, 6,
	11, 19, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 15, 21, 10, 21, 8,
	11, 18, 11, 11, 11, 11, 11, 11, 9, 10, 21, 21, 21, 21, 21, 21, 5, 21,
	10, 10, 21, 10, 21, 10, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
	21, 10, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 8, 11, 11, 11, 11,
	11, 11, 11, 11, 18, 18, 11, 9, 21, 8, 11, 11, 11, 11, 11, 11, 11, 11,
	11, 11, 11, 11, 11, 9, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21};

const u8 g_game_pf_7[40 * 21] = {6, 11, 11, 11, 11, 11, 11, 11, 11, 11, 19, 11,
	19, 11, 11, 11, 11, 11, 11, 7, 21, 21, 6, 11, 11, 11, 11, 11, 11, 11,
	11, 19, 19, 11, 11, 11, 11, 11, 11, 7, 10, 21, 21, 21, 21, 21, 21, 5,
	21, 21, 10, 21, 10, 21, 21, 5, 21, 21, 21, 10, 21, 21, 10, 21, 21, 5,
	21, 21, 21, 21, 21, 10, 10, 21, 21, 21, 21, 21, 21, 10, 10, 5, 6, 7, 21,
	12, 21, 6, 7, 21, 10, 21, 10, 21, 6, 11, 11, 7, 21, 10, 21, 21, 10, 21,
	6, 7, 21, 6, 11, 7, 21, 10, 10, 21, 6, 11, 11, 7, 21, 10, 10, 21, 10,
	10, 21, 10, 21, 17, 9, 21, 8, 11, 9, 21, 10, 21, 21, 10, 21, 10, 21, 21,
	10, 21, 10, 10, 21, 8, 11, 9, 21, 8, 9, 21, 10, 21, 21, 10, 5, 10, 10,
	21, 10, 10, 21, 10, 21, 10, 21, 21, 21, 21, 21, 21, 8, 11, 11, 9, 21,
	10, 21, 21, 10, 21, 10, 10, 21, 21, 21, 5, 21, 21, 21, 21, 8, 11, 11, 9,
	21, 10, 10, 21, 10, 10, 5, 10, 21, 10, 21, 6, 11, 11, 7, 21, 21, 21, 21,
	21, 21, 10, 21, 21, 10, 21, 8, 9, 21, 6, 11, 11, 11, 11, 7, 21, 21, 21,
	21, 21, 21, 10, 10, 21, 10, 10, 21, 10, 21, 10, 21, 17, 11, 11, 18, 11,
	11, 11, 11, 11, 11, 9, 21, 21, 10, 21, 21, 21, 21, 10, 21, 21, 21, 21,
	10, 21, 6, 11, 11, 11, 11, 16, 10, 21, 10, 10, 21, 13, 21, 10, 21, 10,
	21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 17, 7, 21, 12, 21, 10,
	21, 21, 21, 21, 10, 21, 8, 11, 11, 11, 11, 16, 10, 21, 10, 10, 21, 21,
	21, 10, 21, 10, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 17, 9,
	21, 10, 21, 10, 21, 21, 21, 21, 10, 21, 21, 21, 21, 21, 21, 10, 10, 21,
	8, 9, 21, 14, 11, 9, 21, 10, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
	21, 10, 21, 21, 10, 21, 17, 11, 11, 19, 11, 9, 21, 6, 7, 21, 12, 21, 10,
	10, 21, 21, 21, 21, 21, 21, 21, 21, 10, 21, 21, 21, 21, 21, 21, 21, 21,
	21, 21, 21, 21, 10, 21, 6, 16, 5, 10, 21, 21, 10, 21, 21, 21, 10, 10,
	21, 10, 21, 10, 10, 21, 6, 7, 21, 6, 11, 11, 11, 16, 21, 21, 21, 21, 21,
	21, 21, 21, 21, 21, 21, 21, 10, 21, 10, 10, 21, 10, 21, 21, 8, 7, 21, 5,
	10, 10, 21, 10, 5, 10, 10, 21, 10, 10, 21, 8, 11, 11, 11, 16, 21, 21,
	21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 10, 21, 8, 9, 21, 10, 21, 21,
	21, 10, 21, 21, 10, 10, 21, 13, 21, 10, 10, 21, 10, 10, 21, 21, 21, 21,
	21, 10, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 10, 21, 21, 21,
	21, 10, 21, 21, 21, 8, 7, 21, 10, 10, 21, 21, 21, 10, 10, 21, 10, 10,
	21, 6, 11, 7, 21, 8, 11, 11, 11, 11, 11, 11, 11, 11, 11, 7, 21, 21, 10,
	5, 6, 7, 21, 10, 21, 21, 21, 21, 10, 21, 10, 10, 21, 12, 21, 10, 10, 21,
	10, 10, 21, 8, 11, 9, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 10,
	21, 21, 10, 21, 8, 9, 21, 13, 21, 21, 21, 21, 13, 21, 10, 10, 21, 10,
	21, 10, 10, 5, 10, 10, 21, 21, 21, 21, 21, 6, 11, 11, 19, 11, 11, 11,
	11, 15, 21, 8, 11, 11, 9, 21, 21, 21, 21, 21, 21, 5, 21, 21, 21, 21, 10,
	10, 5, 10, 21, 10, 10, 21, 10, 10, 21, 6, 11, 7, 5, 10, 21, 21, 10, 21,
	21, 5, 21, 21, 21, 21, 21, 21, 21, 21, 6, 11, 7, 21, 6, 11, 11, 11, 11,
	11, 9, 10, 21, 10, 21, 10, 10, 21, 8, 9, 21, 10, 21, 10, 21, 8, 11, 11,
	9, 21, 6, 11, 11, 11, 11, 11, 11, 11, 11, 11, 18, 11, 9, 21, 8, 11, 11,
	11, 11, 11, 11, 9, 21, 13, 21, 10, 10, 21, 21, 21, 21, 10, 21, 10, 21,
	21, 21, 21, 21, 21, 10, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
	21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 10, 8, 11, 11, 11, 11,
	18, 11, 18, 11, 11, 11, 11, 11, 11, 18, 11, 11, 11, 11, 11, 11, 11, 11,
	11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 9};

const u8 g_game_pf_8[40 * 21] = {6, 11, 11, 11, 11, 19, 11, 11, 11, 11, 11, 11,
	11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 19, 19, 11, 11, 11,
	11, 11, 11, 11, 11, 11, 11, 11, 11, 7, 10, 21, 21, 21, 21, 10, 21, 5,
	21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 10,
	10, 21, 21, 5, 21, 21, 21, 21, 21, 21, 21, 21, 21, 10, 10, 21, 6, 7, 21,
	10, 21, 14, 11, 11, 11, 11, 7, 21, 6, 11, 11, 7, 5, 6, 11, 11, 11, 7, 5,
	10, 10, 21, 6, 11, 11, 7, 21, 14, 11, 11, 19, 7, 21, 10, 10, 21, 10, 10,
	21, 10, 21, 21, 21, 21, 21, 21, 10, 21, 8, 11, 11, 9, 21, 8, 11, 11, 7,
	10, 21, 8, 9, 21, 10, 21, 21, 10, 21, 21, 21, 21, 10, 10, 21, 10, 10,
	21, 10, 10, 21, 8, 11, 11, 11, 11, 15, 21, 10, 21, 21, 21, 21, 21, 21,
	21, 21, 21, 10, 10, 21, 21, 21, 21, 8, 11, 11, 9, 21, 6, 7, 21, 8, 9,
	21, 10, 10, 21, 10, 10, 21, 21, 21, 21, 21, 21, 21, 21, 10, 21, 12, 21,
	6, 11, 11, 11, 7, 21, 10, 10, 21, 6, 7, 21, 21, 21, 21, 21, 21, 10, 10,
	21, 21, 21, 21, 10, 10, 21, 10, 8, 11, 11, 11, 7, 21, 6, 7, 21, 13, 21,
	10, 21, 10, 6, 11, 11, 9, 5, 8, 9, 21, 10, 10, 5, 6, 11, 11, 7, 21, 10,
	8, 11, 11, 7, 5, 10, 10, 5, 8, 11, 11, 11, 11, 9, 21, 8, 16, 21, 21, 21,
	10, 5, 10, 10, 21, 21, 21, 21, 21, 21, 21, 10, 10, 21, 17, 11, 11, 9,
	21, 8, 11, 11, 7, 10, 21, 10, 10, 21, 21, 21, 21, 21, 21, 5, 21, 21, 8,
	11, 11, 11, 16, 21, 10, 10, 21, 6, 11, 11, 11, 7, 21, 10, 10, 21, 10,
	21, 21, 21, 21, 21, 21, 21, 10, 10, 21, 10, 10, 21, 6, 7, 21, 6, 11, 11,
	7, 21, 21, 21, 21, 21, 10, 21, 10, 10, 5, 8, 11, 11, 7, 10, 21, 10, 10,
	21, 10, 21, 6, 11, 11, 11, 7, 21, 8, 16, 21, 10, 10, 21, 10, 10, 21, 8,
	11, 7, 8, 11, 11, 11, 7, 21, 13, 21, 8, 16, 21, 21, 21, 21, 10, 10, 21,
	8, 9, 21, 13, 21, 8, 11, 11, 7, 10, 5, 21, 10, 21, 10, 10, 21, 10, 10,
	21, 21, 21, 10, 21, 21, 21, 21, 10, 5, 21, 21, 21, 17, 11, 11, 7, 21,
	10, 10, 21, 21, 21, 21, 5, 21, 21, 21, 21, 10, 8, 7, 21, 13, 21, 10, 10,
	21, 10, 8, 11, 7, 21, 8, 11, 11, 11, 11, 9, 21, 6, 7, 21, 10, 21, 21,
	10, 21, 10, 10, 21, 6, 11, 11, 19, 11, 11, 15, 21, 8, 7, 10, 21, 21, 21,
	10, 10, 21, 8, 11, 7, 10, 5, 21, 21, 21, 21, 21, 21, 21, 10, 10, 21, 8,
	11, 7, 10, 21, 8, 9, 21, 10, 6, 11, 9, 21, 21, 21, 21, 21, 10, 8, 7, 21,
	14, 16, 10, 21, 21, 21, 10, 8, 11, 7, 21, 6, 11, 7, 21, 6, 9, 10, 21,
	21, 21, 10, 10, 21, 21, 21, 21, 10, 10, 21, 21, 21, 6, 11, 15, 21, 10,
	21, 10, 21, 21, 10, 10, 21, 12, 21, 8, 11, 11, 9, 21, 8, 7, 10, 21, 10,
	21, 10, 21, 12, 21, 10, 8, 7, 21, 6, 11, 9, 10, 21, 6, 11, 9, 21, 21,
	21, 8, 11, 9, 21, 21, 10, 10, 21, 10, 5, 21, 21, 21, 21, 21, 21, 10, 10,
	21, 8, 11, 9, 21, 10, 5, 10, 21, 10, 21, 10, 21, 21, 10, 21, 10, 21, 21,
	21, 12, 5, 21, 21, 21, 21, 21, 10, 10, 21, 17, 11, 11, 11, 11, 11, 7,
	21, 10, 10, 21, 21, 5, 21, 21, 10, 21, 10, 21, 10, 21, 10, 21, 21, 10,
	21, 10, 21, 6, 11, 18, 11, 11, 11, 7, 21, 21, 10, 10, 21, 8, 11, 11, 11,
	11, 11, 9, 21, 10, 10, 21, 6, 11, 11, 11, 9, 21, 8, 11, 9, 21, 8, 11,
	11, 9, 21, 10, 21, 8, 11, 11, 11, 11, 11, 9, 21, 14, 16, 10, 21, 21, 21,
	21, 21, 21, 21, 21, 5, 10, 10, 21, 10, 21, 21, 21, 21, 21, 21, 21, 21,
	21, 21, 21, 21, 21, 21, 10, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 10,
	8, 11, 11, 11, 11, 11, 11, 11, 11, 11, 18, 18, 11, 18, 11, 11, 11, 11,
	11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 18, 11, 11, 11, 11, 11, 11, 11,
	11, 11, 11, 9};

const u8 g_game_pf_9[40 * 21] = {21, 21, 21, 21, 6, 11, 11, 11, 11, 11, 11, 11,
	11, 11, 11, 11, 19, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11,
	11, 11, 11, 11, 11, 7, 21, 21, 21, 21, 21, 21, 21, 21, 10, 21, 21, 21,
	21, 21, 21, 21, 21, 21, 21, 21, 10, 21, 21, 21, 21, 21, 21, 21, 21, 21,
	21, 5, 21, 21, 21, 21, 21, 21, 21, 10, 21, 21, 21, 21, 21, 21, 21, 21,
	10, 21, 12, 21, 12, 21, 14, 11, 11, 11, 7, 21, 10, 21, 14, 11, 11, 11,
	11, 11, 11, 11, 11, 7, 21, 14, 11, 7, 21, 12, 21, 10, 21, 21, 21, 21,
	21, 21, 21, 21, 10, 5, 10, 21, 10, 21, 5, 21, 21, 21, 10, 21, 10, 21, 5,
	21, 21, 21, 21, 21, 21, 21, 21, 10, 21, 21, 21, 10, 21, 10, 21, 10, 21,
	21, 21, 21, 6, 11, 11, 11, 9, 21, 10, 5, 8, 11, 11, 11, 15, 21, 13, 21,
	10, 21, 6, 11, 11, 11, 11, 15, 21, 12, 21, 10, 21, 12, 5, 13, 21, 10,
	21, 8, 11, 11, 11, 7, 10, 21, 21, 21, 21, 21, 10, 21, 21, 21, 21, 21,
	21, 21, 21, 21, 10, 21, 10, 21, 21, 5, 21, 21, 21, 10, 5, 13, 21, 10,
	21, 21, 21, 10, 21, 21, 21, 21, 21, 10, 10, 21, 14, 11, 11, 11, 9, 21,
	6, 11, 11, 11, 11, 11, 15, 21, 10, 21, 13, 21, 14, 11, 11, 7, 21, 10,
	21, 21, 21, 8, 11, 15, 21, 10, 21, 14, 11, 7, 21, 10, 10, 21, 21, 21,
	21, 21, 21, 21, 10, 21, 21, 21, 21, 5, 21, 21, 10, 21, 21, 21, 21, 21,
	21, 10, 21, 10, 21, 12, 21, 21, 21, 21, 21, 10, 21, 21, 21, 10, 21, 10,
	17, 11, 11, 11, 11, 11, 7, 21, 10, 21, 12, 21, 6, 11, 15, 21, 8, 11, 11,
	11, 11, 15, 21, 10, 21, 10, 21, 8, 11, 11, 11, 15, 21, 10, 21, 12, 21,
	10, 21, 10, 10, 21, 21, 21, 21, 21, 13, 21, 13, 21, 10, 21, 10, 21, 21,
	21, 21, 21, 21, 21, 5, 21, 21, 10, 21, 10, 21, 21, 21, 21, 21, 21, 21,
	10, 5, 10, 21, 10, 21, 10, 10, 21, 6, 11, 15, 21, 21, 21, 5, 21, 10, 21,
	10, 21, 14, 11, 11, 7, 21, 6, 11, 15, 21, 13, 21, 8, 11, 11, 11, 15, 21,
	14, 11, 9, 21, 13, 21, 10, 5, 10, 10, 21, 10, 21, 21, 21, 14, 11, 11,
	11, 9, 21, 10, 21, 21, 21, 21, 10, 21, 10, 21, 21, 21, 21, 21, 21, 5,
	21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 10, 21, 10, 10, 5, 10, 21, 12,
	21, 21, 21, 21, 21, 21, 21, 13, 21, 14, 7, 21, 10, 21, 10, 21, 6, 11,
	11, 11, 11, 15, 21, 14, 11, 11, 11, 7, 21, 6, 7, 5, 10, 21, 10, 10, 21,
	10, 21, 10, 5, 12, 21, 6, 11, 7, 21, 21, 21, 21, 10, 21, 10, 21, 13, 21,
	10, 21, 21, 5, 21, 21, 21, 21, 21, 21, 21, 10, 21, 10, 10, 21, 10, 21,
	10, 10, 21, 13, 21, 10, 21, 10, 21, 8, 11, 18, 11, 11, 7, 21, 10, 5, 10,
	21, 21, 21, 10, 21, 6, 11, 11, 11, 11, 15, 21, 12, 21, 13, 21, 8, 9, 21,
	13, 21, 10, 10, 21, 21, 21, 10, 21, 10, 21, 21, 21, 21, 5, 21, 10, 21,
	13, 21, 13, 21, 12, 21, 10, 21, 10, 21, 21, 21, 21, 5, 21, 10, 21, 21,
	21, 21, 21, 21, 21, 21, 10, 8, 11, 11, 11, 16, 21, 10, 21, 14, 11, 11,
	7, 21, 10, 21, 21, 21, 21, 21, 10, 21, 10, 21, 10, 21, 14, 11, 11, 11,
	11, 9, 21, 6, 7, 21, 6, 11, 11, 11, 9, 21, 21, 21, 21, 10, 21, 10, 21,
	5, 21, 21, 10, 21, 10, 21, 6, 11, 11, 11, 16, 21, 10, 21, 10, 21, 21, 5,
	21, 21, 21, 21, 21, 10, 10, 21, 10, 21, 21, 21, 21, 21, 21, 21, 21, 10,
	21, 8, 11, 11, 15, 21, 13, 21, 10, 21, 8, 11, 11, 11, 9, 21, 13, 21, 13,
	21, 14, 11, 11, 11, 11, 11, 11, 18, 9, 21, 10, 21, 21, 21, 21, 21, 21,
	21, 21, 10, 21, 21, 21, 21, 21, 21, 21, 21, 10, 21, 21, 21, 21, 21, 21,
	21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 5, 10, 21, 21,
	21, 21, 21, 21, 21, 21, 8, 11, 11, 11, 11, 11, 11, 11, 11, 18, 11, 11,
	11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11,
	11, 9, 21, 21, 21, 21};

const u8 g_game_pf_10[40 * 21] = {6, 11, 11, 11, 7, 21, 21, 21, 21, 21, 21, 21,
	21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
	21, 21, 21, 21, 21, 6, 11, 11, 11, 7, 10, 21, 21, 21, 10, 21, 21, 21,
	21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
	21, 21, 21, 21, 21, 21, 21, 21, 21, 10, 21, 21, 21, 10, 10, 21, 21, 21,
	8, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 19, 11, 11, 11, 11, 11,
	11, 11, 11, 11, 11, 11, 11, 19, 11, 11, 11, 11, 11, 9, 21, 21, 21, 10,
	10, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 10, 21,
	21, 21, 21, 21, 21, 5, 21, 21, 21, 21, 21, 10, 21, 21, 21, 21, 21, 21,
	5, 21, 21, 10, 8, 11, 7, 21, 14, 11, 11, 11, 11, 11, 11, 11, 7, 21, 12,
	5, 13, 21, 12, 21, 14, 11, 11, 15, 5, 14, 11, 7, 21, 10, 21, 6, 11, 11,
	11, 7, 21, 6, 11, 9, 21, 21, 10, 21, 21, 5, 21, 21, 21, 21, 21, 21, 10,
	21, 10, 21, 21, 21, 10, 21, 21, 21, 21, 21, 21, 21, 21, 10, 21, 10, 21,
	17, 11, 11, 11, 9, 21, 10, 21, 21, 21, 21, 17, 11, 11, 11, 7, 21, 6, 11,
	7, 21, 10, 5, 10, 21, 12, 21, 8, 11, 19, 19, 11, 11, 11, 7, 21, 10, 5,
	10, 21, 10, 21, 21, 21, 5, 21, 10, 21, 21, 21, 21, 17, 11, 11, 11, 9,
	21, 10, 21, 10, 21, 10, 21, 10, 21, 10, 21, 21, 21, 10, 10, 21, 21, 21,
	10, 21, 10, 21, 10, 21, 10, 21, 6, 11, 15, 21, 10, 21, 21, 21, 21, 10,
	21, 21, 21, 21, 21, 10, 21, 10, 5, 13, 21, 10, 21, 10, 21, 12, 21, 10,
	10, 21, 12, 5, 10, 21, 13, 21, 10, 21, 10, 21, 10, 21, 21, 21, 10, 21,
	21, 21, 21, 10, 21, 14, 11, 7, 21, 10, 21, 10, 21, 21, 21, 10, 21, 10,
	5, 10, 21, 8, 9, 21, 10, 21, 10, 21, 21, 21, 10, 21, 10, 21, 10, 21, 12,
	21, 10, 21, 21, 21, 21, 10, 21, 21, 21, 10, 21, 10, 21, 10, 21, 6, 11,
	9, 21, 13, 21, 10, 21, 21, 5, 21, 10, 21, 10, 21, 14, 11, 9, 21, 10, 21,
	10, 21, 10, 21, 10, 21, 21, 21, 21, 10, 21, 12, 21, 10, 21, 8, 11, 9,
	21, 10, 21, 5, 21, 21, 21, 10, 21, 6, 7, 21, 10, 21, 10, 21, 21, 21, 21,
	21, 10, 21, 10, 21, 10, 21, 10, 21, 21, 21, 21, 10, 21, 10, 21, 10, 21,
	21, 5, 21, 21, 10, 21, 6, 11, 15, 21, 10, 5, 10, 10, 21, 10, 21, 13, 21,
	14, 11, 11, 11, 9, 21, 10, 21, 10, 21, 10, 21, 21, 21, 21, 10, 21, 10,
	21, 8, 11, 11, 11, 15, 21, 13, 21, 10, 21, 21, 5, 10, 21, 10, 10, 21,
	10, 21, 21, 21, 21, 21, 21, 21, 21, 5, 10, 21, 10, 21, 10, 21, 21, 21,
	21, 10, 21, 10, 21, 21, 5, 21, 21, 21, 21, 21, 21, 10, 21, 6, 11, 9, 21,
	8, 9, 21, 10, 21, 14, 11, 11, 11, 11, 11, 11, 11, 9, 21, 10, 21, 10, 21,
	21, 21, 21, 10, 21, 17, 11, 11, 11, 11, 11, 11, 11, 7, 21, 10, 21, 10,
	21, 21, 21, 21, 21, 5, 10, 21, 5, 21, 21, 21, 21, 21, 21, 21, 21, 21,
	10, 21, 10, 21, 21, 6, 11, 9, 5, 8, 11, 11, 11, 11, 11, 11, 11, 9, 21,
	10, 21, 13, 21, 14, 11, 11, 11, 11, 18, 11, 11, 11, 11, 11, 15, 5, 14,
	11, 11, 11, 9, 21, 8, 11, 7, 10, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
	21, 21, 21, 10, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
	21, 21, 21, 21, 21, 21, 21, 5, 21, 21, 10, 10, 21, 21, 21, 6, 11, 11,
	11, 11, 11, 11, 11, 11, 11, 20, 11, 11, 11, 11, 11, 11, 11, 11, 15, 21,
	6, 11, 11, 11, 11, 11, 11, 11, 11, 11, 7, 21, 21, 21, 10, 10, 21, 21,
	21, 10, 21, 21, 21, 21, 21, 21, 21, 21, 21, 10, 21, 21, 21, 21, 21, 21,
	21, 21, 21, 21, 10, 21, 21, 21, 21, 21, 21, 21, 21, 21, 10, 21, 21, 21,
	10, 8, 11, 11, 11, 9, 21, 21, 21, 21, 21, 21, 21, 21, 21, 8, 11, 11, 11,
	11, 11, 11, 11, 11, 11, 11, 9, 21, 21, 21, 21, 21, 21, 21, 21, 21, 8,
	11, 11, 11, 9};

u8 *const g_game_pf[10] = {g_game_pf_1, g_game_pf_2, g_game_pf_3, g_game_pf_4,
	g_game_pf_5, g_game_pf_6, g_game_pf_7, g_game_pf_8, g_game_pf_9,
	g_game_pf_10};

