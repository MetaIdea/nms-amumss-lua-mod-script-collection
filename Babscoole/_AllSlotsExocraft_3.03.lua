SMALL  = 24
MEDIUM = 36
LARGE  = 48

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "_AllSlotsExocraft_3.03.pak",
["MOD_DESCRIPTION"]			= "",
["MOD_AUTHOR"]				= "Fenrir7940",
["LUA_AUTHOR"]				= "Babscoole",
["NMS_VERSION"]				= "3.03",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\INVENTORYTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = "VehicleSmall",
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"MinSlots",		LARGE},
								{"MaxSlots",		LARGE},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "VehicleMedium",
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"MinSlots",		LARGE},
								{"MaxSlots",		LARGE},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "VehicleLarge",
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"MinSlots",		LARGE},
								{"MaxSlots",		LARGE},
							}
						},
					}
				}
			}
		}
	}	
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE