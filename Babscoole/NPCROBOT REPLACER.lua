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
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"NPCModelNames", "Traders"},
                                {"NPCModelNames", "Warriors"},
                                {"NPCModelNames", "Explorers"},
                                {"NPCModelNames", "Diplomats"},
                                {"NPCModelNames", "Exotics"},
                                {"NPCModelNames", "Builders"},
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