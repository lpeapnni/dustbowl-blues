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
	sort_order = 5

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
	to_file(S["SCORE_REP"],pref.SCORE_REP)
	to_file(S["SCORE_SCI"],pref.SCORE_SCI)
	to_file(S["SCORE_SUR"],pref.SCORE_SUR)

	to_file(S["SCORE_BIG"],pref.SCORE_BIG)
	to_file(S["SCORE_ENE"],pref.SCORE_ENE)
	to_file(S["SCORE_EXP"],pref.SCORE_EXP)
	to_file(S["SCORE_MEL"],pref.SCORE_MEL)
	to_file(S["SCORE_SMA"],pref.SCORE_SMA)
	to_file(S["SCORE_UNA"],pref.SCORE_UNA)

/datum/category_item/player_setup_item/background/education/sanitize_character()
	pref.SCORE_S = sanitize_integer(pref.SCORE_S, 1, 10, initial(pref.SCORE_S))
	pref.SCORE_P = sanitize_integer(pref.SCORE_P, 1, 10, initial(pref.SCORE_P))
	pref.SCORE_E = sanitize_integer(pref.SCORE_E, 1, 10, initial(pref.SCORE_E))
	pref.SCORE_C = sanitize_integer(pref.SCORE_C, 1, 10, initial(pref.SCORE_C))
	pref.SCORE_I = sanitize_integer(pref.SCORE_I, 1, 10, initial(pref.SCORE_I))
	pref.SCORE_A = sanitize_integer(pref.SCORE_A, 1, 10, initial(pref.SCORE_A))
	pref.SCORE_L = sanitize_integer(pref.SCORE_L, 1, 10, initial(pref.SCORE_L))

	pref.SCORE_ATH = sanitize_integer(pref.SCORE_ATH, 0, 60, initial(pref.SCORE_ATH))
	pref.SCORE_LOC = sanitize_integer(pref.SCORE_LOC, 0, 60, initial(pref.SCORE_LOC))
	pref.SCORE_MED = sanitize_integer(pref.SCORE_MED, 0, 60, initial(pref.SCORE_MED))
	pref.SCORE_REP = sanitize_integer(pref.SCORE_REP, 0, 60, initial(pref.SCORE_REP))
	pref.SCORE_SCI = sanitize_integer(pref.SCORE_SCI, 0, 60, initial(pref.SCORE_SCI))
	pref.SCORE_SUR = sanitize_integer(pref.SCORE_SUR, 0, 60, initial(pref.SCORE_SUR))

	pref.SCORE_BIG = sanitize_integer(pref.SCORE_BIG, 0, 60, initial(pref.SCORE_BIG))
	pref.SCORE_ENE = sanitize_integer(pref.SCORE_ENE, 0, 60, initial(pref.SCORE_ENE))
	pref.SCORE_EXP = sanitize_integer(pref.SCORE_EXP, 0, 60, initial(pref.SCORE_EXP))
	pref.SCORE_MEL = sanitize_integer(pref.SCORE_MEL, 0, 60, initial(pref.SCORE_MEL))
	pref.SCORE_SMA = sanitize_integer(pref.SCORE_SMA, 0, 60, initial(pref.SCORE_SMA))
	pref.SCORE_UNA = sanitize_integer(pref.SCORE_UNA, 0, 60, initial(pref.SCORE_UNA))

	if(calculate_special_points() > 40)
		pref.SCORE_S = 1
		pref.SCORE_P = 1
		pref.SCORE_E = 1
		pref.SCORE_C = 1
		pref.SCORE_I = 1
		pref.SCORE_A = 1
		pref.SCORE_L = 1

	if(calculate_skill_points() > 50)
		pref.SCORE_ATH = 0
		pref.SCORE_LOC = 0
		pref.SCORE_MED = 0
		pref.SCORE_REP = 0
		pref.SCORE_SCI = 0
		pref.SCORE_SUR = 0

		pref.SCORE_BIG = 0
		pref.SCORE_ENE = 0
		pref.SCORE_EXP = 0
		pref.SCORE_MEL = 0
		pref.SCORE_SMA = 0
		pref.SCORE_UNA = 0

