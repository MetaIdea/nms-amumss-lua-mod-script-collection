Author = "Gumsk"
ModName = "gBase"
ModNameSub = "Items EM Any Only"
BaseDescription = "Removes restrictions on base building items"
GameVersion = "452"
ModVersion = "a"
FileSource1 = "METADATA\REALITY\TABLES\BASEBUILDINGOBJECTSTABLE.MBIN"

EMRate = 250				--Original 1 (C=175, B=220, A=250, S=300)
EMLimit = 0					--0
EMAnywhere = "None"			--Power, None for EMAnywhere

NMS_MOD_DEFINITION_CONTAINER = {
	["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
	["MOD_DESCRIPTION"]	= BaseDescription,
	["MOD_AUTHOR"]		= Author,
	["NMS_VERSION"]		= GameVersion,
	["MODIFICATIONS"]	= {
		{
			["MBIN_CHANGE_TABLE"] = {
				{
					["MBIN_FILE_SOURCE"] = FileSource1,
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {"ID","U_GENERATOR_S"},
							["VALUE_CHANGE_TABLE"] = {
								{"DependsOnHotspots",EMAnywhere},
								{"Rate",EMRate},
								{"BuildableOnPlanet", "False"},
								{"BuildableOnPlanetWithProduct", "False"},
								{"RegionLimit", EMLimit},
							},
						},
					},
				},
			}
		}
	}
}