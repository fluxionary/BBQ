local ci = bbq.resources.craftitems
local cg = bbq.resources.craftgroups
local rep = bbq.resources.replacements

if cg.food_pepper and cg.food_mutton_raw and cg.stick and cg.food_mushroom and cg.food_onion and cg.food_cutting_board
	and rep.food_cutting_board then
	minetest.clear_craft({output = "bbq:lamb_kebab_raw"})
	minetest.register_craft({
		output = "bbq:lamb_kebab_raw",
		type = "shapeless",
		recipe = {cg.food_pepper, cg.food_mutton_raw, cg.stick, cg.food_mushroom, cg.food_onion, cg.food_cutting_board},
		replacements = {
			{cg.food_cutting_board, rep.food_cutting_board},
		},
	})
end

if cg.food_mutton_raw then
	minetest.clear_craft({output = "bbq:rack_lamb_raw"})
	minetest.register_craft({
		output = "bbq:rack_lamb_raw",
		type = "shapeless",
		recipe = {"bbq:bbq_sauce", cg.food_mutton_raw, "bbq:basting_brush"},
		replacements = {
			{"bbq:bbq_sauce", ci.glass_empty},
			{"bbq:basting_brush", "bbq:basting_brush"},
		},
	})
end

if cg.food_garlic_clove and cg.food_mutton_raw and cg.food_rosemary then
	minetest.clear_craft({output = "bbq:leg_lamb_raw"})
	minetest.register_craft({
		output = "bbq:leg_lamb_raw",
		type = "shapeless",
		recipe = {cg.food_garlic_clove, cg.food_rosemary, cg.food_mutton_raw}
	})
end

if cg.food_pork_raw and cg.food_honey then
	minetest.clear_craft({output = "bbq:ham_raw"})
	minetest.register_craft({
		output = "bbq:ham_raw",
		type = "shapeless",
		recipe = {"bbq:brine", cg.food_pork_raw, cg.food_honey, "bbq:basting_brush"},
		replacements = {
			{"bbq:brine", ci.glass_empty},
			{"bbq:basting_brush", "bbq:basting_brush"},
		},
	})
end

if cg.food_chicken_raw then
	minetest.clear_craft({output = "bbq:bbq_chicken_raw"})
	minetest.register_craft({
		output = "bbq:bbq_chicken_raw",
		type = "shapeless",
		recipe = {"bbq:bbq_sauce", cg.food_chicken_raw, "bbq:paprika", "bbq:basting_brush"},
		replacements = {
			{"bbq:bbq_sauce", ci.glass_empty},
			{"bbq:basting_brush", "bbq:basting_brush"},
		},
	})
end

if cg.food_beef_raw and cg.food_pepper_ground and cg.food_cutting_board
	and rep.food_pepper_ground and rep.food_cutting_board then
	minetest.clear_craft({output = "bbq:bbq_beef_ribs_raw"})
	minetest.register_craft({
		output = "bbq:bbq_beef_ribs_raw",
		type = "shapeless",
		recipe = {"bbq:bbq_sauce", cg.food_beef_raw, cg.food_pepper_ground, "bbq:basting_brush", cg.food_cutting_board},
		replacements = {
			{cg.food_pepper_ground, rep.food_pepper_ground},
			{"bbq:bbq_sauce", ci.glass_empty},
			{"bbq:basting_brush", "bbq:basting_brush"},
			{cg.food_cutting_board, rep.food_cutting_board},
		},
	})
end

if cg.food_beef_raw and cg.food_peppercorn and cg.food_salt then
	minetest.clear_craft({output = "bbq:corned_beef_raw"})
	minetest.register_craft({
		output = "bbq:corned_beef_raw",
		type = "shapeless",
		recipe = {cg.food_peppercorn, cg.food_beef_raw, cg.food_salt, cg.food_salt,},
		replacements = {
			{"bbq:brine", ci.glass_empty},
		},
	})
end

if cg.food_molasses and cg.food_beef_raw and cg.food_garlic_clove then
	minetest.clear_craft({output = "bbq:brisket_raw"})
	minetest.register_craft({
		output = "bbq:brisket_raw",
		type = "shapeless",
		recipe = {"bbq:bbq_sauce", cg.food_molasses, cg.food_beef_raw, cg.food_garlic_clove, "bbq:basting_brush"},
		replacements = {
			{cg.food_molasses, rep.food_molasses},
			{"bbq:bbq_sauce", ci.glass_empty},
			{"bbq:basting_brush", "bbq:basting_brush"},
		}
	})
end

