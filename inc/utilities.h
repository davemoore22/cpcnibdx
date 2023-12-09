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
#include <stdlib.h>

/* Global Variables */
extern bool g_clock_on; /* Enable Global Timer */
extern clock_t g_clock; /* Realtime Clock */

/* Public Functions */
void u_wait_kp(void);
void u_get_delta(const dir_t dir, i8 *dx, i8 *dy, const bool ahead);
void u_get_cell(const dir_t dir, u8 *dx, u8 *dy, const bool ahead);
dir_t u_get_dir(const dir_t dir, const i16 angle);
bool u_test_cell(
	const u8 *pf, const u8 w, const u8 x, const u8 y, const dir_t dir);
bool u_check_dir(const u8 *pf, const u8 w, snake_t *snake, const i16 angle);
bool u_has_eaten_gem(u8 *pf, const u8 w, snake_t *snake);
u8 u_get_width(const u32 score);
void u_wait(const u16 n);
void u_sort_hiscores(void);
void u_clock_interrupt(void);
void u_clear_pf_cell(u8 *pf, const u8 w, const u8 x, const u8 y);

/* Private Functions */
static int u_qsort_compare(const void *hs1, const void *hs2);
static void u_sort_swap(score_t *h1, score_t *h2);
static void u_quicksort(score_t *arr, u8 len);
