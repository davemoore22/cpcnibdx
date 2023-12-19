
/* Private Functions */
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

/* Global Variables */
extern bool g_options[3];     /* Game Options */
extern score_t g_hiscores[5]; /* Hi-Score Table */

/* Public Functions */
void g_setup(void);
u32 g_start(void);
void g_stop(void);

/* Private Functions */
static bool g_play_level(const u8 level, const u8 gems);
static void g_interrupt(void);
static void g_load_level(const u8 level, u8 *gems_left, const bool reset);
static void g_reset_snake(snake_t *snake, snake_t *snake_buf);
static bool g_test_can_move(
	const u8 *pf, const u8 w, const snake_t *snake, const dir_t dir);
static void g_display_HUD(void);
static void g_redraw_score(const u32 score);
static void g_redraw_gems(const u8 gems_left);
static void g_display_lives(const u8 x, const u8 y);

