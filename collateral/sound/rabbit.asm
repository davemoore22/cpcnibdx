; Rabbit, Song part, encoded in the AKM (minimalist) format V0.


Rabbit_Start
Rabbit_StartDisarkGenerateExternalLabel

Rabbit_DisarkPointerRegionStart0
	dw Rabbit_InstrumentIndexes	; Index table for the Instruments.
Rabbit_DisarkForceNonReferenceDuring2_1
	dw 0	; Index table for the Arpeggios.
Rabbit_DisarkForceNonReferenceDuring2_2
	dw 0	; Index table for the Pitches.

; The subsongs references.
	dw Rabbit_Subsong0
Rabbit_DisarkPointerRegionEnd0

; The Instrument indexes.
Rabbit_InstrumentIndexes
Rabbit_DisarkPointerRegionStart3
	dw Rabbit_Instrument0
	dw Rabbit_Instrument1
	dw Rabbit_Instrument2
	dw Rabbit_Instrument3
	dw Rabbit_Instrument4
	dw Rabbit_Instrument5
	dw Rabbit_Instrument6
	dw Rabbit_Instrument7
	dw Rabbit_Instrument8
	dw Rabbit_Instrument9
	dw Rabbit_Instrument10
	dw Rabbit_Instrument11
	dw Rabbit_Instrument12
	dw Rabbit_Instrument13
Rabbit_DisarkPointerRegionEnd3

; The Instrument.
Rabbit_DisarkByteRegionStart4
Rabbit_Instrument0
	db 255	; Speed.

Rabbit_Instrument0Loop	db 0	; Volume: 0.

	db 4	; End the instrument.
Rabbit_DisarkPointerRegionStart5
	dw Rabbit_Instrument0Loop	; Loops.
Rabbit_DisarkPointerRegionEnd5

Rabbit_Instrument1
	db 0	; Speed.

	db 189	; Volume: 15.
	db 1	; Arpeggio: 0.
	db 7	; Noise: 7.

	db 57	; Volume: 14.

	db 53	; Volume: 13.

Rabbit_Instrument1Loop	db 49	; Volume: 12.

	db 4	; End the instrument.
Rabbit_DisarkPointerRegionStart6
	dw Rabbit_Instrument1Loop	; Loops.
Rabbit_DisarkPointerRegionEnd6

Rabbit_Instrument2
	db 0	; Speed.

	db 181	; Volume: 13.
	db 1	; Arpeggio: 0.
	db 1	; Noise: 1.

	db 177	; Volume: 12.
	db 7	; Arpeggio: 3.
	db 1	; Noise: 1.

	db 173	; Volume: 11.
	db 14	; Arpeggio: 7.

Rabbit_Instrument2Loop	db 41	; Volume: 10.

	db 169	; Volume: 10.
	db 6	; Arpeggio: 3.

	db 169	; Volume: 10.
	db 14	; Arpeggio: 7.

	db 4	; End the instrument.
Rabbit_DisarkPointerRegionStart7
	dw Rabbit_Instrument2Loop	; Loops.
Rabbit_DisarkPointerRegionEnd7

Rabbit_Instrument3
	db 0	; Speed.

	db 181	; Volume: 13.
	db 1	; Arpeggio: 0.
	db 1	; Noise: 1.

	db 177	; Volume: 12.
	db 11	; Arpeggio: 5.
	db 1	; Noise: 1.

	db 173	; Volume: 11.
	db 18	; Arpeggio: 9.

Rabbit_Instrument3Loop	db 41	; Volume: 10.

	db 169	; Volume: 10.
	db 10	; Arpeggio: 5.

	db 169	; Volume: 10.
	db 18	; Arpeggio: 9.

	db 4	; End the instrument.
Rabbit_DisarkPointerRegionStart8
	dw Rabbit_Instrument3Loop	; Loops.
Rabbit_DisarkPointerRegionEnd8

Rabbit_Instrument4
	db 0	; Speed.

	db 45	; Volume: 11.

	db 125	; Volume: 15.
	dw -1	; Pitch: -1.

Rabbit_Instrument4Loop	db 117	; Volume: 13.
	dw -1	; Pitch: -1.

	db 49	; Volume: 12.

	db 109	; Volume: 11.
	dw 1	; Pitch: 1.

	db 105	; Volume: 10.
	dw 1	; Pitch: 1.

	db 45	; Volume: 11.

	db 113	; Volume: 12.
	dw -1	; Pitch: -1.

	db 4	; End the instrument.
Rabbit_DisarkPointerRegionStart9
	dw Rabbit_Instrument4Loop	; Loops.
Rabbit_DisarkPointerRegionEnd9

Rabbit_Instrument5
	db 0	; Speed.

	db 181	; Volume: 13.
	db 1	; Arpeggio: 0.
	db 1	; Noise: 1.

	db 177	; Volume: 12.
	db 11	; Arpeggio: 5.
	db 1	; Noise: 1.

	db 173	; Volume: 11.
	db 16	; Arpeggio: 8.

Rabbit_Instrument5Loop	db 41	; Volume: 10.

	db 169	; Volume: 10.
	db 10	; Arpeggio: 5.

	db 169	; Volume: 10.
	db 16	; Arpeggio: 8.

	db 4	; End the instrument.
Rabbit_DisarkPointerRegionStart10
	dw Rabbit_Instrument5Loop	; Loops.
Rabbit_DisarkPointerRegionEnd10

Rabbit_Instrument6
	db 0	; Speed.

	db 181	; Volume: 13.
	db 1	; Arpeggio: 0.
	db 1	; Noise: 1.

	db 177	; Volume: 12.
	db 7	; Arpeggio: 3.
	db 1	; Noise: 1.

	db 173	; Volume: 11.
	db 16	; Arpeggio: 8.

Rabbit_Instrument6Loop	db 41	; Volume: 10.

	db 169	; Volume: 10.
	db 6	; Arpeggio: 3.

	db 169	; Volume: 10.
	db 16	; Arpeggio: 8.

	db 4	; End the instrument.
Rabbit_DisarkPointerRegionStart11
	dw Rabbit_Instrument6Loop	; Loops.
Rabbit_DisarkPointerRegionEnd11

Rabbit_Instrument7
	db 0	; Speed.

	db 181	; Volume: 13.
	db 1	; Arpeggio: 0.
	db 1	; Noise: 1.

	db 177	; Volume: 12.
	db 9	; Arpeggio: 4.
	db 1	; Noise: 1.

	db 173	; Volume: 11.
	db 14	; Arpeggio: 7.

Rabbit_Instrument7Loop	db 41	; Volume: 10.

	db 169	; Volume: 10.
	db 8	; Arpeggio: 4.

	db 169	; Volume: 10.
	db 14	; Arpeggio: 7.

	db 4	; End the instrument.
Rabbit_DisarkPointerRegionStart12
	dw Rabbit_Instrument7Loop	; Loops.
Rabbit_DisarkPointerRegionEnd12

Rabbit_Instrument8
	db 0	; Speed.

	db 181	; Volume: 13.
	db 1	; Arpeggio: 0.
	db 1	; Noise: 1.

	db 177	; Volume: 12.
	db 9	; Arpeggio: 4.
	db 1	; Noise: 1.

	db 173	; Volume: 11.
	db 16	; Arpeggio: 8.

Rabbit_Instrument8Loop	db 41	; Volume: 10.

	db 169	; Volume: 10.
	db 8	; Arpeggio: 4.

	db 169	; Volume: 10.
	db 16	; Arpeggio: 8.

	db 4	; End the instrument.
Rabbit_DisarkPointerRegionStart13
	dw Rabbit_Instrument8Loop	; Loops.
Rabbit_DisarkPointerRegionEnd13

Rabbit_Instrument9
	db 0	; Speed.

	db 181	; Volume: 13.
	db 1	; Arpeggio: 0.
	db 1	; Noise: 1.

	db 177	; Volume: 12.
	db 7	; Arpeggio: 3.
	db 1	; Noise: 1.

	db 173	; Volume: 11.
	db 12	; Arpeggio: 6.

Rabbit_Instrument9Loop	db 41	; Volume: 10.

	db 169	; Volume: 10.
	db 6	; Arpeggio: 3.

	db 169	; Volume: 10.
	db 12	; Arpeggio: 6.

	db 4	; End the instrument.
Rabbit_DisarkPointerRegionStart14
	dw Rabbit_Instrument9Loop	; Loops.
Rabbit_DisarkPointerRegionEnd14

Rabbit_Instrument10
	db 2	; Speed.

Rabbit_Instrument10Loop	db 109	; Volume: 11.
	dw -2	; Pitch: -2.

	db 173	; Volume: 11.
	db 232	; Arpeggio: -12.

	db 4	; End the instrument.
Rabbit_DisarkPointerRegionStart15
	dw Rabbit_Instrument10Loop	; Loops.
Rabbit_DisarkPointerRegionEnd15

Rabbit_Instrument11
	db 0	; Speed.

	db 181	; Volume: 13.
	db 1	; Arpeggio: 0.
	db 1	; Noise: 1.

	db 177	; Volume: 12.
	db 7	; Arpeggio: 3.
	db 1	; Noise: 1.

	db 173	; Volume: 11.
	db 10	; Arpeggio: 5.

Rabbit_Instrument11Loop	db 41	; Volume: 10.

	db 169	; Volume: 10.
	db 6	; Arpeggio: 3.

	db 169	; Volume: 10.
	db 10	; Arpeggio: 5.

	db 4	; End the instrument.
Rabbit_DisarkPointerRegionStart16
	dw Rabbit_Instrument11Loop	; Loops.
Rabbit_DisarkPointerRegionEnd16

Rabbit_Instrument12
	db 0	; Speed.

	db 181	; Volume: 13.
	db 1	; Arpeggio: 0.
	db 1	; Noise: 1.

	db 177	; Volume: 12.
	db 9	; Arpeggio: 4.
	db 1	; Noise: 1.

	db 173	; Volume: 11.
	db 18	; Arpeggio: 9.

Rabbit_Instrument12Loop	db 41	; Volume: 10.

	db 169	; Volume: 10.
	db 8	; Arpeggio: 4.

	db 169	; Volume: 10.
	db 18	; Arpeggio: 9.

	db 4	; End the instrument.
Rabbit_DisarkPointerRegionStart17
	dw Rabbit_Instrument12Loop	; Loops.
Rabbit_DisarkPointerRegionEnd17

Rabbit_Instrument13
	db 0	; Speed.

	db 109	; Volume: 11.
	dw -1	; Pitch: -1.

	db 37	; Volume: 9.

	db 93	; Volume: 7.
	dw 1	; Pitch: 1.

	db 21	; Volume: 5.

	db 77	; Volume: 3.
	dw -1	; Pitch: -1.

	db 5	; Volume: 1.

	db 69	; Volume: 1.
	dw 1	; Pitch: 1.

Rabbit_Instrument13Loop	db 5	; Volume: 1.

	db 4	; End the instrument.
Rabbit_DisarkPointerRegionStart18
	dw Rabbit_Instrument13Loop	; Loops.
Rabbit_DisarkPointerRegionEnd18

Rabbit_DisarkByteRegionEnd4
Rabbit_ArpeggioIndexes
Rabbit_DisarkPointerRegionStart19
Rabbit_DisarkPointerRegionEnd19

Rabbit_DisarkByteRegionStart20
Rabbit_DisarkByteRegionEnd20

Rabbit_PitchIndexes
Rabbit_DisarkPointerRegionStart21
Rabbit_DisarkPointerRegionEnd21

Rabbit_DisarkByteRegionStart22
Rabbit_DisarkByteRegionEnd22

; Rabbit, Subsong 0.
; ----------------------------------

Rabbit_Subsong0
Rabbit_Subsong0DisarkPointerRegionStart0
	dw Rabbit_Subsong0_NoteIndexes	; Index table for the notes.
	dw Rabbit_Subsong0_TrackIndexes	; Index table for the Tracks.
