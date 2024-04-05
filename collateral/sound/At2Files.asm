PLY_AKM_REGISTERS_OFFSETVOLUME = .+1
PLY_AKM_OFFSET1B = .+1
PLY_AKM_STOP_SOUNDS = .+1
PLY_AKM_USE_HOOKS = .+1
PLY_AKM_DATA_OFFSETPTSTARTTRACK = .+1
RABBIT_START:
_RABBIT_START::
PLY_AKM_DATA_OFFSETWAITEMPTYCELL: .dw RABBIT_INSTRUMENTINDEXES
PLY_AKM_DATA_OFFSETPTTRACK = .+1
PLY_AKM_SOUNDEFFECTDATA_OFFSETCURRENTSTEP = .+1
PLY_AKM_SOUNDEFFECTDATA_OFFSETINVERTEDVOLUME:
PLY_AKM_OFFSET2B: .dw 0
PLY_AKM_DATA_OFFSETBASENOTE = .+1
PLY_AKM_REGISTERS_OFFSETSOFTWAREPERIODLSB = .+1
PLY_AKM_SOUNDEFFECTDATA_OFFSETSPEED: .dw 0
PLY_AKM_DATA_OFFSETESCAPEINSTRUMENT = .+1
PLY_AKM_DATA_OFFSETESCAPENOTE: .dw RABBIT_ARPEGGIOINDEXES
PLY_AKM_DATA_OFFSETPTINSTRUMENT = .+1
PLY_AKM_REGISTERS_OFFSETSOFTWAREPERIODMSB = .+1
RABBIT_INSTRUMENTINDEXES:
PLY_AKM_CHANNEL_SOUNDEFFECTDATASIZE:
PLY_AKM_DATA_OFFSETESCAPEWAIT:
PLY_AKM_DATA_OFFSETSECONDARYINSTRUMENT: .dw RABBIT_INSTRUMENT0
PLY_AKM_DATA_OFFSETINSTRUMENTCURRENTSTEP = .+1
    .dw RABBIT_INSTRUMENT1
PLY_AKM_DATA_OFFSETTRACKINVERTEDVOLUME = .+1
PLY_AKM_DATA_OFFSETINSTRUMENTSPEED: .dw RABBIT_INSTRUMENT2
PLY_AKM_TRACK1_DATA_SIZE: .dw RABBIT_INSTRUMENT3
    .dw RABBIT_INSTRUMENT4
    .dw RABBIT_INSTRUMENT5
    .dw RABBIT_INSTRUMENT6
    .dw RABBIT_INSTRUMENT7
    .dw RABBIT_INSTRUMENT8
    .dw RABBIT_INSTRUMENT9
    .dw RABBIT_INSTRUMENT10
    .dw RABBIT_INSTRUMENT11
    .dw RABBIT_INSTRUMENT12
    .dw RABBIT_INSTRUMENT13
RABBIT_INSTRUMENT0: .db 255
RABBIT_INSTRUMENT0LOOP: .db 0
    .db 4
    .dw RABBIT_INSTRUMENT0LOOP
RABBIT_INSTRUMENT1: .db 0
    .db 189
    .db 1
    .db 7
    .db 57
    .db 53
RABBIT_INSTRUMENT1LOOP: .db 49
    .db 4
    .dw RABBIT_INSTRUMENT1LOOP
RABBIT_INSTRUMENT2: .db 0
    .db 181
    .db 1
    .db 1
    .db 177
    .db 7
    .db 1
    .db 173
    .db 14
RABBIT_INSTRUMENT2LOOP: .db 41
    .db 169
    .db 6
    .db 169
    .db 14
    .db 4
    .dw RABBIT_INSTRUMENT2LOOP
RABBIT_INSTRUMENT3: .db 0
    .db 181
    .db 1
    .db 1
    .db 177
    .db 11
    .db 1
    .db 173
    .db 18
RABBIT_INSTRUMENT3LOOP: .db 41
    .db 169
    .db 10
    .db 169
    .db 18
    .db 4
    .dw RABBIT_INSTRUMENT3LOOP
RABBIT_INSTRUMENT4: .db 0
    .db 45
    .db 125
    .db 255
    .db 255
RABBIT_INSTRUMENT4LOOP: .db 117
    .db 255
    .db 255
    .db 49
    .db 109
    .db 1
    .db 0
    .db 105
    .db 1
    .db 0
    .db 45
    .db 113
    .db 255
    .db 255
    .db 4
    .dw RABBIT_INSTRUMENT4LOOP
RABBIT_INSTRUMENT5: .db 0
    .db 181
    .db 1
    .db 1
    .db 177
    .db 11
    .db 1
    .db 173
    .db 16
RABBIT_INSTRUMENT5LOOP: .db 41
    .db 169
    .db 10
    .db 169
    .db 16
    .db 4
    .dw RABBIT_INSTRUMENT5LOOP
RABBIT_INSTRUMENT6: .db 0
    .db 181
    .db 1
    .db 1
    .db 177
    .db 7
    .db 1
    .db 173
    .db 16
RABBIT_INSTRUMENT6LOOP: .db 41
    .db 169
    .db 6
    .db 169
    .db 16
    .db 4
    .dw RABBIT_INSTRUMENT6LOOP
RABBIT_INSTRUMENT7: .db 0
    .db 181
    .db 1
    .db 1
    .db 177
    .db 9
    .db 1
    .db 173
    .db 14
RABBIT_INSTRUMENT7LOOP: .db 41
    .db 169
    .db 8
    .db 169
    .db 14
    .db 4
    .dw RABBIT_INSTRUMENT7LOOP
RABBIT_INSTRUMENT8: .db 0
    .db 181
    .db 1
    .db 1
    .db 177
    .db 9
    .db 1
    .db 173
    .db 16
RABBIT_INSTRUMENT8LOOP: .db 41
    .db 169
    .db 8
    .db 169
    .db 16
    .db 4
    .dw RABBIT_INSTRUMENT8LOOP
RABBIT_INSTRUMENT9: .db 0
    .db 181
    .db 1
    .db 1
    .db 177
    .db 7
    .db 1
    .db 173
    .db 12
RABBIT_INSTRUMENT9LOOP: .db 41
    .db 169
    .db 6
    .db 169
    .db 12
    .db 4
    .dw RABBIT_INSTRUMENT9LOOP
RABBIT_INSTRUMENT10: .db 2
RABBIT_INSTRUMENT10LOOP: .db 109
    .db 254
    .db 255
    .db 173
    .db 232
    .db 4
    .dw RABBIT_INSTRUMENT10LOOP
RABBIT_INSTRUMENT11: .db 0
    .db 181
    .db 1
    .db 1
    .db 177
    .db 7
    .db 1
    .db 173
    .db 10
RABBIT_INSTRUMENT11LOOP: .db 41
    .db 169
    .db 6
    .db 169
    .db 10
    .db 4
    .dw RABBIT_INSTRUMENT11LOOP
RABBIT_INSTRUMENT12: .db 0
    .db 181
    .db 1
    .db 1
    .db 177
    .db 9
    .db 1
    .db 173
    .db 18
RABBIT_INSTRUMENT12LOOP: .db 41
    .db 169
    .db 8
    .db 169
    .db 18
    .db 4
    .dw RABBIT_INSTRUMENT12LOOP
RABBIT_INSTRUMENT13: .db 0
    .db 109
    .db 255
    .db 255
    .db 37
    .db 93
    .db 1
    .db 0
    .db 21
    .db 77
    .db 255
    .db 255
    .db 5
    .db 69
    .db 1
    .db 0
RABBIT_INSTRUMENT13LOOP: .db 5
    .db 4
    .dw RABBIT_INSTRUMENT13LOOP
RABBIT_ARPEGGIOINDEXES:
RABBIT_PITCHINDEXES:
RABBIT_SUBSONG0: .dw RABBIT_SUBSONG0_NOTEINDEXES
    .dw RABBIT_SUBSONG0_TRACKINDEXES
    .db 6
    .db 13
    .db 4
    .db 0
    .db 1
    .db 70
    .db 2
    .db 3
    .db 12
    .db 170
    .db 47
    .db 129
    .db 128
    .db 128
RABBIT_SUBSONG0_LOOP: .db 0
    .db 128
    .db 0
    .db 244
    .db 128
    .db 1
    .db 240
    .db 136
    .db 133
    .db 1
    .db 113
    .db 168
    .db 132
    .db 130
    .db 131
    .db 0
    .db 168
    .db 134
    .db 135
    .db 136
    .db 168
    .db 129
    .db 128
    .db 0
    .db 223
    .db 160
    .db 137
    .db 1
    .db 218
    .db 168
    .db 133
    .db 5
    .db 63
    .db 1
    .db 89
    .db 168
    .db 5
    .db 111
    .db 130
    .db 131
    .db 8
    .db 132
    .db 168
    .db 134
    .db 135
    .db 136
    .db 168
    .db 129
    .db 137
    .db 128
    .db 0
    .db 40
    .db 133
    .db 5
    .db 41
    .db 168
    .db 132
    .db 130
    .db 131
    .db 0
    .db 168
    .db 134
    .db 135
    .db 136
    .db 1
    .db 0
    .dw RABBIT_SUBSONG0_LOOP
