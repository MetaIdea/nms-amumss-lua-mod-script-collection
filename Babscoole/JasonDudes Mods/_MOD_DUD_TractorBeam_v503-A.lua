NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "_MOD_DUD_TractorBeam_v503-A.pak",
["MOD_AUTHOR"]      = "jasondude7116",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "5.03",
["MOD_DESCRIPTION"] = "",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\INDUSTRIAL\ACCESSORIES\HANGARA\ENTITIES\HANGARA.ENTITY.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ApproachSpeed",                "60"},
                                {"PlayerAutoLandRange",          "200"},
                                {"TakeOffSpeed",                 "60"},
                                {"TakeOffBoost",                 "0"},
                                {"PostTakeOffExtraPlayerHeight", "0"},
                                {"PostTakeOffExtraPlayerSpeed",  "20"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\SPACE\SPACESTATION\SPACESTATION\ENTITIES\STATION.ENTITY.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"HasOwnGravity",       "True"},
                                {"ApproachSpeed",       "120"},
                                {"PlayerAutoLandRange", "300"},
                                {"LandingSpeed",        "5"},
                                {"TakeOffSpeed",        "120"},
                                {"TakeOffBoost",        "0"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\SPACE\SPACESTATION\SPACESTATIONTYPEB\ENTITIES\STATIONTYPEB.ENTITY.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"HasOwnGravity",       "True"},
                                {"ApproachSpeed",       "120"},
                                {"ApproachAngle",       "40"},
                                {"PlayerAutoLandRange", "300"},
                                {"LandingSpeed",        "5"},
                                {"TakeOffSpeed",        "120"},
                                {"TakeOffBoost",        "0"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\SPACE\SPACESTATION\SPACESTATION\ENTITIES\STATION_ABANDONED.ENTITY.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"HasOwnGravity",       "True"},
                                {"ApproachSpeed",       "120"},
                                {"ApproachAngle",       "40"},
                                {"PlayerAutoLandRange", "300"},
                                {"LandingSpeed",        "5"},
                                {"TakeOffSpeed",        "120"},
                                {"TakeOffBoost",        "0"},
                            }
                        },
                    }
                },
            }
        }
    }
}