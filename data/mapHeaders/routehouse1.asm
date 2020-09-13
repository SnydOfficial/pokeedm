RouteHouse1_h: ; 0x61d49 to 0x61d55 (12 bytes) (id=104)
	db GATE ; tileset
	db ROUTE_HOUSE_1_HEIGHT, ROUTE_HOUSE_1_WIDTH ; dimensions (y, x)
	dw RouteHouse1Blocks, RouteHouse1TextPointers, RouteHouse1Script ; blocks, texts, scripts
	db $00 ; connections
	dw RouteHouse1Object ; objects
