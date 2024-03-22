--  For use with AMUMSS 4.0 + only
NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "Living Ship Mission Timer (2 Hours).pak",
["MOD_AUTHOR"]    = "Framby",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "3.99",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CT"] =
            {
                {
                    ["MBIN_FS"] = "METADATA\SIMULATION\MISSIONS\SPACEPOIMISSIONTABLE.MBIN",
                    ["EXML_CT"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Message", "UI_BIO_SHIP_MISSION1_MSG3"},
                                {"Message", "UI_BIO_SHIP_MISSION2_MSG3"},
                                {"Message", "UI_BIO_SHIP_MISSION3_MSG3"},
                                {"Message", "UI_BIO_SHIP_MISSION4_MSG3"},
                            },
                            ["VCT"] =
                            {
                                {"Time", "7200"}
                            }
                        },
                    }
                },
            }
        }
    }
}