OlsteetonUniOfficeTA_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  5,  7, OLSTEETON_UNI_OFFICE, 12
	warp_event  6,  7, OLSTEETON_UNI_OFFICE, 12

	def_coord_events

	def_bg_events
	bg_event  6,  0, BGEVENT_JUMPTEXT, OlsteetonUniOfficeTABlackboardText
	bg_event  7,  0, BGEVENT_JUMPTEXT, OlsteetonUniOfficeTABlackboardText
	bg_event  8,  1, BGEVENT_JUMPTEXT, OlsteetonUniOfficeTABookshelf3Text
	bg_event  0,  1, BGEVENT_JUMPTEXT, OlsteetonUniOfficeTABookshelf1Text
	bg_event  1,  1, BGEVENT_JUMPTEXT, OlsteetonUniOfficeTABookshelf2Text

	def_object_events
	object_event  6,  2, SPRITE_BLANCHE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, (1 << MORN) | (1 << DAY), 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, OlsteetonUniOfficeTABlancheText, -1
	object_event 10,  2, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, (1 << EVE) | (1 << NITE), PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, OlsteetonUniOfficeTATeacherText, -1
	object_event  7,  4, SPRITE_SCHOOLBOY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, OlsteetonUniOfficeTAYoungsterText, -1
	object_event 10,  4, SPRITE_CHILD, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_PURPLE, OBJECTTYPE_COMMAND, jumptextfaceplayer, OlsteetonUniOfficeTAChildText, -1
	object_event  6,  4, SPRITE_LADY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, OlsteetonUniOfficeTALadyText, -1
	object_event  1,  6, SPRITE_COOL_DUDE, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, OlsteetonUniOfficeTACooltrainermScript, -1

OlsteetonUniOfficeTABlancheText:
	text "I am Blanche."
	line "I teach History"
	cont "here."

	para "We must learn from"
	line "history, or we"

	para "will be doomed to"
	line "repeat it."
	done

OlsteetonUniOfficeTATeacherText:
	text "I'm afraid Blanche"
	line "isn't available."

	para "They only teach"
	line "during the day."
	done

OlsteetonUniOfficeTAYoungsterText:
	text "Flipping through"
	line "my notes at the"
	cont "speed of--YOW!"
	cont "Paper cut…"
	done

OlsteetonUniOfficeTAChildText:
	text "We just had a"
	line "lecture on Prof."

	para "Westwood's contri-"
	line "butions to the"
	cont "#dex."

	para "I heard that"
	line "towards the end"

	para "he got lazy and"
	line "just made some of"
	cont "it up!"
	done

OlsteetonUniOfficeTALadyText:
	text "You're from Johto?"
	line "That region has"

	para "such fascinating"
	line "history!"
	done

OlsteetonUniOfficeTACooltrainermScript:
	showtext .Text1
	showtextfaceplayer .Text2
	turnobject LAST_TALKED, UP
	end

.Text1: ; text > text
	text "…Zzz…"
	line "Aah!"
	done

.Text2:
	text "Ahem."

	para "Sorry about that--"
	line "you startled me."

	para "I stayed up late"
	line "to finish an"

	para "assignment, so now"
	line "I'm exhausted."
	done

OlsteetonUniOfficeTABlackboardText:
	text "There's a timeline"
	line "of recent history."

	para "400 years ago:"
	line "Toxic move invent-"
	cont "ed."

	para "71 years ago:"
	line "modern # Ball"
	cont "developed."

	para "27 years ago:"
	line "first Moon land-"
	cont "ing."

	para "Three years ago:"
	line "first virtual"
	cont "#mon created."

	para "“Hypothesis: tech-"
	line "nology grows expo-"
	cont "nentially.”"
	done

OlsteetonUniOfficeTABookshelf1Text:
	text "It's a book about"
	done

OlsteetonUniOfficeTABookshelf2Text:
	text "It's a book of"
	done

OlsteetonUniOfficeTABookshelf3Text:
	text "It's a book"
	done