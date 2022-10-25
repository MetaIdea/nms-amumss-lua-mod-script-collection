ModAuthor	= "Balzhur"
LuaAuthor	= "Balzhur"
Maintainer	= ""
ModName		= "No Camera Swing"
ModCategory	= "Other"
ModDescription	= "Disables camera swing/spin when interacting with supply depots, save points, etc."
GameVersion	= "3.88"
ModVersion	= "1.5"
-- Special thanks to WinderTP, Gumsk and lMonk at NMS Modding Discord

NMS_MOD_DEFINITION_CONTAINER = {
	["MOD_FILENAME"]	= ModAuthor.." - "..ModCategory.." - "..ModName.."-"..ModVersion..".pak",
	["MOD_DESCRIPTION"]	= ModDescription,
	["MOD_MAINTENANCE"]	= Maintainer,
	["MOD_AUTHOR"]		= ModAuthor,
	["LUA_AUTHOR"]		= LuaAuthor,
	["NMS_VERSION"]		= GameVersion,
	["MODIFICATIONS"]	= {{
		["MBIN_CHANGE_TABLE"] = {{
			["MBIN_FILE_SOURCE"]	= {
				"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\UTILITYPARTS\MODULE_PUMPS\ENTITIES\MINERALEXTRACTOR.ENTITY.MBIN",		-- Mineral Extractor
				"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\UTILITYPARTS\MODULE_GASEXTRACTOR\ENTITIES\GASEXTRACTOR.ENTITY.MBIN",	-- Gas Extractor
				"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\UTILITYPARTS\MODULE_SILOS\ENTITIES\INTERACTION.ENTITY.MBIN",		-- Supply Depot
				"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\UTILITYPARTS\MODULE_GENERATORS\ENTITIES\INTERACTION.ENTITY.MBIN",		-- Electromagnetic Generator
				"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\UTILITYPARTS\MODULE_BATTERYS\ENTITIES\BATTERY.ENTITY.MBIN",		-- Battery
			},
			["EXML_CHANGE_TABLE"] 	= {{
				["VALUE_CHANGE_TABLE"]	= {
					{"UseInteractCamera",	"False"},	-- Original "True"
				}
			}}
		},{
--[[			This part removes camera transition when accessing a waypoint for 1st time.
			There is similar mod on Nexus that does not only the waypoints, but also radio towers, beacons and so on.
			https://www.nexusmods.com/nomanssky/mods/1977	]]
			["MBIN_FILE_SOURCE"]	= "GCCAMERAGLOBALS.GLOBAL.MBIN",
			["EXML_CHANGE_TABLE"] 	= {{
				["PRECEDING_KEY_WORDS"]	= {"WaypointTransition",},
				["VALUE_CHANGE_TABLE"]	= {
					{"Time",		"0"},		-- Original "2"
--					{"AerialViewMode",	"FaceDown"},	-- Original "FaceDown"
					{"TimeBack",		"0"},		-- Original "1.5"
					{"StartTime",		"0"},		-- Original "0.4"
					{"PauseTime",		"0"},		-- Original "0.2"
					{"Distance",		"0"},		-- Original "3"
--					{"TargetOffsetAngle",	"0"},		-- Original "0"
					{"Stages",		"0"},		-- Original "1"
					{"SpeedLineDist",	"0"},		-- Original "6"
				}
			}}
		}}
	}}
}
-- The END of mod definition container