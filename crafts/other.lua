local ci = bbq.resources.craftitems
local cg = bbq.resources.craftgroups

if cg.torch and cg.wood then
	minetest.register_craft({
		output = "bbq:chimney_smoke 2",
		recipe = {
			{cg.wood, },
			{cg.wood, },
			{cg.torch, }
		}
	})
end

if ci.cotton and ci.tin and cg.stick then
	minetest.register_craft( {
		output = "bbq:basting_brush",
		recipe = {
			{ci.cotton,},
			{ci.tin,},
			{cg.stick,}
		}
	})
end
