-- GlobalMEFTI\FONTS\GAME\NMSHARMONYOSSANSFONTREGULAR.TTF

NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"] = "AltF4_HarmonyOSSansfont_Regular",
    ["MOD_AUTHOR"] = "AltF4",
    ["LUA_AUTHOR"] = "AltF4",
    ["NMS_VERSION"] = "5.51",
    ["MOD_DESCRIPTION"] = "Replace the Simplified Chinese fonts.",
    ["MODIFICATIONS"] = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                {
                    ["MBIN_FILE_SOURCE"] = "FONTS\FONTTABLE.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename","FONTS/GAME/CHINESESIMPFONT.TTC"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Filename","FONTS/GAME/NMSHARMONYOSSANSFONTREGULAR.TTF"},
                            }
                        },
                    }
                },
            },
        },
    }
}