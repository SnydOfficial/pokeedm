NewCityObject: ; 0x182c3 (size=58)
	db $f ; border block

	db $3 ; warps
	db $5, $3, $0, NEW_CITY_POKECENTER
	db $5, $c, $0, FIGHTING_DOJO
	db $b, $f, $0, MUSEUM_2F

	db $3 ; signs
	db $d, $d, $4 ; PalletTownText4
	db $9, $9, $5 ; PalletTownText5
	db $5, $4, $6 ; PalletTownText6

	db $3 ; people
	db SPRITE_GUARD, $6 + 4, $c + 4, $ff, $ff, $1 ; person
	db SPRITE_BUG_CATCHER, $8 + 4, $7 + 4, $fe, $0, $2 ; person
	db SPRITE_BLACK_HAIR_BOY_2, $e + 4, $b + 4, $fe, $0, $3 ; person

	; warp-to
	EVENT_DISP PALLET_TOWN_WIDTH, $5, $3 ; pokecenter
	EVENT_DISP PALLET_TOWN_WIDTH, $5, $c ; gym
	EVENT_DISP PALLET_TOWN_WIDTH, $b, $f ; MUSEUM_2F
