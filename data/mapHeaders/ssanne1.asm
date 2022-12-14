SSAnne1_h: ; 0x61259 to 0x61265 (12 bytes) (id=95)
	db OVERWORLD ; tileset
	db SS_ANNE_1_HEIGHT, SS_ANNE_1_WIDTH ; dimensions (y, x)
	dw SSAnne1Blocks, SSAnne1TextPointers, SSAnne1Script ; blocks, texts, scripts
	db WEST ; connections
	WEST_MAP_CONNECTION NEW_CITY, NEW_CITY_WIDTH, 0, 0, NEW_CITY_HEIGHT, NewCityBlocks, SS_ANNE_1_WIDTH
	dw SSAnne1Object ; objects
