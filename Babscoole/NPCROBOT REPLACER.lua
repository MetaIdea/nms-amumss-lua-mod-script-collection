NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "NPCROBOT.pak",
["MOD_AUTHOR"]    = "ThatBomberBoi",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.30",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\NPCS\NPCSPAWNTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Traders",   "NMSString0x80.xml"},
                                {"Warriors",  "NMSString0x80.xml"},
                                {"Explorers", "NMSString0x80.xml"},
                                {"Diplomats", "NMSString0x80.xml"},
                                {"Exotics",   "NMSString0x80.xml"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "MODELS/COMMON/PLAYER/PLAYERCHARACTER/NPCROBOT.SCENE.MBIN"},
                            }
                        },
                    }
                },
            }
        }
    }
}