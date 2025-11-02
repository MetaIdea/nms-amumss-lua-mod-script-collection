NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "Floodlights.V.2.0",
["MOD_AUTHOR"]    = "JJHookah",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "6.12",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\EXTERIORPROPS\FLOODLIGHTS.SCENE.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "spotLight1", "Name", "FOV"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "180.000000"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "spotLight1", "Name", "INTENSITY"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "100000.000000"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight1"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NameHash",  "422545419"},
                                {"Type",      "LIGHT"},
                                {"Transform", "TkTransformData"},
                                {"TransX",    "0"},
                                {"TransY",    "6.432164"},
                                {"TransZ",    "1.028947"},
                                {"RotX",      "43.179752"},
                                {"RotY",      "180"},
                                {"RotZ",      "180"},
                                {"Name",      "spotLight2"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "spotLight2", "Name", "FOV"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "180.000000"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "spotLight2", "Name", "FALLOFF"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "linear"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "spotLight2", "Name", "INTENSITY"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "40000.000000"},
                            }
                        },
                    },
                },
            },
        },
    },
}