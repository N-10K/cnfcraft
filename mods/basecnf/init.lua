basecnf = {}

-- check Minetest's version to see if compatible with cnf, if not, force error to avoid any bugs
if ItemStack("").add_wear_by_uses == nil then
	error("\nThis version of Minetest Game is incompatible with your engine version "..
		"(which is too old). You should download a version of Minetest Game that "..
		"matches the installed engine version.\n")
end

basecnf.LIGHT_MAX = 14

-- load files
local default_path = minetest.get_modpath("basecnf")

dofile(default_path.."/nodes.lua")
dofile(default_path.."/tools.lua")
dofile(default_path.."/mapgen.lua")