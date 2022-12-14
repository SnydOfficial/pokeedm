NewCityPokecenter_h: ; 0x44251 to 0x4425d (12 bytes) (bank=11) (id=41)
	db POKECENTER ; tileset
	db NORTH_POKECENTER_HEIGHT, NORTH_POKECENTER_WIDTH ; dimensions (y, x)
	dw NorthPokeCenterBlocks, NorthPokeCenterTextPointers, NorthPokeCenterScript ; blocks, texts, scripts
	db $00 ; connections
	dw NorthPokeCenterObject ; objects
