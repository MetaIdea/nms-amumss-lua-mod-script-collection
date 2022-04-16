NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]	= "NoShipOverheatCycleWeaponMessage310.pak",
["MOD_AUTHOR"]		= "zinfinion",
["NMS_VERSION"]		= "3.10+",
["MOD_DESCRIPTION"]	= "Removes the ship Overheat Cycle Weapon message",
["MODIFICATIONS"]	= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCUIGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							--["SPECIAL_KEY_WORDS"] 	= {"","",},
							--["PRECEDING_KEY_WORDS"] 	= "",
							["VALUE_CHANGE_TABLE"] 		= 
							{	
								{ "ShipOverheatSwitchMessageWait", 		"0" }, 		--Original "0.9"
								{ "ShipOverheatSwitchMessageTime", 		"0" }, 		--Original "1.6"
							}
						}
					}
				}
			}
		}
	}	
}	
