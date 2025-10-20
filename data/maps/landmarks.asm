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
	landmark  52,  76, Route35Name
	landmark  44,  76, Route35CoastName
	landmark  64,  60, Route36Name
	landmark  68,  52, Route37Name
	landmark  68,  44, EcruteakCityName
	landmark  69,  42, BellchimeTrailName
	landmark  28,  52, BattleTowerName
	landmark 108,  44, MahoganyTownName
	landmark 108,  28, LakeOfRageName
	assert_table_length KANTO_LANDMARK
	landmark  52,  88, Route1Name
	landmark  40,  76, Route22Name
	landmark  28,  76, PokemonLeagueName
	landmark  28,  64, Route23Name
	landmark  28,  36, IndigoPlateauName
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
EcruteakCityName:      rawchar "Ecruteak¯City@"
MahoganyTownName:      rawchar "Mahogany¯Town@"
LakeOfRageName:        rawchar "Lake of¯Rage@"
BellchimeTrailName:    rawchar "Bellchime¯Trail@"
PokemonLeagueName:     rawchar "Pokémon¯League Gate@"
IndigoPlateauName:     rawchar "Indigo¯Plateau@"
Route1Name:            rawchar "Route 1@"
Route22Name:           rawchar "Route 22@"
Route23Name:           rawchar "Route 23@"
Route35Name:           rawchar "Route 35@"
Route36Name:           rawchar "Route 36@"
Route37Name:           rawchar "Route 37@"
BattleTowerName:       rawchar "Battle¯Tower@"
Route35CoastName:      rawchar "Route 35¯Coast@"
CinnabarLabName:       rawchar "Pokémon¯Lab@"
