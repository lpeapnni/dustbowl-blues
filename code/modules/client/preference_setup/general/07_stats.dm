//Many thanks to Jamini/Occulus-Eris for coding and bug testing/improving this stat via cilent system

/datum/preferences
	var/SCORE_S = 1
	var/SCORE_P = 1
	var/SCORE_E = 1
	var/SCORE_C = 1
	var/SCORE_I = 1
	var/SCORE_A = 1
	var/SCORE_L = 1

	var/SCORE_ATH = 0
	var/SCORE_LOC = 0
	var/SCORE_MED = 0
	var/SCORE_PIL = 0
	var/SCORE_REP = 0
	var/SCORE_SCI = 0
	var/SCORE_SUR = 0

	var/SCORE_BIG = 0
	var/SCORE_ENE = 0
	var/SCORE_EXP = 0
	var/SCORE_MEL = 0
	var/SCORE_SMA = 0
	var/SCORE_UNA = 0

/datum/category_item/player_setup_item/background/education
	name = "Skills"
	sort_order = 7

/datum/category_item/player_setup_item/background/education/load_character(var/savefile/S)
	from_file(S["SCORE_S"],pref.SCORE_S)
	from_file(S["SCORE_P"],pref.SCORE_P)
	from_file(S["SCORE_E"],pref.SCORE_E)
	from_file(S["SCORE_C"],pref.SCORE_C)
	from_file(S["SCORE_I"],pref.SCORE_I)
	from_file(S["SCORE_A"],pref.SCORE_A)
	from_file(S["SCORE_L"],pref.SCORE_L)

	from_file(S["SCORE_ATH"],pref.SCORE_ATH)
	from_file(S["SCORE_LOC"],pref.SCORE_LOC)
	from_file(S["SCORE_MED"],pref.SCORE_MED)
	from_file(S["SCORE_PIL"],pref.SCORE_PIL)
	from_file(S["SCORE_REP"],pref.SCORE_REP)
	from_file(S["SCORE_SCI"],pref.SCORE_SCI)
	from_file(S["SCORE_SUR"],pref.SCORE_SUR)

	from_file(S["SCORE_BIG"],pref.SCORE_BIG)
	from_file(S["SCORE_ENE"],pref.SCORE_ENE)
	from_file(S["SCORE_EXP"],pref.SCORE_EXP)
	from_file(S["SCORE_MEL"],pref.SCORE_MEL)
	from_file(S["SCORE_SMA"],pref.SCORE_SMA)
	from_file(S["SCORE_UNA"],pref.SCORE_UNA)

/datum/category_item/player_setup_item/background/education/save_character(var/savefile/S)
	to_file(S["SCORE_S"],pref.SCORE_S)
	to_file(S["SCORE_P"],pref.SCORE_P)
	to_file(S["SCORE_E"],pref.SCORE_E)
	to_file(S["SCORE_C"],pref.SCORE_C)
	to_file(S["SCORE_I"],pref.SCORE_I)
	to_file(S["SCORE_A"],pref.SCORE_A)
	to_file(S["SCORE_L"],pref.SCORE_L)

	to_file(S["SCORE_ATH"],pref.SCORE_ATH)
	to_file(S["SCORE_LOC"],pref.SCORE_LOC)
	to_file(S["SCORE_MED"],pref.SCORE_MED)
	to_file(S["SCORE_PIL"],pref.SCORE_PIL)
	to_file(S["SCORE_REP"],pref.SCORE_REP)
	to_file(S["SCORE_SCI"],pref.SCORE_SCI)
	to_file(S["SCORE_SUR"],pref.SCORE_SUR)

	from_file(S["SCORE_BIG"],pref.SCORE_BIG)
	from_file(S["SCORE_ENE"],pref.SCORE_ENE)
	from_file(S["SCORE_EXP"],pref.SCORE_EXP)
	from_file(S["SCORE_MEL"],pref.SCORE_MEL)
	from_file(S["SCORE_SMA"],pref.SCORE_SMA)
	from_file(S["SCORE_UNA"],pref.SCORE_UNA)

/datum/category_item/player_setup_item/background/education/sanitize_character()
	pref.SCORE_S = sanitize_integer(pref.SCORE_S, 1, 10, initial(pref.SCORE_S))
	pref.SCORE_P = sanitize_integer(pref.SCORE_P, 1, 10, initial(pref.SCORE_P))
	pref.SCORE_E = sanitize_integer(pref.SCORE_E, 1, 10, initial(pref.SCORE_E))
	pref.SCORE_C = sanitize_integer(pref.SCORE_C, 1, 10, initial(pref.SCORE_C))
	pref.SCORE_I = sanitize_integer(pref.SCORE_I, 1, 10, initial(pref.SCORE_I))
	pref.SCORE_A = sanitize_integer(pref.SCORE_A, 1, 10, initial(pref.SCORE_A))
	pref.SCORE_L = sanitize_integer(pref.SCORE_L, 1, 10, initial(pref.SCORE_L))

	if(calculatetotalpoints() > 40)
		pref.SCORE_S = 1
		pref.SCORE_P = 1
		pref.SCORE_E = 1
		pref.SCORE_C = 1
		pref.SCORE_I = 1
		pref.SCORE_A = 1
		pref.SCORE_L = 1

