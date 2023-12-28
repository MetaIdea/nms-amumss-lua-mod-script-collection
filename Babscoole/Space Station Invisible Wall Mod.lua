NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "Space Station Invisible Wall Mod.pak",
["MOD_AUTHOR"]    = "JovianStone",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.45",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\ENTRANCESECTION.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Type", "COLLISION", "Name", "HEIGHT"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "0.5"},
                            }
                        },
                    }
                },
            }
        },
    }
}