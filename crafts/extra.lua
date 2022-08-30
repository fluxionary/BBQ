local ci = bbq.resources.craftitems
local cg = bbq.resources.craftgroups
local rep = bbq.resources.replacements

if cg.food_tomato and cg.food_cutting_board and rep.food_cutting_board then
	minetest.register_craft({
		type = "shapeless",
		output = "bbq:tomato_slice 8",
		recipe = {cg.food_cutting_board, cg.food_tomato},
		replacements = {
			{cg.food_cutting_board, rep.food_cutting_board},
		}
	})
end

if cg.food_onion and cg.food_cutting_board and rep.food_cutting_board then
	minetest.register_craft({
		type = "shapeless",
		output = "bbq:onion_slice 8",
		recipe = {cg.food_cutting_board, cg.food_onion},
		replacements = {{cg.food_cutting_board, rep.food_cutting_board}}
	})
end

if cg.food_potato and cg.food_cutting_board and rep.food_cutting_board then
	minetest.register_craft({
		type = "shapeless",
		output = "bbq:potato_slice 8",
		recipe = {cg.food_cutting_board, cg.food_potato},
		replacements = {{cg.food_cutting_board, rep.food_cutting_board}}
	})
end

if ci.cotton_seed and ci.bottle_empty then
	minetest.register_craft({
		output = "bbq:cottonseed_oil",
		recipe = {
			{ci.cotton_seed, ci.cotton_seed, ci.cotton_seed},
			{ci.cotton_seed, ci.cotton_seed, ci.cotton_seed},
			{"", ci.bottle_empty, ""},
		}
	})
end

if not bbq.has.yl_seasons then
	if ci.food_corn and ci.food_mortar_pestle and rep.food_mortar_pestle then
		minetest.register_craft({
			type = "shapeless",
			output = "bbq:cornmeal",
			recipe = {ci.food_corn, ci.food_mortar_pestle},
			replacements = {
				{ci.food_mortar_pestle, rep.food_mortar_pestle}
			},
		})
	end
end

if cg.food_corn_flour and cg.stick then
	minetest.register_craft({
		type = "shapeless",
		output = "bbq:corn_dog_raw",
		recipe = {"bbq:hotdog_raw", cg.food_corn_flour, cg.stick},
	})
end

if cg.food_meat_raw and cg.food_mortar_pestle and rep.food_mortar_pestle and cg.food_cutting_board
	and rep.food_cutting_board then
	minetest.register_craft({
		output = "bbq:ground_meat_raw",
		type = "shapeless",
		recipe = {cg.food_meat_raw, cg.food_mortar_pestle, cg.food_cutting_board},
		replacements = {
			{cg.food_mortar_pestle, rep.food_mortar_pestle},
			{cg.food_cutting_board, rep.food_cutting_board},
		},
	})
end

if cg.food_bread_crumbs and cg.food_onion then
	minetest.register_craft({
		type = "shapeless",
		output = "bbq:meatloaf_raw",
		recipe = {"bbq:ground_meat_raw", cg.food_bread_crumbs, cg.food_onion},
	})
end

if cg.food_flour and cg.food_oil and cg.food_water_glass and cg.food_skillet and cg.food_salt and cg.torch
	and rep.food_skillet and rep.food_oil and rep.food_water_glass and rep.food_salt then
	minetest.register_craft({
		type = "shapeless",
		output = "bbq:tortilla 5",
		recipe = {cg.food_flour, cg.food_salt, cg.food_oil, cg.food_water_glass, cg.food_skillet, cg.torch},
		replacements = {
			{cg.food_skillet, rep.food_skillet},
			{cg.food_water_glass, rep.food_water_glass},
			{cg.food_oil, rep.food_oil},
			{cg.food_salt, rep.food_salt},
		},
	})
end

if cg.food_chili_pepper and cg.food_onion and cg.food_tomato and ci.bottle_empty and cg.food_cutting_board
	and rep.food_cutting_board then
	minetest.register_craft({
		type = "shapeless",
		output = "bbq:salsa 3",
		recipe = {cg.food_chili_pepper, cg.food_onion, cg.food_tomato,
		          ci.bottle_empty, ci.bottle_empty, ci.bottle_empty,
		          cg.food_cutting_board, },
		replacements = {
			{cg.food_cutting_board, rep.food_cutting_board},
		}
	})
end

