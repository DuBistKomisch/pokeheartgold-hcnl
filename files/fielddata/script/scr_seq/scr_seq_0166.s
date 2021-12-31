#include "constants/scrcmd.h"
#include "../.h"
#include "msgdata/msg/msg_0043.h"
	.include "asm/macros/script.inc"

	.rodata

	scrdef scr_seq_0166_000
	scrdef scr_seq_0166_001
	scrdef scr_seq_0166_002
	scrdef scr_seq_0166_003
	scrdef scr_seq_0166_004
	scrdef scr_seq_0166_005
	scrdef scr_seq_0166_006
	scrdef scr_seq_0166_007
	scrdef scr_seq_0166_008
	scrdef scr_seq_0166_009
	scrdef scr_seq_0166_010
	scrdef scr_seq_0166_011
	scrdef scr_seq_0166_012
	scrdef_end

scr_seq_0166_000:
	scrcmd_609
	lockall
	setvar VAR_SPECIAL_x800C, 7
	clearflag FLAG_UNK_966
	setvar VAR_UNK_4133, 0
	releaseall
	end

scr_seq_0166_001:
	end

scr_seq_0166_002:
	end

_0052:
	return

scr_seq_0166_003:
	scrcmd_521
	call _0064
	call _0052
	end

_0064:
	return
	.byte 0x1b, 0x00
scr_seq_0166_004:
	end
	.byte 0x77, 0x01, 0xff, 0x00, 0x1b, 0x00
scr_seq_0166_005:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg msg_0043_00000
	waitbutton
	closemsg
	releaseall
	end

scr_seq_0166_006:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	setvar VAR_TEMP_x4003, 0
	setvar VAR_SPECIAL_x8007, 2
	npc_msg msg_0043_00003
	goto _00C1
	.byte 0x02, 0x00
scr_seq_0166_007:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	setvar VAR_TEMP_x4003, 1
	setvar VAR_SPECIAL_x8007, 2
	npc_msg msg_0043_00007
	goto _00C1
	.byte 0x02
	.byte 0x00
_00C1:
	comparevartovalue VAR_TEMP_x4003, 1
	gotoif eq, _00D7
	npc_msg msg_0043_00004
	goto _00DA

_00D7:
	npc_msg msg_0043_00012
_00DA:
	scrcmd_065 1, 1, 0, 1, VAR_SPECIAL_x800C
	scrcmd_066 8, 0
	scrcmd_066 9, 1
	scrcmd_066 10, 2
	scrcmd_067
	copyvar VAR_SPECIAL_x8008, VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x8008, 0
	gotoif eq, _012F
	comparevartovalue VAR_SPECIAL_x8008, 1
	gotoif eq, _0137
	goto _0118
	.byte 0x02, 0x00
_0118:
	scrcmd_283
	setvar VAR_UNK_4133, 0
	clearflag FLAG_UNK_966
	npc_msg msg_0043_00011
	waitbutton
	closemsg
	releaseall
	end

_012F:
	goto _0254
	.byte 0x02, 0x00
_0137:
	comparevartovalue VAR_TEMP_x4003, 1
	gotoif eq, _014C
	goto _0155
	.byte 0x02, 0x00
_014C:
	npc_msg msg_0043_00013
	goto _00C1

_0155:
	npc_msg msg_0043_00005
_0158:
	scrcmd_064 1, 1, 0, 1, VAR_SPECIAL_x800C
	scrcmd_066 96, 0
	scrcmd_066 97, 1
	scrcmd_066 98, 2
	scrcmd_066 99, 3
	scrcmd_067
	copyvar VAR_SPECIAL_x8008, VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x8008, 0
	gotoif eq, _01A7
	comparevartovalue VAR_SPECIAL_x8008, 1
	gotoif eq, _01AF
	comparevartovalue VAR_SPECIAL_x8008, 2
	gotoif eq, _01BA
	goto _00C1
	.byte 0x02, 0x00
_01A7:
	goto _01C8
	.byte 0x02, 0x00
_01AF:
	npc_msg msg_0043_00018
	goto _0155
	.byte 0x02, 0x00
_01BA:
	npc_msg msg_0043_00019
	goto _0155
	.byte 0x02, 0x00
_01C5:
	npc_msg msg_0043_00117
