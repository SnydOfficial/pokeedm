Route24_h: ; 0x50682 to 0x506a4 (34 bytes) (id=35)
	db OVERWORLD ; tileset
	db ROUTE_24_HEIGHT, ROUTE_24_WIDTH ; dimensions (y, x)
	dw Route24Blocks, Route24TextPointers, Route24Script ; blocks, texts, scripts
	db SOUTH ; connections
	SOUTH_MAP_CONNECTION CERULEAN_CITY, CERULEAN_CITY_WIDTH, -3, 2, CERULEAN_CITY_WIDTH - 4, CeruleanCityBlocks, ROUTE_24_WIDTH, ROUTE_24_HEIGHT
	dw Route24Object ; objects
