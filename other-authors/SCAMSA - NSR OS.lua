--EDITABLE SECTION BEGINS HERE--

--Mod Settings

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
["MOD_FILENAME"] 			= "SCAMSA - NSR OS.pak",
["MOD_AUTHOR"]				= "musty123",
["NMS_VERSION"]				= "3.53",
["MOD_DESCRIPTION"]			= "Every generated ship, multi-tool and freighter will be S class and have maxed inventories.",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
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