ModAuthor	= "Balzhur"
LuaAuthor	= "Balzhur"
ModName		= "No Camera Spin"
ModCategory	= "Other"
ModDescription	= "Disables camera swing/spin when interacting with supply depots, gas extractors, etc."
GameVersion	= "3.88"
ModVersion	= "1.3"
-- Special thanks to WinderTP and Gumsk at NMS Modding Discord

NMS_MOD_DEFINITION_CONTAINER = {
	["MOD_FILENAME"]	= ModAuthor.." - "..ModCategory.." - "..ModName.."-"..ModVersion..".pak",
	["MOD_DESCRIPTION"]	= ModDescription,
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
			},
			["EXML_CHANGE_TABLE"] 	= {{
				["VALUE_CHANGE_TABLE"]	= {
					{"UseInteractCamera",	"False" },	-- Original "True"
				}
			}}
		}}
	}}
}
-- The END of mod definition container