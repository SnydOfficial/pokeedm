Route24Object: ; 0x506a4 (size=67)
	db $43 ; border block

	db $1 ; warps
	db $7, $a, $0, POKEMONTOWER_1

	db $0 ; signs

	db $7 ; people
	db SPRITE_BLACK_HAIR_BOY_1, $f + 4, $b + 4, $ff, $d2, TRAINER | $1, JR__TRAINER_M + $C8, $2
	db SPRITE_ROCKET, $8 + 4, $9 + 4, $ff, $d3, TRAINER | $2, ROCKET + $C8, $6
	db SPRITE_BLACK_HAIR_BOY_1, $13 + 4, $b + 4, $ff, $d2, TRAINER | $3, JR__TRAINER_M + $C8, $3
	db SPRITE_LASS, $16 + 4, $a + 4, $ff, $d3, TRAINER | $4, LASS + $C8, $7
	db SPRITE_BUG_CATCHER, $19 + 4, $b + 4, $ff, $d2, TRAINER | $5, YOUNGSTER + $C8, $4
	db SPRITE_LASS, $1c + 4, $a + 4, $ff, $d3, TRAINER | $6, LASS + $C8, $8
	db SPRITE_BUG_CATCHER, $1f + 4, $b + 4, $ff, $d2, TRAINER | $7, BUG_CATCHER + $C8, $9

	; warp-to
	EVENT_DISP ROUTE_24_WIDTH, $7, $a