PikaflareBaseStats: 
db DEX_PIKAFLARE ; pokedex id
db 77 ; base hp
db 90 ; base attack
db 81 ; base defense
db 78 ; base speed
db 73 ; base special
db FIRE ; species type 1
db FIRE ; species type 2
db 150 ; catch rate
db 120 ; base exp yield
INCBIN "pic/bmon/pikaflare.pic",0,1 ; 55, sprite dimensions
dw PikaflarePicFront
dw PikaflarePicBack
; attacks known at lvl 0
db EMBER
db 0
db 0
db 0
db 3 ; growth rate
; learnset
db %10100000
db %00000011
db %01001000
db %11001000
db %11100011
db %00001000
db %00000010
db BANK(PikaflarePicFront)
