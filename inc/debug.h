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

#include <main.h>

/* Debug Defines to allow easier testing */
#undef DEBUG_SKIP_DEMO
#undef DEBUG_SKIP_TITLE
#undef DEBUG_SKIP_BETWEEN
#undef DEBUG_NO_COLLISION_DETECTION
#define DEBUG_LEVEL_SKIP

/* Public Functions */
void DEBUG_STR(const char* str, const bool left);
void DEBUG_NUM(const i64 num, const bool left);
void DEBUG_RESET(const bool left);
void DEBUG_LINE(const bool left);