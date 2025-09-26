NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] 			= "zzz_openwater_v102",
  ["MOD_AUTHOR"]			= "camus",
  ["LUA_AUTHOR"]			= "camus",
  ["NMS_VERSION"]			= "5.12",
  ["MODIFICATIONS"] 		= 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\VOXELGENERATORSETTINGS.MBIN",  
					["MXML_CHANGE_TABLE"] = 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"UnderWater","TkNoiseUberLayerData"},
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "Height", 10 },
								{ "Width", 25 },
								{ "RegionScale", 100 },
								{ "PlateauStratas", 1.0 },
								{ "PlateauSharpness", 10 },
								{ "PlateauRegionSize", 0 },
							}
						},
					}
				}
			}
		}
	}
}
