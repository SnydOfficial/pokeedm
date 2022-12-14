_ViridianForestEntranceText1:: ; 8a868 (22:6868)
	text "Are you going to"
	line "ROTOND WOODS?"
	cont "Be careful, it's"
	cont "a natural maze!"
	done

_ViridianForestEntranceText2:: ; 8a8ab (22:68ab)
IF DEF(_YELLOW)
	text "You have to roam"
	line "far to get new"
	cont "kinds of #MON."

	para "Look for other"
	line "types outside of"
	cont "ROTOND WOODS."
	done
ELSE
	text "RATTATA may be"
	line "small, but its"
	cont "bite is wicked!"
	cont "Did you get one?"
	done
ENDC
