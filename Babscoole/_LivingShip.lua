NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "_LivingShip.pak",
["MOD_AUTHOR"]    = "Dude4Fockman",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.65",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\MISSIONS\TABLES\SPACEPOIMISSIONTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Message","UI_BIO_SHIP_MISSION1_MSG3"},
                                {"Message","UI_BIO_SHIP_MISSION2_MSG3"},
                                {"Message","UI_BIO_SHIP_MISSION3_MSG3"},
                                {"Message","UI_BIO_SHIP_MISSION4_MSG3"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Time", "900"}
                            }
                        },
                    }
                },
            }
        }
    }
}