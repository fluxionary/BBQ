local ci = bbq.resources.craftitems
local cg = bbq.resources.craftgroups
local rep = bbq.resources.replacements

if cg.food_peppercorn and cg.food_pepper then
	minetest.register_craft({
		output = "bbq:pickled_peppers",
		type = "shapeless",
		recipe = {cg.food_peppercorn, cg.food_pepper, "bbq:brine"},
	})
end

if cg.food_cheese and cg.food_pepper and cg.food_mushroom and cg.food_salt and cg.food_flour then
	minetest.clear_craft({output = "bbq:grilled_pizza_raw"})
	minetest.register_craft({
		output = "bbq:grilled_pizza_raw",
		type = "shapeless",
		recipe = {cg.food_cheese, cg.food_pepper, "bbq:grilled_tomato",
		          cg.food_mushroom, cg.food_salt, cg.food_flour,
		          "bbq:yeast"}
	})
end

if cg.food_tomato and cg.food_bread_crumbs and cg.food_mushroom then
	minetest.clear_craft({output = "bbq:stuffed_mushroom_raw"})
	minetest.register_craft({
		output = "bbq:stuffed_mushroom_raw 2",
		type = "shapeless",
		recipe = {cg.food_tomato, cg.food_bread_crumbs, cg.food_mushroom, cg.food_mushroom}
	})
end

if cg.food_pepper and cg.food_onion and cg.food_mushroom and cg.stick then
	minetest.clear_craft({output = "bbq:veggie_kebab_raw"})
	minetest.register_craft({
		output = "bbq:veggie_kebab_raw",
		type = "shapeless",
		recipe = {cg.food_pepper, cg.food_onion, cg.food_mushroom, cg.stick, cg.food_cutting_board},
		replacements = {
			{cg.food_cutting_board, rep.food_cutting_board},
		},
	})
end

if cg.food_pepper_ground and cg.food_tomato and cg.food_potato and cg.food_corn then
	minetest.clear_craft({output = "bbq:veggie_packet_raw"})
	minetest.register_craft({
		output = "bbq:veggie_packet_raw",
		type = "shapeless",
		recipe = {cg.food_pepper_ground, cg.food_tomato, cg.food_potato,
		          cg.food_corn, "bbq:foil", cg.food_cutting_board},
		replacements = {
			{cg.food_cutting_board, rep.food_cutting_board},
		},
	})
end

if cg.food_pepper_ground and cg.food_mushroom then
	minetest.clear_craft({output = "bbq:portebello_steak_raw"})
	minetest.register_craft({
		output = "bbq:portebello_steak_raw",
		type = "shapeless",
		recipe = {cg.food_pepper_ground, "bbq:steak_sauce", cg.food_mushroom, "bbq:basting_brush"},
		replacements = {
			{"bbq:steak_sauce", ci.glass_empty},
			{"bbq:basting_brush", "bbq:basting_brush"},
		},
	})
end

if cg.food_cheese and cg.food_bread_crumbs and cg.food_pepper then
	minetest.clear_craft({output = "bbq:stuffed_pepper_raw"})
	minetest.register_craft({
		output = "bbq:stuffed_pepper_raw 2",
		type = "shapeless",
		recipe = {cg.food_cheese, cg.food_bread_crumbs, cg.food_pepper, cg.food_pepper, "bbq:tomato_sauce"},
		replacements = {{"bbq:tomato_sauce", ci.glass_empty}},
	})
end

if cg.food_butter and cg.food_corn then
	minetest.clear_craft({output = "bbq:grilled_corn_raw"})
	minetest.register_craft({
		output = "bbq:grilled_corn_raw",
		type = "shapeless",
		recipe = {cg.food_butter, "bbq:paprika", cg.food_corn, "bbq:basting_brush"},
		replacements = {
			{"bbq:basting_brush", "bbq:basting_brush"},
		},
	})
end