/datum/category_item/player_setup_item/background/education/content(var/mob/user)
	. = list()
	. += "<br/><b>SPECIAL</b>:<br/>"
	. += "Strength: <a href='?src=\ref[src];score_s=1'>[pref.SCORE_S]</a><br>"
	. += "Perception: <a href='?src=\ref[src];score_p=1'>[pref.SCORE_P]</a><br>"
	. += "Endurance: <a href='?src=\ref[src];score_e=1'>[pref.SCORE_E]</a><br>"
	. += "Charisma:  <a href='?src=\ref[src];score_c=1'>[pref.SCORE_C]</a><br>"
	. += "Intelligence:  <a href='?src=\ref[src];score_i=1'>[pref.SCORE_I]</a><br>"
	. += "Agility:  <a href='?src=\ref[src];score_a=1'>[pref.SCORE_A]</a><br>"
	. += "Luck:  <a href='?src=\ref[src];score_l=1'>[pref.SCORE_L]</a><br>"
	. += "<br/>"
	. += "You have used [calculatetotalpoints()] / 40 SPECIAL points"
	. = jointext(.,null)

/datum/category_item/player_setup_item/background/education/proc/calculatetotalpoints()
	return (pref.SCORE_S + pref.SCORE_P + pref.SCORE_E + pref.SCORE_C + pref.SCORE_I + pref.SCORE_A + pref.SCORE_L)

/datum/category_item/player_setup_item/background/education/OnTopic(var/href,var/list/href_list, var/mob/user)
	if(href_list["score_s"])
		var/new_s = 0
		new_s = input(user, "Enter a value between 1 and 10 for your Strength.", CHARACTER_PREFERENCE_INPUT_TITLE, pref.SCORE_S) as num
		if(CanUseTopic(user))
			var/old_s = pref.SCORE_S
			pref.SCORE_S = max(min(round(new_s), 10), 1)
			if(calculatetotalpoints() > 40)
				pref.SCORE_S = old_s
			return TOPIC_REFRESH

	else if(href_list["score_p"])
		var/new_p = 0
		new_p = input(user, "Enter a value between 1 and 10 for your Perception.", CHARACTER_PREFERENCE_INPUT_TITLE, pref.SCORE_P) as num
		if(CanUseTopic(user))
			var/old_p = pref.SCORE_P
			pref.SCORE_P = max(min(round(new_p), 10), 1)
			if(calculatetotalpoints() > 40)
				pref.SCORE_P = old_p
			return TOPIC_REFRESH

	else if(href_list["score_e"])
		var/new_e = 0
		new_e = input(user, "Enter a value between -10 and 15 for your Endurance.", CHARACTER_PREFERENCE_INPUT_TITLE, pref.SCORE_E) as num
		if(CanUseTopic(user))
			var/old_e = pref.SCORE_E
			pref.SCORE_E = max(min(round(new_e), 10), 1)
			if(calculatetotalpoints() > 40)
				pref.SCORE_E = old_e
			return TOPIC_REFRESH

	else if(href_list["score_c"])
		var/new_c = 0
		new_c = input(user, "Enter a value between -10 and 15 for your Charisma.", CHARACTER_PREFERENCE_INPUT_TITLE, pref.SCORE_C) as num
		if(CanUseTopic(user))
			var/old_c = pref.SCORE_C
			pref.SCORE_C = max(min(round(new_c), 10), 1)
			if(calculatetotalpoints() > 40)
				pref.SCORE_C = old_c
			return TOPIC_REFRESH

	else if(href_list["score_i"])
		var/new_i = 0
		new_i = input(user, "Enter a value between -10 and 15 for your Intelligence.", CHARACTER_PREFERENCE_INPUT_TITLE, pref.SCORE_I) as num
		if(CanUseTopic(user))
			var/old_i = pref.SCORE_I
			pref.SCORE_I = max(min(round(new_i), 10), 1)
			if(calculatetotalpoints() > 40)
				pref.SCORE_I = old_i
			return TOPIC_REFRESH

	else if(href_list["score_a"])
		var/new_a = 0
		new_a = input(user, "Enter a value between -10 and 15 for your Agility.", CHARACTER_PREFERENCE_INPUT_TITLE, pref.SCORE_A) as num
		if(CanUseTopic(user))
			var/old_a = pref.SCORE_A
			pref.SCORE_A = max(min(round(new_a), 10), 1)
			if(calculatetotalpoints() > 40)
				pref.SCORE_A = old_a
			return TOPIC_REFRESH

	else if(href_list["score_l"])
		var/new_l = 0
		new_l = input(user, "Enter a value between -10 and 15 for your Luck.", CHARACTER_PREFERENCE_INPUT_TITLE, pref.SCORE_L) as num
		if(CanUseTopic(user))
			var/old_l = pref.SCORE_L
			pref.SCORE_L = max(min(round(new_l), 10), 1)
			if(calculatetotalpoints() > 40)
				pref.SCORE_L = old_l
			return TOPIC_REFRESH

	return ..()
