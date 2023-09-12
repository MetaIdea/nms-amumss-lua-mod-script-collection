--EDITABLE SECTION BEGINS HERE--

--Mod Settings

--Living Ship Generation Weight
--Anything above 0 has a chance to generate living ship, the higher the number the higher the chance. (Use values like 100, 50, 25, 10 etc.)
--Set 0 if you want to disable living ships landing on space stations

LivingShipChance	=	100

--Sail Ship Generation Weight
--Anything above 0 has a chance to generate living ship, the higher the number the higher the chance. (Use values like 100, 50, 25, 10 etc.)
--Set 0 if you want to disable living ships landing on space stations

SailShipChance	=	100

--Ship spawn probabilities by class.
--The sum of values below shouldn't exceed 100% chance.

SClassChancePercent	=	100
AClassChancePercent	=	0
BClassChancePercent	=	0
CClassChancePercent	=	0

--EDITABLE SECTION ENDS HERE--

--UNEDITABLE SECTION STARTS HERE--

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Only S Class.pak",
["MOD_AUTHOR"]				= "musty123",
["NMS_VERSION"]				= "4.44",
["MOD_DESCRIPTION"]			= "Every generated ship, multi-tool and freighter will be S class.",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					--STARSHIP GENERATION TYPES--
					["MBIN_FILE_SOURCE"] 	= 
					{
						"GCSOLARGENERATIONGLOBALS.GLOBAL.MBIN"
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
							{
							["PRECEDING_KEY_WORDS"] = "",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 		= "", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "Freighter",	"0" },
								{ "Dropship",	"100" },
								{ "Fighter",	"100" },
								{ "Scientific",	"100" },
								{ "Shuttle",	"100" },
								{ "PlayerFreighter",	"0" },
								{ "Royal",	"100" },
								{ "Alien",	LivingShipChance },
								{ "Sail",	SailShipChance },
							}
							},
					}
				},
				--SHIP INVENTORY DATA--
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"METADATA\REALITY\TABLES\INVENTORYTABLE.MBIN"
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
							{
							["PRECEDING_KEY_WORDS"] = "ClassMultiplier",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 		= "", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "C",	CClassChancePercent },
								{ "B",	BClassChancePercent },
								{ "A",	AClassChancePercent },
								{ "S",	SClassChancePercent },
							}
							},
							{
							["PRECEDING_KEY_WORDS"] = "ClassProbabilities",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 		= "", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "C",	CClassChancePercent },
								{ "B",	BClassChancePercent },
								{ "A",	AClassChancePercent },
								{ "S",	SClassChancePercent },
							}
							},							
					}
				}
			}
		},
	}	
}
--UNEDITABLE SECTION ENDS HERE--