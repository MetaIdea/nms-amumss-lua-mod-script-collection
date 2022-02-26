Author = "aharttsx"
ModName = "Faster Walk and Run Speed"
BaseDescription = "Increases Run and Walk Speed for Traveler"
GameVersion = "3.22"
ModVersion = "1.0"

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= ModName.." "..GameVersion..ModVersion..".pak",
["MOD_DESCRIPTION"]			= BaseDescription,
["MOD_AUTHOR"]				= Author,
["NMS_VERSION"]				= GameVersion,
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.59B126E2.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCPLAYERGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"GroundRunSpeed",					"12"}, 	-- Original "8"
								{"GroundWalkSpeed",					"6"},	-- original "4.4"
							}	
						}						
					}
				}
			}
		}
	}	
}
