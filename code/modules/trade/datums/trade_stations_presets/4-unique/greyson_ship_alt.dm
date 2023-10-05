/datum/trade_station/greyson_printer_ship
	icon_states = list("greyson_frigate", "ship")
	uid = "greyson_printer"
	tree_x = 0.66
	tree_y = 0.6
	start_discovered = FALSE
	spawn_always = TRUE
	markup = UNIQUE_GOODS
	base_income = 800
	wealth = 0
	recommendations_needed = 1
	hidden_inv_threshold = 2000
	recommendation_threshold = 4000
	regain_stock = FALSE
	name_pool = list("Dayinji" = "A still functioning, heavily armed greyson ship that still produces and offers wares, likely entirely unaware of Greyson Positronics collapse given its \
	automated. It's a wonder it hasn't been raided, but then again its protected by a massive army of still functioning combat drones. This one specializes in a wide variety of interesting goods.")
	inventory = list(
		"Gongju" = list(
			/obj/item/tool/medmultitool = custom_good_nameprice("GP Medical Multitool", list(-100, -50)),
		),
		"Beijian" = list(
			/obj/item/stock_parts/micro_laser/one_star = custom_good_nameprice("GP Micro Laser", list(-100, -50)),
			/obj/item/stock_parts/matter_bin/one_star = custom_good_nameprice("GP Matter Bin", list(-100, -50)),
			/obj/item/stock_parts/scanning_module/one_star = custom_good_nameprice("GP Scanning Module", list(-100, -50)),
			/obj/item/stock_parts/capacitor/one_star = custom_good_nameprice("GP Capacitor", list(-100, -50)),
			/obj/item/stock_parts/manipulator/one_star = custom_good_nameprice("GP Manipulator", list(-100, -50))
		)
	)
	hidden_inventory = list(
		"Wuqi yinshua" = list(
			/obj/item/gun/energy/cog = good_data("GP Cog", list(-1, 0), 475)
		),
		"Yinhua kuijia" = list(
			/obj/item/clothing/under/iron_lock_security = good_data("ILS Security Uniform", list(-100, -50), 175),
			/obj/item/clothing/head/soft/iron_lock_security = good_data("ILS Security Cap", list(-100, -50), 175),
			/obj/item/clothing/gloves/thick/ablasive/iron_lock_security = good_data("ILS Ablasive Gloves", list(-100, -50), 475),
			/obj/item/clothing/shoes/ablasive/iron_lock_security = good_data("ILS Ablasive Shoes", list(-100, -50), 475),
			/obj/item/clothing/head/helmet/laserproof/iron_lock_security = good_data("ILS Ablasive Helmet", list(-100, -50), 475),
			/obj/item/clothing/suit/armor/vest/iron_lock_security = good_data("ILS Ablasive Vest", list(-100, -50), 475)
		),
		"Gongju mo zu" = list(
			/obj/item/tool_upgrade/augment/holding_tank = custom_good_nameprice("GP Welder Fule Holding Tank", list(-100, -50)),
			/obj/item/tool_upgrade/augment/repair_nano = custom_good_nameprice("GP Nano Repair", list(-100, -50)),
			/obj/item/tool_upgrade/augment/ai_tool = custom_good_nameprice("GP Nano AI", list(-100, -50)),
			//Guns are tools too
			/obj/item/gun_upgrade/mechanism/glass_widow = custom_good_nameprice("GP Glass Widow", list(-100, -50)),
			/obj/item/gun_upgrade/mechanism/greyson_master_catalyst = custom_good_nameprice("GP \"Master Unmaker\" infuser", list(-100, -50))
		)
	)

	//The projectile guns, no selling the disk as they are op guns

	offer_types = list(
		/obj/item/gun/projectile/spring = offer_data("GP Spring", 2500, 1),
		/obj/item/gun/projectile/rivet = offer_data("GP Rivet", 3000, 1),
		/obj/item/gun/projectile/rebar = offer_data("GP Rebar", 4000, 1),
		/obj/item/gun/projectile/automatic/nail_gun = offer_data("GP Nail", 6000, 1),
		/obj/item/gun/projectile/trouble_shooter = offer_data("GP Trouble Shooter", 18000, 1),
		/obj/item/gun/projectile/automatic/scaffold = offer_data("GP Scaffold", 7500, 1)
	)
