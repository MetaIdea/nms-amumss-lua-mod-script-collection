NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]	= "NoPortalCharge.pak",
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
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 		= 
							{	
								{ "MinRandAmount", 									"100" }, 		--Original "0"
								{ "MaxRandAmount", 									"100" }, 		--Original "0"
							}
						}
					}
				}
			}
		}
	}	
}	
