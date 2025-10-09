NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] = "TerrainMultiplier.pak",
["MOD_AUTHOR"] = "Flugelwulff",
["LUA_AUTHOR"] = "Flugelwulff",
["NMS_VERSION"] = "6.02",
["MODIFICATIONS"] =
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
					["MXML_CHANGE_TABLE"] 	= 
					{
						{
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ResourceReducer",	 "1"},      -- Original "10"
								{"ResourceMinAmount",	 "2"},      -- Original "1"
								{"ResourceMaxAmount",	 "4"},      -- Original "2"
								{"ResourceCommonReducer",	 "1"},      -- Original "5"
								{"ResourceCommonMinAmount",	 "2"},      -- Original "1"
								{"ResourceCommonMaxAmount",	 "16"},      -- Original "8"
								{"ResourceDirtReducer",	 "1"},      -- Original "40"
								{"ResourceDirtMinAmount",	 "2"},      -- Original "1"
								{"ResourceDirtMaxAmount",	 "16"},      -- Original "8"
							}
						}
					}
				}
			}
		}
	}	
}