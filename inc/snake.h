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
void s_create_snake(
	snake_t *snake, const pos_t *pos, const u8 len, const dir_t dir);
bool s_grow_snake(
	snake_t *snake, const u8 x, const u8 y, const dir_t dir, u8 max);
bool s_turn_snake(
	snake_t *snake, const u8 x, const u8 y, const dir_t dir, u8 max);
bool s_move_snake(snake_t *snake, const dir_t dir, u8 max);
void s_copy_snake(const snake_t *from, snake_t *to);
bool s_update_snake(
	u8 *pf, const u8 w, snake_t *snake, const u8 max, const bool demo);
bool s_check_collide(snake_t *snake);