local cs = craftsystem.api

local cg = bbq.resources.craftgroups

cs.register_craft({
	type = "shapeless",
	output = "bbq:pickled_peppers",
	recipe = {cg.food_peppercorn, cg.food_pepper, "bbq:brine"},
})

cs.register_craft({
	type = "shapeless",
	output = "bbq:grilled_pizza_raw",
	recipe = {cg.food_cheese, cg.food_pepper, "bbq:grilled_tomato",
	          cg.food_mushroom, cg.food_pizza_dough, cg.food_baking_tray},
})

cs.register_craft({
	type = "shapeless",
	output = "bbq:stuffed_mushroom_raw 2",
	recipe = {cg.food_tomato, cg.food_bread_crumbs, cg.food_mushroom, cg.food_mushroom},
})

cs.register_craft({
	type = "shapeless",
	output = "bbq:veggie_kebab_raw",
	recipe = {cg.food_pepper, cg.food_onion, cg.food_mushroom, cg.stick, cg.food_cutting_board},
	no_replace = {cg.stick}
})

cs.register_craft({
	type = "shapeless",
	output = "bbq:veggie_packet_raw",
	recipe = {cg.food_pepper_ground, cg.food_tomato, cg.food_potato,
	          cg.food_corn, "bbq:foil", cg.food_cutting_board},
})

cs.register_craft({
	type = "shapeless",
	output = "bbq:portebello_steak_raw",
	recipe = {cg.food_pepper_ground, "bbq:steak_sauce", cg.food_mushroom, "bbq:basting_brush"},
})

cs.register_craft({
	type = "shapeless",
	output = "bbq:stuffed_pepper_raw 2",
	recipe = {cg.food_cheese, cg.food_bread_crumbs, cg.food_pepper, cg.food_pepper, cg.food_tomato_sauce},
})

cs.register_craft({
	type = "shapeless",
	output = "bbq:grilled_corn_raw",
	recipe = {cg.food_butter, "bbq:paprika", cg.food_corn, "bbq:basting_brush"},
})
