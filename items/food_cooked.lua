minetest.register_craftitem("bbq:bacon", {
	description = ("Bacon"),
	inventory_image = "bbq_bacon.png",
	groups = {food = 1, food_meat = 1, food_bacon = 1},
	on_use = minetest.item_eat(7),
})

minetest.register_craftitem("bbq:beef", {
	description = ("Beef"),
	inventory_image = "bbq_beef_cooked.png",
	groups = {food = 1, food_meat = 1, food_beef = 1},
	on_use = minetest.item_eat(8),
})

minetest.register_craftitem("bbq:veggie_kebab", {
	description = ("Veggie Kebab"),
	inventory_image = "bbq_veggie_kebab.png",
	groups = {food = 1, food_vegan = 1, food_veggie_kebab = 1},
	on_use = minetest.item_eat(8),
})

minetest.register_craftitem("bbq:veggie_packet", {
	description = ("Veggie Packet"),
	inventory_image = "bbq_veggie_packet.png",
	groups = {food = 1, food_vegan = 1, food_veggie_packet = 1},
	on_use = minetest.item_eat(5),
})

minetest.register_craftitem("bbq:stuffed_mushroom", {
	description = ("Stuffed Mushroom"),
	inventory_image = "bbq_stuffed_mushroom.png",
	groups = {food = 1, food_vegan = 1, food_stuffed_mushroom = 1},
	on_use = minetest.item_eat(9),
})

minetest.register_craftitem("bbq:portebello_steak", {
	description = ("Portebello Steak"),
	inventory_image = "bbq_portebello_steak.png",
	groups = {food = 1, food_vegan = 1, food_portebello_steak = 1},
	on_use = minetest.item_eat(9),
})

minetest.register_craftitem("bbq:lamb_kebab", {
	description = ("Lamb Kebab"),
	inventory_image = "bbq_lamb_kebab.png",
	groups = {food = 1, food_lamb_kebab = 1},
	on_use = minetest.item_eat(4),
})

minetest.register_craftitem("bbq:rack_lamb", {
	description = ("Rack of Lamb"),
	inventory_image = "bbq_rack_lamb.png",
	groups = {food = 1, food_meat = 1, food_mutton = 1, food_lamb_rack = 1},
	on_use = minetest.item_eat(10),
})

minetest.register_craftitem("bbq:leg_lamb", {
	description = ("Leg of Lamb"),
	inventory_image = "bbq_leg_lamb.png",
	groups = {food = 1, food_meat = 1, food_mutton = 1, food_lamb_leg = 1},
	on_use = minetest.item_eat(9),
})

minetest.register_craftitem("bbq:ham", {
	description = ("Ham"),
	inventory_image = "bbq_ham.png",
	groups = {food = 1, food_meat = 1, food_pork = 1, food_ham = 1},
	on_use = minetest.item_eat(9),
})

minetest.register_craftitem("bbq:stuffed_chop", {
	description = ("Stuffed Chop"),
	inventory_image = "bbq_stuffed_chop.png",
	groups = {food = 1, food_stuffed_chop = 1},
	on_use = minetest.item_eat(8),
})

minetest.register_craftitem("bbq:bbq_chicken", {
	description = ("BBQ Chicken"),
	inventory_image = "bbq_bbq_chicken.png",
	groups = {food = 1, food_meat = 1, food_chicken = 1, food_chicken_bbq = 1},
	on_use = minetest.item_eat(8),
})

minetest.register_craftitem("bbq:hot_wings", {
	description = ("Hot Wings"),
	inventory_image = "bbq_hot_wings.png",
	groups = {food = 1, food_meat = 1, food_chicken = 1, food_hot_wings = 1},
	on_use = minetest.item_eat(8),
})

minetest.register_craftitem("bbq:hamburger_patty", {
	description = ("Hamburger Patty"),
	inventory_image = "bbq_hamburger_patty.png",
	groups = {food = 1, food_meat = 1, food_hamburger_patty = 1},
	on_use = minetest.item_eat(8),
})

minetest.register_craftitem("bbq:hotdog_cooked", {
	description = ("Hotdog Cooked"),
	inventory_image = "bbq_hotdog_cooked.png",
	groups = {food = 1, food_meat = 1, food_hotdog = 1},
	on_use = minetest.item_eat(7),
})

minetest.register_craftitem("bbq:corned_beef", {
	description = ("Corned Beef"),
	inventory_image = "bbq_corned_beef.png",
	groups = {food = 1, food_meat = 1, food_beef = 1, food_beef_corned = 1},
	on_use = minetest.item_eat(10),
})

