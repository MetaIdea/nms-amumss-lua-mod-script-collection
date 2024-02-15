NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"] = "AltF4_SquareSCSlots.pak",
    ["MOD_AUTHOR"] = "AltF4",
    ["LUA_AUTHOR"] = "AltF4",
    ["NMS_VERSION"] = "4.50",
    ["MOD_DESCRIPTION"] = "Make the generated ships, multitools, freighters have square super charged slots.",
    ["MODIFICATIONS"] = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\INVENTORYTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = "SpecialTechSlotMaxIndex",
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_MATCH"] = "",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"X", "1"},
                                {"Y", "1"},
                            }
                        },
                    }
                },
            },
        },
    }
}