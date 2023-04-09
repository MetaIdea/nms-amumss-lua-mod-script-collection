NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "TeleportReceiver on Interceptor.pak", 
["MOD_AUTHOR"]				= "Lenni",
["NMS_VERSION"]				= "4.21",
["MOD_DESCRIPTION"]			= "Enables the Teleportreceiver to be installed on Interceptor starships",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA/REALITY/TABLES/NMS_REALITY_GCTECHNOLOGYTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SKW"]		= {"ID", "SHIP_TELEPORT", "Category", "GcTechnologyCategory.xml"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TechnologyCategory", "AllShipsExceptAlien"},
							}
						},
					}
				},
			}
		}
	}	
}