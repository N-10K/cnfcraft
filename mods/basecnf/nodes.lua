minetest.register_node("basecnf:stone", {
	description = ("Stone"),
	tiles = {"stone.png"},
})

minetest.register_node("basecnf:sand", {
	description = ("Sand"),
	tiles = {"sand.png"},
    groups = { crumbly = 1 },
})

minetest.register_node("basecnf:dirt", {
	description = ("Dirt"),
	tiles = {"dirt.png"},
    groups = { crumbly = 1 },
})

minetest.register_node("basecnf:dirt_with_grass", {
	description = ("Dirt with Grass"),
	tiles = {"grass_top.png", "dirt.png",
		{name = "dirt.png^grass_side.png",
			tileable_vertical = false}},
    groups = { crumbly = 2 },
	drop = "basecnf:dirt",
})

minetest.register_node("basecnf:water_source", {
	description = ("Water Source"),
	drawtype = "liquid",
	waving = 3,
	tiles = {
		{
			name = "water.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 2.0,
			},
		}
	},
	use_texture_alpha = "blend",
	paramtype = "light",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	drowning = 1,
	liquidtype = "source",
	liquid_alternative_flowing = "basecnf:water_source",
	liquid_alternative_source = "basecnf:water_source",
	liquid_viscosity = 1,
	post_effect_color = {a = 103, r = 30, g = 60, b = 90},
})