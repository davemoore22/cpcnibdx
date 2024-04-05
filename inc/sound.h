//-----------------------------LICENSE NOTICE------------------------------------
//  ArkosTracker 2 example
//  Copyright (C) 2020 Arnaud Bouche (@Arnaud6128)
//
//  This program is free software: you can redistribute it and/or modify
//  it under the terms of the GNU Lesser General Public License as published by
//  the Free Software Foundation, either version 3 of the License, or
//  (at your option) any later version.
//
//  This program is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//  GNU Lesser General Public License for more details.
//
//  You should have received a copy of the GNU Lesser General Public License
//  along with this program.  If not, see <http://www.gnu.org/licenses/>.
//-------------------------------------------------------------------------------

#ifndef SOUND_FX_H
#define SOUND_FX_H

enum
{
    CHANNEL_A,
    CHANNEL_B,
    CHANNEL_C
};

#define NO_FX	0
#define MAX_VOL	0

void InitSound();
void InitMusic(void* music);
void InitSFX(void* sfx);

void PlayMusic(u8 songNumber);
void PlaySFX(u8 fx, u8 channel, u8 volume);

void PlaySound();

void StopMusic();

#endif