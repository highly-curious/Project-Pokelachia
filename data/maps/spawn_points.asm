MACRO spawn
; map, y, x
	map_id \1
	db \2, \3
ENDM

SpawnPoints:
; entries correspond to SPAWN_* constants
	table_width 4

	spawn PLAYERS_HOUSE_2F,            2,  5
	spawn HOLLOWPORT,				   7,  3
	spawn OLSTEETON,				   7,  12

	spawn NEW_BARK_TOWN,              15,  6
	spawn ECRUTEAK_CITY,              23, 28

	spawn N_A,                        -1, -1

	assert_table_length NUM_SPAWNS + 1