_01C8:
	scrcmd_065 1, 1, 0, 1, VAR_SPECIAL_x800C
	scrcmd_066 36, 0
	scrcmd_066 37, 1
	scrcmd_066 38, 2
	scrcmd_066 39, 3
	scrcmd_066 40, 4
	scrcmd_067
	copyvar VAR_SPECIAL_x8008, VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x8008, 0
	gotoif eq, _0228
	comparevartovalue VAR_SPECIAL_x8008, 1
	gotoif eq, _0233
	comparevartovalue VAR_SPECIAL_x8008, 2
	gotoif eq, _023E
	comparevartovalue VAR_SPECIAL_x8008, 3
	gotoif eq, _0249
	goto _0158
	.byte 0x02, 0x00
_0228:
	npc_msg msg_0043_00014
	goto _01C5
	.byte 0x02, 0x00
_0233:
	npc_msg msg_0043_00015
	goto _01C5
	.byte 0x02, 0x00
_023E:
	npc_msg msg_0043_00016
	goto _01C5
	.byte 0x02, 0x00
_0249:
	npc_msg msg_0043_00017
	goto _01C5
	.byte 0x02, 0x00
_0254:
	npc_msg msg_0043_00219
	scrcmd_064 18, 1, 0, 1, VAR_SPECIAL_x800C
	scrcmd_066 14, 0
	scrcmd_066 15, 1
	scrcmd_066 5, 2
	scrcmd_067
	copyvar VAR_SPECIAL_x8008, VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x8008, 0
	gotoif eq, _0295
	comparevartovalue VAR_SPECIAL_x8008, 1
	gotoif eq, _02E7
	goto _0118
	.byte 0x02, 0x00
_0295:
	npc_msg msg_0043_00212
	scrcmd_063 32780
	comparevartovalue VAR_SPECIAL_x800C, 1
	gotoif eq, _0254
	closemsg
	scrcmd_226 8, 32773, 32772, 32780
	comparevartovalue VAR_SPECIAL_x800C, 1
	gotoif eq, _02D7
	comparevartovalue VAR_SPECIAL_x800C, 3
	gotoif eq, _02DF
	goto _0339
	.byte 0x02, 0x00
_02D7:
	goto _0254
	.byte 0x02, 0x00
_02DF:
	goto _0254
	.byte 0x02, 0x00
_02E7:
	npc_msg msg_0043_00212
	scrcmd_063 32780
	comparevartovalue VAR_SPECIAL_x800C, 1
	gotoif eq, _0254
	closemsg
	scrcmd_227 8, 32773, 32772, 32780
	comparevartovalue VAR_SPECIAL_x800C, 1
	gotoif eq, _0329
	comparevartovalue VAR_SPECIAL_x800C, 3
	gotoif eq, _0331
	goto _0339
	.byte 0x02, 0x00
_0329:
	goto _0254
	.byte 0x02
	.byte 0x00
_0331:
	scrcmd_283
	closemsg
	releaseall
	end

_0339:
	scrcmd_234 32772, 32773, 32775, 16386
	scrcmd_232 25
	scrcmd_233 25
	comparevartovalue VAR_TEMP_x4003, 0
	gotoif eq, _038D
	comparevartovalue VAR_TEMP_x4003, 1
	gotoif eq, _0395
	comparevartovalue VAR_TEMP_x4003, 2
	gotoif eq, _03A7
	end
	.byte 0xec, 0x00, 0x0c, 0x80, 0x27, 0x00, 0x0c, 0x80, 0x01, 0x00, 0x2d, 0x00
	.byte 0xb1, 0xec, 0x00, 0x0c, 0x80, 0x35, 0x00, 0x16, 0x00, 0xbe, 0xff, 0xff, 0xff
_038D:
	goto _03B4
	.byte 0x02, 0x00
_0395:
	setflag FLAG_UNK_966
	setvar VAR_UNK_4133, 5
	goto _03B4
	.byte 0x02, 0x00
_03A7:
	scrcmd_048 msg_0043_00211
	closemsg
	goto _03B4
	.byte 0x02, 0x00
_03B4:
	get_player_gender VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x800C, 0
	gotoif eq, _03CD
	goto _03DB
	.byte 0x02, 0x00
_03CD:
	buffer_players_name 0
	scrcmd_048 msg_0043_00066
	goto _03E9
	.byte 0x02, 0x00
