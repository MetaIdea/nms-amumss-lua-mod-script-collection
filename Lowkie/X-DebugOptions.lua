NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "X-DebugOptions.pak", 
["MOD_AUTHOR"]				= "Lowkie",
["NMS_VERSION"]				= "3.21",
["MOD_DESCRIPTION"]			= "This mods makes save game slots standing still along with other stuff...",
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
							["PRECEDING_KEY_WORDS"] = "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
                                {"DisableContinuousSaving",         "True"},
								{"DisableSaveSlotSorting", 			"True"},	--Default False
								{"SkipAbandonedFreighterUnlocking", "True"},	--Default False
								{"SkipIntro", 						"True"},	--Default False
								{"SkipLogos", 						"True"},	--Default False
                                --{"SkipPlanetDiscoverOnBoot",        "True"},--Default False
                                --{"EverythingIsKnown",               "True"},--Default False
                                {"SkipTutorial",                    "True"},--Default False
                                {"UnlockAllSeasonRewards",          "True"},--Default False
                                {"UnlockAllTwitchRewards",          "True"},--Default False
                                {"UnlockAllStories",                "True"},--Default False
                                {"DisableBaseBuildingLimits",    "True"},
								--{"DisableBasePowerRequirements", "True"},		
								{"BaseDownloadTimeout",          "120"}, --ORIGINAL 40
                                --{"",                    "True"},--Default False
                                
							}
						}
					}
				}	
			}
		}
	}	
}
