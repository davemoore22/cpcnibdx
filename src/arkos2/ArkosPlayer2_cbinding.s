;;-----------------------------LICENSE NOTICE------------------------------------
;;  ArkosTracker 2 for CPCTelera
;;  Copyright (C) 2020 Arnaud Bouche (@Arnaud6128)
;;
;;  This program is free software: you can redistribute it and/or modify
;;  it under the terms of the GNU Lesser General Public License as published by
;;  the Free Software Foundation, either version 3 of the License, or
;;  (at your option) any later version.
;;
;;  This program is distributed in the hope that it will be useful,
;;  but WITHOUT ANY WARRANTY; without even the implied warranty of
;;  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;;  GNU Lesser General Public License for more details.
;;
;;  You should have received a copy of the GNU Lesser General Public License
;;  along with this program.  If not, see <http://www.gnu.org/licenses/>.
;;-------------------------------------------------------------------------------

.module arkos2

.include "PlayerAkm.asm"

_PLAYER_ARKOS_INITSOUNDEFFECTS::
	jp PLY_AKM_INITSOUNDEFFECTS

_PLAYER_ARKOS_PLAYSOUNDEFFECT::	
	pop  af          ;; AF = Return address
	pop  hl          ;; H Rubbish / L = Sound effect
	pop  bc          ;; B = Volume / C = Channel
	push af          ;; Save back return address in the stack to fullfill __z88dk_callee convention	
	ld   a, l        ;; A = Subsong index	
	jp   PLY_AKM_PLAYSOUNDEFFECT
	
_PLAYER_ARKOS_STOPSOUNDEFFECTFROMCHANNEL::
	ld   a, l
	jp   PLY_AKM_STOPSOUNDEFFECTFROMCHANNEL
	
_PLAYER_ARKOS_INIT::
	pop  af          ;; AF = Return address
	pop  hl          ;; HL = Music address
	pop  bc          ;; B Rubbish  / C = Subsong index (>=0)
	push af          ;; Save back return address in the stack to fullfill __z88dk_callee convention
	ld   a, c        ;; A = Subsong index	
	jp   PLY_AKM_INIT
	
_PLAYER_ARKOS_STOP::	
	jp   PLY_AKM_STOP
	
_PLAYER_ARKOS_PLAY::	
	jp   PLY_AKM_PLAY