_03DB:
	buffer_players_name 0
	scrcmd_048 msg_0043_00067
	goto _03E9
	.byte 0x02, 0x00
_03E9:
	scrcmd_048 msg_0043_00068
	scrcmd_232 26
	scrcmd_233 26
	closemsg
	goto _03FE
	.byte 0x02, 0x00
_03FE:
	scrcmd_232 4
	scrcmd_233 4
	scrcmd_257 239
	scrcmd_611 1, 0, 32768, 32780, 32769, 32770, 32771
	scrcmd_237
	scrcmd_048 msg_0043_00078
	closemsg
	scrcmd_232 24
	scrcmd_233 24
	scrcmd_587
	wait 10, VAR_SPECIAL_x800C
	scrcmd_235 16386
	clearflag FLAG_UNK_966
	setvar VAR_UNK_4133, 0
	goto _0443

_0443:
	releaseall
	end
	.byte 0x49, 0x00, 0x44, 0x06, 0x11, 0x00, 0x0c, 0x80, 0x01
	.byte 0x00, 0x1d, 0x00, 0x01, 0x36, 0x00, 0x00, 0x00, 0x11, 0x00, 0x0c, 0x80, 0x02, 0x00, 0x1d, 0x00
	.byte 0x01, 0x33, 0x00, 0x00, 0x00, 0x11, 0x00, 0x0c, 0x80, 0x03, 0x00, 0x1d, 0x00, 0x01, 0x3a, 0x00
	.byte 0x00, 0x00, 0x11, 0x00, 0x0c, 0x80, 0x04, 0x00, 0x1d, 0x00, 0x01, 0x49, 0x00, 0x00, 0x00, 0x11
	.byte 0x00, 0x0c, 0x80, 0x05, 0x00, 0x1d, 0x00, 0x04, 0x62, 0x00, 0x00, 0x00, 0x1b, 0x00, 0x49, 0x00
	.byte 0x45, 0x06, 0x4b, 0x00, 0x45, 0x06, 0x1b, 0x00, 0x49, 0x00, 0x45, 0x06, 0x03, 0x00, 0x05, 0x00
	.byte 0x0c, 0x80, 0x49, 0x00, 0x45, 0x06, 0x4b, 0x00, 0x45, 0x06, 0x1b, 0x00, 0x49, 0x00, 0x45, 0x06
	.byte 0x4b, 0x00, 0x45, 0x06, 0x49, 0x00, 0x45, 0x06, 0x03, 0x00, 0x05, 0x00, 0x0c, 0x80, 0x49, 0x00
	.byte 0x45, 0x06, 0x4b, 0x00, 0x45, 0x06, 0x1b, 0x00, 0x49, 0x00, 0x45, 0x06, 0x03, 0x00, 0x05, 0x00
	.byte 0x0c, 0x80, 0x49, 0x00, 0x45, 0x06, 0x4b, 0x00, 0x45, 0x06, 0x49, 0x00, 0x45, 0x06, 0x03, 0x00
	.byte 0x05, 0x00, 0x0c, 0x80, 0x49, 0x00, 0x45, 0x06, 0x4b, 0x00, 0x45, 0x06, 0x1b, 0x00, 0x49, 0x00
	.byte 0x45, 0x06, 0x03, 0x00, 0x05, 0x00, 0x0c, 0x80, 0x49, 0x00, 0x45, 0x06, 0x03, 0x00, 0x05, 0x00
	.byte 0x0c, 0x80, 0x49, 0x00, 0x45, 0x06, 0x03, 0x00, 0x0a, 0x00, 0x0c, 0x80, 0x49, 0x00, 0x45, 0x06
	.byte 0x03, 0x00, 0x05, 0x00, 0x0c, 0x80, 0x49, 0x00, 0x45, 0x06, 0x4b, 0x00, 0x45, 0x06, 0x1b, 0x00
	.byte 0x3e, 0x00, 0x01, 0x00, 0x03, 0x00, 0x01, 0x00, 0x3e, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00
	.byte 0x3d, 0x00, 0x01, 0x00, 0x02, 0x00, 0x01, 0x00, 0x3c, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00
	.byte 0x3c, 0x00, 0x01, 0x00, 0x03, 0x00, 0x01, 0x00, 0x3c, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00
	.byte 0xfe, 0x00, 0x00, 0x00, 0x3f, 0x00, 0x02, 0x00, 0x22, 0x00, 0x01, 0x00, 0x3f, 0x00, 0x01, 0x00
	.byte 0x23, 0x00, 0x01, 0x00, 0x3f, 0x00, 0x01, 0x00, 0x25, 0x00, 0x01, 0x00, 0xfe, 0x00, 0x00, 0x00
	.byte 0x22, 0x00, 0x01, 0x00, 0xfe, 0x00, 0x00, 0x00, 0x20, 0x00, 0x01, 0x00, 0xfe, 0x00, 0x00, 0x00
	.byte 0x23, 0x00, 0x01, 0x00, 0xfe, 0x00, 0x00, 0x00, 0x21, 0x00, 0x01, 0x00, 0xfe, 0x00, 0x00, 0x00
