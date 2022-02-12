NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] 			= "Settings OverhaulZ.pak",
  ["MOD_DESCRIPTION"]		= "", 
  ["MOD_AUTHOR"]			= "MysticViruZ",
  ["NMS_VERSION"]			= "3.37", 
  ["MODIFICATIONS"] 		=        
	{
		{
			["PAK_FILE_SOURCE"] = "NMSARC.59B126E2.pak",
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"] = "GCDEBUGOPTIONS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["PRECEDING_KEY_WORDS"] = "", 
							["VALUE_CHANGE_TABLE"]  = 
							{
								{"AllowSavingOnAbandonedFreighters",	"True"}, -- Original "False"
								{"DisableSaveSlotSorting",	            "True"}, -- Original "False"
								{"MultiplePlayerFreightersInASystem",	"True"}, -- Original "False"
								{"DisableProfanityFilter",	            "True"}, -- Original "False"
								{"DisableBaseBuildingLimits",	        "True"}, -- Original "False"
							}	
						}
					}
				}, --5 replacements
			}
		}
	}
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE