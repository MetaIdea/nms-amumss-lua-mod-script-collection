NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "FreePortals.pak",
["MOD_AUTHOR"]    = "Burryaga",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "3.70",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PORTAL\PORTAL\ENTITIES\BUTTON.ENTITY.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"TEMPLATE", "GcMaintenanceComponentData.xml"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"CompletionRequirement", "NoRequirement"},
                            }
                        },
                    }
                },
            }
        }
    }
}