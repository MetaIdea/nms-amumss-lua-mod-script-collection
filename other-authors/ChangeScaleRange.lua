ModName = "ChangeScaleRange.pak"
Author = "Striker0420"
Version = "3.97"

BuildingGlobals = "GCBUILDINGGLOBALS.GLOBAL.MBIN"

ScaleMax = 3000
ScaleMin = 0.00025

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= ModName, 
["MOD_AUTHOR"]				= Author,
["LUA_AUTHOR"]				= Author,
["NMS_VERSION"]				= Version,
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= BuildingGlobals,
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"]  = {"BuildingPlacementScaleMinMax", "Vector2f.xml"},
							["VALUE_CHANGE_TABLE"] 	= 
							{-- makes it so you can scale bigger or smaller
								{"x",  ScaleMin}, --default 0.25
								{"y",  ScaleMax}  --default 3
							}
						}
					}
				}
			}
		}			
	}
}