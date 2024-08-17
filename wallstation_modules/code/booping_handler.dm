proc/handle_booping(mob/living/carbon/booper, mob/living/carbon/target)
	if(HAS_TRAIT(target, TRAIT_BADTOUCH))
		if(prob(50))
			booper.visible_message(span_notice("[target] doesn't let [booper] touch their face!"), span_notice("[target] doesn't let you near their face!"))
		else
			booper.visible_message(span_notice("[target] flinches as [booper] touches [p_their(booper)] nose!"), span_notice("[target] flinches as you boop [p_their(booper)] nose!"))
	else if(istype(get_item_by_slot(ITEM_SLOT_MASK), /obj/item/clothing/mask/gas/clown_hat))
		playsound(target, 'sound/items/bikehorn.ogg', 50, TRUE)
		booper.visible_message(span_notice("[booper] honks [target]'s nose"), span_notice("You honk [target]'s nose."))
	else if(target.bodytype & BODYTYPE_SNOUTED)
		booper.visible_message(span_notice("[booper] boops [target]'s snout."), span_notice("You boop [target] on the snout."))
	else
		booper.visible_message(span_notice("[booper] boops [target]'s nose."), span_notice("You boop [target] on the nose."))