RABBIT_SUBSONG0_TRACKINDEXES: .dw RABBIT_SUBSONG0_TRACK8
    .dw RABBIT_SUBSONG0_TRACK0
    .dw RABBIT_SUBSONG0_TRACK6
    .dw RABBIT_SUBSONG0_TRACK7
    .dw RABBIT_SUBSONG0_TRACK5
    .dw RABBIT_SUBSONG0_TRACK4
    .dw RABBIT_SUBSONG0_TRACK11
    .dw RABBIT_SUBSONG0_TRACK9
    .dw RABBIT_SUBSONG0_TRACK10
    .dw RABBIT_SUBSONG0_TRACK12
RABBIT_SUBSONG0_TRACK0: .db 12
    .db 126
    .db 14
    .db 1
    .db 2
    .db 12
    .db 112
    .db 2
    .db 98
    .db 12
    .db 64
    .db 2
    .db 117
    .db 1
    .db 12
    .db 112
    .db 2
    .db 98
    .db 12
    .db 64
    .db 2
    .db 127
    .db 1
    .db 12
    .db 112
    .db 2
    .db 98
    .db 12
    .db 64
    .db 2
    .db 117
    .db 1
    .db 12
    .db 112
    .db 2
    .db 98
    .db 12
    .db 64
    .db 2
    .db 126
    .db 17
    .db 1
    .db 12
    .db 112
    .db 2
    .db 98
    .db 12
    .db 119
    .db 3
    .db 2
    .db 126
    .db 29
    .db 1
    .db 12
    .db 119
    .db 3
    .db 98
    .db 12
    .db 71
    .db 2
    .db 126
    .db 17
    .db 1
    .db 12
    .db 119
    .db 3
    .db 98
    .db 12
    .db 71
    .db 2
    .db 126
    .db 29
    .db 1
    .db 12
    .db 119
    .db 3
    .db 98
    .db 12
    .db 71
    .db 2
    .db 126
    .db 19
    .db 1
    .db 12
    .db 119
    .db 3
    .db 98
    .db 12
    .db 112
    .db 5
    .db 2
    .db 126
    .db 31
    .db 1
    .db 12
    .db 112
    .db 5
    .db 98
    .db 12
    .db 64
    .db 2
    .db 126
    .db 19
    .db 1
    .db 12
    .db 112
    .db 5
    .db 98
    .db 12
    .db 64
    .db 2
    .db 126
    .db 31
    .db 1
    .db 12
    .db 112
    .db 5
    .db 98
    .db 12
    .db 64
    .db 2
    .db 126
    .db 14
    .db 1
    .db 12
    .db 112
    .db 5
    .db 98
    .db 12
    .db 112
    .db 2
    .db 2
    .db 117
    .db 1
    .db 12
    .db 112
    .db 2
    .db 98
    .db 12
    .db 64
    .db 2
    .db 127
    .db 1
    .db 12
    .db 112
    .db 2
    .db 98
    .db 12
    .db 64
    .db 2
    .db 117
    .db 1
    .db 12
    .db 112
    .db 2
    .db 98
    .db 12
    .db 192
    .db 127
    .db 2
RABBIT_SUBSONG0_TRACK1: .db 12
    .db 96
    .db 2
    .db 12
    .db 96
    .db 18
    .db 12
    .db 110
    .db 52
    .db 2
    .db 102
    .db 12
    .db 102
    .db 18
    .db 12
    .db 99
    .db 2
    .db 97
    .db 12
    .db 97
    .db 18
    .db 12
    .db 97
    .db 34
    .db 12
    .db 97
    .db 50
    .db 12
    .db 97
    .db 66
    .db 12
    .db 97
    .db 82
    .db 12
    .db 97
    .db 98
    .db 12
    .db 97
    .db 114
    .db 12
    .db 110
    .db 58
    .db 2
    .db 97
    .db 12
    .db 97
    .db 18
    .db 12
    .db 99
    .db 2
    .db 97
    .db 12
    .db 97
    .db 18
    .db 12
    .db 97
    .db 34
    .db 12
    .db 97
    .db 50
    .db 12
    .db 97
    .db 66
    .db 12
    .db 97
    .db 2
    .db 99
    .db 12
    .db 99
    .db 18
    .db 12
    .db 99
    .db 34
    .db 12
    .db 99
    .db 2
    .db 12
    .db 99
    .db 18
    .db 12
    .db 99
    .db 34
    .db 12
    .db 99
    .db 2
    .db 12
    .db 99
    .db 18
    .db 12
    .db 99
    .db 34
    .db 12
    .db 96
    .db 2
    .db 12
    .db 96
    .db 18
    .db 12
    .db 110
    .db 52
    .db 2
    .db 102
    .db 12
    .db 102
    .db 18
    .db 12
    .db 99
    .db 2
    .db 102
    .db 12
    .db 102
    .db 18
    .db 12
    .db 111
    .db 2
    .db 102
    .db 12
    .db 102
    .db 18
    .db 12
    .db 102
    .db 34
    .db 12
    .db 102
    .db 50
    .db 12
    .db 102
    .db 66
    .db 12
    .db 239
    .db 127
    .db 2
RABBIT_SUBSONG0_TRACK2: .db 12
    .db 114
    .db 5
    .db 2
    .db 93
    .db 98
    .db 93
    .db 114
    .db 12
    .db 66
    .db 2
    .db 93
    .db 98
    .db 93
    .db 114
    .db 12
    .db 114
    .db 6
    .db 2
    .db 93
    .db 98
    .db 93
    .db 114
    .db 12
    .db 66
    .db 2
    .db 93
    .db 98
    .db 93
    .db 114
    .db 12
    .db 114
    .db 2
    .db 2
    .db 93
    .db 98
    .db 93
    .db 114
    .db 12
    .db 66
    .db 2
    .db 93
    .db 98
    .db 93
    .db 114
    .db 12
    .db 114
    .db 11
    .db 2
    .db 93
    .db 98
    .db 93
    .db 114
    .db 12
    .db 66
    .db 2
    .db 93
    .db 98
    .db 93
    .db 114
    .db 12
    .db 126
    .db 60
    .db 12
    .db 2
    .db 93
    .db 98
    .db 93
    .db 114
    .db 12
    .db 79
    .db 2
    .db 93
    .db 98
    .db 93
    .db 114
    .db 12
    .db 127
    .db 7
    .db 2
    .db 93
    .db 98
    .db 93
    .db 114
    .db 12
    .db 79
    .db 2
    .db 93
    .db 98
    .db 93
    .db 114
    .db 12
    .db 126
    .db 61
    .db 8
    .db 2
    .db 93
    .db 98
    .db 93
    .db 114
    .db 12
    .db 79
    .db 2
    .db 93
    .db 98
    .db 93
    .db 114
    .db 12
    .db 127
    .db 9
    .db 2
    .db 93
    .db 98
    .db 93
    .db 114
    .db 12
    .db 79
    .db 2
    .db 93
    .db 98
    .db 221
    .db 127
    .db 114
RABBIT_SUBSONG0_TRACK3: .db 12
    .db 96
    .db 2
    .db 12
    .db 96
    .db 18
    .db 12
    .db 110
    .db 52
    .db 2
    .db 102
    .db 12
    .db 102
    .db 18
    .db 12
    .db 99
    .db 2
    .db 97
    .db 12
    .db 97
    .db 18
    .db 12
    .db 97
    .db 34
    .db 12
    .db 97
    .db 50
    .db 12
    .db 97
    .db 66
    .db 12
    .db 97
    .db 82
    .db 12
    .db 97
    .db 98
    .db 12
    .db 97
    .db 114
    .db 12
    .db 110
    .db 58
    .db 2
    .db 97
    .db 12
    .db 97
    .db 18
    .db 12
    .db 99
    .db 2
    .db 97
    .db 12
    .db 97
    .db 18
    .db 12
    .db 97
    .db 34
    .db 12
    .db 97
    .db 50
    .db 12
    .db 97
    .db 66
    .db 12
    .db 97
    .db 2
    .db 99
    .db 12
    .db 99
    .db 18
    .db 12
    .db 99
    .db 34
    .db 12
    .db 99
    .db 2
    .db 12
    .db 99
    .db 18
    .db 12
    .db 99
    .db 34
    .db 12
    .db 99
    .db 2
    .db 12
    .db 99
    .db 18
    .db 12
    .db 99
    .db 34
    .db 12
    .db 96
    .db 2
    .db 12
    .db 96
    .db 18
    .db 12
    .db 110
    .db 52
    .db 2
    .db 102
    .db 12
    .db 102
    .db 18
    .db 12
    .db 99
    .db 2
    .db 102
    .db 12
    .db 102
    .db 18
    .db 12
    .db 111
    .db 2
    .db 96
    .db 12
    .db 96
    .db 34
    .db 12
    .db 96
    .db 66
    .db 12
    .db 96
    .db 98
    .db 12
    .db 96
    .db 130
    .db 12
    .db 224
    .db 127
    .db 162
