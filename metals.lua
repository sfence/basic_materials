-- Translation support
local S = minetest.get_translator("basic_materials")

-- items

minetest.register_craftitem("hades_extramaterials:steel_wire", {
	description = S("Spool of steel wire"),
	groups = { wire = 1 },
	inventory_image = "basic_materials_steel_wire.png"
})

minetest.register_craftitem("hades_extramaterials:copper_wire", {
	description = S("Spool of copper wire"),
	groups = { wire = 1 },
	inventory_image = "basic_materials_copper_wire.png"
})

minetest.register_craftitem("hades_extramaterials:silver_wire", {
	description = S("Spool of silver wire"),
	groups = { wire = 1 },
	inventory_image = "basic_materials_silver_wire.png"
})

minetest.register_craftitem("hades_extramaterials:gold_wire", {
	description = S("Spool of gold wire"),
	groups = { wire = 1 },
	inventory_image = "basic_materials_gold_wire.png"
})

minetest.register_craftitem("hades_extramaterials:steel_strip", {
	description = S("Steel Strip"),
	groups = { strip = 1 },
	inventory_image = "basic_materials_steel_strip.png"
})

minetest.register_craftitem("hades_extramaterials:copper_strip", {
	description = S("Copper Strip"),
	groups = { strip = 1 },
	inventory_image = "basic_materials_copper_strip.png"
})

minetest.register_craftitem("hades_extramaterials:steel_bar", {
	description = S("Steel Bar"),
	inventory_image = "basic_materials_steel_bar.png",
})

minetest.register_craftitem("hades_extramaterials:chainlink_brass", {
	description = S("Chainlinks (brass)"),
	groups = { chainlinks = 1 },
	inventory_image = "basic_materials_chainlink_brass.png"
})

minetest.register_craftitem("hades_extramaterials:chainlink_steel", {
	description = S("Chainlinks (steel)"),
	groups = { chainlinks = 1 },
	inventory_image = "basic_materials_chainlink_steel.png"
})

minetest.register_craftitem("hades_extramaterials:brass_ingot", {
	description = S("Brass Ingot"),
	inventory_image = "basic_materials_brass_ingot.png",
})

minetest.register_craftitem("hades_extramaterials:gear_steel", {
	description = S("Steel gear"),
	inventory_image = "basic_materials_gear_steel.png"
})

minetest.register_craftitem("hades_extramaterials:padlock", {
	description = S("Padlock"),
	inventory_image = "basic_materials_padlock.png"
})

-- nodes

local chains_sbox = {
	type = "fixed",
	fixed = { -0.1, -0.5, -0.1, 0.1, 0.5, 0.1 }
}

minetest.register_node("hades_extramaterials:chain_steel", {
	description = S("Chain (steel, hanging)"),
	drawtype = "mesh",
	mesh = "basic_materials_chains.obj",
	tiles = {"basic_materials_chain_steel.png"},
	walkable = false,
	climbable = true,
	sunlight_propagates = true,
	paramtype = "light",
	inventory_image = "basic_materials_chain_steel_inv.png",
	groups = {cracky=3},
	selection_box = chains_sbox,
})

minetest.register_node("hades_extramaterials:chain_brass", {
	description = S("Chain (brass, hanging)"),
	drawtype = "mesh",
	mesh = "basic_materials_chains.obj",
	tiles = {"basic_materials_chain_brass.png"},
	walkable = false,
	climbable = true,
	sunlight_propagates = true,
	paramtype = "light",
	inventory_image = "basic_materials_chain_brass_inv.png",
	groups = {cracky=3},
	selection_box = chains_sbox,
})

minetest.register_node("hades_extramaterials:brass_block", {
	description = S("Brass Block"),
	tiles = { "basic_materials_brass_block.png" },
	is_ground_content = false,
	groups = {cracky=1, level=2},
	sounds = hades_sounds.node_sound_metal_defaults()
})

-- crafts

minetest.register_craft( {
	output = "hades_extramaterials:copper_wire 2",
	type = "shapeless",
	recipe = {
		"hades_core:copper_ingot",
		"hades_extramaterials:empty_spool",
		"hades_extramaterials:empty_spool",
	},
})

minetest.register_craft( {
	output = "hades_extramaterials:silver_wire 2",
	type = "shapeless",
	recipe = {
		"hades_extraores:silver_ingot",
		"hades_extramaterials:empty_spool",
		"hades_extramaterials:empty_spool",
	},
})

minetest.register_craft( {
	output = "hades_extramaterials:gold_wire 2",
	type = "shapeless",
	recipe = {
		"hades_core:gold_ingot",
		"hades_extramaterials:empty_spool",
		"hades_extramaterials:empty_spool",
	},
})

minetest.register_craft( {
	output = "hades_extramaterials:steel_wire 2",
	type = "shapeless",
	recipe = {
		"hades_core:steel_ingot",
		"hades_extramaterials:empty_spool",
		"hades_extramaterials:empty_spool",
	},
})

minetest.register_craft( {
	output = "hades_extramaterials:steel_strip 12",
	recipe = {
		{ "", "hades_core:steel_ingot", "" },
		{ "hades_core:steel_ingot", "", "" },
	},
})

minetest.register_craft( {
	output = "hades_extramaterials:copper_strip 12",
	recipe = {
		{ "", "hades_core:copper_ingot", "" },
		{ "hades_core:copper_ingot", "", "" },
	},
})

