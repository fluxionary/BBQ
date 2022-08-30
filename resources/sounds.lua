local sounds = {}
local has = bbq.has

if has.default then
	sounds.wood = default.node_sound_wood_defaults()
	sounds.dirt = default.node_sound_dirt_defaults()
	sounds.stone = default.node_sound_stone_defaults()
	sounds.leaves = default.node_sound_leaves_defaults()
	sounds.metal = default.node_sound_metal_defaults()
end

bbq.resources.sounds = sounds
