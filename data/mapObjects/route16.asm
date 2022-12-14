Route16Object: ; 0x58afc (size=136)
	db $f ; border block

	db $9 ; warps
	db $9, $6, $0, VERMILION_DOCK
	db $0, $0, $1, ROUTE_16_GATE_1F
	db $0, $0, $2, ROUTE_16_GATE_1F
	db $0, $0, $3, ROUTE_16_GATE_1F
	db $0, $0, $4, ROUTE_16_GATE_1F
	db $0, $0, $5, ROUTE_16_GATE_1F
	db $0, $0, $6, ROUTE_16_GATE_1F
	db $0, $0, $7, ROUTE_16_GATE_1F
	db $3, $7, $0, ROUTE_16_HOUSE

	db $2 ; signs
	db $b, $1b, $8 ; Route16Text8
	db $b, $b, $9 ; Route16Text9

	db $7 ; people
	db SPRITE_BIKER, $8 + 4, $19 + 4, $ff, $d2, TRAINER | $1, BIKER + $C8, $5
	db SPRITE_BIKER, $9 + 4, $14 + 4, $ff, $d3, TRAINER | $2, CUE_BALL + $C8, $1
	db SPRITE_BIKER, $5 + 4, $12 + 4, $ff, $d1, TRAINER | $3, CUE_BALL + $C8, $2
	db SPRITE_BIKER, $b + 4, $9 + 4, $ff, $d2, TRAINER | $4, BIKER + $C8, $6
	db SPRITE_BIKER, $b + 4, $10 + 4, $ff, $d3, TRAINER | $5, CUE_BALL + $C8, $3
	db SPRITE_BIKER, $6 + 4, $a + 4, $ff, $d3, TRAINER | $6, BIKER + $C8, $7
	db SPRITE_SNORLAX, $6 + 4, $1c + 4, $ff, $d0, TRAINER | $7, PIKAFLARE, 20 ; person

	; warp-to
	EVENT_DISP ROUTE_16_WIDTH, $a, $11 ; ROUTE_16_GATE_1F
	EVENT_DISP ROUTE_16_WIDTH, $b, $11 ; ROUTE_16_GATE_1F
	EVENT_DISP ROUTE_16_WIDTH, $9, $6 ; ROUTE_16_GATE_1F
	EVENT_DISP ROUTE_16_WIDTH, $9, $6 ; ROUTE_16_GATE_1F
	EVENT_DISP ROUTE_16_WIDTH, $9, $6 ; ROUTE_16_GATE_1F
	EVENT_DISP ROUTE_16_WIDTH, $5, $11 ; ROUTE_16_GATE_1F
	EVENT_DISP ROUTE_16_WIDTH, $4, $18 ; ROUTE_16_GATE_1F
	EVENT_DISP ROUTE_16_WIDTH, $5, $18 ; ROUTE_16_GATE_1F
	EVENT_DISP ROUTE_16_WIDTH, $3, $7 ; ROUTE_16_HOUSE
