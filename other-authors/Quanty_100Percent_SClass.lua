-- No Man's Sky – 100% S-Class Mod
-- AMUMSS source script
-- Forces generated ships, multi-tools, freighters and frigates to use S-class probability weights only.

NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"]    = "Quanty_100Percent_SClass.pak",
    ["MOD_AUTHOR"]      = "Quanty101ion",
    ["LUA_AUTHOR"]      = "ChatGPT",
    ["NMS_VERSION"]     = "6.18",
    ["MOD_DESCRIPTION"] = "Forces generated ships, multi-tools, freighters and frigates to spawn as S-class.",

    ["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                -- Keeps player-built starships at S class as well.
                {
                    ["MBIN_FILE_SOURCE"] = "GCBUILDABLESHIPGLOBALS.GLOBAL.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Class"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"InventoryClass", "S"},
                            },
                        },
                    },
                },

                -- Global inventory-class probability table used by generated equipment.
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\\REALITY\\TABLES\\INVENTORYTABLE.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ClassProbabilities"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"C", "0"},
                                {"B", "0"},
                                {"A", "0"},
                                {"S", "100"},
                            },
                        },
                    },
                },
            },
        },
    },
}
