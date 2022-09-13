local cs = craftsystem.api

local ci = bbq.resources.craftitems
local cg = bbq.resources.craftgroups

cs.register_craft({
	type="shapeless",
	output="bbq:lamb_kebab_raw",
	recipe={cg.food_pepper, cg.food_mutton_raw, cg.stick, cg.food_mushroom, cg.food_onion, cg.food_cutting_board},
})
cs.register_craft({
	type="shapeless",
	output="bbq:rack_lamb_raw",
	recipe={"bbq:bbq_sauce", cg.food_mutton_raw, "bbq:basting_brush"},
})
cs.register_craft({
	type="shapeless",
	output="bbq:leg_lamb_raw",
	recipe={cg.food_garlic_clove, cg.food_rosemary, cg.food_mutton_raw},
})
cs.register_craft({
	type="shapeless",
	output="bbq:ham_raw",
	recipe={"bbq:brine", cg.food_pork_raw, cg.food_honey, "bbq:basting_brush"},
})
cs.register_craft({
	type="shapeless",
	output="bbq:bbq_chicken_raw",
	recipe={"bbq:bbq_sauce", cg.food_chicken_raw, "bbq:paprika", "bbq:basting_brush"},
})
cs.register_craft({
	type="shapeless",
	output="bbq:bbq_beef_ribs_raw",
	recipe={"bbq:bbq_sauce", cg.food_beef_raw, cg.food_pepper_ground, "bbq:basting_brush", cg.food_cutting_board},
})
cs.register_craft({
	type="shapeless",
	output="bbq:corned_beef_raw",
	recipe={cg.food_peppercorn, cg.food_beef_raw, cg.food_salt, cg.food_salt},
})
cs.register_craft({
	type="shapeless",
	output="bbq:brisket_raw",
	recipe={"bbq:bbq_sauce", cg.food_molasses, cg.food_beef_raw, cg.food_garlic_clove, "bbq:basting_brush"},
})
cs.register_craft({
	type="shapeless",
	output="bbq:hot_wings_raw",
	recipe={"bbq:hot_sauce", cg.food_chicken_raw, "bbq:paprika", "bbq:basting_brush"},
})
cs.register_craft({
	type="shapeless",
	output="bbq:cheese_steak",
	recipe={cg.food_toast, cg.food_pepper_ground, cg.food_beef,
            cg.food_cheese, ci.caramelized_onion, cg.food_toast,
            cg.food_cutting_board},
})
cs.register_craft({
	type="shapeless",
	output="bbq:hamburger",
	recipe={cg.food_toast, "bbq:hamburger_patty", cg.food_tomato, cg.food_lettuce, cg.food_toast},
})
cs.register_craft({
	type="shapeless",
	output="bbq:bacon_cheeseburger",
	recipe={cg.food_toast, cg.food_bacon, "bbq:hamburger_patty",
            cg.food_cheese, cg.food_tomato, cg.food_lettuce,
            cg.food_toast},
})
cs.register_craft({
	type="shapeless",
	output="bbq:hotdog",
	recipe={"bbq:hotdog_cooked", cg.food_toast},
})
cs.register_craft({
	type="shapeless",
	output="bbq:pulled_pork",
	recipe={cg.food_toast, cg.food_pork, "bbq:bbq_sauce", cg.food_toast},
})
cs.register_craft({
	type="shapeless",
	output="bbq:london_broil_raw",
	recipe={cg.food_pork_raw, cg.food_garlic_clove, cg.food_bacon_raw},
})
cs.register_craft({
	type="shapeless",
	output="bbq:beef_jerky_raw 3",
	recipe={"bbq:liquid_smoke", "bbq:brine", cg.food_beef_raw, cg.food_cutting_board, "bbq:basting_brush"},
})
cs.register_craft({
	type="shapeless",
	output="bbq:pepper_steak_raw",
	recipe={cg.food_pepper_ground, cg.food_beef_raw, cg.food_pepper_ground},
})
cs.register_craft({
	type="shapeless",
	output="bbq:stuffed_chop_raw",
	recipe={cg.food_onion, cg.food_bread_crumbs, cg.food_mushroom, cg.food_pork_raw, cg.food_apple},
})
