Route16Script: ; 59933 (16:5933)
	ld hl, wd798 ; load empty ram address
    set 2, [hl]
	call EnableAutoTextBoxDrawing
	ld hl, Route16TrainerHeaders
	ld de, Route16ScriptPointers
	ld a, [W_ROUTE16CURSCRIPT]
	call ExecuteCurMapScriptInTable
	ld [W_ROUTE16CURSCRIPT], a
	ret

Route16Script_59946: ; 59946 (16:5946)
	xor a
	ld [wJoyIgnore], a
	ld [W_ROUTE16CURSCRIPT], a
	ld [W_CURMAPSCRIPT], a
	ret

Route16ScriptPointers: ; 59951 (16:5951)
    dw CheckFightingMapTrainers
	dw DisplayEnemyTrainerTextAndStartBattle
	dw EndTrainerBattle
	dw Route16Script0
	dw Route16Script3

Route16Script_lala: ; 467a5 (11:67a5)
	xor a
	ld [W_SEAFOAMISLANDS5CURSCRIPT], a
	ld [wJoyIgnore], a
	ret
	
Route16Script0: ; 59959 (16:5959)
	ld a, [W_ISINBATTLE]
	cp $ff
	jr z, Route16Script_lala
	call EndTrainerBattle
	ld a, $0
	ld [W_ROUTE16CURSCRIPT], a
	ret

Route16Script3: ; 5998f (16:598f)
	ld a, [W_ISINBATTLE] ; W_ISINBATTLE
	cp $ff
	jp z, Route16Script_59946
	call UpdateSprites
	ld a, [wBattleResult]
	cp $2
	jr z, .asm_599a8
	ld a, $b
	ld [H_DOWNARROWBLINKCNT2], a ; $ff8c
	call DisplayTextID
.asm_599a8
	ld hl, wd7e0
	set 1, [hl]
	call Delay3
	ld a, $0
	ld [W_ROUTE16CURSCRIPT], a
	ld [W_CURMAPSCRIPT], a
	ret

Route16TextPointers: ; 599b9 (16:59b9)
	dw Route16Text1
	dw Route16Text2
	dw Route16Text3
	dw Route16Text4
	dw Route16Text5
	dw Route16Text6
	dw Route16Text7
	dw Route16Text8
	dw Route16Text9
	dw Route16Text10
	dw Route16Text11
	dw Route16Text12

Route16TrainerHeaders: ; 599cf (16:59cf)
Route16TrainerHeader0: ; 599cf (16:59cf)
	db $1 ; flag's bit
	db ($3 << 4) ; trainer's view range
	dw wd7df ; flag's byte
	dw Route16BattleText1 ; 0x5a22 TextBeforeBattle
	dw Route16AfterBattleText1 ; 0x5a2c TextAfterBattle
	dw Route16EndBattleText1 ; 0x5a27 TextEndBattle
	dw Route16EndBattleText1 ; 0x5a27 TextEndBattle

Route16TrainerHeader1: ; 599db (16:59db)
	db $2 ; flag's bit
	db ($2 << 4) ; trainer's view range
	dw wd7df ; flag's byte
	dw Route16BattleText2 ; 0x5a3b TextBeforeBattle
	dw Route16AfterBattleText2 ; 0x5a45 TextAfterBattle
	dw Route16EndBattleText2 ; 0x5a40 TextEndBattle
	dw Route16EndBattleText2 ; 0x5a40 TextEndBattle

Route16TrainerHeader2: ; 599e7 (16:59e7)
	db $3 ; flag's bit
	db ($2 << 4) ; trainer's view range
	dw wd7df ; flag's byte
	dw Route16BattleText3 ; 0x5a54 TextBeforeBattle
	dw Route16AfterBattleText3 ; 0x5a5e TextAfterBattle
	dw Route16EndBattleText3 ; 0x5a59 TextEndBattle
	dw Route16EndBattleText3 ; 0x5a59 TextEndBattle

Route16TrainerHeader3: ; 599f3 (16:59f3)
	db $4 ; flag's bit
	db ($2 << 4) ; trainer's view range
	dw wd7df ; flag's byte
	dw Route16BattleText4 ; 0x5a6d TextBeforeBattle
	dw Route16AfterBattleText4 ; 0x5a77 TextAfterBattle
	dw Route16EndBattleText4 ; 0x5a72 TextEndBattle
	dw Route16EndBattleText4 ; 0x5a72 TextEndBattle

Route16TrainerHeader4: ; 599ff (16:59ff)
	db $5 ; flag's bit
	db ($2 << 4) ; trainer's view range
	dw wd7df ; flag's byte
	dw Route16BattleText5 ; 0x5a86 TextBeforeBattle
	dw Route16AfterBattleText5 ; 0x5a90 TextAfterBattle
	dw Route16EndBattleText5 ; 0x5a8b TextEndBattle
	dw Route16EndBattleText5 ; 0x5a8b TextEndBattle

Route16TrainerHeader5: ; 59a0b (16:5a0b)
	db $6 ; flag's bit
	db ($4 << 4) ; trainer's view range
	dw wd7df ; flag's byte
	dw Route16BattleText6 ; 0x5a9f TextBeforeBattle
	dw Route16AfterBattleText6 ; 0x5aa9 TextAfterBattle
	dw Route16EndBattleText6 ; 0x5aa4 TextEndBattle
	dw Route16EndBattleText6 ; 0x5aa4 TextEndBattle
	
Route16TrainerHeader6: ; 59a0b (16:5a0b)
	db $7 ; flag's bit
	db ($4 << 4) ; trainer's view range
	dw wd7df ; flag's byte
	dw Route16Text10 ; 0x5a9f TextBeforeBattle
	dw Route16Text10 ; 0x5aa9 TextAfterBattle
	dw Route16Text10 ; 0x5aa4 TextEndBattle
	dw Route16Text10 ; 0x5aa4 TextEndBattle

	db $ff

