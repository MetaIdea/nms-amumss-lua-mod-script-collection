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

--all multiplied, i.e. x8
local UNDERWATER_ALL_OTHER_MAX_SCALE_SIZE = 4
local FISHFLOCK_MAX_SCALE_SIZE = 2 --glitch if too big
local BUTTERFLOCK_MAX_SCALE_SIZE = 1 --glitch if too big
--SANDWORM_MAX_SCALE_SIZE = 2 --breaks sandworms
local GROUND_AIR_SMALLER_MAX_SCALE_SIZE = 4
local GROUND_AIR_ALL_OTHER_MAX_SCALE_SIZE = 6 --moon-sized creatures if too big --v1.9: 18 from 25
local PROTODIGGER_MAX_SCALE_SIZE = 2 --Octopus legs

local HERD_FALSE = "False" --v2.3: Removes herds for 8x or more creatures

local GLOBAL_MAX_CREATURE_SIZE = 6 --global variable, overrides many creatures i.e. ground --v1.94: 18 from 25, v2.0: 12 from 18

--not multiplied, replaces
local CREATURE_MINCOUNT = 1 --minimum spawn count per species, float value causes error
local CREATURE_MAXCOUNT = 1 --max "  " --v2.0: added this to prevent huge groups, which caused lag
local CREATURE_MAXCOUNT_LARGE = 1 --larger creatures
local CREATURE_MAXCOUNT_SMALL = 5

--MOVE_SPEED_SCALE = 0.8 --movement speed --v2.3: commented out, this stops some creatures from moving completely
local ANIM_SPEED_SCALE_MULTIPLIER = 0.7
local MIN_SPEED_SCALE_MULTIPLIER = 0.5
local MAX_SPEED_SCALE_MULTIPLIER = 0.7

