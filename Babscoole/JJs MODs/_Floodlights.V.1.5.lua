NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "_Floodlights.V.1.5.pak",
["MOD_AUTHOR"]    = "JJHookah",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.21",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\EXTERIORPROPS\FLOODLIGHTS.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
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
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["NOTICE_OFF"] = "TRUE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NameHash",  "422545419"},
                                {"Type",      "LIGHT"},
                                {"Transform", "TkTransformData.xml"},
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