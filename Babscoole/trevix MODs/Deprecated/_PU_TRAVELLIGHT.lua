NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]            = "_PU_TRAVELLIGHT.pak",
["MOD_DESCRIPTION"]         = "",
["MOD_AUTHOR"]              = "trevix",
["LUA_AUTHOR"]              = "Babscoole",
["NMS_VERSION"]             = "4.45",
["GLOBAL_INTEGER_TO_FLOAT"] = "FORCE",
["MODIFICATIONS"]           =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\PLAYER\PLAYERCHARACTER\PLAYERCHARACTER.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "_Chest_Builders1"},
                                {"Name", "_Chest_Builders2"},
                                {"Name", "_Chest_Builders3"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TransY", "0.01"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "_Backpack_Vanilla"},
                                {"Name", "B2BaseSkirt"},
                                {"Name", "SUB1B2BaseSkirt"},
                                {"Name", "B2Chesttech"},
                                {"Name", "SUB1B2Chesttech"},
                                {"Name", "SUB2B2Chesttech"},
                                {"Name", "SUB3B2Chesttech"},
                                {"Name", "B2tech1"},
                                {"Name", "b2Techbelt"},
                                {"Name", "B3Tech"},
                                {"Name", "b3Techbelt"},
                                {"Name", "B4Skirt"},
                                {"Name", "SUB1B4Skirt"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ScaleX", "0"},
                                {"ScaleY", "0"},
                                {"ScaleZ", "0"},
                            }
                        },
                    }
                },
            }
        }
    }
}