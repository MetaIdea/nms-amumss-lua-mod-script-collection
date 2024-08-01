local modfilename = "NoCameraAutoCenter_511"
local lua_author = "clawdius25 & Silent369"
local lua_version = "1.2"
local mod_author = "clawdius25"
local nms_version = "5.03.0"
local maintenance = mod_author
local description = [[

Disable Camera Auto-Center

]]

NMS_MOD_DEFINITION_CONTAINER =
    {
        ["MOD_FILENAME"]= string.format("%s%s.pak", modfilename, "v"..lua_version),
        ["LUA_AUTHOR"] = lua_author,
        ["MOD_AUTHOR"] = mod_author,
        ["NMS_VERSION"] = nms_version,
        ["MOD_DESCRIPTION"]= description,
        ["MOD_MAINTENANCE"]= maintenance,
        ["MODIFICATIONS"] =
            {
                {
                    ["MBIN_CHANGE_TABLE"] =
                    {
                        {
                        ["MBIN_FILE_SOURCE"] = {"GCCAMERAGLOBALS.GLOBAL.MBIN"},
                        ["EXML_CHANGE_TABLE"] =
                        {
                            {
                                ["SPECIAL_KEY_WORDS"]= {
                                    {"CharacterUnarmedCam", "GcCameraFollowSettings.xml"},
                                    {"CharacterRunCam", "GcCameraFollowSettings.xml"},
                                    {"CharacterCombatCam", "GcCameraFollowSettings.xml"},
                                    {"CharacterMiningCam", "GcCameraFollowSettings.xml"},
                                    {"CharacterIndoorCam", "GcCameraFollowSettings.xml"},
                                    {"CharacterAbandCombatCam", "GcCameraFollowSettings.xml"},
                                    {"CharacterAbandCam", "GcCameraFollowSettings.xml"},
                                    {"CharacterNexusCam", "GcCameraFollowSettings.xml"},
                                    {"CharacterAirborneCam", "GcCameraFollowSettings.xml"},
                                    {"CharacterMeleeBoostCam", "GcCameraFollowSettings.xml"},
                                    {"CharacterRocketBootsCam", "GcCameraFollowSettings.xml"},
                                    {"CharacterRocketBootsChargeCam", "GcCameraFollowSettings.xml"},
                                    {"CharacterFallingCam", "GcCameraFollowSettings.xml"},
                                    {"CharacterAirborneCombatCam", "GcCameraFollowSettings.xml"},
                                    {"CharacterSpaceCam", "GcCameraFollowSettings.xml"},
                                    {"CharacterSteepSlopeCam", "GcCameraFollowSettings.xml"},
                                    {"CharacterUnderwaterCam", "GcCameraFollowSettings.xml"},
                                    {"CharacterUnderwaterCombatCam", "GcCameraFollowSettings.xml"},
                                    {"CharacterUnderwaterJetpackCam", "GcCameraFollowSettings.xml"},
                                    {"CharacterGrabbedCam", "GcCameraFollowSettings.xml"},
                                    {"CharacterSitCam", "GcCameraFollowSettings.xml"},
                                    {"CharacterRideCam", "GcCameraFollowSettings.xml"},
                                    {"CharacterRideCamMedium", "GcCameraFollowSettings.xml"},
                                    {"CharacterRideCamLarge", "GcCameraFollowSettings.xml"},
                                    {"CharacterRideCamHuge", "GcCameraFollowSettings.xml"},
                                },
                                ["INTEGER_TO_FLOAT"] = "FORCE",
                                ["REPLACE_TYPE"] = "ALLINSECTION",
                                ["VALUE_CHANGE_TABLE"] =
                                {
                                    {"VertRotationMin",-80},
                                    {"VertRotationMax", 80},
                                    {"SpringSpeed",0},
                                    {"CenterStartTime", 0},
                                    {"CenterBlendTime", 0},
                                    {"CenterMaxSpring", 0},
                                    {"CenterMaxSpeed",0},
                                    {"CenterStartSpeed", 0},
                                    {"UseSpeedBasedSpring", "False"},
									{"LockToObjectOnIdle", "False"}
                                }
                            }
                        }
                        },
                    }
                },
            }
    }