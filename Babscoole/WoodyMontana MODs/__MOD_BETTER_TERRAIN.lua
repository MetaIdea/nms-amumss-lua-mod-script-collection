NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "__MOD_BETTER_TERRAIN.pak",
["MOD_AUTHOR"]    = "WoodyMontana",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.50",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCTERRAINGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"HeightBlend",                   "0"},     -- Original  "0.5"
                                {"SmoothStepBelow",               "0"},     -- Original  "0.2"
                                {"SmoothStepAbove",               "0"},     -- Original  "0.2"
                                {"SmoothStepStrength",            "0"},     -- Original  "1"
                                {"TileBlendMultiplier",           "0"},     -- Original  "1"
                                {"DebugLockTerrainSettingsIndex", "False"}, -- Original  "True"
                            }
                        },
                    }
                },
            }
        },
    }
}