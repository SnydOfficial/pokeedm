_SSAnne7RubText:: ; 812dd (20:52dd)
	text "...OK! No more"
	line "fooling around!"

	para "Tell me how"
	line "you got that"
	cont "rare monster!"

	para "Maybe I should"
	line "take it by"
	cont "force!"
	done

_ReceivingHM01Text:: ; 81347 (20:5347)
	text "CAPTAIN: Whew!"
	line "Thank you! I"
	cont "feel much better!"

	para "You want to see"
	line "my CUT technique?"

	para "I could show you"
	line "if I wasn't ill..."

	para "I know! You can"
	line "have this!"

	para "Teach it to your"
	line "#MON and you"
	cont "can see it CUT"
IF DEF(_YELLOW)
	cont "anytime!"
ELSE
	cont "any time!"
ENDC
	prompt

_ReceivedHM01Text:: ; 8140d (20:540d)
	text $52, " got"
	line "@"
	TX_RAM wcf4b
	text "!@@"

_SSAnne7Text_61932:: ; 8141c (20:541c)
	text "CAPTAIN: Whew!"

	para "Now that I'm not"
IF DEF(_YELLOW)
	line "sick anymore, I"
ELSE
	line "sick any more, I"
ENDC
	cont "guess it's time."
	done

_HM01NoRoomText:: ; 8145d (20:545d)
	text "Oh no! You have"
	line "no room for this!"
	done

_SSAnne7Text2:: ; 81480 (20:5480)
	text "And who are"
	line "you!?"
	
	para "A mere child"
	line "thinks he can"
	cont "stop me!?"
	
	para "Maybe it's time"
	line "for me to send"
	cont "you back to"
	cont "school, you"
	cont "little brat!"
	done

_SSAnne7Text3:: ; 8149d (20:549d)
	text "AMAZING!"
	line "SIMPLY AMAZING!"
	cont "You saved us"
	cont "from that awful"
	cont "man!"
	
	para "We are the GYM"
	line "LEADERs of"
	cont "KERKLOON CITY."
	
	para "Maybe you could"
	line "stop by for"
	cont "a battle?"
	
	para "Seriously.."
	line "We owe you!"
	done

_SSAnne7Text4:: ; 8149d (20:549d)
	text "Oh"
	line "shit!"
	prompt
	
_SSAnne7Text5:: ; 8149d (20:549d)
	text "Ha!"
	
	para "How" 
	line "interesting.."
	
	para "If you try this"
	line "again, next time"
	cont "you will not"
	cont "be so lucky!"
	
	para "I must heal."
	line "Then reform my"
	cont "efforts for"
	cont "world domination!"
	done