/datum/category_item/player_setup_item/background/education/content(var/mob/user)
	. += "<b>SPECIAL:</b><br/>"
	. += "Strength:  <a href='?src=\ref[src];score_s=1'>[pref.SCORE_S]</a><br>"
	. += "Perception:  <a href='?src=\ref[src];score_p=1'>[pref.SCORE_P]</a><br>"
	. += "Endurance:  <a href='?src=\ref[src];score_e=1'>[pref.SCORE_E]</a><br>"
	. += "Charisma:  <a href='?src=\ref[src];score_c=1'>[pref.SCORE_C]</a><br>"
	. += "Intelligence:  <a href='?src=\ref[src];score_i=1'>[pref.SCORE_I]</a><br>"
	. += "Agility:  <a href='?src=\ref[src];score_a=1'>[pref.SCORE_A]</a><br>"
	. += "Luck:  <a href='?src=\ref[src];score_l=1'>[pref.SCORE_L]</a><br>"
	. += "<br/>"
	. += "You have used [calculate_special_points()] / 40 SPECIAL points<hr>"

	. += "<b>Skills:</b><br/>"
	. += "Athletics:  <a href='?src=\ref[src];score_ath=1'>[pref.SCORE_ATH]</a><br>"
	. += "Lockpick:  <a href='?src=\ref[src];score_loc=1'>[pref.SCORE_LOC]</a><br>"
	. += "Medicine:  <a href='?src=\ref[src];score_med=1'>[pref.SCORE_MED]</a><br>"
	. += "Repair:  <a href='?src=\ref[src];score_rep=1'>[pref.SCORE_REP]</a><br>"
	. += "Science:  <a href='?src=\ref[src];score_sci=1'>[pref.SCORE_SCI]</a><br>"
	. += "Survival:  <a href='?src=\ref[src];score_sur=1'>[pref.SCORE_SUR]</a><br><br>"
	. += "Big Guns:  <a href='?src=\ref[src];score_big=1'>[pref.SCORE_BIG]</a><br>"
	. += "Energy Weapons:  <a href='?src=\ref[src];score_ene=1'>[pref.SCORE_ENE]</a><br>"
	. += "Explosives:  <a href='?src=\ref[src];score_exp=1'>[pref.SCORE_EXP]</a><br>"
	. += "Melee Weapons:  <a href='?src=\ref[src];score_mel=1'>[pref.SCORE_MEL]</a><br>"
	. += "Small Guns:  <a href='?src=\ref[src];score_sma=1'>[pref.SCORE_SMA]</a><br>"
	. += "Unarmed:  <a href='?src=\ref[src];score_una=1'>[pref.SCORE_UNA]</a><br>"
	. += "<br/>"
	. += "You have used [calculate_skill_points()] / 50 skill points<br/>"

/datum/category_item/player_setup_item/background/education/proc/calculate_special_points()
	return (pref.SCORE_S + pref.SCORE_P + pref.SCORE_E + pref.SCORE_C + pref.SCORE_I + pref.SCORE_A + pref.SCORE_L)

/datum/category_item/player_setup_item/background/education/proc/calculate_skill_points()
	return (pref.SCORE_ATH + pref.SCORE_LOC + pref.SCORE_MED + pref.SCORE_REP + pref.SCORE_SCI + pref.SCORE_SUR + \
			pref.SCORE_BIG + pref.SCORE_ENE + pref.SCORE_EXP + pref.SCORE_MEL + pref.SCORE_SMA + pref.SCORE_UNA)

