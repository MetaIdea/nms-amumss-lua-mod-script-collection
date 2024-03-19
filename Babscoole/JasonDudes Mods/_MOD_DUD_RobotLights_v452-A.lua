NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]            = "_MOD_DUD_RobotLights_v452-A.pak",
["MOD_AUTHOR"]              = "jasondude7116",
["LUA_AUTHOR"]              = "Babscoole",
["NMS_VERSION"]             = "4.52",
["GLOBAL_INTEGER_TO_FLOAT"] = "FORCE",
["MODIFICATIONS"]           =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\ROBOTS\CORRUPTEDDRONE.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "AttackSpotLight"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotX", "-20"}
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "AttackSpotLight", "Name", "FOV"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "60.000000"}
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "AttackSpotLight", "Name", "FALLOFF"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "linear"}
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "AttackSpotLight", "Name", "FALLOFF_RATE"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "1.000000"}
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "AttackSpotLight", "Name", "INTENSITY"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "20000.000000"}
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "spotLight3"},
                                {"Name", "spotLight4"},
                                {"Name", "spotLight5"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotX", "-20"}
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "spotLight3", "Name", "FOV"},
                                {"Name", "spotLight4", "Name", "FOV"},
                                {"Name", "spotLight5", "Name", "FOV"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "50.000000"}
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "spotLight3", "Name", "FALLOFF_RATE"},
                                {"Name", "spotLight4", "Name", "FALLOFF_RATE"},
                                {"Name", "spotLight5", "Name", "FALLOFF_RATE"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "1.000000"}
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "spotLight3", "Name", "INTENSITY"},
                                {"Name", "spotLight4", "Name", "INTENSITY"},
                                {"Name", "spotLight5", "Name", "INTENSITY"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "10000"}
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "spotLight3", "Name", "VOLUMETRIC"},
                                {"Name", "spotLight4", "Name", "VOLUMETRIC"},
                                {"Name", "spotLight5", "Name", "VOLUMETRIC"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "0.500000"}
                            },
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = 
                    {
                        "MODELS\COMMON\ROBOTS\DRONE.SCENE.MBIN",
                        "MODELS\COMMON\ROBOTS\DRONEARMOURED.SCENE.MBIN",
                        "MODELS\COMMON\ROBOTS\DRONEMEDIC.SCENE.MBIN",
                        "MODELS\COMMON\ROBOTS\DRONESUMMONER.SCENE.MBIN",
                        "MODELS\COMMON\ROBOTS\FRIENDLYDRONE.SCENE.MBIN",
                    },
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "PatrolSpotLight"},
                                {"Name", "AttackSpotLight"},
                                {"Name", "InvestSpotLight"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotX", "-20"}
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "PatrolSpotLight", "Name", "FOV"},
                                {"Name", "AttackSpotLight", "Name", "FOV"},
                                {"Name", "InvestSpotLight", "Name", "FOV"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "60.000000"}
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "PatrolSpotLight", "Name", "FALLOFF"},
                                {"Name", "AttackSpotLight", "Name", "FALLOFF"},
                                {"Name", "InvestSpotLight", "Name", "FALLOFF"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "linear"}
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "PatrolSpotLight", "Name", "FALLOFF_RATE"},
                                {"Name", "AttackSpotLight", "Name", "FALLOFF_RATE"},
                                {"Name", "InvestSpotLight", "Name", "FALLOFF_RATE"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "1.000000"}
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "PatrolSpotLight", "Name", "INTENSITY"},
                                {"Name", "AttackSpotLight", "Name", "INTENSITY"},
                                {"Name", "InvestSpotLight", "Name", "INTENSITY"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "20000.000000"}
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "spotLight2"},
                                {"Name", "spotLight3"},
                                {"Name", "spotLight1"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotX", "-20"}
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "spotLight2", "Name", "FOV"},
                                {"Name", "spotLight3", "Name", "FOV"},
                                {"Name", "spotLight1", "Name", "FOV"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "50.000000"}
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "spotLight2", "Name", "FALLOFF_RATE"},
                                {"Name", "spotLight3", "Name", "FALLOFF_RATE"},
                                {"Name", "spotLight1", "Name", "FALLOFF_RATE"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "1.000000"}
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "spotLight2", "Name", "INTENSITY"},
                                {"Name", "spotLight3", "Name", "INTENSITY"},
                                {"Name", "spotLight1", "Name", "INTENSITY"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "10000"}
                            },
                        },
                    }
                },
                -- {
                    -- ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\ROBOTS\FRIENDLYDRONE.SCENE.MBIN",
                    -- ["EXML_CHANGE_TABLE"] =
                    -- {
                        -- {
                            -- ["SPECIAL_KEY_WORDS"] =
                            -- {
                                -- {"Name", "Attack"},
                                -- {"Name", "Investigate"},
                            -- },
                            -- ["REMOVE"] = "SECTION"
                        -- },
                        -- {
                            -- ["SPECIAL_KEY_WORDS"] =
                            -- {
                                -- {"Name", "PatrolSpotLight",  "Name", "COL_R"},
                                -- {"Name", "PatrolSpotLight",  "Name", "COL_B"},
                                -- {"Name", "PatrolSpotLight",  "Name", "COL_G"},
                                -- {"Name", "PatrolPointLight", "Name", "COL_R"},
                                -- {"Name", "PatrolPointLight", "Name", "COL_B"},
                                -- {"Name", "PatrolPointLight", "Name", "COL_G"},
                                -- {"Name", "spotLight2",       "Name", "COL_R"},
                                -- {"Name", "spotLight2",       "Name", "COL_B"},
                                -- {"Name", "spotLight2",       "Name", "COL_G"},
                            -- },
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"Value", "0.95"}
                            -- },
                        -- }, 
                    -- }
                -- },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\ROBOTS\HOVERPET.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "PatrolSpotLight"},
                                {"Name", "AttackSpotLight"},
                                {"Name", "InvestSpotLight"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotX", "-20"}
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "PatrolSpotLight", "Name", "FOV"},
                                {"Name", "AttackSpotLight", "Name", "FOV"},
                                {"Name", "InvestSpotLight", "Name", "FOV"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "60.000000"}
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "PatrolSpotLight", "Name", "FALLOFF"},
                                {"Name", "AttackSpotLight", "Name", "FALLOFF"},
                                {"Name", "InvestSpotLight", "Name", "FALLOFF"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "linear"}
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "PatrolSpotLight", "Name", "FALLOFF_RATE"},
                                {"Name", "AttackSpotLight", "Name", "FALLOFF_RATE"},
                                {"Name", "InvestSpotLight", "Name", "FALLOFF_RATE"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "1.000000"}
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "PatrolSpotLight", "Name", "INTENSITY"},
                                {"Name", "AttackSpotLight", "Name", "INTENSITY"},
                                {"Name", "InvestSpotLight", "Name", "INTENSITY"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "20000.000000"}
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "spotLight4"},
                                {"Name", "spotLight5"},
                                {"Name", "spotLight6"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotX", "-20"}
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "spotLight4", "Name", "FOV"},
                                {"Name", "spotLight5", "Name", "FOV"},
                                {"Name", "spotLight6", "Name", "FOV"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "50.000000"}
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "spotLight4", "Name", "FALLOFF_RATE"},
                                {"Name", "spotLight5", "Name", "FALLOFF_RATE"},
                                {"Name", "spotLight6", "Name", "FALLOFF_RATE"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "1.000000"}
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "spotLight4", "Name", "INTENSITY"},
                                {"Name", "spotLight5", "Name", "INTENSITY"},
                                {"Name", "spotLight6", "Name", "INTENSITY"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "10000"}
                            },
                        },
                        -- {
                            -- ["SPECIAL_KEY_WORDS"] =
                            -- {
                                -- {"Name", "Attack"},
                                -- {"Name", "Investigate"},
                            -- },
                            -- ["REMOVE"] = "SECTION"
                        -- },
                        -- {
                            -- ["SPECIAL_KEY_WORDS"] =
                            -- {
                                -- {"Name", "PatrolSpotLight",  "Name", "COL_R"},
                                -- {"Name", "PatrolSpotLight",  "Name", "COL_B"},
                                -- {"Name", "PatrolSpotLight",  "Name", "COL_G"},
                                -- {"Name", "PatrolPointLight", "Name", "COL_R"},
                                -- {"Name", "PatrolPointLight", "Name", "COL_B"},
                                -- {"Name", "PatrolPointLight", "Name", "COL_G"},
                                -- {"Name", "spotLight4",       "Name", "COL_R"},
                                -- {"Name", "spotLight4",       "Name", "COL_B"},
                                -- {"Name", "spotLight4",       "Name", "COL_G"},
                            -- },
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"Value", "0.95"}
                            -- },
                        -- },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = 
                    {
                        "MODELS\COMMON\ROBOTS\QUADRUPED.SCENE.MBIN",
                        "MODELS\COMMON\ROBOTS\QUADRUPEDPET.SCENE.MBIN",
                    },
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "PatrolSpotLight"},
                                {"Name", "AttackSpotLight"},
                                {"Name", "InvestSpotLight1"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotX", "-15"}
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "PatrolSpotLight", "Name", "FOV"},
                                {"Name", "AttackSpotLight", "Name", "FOV"},
                                {"Name", "InvestSpotLight1", "Name", "FOV"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "60.000000"}
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "PatrolSpotLight", "Name", "FALLOFF"},
                                {"Name", "AttackSpotLight", "Name", "FALLOFF"},
                                {"Name", "InvestSpotLight1", "Name", "FALLOFF"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "linear"}
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "PatrolSpotLight", "Name", "FALLOFF_RATE"},
                                {"Name", "AttackSpotLight", "Name", "FALLOFF_RATE"},
                                {"Name", "InvestSpotLight1", "Name", "FALLOFF_RATE"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "1.000000"}
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "PatrolSpotLight", "Name", "INTENSITY"},
                                {"Name", "AttackSpotLight", "Name", "INTENSITY"},
                                {"Name", "InvestSpotLight1", "Name", "INTENSITY"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "25000.000000"}
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "spotLight1"},
                                {"Name", "spotLight3"},
                                {"Name", "spotLight2"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotX", "-10.613295"}
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "spotLight1", "Name", "FALLOFF_RATE"},
                                {"Name", "spotLight3", "Name", "FALLOFF_RATE"},
                                {"Name", "spotLight2", "Name", "FALLOFF_RATE"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "1.000000"}
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "spotLight1", "Name", "INTENSITY"},
                                {"Name", "spotLight3", "Name", "INTENSITY"},
                                {"Name", "spotLight2", "Name", "INTENSITY"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "10000"}
                            },
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\ROBOTS\QUADRUPEDPET.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        -- {
                            -- ["SPECIAL_KEY_WORDS"] =
                            -- {
                                -- {"Name", "Attack"},
                                -- {"Name", "Investigate"},
                            -- },
                            -- ["REMOVE"] = "SECTION"
                        -- },
                        -- {
                            -- ["SPECIAL_KEY_WORDS"] =
                            -- {
                                -- {"Name", "PatrolSpotLight",  "Name", "COL_R"},
                                -- {"Name", "PatrolSpotLight",  "Name", "COL_B"},
                                -- {"Name", "PatrolSpotLight",  "Name", "COL_G"},
                                -- {"Name", "PatrolPointLight", "Name", "COL_R"},
                                -- {"Name", "PatrolPointLight", "Name", "COL_B"},
                                -- {"Name", "PatrolPointLight", "Name", "COL_G"},
                                -- {"Name", "spotLight2",       "Name", "COL_R"},
                                -- {"Name", "spotLight2",       "Name", "COL_B"},
                                -- {"Name", "spotLight2",       "Name", "COL_G"},
                            -- },
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"Value", "0.95"}
                            -- },
                        -- }, 
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "InvestSpotLight1", "Name", "FALLOFF"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "InvestSpotLi"}
                            },
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = 
                    {
                        "MODELS\COMMON\ROBOTS\SPIDER_QUADRUPED.SCENE.MBIN",
                        "MODELS\COMMON\ROBOTS\SPIDER_SMALLQUAD.SCENE.MBIN",
                    },
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "InvestSpotLight2"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotX", "-15"}
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "InvestSpotLight2", "Name", "FOV"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "60.000000"}
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "InvestSpotLight2", "Name", "FALLOFF"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "linear"}
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "InvestSpotLight2", "Name", "FALLOFF_RATE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "1.000000"}
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "InvestSpotLight2", "Name", "INTENSITY"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "25000.000000"}
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "spotLight4"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotX", "-10.613295"}
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "spotLight4", "Name", "FALLOFF_RATE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "1.000000"}
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "spotLight4", "Name", "INTENSITY"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "10000"}
                            },
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\ROBOTS\WALKER.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "PatrolSpotLight2"},
                                {"Name", "AttackSpotLight"},
                                {"Name", "InvestSpotLight1"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotX", "-20"}
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "PatrolSpotLight2", "Name", "FOV"},
                                {"Name", "AttackSpotLight", "Name", "FOV"},
                                {"Name", "InvestSpotLight1", "Name", "FOV"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "60.000000"}
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "PatrolSpotLight2", "Name", "FALLOFF"},
                                {"Name", "AttackSpotLight", "Name", "FALLOFF"},
                                {"Name", "InvestSpotLight1", "Name", "FALLOFF"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "linear"}
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "PatrolSpotLight2", "Name", "FALLOFF_RATE"},
                                {"Name", "AttackSpotLight", "Name", "FALLOFF_RATE"},
                                {"Name", "InvestSpotLight1", "Name", "FALLOFF_RATE"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "1.000000"}
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "PatrolSpotLight2", "Name", "INTENSITY"},
                                {"Name", "AttackSpotLight", "Name", "INTENSITY"},
                                {"Name", "InvestSpotLight1", "Name", "INTENSITY"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "25000.000000"}
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "spotLight1"},
                                {"Name", "spotLight3"},
                                {"Name", "spotLight2"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotX", "-20"}
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "spotLight1", "Name", "FALLOFF_RATE"},
                                {"Name", "spotLight3", "Name", "FALLOFF_RATE"},
                                {"Name", "spotLight2", "Name", "FALLOFF_RATE"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "1.000000"}
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "spotLight1", "Name", "INTENSITY"},
                                {"Name", "spotLight3", "Name", "INTENSITY"},
                                {"Name", "spotLight2", "Name", "INTENSITY"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "10000"}
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "spotLight1", "Name", "VOLUMETRIC"},
                                {"Name", "spotLight3", "Name", "VOLUMETRIC"},
                                {"Name", "spotLight2", "Name", "VOLUMETRIC"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "0.500000"}
                            },
                        },
                    }
                },
            }
        },
    },
}