/datum/preferences
	var/datum/stat/selected_info_stat = null

/datum/category_item/player_setup_item/skills/description_box
	name = "Descriptions"
	sort_order = 1

/datum/category_item/player_setup_item/skills/description_box/content(var/mob/user)
	. = ""
	if(pref.selected_info_stat)
		. += "<div class = 'roleDescription' style = 'height:150px; width:65%; margin-left:auto; margin-right:auto;'>"
		. += "<table style='float:left;table-layout: fixed;' cellpadding='0' cellspacing='0'>"
		. += "<tr>"

		// little preview image
		user << browse_rsc(pref.selected_info_stat.image, "stat_image_[pref.selected_info_stat.name].png")
		. += "<td style='width: 140px;overflow: hidden;display: inline-block;white-space: nowrap;'><img src='stat_image_[pref.selected_info_stat.name].png'></td>"

		// stat description
		. += "<td style = 'width: 100%;vertical-align: top;'>"
		. += "<h1 style='text-align: center;padding-top: 5px;padding-bottom: 0px;'>[pref.selected_info_stat.name]</h1>" // stat title
		. += "<hr>"
		. += "[pref.selected_info_stat.desc]</td></tr></table>" // description
		. += "</div>"
