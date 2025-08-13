; DEF Pinball_LIGHT_OFF EQU $f3
; DEF Pinball_LIGHT_ON  EQU $f4
; DEF Pinball_DECK_SIZE EQU 4 * 6

; _Pinball:
; 	ld hl, wOptions1
; 	set NO_TEXT_SCROLL, [hl]
; 	call ClearBGPalettes
; 	call ClearTileMap
; 	call ClearSprites
; 	call DelayFrame
; 	call DisableLCD
; 	call LoadStandardFont
; 	call LoadFrame

; 	ld hl, PinballLZ01
; 	ld de, vTiles2 tile $00
; 	call Decompress
; 	ld hl, PinballLZ02
; 	ld de, vTiles2 tile $3e
; 	call Decompress
; 	ld hl, PinballLZ03
; 	ld de, vTiles0 tile $00
; 	call Decompress
; 	ld hl, PinballOffButtonGFX
; 	ld de, vTiles1 tile (Pinball_LIGHT_OFF - $80)
; 	ld bc, 1 tiles
; 	rst CopyBytes
; 	ld hl, PinballOnButtonGFX
; 	ld de, vTiles1 tile (Pinball_LIGHT_ON - $80)
; 	ld bc, 1 tiles
; 	rst CopyBytes

; 	call Pinball_InitTilemap
; 	call Pinball_InitAttrPals
; 	call EnableLCD
; 	call ApplyAttrAndTilemapInVBlank
; 	ld a, $e4
; 	call DmgToCgbBGPals
; 	ld de, $e4e4
; 	call DmgToCgbObjPals
; 	call DelayFrame
; 	xor a
; 	ld [wJumptableIndex], a
; 	ld a, $2
; 	ld [wPinballCursorY], a
; 	ld [wPinballCursorX], a

; .MasterLoop:
; 	ld a, [wJumptableIndex]
; 	bit 7, a
; 	jr nz, .leavethegame
; 	call .Pinball
; 	jr .MasterLoop
; .leavethegame
; 	call WaitSFX
; 	ld de, SFX_QUIT_SLOTS
; 	call PlaySFX
; 	call WaitSFX
; 	call ClearBGPalettes
; 	ld hl, wOptions1
; 	res NO_TEXT_SCROLL, [hl]
; 	ret

; .Pinball:
; 	call StandardStackJumpTable

; .Jumptable:
; 	dw .AskPlayWithThree
; 	dw .DeductCoins
; 	dw .ChooseACard
; 	dw .PlaceYourBet
; 	dw .CheckTheCard
; 	dw .TabulateTheResult
; 	dw .PlayAgain
; 	dw .Quit

; .AskPlayWithThree:
; 	ld hl, .PlayWithThreeCoinsText
; 	call Pinball_UpdateCoinBalanceDisplay
; 	call YesNoBox
; 	jr c, .SaidNo
; 	call Pinball_ShuffleDeck
; 	; fallthrough

; .Increment:
; 	ld hl, wJumptableIndex
; 	inc [hl]
; 	ret

; .SaidNo:
; 	ld a, 7
; 	ld [wJumptableIndex], a
; 	ret

; .PlayWithThreeCoinsText:
; 	; Play with three coins?
; 	text_far _PinballPlayWithThreeCoinsText
; 	text_end

; .DeductCoins:
; 	ld hl, wCoins
; 	ld a, [hli]
; 	ld l, [hl]
; 	ld h, a
; 	and a
; 	jr nz, .deduct ; You have at least 256 coins.
; 	ld a, l
; 	cp 3
; 	jr nc, .deduct ; You have at least 3 coins.
; 	ld hl, .NotEnoughCoinsText
; 	call Pinball_UpdateCoinBalanceDisplay
; 	ld a, 7
; 	ld [wJumptableIndex], a
; 	ret

; .deduct
; 	ld de, -3
; 	add hl, de
; 	ld a, h
; 	ld [wCoins], a
; 	ld a, l
; 	ld [wCoins + 1], a
; 	ld de, SFX_TRANSACTION
; 	call PlaySFX
; 	xor a
; 	ldh [hBGMapMode], a
; 	call Pinball_PrintCoinBalance
; 	ld a, $1
; 	ldh [hBGMapMode], a
; 	call WaitSFX
; 	jr .Increment

; .NotEnoughCoinsText:
; 	; Not enough coins…
; 	text_far _PinballNotEnoughCoinsText
; 	text_end



; Pinball_InitAttrPals:
; 	hlcoord 0, 0, wAttrmap
; 	ld bc, SCREEN_AREA
; 	xor a
; 	rst ByteFill

; 	hlcoord 12, 1, wAttrmap
; 	lb bc, 2, 2
; 	ld a, $1
; 	call FillBoxWithByte

; 	hlcoord 14, 1, wAttrmap
; 	lb bc, 2, 2
; 	ld a, $2
; 	call FillBoxWithByte

; 	hlcoord 16, 1, wAttrmap
; 	lb bc, 2, 2
; 	ld a, $3
; 	call FillBoxWithByte

; 	hlcoord 18, 1, wAttrmap
; 	lb bc, 2, 2
; 	ld a, $4
; 	call FillBoxWithByte

; 	hlcoord 9, 0, wAttrmap
; 	lb bc, 12, 1
; 	ld a, $1
; 	call FillBoxWithByte

; 	ldh a, [rWBK]
; 	push af
; 	ld a, $5
; 	ldh [rWBK], a
; 	ld hl, .palettes
; 	ld de, wBGPals1
; 	ld bc, 9 palettes
; 	rst CopyBytes
; 	pop af
; 	ldh [rWBK], a
; 	ret

; .palettes
; INCLUDE "gfx/pinball/pinball.pal"

; PinballLZ03:
; INCBIN "gfx/pinball/pinball_3.2bpp.lz"

; PinballOffButtonGFX:
; INCBIN "gfx/pinball/off_button.2bpp"

; PinballOnButtonGFX:
; INCBIN "gfx/pinball/on_button.2bpp"

; PinballLZ01:
; INCBIN "gfx/pinball/pinball_1.2bpp.lz"

; PinballLZ02:
; INCBIN "gfx/pinball/pinball_2.2bpp.lz"

; PinballTilemap:
; INCBIN "gfx/pinball/pinball.tilemap"
