NMS_MOD_DEFINITION_CONTAINER = 
{
	["MOD_FILENAME"]	= "Private Landing Pads 1.5.pak",
	["MOD_AUTHOR"]		= "Northener69 (published by Lo2k)",
	["LUA_AUTHOR"]		= "Droseran",
	["MOD_DESCRIPTION"]	= "Prevents AI ships from landing on our own landing pads.",
	["NMS_VERSION"]		= "4.12",
	["MODIFICATIONS"]	= {
		{
			["MBIN_CHANGE_TABLE"] = {
				{
					["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\LANDINGPAD\ENTITIES\LANDINGDATA.ENTITY.MBIN",
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["VALUE_CHANGE_TABLE"] = 
							{
								{"AIDestination","False"}
							}
						}
					}
				}
			}
		}
	}
}