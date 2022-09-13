local cs = craftsystem.api

local ci = bbq.resources.craftitems
local cg = bbq.resources.craftgroups

if ci.cotton_seed and ci.bottle_empty then
	minetest.register_craft({
		output = "bbq:cottonseed_oil",
		recipe = {
			{ci.cotton_seed, ci.cotton_seed, ci.cotton_seed},
			{ci.cotton_seed, ci.cotton_seed, ci.cotton_seed},
			{"", ci.bottle_empty, ""},
		}
	})
	cs.register_replacement("bbq:cottonseed_oil", ci.bottle_empty)
end

if ci.bottle_empty then
	cs.register_craft({
		type = "shapeless",
		output = "bbq:salsa 3",
		recipe = {
			cg.food_chili_pepper, cg.food_onion, cg.food_tomato,
			ci.bottle_empty, ci.bottle_empty, ci.bottle_empty,
			cg.food_cutting_board
		},
	})
	cs.register_replacement("bbq:salsa", ci.bottle_empty)

	cs.register_craft({
		type = "shapeless",
		output = "bbq:marinara 2",
		recipe = {
			cg.food_tomato, cg.food_tomato, cg.food_onion, cg.food_garlic,
			ci.bottle_empty, ci.bottle_empty, cg.food_saucepan
		},
	})
	cs.register_replacement("bbq:marinara", ci.bottle_empty)
end

cs.register_craft({
	type = "shapeless",
	output = "bbq:tomato_slice 8",
	recipe = {cg.food_cutting_board, cg.food_tomato}
})

cs.register_craft({
	type = "shapeless",
	output = "bbq:onion_slice 8",
	recipe = {cg.food_cutting_board, cg.food_onion}
})

cs.register_craft({
	type = "shapeless",
	output = "bbq:potato_slice 8",
	recipe = {cg.food_cutting_board, cg.food_potato}
})
cs.register_craft({
	type = "shapeless",
	output = "bbq:cornmeal",
	recipe = {cg.food_mortar_pestle, cg.food_corn}
})
cs.register_craft({
	type = "shapeless",
	output = "bbq:corn_dog_raw",
	recipe = {"bbq:hotdog_raw", cg.food_corn_flour, cg.stick},
	no_replace = {cg.stick}
})

cs.register_craft({
	type = "shapeless",
	output = "bbq:ground_meat_raw",
	recipe = {cg.food_mortar_pestle, cg.food_cutting_board, cg.food_meat_raw}
})
cs.register_craft({
	type = "shapeless",
	output = "bbq:meatloaf_raw",
	recipe = {"bbq:ground_meat_raw", cg.food_bread_crumbs, cg.food_onion}
})
cs.register_craft({
	type = "shapeless",
	output = "bbq:tortilla 5",
	recipe = {cg.food_flour, cg.food_salt, cg.food_oil, cg.food_water_glass, cg.food_skillet, cg.torch}
})
cs.register_craft({
	type = "shapeless",
	output = "bbq:taco 2",
	recipe = {"bbq:ground_meat", cg.food_cheese, cg.food_lettuce, "bbq:tortilla", "bbq:tortilla"}
})
cs.register_craft({
	type = "shapeless",
	output = "bbq:super_taco 2",
	recipe = {"bbq:ground_meat", "bbq:salsa", cg.food_cheese, cg.food_lettuce, "bbq:tortilla", "bbq:tortilla"}
})
cs.register_craft({
	type = "shapeless",
	output = "bbq:quesadilla",
	recipe = {"bbq:tortilla", "bbq:salsa", cg.food_cheese, cg.food_butter, "bbq:tortilla", cg.food_skillet}
})
cs.register_craft({
	type = "shapeless",
	output = "bbq:garlic_dough",
	recipe = {cg.food_flour, cg.food_garlic, cg.food_water_glass, "bbq:yeast"}
})
cs.register_craft({
	type = "shapeless",
	output = "bbq:pasta 3",
	recipe = {cg.food_flour, cg.food_salt, cg.food_oil, cg.food_water_glass}
})
cs.register_craft({
	type = "shapeless",
	output = "bbq:spaghetti",
	recipe = {cg.food_pasta, cg.food_pasta, cg.food_pasta, cg.food_tomato_sauce, cg.food_pot}
})
cs.register_craft({
	type = "shapeless",
	output = "bbq:lasagna",
	recipe = {cg.food_cheese, "bbq:pasta", "bbq:marinara", "bbq:pasta", "bbq:ground_meat_raw", cg.food_baking_tray}
})
cs.register_craft({
	type = "shapeless",
	output = "bbq:pepperoni",
	recipe = {"bbq:ground_meat_raw", cg.food_chili_pepper, cg.food_salt, cg.food_cutting_board}
})
cs.register_craft({
	type = "shapeless",
	output = "bbq:cheese_pizza_raw",
	recipe = {cg.food_pizza_dough, cg.food_cheese, cg.food_tomato_sauce,
	          cg.food_baking_tray}
})
cs.register_craft({
	type = "shapeless",
	output = "bbq:pepperoni_pizza_raw",
	recipe = {cg.food_pizza_dough, cg.food_cheese, cg.food_tomato_sauce, "bbq:pepperoni", cg.food_baking_tray}
})
cs.register_craft({
	type = "shapeless",
	output = "bbq:deluxe_pizza_raw",
	recipe = {cg.food_pizza_dough, cg.food_cheese, cg.food_tomato_sauce,
	          "bbq:pepperoni", "bbq:onion_slice", "bbq:tomato_slice",
	          cg.food_mushroom, cg.food_pepper, cg.food_baking_tray}
})
cs.register_craft({
	type = "shapeless",
	output = "bbq:hawaiian_pizza_raw",
	recipe = {cg.food_pizza_dough, cg.food_cheese, cg.food_tomato_sauce,
	          cg.food_ham, cg.food_pineapple_ring, cg.food_baking_tray}
})
cs.register_craft({
	type = "shapeless",
	output = "bbq:potato_crisps 5",
	recipe = {"bbq:potato_slice", "bbq:potato_slice", "bbq:potato_slice",
	          "bbq:potato_slice", "bbq:potato_slice", cg.food_salt,
	          cg.food_oil, cg.food_pot, cg.torch}
})
cs.register_craft({
	type = "shapeless",
	output = "bbq:french_fries",
	recipe = {cg.food_potato, cg.food_salt, cg.food_cutting_board, cg.food_oil, cg.food_pot, cg.torch}
})
cs.register_craft({
	type = "shapeless",
	output = "bbq:onion_rings 4",
	recipe = {"bbq:onion_slice", "bbq:onion_slice", "bbq:onion_slice",
	          "bbq:onion_slice", cg.food_flour, cg.food_salt,
	          cg.food_oil, cg.food_pot, cg.torch}
})
cs.register_craft({
	type = "shapeless",
	output = "bbq:blooming_onion",
	recipe = {cg.food_onion, cg.food_cutting_board, cg.food_flour, cg.food_salt, cg.food_oil, cg.food_pot, cg.torch}
})
cs.register_craft({
	type = "shapeless",
	output = "bbq:fish_sticks",
	recipe = {cg.food_fish, cg.food_flour, cg.food_salt, cg.food_oil, cg.food_pot, cg.torch}
})
