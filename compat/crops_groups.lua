if not bbq.has.crops then
	return
end

local add_groups = bbq.util.add_groups

add_groups("crops:tomato", {food_tomato = 1})
add_groups("crops:pepper", {food_pepper = 1})
add_groups("crops:peppercorn", {food_peppercorn = 1})
add_groups("crops:corn_cob", {food_corn = 1})
add_groups("crops:potato", {food_potato = 1})

