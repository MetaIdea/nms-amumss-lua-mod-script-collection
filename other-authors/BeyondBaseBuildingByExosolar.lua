NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "_Beyond Basebuilding by Exosolar 1.5.pak", 
["MOD_AUTHOR"]				= "Exosolar",
["NMS_VERSION"]				= "2.09",
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.515F1D3.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\BASEBUILDINGTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"BuildableOnFreighter", 		 "True"},
								{"BuildableAboveWater", 		 "True"},								
								{"CheckPlaceholderCollision",   "False"},
								{"GlobalLimit", 					"0"},			
								{"SystemLimit", 					"0"},
								{"PlanetLimit", 					"0"},
								{"RegionLimit", 					"0"},
								{"PlanetBaseLimit", 				"0"},
								{"FreighterBaseLimit", 				"0"}
								--{"BaseBuildingDecorationType", "Normal"},			
								--{"IsDecoration", 				"False"}							
							}
						}--,
						-- {
							-- ["SPECIAL_KEY_WORDS"] = {"Biome", "GcBiomeType.xml"},
							-- ["PRECEDING_KEY_WORDS"] = {""},
							-- ["VALUE_CHANGE_TABLE"] 	= {
								-- {"Biome", "All"}
							-- }
						-- }
					}
				}
			}
		}
	}
}