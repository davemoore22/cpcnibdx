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
void v_draw_logo(void);
void v_draw_pf(const u8 *pf, const pos_t *loc, const dim_t *sz);
void v_draw_gems(const gem_t *gems, const pos_t *loc, const dim_t *sz);
void v_draw_snake(const snake_t *snake, const pos_t *loc);
void v_erase_snake_seg(const snake_t *snake, const pos_t *loc, const u8 seg);
void v_draw_snake_seg(
	const snake_t *snake, const pos_t *loc, const u8 seg,
	const bool is_head);
void v_init(void);
void v_blk_scr(void);
void v_reset_pal(void);
void v_wait_VSYNC(u8 n);
void v_clr_scr(void);
void v_wipe_scr(bool dir);
void v_print_c(const char* str, const u8 y, const u8 pen);
void v_print(const char* str, const u8 x, const u8 y, const u8 pen);
void v_print_n(const i64 num, const u8 x, const u8 y, const u8 pen);
u8* v_get_sp(const u8 x, const u8 y);
void v_flash_brd(u8 col, u16 n);
void v_erase_snake_timed(const snake_t *snake, const pos_t *loc, const int n);