scr_seq_0166_008:
scr_seq_0166_009:
scr_seq_0166_010:
scr_seq_0166_011:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	setvar VAR_TEMP_x4003, 2
	setvar VAR_SPECIAL_x8004, 0
	npc_msg msg_0043_00111
	goto _05AF
	.byte 0x02, 0x00
_05AF:
	npc_msg msg_0043_00112
	scrcmd_065 1, 1, 0, 1, VAR_SPECIAL_x800C
	scrcmd_066 113, 0
	scrcmd_066 114, 1
	scrcmd_066 115, 2
	scrcmd_067
	copyvar VAR_SPECIAL_x8008, VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x8008, 0
	gotoif eq, _05FD
	comparevartovalue VAR_SPECIAL_x8008, 1
	gotoif eq, _0872
	comparevartovalue VAR_SPECIAL_x8008, 2
	gotoif eq, _0A97
	goto _0A97
	.byte 0x02, 0x00
_05FD:
	scrcmd_065 1, 1, 0, 1, VAR_SPECIAL_x800C
	scrcmd_066 155, 0
	scrcmd_066 156, 1
	scrcmd_066 157, 2
	scrcmd_066 158, 3
	scrcmd_067
	copyvar VAR_SPECIAL_x8008, VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x8008, 0
	gotoif eq, _064C
	comparevartovalue VAR_SPECIAL_x8008, 1
	gotoif eq, _0660
	comparevartovalue VAR_SPECIAL_x8008, 2
	gotoif eq, _067A
	goto _068E
	.byte 0x02, 0x00
_064C:
	setvar VAR_TEMP_x4004, 0
	setvar VAR_SPECIAL_x8007, 3
	goto _0743
	.byte 0x02, 0x00
_0660:
	setvar VAR_TEMP_x4004, 1
	setvar VAR_SPECIAL_x8005, 0
	setvar VAR_SPECIAL_x8007, 5
	goto _0743
	.byte 0x02, 0x00
_067A:
	setvar VAR_TEMP_x4004, 0
	setvar VAR_SPECIAL_x8007, 7
	goto _0743
	.byte 0x02, 0x00
_068E:
	npc_msg msg_0043_00159
	waitbutton
	goto _0A9C
	.byte 0x02, 0x00, 0x2d, 0x00, 0xa8, 0x41, 0x00
	.byte 0x01, 0x01, 0x00, 0x01, 0x0c, 0x80, 0x42, 0x00, 0xa9, 0x00, 0x42, 0x00, 0xaa, 0x01, 0x42, 0x00
	.byte 0xab, 0x02, 0x42, 0x00, 0xac, 0x03, 0x42, 0x00, 0xad, 0x04, 0x43, 0x00, 0x2a, 0x00, 0x08, 0x80
	.byte 0x0c, 0x80, 0x11, 0x00, 0x08, 0x80, 0x00, 0x00, 0x1c, 0x00, 0x01, 0x2f, 0x00, 0x00, 0x00, 0x11
	.byte 0x00, 0x08, 0x80, 0x01, 0x00, 0x1c, 0x00, 0x01, 0x30, 0x00, 0x00, 0x00, 0x11, 0x00, 0x08, 0x80
	.byte 0x02, 0x00, 0x1c, 0x00, 0x01, 0x31, 0x00, 0x00, 0x00, 0x11, 0x00, 0x08, 0x80, 0x03, 0x00, 0x1c
	.byte 0x00, 0x01, 0x32, 0x00, 0x00, 0x00, 0x16, 0x00, 0x3a, 0x00, 0x00, 0x00, 0x02, 0x00, 0x29, 0x00
	.byte 0x04, 0x80, 0x00, 0x00, 0x16, 0x00, 0x39, 0x00, 0x00, 0x00, 0x02, 0x00, 0x29, 0x00, 0x04, 0x80
	.byte 0x01, 0x00, 0x16, 0x00, 0x2b, 0x00, 0x00, 0x00, 0x02, 0x00, 0x29, 0x00, 0x04, 0x80, 0x02, 0x00
	.byte 0x16, 0x00, 0x1d, 0x00, 0x00, 0x00, 0x02, 0x00, 0x29, 0x00, 0x04, 0x80, 0x03, 0x00, 0x16, 0x00
	.byte 0x0f, 0x00, 0x00, 0x00, 0x02, 0x00, 0x2d, 0x00, 0xae, 0x32, 0x00, 0x16, 0x00, 0x5b, 0x03, 0x00
	.byte 0x00, 0x02, 0x00