RABBIT_SUBSONG0_TRACK4: .db 12
    .db 126
    .db 10
    .db 1
    .db 2
    .db 12
    .db 126
    .db 14
    .db 5
    .db 98
    .db 12
    .db 64
    .db 2
    .db 126
    .db 22
    .db 1
    .db 12
    .db 112
    .db 5
    .db 98
    .db 12
    .db 64
    .db 2
    .db 126
    .db 10
    .db 1
    .db 12
    .db 112
    .db 5
    .db 98
    .db 12
    .db 112
    .db 6
    .db 2
    .db 126
    .db 22
    .db 1
    .db 12
    .db 112
    .db 6
    .db 98
    .db 12
    .db 64
    .db 2
    .db 126
    .db 11
    .db 1
    .db 12
    .db 112
    .db 6
    .db 98
    .db 12
    .db 112
    .db 2
    .db 2
    .db 126
    .db 23
    .db 1
    .db 12
    .db 112
    .db 2
    .db 98
    .db 12
    .db 64
    .db 2
    .db 126
    .db 11
    .db 1
    .db 12
    .db 112
    .db 2
    .db 98
    .db 12
    .db 112
    .db 11
    .db 2
    .db 126
    .db 23
    .db 1
    .db 12
    .db 112
    .db 11
    .db 98
    .db 12
    .db 64
    .db 2
    .db 126
    .db 12
    .db 1
    .db 12
    .db 112
    .db 11
    .db 98
    .db 12
    .db 119
    .db 12
    .db 2
    .db 126
    .db 24
    .db 1
    .db 12
    .db 119
    .db 12
    .db 98
    .db 12
    .db 71
    .db 2
    .db 126
    .db 12
    .db 1
    .db 12
    .db 119
    .db 12
    .db 98
    .db 12
    .db 119
    .db 7
    .db 2
    .db 126
    .db 24
    .db 1
    .db 12
    .db 119
    .db 7
    .db 98
    .db 12
    .db 71
    .db 2
    .db 126
    .db 13
    .db 1
    .db 12
    .db 119
    .db 7
    .db 98
    .db 12
    .db 126
    .db 49
    .db 8
    .db 2
    .db 126
    .db 25
    .db 1
    .db 12
    .db 126
    .db 49
    .db 8
    .db 98
    .db 12
    .db 79
    .db 2
    .db 126
    .db 13
    .db 1
    .db 12
    .db 126
    .db 49
    .db 8
    .db 98
    .db 12
    .db 127
    .db 9
    .db 2
    .db 126
    .db 25
    .db 1
    .db 12
    .db 126
    .db 49
    .db 9
    .db 98
    .db 12
    .db 207
    .db 127
    .db 2
RABBIT_SUBSONG0_TRACK5: .db 205
    .db 2
    .db 12
    .db 128
    .db 2
    .db 157
    .db 18
    .db 157
    .db 34
    .db 157
    .db 50
    .db 93
    .db 66
    .db 12
    .db 184
    .db 12
    .db 2
    .db 93
    .db 18
    .db 12
    .db 136
    .db 2
    .db 93
    .db 18
    .db 12
    .db 184
    .db 7
    .db 2
    .db 93
    .db 18
    .db 12
    .db 136
    .db 2
    .db 157
    .db 18
    .db 157
    .db 34
    .db 12
    .db 176
    .db 2
    .db 2
    .db 157
    .db 18
    .db 157
    .db 34
    .db 157
    .db 50
    .db 93
    .db 66
    .db 12
    .db 184
    .db 12
    .db 2
    .db 93
    .db 18
    .db 12
    .db 136
    .db 2
    .db 93
    .db 18
    .db 12
    .db 184
    .db 7
    .db 2
    .db 93
    .db 18
    .db 12
    .db 136
    .db 2
    .db 221
    .db 127
    .db 18
RABBIT_SUBSONG0_TRACK6: .db 12
    .db 181
    .db 10
    .db 2
    .db 93
    .db 18
    .db 12
    .db 133
    .db 2
    .db 157
    .db 18
    .db 157
    .db 34
    .db 157
    .db 50
    .db 93
    .db 66
    .db 12
    .db 142
    .db 31
    .db 2
    .db 93
    .db 18
    .db 12
    .db 143
    .db 2
    .db 93
    .db 18
    .db 12
    .db 142
    .db 34
    .db 2
    .db 93
    .db 18
    .db 12
    .db 143
    .db 2
    .db 93
    .db 18
    .db 12
    .db 133
    .db 2
    .db 93
    .db 18
    .db 12
    .db 133
    .db 2
    .db 157
    .db 18
    .db 157
    .db 34
    .db 157
    .db 50
    .db 93
    .db 66
    .db 12
    .db 143
    .db 2
    .db 93
    .db 18
    .db 12
    .db 143
    .db 2
    .db 93
    .db 18
    .db 12
    .db 142
    .db 31
    .db 2
    .db 93
    .db 18
    .db 12
    .db 143
    .db 2
    .db 221
    .db 127
    .db 18
RABBIT_SUBSONG0_TRACK7: .db 12
    .db 64
    .db 2
    .db 93
    .db 98
    .db 12
    .db 66
    .db 2
    .db 93
    .db 98
    .db 93
    .db 18
    .db 93
    .db 98
    .db 93
    .db 34
    .db 93
    .db 98
    .db 93
    .db 50
    .db 93
    .db 98
    .db 93
    .db 66
    .db 93
    .db 98
    .db 93
    .db 114
    .db 93
    .db 130
    .db 93
    .db 2
    .db 93
    .db 98
    .db 93
    .db 18
    .db 93
    .db 98
    .db 93
    .db 34
    .db 93
    .db 98
    .db 93
    .db 50
    .db 93
    .db 98
    .db 93
    .db 66
    .db 93
    .db 98
    .db 12
    .db 64
    .db 2
    .db 93
    .db 98
    .db 12
    .db 66
    .db 2
    .db 93
    .db 98
    .db 93
    .db 18
    .db 93
    .db 98
    .db 93
    .db 34
    .db 93
    .db 98
    .db 93
    .db 50
    .db 93
    .db 98
    .db 93
    .db 66
    .db 93
    .db 98
    .db 93
    .db 114
    .db 93
    .db 98
    .db 93
    .db 2
    .db 93
    .db 98
    .db 93
    .db 18
    .db 93
    .db 98
    .db 93
    .db 34
    .db 93
    .db 98
    .db 93
    .db 50
    .db 93
    .db 98
    .db 93
    .db 66
    .db 221
    .db 127
    .db 98
RABBIT_SUBSONG0_TRACK8: .db 205
    .db 127
RABBIT_SUBSONG0_TRACK9: .db 12
    .db 181
    .db 10
    .db 2
    .db 157
    .db 18
    .db 157
    .db 34
    .db 157
    .db 50
    .db 157
    .db 66
    .db 157
    .db 82
    .db 157
    .db 98
    .db 157
    .db 114
    .db 157
    .db 130
    .db 157
    .db 146
    .db 157
    .db 162
    .db 157
    .db 178
    .db 157
    .db 194
    .db 157
    .db 210
    .db 157
    .db 226
    .db 221
    .db 127
    .db 242
RABBIT_SUBSONG0_TRACK10: .db 93
    .db 114
    .db 93
    .db 130
    .db 12
    .db 66
    .db 2
    .db 93
    .db 98
    .db 93
    .db 18
    .db 93
    .db 98
    .db 93
    .db 34
    .db 93
    .db 98
    .db 93
    .db 50
    .db 93
    .db 114
    .db 93
    .db 66
    .db 93
    .db 130
    .db 93
    .db 82
    .db 93
    .db 98
    .db 93
    .db 146
    .db 93
    .db 114
    .db 93
    .db 162
    .db 93
    .db 130
    .db 93
    .db 178
    .db 93
    .db 146
    .db 93
    .db 194
    .db 93
    .db 162
    .db 93
    .db 210
    .db 93
    .db 178
    .db 93
    .db 226
    .db 93
    .db 194
    .db 93
    .db 242
    .db 93
    .db 210
    .db 93
    .db 242
    .db 93
    .db 226
    .db 221
    .db 127
    .db 242
RABBIT_SUBSONG0_TRACK11: .db 12
    .db 128
    .db 2
    .db 157
    .db 18
    .db 12
    .db 128
    .db 34
    .db 93
    .db 50
    .db 64
    .db 93
    .db 66
    .db 117
    .db 1
    .db 12
    .db 176
    .db 2
    .db 82
    .db 12
    .db 126
    .db 14
    .db 1
    .db 50
    .db 12
    .db 112
    .db 2
    .db 98
    .db 93
    .db 114
    .db 12
    .db 117
    .db 1
    .db 34
    .db 12
    .db 176
    .db 2
    .db 130
    .db 12
    .db 127
    .db 1
    .db 18
    .db 12
    .db 112
    .db 2
    .db 146
    .db 93
    .db 162
    .db 12
    .db 117
    .db 1
    .db 2
    .db 12
    .db 112
    .db 2
    .db 178
    .db 12
    .db 117
    .db 1
    .db 34
    .db 12
    .db 79
    .db 2
    .db 157
    .db 242
    .db 12
    .db 69
    .db 2
    .db 157
    .db 242
    .db 12
    .db 79
    .db 2
    .db 157
    .db 242
    .db 12
    .db 69
    .db 2
    .db 157
    .db 242
    .db 12
    .db 79
    .db 2
    .db 157
    .db 242
    .db 12
    .db 69
    .db 2
    .db 157
    .db 242
    .db 12
    .db 79
    .db 2
    .db 157
    .db 242
    .db 12
    .db 69
    .db 2
    .db 221
    .db 127
    .db 34
