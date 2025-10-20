MACRO newgroup
	DEF const_value += 1
	DEF __map_value__ = 1
ENDM

MACRO map_const
;\1: map id
;\2: width: in blocks
;\3: height: in blocks
	DEF GROUP_\1 EQU const_value
	DEF MAP_\1 EQU __map_value__
	DEF __map_value__ += 1
	DEF \1_WIDTH  EQU \2
	DEF \1_HEIGHT EQU \3
ENDM

; map group ids
; `newgroup` indexes are for:
; - MapGroupPointers (see data/maps/maps.asm)
; - MapGroupRoofs (see data/maps/roofs.asm)
; - RoofPals (see gfx/tilesets/roofs.pal)
; `map_const` indexes are for the sub-tables of MapGroupPointers (see data/maps/maps.asm)
; Each map also has associated data:
; - attributes (see data/maps/attributes.asm)
; - blocks (see data/maps/blocks.asm)
; - scripts and events (see data/maps/scripts.asm)
	const_def

	newgroup                                                     ;  4
	map_const ECRUTEAK_HOUSE,                             10,  9 ;  1
	map_const WISE_TRIOS_ROOM,                             4,  4 ;  2
	map_const ECRUTEAK_POKECENTER_1F,                      6,  4 ;  3
	map_const ECRUTEAK_LUGIA_SPEECH_HOUSE,                 4,  4 ;  4
	map_const DANCE_THEATRE,                               6,  7 ;  5
	map_const ECRUTEAK_MART,                               6,  4 ;  6
	map_const ECRUTEAK_GYM,                                5,  9 ;  7
	map_const ECRUTEAK_ITEMFINDER_HOUSE,                   4,  4 ;  8
	map_const ECRUTEAK_CITY,                              20, 18 ;  9
	map_const ROUTE_35,                                   12, 18 ; 10
	map_const ROUTE_36,                                   32,  9 ; 11
	map_const ROUTE_36_RUINS_OF_ALPH_GATE,                 5,  4 ; 12
	map_const ROUTE_36_VIOLET_GATE,                        5,  4 ; 13
	map_const ROUTE_37,                                   10, 10 ; 14
	map_const VALERIES_HOUSE,                              4,  4 ; 15
	map_const ECRUTEAK_CHERISH_BALL_HOUSE,                 4,  4 ; 16
	map_const ECRUTEAK_DESTINY_KNOT_HOUSE,                 4,  4 ; 17

	newgroup                                                     ;  9
	map_const BATTLE_TOWER_1F,                            11,  8 ;  1
	map_const BATTLE_TOWER_2F,                            11,  5 ;  2
	map_const BATTLE_TOWER_BATTLE_ROOM,                    4,  4 ;  3
	map_const BATTLE_TOWER_ELEVATOR,                       2,  2 ;  4
	map_const BATTLE_TOWER_HALLWAY,                       11,  2 ;  5
	map_const BATTLE_TOWER_OUTSIDE,                       10, 13 ;  7

	newgroup                                                     ; 16
	map_const ROUTE_23,                                   12, 70 ;  1
	map_const INDIGO_PLATEAU,                             12, 13 ;  2
	map_const INDIGO_PLATEAU_POKECENTER_1F,                8,  7 ;  3
	map_const WILLS_ROOM,                                  5,  9 ;  4
	map_const KOGAS_ROOM,                                  5,  9 ;  5
	map_const BRUNOS_ROOM,                                 5,  9 ;  6
	map_const KARENS_ROOM,                                 5,  9 ;  7
	map_const LANCES_ROOM,                                 7, 12 ;  8
	map_const HALL_OF_FAME,                                5,  7 ;  9
	map_const BELLCHIME_TRAIL,                            12,  7 ; 10

	newgroup                                                     ; 20
	map_const POKECENTER_2F,                               8,  4 ;  1
	map_const TRADE_CENTER,                                5,  4 ;  2
	map_const COLOSSEUM,                                   5,  4 ;  3
	map_const HIDDEN_TREE_GROTTO,                          5,  9 ;  4
	map_const HIDDEN_CAVE_GROTTO,                         20, 45 ;  5

	newgroup                                                     ; 24
	map_const NEW_BARK_TOWN,                              10,  9 ;  4
	map_const ELMS_LAB,                                    5,  6 ;  5
	map_const PLAYERS_NEIGHBORS_HOUSE,                     4,  4 ;  8
	map_const LYRAS_HOUSE_1F,                              6,  4 ;  9
	map_const LYRAS_HOUSE_2F,                              4,  3 ; 10
	map_const ELMS_HOUSE,                                  4,  4 ; 11

	newgroup                            						 ; 30
	map_const HOLLOWPORT,                                 12,  9 ;  1
	map_const FIELD_LAB,								   9,  5 ;  2
	map_const FIELD_LAB_2F,								   9,  5 ;  3
	map_const ECHOING_CAVE,								   6,  9 ;  4
	map_const PLAYERS_HOUSE_1F,                            6,  4 ;  5
	map_const PLAYERS_HOUSE_2F,                            4,  3 ;  6
	map_const HOLLOWPORT_RIVAL_1F,                         6,  4 ;  7
	map_const HOLLOWPORT_RIVAL_2F,                         4,  3 ;  8
	map_const HOLLOWPORT_NEIGHBOR,                         4,  4 ;  9
	map_const ROUTE_101,             				      19, 12 ;  10
	map_const ROUTE_101_HOUSE,             			       4,  4 ;  11
	map_const ROUTE_101_CAVE,             			       6,  19 ; 12
	map_const ROUTE_102,								  16,  9 ;  13
	map_const ROUTE_101_102_GATE,                          5,  4 ;  14
	map_const ROUTE_102_OLSTEETON_GATE,                    5,  4 ;  15

	newgroup                                         			 ; 31
	map_const OLSTEETON,                          	      23, 20 ;  1
	map_const OLSTEETON_GYM_1F,                       	   9,  6 ;  2
	map_const OLSTEETON_GYM_2F,                            8,  5 ;  3
	map_const OLSTEETON_GYM_3F,                        	   8,  4 ;  4
	map_const OLSTEETON_POKE_CENTER,                       6,  4 ;  5
	map_const OLSTEETON_MALL_1,                            8,  4 ;  7
	map_const OLSTEETON_MALL_2,                            4,  4 ;  8
	map_const OLSTEETON_MALL_3,                            6,  5 ;  9
	map_const OLSTEETON_MART,                              6,  4 ;  10
	map_const RIVERFRONT_APT_1F,                           5,  4 ;  11
	map_const RIVERFRONT_APT_2F,                           9,  2 ;  12
	map_const RIVERFRONT_APT_3F,                           9,  2 ;  13
	map_const RIVERFRONT_APT_4F,                           9,  2 ;  14
	map_const RIVERFRONT_APT_5F,                           8,  5 ;  15
	map_const RIVERFRONT_APT_ROOF,                         8,  6 ;  16
	map_const RIVERFRONT_APT_ELEVATOR,                     2,  2 ;  17
	map_const OLSTEETON_DINER,                             8,  6 ;  18
	map_const OLSTEETON_ARCADE, 						  10,  7 ;  19
	map_const OLSTEETON_TRAIN_STATION,                    10,  9 ;  20
	map_const OLSTEETON_NAME_RATER,                        4,  4 ;  21
	map_const OLSTEETON_FISHER_HOUSE,                      4,  4 ;  22
	map_const OLSTEETON_GYM_HOUSE,                         4,  4 ;  23
	map_const OLSTEETON_QUICK_HOUSE,                       4,  4 ;  24
	map_const OLSTEETON_FOREST_GATE,                       5,  4 ;  25
	map_const NATIONAL_FOREST_1,						  17, 15 ;  26
	map_const OLSTEETON_UNI_GATE,                          5,  4 ;  27
	map_const OLSTEETON_ROUTE_103_GATE,                    5,  4 ;  28
	map_const OLSTEETON_ABANDONED_MILL_OUTSIDE,           12,  10 ; 29
	map_const OLSTEETON_ABANDONED_MILL,                   10,  9 ;  30
	map_const RIVERFRONT_APT_2F_ROOM_1,                    4,  4 ;  31
	map_const RIVERFRONT_APT_2F_ROOM_2,                    4,  4 ;  32
	map_const RIVERFRONT_APT_2F_ROOM_3,                    4,  4 ;  33
	map_const RIVERFRONT_APT_3F_ROOM_1,                    4,  4 ;  34
	map_const RIVERFRONT_APT_3F_ROOM_2,                    4,  4 ;  35
	map_const RIVERFRONT_APT_4F_ROOM_1,                    4,  4 ;  36
	map_const RIVERFRONT_APT_4F_ROOM_3,                    4,  4 ;  37


	newgroup                                                     ; 32
	map_const OLSTEETON_UNI,	                          21, 14 ;  1
	map_const OLSTEETON_UNI_LIBRARY_1F,   	               7,  6 ;  2
	map_const OLSTEETON_UNI_LIBRARY_2F,   	               9,  7 ;  3
	map_const OLSTEETON_UNI_SCIENCE_CENTER,   	           6,  5 ;  4
	map_const OLSTEETON_UNI_NURSE_DEPT,   	               6,  5 ;  5
	map_const OLSTEETON_UNI_WATER_LAB,   	               8,  5 ;  6
	map_const OLSTEETON_UNI_OFFICE, 			          11,  9 ;  7
	map_const OLSTEETON_UNI_DEANS_OFFICE, 			       4,  4 ;  8
	map_const OLSTEETON_UNI_OFFICE_SPRUCE, 			       3,  3 ;  9
	map_const OLSTEETON_UNI_OFFICE_POPLAR, 			       3,  3 ;  10
	map_const OLSTEETON_UNI_OFFICE_PAWPAW, 			       3,  3 ;  11
	map_const OLSTEETON_UNI_OFFICE_LOUNGE, 			       6,  5 ;  12
	map_const OLSTEETON_UNI_OFFICE_TA, 			           6,  4 ;  13
	map_const OLSTEETON_UNI_CLOCK_TOWER_1F, 			   5,  4 ;  14
	map_const OLSTEETON_UNI_CLOCK_TOWER_2F, 			   6,  4 ;  15
	map_const OLSTEETON_UNI_CLOCK_TOWER_3F, 			   6,  6 ;  16
 	map_const OLSTEETON_UNI_CLASSROOM_BLDG,               13,  7 ;  17
 	map_const OLSTEETON_UNI_CLASSROOM_BIOLOGY,             6,  5 ;  18
 	map_const OLSTEETON_UNI_CLASSROOM_ART,                 6,  5 ;  19
 	map_const OLSTEETON_UNI_CLASSROOM_BUSINESS,            6,  5 ;  20
 	map_const OLSTEETON_UNI_CLASSROOM_STRATEGY,            6,  5 ;  21
 	map_const OLSTEETON_UNI_CLASSROOM_HISTORY,             6,  5 ;  22
 	map_const OLSTEETON_UNI_CLASSROOM_THEORY,              6,  5 ;  23
 	map_const OLSTEETON_UNI_DORM_WEST_1F,                  6,  6 ;  24
	map_const OLSTEETON_UNI_DORM_WEST_2F,                  9,  2 ;  25
	map_const OLSTEETON_UNI_DORM_WEST_2F_ROOM_2,           4,  4 ;  26
	map_const OLSTEETON_UNI_DORM_WEST_2F_ROOM_3,           4,  4 ;  27
 	map_const OLSTEETON_UNI_DORM_WEST_3F,                  9,  2 ;  28
	map_const OLSTEETON_UNI_DORM_WEST_3F_ROOM_1,           4,  4 ;  29
	map_const OLSTEETON_UNI_DORM_WEST_3F_ROOM_3,           4,  4 ;  30
	map_const OLSTEETON_UNI_DORM_WEST_ELEVATOR,            2,  2 ;  31
	map_const OLSTEETON_UNI_DINING_HALL,				   8,  4 ;  32
 	map_const OLSTEETON_UNI_DORM_EAST_1F,                  6,  6 ;  33
 	map_const OLSTEETON_UNI_DORM_EAST_2F,                  9,  2 ;  34
	map_const OLSTEETON_UNI_DORM_EAST_2F_ROOM_1,           4,  4 ;  35
	map_const OLSTEETON_UNI_DORM_EAST_2F_ROOM_3,           4,  4 ;  36
 	map_const OLSTEETON_UNI_DORM_EAST_3F,                  9,  2 ;  37
	map_const OLSTEETON_UNI_DORM_EAST_3F_ROOM_2,           4,  4 ;  38
	map_const OLSTEETON_UNI_DORM_EAST_3F_ROOM_3,           4,  4 ;  39
	map_const OLSTEETON_UNI_DORM_EAST_ELEVATOR,            2,  2 ;  40
 	map_const OLSTEETON_UNI_GYM_DEPT,                      8,  7 ;  41

DEF NUM_MAP_GROUPS EQU const_value ; 32
