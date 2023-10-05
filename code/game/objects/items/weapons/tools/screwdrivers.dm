/obj/item/tool/screwdriver
	name = "screwdriver"
	desc = "You can use this to open panels, screw stuff and such things."
	icon_state = "screwdriver"
	flags = CONDUCT
	worksound = WORKSOUND_SCREW_DRIVING
	slot_flags = SLOT_BELT | SLOT_EARS
	w_class = ITEM_SIZE_TINY
	matter = list(MATERIAL_STEEL = 2, MATERIAL_PLASTIC = 1)
	attack_verb = list("stabbed")
	tool_qualities = list(QUALITY_SCREW_DRIVING = 35, QUALITY_BONE_SETTING = 10)
	price_tag = 9

/obj/item/tool/screwdriver/bs
	name = "bluespace screwdriver"
	icon_state = "bs_screwdriver"
	tool_qualities = list(QUALITY_SCREW_DRIVING = 100, QUALITY_BONE_SETTING = 100)

/obj/item/tool/screwdriver/improvised
	name = "screw pusher"
	desc = "A little metal rod wrapped in a tape handle. This can be fixed with enough tool mods, for which it has ample capacity."
	icon_state = "impro_screwdriver"
	tool_qualities = list(QUALITY_SCREW_DRIVING = 15)
	degradation = 2
	max_upgrades = 5 //all makeshift tools get more mods to make them actually viable for mid-late game
	price_tag = 2

/obj/item/tool/screwdriver/attack(mob/living/carbon/M as mob, mob/living/carbon/user as mob)
	if(!istype(M) || user.a_intent == "help")
		return ..()
	if(user.targeted_organ != BP_EYES && user.targeted_organ != BP_HEAD)
		return ..()
	if((CLUMSY in user.mutations) && prob(15))
		M = user
	return eyestab(M,user)
