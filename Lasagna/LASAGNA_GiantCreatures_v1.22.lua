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
["MOD_FILENAME"] 			= "LASAGNA_GiantCreatures_v1.22.pak",
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
						["SPECIAL_KEY_WORDS"] = {"Id","FISH"},
						["MATH_OPERATION"] 		= "*",
						["INTEGER_TO_FLOAT"]    = "FORCE",
						["REPLACE_TYPE"] 		= "ALL",
						["VALUE_CHANGE_TABLE"] 	= 
							{	
								{ "MaxScale", 				UNDERWATER_ALL_OTHER_MAX_SCALE_SIZE }, --Original "1.2"
							}
						},
						{
						["SPECIAL_KEY_WORDS"] = {"Id","FISH"},
						["VALUE_CHANGE_TABLE"] 	= 
							{	
								{ "MaxCount",				CREATURE_MAXCOUNT },
							}
						},
						{
						["SPECIAL_KEY_WORDS"] = {"Id","FISHFLOCK"},
						["MATH_OPERATION"] 		= "*",
						["INTEGER_TO_FLOAT"]    = "FORCE",
						["REPLACE_TYPE"] 		= "ALL",
						["VALUE_CHANGE_TABLE"] 	= 
							{	
								{ "MaxScale", 				FISHFLOCK_MAX_SCALE_SIZE },
							}
						},
						{
						["SPECIAL_KEY_WORDS"] = {"Id","SWIMCOW"},
						["MATH_OPERATION"] 		= "*",
						["INTEGER_TO_FLOAT"]    = "FORCE",
						["REPLACE_TYPE"] 		= "ALL",
						["VALUE_CHANGE_TABLE"] 	= 
							{	
								{ "MaxScale", 				UNDERWATER_ALL_OTHER_MAX_SCALE_SIZE },
							}
						},
						{
						["SPECIAL_KEY_WORDS"] = {"Id","SWIMCOW"},
						["VALUE_CHANGE_TABLE"] 	= 
							{	
								{ "MaxCount",				CREATURE_MAXCOUNT },
							}
						},
						{
						["SPECIAL_KEY_WORDS"] = {"Id","SWIMRODENT"},
						["MATH_OPERATION"] 		= "*",
						["INTEGER_TO_FLOAT"]    = "FORCE",
						["REPLACE_TYPE"] 		= "ALL",
						["VALUE_CHANGE_TABLE"] 	= 
							{	
								{ "MaxScale", 				UNDERWATER_ALL_OTHER_MAX_SCALE_SIZE },
							}
						},
						{
						["SPECIAL_KEY_WORDS"] = {"Id","SWIMRODENT"},
						["VALUE_CHANGE_TABLE"] 	= 
							{	
								{ "MaxCount",				CREATURE_MAXCOUNT },
							}
						},
						{
						["SPECIAL_KEY_WORDS"] = {"Id","JELLYFISH"},
						["MATH_OPERATION"] 		= "*",
						["INTEGER_TO_FLOAT"]    = "FORCE",
						["REPLACE_TYPE"] 		= "ALL",
						["VALUE_CHANGE_TABLE"] 	= 
							{	
								{ "MaxScale", 				UNDERWATER_ALL_OTHER_MAX_SCALE_SIZE },
							}
						},
						{
						["SPECIAL_KEY_WORDS"] = {"Id","JELLYFISH"},
						["VALUE_CHANGE_TABLE"] 	= 
							{	
								{ "MaxCount",				CREATURE_MAXCOUNT },
							}
						},
						{
						["SPECIAL_KEY_WORDS"] = {"Id","SEASNAKE"},
						["MATH_OPERATION"] 		= "*",
						["INTEGER_TO_FLOAT"]    = "FORCE",
						["REPLACE_TYPE"] 		= "ALL",
						["VALUE_CHANGE_TABLE"] 	= 
							{	
								{ "MaxScale", 				UNDERWATER_ALL_OTHER_MAX_SCALE_SIZE },
							}
						},
						{
						["SPECIAL_KEY_WORDS"] = {"Id","SEASNAKE"},
						["VALUE_CHANGE_TABLE"] 	= 
							{	
								{ "MaxCount",				CREATURE_MAXCOUNT },
							}
						},
						{
						["SPECIAL_KEY_WORDS"] = {"Id","SHARK"},
						["MATH_OPERATION"] 		= "*",
						["INTEGER_TO_FLOAT"]    = "FORCE",
						["REPLACE_TYPE"] 		= "ALL",
						["VALUE_CHANGE_TABLE"] 	= 
							{	
								{ "MaxScale", 				UNDERWATER_ALL_OTHER_MAX_SCALE_SIZE },
							}
						},
						{
						["SPECIAL_KEY_WORDS"] = {"Id","SHARK"},
						["VALUE_CHANGE_TABLE"] 	= 
							{	
								{ "MaxCount",				CREATURE_MAXCOUNT_LARGE },
							}
						},
						{
						["SPECIAL_KEY_WORDS"] = {"Id","BUTTERFLOCK"},
						["MATH_OPERATION"] 		= "*",
						["INTEGER_TO_FLOAT"]    = "FORCE",
						["REPLACE_TYPE"] 		= "ALL",
						["VALUE_CHANGE_TABLE"] 	= 
							{	
								{ "MaxScale", 				BUTTERFLOCK_MAX_SCALE_SIZE },
							}
						},
						{
						["SPECIAL_KEY_WORDS"] = {"Id","FIENDFISHSMALL"},
						["MATH_OPERATION"] 		= "*",
						["INTEGER_TO_FLOAT"]    = "FORCE",
						["REPLACE_TYPE"] 		= "ALL",
						["VALUE_CHANGE_TABLE"] 	= 
							{	
								{ "MaxScale", 				UNDERWATER_ALL_OTHER_MAX_SCALE_SIZE },
							}
						},
						{
						["SPECIAL_KEY_WORDS"] = {"Id","FIENDFISHSMALL"},
						["VALUE_CHANGE_TABLE"] 	= 
							{	
								{ "MaxCount",				CREATURE_MAXCOUNT_SMALL },
							}
						},
						{
						["SPECIAL_KEY_WORDS"] = {"Id","FIENDFISHBIG"},
						["MATH_OPERATION"] 		= "*",
						["INTEGER_TO_FLOAT"]    = "FORCE",
						["REPLACE_TYPE"] 		= "ALL",
						["VALUE_CHANGE_TABLE"] 	= 
							{	
								{ "MaxScale", 				UNDERWATER_ALL_OTHER_MAX_SCALE_SIZE },
							}
						},
						{
						["SPECIAL_KEY_WORDS"] = {"Id","FIENDFISHBIG"},
						["VALUE_CHANGE_TABLE"] 	= 
							{	
								{ "MaxCount",				CREATURE_MAXCOUNT_LARGE },
							}
						},
						{
						["SPECIAL_KEY_WORDS"] = {"Id","CRAB"},
						["MATH_OPERATION"] 		= "*",
						["INTEGER_TO_FLOAT"]    = "FORCE",
						["REPLACE_TYPE"] 		= "ALL",
						["VALUE_CHANGE_TABLE"] 	= 
							{	
								{ "MaxScale", 				GROUND_AIR_ALL_OTHER_MAX_SCALE_SIZE },
							}
						},
						{
						["SPECIAL_KEY_WORDS"] = {"Id","CRAB"},
						["VALUE_CHANGE_TABLE"] 	= 
							{	
								{ "Herd", 					HERD_FALSE },
							}
						},
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
						["SPECIAL_KEY_WORDS"] = {"Id","BUTTERFLY"},
						["MATH_OPERATION"] 		= "*",
						["INTEGER_TO_FLOAT"]    = "FORCE",
						["REPLACE_TYPE"] 		= "ALL",
						["VALUE_CHANGE_TABLE"] 	= 
							{	
								{ "MaxScale", 				GROUND_AIR_SMALLER_MAX_SCALE_SIZE },
							}
						},
						{
						["SPECIAL_KEY_WORDS"] = {"Id","BUTTERFLY"},
						["VALUE_CHANGE_TABLE"] 	= 
							{	
								{ "MaxCount",				CREATURE_MAXCOUNT },
								{ "Herd", 					HERD_FALSE },
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
						["SPECIAL_KEY_WORDS"] = {"Id","LARGEBUTTERFLY"},
						["MATH_OPERATION"] 		= "*",
						["INTEGER_TO_FLOAT"]    = "FORCE",
						["REPLACE_TYPE"] 		= "ALL",
						["VALUE_CHANGE_TABLE"] 	= 
							{	
								{ "MaxScale", 				GROUND_AIR_ALL_OTHER_MAX_SCALE_SIZE },
							}
						},
						{
						["SPECIAL_KEY_WORDS"] = {"Id","LARGEBUTTERFLY"},
						["VALUE_CHANGE_TABLE"] 	= 
							{	
								{ "MaxCount",				CREATURE_MAXCOUNT },
								{ "Herd", 					HERD_FALSE },
							}
						},
						{
						["SPECIAL_KEY_WORDS"] = {"Id","FLYINGBEETLE"},
						["MATH_OPERATION"] 		= "*",
						["INTEGER_TO_FLOAT"]    = "FORCE",
						["REPLACE_TYPE"] 		= "ALL",
						["VALUE_CHANGE_TABLE"] 	= 
							{	
								{ "MaxScale", 				GROUND_AIR_ALL_OTHER_MAX_SCALE_SIZE },
							}
						},
						{
						["SPECIAL_KEY_WORDS"] = {"Id","FLYINGBEETLE"},
						["VALUE_CHANGE_TABLE"] 	= 
							{	
								{ "MaxCount",				CREATURE_MAXCOUNT_LARGE },
								{ "Herd", 					HERD_FALSE },
							}
						},
						{
						["SPECIAL_KEY_WORDS"] = {"Id","ANTELOPE"},
						["MATH_OPERATION"] 		= "*",
						["INTEGER_TO_FLOAT"]    = "FORCE",
						["REPLACE_TYPE"] 		= "ALL",
						["VALUE_CHANGE_TABLE"] 	= 
							{	
								{ "MaxScale", 				GROUND_AIR_ALL_OTHER_MAX_SCALE_SIZE },
							}
						},
						{
						["SPECIAL_KEY_WORDS"] = {"Id","ANTELOPE"},
						["VALUE_CHANGE_TABLE"] 	= 
							{	
								{ "Herd", 					HERD_FALSE },
							}
						},
						{
						["SPECIAL_KEY_WORDS"] = {"Id","ROBOTANTELOPE"},
						["MATH_OPERATION"] 		= "*",
						["INTEGER_TO_FLOAT"]    = "FORCE",
						["REPLACE_TYPE"] 		= "ALL",
						["VALUE_CHANGE_TABLE"] 	= 
							{	
								{ "MaxScale", 				GROUND_AIR_ALL_OTHER_MAX_SCALE_SIZE },
							}
						},
						{
						["SPECIAL_KEY_WORDS"] = {"Id","ROBOTANTELOPE"},
						["VALUE_CHANGE_TABLE"] 	= 
							{	
								{ "Herd", 					HERD_FALSE },
							}
						},
						{
						["SPECIAL_KEY_WORDS"] = {"Id","TRICERATOPS"},
						["MATH_OPERATION"] 		= "*",
						["INTEGER_TO_FLOAT"]    = "FORCE",
						["REPLACE_TYPE"] 		= "ALL",
						["VALUE_CHANGE_TABLE"] 	= 
							{	
								{ "MaxScale", 				GROUND_AIR_ALL_OTHER_MAX_SCALE_SIZE },
							}
						},
						{
						["SPECIAL_KEY_WORDS"] = {"Id","TRICERATOPS"},
						["VALUE_CHANGE_TABLE"] 	= 
							{	
								{ "Herd", 					HERD_FALSE },
							}
						},
						{
						["SPECIAL_KEY_WORDS"] = {"Id","RODENT"},
						["MATH_OPERATION"] 		= "*",
						["INTEGER_TO_FLOAT"]    = "FORCE",
						["REPLACE_TYPE"] 		= "ALL",
						["VALUE_CHANGE_TABLE"] 	= 
							{	
								{ "MaxScale", 				GROUND_AIR_ALL_OTHER_MAX_SCALE_SIZE },
							}
						},
						{
						["SPECIAL_KEY_WORDS"] = {"Id","RODENT"},
						["VALUE_CHANGE_TABLE"] 	= 
							{	
								{ "Herd", 					HERD_FALSE },
							}
						},
						{
						["SPECIAL_KEY_WORDS"] = {"Id","MOLE"},
						["MATH_OPERATION"] 		= "*",
						["INTEGER_TO_FLOAT"]    = "FORCE",
						["REPLACE_TYPE"] 		= "ALL",
						["VALUE_CHANGE_TABLE"] 	= 
							{	
								{ "MaxScale", 				GROUND_AIR_SMALLER_MAX_SCALE_SIZE },
							}
						},
						{
						["SPECIAL_KEY_WORDS"] = {"Id","MOLE"},
						["VALUE_CHANGE_TABLE"] 	= 
							{	
								{ "Herd", 					HERD_FALSE },
							}
						},
						{
						["SPECIAL_KEY_WORDS"] = {"Id","COW"},
						["MATH_OPERATION"] 		= "*",
						["INTEGER_TO_FLOAT"]    = "FORCE",
						["REPLACE_TYPE"] 		= "ALL",
						["VALUE_CHANGE_TABLE"] 	= 
							{	
								{ "MaxScale", 				GROUND_AIR_ALL_OTHER_MAX_SCALE_SIZE },
							}
						},
						{
						["SPECIAL_KEY_WORDS"] = {"Id","COW"},
						["VALUE_CHANGE_TABLE"] 	= 
							{	
								{ "Herd", 					HERD_FALSE },
							}
						},
						{
						["SPECIAL_KEY_WORDS"] = {"Id","CAT"},
						["MATH_OPERATION"] 		= "*",
						["INTEGER_TO_FLOAT"]    = "FORCE",
						["REPLACE_TYPE"] 		= "ALL",
						["VALUE_CHANGE_TABLE"] 	= 
							{	
								{ "MaxScale", 				GROUND_AIR_SMALLER_MAX_SCALE_SIZE },
							}
						},
						{
						["SPECIAL_KEY_WORDS"] = {"Id","CAT"},
						["VALUE_CHANGE_TABLE"] 	= 
							{	
								{ "Herd", 					HERD_FALSE },
							}
						},
						{
						["SPECIAL_KEY_WORDS"] = {"Id","BONECAT"},
						["MATH_OPERATION"] 		= "*",
						["INTEGER_TO_FLOAT"]    = "FORCE",
						["REPLACE_TYPE"] 		= "ALL",
						["VALUE_CHANGE_TABLE"] 	= 
							{	
								{ "MaxScale", 				GROUND_AIR_ALL_OTHER_MAX_SCALE_SIZE },
							}
						},
						{
						["SPECIAL_KEY_WORDS"] = {"Id","BONECAT"},
						["VALUE_CHANGE_TABLE"] 	= 
							{	
								{ "Herd", 					HERD_FALSE },
							}
						},
						{
						["SPECIAL_KEY_WORDS"] = {"Id","STRIDER"},
						["MATH_OPERATION"] 		= "*",
						["INTEGER_TO_FLOAT"]    = "FORCE",
						["REPLACE_TYPE"] 		= "ALL",
						["VALUE_CHANGE_TABLE"] 	= 
							{	
								{ "MaxScale", 				GROUND_AIR_ALL_OTHER_MAX_SCALE_SIZE },
							}
						},
						{
						["SPECIAL_KEY_WORDS"] = {"Id","STRIDER"},
						["VALUE_CHANGE_TABLE"] 	= 
							{	
								{ "Herd", 					HERD_FALSE },
							}
						},
						{
						["SPECIAL_KEY_WORDS"] = {"Id","TREX"},
						["MATH_OPERATION"] 		= "*",
						["INTEGER_TO_FLOAT"]    = "FORCE",
						["REPLACE_TYPE"] 		= "ALL",
						["VALUE_CHANGE_TABLE"] 	= 
							{	
								{ "MaxScale", 				GROUND_AIR_ALL_OTHER_MAX_SCALE_SIZE },
							}
						},
						{
						["SPECIAL_KEY_WORDS"] = {"Id","TREX"},
						["VALUE_CHANGE_TABLE"] 	= 
							{	
								{ "Herd", 					HERD_FALSE },
							}
						},
						{
						["SPECIAL_KEY_WORDS"] = {"Id","TWOLEGANTELOPE"},
						["MATH_OPERATION"] 		= "*",
						["INTEGER_TO_FLOAT"]    = "FORCE",
						["REPLACE_TYPE"] 		= "ALL",
						["VALUE_CHANGE_TABLE"] 	= 
							{	
								{ "MaxScale", 				GROUND_AIR_ALL_OTHER_MAX_SCALE_SIZE },
							}
						},
						{
						["SPECIAL_KEY_WORDS"] = {"Id","TWOLEGANTELOPE"},
						["VALUE_CHANGE_TABLE"] 	= 
							{	
								{ "Herd", 					HERD_FALSE },
							}
						},
						{
						["SPECIAL_KEY_WORDS"] = {"Id","SIXLEGCOW"},
						["MATH_OPERATION"] 		= "*",
						["INTEGER_TO_FLOAT"]    = "FORCE",
						["REPLACE_TYPE"] 		= "ALL",
						["VALUE_CHANGE_TABLE"] 	= 
							{	
								{ "MaxScale", 				GROUND_AIR_ALL_OTHER_MAX_SCALE_SIZE },
							}
						},
						{
						["SPECIAL_KEY_WORDS"] = {"Id","SIXLEGCOW"},
						["VALUE_CHANGE_TABLE"] 	= 
							{	
								{ "Herd", 					HERD_FALSE },
							}
						},
						{
						["SPECIAL_KEY_WORDS"] = {"Id","SIXLEGCAT"},
						["MATH_OPERATION"] 		= "*",
						["INTEGER_TO_FLOAT"]    = "FORCE",
						["REPLACE_TYPE"] 		= "ALL",
						["VALUE_CHANGE_TABLE"] 	= 
							{	
								{ "MaxScale", 				GROUND_AIR_ALL_OTHER_MAX_SCALE_SIZE },
							}
						},
						{
						["SPECIAL_KEY_WORDS"] = {"Id","SIXLEGCAT"},
						["VALUE_CHANGE_TABLE"] 	= 
							{	
								{ "Herd", 					HERD_FALSE },
							}
						},
						{
						["SPECIAL_KEY_WORDS"] = {"Id","GRUNT"},
						["MATH_OPERATION"] 		= "*",
						["INTEGER_TO_FLOAT"]    = "FORCE",
						["REPLACE_TYPE"] 		= "ALL",
						["VALUE_CHANGE_TABLE"] 	= 
							{	
								{ "MaxScale", 				GROUND_AIR_ALL_OTHER_MAX_SCALE_SIZE },
							}
						},
						{
						["SPECIAL_KEY_WORDS"] = {"Id","GRUNT"},
						["VALUE_CHANGE_TABLE"] 	= 
							{	
								{ "Herd", 					HERD_FALSE },
							}
						},
						{
						["SPECIAL_KEY_WORDS"] = {"Id","BLOB"},
						["MATH_OPERATION"] 		= "*",
						["INTEGER_TO_FLOAT"]    = "FORCE",
						["REPLACE_TYPE"] 		= "ALL",
						["VALUE_CHANGE_TABLE"] 	= 
							{	
								{ "MaxScale", 				GROUND_AIR_ALL_OTHER_MAX_SCALE_SIZE },
							}
						},
						{
						["SPECIAL_KEY_WORDS"] = {"Id","BLOB"},
						["VALUE_CHANGE_TABLE"] 	= 
							{	
								{ "Herd", 					HERD_FALSE },
							}
						},
						{
						["SPECIAL_KEY_WORDS"] = {"Id","SPIDER"},
						["MATH_OPERATION"] 		= "*",
						["INTEGER_TO_FLOAT"]    = "FORCE",
						["REPLACE_TYPE"] 		= "ALL",
						["VALUE_CHANGE_TABLE"] 	= 
							{	
								{ "MaxScale", 				GROUND_AIR_ALL_OTHER_MAX_SCALE_SIZE },
							}
						},
						{
						["SPECIAL_KEY_WORDS"] = {"Id","SPIDER"},
						["VALUE_CHANGE_TABLE"] 	= 
							{	
								{ "Herd", 					HERD_FALSE },
							}
						},
						{
						["SPECIAL_KEY_WORDS"] = {"Id","FLOATSPIDER"},
						["MATH_OPERATION"] 		= "*",
						["INTEGER_TO_FLOAT"]    = "FORCE",
						["REPLACE_TYPE"] 		= "ALL",
						["VALUE_CHANGE_TABLE"] 	= 
							{	
								{ "MaxScale", 				GROUND_AIR_ALL_OTHER_MAX_SCALE_SIZE },
							}
						},
						{
						["SPECIAL_KEY_WORDS"] = {"Id","FLOATSPIDER"},
						["VALUE_CHANGE_TABLE"] 	= 
							{	
								{ "Herd", 					HERD_FALSE },
							}
						},
						{
						["SPECIAL_KEY_WORDS"] = {"Id","PROTOROLLER"},
						["MATH_OPERATION"] 		= "*",
						["INTEGER_TO_FLOAT"]    = "FORCE",
						["REPLACE_TYPE"] 		= "ALL",
						["VALUE_CHANGE_TABLE"] 	= 
							{	
								{ "MaxScale", 				GROUND_AIR_SMALLER_MAX_SCALE_SIZE },
							}
						},
						{
						["SPECIAL_KEY_WORDS"] = {"Id","PROTOROLLER"},
						["VALUE_CHANGE_TABLE"] 	= 
							{	
								{ "Herd", 					HERD_FALSE },
							}
						},
						{
						["SPECIAL_KEY_WORDS"] = {"Id","PROTOFLYER"},
						["MATH_OPERATION"] 		= "*",
						["INTEGER_TO_FLOAT"]    = "FORCE",
						["REPLACE_TYPE"] 		= "ALL",
						["VALUE_CHANGE_TABLE"] 	= 
							{	
								{ "MaxScale", 				GROUND_AIR_SMALLER_MAX_SCALE_SIZE },
							}
						},
						{
						["SPECIAL_KEY_WORDS"] = {"Id","PROTOFLYER"},
						["VALUE_CHANGE_TABLE"] 	= 
							{	
								{ "Herd", 					HERD_FALSE },
								{ "MaxCount",				CREATURE_MAXCOUNT },
							}
						},
						{
						["SPECIAL_KEY_WORDS"] = {"Id","PROTODIGGER"},
						["MATH_OPERATION"] 		= "*",
						["INTEGER_TO_FLOAT"]    = "FORCE",
						["REPLACE_TYPE"] 		= "ALL",
						["VALUE_CHANGE_TABLE"] 	= 
							{	
								{ "MaxScale", 				PROTODIGGER_MAX_SCALE_SIZE },
							}
						},
						{
						["SPECIAL_KEY_WORDS"] = {"Id","PROTODIGGER"},
						["VALUE_CHANGE_TABLE"] 	= 
							{	
								{ "Herd", 					HERD_FALSE },
							}
						},
						{
						["SPECIAL_KEY_WORDS"] = {"Id","PLOUGH"},
						["MATH_OPERATION"] 		= "*",
						["INTEGER_TO_FLOAT"]    = "FORCE",
						["REPLACE_TYPE"] 		= "ALL",
						["VALUE_CHANGE_TABLE"] 	= 
							{	
								{ "MaxScale", 				GROUND_AIR_SMALLER_MAX_SCALE_SIZE },
							}
						},
						{
						["SPECIAL_KEY_WORDS"] = {"Id","PLOUGH"},
						["VALUE_CHANGE_TABLE"] 	= 
							{	
								{ "Herd", 					HERD_FALSE },
							}
						},
						{
						["SPECIAL_KEY_WORDS"] = {"Id","DRILL"},
						["MATH_OPERATION"] 		= "*",
						["INTEGER_TO_FLOAT"]    = "FORCE",
						["REPLACE_TYPE"] 		= "ALL",
						["VALUE_CHANGE_TABLE"] 	= 
							{	
								{ "MaxScale", 				GROUND_AIR_SMALLER_MAX_SCALE_SIZE },
							}
						},
						{
						["SPECIAL_KEY_WORDS"] = {"Id","DRILL"},
						["VALUE_CHANGE_TABLE"] 	= 
							{	
								{ "Herd", 					HERD_FALSE },
								{ "MaxCount",				CREATURE_MAXCOUNT },
							}
						},
						{
						["SPECIAL_KEY_WORDS"] = {"Id","WEIRDROLL"},
						["MATH_OPERATION"] 		= "*",
						["INTEGER_TO_FLOAT"]    = "FORCE",
						["REPLACE_TYPE"] 		= "ALL",
						["VALUE_CHANGE_TABLE"] 	= 
							{	
								{ "MaxScale", 				GROUND_AIR_SMALLER_MAX_SCALE_SIZE },
							}
						},
						{
						["SPECIAL_KEY_WORDS"] = {"Id","WEIRDROLL"},
						["VALUE_CHANGE_TABLE"] 	= 
							{	
								{ "Herd", 					HERD_FALSE },
							}
						},
						{
						["SPECIAL_KEY_WORDS"] = {"Id","WEIRDFLOAT"},
						["MATH_OPERATION"] 		= "*",
						["INTEGER_TO_FLOAT"]    = "FORCE",
						["REPLACE_TYPE"] 		= "ALL",
						["VALUE_CHANGE_TABLE"] 	= 
							{	
								{ "MaxScale", 				GROUND_AIR_ALL_OTHER_MAX_SCALE_SIZE },
							}
						},
						{
						["SPECIAL_KEY_WORDS"] = {"Id","WEIRDFLOAT"},
						["VALUE_CHANGE_TABLE"] 	= 
							{	
								{ "Herd", 					HERD_FALSE },
							}
						},
						{
						["SPECIAL_KEY_WORDS"] = {"Id","WEIRDCRYSTAL"},
						["MATH_OPERATION"] 		= "*",
						["INTEGER_TO_FLOAT"]    = "FORCE",
						["REPLACE_TYPE"] 		= "ALL",
						["VALUE_CHANGE_TABLE"] 	= 
							{	
								{ "MaxScale", 				GROUND_AIR_ALL_OTHER_MAX_SCALE_SIZE },
							}
						},
						{
						["SPECIAL_KEY_WORDS"] = {"Id","WEIRDCRYSTAL"},
						["VALUE_CHANGE_TABLE"] 	= 
							{	
								{ "Herd", 					HERD_FALSE },
							}
						},
						{
						["SPECIAL_KEY_WORDS"] = {"Id","WEIRDBUTTERFLY"},
						["MATH_OPERATION"] 		= "*",
						["INTEGER_TO_FLOAT"]    = "FORCE",
						["REPLACE_TYPE"] 		= "ALL",
						["VALUE_CHANGE_TABLE"] 	= 
							{	
								{ "MaxScale", 				GROUND_AIR_SMALLER_MAX_SCALE_SIZE },
							}
						},
						{
						["SPECIAL_KEY_WORDS"] = {"Id","WEIRDBUTTERFLY"},
						["VALUE_CHANGE_TABLE"] 	= 
							{	
								{ "Herd", 					HERD_FALSE },
								{ "MaxCount",				CREATURE_MAXCOUNT },
							}
						},
						{
						["SPECIAL_KEY_WORDS"] = {"Id","FIEND"},
						["MATH_OPERATION"] 		= "*",
						["INTEGER_TO_FLOAT"]    = "FORCE",
						["REPLACE_TYPE"] 		= "ALL",
						["VALUE_CHANGE_TABLE"] 	= 
							{	
								{ "MaxScale", 				GROUND_AIR_ALL_OTHER_MAX_SCALE_SIZE },
							}
						},
						{
						["SPECIAL_KEY_WORDS"] = {"Id","FIEND"},
						["VALUE_CHANGE_TABLE"] 	= 
							{	
								{ "Herd", 					HERD_FALSE },
							}
						},
						{
						["SPECIAL_KEY_WORDS"] = {"Id","SCUTTLER"},
						["MATH_OPERATION"] 		= "*",
						["INTEGER_TO_FLOAT"]    = "FORCE",
						["REPLACE_TYPE"] 		= "ALL",
						["VALUE_CHANGE_TABLE"] 	= 
							{	
								{ "MaxScale", 				GROUND_AIR_ALL_OTHER_MAX_SCALE_SIZE },
							}
						},
						{
						["SPECIAL_KEY_WORDS"] = {"Id","SCUTTLER"},
						["VALUE_CHANGE_TABLE"] 	= 
							{	
								{ "Herd", 					HERD_FALSE },
							}
						},
						{
						["SPECIAL_KEY_WORDS"] = {"Id","SLUG"},
						["MATH_OPERATION"] 		= "*",
						["INTEGER_TO_FLOAT"]    = "FORCE",
						["REPLACE_TYPE"] 		= "ALL",
						["VALUE_CHANGE_TABLE"] 	= 
							{	
								{ "MaxScale", 				GROUND_AIR_ALL_OTHER_MAX_SCALE_SIZE },
							}
						},
						{
						["SPECIAL_KEY_WORDS"] = {"Id","SLUG"},
						["VALUE_CHANGE_TABLE"] 	= 
							{	
								{ "Herd", 					HERD_FALSE },
							}
						},
						{
						["SPECIAL_KEY_WORDS"] = {"Id","MINIFIEND"},
						["MATH_OPERATION"] 		= "*",
						["INTEGER_TO_FLOAT"]    = "FORCE",
						["REPLACE_TYPE"] 		= "ALL",
						["VALUE_CHANGE_TABLE"] 	= 
							{	
								{ "MaxScale", 				GROUND_AIR_ALL_OTHER_MAX_SCALE_SIZE },
							}
						},
						{
						["SPECIAL_KEY_WORDS"] = {"Id","MINIFIEND"},
						["VALUE_CHANGE_TABLE"] 	= 
							{	
								{ "Herd", 					HERD_FALSE },
							}
						},
						{
						["SPECIAL_KEY_WORDS"] = {"Id","FLOATER"},
						["MATH_OPERATION"] 		= "*",
						["INTEGER_TO_FLOAT"]    = "FORCE",
						["REPLACE_TYPE"] 		= "ALL",
						["VALUE_CHANGE_TABLE"] 	= 
							{	
								{ "MaxScale", 				GROUND_AIR_ALL_OTHER_MAX_SCALE_SIZE },
							}
						},
						{
						["SPECIAL_KEY_WORDS"] = {"Id","FLOATER"},
						["VALUE_CHANGE_TABLE"] 	= 
							{	
								{ "Herd", 					HERD_FALSE },
								{ "MaxCount",				CREATURE_MAXCOUNT_SMALL },
							}
						},
						{
						["SPECIAL_KEY_WORDS"] = {"Id","MINIDRONE"},
						["MATH_OPERATION"] 		= "*",
						["INTEGER_TO_FLOAT"]    = "FORCE",
						["REPLACE_TYPE"] 		= "ALL",
						["VALUE_CHANGE_TABLE"] 	= 
							{	
								{ "MaxScale", 				GROUND_AIR_ALL_OTHER_MAX_SCALE_SIZE },
							}
						},
						{
						["SPECIAL_KEY_WORDS"] = {"Id","MINIDRONE"},
						["VALUE_CHANGE_TABLE"] 	= 
							{	
								{ "Herd", 					HERD_FALSE },
								{ "MaxCount",				CREATURE_MAXCOUNT_SMALL },
							}
						},
						{
						["SPECIAL_KEY_WORDS"] = {"Id","ROCKCREATURE"},
						["MATH_OPERATION"] 		= "*",
						["INTEGER_TO_FLOAT"]    = "FORCE",
						["REPLACE_TYPE"] 		= "ALL",
						["VALUE_CHANGE_TABLE"] 	= 
							{	
								{ "MaxScale", 				GROUND_AIR_ALL_OTHER_MAX_SCALE_SIZE },
							}
						},
						{
						["SPECIAL_KEY_WORDS"] = {"Id","ROCKCREATURE"},
						["VALUE_CHANGE_TABLE"] 	= 
							{	
								{ "Herd", 					HERD_FALSE },
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
						{
							["PRECEDING_KEY_WORDS"] = "",
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
							["SPECIAL_KEY_WORDS"] = {"Anim","RUN"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 		= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"AnimSpeed",			ANIM_SPEED_SCALE_MULTIPLIER },
								{"MinSpeedScale",		MIN_SPEED_SCALE_MULTIPLIER },
								{"MaxSpeedScale",		MAX_SPEED_SCALE_MULTIPLIER },
							}
						},
						-- { --v2.3: commented out, stops some creature from moving completely
							-- ["PRECEDING_KEY_WORDS"] = "",
							-- ["MATH_OPERATION"] 		= "*",
							-- ["INTEGER_TO_FLOAT"]    = "FORCE",
							-- ["REPLACE_TYPE"] 		= "ALL",
							-- ["VALUE_MATCH"] 		= "",
							-- ["VALUE_CHANGE_TABLE"] 	= 
							-- {
								-- {"MoveSpeedScale",	 MOVE_SPEED_SCALE },
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
"METADATA\SIMULATION\ECOSYSTEM\CAVE\CAVETABLECOMMON.MBIN",
"METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEALIEN.MBIN",
"METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEBONE.MBIN",
"METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEBUTTERFLY.MBIN",
"METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEHERBIVOREGIANT.MBIN",
"METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEHERBIVORELARGE.MBIN",
"METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEHERBIVOREMED.MBIN",
"METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEHERBIVORESMALL.MBIN",
"METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEHERDMED.MBIN",
"METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEMAYBEBUTTERFLY.MBIN",
"METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEPLAYERPREDATORLARGE.MBIN",
"METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEPLAYERPREDATORMED.MBIN",
"METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEPREDATORLARGE.MBIN",
"METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEPREDATORMED.MBIN",
"METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEROBOT.MBIN",
"METADATA\SIMULATION\ECOSYSTEM\GROUND\TEST\GROUNDTABLEBUTTERFLOCK.MBIN",
"METADATA\SIMULATION\ECOSYSTEM\GROUND\TEST\GROUNDTABLEBUTTERFLY.MBIN",
"METADATA\SIMULATION\ECOSYSTEM\GROUND\TEST\GROUNDTABLEDIGGER.MBIN",
"METADATA\SIMULATION\ECOSYSTEM\GROUND\TEST\GROUNDTABLEDRILL.MBIN",
"METADATA\SIMULATION\ECOSYSTEM\GROUND\TEST\GROUNDTABLEFLOATER.MBIN",
"METADATA\SIMULATION\ECOSYSTEM\GROUND\TEST\GROUNDTABLEFLYINGBEETLE.MBIN",
"METADATA\SIMULATION\ECOSYSTEM\GROUND\TEST\GROUNDTABLELARGEBUTTERFLY.MBIN",
"METADATA\SIMULATION\ECOSYSTEM\GROUND\TEST\GROUNDTABLEMOLE.MBIN",
"METADATA\SIMULATION\ECOSYSTEM\GROUND\TEST\GROUNDTABLEPETS.MBIN",
"METADATA\SIMULATION\ECOSYSTEM\GROUND\TEST\GROUNDTABLEPLOW.MBIN",
"METADATA\SIMULATION\ECOSYSTEM\GROUND\TEST\GROUNDTABLERIDEABLE.MBIN",
"METADATA\SIMULATION\ECOSYSTEM\GROUND\TEST\GROUNDTABLERIDEABLE2.MBIN",
"METADATA\SIMULATION\ECOSYSTEM\GROUND\TEST\GROUNDTABLERIDEABLE3.MBIN",
"METADATA\SIMULATION\ECOSYSTEM\GROUND\TEST\GROUNDTABLEROLLER.MBIN",
"METADATA\SIMULATION\ECOSYSTEM\GROUND\TEST\GROUNDTABLESMALLBIRD.MBIN",
"METADATA\SIMULATION\ECOSYSTEM\GROUND\TEST\GROUNDTABLETEST.MBIN",
"METADATA\SIMULATION\ECOSYSTEM\GROUND\WEIRD\GROUNDTABLEWEIRDBUTTERFLY.MBIN",
"METADATA\SIMULATION\ECOSYSTEM\GROUND\WEIRD\GROUNDTABLEWEIRDCRYSTAL.MBIN",
"METADATA\SIMULATION\ECOSYSTEM\GROUND\WEIRD\GROUNDTABLEWEIRDCRYSTALPREDATOR.MBIN",
"METADATA\SIMULATION\ECOSYSTEM\GROUND\WEIRD\GROUNDTABLEWEIRDFLOAT.MBIN",
"METADATA\SIMULATION\ECOSYSTEM\GROUND\WEIRD\GROUNDTABLEWEIRDROLL.MBIN",
"METADATA\SIMULATION\ECOSYSTEM\GROUND\WEIRD\GROUNDTABLEWEIRDROLLPREDATOR.MBIN",
"METADATA\SIMULATION\ECOSYSTEM\UNDERWATER\TEST\UNDERWATERTABLEFLOCK.MBIN",
"METADATA\SIMULATION\ECOSYSTEM\UNDERWATER\TEST\UNDERWATERTABLEFLOCK2.MBIN",
"METADATA\SIMULATION\ECOSYSTEM\UNDERWATER\TEST\UNDERWATERTABLEFLOCK3.MBIN",
"METADATA\SIMULATION\ECOSYSTEM\UNDERWATER\TEST\UNDERWATERTABLEFLOCKSHARK.MBIN",
"METADATA\SIMULATION\ECOSYSTEM\UNDERWATER\TEST\UNDERWATERTABLEJELLYFISH.MBIN",
"METADATA\SIMULATION\ECOSYSTEM\UNDERWATER\TEST\UNDERWATERTABLESHARKEATSNAKE.MBIN",
"METADATA\SIMULATION\ECOSYSTEM\UNDERWATER\UNDERWATERTABLECOMMON.MBIN",
"METADATA\SIMULATION\ECOSYSTEM\UNDERWATER\UNDERWATERTABLECRABS.MBIN"
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