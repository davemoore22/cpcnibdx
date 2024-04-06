//-----------------------------LICENSE NOTICE------------------------------------
//  ArkosTracker 2 for CPCTelera
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

/*************** System includes ***************/
#include <cpctelera.h>

/*************** Arkos2 API ********************/
#include "arkos2/ArkosPlayer2.h"

/*************** Sound includes ****************/
#include "sound.h"

/*************** Song & Fx *********************/
extern void* RABBIT_START;
extern void* SOUNDEFFECTS_START;

/********** Current song & Fx played ***********/
void* _currentMusic;
u8 _fxChanged;

u8 _fxNumber;
u8 _fxChannel;
u8 _fxVolume;

u8 _songChanged;
u8 _songNumber;

/*****************************************************/
/*													 */
/*	Init sound						 				 */
/*												     */
/*****************************************************/
void InitSound()
{
	_fxChanged = 0;
	_songChanged = 0;
	
    InitSFX(&SOUNDEFFECTS_START);
    InitMusic(&RABBIT_START);
}

/*****************************************************/
/*													 */
/*	Init SFX							 			 */
/*												     */
/*****************************************************/
void InitSFX(void* sfx_SoundEffects)
{
    PLAYER_ARKOS_INITSOUNDEFFECTS(sfx_SoundEffects);
}

/*****************************************************/
/*													 */
/*	Select music						 			 */
/*												     */
/*****************************************************/
void InitMusic(void* music)
{
    _currentMusic = music;
}

/*****************************************************/
/*													 */
/*	Play SFX							 			 */
/*												     */
/*****************************************************/
void PlaySFX(u8 fxNumber, u8 channel, u8 volume)
{	
	_fxNumber = fxNumber;
	_fxChannel = channel;
	_fxVolume = volume;
	
	_fxChanged = 1;
}

/*****************************************************/
/*													 */
/*	Play a song from music				 			 */
/*												     */
/*****************************************************/
void PlayMusic(u8 songNumber)
{	
	_songNumber = songNumber;
	
	_songChanged = 1;
}

void StopMusic()
{
	PLAYER_ARKOS_STOP();
}

/*****************************************************/
/*													 */
/*	Play sound						 				 */
/*												     */
/*****************************************************/
void PlaySound()
{
	if (_fxChanged)
	{
		PLAYER_ARKOS_PLAYSOUNDEFFECT(_fxNumber, _fxChannel, _fxVolume);
		_fxChanged = 0;
	}
	
	if (_songChanged)
	{
		PLAYER_ARKOS_INIT(_currentMusic, _songNumber);
		_songChanged = 0;
	}
	
    PLAYER_ARKOS_PLAY();
}