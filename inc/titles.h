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

/* Public Functions */
cpct_keyID t_start(bool skip);
void t_stop(void);

/* Private Functions */
static void t_draw_text(void);
static void t_draw_menu(bool draw_all);
static void t_draw_hiscores(void);
static void t_draw_opt(const char *key, const char *str, const u8 y,
	const bool opt, const u8 idx, const bool icons);
static void t_interrupt(void);
static void t_draw_icon(const u8 x, const u8 y, const bool opt, const u8 idx);
