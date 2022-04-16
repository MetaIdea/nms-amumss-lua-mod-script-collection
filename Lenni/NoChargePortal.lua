NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]	= "NoChargePortal.pak",
["MOD_AUTHOR"]		= "Lenni",
["NMS_VERSION"]		= "3.75+",
["MOD_DESCRIPTION"]	= "Removes Portal charge cost",
["MODIFICATIONS"]	= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PORTAL/PORTAL/ENTITIES/BUTTON.ENTITY.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
						  ["PRECEDING_KEY_WORDS"] = "GcMaintenanceComponentData.xml",
						  ["REMOVE"] = "SECTION",
						}
					}
				}
			}
		}
	}	
}	
