# NibblerDX

An Amstrad CPC Remake of the classic Arcade and Home Game
by Dave Moore (c) 2023-2024

**Currently in development with full release in 2024!**
Coded in C using the fantastic [CPCTelera library](https://lronaldo.github.io/cpctelera/).

![](/promo/loading.png)

**Three level Demo version (v0.5) fully playable**. The full version will also have:

* 10+ Fiendish Levels
* Sound Effects and Music
* Optional Arcade Mode Gameplay
* Enhanced Graphics and Animations

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
