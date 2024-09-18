--[[
for the latest mod updates, visit: https://github.com/SunnySummit/LasagnaBiomeGeneration2

feel free to make your own changes. in order to distribute (paks or lua scripts) you must:
    1. provide full credits in a readme file included with the archive.
    2. use open (GPLv3) licensing and/or open nexus mods permissions (include these 5 points in the readme/description page).
    3. you cannot sell or profit from this mod.
    4. you cannot distribute this mod for other games or media besides No Man's Sky.
    5. don't re-upload these lua scripts verbatim, instead, link to this repo (or create a fork).
	
thank.
--]]

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "_LASAGNA_JetPack_v1.41.pak",       
["MOD_AUTHOR"]				= "goosetehmoose",         
["NMS_VERSION"]				= "",     
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
								{"MeleeToAirBoostInitialImpulse",	"6"},   --from 5
								{"JetpackBrake",					"3"},   --from 2.2
								{"JetpackMaxSpeed",					"9"},   --from 5
								{"JetpackMaxUpSpeed",				"33"},  --from 30
								{"JetpackUpForce",					"35"},  --from 30
								{"JetpackFillRate",					"2"},   --from 0.5
								{"JetpackFillRateMidair",			"1.5"}, --from 0.25
								{"JetpackUnderwaterDrainRate",		"0.2"}, --from 0.4
								{"JetpackUnderwaterFillRate",		"2"},   --from 1
							}	
						}	
					}
				},
			}
		}
	}	
}	
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PAST THIS POINT HERE