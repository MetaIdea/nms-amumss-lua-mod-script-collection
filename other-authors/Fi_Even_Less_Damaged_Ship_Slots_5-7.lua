NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] 			= "Fi_Even_Less_Damaged_Ship_Slots.pak",
  ["MOD_DESCRIPTION"]		= "", 
  ["MOD_AUTHOR"]				= "Ficell",
  ["NMS_VERSION"]				= "5.7",
  ["MODIFICATIONS"] 		=
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCAISPACESHIPGLOBALS.GLOBAL.MBIN",
					["MXML_CHANGE_TABLE"] = 
					{
						{
							["PRECEDING_KEY_WORDS"] = "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"CrashedShipMinNonBrokenSlots",				"12"},	
								{"CrashedShipBrokenSlotChance",					"0.150000"},		
								{"CrashedShipBrokenTechChance",					"0.300000"},
								{"CrashedShipRepairSlotCostIncreaseFactor",			"1.300000"},		
								{"CrashedShipGeneralCostDiscount",				"0.100000"},	
								{"CrashedShipTechSlotsCostDiscount",				"0.100000"}												  														 
							}	
						},
					},
				}
			},
		}
	}
}
