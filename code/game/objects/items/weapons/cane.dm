/obj/item/cane
	name = "cane"
	desc = "A cane used by a true gentlemen. Or a clown."
	icon = 'icons/obj/weapons.dmi'
	icon_state = "cane"
	item_state = "stick"
	flags = CONDUCT
	force = WEAPON_FORCE_NORMAL
	throwforce = WEAPON_FORCE_WEAK
	w_class = ITEM_SIZE_BULKY
	matter = list(MATERIAL_PLASTIC = 5)
	attack_verb = list("bludgeoned", "whacked", "disciplined", "thrashed")
	tool_qualities = list(QUALITY_PRYING = 10)


/obj/item/cane/whitecane
	name = "white cane"
	desc = "A white cane. They are commonly used by the blind or visually impaired as a mobility tool or as a courtesy to others."
	icon = 'icons/obj/weapons.dmi'
	icon_state = "whitecane"
	item_state = "whitecane"

/obj/item/cane/crutch
	name ="crutch"
	desc = "A long stick with a crosspiece at the top, used to help with walking."
	icon_state = "crutch"
	item_state = "crutch"
