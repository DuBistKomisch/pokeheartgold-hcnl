#ifndef POKEHEARTGOLD_FILESYSTEM_FILES_DEF_H
#define POKEHEARTGOLD_FILESYSTEM_FILES_DEF_H

#include <nitro/fs/file.h>

typedef enum NarcId
{
    NARC_a_0_0_0                                            =   0,
    NARC_a_0_0_1                                            =   1,
    NARC_poketool_personal_personal                         =   2,
    NARC_poketool_personal_growtbl                          =   3,
    NARC_poketool_pokegra_pokegra                           =   4,
    NARC_poketool_pokegra_height                            =   5,
    NARC_a_0_0_6                                            =   6,
    NARC_a_0_0_7                                            =   7,
    NARC_a_0_0_8                                            =   8,
    NARC_a_0_0_9                                            =   9,
    NARC_a_0_1_0                                            =  10,
    NARC_poketool_waza_waza_tbl                             =  11,
    NARC_fielddata_script_scr_seq                           =  12,
    NARC_a_0_1_3                                            =  13,
    NARC_a_0_1_4                                            =  14,
    NARC_a_0_1_5                                            =  15,
    NARC_graphic_font                                       =  16,
    NARC_itemtool_itemdata_item_data                        =  17,
    NARC_itemtool_itemdata_item_icon                        =  18,
    NARC_a_0_1_9                                            =  19,
    NARC_a_0_2_0                                            =  20,
    NARC_a_0_2_1                                            =  21,
    NARC_a_0_2_2                                            =  22,
    NARC_a_0_2_3                                            =  23,
    NARC_a_0_2_4                                            =  24,
    NARC_a_0_2_5                                            =  25,
    NARC_a_0_2_6                                            =  26,
    NARC_msgdata_msg                                        =  27,
    NARC_a_0_2_8                                            =  28,
    NARC_a_0_2_9                                            =  29,
    NARC_a_0_3_0                                            =  30,
    NARC_a_0_3_1                                            =  31,
    NARC_fielddata_eventdata_zone_event                     =  32,
    NARC_poketool_personal_wotbl                            =  33,
    NARC_poketool_personal_evo                              =  34,
    NARC_a_0_3_5                                            =  35,
    NARC_a_0_3_6                                            =  36,
    NARC_fielddata_encountdata_g_enc_data                   =  37,
    NARC_a_0_3_8                                            =  38,
    NARC_a_0_3_9                                            =  39,
    NARC_a_0_4_0                                            =  40,
    NARC_fielddata_mapmatrix_map_matrix                     =  41,
    NARC_a_0_4_2                                            =  42,
    NARC_a_0_4_3                                            =  43,
    NARC_a_0_4_4                                            =  44,
    NARC_a_0_4_5                                            =  45,
    NARC_a_0_4_6                                            =  46,
    NARC_a_0_4_7                                            =  47,
    NARC_a_0_4_8                                            =  48,
    NARC_a_0_4_9                                            =  49,
    NARC_a_0_5_0                                            =  50,
    NARC_a_0_5_1                                            =  51,
    NARC_a_0_5_2                                            =  52,
    NARC_a_0_5_3                                            =  53,
    NARC_a_0_5_4                                            =  54,
    NARC_poketool_trainer_trdata                            =  55,
    NARC_poketool_trainer_trpoke                            =  56,
    NARC_poketool_trmsg_trtbl                               =  57,
    NARC_a_0_5_8                                            =  58,
    NARC_a_0_5_9                                            =  59,
    NARC_a_0_6_0                                            =  60,
    NARC_a_0_6_1                                            =  61,
    NARC_a_0_6_2                                            =  62,
    NARC_a_0_6_3                                            =  63,
    NARC_a_0_6_4                                            =  64,
    NARC_a_0_6_5                                            =  65,
    NARC_a_0_6_6                                            =  66,
    NARC_a_0_6_7                                            =  67,
    NARC_a_0_6_8                                            =  68,
    NARC_a_0_6_9                                            =  69,
    NARC_a_0_7_0                                            =  70,
    NARC_a_0_7_1                                            =  71,
    NARC_a_0_7_2                                            =  72,
    NARC_a_0_7_3                                            =  73,
    NARC_application_zukanlist_zukan_data_zukan_data        =  74,
    NARC_a_0_7_5                                            =  75,
    NARC_a_0_7_6                                            =  76,
    NARC_a_0_7_7                                            =  77,
    NARC_a_0_7_8                                            =  78,
    NARC_a_0_7_9                                            =  79,
    NARC_a_0_8_0                                            =  80,
    NARC_data_mmodel_mmodel                                 =  81,
    NARC_application_choose_starter_choose_starter_main_res =  82,
    NARC_a_0_8_3                                            =  83,
    NARC_a_0_8_4                                            =  84,
    NARC_a_0_8_5                                            =  85,
    NARC_a_0_8_6                                            =  86,
    NARC_a_0_8_7                                            =  87,
    NARC_a_0_8_8                                            =  88,
    NARC_a_0_8_9                                            =  89,
    NARC_a_0_9_0                                            =  90,
    NARC_a_0_9_1                                            =  91,
    NARC_a_0_9_2                                            =  92,
    NARC_application_choose_starter_choose_starter_sub_res  =  93,
    NARC_a_0_9_4                                            =  94,
    NARC_a_0_9_5                                            =  95,
    NARC_a_0_9_6                                            =  96,
    NARC_a_0_9_7                                            =  97,
    NARC_a_0_9_8                                            =  98,
    NARC_a_0_9_9                                            =  99,
    NARC_a_1_0_0                                            = 100,
    NARC_a_1_0_1                                            = 100,
    NARC_a_1_0_2                                            = 100,
    NARC_a_1_0_3                                            = 100,
    NARC_a_1_0_4                                            = 100,
    NARC_a_1_0_5                                            = 100,
    NARC_a_1_0_6                                            = 100,
    NARC_a_1_0_7                                            = 100,
    NARC_a_1_0_8                                            = 100,
    NARC_a_1_0_9                                            = 100,
    NARC_a_1_1_0                                            = 110,
    NARC_a_1_1_1                                            = 111,
    NARC_a_1_1_2                                            = 112,
    NARC_a_1_1_3                                            = 113,
    NARC_poketool_pokegra_otherpoke                         = 114,
    NARC_a_1_1_5                                            = 115,
    NARC_a_1_1_6                                            = 116,
    NARC_poketool_pokegra_height_o                          = 117,
    NARC_a_1_1_8                                            = 118,
    NARC_a_1_1_9                                            = 119,
    NARC_a_1_2_0                                            = 120,
    NARC_a_1_2_1                                            = 121,
    NARC_a_1_2_2                                            = 122,
    NARC_a_1_2_3                                            = 123,
    NARC_a_1_2_4                                            = 124,
    NARC_a_1_2_5                                            = 125,
    NARC_a_1_2_6                                            = 126,
    NARC_a_1_2_7                                            = 127,
    NARC_a_1_2_8                                            = 128,
    NARC_a_1_2_9                                            = 129,
    NARC_a_1_3_0                                            = 130,
    NARC_poketool_trmsg_trtblofs                            = 131,
    NARC_a_1_3_2                                            = 132,
    NARC_a_1_3_3                                            = 133,
    NARC_a_1_3_4                                            = 134,
    NARC_a_1_3_5                                            = 135,
    NARC_fielddata_encountdata_s_enc_data                   = 136,
    NARC_a_1_3_7                                            = 137,
    NARC_poketool_johtozukan                                = 138,
    NARC_a_1_3_9                                            = 139,
    NARC_a_1_4_0                                            = 140,
    NARC_fielddata_tsurepoke_tp_param                       = 141,
    NARC_a_1_4_2                                            = 142,
    NARC_a_1_4_3                                            = 143,
    NARC_a_1_4_4                                            = 144,
    NARC_a_1_4_5                                            = 145,
    NARC_a_1_4_6                                            = 146,
    NARC_a_1_4_7                                            = 147,
    NARC_a_1_4_8                                            = 148,
    NARC_a_1_4_9                                            = 149,
    NARC_a_1_5_0                                            = 150,
    NARC_a_1_5_1                                            = 151,
    NARC_a_1_5_2                                            = 152,
    NARC_a_1_5_3                                            = 153,
    NARC_a_1_5_4                                            = 154,
    NARC_a_1_5_5                                            = 155,
    NARC_a_1_5_6                                            = 156,
    NARC_a_1_5_7                                            = 157,
    NARC_a_1_5_8                                            = 158,
    NARC_a_1_5_9                                            = 159,
    NARC_a_1_6_0                                            = 160,
    NARC_poketool_pokezukan                                 = 161,
    NARC_a_1_6_2                                            = 162,
    NARC_data_gs_areawindow                                 = 163,
    NARC_a_1_6_4                                            = 164,
    NARC_a_1_6_5                                            = 165,
    NARC_a_1_6_6                                            = 166,
    NARC_a_1_6_7                                            = 167,
    NARC_a_1_6_8                                            = 168,
    NARC_poketool_personal_performance                      = 169,
    NARC_a_1_7_0                                            = 170,
    NARC_a_1_7_1                                            = 171,
    NARC_a_1_7_2                                            = 172,
    NARC_a_1_7_3                                            = 173,
    NARC_a_1_7_4                                            = 174,
    NARC_a_1_7_5                                            = 175,
    NARC_a_1_7_6                                            = 176,
    NARC_a_1_7_7                                            = 177,
    NARC_a_1_7_8                                            = 178,
    NARC_a_1_7_9                                            = 179,
    NARC_a_1_8_0                                            = 180,
    NARC_a_1_8_1                                            = 181,
    NARC_a_1_8_2                                            = 182,
    NARC_a_1_8_3                                            = 183,
    NARC_a_1_8_4                                            = 184,
    NARC_application_custom_ball_edit_gs_cb_data            = 185,
    NARC_a_1_8_6                                            = 186,
    NARC_a_1_8_7                                            = 187,
    NARC_a_1_8_8                                            = 188,
    NARC_a_1_8_9                                            = 189,
    NARC_a_1_9_0                                            = 190,
    NARC_a_1_9_1                                            = 191,
    NARC_a_1_9_2                                            = 192,
    NARC_a_1_9_3                                            = 193,
    NARC_pbr_pokegra                                        = 194,
    NARC_pbr_otherpoke                                      = 195,
    NARC_pbr_dp_height                                      = 196,
    NARC_pbr_dp_height_o                                    = 197,
    NARC_a_1_9_6                                            = 198,
    NARC_a_1_9_7                                            = 199,
    NARC_a_1_9_8                                            = 200,
    NARC_a_1_9_9                                            = 201,
    NARC_a_2_0_0                                            = 202,
    NARC_a_2_0_1                                            = 203,
    NARC_a_2_0_2                                            = 204,
    NARC_a_2_0_3                                            = 205,
    NARC_a_2_0_4                                            = 206,
    NARC_a_2_0_5                                            = 207,
    NARC_a_2_0_6                                            = 208,
    NARC_a_2_0_7                                            = 209,
    NARC_a_2_0_8                                            = 210,
    NARC_a_2_0_9                                            = 211,
    NARC_a_2_1_0                                            = 212,
    NARC_a_2_1_1                                            = 213,
    NARC_resource_eng_pms_aikotoba_pms_aikotoba             = 214,
    NARC_a_2_1_3                                            = 215,
    NARC_application_zukanlist_zukan_data_zukan_data_gira   = 216,
    NARC_a_2_1_5                                            = 217,
    NARC_a_2_1_6                                            = 218,
    NARC_a_2_1_7                                            = 219,
    NARC_a_2_1_8                                            = 220,
    NARC_a_2_1_9                                            = 221,
    NARC_a_2_2_0                                            = 222,
    NARC_a_2_2_1                                            = 223,
    NARC_a_2_2_2                                            = 224,
    NARC_a_2_2_3                                            = 225,
    NARC_a_2_2_4                                            = 226,
    NARC_a_2_2_5                                            = 227,
    NARC_a_2_2_6                                            = 228,
    NARC_a_2_2_7                                            = 229,
    NARC_a_2_2_8                                            = 230,
    NARC_fielddata_sodateya_kowaza_list                     = 231,
    NARC_a_2_3_0                                            = 232,
    NARC_a_2_3_1                                            = 233,
    NARC_a_2_3_2                                            = 234,
    NARC_a_2_3_3                                            = 235,
    NARC_a_2_3_4                                            = 236,
    NARC_a_2_3_5                                            = 237,
    NARC_a_2_3_6                                            = 238,
    NARC_a_2_3_7                                            = 239,
    NARC_a_2_3_8                                            = 240,
    NARC_a_2_3_9                                            = 241,
    NARC_a_2_4_0                                            = 242,
    NARC_a_2_4_1                                            = 243,
    NARC_a_2_4_2                                            = 244,
    NARC_a_2_4_3                                            = 245,
    NARC_a_2_4_4                                            = 246,
    NARC_a_2_4_5                                            = 247,
    NARC_a_2_4_6                                            = 248,
    NARC_a_2_4_7                                            = 249,
    NARC_a_2_4_8                                            = 250,
    NARC_a_2_4_9                                            = 251,
    NARC_a_2_5_0                                            = 252,
    NARC_a_2_5_1                                            = 253,
    NARC_a_2_5_2                                            = 254,
    NARC_a_2_5_3                                            = 255,
    NARC_a_2_5_4                                            = 256,
    NARC_a_2_5_5                                            = 257,
    NARC_a_2_5_6                                            = 258,
    NARC_a_2_5_7                                            = 259,
    NARC_a_2_5_8                                            = 260,
    NARC_a_2_5_9                                            = 261,
    NARC_a_2_6_0                                            = 262,
    NARC_a_2_6_1                                            = 263,
    NARC_a_2_6_2                                            = 264,
    NARC_a_2_6_3                                            = 265,
    NARC_a_2_6_4                                            = 266,
} NarcId;

