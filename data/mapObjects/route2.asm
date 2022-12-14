Route2Object: ; 0x54022 (size=72)
	db $f ; border block

	db $6 ; warps
	db $0, $0, $0, DIGLETTS_CAVE_EXIT
	db $0, $1, $1, VIRIDIAN_FOREST_EXIT
	db $b, $d, $0, ROUTE_2_HOUSE
	db $23, $10, $1, ROUTE_2_GATE
	db $27, $f, $2, ROUTE_2_GATE
	db $3f, $11, $0, PATH_ENTRANCE_ROUTE_7

	db $2 ; signs
	db $41, $5, $3 ; Route2Text3
	db $b, $b, $4 ; Route2Text4

	db $2 ; people
	db SPRITE_BALL, $36 + 4, $d + 4, $ff, $ff, ITEM | $1, MOON_STONE
	db SPRITE_BALL, $2d + 4, $e + 4, $ff, $ff, ITEM | $2, PP_UP

	; warp-to
	EVENT_DISP ROUTE_2_WIDTH, $9, $c ; DIGLETTS_CAVE_EXIT
	EVENT_DISP ROUTE_2_WIDTH, $b, $3 ; VIRIDIAN_FOREST_EXIT
	EVENT_DISP ROUTE_2_WIDTH, $b, $d ; ROUTE_2_HOUSE
	EVENT_DISP ROUTE_2_WIDTH, $23, $10 ; ROUTE_2_GATE
	EVENT_DISP ROUTE_2_WIDTH, $27, $f ; ROUTE_2_GATE
	EVENT_DISP ROUTE_2_WIDTH, $3f, $11 ; VIRIDIAN_FOREST_ENTRANCE

	; unused
	EVENT_DISP $4, $7, $2
	db   $12, $c7, $9, $7
	EVENT_DISP $4, $7, $2
	EVENT_DISP $4, $7, $2
	EVENT_DISP $4, $7, $2
