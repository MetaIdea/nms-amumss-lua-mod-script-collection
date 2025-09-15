NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "_planetdistance",
["MOD_AUTHOR"]    = "Nero2258",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "3.53",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCSOLARGENERATIONGLOBALS.GLOBAL.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"SolarSystemSize"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"X", "98388610"}, --Original "8388608"
                                {"Y", "99524290"}, --Original "524288"
                                {"Z", "98388610"}, --Original "8388608"
                            }
                        },
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Solar System Maximum Radius",        "9999999"}, --Original "500000"
                                {"Solar System Maximum Radius Massive", "9999999"}, --Original "1000000"
                                {"Generate Maximum Solar System",      "True"},    --Original "False"
                            }
                        }
                    }
                }
            }
        }
    }
}