_0743:
	comparevartovalue VAR_TEMP_x4004, 1
	gotoif eq, _081D
	goto _0756

_0756:
	npc_msg msg_0043_00160
	scrcmd_065 1, 1, 0, 1, VAR_SPECIAL_x800C
	scrcmd_066 161, 0
	scrcmd_066 162, 1
	scrcmd_066 163, 2
	scrcmd_066 164, 3
	scrcmd_066 165, 4
	scrcmd_066 166, 5
	scrcmd_067
	copyvar VAR_SPECIAL_x8008, VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x8008, 0
	gotoif eq, _07CA
	comparevartovalue VAR_SPECIAL_x8008, 1
	gotoif eq, _07D8
	comparevartovalue VAR_SPECIAL_x8008, 2
	gotoif eq, _07E6
	comparevartovalue VAR_SPECIAL_x8008, 3
	gotoif eq, _07F4
	comparevartovalue VAR_SPECIAL_x8008, 4
	gotoif eq, _0802
	goto _0810
	.byte 0x02, 0x00
_07CA:
	setvar VAR_SPECIAL_x8005, 0
	goto _081D
	.byte 0x02, 0x00
_07D8:
	setvar VAR_SPECIAL_x8005, 1
	goto _081D
	.byte 0x02, 0x00
_07E6:
	setvar VAR_SPECIAL_x8005, 2
	goto _081D
	.byte 0x02, 0x00
_07F4:
	setvar VAR_SPECIAL_x8005, 3
	goto _081D
	.byte 0x02, 0x00
_0802:
	setvar VAR_SPECIAL_x8005, 4
	goto _081D
	.byte 0x02, 0x00
_0810:
	npc_msg msg_0043_00167
	waitbutton
	goto _0A9C
	.byte 0x02, 0x00
_081D:
	npc_msg msg_0043_00175
	npc_msg msg_0043_00176
	closemsg
	fade_screen 6, 1, 0, 0x00
	wait_fade
	setvar VAR_SPECIAL_x800C, 0
_0837:
	comparevartovalue VAR_SPECIAL_x800C, 0
	gotoif eq, _084F
	scrcmd_353 0, 32780
	goto _0837

_084F:
	scrcmd_150
	fade_screen 6, 1, 1, 0x00
	wait_fade
	comparevartovalue VAR_TEMP_x4002, 255
	gotoif eq, _0810
	goto _0339
	.byte 0x02, 0x00
_0872:
	npc_msg msg_0043_00117
_0875:
	scrcmd_065 1, 1, 0, 1, VAR_SPECIAL_x800C
	scrcmd_066 121, 0
	scrcmd_066 118, 1
	scrcmd_066 119, 2
	scrcmd_066 120, 3
	scrcmd_066 122, 4
	scrcmd_067
	copyvar VAR_SPECIAL_x8008, VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x8008, 0
	gotoif eq, _0A7E
	comparevartovalue VAR_SPECIAL_x8008, 1
	gotoif eq, _08D8
	comparevartovalue VAR_SPECIAL_x8008, 2
	gotoif eq, _0953
	comparevartovalue VAR_SPECIAL_x8008, 3
	gotoif eq, _09EA
	goto _05AF
	.byte 0x02, 0x00
