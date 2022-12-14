FightingDojoScript: ; 5cd5d (17:4d5d)
	call EnableAutoTextBoxDrawing
	ld hl, FightingDojoTrainerHeaders
	ld de, FightingDojoScriptPointers
	ld a, [W_FIGHTINGDOJOCURSCRIPT]
	call ExecuteCurMapScriptInTable
	ld [W_FIGHTINGDOJOCURSCRIPT], a
	ret

FightingDojoScript_5cd70: ; 5cd70 (17:4d70)
	xor a
	ld [wJoyIgnore], a
	ld [W_FIGHTINGDOJOCURSCRIPT], a
	ld [W_CURMAPSCRIPT], a
	ret

FightingDojoScriptPointers: ; 5cd7b (17:4d7b)
	dw FightingDojoScript1
	dw DisplayEnemyTrainerTextAndStartBattle
	dw EndTrainerBattle
	dw FightingDojoScript3

FightingDojoScript1: ; 5cd83 (17:4d83)
	ld a, [wd7b1]
	bit 0, a
	ret nz
	call CheckFightingMapTrainers
	ld a, [wTrainerHeaderFlagBit]
	and a
	ret nz
	ld a, [wd7b1]
	bit 1, a
	ret nz
	xor a
	ld [hJoyHeld], a
	ld [wcf0d], a
	ld a, [W_YCOORD]
	cp $3
	ret nz
	ld a, [W_XCOORD]
	cp $4
	ret nz
	ld a, $1
	ld [wcf0d], a
	ld a, $1
	ld [wd528], a
	ld a, $1
	ld [$ff8c], a
	ld a, $8
	ld [$ff8d], a
	call SetSpriteFacingDirectionAndDelay
	ld a, $1
	ld [$ff8c], a
	call DisplayTextID
	ret

FightingDojoScript3: ; 5cdc6 (17:4dc6)
	ld a, [W_ISINBATTLE]
	cp $ff
	jp z, FightingDojoScript_5cd70
	ld a, [wcf0d]
	and a
	jr z, .asm_5cde4
	ld a, $1
	ld [wd528], a
	ld a, $1
	ld [$ff8c], a
	ld a, $8
	ld [$ff8d], a
	call SetSpriteFacingDirectionAndDelay

.asm_5cde4
	ld a, $f0
	ld [wJoyIgnore], a
	ld a, [wd7b1]
	or $3e
	ld [wd7b1], a
	ld a, $8
	ld [$ff8c], a
	call DisplayTextID
	xor a
	ld [wJoyIgnore], a
	ld [W_FIGHTINGDOJOCURSCRIPT], a
	ld [W_CURMAPSCRIPT], a
	ret

FightingDojoTextPointers: ; 5ce03 (17:4e03)
	dw FightingDojoText1
	dw FightingDojoText2
	dw FightingDojoText3
	dw FightingDojoText4
	dw FightingDojoText5
	dw FightingDojoText6
	dw FightingDojoText7
	dw FightingDojoText8
	dw FightingDojoText9
	dw FightingDojoText10
	dw FightingDojoText11
	dw FightingDojoText12

FightingDojoTrainerHeaders: ; 5ce13 (17:4e13)
FightingDojoTrainerHeader0: ; 5ce13 (17:4e13)
	db $2 ; flag's bit
	db ($4 << 4) ; trainer's view range
	dw wd7b1 ; flag's byte
	dw FightingDojoBattleText1 ; 0x4eac TextBeforeBattle
	dw FightingDojoAfterBattleText1 ; 0x4eb6 TextAfterBattle
	dw FightingDojoEndBattleText1 ; 0x4eb1 TextEndBattle
	dw FightingDojoEndBattleText1 ; 0x4eb1 TextEndBattle

FightingDojoTrainerHeader1: ; 5ce1f (17:4e1f)
	db $3 ; flag's bit
	db ($4 << 4) ; trainer's view range
	dw wd7b1 ; flag's byte
	dw FightingDojoBattleText2 ; 0x4ec5 TextBeforeBattle
	dw FightingDojoAfterBattleText2 ; 0x4ecf TextAfterBattle
	dw FightingDojoEndBattleText2 ; 0x4eca TextEndBattle
	dw FightingDojoEndBattleText2 ; 0x4eca TextEndBattle

