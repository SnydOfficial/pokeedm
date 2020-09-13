Route16_h: ; 0x58ada to 0x58afc (34 bytes) (id=27)
	db OVERWORLD ; tileset
	db ROUTE_16_HEIGHT, ROUTE_16_WIDTH ; dimensions (y, x)
	dw Route16Blocks, Route16TextPointers, Route16Script ; blocks, texts, scripts
	db NORTH ; connections
	NORTH_MAP_CONNECTION ROUTE_9, ROUTE_9_WIDTH, ROUTE_9_HEIGHT, 10, 0, ROUTE_9_WIDTH, Route9Blocks
	dw Route16Object ; objects
