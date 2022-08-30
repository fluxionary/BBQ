if not bbq.has.mobs_animal then
	return
end

local def = minetest.registered_entities["mobs_animal:cow"] or {}

for _, v in pairs(def.drops or {}) do
	if v.name == "mobs:meat_raw" then
		if minetest.registered_items["petz:beef"] then
			v.name = "petz:beef"
		else
			v.name = "bbq:beef_raw"
		end
	end
end
