std = "lua51+luajit+minetest+bbq"
unused_args = false
max_line_length = 120

stds.minetest = {
	read_globals = {
		"DIR_DELIM",
		"minetest",
		"core",
		"dump",
		"vector",
		"nodeupdate",
		"VoxelManip",
		"VoxelArea",
		"PseudoRandom",
		"ItemStack",
		"default",
		"table",
		"math",
		"string",
	}
}

stds.bbq = {
	globals = {
		"bbq",
	},
	read_globals = {
		"craftsystem",
		"default",
		"futil",
	},
}
