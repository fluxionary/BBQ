if bbq.has.default then
	minetest.register_craft({
		output = "bbq:woodpile",
		recipe = {
			{"default:tree", "default:tree"},
			{"default:tree", "default:tree"},
		}
	})

	minetest.register_craft({
		output = "bbq:woodpile_pine",
		recipe = {
			{"default:pine_tree", "default:pine_tree"},
			{"default:pine_tree", "default:pine_tree"},
		}
	})

	minetest.register_craft({
		output = "bbq:woodpile_aspen",
		recipe = {
			{"default:aspen_tree", "default:aspen_tree"},
			{"default:aspen_tree", "default:aspen_tree"},
		}
	})

	minetest.register_craft({
		output = "bbq:woodpile_junglewood",
		recipe = {
			{"default:jungletree", "default:jungletree"},
			{"default:jungletree", "default:jungletree"},
		}
	})

	minetest.register_craft({
		output = "bbq:woodpile_acacia",
		recipe = {
			{"default:acacia_tree", "default:acacia_tree"},
			{"default:acacia_tree", "default:acacia_tree"},
		}
	})
end
