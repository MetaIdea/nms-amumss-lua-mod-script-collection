Author = "Gumsk"
ModName = "GExos Challenge"
ModNameSub = "DefaultSaveData"
BaseDescription = "Changes starting conditions"
GameVersion = "353"
ModVersion = "a"


FileSource1 = "METADATA\GAMESTATE\DEFAULTSAVEDATACREATIVE.MBIN"


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
			["VALUE_CHANGE_TABLE"] = {
				{"HomeRealityIteration","22"},
			}
		},
		{
			["PRECEDING_KEY_WORDS"] = {"GameStartAddress1"},
			["VALUE_CHANGE_TABLE"] = {
				{"RealityIndex","22"},
				{"VoxelX","1"},
				{"VoxelY","1"},
				{"VoxelZ","1"},
				{"SolarSystemIndex","1"},
				{"PlanetIndex","1"},
			}
		},
		{
			["PRECEDING_KEY_WORDS"] = {"GameStartAddress2"},
			["VALUE_CHANGE_TABLE"] = {
				{"RealityIndex","22"},
				{"VoxelX","1"},
				{"VoxelY","1"},
				{"VoxelZ","1"},
				{"SolarSystemIndex","1"},
				{"PlanetIndex","1"},
			}
		},	
		-- {
			-- ["PRECEDING_KEY_WORDS"] = {"GameStartAddress1"},
			-- ["VALUE_CHANGE_TABLE"] = {
				-- {"RealityIndex","22"},
			-- }
		-- },
}},
}}}}