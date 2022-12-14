Mansion1Script: ; 442af (11:42af)
	; call Mansion1Subscript1
	call EnableAutoTextBoxDrawing
	ld hl, Mansion1ScriptPointers
	ld a, [W_MANSION1CURSCRIPT]
	jp CallFunctionInTable

Mansion1ScriptPointers: ; 44326 (11:4326)
	dw Mansion1Script0
	dw Mansion1Script1
	
Mansion1Script_Switches: ; 44316 (11:4316)
	ld a, [wSpriteStateData1 + 9]
	cp SPRITE_FACING_UP
	ret nz
	xor a
	ld [hJoyHeld], a
	ld a, $4
	ld [hSpriteIndexOrTextID], a
	jp DisplayTextID
	
Mansion1Script0:
	ld a, $2
    ld [$ff8c], a
    call DisplayTextID
	ld a, $1
	ld [W_MANSION1CURSCRIPT], a
	ret
	
Mansion1Script1:
	ret
	
Mansion1TextPointers: ; 4432c (11:432c)
	dw Mansion1Text1
	dw Mansion1Text4

Mansion1Text1: ; 44341 (11:4341)
	db $08 ; asm
	ld hl, Mansion1EndBattleText2
	call PrintText
	ld a,$1
	ld [wDestinationWarpID],a
	ld a,$1F
	ld [$ff8b],a
	ld a, ROUTE_20
	ld [wLastMap], a
	ld hl, wd72d
	set 3, [hl]
	jp TextScriptEnd

Mansion1BattleText2: ; 4434b (11:434b)
	TX_FAR _Mansion1BattleText2
	db "@"

Mansion1EndBattleText2: ; 44350 (11:4350)
	TX_FAR _Mansion1EndBattleText2
	db "@"

Mansion1AfterBattleText2: ; 44355 (11:4355)
	TX_FAR _Mansion1AfterBattleText2
	db "@"

Mansion1Text4: ; 4435a (11:435a)
	TX_FAR _Mansion1BattleText2
	db "@"

MansionSwitchText: ; 44395 (11:4395)
	TX_FAR _MansionSwitchText
	db "@"

MansionSwitchPressedText: ; 4439a (11:439a)
	TX_FAR _MansionSwitchPressedText
	db "@"

MansionSwitchNotPressedText: ; 4439f (11:439f)
	TX_FAR _MansionSwitchNotPressedText
	db "@"
