ViridianCityObject: ; 0x18384 (size=104)
	db $f ; border block

	db $5 ; warps
	db $1d, $5, $0, VIRIDIAN_POKECENTER
	db $7, $1d, $0, VIRIDIAN_MART
	db $13, $13, $0, VIRIDIAN_SCHOOL
	db $f, $4, $0, VIRIDIAN_HOUSE
	db $1b, $20, $0, VIRIDIAN_GYM

	db $6 ; signs
	db $17, $15, $8 ; ViridianCityText8
	db $1, $13, $9 ; ViridianCityText9
	db $9, $9, $a ; ViridianCityText10
	db $7, $1e, $b ; MartSignText
	db $1d, $6, $c ; PokeCenterSignText
	db $1b, $23, $d ; ViridianCityText13

	db $7 ; people
	db SPRITE_BUG_CATCHER, $1f + 4, $8 + 4, $fe, $0, $1 ; person
	db SPRITE_GAMBLER, $1c + 4, $1e + 4, $ff, $ff, $2 ; person
	db SPRITE_BUG_CATCHER, $15 + 4, $14 + 4, $fe, $0, $3 ; person
	db SPRITE_GIRL, $9 + 4, $8 + 4, $ff, $d3, $4 ; person
	db SPRITE_FISHER2, $d + 4, $c + 4, $ff, $d0, $5 ; person
	db SPRITE_FISHER2, $10 + 4, $5 + 4, $ff, $d0, $6 ; person
	db SPRITE_GAMBLER, $5 + 4, $11 + 4, $fe, $2, $7 ; person

	; warp-to
	EVENT_DISP VIRIDIAN_CITY_WIDTH, $1d, $5 ; VIRIDIAN_POKECENTER
	EVENT_DISP VIRIDIAN_CITY_WIDTH, $7, $1d ; VIRIDIAN_MART
	EVENT_DISP VIRIDIAN_CITY_WIDTH, $13, $13 ; VIRIDIAN_SCHOOL
	EVENT_DISP VIRIDIAN_CITY_WIDTH, $f, $4 ; VIRIDIAN_HOUSE
	EVENT_DISP VIRIDIAN_CITY_WIDTH, $1b, $20 ; VIRIDIAN_GYM
