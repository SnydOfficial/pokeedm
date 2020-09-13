Route9_h: ; 0x54686 to 0x546a8 (34 bytes) (id=20)
	db OVERWORLD ; tileset
	db ROUTE_9_HEIGHT, ROUTE_9_WIDTH ; dimensions (y, x)
	dw Route9Blocks, Route9TextPointers, Route9Script ; blocks, texts, scripts
	db NORTH | SOUTH ; connections
	NORTH_MAP_CONNECTION NEW_CITY, NEW_CITY_WIDTH, NEW_CITY_HEIGHT, 0, 0, NEW_CITY_WIDTH, NewCityBlocks
	SOUTH_MAP_CONNECTION ROUTE_16, ROUTE_16_WIDTH, 0, 10, ROUTE_16_WIDTH - 10, Route16Blocks, ROUTE_9_WIDTH, ROUTE_9_HEIGHT
	dw Route9Object ; objects
