-- aliases for the mapgen

-- for all mapgens
minetest.register_alias("mapgen_stone", "basecnf:stone")
minetest.register_alias("mapgen_water_source", "basecnf:water_source")
minetest.register_alias("mapgen_river_water_source", "basecnf:water_source")

--for mapgen v6

minetest.register_alias("mapgen_dirt", "basecnf:dirt")
minetest.register_alias("mapgen_dirt_with_grass", "basecnf:dirt_with_grass")
minetest.register_alias("mapgen_sand", "basecnf:sand")


-- register biomes
-- except for mapgen v6

function basecnf.register_biomes()

	-- grassland

	minetest.register_biome({
		name = "grassland",
		node_top = "basecnf:dirt_with_grass",
		depth_top = 1,
		node_filler = "basecnf:dirt",
		depth_filler = 1,
		node_riverbed = "basecnf:sand",
		depth_riverbed = 2,
		y_max = 31000,
		y_min = 6,
		heat_point = 50,
		humidity_point = 35,
	})

	minetest.register_biome({
		name = "grassland_dunes",
		node_top = "basecnf:sand",
		depth_top = 1,
		node_filler = "basecnf:sand",
		depth_filler = 2,
		node_riverbed = "basecnf:sand",
		depth_riverbed = 2,
		vertical_blend = 1,
		y_max = 5,
		y_min = 4,
		heat_point = 50,
		humidity_point = 35,
	})

	minetest.register_biome({
		name = "grassland_ocean",
		node_top = "basecnf:sand",
		depth_top = 1,
		node_filler = "basecnf:sand",
		depth_filler = 3,
		node_riverbed = "basecnf:sand",
		depth_riverbed = 2,
		node_cave_liquid = "basecnf:water_source",
		y_max = 3,
		y_min = -255,
		heat_point = 50,
		humidity_point = 35,
	})

	minetest.register_biome({
		name = "grassland_under",
		node_cave_liquid = "default:water_source",
		y_max = -256,
		y_min = -31000,
		heat_point = 50,
		humidity_point = 35,
	})

	-- desert

	minetest.register_biome({
		name = "desert",
		node_top = "basecnf:sand",
		depth_top = 1,
		node_filler = "basecnf:sand",
		depth_filler = 1,
		node_stone = "basecnf:stone",
		node_riverbed = "basecnf:sand",
		depth_riverbed = 2,
		y_max = 31000,
		y_min = 4,
		heat_point = 92,
		humidity_point = 16,
	})

	minetest.register_biome({
		name = "desert_ocean",
		node_top = "basecnf:sand",
		depth_top = 1,
		node_filler = "basecnf:sand",
		depth_filler = 3,
		node_stone = "basecnf:stone",
		node_riverbed = "basecnf:sand",
		depth_riverbed = 2,
		node_cave_liquid = "basecnf:water_source",
		vertical_blend = 1,
		y_max = 3,
		y_min = -255,
		heat_point = 92,
		humidity_point = 16,
	})

	minetest.register_biome({
		name = "desert_under",
		node_cave_liquid = "basecnf:water_source",
		y_max = -256,
		y_min = -31000,
		heat_point = 92,
		humidity_point = 16,
	})

	-- stone desert

	minetest.register_biome({
		name = "stone_desert",
		node_top = "basecnf:stone",
		depth_top = 1,
		node_filler = "basecnf:stone",
		depth_filler = 1,
		node_stone = "basecnf:stone",
		node_riverbed = "basecnf:sand",
		depth_riverbed = 2,
		y_max = 31000,
		y_min = 4,
		heat_point = 60,
		humidity_point = 0,
	})

	minetest.register_biome({
		name = "stone_desert_ocean",
		node_top = "basecnf:stone",
		depth_top = 1,
		node_filler = "basecnf:stone",
		depth_filler = 3,
		node_stone = "basecnf:stone",
		node_riverbed = "basecnf:sand",
		depth_riverbed = 2,
		node_cave_liquid = "basecnf:water_source",
		y_max = 3,
		y_min = -255,
		heat_point = 60,
		humidity_point = 0,
	})

	minetest.register_biome({
		name = "stone_desert_under",
		node_cave_liquid = "basecnf:water_source",
		y_max = -256,
		y_min = -31000,
		heat_point = 60,
		humidity_point = 0,
	})

end

-- detect mapgen

local mg_name = minetest.get_mapgen_setting("mg_name")

if mg_name == "v6" then
	--basecnf.register_mgv6_ores()
	--basecnf.register_mgv6_decorations()
else
	basecnf.register_biomes()
	--basecnf.register_ores()
	--basecnf.register_decorations()
end