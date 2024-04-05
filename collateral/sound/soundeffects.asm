; Sound effects, Song part, encoded in the AKM (minimalist) format V0.


soundeffects_Start
soundeffects_StartDisarkGenerateExternalLabel

soundeffects_DisarkPointerRegionStart0
	dw soundeffects_InstrumentIndexes	; Index table for the Instruments.
soundeffects_DisarkForceNonReferenceDuring2_1
	dw 0	; Index table for the Arpeggios.
soundeffects_DisarkForceNonReferenceDuring2_2
	dw 0	; Index table for the Pitches.

; The subsongs references.
	dw soundeffects_Subsong0
soundeffects_DisarkPointerRegionEnd0

; The Instrument indexes.
soundeffects_InstrumentIndexes
soundeffects_DisarkPointerRegionStart3
	dw soundeffects_Instrument0
	dw soundeffects_Instrument1
	dw soundeffects_Instrument2
	dw soundeffects_Instrument3
	dw soundeffects_Instrument4
	dw soundeffects_Instrument5
soundeffects_DisarkPointerRegionEnd3

; The Instrument.
soundeffects_DisarkByteRegionStart4
soundeffects_Instrument0
	db 255	; Speed.

soundeffects_Instrument0Loop	db 0	; Volume: 0.

	db 4	; End the instrument.
soundeffects_DisarkPointerRegionStart5
	dw soundeffects_Instrument0Loop	; Loops.
soundeffects_DisarkPointerRegionEnd5

soundeffects_Instrument1
	db 0	; Speed.

	db 189	; Volume: 15.
	db 1	; Arpeggio: 0.
	db 1	; Noise: 1.

	db 253	; Volume: 15.
	db 1	; Arpeggio: 0.
	db 1	; Noise: 1.
	dw 4	; Pitch: 4.

	db 241	; Volume: 12.
	db 1	; Arpeggio: 0.
	db 1	; Noise: 1.
	dw 7	; Pitch: 7.

	db 237	; Volume: 11.
	db 1	; Arpeggio: 0.
	db 1	; Noise: 1.
	dw 11	; Pitch: 11.

	db 4	; End the instrument.
soundeffects_DisarkPointerRegionStart6
	dw soundeffects_Instrument0Loop	; Loop to silence.
soundeffects_DisarkPointerRegionEnd6

soundeffects_Instrument2
	db 1	; Speed.

	db 189	; Volume: 15.
	db 225	; Arpeggio: -16.
	db 1	; Noise: 1.

	db 189	; Volume: 15.
	db 223	; Arpeggio: -17.
	db 8	; Noise: 8.

	db 185	; Volume: 14.
	db 215	; Arpeggio: -21.
	db 2	; Noise: 2.

	db 181	; Volume: 13.
	db 237	; Arpeggio: -10.
	db 16	; Noise: 16.

	db 177	; Volume: 12.
	db 235	; Arpeggio: -11.
	db 2	; Noise: 2.

	db 173	; Volume: 11.
	db 233	; Arpeggio: -12.
	db 2	; Noise: 2.

	db 165	; Volume: 9.
	db 219	; Arpeggio: -19.
	db 16	; Noise: 16.

	db 157	; Volume: 7.
	db 1	; Arpeggio: 0.
	db 31	; Noise: 31.

	db 153	; Volume: 6.
	db 15	; Arpeggio: 7.
	db 7	; Noise: 7.

	db 4	; End the instrument.
soundeffects_DisarkPointerRegionStart7
	dw soundeffects_Instrument0Loop	; Loop to silence.
soundeffects_DisarkPointerRegionEnd7

soundeffects_Instrument3
	db 1	; Speed.

	db 189	; Volume: 15.
	db 25	; Arpeggio: 12.
	db 1	; Noise: 1.

	db 185	; Volume: 14.
	db 48	; Arpeggio: 24.

	db 181	; Volume: 13.
	db 33	; Arpeggio: 16.
	db 1	; Noise: 1.

	db 177	; Volume: 12.
	db 56	; Arpeggio: 28.

	db 185	; Volume: 14.
	db 39	; Arpeggio: 19.
	db 1	; Noise: 1.

	db 189	; Volume: 15.
	db 62	; Arpeggio: 31.

	db 210, -12	; Arpeggio: -12.

	db 61	; Volume: 15.

	db 210, -12	; Arpeggio: -12.

	db 61	; Volume: 15.

	db 210, -12	; Arpeggio: -12.

	db 61	; Volume: 15.

	db 210, -24	; Arpeggio: -24.

	db 61	; Volume: 15.

	db 210, -24	; Arpeggio: -24.

	db 61	; Volume: 15.

	db 4	; End the instrument.
soundeffects_DisarkPointerRegionStart8
	dw soundeffects_Instrument0Loop	; Loop to silence.
soundeffects_DisarkPointerRegionEnd8

soundeffects_Instrument4
	db 1	; Speed.

	db 189	; Volume: 15.
	db 1	; Arpeggio: 0.
	db 1	; Noise: 1.

	db 189	; Volume: 15.
	db 26	; Arpeggio: 13.

	db 189	; Volume: 15.
	db 5	; Arpeggio: 2.
	db 1	; Noise: 1.

	db 189	; Volume: 15.
	db 28	; Arpeggio: 14.

	db 189	; Volume: 15.
	db 6	; Arpeggio: 3.

	db 189	; Volume: 15.
	db 30	; Arpeggio: 15.

	db 4	; End the instrument.
soundeffects_DisarkPointerRegionStart9
	dw soundeffects_Instrument0Loop	; Loop to silence.
soundeffects_DisarkPointerRegionEnd9

