/obj/item/tool/shovel
	name = "shovel"
	desc = "A large tool for digging and moving dirt and rock."
	icon_state = "shovel"
	item_state = "shovel"
	flags = CONDUCT
	slot_flags = SLOT_BELT
	force = WEAPON_FORCE_PAINFUL
	throwforce = WEAPON_FORCE_WEAK
	w_class = ITEM_SIZE_NORMAL
	origin_tech = list(TECH_MATERIAL = 1, TECH_ENGINEERING = 1)
	matter = list(MATERIAL_STEEL = 5)
	attack_verb = list("bashed", "bludgeoned", "thrashed", "whacked")
	sharp = FALSE
	edge = TRUE
	max_health = 500
	tool_qualities = list(QUALITY_SHOVELING = 35, QUALITY_DIGGING = 35, QUALITY_EXCAVATION = 10)
	effective_faction = list("spider") // Spiders are weak to crushing.
	damage_mult = 2
	hitsound = 'sound/weapons/smash.ogg'
	price_tag = 15

	has_alt_mode = TRUE
	alt_mode_damagetype = HALLOSS
	alt_mode_sharp = FALSE
	alt_mode_verbs = list("bashes", "stunts", "wacks", "blunts")
	alt_mode_toggle = "switches their stance to avoid using the blade of their weapon"
	alt_mode_lossrate = 0.9


/obj/item/tool/shovel/improvised
	name = "junk shovel"
	desc = "A large but fragile tool for moving dirt and rock, made by hand. Has more than enough space for tool mods to make it better."
	icon_state = "impro_shovel"
	tool_qualities = list(QUALITY_SHOVELING = 25, QUALITY_DIGGING = 25, QUALITY_EXCAVATION = 10)
	degradation = 1.5
	max_upgrades = 5 //all makeshift tools get more mods to make them actually viable for mid-late game
	price_tag = 10

/obj/item/tool/shovel/spade
	name = "spade"
	desc = "A small tool ofter used for simple gardening task such as digging soil and moving dirt."
	icon_state = "spade"
	item_state = "spade"
	force = WEAPON_FORCE_NORMAL
	throwforce = WEAPON_FORCE_HARMLESS
	w_class = ITEM_SIZE_SMALL
	matter = list(MATERIAL_STEEL = 3, MATERIAL_PLASTIC = 1)
	tool_qualities = list(QUALITY_SHOVELING = 20, QUALITY_DIGGING = 20, QUALITY_EXCAVATION = 10)
	max_upgrades = 2
	price_tag = 60
