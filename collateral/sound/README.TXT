Adding Arkos Tracker 2 Music to a CPCTelera 1.5 project.

Links of Reference:

1. https://64nops.wordpress.com/2020/12/20/easy-integration-of-arkos-tracker-2-player-with-cpctelera/
2. http://www.julien-nevo.com/arkostracker/index.php/using-a-song-in-production-using-any-assembler/
3. http://www.memoryfull.net/articles/64nops/arkos2.zip

Note that even though I personally am using Linux, for simplicity's sake, I will keep the references in the links above to long Windows-style filenames intact. The wall of text below covers the procedure you need to follow to add Music/Sound Effects, as I have done for my game NibblerDX.

You will need:
1. Music Song File you wish to incorporate, in AKS format.
2. Sound Effects Song File, also in AKS format.
3. Access to your Arkos Tracker 2 directory.
4. Access to the arkos2.zip file mentioned above.

I am using Rabbit.aks by Mr Lou from indiegamemusic.com in this example (he has very kindly given me permission to use it in NibblerDX).

To begin with, we will follow the steps in Link (2).

1. In Arkos Tracker 2, export both Song Files above, as AKM Minimalist Format, and stick the resulting asm files in a working directory somewhere, remembering what you called them. Just use the standard export options that Arkos Tracker 2 selects for you. Note that for each song file, you will end up with *two* asm files. So for the Music and Song files, you will have <songname>.asm and <songname>_playerconfig.asm for each.
2. Now, this next step is *missing* from the tutorial above. Go into your Arkos Tracker 2 directory, and find the /players/playerAkm/sources/ directory. From this, copy the PlayerAkm.asm *and* PlayerAkm_SoundEffects.asm files into your working directory above.
3. Back in your working directory, as the tutorial states, create a CompileAT2Files.asm. You will need to include each asm file generated in step 1 *and* both the PlayerAkm* files from Step 2. Here's an example of a working CompileAT2Files.asm file for the CPC. Ignore all the stuff about disabling sound effects for now.

;Compiles the player, the music and sfxs, using RASM.
;No ORG needed.

;This is the music, and its config file.
include "rabbit.asm" 
include "rabbit_playerconfig.asm" ;Optional.

;This is the sfxs, and its config file.  
include "soundeffects.asm" 
include "soundeffects_playerconfig.asm"  ;Optional.

;What hardware? Uncomment the right one.
PLY_AKG_HARDWARE_CPC = 1
;PLY_AKG_HARDWARE_MSX = 1        
;PLY_AKG_HARDWARE_SPECTRUM = 1
;PLY_AKG_HARDWARE_PENTAGON = 1

;Comment/delete this line if not using sound effects.
PLY_AKG_MANAGE_SOUND_EFFECTS = 1

;This is the player.
include "PlayerAkm.asm"
include "PlayerAkm_SoundEffects.asm"

4. Compile this using rasm (v1.8 is fine), for example:

../../rasm/rasm_linux64 CompileAT2Files.asm -o UniversalAt2Files -s -sl -sq

A successful compilation will result in *two* UniversalAt2Files.* files, a bin file and a sym file.

5. Now go back into the Arkos Tracker 2 directory, and under the /tools/ subdirectory, grab the Disark executable and copy it into your working directory. Use this tool as follows:

./Disark UniversalAt2Files.bin At2Files.asm --symbolFile UniversalAt2Files.sym
	--sourceProfile sdcc

So now after all that palaver we now have an At2Files.asm we can use goingforward. And now we switch over to the steps mentioned in Link (1).

6. From the arkos2.zip file in Link (3), grab sound.h and sound.c and stick them into your source/header directories as appropriate.

7. Create an arkos2 subdirectory in your source directory, and inside it, you will want the ArkosPlayer2.h and ArkosPlayer2_cbinding.s files. You will *not* want the PlayerAkm.asm file from the zip for reasons that will become clear very shortly.

8. Remember the generated At2Files.asm file from Step 5? Which is your compiled player/songs file? You need to copy *that* into the arkos2 subdirectory above, and *rename* it PlayerAkm.asm (I know!). This is the actual file mentioned in the "GENERATION AND CREATION OF FILES COMPATIBLE WITH CPCTELERA" section of the Tutorial in Link (2)

9. Now follow the instructions to modify sound.c. You want to grab the labels from the now-called PlayerAkm.asm file and update them appropriately - to find out the labels, look at the PlayerAkm.asm file. You will see something like this:

RABBIT_START:
_RABBIT_START:

Thus change the symbols in sound.c to this sort of thing:

extern void* RABBIT_START;
extern void* SOUNDEFFECTS_START;

...

void InitSound()
{
	_fxChanged = 0;
	_songChanged = 0;
	
    InitSFX(&SOUNDEFFECTS_START);
    InitMusic(&RABBIT_START);
}

10. The next step mentioned in the Tutorial in (1), about using an alternative music player, we don't need to worry about, as we're just using the AKM file already. So at this point, you will have a sound.c and sound.h file in your project source/header directories (as appropriate) and you will have a further arkos2 subdirectory in your source directory, which contains 3 files: rkosPlayer2.h, ArkosPlayer2_cbinding.s, and PlayerAkm.asm.

11. *Now* you this should actually compile when you next run make or whatever your compiler of choice is. If you end up with error messages about unknown symbols in ArkosPlayer2_cbinding.s, it will be because you will have forgotten to include the "PlayerAkm_SoundEffects.asm" file in Step 3.

12. Once it compiles, congratulations, you have got Arkos Tracker 2 files incorporated into your game. No, really, you have. Now to test this out, you need to do the following:

	a) Early in your code, before you do much call InitSound(); (this is from sound.h/c).
	b) In your interrupt handler (or your main loop, but I prefer to use the interupt handler), call PlaySound(); - again from sound.h/c - but remember if you are using an interrupt handler only do so every 1/50 of a second; that is, every 6 interrupts (as interrupts fire every 1/300 of a second). The standard way of handling this is to use a static counter that counts from 0 to 5 repeatedly, and if this counter is 5 (or whatever) then call PlaySound();
	c) *Before* the interrupt is setup call PlayMusic(0); then and only *then* set up the interrupt handler.

13. Music will now play. But you are using interrupt handlers, you *will* end up with a crash when you disable the interrupt handler. That's because even though a C-binding to a Stop Music function is provided, none is given in sound.c/h. So add one:

void StopMusic() {
	PLAYER_ARKOS_STOP();
}

Make sure to call this *after* you disable the interrupt. Of course, in your code you are only going to play music/sound effects when toggled on.

And that's how I added Arkos Tracker 2 music to NibblerDX. All the intermediate steps you can find in the /collateral/sound directory of the source code. Feel free to pilfer it as needed. NibblerDX (and indeed the relevant arkos2.zip code) is open source under the GPL2/3.

*Phew*.

Note that as I am a professional software developer by trade, I found the process above just pernickety to follow, as opposed to difficult, as both tutorials linked above are (IHMO) somewhat incomplete. I am fortunate, for I am sure they would be a right pain in the arse for someone not quite as familiar with software development as I am. Hence me writing this up all, in the hope that these links and processes can be improved, as both CPCTelera and Arkos Tracker 2 are awesome tools for CPC Development, and both deserve much praise.