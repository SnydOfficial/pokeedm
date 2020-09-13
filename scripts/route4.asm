Route4Script: ; 55658 (15:5658)
	call EnableAutoTextBoxDrawing
	ld hl, Route4TrainerHeaders
	ld de, Route4ScriptPointers
	ld a, [W_ROUTE4CURSCRIPT]
	call ExecuteCurMapScriptInTable
	ld [W_ROUTE4CURSCRIPT], a
	ret

Route4ScriptPointers: ; 5566b (15:566b)
	dw CheckFightingMapTrainers
	dw DisplayEnemyTrainerTextAndStartBattle
	dw EndTrainerBattle

Route4TextPointers: ; 55671 (15:5671)
	dw Route4Text1
	dw Route4Text2
	dw Route4Text3
	dw Route4Text4
	dw Route4Text5
	dw Predef5CText

Route4TrainerHeaders: ; 5567d (15:567d)
Route4TrainerHeader0: ; 5567d (15:567d)
	db $2 ; flag's bit
	db ($3 << 4) ; trainer's view range
	dw wd7c5 ; flag's byte
	dw Route4BattleText1 ; 0x5699 TextBeforeBattle
	dw Route4AfterBattleText1 ; 0x56a3 TextAfterBattle
	dw Route4EndBattleText1 ; 0x569e TextEndBattle
	dw Route4EndBattleText1 ; 0x569e TextEndBattle
	
Route4TrainerHeader4: ; 55549 (15:5549)
	db $5 ; flag's bit
	db ($1 << 4) ; trainer's view range
	dw wd7c3 ; flag's byte
	dw Route3BattleText4 ; 0x55e0 TextBeforeBattle
	dw Route3AfterBattleText4 ; 0x55ea TextAfterBattle
	dw Route3EndBattleText4 ; 0x55e5 TextEndBattle
	dw Route3EndBattleText4 ; 0x55e5 TextEndBattle

Route4TrainerHeader5: ; 55555 (15:5555)
	db $6 ; flag's bit
	db ($4 << 4) ; trainer's view range
	dw wd7c3 ; flag's byte
	dw Route3BattleText5 ; 0x55f9 TextBeforeBattle
	dw Route3AfterBattleText5 ; 0x5603 TextAfterBattle
	dw Route3EndBattleText5 ; 0x55fe TextEndBattle
	dw Route3EndBattleText5 ; 0x55fe TextEndBattle

Route4TrainerHeader6: ; 55561 (15:5561)
	db $7 ; flag's bit
	db ($3 << 4) ; trainer's view range
	dw wd7c3 ; flag's byte
	dw Route3BattleText6 ; 0x5612 TextBeforeBattle
	dw Route3AfterBattleText6 ; 0x561c TextAfterBattle
	dw Route3EndBattleText6 ; 0x5617 TextEndBattle
	dw Route3EndBattleText6 ; 0x5617 TextEndBattle

	db $ff

Route4Text1: ; 5568a (15:568a)
	TX_FAR _Route4Text1
	db "@"

Route4Text2: ; 5568f (15:568f)
	db $08 ; asm
	ld hl, Route4TrainerHeader0
	call TalkToTrainer
	jp TextScriptEnd

Route4BattleText1: ; 55699 (15:5699)
	TX_FAR _Route4BattleText1
	db "@"

Route4EndBattleText1: ; 5569e (15:569e)
	TX_FAR _Route4EndBattleText1
	db "@"

Route4AfterBattleText1: ; 556a3 (15:56a3)
	TX_FAR _Route4AfterBattleText1
	db "@"
	
Route4Text3: ; 555d6 (15:55d6)
	db $08 ; asm
	ld hl, Route4TrainerHeader4
	call TalkToTrainer
	jp TextScriptEnd

Route3BattleText4: ; 555e0 (15:55e0)
	TX_FAR _Route3BattleText4
	db "@"

Route3EndBattleText4: ; 555e5 (15:55e5)
	TX_FAR _Route3EndBattleText4
	db "@"

Route3AfterBattleText4: ; 555ea (15:55ea)
	TX_FAR _Route3AfterBattleText4
	db "@"

Route4Text4: ; 555ef (15:55ef)
	db $08 ; asm
	ld hl, Route4TrainerHeader5
	call TalkToTrainer
	jp TextScriptEnd

Route3BattleText5: ; 555f9 (15:55f9)
	TX_FAR _Route3BattleText5
	db "@"

Route3EndBattleText5: ; 555fe (15:55fe)
	TX_FAR _Route3EndBattleText5
	db "@"

Route3AfterBattleText5: ; 55603 (15:5603)
	TX_FAR _Route3AfterBattleText5
	db "@"

Route4Text5: ; 55608 (15:5608)
	db $08 ; asm
	ld hl, Route4TrainerHeader6
	call TalkToTrainer
	jp TextScriptEnd

Route3BattleText6: ; 55612 (15:5612)
	TX_FAR _Route3BattleText6
	db "@"

Route3EndBattleText6: ; 55617 (15:5617)
	TX_FAR _Route3EndBattleText6
	db "@"

Route3AfterBattleText6: ; 5561c (15:561c)
	TX_FAR _Route3AfterBattleText6
	db "@"