if cg.food_cheese and cg.food_lettuce then
	minetest.register_craft({
		type = "shapeless",
		output = "bbq:taco",
		recipe = {"bbq:ground_meat", cg.food_cheese, cg.food_lettuce, "bbq:tortilla"},
	})
end

if cg.food_cheese and cg.food_lettuce then
	minetest.register_craft({
		type = "shapeless",
		output = "bbq:super_taco",
		recipe = {"bbq:ground_meat", "bbq:salsa", cg.food_cheese, cg.food_lettuce, "bbq:tortilla"},
	})
end

if cg.food_cheese and cg.food_butter and cg.food_skillet and rep.food_skillet then
	minetest.register_craft({
		output = "bbq:quesadilla",
		recipe = {
			{"bbq:tortilla", "", ""},
			{"bbq:salsa", cg.food_cheese, cg.food_butter},
			{"bbq:tortilla", cg.food_skillet, ""},
		},
		replacements = {
			{cg.food_skillet, rep.food_skillet},
		},
	})
end

if cg.food_flour and cg.food_garlic and cg.food_water_glass and rep.food_water_glass then
	minetest.register_craft({
		type = "shapeless",
		output = "bbq:garlic_dough",
		recipe = {cg.food_flour, cg.food_garlic, cg.food_water_glass, "bbq:yeast"},
		replacements = {
			{cg.food_water_glass, rep.food_water_glass},
		},
	})
end

if cg.food_flour and cg.food_oil and cg.food_water_glass and cg.food_salt
	and rep.food_oil and rep.food_water_glass and rep.food_salt then
	minetest.register_craft({
		type = "shapeless",
		output = "bbq:pasta 5",
		recipe = {cg.food_flour, cg.food_salt, cg.food_oil, cg.food_water_glass},
		replacements = {
			{cg.food_water_glass, rep.food_water_glass},
			{cg.food_oil, rep.food_oil},
			{cg.food_salt, rep.food_salt},
		},
	})
end

if cg.food_tomato and cg.food_onion and cg.food_garlic and cg.food_saucepan and ci.bottle_empty
	and rep.food_saucepan then
	minetest.register_craft({
		type = "shapeless",
		output = "bbq:marinara 2",
		recipe = {cg.food_tomato, cg.food_tomato,
		          cg.food_onion, cg.food_garlic,
				  ci.bottle_empty, ci.bottle_empty, cg.food_saucepan},
		replacements = {
			{cg.food_saucepan, rep.food_saucepan},
		},
	})
end

if cg.food_pasta and cg.food_tomato_sauce and cg.food_pot and rep.food_pot and rep.food_tomato_sauce then
	minetest.register_craft({
		type = "shapeless",
		output = "bbq:spaghetti",
		recipe = {cg.food_pasta, cg.food_pasta, cg.food_pasta,
		          cg.food_tomato_sauce, cg.food_pot},
		replacements = {
			{cg.food_pot, rep.food_pot},
			{cg.food_tomato_sauce, rep.food_tomato_sauce},
		},
	})
end

if cg.food_cheese and cg.food_baking_tray and rep.food_baking_tray then
	minetest.register_craft({
		type = "shapeless",
		output = "bbq:lasagna ",
		recipe = {cg.food_cheese, "bbq:pasta",  "bbq:marinara",
		          "bbq:pasta", "bbq:ground_meat_raw", cg.food_baking_tray},
		replacements = {
			{cg.food_baking_tray, rep.food_baking_tray},
		},
	})
end

if cg.food_chili_pepper and cg.food_salt and rep.food_salt and cg.food_cutting_board and rep.food_cutting_board then
	minetest.register_craft({
		type = "shapeless",
		output = "bbq:pepperoni",
		recipe = {"bbq:ground_meat_raw", cg.food_chili_pepper, cg.food_salt, cg.food_cutting_board},
		replacements = {
			{cg.food_salt, rep.food_salt},
			{cg.food_cutting_board, rep.food_cutting_board},
		}
	})
end

