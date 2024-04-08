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

#include "sound.h"

extern void* RABBIT_START;
extern void* SOUNDEFFECTS_START;

/* Current Song and FX played */
static void* current_music;
static u8 song_number;
static u8 fx_number;
static u8 fx_channel;
static u8 fx_volume;

/* Status Flags */
static bool fx_changed;
static bool song_changed;
static bool enabled;

/* Initialise Sound Engine */
void s_initialise_sound(void) {

	fx_changed = false;
	song_changed = false;
	enabled = false;
	
	s_initialise_sfx(&SOUNDEFFECTS_START);
	s_initialise_music(&RABBIT_START);
}

/* Initialise Music */
static void s_initialise_music(void* music) {

	current_music = music;
}

/* Initialise FX Player*/
static void s_initialise_sfx(void* fx) {

	PLAYER_ARKOS_INITSOUNDEFFECTS(fx);
}

/* Set the Sound Effect */
void s_set_fx(u8 number, u8 channel, u8 volume) {

	fx_number = number;
	fx_changed = channel;
	fx_volume = volume;
}

/* Set the Song from Music */
void s_set_music(u8 number) {	

	song_number = number;
	song_changed = true;
	enabled = true;
}

/* Stop Music/FX Player */
void s_stop_sound(void) {

	enabled = false;
	PLAYER_ARKOS_STOP();
}

void s_start_sound(void) {

	enabled = true;
	fx_changed = true;
	song_changed = true;
}

/* Toggle On/Off Sound */
void s_toggle_sound(void) {

	enabled = !enabled;
}

/* Enable Sound */
void s_enable_sound(void) {

	enabled = true;
	song_changed = true;
}

/* Disable Sound */
void s_disable_sound(void) {

	enabled = false;
}

/* Get Music/FX Status */
bool s_get_sound_status(void) {

	return enabled;
}

/* Play the Sound! */
void s_play_sound() {

	/* If we have changed the Sound Effect, play it */
	if (fx_changed && enabled) {
		PLAYER_ARKOS_PLAYSOUNDEFFECT(fx_number, fx_channel, fx_volume);
		fx_changed = false;
	}
	
	/* If we have changed the Song, reinitialise the Music player with the
	 * new track, and get it ready to play */
	if (song_changed && enabled) {
		PLAYER_ARKOS_INIT(current_music, song_number);
		song_changed = false;
	}
	
	/* Tell the player to play the queued music */
	if (enabled)
    		PLAYER_ARKOS_PLAY();
}