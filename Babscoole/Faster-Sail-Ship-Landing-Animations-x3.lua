NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "Faster-Sail-Ship-Landing-Animations-x3.pak",
["MOD_AUTHOR"]    = "Strange7",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "5.1",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\SAILSHIP\SAILSHIPPARTS\SAILSHIPANIMS\SAILSHIP_SHARED\ENTITIES\ROOTJNT.ENTITY.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Anim","TAKEOFF"},
                                {"Anim","LANDING"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Speed", "3"}
                            }
                        },
                    }
                },
            }
        }
    }
}