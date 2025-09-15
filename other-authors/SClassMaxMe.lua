NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]  = "SClassMaxMe.pak",
["MOD_AUTHOR"]    = "Unclejuju",
["LUA_AUTHOR"]    = "Capital System Freighter lua by potatiustotalis, updated by dudemiustotalis, permission to include and enhance given by dudemiustotalis",
["MOD_DESCRIPTION"]	= "S Class Capital Freighter with max slots will spawn in the system and all Ships and Regular Freighters are also S Class with max slots",
["NMS_VERSION"]   = "6.04 Voyagers",
["MODIFICATIONS"] =
--Capital System Freighter lua begins in its original mod begins here
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SCENE\EXPERIENCESPAWNTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = "AmbientSpawns",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"WarpIn", "True"},	--Original "False"
                            }
                        },
					}
				},	
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SCENE\EXPERIENCESPAWNTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = "AmbientSpawns",
							["VALUE_CHANGE_TABLE"] =
                            {
                                {"AIShipRole", "CapitalFreighter"},	--Original "Freighter"
                            }
                        },
                    }
                },
--Capital System Freighter lua ends
--Everything S Class with Max Inventory begins
				{
					["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\INVENTORYTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] = 
					{
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ClassProbabilities"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] = 
							{
                                { "C", "0"},
                                { "B", "0"},
                                { "A", "0"},
                                { "S", "100"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MaxInventoryCapacity"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] = 
							{
                                { "C", "120"},
                                { "B", "120"},
                                { "A", "120"},
                                { "S", "120"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = 
							{
                                {"SciSmall"},
                                {"SciMedium"},
                                {"SciLarge"},
                                {"FgtSmall"},
                                {"FgtMedium"},
                                {"FgtLarge"},
                                {"ShuSmall"},
                                {"ShtMedium"},
                                {"ShtLarge"},
                                {"DrpSmall"},
                                {"DrpMedium"},
                                {"DrpLarge"},
                                {"RoySmall"},
                                {"RoyMedium"},
                                {"RoyLarge"},
                                {"AlienSmall"},
                                {"AlienMedium"},
                                {"AlienLarge"},
                                {"SailSmall"},
                                {"SailMedium"},
                                {"SailLarge"},
                                {"RobotSmall"},
                                {"RobotMedium"},
                                {"RobotLarge"},
								{"FreighterSmall"},
                                {"FreighterMedium"},
                                {"FreighterLarge"},
                            },
                            ["VALUE_CHANGE_TABLE"] = 
							{
                                {"MinSlots", "120"},
                                {"MaxSlots", "120"},
                                {"MinTechSlots", "60"},
                                {"MaxTechSlots", "60"},
                            }
                        },
					}
				}	
            }
        },
    }
}
--END