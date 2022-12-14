FlymapScript: ; 5d5d4 (17:55d4)
	call EnableAutoTextBoxDrawing
	ld hl, FlymapScriptPointers
	ld a, [W_FLYMAPSCRIPT]
	jp CallFunctionInTable

FlymapScriptPointers:
	dw FlymapScript0
	dw FlymapScript1
	
FlymapScript0:
	call BuildFlyLocationsList
	ld a, START | SELECT
    ld [wJoyIgnore], a
	ld a, $1
	ld [W_FLYMAPSCRIPT], a

FlymapScript1:
	call JoypadLowSensitivity
    ld a, [hJoy5]
    and A_BUTTON
    ret z ; A was not pressed, so return
	ld hl, FlymapCoords
    call IsInPlayerCoordArray
    jr nc, .no
    ld a, $1
    ld [$ff8c], a
    call DisplayTextID
	ret
.no
	ld a, $2
    ld [$ff8c], a
    call DisplayTextID
	ret

BuildFlyLocationsList: ; 71070 (1c:5070)
	ld hl, wFlyLocationsList
	ld a, [W_TOWNVISITEDFLAG]
	ld e, a
	ld a, [W_TOWNVISITEDFLAG + 1]
	ld d, a
	ld bc, REDS_HOUSE_1F
.loop
	srl d
	rr e
	ld a, $fe ; store $fe if the town hasn't been visited
	jr nc, .notVisited
	ld a, b ; store the map number of the town if it has been visited
.notVisited
	ld [hl], a
	inc hl
	inc b
	dec c
	jr nz, .loop
	ld [hl], $ff
	ret	

FlymapCoords:
	db 9, 7, NEW_CITY
	db 9, 8, SS_ANNE_1
	db 9, 9, SS_ANNE_1
	db 9, 10, SS_ANNE_1
	db 10, 7, ROUTE_9
	db 11, 7, ROUTE_9
	db 12, 5, ROUTE_16
	db 12, 6, ROUTE_16
	db 12, 7, ROUTE_16
	db 20, 7, VIRIDIAN_FOREST
	db 21, 7, PEWTER_CITY
	db 21, 8, ROUTE_3
	db 22, 7, ROUTE_2
	db 23, 7, ROUTE_2
	db 24, 7, ROUTE_2
	db 25, 7, ROUTE_2
	db 26, 7, VIRIDIAN_CITY
	db 26, 8, ROUTE_4
	db 26, 9, ROUTE_4
	db 26, 10, CERULEAN_CITY
	db 27, 7, ROUTE_1
	db 28, 7, ROUTE_1
	db 29, 7, ROUTE_1
	db 30, 7, PALLET_TOWN
	db 30, 8, ROUTE_20
	
FlymapTextPointers: ; 5d5d7 (17:55d7)
	dw FlymapText1
	dw FlymapText2
	dw FlymapText1b

FlymapText1:
	db $08 ; asm
	ld hl, FlymapText1b
	call PrintText
	call YesNoChoice
	ld a, [wCurrentMenuItem]
	and a
	jr nz, .end 

	ld hl, FlymapCoords
    call IsInPlayerCoordArray
    jr nc, .end
    inc hl
    inc hl
    ld a, [hl]
	ld [wDestinationMap], a
	ld c, a
	ld hl, wFlyLocationsList
.checkVisit
	ld a, [hl]
    cp c
	jr z, .goHere
	cp $ff
    jr z, .no
	inc hl
	jr .checkVisit
.goHere
	ld a, (SFX_02_3e - SFX_Headers_02) / 3
	call PlaySound
	ld hl, wd732
	set 3, [hl]
	inc hl
	set 7, [hl]
	ld hl, W_ISFLYINGHIGH ; load ram address of flying map
    res 0, [hl]
.end 
	jp TextScriptEnd
.no
	ld hl, FlymapText2
	call PrintText
	jp TextScriptEnd

FlymapText1b: ; 5d5db (17:55db)
	TX_FAR _FlymapText1
	db "@"
	
FlymapText2: ; 5d61b (17:561b)
	TX_FAR _FlymapText2
	db "@"

IsInPlayerCoordArray:
    ld a, [W_YCOORD]
    ld b, a
    ld a, [W_XCOORD]
    ld c, a
    ld de, 3

IsInCoordArray:
    xor a
.loop
    push af
    ld a, [hl]
    cp -1
    jr z, .no

.y
    cp b
    jr nz, .next
.x
    inc hl
    ld a, [hld]
    cp c
    jr z, .yes
.next
    pop af
    inc a
    add hl, de
    jr .loop

.no
    pop af
    and a
    ret

.yes
    pop af
    scf
    ret