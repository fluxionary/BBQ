local resolve_item = futil.resolve_item
local has = bbq.has

local ci = {}
local cg = {}

cg.stick = "group:stick"
cg.torch = "group:torch"
cg.tree = "group:tree"
cg.wood = "group:wood"

-- this is from a dump, we don't use all of these
cg.food_apple = "group:food_apple"
cg.food_artichoke = "group:food_artichoke"
cg.food_asparagus = "group:food_asparagus"
cg.food_bacon = "group:food_bacon"
cg.food_bacon_raw = "group:food_bacon_raw"
cg.food_baking_tray = "group:food_baking_tray"
cg.food_bamboo_sprout = "group:food_bamboo_sprout"
cg.food_banana = "group:food_banana"
cg.food_barley = "group:food_barley"
cg.food_beans = "group:food_beans"
cg.food_beef = "group:food_beef"
cg.food_beef_raw = "group:food_beef_raw"
cg.food_beetroot = "group:food_beetroot"
cg.food_berry = "group:food_berry"
cg.food_big_sandwich = "group:food_big_sandwich"
cg.food_bird = "group:food_bird"
cg.food_blackberries = "group:food_blackberries"
cg.food_blackberry = "group:food_blackberry"
cg.food_blueberries = "group:food_blueberries"
cg.food_blueberry = "group:food_blueberry"
cg.food_blueberry_jam = "group:food_blueberry_jam"
cg.food_bowl = "group:food_bowl"
cg.food_brandy = "group:food_brandy"
cg.food_bread = "group:food_bread"
cg.food_bread_crumbs = "group:food_bread_crumbs"
cg.food_bread_slice = "group:food_bread_slice"
cg.food_butter = "group:food_butter"
cg.food_cabbage = "group:food_cabbage"
cg.food_candied = "group:food_candied"
cg.food_candied_lemon = "group:food_candied_lemon"
cg.food_carrot = "group:food_carrot"
cg.food_cheese = "group:food_cheese"
cg.food_chicken = "group:food_chicken"
cg.food_chicken_raw = "group:food_chicken_raw"
cg.food_chicken_strips = "group:food_chicken_strips"
cg.food_chili_pepper = "group:food_chili_pepper"
cg.food_chives = "group:food_chives"
cg.food_chocolate = "group:food_chocolate"
cg.food_chocolate_dark = "group:food_chocolate_dark"
cg.food_cocoa = "group:food_cocoa"
cg.food_coconut = "group:food_coconut"
cg.food_coconut_slice = "group:food_coconut_slice"
cg.food_coffee = "group:food_coffee"
cg.food_cookie = "group:food_cookie"
cg.food_corn = "group:food_corn"
cg.food_corn_cooked = "group:food_corn_cooked"
cg.food_corn_flour = "group:food_corn_flour"
cg.food_cornstarch = "group:food_cornstarch"
cg.food_cucumber = "group:food_cucumber"
cg.food_cutting_board = "group:food_cutting_board"
cg.food_egg = "group:food_egg"
cg.food_egg_fried = "group:food_egg_fried"
cg.food_fish = "group:food_fish"
cg.food_fish_raw = "group:food_fish_raw"
cg.food_flour = "group:food_flour"
cg.food_garlic = "group:food_garlic"
cg.food_garlic_clove = "group:food_garlic_clove"
cg.food_gelatin = "group:food_gelatin"
cg.food_goat = "group:food_goat"
cg.food_goat_raw = "group:food_goat_raw"
cg.food_gooseberry = "group:food_gooseberry"
cg.food_grains = "group:food_grains"
cg.food_grapes = "group:food_grapes"
cg.food_ham = "group:food_ham"
cg.food_honey = "group:food_honey"
cg.food_hot = "group:food_hot"
cg.food_icecream = "group:food_icecream"
cg.food_jam = "group:food_jam"
cg.food_juicer = "group:food_juicer"
cg.food_kohlrabi = "group:food_kohlrabi"
cg.food_lemon = "group:food_lemon"
cg.food_lettuce = "group:food_lettuce"
cg.food_meat = "group:food_meat"
cg.food_meat_raw = "group:food_meat_raw"
cg.food_melon = "group:food_melon"
cg.food_melon_slice = "group:food_melon_slice"
cg.food_milk = "group:food_milk"
cg.food_milk_glass = "group:food_milk_glass"
cg.food_mint = "group:food_mint"
cg.food_molasses = "group:food_molasses"
cg.food_mortar_pestle = "group:food_mortar_pestle"
cg.food_mushroom = "group:food_mushroom"
cg.food_mutton = "group:food_mutton"
cg.food_mutton_raw = "group:food_mutton_raw"
cg.food_nut = "group:food_nut"
cg.food_nutella = "group:food_nutella"
cg.food_oat = "group:food_oat"
cg.food_oats = "group:food_oats"
cg.food_oil = "group:food_oil"
cg.food_olive_oil = "group:food_olive_oil"
cg.food_onion = "group:food_onion"
cg.food_orange = "group:food_orange"
cg.food_parsley = "group:food_parsley"
cg.food_pasta = "group:food_pasta"
cg.food_pea_pod = "group:food_pea_pod"
cg.food_peanut = "group:food_peanut"
cg.food_peanut_butter = "group:food_peanut_butter"
cg.food_peanuts = "group:food_peanuts"
cg.food_peas = "group:food_peas"
cg.food_pepper = "group:food_pepper"
cg.food_pepper_ground = "group:food_pepper_ground"
cg.food_peppercorn = "group:food_peppercorn"
cg.food_pine_nuts = "group:food_pine_nuts"
cg.food_pineapple = "group:food_pineapple"
cg.food_pineapple_ring = "group:food_pineapple_ring"
cg.food_plate = "group:food_plate"
cg.food_popcorn = "group:food_popcorn"
cg.food_pork = "group:food_pork"
cg.food_pork_raw = "group:food_pork_raw"
cg.food_pot = "group:food_pot"
cg.food_potato = "group:food_potato"
cg.food_pumpkin = "group:food_pumpkin"
cg.food_pumpkin_slice = "group:food_pumpkin_slice"
cg.food_rabbit = "group:food_rabbit"
cg.food_rabbit_raw = "group:food_rabbit_raw"
cg.food_raspberries = "group:food_raspberries"
cg.food_raspberry = "group:food_raspberry"
cg.food_rat = "group:food_rat"
cg.food_rhubarb = "group:food_rhubarb"
cg.food_rice = "group:food_rice"
cg.food_rice_bread = "group:food_rice_bread"
cg.food_rice_flour = "group:food_rice_flour"
cg.food_rose_water = "group:food_rose_water"
cg.food_rosemary = "group:food_rosemary"
cg.food_rye = "group:food_rye"
cg.food_salt = "group:food_salt"
cg.food_sandwich = "group:food_sandwich"
cg.food_sauce = "group:food_sauce"
cg.food_saucepan = "group:food_saucepan"
cg.food_seaweed = "group:food_seaweed"
cg.food_skillet = "group:food_skillet"
cg.food_soup = "group:food_soup"
cg.food_soy = "group:food_soy"
cg.food_soy_pod = "group:food_soy_pod"
cg.food_soy_sauce = "group:food_soy_sauce"
cg.food_spicy = "group:food_spicy"
cg.food_starch = "group:food_starch"
cg.food_strawberry = "group:food_strawberry"
cg.food_sugar = "group:food_sugar"
cg.food_sunflower = "group:food_sunflower"
cg.food_sunflower_seeds = "group:food_sunflower_seeds"
cg.food_sunflower_seeds_toasted = "group:food_sunflower_seeds_toasted"
cg.food_sweet = "group:food_sweet"
cg.food_sweet_bread = "group:food_sweet_bread"
cg.food_toast = "group:food_toast"
cg.food_tofu = "group:food_tofu"
cg.food_tofu_raw = "group:food_tofu_raw"
cg.food_tomato = "group:food_tomato"
cg.food_tomato_sauce = "group:food_tomato_sauce"
cg.food_tuber = "group:food_tuber"
cg.food_vanilla = "group:food_vanilla"
cg.food_vegan = "group:food_vegan"
cg.food_vegan_meat = "group:food_vegan_meat"
cg.food_vegan_sandwich = "group:food_vegan_sandwich"
cg.food_water_glass = "group:food_water_glass"
cg.food_wheat = "group:food_wheat"
cg.food_wine = "group:food_wine"

cg.food_pizza_dough = "group:pizza_dough" -- it's not food_pizza_dough

cg.food_bread_slice = cg.food_bread_slice or cg.food_bread
cg.food_bread_crumbs = cg.food_bread_crumbs or cg.food_bread_slice
cg.food_toast = cg.food_toast or cg.food_bread_slice
cg.food_pizza_dough = cg.food_pizza_dough or cg.food_flour

if has.bucket then
	ci.bucket_empty = resolve_item("bucket:bucket_empty")
	ci.bucket_water = resolve_item("bucket:bucket_water")
end

if has.default then
	ci.tin = resolve_item("default:tin_ingot")
end

if has.farming then
	ci.cotton = resolve_item("farming:cotton")
	ci.cotton_seed = resolve_item("farming:seed_cotton")
end

if has.sandwiches then
	ci.caramelized_onion = resolve_item("sandwiches:caramelized_onion")
end

if not ci.caramelized_onion then
	ci.caramelized_onion = cg.food_onion
end

if has.vessels then
	ci.bottle_empty = resolve_item("vessels:glass_bottle")
	ci.glass_empty = resolve_item("vessels:drinking_glass")
end

bbq.resources.craftitems = ci
bbq.resources.craftgroups = cg
