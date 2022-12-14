SSAnne7Object: ; 0x61946 (size=24)
	db $1 ; border block

	db $1 ; warps
	db $5, $1, $1, POKEMONTOWER_7

	db $0 ; signs

	db $3 ; people
	db SPRITE_GIOVANNI, $2 + 4, $2 + 4, $ff, $d1, TRAINER | $1, GIOVANNI + $C8, $1; person
	db SPRITE_BRUNETTE_GIRL, $1 + 4, $2 + 4, $ff, $d0, $2 ; person
	db SPRITE_LASS, $1 + 4, $3 + 4, $ff, $d0, $3 ; person

	; warp-to
	EVENT_DISP SS_ANNE_7_WIDTH, $5, $1 ; SS_ANNE_2
