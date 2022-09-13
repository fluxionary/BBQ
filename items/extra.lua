local S = bbq.S

minetest.register_craftitem("bbq:cottonseed_oil", {
	description = S("Cottonseed Oil"),
	inventory_image = "bbq_cottonseed_oil.png",
	groups = {vessel = 1, food_vegan = 1, food_oil = 1}
})

minetest.register_craftitem("bbq:potato_crisps", {
	description = S("Potato Crisps"),
	inventory_image = "bbq_potato_crisps.png",
	groups = {food = 1, food_vegan = 1, food_potato_chip = 1},
	on_use = minetest.item_eat(2),
})

minetest.register_craftitem("bbq:french_fries", {
	description = S("French Fries"),
	inventory_image = "bbq_french_fries.png",
	groups = {food = 1, food_vegan = 1, food_french_fries = 1},
	on_use = minetest.item_eat(2),
})

minetest.register_craftitem("bbq:onion_rings", {
	description = S("Onion Rings"),
	inventory_image = "bbq_onion_rings.png",
	groups = {food = 1, food_vegan = 1, food_onion_rings = 1},
	on_use = minetest.item_eat(3),
})

minetest.register_craftitem("bbq:blooming_onion", {
	description = S("Blooming Onion"),
	inventory_image = "bbq_blooming_onion.png",
	groups = {food = 1, food_vegan = 1, food_blooming_onion = 1},
	on_use = minetest.item_eat(6),
})

minetest.register_craftitem("bbq:fish_sticks", {
	description = S("Fish Sticks"),
	inventory_image = "bbq_fish_sticks.png",
	groups = {food = 1, food_fish_sticks = 1},
	on_use = minetest.item_eat(3),
})

minetest.register_craftitem("bbq:tomato_slice", {
	description = S("Tomato Slice"),
	inventory_image = "bbq_tomato_slice.png",
	groups = {food = 1, food_vegan = 1, food_tomato_slice = 1},
	on_use = minetest.item_eat(1),
})

minetest.register_craftitem("bbq:onion_slice", {
	description = S("Onion Slice"),
	inventory_image = "bbq_onion_slice.png",
	groups = {food = 1, food_vegan = 1, food_onion_slice = 1},
	on_use = minetest.item_eat(1),
})

minetest.register_craftitem("bbq:potato_slice", {
	description = S("Potato Slice"),
	inventory_image = "bbq_potato_slice.png",
	groups = {food = 1, food_vegan = 1, food_potato_slice = 1},
	on_use = minetest.item_eat(1),
})

minetest.register_craftitem("bbq:corn_dog_raw", {
	description = S("Raw Corn Dog"),
	groups = {food = 1, food_corn_dog_raw = 1},
	inventory_image = "bbq_corn_dog_raw.png",
	on_use = minetest.item_eat(1, "default:stick"),
})

minetest.register_craftitem("bbq:corn_dog", {
	description = S("Corn_dog"),
	inventory_image = "bbq_corn_dog.png",
	groups = {food = 1, food_corn_dog = 1},
	on_use = minetest.item_eat(3, "default:stick"),
})

minetest.register_craftitem("bbq:meatloaf_raw", {
	description = S("Raw Meatloaf"),
	inventory_image = "bbq_meatloaf_raw.png",
	groups = {food = 1, food_meatloaf_raw = 1},
	on_use = minetest.item_eat(5),
})

minetest.register_craftitem("bbq:meatloaf", {
	description = S("Meatloaf"),
	inventory_image = "bbq_meatloaf.png",
	groups = {food = 1, food_meatloaf = 1},
	on_use = minetest.item_eat(5),
})

minetest.register_craftitem("bbq:tortilla", {
	description = S("Tortilla"),
	inventory_image = "bbq_flour_tortilla.png",
	groups = {food = 1, food_vegan = 1, food_bread_slice = 1, food_tortilla = 1},
	on_use = minetest.item_eat(1),
})

minetest.register_craftitem("bbq:taco", {
	description = S("Taco"),
	inventory_image = "bbq_taco.png",
	groups = {food = 1, food_sandwich = 1, food_taco = 1},
	on_use = minetest.item_eat(4),
})

minetest.register_craftitem("bbq:super_taco", {
	description = S("Super Taco"),
	inventory_image = "bbq_taco.png",
	groups = {food = 1, food_sandwich = 1, food_super_taco = 1},
	on_use = minetest.item_eat(6),
})

minetest.register_craftitem("bbq:quesadilla", {
	description = S("Quesadilla"),
	inventory_image = "bbq_flour_tortilla.png",
	groups = {food = 1, food_sandwich = 1, food_quesadilla = 1},
	on_use = minetest.item_eat(6),
})

minetest.register_craftitem("bbq:pasta", {
	description = S("Flat Noodles"),
	inventory_image = "bbq_pasta.png",
	groups = {food = 1, food_vegan = 1, food_pasta = 1},
	on_use = minetest.item_eat(1),
})

minetest.register_craftitem("bbq:pepperoni", {
	description = S("Pepperoni"),
	inventory_image = "bbq_pepperoni.png",
	groups = {food = 1, food_meat = 1, food_pepperoni = 1},
	on_use = minetest.item_eat(8),
})

minetest.register_craftitem("bbq:garlic_dough", {
	description = S("Garlic Bread Dough"),
	inventory_image = "bbq_garlic_dough.png",
	groups = {food = 1, food_vegan = 1, food_dough = 1, food_garlic_dough = 1},
	on_use = minetest.item_eat(1),
})

