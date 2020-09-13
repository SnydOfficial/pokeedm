NewCity_h: ; 0x509a4 to 0x509dc (56 bytes) (id=10)
	db OVERWORLD ; tileset
	db NEW_CITY_HEIGHT, NEW_CITY_WIDTH ; dimensions (y, x)
	dw NewCityBlocks, NewCityTextPointers, NewCityScript ; blocks, texts, scripts
	db SOUTH | WEST | EAST; connections
	SOUTH_MAP_CONNECTION ROUTE_9, ROUTE_9_WIDTH, 0, 0, ROUTE_9_WIDTH, Route9Blocks, NEW_CITY_WIDTH, NEW_CITY_HEIGHT
	WEST_MAP_CONNECTION SS_ANNE_2, SS_ANNE_2_WIDTH, 0, 0, SS_ANNE_2_HEIGHT, SSAnne2Blocks, NEW_CITY_WIDTH
	EAST_MAP_CONNECTION SS_ANNE_1, SS_ANNE_1_WIDTH, 0, 0, SS_ANNE_1_HEIGHT, SSAnne1Blocks, NEW_CITY_WIDTH
	dw NewCityObject ; objects