_08D5:
	npc_msg msg_0043_00117
_08D8:
	scrcmd_065 1, 1, 0, 1, VAR_SPECIAL_x800C
	scrcmd_066 125, 0
	scrcmd_066 126, 1
	scrcmd_066 127, 2
	scrcmd_066 129, 3
	scrcmd_067
	copyvar VAR_SPECIAL_x8008, VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x8008, 0
	gotoif eq, _0927
	comparevartovalue VAR_SPECIAL_x8008, 1
	gotoif eq, _0932
	comparevartovalue VAR_SPECIAL_x8008, 2
	gotoif eq, _093D
	goto _0948
	.byte 0x02, 0x00
_0927:
	npc_msg msg_0043_00130
	goto _08D5
	.byte 0x02, 0x00
_0932:
	npc_msg msg_0043_00131
	goto _08D5
	.byte 0x02, 0x00
_093D:
	npc_msg msg_0043_00132
	goto _08D5
	.byte 0x02, 0x00
_0948:
	goto _0875
	.byte 0x02, 0x00
_0950:
	npc_msg msg_0043_00117
_0953:
	scrcmd_065 1, 1, 0, 1, VAR_SPECIAL_x800C
	scrcmd_066 135, 0
	scrcmd_066 136, 1
	scrcmd_066 137, 2
	scrcmd_066 138, 3
	scrcmd_066 139, 4
	scrcmd_067
	copyvar VAR_SPECIAL_x8008, VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x8008, 0
	gotoif eq, _09B3
	comparevartovalue VAR_SPECIAL_x8008, 1
	gotoif eq, _09BE
	comparevartovalue VAR_SPECIAL_x8008, 2
	gotoif eq, _09C9
	comparevartovalue VAR_SPECIAL_x8008, 3
	gotoif eq, _09D4
	goto _09DF
	.byte 0x02, 0x00
_09B3:
	npc_msg msg_0043_00140
	goto _0950
	.byte 0x02, 0x00
_09BE:
	npc_msg msg_0043_00141
	goto _0950
	.byte 0x02, 0x00
_09C9:
	npc_msg msg_0043_00142
	goto _0950
	.byte 0x02, 0x00
_09D4:
	npc_msg msg_0043_00143
	goto _0950
	.byte 0x02, 0x00
_09DF:
	goto _0875
	.byte 0x02, 0x00
_09E7:
	npc_msg msg_0043_00117
_09EA:
	scrcmd_065 1, 1, 0, 1, VAR_SPECIAL_x800C
	scrcmd_066 145, 0
	scrcmd_066 146, 1
	scrcmd_066 147, 2
	scrcmd_066 148, 3
	scrcmd_066 149, 4
	scrcmd_067
	copyvar VAR_SPECIAL_x8008, VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x8008, 0
	gotoif eq, _0A4A
	comparevartovalue VAR_SPECIAL_x8008, 1
	gotoif eq, _0A55
	comparevartovalue VAR_SPECIAL_x8008, 2
	gotoif eq, _0A60
	comparevartovalue VAR_SPECIAL_x8008, 3
	gotoif eq, _0A6B
	goto _0A76
	.byte 0x02, 0x00
_0A4A:
	npc_msg msg_0043_00150
	goto _09E7
	.byte 0x02, 0x00
_0A55:
	npc_msg msg_0043_00151
	goto _09E7
	.byte 0x02, 0x00
_0A60:
	npc_msg msg_0043_00152
	goto _09E7
	.byte 0x02, 0x00
_0A6B:
	npc_msg msg_0043_00153
	goto _09E7
	.byte 0x02, 0x00
_0A76:
	goto _0875
	.byte 0x02, 0x00
_0A7E:
	npc_msg msg_0043_00124
	npc_msg msg_0043_00117
	goto _0875
	.byte 0x02, 0x00, 0x2d, 0x00, 0x7b, 0x16
	.byte 0x00, 0x07, 0x00, 0x00, 0x00, 0x02, 0x00
_0A97:
	npc_msg msg_0043_00116
	waitbutton
_0A9C:
	closemsg
	releaseall
	end

scr_seq_0166_012:
	end
	.balign 4, 0
