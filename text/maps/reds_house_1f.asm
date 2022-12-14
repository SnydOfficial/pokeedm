_MomWakeUpText::
	text "NAN: Right."
	line "All boys leave"
IF DEF(_YELLOW)
	cont "home someday."
ELSE
	cont "home some day."
ENDC
	cont "It said so on TV."

	para "Try not to"
	line "cause too much"
	cont "trouble!"
	done

_MomHealText1::
IF DEF(_YELLOW)
	text "NAN: ",$52,", if"
	line "you drive your"
	cont "#MON too hard,"
	cont "they'll dislike"
	cont "you."

	para "You should take a"
	line "rest."
	prompt
ELSE
	text "NAN: ",$52,"!"
	line "You should take a"
	cont "quick rest."
	prompt
ENDC

_MomHealText2::
	text "NAN: Oh good!"
	line "You and your"
	cont "#MON are"
	cont "looking great!"
	cont "Take care now!"
	done

_StandByMeText::
	text "There's a movie"
	line "on TV. Some girl"
	cont "fell down a well"
	cont "and haunts people's"
	cont "TV sets."

_TVWrongSideText::
	text "Oops, wrong side."
	done

