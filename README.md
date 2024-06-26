# NibblerDX

An Amstrad CPC Remake of the classic Arcade Game
by Dave Moore (c) 2023-2024

Coded in C using the fantastic [CPCTelera library](https://lronaldo.github.io/cpctelera/), and the awesome [Arkos Tracker 2](https://www.julien-nevo.com/arkostracker/). Works on all CPC models.

![](/promo/loading.png)

**Demo version (v0.9) fully playable**.

* Now with Music by Roald Strauss (<http://www.dewfall.dk/>)

**Tested and Working on both actual CPCs and Emulators!**

Released with full source code (CPCTelera 1.5/SDCC required to compile) under the GPLv2 license.

Disk image: download `nibdx.dsk` and then `RUN "NIBDX.BAS"`
(Tape image: coming soon)

Cursor Keys Or Joystick to control your Nibbler.

The basis for this remake is the original port by Mosaik Software available [here](https://www.cpc-power.com/index.php?page=detail&num=2476)

![](/promo/demo.png)
![](/promo/title.png)
![](/promo/game.png)
![](/promo/level.png)
![](/promo/instruct.png)
![](/promo/hiscore.png)

**Version History**

*Version 0.9 (05/04/2024)*

* Added Demo Screen Music ("Rabbit" by Roald Strauss - <http://www.dewfall.dk/>)

*Version 0.8 (20/12/2023)*

* Fixed Responsiveness of Controls in main game
* In Easy Mode, Nibbler now remembers on a level which gems are eaten
* In the High Score Table, no additional keypress is needed to finish entering a score

*Version 0.7 (12/12/2023)*

* Added a Difficulty toggle
* Added the remaining levels (to make 10 in total)

*Version 0.6 (10/12/2023)*

* Added two additional levels (Levels 4 and 5)
* Added Controls/Credits to the Instructions screens

*Version 0.5 (09/12/2023)*

* Added two additional levels (Levels 2 and 3)
* Nibbler now behaves correctly when it reaches a dead-end
* Added a Nibbler Death animation
* Corrected Nibbler starting position
* Added raster effects to the Instructions screen

*Version 0.4 (08/12/2023)*

* Added Game Instructions (4 from Main Menu)

*Version 0.3 (07/12/2023)*

* Decreased Slowdown in later stages of a Level
* Added in-game Pause (P to pause/unpause)
* In-game Quit (Q) now aborts the current game completely
* Decreased size of compiled binary significantly

*Version 0.2 (06/12/2023)*

* Increased responsiveness of in-game controls.
* When entering initials on the Hi-Score Table:
  * Joystick input no longer produces nonsense characters.
  * The DEL key removes the last character entered.

*Version 0.1 (05/12/2023)*

* Initial Release
