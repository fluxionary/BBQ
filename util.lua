local util = {}

function util.check_item_exists(item)
	while minetest.registered_aliases[item] do
		item = minetest.registered_aliases[item]
	end

	if minetest.registered_items[item] then
		return item
	end
end

local group_exists = {}

minetest.register_on_mods_loaded(function()
	for _, def in pairs(minetest.registered_items) do
		for group in pairs(def.groups or {}) do
			group_exists[group] = true
		end
	end
end)

function util.check_group_exists(groupstring)
	local group = groupstring:match("^.*:(.*)$")
	if group and group_exists[group] then
		return groupstring
	end
end

function util.table_set_all(t1, t2)
	for k,v in pairs(t2) do
		t1[k] = v
	end
	return t1
end

function util.add_groups(item, groups)
	local def = minetest.registered_items[item]

	if not def then
		return
	end

	local g = table.copy(def.groups or {})

	for k, v in pairs(groups) do
		g[k] = v
	end

	minetest.override_item(item, {groups = groups})
end

function util.add_item_drops(item, ...)
	local drops = {...}
	local def = minetest.registered_items[item]

	if not def then
		bbq.log("warning", "can't override non-existant item %s", item)
		return
	end

	local old_drops = def.drop

	local new_drops
	if type(def.drop) == "nil" then
		new_drops = {items = {{items = {item}}}}

	elseif type(def.drop) == "string" then
		new_drops = {items = {{items = {def.drop}}}}

	elseif type(def.drop) == "table" then
		new_drops = table.copy(def.drop)

	else
		new_drops = {}
	end

	if not new_drops.max_items then
		new_drops.max_items = 1
	end

	for _, drop in ipairs(drops) do
		table.insert(new_drops.items, 1, drop)
	end

	bbq.log("warning", "drops for %s; %s -> %s", item, dump(old_drops), dump(new_drops))

	minetest.override_item(item, {drop = new_drops})
end

bbq.util = util
