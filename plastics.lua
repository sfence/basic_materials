-- Translation support
local S = minetest.get_translator("basic_materials")

-- items

minetest.register_alias("hades_extramaterials:plastic_sheet", "hades_materials:plastic_sheeting");
--[[
minetest.register_craftitem("hades_extramaterials:plastic_sheet", {
	description = S("Plastic sheet"),
	inventory_image = "basic_materials_plastic_sheet.png",
})
--]]

minetest.register_craftitem("hades_extramaterials:plastic_strip", {
	description = S("Plastic strips"),
	groups = { strip = 1 },
	inventory_image = "basic_materials_plastic_strip.png",
})

minetest.register_craftitem("hades_extramaterials:empty_spool", {
	description = S("Empty wire spool"),
	inventory_image = "basic_materials_empty_spool.png"
})

-- crafts

minetest.register_craft({
	type = "cooking",
	output = "hades_extramaterials:plastic_sheet",
	recipe = "hades_extramaterials:paraffin",
})

--[[
minetest.register_craft({
	type = "fuel",
	recipe = "hades_extramaterials:plastic_sheet",
	burntime = 30,
})
--]]

minetest.register_craft( {
    output = "hades_extramaterials:plastic_strip 9",
    recipe = {
		{ "hades_extramaterials:plastic_sheet", "hades_extramaterials:plastic_sheet", "hades_extramaterials:plastic_sheet" }
    },
})

minetest.register_craft( {
	output = "hades_extramaterials:empty_spool 3",
	recipe = {
		{ "hades_extramaterials:plastic_sheet", "hades_extramaterials:plastic_sheet", "hades_extramaterials:plastic_sheet" },
		{ "", "hades_extramaterials:plastic_sheet", "" },
		{ "hades_extramaterials:plastic_sheet", "hades_extramaterials:plastic_sheet", "hades_extramaterials:plastic_sheet" }
	},
})

-- aliases

minetest.register_alias("homedecor:plastic_sheeting", "hades_extramaterials:plastic_sheet")
minetest.register_alias("homedecor:plastic_strips",   "hades_extramaterials:plastic_strip")
minetest.register_alias("homedecor:empty_spool",      "hades_extramaterials:empty_spool")
