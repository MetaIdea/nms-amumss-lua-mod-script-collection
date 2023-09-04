--Must get the TEXTURES folder from the orignal .pak and place into ModScript\GlobalMEFTI

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]            = "_MOD_DUD_RainFX_v443-A.pak",
["MOD_AUTHOR"]              = "jasondude7116",
["LUA_AUTHOR"]              = "Babscoole",
["NMS_VERSION"]             = "4.43",
["GLOBAL_INTEGER_TO_FLOAT"] = "FORCE",
["MODIFICATIONS"]           =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"]  =
                    {
                        "MODELS\EFFECTS\HEAVYAIR\ALPINE\ALPINE2.HEAVYAIR.MBIN",
                        "MODELS\EFFECTS\HEAVYAIR\ALPINE\ALPINE3.HEAVYAIR.MBIN",
                        "MODELS\EFFECTS\HEAVYAIR\TOXIC\TOXICRAIN1.HEAVYAIR.MBIN",
                        "MODELS\EFFECTS\HEAVYAIR\TOXIC\TOXICRAIN2.HEAVYAIR.MBIN",
                    },
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NumberOfParticles", "600"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"AmplitudeMin","Vector3f.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "-1"},
                                {"y", "-1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"AmplitudeMax","Vector3f.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "1"},
                                {"y", "1"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"]  = "MODELS\EFFECTS\HEAVYAIR\SWAMP\SWAMP2.HEAVYAIR.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"AmplitudeMin","Vector3f.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "-1"},
                                {"y", "-1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"AmplitudeMax","Vector3f.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "1"},
                                {"y", "1"},
                            }
                        },
                    }
                },
            }
        },
    },
}