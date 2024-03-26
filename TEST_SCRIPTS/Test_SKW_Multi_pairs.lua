NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "Test_SKW_Multi_pairs.pak",
["MOD_AUTHOR"]    = "Wbertro",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "ALL",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\INVENTORYTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Dropship", "GcInventoryGenerationBaseStatData.xml", "C", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_DAMAGE"},
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"Min", "70"},
                                {"Max", "70"},
                            }
                        },
                    }
                },
            }
        }
    } --2 global replacements
}