FightingDojoTrainerHeader2: ; 5ce2b (17:4e2b)
	db $4 ; flag's bit
	db ($4 << 4) ; trainer's view range
	dw wd7b1 ; flag's byte
	dw FightingDojoBattleText3 ; 0x4ede TextBeforeBattle
	dw FightingDojoAfterBattleText3 ; 0x4ee8 TextAfterBattle
	dw FightingDojoEndBattleText3 ; 0x4ee3 TextEndBattle
	dw FightingDojoEndBattleText3 ; 0x4ee3 TextEndBattle

FightingDojoTrainerHeader3: ; 5ce37 (17:4e37)
	db $5 ; flag's bit
	db ($4 << 4) ; trainer's view range
	dw wd7b1 ; flag's byte
	dw FightingDojoBattleText4 ; 0x4ef7 TextBeforeBattle
	dw FightingDojoAfterBattleText4 ; 0x4f01 TextAfterBattle
	dw FightingDojoEndBattleText4 ; 0x4efc TextEndBattle
	dw FightingDojoEndBattleText4 ; 0x4efc TextEndBattle
	
FightingDojoTrainerHeader4: ; 5ce37 (17:4e37)
	db $6 ; flag's bit
	db ($4 << 4) ; trainer's view range
	dw wd7b1 ; flag's byte
	dw FightingDojoBattleText5 ; 0x4ef7 TextBeforeBattle
	dw FightingDojoAfterBattleText5 ; 0x4f01 TextAfterBattle
	dw FightingDojoEndBattleText5 ; 0x4efc TextEndBattle
	dw FightingDojoEndBattleText5 ; 0x4efc TextEndBattle
	
FightingDojoTrainerHeader5: ; 5ce37 (17:4e37)
	db $7 ; flag's bit
	db ($4 << 4) ; trainer's view range
	dw wd7b1 ; flag's byte
	dw FightingDojoBattleText6 ; 0x4ef7 TextBeforeBattle
	dw FightingDojoAfterBattleText6 ; 0x4f01 TextAfterBattle
	dw FightingDojoEndBattleText6 ; 0x4efc TextEndBattle
	dw FightingDojoEndBattleText6 ; 0x4efc TextEndBattle
	
FightingDojoTrainerHeader6: ; 5ce37 (17:4e37)
	db $8 ; flag's bit
	db ($4 << 4) ; trainer's view range
	dw wd7b1 ; flag's byte
	dw FightingDojoBattleText7 ; 0x4ef7 TextBeforeBattle
	dw FightingDojoAfterBattleText7 ; 0x4f01 TextAfterBattle
	dw FightingDojoEndBattleText7 ; 0x4efc TextEndBattle
	dw FightingDojoEndBattleText7 ; 0x4efc TextEndBattle

	db $ff

FightingDojoText1: ; 5ce44 (17:4e44)
	db $08 ; asm
	ld a, [wd7b1]
	bit 0, a
	jp nz, .continue1
	bit 1, a
	jp nz, .continue2
	ld hl, FightingDojoText_5ce8e
	call PrintText
	ld hl, wd72d
	set 6, [hl]
	set 7, [hl]
	ld hl, FightingDojoText_5ce93
	ld de, FightingDojoText_5ce93
	call SaveEndBattleTextPointers
	ldh a, [$8c]
	ld [wSpriteIndex], a
	call EngageMapTrainer
	call InitBattleEnemyParameters
	ld a, $3
	ld [W_FIGHTINGDOJOCURSCRIPT], a
	ld [W_CURMAPSCRIPT], a
	jr .asm_9dba4 ; 0x5ce7b
.continue1 ; 0x5ce7d
	ld hl, FightingDojoText_5ce9d
	call PrintText
	jr .asm_9dba4 ; 0x5ce83
.continue2 ; 0x5ce85f
	ld hl, FightingDojoText4564
	call PrintText
.asm_9dba4 ; 0x5ce8b
	jp TextScriptEnd

FightingDojoText_5ce8e: ; 5ce8e (17:4e8e)
	TX_FAR _FightingDojoText_5ce8e
	db "@"

FightingDojoText_5ce93: ; 5ce93 (17:4e93)
	TX_FAR _FightingDojoText_5ce93
	db "@"

FightingDojoText4564: ; 5ce98 (17:4e98)
	TX_FAR _FightingDojoText_5ce98
	db "@"

FightingDojoText_5ce9d: ; 5ce9d (17:4e9d)
	TX_FAR _FightingDojoText_5ce9d
	db "@"

FightingDojoText2: ; 5cea2 (17:4ea2)
	db $08 ; asm
	ld hl, FightingDojoTrainerHeader0
	call TalkToTrainer
	jp TextScriptEnd

FightingDojoBattleText1: ; 5ceac (17:4eac)
	TX_FAR _FightingDojoBattleText1
	db "@"

FightingDojoEndBattleText1: ; 5ceb1 (17:4eb1)
	TX_FAR _FightingDojoEndBattleText1
	db "@"

FightingDojoAfterBattleText1: ; 5ceb6 (17:4eb6)
	TX_FAR _FightingDojoAfterBattleText1
	db "@"

FightingDojoText3: ; 5cebb (17:4ebb)
	db $08 ; asm
	ld hl, FightingDojoTrainerHeader1
	call TalkToTrainer
	jp TextScriptEnd

FightingDojoBattleText2: ; 5cec5 (17:4ec5)
	TX_FAR _FightingDojoBattleText2
	db "@"

FightingDojoEndBattleText2: ; 5ceca (17:4eca)
	TX_FAR _FightingDojoEndBattleText2
	db "@"

FightingDojoAfterBattleText2: ; 5cecf (17:4ecf)
	TX_FAR _FightingDojoAfterBattleText2
	db "@"

FightingDojoText4: ; 5ced4 (17:4ed4)
	db $08 ; asm
	ld hl, FightingDojoTrainerHeader2
	call TalkToTrainer
	jp TextScriptEnd

FightingDojoBattleText3: ; 5cede (17:4ede)
	TX_FAR _FightingDojoBattleText3
	db "@"

FightingDojoEndBattleText3: ; 5cee3 (17:4ee3)
	TX_FAR _FightingDojoEndBattleText3
	db "@"

FightingDojoAfterBattleText3: ; 5cee8 (17:4ee8)
	TX_FAR _FightingDojoAfterBattleText3
	db "@"

FightingDojoText5: ; 5ceed (17:4eed)
	db $08 ; asm
	ld hl, FightingDojoTrainerHeader3
	call TalkToTrainer
	jp TextScriptEnd

FightingDojoBattleText4: ; 5cef7 (17:4ef7)
	TX_FAR _FightingDojoBattleText4
	db "@"

FightingDojoEndBattleText4: ; 5cefc (17:4efc)
	TX_FAR _FightingDojoEndBattleText4
	db "@"

FightingDojoAfterBattleText4: ; 5cf01 (17:4f01)
	TX_FAR _FightingDojoAfterBattleText4
	db "@"

FightingDojoText9: ; 5cf06 (17:4f06)
; Hitmonlee Poké Ball
	db $08 ; asm
	ld a, [wd7b1]
	and %11000000
	jr z, .GetMon
	ld hl, OtherHitmonText
	call PrintText
	jr .done
.GetMon
	ld a, AFROLEE
	call DisplayPokedex
	ld hl, WantHitmonleeText
	call PrintText
	call YesNoChoice
	ld a, [wCurrentMenuItem]
	and a
	jr nz, .done
	ld a, [wcf91]
	ld b, a
	ld c, 30
	call GivePokemon
	jr nc, .done

	; once Poké Ball is taken, hide sprite
	ld a, HS_FIGHTING_DOJO_GIFT_1
	ld [wcc4d], a
	predef HideObject
	ld hl, wd7b1
	set 6, [hl]
	set 0, [hl]
.done
	jp TextScriptEnd

WantHitmonleeText: ; 5cf49 (17:4f49)
	TX_FAR _WantHitmonleeText
	db "@"

FightingDojoText10: ; 5cf4e (17:4f4e)
; Hitmonchan Poké Ball
	db $08 ; asm
	ld a, [wd7b1]
	and %11000000
	jr z, .GetMon
	ld hl, OtherHitmonText
	call PrintText
	jr .done
