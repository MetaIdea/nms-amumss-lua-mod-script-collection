NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "SIR - PlanetNameFix.pak",
["MOD_DESCRIPTION"] = "Fixes the first characters of planetary names being cut off in exotic/scientific vessel types",
["MOD_AUTHOR"]      = "VirtualVoyager",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "4.48",
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
                    }
                }
            }
        }
    }
}