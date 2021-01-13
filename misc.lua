-- Translation support
local S = minetest.get_translator("basic_materials")

-- items

minetest.register_craftitem("hades_extramaterials:oil_extract", {
	description = S("Oil extract"),
	inventory_image = "basic_materials_oil_extract.png",
})

minetest.register_alias("hades_extramaterials:paraffin", "hades_materials:plastic_base");
--[[
minetest.register_craftitem("hades_extramaterials:paraffin", {
	description = S("Unprocessed paraffin"),
	inventory_image = "basic_materials_paraffin.png",
})
--]]

minetest.register_craftitem("hades_extramaterials:terracotta_base", {
	description = S("Uncooked Terracotta Base"),
	inventory_image = "basic_materials_terracotta_base.png",
})

minetest.register_craftitem("hades_extramaterials:wet_cement", {
	description = S("Wet Cement"),
	inventory_image = "basic_materials_wet_cement.png",
})

-- nodes

minetest.register_node("hades_extramaterials:cement_block", {
	description = S("Cement"),
	tiles = {"basic_materials_cement_block.png"},
	is_ground_content = true,
	groups = {cracky=2},
	sounds = hades_sounds.node_sound_stone_defaults(),
})

minetest.register_node("hades_extramaterials:concrete_block", {
	description = S("Concrete Block"),
	tiles = {"basic_materials_concrete_block.png",},
	groups = {cracky=1, level=2, concrete=1},
	sounds = hades_sounds.node_sound_stone_defaults(),
})

-- crafts

-- unregister hades revisited recipe
minetest.clear_craft({
	type = "shapeless",
	recipe = {
		"group:leaves",
		"group:leaves",
		"group:leaves",
		"group:leaves",
		"group:leaves",
		"group:leaves"
	}
})

minetest.register_craft({
	type = "shapeless",
	output = "hades_extramaterials:oil_extract 2",
	recipe = {
		"group:leaves",
		"group:leaves",
		"group:leaves",
		"group:leaves",
		"group:leaves",
		"group:leaves"
	}
})

minetest.register_craft({
	type = "cooking",
	output = "hades_materials:plastic_base",
	recipe = "hades_extramaterials:oil_extract",
})

minetest.register_craft({
	type = "fuel",
	recipe = "hades_extramaterials:oil_extract",
	burntime = 30,
})

minetest.register_craft({
	type = "fuel",
	recipe = "hades_extramaterials:paraffin",
	burntime = 30,
})

--[[
-- can be mixed in hades_laboratory medium mixer?
minetest.register_craft( {
	type = "shapeless",
	output = "hades_extramaterials:terracotta_base 8",
	recipe = {
		"bucket:bucket_water",
		"default:clay_lump",
		"default:gravel",
	},
	replacements = { {"bucket:bucket_water", "bucket:bucket_empty"}, },
})

--can be mixed in laboratory medium mixer
minetest.register_craft({
	type = "shapeless",
	output = "hades_extramaterials:wet_cement 3",
	recipe = {
		"default:dirt",
		"dye:dark_grey",
		"dye:dark_grey",
		"dye:dark_grey",
		"bucket:bucket_water"
	},
	replacements = {{'bucket:bucket_water', 'bucket:bucket_empty'},},
})
--]]

minetest.register_craft({
	type = "cooking",
	output = "hades_extramaterials:cement_block",
	recipe = "hades_extramaterials:wet_cement",
	cooktime = 8
})

minetest.register_craft({
	output = 'hades_extramaterials:concrete_block 6',
	recipe = {
		{'group:sand',                'hades_extramaterials:wet_cement', 'hades_core:gravel'},
		{'hades_extramaterials:steel_bar', 'hades_extramaterials:wet_cement', 'hades_extramaterials:steel_bar'},
		{'hades_core:gravel',            'hades_extramaterials:wet_cement', 'group:sand'},
	}
})

-- aliases

minetest.register_alias("homedecor:oil_extract",      "hades_extramaterials:oil_extract")
minetest.register_alias("homedecor:paraffin",         "hades_extramaterials:paraffin")
minetest.register_alias("homedecor:plastic_base",     "hades_extramaterials:paraffin")
minetest.register_alias("homedecor:terracotta_base",  "hades_extramaterials:terracotta_base")

minetest.register_alias("gloopblocks:wet_cement",     "hades_extramaterials:wet_cement")
minetest.register_alias("gloopblocks:cement",         "hades_extramaterials:cement_block")

minetest.register_alias("technic:concrete",           "hades_extramaterials:concrete_block")
