ViridianForestObject: ; 0x611da (size=127)
	db $2 ; border block

	db $6 ; warps
	db $1, $1, $2, VIRIDIAN_FOREST_EXIT
	db $15, $7, $0, MT_MOON_POKECENTER
	db $27, $1f, $1, VIRIDIAN_FOREST_ENTRANCE
	db $2f, $10, $1, VIRIDIAN_FOREST_ENTRANCE
	db $2f, $11, $1, VIRIDIAN_FOREST_ENTRANCE
	db $2f, $12, $1, VIRIDIAN_FOREST_ENTRANCE

	db $6 ; signs
	db $4, $0, $8 ; ViridianForestText9
	db $5, $0, $8 ; ViridianForestText10
	db $6, $0, $8 ; ViridianForestText11
	db $7, $0, $8 ; ViridianForestText12
	db $8, $0, $8 ; ViridianForestText13
	db $9, $0, $8 ; ViridianForestText14

	db $8 ; people
	db SPRITE_BUG_CATCHER, $2b + 4, $10 + 4, $ff, $ff, $1 ; person
	db SPRITE_BUG_CATCHER, $21 + 4, $18 + 4, $ff, $d2, TRAINER | $2, BUG_CATCHER + $C8, $1
	db SPRITE_BUG_CATCHER, $2 + 4, $2 + 4, $ff, $d2, TRAINER | $3, BUG_CATCHER + $C8, $2
	db SPRITE_BUG_CATCHER, $19 + 4, $b + 4, $ff, $d2, TRAINER | $4, BUG_CATCHER + $C8, $3
	db SPRITE_BALL, $5 + 4, $1a + 4, $ff, $ff, ITEM | $5, GREAT_BALL
	db SPRITE_BALL, $1e + 4, $15 + 4, $ff, $ff, ITEM | $6, POTION
	db SPRITE_BALL, $28 + 4, $8 + 4, $ff, $ff, ITEM | $7, POKE_BALL
	db SPRITE_BUG_CATCHER, $5 + 4, $1b + 4, $ff, $d1, $8

	; warp-to
	EVENT_DISP VIRIDIAN_FOREST_WIDTH, $1, $1 ; VIRIDIAN_FOREST_EXIT
	EVENT_DISP VIRIDIAN_FOREST_WIDTH, $15, $7 ; VIRIDIAN_FOREST_EXIT
	EVENT_DISP VIRIDIAN_FOREST_WIDTH, $27, $1f ; VIRIDIAN_FOREST_ENTRANCE
	EVENT_DISP VIRIDIAN_FOREST_WIDTH, $2f, $10 ; VIRIDIAN_FOREST_ENTRANCE
	EVENT_DISP VIRIDIAN_FOREST_WIDTH, $2f, $11 ; VIRIDIAN_FOREST_ENTRANCE
	EVENT_DISP VIRIDIAN_FOREST_WIDTH, $2f, $12 ; VIRIDIAN_FOREST_ENTRANCE
