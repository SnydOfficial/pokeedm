_DaisyInitialText::
	text "Hi there!"
	line $53," is out at"
	cont "the lab."
	done

_DaisyOfferMapText::
	text $53," asked you"
	line "to come here for"
	cont "a map? Here"
	cont "have my spare!"
	prompt

_GotMapText::
	text $52," got a"
	line "@"
	TX_RAM wcf4b
	text "!@@"

_DaisyBagFullText::
	text "You have too much"
	line "stuff with you."
	done

_DaisyUseMapText::
	text "Use the TOWN MAP"
	line "to find out where"
	cont "you are."
	done

_BluesHouseText2::
IF DEF(_YELLOW)
	text "Spending time"
	line "with your #MON"
	cont "makes them more"
	cont "friendly to you."
	done
ELSE
	text "#MON are living"
	line "things! If they"
	cont "get tired, give"
	cont "them a rest!"
	done
ENDC

_BluesHouseText3::
	text "It's a big map!"
	line "This is useful!"
	done

