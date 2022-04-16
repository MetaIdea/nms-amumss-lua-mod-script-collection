NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "GodMode.pak",
["MOD_AUTHOR"]				= "Mjjstral",
["NMS_VERSION"]				= "1.77",
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.59B126E2.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCDEBUGOPTIONS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"GodMode",						"True"}, 	-- Original "False"
								{"AlwaysHaveFocus",				"True"}, 	-- Original "False"
								{"MapWarpCheckIgnoreFuel",		"True"}, 	-- Original "False"
								{"MapWarpCheckIgnoreDrive",		"True"}, 	-- Original "False"
								{"EverythingIsFree",			"True"}, 	-- Original "False"
								{"EverythingIsKnown",			"True"}, 	-- Original "False"
								{"EverythingIsStar",			"True"}, 	-- Original "False"
								{"IgnoreMissionRank",			"True"} 	-- Original "False"
							}
						}
					} --8 global replacements
				}
			}
		}
	}	
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE