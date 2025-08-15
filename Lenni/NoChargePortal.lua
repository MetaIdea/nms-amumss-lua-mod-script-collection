NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]	= "NoChargePortal",
["MOD_AUTHOR"]		= "Lenni",
["NMS_VERSION"]		= "5.75",
["MOD_DESCRIPTION"]	= "Removes Portal charge cost",
["MODIFICATIONS"]	=
	{
		{
			["MBIN_CHANGE_TABLE"] 	=
			{
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PORTAL/PORTAL/ENTITIES/BUTTON.ENTITY.MBIN",
          ["MXML_CHANGE_TABLE"] = 
					{
						{
						  ["SKW"] = {"Components", "GcMaintenanceComponentData"},
						  ["REMOVE"] = "SECTION",
						}
					}
				}
			}
		}
	}
}