NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "MultipleFreightersMultiplayer.pak",
["MOD_DESCRIPTION"]			= "Disables the restriction to warp a freighter into a system with another player freighter already present.",
["MOD_AUTHOR"]				= "Danilotumix",
["NMS_VERSION"]				= "3.0+",
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
								{"MultiplePlayerFreightersInASystem", "True"},
							}
						}
					}
				}
			}
		}
	}	
}