/obj/item/stack/telecrystal
	name = "telecrystal"
	desc = "It seems to be pulsing with suspiciously enticing energies."
	singular_name = "telecrystal"
	icon = 'icons/obj/telescience.dmi'
	icon_state = "telecrystal"
	w_class = ITEM_SIZE_TINY
	max_amount = 50
	flags = NOBLUDGEON
	origin_tech = list(TECH_MATERIAL = 6, TECH_BLUESPACE = 4)
	price_tag = 50

/obj/item/stack/telecrystal/random
	rand_min = 3
	rand_max = 15
