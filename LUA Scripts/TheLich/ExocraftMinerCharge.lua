NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "ExocraftMinerCharge.pak",
["MOD_DESCRIPTION"]			= "",
["MOD_AUTHOR"]				= "TheLich",
["NMS_VERSION"]				= "1.2",
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.515F3D3.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
                            ["SPECIAL_KEY_WORDS"] = {"ID","MECH_MINER"},
							["PRECEDING_KEY_WORDS"] = "ChargeType",
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"SubstanceCategory",		"Metal"},
							}
						},
						{
                            ["SPECIAL_KEY_WORDS"] = {"ID","MECH_MINER"},
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"ChargeAmount",		600},
								{"ChargeMultiplier",	3},
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