.GetMon
	ld a, AFROCHAN
	call DisplayPokedex
	ld hl, WantHitmonchanText
	call PrintText
	call YesNoChoice
	ld a, [wCurrentMenuItem]
	and a
	jr nz, .done
	ld a, [wcf91]
	ld b, a
	ld c,30
	call GivePokemon
	jr nc, .done
	ld hl, wd7b1
	set 7, [hl]
	set 0, [hl]

	; once Poké Ball is taken, hide sprite
	ld a, HS_FIGHTING_DOJO_GIFT_2
	ld [wcc4d], a
	predef HideObject
.done
	jp TextScriptEnd

WantHitmonchanText: ; 5cf91 (17:4f91)
	TX_FAR _WantHitmonchanText
	db "@"

OtherHitmonText: ; 5cf96 (17:4f96)
	TX_FAR _OtherHitmonText
	db "@"
	
FightingDojoText6: ; 5ceed (17:4eed)
	db $08 ; asm
	ld hl, FightingDojoTrainerHeader4
	call TalkToTrainer
	jp TextScriptEnd

FightingDojoBattleText5: ; 5cef7 (17:4ef7)
	TX_FAR _FightingDojoBattleText5
	db "@"

FightingDojoEndBattleText5: ; 5cefc (17:4efc)
	TX_FAR _FightingDojoEndBattleText5
	db "@"

FightingDojoAfterBattleText5: ; 5cf01 (17:4f01)
	TX_FAR _FightingDojoAfterBattleText5
	db "@"
	
FightingDojoText7: ; 5ceed (17:4eed)
	db $08 ; asm
	ld hl, FightingDojoTrainerHeader5
	call TalkToTrainer
	jp TextScriptEnd

FightingDojoBattleText6: ; 5cef7 (17:4ef7)
	TX_FAR _FightingDojoBattleText6
	db "@"

FightingDojoEndBattleText6: ; 5cefc (17:4efc)
	TX_FAR _FightingDojoEndBattleText6
	db "@"

FightingDojoAfterBattleText6: ; 5cf01 (17:4f01)
	TX_FAR _FightingDojoAfterBattleText6
	db "@"

FightingDojoText8: ; 5ceed (17:4eed)
	db $08 ; asm
	ld hl, FightingDojoTrainerHeader6
	call TalkToTrainer
	jp TextScriptEnd

FightingDojoBattleText7: ; 5cef7 (17:4ef7)
	TX_FAR _FightingDojoBattleText7
	db "@"

FightingDojoEndBattleText7: ; 5cefc (17:4efc)
	TX_FAR _FightingDojoEndBattleText7
	db "@"

FightingDojoAfterBattleText7: ; 5cf01 (17:4f01)
	TX_FAR _FightingDojoAfterBattleText7
	db "@"
	
FightingDojoText12: ; 4856c (12:456c)
	db $f5

FightingDojoScript_483d8: ; 483d8 (12:43d8)
	xor a
	ld [wcd37], a
	ld de, wcc5b
	ld hl, FightingDojoDrinkList ; $4408
.asm_483e2
	ld a, [hli]
	and a
	jr z, .asm_48404
	push hl
	push de
	ld [wd11e], a
	ld b, a
	predef IsItemInBag_
	pop de
	pop hl
	ld a, b
	and a
	jr z, .asm_483e2
	ld a, [wd11e]
	ld [de], a
	inc de
	push hl
	ld hl, wcd37
	inc [hl]
	pop hl
	jr .asm_483e2
.asm_48404
	ld a, $ff
	ld [de], a
	ret
	
FightingDojoDrinkList: ; 48408 (12:4408)
	db FRESH_WATER
	db SODA_POP
	db LEMONADE
	db $00
	
