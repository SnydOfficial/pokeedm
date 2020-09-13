PokemonTower1Object: ; 0x60452 (size=58)
	db $1 ; border block

	db $3 ; warps
	db $11, $a, $0, $ff
	db $11, $b, $0, $ff
	db $3, $8, $1, POKEMONTOWER_2

	db $0 ; signs

	db $5 ; people
	db SPRITE_CABLE_CLUB_WOMAN, $3 + 4, $f + 4, $ff, $d0, $1 ; person
	db SPRITE_MOM_GEISHA, $8 + 4, $6 + 4, $ff, $ff, $2 ; person
	db SPRITE_BALDING_GUY, $c + 4, $8 + 4, $ff, $ff, $3 ; person
	db SPRITE_GIRL, $7 + 4, $d + 4, $ff, $ff, $4 ; person
	db SPRITE_MEDIUM, $7 + 4, $11 + 4, $ff, $d2, $5 ; person

	; warp-to
	EVENT_DISP POKEMONTOWER_1_WIDTH, $11, $a
	EVENT_DISP POKEMONTOWER_1_WIDTH, $11, $b
	EVENT_DISP POKEMONTOWER_1_WIDTH, $3, $8 ; POKEMONTOWER_2
