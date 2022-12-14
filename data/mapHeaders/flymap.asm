Flymap_h: ; 0x61d49 to 0x61d55 (12 bytes) (id=104)
	db FLYMAPT ; tileset
	db FLYMAP_HEIGHT, FLYMAP_WIDTH ; dimensions (y, x)
	dw FlymapBlocks, FlymapTextPointers, FlymapScript ; blocks, texts, scripts
	db $00 ; connections
	dw FlymapObject ; objects
