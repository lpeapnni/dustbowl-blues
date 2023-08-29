/obj/item/melee/baseballbat
	name = "metal baseball bat"
	desc = "HOME RUN!"
	icon = 'icons/obj/weapons.dmi'
	icon_state = "metalbat0"
	wielded_icon = "metalbat1"
	item_state = "metalbat0"
	attack_verb = list("smashed", "beaten", "slammed", "smacked", "struck", "battered", "bonked")
	hitsound = 'sound/weapons/blunthit.ogg' // Ouch!
	force_unwielded = WEAPON_FORCE_ROBUST-7
	force_wielded = WEAPON_FORCE_ROBUST
	slot_flags = SLOT_BACK
	structure_damage_factor = STRUCTURE_DAMAGE_HEAVY

// in the future i should add wooden bats that you can put nails in

/obj/item/melee/golfclub
	name = "golf club"
	desc = "An old iron for golfing."
	icon = 'icons/fallout/objects/melee/twohanded.dmi'
	icon_state = "golfclub"
	wielded_icon = "golf"
	item_state = "golf"
	hitsound = 'sound/weapons/blunthit.ogg'
	force_unwielded = WEAPON_FORCE_DANGEROUS-7
	force_wielded = WEAPON_FORCE_DANGEROUS
	slot_flags = SLOT_BACK
