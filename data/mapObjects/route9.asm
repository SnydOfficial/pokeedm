Route9Object: ; 0x546a8 (size=86)
	db $f ; border block

	db $2 ; warps
	db $39, $c, $2, ROUTE_HOUSE_1
	db $35, $d, $1, ROUTE_HOUSE_1

	db $1 ; signs
	db $f, $b, $b ; Route9Text11

	db $a ; people
	db SPRITE_LASS, $31 + 4, $d + 4, $ff, $d2, TRAINER | $1, JR__TRAINER_F + $C8, $5
	db SPRITE_BLACK_HAIR_BOY_1, $2e + 4, $3 + 4, $ff, $d2, TRAINER | $2, JR__TRAINER_M + $C8, $7
	db SPRITE_BLACK_HAIR_BOY_1, $2b + 4, $2 + 4, $ff, $d3, TRAINER | $3, JR__TRAINER_M + $C8, $8
	db SPRITE_LASS, $25 + 4, $4 + 4, $ff, $d2, TRAINER | $4, JR__TRAINER_F + $C8, $6
	db SPRITE_HIKER, $21 + 4, $b + 4, $ff, $d2, TRAINER | $5, HIKER + $C8, $b
	db SPRITE_HIKER, $1a + 4, $d + 4, $ff, $d0, TRAINER | $6, HIKER + $C8, $6
	db SPRITE_BUG_CATCHER, $4 + 4, $b + 4, $ff, $d0, TRAINER | $7, BUG_CATCHER + $C8, $d
	db SPRITE_HIKER, $11 + 4, $7 + 4, $ff, $d0, TRAINER | $8, HIKER + $C8, $5
	db SPRITE_BUG_CATCHER, $9 + 4, $9 + 4, $ff, $d3, TRAINER | $9, BUG_CATCHER + $C8, $e
	db SPRITE_BALL, $10 + 4, $4 + 4, $ff, $ff, ITEM | $a, TM_30

	; warp-to
	EVENT_DISP ROUTE_9_WIDTH, $39, $c 
	EVENT_DISP ROUTE_9_WIDTH, $35, $d 