minetest.register_craftitem("bbq:garlic_bread", {
	description = S("Garlic Bread"),
	inventory_image = "bbq_garlic_bread.png",
	groups = {food = 1, food_vegan = 1, food_bread = 1, food_garlic_bread = 1},
	on_use = minetest.item_eat(6),
})

minetest.register_craftitem("bbq:spaghetti", {
	description = S("Spaghetti"),
	inventory_image = "bbq_spaghetti.png",
	groups = {food = 1, food_vegan = 1, food_spaghetti = 1},
	on_use = minetest.item_eat(3),
})

minetest.register_craftitem("bbq:lasagna", {
	description = S("Lasagna"),
	inventory_image = "bbq_lasagna.png",
	groups = {food = 1, food_lasagna = 1},
	on_use = minetest.item_eat(4),
})

minetest.register_craftitem("bbq:salsa", {
	description = S("Jar of Salsa"),
	inventory_image = "bbq_salsa.png",
	groups = {vessel = 1, food = 1, food_vegan = 1, food_salsa = 1},
	on_use = minetest.item_eat(6),
})

minetest.register_craftitem("bbq:cheese_pizza_raw", {
	description = S("Cheese Pizza (Raw)"),
	inventory_image = "bbq_cheese_pizza.png^[colorize:white:64",
	groups = {food = 1, food_vegan = 1, food_pizza_raw = 1, food_cheese_pizza_raw = 1},
	on_use = minetest.item_eat(1),
})

minetest.register_craftitem("bbq:cheese_pizza", {
	description = S("Cheese Pizza"),
	inventory_image = "bbq_cheese_pizza.png",
	groups = {food = 1, food_vegan = 1, food_pizza = 1, food_cheese_pizza = 1},
	on_use = minetest.item_eat(3),
})

minetest.register_craftitem("bbq:pepperoni_pizza_raw", {
	description = S("Pepperoni Pizza (Raw)"),
	inventory_image = "bbq_pepperoni_pizza.png^[colorize:white:64",
	groups = {food = 1, food_pizza_raw = 1, food_pepperoni_pizza_raw = 1},
	on_use = minetest.item_eat(1),
})

minetest.register_craftitem("bbq:pepperoni_pizza", {
	description = S("Pepperoni Pizza"),
	inventory_image = "bbq_pepperoni_pizza.png",
	groups = {food = 1, food_pizza = 1, food_pepperoni_pizza = 1},
	on_use = minetest.item_eat(5),
})

minetest.register_craftitem("bbq:deluxe_pizza_raw", {
	description = S("Deluxe Pizza (Raw)"),
	inventory_image = "bbq_deluxe_pizza.png^[colorize:white:64",
	groups = {food = 1, food_pizza_raw = 1, food_deluxe_pizza_raw = 1},
	on_use = minetest.item_eat(1),
})

minetest.register_craftitem("bbq:deluxe_pizza", {
	description = S("Deluxe Pizza"),
	inventory_image = "bbq_deluxe_pizza.png",
	groups = {food = 1, food_pizza = 1, food_deluxe_pizza = 1},
	on_use = minetest.item_eat(8),
})

minetest.register_craftitem("bbq:hawaiian_pizza_raw", {
	description = S("Hawaiian Pizza (Raw)"),
	inventory_image = "bbq_pineapple_pizza.png^[colorize:white:64",
	groups = {food = 1, food_pizza_raw = 1, food_hawaiian_pizza_raw = 1},
	on_use = minetest.item_eat(1),
})

minetest.register_craftitem("bbq:hawaiian_pizza", {
	description = S("Pineapple Pizza"),
	inventory_image = "bbq_pineapple_pizza.png",
	groups = {food = 1, food_pizza = 1, food_hawaiian_pizza = 1},
	on_use = minetest.item_eat(5),
})

minetest.register_craftitem("bbq:cornmeal", {
	description = S("Corn Meal"),
	inventory_image = "bbq_cornmeal.png",
	groups = {food_vegan = 1, food_flour = 1, food_corn_flour = 1}
})

minetest.register_craftitem("bbq:cornbread", {
	description = S("Cornbread"),
	inventory_image = "bbq_cornbread.png",
	groups = {food = 1, food_vegan = 1, food_bread = 1, food_cornbread = 1},
	on_use = minetest.item_eat(8),
})

minetest.register_craftitem("bbq:ground_meat_raw", {
   description = S("Ground Meat (Raw)"),
   inventory_image = "bbq_ground_meat.png",
   groups = {food = 1, food_meat_raw = 1, food_ground_meat_raw = 1},
   on_use = minetest.item_eat(4),
})

minetest.register_craftitem("bbq:ground_meat", {
   description = S("Ground Meat"),
   inventory_image = "bbq_ground_meat.png^[colorize:black:128",
   groups = {food = 1, food_meat = 1, food_ground_meat = 1},
   on_use = minetest.item_eat(4),
})

minetest.register_craftitem("bbq:marinara", {
   description = S("Jar of Marinara Sauce"),
   inventory_image = "bbq_marinara.png",
   groups = {vessel = 1, food = 1, food_vegan = 1, food_tomato_sauce = 1, food_marinara_sauce = 1},
   on_use = minetest.item_eat(6),
})
