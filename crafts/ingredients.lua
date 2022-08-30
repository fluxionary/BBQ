local ci = bbq.resources.craftitems
local cg = bbq.resources.craftgroups
local rep = bbq.resources.replacements

if ci.tin then
	minetest.register_craft({
		output = "bbq:foil 12",
		recipe = {
			{ci.tin, ci.tin, ci.tin}
		}
	})
end

if cg.stick then
	minetest.register_craft({
		output = "bbq:sawdust 8",
		recipe = {{cg.stick, cg.stick}},
	})
end

if cg.food_mortar_pestle then
	minetest.register_craft({
		output = "bbq:paprika",
		type = "shapeless",
		recipe = {"bbq:smoked_pepper", cg.food_mortar_pestle},
		replacements = {{cg.food_mortar_pestle, rep.food_mortar_pestle}},
	})
end

minetest.clear_craft({output = "bbq:hamburger_patty_raw"})
minetest.register_craft({
	output = "bbq:hamburger_patty_raw 2",
	type = "shapeless",
	recipe = {"bbq:ground_meat_raw"},
})

if cg.food_pork_raw and cg.food_chicken_raw and rep.food_mortar_pestle and cg.food_cutting_board
	and rep.food_cutting_board then
	minetest.clear_craft({output = "bbq:hotdog_raw"})
	minetest.register_craft({
		output = "bbq:hotdog_raw 4",
		type = "shapeless",
		recipe = {cg.food_pork_raw, cg.food_chicken_raw, "bbq:sawdust", cg.food_mortar_pestle, cg.food_cutting_board},
		replacements = {
			{cg.food_mortar_pestle, rep.food_mortar_pestle},
			{cg.food_cutting_board, rep.food_cutting_board},
		},
	})
end

if cg.food_water_glass and cg.food_sugar then
	minetest.register_craft({
		output = "bbq:vinegar 3",
		recipe = {
			{"group:food_vinegarmother", "", ""},
			{cg.food_sugar, cg.food_sugar, cg.food_sugar},
			{cg.food_water_glass, cg.food_water_glass, cg.food_water_glass},
		},
		replacements = {
			{"group:food_vinegarmother", "bbq:yeast"}
		},
	})
end

if cg.food_tomato and ci.bottle_empty and cg.food_saucepan and rep.food_saucepan then
	minetest.register_craft({
		type = "shapeless",
		output = "bbq:tomato_sauce",
		recipe = {cg.food_tomato, ci.bottle_empty, cg.food_saucepan},
		replacements = {{cg.food_saucepan, rep.food_saucepan}},
	})
end

if cg.food_salt and cg.food_sugar and cg.food_water_glass then
	minetest.register_craft({
		output = "bbq:brine 3",
		type = "shapeless",
		recipe = {cg.food_water_glass, cg.food_water_glass, cg.food_water_glass,
		          cg.food_salt, cg.food_sugar, cg.food_salt,
		          cg.food_salt, cg.food_salt, cg.food_salt},
	})
end

if cg.food_mushroom then
	minetest.register_craft({
		output = "bbq:steak_sauce 2",
		type = "shapeless",
		recipe = {cg.food_mushroom, "bbq:vinegar", "bbq:hot_sauce"},
		replacements = {{"bbq:vinegar", "bbq:vinegar_mother"}},
	})
end

if cg.food_water_glass and cg.torch and cg.wood then
	minetest.register_craft({
		output = "bbq:liquid_smoke 3",
		type = "shapeless",
		recipe = {cg.food_water_glass, cg.food_water_glass, cg.food_water_glass,
		          cg.wood, cg.torch},
	})
end

if cg.food_chili_pepper and cg.food_water_glass and cg.food_salt then
	minetest.clear_craft({output = "bbq:hot_sauce"})
	minetest.register_craft({
		output = "bbq:hot_sauce 3",
		type = "shapeless",
		recipe = {cg.food_water_glass, cg.food_water_glass, cg.food_water_glass,
		          cg.food_chili_pepper, cg.food_salt, "bbq:paprika"},
	})
end

if cg.food_molasses and cg.food_onion and cg.food_garlic_clove and cg.food_tomato_sauce and cg.food_salt
	and rep.food_molasses and rep.food_tomato_sauce then
	minetest.register_craft({
		output = "bbq:bbq_sauce 3",
		type = "shapeless",
		recipe = {cg.food_molasses, cg.food_onion, cg.food_tomato_sauce,
		          cg.food_garlic_clove, "bbq:paprika",
		          cg.food_salt, "bbq:liquid_smoke", "bbq:vinegar"},
		replacements = {
			{"bbq:vinegar", "bbq:vinegar_mother"},
			{cg.food_molasses, rep.food_molasses},
			{cg.food_tomato_sauce, rep.food_tomato_sauce},
		},
	})
end
