VermilionDockObject: ; 0x1dcc6 (size=20)
	db $d ; border block

	db $1 ; warps
	db $2, $19, $4, $ff

	db $0 ; signs

	db $1 ; people
	db SPRITE_SAILOR, $8 + 4, $e + 4, $ff, $ff, $1

	; warp-to
	EVENT_DISP VERMILION_DOCK_WIDTH, $2, $19