/datum/category_item/player_setup_item/background/education/OnTopic(var/href,var/list/href_list, var/mob/user)
	// SPECIAL
	if(href_list["score_s"])
		var/new_s = 0
		new_s = input(user, "Enter a value between 1 and 10 for your Strength.", CHARACTER_PREFERENCE_INPUT_TITLE, pref.SCORE_S) as num
		if(CanUseTopic(user))
			var/old_s = pref.SCORE_S
			pref.SCORE_S = max(min(round(new_s), 10), 1)
			if(calculate_special_points() > 40)
				pref.SCORE_S = old_s
			return TOPIC_REFRESH

	else if(href_list["score_p"])
		var/new_p = 0
		new_p = input(user, "Enter a value between 1 and 10 for your Perception.", CHARACTER_PREFERENCE_INPUT_TITLE, pref.SCORE_P) as num
		if(CanUseTopic(user))
			var/old_p = pref.SCORE_P
			pref.SCORE_P = max(min(round(new_p), 10), 1)
			if(calculate_special_points() > 40)
				pref.SCORE_P = old_p
			return TOPIC_REFRESH

	else if(href_list["score_e"])
		var/new_e = 0
		new_e = input(user, "Enter a value between 1 and 10 for your Endurance.", CHARACTER_PREFERENCE_INPUT_TITLE, pref.SCORE_E) as num
		if(CanUseTopic(user))
			var/old_e = pref.SCORE_E
			pref.SCORE_E = max(min(round(new_e), 10), 1)
			if(calculate_special_points() > 40)
				pref.SCORE_E = old_e
			return TOPIC_REFRESH

	else if(href_list["score_c"])
		var/new_c = 0
		new_c = input(user, "Enter a value between 1 and 10 for your Charisma.", CHARACTER_PREFERENCE_INPUT_TITLE, pref.SCORE_C) as num
		if(CanUseTopic(user))
			var/old_c = pref.SCORE_C
			pref.SCORE_C = max(min(round(new_c), 10), 1)
			if(calculate_special_points() > 40)
				pref.SCORE_C = old_c
			return TOPIC_REFRESH

	else if(href_list["score_i"])
		var/new_i = 0
		new_i = input(user, "Enter a value between 1 and 10 for your Intelligence.", CHARACTER_PREFERENCE_INPUT_TITLE, pref.SCORE_I) as num
		if(CanUseTopic(user))
			var/old_i = pref.SCORE_I
			pref.SCORE_I = max(min(round(new_i), 10), 1)
			if(calculate_special_points() > 40)
				pref.SCORE_I = old_i
			return TOPIC_REFRESH

	else if(href_list["score_a"])
		var/new_a = 0
		new_a = input(user, "Enter a value between 1 and 10 for your Agility.", CHARACTER_PREFERENCE_INPUT_TITLE, pref.SCORE_A) as num
		if(CanUseTopic(user))
			var/old_a = pref.SCORE_A
			pref.SCORE_A = max(min(round(new_a), 10), 1)
			if(calculate_special_points() > 40)
				pref.SCORE_A = old_a
			return TOPIC_REFRESH

	else if(href_list["score_l"])
		var/new_l = 0
		new_l = input(user, "Enter a value between 1 and 10 for your Luck.", CHARACTER_PREFERENCE_INPUT_TITLE, pref.SCORE_L) as num
		if(CanUseTopic(user))
			var/old_l = pref.SCORE_L
			pref.SCORE_L = max(min(round(new_l), 10), 1)
			if(calculate_special_points() > 40)
				pref.SCORE_L = old_l
			return TOPIC_REFRESH

	// skills

	else if(href_list["score_ath"])
		var/new_ath = 0
		new_ath = input(user, "Enter a value between 0 and 60 for your Athletics skill.", CHARACTER_PREFERENCE_INPUT_TITLE, pref.SCORE_ATH) as num
		if(CanUseTopic(user))
			var/old_ath = pref.SCORE_ATH
			pref.SCORE_ATH = max(min(round(new_ath), 60), 0)
			if(calculate_skill_points() > 60)
				pref.SCORE_ATH = old_ath
			return TOPIC_REFRESH

	else if(href_list["score_loc"])
		var/new_loc = 0
		new_loc = input(user, "Enter a value between 0 and 60 for your Lockpick skill.", CHARACTER_PREFERENCE_INPUT_TITLE, pref.SCORE_LOC) as num
		if(CanUseTopic(user))
			var/old_loc = pref.SCORE_LOC
			pref.SCORE_LOC = max(min(round(new_loc), 60), 0)
			if(calculate_skill_points() > 60)
				pref.SCORE_LOC = old_loc
			return TOPIC_REFRESH

	else if(href_list["score_med"])
		var/new_med = 0
		new_med = input(user, "Enter a value between 0 and 60 for your Medical skill.", CHARACTER_PREFERENCE_INPUT_TITLE, pref.SCORE_MED) as num
		if(CanUseTopic(user))
			var/old_med = pref.SCORE_MED
			pref.SCORE_MED = max(min(round(new_med), 60), 0)
			if(calculate_skill_points() > 60)
				pref.SCORE_MED = old_med
			return TOPIC_REFRESH

	else if(href_list["score_rep"])
		var/new_rep = 0
		new_rep = input(user, "Enter a value between 0 and 60 for your Repair skill.", CHARACTER_PREFERENCE_INPUT_TITLE, pref.SCORE_REP) as num
		if(CanUseTopic(user))
			var/old_rep = pref.SCORE_REP
			pref.SCORE_REP = max(min(round(new_rep), 60), 0)
			if(calculate_skill_points() > 60)
				pref.SCORE_REP = old_rep
			return TOPIC_REFRESH

	else if(href_list["score_sci"])
		var/new_sci = 0
		new_sci = input(user, "Enter a value between 0 and 60 for your Science skill.", CHARACTER_PREFERENCE_INPUT_TITLE, pref.SCORE_SCI) as num
		if(CanUseTopic(user))
			var/old_sci = pref.SCORE_SCI
			pref.SCORE_SCI = max(min(round(new_sci), 60), 0)
			if(calculate_skill_points() > 60)
				pref.SCORE_SCI = old_sci
			return TOPIC_REFRESH

	else if(href_list["score_sur"])
		var/new_sur = 0
		new_sur = input(user, "Enter a value between 0 and 60 for your Survival skill.", CHARACTER_PREFERENCE_INPUT_TITLE, pref.SCORE_SUR) as num
		if(CanUseTopic(user))
			var/old_sur = pref.SCORE_SUR
			pref.SCORE_SUR = max(min(round(new_sur), 60), 0)
			if(calculate_skill_points() > 60)
				pref.SCORE_SUR = old_sur
			return TOPIC_REFRESH


	else if(href_list["score_big"])
		var/new_big = 0
		new_big = input(user, "Enter a value between 0 and 60 for your Big Guns skill.", CHARACTER_PREFERENCE_INPUT_TITLE, pref.SCORE_BIG) as num
		if(CanUseTopic(user))
			var/old_big = pref.SCORE_BIG
			pref.SCORE_BIG = max(min(round(new_big), 60), 0)
			if(calculate_skill_points() > 60)
				pref.SCORE_BIG = old_big
			return TOPIC_REFRESH

	else if(href_list["score_ene"])
		var/new_ene = 0
		new_ene = input(user, "Enter a value between 0 and 60 for your Energy Guns skill.", CHARACTER_PREFERENCE_INPUT_TITLE, pref.SCORE_ENE) as num
		if(CanUseTopic(user))
			var/old_ene = pref.SCORE_ENE
			pref.SCORE_ENE = max(min(round(new_ene), 60), 0)
			if(calculate_skill_points() > 60)
				pref.SCORE_ENE = old_ene
			return TOPIC_REFRESH

	else if(href_list["score_exp"])
		var/new_exp = 0
		new_exp = input(user, "Enter a value between 0 and 60 for your Explosives skill.", CHARACTER_PREFERENCE_INPUT_TITLE, pref.SCORE_EXP) as num
		if(CanUseTopic(user))
			var/old_exp = pref.SCORE_EXP
			pref.SCORE_EXP = max(min(round(new_exp), 60), 0)
			if(calculate_skill_points() > 60)
				pref.SCORE_EXP = old_exp
			return TOPIC_REFRESH

	else if(href_list["score_mel"])
		var/new_mel = 0
		new_mel = input(user, "Enter a value between 0 and 60 for your Melee skill.", CHARACTER_PREFERENCE_INPUT_TITLE, pref.SCORE_MEL) as num
		if(CanUseTopic(user))
			var/old_mel = pref.SCORE_MEL
			pref.SCORE_MEL = max(min(round(new_mel), 60), 0)
			if(calculate_skill_points() > 60)
				pref.SCORE_MEL = old_mel
			return TOPIC_REFRESH

	else if(href_list["score_sma"])
		var/new_sma = 0
		new_sma = input(user, "Enter a value between 0 and 60 for your Small Guns skill.", CHARACTER_PREFERENCE_INPUT_TITLE, pref.SCORE_SMA) as num
		if(CanUseTopic(user))
			var/old_sma = pref.SCORE_SMA
			pref.SCORE_SMA = max(min(round(new_sma), 60), 0)
			if(calculate_skill_points() > 60)
				pref.SCORE_SMA = old_sma
			return TOPIC_REFRESH

	else if(href_list["score_una"])
		var/new_una = 0
		new_una = input(user, "Enter a value between 0 and 60 for your Unarmed skill.", CHARACTER_PREFERENCE_INPUT_TITLE, pref.SCORE_UNA) as num
		if(CanUseTopic(user))
			var/old_una = pref.SCORE_UNA
			pref.SCORE_UNA = max(min(round(new_una), 60), 0)
			if(calculate_skill_points() > 60)
				pref.SCORE_UNA = old_una
			return TOPIC_REFRESH

	return ..()