minetest.register_craft( {
	output = "hades_extramaterials:steel_bar 6",
	recipe = {
		{ "", "", "hades_core:steel_ingot" },
		{ "", "hades_core:steel_ingot", "" },
		{ "hades_core:steel_ingot", "", "" },
	},
})

minetest.register_craft( {
	output = "hades_extramaterials:padlock 2",
	recipe = {
		{ "hades_extramaterials:steel_bar" },
		{ "hades_core:steel_ingot" },
		{ "hades_core:steel_ingot" },
	},
})

minetest.register_craft({
	output = "hades_extramaterials:chainlink_steel 12",
	recipe = {
		{"", "hades_core:steel_ingot", "hades_core:steel_ingot"},
		{ "hades_core:steel_ingot", "", "hades_core:steel_ingot" },
		{ "hades_core:steel_ingot", "hades_core:steel_ingot", "" },
	},
})

minetest.register_craft({
	output = "hades_extramaterials:chainlink_brass 12",
	recipe = {
		{"", "hades_extramaterials:brass_ingot", "hades_extramaterials:brass_ingot"},
		{ "hades_extramaterials:brass_ingot", "", "hades_extramaterials:brass_ingot" },
		{ "hades_extramaterials:brass_ingot", "hades_extramaterials:brass_ingot", "" },
	},
})

minetest.register_craft({
	output = 'hades_extramaterials:chain_steel 2',
	recipe = {
		{"hades_extramaterials:chainlink_steel"},
		{"hades_extramaterials:chainlink_steel"},
		{"hades_extramaterials:chainlink_steel"}
	}
})

minetest.register_craft({
	output = 'hades_extramaterials:chain_brass 2',
	recipe = {
		{"hades_extramaterials:chainlink_brass"},
		{"hades_extramaterials:chainlink_brass"},
		{"hades_extramaterials:chainlink_brass"}
	}
})

minetest.register_craft( {
	output = "hades_extramaterials:gear_steel 6",
	recipe = {
		{ "", "hades_core:steel_ingot", "" },
		{ "hades_core:steel_ingot","hades_extramaterials:chainlink_steel", "hades_core:steel_ingot" },
		{ "", "hades_core:steel_ingot", "" }
	},
})

minetest.register_craft( {
	type = "shapeless",
	output = "hades_extramaterials:brass_ingot 3",
	recipe = {
		"hades_core:copper_ingot",
		"hades_core:copper_ingot",
		"hades_extraores:silver_ingot",
	},
})

if not minetest.get_modpath("hades_extraores") then
    -- Without moreores, there still should be a way to create brass.
    minetest.register_craft( {
        output = "hades_extramaterials:brass_ingot 9",
        recipe = {
	    {"hades_core:copper_ingot", "hades_core:tin_ingot", "hades_core:copper_ingot"},
	    {"hades_core:gold_ingot", "hades_core:copper_ingot", "hades_core:gold_ingot"},
	    {"hades_core:copper_ingot", "hades_core:tin_ingot", "hades_core:copper_ingot"},
        },
    })
end

minetest.register_craft( {
	type = "shapeless",
	output = "hades_extramaterials:brass_ingot 9",
	recipe = { "hades_extramaterials:brass_block" },
})

minetest.register_craft( {
	output = "hades_extramaterials:brass_block",
	recipe = {
		{ "hades_extramaterials:brass_ingot", "hades_extramaterials:brass_ingot", "hades_extramaterials:brass_ingot" },
		{ "hades_extramaterials:brass_ingot", "hades_extramaterials:brass_ingot", "hades_extramaterials:brass_ingot" },
		{ "hades_extramaterials:brass_ingot", "hades_extramaterials:brass_ingot", "hades_extramaterials:brass_ingot" },
	},
})

-- aliases

minetest.register_alias("homedecor:copper_wire",           "hades_extramaterials:copper_wire")
minetest.register_alias("technic:fine_copper_wire",        "hades_extramaterials:copper_wire")
minetest.register_alias("technic:fine_silver_wire",        "hades_extramaterials:silver_wire")
minetest.register_alias("technic:fine_gold_wire",          "hades_extramaterials:gold_wire")

minetest.register_alias("homedecor:steel_wire",            "hades_extramaterials:steel_wire")

minetest.register_alias("homedecor:brass_ingot",           "hades_extramaterials:brass_ingot")
minetest.register_alias("technic:brass_ingot",             "hades_extramaterials:brass_ingot")
minetest.register_alias("technic:brass_block",             "hades_extramaterials:brass_block")

minetest.register_alias("homedecor:copper_strip",          "hades_extramaterials:copper_strip")
minetest.register_alias("homedecor:steel_strip",           "hades_extramaterials:steel_strip")

minetest.register_alias_force("glooptest:chainlink",       "hades_extramaterials:chainlink_steel")
minetest.register_alias_force("homedecor:chainlink_steel", "hades_extramaterials:chainlink_steel")
minetest.register_alias("homedecor:chainlink_brass",       "hades_extramaterials:chainlink_brass")
minetest.register_alias("chains:chain",                    "hades_extramaterials:chain_steel")
minetest.register_alias("chains:chain_brass",              "hades_extramaterials:chain_brass")

minetest.register_alias("pipeworks:gear",                  "hades_extramaterials:gear_steel")

minetest.register_alias("technic:rebar",                  "hades_extramaterials:steel_bar")

