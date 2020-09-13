SSAnne7Script: ; 61895 (18:5895)
	call SSAnne7Script_6189b
	call EnableAutoTextBoxDrawing
	ld hl, SSAnne7ScriptPointers
	ld a, [W_CUT1CURSCRIPT]
	jp CallFunctionInTable

SSAnne7Script_6189b: ; 6189b (18:589b)
	ld a, [wd803]
	bit 1, a
	ret nz
	ld hl, wd72d
	set 5, [hl]
	ret

SSAnne7ScriptPointers:
	dw SSAnne7Script0
	dw SSAnne7Script1
	dw SSAnne7Script2
	dw SSAnne7Script3
	dw SSAnne7Script4
	dw SSAnne7Script5
	dw SSAnne7Script6
	
SSAnne7Script0: ; 75f47 (1d:5f47)
	ld hl, W_MAPCHANGED ; load new flag
    res 0, [hl]
	ld a, HS_SS_ANNE_2_RIVAL
	ld [wcc4d], a
	predef ShowObject
	ld a, $1
	ld [W_CUT1CURSCRIPT], a
	ret

SSAnne7Script1: ; 75f48 (1d:5f48)
	ld a, $ff
	ld [wJoyIgnore], a
	ld hl, wSimulatedJoypadStatesEnd
	ld de, RLEMovementListab
	call DecodeRLEList
	dec a
	ld [wSimulatedJoypadStatesIndex], a
	call StartSimulatingJoypadStates
	ld a, $2
	ld [W_CUT1CURSCRIPT], a
	ret
	
SSAnne7Script2: ; 75f6a (1d:5f6a)
	ld a, [wSimulatedJoypadStatesIndex]
	and a
	ret nz
	call Delay3
	xor a
	predef EmotionBubble
	ld [wJoyIgnore], a
	ld a, $1
	ld [$ff8c], a
	call DisplayTextID
	call Delay3
	ld a, $1
	ld [H_DOWNARROWBLINKCNT2], a ; $ff8c
	call SetSpriteMovementBytesToFF
	ld de, MovementData_mau5
	ld a, $1
	ld [$ff8c], a
	call MoveSprite
	ld a, $3
	ld [W_CUT1CURSCRIPT], a
	ret
	
SSAnne7Script3:
	ld a, [wd730]
	bit 0, a
	ret nz
	ld a, $2
	ld [$ff8c], a
	call DisplayTextID
	call Delay3
	ld hl, wd72d
	set 6, [hl]
	set 7, [hl]
	ld hl, SSAnne7Text4 ; $6330
	ld de, SSAnne7Text4 ; $6330
	call SaveEndBattleTextPointers
	ld a, $1 ; $ff8c
	ld [wSpriteIndex], a
	call EngageMapTrainer
	call InitBattleEnemyParameters
	xor a
	ld [wJoyIgnore], a
	ld a, $4
	ld [W_CUT1CURSCRIPT], a
	ret
	
SSAnne7Script4:
	ld a, [W_ISINBATTLE] ; W_ISINBATTLE
	cp $ff
	jp z, JoyIgnoreTing
	ld a, $5
	ld [$ff8c], a
	call DisplayTextID
	call Delay3
	call GBFadeOutToBlack
	ld a, HS_SS_ANNE_2_RIVAL
	ld [wcc4d], a
	predef HideObject
	ld a, HS_CERULEAN_GYM_1
	ld [wcc4d], a
	predef ShowObject
	ld a, HS_CERULEAN_GYM_2
	ld [wcc4d], a
	predef ShowObject
	ld a, HS_CERULEAN_GYM_3
	ld [wcc4d], a
	predef HideObject
	call Delay3
	call GBFadeInFromBlack
	ld a, $2
	ld [H_DOWNARROWBLINKCNT2], a ; $ff8c
	call SetSpriteMovementBytesToFF
	ld de, MovementData_mau5
	ld a, $2
	ld [$ff8c], a
	call MoveSprite
	ld a, $5
	ld [W_CUT1CURSCRIPT], a
	ret
	
