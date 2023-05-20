//Many thanks to Jamini/Occulus-Eris for coding and bug testing/improving this stat via cilent system

/datum/preferences
	var/SCORE_S = 1
	var/SCORE_P = 1
	var/SCORE_E = 1
	var/SCORE_C = 1
	var/SCORE_I = 1
	var/SCORE_A = 1
	var/SCORE_L = 1

	var/BOOST_ATH = FALSE
	var/BOOST_LOC = FALSE
	var/BOOST_MED = FALSE
	var/BOOST_REP = FALSE
	var/BOOST_SCI = FALSE
	var/BOOST_SUR = FALSE

	var/BOOST_BIG = FALSE
	var/BOOST_ENE = FALSE
	var/BOOST_EXP = FALSE
	var/BOOST_MEL = FALSE
	var/BOOST_SMA = FALSE
	var/BOOST_UNA = FALSE

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

	from_file(S["BOOST_ATH"],pref.BOOST_ATH)
	from_file(S["BOOST_LOC"],pref.BOOST_LOC)
	from_file(S["BOOST_MED"],pref.BOOST_MED)
	from_file(S["BOOST_REP"],pref.BOOST_REP)
	from_file(S["BOOST_SCI"],pref.BOOST_SCI)
	from_file(S["BOOST_SUR"],pref.BOOST_SUR)

	from_file(S["BOOST_BIG"],pref.BOOST_BIG)
	from_file(S["BOOST_ENE"],pref.BOOST_ENE)
	from_file(S["BOOST_EXP"],pref.BOOST_EXP)
	from_file(S["BOOST_MEL"],pref.BOOST_MEL)
	from_file(S["BOOST_SMA"],pref.BOOST_SMA)
	from_file(S["BOOST_UNA"],pref.BOOST_UNA)

/datum/category_item/player_setup_item/background/education/save_character(var/savefile/S)
	to_file(S["SCORE_S"],pref.SCORE_S)
	to_file(S["SCORE_P"],pref.SCORE_P)
	to_file(S["SCORE_E"],pref.SCORE_E)
	to_file(S["SCORE_C"],pref.SCORE_C)
	to_file(S["SCORE_I"],pref.SCORE_I)
	to_file(S["SCORE_A"],pref.SCORE_A)
	to_file(S["SCORE_L"],pref.SCORE_L)

	to_file(S["BOOST_ATH"],pref.BOOST_ATH)
	to_file(S["BOOST_LOC"],pref.BOOST_LOC)
	to_file(S["BOOST_MED"],pref.BOOST_MED)
	to_file(S["BOOST_REP"],pref.BOOST_REP)
	to_file(S["BOOST_SCI"],pref.BOOST_SCI)
	to_file(S["BOOST_SUR"],pref.BOOST_SUR)

	to_file(S["BOOST_BIG"],pref.BOOST_BIG)
	to_file(S["BOOST_ENE"],pref.BOOST_ENE)
	to_file(S["BOOST_EXP"],pref.BOOST_EXP)
	to_file(S["BOOST_MEL"],pref.BOOST_MEL)
	to_file(S["BOOST_SMA"],pref.BOOST_SMA)
	to_file(S["BOOST_UNA"],pref.BOOST_UNA)

/datum/category_item/player_setup_item/background/education/sanitize_character()
	pref.SCORE_S = sanitize_integer(pref.SCORE_S, 1, 10, initial(pref.SCORE_S))
	pref.SCORE_P = sanitize_integer(pref.SCORE_P, 1, 10, initial(pref.SCORE_P))
	pref.SCORE_E = sanitize_integer(pref.SCORE_E, 1, 10, initial(pref.SCORE_E))
	pref.SCORE_C = sanitize_integer(pref.SCORE_C, 1, 10, initial(pref.SCORE_C))
	pref.SCORE_I = sanitize_integer(pref.SCORE_I, 1, 10, initial(pref.SCORE_I))
	pref.SCORE_A = sanitize_integer(pref.SCORE_A, 1, 10, initial(pref.SCORE_A))
	pref.SCORE_L = sanitize_integer(pref.SCORE_L, 1, 10, initial(pref.SCORE_L))

	if(calculate_special_points() > 40)
		pref.SCORE_S = 1
		pref.SCORE_P = 1
		pref.SCORE_E = 1
		pref.SCORE_C = 1
		pref.SCORE_I = 1
		pref.SCORE_A = 1
		pref.SCORE_L = 1

	if(calculate_skill_boosts() > allowed_skill_boosts())
		pref.BOOST_ATH = FALSE
		pref.BOOST_LOC = FALSE
		pref.BOOST_MED = FALSE
		pref.BOOST_REP = FALSE
		pref.BOOST_SCI = FALSE
		pref.BOOST_SUR = FALSE

		pref.BOOST_BIG = FALSE
		pref.BOOST_ENE = FALSE
		pref.BOOST_EXP = FALSE
		pref.BOOST_MEL = FALSE
		pref.BOOST_SMA = FALSE
		pref.BOOST_UNA = FALSE

