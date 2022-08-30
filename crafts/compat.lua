local ci = bbq.resources.craftitems
local cg = bbq.resources.craftgroups
local rep = bbq.resources.replacements

if minetest.registered_items["sandwiches:ham"] and cg.food_cutting_board and rep.food_cutting_board then
	minetest.clear_craft({output = "sandwiches:ham"})
	minetest.register_craft({
		output = "sandwiches:ham 3",
		type = "shapeless",
		recipe = {"bbq:ham", cg.food_cutting_board},
		replacements = {
			{cg.food_cutting_board, rep.food_cutting_board},
		},
	})
end

if cg.food_pork_raw and cg.food_cutting_board and ci.glass_empty then
	if minetest.registered_items["sandwiches:raw_bacon"] then
		minetest.clear_craft({output = "sandwiches:raw_bacon"})
		minetest.register_craft({
			output = "sandwiches:raw_bacon 4",
			type = "shapeless",
			recipe = {"bbq:liquid_smoke", "bbq:brine", cg.food_pork_raw, cg.food_cutting_board},
			replacements = {
				{cg.food_cutting_board, rep.food_cutting_board},
				{"bbq:liquid_smoke", ci.glass_empty},
				{"bbq:brine", ci.glass_empty},
			},
		})

	else
		minetest.register_craft({
			output = "bbq:bacon_raw 3",
			type = "shapeless",
			recipe = {"bbq:liquid_smoke", "bbq:brine", cg.food_pork_raw, cg.food_cutting_board},
			replacements = {
				{cg.food_cutting_board, rep.food_cutting_board},
				{"bbq:liquid_smoke", ci.glass_empty},
				{"bbq:brine", ci.glass_empty},
			},
		})
	end
end

