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

NMS_MOD_DEFINITION_CONTAINER = --## 2_body
{
["MOD_FILENAME"] 			= "__Las_Globals_FastFadeEtc_v1.41.pak",
["MOD_AUTHOR"]				= "goosetehmoose",
["NMS_VERSION"]				= "",
["MODIFICATIONS"] 			= 
	{

------------------------------------------------------------------------------------------------------------------------
--Section below originally written by InsaneRuffles, modified by FjordFish ---------------------------------------------
------------------------------------------------------------------------------------------------------------------------
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"GCGRAPHICSGLOBALS.GLOBAL.MBIN"
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = "",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ForceUncachedTerrain",	"True"},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "",   
							["MATH_OPERATION"] 		= "*",    
							["REPLACE_TYPE"] 		= "ALL",    
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ShadowLength",			3},
								--{"ShadowLengthShip",		3},
								{"ShadowLengthSpace",		3},
								{"ShadowLengthStation",		3},
								{"ShadowLengthCameraView",	3},
							}
						},
					} 
				},
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"GCENVIRONMENTGLOBALS.GLOBAL.MBIN"		
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
------------------------------------------------------------------------------------------------------------------------
--Section above originally written by InsaneRuffles, modified by FjordFish ---------------------------------------------
------------------------------------------------------------------------------------------------------------------------
						{
							["PRECEDING_KEY_WORDS"] = "",
							["INTEGER_TO_FLOAT"]	= "FORCE",
							["REPLACE_TYPE"] 		= "ALL",  
							["VALUE_CHANGE_TABLE"]	=
							{
								{"TerrainFadeTime",						  "0.8"},
								{"TerrainFadeTimeInShip",				  "1"},
								--{"CreatureFadeTime",					  "0.9"}, --caused hitching
								--{"FloraFadeTimeMin",						  "0.5"}, --less causes hitching
								{"FloraFadeTimeMax",				      "1"}, --less causes hitching
							}
						},
					} 
				},
					
					
			} --## 4b_footer
		},
    }
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PAST THIS POINT HERE