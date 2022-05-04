NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "SkipPortalCharge.pak", 
["MOD_AUTHOR"]				= "HowardCLH",
["NMS_VERSION"]				= "3.88",
["MOD_DESCRIPTION"]			= "Removes the charging requirement of portals",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PORTAL\PORTAL\ENTITIES\BUTTON.ENTITY.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"AutoCompleteOnStart",	"True"},
							},
						},
					}
				}
			}
		}
	}	
}