FightingDojoScript_4840c: ; 4840c (12:440c)
	ld hl, wd730
	set 6, [hl]
	ld hl, FightingDojoText_484ee ; $44ee
	call PrintText
	xor a
	ld [wCurrentMenuItem], a ; wCurrentMenuItem
	ld a, $3
	ld [wMenuWatchedKeys], a ; wMenuWatchedKeys
	ld a, [wcd37]
	dec a
	ld [wMaxMenuItem], a ; wMaxMenuItem
	ld a, $2
	ld [wTopMenuItemY], a ; wTopMenuItemY
	ld a, $1
	ld [wTopMenuItemX], a ; wTopMenuItemX
	ld a, [wcd37]
	dec a
	ld bc, $2
	ld hl, $3
	call AddNTimes
	dec l
	ld b, l
	ld c, $c
	ld hl, wTileMap
	call TextBoxBorder
	call UpdateSprites
	call FightingDojoScript_48532
	ld hl, wd730
	res 6, [hl]
	call HandleMenuInput
	bit 1, a
	ret nz
	ld hl, wcc5b
	ld a, [wCurrentMenuItem] ; wCurrentMenuItem
	ld d, $0
	ld e, a
	add hl, de
	ld a, [hl]
	ld [$ffdb], a
	cp FRESH_WATER
	jr z, .asm_484b6
	cp SODA_POP
	jr z, .asm_48492
	ld a, [wd778]
	bit 6, a
	jr nz, .asm_484e0
	ld hl, FightingDojoText_48515 ; $4515
	call PrintText
	call RemoveItemIDFightingDojo
	ld bc, (TM_49 << 8) | 1
	call GiveItem
	jr nc, .BagFull
	ld hl, ReceivedTM49Text
	call PrintText
	ld hl, wd778
	set 6, [hl]
	ret
.asm_48492
	ld a, [wd778]
	bit 5, a
	jr nz, .asm_484e0
	ld hl, FightingDojoText_48504 ; $4504
	call PrintText
	call RemoveItemIDFightingDojo
	ld bc, (TM_48 << 8) | 1
	call GiveItem
	jr nc, .BagFull
	ld hl, FightingDojoText_4850a ; $450a
	call PrintText
	ld hl, wd778
	set 5, [hl]
	ret
.asm_484b6
	ld a, [wd778]
	bit 4, a
	jr nz, .asm_484e0
	ld hl, FightingDojoText_484f3 ; $44f3
	call PrintText
	call RemoveItemIDFightingDojo
	ld bc, (TM_13 << 8) | 1
	call GiveItem
	jr nc, .BagFull
	ld hl, FightingDojoText_484f9 ; $44f9
	call PrintText
	ld hl, wd778
	set 4, [hl]
	ret
.BagFull
	ld hl, FightingDojoText_48526 ; $4526
	jp PrintText
.asm_484e0
	ld hl, FightingDojoText_4852c ; $452c
	jp PrintText

RemoveItemIDFightingDojo: ; 484e6 (12:44e6)
	ld b, BANK(RemoveItemByID)
	ld hl, RemoveItemByID
	jp Bankswitch
	
FightingDojoText_4852c: ; 5cf01 (17:4f01)
	TX_FAR _FightingDojoText_4852c
	db "@"
	
FightingDojoText_48526: ; 5cf01 (17:4f01)
	TX_FAR _FightingDojoText_48526
	db "@"
	
FightingDojoText_484f9: ; 5cf01 (17:4f01)
	TX_FAR _FightingDojoText_484f9
	db "@"
	
FightingDojoText_4850a: ; 5cf01 (17:4f01)
	TX_FAR _FightingDojoText_4850a
	db "@"
	
FightingDojoText_484f3: ; 5cf01 (17:4f01)
	TX_FAR _FightingDojoText_484f3
	db "@"
	
FightingDojoText_48504: ; 5cf01 (17:4f01)
	TX_FAR _FightingDojoText_48504
	db "@"
	
FightingDojoText_48515: ; 5cf01 (17:4f01)
	TX_FAR _FightingDojoText_48515
	db "@"
	
FightingDojoText_484ee: ; 5cf01 (17:4f01)
	TX_FAR _FightingDojoText_484ee
	db "@"
	
FightingDojoText_poop: ; 5cf01 (17:4f01)
	TX_FAR _FightingDojoText_poop
	db "@"
	
FightingDojoText_poop2: ; 5cf01 (17:4f01)
	TX_FAR _FightingDojoText_poop2
	db "@"
	
FightingDojoText11: ; 5cf01 (17:4f01)
	TX_FAR _FightingDojoText_484ee
	db "@"
	
FightingDojoScript_48532: ; 48532 (12:4532)
	ld hl, wcc5b
	xor a
	ld [$ffdb], a
.asm_48538
	ld a, [hli]
	cp $ff
	ret z
	push hl
	ld [wd11e], a
	call GetItemName
	hlCoord 2, 2
	ld a, [$ffdb]
	ld bc, $28
	call AddNTimes
	ld de, wcd6d
	call PlaceString
	ld hl, $ffdb
	inc [hl]
	pop hl
	jr .asm_48538