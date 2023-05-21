/mob/living/carbon/human/verb/allocate_skill_points()
	set name = "Allocate skill points"
	set category = "IC"
	set src = usr

	if(!src.skill_points)
		to_chat(src, SPAN_NOTICE("You don't have any skill points!"))
		return
	else
		skill_point_window()

/mob/living/carbon/human/proc/skill_point_window()
	for(var/TS in ALL_SKILLS)
		src.skill_additions_list[TS] = 0

	src.allocate_skill_point_draw()

// for drawing the window
/mob/living/carbon/human/proc/allocate_skill_point_draw()
	var/data = {"
		Your skills:<br>
	"}

	var/skill_data
	var/total_points_allocated = 0

	for(var/TS in ALL_SKILLS)
		skill_data += "[TS]:  [src.getStatStats(TS)] + <a href='?src=\ref[src];skill_allocation=[TS]'>[src.skill_additions_list[TS]]</a><br>"
		total_points_allocated += src.skill_additions_list[TS]

	data += {"
		[skill_data]
		You've allocated [total_points_allocated]/[src.skill_points] skill points.<br>
		<a href='?src=\ref[src];submit_skill_allocation=1'>Submit</a> <a href='?src=\ref[src];reset_skill_allocation=1'>Reset</a>
	"}

	var/datum/browser/B = new(src, "SkillPointBrowser","Allocate skill points", 500, 600)
	B.set_content(data)
	B.set_window_options("can_minimize=0")
	B.open()

// for interacting with the window
/mob/living/carbon/human/Topic(href, href_list)
	if(href_list["skill_allocation"])
		var/new_s = 0
		var/total_points_allocated = 0

		// get input
		new_s = input(src, "Enter how many points you would like to allocate for [href_list["skill_allocation"]].", CHARACTER_PREFERENCE_INPUT_TITLE, src.skill_additions_list[href_list["skill"]]) as num
		new_s = sanitize_integer(new_s, 0, 60)

		// cap the input
		if((src.getStatStats(href_list["skill"]) + new_s) > SKILL_LEVEL_MAX)
			new_s -= new_s - (SKILL_LEVEL_MAX - src.getStatStats(href_list["skill"])) // subtract input by how much it goes over the max skill level

		// find out how many total points the player will have allocated with the input
		for(var/TS in ALL_SKILLS)
			if(TS == href_list["skill_allocation"])
				continue
			total_points_allocated += src.skill_additions_list[TS]
		total_points_allocated += new_s

		// make sure it isnt fucking insane, and if it isnt put the new allocated points value into skill_additions_list
		if(skill_points >= total_points_allocated)
			src.skill_additions_list[href_list["skill_allocation"]] = new_s
		else
			to_chat(src, SPAN_WARNING("You've allocated more than [src.skill_points] skill points!"))

		// we have to refresh the window manually
		src.allocate_skill_point_draw()
		return 1

	else if(href_list["reset_skill_allocation"])
		for(var/TS in ALL_SKILLS)
			src.skill_additions_list[TS] = 0
		src.allocate_skill_point_draw()
		return 1

	else if(href_list["submit_skill_allocation"])
		// check for any bullshit values just to make sure
		var/total_points_allocated = 0
		for(var/TS in ALL_SKILLS)
			total_points_allocated += src.skill_additions_list[TS]
		if(!total_points_allocated)
			to_chat(src, SPAN_NOTICE("You've haven't allocated any skill points!"))
			return 1
		if(skill_points >= total_points_allocated)
			// values are okay, change the players stats
			to_chat(src, SPAN_NOTICE("You've sucessfully allocated your skill points!"))
			for(var/TS in ALL_SKILLS)
				src.stats.changeStat_withcap(TS, src.skill_additions_list[TS])

			src.skill_points -= total_points_allocated // remove points spent

			// and then close the window
			src << browse(null, "window=SkillPointBrowser")
		else
			// values are not okay, dont do anything
			to_chat(src, SPAN_WARNING("You've allocated more than [src.skill_points] skill points!"))
		return 1

// good god this is a fucking nightmare