minetest.register_craftitem("bbq:brisket", {
	description = ("BBQ Brisket"),
	inventory_image = "bbq_brisket.png",
	groups = {food = 1, food_meat = 1, food_beef = 1, food_brisket = 1},
	on_use = minetest.item_eat(9),
})

minetest.register_craftitem("bbq:bbq_beef_ribs", {
	description = ("BBQ Ribs"),
	inventory_image = "bbq_beef_ribs.png",
	groups = {food = 1, food_meat = 1, food_beef = 1, food_beef_bbq_ribs = 1},
	on_use = minetest.item_eat(9),
})

minetest.register_craftitem("bbq:beef_jerky", {
	description = ("Beef Jerky"),
	inventory_image = "bbq_beef_jerky.png",
	groups = {food = 1, food_meat = 1, food_beef = 1, food_beef_jerky = 1},
	on_use = minetest.item_eat(5),
})

minetest.register_craftitem("bbq:pepper_steak", {
	description = ("Pepper Steak"),
	inventory_image = "bbq_pepper_steak.png",
	groups = {food = 1, food_meat = 1, food_beef = 1, food_pepper_steak = 1},
	on_use = minetest.item_eat(10),
})

minetest.register_craftitem("bbq:london_broil", {
	description = ("London Broil"),
	inventory_image = "bbq_london_broil.png",
	groups = {food = 1, food_meat = 1, food_beef = 1, food_london_broil = 1},
	on_use = minetest.item_eat(7),
})

minetest.register_craftitem("bbq:hamburger", {
	description = ("Hamburger"),
	inventory_image = "bbq_hamburger.png",
	groups = {food = 1, food_sandwich = 1, food_hamburger = 1},
	on_use = minetest.item_eat(9),
})

minetest.register_craftitem("bbq:bacon_cheeseburger", {
	description = ("Bacon Cheeseburger"),
	inventory_image = "bbq_bacon_cheeseburger.png",
	groups = {food = 1, food_sandwich = 1, food_bacon_cheeseburger = 1},
	on_use = minetest.item_eat(9),
})

minetest.register_craftitem("bbq:cheese_steak", {
	description = ("Cheese Steak"),
	inventory_image = "bbq_cheese_steak.png",
	groups = {food = 1, food_sandwich = 1, food_cheese_steak = 1},
	on_use = minetest.item_eat(8),
})

minetest.register_craftitem("bbq:hotdog", {
	description = ("Hot Dog"),
	inventory_image = "bbq_hotdog.png",
	groups = {food = 1, food_sandwich = 1, food_hotdog = 1},
	on_use = minetest.item_eat(8),
})

minetest.register_craftitem("bbq:pulled_pork", {
	description = ("Pulled Pork"),
	inventory_image = "bbq_pulled_pork.png",
	groups = {food = 1, food_sandwich = 1, food_meat = 1, food_pulled_pork = 1},
	on_use = minetest.item_eat(8),
})

minetest.register_craftitem("bbq:grilled_pizza", {
	description = ("Grilled Pizza"),
	inventory_image = "bbq_grilled_pizza.png",
	groups = {food = 1, food_pizza = 1, food_grilled_pizza = 1},
	on_use = minetest.item_eat(8),
})

minetest.register_craftitem("bbq:stuffed_pepper", {
	description = ("Stuffed Pepper"),
	inventory_image = "bbq_stuffed_pepper.png",
	groups = {food = 1, food_stuffed_pepper = 1},
	on_use = minetest.item_eat(9),
})

minetest.register_craftitem("bbq:smoked_pepper", {
	description = ("Smoked Pepper"),
	inventory_image = "bbq_smoked_pepper.png",
	groups = {food = 1, food_vegan = 1, food_smoked_pepper = 1},
	on_use = minetest.item_eat(5),
})

minetest.register_craftitem("bbq:grilled_tomato", {
	description = ("Grilled Tomato"),
	inventory_image = "bbq_grilled_tomato.png",
	groups = {food = 1, food_vegan = 1, food_grilled_tomato = 1},
	on_use = minetest.item_eat(5),
})

minetest.register_craftitem("bbq:grilled_corn", {
	description = ("Grilled Corn"),
	inventory_image = "bbq_grilled_corn.png",
	groups = {food = 1, food_grilled_corn = 1},
	on_use = minetest.item_eat(8),
})
