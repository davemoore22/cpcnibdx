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
#include "debug.h"

static u8 left_y = 0;
static u8 right_y = 0;

void DEBUG_RESET(const bool left) {

	if (left)
		left_y = 0;
	else
		right_y = 0;
}

void DEBUG_LINE(const bool left) {

	if (left)
		left_y += 8;
	else
		right_y += 8;
}

void DEBUG_STR(const char* str, const bool left) {

	u8 *pos;
	u8 x, y;

	x = left ? 0 : (80 - (strlen(str) * 2));
	y = left ? left_y : right_y;

	pos = v_get_sp(x, y);
	cpct_setDrawCharM1(0, 1);
	cpct_drawStringM1(str, pos);
	
	if (left)
		left_y += 8;
	else
		right_y += 8;

	if (left_y > 199)
		left_y = 0;
	if (right_y > 199)
		right_y = 0;
}

void DEBUG_NUM(const i64 num, const bool left) {

	char str[40];
	
	sprintf(str, "%lld", num);
	DEBUG_STR(str, left);
}