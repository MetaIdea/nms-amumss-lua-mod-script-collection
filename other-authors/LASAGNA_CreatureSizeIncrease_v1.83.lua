UNDERWATER_ALL_OTHER_MAX_SCALE_SIZE = 8
FISHFLOCK_MAX_SCALE_SIZE = 2 --glitch if too big
BUTTERFLOCK_MAX_SCALE_SIZE = 1 --glitch if too big
SANDWORM_MAX_SCALE_SIZE = 2
GROUND_AIR_SMALLER_MAX_SCALE_SIZE = 8
GROUND_AIR_ALL_OTHER_MAX_SCALE_SIZE = 25 --moon-sized creatures if too big
PROTODIGGER_MAX_SCALE_SIZE = 3 --Octopus legs

GLOBAL_MAX_CREATURE_SIZE = 25 --global variable, overrides many creatures i.e. ground

CREATURE_MINCOUNT = 0.5 --changes

-------------------------------
SPAWNDISTANCE_MULTIPLIER = 4 --creatures spawn distance multiplier --**This line is code by InsaneRuffles**
-------------------------------
NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "LASAGNA_CreatureSizeIncrease_v1.83.pak",
["MOD_AUTHOR"]				= "Mjjstral_Modified_By_Lllasagna_With_InsaneRuffles_Script",
["NMS_VERSION"]				= "3.68",
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
						["SPECIAL_KEY_WORDS"] = {"Id","SANDWORM"},
						["MATH_OPERATION"] 		= "*",
						["INTEGER_TO_FLOAT"]    = "FORCE",
						["REPLACE_TYPE"] 		= "ALL",
						["VALUE_CHANGE_TABLE"] 	= 
							{	
								{ "MaxScale", 				SANDWORM_MAX_SCALE_SIZE },
							}
						},
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
					}
				},-----------------------------------------------------------------------------------------------------------
				{-----------Code by InsaneRuffles in section below, modified by Lllasagna (*** = lasagna comment)------------
					["MBIN_FILE_SOURCE"] 	= 
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
					}--------------------------------------------------------------------------------------------------------
				}-----------Code by InsaneRuffles in section above, modified by Lllasagna (*** = lasagna comment)------------
			}
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
								{"MinRideSize",		1 	},
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