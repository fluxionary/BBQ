if not bbq.has.default then
	return
end

local add_item_drops = bbq.util.add_item_drops

for i = 1, 5 do
	add_item_drops("default:grass_" .. i, {items = {"bbq:yeast"}, rarity = 8})
end

add_item_drops("default:junglegrass", {items = {"bbq:yeast"}, rarity = 8})
