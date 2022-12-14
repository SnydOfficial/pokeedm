PewterCityObject: ; 0x18577 (size=111)
	db $a ; border block

	db $7 ; warps
	db $5, $a, $2, VIRIDIAN_FOREST_ENTRANCE
	db $19, $17, $2, MUSEUM_1F
	db $13, $8, $0, PEWTER_GYM
	db $7, $1b, $0, PEWTER_HOUSE_1
	db $17, $11, $0, PEWTER_MART
	db $15, $1f, $0, PEWTER_HOUSE_2
	db $17, $b, $0, PEWTER_POKECENTER

	db $7 ; signs
	db $1d, $13, $6 ; PewterCityText6
	db $b, $13, $7 ; PewterCityText7
	db $17, $12, $8 ; MartSignText
	db $17, $c, $9 ; PokeCenterSignText
	db $7, $b, $a ; PewterCityText10
	db $15, $7, $b ; PewterCityText11
	db $1b, $d, $c ; PewterCityText12

	db $5 ; people
	db SPRITE_LASS, $9 + 4, $f + 4, $ff, $ff, $1 ; person
	db SPRITE_BLACK_HAIR_BOY_1, $19 + 4, $11 + 4, $ff, $ff, $2 ; person
	db SPRITE_BLACK_HAIR_BOY_2, $11 + 4, $1b + 4, $ff, $ff, $3 ; person
	db SPRITE_BLACK_HAIR_BOY_2, $1b + 4, $1e + 4, $fe, $2, $4 ; person
	db SPRITE_BUG_CATCHER, $14 + 4, $8 + 4, $ff, $d0, $5 ; person

	; warp-to
	EVENT_DISP PEWTER_CITY_WIDTH, $5, $a ; MUSEUM_1F
	EVENT_DISP PEWTER_CITY_WIDTH, $19, $17 ; MUSEUM_1F
	EVENT_DISP PEWTER_CITY_WIDTH, $13, $8 ; PEWTER_GYM
	EVENT_DISP PEWTER_CITY_WIDTH, $7, $1b ; PEWTER_HOUSE_1
	EVENT_DISP PEWTER_CITY_WIDTH, $17, $11 ; PEWTER_MART
	EVENT_DISP PEWTER_CITY_WIDTH, $15, $1f ; PEWTER_HOUSE_2
	EVENT_DISP PEWTER_CITY_WIDTH, $17, $b ; PEWTER_POKECENTER
