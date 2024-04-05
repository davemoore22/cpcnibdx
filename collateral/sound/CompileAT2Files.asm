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