ViridianPokeCenterScript: ; 4425d (11:425d)
	call Func_22fa
	call EnableAutoTextBoxDrawing
	ld hl, ViridianPokeCenterScriptPointers
	ld a, [W_VIRIDIANMARKETCURSCRIPT]
	jp CallFunctionInTable

ViridianPokeCenterScriptPointers: ; 1d495 (7:5495)
	dw ViridianPokeCenterScript0
	dw ViridianPokeCenterScript1
	dw ViridianPokeCenterScript2

ViridianPokeCenterScript0: ; 1d49b (7:549b)
	call UpdateSprites
	ld a, $5
	ld [$ff8c], a
	call DisplayTextID
	ld hl, wSimulatedJoypadStatesEnd
	ld de, RLEMovement1d4bb
	call DecodeRLEList
	dec a
	ld [wSimulatedJoypadStatesIndex], a
	call StartSimulatingJoypadStates
	ld a, $1
	ld [W_VIRIDIANMARKETCURSCRIPT], a
	ret

RLEMovement1d4bb: ; 1d4bb (7:54bb)
	db $40, $04
	db $ff

ViridianPokeCenterScript1: ; 1d4c0 (7:54c0)
	ld a, [wSimulatedJoypadStatesIndex]
	and a
	ret nz
	call Delay3
	ld a, $6
	ld [$ff8c], a
	call DisplayTextID
	ld bc, (OAKS_PARCEL << 8) + 1
	call GiveItem
	ld hl, wd74e
	set 1, [hl]
	ld a, $2
	ld [W_VIRIDIANMARKETCURSCRIPT], a
	; fallthrough
ViridianPokeCenterScript2: ; 1d4df (7:54df)
	ret

ViridianPokecenterTextPointers: ; 44263 (11:4263)
	dw ViridianPokeCenterText1
	dw ViridianPokeCenterText2
	dw ViridianPokeCenterText3
	dw ViridianPokeCenterText4
	dw ViridianPokeCenterText5
	dw ViridianPokeCenterText6

ViridianPokeCenterText1: ; 4426b (11:426b)
	db $ff

ViridianPokeCenterText2: ; 4426c (11:426c)
	TX_FAR _ViridianPokeCenterText1
	db "@"

ViridianPokeCenterText3: ; 44271 (11:4271)
	TX_FAR _ViridianPokeCenterText3
	db "@"

ViridianPokeCenterText4: ; 44276 (11:4276)
	db $f6
	
ViridianPokeCenterText5: ; 44271 (11:4271)
	TX_FAR _ViridianPokeCenterText5
	db "@"
	
ViridianPokeCenterText6: ; 44271 (11:4271)
	TX_FAR _ViridianPokeCenterText6
	db "@"
