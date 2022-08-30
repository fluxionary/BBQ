if minetest.registered_items["sandwiches:raw_bacon"] then
	minetest.register_alias("bbq:bacon_raw", "sandwiches:raw_bacon")

else
	minetest.register_craftitem("bbq:bacon_raw", {
		description = ("Bacon Raw"),
		inventory_image = "bbq_bacon_raw.png",
		groups = {food = 1, food_meat_raw = 1, food_bacon_raw = 1},
		on_use = minetest.item_eat(1),
	})
end

if minetest.registered_items["sandwiches:crispy_bacon"] then
	minetest.register_alias("bbq:bacon", "sandwiches:crispy_bacon")

else
	minetest.register_craftitem("bbq:bacon", {
		description = ("Bacon"),
		inventory_image = "bbq_bacon.png",
		groups = {food = 1, food_meat = 1, food_bacon = 1},
		on_use = minetest.item_eat(7),
	})
end

if minetest.registered_items["petz:beef"] then
	minetest.register_alias("bbq:beef_raw", "petz:beef")

else
	minetest.register_craftitem("bbq:beef_raw", {
		description = ("Raw Beef"),
		inventory_image = "bbq_beef_raw.png",
		groups = {food = 1, food_meat_raw = 1, food_beef_raw = 1},
		on_use = minetest.item_eat(1),
	})
end

if minetest.registered_items["petz:steak"] then
	minetest.register_alias("bbq:beef", "petz:steak")

else
	minetest.register_craftitem("bbq:beef", {
		description = ("Beef"),
		inventory_image = "bbq_beef_cooked.png",
		groups = {food = 1, food_meat = 1, food_beef = 1},
		on_use = minetest.item_eat(8),
	})
end

