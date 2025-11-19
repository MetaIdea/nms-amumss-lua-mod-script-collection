NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "Full Engine Flames for Sentinel Ships",
["MOD_AUTHOR"]    = "beihaixingchen",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "6.16",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"]  = "MODELS\COMMON\SPACECRAFT\SENTINELSHIP\SENTINELSHIP_PROC.DESCRIPTOR.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Id", "_ENGINEFLAME_2"},
                                {"Id", "_ENGINEFLAME_3"},
                                {"Id", "_ENGINEFLAME_4"},
                                {"Id", "_ENGINEFLAME_5"},
                                {"Id", "_ENGINEFLAME_6"},
                                {"Id", "_ENGINEFLAME_7"},
                                {"Id", "_ENGINEFLAME_2B"},
                                {"Id", "_ENGINEFLAME_3B"},
                                {"Id", "_ENGINEFLAME_4B"},
                                {"Id", "_ENGINEFLAME_5B"},
                                {"Id", "_ENGINEFLAME_6B"},
                                {"Id", "_ENGINEFLAME_7B"},
                            },
                            ["PRECEDING_KEY_WORDS"] = {"ReferencePaths"},
                            ["REPLACE_TYPE"] = "ONCEINSIDE", 
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ReferencePaths", "MODELS/COMMON/SPACECRAFT/SENTINELSHIP/PARTS/ENGINEFLAMEBODY1.SCENE.MBIN"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"]  = "MODELS\COMMON\SPACECRAFT\SENTINELSHIP\SENTINELSHIP_PROC.SCENE.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "_ENGINEFLAME_2", "Name", "SCENEGRAPH"},
                                {"Name", "_ENGINEFLAME_3", "Name", "SCENEGRAPH"},
                                {"Name", "_ENGINEFLAME_4", "Name", "SCENEGRAPH"},
                                {"Name", "_ENGINEFLAME_5", "Name", "SCENEGRAPH"},
                                {"Name", "_ENGINEFLAME_6", "Name", "SCENEGRAPH"},
                                {"Name", "_ENGINEFLAME_7", "Name", "SCENEGRAPH"},
                                {"Name", "_ENGINEFLAME_2b", "Name", "SCENEGRAPH"},
                                {"Name", "_ENGINEFLAME_3b", "Name", "SCENEGRAPH"},
                                {"Name", "_ENGINEFLAME_4b", "Name", "SCENEGRAPH"},
                                {"Name", "_ENGINEFLAME_5b", "Name", "SCENEGRAPH"},
                                {"Name", "_ENGINEFLAME_6b", "Name", "SCENEGRAPH"},
                                {"Name", "_ENGINEFLAME_7b", "Name", "SCENEGRAPH"},
                            },
                            ["REPLACE_TYPE"] = "ONCEINSIDE", 
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "MODELS\COMMON\SPACECRAFT\SENTINELSHIP\PARTS\ENGINEFLAMEBODY1.SCENE.MBIN"},
                            }
                        },
                    }
                },
            }
        }
    }
}