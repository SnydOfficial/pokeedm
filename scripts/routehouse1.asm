RouteHouse1Script: ; 5d5d4 (17:55d4)
	jp EnableAutoTextBoxDrawing

RouteHouse1TextPointers: ; 5d5d7 (17:55d7)
	dw RouteHouse1Text1
	dw RouteHouse1Text2

RouteHouse1Text1: ; 5d5db (17:55db)
	TX_FAR _RouteHouse1Text_5d616
	db "@"

RouteHouse1Text_5d616: ; 5d616 (17:5616)
	TX_FAR _RouteHouse1Text_5d616
	db "@"

RouteHouse1Text2: ; 5d61b (17:561b)
	TX_FAR _RouteHouse1Text2
	db "@"
