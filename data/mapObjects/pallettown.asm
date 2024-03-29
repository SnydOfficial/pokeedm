PalletTownObject: ; 0x182c3 (size=58)
	db $f ; border block

	db $3 ; warps
	db $5, $5, $0, REDS_HOUSE_1F
	db $d, $5, $0, BLUES_HOUSE
	db $b, $c, $1, OAKS_LAB

	db $4 ; signs
	db $d, $d, $4 ; PalletTownText4
	db $5, $b, $5 ; PalletTownText5
	db $5, $3, $6 ; PalletTownText6
	db $d, $3, $7 ; PalletTownText7

	db $3 ; people
	db SPRITE_OAK, $c + 4, $9 + 4, $ff, $ff, $1 ; person
	db SPRITE_BUG_CATCHER, $8 + 4, $7 + 4, $fe, $0, $2 ; person
	db SPRITE_FISHER2, $e + 4, $b + 4, $fe, $0, $3 ; person

	; warp-to
	EVENT_DISP PALLET_TOWN_WIDTH, $5, $5 ; REDS_HOUSE_1F
	EVENT_DISP PALLET_TOWN_WIDTH, $d, $5 ; BLUES_HOUSE
	EVENT_DISP PALLET_TOWN_WIDTH, $b, $c ; OAKS_LAB
