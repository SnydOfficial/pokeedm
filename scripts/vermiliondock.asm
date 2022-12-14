VermilionDockScript: 
	jp EnableAutoTextBoxDrawing

VermilionDockTextPointers: ; 
	dw VermilionDockText1

VermilionDockText1: 
	db $08 ; asm
	ld hl, HackScriptDock1
	call PrintText
	call YesNoChoice
	ld a, [wCurrentMenuItem]
	and a
	jr nz, .saysNo ; 0x1913a
	ld hl, HackScriptDock2
	call PrintText
	call GBFadeOutToBlack
	ld a, (SFX_02_54 - SFX_Headers_02) / 3
	call PlaySound
	call WaitForSoundToFinish
	ld a, [wd798] ; check ram address
    bit 2, a      ; check ram address
    jr nz, .inVerm
	ld a, ROUTE_16
	ld [wLastMap], a
	ld hl, wd798 ; load empty ram address
    set 2, [hl]
	call GBFadeInFromBlack
	ld hl, HackScriptDock4
	call PrintText
	jr .endScript
.inVerm
    ld a, CERULEAN_CITY
	ld [wLastMap], a
	ld hl, wd798 ; load empty ram address
    res 2, [hl]
	call GBFadeInFromBlack
	ld hl, HackScriptDock5
	call PrintText
	jr .endScript
.saysNo 
	ld hl, HackScriptDock3
	call PrintText
.endScript
	jp TextScriptEnd

HackScriptDock1:
	TX_FAR _VermilionDockText1
	db "@"
	
HackScriptDock2:
	TX_FAR _VermilionDockText2
	db "@"
	
HackScriptDock3:
	TX_FAR _VermilionDockText3
	db "@"

HackScriptDock4:
	TX_FAR _VermilionDockText4
	db "@"
	
HackScriptDock5:
	TX_FAR _VermilionDockText5
	db "@"

	