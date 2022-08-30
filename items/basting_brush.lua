minetest.register_tool("bbq:basting_brush", {
	description = ("Basting Brush"),
	inventory_image = "bbq_basting_brush.png",
	wield_image = "bbq_basting_brush.png",
	groups = {food_basting_brush = 1, disable_repair = 1},
	on_use = function(itemstack, placer, pointed_thing)
		if not pointed_thing or pointed_thing.type ~= "node" then
			return
		end
		local under_pos = pointed_thing.under
		minetest.sound_play("bbq_basting", { pos = under_pos, max_hear_distance = 10 })
	end,
})
