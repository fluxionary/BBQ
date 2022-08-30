local sounds = bbq.resources.sounds

minetest.register_node("bbq:sawdust", {
	description = ("Saw Dust"),
	inventory_image = "bbq_sawdust.png",
	wield_image = "bbq_sawdust.png",
	drawtype = "plantlike",
	tiles = {
		"bbq_sawdust.png",
	},
	groups = {sawdust = 1, choppy = 3, oddly_breakable_by_hand = 2, flammable = 3},
	sounds = sounds.leaves,
	paramtype = "light",
	paramtype2 = "facedir",
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
		},
	},
})

minetest.register_node("bbq:chimney_smoke", {
	description = ("Chimney Smoke"),
	inventory_image = "bbq_chimney_smoke.png",
	wield_image = "bbq_chimney_smoke.png",
	drawtype = "plantlike",
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	walkable = false,
	tiles = {
		{
			image = "bbq_chimney_smoke_animation.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 1.5
			},
		},

	},

	groups = {dig_immediate = 3},
})

minetest.register_craftitem("bbq:foil", {
	description = ("Foil"),
	inventory_image = "bbq_foil.png",
	wield_image = "bbq_foil.png",
})

minetest.register_node("bbq:vinegar", {
	description = ("Vinegar"),
	inventory_image = "bbq_vinegar.png",
	wield_image = "bbq_vinegar.png",
	paramtype = "light",
	paramtype2 = "facedir",
	drawtype = "plantlike",
	tiles = {"bbq_vinegar.png"},
	groups = {food_vinegar = 1, vessel = 1, dig_immediate = 3, attached_node = 1},
	sounds = sounds.glass,
})

minetest.register_node("bbq:vinegar_mother", {
	description = ("Vinegar Mother"),
	inventory_image = "bbq_vinegar_mother.png",
	wield_image = "bbq_vinegar_mother.png",
	drawtype = "plantlike",
	paramtype = "light",
	paramtype2 = "facedir",
	tiles = {"bbq_vinegar_mother.png"},
	groups = {food_vinegarmother = 1, vessel = 1, dig_immediate = 3, attached_node = 1},
	sounds = sounds.glass,
})

--Paprika
minetest.register_node("bbq:paprika", {
	description = ("Smoked Paprika"),
	inventory_image = "bbq_paprika.png",
	wield_image = "bbq_paprika.png",
	drawtype = "plantlike",
	paramtype = "light",
	paramtype2 = "facedir",
	tiles = {"bbq_paprika.png"},
	groups = {food_paprika = 1, vessel = 1, dig_immediate = 3, attached_node = 1},
	sounds = sounds.glass,
})

if not minetest.registered_items["farming:salt"] then
	minetest.register_node("bbq:sea_salt", {
		description = ("Sea Salt"),
		inventory_image = "bbq_sea_salt.png",
		wield_image = "bbq_sea_salt.png",
		paramtype = "light",
		paramtype2 = "facedir",
		drawtype = "plantlike",
		tiles = {"bbq_sea_salt.png"},
		groups = {food_salt = 1, vessel = 1, dig_immediate = 3, attached_node = 1},
		sounds = sounds.glass,
	})
end

-- Brine
minetest.register_node("bbq:brine", {
	description = ("Brine"),
	inventory_image = "bbq_brine.png",
	wield_image = "bbq_brine.png",
	paramtype = "light",
	paramtype2 = "facedir",
	drawtype = "plantlike",
	tiles = {"bbq_brine.png"},
	groups = {food_brine = 1, vessel = 1, dig_immediate = 3, attached_node = 1},
	sounds = sounds.glass,
})

-- Steak Sauce
minetest.register_node("bbq:steak_sauce", {
	description = ("Steak Sauce"),
	inventory_image = "bbq_steak_sauce.png",
	wield_image = "bbq_steak_sauce.png",
	paramtype = "light",
	paramtype2 = "facedir",
	drawtype = "plantlike",
	tiles = {"bbq_steak_sauce.png"},
	groups = {food_steak_sauce = 1, vessel = 1, dig_immediate = 3, attached_node = 1},
	sounds = sounds.glass,
})

-- Liquid Smoke
minetest.register_node("bbq:liquid_smoke", {
	description = ("Liquid Smoke"),
	inventory_image = "bbq_liquid_smoke.png",
	wield_image = "bbq_liquid_smoke.png",
	paramtype = "light",
	paramtype2 = "facedir",
	drawtype = "plantlike",
	tiles = {"bbq_liquid_smoke.png"},
	groups = {food_liquid_smoke = 1, vessel = 1, dig_immediate = 3, attached_node = 1},
	sounds = sounds.glass,
})

if not minetest.registered_items["farming:sugar"] then
	minetest.register_node("bbq:sugar", {
		description = ("Sugar"),
		inventory_image = "bbq_sugar.png",
		wield_image = "bbq_sugar.png",
		paramtype = "light",
		paramtype2 = "facedir",
		drawtype = "plantlike",
		tiles = {"bbq_sugar.png"},
		groups = {vessel = 1, food_sugar = 1, dig_immediate = 3, attached_node = 1},
		sounds = sounds.glass,
	})
end

if not minetest.get_modpath("cucina_vegana") then
	minetest.register_node("bbq:molasses", {
		description = ("Molasses"),
		inventory_image = "bbq_molasses.png",
		wield_image = "bbq_molasses.png",
		paramtype = "light",
		paramtype2 = "facedir",
		drawtype = "plantlike",
		tiles = {"bbq_molasses.png"},
		groups = {food_molasses = 1, vessel = 1, dig_immediate = 3, attached_node = 1},
		sounds = sounds.glass,
	})
end

minetest.register_node("bbq:hot_sauce", {
	description = ("Hot Sauce"),
	inventory_image = "bbq_hot_sauce.png",
	wield_image = "bbq_hot_sauce.png",
	paramtype = "light",
	paramtype2 = "facedir",
	drawtype = "plantlike",
	tiles = {"bbq_hot_sauce.png"},
	groups = {food_hot_sauce = 1, vessel = 1, dig_immediate = 3, attached_node = 1},
	sounds = sounds.glass,
})

minetest.register_node("bbq:bbq_sauce", {
	description = ("BBQ Sauce"),
	inventory_image = "bbq_bbq_sauce.png",
	wield_image = "bbq_bbq_sauce.png",
	paramtype = "light",
	paramtype2 = "facedir",
	drawtype = "plantlike",
	tiles = {"bbq_bbq_sauce.png"},
	groups = {food_bbq_sauce = 1, vessel = 1, dig_immediate = 3, attached_node = 1},
	sounds = sounds.glass,
})

minetest.register_node("bbq:yeast", {
	description = ("Yeast"),
	inventory_image = "bbq_yeast.png",
	wield_image = "bbq_yeast.png",
	paramtype = "light",
	paramtype2 = "facedir",
	drawtype = "plantlike",
	tiles = {"bbq_yeast.png"},
	groups = {food_vinegarmother = 1, vessel = 1, dig_immediate = 3, attached_node = 1},
	sounds = sounds.glass,
})
