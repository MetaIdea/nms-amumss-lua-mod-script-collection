Author = "Gumsk"
ModName = "Seasonal Encryption"
ModNameSub = ""
BaseDescription = "Removes encryption from seasonal missions"
GameVersion = "353"
ModVersion = "a"


FileSource1 = "METADATA\GAMESTATE\SEASONTHREE.MBIN"


NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
["MOD_DESCRIPTION"]	= BaseDescription,
["MOD_AUTHOR"]		= Author,
["NMS_VERSION"]		= GameVersion,
["MODIFICATIONS"]	= {{
["MBIN_CHANGE_TABLE"] = {
	{["MBIN_FILE_SOURCE"] = FileSource1,
	["EXML_CHANGE_TABLE"] = {
		{
			["REPLACE_TYPE"] = "ALL",
			["VALUE_CHANGE_TABLE"] = {
				{"IsEncrypted","False"},
			}
		},
		-- {
			-- ["PRECEDING_KEY_WORDS"] = {"GameStartAddress1"},
			-- ["VALUE_CHANGE_TABLE"] = {
				-- {"RealityIndex","22"},
				-- {"VoxelX","1"},
				-- {"VoxelY","1"},
				-- {"VoxelZ","1"},
				-- {"SolarSystemIndex","1"},
				-- {"PlanetIndex","1"},
			-- }
		-- },
}},
}}}}