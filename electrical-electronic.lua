-- Translation support
local S = minetest.get_translator("basic_materials")

-- items

minetest.register_alias("hades_extramaterials:silicon", "hades_materials:silicon");
--[[
minetest.register_craftitem("hades_extramaterials:silicon", {
	description = S("Silicon lump"),
	inventory_image = "basic_materials_silicon.png",
})
--]]

minetest.register_craftitem("hades_extramaterials:ic", {
	description = S("Simple Integrated Circuit"),
	inventory_image = "basic_materials_ic.png",
})

minetest.register_craftitem("hades_extramaterials:motor", {
	description = S("Simple Motor"),
	inventory_image = "basic_materials_motor.png",
})

minetest.register_craftitem("hades_extramaterials:heating_element", {
	description = S("Heating element"),
	inventory_image = "basic_materials_heating_element.png",
})

minetest.register_craftitem("hades_extramaterials:energy_crystal_simple", {
	description = S("Simple energy crystal"),
	inventory_image = "basic_materials_energy_crystal.png",
})

-- crafts

--[[
-- included in hades_materials
minetest.register_craft( {
	output = "mesecons_materials:silicon 4",
	recipe = {
		{ "hades_core:fertile_sand", "hades_core:fertile_sand" },
		{ "hades_core:fertile_sand", "hades_core:steel_ingot" },
	},
})
--]]

minetest.register_craft( {
	output = "hades_extramaterials:ic 4",
	recipe = {
		{ "mesecons_materials:silicon", "mesecons_materials:silicon" },
		{ "mesecons_materials:silicon", "hades_core:copper_ingot" },
	},
})

minetest.register_craft( {
    output = "hades_extramaterials:motor 2",
    recipe = {
		{ "hades_core:mese_crystal_fragment", "hades_extramaterials:copper_wire", "hades_extramaterials:plastic_sheet" },
		{ "hades_core:copper_ingot",          "hades_core:steel_ingot",         "hades_core:steel_ingot" },
		{ "hades_core:mese_crystal_fragment", "hades_extramaterials:copper_wire", "hades_extramaterials:plastic_sheet" }
    },
	replacements = {
		{ "hades_extramaterials:copper_wire", "hades_extramaterials:empty_spool" },
		{ "hades_extramaterials:copper_wire", "hades_extramaterials:empty_spool" },
	}
})

minetest.register_craft( {
    output = "hades_extramaterials:heating_element 2",
    recipe = {
		{ "hades_core:copper_ingot", "hades_core:mese_crystal_fragment", "hades_core:copper_ingot" }
    },
})

minetest.register_craft({
	--type = "shapeless",
	output = "hades_extramaterials:energy_crystal_simple 2",
	recipe = {
		{ "hades_core:mese_crystal_fragment", "hades_torches:torch", "hades_core:mese_crystal_fragment" },
		{ "hades_core:diamond", "hades_core:gold_ingot", "hades_core:diamond" }
	},
})

-- aliases

minetest.register_alias("homedecor:ic",                     "hades_extramaterials:ic")
minetest.register_alias("homedecor:motor",                  "hades_extramaterials:motor")
minetest.register_alias("technic:motor",                    "hades_extramaterials:motor")
minetest.register_alias("homedecor:heating_element",        "hades_extramaterials:heating_element")
minetest.register_alias("homedecor:power_crystal",          "hades_extramaterials:energy_crystal_simple")

minetest.register_alias_force("mesecons_materials:silicon", "hades_extramaterials:silicon")