if cg.food_pizza_dough and cg.food_cheese and cg.food_tomato_sauce and cg.food_cutting_board
	and rep.food_cutting_board then
	minetest.register_craft({
		type = "shapeless",
		output = "bbq:cheese_pizza_raw",
		recipe = {cg.food_pizza_dough, cg.food_cheese, cg.food_tomato_sauce, cg.food_cutting_board},
		replacements = {
			{cg.food_cutting_board, rep.food_cutting_board},
		}
	})

	minetest.register_craft({
		type = "shapeless",
		output = "bbq:pepperoni_pizza_raw",
		recipe = {cg.food_pizza_dough, cg.food_cheese, cg.food_tomato_sauce,
		          "bbq:pepperoni", cg.food_cutting_board},
		replacements = {
			{cg.food_cutting_board, rep.food_cutting_board},
		}
	})

	if cg.food_mushroom and cg.food_pepper then
		minetest.register_craft({
			type = "shapeless",
			output = "bbq:deluxe_pizza_raw",
			recipe = {cg.food_pizza_dough, cg.food_cheese, cg.food_tomato_sauce,
			          "bbq:pepperoni", "bbq:onion_slice", "bbq:tomato_slice",
			          cg.food_mushroom, cg.food_pepper, cg.food_cutting_board},
			replacements = {
				{cg.food_cutting_board, rep.food_cutting_board},
			}
		})
	end

	if cg.food_ham and cg.food_pineapple_ring then
		minetest.register_craft({
			type = "shapeless",
			output = "bbq:hawaiian_pizza_raw",
			recipe = {cg.food_pizza_dough, cg.food_cheese, cg.food_tomato_sauce,
			          cg.food_ham, cg.food_pineapple_ring, cg.food_cutting_board},
			replacements = {
				{cg.food_cutting_board, rep.food_cutting_board},
			}
		})
	end
end

if cg.food_oil and cg.food_pot and cg.torch and rep.food_pot and rep.food_oil and cg.food_salt and rep.food_salt then
	minetest.register_craft({
		type = "shapeless",
		output = "bbq:potato_crisps 5",
		recipe = {"bbq:potato_slice", "bbq:potato_slice", "bbq:potato_slice",
		          "bbq:potato_slice", "bbq:potato_slice", cg.food_salt,
		          cg.food_oil, cg.food_pot, cg.torch},
		replacements = {
			{cg.food_salt, rep.food_salt},
			{cg.food_oil, rep.food_oil},
			{cg.food_pot, rep.food_pot},
		},
	})

	if cg.food_potato and cg.food_cutting_board and rep.food_cutting_board then
		minetest.register_craft({
			type = "shapeless",
			output = "bbq:french_fries",
			recipe = {cg.food_potato, cg.food_salt, cg.food_cutting_board,
			          cg.food_oil, cg.food_pot, cg.torch},
			replacements = {
				{cg.food_cutting_board, rep.food_cutting_board},
				{cg.food_salt, rep.food_salt},
				{cg.food_oil, rep.food_oil},
				{cg.food_pot, rep.food_pot},
			},
		})
	end

	if cg.food_flour then
		minetest.register_craft({
			type = "shapeless",
			output = "bbq:onion_rings 4",
			recipe = {"bbq:onion_slice", "bbq:onion_slice", "bbq:onion_slice",
			          "bbq:onion_slice", cg.food_flour, cg.food_salt,
			          cg.food_oil, cg.food_pot, cg.torch},
			replacements = {
				{cg.food_salt, rep.food_salt},
				{cg.food_oil, rep.food_oil},
				{cg.food_pot, rep.food_pot},
			},
		})
	end

	if cg.food_onion and cg.food_flour and cg.food_cutting_board and rep.food_cutting_board then
		minetest.register_craft({
			type = "shapeless",
			output = "bbq:blooming_onion",
			recipe = {cg.food_onion, cg.food_cutting_board, cg.food_flour,
			          cg.food_salt, cg.food_oil, cg.food_pot, cg.torch},
			replacements = {
				{cg.food_cutting_board, rep.food_cutting_board},
				{cg.food_salt, rep.food_salt},
				{cg.food_oil, rep.food_oil},
				{cg.food_pot, rep.food_pot},
			},
		})
	end

	if cg.food_fish and cg.food_flour then
		minetest.register_craft({
			type = "shapeless",
			output = "bbq:fish_sticks",
			recipe = {cg.food_fish, cg.food_flour, cg.food_salt,
			          cg.food_oil, cg.food_pot, cg.torch},
			replacements = {
				{cg.food_salt, rep.food_salt},
				{cg.food_oil, rep.food_oil},
				{cg.food_pot, rep.food_pot},
			},
		})
	end
end
