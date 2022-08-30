
if minetest.registered_items["sandwiches:tabasco"] then
	-- override this redundant item, but steal its better texture
	local def = minetest.registered_items["sandwiches:tabasco"]
	minetest.clear_craft({output = "sandwiches:tabasco"})
	minetest.register_alias_force("sandwiches:tabasco", "bbq:hot_sauce")
	minetest.override_item("bbq:hot_sauce", {
		inventory_image = def.inventory_image,
		wield_image = def.wield_image,
		tiles = def.tiles
	})
end