-------------------------------
local SPAWNDISTANCE_MULTIPLIER = 2 --creatures spawn distance multiplier --**This line is code by InsaneRuffles**
-------------------------------
NMS_MOD_DEFINITION_CONTAINER = 
{
["AMUMSS_SUPPRESS_MSG"] = "UNUSED_VARIABLE", --remove notices that a variable was not used
["MOD_FILENAME"] 			= "LASAGNA_GiantCreatures_JustAir_v1.41.pak",
["MOD_AUTHOR"]				= "goosetehmoose - with InsaneRuffles code",
["NMS_VERSION"]				= "",
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.515F1D3.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\SIMULATION\ECOSYSTEM\CREATUREDATATABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
						["SPECIAL_KEY_WORDS"] = {"Id","BIRD"},
						["MATH_OPERATION"] 		= "*",
						["INTEGER_TO_FLOAT"]    = "FORCE",
						["REPLACE_TYPE"] 		= "ALL",
						["VALUE_CHANGE_TABLE"] 	= 
							{	
								{ "MaxScale", 				GROUND_AIR_SMALLER_MAX_SCALE_SIZE },
							}
						},
						{
						["SPECIAL_KEY_WORDS"] = {"Id","BIRD"},
						["VALUE_CHANGE_TABLE"] 	= 
							{	
								{ "MaxCount",				CREATURE_MAXCOUNT },
								{ "Herd", 					HERD_FALSE },
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","BIRD"},
							["MATH_OPERATION"] 		= "*",
							--["INTEGER_TO_FLOAT"]    = "FORCE", --causes error
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 		= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinCount",		CREATURE_MINCOUNT },
							}
						},
						{
						["SPECIAL_KEY_WORDS"] = {"Id","FLYINGSNAKE"},
						["MATH_OPERATION"] 		= "*",
						["INTEGER_TO_FLOAT"]    = "FORCE",
						["REPLACE_TYPE"] 		= "ALL",
						["VALUE_CHANGE_TABLE"] 	= 
							{	
								{ "MaxScale", 				GROUND_AIR_ALL_OTHER_MAX_SCALE_SIZE },
							}
						},
						{
						["SPECIAL_KEY_WORDS"] = {"Id","FLYINGSNAKE"},
						["VALUE_CHANGE_TABLE"] 	= 
							{	
								{ "MaxCount",				CREATURE_MAXCOUNT_LARGE },
								{ "Herd", 					HERD_FALSE },
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","FLYINGSNAKE"},
							["MATH_OPERATION"] 		= "*",
							--["INTEGER_TO_FLOAT"]    = "FORCE", --causes error
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 		= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinCount",		CREATURE_MINCOUNT },
							}
						},
						{
						["SPECIAL_KEY_WORDS"] = {"Id","FLYINGLIZARD"},
						["MATH_OPERATION"] 		= "*",
						["INTEGER_TO_FLOAT"]    = "FORCE",
						["REPLACE_TYPE"] 		= "ALL",
						["VALUE_CHANGE_TABLE"] 	= 
							{	
								{ "MaxScale", 				GROUND_AIR_ALL_OTHER_MAX_SCALE_SIZE },
							}
						},
						{
						["SPECIAL_KEY_WORDS"] = {"Id","FLYINGLIZARD"},
						["VALUE_CHANGE_TABLE"] 	= 
							{	
								{ "MaxCount",				CREATURE_MAXCOUNT_LARGE },
								{ "Herd", 					HERD_FALSE },
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","FLYINGLIZARD"},
							["MATH_OPERATION"] 		= "*",
							--["INTEGER_TO_FLOAT"]    = "FORCE", --causes error
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 		= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinCount",		CREATURE_MINCOUNT },
							}
						},
						{
						["SPECIAL_KEY_WORDS"] = {"Id","SMALLBIRD"},
						["MATH_OPERATION"] 		= "*",
						["INTEGER_TO_FLOAT"]    = "FORCE",
						["REPLACE_TYPE"] 		= "ALL",
						["VALUE_CHANGE_TABLE"] 	= 
							{	
								{ "MaxScale", 				GROUND_AIR_SMALLER_MAX_SCALE_SIZE },
							}
						},
						{
						["SPECIAL_KEY_WORDS"] = {"Id","SMALLBIRD"},
						["VALUE_CHANGE_TABLE"] 	= 
							{	
								{ "Herd", 					HERD_FALSE },
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","SMALLBIRD"},
							["MATH_OPERATION"] 		= "*",
							--["INTEGER_TO_FLOAT"]    = "FORCE", --causes error
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 		= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinCount",		CREATURE_MINCOUNT },
							}
						},
						-- {
						-- ["SPECIAL_KEY_WORDS"] = {"Id","SANDWORM"}, --breaks sandworms, commented out
						-- ["MATH_OPERATION"] 		= "*",
						-- ["INTEGER_TO_FLOAT"]    = "FORCE",
						-- ["REPLACE_TYPE"] 		= "ALL",
						-- ["VALUE_CHANGE_TABLE"] 	= 
							-- {	
								-- { "MaxScale", 				SANDWORM_MAX_SCALE_SIZE },
							-- }
						-- },
					}
				},-------------------------------------------------------------------------------------------------------------------
				{-----------Code originally by InsaneRuffles in section below, modified by Lllasagna (*** = lasagna comment)---------
					["MBIN_FILE_SOURCE"] 	= ---------------------------------------------------------------------------------------
					{
"METADATA\SIMULATION\ECOSYSTEM\AIR\AIRTABLEBIGBIRD.MBIN",
"METADATA\SIMULATION\ECOSYSTEM\AIR\AIRTABLEBUSY.MBIN",
"METADATA\SIMULATION\ECOSYSTEM\AIR\AIRTABLECOMMON.MBIN",
"METADATA\SIMULATION\ECOSYSTEM\AIR\AIRTABLECOMMONLIZARD.MBIN",
"METADATA\SIMULATION\ECOSYSTEM\AIR\AIRTABLECOMMONSNAKE.MBIN",
"METADATA\SIMULATION\ECOSYSTEM\AIR\AIRTABLEFLYINGLIZARDONLY.MBIN",
"METADATA\SIMULATION\ECOSYSTEM\AIR\AIRTABLEFLYINGSNAKESONLY.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = "",   
							["MATH_OPERATION"] 		= "*",    
							["REPLACE_TYPE"] 		= "ALL",    
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IncreasedSpawnDistance",	SPAWNDISTANCE_MULTIPLIER}
							}
						}
					}-------------------------------------------------------------------------------------------------------------
				}---------Code originally by InsaneRuffles in section above, modified by Lllasagna (*** = lasagna comment)--------
			}---------------------------------------------------------------------------------------------------------------------
		},
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.59B126E2.pak", --globals
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCCREATUREGLOBALS.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxCreatureSize",		GLOBAL_MAX_CREATURE_SIZE },
							}
						},
					}
				},
			}
		},
	}	
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PAST THIS POINT HERE