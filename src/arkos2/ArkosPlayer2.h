//-----------------------------LICENSE NOTICE------------------------------------
//  ArkosTracker 2 for CPCTelera
//  Copyright (C) 2018 Arnaud Bouche (@Arnaud6128)
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

extern void PLAYER_ARKOS_INITSOUNDEFFECTS(void* sfx_song_data) __z88dk_fastcall;
extern void PLAYER_ARKOS_PLAYSOUNDEFFECT(u16 sfx_num, u8 channel, u8 volume) __z88dk_callee;
extern void PLAYER_ARKOS_STOPSOUNDEFFECTFROMCHANNEL(u8 channel) __z88dk_fastcall;

extern void PLAYER_ARKOS_INIT(void* songdata, u16 subSong) __z88dk_callee;
extern void PLAYER_ARKOS_PLAY();
extern void PLAYER_ARKOS_STOP();
