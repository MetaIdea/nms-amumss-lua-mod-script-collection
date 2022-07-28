
NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Lazy Traveller.pak",
["MOD_AUTHOR"]				= "KamiEx714",
["NMS_VERSION"]				= "3.97",
["MOD_DESCRIPTION"]          = "Lazy Traveller is Lazy",
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
								{"ForceScanEventsToGoPrime",         "True"},	-- Original "False"
								{"AllowSavingOnAbandonedFreighters", "True"}, 	-- Original "False"
								{"GodMode",						     "True"}, 	-- Original "False"
								{"TakeNoDamage",                     "True"}, 	-- Original "False"
								{"AlwaysHaveFocus",				     "True"}, 	-- Original "False"
								{"MapWarpCheckIgnoreFuel",		     "True"}, 	-- Original "False"
								{"MapWarpCheckIgnoreDrive",		     "True"}, 	-- Original "False"
								{"EverythingIsFree",			     "True"}, 	-- Original "False"
								{"EverythingIsKnown",			     "True"}, 	-- Original "False"
								{"EverythingIsStar",			     "True"}, 	-- Original "False"
								{"InfiniteStamina",                  "True"}, 	-- Original "False"
								{"IgnoreMissionRank",			     "True"}, 	-- Original "False"
								{"CanLeaveDialogs",                  "True"}, 	-- Original "False"
								{"DisableSaveSlotSorting",           "True"}, 	-- Original "False"
								{"DisableStorms",                    "True"}, 	-- Original "False"
								{"AlwaysAllowShipOperations",        "True"}, 	-- Original "False"
								{"AlwaysAllowVehicleOperations",     "True"}, 	-- Original "False"
								{"DisableLimits",                    "True"}, 	-- Original "False"
								{"DisableBaseBuildingLimits",        "True"}, 	-- Original "False"
								{"AllowGlobalPartSnapping",          "True"}, 	-- Original "False"
								{"DisableBasePowerRequirements",	 "True"}, 	-- Original "False"
								{"DoAlienLanguage",                 "False"}, 	-- Original "True"
								{"BaseBuildingPartsRequirePower",   "False"}, 	-- Original "True"
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