NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "npc.pak",
["MOD_DESCRIPTION"] = "Separates normal and trap npc signals from the Minotaur scanning",
["MOD_AUTHOR"]      = "Princess of Evil",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "4.63",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SCANNING\SCANEVENTTABLEVEHICLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "DISTRESS_NPC"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"OSDMessage",     "SIGNAL_UNKNOWN"},
                                {"TooltipMessage", "TIP_UNKNOWN"},
                            },
                        },
                    }
                }
            }
        }
    }
}