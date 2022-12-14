CeruleanCityObject: ; 0x18786 (size=170)
	db $43 ; border block

	db $a ; warps
	db $b, $1b, $0, TRASHED_HOUSE
	db $f, $d, $0, CERULEAN_HOUSE
	db $f, $11, $0, CERULEAN_POKECENTER
	db $7, $c, $0, CERULEAN_GYM
	db $1b, $1d, $0, VERMILION_DOCK
	db $f, $17, $0, CERULEAN_MART
	db $f, $1f, $0, UNKNOWN_DUNGEON_1
	db $9, $1b, $2, TRASHED_HOUSE
	db $1b, $14, $1, CERULEAN_HOUSE_3
	db $17, $14, $0, CERULEAN_HOUSE_3

	db $6 ; signs
	db $11, $15, $c ; CeruleanCityText12
	db $f, $23, $d ; CeruleanCityText13
	db $f, $18, $e ; MartSignText
	db $f, $12, $f ; PokeCenterSignText
	db $1d, $1b, $10 ; CeruleanCityText16
	db $9, $9, $11 ; CeruleanCityText17

	db $b ; people
	db SPRITE_BLUE, $2 + 4, $14 + 4, $ff, $d0, $1 ; person
	db SPRITE_ROCKET, $8 + 4, $1e + 4, $ff, $ff, TRAINER | $2, ROCKET + $C8, $5
	db SPRITE_BLACK_HAIR_BOY_1, $14 + 4, $1f + 4, $ff, $d0, $3 ; person
	db SPRITE_BLACK_HAIR_BOY_2, $12 + 4, $f + 4, $fe, $1, $4 ; person
	db SPRITE_BLACK_HAIR_BOY_2, $1e + 4, $11 + 4, $fe, $2, $5 ; person
	db SPRITE_GUARD, $c + 4, $1c + 4, $ff, $d0, $6 ; person
	db SPRITE_LASS, $b + 4, $c + 4, $ff, $d2, $7 ; person
	db SPRITE_SLOWBRO, $b + 4, $b + 4, $ff, $d0, $8 ; person
	db SPRITE_LASS, $1a + 4, $9 + 4, $fe, $2, $9 ; person
	db SPRITE_BLACK_HAIR_BOY_2, $10 + 4, $1f + 4, $ff, $d0, $a ; person
	db SPRITE_GUARD, $c + 4, $1b + 4, $ff, $d0, $b ; person

	; warp-to
	EVENT_DISP CERULEAN_CITY_WIDTH, $b, $1b ; TRASHED_HOUSE
	EVENT_DISP CERULEAN_CITY_WIDTH, $f, $d ; CERULEAN_HOUSE
	EVENT_DISP CERULEAN_CITY_WIDTH, $f, $11 ; CERULEAN_POKECENTER
	EVENT_DISP CERULEAN_CITY_WIDTH, $7, $c ; CERULEAN_GYM
	EVENT_DISP CERULEAN_CITY_WIDTH, $1b, $1d ; BIKE_SHOP
	EVENT_DISP CERULEAN_CITY_WIDTH, $f, $17 ; CERULEAN_MART
	EVENT_DISP CERULEAN_CITY_WIDTH, $f, $1f ; UNKNOWN_DUNGEON_1
	EVENT_DISP CERULEAN_CITY_WIDTH, $9, $1b ; TRASHED_HOUSE
	EVENT_DISP CERULEAN_CITY_WIDTH, $1b, $14 ; CERULEAN_HOUSE_3
	EVENT_DISP CERULEAN_CITY_WIDTH, $17, $14 ; CERULEAN_HOUSE_3
