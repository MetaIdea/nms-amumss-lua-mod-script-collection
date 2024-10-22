NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "_AstralCreatures.pak",
["MOD_AUTHOR"]    = "AstralNut",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "5.03",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCCREATUREGLOBALS.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"EnableFlyingSnakeTails",           "True"},
                                {"SmallCreatureFleePlayerDistance",  "1.5"},
                                {"LargeCreatureFleePlayerDistance",  "0.5"},
                                {"LargeCreatureAvoidPlayerDistance", "10"},
                                {"AllowSleeping",                    "True"},
                            }
                        },
                    }
                },
            }
        }
    }
}