/obj/random/knife
	name = "random knife"
	icon_state = "tool-red"

/obj/random/knife/item_to_spawn()
	return pickweight(list( // /obj/item/material/butterfly = 1,
				// /obj/item/material/butterfly/switchblade = 2,
				/obj/item/tool/knife = 1,
				/obj/item/tool/knife/boot = 0.5,
				/obj/item/tool/knife/hook = 2,
				/obj/item/tool/knife/ritual = 0.5,
				/obj/item/tool/scythe = 0.3,
				/obj/item/tool/sword = 0.2,
				/obj/item/tool/sword/machete = 0.5,
				/obj/item/tool/sword/saber/cutlass = 0.2,
				/obj/item/tool/sword/saber = 0.2,
				/obj/item/tool/sword/katana = 0.2,
				/obj/item/tool/knife/butch = 2,
				/obj/item/tool/knife/dagger = 0.8))

/obj/random/knife/low_chance
	name = "low chance random knife"
	icon_state = "tool-red-low"
	spawn_nothing_percentage = 80

/obj/random/melee
	name = "random bludgeon"
	icon_state = "tool-red"

/obj/random/melee/item_to_spawn()
	return pickweight(list(/obj/item/tool/hammer/homewrecker = 1,
				/obj/item/tool/hammer/mace = 1,
				/obj/item/tool/hammer/mace/makeshift = 2,
				/obj/item/melee/telebaton = 2,
				/obj/item/tool/nailstick = 2,
				// /obj/item/melee/toolbox_maul = 2,
				/obj/item/melee/classic_baton = 1,
				/obj/item/tool/chainofcommand = 0.3,
				/obj/item/shield/riot = 0.2,
				/obj/item/shield/buckler/handmade = 0.5,
				/obj/item/shield/riot/tray = 0.2,
				/obj/item/shield/riot/lid = 0.2,
				// /obj/item/material/baseballbat = 2
				))

/obj/random/melee/low_chance
	name = "low chance random bludgeon"
	icon_state = "tool-red-low"
	spawn_nothing_percentage = 80
