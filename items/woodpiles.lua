local table_set_all = bbq.util.table_set_all
local sounds = bbq.resources.sounds

local bbq_woodpile_formspec
if bbq.has.default then
	bbq_woodpile_formspec = "size[8,7;]" ..
		default.gui_bg ..
		default.gui_bg_img ..
		default.gui_slots ..
		"list[context;bbq;0,0.3;8,2;]" ..
		"list[current_player;main;0,2.85;8,1;]" ..
		"list[current_player;main;0,4.08;8,3;8]" ..
		"listring[context;bbq]" ..
		"listring[current_player;main]" ..
		default.get_hotbar_bg(0, 2.85)

else
	bbq_woodpile_formspec = "size[8,7;]" ..
		"list[context;bbq;0,0.3;8,2;]" ..
		"list[current_player;main;0,2.85;8,1;]" ..
		"list[current_player;main;0,4.08;8,3;8]" ..
		"listring[context;bbq]" ..
		"listring[current_player;main]"
end

local function get_bbq_woodpile_formspec(inv)
	local formspec = bbq_woodpile_formspec
	local invlist = inv and inv:get_list("bbq")
	-- Inventory slots overlay
	local vx, vy = 0, 0.3
	for i = 1, 16 do
		if i == 9 then
			vx = 0
			vy = vy + 1
		end
		if not invlist or invlist[i]:is_empty() then
			formspec = formspec ..
				"image[" .. vx .. "," .. vy .. ";1,1;bbq_woodpile_slot.png]"
		end
		vx = vx + 1
	end
	return formspec
end

local function register_woodpile(name, def)
	table_set_all(def, {
		paramtype = "light",
		paramtype2 = "facedir",
		is_ground_content = false,
		groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3},
		sounds = sounds.wood,

		on_construct = function(pos)
			local meta = minetest.get_meta(pos)
			meta:set_string("formspec", get_bbq_woodpile_formspec(nil))
			local inv = meta:get_inventory()
			inv:set_size("bbq", 8 * 2)
		end,

		can_dig = function(pos, player)
			local inv = minetest.get_meta(pos):get_inventory()
			return inv:is_empty("bbq")
		end,

		on_metadata_inventory_move = function(pos, from_list, from_index, to_list, to_index, count, player)
			minetest.log("action", player:get_player_name() ..
				" moves stuff in bbq woodpile at " .. minetest.pos_to_string(pos))
			local meta = minetest.get_meta(pos)
			meta:set_string("formspec", get_bbq_woodpile_formspec(meta:get_inventory()))
		end,

		on_metadata_inventory_put = function(pos, listname, index, stack, player)
			minetest.log("action", player:get_player_name() ..
				" moves stuff to bbq woodpile at " .. minetest.pos_to_string(pos))
			local meta = minetest.get_meta(pos)
			meta:set_string("formspec", get_bbq_woodpile_formspec(meta:get_inventory()))
		end,

		on_metadata_inventory_take = function(pos, listname, index, stack, player)
			minetest.log("action", player:get_player_name() ..
				" takes stuff from bbq woodpile at " .. minetest.pos_to_string(pos))
			local meta = minetest.get_meta(pos)
			meta:set_string("formspec", get_bbq_woodpile_formspec(meta:get_inventory()))
		end,

		on_blast = function(pos)
			local meta = minetest.get_meta(pos)
			local inv = meta:get_inventory()
			local drops = {}
			local list = inv:get_list("bbq")
			local n = 1
			for i = 1, #list do
				local stack = list[i]
				if not stack:is_empty() then
					drops[n] = stack:to_table()
					n = n + 1
				end
			end
			drops[n] = "bbq:woodpile"
			minetest.remove_node(pos)
			return drops
		end,
	})
	minetest.register_node(name, def)
end

register_woodpile("bbq:woodpile", {
	description = "Wood Pile",
	tiles = {
		"bbq_woodpile_wood_top.png", "bbq_woodpile_wood_top.png", "bbq_woodpile_wood_side.png",
		"bbq_woodpile_wood_side.png", "bbq_woodpile_wood_front.png", "bbq_woodpile_wood_front.png"
	},
})

register_woodpile("bbq:woodpile_acacia", {
	description = "Acacia Wood Pile",
	tiles = {
		"bbq_woodpile_acacia_top.png", "bbq_woodpile_acacia_top.png", "bbq_woodpile_acacia_side.png",
		"bbq_woodpile_acacia_side.png", "bbq_woodpile_acacia_front.png", "bbq_woodpile_acacia_front.png"
	},
})

register_woodpile("bbq:woodpile_pine", {
	description = "Pine Wood Pile",
	tiles = {
		"bbq_woodpile_pine_top.png", "bbq_woodpile_pine_top.png", "bbq_woodpile_pine_side.png",
		"bbq_woodpile_pine_side.png", "bbq_woodpile_pine_front.png", "bbq_woodpile_pine_front.png"
	},
})

register_woodpile("bbq:woodpile_junglewood", {
	description = "Junglewood Wood Pile",
	tiles = {
		"bbq_woodpile_junglewood_top.png", "bbq_woodpile_junglewood_top.png", "bbq_woodpile_junglewood_side.png",
		"bbq_woodpile_junglewood_side.png", "bbq_woodpile_junglewood_front.png", "bbq_woodpile_junglewood_front.png"
	},
})

register_woodpile("bbq:woodpile_aspen", {
	description = "Aspen Wood Pile",
	tiles = {
		"bbq_woodpile_aspen_top.png", "bbq_woodpile_aspen_top.png", "bbq_woodpile_aspen_side.png",
		"bbq_woodpile_aspen_side.png", "bbq_woodpile_aspen_front.png", "bbq_woodpile_aspen_front.png"
	},
})
