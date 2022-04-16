
NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "MechEnhanced.pak",
["MOD_DESCRIPTION"]			= "Enhance Mech",
["MOD_AUTHOR"]				= "Sin0b0l",
["NMS_VERSION"]				= "2.4",
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCVEHICLEGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MechTurnSpeed",				"0.35"},		-- Original "1.5"
								{"MechJetpackTurnSpeed",		"0.35"},		-- Original "3"
								{"MechWalkToRunTimeIdle",		"0.1"},		-- Original "2"
								{"MechLandBrake",				"6"},		-- Original "4"
								{"MechJetpackLandTime",			"0.1"},		-- Original "0.6"
								{"MechTitanFallLandIntroTime",			"3"},		-- Original "4.5"
							}	
						}						
					}
				}
			}
		}
	}	
}