Route4Object: ; 0x543b2 (size=58)
	db $2c ; border block

	db $3 ; warps
	db $5, $b, $0, DAYCAREM
	db $5, $12, $0, MT_MOON_1
	db $6, $18, $7, MT_MOON_2

	db $0 ; signs

	db $6 ; people
	db SPRITE_LASS, $8 + 4, $9 + 4, $fe, $0, $1 ; person
	db SPRITE_LASS, $5 + 4, $29 + 4, $ff, $d3, TRAINER | $2, LASS + $C8, $4
	db SPRITE_BUG_CATCHER, $0 + 4, $0 + 4, $ff, $d0, TRAINER | $3, BUG_CATCHER + $C8, $5
	db SPRITE_LASS, $0 + 4, $0 + 4, $ff, $d0, TRAINER | $4, LASS + $C8, $2
	db SPRITE_BUG_CATCHER, $0 + 4, $0 + 4, $ff, $d2, TRAINER | $5, YOUNGSTER + $C8, $2
	db SPRITE_BALL, $f + 4, $42 + 4, $ff, $ff, ITEM | $6, TM_04

	; warp-to
	EVENT_DISP ROUTE_4_WIDTH, $5, $b ; MT_MOON_POKECENTER
	EVENT_DISP ROUTE_4_WIDTH, $5, $12 ; MT_MOON_1
	EVENT_DISP ROUTE_4_WIDTH, $5, $18 ; MT_MOON_2
