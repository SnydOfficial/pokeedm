PokemonTower7Object: ; 0x60ef6 (size=42)
	db $1 ; border block

	db $2 ; warps
	db $10, $9, $1, POKEMONTOWER_6
	db $3, $c, $0, SS_ANNE_7

	db $0 ; signs

	db $3 ; people
	db SPRITE_ROCKET, $c + 4, $9 + 4, $ff, $d3, TRAINER | $1, ROCKET + $C8, $13
	db SPRITE_ROCKET, $9 + 4, $12 + 4, $ff, $d2, TRAINER | $2, ROCKET + $C8, $14
	db SPRITE_ROCKET, $9 + 4, $3 + 4, $ff, $d3, TRAINER | $3, ROCKET + $C8, $15
	; db SPRITE_MR_FUJI, $3 + 4, $a + 4, $ff, $d0, $4 ; person

	; warp-to
	EVENT_DISP POKEMONTOWER_7_WIDTH, $10, $9 ; POKEMONTOWER_6
	EVENT_DISP POKEMONTOWER_7_WIDTH, $3, $c ; POKEMONTOWER_6
