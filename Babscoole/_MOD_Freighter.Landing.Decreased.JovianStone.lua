NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "_MOD_Freighter.Landing.Decreased.JovianStone.pak",
["MOD_AUTHOR"]    = "JovianStone",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "1.58",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\INDUSTRIAL\ACCESSORIES\HANGARA\ENTITIES\HANGARA.ENTITY.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Template", "GcOutpostComponentData.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SpaceStation",         "False"},
                                {"HasOwnGravity",        "True"},
                                {"CircleRadius",         "500"},
                                {"ApproachRange",        "45"},
                                {"ApproachAngle",        "45"},
                                {"ApproachSpeed",        "60"},
                                {"PlayerAutoLandRange",  "500"},
                                {"LandingSpeed",         "5"},
                                {"LandingHeight",        "6"},
                                {"RotateToDock",         "True"},
                                {"TakeOffHeight",        "5.5"},
                                {"TakeOffFwdDist",       "0"},
                                {"TakeOffAlignTime",     "1"},
                                {"TakeOffSpeed",         "80"},
                                {"TakeOffBoost",         "0"},
                                {"TakeOffExtraAIHeight", "0.5"},
                            }
                        },
                    }
                },
            }
        }
    }
}