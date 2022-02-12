NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "PiratesAlwaysEngage.pak",
["MOD_AUTHOR"]				= "DeathWrench",
["NMS_VERSION"]				= "1.0",
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.59B126E2.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PirateInterestOverride",			"1"},		-- Original "0"
								--doesn't work{"PirateInterestLevels",			"9999999999"},	
								--{"UseTradingCostTable",				"true"}, 	-- Original "false"	
							}
						}
					} --2 global replacements
				}
			}
		}
	}	
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE