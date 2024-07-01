NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "_NumFixCN.pak",
["MOD_AUTHOR"]    = "ffeeee1",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.63",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"]  = "UI\SLOTS\SLOT_ITEM.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "MAX", "Layout", "GcNGuiLayoutData.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PositionX", "102"},
                                {"Width",     "150"},
                            }
                        },
                    }
                },
            }
        }
    }
}