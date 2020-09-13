Route3Object: ; 0x54208 (size=77)
	db $2c ; border block

	db $0 ; warps

	db $1 ; signs
	db $9, $3b, $7 ; Route3Text10

	db $6 ; people
	db SPRITE_BLACK_HAIR_BOY_2, $b + 4, $39 + 4, $ff, $ff, $1 ; person
	db SPRITE_BUG_CATCHER, $6 + 4, $1f + 4, $ff, $d3, TRAINER | $2, BUG_CATCHER + $C8, $4
	db SPRITE_BUG_CATCHER, $4 + 4, $1f + 4, $ff, $d0, TRAINER | $3, YOUNGSTER + $C8, $1
	db SPRITE_LASS, $c + 4, $b + 4, $ff, $d2, TRAINER | $4, LASS + $C8, $1
	db SPRITE_BUG_CATCHER, $7 + 4, $1f + 4, $ff, $d3, TRAINER | $5, BUG_CATCHER + $C8, $6
	db SPRITE_LASS, $a + 4, $21 + 4, $ff, $d1, TRAINER | $6, LASS + $C8, $3
