MACRO landmark
; x, y, name
	db \1 + 8, \2 + 16
	dw \3
ENDM

Landmarks:
	table_width 4
	landmark  -8, -16, SpecialMapName
	landmark  44,  84, HollowportName
	landmark  44,  76, Route101Name
	landmark  52,  68, Route102Name
	landmark  60,  68, OlsteetonName
	landmark  60,  76, NationalForest1Name
	landmark  68,  68, OlsteetonUniName
	landmark  44,  44, BattleTowerName
	landmark  20,  68, PokemonLeagueName
	assert_table_length NUM_LANDMARKS

SpecialMapName:        rawchar "?@"
HollowportName:        rawchar "Hollowport@"
Route101Name:          rawchar "Route 101@"
Route102Name:          rawchar "Route 102@"
OlsteetonName: 		   rawchar "Olsteeton@"
NationalForest1Name:   rawchar "Jolly Sods@"
OlsteetonUniName: 	   rawchar "Bouffalant¯Academy@"
PokemonLeagueName:     rawchar "Pokémon¯League Gate@"
BattleTowerName:       rawchar "Battle¯Town@"