RABBIT_SUBSONG0_TRACK12: .db 12
    .db 82
    .db 2
    .db 81
    .db 12
    .db 82
    .db 50
    .db 12
    .db 90
    .db 2
    .db 81
    .db 12
    .db 90
    .db 50
    .db 12
    .db 84
    .db 2
    .db 81
    .db 12
    .db 84
    .db 50
    .db 12
    .db 89
    .db 2
    .db 81
    .db 12
    .db 89
    .db 50
    .db 12
    .db 82
    .db 2
    .db 81
    .db 12
    .db 82
    .db 50
    .db 12
    .db 90
    .db 2
    .db 81
    .db 12
    .db 90
    .db 50
    .db 12
    .db 84
    .db 2
    .db 81
    .db 12
    .db 84
    .db 50
    .db 12
    .db 89
    .db 2
    .db 81
    .db 12
    .db 89
    .db 50
    .db 12
    .db 91
    .db 2
    .db 94
    .db 58
    .db 12
    .db 91
    .db 50
    .db 12
    .db 89
    .db 2
    .db 95
    .db 12
    .db 89
    .db 50
    .db 12
    .db 84
    .db 2
    .db 95
    .db 12
    .db 84
    .db 50
    .db 12
    .db 90
    .db 2
    .db 95
    .db 12
    .db 90
    .db 50
    .db 12
    .db 82
    .db 2
    .db 81
    .db 12
    .db 82
    .db 50
    .db 12
    .db 90
    .db 2
    .db 81
    .db 12
    .db 90
    .db 50
    .db 12
    .db 82
    .db 2
    .db 81
    .db 12
    .db 82
    .db 50
    .db 12
    .db 82
    .db 2
    .db 81
    .db 12
    .db 210
    .db 127
    .db 50
RABBIT_SUBSONG0_TRACK13: .db 12
    .db 95
    .db 2
    .db 84
    .db 82
    .db 95
    .db 84
    .db 82
    .db 91
    .db 84
    .db 82
    .db 91
    .db 84
    .db 82
    .db 91
    .db 84
    .db 82
    .db 91
    .db 84
    .db 82
    .db 89
    .db 84
    .db 82
    .db 89
    .db 84
    .db 82
    .db 91
    .db 90
    .db 94
    .db 60
    .db 91
    .db 90
    .db 95
    .db 89
    .db 90
    .db 95
    .db 89
    .db 90
    .db 95
    .db 91
    .db 84
    .db 94
    .db 61
    .db 91
    .db 84
    .db 95
    .db 89
    .db 84
    .db 95
    .db 89
    .db 84
    .db 223
    .db 127
RABBIT_SUBSONG0_TRACK14: .db 12
    .db 91
    .db 2
    .db 12
    .db 82
    .db 34
    .db 12
    .db 84
    .db 66
    .db 12
    .db 128
    .db 2
    .db 157
    .db 18
    .db 157
    .db 34
    .db 157
    .db 50
    .db 93
    .db 66
    .db 12
    .db 184
    .db 12
    .db 2
    .db 93
    .db 18
    .db 12
    .db 136
    .db 2
    .db 93
    .db 18
    .db 12
    .db 184
    .db 7
    .db 2
    .db 93
    .db 18
    .db 12
    .db 136
    .db 2
    .db 157
    .db 18
    .db 157
    .db 34
    .db 12
    .db 176
    .db 2
    .db 2
    .db 157
    .db 18
    .db 157
    .db 34
    .db 157
    .db 50
    .db 93
    .db 66
    .db 12
    .db 184
    .db 12
    .db 2
    .db 93
    .db 18
    .db 12
    .db 136
    .db 2
    .db 93
    .db 18
    .db 12
    .db 184
    .db 7
    .db 2
    .db 93
    .db 18
    .db 12
    .db 136
    .db 2
    .db 221
    .db 127
    .db 18
RABBIT_SUBSONG0_NOTEINDEXES: .db 50
    .db 57
    .db 62
    .db 55
    .db 65
    .db 26
    .db 53
    .db 48
    .db 46
    .db 67
    .db 64
    .db 69
SOUNDEFFECTS_START:
_SOUNDEFFECTS_START:: .dw SOUNDEFFECTS_INSTRUMENTINDEXES
    .dw 0
    .dw 0
    .dw SOUNDEFFECTS_ARPEGGIOINDEXES
SOUNDEFFECTS_INSTRUMENTINDEXES: .dw SOUNDEFFECTS_INSTRUMENT0
    .dw SOUNDEFFECTS_INSTRUMENT1
    .dw SOUNDEFFECTS_INSTRUMENT2
    .dw SOUNDEFFECTS_INSTRUMENT3
    .dw SOUNDEFFECTS_INSTRUMENT4
    .dw SOUNDEFFECTS_INSTRUMENT5
SOUNDEFFECTS_INSTRUMENT0: .db 255
SOUNDEFFECTS_INSTRUMENT0LOOP: .db 0
    .db 4
    .dw SOUNDEFFECTS_INSTRUMENT0LOOP
SOUNDEFFECTS_INSTRUMENT1: .db 0
    .db 189
    .db 1
    .db 1
    .db 253
    .db 1
    .db 1
    .db 4
    .db 0
    .db 241
    .db 1
    .db 1
    .db 7
    .db 0
    .db 237
    .db 1
    .db 1
    .db 11
    .db 0
    .db 4
    .dw SOUNDEFFECTS_INSTRUMENT0LOOP
SOUNDEFFECTS_INSTRUMENT2: .db 1
    .db 189
    .db 225
    .db 1
    .db 189
    .db 223
    .db 8
    .db 185
    .db 215
    .db 2
    .db 181
    .db 237
    .db 16
    .db 177
    .db 235
    .db 2
    .db 173
    .db 233
    .db 2
    .db 165
    .db 219
    .db 16
    .db 157
    .db 1
    .db 31
    .db 153
    .db 15
    .db 7
    .db 4
    .dw SOUNDEFFECTS_INSTRUMENT0LOOP
SOUNDEFFECTS_INSTRUMENT3: .db 1
    .db 189
    .db 25
    .db 1
    .db 185
    .db 48
    .db 181
    .db 33
    .db 1
    .db 177
    .db 56
    .db 185
    .db 39
    .db 1
    .db 189
    .db 62
    .db 210
    .db 244
    .db 61
    .db 210
    .db 244
    .db 61
    .db 210
    .db 244
    .db 61
    .db 210
    .db 232
    .db 61
    .db 210
    .db 232
    .db 61
    .db 4
    .dw SOUNDEFFECTS_INSTRUMENT0LOOP
SOUNDEFFECTS_INSTRUMENT4: .db 1
    .db 189
    .db 1
    .db 1
    .db 189
    .db 26
    .db 189
    .db 5
    .db 1
    .db 189
    .db 28
    .db 189
    .db 6
    .db 189
    .db 30
    .db 4
    .dw SOUNDEFFECTS_INSTRUMENT0LOOP
SOUNDEFFECTS_INSTRUMENT5: .db 1
    .db 194
    .db 38
    .db 194
    .db 28
    .db 194
    .db 36
    .db 194
    .db 20
    .db 194
    .db 28
    .db 194
    .db 12
    .db 194
    .db 20
    .db 194
    .db 4
    .db 194
    .db 12
    .db 194
    .db 252
    .db 194
    .db 4
    .db 194
    .db 242
    .db 194
    .db 235
    .db 4
    .dw SOUNDEFFECTS_INSTRUMENT0LOOP
SOUNDEFFECTS_ARPEGGIOINDEXES:
SOUNDEFFECTS_PITCHINDEXES:
SOUNDEFFECTS_SUBSONG0: .dw SOUNDEFFECTS_SUBSONG0_NOTEINDEXES
    .dw SOUNDEFFECTS_SUBSONG0_TRACKINDEXES
    .db 12
    .db 2
    .db 1
    .db 1
    .db 2
    .db 0
    .db 0
    .db 0
    .db 13
SOUNDEFFECTS_SUBSONG0_LOOP: .db 170
    .db 37
    .db 0
    .db 8
    .db 0
    .db 28
    .db 0
    .db 26
    .db 1
    .db 0
    .dw SOUNDEFFECTS_SUBSONG0_LOOP