SSAnne7Script5:
	ld a, [wd730]
	bit 0, a
	ret nz
	ld a, $f0
	ld [wJoyIgnore], a
	ld a, $3
	ld [$ff8c], a
	call DisplayTextID
	ld hl, wd7e0
	set 7, [hl]
	ld hl, wd769
	set 7, [hl]
	ld hl, W_SAVEDKREWELLA ; load new flag
    set 0, [hl]
	call GBFadeOutToBlack
	ld a, HS_SS_ANNE_7_GIRL_1
	ld [wcc4d], a
	predef HideObject
	ld a, HS_SS_ANNE_7_GIRL_2
	ld [wcc4d], a
	predef HideObject
	call Delay3
	call GBFadeInFromBlack
	xor a
	ld [wJoyIgnore], a
	ld a, $6
	ld [W_CUT1CURSCRIPT], a
	ret
	
SSAnne7Script6:
	ret
	
JoyIgnoreTing: ; 621c4 (18:61c4)
	xor a
	ld [wJoyIgnore], a

MovementData_mau5: ; 76014 (1d:6014)
	db $00,$FF

RLEMovementListab: ; 75f63 (1d:5f63)
	db $40,1
	db $10,1
	db $ff
	
SSAnne7TextPointers: ; 618a7 (18:58a7)
	dw SSAnne7Text1
	dw SSAnne7Text2
	dw SSAnne7Text3
	dw SSAnne7Text4
	dw SSAnne7Text5

SSAnne7Text1: ; 618ad (18:58ad)
	db $08 ; asm
	;ld a, [wd803]
	;bit 0, a
	;jr nz, .asm_797c4 ; 0x618b3
	ld hl, SSAnne7RubText
	call PrintText
	jp TextScriptEnd
	
SomethingSomething:
	ld hl, ReceivingHM01Text
	call PrintText
	ld bc, (HM_01 << 8) | 1
	call GiveItem
	jr nc, .BagFull
	ld hl, ReceivedHM01Text
	call PrintText
	ld hl, wd803
	set 0, [hl]
	jr .asm_0faf5 ; 0x618d4
.BagFull
	ld hl, HM01NoRoomText
	call PrintText
	ld hl, wd72d
	set 5, [hl]
	jr .asm_0faf5 ; 0x618e1
.asm_797c4 ; 0x618e3
	ld hl, SSAnne7Text_61932
	call PrintText
.asm_0faf5 ; 0x618e9
	jp TextScriptEnd

SSAnne7RubText: ; 618ec (18:58ec)
	TX_FAR _SSAnne7RubText
	db "@"
	
SomethingSomething2:
	db $8
	ld a, [wc0ef]
	cp $1f
	ld [wc0f0], a
	jr nz, .asm_61908 ; 0x618f9 $d
	ld a, $ff
	ld [wc0ee], a
	call PlaySound
	ld a, Bank(Func_9876)
	ld [wc0ef], a
.asm_61908
	ld a, MUSIC_PKMN_HEALED
	ld [wc0ee], a
	call PlaySound
.asm_61910
	ld a, [wc026]
	cp MUSIC_PKMN_HEALED
	jr z, .asm_61910 ; 0x61915 $f9
	call PlayDefaultMusic
	ld hl, wd803
	set 1, [hl]
	ld hl, wd72d
	res 5, [hl]
	jp TextScriptEnd

ReceivingHM01Text: ; 61927 (18:5927)
	TX_FAR _ReceivingHM01Text
	db "@"

ReceivedHM01Text: ; 6192c (18:592c)
	TX_FAR _ReceivedHM01Text
	db $11, "@"

SSAnne7Text_61932: ; 61932 (18:5932)
	TX_FAR _SSAnne7Text_61932
	db "@"

HM01NoRoomText: ; 61937 (18:5937)
	TX_FAR _HM01NoRoomText
	db "@"

SSAnne7Text2: ; 6193c (18:593c)
	TX_FAR _SSAnne7Text2
	db "@"

SSAnne7Text3: ; 61941 (18:5941)
	TX_FAR _SSAnne7Text3
	db "@"
	
SSAnne7Text4: ; 61941 (18:5941)
	TX_FAR _SSAnne7Text4
	db "@"
	
SSAnne7Text5: ; 61941 (18:5941)
	TX_FAR _SSAnne7Text5
	db "@"

