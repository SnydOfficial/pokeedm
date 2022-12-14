FightingDojoObject: ; 0x5cf9b (size=72)
	db $3 ; border block

	db $2 ; warps
	db $13, $e, $1, $ff
	db $13, $f, $1, $ff

	db $1 ; signs
	db $c, $f, $c

	db $b ; people
	db SPRITE_KARMA, $3 + 4, $5 + 4, $ff, $d0, TRAINER | $1, KARMA + $C8, $1 ;mason
	db SPRITE_DAISY, $4 + 4, $3 + 4, $ff, $d3, TRAINER | $2, EMMA + $C8, $1 ;emma
	db SPRITE_BLACK_HAIR_BOY_1, $8 + 4, $4 + 4, $ff, $d3, TRAINER | $3, CHRIS + $C8, $1 ;chris
	db SPRITE_BLACKBELT, $5 + 4, $6 + 4, $ff, $d2, TRAINER | $4, LEE + $C8, $1 ;lee
	db SPRITE_BUG_CATCHER, $7 + 4, $6 + 4, $ff, $d2, TRAINER | $5, FINN + $C8, $1 ;finn
	db SPRITE_BLACK_HAIR_BOY_2, $b + 4, $3 + 4, $ff, $d3, TRAINER | $6, GEORGE + $C8, $1 ;george
	db SPRITE_BUG_CATCHER, $10 + 4, $9 + 4, $ff, $d2, TRAINER | $7, MIKE + $C8, $1 ;mike
	db SPRITE_BLACK_HAIR_BOY_1, $d + 4, $a + 4, $ff, $d0, TRAINER | $8, BEN + $C8, $1 ;ben
	db SPRITE_BALL, $1 + 4, $4 + 4, $ff, $ff, $9 ; person
	db SPRITE_BALL, $1 + 4, $5 + 4, $ff, $ff, $a ; person
	db SPRITE_GIRL, $b + 4, $f + 4, $ff, $d0, $b ; person

	; warp-to
	EVENT_DISP FIGHTING_DOJO_WIDTH, $13, $e
	EVENT_DISP FIGHTING_DOJO_WIDTH, $13, $f
