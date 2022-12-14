RedsHouse2FObject: ; 0x5c0d0 ?
	db $0A ; border block

	db $2 ; warps
	db $7, $6, $0, ROUTE_20
	db $7, $7, $0, ROUTE_20

	db $0 ; signs

	db $0 ; people

	; warp-to
	EVENT_DISP REDS_HOUSE_2F_WIDTH, $7, $6
	EVENT_DISP REDS_HOUSE_2F_WIDTH, $7, $7
