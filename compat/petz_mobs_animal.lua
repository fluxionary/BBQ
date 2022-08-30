if not bbq.has.petz and bbq.has.mobs_animal then
	return
end

local ri = minetest.registered_items

if ri["mobs:chicken_raw"] and ri["petz:chicken_legs"] then
	minetest.register_alias_force("mobs:chicken_raw", "petz:chicken_legs")
end

if ri["mobs:chicken_cooked"] and ri["petz:roasted_chicken_legs"] then
	minetest.register_alias_force("mobs:chicken_cooked", "petz:roasted_chicken_legs")
end

if ri["mobs:mutton_raw"] and ri["petz:mini_lamb_chop"] then
	minetest.register_alias_force("mobs:mutton_raw", "petz:mini_lamb_chop")
end

if ri["mobs:mutton_cooked"] and ri["petz:roasted_lamb_chop"] then
	minetest.register_alias_force("mobs:mutton_cooked", "petz:roasted_lamb_chop")
end

if ri["mobs:pork_raw"] and ri["petz:raw_porkchop"] then
	minetest.register_alias_force("mobs:pork_raw", "petz:raw_porkchop")
end

if ri["mobs:pork_cooked"] and ri["petz:roasted_porkchop"] then
	minetest.register_alias_force("mobs:pork_cooked", "petz:roasted_porkchop")
end

if ri["mobs:rabbit_raw"] and ri["petz:raw_rabbit"] then
	minetest.register_alias_force("mobs:rabbit_raw", "petz:raw_rabbit")
end

if ri["mobs:rabbit_cooked"] and ri["petz:roasted_rabbit"] then
	minetest.register_alias_force("mobs:rabbit_cooked", "petz:roasted_rabbit")
end