/datum/category_item/player_setup_item/background/education/content(var/mob/user)
	. += "<b>SPECIAL:</b><br/>"
	. += "Strength:  <a href='?src=\ref[src];special=S;text=Strength'>[pref.SCORE_S]</a><br>"
	. += "Perception:  <a href='?src=\ref[src];special=P;text=Perception'>[pref.SCORE_P]</a><br>"
	. += "Endurance:  <a href='?src=\ref[src];special=E;text=Endurance'>[pref.SCORE_E]</a><br>"
	. += "Charisma:  <a href='?src=\ref[src];special=C;text=Charisma'>[pref.SCORE_C]</a><br>"
	. += "Intelligence:  <a href='?src=\ref[src];special=I;text=Intelligence'>[pref.SCORE_I]</a><br>"
	. += "Agility:  <a href='?src=\ref[src];special=A;text=Agility'>[pref.SCORE_A]</a><br>"
	. += "Luck:  <a href='?src=\ref[src];special=L;text=Luck'>[pref.SCORE_L]</a><br>"
	. += "<br/>"
	. += "You have used [calculate_special_points()] / 40 SPECIAL points<hr>"

	. += "<b>Skills:</b><br/>"
	. += "<i>Boosting a skill grants it 15 extra points!</i><br/>"
	. += "Athletics:  <a href='?src=\ref[src];[!pref.BOOST_ATH ? "boost=ATH'>Boost" : "unboost=ATH' class='linkOn'>Unboost"]</a><br>"
	. += "Lockpick:  <a href='?src=\ref[src];[!pref.BOOST_LOC ? "boost=LOC'>Boost" : "unboost=LOC' class='linkOn'>Unboost"]</a><br>"
	. += "Medicine:  <a href='?src=\ref[src];[!pref.BOOST_MED ? "boost=MED'>Boost" : "unboost=MED' class='linkOn'>Unboost"]</a><br>"
	. += "Repair:  <a href='?src=\ref[src];[!pref.BOOST_REP ? "boost=REP'>Boost" : "unboost=REP' class='linkOn'>Unboost"]</a><br>"
	. += "Science:  <a href='?src=\ref[src];[!pref.BOOST_SCI ? "boost=SCI'>Boost" : "unboost=SCI' class='linkOn'>Unboost"]</a><br>"
	. += "Survival:  <a href='?src=\ref[src];[!pref.BOOST_SUR ? "boost=SUR'>Boost" : "unboost=SUR' class='linkOn'>Unboost"]</a><br>"
	. += "Big Guns:  <a href='?src=\ref[src];[!pref.BOOST_BIG ? "boost=BIG'>Boost" : "unboost=BIG' class='linkOn'>Unboost"]</a><br>"
	. += "Energy Weapons:  <a href='?src=\ref[src];[!pref.BOOST_ENE ? "boost=ENE'>Boost" : "unboost=ENE' class='linkOn'>Unboost"]</a><br>"
	. += "Explosives:  <a href='?src=\ref[src];[!pref.BOOST_EXP ? "boost=EXP'>Boost" : "unboost=EXP' class='linkOn'>Unboost"]</a><br>"
	. += "Melee Weapons:  <a href='?src=\ref[src];[!pref.BOOST_MEL ? "boost=MEL'>Boost" : "unboost=MEL' class='linkOn'>Unboost"]</a><br>"
	. += "Small Guns:  <a href='?src=\ref[src];[!pref.BOOST_SMA ? "boost=SMA'>Boost" : "unboost=SMA' class='linkOn'>Unboost"]</a><br>"
	. += "Unarmed:  <a href='?src=\ref[src];[!pref.BOOST_UNA ? "boost=UNA'>Boost" : "unboost=UNA' class='linkOn'>Unboost"]</a><br>"
	. += "<br/>"
	. += "You have boosted [calculate_skill_boosts()] / [allowed_skill_boosts()] skills<br/>"

/datum/category_item/player_setup_item/background/education/proc/calculate_special_points()
	return (pref.SCORE_S + pref.SCORE_P + pref.SCORE_E + pref.SCORE_C + pref.SCORE_I + pref.SCORE_A + pref.SCORE_L)

/datum/category_item/player_setup_item/background/education/proc/calculate_skill_boosts()
	return max(0,(pref.BOOST_ATH + pref.BOOST_LOC + pref.BOOST_MED + pref.BOOST_REP + pref.BOOST_SCI + pref.BOOST_SUR + \
			pref.BOOST_BIG + pref.BOOST_ENE + pref.BOOST_EXP + pref.BOOST_MEL + pref.BOOST_SMA + pref.BOOST_UNA))

/datum/category_item/player_setup_item/background/education/proc/allowed_skill_boosts()
	return 5 + SKILL_BOOSTS_PER_INT[pref.SCORE_I]

/datum/category_item/player_setup_item/background/education/proc/available_skill_boosts()
	return allowed_skill_boosts() - calculate_skill_boosts()

/datum/category_item/player_setup_item/background/education/OnTopic(var/href,var/list/href_list, var/mob/user)
	// SPECIAL

	if(href_list["special"])
		var/new_s = 0
		new_s = input(user, "Enter a value between 1 and 10 for your [href_list["text"]].", CHARACTER_PREFERENCE_INPUT_TITLE, pref.vars["SCORE_[href_list["special"]]"]) as num
		if(CanUseTopic(user))
			var/old_s = pref.vars["SCORE_[href_list["special"]]"]
			pref.vars["SCORE_[href_list["special"]]"] = max(min(round(new_s), 10), 1)
			if(calculate_special_points() > 40)
				pref.vars["SCORE_[href_list["special"]]"] = old_s
			return TOPIC_REFRESH

	// SKILLS

	else if(href_list["boost"])
		if(available_skill_boosts())
			pref.vars["BOOST_[href_list["boost"]]"] = TRUE
			return TOPIC_REFRESH

	else if(href_list["unboost"])
		pref.vars["BOOST_[href_list["unboost"]]"] = FALSE
		return TOPIC_REFRESH

	return ..()
