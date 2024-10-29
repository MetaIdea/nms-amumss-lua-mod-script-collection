NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"] = "_electricity10x.pak",
["MOD_AUTHOR"] = "zernot1984",
["LUA_AUTHOR"] = "X00LA",
["NMS_VERSION"] = "5.12",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] = {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\BASEBUILDINGOBJECTSTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = "",
                            ["SPECIAL_KEY_WORDS"] = {{"Storage", "180000"}},
                            ["VALUE_CHANGE_TABLE"] = {{"Storage", "1800000"}}
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = "",
                            ["SPECIAL_KEY_WORDS"] = {{"Storage", "45000"}},
                            ["VALUE_CHANGE_TABLE"] = {{"Storage", "450000"}}
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = "",
                            ["SPECIAL_KEY_WORDS"] = {{"DependsOnEnvironment", "DayNight"}},
                            ["VALUE_CHANGE_TABLE"] = {{"DependsOnEnvironment", "None"}}
                        },
                    }
                },
            }
        },
    }
}