Route16Text1: ; 59a18 (16:5a18)
	db $08 ; asm
	ld hl, Route16TrainerHeader0
	call TalkToTrainer
	jp TextScriptEnd

Route16BattleText1: ; 59a22 (16:5a22)
	TX_FAR _Route16BattleText1
	db "@"

Route16EndBattleText1: ; 59a27 (16:5a27)
	TX_FAR _Route16EndBattleText1
	db "@"

Route16AfterBattleText1: ; 59a2c (16:5a2c)
	TX_FAR _Route16AfterBattleText1
	db "@"

Route16Text2: ; 59a31 (16:5a31)
	db $08 ; asm
	ld hl, Route16TrainerHeader1
	call TalkToTrainer
	jp TextScriptEnd

Route16BattleText2: ; 59a3b (16:5a3b)
	TX_FAR _Route16BattleText2
	db "@"

Route16EndBattleText2: ; 59a40 (16:5a40)
	TX_FAR _Route16EndBattleText2
	db "@"

Route16AfterBattleText2: ; 59a45 (16:5a45)
	TX_FAR _Route16AfterBattleText2
	db "@"

Route16Text3: ; 59a4a (16:5a4a)
	db $08 ; asm
	ld hl, Route16TrainerHeader2
	call TalkToTrainer
	jp TextScriptEnd

Route16BattleText3: ; 59a54 (16:5a54)
	TX_FAR _Route16BattleText3
	db "@"

Route16EndBattleText3: ; 59a59 (16:5a59)
	TX_FAR _Route16EndBattleText3
	db "@"

Route16AfterBattleText3: ; 59a5e (16:5a5e)
	TX_FAR _Route16AfterBattleText3
	db "@"

Route16Text4: ; 59a63 (16:5a63)
	db $08 ; asm
	ld hl, Route16TrainerHeader3
	call TalkToTrainer
	jp TextScriptEnd

Route16BattleText4: ; 59a6d (16:5a6d)
	TX_FAR _Route16BattleText4
	db "@"

Route16EndBattleText4: ; 59a72 (16:5a72)
	TX_FAR _Route16EndBattleText4
	db "@"

Route16AfterBattleText4: ; 59a77 (16:5a77)
	TX_FAR _Route16AfterBattleText4
	db "@"

Route16Text5: ; 59a7c (16:5a7c)
	db $08 ; asm
	ld hl, Route16TrainerHeader4
	call TalkToTrainer
	jp TextScriptEnd

Route16BattleText5: ; 59a86 (16:5a86)
	TX_FAR _Route16BattleText5
	db "@"

Route16EndBattleText5: ; 59a8b (16:5a8b)
	TX_FAR _Route16EndBattleText5
	db "@"

Route16AfterBattleText5: ; 59a90 (16:5a90)
	TX_FAR _Route16AfterBattleText5
	db "@"

Route16Text6: ; 59a95 (16:5a95)
	db $08 ; asm
	ld hl, Route16TrainerHeader5
	call TalkToTrainer
	jp TextScriptEnd

Route16BattleText6: ; 59a9f (16:5a9f)
	TX_FAR _Route16BattleText6
	db "@"

Route16EndBattleText6: ; 59aa4 (16:5aa4)
	TX_FAR _Route16EndBattleText6
	db "@"

Route16AfterBattleText6: ; 59aa9 (16:5aa9)
	TX_FAR _Route16AfterBattleText6
	db "@"

PlayedFluteHadEffectText2:: ; a6928 (29:6928)
    TX_FAR _PlayedFluteHadEffectText2
	db $06
	db $08
	ld a,[W_ISINBATTLE]
	and a
	jr nz,.done
; play out-of-battle pokeflute music
	ld a,$ff
	call PlaySound ; turn off music
	ld a, (SFX_02_5e - SFX_Headers_02) / 3
	ld c, BANK(SFX_02_5e)
	call PlayMusic ; play music
.musicWaitLoop ; wait for music to finish playing
	ld a,[wc028]
	cp a,$b8
	jr z,.musicWaitLoop
	call PlayDefaultMusic ; start playing normal music again
.done
	jp TextScriptEnd ; end text
	
_PlayedFluteHadEffectText2
	text $52, " played the"
	line "# FLUTE.@@"
	
Route16Text7: ; 59aae (16:5aae)
	db $08 ;asm
	ld b, POKE_FLUTE
	call IsItemInBag
	jr z, .noPokeFlute
	ld hl,PlayedFluteHadEffectText2
	call PrintText
	ld hl, Route16TrainerHeader6
	call TalkToTrainer
	ld a, $3
	ld [W_ROUTE16CURSCRIPT], a
	jp TextScriptEnd
.noPokeFlute
	ld hl, Route16Text12
	call PrintText
	jp TextScriptEnd

Route16Text10: ; 468a2 (11:68a2)
	TX_FAR _Route16Text10
	db $08
	ld a, PIKAFLARE
	call PlayCry
	call WaitForSoundToFinish
	jp TextScriptEnd	
	
Route16Text12: ; 59ab3 (16:5ab3)
	TX_FAR _Route16Text7
	db "@"

Route16Text11: ; 59ab8 (16:5ab8)
	TX_FAR _Route16Text11
	db "@"

Route16Text8: ; 59abd (16:5abd)
	TX_FAR _Route16Text8
	db "@"

Route16Text9: ; 59ac2 (16:5ac2)
	TX_FAR _Route16Text9
	db "@"
