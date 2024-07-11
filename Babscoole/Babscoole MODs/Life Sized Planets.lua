NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]            = "Life Sized Planets.pak",
["MOD_DESCRIPTION"]         = "Big Planets",
["MOD_AUTHOR"]              = "",
["LUA_AUTHOR"]              = "Babscoole",
["NMS_VERSION"]             = "4.45",
["GLOBAL_INTEGER_TO_FLOAT"] = "FORCE",
["MODIFICATIONS"]           =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] =
                    {
                        "MODELS\SPACE\PLANETS\PLANET.SCENE.MBIN",
                        "MODELS\SPACE\PLANETS\PLANETMESH.SCENE.MBIN",
                        "MODELS\SPACE\PLANETS\PLANETWATER.SCENE.MBIN",
                    },
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ScaleX", "518.76"},
                                {"ScaleY", "518.76"},
                                {"ScaleZ", "518.76"},
                            }
                        },
                    }
                }
            }
        }
    }
}