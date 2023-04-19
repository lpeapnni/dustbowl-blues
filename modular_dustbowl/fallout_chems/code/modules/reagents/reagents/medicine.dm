#define stimpak_healing_calc(volume,factor) 100 * volume / ((volume + factor) * (volume < 10 ? 2.5 : 1))

/datum/reagent/medicine/inert_stimpak
	name = "Inert Stimpak Fluid"
	id = "inert_stimpak"
	description = "The remainder of a successful stimpak injection. Takes the body some time to purge."
	taste_description = "blandness"
	reagent_state = LIQUID
	color = "#969696"
	overdose = REAGENTS_OVERDOSE
	scannable = TRUE
	nerve_system_accumulations = 25 //It leaves you kinda woozy

/datum/reagent/medicine/stimpak
	name = "Stimpak Fluid"
	id = "stimpak"
	description = "A mixture of several healing fluids and stimulants, allowing the user to boost their own body's natural regenerative functions."
	taste_description = "toxic burns"
	reagent_state = LIQUID
	color = "#900000"
	overdose = REAGENTS_OVERDOSE
	scannable = TRUE
	nerve_system_accumulations = 0
	//How effective the stim fluid is at healing. Higher is worse.
	var/factor = 15

/datum/reagent/medicine/stimpak/on_mob_add(mob/living/carbon/M)
	if(M.ingested && (src in M.ingested.reagent_list))
		//Drinking stimpaks is a really bad idea.
		if(ishuman(M))
			var/mob/living/carbon/human/H = M
			var/obj/item/organ/internal/tummy = H.random_organ_by_process(OP_STOMACH)
			if(tummy && istype(tummy))
				to_chat(H, "Your [tummy.parent.name] and throat feel like they're burning!")
				create_overdose_wound(tummy, H, /datum/component/internal_wound/organic/heavy_poisoning/chem, "poisoning", TRUE)

		//Toxins woooo!
		M.reagents.add_reagent("toxin",volume*2)
	else if(M.reagents && (src in M.reagents.reagent_list))
		var/brute_loss = M.getBruteLoss()
		var/fire_loss = M.getFireLoss()

		//Heals brute and burns, at a proportional rate for each

		var/total_healing = stimpak_healing_calc(volume,factor)

		M.heal_overall_damage(total_healing * (brute_loss / (brute_loss + fire_loss)), total_healing * (fire_loss / (brute_loss + fire_loss)))

		//Becomes inert after use
		M.reagents.add_reagent("inert_stimpak",volume)
	remove_self(volume)
	return

/datum/reagent/medicine/stimpak/super
	name = "Superstimpak Fluid"
	id = "super_stimpak"
	description = "A potent mixture of several healing fluids and stimulants, allowing the user to boost their own body's natural regenerative functions, yet leaving behind soreness."
	taste_description = "toxic burns"
	color = "#d30000"
	factor = 10

/datum/reagent/medicine/stimpak/super/on_mob_add(mob/living/carbon/M)
	if(M.reagents && (src in M.reagents.reagent_list))
		if(!M.stats.getPerk(PERK_SUPERSTIM_SLOWDOWN))
			M.stats.addPerk(PERK_SUPERSTIM_SLOWDOWN)
	. = ..()

/datum/reagent/medicine/stimpak/expired
	name = "Expired Stimpak Fluid"
	id = "stimpak_bad"
	description = "A mixture of several healing fluids and stimulants, allowing the user to boost their own body's natural regenerative functions. This one is expired."
	taste_description = "toxic burns"
	color = "#691111"
	factor = 30