SOUNDEFFECTS_SUBSONG0_TRACKINDEXES:
SOUNDEFFECTS_SUBSONG0_TRACK0: .db 97
    .db 33
    .db 97
    .db 33
    .db 97
    .db 80
    .db 16
    .db 16
    .db 80
    .db 80
    .db 178
    .db 3
    .db 194
    .db 3
    .db 176
    .db 4
    .db 128
    .db 128
    .db 178
    .db 5
    .db 194
    .db 127
SOUNDEFFECTS_SUBSONG0_TRACK1: .db 205
    .db 127
SOUNDEFFECTS_SUBSONG0_NOTEINDEXES: .db 60
    .db 64
    .db 48
PLY_AKM_START: jp PLY_AKM_INIT
    jp PLY_AKM_PLAY
    jp PLY_AKM_INITVARS_END
_PLY_AKM_INIT::
PLY_AKM_INIT: ld de,#PLY_AKM_READLINE+1
    ldi
    ldi
    inc hl
    inc hl
    inc hl
    inc hl
    add a,a
    ld e,a
    ld d,#0
    add hl,de
    ld a,(hl)
    inc hl
    ld h,(hl)
    ld l,a
    ld ix,#PLY_AKM_INITVARS_START
    ld a,#13
PLY_AKM_INITVARS_LOOP: ld e,+0(ix)
    ld d,+1(ix)
    inc ix
    inc ix
    ldi
    dec a
    jr nz,PLY_AKM_INITVARS_LOOP
    ld (PLY_AKM_PATTERNREMAININGHEIGHT+1),a
    ex de,hl
    ld hl,#PLY_AKM_PTLINKER+1
    ld (hl),e
    inc hl
    ld (hl),d
    ld hl,#PLY_AKM_TRACK1_DATA
    ld de,#PLY_AKM_TRACK1_PTSTARTTRACK
    ld bc,#41
    ld (hl),a
    ldir
    ld (PLY_AKM_RT_READEFFECTSFLAG+1),a
    ld a,(PLY_AKM_SPEED+1)
    dec a
    ld (PLY_AKM_TICKCOUNTER+1),a
    ld hl,(PLY_AKM_READLINE+1)
    ld e,(hl)
    inc hl
    ld d,(hl)
    inc de
    ld (PLY_AKM_TRACK1_PTINSTRUMENT),de
    ld (PLY_AKM_TRACK2_PTINSTRUMENT),de
    ld (PLY_AKM_TRACK3_PTINSTRUMENT),de
    ret 
PLY_AKM_INITVARS_START: .dw PLY_AKM_NOTEINDEXTABLE+1
    .dw PLY_AKM_NOTEINDEXTABLE+2
    .dw PLY_AKM_LINKER+1
    .dw PLY_AKM_LINKER+2
    .dw PLY_AKM_SPEED+1
    .dw PLY_AKM_RT_PRIMARYINSTRUMENT+1
    .dw PLY_AKM_RT_SECONDARYINSTRUMENT+1
    .dw PLY_AKM_RT_PRIMARYWAIT+1
    .dw PLY_AKM_RT_SECONDARYWAIT+1
    .dw PLY_AKM_DEFAULTSTARTNOTEINTRACKS+1
    .dw PLY_AKM_DEFAULTSTARTINSTRUMENTINTRACKS+1
    .dw PLY_AKM_DEFAULTSTARTWAITINTRACKS+1
    .dw PLY_AKM_FLAGNOTEANDEFFECTINCELL+1
PLY_AKM_INITVARS_END:
_PLY_AKM_STOP::
PLY_AKM_STOP: ld (PLY_AKM_SENDPSGREGISTEREND+1),sp
    xor a
    ld (PLY_AKM_TRACK1_VOLUME),a
    ld (PLY_AKM_TRACK2_VOLUME),a
    ld (PLY_AKM_TRACK3_VOLUME),a
    ld a,#63
    ld (PLY_AKM_MIXERREGISTER),a
    jp PLY_AKM_SENDPSG
_PLY_AKM_PLAY::
PLY_AKM_PLAY: ld (PLY_AKM_SENDPSGREGISTEREND+1),sp
PLY_AKM_TICKCOUNTER: ld a,#0
    inc a
PLY_AKM_SPEED: cp #1
    jp nz,PLY_AKM_TICKCOUNTERMANAGED
PLY_AKM_PATTERNREMAININGHEIGHT: ld a,#0
    sub #1
    jr c,PLY_AKM_LINKER
    ld (PLY_AKM_PATTERNREMAININGHEIGHT+1),a
    jr PLY_AKM_READLINE
PLY_AKM_LINKER:
PLY_AKM_TRACKINDEX: ld de,#0
    exx
PLY_AKM_PTLINKER: ld hl,#0
PLY_AKM_LINKERPOSTPT: xor a
    ld (PLY_AKM_TRACK1_DATA),a
    ld (PLY_AKM_TRACK1_DATA_END),a
    ld (PLY_AKM_TRACK2_DATA_END),a
PLY_AKM_DEFAULTSTARTNOTEINTRACKS: ld a,#0
    ld (PLY_AKM_TRACK1_ESCAPENOTE),a
    ld (PLY_AKM_TRACK2_ESCAPENOTE),a
    ld (PLY_AKM_TRACK3_ESCAPENOTE),a
PLY_AKM_DEFAULTSTARTINSTRUMENTINTRACKS: ld a,#0
    ld (PLY_AKM_TRACK1_ESCAPEINSTRUMENT),a
    ld (PLY_AKM_TRACK2_ESCAPEINSTRUMENT),a
    ld (PLY_AKM_TRACK3_ESCAPEINSTRUMENT),a
PLY_AKM_DEFAULTSTARTWAITINTRACKS: ld a,#0
    ld (PLY_AKM_TRACK1_ESCAPEWAIT),a
    ld (PLY_AKM_TRACK2_ESCAPEWAIT),a
    ld (PLY_AKM_TRACK3_ESCAPEWAIT),a
    ld b,(hl)
    inc hl
    rr b
    jr nc,PLY_AKM_LINKERAFTERSPEEDCHANGE
    ld a,(hl)
    inc hl
    ld a,(hl)
    inc hl
    ld h,(hl)
    ld l,a
    jr PLY_AKM_LINKERPOSTPT
PLY_AKM_LINKERAFTERSPEEDCHANGE: rr b
    jr nc,PLY_AKM_LINKERUSEPREVIOUSHEIGHT
    ld a,(hl)
    inc hl
    ld (PLY_AKM_LINKERUSEPREVIOUSHEIGHT+1),a
    jr PLY_AKM_LINKERSETREMAININGHEIGHT
PLY_AKM_LINKERUSEPREVIOUSHEIGHT:
PLY_AKM_LINKERPREVIOUSREMAININGHEIGHT: ld a,#0
PLY_AKM_LINKERSETREMAININGHEIGHT: ld (PLY_AKM_PATTERNREMAININGHEIGHT+1),a
    ld ix,#PLY_AKM_TRACK1_DATA
    call PLY_AKM_CHECKTRANSPOSITIONANDTRACK
    ld ix,#PLY_AKM_TRACK1_DATA_END
    call PLY_AKM_CHECKTRANSPOSITIONANDTRACK
    ld ix,#PLY_AKM_TRACK2_DATA_END
    call PLY_AKM_CHECKTRANSPOSITIONANDTRACK
    ld (PLY_AKM_PTLINKER+1),hl
PLY_AKM_READLINE:
PLY_AKM_PTINSTRUMENTS: ld de,#0
PLY_AKM_NOTEINDEXTABLE: ld bc,#0
    exx
    ld ix,#PLY_AKM_TRACK1_DATA
    call PLY_AKM_READTRACK
    ld ix,#PLY_AKM_TRACK1_DATA_END
    call PLY_AKM_READTRACK
    ld ix,#PLY_AKM_TRACK2_DATA_END
    call PLY_AKM_READTRACK
    xor a
PLY_AKM_TICKCOUNTERMANAGED: ld (PLY_AKM_TICKCOUNTER+1),a
    ld de,#PLY_AKM_PERIODTABLE
    exx
    ld c,#224
    ld ix,#PLY_AKM_TRACK1_DATA
    call PLY_AKM_MANAGEEFFECTS
    ld iy,#PLY_AKM_TRACK3_DATA_END
    call PLY_AKM_PLAYSOUNDSTREAM
    srl c
    ld ix,#PLY_AKM_TRACK1_DATA_END
    call PLY_AKM_MANAGEEFFECTS
    ld iy,#PLY_AKM_TRACK2_REGISTERS
    call PLY_AKM_PLAYSOUNDSTREAM
    rr c
    ld ix,#PLY_AKM_TRACK2_DATA_END
    call PLY_AKM_MANAGEEFFECTS
    ld iy,#PLY_AKM_TRACK3_REGISTERS
    call PLY_AKM_PLAYSOUNDSTREAM
    ld a,c
    ld (PLY_AKM_MIXERREGISTER),a
PLY_AKM_SENDPSG: ld sp,#PLY_AKM_TRACK3_DATA_END
    ld bc,#63104
    ld a,#192
    ld de,#62710
    out (c),a
