NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "SIR-ShipHUD-Lines-NoLines.pak",
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
                    ["MBIN_FILE_SOURCE"] = "GCUIGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SpaceMapLineWidth", "0"},
                            }
                        },
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SpaceMapLineBaseScale", "0"},
                            }
                        },
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SpaceMapLineBaseFade", "0"},
                            }
                        },
                    }
                }
            }
        }
    }
}