Rabbit_Subsong0DisarkPointerRegionEnd0

Rabbit_Subsong0DisarkByteRegionStart1
	db 6	; Initial speed.

	db 13	; Most used instrument.
	db 4	; Second most used instrument.

	db 0	; Most used wait.
	db 1	; Second most used wait.

	db 70	; Default start note in tracks.
	db 2	; Default start instrument in tracks.
	db 3	; Default start wait in tracks.

	db 12	; Are there effects? 12 if yes, 13 if not. Don't ask.
Rabbit_Subsong0DisarkByteRegionEnd1

; The Linker.
Rabbit_Subsong0DisarkByteRegionStart2
; Pattern 0
	db 170	; State byte.
	db 47	; New height.
	db 129	; New track (0) for channel 1, as a reference (index 1).
	db 128	; New track (8) for channel 2, as a reference (index 0).
	db 128	; New track (8) for channel 3, as a reference (index 0).

; Pattern 1
Rabbit_Subsong0_Loop
	db 0	; State byte.

; Pattern 2
	db 128	; State byte.
	db ((Rabbit_Subsong0_Track1 - ($ + 2)) & #ff00) / 256	; New track (1) for channel 3, as an offset. Offset MSB, then LSB.
	db ((Rabbit_Subsong0_Track1 - ($ + 1)) & 255)

; Pattern 3
	db 128	; State byte.
	db ((Rabbit_Subsong0_Track3 - ($ + 2)) & #ff00) / 256	; New track (3) for channel 3, as an offset. Offset MSB, then LSB.
	db ((Rabbit_Subsong0_Track3 - ($ + 1)) & 255)

; Pattern 4
	db 136	; State byte.
	db 133	; New track (4) for channel 1, as a reference (index 5).
	db ((Rabbit_Subsong0_Track2 - ($ + 2)) & #ff00) / 256	; New track (2) for channel 3, as an offset. Offset MSB, then LSB.
	db ((Rabbit_Subsong0_Track2 - ($ + 1)) & 255)

; Pattern 5
	db 168	; State byte.
	db 132	; New track (5) for channel 1, as a reference (index 4).
	db 130	; New track (6) for channel 2, as a reference (index 2).
	db 131	; New track (7) for channel 3, as a reference (index 3).

; Pattern 6
	db 0	; State byte.

; Pattern 7
	db 168	; State byte.
	db 134	; New track (11) for channel 1, as a reference (index 6).
	db 135	; New track (9) for channel 2, as a reference (index 7).
	db 136	; New track (10) for channel 3, as a reference (index 8).

; Pattern 8
	db 168	; State byte.
	db 129	; New track (0) for channel 1, as a reference (index 1).
	db 128	; New track (8) for channel 2, as a reference (index 0).
	db ((Rabbit_Subsong0_Track1 - ($ + 2)) & #ff00) / 256	; New track (1) for channel 3, as an offset. Offset MSB, then LSB.
	db ((Rabbit_Subsong0_Track1 - ($ + 1)) & 255)

; Pattern 9
	db 160	; State byte.
	db 137	; New track (12) for channel 2, as a reference (index 9).
	db ((Rabbit_Subsong0_Track3 - ($ + 2)) & #ff00) / 256	; New track (3) for channel 3, as an offset. Offset MSB, then LSB.
	db ((Rabbit_Subsong0_Track3 - ($ + 1)) & 255)

; Pattern 10
	db 168	; State byte.
	db 133	; New track (4) for channel 1, as a reference (index 5).
	db ((Rabbit_Subsong0_Track13 - ($ + 2)) & #ff00) / 256	; New track (13) for channel 2, as an offset. Offset MSB, then LSB.
	db ((Rabbit_Subsong0_Track13 - ($ + 1)) & 255)
	db ((Rabbit_Subsong0_Track2 - ($ + 2)) & #ff00) / 256	; New track (2) for channel 3, as an offset. Offset MSB, then LSB.
	db ((Rabbit_Subsong0_Track2 - ($ + 1)) & 255)

; Pattern 11
	db 168	; State byte.
	db ((Rabbit_Subsong0_Track14 - ($ + 2)) & #ff00) / 256	; New track (14) for channel 1, as an offset. Offset MSB, then LSB.
	db ((Rabbit_Subsong0_Track14 - ($ + 1)) & 255)
	db 130	; New track (6) for channel 2, as a reference (index 2).
	db 131	; New track (7) for channel 3, as a reference (index 3).

; Pattern 12
	db 8	; State byte.
	db 132	; New track (5) for channel 1, as a reference (index 4).

; Pattern 13
	db 168	; State byte.
	db 134	; New track (11) for channel 1, as a reference (index 6).
	db 135	; New track (9) for channel 2, as a reference (index 7).
	db 136	; New track (10) for channel 3, as a reference (index 8).

; Pattern 14
	db 168	; State byte.
	db 129	; New track (0) for channel 1, as a reference (index 1).
	db 137	; New track (12) for channel 2, as a reference (index 9).
	db 128	; New track (8) for channel 3, as a reference (index 0).

; Pattern 15
	db 0	; State byte.

; Pattern 16
	db 40	; State byte.
	db 133	; New track (4) for channel 1, as a reference (index 5).
	db ((Rabbit_Subsong0_Track13 - ($ + 2)) & #ff00) / 256	; New track (13) for channel 2, as an offset. Offset MSB, then LSB.
	db ((Rabbit_Subsong0_Track13 - ($ + 1)) & 255)

; Pattern 17
	db 168	; State byte.
	db 132	; New track (5) for channel 1, as a reference (index 4).
	db 130	; New track (6) for channel 2, as a reference (index 2).
	db 131	; New track (7) for channel 3, as a reference (index 3).

; Pattern 18
	db 0	; State byte.

; Pattern 19
	db 168	; State byte.
	db 134	; New track (11) for channel 1, as a reference (index 6).
	db 135	; New track (9) for channel 2, as a reference (index 7).
	db 136	; New track (10) for channel 3, as a reference (index 8).

	db 1	; End of the Song.
	db 0	; Speed to 0, meaning "end of song".
Rabbit_Subsong0DisarkByteRegionEnd2
Rabbit_Subsong0DisarkPointerRegionStart3
	dw Rabbit_Subsong0_Loop

Rabbit_Subsong0DisarkPointerRegionEnd3
; The indexes of the tracks.
Rabbit_Subsong0_TrackIndexes
Rabbit_Subsong0DisarkPointerRegionStart4
	dw Rabbit_Subsong0_Track8	; Track 8, index 0.
	dw Rabbit_Subsong0_Track0	; Track 0, index 1.
	dw Rabbit_Subsong0_Track6	; Track 6, index 2.
	dw Rabbit_Subsong0_Track7	; Track 7, index 3.
	dw Rabbit_Subsong0_Track5	; Track 5, index 4.
	dw Rabbit_Subsong0_Track4	; Track 4, index 5.
	dw Rabbit_Subsong0_Track11	; Track 11, index 6.
	dw Rabbit_Subsong0_Track9	; Track 9, index 7.
	dw Rabbit_Subsong0_Track10	; Track 10, index 8.
	dw Rabbit_Subsong0_Track12	; Track 12, index 9.
Rabbit_Subsong0DisarkPointerRegionEnd4

Rabbit_Subsong0DisarkByteRegionStart5
Rabbit_Subsong0_Track0
	db 12	; Note with effects flag.
	db 126	; New instrument (1). New escaped note: 14. Primary wait (0).
	db 14	;   Escape note value.
	db 1	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 12	; Note with effects flag.
	db 112	; New instrument (2). Note reference (0). Primary wait (0).
	db 2	;   Escape instrument value.
	db 98	;    Volume effect, with inverted volume: 6.
	db 12	; Note with effects flag.
	db 64	; Note reference (0). Primary wait (0).
	db 2	;    Volume effect, with inverted volume: 0.
	db 117	; New instrument (1). Note reference (5). Primary wait (0).
	db 1	;   Escape instrument value.
	db 12	; Note with effects flag.
	db 112	; New instrument (2). Note reference (0). Primary wait (0).
	db 2	;   Escape instrument value.
	db 98	;    Volume effect, with inverted volume: 6.
	db 12	; Note with effects flag.
	db 64	; Note reference (0). Primary wait (0).
	db 2	;    Volume effect, with inverted volume: 0.
	db 127	; New instrument (1). Same escaped note: 14. Primary wait (0).
	db 1	;   Escape instrument value.
	db 12	; Note with effects flag.
	db 112	; New instrument (2). Note reference (0). Primary wait (0).
	db 2	;   Escape instrument value.
	db 98	;    Volume effect, with inverted volume: 6.
	db 12	; Note with effects flag.
	db 64	; Note reference (0). Primary wait (0).
	db 2	;    Volume effect, with inverted volume: 0.
	db 117	; New instrument (1). Note reference (5). Primary wait (0).
	db 1	;   Escape instrument value.
	db 12	; Note with effects flag.
	db 112	; New instrument (2). Note reference (0). Primary wait (0).
	db 2	;   Escape instrument value.
	db 98	;    Volume effect, with inverted volume: 6.
	db 12	; Note with effects flag.
	db 64	; Note reference (0). Primary wait (0).
	db 2	;    Volume effect, with inverted volume: 0.
	db 126	; New instrument (1). New escaped note: 17. Primary wait (0).
	db 17	;   Escape note value.
	db 1	;   Escape instrument value.
	db 12	; Note with effects flag.
	db 112	; New instrument (2). Note reference (0). Primary wait (0).
	db 2	;   Escape instrument value.
	db 98	;    Volume effect, with inverted volume: 6.
	db 12	; Note with effects flag.
	db 119	; New instrument (3). Note reference (7). Primary wait (0).
	db 3	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 126	; New instrument (1). New escaped note: 29. Primary wait (0).
	db 29	;   Escape note value.
	db 1	;   Escape instrument value.
	db 12	; Note with effects flag.
	db 119	; New instrument (3). Note reference (7). Primary wait (0).
	db 3	;   Escape instrument value.
	db 98	;    Volume effect, with inverted volume: 6.
	db 12	; Note with effects flag.
	db 71	; Note reference (7). Primary wait (0).
	db 2	;    Volume effect, with inverted volume: 0.
	db 126	; New instrument (1). New escaped note: 17. Primary wait (0).
	db 17	;   Escape note value.
	db 1	;   Escape instrument value.
	db 12	; Note with effects flag.
	db 119	; New instrument (3). Note reference (7). Primary wait (0).
	db 3	;   Escape instrument value.
	db 98	;    Volume effect, with inverted volume: 6.
	db 12	; Note with effects flag.
	db 71	; Note reference (7). Primary wait (0).
	db 2	;    Volume effect, with inverted volume: 0.
	db 126	; New instrument (1). New escaped note: 29. Primary wait (0).
	db 29	;   Escape note value.
	db 1	;   Escape instrument value.
	db 12	; Note with effects flag.
	db 119	; New instrument (3). Note reference (7). Primary wait (0).
	db 3	;   Escape instrument value.
	db 98	;    Volume effect, with inverted volume: 6.
	db 12	; Note with effects flag.
	db 71	; Note reference (7). Primary wait (0).
	db 2	;    Volume effect, with inverted volume: 0.
	db 126	; New instrument (1). New escaped note: 19. Primary wait (0).
	db 19	;   Escape note value.
	db 1	;   Escape instrument value.
	db 12	; Note with effects flag.
	db 119	; New instrument (3). Note reference (7). Primary wait (0).
	db 3	;   Escape instrument value.
	db 98	;    Volume effect, with inverted volume: 6.
	db 12	; Note with effects flag.
	db 112	; New instrument (5). Note reference (0). Primary wait (0).
	db 5	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 126	; New instrument (1). New escaped note: 31. Primary wait (0).
	db 31	;   Escape note value.
	db 1	;   Escape instrument value.
	db 12	; Note with effects flag.
	db 112	; New instrument (5). Note reference (0). Primary wait (0).
	db 5	;   Escape instrument value.
	db 98	;    Volume effect, with inverted volume: 6.
	db 12	; Note with effects flag.
	db 64	; Note reference (0). Primary wait (0).
	db 2	;    Volume effect, with inverted volume: 0.
	db 126	; New instrument (1). New escaped note: 19. Primary wait (0).
	db 19	;   Escape note value.
	db 1	;   Escape instrument value.
	db 12	; Note with effects flag.
	db 112	; New instrument (5). Note reference (0). Primary wait (0).
	db 5	;   Escape instrument value.
	db 98	;    Volume effect, with inverted volume: 6.
	db 12	; Note with effects flag.
	db 64	; Note reference (0). Primary wait (0).
	db 2	;    Volume effect, with inverted volume: 0.
	db 126	; New instrument (1). New escaped note: 31. Primary wait (0).
	db 31	;   Escape note value.
	db 1	;   Escape instrument value.
	db 12	; Note with effects flag.
	db 112	; New instrument (5). Note reference (0). Primary wait (0).
	db 5	;   Escape instrument value.
	db 98	;    Volume effect, with inverted volume: 6.
	db 12	; Note with effects flag.
	db 64	; Note reference (0). Primary wait (0).
	db 2	;    Volume effect, with inverted volume: 0.
	db 126	; New instrument (1). New escaped note: 14. Primary wait (0).
	db 14	;   Escape note value.
	db 1	;   Escape instrument value.
	db 12	; Note with effects flag.
	db 112	; New instrument (5). Note reference (0). Primary wait (0).
	db 5	;   Escape instrument value.
	db 98	;    Volume effect, with inverted volume: 6.
	db 12	; Note with effects flag.
	db 112	; New instrument (2). Note reference (0). Primary wait (0).
	db 2	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 117	; New instrument (1). Note reference (5). Primary wait (0).
	db 1	;   Escape instrument value.
	db 12	; Note with effects flag.
	db 112	; New instrument (2). Note reference (0). Primary wait (0).
	db 2	;   Escape instrument value.
	db 98	;    Volume effect, with inverted volume: 6.
	db 12	; Note with effects flag.
	db 64	; Note reference (0). Primary wait (0).
	db 2	;    Volume effect, with inverted volume: 0.
	db 127	; New instrument (1). Same escaped note: 14. Primary wait (0).
	db 1	;   Escape instrument value.
	db 12	; Note with effects flag.
	db 112	; New instrument (2). Note reference (0). Primary wait (0).
	db 2	;   Escape instrument value.
	db 98	;    Volume effect, with inverted volume: 6.
	db 12	; Note with effects flag.
	db 64	; Note reference (0). Primary wait (0).
	db 2	;    Volume effect, with inverted volume: 0.
	db 117	; New instrument (1). Note reference (5). Primary wait (0).
	db 1	;   Escape instrument value.
	db 12	; Note with effects flag.
	db 112	; New instrument (2). Note reference (0). Primary wait (0).
	db 2	;   Escape instrument value.
	db 98	;    Volume effect, with inverted volume: 6.
	db 12	; Note with effects flag.
	db 192	; Note reference (0). New wait (127).
	db 127	;   Escape wait value.
	db 2	;    Volume effect, with inverted volume: 0.

Rabbit_Subsong0_Track1
	db 12	; Note with effects flag.
	db 96	; Secondary instrument (4). Note reference (0). Primary wait (0).
	db 2	;    Volume effect, with inverted volume: 0.
	db 12	; Note with effects flag.
	db 96	; Secondary instrument (4). Note reference (0). Primary wait (0).
	db 18	;    Volume effect, with inverted volume: 1.
	db 12	; Note with effects flag.
	db 110	; Secondary instrument (4). New escaped note: 52. Primary wait (0).
	db 52	;   Escape note value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 102	; Secondary instrument (4). Note reference (6). Primary wait (0).
	db 12	; Note with effects flag.
	db 102	; Secondary instrument (4). Note reference (6). Primary wait (0).
	db 18	;    Volume effect, with inverted volume: 1.
	db 12	; Note with effects flag.
	db 99	; Secondary instrument (4). Note reference (3). Primary wait (0).
	db 2	;    Volume effect, with inverted volume: 0.
	db 97	; Secondary instrument (4). Note reference (1). Primary wait (0).
	db 12	; Note with effects flag.
	db 97	; Secondary instrument (4). Note reference (1). Primary wait (0).
	db 18	;    Volume effect, with inverted volume: 1.
	db 12	; Note with effects flag.
	db 97	; Secondary instrument (4). Note reference (1). Primary wait (0).
	db 34	;    Volume effect, with inverted volume: 2.
	db 12	; Note with effects flag.
	db 97	; Secondary instrument (4). Note reference (1). Primary wait (0).
	db 50	;    Volume effect, with inverted volume: 3.
	db 12	; Note with effects flag.
	db 97	; Secondary instrument (4). Note reference (1). Primary wait (0).
	db 66	;    Volume effect, with inverted volume: 4.
	db 12	; Note with effects flag.
	db 97	; Secondary instrument (4). Note reference (1). Primary wait (0).
	db 82	;    Volume effect, with inverted volume: 5.
	db 12	; Note with effects flag.
	db 97	; Secondary instrument (4). Note reference (1). Primary wait (0).
	db 98	;    Volume effect, with inverted volume: 6.
	db 12	; Note with effects flag.
	db 97	; Secondary instrument (4). Note reference (1). Primary wait (0).
	db 114	;    Volume effect, with inverted volume: 7.
	db 12	; Note with effects flag.
	db 110	; Secondary instrument (4). New escaped note: 58. Primary wait (0).
	db 58	;   Escape note value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 97	; Secondary instrument (4). Note reference (1). Primary wait (0).
	db 12	; Note with effects flag.
	db 97	; Secondary instrument (4). Note reference (1). Primary wait (0).
	db 18	;    Volume effect, with inverted volume: 1.
	db 12	; Note with effects flag.
	db 99	; Secondary instrument (4). Note reference (3). Primary wait (0).
	db 2	;    Volume effect, with inverted volume: 0.
	db 97	; Secondary instrument (4). Note reference (1). Primary wait (0).
	db 12	; Note with effects flag.
	db 97	; Secondary instrument (4). Note reference (1). Primary wait (0).
	db 18	;    Volume effect, with inverted volume: 1.
	db 12	; Note with effects flag.
	db 97	; Secondary instrument (4). Note reference (1). Primary wait (0).
	db 34	;    Volume effect, with inverted volume: 2.
	db 12	; Note with effects flag.
	db 97	; Secondary instrument (4). Note reference (1). Primary wait (0).
	db 50	;    Volume effect, with inverted volume: 3.
	db 12	; Note with effects flag.
	db 97	; Secondary instrument (4). Note reference (1). Primary wait (0).
	db 66	;    Volume effect, with inverted volume: 4.
	db 12	; Note with effects flag.
	db 97	; Secondary instrument (4). Note reference (1). Primary wait (0).
	db 2	;    Volume effect, with inverted volume: 0.
	db 99	; Secondary instrument (4). Note reference (3). Primary wait (0).
	db 12	; Note with effects flag.
	db 99	; Secondary instrument (4). Note reference (3). Primary wait (0).
	db 18	;    Volume effect, with inverted volume: 1.
	db 12	; Note with effects flag.
	db 99	; Secondary instrument (4). Note reference (3). Primary wait (0).
	db 34	;    Volume effect, with inverted volume: 2.
	db 12	; Note with effects flag.
	db 99	; Secondary instrument (4). Note reference (3). Primary wait (0).
	db 2	;    Volume effect, with inverted volume: 0.
	db 12	; Note with effects flag.
	db 99	; Secondary instrument (4). Note reference (3). Primary wait (0).
	db 18	;    Volume effect, with inverted volume: 1.
	db 12	; Note with effects flag.
	db 99	; Secondary instrument (4). Note reference (3). Primary wait (0).
	db 34	;    Volume effect, with inverted volume: 2.
	db 12	; Note with effects flag.
	db 99	; Secondary instrument (4). Note reference (3). Primary wait (0).
	db 2	;    Volume effect, with inverted volume: 0.
	db 12	; Note with effects flag.
	db 99	; Secondary instrument (4). Note reference (3). Primary wait (0).
	db 18	;    Volume effect, with inverted volume: 1.
	db 12	; Note with effects flag.
	db 99	; Secondary instrument (4). Note reference (3). Primary wait (0).
	db 34	;    Volume effect, with inverted volume: 2.
	db 12	; Note with effects flag.
	db 96	; Secondary instrument (4). Note reference (0). Primary wait (0).
	db 2	;    Volume effect, with inverted volume: 0.
	db 12	; Note with effects flag.
	db 96	; Secondary instrument (4). Note reference (0). Primary wait (0).
	db 18	;    Volume effect, with inverted volume: 1.
	db 12	; Note with effects flag.
	db 110	; Secondary instrument (4). New escaped note: 52. Primary wait (0).
	db 52	;   Escape note value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 102	; Secondary instrument (4). Note reference (6). Primary wait (0).
	db 12	; Note with effects flag.
	db 102	; Secondary instrument (4). Note reference (6). Primary wait (0).
	db 18	;    Volume effect, with inverted volume: 1.
	db 12	; Note with effects flag.
	db 99	; Secondary instrument (4). Note reference (3). Primary wait (0).
	db 2	;    Volume effect, with inverted volume: 0.
	db 102	; Secondary instrument (4). Note reference (6). Primary wait (0).
	db 12	; Note with effects flag.
	db 102	; Secondary instrument (4). Note reference (6). Primary wait (0).
	db 18	;    Volume effect, with inverted volume: 1.
	db 12	; Note with effects flag.
	db 111	; Secondary instrument (4). Same escaped note: 52. Primary wait (0).
	db 2	;    Volume effect, with inverted volume: 0.
	db 102	; Secondary instrument (4). Note reference (6). Primary wait (0).
	db 12	; Note with effects flag.
	db 102	; Secondary instrument (4). Note reference (6). Primary wait (0).
	db 18	;    Volume effect, with inverted volume: 1.
	db 12	; Note with effects flag.
	db 102	; Secondary instrument (4). Note reference (6). Primary wait (0).
	db 34	;    Volume effect, with inverted volume: 2.
	db 12	; Note with effects flag.
	db 102	; Secondary instrument (4). Note reference (6). Primary wait (0).
	db 50	;    Volume effect, with inverted volume: 3.
	db 12	; Note with effects flag.
	db 102	; Secondary instrument (4). Note reference (6). Primary wait (0).
	db 66	;    Volume effect, with inverted volume: 4.
	db 12	; Note with effects flag.
	db 239	; Secondary instrument (4). Same escaped note: 52. New wait (127).
	db 127	;   Escape wait value.
	db 2	;    Volume effect, with inverted volume: 0.

Rabbit_Subsong0_Track2
	db 12	; Note with effects flag.
	db 114	; New instrument (5). Note reference (2). Primary wait (0).
	db 5	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 93	; Effect only. Primary wait (0).
	db 98	;    Volume effect, with inverted volume: 6.
	db 93	; Effect only. Primary wait (0).
	db 114	;    Volume effect, with inverted volume: 7.
	db 12	; Note with effects flag.
	db 66	; Note reference (2). Primary wait (0).
	db 2	;    Volume effect, with inverted volume: 0.
	db 93	; Effect only. Primary wait (0).
	db 98	;    Volume effect, with inverted volume: 6.
	db 93	; Effect only. Primary wait (0).
	db 114	;    Volume effect, with inverted volume: 7.
	db 12	; Note with effects flag.
	db 114	; New instrument (6). Note reference (2). Primary wait (0).
	db 6	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 93	; Effect only. Primary wait (0).
	db 98	;    Volume effect, with inverted volume: 6.
	db 93	; Effect only. Primary wait (0).
	db 114	;    Volume effect, with inverted volume: 7.
	db 12	; Note with effects flag.
	db 66	; Note reference (2). Primary wait (0).
	db 2	;    Volume effect, with inverted volume: 0.
	db 93	; Effect only. Primary wait (0).
	db 98	;    Volume effect, with inverted volume: 6.
	db 93	; Effect only. Primary wait (0).
	db 114	;    Volume effect, with inverted volume: 7.
	db 12	; Note with effects flag.
	db 114	; New instrument (2). Note reference (2). Primary wait (0).
	db 2	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 93	; Effect only. Primary wait (0).
	db 98	;    Volume effect, with inverted volume: 6.
	db 93	; Effect only. Primary wait (0).
	db 114	;    Volume effect, with inverted volume: 7.
	db 12	; Note with effects flag.
	db 66	; Note reference (2). Primary wait (0).
	db 2	;    Volume effect, with inverted volume: 0.
	db 93	; Effect only. Primary wait (0).
	db 98	;    Volume effect, with inverted volume: 6.
	db 93	; Effect only. Primary wait (0).
	db 114	;    Volume effect, with inverted volume: 7.
	db 12	; Note with effects flag.
	db 114	; New instrument (11). Note reference (2). Primary wait (0).
	db 11	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 93	; Effect only. Primary wait (0).
	db 98	;    Volume effect, with inverted volume: 6.
	db 93	; Effect only. Primary wait (0).
	db 114	;    Volume effect, with inverted volume: 7.
	db 12	; Note with effects flag.
	db 66	; Note reference (2). Primary wait (0).
	db 2	;    Volume effect, with inverted volume: 0.
	db 93	; Effect only. Primary wait (0).
	db 98	;    Volume effect, with inverted volume: 6.
	db 93	; Effect only. Primary wait (0).
	db 114	;    Volume effect, with inverted volume: 7.
	db 12	; Note with effects flag.
	db 126	; New instrument (12). New escaped note: 60. Primary wait (0).
	db 60	;   Escape note value.
	db 12	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 93	; Effect only. Primary wait (0).
	db 98	;    Volume effect, with inverted volume: 6.
	db 93	; Effect only. Primary wait (0).
	db 114	;    Volume effect, with inverted volume: 7.
	db 12	; Note with effects flag.
	db 79	; Same escaped note: 60. Primary wait (0).
	db 2	;    Volume effect, with inverted volume: 0.
	db 93	; Effect only. Primary wait (0).
	db 98	;    Volume effect, with inverted volume: 6.
	db 93	; Effect only. Primary wait (0).
	db 114	;    Volume effect, with inverted volume: 7.
	db 12	; Note with effects flag.
	db 127	; New instrument (7). Same escaped note: 60. Primary wait (0).
	db 7	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 93	; Effect only. Primary wait (0).
	db 98	;    Volume effect, with inverted volume: 6.
	db 93	; Effect only. Primary wait (0).
	db 114	;    Volume effect, with inverted volume: 7.
	db 12	; Note with effects flag.
	db 79	; Same escaped note: 60. Primary wait (0).
	db 2	;    Volume effect, with inverted volume: 0.
	db 93	; Effect only. Primary wait (0).
	db 98	;    Volume effect, with inverted volume: 6.
	db 93	; Effect only. Primary wait (0).
	db 114	;    Volume effect, with inverted volume: 7.
	db 12	; Note with effects flag.
	db 126	; New instrument (8). New escaped note: 61. Primary wait (0).
	db 61	;   Escape note value.
	db 8	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 93	; Effect only. Primary wait (0).
	db 98	;    Volume effect, with inverted volume: 6.
	db 93	; Effect only. Primary wait (0).
	db 114	;    Volume effect, with inverted volume: 7.
	db 12	; Note with effects flag.
	db 79	; Same escaped note: 61. Primary wait (0).
	db 2	;    Volume effect, with inverted volume: 0.
	db 93	; Effect only. Primary wait (0).
	db 98	;    Volume effect, with inverted volume: 6.
	db 93	; Effect only. Primary wait (0).
	db 114	;    Volume effect, with inverted volume: 7.
	db 12	; Note with effects flag.
	db 127	; New instrument (9). Same escaped note: 61. Primary wait (0).
	db 9	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 93	; Effect only. Primary wait (0).
	db 98	;    Volume effect, with inverted volume: 6.
	db 93	; Effect only. Primary wait (0).
	db 114	;    Volume effect, with inverted volume: 7.
	db 12	; Note with effects flag.
	db 79	; Same escaped note: 61. Primary wait (0).
	db 2	;    Volume effect, with inverted volume: 0.
	db 93	; Effect only. Primary wait (0).
	db 98	;    Volume effect, with inverted volume: 6.
	db 221	; Effect only. New wait (127).
	db 127	;   Escape wait value.
	db 114	;    Volume effect, with inverted volume: 7.

Rabbit_Subsong0_Track3
	db 12	; Note with effects flag.
	db 96	; Secondary instrument (4). Note reference (0). Primary wait (0).
	db 2	;    Volume effect, with inverted volume: 0.
	db 12	; Note with effects flag.
	db 96	; Secondary instrument (4). Note reference (0). Primary wait (0).
	db 18	;    Volume effect, with inverted volume: 1.
	db 12	; Note with effects flag.
	db 110	; Secondary instrument (4). New escaped note: 52. Primary wait (0).
	db 52	;   Escape note value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 102	; Secondary instrument (4). Note reference (6). Primary wait (0).
	db 12	; Note with effects flag.
	db 102	; Secondary instrument (4). Note reference (6). Primary wait (0).
	db 18	;    Volume effect, with inverted volume: 1.
	db 12	; Note with effects flag.
	db 99	; Secondary instrument (4). Note reference (3). Primary wait (0).
	db 2	;    Volume effect, with inverted volume: 0.
	db 97	; Secondary instrument (4). Note reference (1). Primary wait (0).
	db 12	; Note with effects flag.
	db 97	; Secondary instrument (4). Note reference (1). Primary wait (0).
	db 18	;    Volume effect, with inverted volume: 1.
	db 12	; Note with effects flag.
	db 97	; Secondary instrument (4). Note reference (1). Primary wait (0).
	db 34	;    Volume effect, with inverted volume: 2.
	db 12	; Note with effects flag.
	db 97	; Secondary instrument (4). Note reference (1). Primary wait (0).
	db 50	;    Volume effect, with inverted volume: 3.
	db 12	; Note with effects flag.
	db 97	; Secondary instrument (4). Note reference (1). Primary wait (0).
	db 66	;    Volume effect, with inverted volume: 4.
	db 12	; Note with effects flag.
	db 97	; Secondary instrument (4). Note reference (1). Primary wait (0).
	db 82	;    Volume effect, with inverted volume: 5.
	db 12	; Note with effects flag.
	db 97	; Secondary instrument (4). Note reference (1). Primary wait (0).
	db 98	;    Volume effect, with inverted volume: 6.
	db 12	; Note with effects flag.
	db 97	; Secondary instrument (4). Note reference (1). Primary wait (0).
	db 114	;    Volume effect, with inverted volume: 7.
	db 12	; Note with effects flag.
	db 110	; Secondary instrument (4). New escaped note: 58. Primary wait (0).
	db 58	;   Escape note value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 97	; Secondary instrument (4). Note reference (1). Primary wait (0).
	db 12	; Note with effects flag.
	db 97	; Secondary instrument (4). Note reference (1). Primary wait (0).
	db 18	;    Volume effect, with inverted volume: 1.
	db 12	; Note with effects flag.
	db 99	; Secondary instrument (4). Note reference (3). Primary wait (0).
	db 2	;    Volume effect, with inverted volume: 0.
	db 97	; Secondary instrument (4). Note reference (1). Primary wait (0).
	db 12	; Note with effects flag.
	db 97	; Secondary instrument (4). Note reference (1). Primary wait (0).
	db 18	;    Volume effect, with inverted volume: 1.
	db 12	; Note with effects flag.
	db 97	; Secondary instrument (4). Note reference (1). Primary wait (0).
	db 34	;    Volume effect, with inverted volume: 2.
	db 12	; Note with effects flag.
	db 97	; Secondary instrument (4). Note reference (1). Primary wait (0).
	db 50	;    Volume effect, with inverted volume: 3.
	db 12	; Note with effects flag.
	db 97	; Secondary instrument (4). Note reference (1). Primary wait (0).
	db 66	;    Volume effect, with inverted volume: 4.
	db 12	; Note with effects flag.
	db 97	; Secondary instrument (4). Note reference (1). Primary wait (0).
	db 2	;    Volume effect, with inverted volume: 0.
	db 99	; Secondary instrument (4). Note reference (3). Primary wait (0).
	db 12	; Note with effects flag.
	db 99	; Secondary instrument (4). Note reference (3). Primary wait (0).
	db 18	;    Volume effect, with inverted volume: 1.
	db 12	; Note with effects flag.
	db 99	; Secondary instrument (4). Note reference (3). Primary wait (0).
	db 34	;    Volume effect, with inverted volume: 2.
	db 12	; Note with effects flag.
	db 99	; Secondary instrument (4). Note reference (3). Primary wait (0).
	db 2	;    Volume effect, with inverted volume: 0.
	db 12	; Note with effects flag.
	db 99	; Secondary instrument (4). Note reference (3). Primary wait (0).
	db 18	;    Volume effect, with inverted volume: 1.
	db 12	; Note with effects flag.
	db 99	; Secondary instrument (4). Note reference (3). Primary wait (0).
	db 34	;    Volume effect, with inverted volume: 2.
	db 12	; Note with effects flag.
	db 99	; Secondary instrument (4). Note reference (3). Primary wait (0).
	db 2	;    Volume effect, with inverted volume: 0.
	db 12	; Note with effects flag.
	db 99	; Secondary instrument (4). Note reference (3). Primary wait (0).
	db 18	;    Volume effect, with inverted volume: 1.
	db 12	; Note with effects flag.
	db 99	; Secondary instrument (4). Note reference (3). Primary wait (0).
	db 34	;    Volume effect, with inverted volume: 2.
	db 12	; Note with effects flag.
	db 96	; Secondary instrument (4). Note reference (0). Primary wait (0).
	db 2	;    Volume effect, with inverted volume: 0.
	db 12	; Note with effects flag.
	db 96	; Secondary instrument (4). Note reference (0). Primary wait (0).
	db 18	;    Volume effect, with inverted volume: 1.
	db 12	; Note with effects flag.
	db 110	; Secondary instrument (4). New escaped note: 52. Primary wait (0).
	db 52	;   Escape note value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 102	; Secondary instrument (4). Note reference (6). Primary wait (0).
	db 12	; Note with effects flag.
	db 102	; Secondary instrument (4). Note reference (6). Primary wait (0).
	db 18	;    Volume effect, with inverted volume: 1.
	db 12	; Note with effects flag.
	db 99	; Secondary instrument (4). Note reference (3). Primary wait (0).
	db 2	;    Volume effect, with inverted volume: 0.
	db 102	; Secondary instrument (4). Note reference (6). Primary wait (0).
	db 12	; Note with effects flag.
	db 102	; Secondary instrument (4). Note reference (6). Primary wait (0).
	db 18	;    Volume effect, with inverted volume: 1.
	db 12	; Note with effects flag.
	db 111	; Secondary instrument (4). Same escaped note: 52. Primary wait (0).
	db 2	;    Volume effect, with inverted volume: 0.
	db 96	; Secondary instrument (4). Note reference (0). Primary wait (0).
	db 12	; Note with effects flag.
	db 96	; Secondary instrument (4). Note reference (0). Primary wait (0).
	db 34	;    Volume effect, with inverted volume: 2.
	db 12	; Note with effects flag.
	db 96	; Secondary instrument (4). Note reference (0). Primary wait (0).
	db 66	;    Volume effect, with inverted volume: 4.
	db 12	; Note with effects flag.
	db 96	; Secondary instrument (4). Note reference (0). Primary wait (0).
	db 98	;    Volume effect, with inverted volume: 6.
	db 12	; Note with effects flag.
	db 96	; Secondary instrument (4). Note reference (0). Primary wait (0).
	db 130	;    Volume effect, with inverted volume: 8.
	db 12	; Note with effects flag.
	db 224	; Secondary instrument (4). Note reference (0). New wait (127).
	db 127	;   Escape wait value.
	db 162	;    Volume effect, with inverted volume: 10.

Rabbit_Subsong0_Track4
	db 12	; Note with effects flag.
	db 126	; New instrument (1). New escaped note: 10. Primary wait (0).
	db 10	;   Escape note value.
	db 1	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 12	; Note with effects flag.
	db 126	; New instrument (5). New escaped note: 14. Primary wait (0).
	db 14	;   Escape note value.
	db 5	;   Escape instrument value.
	db 98	;    Volume effect, with inverted volume: 6.
	db 12	; Note with effects flag.
	db 64	; Note reference (0). Primary wait (0).
	db 2	;    Volume effect, with inverted volume: 0.
	db 126	; New instrument (1). New escaped note: 22. Primary wait (0).
	db 22	;   Escape note value.
	db 1	;   Escape instrument value.
	db 12	; Note with effects flag.
	db 112	; New instrument (5). Note reference (0). Primary wait (0).
	db 5	;   Escape instrument value.
	db 98	;    Volume effect, with inverted volume: 6.
	db 12	; Note with effects flag.
	db 64	; Note reference (0). Primary wait (0).
	db 2	;    Volume effect, with inverted volume: 0.
	db 126	; New instrument (1). New escaped note: 10. Primary wait (0).
	db 10	;   Escape note value.
	db 1	;   Escape instrument value.
	db 12	; Note with effects flag.
	db 112	; New instrument (5). Note reference (0). Primary wait (0).
	db 5	;   Escape instrument value.
	db 98	;    Volume effect, with inverted volume: 6.
	db 12	; Note with effects flag.
	db 112	; New instrument (6). Note reference (0). Primary wait (0).
	db 6	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 126	; New instrument (1). New escaped note: 22. Primary wait (0).
	db 22	;   Escape note value.
	db 1	;   Escape instrument value.
	db 12	; Note with effects flag.
	db 112	; New instrument (6). Note reference (0). Primary wait (0).
	db 6	;   Escape instrument value.
	db 98	;    Volume effect, with inverted volume: 6.
	db 12	; Note with effects flag.
	db 64	; Note reference (0). Primary wait (0).
	db 2	;    Volume effect, with inverted volume: 0.
	db 126	; New instrument (1). New escaped note: 11. Primary wait (0).
	db 11	;   Escape note value.
	db 1	;   Escape instrument value.
	db 12	; Note with effects flag.
	db 112	; New instrument (6). Note reference (0). Primary wait (0).
	db 6	;   Escape instrument value.
	db 98	;    Volume effect, with inverted volume: 6.
	db 12	; Note with effects flag.
	db 112	; New instrument (2). Note reference (0). Primary wait (0).
	db 2	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 126	; New instrument (1). New escaped note: 23. Primary wait (0).
	db 23	;   Escape note value.
	db 1	;   Escape instrument value.
	db 12	; Note with effects flag.
	db 112	; New instrument (2). Note reference (0). Primary wait (0).
	db 2	;   Escape instrument value.
	db 98	;    Volume effect, with inverted volume: 6.
	db 12	; Note with effects flag.
	db 64	; Note reference (0). Primary wait (0).
	db 2	;    Volume effect, with inverted volume: 0.
	db 126	; New instrument (1). New escaped note: 11. Primary wait (0).
	db 11	;   Escape note value.
	db 1	;   Escape instrument value.
	db 12	; Note with effects flag.
	db 112	; New instrument (2). Note reference (0). Primary wait (0).
	db 2	;   Escape instrument value.
	db 98	;    Volume effect, with inverted volume: 6.
	db 12	; Note with effects flag.
	db 112	; New instrument (11). Note reference (0). Primary wait (0).
	db 11	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 126	; New instrument (1). New escaped note: 23. Primary wait (0).
	db 23	;   Escape note value.
	db 1	;   Escape instrument value.
	db 12	; Note with effects flag.
	db 112	; New instrument (11). Note reference (0). Primary wait (0).
	db 11	;   Escape instrument value.
	db 98	;    Volume effect, with inverted volume: 6.
	db 12	; Note with effects flag.
	db 64	; Note reference (0). Primary wait (0).
	db 2	;    Volume effect, with inverted volume: 0.
	db 126	; New instrument (1). New escaped note: 12. Primary wait (0).
	db 12	;   Escape note value.
	db 1	;   Escape instrument value.
	db 12	; Note with effects flag.
	db 112	; New instrument (11). Note reference (0). Primary wait (0).
	db 11	;   Escape instrument value.
	db 98	;    Volume effect, with inverted volume: 6.
	db 12	; Note with effects flag.
	db 119	; New instrument (12). Note reference (7). Primary wait (0).
	db 12	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 126	; New instrument (1). New escaped note: 24. Primary wait (0).
	db 24	;   Escape note value.
	db 1	;   Escape instrument value.
	db 12	; Note with effects flag.
	db 119	; New instrument (12). Note reference (7). Primary wait (0).
	db 12	;   Escape instrument value.
	db 98	;    Volume effect, with inverted volume: 6.
	db 12	; Note with effects flag.
	db 71	; Note reference (7). Primary wait (0).
	db 2	;    Volume effect, with inverted volume: 0.
	db 126	; New instrument (1). New escaped note: 12. Primary wait (0).
	db 12	;   Escape note value.
	db 1	;   Escape instrument value.
	db 12	; Note with effects flag.
	db 119	; New instrument (12). Note reference (7). Primary wait (0).
	db 12	;   Escape instrument value.
	db 98	;    Volume effect, with inverted volume: 6.
	db 12	; Note with effects flag.
	db 119	; New instrument (7). Note reference (7). Primary wait (0).
	db 7	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 126	; New instrument (1). New escaped note: 24. Primary wait (0).
	db 24	;   Escape note value.
	db 1	;   Escape instrument value.
	db 12	; Note with effects flag.
	db 119	; New instrument (7). Note reference (7). Primary wait (0).
	db 7	;   Escape instrument value.
	db 98	;    Volume effect, with inverted volume: 6.
	db 12	; Note with effects flag.
	db 71	; Note reference (7). Primary wait (0).
	db 2	;    Volume effect, with inverted volume: 0.
	db 126	; New instrument (1). New escaped note: 13. Primary wait (0).
	db 13	;   Escape note value.
	db 1	;   Escape instrument value.
	db 12	; Note with effects flag.
	db 119	; New instrument (7). Note reference (7). Primary wait (0).
	db 7	;   Escape instrument value.
	db 98	;    Volume effect, with inverted volume: 6.
	db 12	; Note with effects flag.
	db 126	; New instrument (8). New escaped note: 49. Primary wait (0).
	db 49	;   Escape note value.
	db 8	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 126	; New instrument (1). New escaped note: 25. Primary wait (0).
	db 25	;   Escape note value.
	db 1	;   Escape instrument value.
	db 12	; Note with effects flag.
	db 126	; New instrument (8). New escaped note: 49. Primary wait (0).
	db 49	;   Escape note value.
	db 8	;   Escape instrument value.
	db 98	;    Volume effect, with inverted volume: 6.
	db 12	; Note with effects flag.
	db 79	; Same escaped note: 49. Primary wait (0).
	db 2	;    Volume effect, with inverted volume: 0.
	db 126	; New instrument (1). New escaped note: 13. Primary wait (0).
	db 13	;   Escape note value.
	db 1	;   Escape instrument value.
	db 12	; Note with effects flag.
	db 126	; New instrument (8). New escaped note: 49. Primary wait (0).
	db 49	;   Escape note value.
	db 8	;   Escape instrument value.
	db 98	;    Volume effect, with inverted volume: 6.
	db 12	; Note with effects flag.
	db 127	; New instrument (9). Same escaped note: 49. Primary wait (0).
	db 9	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 126	; New instrument (1). New escaped note: 25. Primary wait (0).
	db 25	;   Escape note value.
	db 1	;   Escape instrument value.
	db 12	; Note with effects flag.
	db 126	; New instrument (9). New escaped note: 49. Primary wait (0).
	db 49	;   Escape note value.
	db 9	;   Escape instrument value.
	db 98	;    Volume effect, with inverted volume: 6.
	db 12	; Note with effects flag.
	db 207	; Same escaped note: 49. New wait (127).
	db 127	;   Escape wait value.
	db 2	;    Volume effect, with inverted volume: 0.

Rabbit_Subsong0_Track5
	db 205	; New wait (2).
	db 2	;   Escape wait value.
	db 12	; Note with effects flag.
	db 128	; Note reference (0). Secondary wait (1).
	db 2	;    Volume effect, with inverted volume: 0.
	db 157	; Effect only. Secondary wait (1).
	db 18	;    Volume effect, with inverted volume: 1.
	db 157	; Effect only. Secondary wait (1).
	db 34	;    Volume effect, with inverted volume: 2.
	db 157	; Effect only. Secondary wait (1).
	db 50	;    Volume effect, with inverted volume: 3.
	db 93	; Effect only. Primary wait (0).
	db 66	;    Volume effect, with inverted volume: 4.
	db 12	; Note with effects flag.
	db 184	; New instrument (12). Note reference (8). Secondary wait (1).
	db 12	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 93	; Effect only. Primary wait (0).
	db 18	;    Volume effect, with inverted volume: 1.
	db 12	; Note with effects flag.
	db 136	; Note reference (8). Secondary wait (1).
	db 2	;    Volume effect, with inverted volume: 0.
	db 93	; Effect only. Primary wait (0).
	db 18	;    Volume effect, with inverted volume: 1.
	db 12	; Note with effects flag.
	db 184	; New instrument (7). Note reference (8). Secondary wait (1).
	db 7	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 93	; Effect only. Primary wait (0).
	db 18	;    Volume effect, with inverted volume: 1.
	db 12	; Note with effects flag.
	db 136	; Note reference (8). Secondary wait (1).
	db 2	;    Volume effect, with inverted volume: 0.
	db 157	; Effect only. Secondary wait (1).
	db 18	;    Volume effect, with inverted volume: 1.
	db 157	; Effect only. Secondary wait (1).
	db 34	;    Volume effect, with inverted volume: 2.
	db 12	; Note with effects flag.
	db 176	; New instrument (2). Note reference (0). Secondary wait (1).
	db 2	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 157	; Effect only. Secondary wait (1).
	db 18	;    Volume effect, with inverted volume: 1.
	db 157	; Effect only. Secondary wait (1).
	db 34	;    Volume effect, with inverted volume: 2.
	db 157	; Effect only. Secondary wait (1).
	db 50	;    Volume effect, with inverted volume: 3.
	db 93	; Effect only. Primary wait (0).
	db 66	;    Volume effect, with inverted volume: 4.
	db 12	; Note with effects flag.
	db 184	; New instrument (12). Note reference (8). Secondary wait (1).
	db 12	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 93	; Effect only. Primary wait (0).
	db 18	;    Volume effect, with inverted volume: 1.
	db 12	; Note with effects flag.
	db 136	; Note reference (8). Secondary wait (1).
	db 2	;    Volume effect, with inverted volume: 0.
	db 93	; Effect only. Primary wait (0).
	db 18	;    Volume effect, with inverted volume: 1.
	db 12	; Note with effects flag.
	db 184	; New instrument (7). Note reference (8). Secondary wait (1).
	db 7	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 93	; Effect only. Primary wait (0).
	db 18	;    Volume effect, with inverted volume: 1.
	db 12	; Note with effects flag.
	db 136	; Note reference (8). Secondary wait (1).
	db 2	;    Volume effect, with inverted volume: 0.
	db 221	; Effect only. New wait (127).
	db 127	;   Escape wait value.
	db 18	;    Volume effect, with inverted volume: 1.

Rabbit_Subsong0_Track6
	db 12	; Note with effects flag.
	db 181	; New instrument (10). Note reference (5). Secondary wait (1).
	db 10	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 93	; Effect only. Primary wait (0).
	db 18	;    Volume effect, with inverted volume: 1.
	db 12	; Note with effects flag.
	db 133	; Note reference (5). Secondary wait (1).
	db 2	;    Volume effect, with inverted volume: 0.
	db 157	; Effect only. Secondary wait (1).
	db 18	;    Volume effect, with inverted volume: 1.
	db 157	; Effect only. Secondary wait (1).
	db 34	;    Volume effect, with inverted volume: 2.
	db 157	; Effect only. Secondary wait (1).
	db 50	;    Volume effect, with inverted volume: 3.
	db 93	; Effect only. Primary wait (0).
	db 66	;    Volume effect, with inverted volume: 4.
	db 12	; Note with effects flag.
	db 142	; New escaped note: 31. Secondary wait (1).
	db 31	;   Escape note value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 93	; Effect only. Primary wait (0).
	db 18	;    Volume effect, with inverted volume: 1.
	db 12	; Note with effects flag.
	db 143	; Same escaped note: 31. Secondary wait (1).
	db 2	;    Volume effect, with inverted volume: 0.
	db 93	; Effect only. Primary wait (0).
	db 18	;    Volume effect, with inverted volume: 1.
	db 12	; Note with effects flag.
	db 142	; New escaped note: 34. Secondary wait (1).
	db 34	;   Escape note value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 93	; Effect only. Primary wait (0).
	db 18	;    Volume effect, with inverted volume: 1.
	db 12	; Note with effects flag.
	db 143	; Same escaped note: 34. Secondary wait (1).
	db 2	;    Volume effect, with inverted volume: 0.
	db 93	; Effect only. Primary wait (0).
	db 18	;    Volume effect, with inverted volume: 1.
	db 12	; Note with effects flag.
	db 133	; Note reference (5). Secondary wait (1).
	db 2	;    Volume effect, with inverted volume: 0.
	db 93	; Effect only. Primary wait (0).
	db 18	;    Volume effect, with inverted volume: 1.
	db 12	; Note with effects flag.
	db 133	; Note reference (5). Secondary wait (1).
	db 2	;    Volume effect, with inverted volume: 0.
	db 157	; Effect only. Secondary wait (1).
	db 18	;    Volume effect, with inverted volume: 1.
	db 157	; Effect only. Secondary wait (1).
	db 34	;    Volume effect, with inverted volume: 2.
	db 157	; Effect only. Secondary wait (1).
	db 50	;    Volume effect, with inverted volume: 3.
	db 93	; Effect only. Primary wait (0).
	db 66	;    Volume effect, with inverted volume: 4.
	db 12	; Note with effects flag.
	db 143	; Same escaped note: 34. Secondary wait (1).
	db 2	;    Volume effect, with inverted volume: 0.
	db 93	; Effect only. Primary wait (0).
	db 18	;    Volume effect, with inverted volume: 1.
	db 12	; Note with effects flag.
	db 143	; Same escaped note: 34. Secondary wait (1).
	db 2	;    Volume effect, with inverted volume: 0.
	db 93	; Effect only. Primary wait (0).
	db 18	;    Volume effect, with inverted volume: 1.
	db 12	; Note with effects flag.
	db 142	; New escaped note: 31. Secondary wait (1).
	db 31	;   Escape note value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 93	; Effect only. Primary wait (0).
	db 18	;    Volume effect, with inverted volume: 1.
	db 12	; Note with effects flag.
	db 143	; Same escaped note: 31. Secondary wait (1).
	db 2	;    Volume effect, with inverted volume: 0.
	db 221	; Effect only. New wait (127).
	db 127	;   Escape wait value.
	db 18	;    Volume effect, with inverted volume: 1.

Rabbit_Subsong0_Track7
	db 12	; Note with effects flag.
	db 64	; Note reference (0). Primary wait (0).
	db 2	;    Volume effect, with inverted volume: 0.
	db 93	; Effect only. Primary wait (0).
	db 98	;    Volume effect, with inverted volume: 6.
	db 12	; Note with effects flag.
	db 66	; Note reference (2). Primary wait (0).
	db 2	;    Volume effect, with inverted volume: 0.
	db 93	; Effect only. Primary wait (0).
	db 98	;    Volume effect, with inverted volume: 6.
	db 93	; Effect only. Primary wait (0).
	db 18	;    Volume effect, with inverted volume: 1.
	db 93	; Effect only. Primary wait (0).
	db 98	;    Volume effect, with inverted volume: 6.
	db 93	; Effect only. Primary wait (0).
	db 34	;    Volume effect, with inverted volume: 2.
	db 93	; Effect only. Primary wait (0).
	db 98	;    Volume effect, with inverted volume: 6.
	db 93	; Effect only. Primary wait (0).
	db 50	;    Volume effect, with inverted volume: 3.
	db 93	; Effect only. Primary wait (0).
	db 98	;    Volume effect, with inverted volume: 6.
	db 93	; Effect only. Primary wait (0).
	db 66	;    Volume effect, with inverted volume: 4.
	db 93	; Effect only. Primary wait (0).
	db 98	;    Volume effect, with inverted volume: 6.
	db 93	; Effect only. Primary wait (0).
	db 114	;    Volume effect, with inverted volume: 7.
	db 93	; Effect only. Primary wait (0).
	db 130	;    Volume effect, with inverted volume: 8.
	db 93	; Effect only. Primary wait (0).
	db 2	;    Volume effect, with inverted volume: 0.
	db 93	; Effect only. Primary wait (0).
	db 98	;    Volume effect, with inverted volume: 6.
	db 93	; Effect only. Primary wait (0).
	db 18	;    Volume effect, with inverted volume: 1.
	db 93	; Effect only. Primary wait (0).
	db 98	;    Volume effect, with inverted volume: 6.
	db 93	; Effect only. Primary wait (0).
	db 34	;    Volume effect, with inverted volume: 2.
	db 93	; Effect only. Primary wait (0).
	db 98	;    Volume effect, with inverted volume: 6.
	db 93	; Effect only. Primary wait (0).
	db 50	;    Volume effect, with inverted volume: 3.
	db 93	; Effect only. Primary wait (0).
	db 98	;    Volume effect, with inverted volume: 6.
	db 93	; Effect only. Primary wait (0).
	db 66	;    Volume effect, with inverted volume: 4.
	db 93	; Effect only. Primary wait (0).
	db 98	;    Volume effect, with inverted volume: 6.
	db 12	; Note with effects flag.
	db 64	; Note reference (0). Primary wait (0).
	db 2	;    Volume effect, with inverted volume: 0.
	db 93	; Effect only. Primary wait (0).
	db 98	;    Volume effect, with inverted volume: 6.
	db 12	; Note with effects flag.
	db 66	; Note reference (2). Primary wait (0).
	db 2	;    Volume effect, with inverted volume: 0.
	db 93	; Effect only. Primary wait (0).
	db 98	;    Volume effect, with inverted volume: 6.
	db 93	; Effect only. Primary wait (0).
	db 18	;    Volume effect, with inverted volume: 1.
	db 93	; Effect only. Primary wait (0).
	db 98	;    Volume effect, with inverted volume: 6.
	db 93	; Effect only. Primary wait (0).
	db 34	;    Volume effect, with inverted volume: 2.
	db 93	; Effect only. Primary wait (0).
	db 98	;    Volume effect, with inverted volume: 6.
	db 93	; Effect only. Primary wait (0).
	db 50	;    Volume effect, with inverted volume: 3.
	db 93	; Effect only. Primary wait (0).
	db 98	;    Volume effect, with inverted volume: 6.
	db 93	; Effect only. Primary wait (0).
	db 66	;    Volume effect, with inverted volume: 4.
	db 93	; Effect only. Primary wait (0).
	db 98	;    Volume effect, with inverted volume: 6.
	db 93	; Effect only. Primary wait (0).
	db 114	;    Volume effect, with inverted volume: 7.
	db 93	; Effect only. Primary wait (0).
	db 98	;    Volume effect, with inverted volume: 6.
	db 93	; Effect only. Primary wait (0).
	db 2	;    Volume effect, with inverted volume: 0.
	db 93	; Effect only. Primary wait (0).
	db 98	;    Volume effect, with inverted volume: 6.
	db 93	; Effect only. Primary wait (0).
	db 18	;    Volume effect, with inverted volume: 1.
	db 93	; Effect only. Primary wait (0).
	db 98	;    Volume effect, with inverted volume: 6.
	db 93	; Effect only. Primary wait (0).
	db 34	;    Volume effect, with inverted volume: 2.
	db 93	; Effect only. Primary wait (0).
	db 98	;    Volume effect, with inverted volume: 6.
	db 93	; Effect only. Primary wait (0).
	db 50	;    Volume effect, with inverted volume: 3.
	db 93	; Effect only. Primary wait (0).
	db 98	;    Volume effect, with inverted volume: 6.
	db 93	; Effect only. Primary wait (0).
	db 66	;    Volume effect, with inverted volume: 4.
	db 221	; Effect only. New wait (127).
	db 127	;   Escape wait value.
	db 98	;    Volume effect, with inverted volume: 6.

Rabbit_Subsong0_Track8
	db 205	; New wait (127).
	db 127	;   Escape wait value.

Rabbit_Subsong0_Track9
	db 12	; Note with effects flag.
	db 181	; New instrument (10). Note reference (5). Secondary wait (1).
	db 10	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 157	; Effect only. Secondary wait (1).
	db 18	;    Volume effect, with inverted volume: 1.
	db 157	; Effect only. Secondary wait (1).
	db 34	;    Volume effect, with inverted volume: 2.
	db 157	; Effect only. Secondary wait (1).
	db 50	;    Volume effect, with inverted volume: 3.
	db 157	; Effect only. Secondary wait (1).
	db 66	;    Volume effect, with inverted volume: 4.
	db 157	; Effect only. Secondary wait (1).
	db 82	;    Volume effect, with inverted volume: 5.
	db 157	; Effect only. Secondary wait (1).
	db 98	;    Volume effect, with inverted volume: 6.
	db 157	; Effect only. Secondary wait (1).
	db 114	;    Volume effect, with inverted volume: 7.
	db 157	; Effect only. Secondary wait (1).
	db 130	;    Volume effect, with inverted volume: 8.
	db 157	; Effect only. Secondary wait (1).
	db 146	;    Volume effect, with inverted volume: 9.
	db 157	; Effect only. Secondary wait (1).
	db 162	;    Volume effect, with inverted volume: 10.
	db 157	; Effect only. Secondary wait (1).
	db 178	;    Volume effect, with inverted volume: 11.
	db 157	; Effect only. Secondary wait (1).
	db 194	;    Volume effect, with inverted volume: 12.
	db 157	; Effect only. Secondary wait (1).
	db 210	;    Volume effect, with inverted volume: 13.
	db 157	; Effect only. Secondary wait (1).
	db 226	;    Volume effect, with inverted volume: 14.
	db 221	; Effect only. New wait (127).
	db 127	;   Escape wait value.
	db 242	;    Volume effect, with inverted volume: 15.

Rabbit_Subsong0_Track10
	db 93	; Effect only. Primary wait (0).
	db 114	;    Volume effect, with inverted volume: 7.
	db 93	; Effect only. Primary wait (0).
	db 130	;    Volume effect, with inverted volume: 8.
	db 12	; Note with effects flag.
	db 66	; Note reference (2). Primary wait (0).
	db 2	;    Volume effect, with inverted volume: 0.
	db 93	; Effect only. Primary wait (0).
	db 98	;    Volume effect, with inverted volume: 6.
	db 93	; Effect only. Primary wait (0).
	db 18	;    Volume effect, with inverted volume: 1.
	db 93	; Effect only. Primary wait (0).
	db 98	;    Volume effect, with inverted volume: 6.
	db 93	; Effect only. Primary wait (0).
	db 34	;    Volume effect, with inverted volume: 2.
	db 93	; Effect only. Primary wait (0).
	db 98	;    Volume effect, with inverted volume: 6.
	db 93	; Effect only. Primary wait (0).
	db 50	;    Volume effect, with inverted volume: 3.
	db 93	; Effect only. Primary wait (0).
	db 114	;    Volume effect, with inverted volume: 7.
	db 93	; Effect only. Primary wait (0).
	db 66	;    Volume effect, with inverted volume: 4.
	db 93	; Effect only. Primary wait (0).
	db 130	;    Volume effect, with inverted volume: 8.
	db 93	; Effect only. Primary wait (0).
	db 82	;    Volume effect, with inverted volume: 5.
	db 93	; Effect only. Primary wait (0).
	db 98	;    Volume effect, with inverted volume: 6.
	db 93	; Effect only. Primary wait (0).
	db 146	;    Volume effect, with inverted volume: 9.
	db 93	; Effect only. Primary wait (0).
	db 114	;    Volume effect, with inverted volume: 7.
	db 93	; Effect only. Primary wait (0).
	db 162	;    Volume effect, with inverted volume: 10.
	db 93	; Effect only. Primary wait (0).
	db 130	;    Volume effect, with inverted volume: 8.
	db 93	; Effect only. Primary wait (0).
	db 178	;    Volume effect, with inverted volume: 11.
	db 93	; Effect only. Primary wait (0).
	db 146	;    Volume effect, with inverted volume: 9.
	db 93	; Effect only. Primary wait (0).
	db 194	;    Volume effect, with inverted volume: 12.
	db 93	; Effect only. Primary wait (0).
	db 162	;    Volume effect, with inverted volume: 10.
	db 93	; Effect only. Primary wait (0).
	db 210	;    Volume effect, with inverted volume: 13.
	db 93	; Effect only. Primary wait (0).
	db 178	;    Volume effect, with inverted volume: 11.
	db 93	; Effect only. Primary wait (0).
	db 226	;    Volume effect, with inverted volume: 14.
	db 93	; Effect only. Primary wait (0).
	db 194	;    Volume effect, with inverted volume: 12.
	db 93	; Effect only. Primary wait (0).
	db 242	;    Volume effect, with inverted volume: 15.
	db 93	; Effect only. Primary wait (0).
	db 210	;    Volume effect, with inverted volume: 13.
	db 93	; Effect only. Primary wait (0).
	db 242	;    Volume effect, with inverted volume: 15.
	db 93	; Effect only. Primary wait (0).
	db 226	;    Volume effect, with inverted volume: 14.
	db 221	; Effect only. New wait (127).
	db 127	;   Escape wait value.
	db 242	;    Volume effect, with inverted volume: 15.

Rabbit_Subsong0_Track11
	db 12	; Note with effects flag.
	db 128	; Note reference (0). Secondary wait (1).
	db 2	;    Volume effect, with inverted volume: 0.
	db 157	; Effect only. Secondary wait (1).
	db 18	;    Volume effect, with inverted volume: 1.
	db 12	; Note with effects flag.
	db 128	; Note reference (0). Secondary wait (1).
	db 34	;    Volume effect, with inverted volume: 2.
	db 93	; Effect only. Primary wait (0).
	db 50	;    Volume effect, with inverted volume: 3.
	db 64	; Note reference (0). Primary wait (0).
	db 93	; Effect only. Primary wait (0).
	db 66	;    Volume effect, with inverted volume: 4.
	db 117	; New instrument (1). Note reference (5). Primary wait (0).
	db 1	;   Escape instrument value.
	db 12	; Note with effects flag.
	db 176	; New instrument (2). Note reference (0). Secondary wait (1).
	db 2	;   Escape instrument value.
	db 82	;    Volume effect, with inverted volume: 5.
	db 12	; Note with effects flag.
	db 126	; New instrument (1). New escaped note: 14. Primary wait (0).
	db 14	;   Escape note value.
	db 1	;   Escape instrument value.
	db 50	;    Volume effect, with inverted volume: 3.
	db 12	; Note with effects flag.
	db 112	; New instrument (2). Note reference (0). Primary wait (0).
	db 2	;   Escape instrument value.
	db 98	;    Volume effect, with inverted volume: 6.
	db 93	; Effect only. Primary wait (0).
	db 114	;    Volume effect, with inverted volume: 7.
	db 12	; Note with effects flag.
	db 117	; New instrument (1). Note reference (5). Primary wait (0).
	db 1	;   Escape instrument value.
	db 34	;    Volume effect, with inverted volume: 2.
	db 12	; Note with effects flag.
	db 176	; New instrument (2). Note reference (0). Secondary wait (1).
	db 2	;   Escape instrument value.
	db 130	;    Volume effect, with inverted volume: 8.
	db 12	; Note with effects flag.
	db 127	; New instrument (1). Same escaped note: 14. Primary wait (0).
	db 1	;   Escape instrument value.
	db 18	;    Volume effect, with inverted volume: 1.
	db 12	; Note with effects flag.
	db 112	; New instrument (2). Note reference (0). Primary wait (0).
	db 2	;   Escape instrument value.
	db 146	;    Volume effect, with inverted volume: 9.
	db 93	; Effect only. Primary wait (0).
	db 162	;    Volume effect, with inverted volume: 10.
	db 12	; Note with effects flag.
	db 117	; New instrument (1). Note reference (5). Primary wait (0).
	db 1	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 12	; Note with effects flag.
	db 112	; New instrument (2). Note reference (0). Primary wait (0).
	db 2	;   Escape instrument value.
	db 178	;    Volume effect, with inverted volume: 11.
	db 12	; Note with effects flag.
	db 117	; New instrument (1). Note reference (5). Primary wait (0).
	db 1	;   Escape instrument value.
	db 34	;    Volume effect, with inverted volume: 2.
	db 12	; Note with effects flag.
	db 79	; Same escaped note: 14. Primary wait (0).
	db 2	;    Volume effect, with inverted volume: 0.
	db 157	; Effect only. Secondary wait (1).
	db 242	;    Volume effect, with inverted volume: 15.
	db 12	; Note with effects flag.
	db 69	; Note reference (5). Primary wait (0).
	db 2	;    Volume effect, with inverted volume: 0.
	db 157	; Effect only. Secondary wait (1).
	db 242	;    Volume effect, with inverted volume: 15.
	db 12	; Note with effects flag.
	db 79	; Same escaped note: 14. Primary wait (0).
	db 2	;    Volume effect, with inverted volume: 0.
	db 157	; Effect only. Secondary wait (1).
	db 242	;    Volume effect, with inverted volume: 15.
	db 12	; Note with effects flag.
	db 69	; Note reference (5). Primary wait (0).
	db 2	;    Volume effect, with inverted volume: 0.
	db 157	; Effect only. Secondary wait (1).
	db 242	;    Volume effect, with inverted volume: 15.
	db 12	; Note with effects flag.
	db 79	; Same escaped note: 14. Primary wait (0).
	db 2	;    Volume effect, with inverted volume: 0.
	db 157	; Effect only. Secondary wait (1).
	db 242	;    Volume effect, with inverted volume: 15.
	db 12	; Note with effects flag.
	db 69	; Note reference (5). Primary wait (0).
	db 2	;    Volume effect, with inverted volume: 0.
	db 157	; Effect only. Secondary wait (1).
	db 242	;    Volume effect, with inverted volume: 15.
	db 12	; Note with effects flag.
	db 79	; Same escaped note: 14. Primary wait (0).
	db 2	;    Volume effect, with inverted volume: 0.
	db 157	; Effect only. Secondary wait (1).
	db 242	;    Volume effect, with inverted volume: 15.
	db 12	; Note with effects flag.
	db 69	; Note reference (5). Primary wait (0).
	db 2	;    Volume effect, with inverted volume: 0.
	db 221	; Effect only. New wait (127).
	db 127	;   Escape wait value.
	db 34	;    Volume effect, with inverted volume: 2.

Rabbit_Subsong0_Track12
	db 12	; Note with effects flag.
	db 82	; Primary instrument (13). Note reference (2). Primary wait (0).
	db 2	;    Volume effect, with inverted volume: 0.
	db 81	; Primary instrument (13). Note reference (1). Primary wait (0).
	db 12	; Note with effects flag.
	db 82	; Primary instrument (13). Note reference (2). Primary wait (0).
	db 50	;    Volume effect, with inverted volume: 3.
	db 12	; Note with effects flag.
	db 90	; Primary instrument (13). Note reference (10). Primary wait (0).
	db 2	;    Volume effect, with inverted volume: 0.
	db 81	; Primary instrument (13). Note reference (1). Primary wait (0).
	db 12	; Note with effects flag.
	db 90	; Primary instrument (13). Note reference (10). Primary wait (0).
	db 50	;    Volume effect, with inverted volume: 3.
	db 12	; Note with effects flag.
	db 84	; Primary instrument (13). Note reference (4). Primary wait (0).
	db 2	;    Volume effect, with inverted volume: 0.
	db 81	; Primary instrument (13). Note reference (1). Primary wait (0).
	db 12	; Note with effects flag.
	db 84	; Primary instrument (13). Note reference (4). Primary wait (0).
	db 50	;    Volume effect, with inverted volume: 3.
	db 12	; Note with effects flag.
	db 89	; Primary instrument (13). Note reference (9). Primary wait (0).
	db 2	;    Volume effect, with inverted volume: 0.
	db 81	; Primary instrument (13). Note reference (1). Primary wait (0).
	db 12	; Note with effects flag.
	db 89	; Primary instrument (13). Note reference (9). Primary wait (0).
	db 50	;    Volume effect, with inverted volume: 3.
	db 12	; Note with effects flag.
	db 82	; Primary instrument (13). Note reference (2). Primary wait (0).
	db 2	;    Volume effect, with inverted volume: 0.
	db 81	; Primary instrument (13). Note reference (1). Primary wait (0).
	db 12	; Note with effects flag.
	db 82	; Primary instrument (13). Note reference (2). Primary wait (0).
	db 50	;    Volume effect, with inverted volume: 3.
	db 12	; Note with effects flag.
	db 90	; Primary instrument (13). Note reference (10). Primary wait (0).
	db 2	;    Volume effect, with inverted volume: 0.
	db 81	; Primary instrument (13). Note reference (1). Primary wait (0).
	db 12	; Note with effects flag.
	db 90	; Primary instrument (13). Note reference (10). Primary wait (0).
	db 50	;    Volume effect, with inverted volume: 3.
	db 12	; Note with effects flag.
	db 84	; Primary instrument (13). Note reference (4). Primary wait (0).
	db 2	;    Volume effect, with inverted volume: 0.
	db 81	; Primary instrument (13). Note reference (1). Primary wait (0).
	db 12	; Note with effects flag.
	db 84	; Primary instrument (13). Note reference (4). Primary wait (0).
	db 50	;    Volume effect, with inverted volume: 3.
	db 12	; Note with effects flag.
	db 89	; Primary instrument (13). Note reference (9). Primary wait (0).
	db 2	;    Volume effect, with inverted volume: 0.
	db 81	; Primary instrument (13). Note reference (1). Primary wait (0).
	db 12	; Note with effects flag.
	db 89	; Primary instrument (13). Note reference (9). Primary wait (0).
	db 50	;    Volume effect, with inverted volume: 3.
	db 12	; Note with effects flag.
	db 91	; Primary instrument (13). Note reference (11). Primary wait (0).
	db 2	;    Volume effect, with inverted volume: 0.
	db 94	; Primary instrument (13). New escaped note: 58. Primary wait (0).
	db 58	;   Escape note value.
	db 12	; Note with effects flag.
	db 91	; Primary instrument (13). Note reference (11). Primary wait (0).
	db 50	;    Volume effect, with inverted volume: 3.
	db 12	; Note with effects flag.
	db 89	; Primary instrument (13). Note reference (9). Primary wait (0).
	db 2	;    Volume effect, with inverted volume: 0.
	db 95	; Primary instrument (13). Same escaped note: 58. Primary wait (0).
	db 12	; Note with effects flag.
	db 89	; Primary instrument (13). Note reference (9). Primary wait (0).
	db 50	;    Volume effect, with inverted volume: 3.
	db 12	; Note with effects flag.
	db 84	; Primary instrument (13). Note reference (4). Primary wait (0).
	db 2	;    Volume effect, with inverted volume: 0.
	db 95	; Primary instrument (13). Same escaped note: 58. Primary wait (0).
	db 12	; Note with effects flag.
	db 84	; Primary instrument (13). Note reference (4). Primary wait (0).
	db 50	;    Volume effect, with inverted volume: 3.
	db 12	; Note with effects flag.
	db 90	; Primary instrument (13). Note reference (10). Primary wait (0).
	db 2	;    Volume effect, with inverted volume: 0.
	db 95	; Primary instrument (13). Same escaped note: 58. Primary wait (0).
	db 12	; Note with effects flag.
	db 90	; Primary instrument (13). Note reference (10). Primary wait (0).
	db 50	;    Volume effect, with inverted volume: 3.
	db 12	; Note with effects flag.
	db 82	; Primary instrument (13). Note reference (2). Primary wait (0).
	db 2	;    Volume effect, with inverted volume: 0.
	db 81	; Primary instrument (13). Note reference (1). Primary wait (0).
	db 12	; Note with effects flag.
	db 82	; Primary instrument (13). Note reference (2). Primary wait (0).
	db 50	;    Volume effect, with inverted volume: 3.
	db 12	; Note with effects flag.
	db 90	; Primary instrument (13). Note reference (10). Primary wait (0).
	db 2	;    Volume effect, with inverted volume: 0.
	db 81	; Primary instrument (13). Note reference (1). Primary wait (0).
	db 12	; Note with effects flag.
	db 90	; Primary instrument (13). Note reference (10). Primary wait (0).
	db 50	;    Volume effect, with inverted volume: 3.
	db 12	; Note with effects flag.
	db 82	; Primary instrument (13). Note reference (2). Primary wait (0).
	db 2	;    Volume effect, with inverted volume: 0.
	db 81	; Primary instrument (13). Note reference (1). Primary wait (0).
	db 12	; Note with effects flag.
	db 82	; Primary instrument (13). Note reference (2). Primary wait (0).
	db 50	;    Volume effect, with inverted volume: 3.
	db 12	; Note with effects flag.
	db 82	; Primary instrument (13). Note reference (2). Primary wait (0).
	db 2	;    Volume effect, with inverted volume: 0.
	db 81	; Primary instrument (13). Note reference (1). Primary wait (0).
	db 12	; Note with effects flag.
	db 210	; Primary instrument (13). Note reference (2). New wait (127).
	db 127	;   Escape wait value.
	db 50	;    Volume effect, with inverted volume: 3.

Rabbit_Subsong0_Track13
	db 12	; Note with effects flag.
	db 95	; Primary instrument (13). Same escaped note: 70. Primary wait (0).
	db 2	;    Volume effect, with inverted volume: 0.
	db 84	; Primary instrument (13). Note reference (4). Primary wait (0).
	db 82	; Primary instrument (13). Note reference (2). Primary wait (0).
	db 95	; Primary instrument (13). Same escaped note: 70. Primary wait (0).
	db 84	; Primary instrument (13). Note reference (4). Primary wait (0).
	db 82	; Primary instrument (13). Note reference (2). Primary wait (0).
	db 91	; Primary instrument (13). Note reference (11). Primary wait (0).
	db 84	; Primary instrument (13). Note reference (4). Primary wait (0).
	db 82	; Primary instrument (13). Note reference (2). Primary wait (0).
	db 91	; Primary instrument (13). Note reference (11). Primary wait (0).
	db 84	; Primary instrument (13). Note reference (4). Primary wait (0).
	db 82	; Primary instrument (13). Note reference (2). Primary wait (0).
	db 91	; Primary instrument (13). Note reference (11). Primary wait (0).
	db 84	; Primary instrument (13). Note reference (4). Primary wait (0).
	db 82	; Primary instrument (13). Note reference (2). Primary wait (0).
	db 91	; Primary instrument (13). Note reference (11). Primary wait (0).
	db 84	; Primary instrument (13). Note reference (4). Primary wait (0).
	db 82	; Primary instrument (13). Note reference (2). Primary wait (0).
	db 89	; Primary instrument (13). Note reference (9). Primary wait (0).
	db 84	; Primary instrument (13). Note reference (4). Primary wait (0).
	db 82	; Primary instrument (13). Note reference (2). Primary wait (0).
	db 89	; Primary instrument (13). Note reference (9). Primary wait (0).
	db 84	; Primary instrument (13). Note reference (4). Primary wait (0).
	db 82	; Primary instrument (13). Note reference (2). Primary wait (0).
	db 91	; Primary instrument (13). Note reference (11). Primary wait (0).
	db 90	; Primary instrument (13). Note reference (10). Primary wait (0).
	db 94	; Primary instrument (13). New escaped note: 60. Primary wait (0).
	db 60	;   Escape note value.
	db 91	; Primary instrument (13). Note reference (11). Primary wait (0).
	db 90	; Primary instrument (13). Note reference (10). Primary wait (0).
	db 95	; Primary instrument (13). Same escaped note: 60. Primary wait (0).
	db 89	; Primary instrument (13). Note reference (9). Primary wait (0).
	db 90	; Primary instrument (13). Note reference (10). Primary wait (0).
	db 95	; Primary instrument (13). Same escaped note: 60. Primary wait (0).
	db 89	; Primary instrument (13). Note reference (9). Primary wait (0).
	db 90	; Primary instrument (13). Note reference (10). Primary wait (0).
	db 95	; Primary instrument (13). Same escaped note: 60. Primary wait (0).
	db 91	; Primary instrument (13). Note reference (11). Primary wait (0).
	db 84	; Primary instrument (13). Note reference (4). Primary wait (0).
	db 94	; Primary instrument (13). New escaped note: 61. Primary wait (0).
	db 61	;   Escape note value.
	db 91	; Primary instrument (13). Note reference (11). Primary wait (0).
	db 84	; Primary instrument (13). Note reference (4). Primary wait (0).
	db 95	; Primary instrument (13). Same escaped note: 61. Primary wait (0).
	db 89	; Primary instrument (13). Note reference (9). Primary wait (0).
	db 84	; Primary instrument (13). Note reference (4). Primary wait (0).
	db 95	; Primary instrument (13). Same escaped note: 61. Primary wait (0).
	db 89	; Primary instrument (13). Note reference (9). Primary wait (0).
	db 84	; Primary instrument (13). Note reference (4). Primary wait (0).
	db 223	; Primary instrument (13). Same escaped note: 61. New wait (127).
	db 127	;   Escape wait value.

Rabbit_Subsong0_Track14
	db 12	; Note with effects flag.
	db 91	; Primary instrument (13). Note reference (11). Primary wait (0).
	db 2	;    Volume effect, with inverted volume: 0.
	db 12	; Note with effects flag.
	db 82	; Primary instrument (13). Note reference (2). Primary wait (0).
	db 34	;    Volume effect, with inverted volume: 2.
	db 12	; Note with effects flag.
	db 84	; Primary instrument (13). Note reference (4). Primary wait (0).
	db 66	;    Volume effect, with inverted volume: 4.
	db 12	; Note with effects flag.
	db 128	; Note reference (0). Secondary wait (1).
	db 2	;    Volume effect, with inverted volume: 0.
	db 157	; Effect only. Secondary wait (1).
	db 18	;    Volume effect, with inverted volume: 1.
	db 157	; Effect only. Secondary wait (1).
	db 34	;    Volume effect, with inverted volume: 2.
	db 157	; Effect only. Secondary wait (1).
	db 50	;    Volume effect, with inverted volume: 3.
	db 93	; Effect only. Primary wait (0).
	db 66	;    Volume effect, with inverted volume: 4.
	db 12	; Note with effects flag.
	db 184	; New instrument (12). Note reference (8). Secondary wait (1).
	db 12	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 93	; Effect only. Primary wait (0).
	db 18	;    Volume effect, with inverted volume: 1.
	db 12	; Note with effects flag.
	db 136	; Note reference (8). Secondary wait (1).
	db 2	;    Volume effect, with inverted volume: 0.
	db 93	; Effect only. Primary wait (0).
	db 18	;    Volume effect, with inverted volume: 1.
	db 12	; Note with effects flag.
	db 184	; New instrument (7). Note reference (8). Secondary wait (1).
	db 7	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 93	; Effect only. Primary wait (0).
	db 18	;    Volume effect, with inverted volume: 1.
	db 12	; Note with effects flag.
	db 136	; Note reference (8). Secondary wait (1).
	db 2	;    Volume effect, with inverted volume: 0.
	db 157	; Effect only. Secondary wait (1).
	db 18	;    Volume effect, with inverted volume: 1.
	db 157	; Effect only. Secondary wait (1).
	db 34	;    Volume effect, with inverted volume: 2.
	db 12	; Note with effects flag.
	db 176	; New instrument (2). Note reference (0). Secondary wait (1).
	db 2	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 157	; Effect only. Secondary wait (1).
	db 18	;    Volume effect, with inverted volume: 1.
	db 157	; Effect only. Secondary wait (1).
	db 34	;    Volume effect, with inverted volume: 2.
	db 157	; Effect only. Secondary wait (1).
	db 50	;    Volume effect, with inverted volume: 3.
	db 93	; Effect only. Primary wait (0).
	db 66	;    Volume effect, with inverted volume: 4.
	db 12	; Note with effects flag.
	db 184	; New instrument (12). Note reference (8). Secondary wait (1).
	db 12	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 93	; Effect only. Primary wait (0).
	db 18	;    Volume effect, with inverted volume: 1.
	db 12	; Note with effects flag.
	db 136	; Note reference (8). Secondary wait (1).
	db 2	;    Volume effect, with inverted volume: 0.
	db 93	; Effect only. Primary wait (0).
	db 18	;    Volume effect, with inverted volume: 1.
	db 12	; Note with effects flag.
	db 184	; New instrument (7). Note reference (8). Secondary wait (1).
	db 7	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 93	; Effect only. Primary wait (0).
	db 18	;    Volume effect, with inverted volume: 1.
	db 12	; Note with effects flag.
	db 136	; Note reference (8). Secondary wait (1).
	db 2	;    Volume effect, with inverted volume: 0.
	db 221	; Effect only. New wait (127).
	db 127	;   Escape wait value.
	db 18	;    Volume effect, with inverted volume: 1.

Rabbit_Subsong0DisarkByteRegionEnd5
; The note indexes.
Rabbit_Subsong0_NoteIndexes
Rabbit_Subsong0DisarkByteRegionStart6
	db 50	; Note for index 0.
	db 57	; Note for index 1.
	db 62	; Note for index 2.
	db 55	; Note for index 3.
	db 65	; Note for index 4.
	db 26	; Note for index 5.
	db 53	; Note for index 6.
	db 48	; Note for index 7.
	db 46	; Note for index 8.
	db 67	; Note for index 9.
	db 64	; Note for index 10.
	db 69	; Note for index 11.
Rabbit_Subsong0DisarkByteRegionEnd6