PLY_AKM_SENDPSGREGISTER: pop hl
PLY_AKM_SENDPSGREGISTERAFTERPOP: ld b,d
    out (c),l
    ld b,e
    .db 237
    .db 113
    ld b,d
    out (c),h
    ld b,e
    out (c),c
    out (c),a
    ret 
PLY_AKM_SENDPSGREGISTERR13:
PLY_AKM_SETREG13: ld a,#0
PLY_AKM_SETREG13OLD: cp #0
    jr z,PLY_AKM_SENDPSGREGISTEREND
    ld (PLY_AKM_SETREG13OLD+1),a
    ld h,a
    ld l,#13
    ld a,#192
    ret 
PLY_AKM_SENDPSGREGISTEREND:
PLY_AKM_SAVESP: ld sp,#0
    ret 
PLY_AKM_CHECKTRANSPOSITIONANDTRACK: rr b
    rr b
    jr nc,PLY_AKM_CHECKTRANSPOSITIONANDTRACK_NONEWTRACK
    ld a,(hl)
    inc hl
    sla a
    jr nc,PLY_AKM_CHECKTRANSPOSITIONANDTRACK_TRACKOFFSET
    exx
    ld l,a
    ld h,#0
    add hl,de
    ld a,(hl)
    ld +1(ix),a
    ld +3(ix),a
    inc hl
    ld a,(hl)
    ld +2(ix),a
    ld +4(ix),a
    exx
    ret 
PLY_AKM_CHECKTRANSPOSITIONANDTRACK_TRACKOFFSET: rra 
    ld d,a
    ld e,(hl)
    inc hl
    ld c,l
    ld a,h
    add hl,de
    .db 221
    .db 117
    .db 1
    .db 221
    .db 116
    .db 2
    .db 221
    .db 117
    .db 3
    .db 221
    .db 116
    .db 4
    ld l,c
    ld h,a
    ret 
PLY_AKM_CHECKTRANSPOSITIONANDTRACK_NONEWTRACK: ld a,+1(ix)
    ld +3(ix),a
    ld a,+2(ix)
    ld +4(ix),a
    ret 
PLY_AKM_READTRACK: ld a,+0(ix)
    sub #1
    jr c,PLY_AKM_RT_NOEMPTYCELL
    ld +0(ix),a
    ret 
PLY_AKM_RT_NOEMPTYCELL: ld l,+3(ix)
    ld h,+4(ix)
PLY_AKM_RT_GETDATABYTE: ld b,(hl)
    inc hl
    ld a,b
    and #15
PLY_AKM_FLAGNOTEANDEFFECTINCELL: cp #12
    jr c,PLY_AKM_RT_NOTEREFERENCE
    sub #12
    jr z,PLY_AKM_RT_NOTEANDEFFECTS
    dec a
    jr z,PLY_AKM_RT_NONOTEMAYBEEFFECTS
    dec a
    jr z,PLY_AKM_RT_NEWESCAPENOTE
    ld a,+6(ix)
    jr PLY_AKM_RT_AFTERNOTEREAD
PLY_AKM_RT_NEWESCAPENOTE: ld a,(hl)
    ld +6(ix),a
    inc hl
    jr PLY_AKM_RT_AFTERNOTEREAD
PLY_AKM_RT_NOTEANDEFFECTS: dec a
    ld (PLY_AKM_RT_READEFFECTSFLAG+1),a
    jr PLY_AKM_RT_GETDATABYTE
PLY_AKM_RT_NONOTEMAYBEEFFECTS: bit 4,b
    jr z,PLY_AKM_RT_READWAITFLAGS
    ld a,b
    ld (PLY_AKM_RT_READEFFECTSFLAG+1),a
    jr PLY_AKM_RT_READWAITFLAGS
PLY_AKM_RT_NOTEREFERENCE: exx
    ld l,a
    ld h,#0
    add hl,bc
    ld a,(hl)
    exx
PLY_AKM_RT_AFTERNOTEREAD: ld +5(ix),a
    ld a,b
    and #48
    jr z,PLY_AKM_RT_SAMEESCAPEINSTRUMENT
    cp #16
    jr z,PLY_AKM_RT_PRIMARYINSTRUMENT
    cp #32
    jr z,PLY_AKM_RT_SECONDARYINSTRUMENT
    ld a,(hl)
    inc hl
    ld +7(ix),a
    jr PLY_AKM_RT_STORECURRENTINSTRUMENT
PLY_AKM_RT_SAMEESCAPEINSTRUMENT: ld a,+7(ix)
    jr PLY_AKM_RT_STORECURRENTINSTRUMENT
PLY_AKM_RT_SECONDARYINSTRUMENT:
PLY_AKM_SECONDARYINSTRUMENT: ld a,#0
    jr PLY_AKM_RT_STORECURRENTINSTRUMENT
PLY_AKM_RT_PRIMARYINSTRUMENT:
PLY_AKM_PRIMARYINSTRUMENT: ld a,#0
PLY_AKM_RT_STORECURRENTINSTRUMENT: exx
    add a,a
    ld l,a
    ld h,#0
    add hl,de
    ld a,(hl)
    inc hl
    ld h,(hl)
    ld l,a
    ld a,(hl)
    inc hl
    ld +12(ix),a
    .db 221
    .db 117
    .db 9
    .db 221
    .db 116
    .db 10
    exx
    xor a
    ld +11(ix),a
PLY_AKM_RT_READWAITFLAGS: ld a,b
    and #192
    jr z,PLY_AKM_RT_SAMEESCAPEWAIT
    cp #64
    jr z,PLY_AKM_RT_PRIMARYWAIT
    cp #128
    jr z,PLY_AKM_RT_SECONDARYWAIT
    ld a,(hl)
    inc hl
    ld +8(ix),a
    jr PLY_AKM_RT_STORECURRENTWAIT
PLY_AKM_RT_SAMEESCAPEWAIT: ld a,+8(ix)
    jr PLY_AKM_RT_STORECURRENTWAIT
PLY_AKM_RT_PRIMARYWAIT:
PLY_AKM_PRIMARYWAIT: ld a,#0
    jr PLY_AKM_RT_STORECURRENTWAIT
PLY_AKM_RT_SECONDARYWAIT:
PLY_AKM_SECONDARYWAIT: ld a,#0
PLY_AKM_RT_STORECURRENTWAIT: ld +0(ix),a
PLY_AKM_RT_READEFFECTSFLAG: ld a,#0
    or a
    jr nz,PLY_AKM_RT_READEFFECTS
PLY_AKM_RT_AFTEREFFECTS: .db 221
    .db 117
    .db 3
    .db 221
    .db 116
    .db 4
    ret 
PLY_AKM_RT_READEFFECTS: xor a
    ld (PLY_AKM_RT_READEFFECTSFLAG+1),a
PLY_AKM_RT_READEFFECT: ld iy,#PLY_AKM_EFFECTTABLE
    ld b,(hl)
    ld a,b
    inc hl
    and #14
    ld e,a
    ld d,#0
    add iy,de
    ld a,b
    rra 
    rra 
    rra 
    rra 
    and #15
    jp (iy)
PLY_AKM_RT_READEFFECT_RETURN: bit 0,b
    jr nz,PLY_AKM_RT_READEFFECT
    jr PLY_AKM_RT_AFTEREFFECTS
PLY_AKM_RT_WAITLONG: ld a,(hl)
    inc hl
    ld +0(ix),a
    jr PLY_AKM_RT_CELLREAD
PLY_AKM_RT_WAITSHORT: ld a,b
    rlca 
    rlca 
    and #3
    ld +0(ix),a
PLY_AKM_RT_CELLREAD: .db 221
    .db 117
    .db 3
    .db 221
    .db 116
    .db 4
    ret 
PLY_AKM_MANAGEEFFECTS: ret 
PLY_AKM_PLAYSOUNDSTREAM: ld l,+9(ix)
    ld h,+10(ix)
PLY_AKM_PSS_READFIRSTBYTE: ld a,(hl)
    ld b,a
    inc hl
    rra 
    jr c,PLY_AKM_PSS_SOFTORSOFTANDHARD
    rra 
    jr c,PLY_AKM_PSS_SOFTWARETOHARDWARE
    rra 
    jr nc,PLY_AKM_PSS_NSNH_NOTENDOFSOUND
    ld a,(hl)
    inc hl
    ld h,(hl)
    ld l,a
    .db 221
    .db 117
    .db 9
    .db 221
    .db 116
    .db 10
    jr PLY_AKM_PSS_READFIRSTBYTE
PLY_AKM_PSS_NSNH_NOTENDOFSOUND: set 2,c
    call PLY_AKM_PSS_SHARED_ADJUSTVOLUME
    ld +1(iy),a
    rl b
    jr PLY_AKM_PSS_SHARED_STOREINSTRUMENTPOINTER
PLY_AKM_PSS_SOFTORSOFTANDHARD: rra 
    jr c,PLY_AKM_PSS_SOFTANDHARD
    call PLY_AKM_PSS_SHARED_ADJUSTVOLUME
    ld +1(iy),a
    ld d,#0
    rl b
    jr nc,PLY_AKM_PSS_S_AFTERARPANDORNOISE
    ld a,(hl)
    inc hl
    sra a
    ld d,a
    call c,PLY_AKM_PSS_READNOISE