if cg.food_chicken_raw then
	minetest.clear_craft({output = "bbq:hot_wings_raw"})
	minetest.register_craft({
		output = "bbq:hot_wings_raw",
		type = "shapeless",
		recipe = {"bbq:hot_sauce", cg.food_chicken_raw, "bbq:paprika", "bbq:basting_brush"},
		replacements = {
			{"bbq:hot_sauce", ci.glass_empty},
			{"bbq:basting_brush", "bbq:basting_brush"},
		}
	})
end

if cg.food_toast and cg.food_pepper_ground and cg.food_beef and cg.food_cheese and ci.caramelized_onion then
	minetest.clear_craft({output = "bbq:cheese_steak"})
	minetest.register_craft({
		output = "bbq:cheese_steak",
		type = "shapeless",
		recipe = {
			cg.food_toast,
			cg.food_pepper_ground, cg.food_beef, cg.food_cheese, ci.caramelized_onion,
			cg.food_toast, cg.food_cutting_board},
		replacements = {
			{cg.food_pepper_ground, ci.bottle_empty},
			{cg.food_cutting_board, rep.food_cutting_board},
		},
	})
end

if cg.food_toast and cg.food_bacon and cg.food_cheese and cg.food_tomato and cg.food_lettuce then
	minetest.clear_craft({output = "bbq:bacon_cheeseburger"})
	minetest.register_craft({
		output = "bbq:bacon_cheeseburger",
		type = "shapeless",
		recipe = {cg.food_toast,
		          cg.food_bacon, "bbq:hamburger_patty", cg.food_cheese, cg.food_tomato, cg.food_lettuce,
		          cg.food_toast}
	})
end

if cg.food_toast and cg.food_tomato and cg.food_lettuce then
	minetest.clear_craft({output = "bbq:hamburger"})
	minetest.register_craft({
		output = "bbq:hamburger",
		type = "shapeless",
		recipe = {cg.food_toast,
		          "bbq:hamburger_patty", cg.food_tomato, cg.food_lettuce,
		          cg.food_toast}
	})
end

if cg.food_toast then
	minetest.clear_craft({output = "bbq:hotdog"})
	minetest.register_craft({
		output = "bbq:hotdog",
		type = "shapeless",
		recipe = {"bbq:hotdog_cooked", cg.food_toast}
	})
end

if cg.food_toast then
	minetest.clear_craft({output = "bbq:pulled_pork"})
	minetest.register_craft({
		output = "bbq:pulled_pork",
		type = "shapeless",
		recipe = {cg.food_toast, cg.food_pork, "bbq:bbq_sauce", cg.food_toast},
		replacements = {{"bbq:bbq_sauce", ci.glass_empty}},
	})
end

if cg.food_bacon_raw and cg.food_beef_raw and cg.food_garlic_clove then
	minetest.clear_craft({output = "bbq:london_broil_raw"})
	minetest.register_craft({
		output = "bbq:london_broil_raw",
		type = "shapeless",
		recipe = {cg.food_bacon_raw, cg.food_garlic_clove, cg.food_beef_raw}
	})
end

if cg.food_beef_raw then
	minetest.clear_craft({output = "bbq:beef_jerky_raw"})
	minetest.register_craft({
		output = "bbq:beef_jerky_raw 3",
		type = "shapeless",
		recipe = {"bbq:liquid_smoke", "bbq:brine", cg.food_beef_raw, cg.food_cutting_board, "bbq:basting_brush"},
		replacements = {
			{"bbq:bbq_sauce", ci.glass_empty},
			{"bbq:brine", ci.glass_empty},
			{cg.food_cutting_board, rep.food_cutting_board},
			{"bbq:basting_brush", "bbq:basting_brush"},
		},
	})
end

if cg.food_pepper_ground and cg.food_beef_raw then
	minetest.clear_craft({output = "bbq:pepper_steak_raw"})
	minetest.register_craft({
		output = "bbq:pepper_steak_raw",
		type = "shapeless",
		recipe = {cg.food_pepper_ground, cg.food_beef_raw, cg.food_pepper_ground},
		replacements = {
			{cg.food_pepper_ground, rep.food_pepper_ground},
			{cg.food_pepper_ground, rep.food_pepper_ground},
		},
	})
end

if cg.food_onion and cg.food_bread_crumbs and cg.food_mushroom and cg.food_pork_raw and cg.food_apple then
	minetest.clear_craft({output = "bbq:stuffed_chop_raw"})
	minetest.register_craft({
		output = "bbq:stuffed_chop_raw",
		type = "shapeless",
		recipe = {cg.food_onion, cg.food_bread_crumbs, cg.food_mushroom, cg.food_pork_raw, cg.food_apple}
	})
end

