local modname = minetest.get_current_modname()
local modpath = minetest.get_modpath(modname)
local S = minetest.get_translator(modname)

bbq = {
	version = os.time({year = 2022, month = 8, day = 19}),
	fork = "fluxionary",

	modname = modname,
	modpath = modpath,
	S = S,

	has = {
		bucket = minetest.get_modpath("bucket"),
		canned_food = minetest.get_modpath("canned_food"),
		crops = minetest.get_modpath("crops"),
		default = minetest.get_modpath("default"),
		farming = minetest.get_modpath("farming"),
		flowers = minetest.get_modpath("flowers"), -- mushrooms
		mobs = minetest.get_modpath("mobs"),
		mobs_animal = minetest.get_modpath("mobs_animal"),
		petz = minetest.get_modpath("petz"),
		sandwiches = minetest.get_modpath("sandwiches"),
		vessels = minetest.get_modpath("vessels"),
		xdecor = minetest.get_modpath("xdecor"),
		yl_seasons = minetest.get_modpath("yl_seasons"),
	},

	log = function(level, messagefmt, ...)
		return minetest.log(level, ("[%s] %s"):format(modname, messagefmt:format(...)))
	end,

	dofile = function(...)
		return dofile(table.concat({modpath, ...}, DIR_DELIM) .. ".lua")
	end,
}

bbq.dofile("util")

bbq.dofile("resources", "init")
bbq.dofile("items", "init")

bbq.dofile("compat", "init")

minetest.register_on_mods_loaded(function()
	bbq.dofile("crafts", "init")
end)

