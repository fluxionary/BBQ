local sounds = bbq.resources.sounds

minetest.register_node("bbq:pickled_peppers", {
	description = ("Pickled Peppers"),
	inventory_image = "bbq_pickled_peppers.png",
	wield_image = "bbq_pickled_peppers.png",
	paramtype = "light",
	paramtype2 = "facedir",
	drawtype = "plantlike",
	tiles = {"bbq_pickled_peppers.png"},
	groups = {vessel = 1, dig_immediate = 3, attached_node = 1, food = 1, food_pickled_peppers = 1},
	sounds = sounds.glass,
	on_use = minetest.item_eat(5),
})

minetest.register_node("bbq:tomato_sauce", {
	description = ("Tomato Sauce"),
	inventory_image = "bbq_tomato_sauce.png",
	wield_image = "bbq_tomato_sauce.png",
	paramtype = "light",
	paramtype2 = "facedir",
	drawtype = "plantlike",
	tiles = {"bbq_tomato_sauce.png"},
	groups = {vessel = 1, dig_immediate = 3, attached_node = 1, food = 1, food_vegan = 1, food_tomato_sauce = 1},
	on_use = minetest.item_eat(2)
})
