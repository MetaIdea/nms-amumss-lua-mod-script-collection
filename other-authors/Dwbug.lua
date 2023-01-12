NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]  		= "CustomDebug.pak",
["MOD_AUTHOR"] 			= "DeathWrench",
["NMS_VERSION"] 			= "1.0",
["MOD_DESCRIPTION"]		= "Tweaks",
["MODIFICATIONS"] 		= {{
["MBIN_CHANGE_TABLE"] 	= {
	{
		["MBIN_FILE_SOURCE"]	= "GCDEBUGOPTIONS.GLOBAL.MBIN",
		["EXML_CHANGE_TABLE"] 	= {
			{
				["VALUE_CHANGE_TABLE"]  	= {
					{"DoAlienLanguage",						"False"},
					{"SkipIntro",							"True"},
					{"SkipLogos",							"True"},
					{"AllowSavingOnAbandonedFreighters",	"True"},
					{"CanLeaveDialogs",						"True"},
					{"IgnoreFreighterSpawnWarpRequirement", "True"},
					{"SpecialsShop", 						"True"},
					{"DisableFileWatcher", 					"True"},
					{"MPMissionsAlwaysEPIC", 				"True"},	
					{"AllowPause", 							"False"},	
					{"BootLogoFadeRate",					"255.0"},
					{"BootMusic", 							"False"},
					{"DisableProfanityFilter", 				"True"},
					{"UnlockAllSeasonRewards", 				"True"},
					{"UnlockAllTwitchRewards",				"True"},
					{"MultiplePlayerFreightersInASystem",	"True"},
					{"FakeHandsInMultiplayer",  			"True"},
					{"DisableLimits", 						"True"},
					{"ShowUniverseAddressOnGalaxyMap", 		"True"},
					{"DisableBaseBuildingLimits",			"True"},
					{"AllowGlobalPartSnapping", 			"True"},
					{"DisableBasePowerRequirements",		"True"}, --won"t be able to walk through certain unpowered doors but other people will unless you have gdoor mod
					-- {"EnableBaseMovingOption",				"True"},
					-- {"MoveBaseIndex",						5},
				}
			}
		}
	}
}}}}
