NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "GodMode.pak",
["MOD_AUTHOR"]				= "Mjjstral",
["NMS_VERSION"]				= "1.77",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCDEBUGOPTIONS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"GodMode",						"True"}, 	-- Original "False"
								{"AlwaysHaveFocus",			"True"}, 	-- Original "False"
								{"MapWarpCheckIgnoreFuel",		"True"}, 	-- Original "False"
								{"MapWarpCheckIgnoreDrive",		"True"}, 	-- Original "False"
								{"EverythingIsFree",			"True"}, 	-- Original "False"
								{"EverythingIsKnown",			"True"}, 	-- Original "False"
								{"EverythingIsStar",			"True"}, 	-- Original "False"
								{"IgnoreMissionRank",			"True"}, 	-- Original "False"
							}
						}
					} --8 global replacements
				}
			}
		}
	}	
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
