RESOURCEMULTIPLIER = "2" -- Total resource multiplier when using the Terrain Manipulator

NMS_MOD_DEFINITION_CONTAINER =
{
	["MOD_FILENAME"] = "TerrainMultiplier",
	["MOD_AUTHOR"] = "Flugelwulff",
	["LUA_AUTHOR"] = "Flugelwulff",
	["NMS_VERSION"] = "6.17",
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
								{"ResourceReducer",		  1}, -- Original "10"
								{"ResourceCommonReducer", 1}, -- Original "5"
								{"ResourceDirtReducer",   1}, -- Original "40"
							}
						}
					}
				}
			}
		},
		{
			["MBIN_CHANGE_TABLE"] 	=
			{
				{
					["MBIN_FILE_SOURCE"] 	= "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
					["MXML_CHANGE_TABLE"] 	=
					{
						{
							["MATH_OPERATION"] = "*",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"ResourceMinAmount",		RESOURCEMULTIPLIER}, -- Original "1"
								{"ResourceMaxAmount",		RESOURCEMULTIPLIER}, -- Original "2"
								{"ResourceCommonMinAmount",	RESOURCEMULTIPLIER}, -- Original "1"
								{"ResourceCommonMaxAmount",	RESOURCEMULTIPLIER}, -- Original "8"
								{"ResourceDirtMinAmount",	RESOURCEMULTIPLIER}, -- Original "1"
								{"ResourceDirtMaxAmount",	RESOURCEMULTIPLIER}, -- Original "8"
							}
						}
					}
				}
			}
		}
	}
}