#ifdef _IN_FILESYSTEM_C
#undef _IN_FILESYSTEM_C // inverse guard
char * sNarcFileList[] = {
    "a/0/0/0",
    "a/0/0/1",
    "a/0/0/2",
    "a/0/0/3",
    "a/0/0/4",
    "a/0/0/5",
    "a/0/0/6",
    "a/0/0/7",
    "a/0/0/8",
    "a/0/0/9",
    "a/0/1/0",
    "a/0/1/1",
    "a/0/1/2",
    "a/0/1/3",
    "a/0/1/4",
    "a/0/1/5",
    "a/0/1/6",
    "a/0/1/7",
    "a/0/1/8",
    "a/0/1/9",
    "a/0/2/0",
    "a/0/2/1",
    "a/0/2/2",
    "a/0/2/3",
    "a/0/2/4",
    "a/0/2/5",
    "a/0/2/6",
    "a/0/2/7",
    "a/0/2/8",
    "a/0/2/9",
    "a/0/3/0",
    "a/0/3/1",
    "a/0/3/2",
    "a/0/3/3",
    "a/0/3/4",
    "a/0/3/5",
    "a/0/3/6",
    "a/0/3/7",
    "a/0/3/8",
    "a/0/3/9",
    "a/0/4/0",
    "a/0/4/1",
    "a/0/4/2",
    "a/0/4/3",
    "a/0/4/4",
    "a/0/4/5",
    "a/0/4/6",
    "a/0/4/7",
    "a/0/4/8",
    "a/0/4/9",
    "a/0/5/0",
    "a/0/5/1",
    "a/0/5/2",
    "a/0/5/3",
    "a/0/5/4",
    "a/0/5/5",
    "a/0/5/6",
    "a/0/5/7",
    "a/0/5/8",
    "a/0/5/9",
    "a/0/6/0",
    "a/0/6/1",
    "a/0/6/2",
    "a/0/6/3",
    "a/0/6/4",
    "a/0/6/5",
    "a/0/6/6",
    "a/0/6/7",
    "a/0/6/8",
    "a/0/6/9",
    "a/0/7/0",
    "a/0/7/1",
    "a/0/7/2",
    "a/0/7/3",
    "a/0/7/4",
    "a/0/7/5",
    "a/0/7/6",
    "a/0/7/7",
    "a/0/7/8",
    "a/0/7/9",
    "a/0/8/0",
    "a/0/8/1",
    "a/0/8/2",
    "a/0/8/3",
    "a/0/8/4",
    "a/0/8/5",
    "a/0/8/6",
    "a/0/8/7",
    "a/0/8/8",
    "a/0/8/9",
    "a/0/9/0",
    "a/0/9/1",
    "a/0/9/2",
    "a/0/9/3",
    "a/0/9/4",
    "a/0/9/5",
    "a/0/9/6",
    "a/0/9/7",
    "a/0/9/8",
    "a/0/9/9",
    "a/1/0/0",
    "a/1/0/1",
    "a/1/0/2",
    "a/1/0/3",
    "a/1/0/4",
    "a/1/0/5",
    "a/1/0/6",
    "a/1/0/7",
    "a/1/0/8",
    "a/1/0/9",
    "a/1/1/0",
    "a/1/1/1",
    "a/1/1/2",
    "a/1/1/3",
    "a/1/1/4",
    "a/1/1/5",
    "a/1/1/6",
    "a/1/1/7",
    "a/1/1/8",
    "a/1/1/9",
    "a/1/2/0",
    "a/1/2/1",
    "a/1/2/2",
    "a/1/2/3",
    "a/1/2/4",
    "a/1/2/5",
    "a/1/2/6",
    "a/1/2/7",
    "a/1/2/8",
    "a/1/2/9",
    "a/1/3/0",
    "a/1/3/1",
    "a/1/3/2",
    "a/1/3/3",
    "a/1/3/4",
    "a/1/3/5",
    "a/1/3/6",
    "a/1/3/7",
    "a/1/3/8",
    "a/1/3/9",
    "a/1/4/0",
    "a/1/4/1",
    "a/1/4/2",
    "a/1/4/3",
    "a/1/4/4",
    "a/1/4/5",
    "a/1/4/6",
    "a/1/4/7",
    "a/1/4/8",
    "a/1/4/9",
    "a/1/5/0",
    "a/1/5/1",
    "a/1/5/2",
    "a/1/5/3",
    "a/1/5/4",
    "a/1/5/5",
    "a/1/5/6",
    "a/1/5/7",
    "a/1/5/8",
    "a/1/5/9",
    "a/1/6/0",
    "a/1/6/1",
    "a/1/6/2",
    "a/1/6/3",
    "a/1/6/4",
    "a/1/6/5",
    "a/1/6/6",
    "a/1/6/7",
    "a/1/6/8",
    "a/1/6/9",
    "a/1/7/0",
    "a/1/7/1",
    "a/1/7/2",
    "a/1/7/3",
    "a/1/7/4",
    "a/1/7/5",
    "a/1/7/6",
    "a/1/7/7",
    "a/1/7/8",
    "a/1/7/9",
    "a/1/8/0",
    "a/1/8/1",
    "a/1/8/2",
    "a/1/8/3",
    "a/1/8/4",
    "a/1/8/5",
    "a/1/8/6",
    "a/1/8/7",
    "a/1/8/8",
    "a/1/8/9",
    "a/1/9/0",
    "a/1/9/1",
    "a/1/9/2",
    "a/1/9/3",
    "pbr/pokegra.narc",
    "pbr/otherpoke.narc",
    "a/1/9/4",
    "a/1/9/5",
    "a/1/9/6",
    "a/1/9/7",
    "a/1/9/8",
    "a/1/9/9",
    "a/2/0/0",
    "a/2/0/1",
    "a/2/0/2",
    "a/2/0/3",
    "a/2/0/4",
    "a/2/0/5",
    "a/2/0/6",
    "a/2/0/7",
    "a/2/0/8",
    "a/2/0/9",
    "a/2/1/0",
    "a/2/1/1",
    "a/2/1/2",
    "a/2/1/3",
    "a/2/1/4",
    "a/2/1/5",
    "a/2/1/6",
    "a/2/1/7",
    "a/2/1/8",
    "a/2/1/9",
    "a/2/2/0",
    "a/2/2/1",
    "a/2/2/2",
    "a/2/2/3",
    "a/2/2/4",
    "a/2/2/5",
    "a/2/2/6",
    "a/2/2/7",
    "a/2/2/8",
    "a/2/2/9",
    "a/2/3/0",
    "a/2/3/1",
    "a/2/3/2",
    "a/2/3/3",
    "a/2/3/4",
    "a/2/3/5",
    "a/2/3/6",
    "a/2/3/7",
    "a/2/3/8",
    "a/2/3/9",
    "a/2/4/0",
    "a/2/4/1",
    "a/2/4/2",
    "a/2/4/3",
    "a/2/4/4",
    "a/2/4/5",
    "a/2/4/6",
    "a/2/4/7",
    "a/2/4/8",
    "a/2/4/9",
    "a/2/5/0",
    "a/2/5/1",
    "a/2/5/2",
    "a/2/5/3",
    "a/2/5/4",
    "a/2/5/5",
    "a/2/5/6",
    "a/2/5/7",
    "a/2/5/8",
    "a/2/5/9",
    "a/2/6/0",
    "a/2/6/1",
    "a/2/6/2",
    "a/2/6/3",
    "a/2/6/4",
};
#else
extern char * sNarcFileList[];
#endif //_IN_FILESYSTEM_C
#endif //POKEHEARTGOLD_FILESYSTEM_FILES_DEF_H
