LyraPhoneScript:
	readmem wTimeOfDay
	scalltable LyraPhoneScript_GreetingsTable
	getcurlandmarkname STRING_BUFFER_4
	readvar VAR_LANDMARK
	; Special-case too-long landmark names
	ifnotequal POKEMON_LEAGUE, .got_landmark
	getstring .PokemonLeague, STRING_BUFFER_4
.got_landmark
	farwritetext LyraPhoneLandmarkText
	ifless SHAMOUTI_LANDMARK, .not_shamouti
	farwritetext LyraPhoneIslandsText
	sjumpfwd .landmark_done
.not_shamouti
	ifless KANTO_LANDMARK, .not_kanto
	farwritetext LyraPhoneKantoText
	sjumpfwd .landmark_done
.not_kanto
	scalltable LyraPhoneScript_JohtoLandmarksTable
.landmark_done
	farwritetext LyraPhoneNextMoveQuestionText
	yesorno
	iftruefwd .describe_next_move
	farwritetext LyraPhoneNextMoveRefusedText
	sjumpfwd .done

.describe_next_move
	callasm LyraPhone_GetFirstMonNextMove
	iffalsefwd .no_move
	ifequalfwd -1, .egg
	farwritetext LyraPhoneNextMoveLevelText
	sjumpfwd .done

.no_move
	farwritetext LyraPhoneNoNextMoveText
	sjumpfwd .done

.egg
	farwritetext LyraPhoneNoEggMovesText
.done
	farwritetext LyraPhoneEndText
	end

.PokemonLeague:     db "#mon League@"

LyraPhone_GetFirstMonNextMove:
	; [wStringBuffer3] = species name
	call EvolutionPhone_GetFirstNonEggPartyMon
	; a = move level, d = move name
	farcall GetNextMove
	; [hScriptVar] = move level
	ldh [hScriptVar], a
	; [wStringBuffer1] = move name
	ld a, d
	ld [wNamedObjectIndex], a
	jmp GetMoveName

LyraPhoneScript_GreetingsTable:
	table_width 2
	dw .MornGreeting
	dw .DayGreeting
	dw .NiteGreeting
	dw .EveGreeting
	assert_table_length NUM_DAYTIMES
.MornGreeting:
	farwritetext LyraPhoneGreetingText_Morn
	end
.DayGreeting:
	farwritetext LyraPhoneGreetingText_Day
	end
.EveGreeting:
	farwritetext LyraPhoneGreetingText_Eve
	end
.NiteGreeting:
	farwritetext LyraPhoneGreetingText_Nite
	end

LyraPhoneScript_JohtoLandmarksTable:
	table_width 2
	dw .Generic
	dw .Hollowport
	dw .Route101
	dw .Route102
	dw .Olsteeton
	dw .NationalForest1
	dw .OlsteetonUni
	dw .NewBarkTown
	dw .VioletCity
	dw .SproutTower
	dw .VioletOutskirts	
	dw .Route32
	dw .Route32Coast
	dw .UnionCave ; no calls
	dw .Route33
	dw .AzaleaTown
	dw .SlowpokeWell ; no calls
	dw .IlexForest
	dw .RadioTower ; no calls
	dw .Route35
	dw .Route35Coast
	dw .NationalPark
	dw .Route36
	dw .Route37
	dw .EcruteakCity
	dw .BellchimeTrail
	dw .TinTower
	dw .BurnedTower ; no calls
	dw .Lighthouse
	dw .Route40
	dw .BattleTower
	dw .WhirlIslands ; no calls
	dw .Route42
	dw .MtMortar ; no calls
	dw .MahoganyTown
	dw .Route43
	dw .LakeOfRage
	dw .Route44
	dw .IcePath ; no calls
	dw .BlackthornCity
	dw .DragonsDen ; no calls
	dw .Route45
	dw .DarkCave ; no calls
	dw .Route46
	dw .SilverCave
	assert_table_length KANTO_LANDMARK
.Generic:
.Hollowport:
.Route101:
.Route102:
.Olsteeton:
.NationalForest1:
.OlsteetonUni:
.NewBarkTown:
.VioletCity:
.SproutTower:
.VioletOutskirts:
.Route32:
.Route32Coast:
.UnionCave:
.Route33:
.AzaleaTown:
.SlowpokeWell:
.IlexForest:
.RadioTower:
.Route35:
.Route35Coast:
.NationalPark:
.Route36:
.Route37:
.EcruteakCity:
.BellchimeTrail:
.TinTower:
.BurnedTower:
.Lighthouse:
.Route40:
.BattleTower:
.WhirlIslands:
.Route42:
.MtMortar:
.MahoganyTown:
.Route43:
.LakeOfRage:
.Route44:
.IcePath:
.BlackthornCity:
.DragonsDen:
.Route45:
.DarkCave:
.Route46:
.SilverCave:
	; TODO: define individual texts for Johto landmarks
	farwritetext LyraPhoneJohtoText_Generic
	end

LyraPhoneScript2:
	readvar VAR_SPECIALPHONECALL
	ifequalfwd SPECIALCALL_YELLOWFOREST, .YellowForest
	ifequalfwd SPECIALCALL_FIRSTBADGE, .FirstBadge
	ifequalfwd SPECIALCALL_LYRASEGG, .LyrasEgg
	specialphonecall SPECIALCALL_NONE
	sjump LyraPhoneScript

.YellowForest:
	farwritetext LyraPhoneSpecialText_YellowForest
	specialphonecall SPECIALCALL_NONE
	end

.FirstBadge:
	farwritetext LyraPhoneSpecialText_FirstBadge
	specialphonecall SPECIALCALL_NONE
	end

.LyrasEgg:
	checkevent EVENT_GOT_TOTODILE_FROM_ELM
	iftruefwd .lyrasegg_totodile
	checkevent EVENT_GOT_CHIKORITA_FROM_ELM
	iftruefwd .lyrasegg_chikorita
	getstring .Chicory, STRING_BUFFER_4
	sjumpfwd .lyrasegg_end
.lyrasegg_totodile
	getstring .Cinder, STRING_BUFFER_4
	sjumpfwd .lyrasegg_end
.lyrasegg_chikorita:
	getstring .Toto, STRING_BUFFER_4
.lyrasegg_end
	farwritetext LyraPhoneSpecialText_LyrasEgg
	setevent EVENT_LYRA_GAVE_AWAY_EGG
	specialphonecall SPECIALCALL_NONE
	end

.Chicory: db "Chicory@"
.Cinder:  db "Cinder@"
.Toto:    db "Toto@"
