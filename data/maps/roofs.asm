MapGroupRoofs:
; entries correspond to map groups
; values are indexes for LoadMapGroupRoof.Roofs
	table_width 1
	db -1            ; 0
	db ROOF_AZALEA   ; 2 (Mahogany Town)
	db -1            ; 3
	db ROOF_VIOLET   ; 4 (Ecruteak City)
	db ROOF_AZALEA   ; 5 (Blackthorn City)
	db -1            ; 6
	db -1            ; 7
	db ROOF_AZALEA   ; 8 (Azalea Town)
	db ROOF_OLIVINE  ; 9 (Battle Tower Outside)
	db ROOF_VIOLET   ; 10 (Violet City)
	db -1            ; 11
	db -1            ; 12
	db -1            ; 13
	db -1            ; 14
	db -1            ; 15
	db -1            ; 16
	db -1            ; 20
	db ROOF_NEW_BARK ; 24 (New Bark Town)
	db ROOF_AZALEA   ; 30 Hollowport
	db ROOF_VIOLET   ; 31 Olsteeton
	db ROOF_VIOLET   ; 32 Uni
	assert_table_length NUM_MAP_GROUPS + 1
