NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "SIR - Ship Screens - Coordinate & Name Fix.pak",
["MOD_DESCRIPTION"] = "",
["MOD_AUTHOR"]      = "VirtualVoyager",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "4.08",
["GLOBAL_INTEGER_TO_FLOAT"] = "FORCE",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "UI\HUD\SHIP\SIDESCREENSOLARSYSTEM.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "PLANET"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PositionX", "40"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "DISCOVER"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PositionY", "131"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "DISTANCE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PositionY", "80"},
                            }
                        },
                    }
                }
            }
        }
    }
}