PLY_AKM_PSS_S_AFTERARPANDORNOISE: ld a,d
    call PLY_AKM_CALCULATEPERIODFORBASENOTE
    rl b
    call c,PLY_AKM_READPITCHANDADDTOPERIOD
    exx
    ld +5(iy),l
    ld +9(iy),h
    exx
PLY_AKM_PSS_SHARED_STOREINSTRUMENTPOINTER: ld a,+11(ix)
    cp +12(ix)
    jr nc,PLY_AKM_PSS_S_SPEEDREACHED
    inc +11(ix)
    ret 
PLY_AKM_PSS_S_SPEEDREACHED: .db 221
    .db 117
    .db 9
    .db 221
    .db 116
    .db 10
    ld +11(ix),#0
    ret 
PLY_AKM_PSS_SOFTANDHARD: call PLY_AKM_PSS_SHARED_READENVBITPITCHARP_SOFTPERIOD_HARDVOL_HARDENV
    ld a,(hl)
    ld (PLY_AKM_REG11),a
    inc hl
    ld a,(hl)
    ld (PLY_AKM_REG12),a
    inc hl
    jr PLY_AKM_PSS_SHARED_STOREINSTRUMENTPOINTER
PLY_AKM_PSS_SOFTWARETOHARDWARE: call PLY_AKM_PSS_SHARED_READENVBITPITCHARP_SOFTPERIOD_HARDVOL_HARDENV
    ld a,b
    rlca 
    rlca 
    rlca 
    rlca 
    and #7
    exx
    jr z,PLY_AKM_PSS_STH_RATIOEND
PLY_AKM_PSS_STH_RATIOLOOP: srl h
    rr l
    dec a
    jr nz,PLY_AKM_PSS_STH_RATIOLOOP
    jr nc,PLY_AKM_PSS_STH_RATIOEND
    inc hl
PLY_AKM_PSS_STH_RATIOEND: ld a,l
    ld (PLY_AKM_REG11),a
    ld a,h
    ld (PLY_AKM_REG12),a
    exx
    jr PLY_AKM_PSS_SHARED_STOREINSTRUMENTPOINTER
PLY_AKM_PSS_SHARED_READENVBITPITCHARP_SOFTPERIOD_HARDVOL_HARDENV: and #2
    add a,#8
    ld (PLY_AKM_SENDPSGREGISTERR13+1),a
    ld +1(iy),#16
    xor a
    bit 7,b
    jr z,PLY_AKM_PSS_SHARED_RENVBAP_AFTERARPEGGIO
    ld a,(hl)
    inc hl
PLY_AKM_PSS_SHARED_RENVBAP_AFTERARPEGGIO: call PLY_AKM_CALCULATEPERIODFORBASENOTE
    exx
    ld +5(iy),l
    ld +9(iy),h
    exx
    ret 
PLY_AKM_PSS_SHARED_ADJUSTVOLUME: and #15
    sub +13(ix)
    ret nc
    xor a
    ret 
PLY_AKM_PSS_READNOISE: ld a,(hl)
    inc hl
    ld (PLY_AKM_NOISEREGISTER),a
    res 5,c
    ret 
PLY_AKM_CALCULATEPERIODFORBASENOTE: exx
    ld h,#0
    add a,+5(ix)
    ld bc,#65292
PLY_AKM_FINDOCTAVE_LOOP: inc b
    sub c
    jr nc,PLY_AKM_FINDOCTAVE_LOOP
    add a,c
    add a,a
    ld l,a
    ld h,#0
    add hl,de
    ld a,(hl)
    inc hl
    ld h,(hl)
    ld l,a
    ld a,b
    or a
    jr z,PLY_AKM_FINDOCTAVE_OCTAVESHIFTLOOP_FINISHED
PLY_AKM_FINDOCTAVE_OCTAVESHIFTLOOP: srl h
    rr l
    djnz PLY_AKM_FINDOCTAVE_OCTAVESHIFTLOOP
PLY_AKM_FINDOCTAVE_OCTAVESHIFTLOOP_FINISHED: jr nc,PLY_AKM_FINDOCTAVE_FINISHED
    inc hl
PLY_AKM_FINDOCTAVE_FINISHED: exx
    ret 
PLY_AKM_READPITCHANDADDTOPERIOD: ld a,(hl)
    inc hl
    exx
    ld c,a
    exx
    ld a,(hl)
    inc hl
    exx
    ld b,a
    add hl,bc
    exx
    ret 
PLY_AKM_EFFECTVOLUME: ld +13(ix),a
    jp PLY_AKM_RT_READEFFECT_RETURN
PLY_AKM_EFFECTTABLE: jr PLY_AKM_EFFECTTABLE
    jr PLY_AKM_EFFECTVOLUME
    jr PLY_AKM_EFFECTTABLE+4
    jr PLY_AKM_EFFECTTABLE+6
    jr PLY_AKM_EFFECTREADIFESCAPE-6
    jr PLY_AKM_EFFECTREADIFESCAPE-4
    jr PLY_AKM_EFFECTREADIFESCAPE-2
PLY_AKM_EFFECTREADIFESCAPE: cp #15
    ret c
    ld a,(hl)
    inc hl
    ret 
PLY_AKM_TRACK1_DATA:
PLY_AKM_TRACK1_WAITEMPTYCELL: .db 0
PLY_AKM_TRACK1_PTSTARTTRACK: .dw 0
PLY_AKM_TRACK1_PTTRACK: .dw 0
PLY_AKM_TRACK1_BASENOTE: .db 0
PLY_AKM_TRACK1_ESCAPENOTE: .db 0
PLY_AKM_TRACK1_ESCAPEINSTRUMENT: .db 0
PLY_AKM_TRACK1_ESCAPEWAIT: .db 0
PLY_AKM_TRACK1_PTINSTRUMENT: .dw 0
PLY_AKM_TRACK1_INSTRUMENTCURRENTSTEP: .db 0
PLY_AKM_TRACK1_INSTRUMENTSPEED: .db 0
PLY_AKM_TRACK1_TRACKINVERTEDVOLUME: .db 0
PLY_AKM_TRACK1_DATA_END:
PLY_AKM_TRACK2_DATA:
PLY_AKM_TRACK2_WAITEMPTYCELL: .db 0
    .db 0
    .db 0
PLY_AKM_TRACK2_PTTRACK: .db 0
    .db 0
    .db 0
PLY_AKM_TRACK2_ESCAPENOTE: .db 0
PLY_AKM_TRACK2_ESCAPEINSTRUMENT: .db 0
PLY_AKM_TRACK2_ESCAPEWAIT: .db 0
PLY_AKM_TRACK2_PTINSTRUMENT: .db 0
    .db 0
    .db 0
    .db 0
    .db 0
PLY_AKM_TRACK2_DATA_END:
PLY_AKM_TRACK3_DATA:
PLY_AKM_TRACK3_WAITEMPTYCELL: .db 0
    .db 0
    .db 0
PLY_AKM_TRACK3_PTTRACK: .db 0
    .db 0
    .db 0
PLY_AKM_TRACK3_ESCAPENOTE: .db 0
PLY_AKM_TRACK3_ESCAPEINSTRUMENT: .db 0
PLY_AKM_TRACK3_ESCAPEWAIT: .db 0
PLY_AKM_TRACK3_PTINSTRUMENT: .db 0
    .db 0
    .db 0
    .db 0
    .db 0
PLY_AKM_TRACK3_DATA_END:
PLY_AKM_REGISTERS_RETTABLE:
PLY_AKM_TRACK1_REGISTERS: .db 8
PLY_AKM_TRACK1_VOLUME: .db 0
    .dw PLY_AKM_SENDPSGREGISTER
    .db 0
PLY_AKM_TRACK1_SOFTWAREPERIODLSB: .db 0
    .dw PLY_AKM_SENDPSGREGISTER
    .db 1
PLY_AKM_TRACK1_SOFTWAREPERIODMSB: .db 0
    .dw PLY_AKM_SENDPSGREGISTER
PLY_AKM_TRACK2_REGISTERS: .db 9
PLY_AKM_TRACK2_VOLUME: .db 0
    .dw PLY_AKM_SENDPSGREGISTER
    .db 2
PLY_AKM_TRACK2_SOFTWAREPERIODLSB: .db 0
    .dw PLY_AKM_SENDPSGREGISTER
    .db 3
PLY_AKM_TRACK2_SOFTWAREPERIODMSB: .db 0
    .dw PLY_AKM_SENDPSGREGISTER
PLY_AKM_TRACK3_REGISTERS: .db 10
PLY_AKM_TRACK3_VOLUME: .db 0
    .dw PLY_AKM_SENDPSGREGISTER
    .db 4
PLY_AKM_TRACK3_SOFTWAREPERIODLSB: .db 0
    .dw PLY_AKM_SENDPSGREGISTER
    .db 5