soundeffects_Instrument5
	db 1	; Speed.

	db 194, 38	; Arpeggio: 38.

	db 194, 28	; Arpeggio: 28.

	db 194, 36	; Arpeggio: 36.

	db 194, 20	; Arpeggio: 20.

	db 194, 28	; Arpeggio: 28.

	db 194, 12	; Arpeggio: 12.

	db 194, 20	; Arpeggio: 20.

	db 194, 4	; Arpeggio: 4.

	db 194, 12	; Arpeggio: 12.

	db 194, -4	; Arpeggio: -4.

	db 194, 4	; Arpeggio: 4.

	db 194, -14	; Arpeggio: -14.

	db 194, -21	; Arpeggio: -21.

	db 4	; End the instrument.
soundeffects_DisarkPointerRegionStart10
	dw soundeffects_Instrument0Loop	; Loop to silence.
soundeffects_DisarkPointerRegionEnd10

soundeffects_DisarkByteRegionEnd4
soundeffects_ArpeggioIndexes
soundeffects_DisarkPointerRegionStart11
soundeffects_DisarkPointerRegionEnd11

soundeffects_DisarkByteRegionStart12
soundeffects_DisarkByteRegionEnd12

soundeffects_PitchIndexes
soundeffects_DisarkPointerRegionStart13
soundeffects_DisarkPointerRegionEnd13

soundeffects_DisarkByteRegionStart14
soundeffects_DisarkByteRegionEnd14

; Sound effects, Subsong 0.
; ----------------------------------

soundeffects_Subsong0
soundeffects_Subsong0DisarkPointerRegionStart0
	dw soundeffects_Subsong0_NoteIndexes	; Index table for the notes.
	dw soundeffects_Subsong0_TrackIndexes	; Index table for the Tracks.
soundeffects_Subsong0DisarkPointerRegionEnd0

soundeffects_Subsong0DisarkByteRegionStart1
	db 12	; Initial speed.

	db 2	; Most used instrument.
	db 1	; Second most used instrument.

	db 1	; Most used wait.
	db 2	; Second most used wait.

	db 0	; Default start note in tracks.
	db 0	; Default start instrument in tracks.
	db 0	; Default start wait in tracks.

	db 13	; Are there effects? 12 if yes, 13 if not. Don't ask.
soundeffects_Subsong0DisarkByteRegionEnd1

; The Linker.
soundeffects_Subsong0DisarkByteRegionStart2
; Pattern 0
soundeffects_Subsong0_Loop
	db 170	; State byte.
	db 37	; New height.
	db ((soundeffects_Subsong0_Track0 - ($ + 2)) & #ff00) / 256	; New track (0) for channel 1, as an offset. Offset MSB, then LSB.
	db ((soundeffects_Subsong0_Track0 - ($ + 1)) & 255)
	db ((soundeffects_Subsong0_Track1 - ($ + 2)) & #ff00) / 256	; New track (1) for channel 2, as an offset. Offset MSB, then LSB.
	db ((soundeffects_Subsong0_Track1 - ($ + 1)) & 255)
	db ((soundeffects_Subsong0_Track1 - ($ + 2)) & #ff00) / 256	; New track (1) for channel 3, as an offset. Offset MSB, then LSB.
	db ((soundeffects_Subsong0_Track1 - ($ + 1)) & 255)

	db 1	; End of the Song.
	db 0	; Speed to 0, meaning "end of song".
soundeffects_Subsong0DisarkByteRegionEnd2
soundeffects_Subsong0DisarkPointerRegionStart3
	dw soundeffects_Subsong0_Loop

soundeffects_Subsong0DisarkPointerRegionEnd3
; The indexes of the tracks.
soundeffects_Subsong0_TrackIndexes
soundeffects_Subsong0DisarkPointerRegionStart4
soundeffects_Subsong0DisarkPointerRegionEnd4

soundeffects_Subsong0DisarkByteRegionStart5
soundeffects_Subsong0_Track0
	db 97	; Secondary instrument (1). Note reference (1). Primary wait (1).
	db 33	; Secondary instrument (1). Note reference (1). 
	db 97	; Secondary instrument (1). Note reference (1). Primary wait (1).
	db 33	; Secondary instrument (1). Note reference (1). 
	db 97	; Secondary instrument (1). Note reference (1). Primary wait (1).
	db 80	; Primary instrument (2). Note reference (0). Primary wait (1).
	db 16	; Primary instrument (2). Note reference (0). 
	db 16	; Primary instrument (2). Note reference (0). 
	db 80	; Primary instrument (2). Note reference (0). Primary wait (1).
	db 80	; Primary instrument (2). Note reference (0). Primary wait (1).
	db 178	; New instrument (3). Note reference (2). Secondary wait (2).
	db 3	;   Escape instrument value.
	db 194	; Note reference (2). New wait (3).
	db 3	;   Escape wait value.
	db 176	; New instrument (4). Note reference (0). Secondary wait (2).
	db 4	;   Escape instrument value.
	db 128	; Note reference (0). Secondary wait (2).
	db 128	; Note reference (0). Secondary wait (2).
	db 178	; New instrument (5). Note reference (2). Secondary wait (2).
	db 5	;   Escape instrument value.
	db 194	; Note reference (2). New wait (127).
	db 127	;   Escape wait value.

soundeffects_Subsong0_Track1
	db 205	; New wait (127).
	db 127	;   Escape wait value.

soundeffects_Subsong0DisarkByteRegionEnd5
; The note indexes.
soundeffects_Subsong0_NoteIndexes
soundeffects_Subsong0DisarkByteRegionStart6
	db 60	; Note for index 0.
	db 64	; Note for index 1.
	db 48	; Note for index 2.
soundeffects_Subsong0DisarkByteRegionEnd6

