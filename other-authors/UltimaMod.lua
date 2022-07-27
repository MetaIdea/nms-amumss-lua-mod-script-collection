
NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "UltimaMod.pak",
["MOD_AUTHOR"]				= "KamiEx714",
["NMS_VERSION"]				= "3.97",
["MOD_DESCRIPTION"]          = "Enables Instant Scanning and basically makes Everything Creative Mode, sort of",
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
								{"GodMode",						   "True"}, 	-- Original "False"
								{"TakeNoDamage",                   "True"}, 	-- Original "False"
								{"SuperKillGuns",                  "True"}, 	-- Original "False"
								{"AlwaysHaveFocus",				   "True"}, 	-- Original "False"
								{"MapWarpCheckIgnoreFuel",		   "True"}, 	-- Original "False"
								{"MapWarpCheckIgnoreDrive",		   "True"}, 	-- Original "False"
								{"EverythingIsFree",			   "True"}, 	-- Original "False"
								{"EverythingIsKnown",			   "True"}, 	-- Original "False"
								{"EverythingIsStar",			   "True"}, 	-- Original "False"
								{"InfiniteStamina",                "True"}, 	-- Original "False"
								{"DisableHazards",                 "True"}, 	-- Original "False"
								{"IgnoreMissionRank",			   "True"}, 	-- Original "False"
								{"UseScreenEffects",              "False"}, 	-- Original "True"
								{"UseVolumetrics",                "False"}, 	-- Original "True"
								{"UseClouds",				      "False"}, 	-- Original "True"
								{"AlwaysAllowShipOperations",      "True"}, 	-- Original "False"
								{"AlwaysAllowVehicleOperations",   "True"}, 	-- Original "False"
								{"DoAlienLanguage",               "False"}, 	-- Original "True"
								{"DisableLimits",				   "True"}, 	-- Original "False"
								{"DisableBaseBuildingLimits",	   "True"}, 	-- Original "False"
								{"BaseBuildingPartsRequirePower", "False"}, 	-- Original "True"
							}
						}
					} 
				}
			}
		},
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.59B126E2.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{								
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"BinocTimeBeforeScan",	"0"},
								{"BinocMinScanTime",	"0"},
								{"BinocScanTime",	"0"},
								{"BinocCreatureScanTime",	"0"},
								{"BinocularScanTargetInitialFadeTime",	"0"},
								{"BinocularScanTargetFadeTime",	"0"}
							}
						}
					}	
				}
			}					
		}
			
	}	
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE