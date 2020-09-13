Museum2FScript: ; 5c317 (17:4317)
	jp EnableAutoTextBoxDrawing

Museum2FTextPointers: ; 5c31a (17:431a)
	dw Museum2FText1
	dw Museum2FText2
	dw Museum2FText3
	dw Museum2FText4
	dw Museum2FText5
	dw Museum2FText6
	dw Museum2FText7

Museum2FText1: ; 5c328 (17:4328)
	TX_FAR _Museum2FText1
	db "@"

Museum2FText2: ; 5c32d (17:432d)
	TX_FAR _Museum2FText2
	db "@"

Museum2FText3: ; 5c332 (17:4332)
	TX_FAR _Museum2FText3
	db "@"

Museum2FText4: ; 5c337 (17:4337)
	TX_FAR _Museum2FText4
	db "@"
	
Museum2FText_5b: ; 5c337 (17:4337)
	TX_FAR _Museum2FText5
	db "@"

Museum2FText5: ; 5c33c (17:433c)
	db $08 ; asm
	ld a, [wNEWSILPH]
	bit 1, a
	jr nz, .asm_4e5a0 ; 0x1919c
	ld hl, Museum2FText_5b
	call PrintText
	ld bc, (SILPH_SCOPE << 8) | 1
	call GiveItem
	jr nc, .BagFull
	ld hl, ReceivedSilphText
	call PrintText
	ld hl, wNEWSILPH
	set 1, [hl]
	jr .asm_3c73c ; 0x191b7
.BagFull
	ld hl, SilphNoRoomText
	call PrintText
	jr .asm_3c73c ; 0x191bf
.asm_4e5a0 ; 0x191c1
	ld hl, SilphExplanation
	call PrintText
.asm_3c73c ; 0x191c7
	jp TextScriptEnd

ReceivedSilphText: ; 5c341 (17:4341)
	TX_FAR _ReceivedSilphText
	db "@"
	
SilphNoRoomText: ; 5c341 (17:4341)
	TX_FAR _SilphNoRoomText
	db "@"
	
SilphExplanation: ; 5c341 (17:4341)
	TX_FAR _SilphExplanation
	db "@"

Museum2FText6: ; 5c341 (17:4341)
	TX_FAR _Museum2FText6
	db "@"

Museum2FText7: ; 5c346 (17:4346)
	TX_FAR _Museum2FText7
	db "@"
