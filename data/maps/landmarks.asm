MACRO landmark
; x, y, name
	db \1 + 8, \2 + 16
	dw \3
ENDM

Landmarks:
	table_width 4
	landmark  -8, -16, SpecialMapName
	landmark   1,  1, HollowportName
	landmark   5,  5, Route101Name
	landmark  10,  10, Route102Name
	landmark  15,  15, OlsteetonName
	landmark  20,  20, NationalForest1Name
	landmark  25,  25, OlsteetonUniName
	landmark 140, 100, NewBarkTownName
	landmark  28,  52, BattleTowerName
	assert_table_length KANTO_LANDMARK
	landmark  52,  88, Route1Name
	landmark  40,  76, Route22Name
	landmark  28,  76, PokemonLeagueName
	landmark  54, 134, CinnabarLabName
	assert_table_length NUM_LANDMARKS

SpecialMapName:        rawchar "?@"
HollowportName:        rawchar "Hollowport@"
Route101Name:          rawchar "Route 101@"
Route102Name:          rawchar "Route 102@"
OlsteetonName: 		   rawchar "Olsteeton@"
NationalForest1Name:   rawchar "Jolly Sods@"
OlsteetonUniName: 	   rawchar "Bouffalant¯Academy@"
NewBarkTownName:       rawchar "New Bark¯Town@"
PokemonLeagueName:     rawchar "Pokémon¯League Gate@"
Route1Name:            rawchar "Route 1@"
Route22Name:           rawchar "Route 22@"
BattleTowerName:       rawchar "Battle¯Tower@"
CinnabarLabName:       rawchar "Pokémon¯Lab@"