PLY_AKM_TRACK3_SOFTWAREPERIODMSB: .db 0
    .dw PLY_AKM_SENDPSGREGISTER
    .db 6
PLY_AKM_NOISEREGISTER: .db 0
    .dw PLY_AKM_SENDPSGREGISTER
    .db 7
PLY_AKM_MIXERREGISTER: .db 0
    .dw PLY_AKM_SENDPSGREGISTER
    .db 11
PLY_AKM_REG11: .db 0
    .dw PLY_AKM_SENDPSGREGISTER
    .db 12
PLY_AKM_REG12: .db 0
    .dw PLY_AKM_SENDPSGREGISTERR13
    .dw PLY_AKM_SENDPSGREGISTERAFTERPOP
    .dw PLY_AKM_SENDPSGREGISTEREND
PLY_AKM_PERIODTABLE: .dw 3822
    .dw 3608
    .dw 3405
    .dw 3214
    .dw 3034
    .dw 2863
    .dw 2703
    .dw 2551
    .dw 2408
    .dw 2273
    .dw 2145
    .dw 2025
PLY_AKM_END:
_PLY_AKM_INITSOUNDEFFECTS::
PLY_AKM_INITSOUNDEFFECTS: ld (PLY_AKM_PTSOUNDEFFECTTABLE+1),hl
    ret 
_PLY_AKM_PLAYSOUNDEFFECT::
PLY_AKM_PLAYSOUNDEFFECT: dec a
PLY_AKM_PTSOUNDEFFECTTABLE: ld hl,#0
    ld e,a
    ld d,#0
    add hl,de
    add hl,de
    ld e,(hl)
    inc hl
    ld d,(hl)
    ld a,(de)
    inc de
    ex af,af'
    ld a,b
    ld hl,#PLY_AKM_CHANNEL1_SOUNDEFFECTDATA
    ld b,#0
    sla c
    sla c
    sla c
    add hl,bc
    ld (hl),e
    inc hl
    ld (hl),d
    inc hl
    ld (hl),a
    inc hl
    ld (hl),#0
    inc hl
    ex af,af'
    ld (hl),a
    ret 
_PLY_AKM_STOPSOUNDEFFECTFROMCHANNEL::
PLY_AKM_STOPSOUNDEFFECTFROMCHANNEL: add a,a
    add a,a
    add a,a
    ld e,a
    ld d,#0
    ld hl,#PLY_AKM_CHANNEL1_SOUNDEFFECTDATA
    add hl,de
    ld (hl),d
    inc hl
    ld (hl),d
    ret 
PLY_AKM_PLAYSOUNDEFFECTSSTREAM: rla 
    rla 
    ld ix,#PLY_AKM_CHANNEL1_SOUNDEFFECTDATA
    ld iy,#PLY_AKM_TRACK3_DATA_END
    ld c,a
    call PLY_AKM_PSES_PLAY
    ld ix,#PLY_AKM_CHANNEL2_SOUNDEFFECTDATA
    ld iy,#PLY_AKM_TRACK2_REGISTERS
    srl c
    call PLY_AKM_PSES_PLAY
    ld ix,#PLY_AKM_CHANNEL3_SOUNDEFFECTDATA
    ld iy,#PLY_AKM_TRACK3_REGISTERS
    rr c
    call PLY_AKM_PSES_PLAY
    ld a,c
    ld (PLY_AKM_MIXERREGISTER),a
    ret 
PLY_AKM_PSES_PLAY: ld l,+0(ix)
    ld h,+1(ix)
    ld a,l
    or h
    ret z
PLY_AKM_PSES_READFIRSTBYTE: ld a,(hl)
    inc hl
    ld b,a
    rra 
    jr c,PLY_AKM_PSES_SOFTWAREORSOFTWAREANDHARDWARE
    rra 
    jr c,PLY_AKM_PSES_HARDWAREONLY
    rra 
    jr c,PLY_AKM_PSES_S_ENDORLOOP
    call PLY_AKM_PSES_MANAGEVOLUMEFROMA_FILTER4BITS
    rl b
    call PLY_AKM_PSES_READNOISEIFNEEDEDANDOPENORCLOSENOISECHANNEL
    set 2,c
    jr PLY_AKM_PSES_SAVEPOINTERANDEXIT
PLY_AKM_PSES_S_ENDORLOOP: rra 
    jr c,PLY_AKM_PSES_S_LOOP
    xor a
    ld +0(ix),a
    ld +1(ix),a
    ret 
PLY_AKM_PSES_S_LOOP: ld a,(hl)
    inc hl
    ld h,(hl)
    ld l,a
    jr PLY_AKM_PSES_READFIRSTBYTE
PLY_AKM_PSES_SAVEPOINTERANDEXIT: ld a,+3(ix)
    cp +4(ix)
    jr c,PLY_AKM_PSES_NOTREACHED
    ld +3(ix),#0
    .db 221
    .db 117
    .db 0
    .db 221
    .db 116
    .db 1
    ret 
PLY_AKM_PSES_NOTREACHED: inc +3(ix)
    ret 
PLY_AKM_PSES_HARDWAREONLY: call PLY_AKM_PSES_SHARED_READRETRIGHARDWAREENVPERIODNOISE
    set 2,c
    jr PLY_AKM_PSES_SAVEPOINTERANDEXIT
PLY_AKM_PSES_SOFTWAREORSOFTWAREANDHARDWARE: rra 
    jr c,PLY_AKM_PSES_SOFTWAREANDHARDWARE
    call PLY_AKM_PSES_MANAGEVOLUMEFROMA_FILTER4BITS
    rl b
    call PLY_AKM_PSES_READNOISEIFNEEDEDANDOPENORCLOSENOISECHANNEL
    res 2,c
    call PLY_AKM_PSES_READSOFTWAREPERIOD
    jr PLY_AKM_PSES_SAVEPOINTERANDEXIT
PLY_AKM_PSES_SOFTWAREANDHARDWARE: call PLY_AKM_PSES_SHARED_READRETRIGHARDWAREENVPERIODNOISE
    call PLY_AKM_PSES_READSOFTWAREPERIOD
    res 2,c
    jr PLY_AKM_PSES_SAVEPOINTERANDEXIT
PLY_AKM_PSES_SHARED_READRETRIGHARDWAREENVPERIODNOISE: rra 
    jr nc,PLY_AKM_PSES_H_AFTERRETRIG
    ld d,a
    ld a,#255
    ld (PLY_AKM_SETREG13OLD+1),a
    ld a,d
PLY_AKM_PSES_H_AFTERRETRIG: and #7
    add a,#8
    ld (PLY_AKM_SENDPSGREGISTERR13+1),a
    rl b
    call PLY_AKM_PSES_READNOISEIFNEEDEDANDOPENORCLOSENOISECHANNEL
    call PLY_AKM_PSES_READHARDWAREPERIOD
    ld a,#16
    jp PLY_AKM_PSES_MANAGEVOLUMEFROMA_HARD
PLY_AKM_PSES_READNOISEIFNEEDEDANDOPENORCLOSENOISECHANNEL: jr c,PLY_AKM_PSES_READNOISEANDOPENNOISECHANNEL_OPENNOISE
    set 5,c
    ret 
PLY_AKM_PSES_READNOISEANDOPENNOISECHANNEL_OPENNOISE: ld a,(hl)
    ld (PLY_AKM_NOISEREGISTER),a
    inc hl
    res 5,c
    ret 
PLY_AKM_PSES_READHARDWAREPERIOD: ld a,(hl)
    ld (PLY_AKM_REG11),a
    inc hl
    ld a,(hl)
    ld (PLY_AKM_REG12),a
    inc hl
    ret 
PLY_AKM_PSES_READSOFTWAREPERIOD: ld a,(hl)
    ld +5(iy),a
    inc hl
    ld a,(hl)
    ld +9(iy),a
    inc hl
    ret 
PLY_AKM_PSES_MANAGEVOLUMEFROMA_FILTER4BITS: and #15
PLY_AKM_PSES_MANAGEVOLUMEFROMA_HARD: sub +2(ix)
    jr nc,PLY_AKM_PSES_MVFA_NOOVERFLOW
    xor a
PLY_AKM_PSES_MVFA_NOOVERFLOW: ld +1(iy),a
    ret 
PLY_AKM_CHANNEL1_SOUNDEFFECTDATA: .dw 0
PLY_AKM_CHANNEL1_SOUNDEFFECTINVERTEDVOLUME: .db 0
PLY_AKM_CHANNEL1_SOUNDEFFECTCURRENTSTEP: .db 0
PLY_AKM_CHANNEL1_SOUNDEFFECTSPEED: .db 0
    .db 0
    .db 0
    .db 0
PLY_AKM_CHANNEL2_SOUNDEFFECTDATA: .db 0
    .db 0
    .db 0
    .db 0
    .db 0
    .db 0
    .db 0
    .db 0
PLY_AKM_CHANNEL3_SOUNDEFFECTDATA: .db 0
    .db 0
    .db 0
    .db 0
    .db 0
    .db 0
    .db 0
    .db 0
