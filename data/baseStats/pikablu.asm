PikabluBaseStats: 
db DEX_PIKABLU ; pokedex id
db 90 ; base hp
db 85 ; base attack
db 95 ; base defense
db 70 ; base speed
db 70 ; base special
db WATER ; species type 1
db WATER ; species type 2
db 150 ; catch rate
db 120 ; base exp yield
INCBIN "pic/bmon/pikablu.pic",0,1 ; 55, sprite dimensions
dw PikabluPicFront
dw PikabluPicBack
; attacks known at lvl 0
db TACKLE
db 0
db 0
db 0
db 3 ; growth rate
; learnset
db %10100000
db %00111111
db %00001000
db %11010000
db %10000010
db %00101000
db %00010010
db BANK(PikabluPicFront)
