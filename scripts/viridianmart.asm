ViridianMartScript: ; 1d46e (7:546e)
	jp EnableAutoTextBoxDrawing

ViridianMartScript_1d47d: ; 1d47d (7:547d)
	ld a, [wd74e]
	bit 0, a
	jr nz, .asm_1d489 ; 0x1d482 $5
	ld hl, ViridianMartTextPointers ; $54e0
	jr .asm_1d48c ; 0x1d487 $3
.asm_1d489
	ld hl, ViridianMartTextPointers + $a ; $54ea ; starts at ViridianMartText6
.asm_1d48c
	ld a, l
	ld [W_MAPTEXTPTR], a
	ld a, h
	ld [W_MAPTEXTPTR+1], a
	ret

ViridianMartTextPointers: ; 1d4e0 (7:54e0)
	dw ViridianMartText1
	dw ViridianMartText2
	dw ViridianMartText3
	dw ViridianMartText4
	dw ViridianMartText5
	dw ViridianMartText6
	dw ViridianMartText2
	dw ViridianMartText3

ViridianMartText1: ; 1d4f0 (7:54f0)
	db $FE,4,POKE_BALL,POTION,ANTIDOTE,PARLYZ_HEAL,BURN_HEAL,$FF

ViridianMartText4: ; 1d4f5 (7:54f5)
	TX_FAR _ViridianMartText4
	db "@"

ViridianMartText5: ; 1d4fa (7:54fa)
	TX_FAR ViridianMartParcelQuestText
	db $11
	db "@"

ViridianMartText2: ; 1d500 (7:5500)
	TX_FAR _ViridianMartText2
	db "@"

ViridianMartText3: ; 1d505 (7:5505)
	TX_FAR _ViridianMartText3
	db "@"
