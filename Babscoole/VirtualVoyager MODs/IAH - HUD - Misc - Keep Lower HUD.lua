NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "IAH - HUD - Misc - Keep Lower HUD.pak",
["MOD_AUTHOR"]      = "VirtualVoyager",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "4.23",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"]  = "\UI\HUD\HUDHAZARD.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IsHidden", "True"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"]  = "\UI\HUD\HUDHAZARD.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID","HAZARD"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IsHidden", "False"},
                            }
                        },
                    }
                },
            }
        }
    }
}