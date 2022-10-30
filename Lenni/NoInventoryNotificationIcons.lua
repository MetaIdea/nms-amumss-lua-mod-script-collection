NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "NoInventoryNotificationIcons.pak", 
["MOD_AUTHOR"]				= "Lenni",
["NMS_VERSION"]				= "4.05",
["MOD_DESCRIPTION"]			= "Removes inventory notification marker icons",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA/UI/SPECIALSTYLESIMAGESDATA.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SKW"]					= {"Name", "BULLETPOINT"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Path",	""},
							}
						},
					}
				},
			}
		}
	}	
}