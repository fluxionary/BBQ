local ci = bbq.resources.craftitems
local cg = bbq.resources.craftgroups
local rep = bbq.resources.replacements

if minetest.registered_items["bbq:sea_salt"] and ci.bucket_water and rep.bucket_water then
	minetest.register_craft({
		type = "cooking",
		output = "bbq:sea_salt",
		recipe = ci.bucket_water,
		replacements = {{ci.bucket_water, rep.bucket_water}},
		cooktime = 8,
	})
end

minetest.register_craft({
	type = "cooking",
	output = "bbq:hamburger_patty",
	recipe = "bbq:hamburger_patty_raw",
	cooktime = 5,
})

minetest.register_craft({
	type = "cooking",
	output = "bbq:hotdog_cooked",
	recipe = "bbq:hotdog_raw",
	cooktime = 5,
})

if minetest.registered_items["bbq:beef"] then
	minetest.register_craft({
		type = "cooking",
		output = "bbq:beef",
		recipe = "bbq:beef_raw",
		cooktime = 5,
	})
end

minetest.register_craft({
	type = "cooking",
	output = "bbq:beef_jerky",
	recipe = "bbq:beef_jerky_raw",
	cooktime = 12,
})

minetest.register_craft({
	type = "cooking",
	output = "bbq:veggie_kebab",
	recipe = "bbq:veggie_kebab_raw",
	cooktime = 8,
})

minetest.register_craft({
	type = "cooking",
	output = "bbq:veggie_packet",
	recipe = "bbq:veggie_packet_raw",
	cooktime = 8,
})

minetest.register_craft({
	type = "cooking",
	output = "bbq:stuffed_mushroom",
	recipe = "bbq:stuffed_mushroom_raw",
	cooktime = 6,
})

minetest.register_craft({
	type = "cooking",
	output = "bbq:stuffed_chop",
	recipe = "bbq:stuffed_chop_raw",
	cooktime = 8,
})

minetest.register_craft({
	type = "cooking",
	output = "bbq:portebello_steak",
	recipe = "bbq:portebello_steak_raw",
	cooktime = 6,
})

minetest.register_craft({
	type = "cooking",
	output = "bbq:pepper_steak",
	recipe = "bbq:pepper_steak_raw",
	cooktime = 6,
})

minetest.register_craft({
	type = "cooking",
	output = "bbq:grilled_pizza",
	recipe = "bbq:grilled_pizza_raw",
	cooktime = 5,
})

minetest.register_craft({
	type = "cooking",
	output = "bbq:bacon",
	recipe = "bbq:bacon_raw",
	cooktime = 5,
})

minetest.register_craft({
	type = "cooking",
	output = "bbq:london_broil",
	recipe = "bbq:london_broil_raw",
	cooktime = 6,
})

minetest.register_craft({
	type = "cooking",
	output = "bbq:hot_wings",
	recipe = "bbq:hot_wings_raw",
	cooktime = 7,
})

minetest.register_craft({
	type = "cooking",
	output = "bbq:bbq_beef_ribs",
	recipe = "bbq:bbq_beef_ribs_raw",
	cooktime = 15,
})

minetest.register_craft({
	type = "cooking",
	output = "bbq:corned_beef",
	recipe = "bbq:corned_beef_raw",
	cooktime = 15,
})

minetest.register_craft({
	type = "cooking",
	output = "bbq:brisket",
	recipe = "bbq:brisket_raw",
	cooktime = 15,
})

minetest.register_craft({
	type = "cooking",
	output = "bbq:bbq_chicken",
	recipe = "bbq:bbq_chicken_raw",
	cooktime = 10,
})

minetest.register_craft({
	type = "cooking",
	output = "bbq:ham",
	recipe = "bbq:ham_raw",
	cooktime = 10,
})

minetest.register_craft({
	type = "cooking",
	output = "bbq:lamb_kebab",
	recipe = "bbq:lamb_kebab_raw",
	cooktime = 10,
})

minetest.register_craft({
	type = "cooking",
	output = "bbq:leg_lamb",
	recipe = "bbq:leg_lamb_raw",
	cooktime = 10,
})

minetest.register_craft({
	type = "cooking",
	output = "bbq:rack_lamb",
	recipe = "bbq:rack_lamb_raw",
	cooktime = 10,
})

minetest.register_craft({
	type = "cooking",
	output = "bbq:stuffed_pepper",
	recipe = "bbq:stuffed_pepper_raw",
	cooktime = 4,
})

minetest.register_craft({
	type = "cooking",
	output = "bbq:grilled_corn",
	recipe = "bbq:grilled_corn_raw",
	cooktime = 4,
})


if cg.food_pepper then
	minetest.register_craft({
		type = "cooking",
		output = "bbq:smoked_pepper",
		recipe = cg.food_pepper,
		cooktime = 9,
	})
end

if cg.food_tomato then
	minetest.register_craft({
		type = "cooking",
		output = "bbq:grilled_tomato",
		recipe = cg.food_tomato,
		cooktime = 4,
	})
end

minetest.register_craft({
	type = "cooking",
	output = "bbq:corn_dog",
	recipe = "bbq:corn_dog_raw",
	cooktime = 4,
})

minetest.register_craft({
	type = "cooking",
	output = "bbq:meatloaf",
	recipe = "bbq:meatloaf_raw",
	cooktime = 8,
})

minetest.register_craft({
	type = "cooking",
	output = "bbq:ground_meat",
	recipe = "bbq:ground_meat_raw",
	cooktime = 4,
})

minetest.register_craft({
	type = "cooking",
	output = "bbq:garlic_bread",
	recipe = "bbq:garlic_dough",
	cooktime = 4,
})

if cg.food_corn_flour then
	minetest.register_craft({
		type = "cooking",
		output = "bbq:cornbread",
		recipe = cg.food_corn_flour,
		cooktime = 4,
	})
end

minetest.register_craft({
	type = "cooking",
	output = "bbq:cheese_pizza",
	recipe = "bbq:cheese_pizza_raw",
	cooktime = 4,
})

minetest.register_craft({
	type = "cooking",
	output = "bbq:pepperoni_pizza",
	recipe = "bbq:pepperoni_pizza_raw",
	cooktime = 4,
})

minetest.register_craft({
	type = "cooking",
	output = "bbq:deluxe_pizza",
	recipe = "bbq:deluxe_pizza_raw",
	cooktime = 4,
})

minetest.register_craft({
	type = "cooking",
	output = "bbq:hawaiian_pizza",
	recipe = "bbq:hawaiian_pizza_raw",
	cooktime = 4,
})
