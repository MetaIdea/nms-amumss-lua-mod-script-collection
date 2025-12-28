NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Universal Hatred - Robots",
["MOD_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.18",
["MOD_DESCRIPTION"] = "Make Robot creatures predatory to players",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEROBOT.MBIN",
                    ["MXML_CHANGE_TABLE"] = 
                    {
                        {
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"CreatureRole", "PlayerPredator"},
                            }
                        },
                    }
                },
            }
        }
    }
}