NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "NoDamagedSlots.pak", 
["MOD_AUTHOR"]				= "Lenni",
["NMS_VERSION"]				= "4.21",
["MOD_DESCRIPTION"]			= "Crashed ships and Sentinel MTs don't have damaged slots",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCAISPACESHIPGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"SentinelGunBrokenSlotChance", "0"},
								{"CrashedShipBrokenSlotChance", "0"},
								{"CrashedShipBrokenTechChance", "0"},
							}
						},
					}
				},
			}
		}
	}	
}