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

#include "main.h"

/* Public Functions */
void s_initialise_sound(void);
void s_toggle_sound(void);
void s_enable_sound(void);
void s_disable_sound(void);
void s_start_sound(void);
void s_stop_sound(void);
void s_play_sound(void);
bool s_get_sound_status(void);

void s_set_fx(u8 number, u8 channel, u8 volume);
void s_set_music(u8 number);

/* Private Functions */
static void s_initialise_music(void* music);
static void s_initialise_sfx(void* fx);

/* Relevant Defines */
#define NO_SOUND_FX 0
#define MAX_SOUND_VOLUME 0
