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

#include "main.h"

/* Main Application Entry Point */
void main(void) {

	bool quit = false;
	cpct_keyID key;
	bool game_over = false;

	/* initialise Sound*/
	s_initialise_sound();

	/* Initial Game Settings */
	g_setup();

	/* Initialise Display */
	v_init();

/* Start Demo Screen */
#ifndef DEBUG_SKIP_DEMO
	d_start();
	d_stop();
#endif

/* Start Title Screen */
#ifdef DEBUG_SKIP_TITLE
	key = t_start(true);
#else
	key = t_start(false);
#endif

	while (!quit) {
		quit = key == Key_0;

		if (key == Key_9) {

			/* Start a new Game */
			t_stop();
			g_start();
			g_stop();

			/* Go back to Title Screen and repeat */
			key = t_start(false);
		} else if (key == Key_4) {

			/* Display Instructions */
			t_stop();
			i_start();
			i_stop();

			/* Go back to Title Screen and repeat */
			key = t_start(false);

		}
	};

	/* And Exit */
	if (quit)
		t_stop();
}