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
extern const u8 g_demo_pf[40 * 8];

extern const u8 g_game_pf_1[421];
extern const pos_t g_game_gems_1[25];

extern const u8 g_game_pf_2[421];
extern const pos_t g_game_gems_2[25];

extern const u8 g_game_pf_3[421];
extern const pos_t g_game_gems_3[25];

extern const u8 g_game_pf_4[421];
extern const pos_t g_game_gems_4[25];

extern const u8 g_game_pf_5[421];
extern const pos_t g_game_gems_5[25];

extern const u8 g_game_pf_6[421];
extern const pos_t g_game_gems_6[25];

extern const u8 g_game_pf_7[421];
extern const pos_t g_game_gems_7[25];

extern const u8 g_game_pf_8[421];
extern const pos_t g_game_gems_8[25];

extern const u8 g_game_pf_9[421];
extern const pos_t g_game_gems_9[25];

extern const u8 g_game_pf_10[421];
extern const pos_t g_game_gems_10[25];

extern u8 *const g_game_pf[10];
extern pos_t *const g_game_gems[10];

extern const u8 g_game_pf_count[10];
extern const u8 g_game_pf_cols[10];