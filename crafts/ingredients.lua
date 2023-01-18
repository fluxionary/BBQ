local cs = craftsystem.api

local ci = bbq.resources.craftitems
local cg = bbq.resources.craftgroups

if ci.tin then
	cs.register_craft({
		type = "shaped",
		output = "bbq:foil 12",
		recipe = {
			{ci.tin, ci.tin, ci.tin}
		}
	})
end

cs.register_craft({
	type = "shapeless",
	output = "bbq:sawdust",
	recipe = {cg.stick, cg.food_mortar_pestle},
	no_replace = {cg.stick},
})

cs.register_craft({
	type = "shapeless",
	output = "bbq:paprika",
	recipe = {"bbq:smoked_pepper", cg.food_mortar_pestle},
})

cs.register_craft({
	type = "shapeless",
	output = "bbq:hamburger_patty_raw",
	recipe = {"bbq:ground_meat_raw"},
})

cs.register_craft({
	type = "shapeless",
	output = "bbq:hotdog_raw 2",
	recipe = {cg.food_pork_raw, cg.food_chicken_raw, "bbq:sawdust", cg.food_mortar_pestle, cg.food_cutting_board},
})

cs.register_craft({
	type = "shapeless",
	output = "bbq:bacon_raw 3",
	recipe = {"bbq:liquid_smoke", "bbq:brine", cg.food_pork_raw, cg.food_cutting_board},
})

cs.register_craft({
	type = "shapeless",
	output = "bbq:vinegar 3",
	recipe = {
		"group:food_vinegarmother",
		cg.food_sugar, cg.food_sugar, cg.food_sugar,
		cg.food_water_glass, cg.food_water_glass, cg.food_water_glass,
	},
	no_replace = {cg.food_water_glass, cg.food_water_glass, cg.food_water_glass},
})

cs.register_replacement("bbq:vinegar", "bbq:vinegar_mother")

if ci.glass_empty then
	cs.register_replacement("bbq:vinegar_mother", ci.glass_empty)
end

cs.register_craft({
	type = "shapeless",
	output = "bbq:yeast 2",
	recipe = {"bbq:yeast", cg.food_sugar}
})

cs.register_craft({
	type = "shapeless",
	output = "bbq:tomato_sauce",
	recipe = {cg.food_tomato, ci.bottle_empty, cg.food_saucepan},
})
if ci.bottle_empty then
	cs.register_replacement("bbq:tomato_sauce", ci.bottle_empty)
end

cs.register_craft({
	type = "shapeless",
	output = "bbq:brine 3",
	recipe = {cg.food_water_glass, cg.food_water_glass, cg.food_water_glass,
	          cg.food_salt, cg.food_sugar, cg.food_salt,
	          cg.food_salt, cg.food_salt, cg.food_salt},
	no_replace = {cg.food_water_glass, cg.food_water_glass, cg.food_water_glass},
})
if ci.glass_empty then
	cs.register_replacement("bbq:brine", ci.glass_empty)
end

cs.register_craft({
	type = "shapeless",
	output = "bbq:steak_sauce 2",
	recipe = {cg.food_mushroom, "bbq:vinegar", "bbq:hot_sauce", cg.food_fish_raw},
	no_replace = {"bbq:vinegar", "bbq:hot_sauce"},
})
if ci.glass_empty then
	cs.register_replacement("bbq:brine", ci.glass_empty)
end

cs.register_craft({
	type = "shapeless",
	output = "bbq:liquid_smoke 3",
	recipe = {cg.food_water_glass, cg.food_water_glass, cg.food_water_glass, cg.tree, cg.torch},
	no_replace = {cg.food_water_glass, cg.food_water_glass, cg.food_water_glass, cg.wood},
})
if ci.glass_empty then
	cs.register_replacement("bbq:liquid_smoke", ci.glass_empty)
end

cs.register_craft({
	type = "shapeless",
	output = "bbq:hot_sauce 3",
	recipe = {cg.food_water_glass, cg.food_water_glass, cg.food_water_glass,
	          cg.food_chili_pepper, cg.food_salt, "bbq:vinegar"},
	no_replace = {cg.food_water_glass, cg.food_water_glass, cg.food_water_glass},
})
if ci.glass_empty then
	cs.register_replacement("bbq:hot_sauce", ci.glass_empty)
end

cs.register_craft({
	type = "shapeless",
	output = "bbq:bbq_sauce 3",
	recipe = {cg.food_molasses, cg.food_onion, cg.food_tomato_sauce,
	          cg.food_garlic_clove, "bbq:paprika", cg.food_salt,
	          "bbq:liquid_smoke", "bbq:vinegar"},
	no_replace = {cg.food_molasses, "bbq:liquid_smoke", "bbq:vinegar"},
})
if ci.glass_empty then
	cs.register_replacement("bbq:bbq_sauce", ci.glass_empty)
end
