-- To use this script you'll need AMUMSS: https://www.nexusmods.com/nomanssky/mods/957
--   Just drop this file into the ModScript folder and run the modbuilder, and a usable .pak is generated!
-- Barring major restructuring by Hello Games, this .lua script is NMS-version-independent.
NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "JetpackEnhancedV2.pak",
["MOD_DESCRIPTION"]			= "Enhance jetpack",
["MOD_AUTHOR"]				= "foxmlg aka Zotikus",
["NMS_VERSION"]				= "2.31",
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
							["PRECEDING_KEY_WORDS"] = {""},
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+1",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"JetpackTankTimes", "24"}  -- Original "4"
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {""},
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+2",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"JetpackTankTimes", "44"}  -- Original "6"
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {""},
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+3",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"JetpackTankTimes", "64"}  -- Original "8"
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"JetpackUnderwaterDrainRate",		"0.2"},		-- Original "0.4"
								{"JetpackUnderwaterFillRate",		"2"},		-- Original "1"
								{"JetpackDrainHorizontalFactor",	"0.12"},	-- Original "2.5"
								{"MeleeBoostAirForce",				"5"},	-- Original "3"
								{"MeleeToAirBoostInitialImpulse",	"7"},	-- Original "5"
								{"MaxTimeInMeleeBoost",				"2"},	-- Original "1.4"
								{"JetpackForce",					"52"},	-- Original "31"
								{"JetpackBrake",					"3.5"},	-- Original "2.2"
								{"JetpackMaxSpeed",					"15"},	-- Original "5"
								{"JetpackMaxUpSpeed",				"45"},	-- Original "30"
								{"JetpackUpForce",					"64"},	-- Original "30"
								{"JetpackIgnitionForce",			"100"},	-- Original "60"
								{"JetpackIgnitionTime",				"0.1"},	-- Original ".4"
								{"JetpackMinIgnitionTime",			"0.05"},	-- Original ".2"
								{"JetpackFillRate",					"3"},	-- Original ".5"
								{"JetpackFillRateHardMode",			"1"},	-- Original ".2"
								{"JetpackFillRateSpaceStationMultiplier",	"10"},	-- Original "5"
								{"JetpackUpForceDeadPlanetExtra",			"15"},	-- Original "10"
								{"JetpackForceDeadPlanetExtra",				"80"},	-- Original "15"
								{"JetpackIgnitionForceDeadPlanetExtra",		"0"}	-- Original "45"
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
--DON'T ADD ANYTHING PAST THIS POINT HERE