SMALL  = 24
MEDIUM = 36
LARGE  = 48

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "ExocraftMoreSlots.pak",
["MOD_DESCRIPTION"]			= "",
["MOD_AUTHOR"]				= "TheLich",
["NMS_VERSION"]				= "1.2",
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.515F1D3.pak",
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
								{"MinSlots",		SMALL},
								{"MaxSlots",		SMALL},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "VehicleMedium",
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"MinSlots",		MEDIUM},
								{"MaxSlots",		MEDIUM},
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