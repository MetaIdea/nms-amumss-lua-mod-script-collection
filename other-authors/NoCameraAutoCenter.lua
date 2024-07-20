modName = "NCAC"
gameVersion = "501"

NMS_MOD_DEFINITION_CONTAINER = {
    MOD_FILENAME = modName.."_"..gameVersion..".pak",
    MOD_DESCRIPTION = "Disable camera auto center",
    MOD_AUTHOR = "aditya25",
    LUA_AUTHOR = "aditya25",
    NMS_VERSION = gameVersion,
    GLOBAL_INTEGER_TO_FLOAT = "FORCE",
    MODIFICATIONS = {
        {
            MBIN_CHANGE_TABLE = {
                {
                    MBIN_FILE_SOURCE = "GCCAMERAGLOBALS.GLOBAL.MBIN",
                    EXML_CHANGE_TABLE = {
                        {
                            PRECEDING_KEY_WORDS = "CharacterUnarmedCam",
                            VALUE_CHANGE_TABLE = {
                                {"CenterStartTime", 0},
                                {"CenterBlendingTime", 0},
                                {"CenterMaxSpring", 0},
                                {"CenterMaxSpeed", 0},
                                {"CenterStartSpeed", 0},
                                {"UseSpeedBasedSpring", "False"},
                                {"SpringSpeed", 0},
                                {"VertRotationMin", -80},
                                {"VertRotationMax", 80}
                            }
                        },
                        {
                            PRECEDING_KEY_WORDS = "CharacterRunCam",
                            VALUE_CHANGE_TABLE = {
                                {"CenterStartTime", 0},
                                {"CenterBlendingTime", 0},
                                {"CenterMaxSpring", 0},
                                {"CenterMaxSpeed", 0},
                                {"CenterStartSpeed", 0},
                                {"UseSpeedBasedSpring", "False"},
                                {"SpringSpeed", 0},
                                {"VertRotationMin", -80},
                                {"VertRotationMax", 80}
                            }
                        },
                        {
                            PRECEDING_KEY_WORDS = "CharacterCombatCam",
                            VALUE_CHANGE_TABLE = {
                                {"CenterStartTime", 0},
                                {"CenterBlendingTime", 0},
                                {"CenterMaxSpring", 0},
                                {"CenterMaxSpeed", 0},
                                {"CenterStartSpeed", 0},
                                {"UseSpeedBasedSpring", "False"},
                                {"SpringSpeed", 0},
                                {"VertRotationMin", -80},
                                {"VertRotationMax", 80}
                            }
                        },
                        {
                            PRECEDING_KEY_WORDS = "CharacterMiningCam",
                            VALUE_CHANGE_TABLE = {
                                {"CenterStartTime", 0},
                                {"CenterBlendingTime", 0},
                                {"CenterMaxSpring", 0},
                                {"CenterMaxSpeed", 0},
                                {"CenterStartSpeed", 0},
                                {"UseSpeedBasedSpring", "False"},
                                {"SpringSpeed", 0},
                                {"VertRotationMin", -80},
                                {"VertRotationMax", 80}
                            }
                        },
                        {
                            PRECEDING_KEY_WORDS = "CharacterIndoorCam",
                            VALUE_CHANGE_TABLE = {
                                {"CenterStartTime", 0},
                                {"CenterBlendingTime", 0},
                                {"CenterMaxSpring", 0},
                                {"CenterMaxSpeed", 0},
                                {"CenterStartSpeed", 0},
                                {"UseSpeedBasedSpring", "False"},
                                {"SpringSpeed", 0},
                                {"VertRotationMin", -80},
                                {"VertRotationMax", 80}
                            }
                        },
                        {
                            PRECEDING_KEY_WORDS = "CharacterAbandCombatCam",
                            VALUE_CHANGE_TABLE = {
                                {"CenterStartTime", 0},
                                {"CenterBlendingTime", 0},
                                {"CenterMaxSpring", 0},
                                {"CenterMaxSpeed", 0},
                                {"CenterStartSpeed", 0},
                                {"UseSpeedBasedSpring", "False"},
                                {"SpringSpeed", 0},
                                {"VertRotationMin", -80},
                                {"VertRotationMax", 80}
                            }
                        },
                        {
                            PRECEDING_KEY_WORDS = "CharacterAbandCam",
                            VALUE_CHANGE_TABLE = {
                                {"CenterStartTime", 0},
                                {"CenterBlendingTime", 0},
                                {"CenterMaxSpring", 0},
                                {"CenterMaxSpeed", 0},
                                {"CenterStartSpeed", 0},
                                {"UseSpeedBasedSpring", "False"},
                                {"SpringSpeed", 0},
                                {"VertRotationMin", -80},
                                {"VertRotationMax", 80}
                            }
                        },
                        {
                            PRECEDING_KEY_WORDS = "CharacterNexusCam",
                            VALUE_CHANGE_TABLE = {
                                {"CenterStartTime", 0},
                                {"CenterBlendingTime", 0},
                                {"CenterMaxSpring", 0},
                                {"CenterMaxSpeed", 0},
                                {"CenterStartSpeed", 0},
                                {"UseSpeedBasedSpring", "False"},
                                {"SpringSpeed", 0},
                                {"VertRotationMin", -80},
                                {"VertRotationMax", 80}
                            }
                        },
                        {
                            PRECEDING_KEY_WORDS = "CharacterAirborneCam",
                            VALUE_CHANGE_TABLE = {
                                {"CenterStartTime", 0},
                                {"CenterBlendingTime", 0},
                                {"CenterMaxSpring", 0},
                                {"CenterMaxSpeed", 0},
                                {"CenterStartSpeed", 0},
                                {"UseSpeedBasedSpring", "False"},
                                {"SpringSpeed", 0},
                                {"VertRotationMin", -80},
                                {"VertRotationMax", 80}
                            }
                        },
                        {
                            PRECEDING_KEY_WORDS = "CharacterMeleeBoostCam",
                            VALUE_CHANGE_TABLE = {
                                {"CenterStartTime", 0},
                                {"CenterBlendingTime", 0},
                                {"CenterMaxSpring", 0},
                                {"CenterMaxSpeed", 0},
                                {"CenterStartSpeed", 0},
                                {"UseSpeedBasedSpring", "False"},
                                {"SpringSpeed", 0},
                                {"VertRotationMin", -80},
                                {"VertRotationMax", 80}
                            }
                        },
                        {
                            PRECEDING_KEY_WORDS = "CharacterRocketBootsCam",
                            VALUE_CHANGE_TABLE = {
                                {"CenterStartTime", 0},
                                {"CenterBlendingTime", 0},
                                {"CenterMaxSpring", 0},
                                {"CenterMaxSpeed", 0},
                                {"CenterStartSpeed", 0},
                                {"UseSpeedBasedSpring", "False"},
                                {"SpringSpeed", 0},
                                {"VertRotationMin", -80},
                                {"VertRotationMax", 80}
                            }
                        },
                        {
                            PRECEDING_KEY_WORDS = "CharacterRocketBootsChargeCam",
                            VALUE_CHANGE_TABLE = {
                                {"CenterStartTime", 0},
                                {"CenterBlendingTime", 0},
                                {"CenterMaxSpring", 0},
                                {"CenterMaxSpeed", 0},
                                {"CenterStartSpeed", 0},
                                {"UseSpeedBasedSpring", "False"},
                                {"SpringSpeed", 0},
                                {"VertRotationMin", -80},
                                {"VertRotationMax", 80}
                            }
                        },
                        {
                            PRECEDING_KEY_WORDS = "CharacterFallingCam",
                            VALUE_CHANGE_TABLE = {
                                {"CenterStartTime", 0},
                                {"CenterBlendingTime", 0},
                                {"CenterMaxSpring", 0},
                                {"CenterMaxSpeed", 0},
                                {"CenterStartSpeed", 0},
                                {"UseSpeedBasedSpring", "False"},
                                {"SpringSpeed", 0},
                                {"VertRotationMin", -80},
                                {"VertRotationMax", 80}
                            }
                        },
                        {
                            PRECEDING_KEY_WORDS = "CharacterAirborneCombatCam",
                            VALUE_CHANGE_TABLE = {
                                {"CenterStartTime", 0},
                                {"CenterBlendingTime", 0},
                                {"CenterMaxSpring", 0},
                                {"CenterMaxSpeed", 0},
                                {"CenterStartSpeed", 0},
                                {"UseSpeedBasedSpring", "False"},
                                {"SpringSpeed", 0},
                                {"VertRotationMin", -80},
                                {"VertRotationMax", 80}
                            }
                        },
                        {
                            PRECEDING_KEY_WORDS = "CharacterSpaceCam",
                            VALUE_CHANGE_TABLE = {
                                {"CenterStartTime", 0},
                                {"CenterBlendingTime", 0},
                                {"CenterMaxSpring", 0},
                                {"CenterMaxSpeed", 0},
                                {"CenterStartSpeed", 0},
                                {"UseSpeedBasedSpring", "False"},
                                {"SpringSpeed", 0},
                                {"VertRotationMin", -80},
                                {"VertRotationMax", 80}
                            }
                        },
                        {
                            PRECEDING_KEY_WORDS = "CharacterSteepSlopeCam",
                            VALUE_CHANGE_TABLE = {
                                {"CenterStartTime", 0},
                                {"CenterBlendingTime", 0},
                                {"CenterMaxSpring", 0},
                                {"CenterMaxSpeed", 0},
                                {"CenterStartSpeed", 0},
                                {"UseSpeedBasedSpring", "False"},
                                {"SpringSpeed", 0},
                                {"VertRotationMin", -80},
                                {"VertRotationMax", 80}
                            }
                        },
                        {
                            PRECEDING_KEY_WORDS = "CharacterUnderwaterCam",
                            VALUE_CHANGE_TABLE = {
                                {"CenterStartTime", 0},
                                {"CenterBlendingTime", 0},
                                {"CenterMaxSpring", 0},
                                {"CenterMaxSpeed", 0},
                                {"CenterStartSpeed", 0},
                                {"UseSpeedBasedSpring", "False"},
                                {"SpringSpeed", 0},
                                {"VertRotationMin", -80},
                                {"VertRotationMax", 80}
                            }
                        },
                        {
                            PRECEDING_KEY_WORDS = "CharacterUnderwaterCombatCam",
                            VALUE_CHANGE_TABLE = {
                                {"CenterStartTime", 0},
                                {"CenterBlendingTime", 0},
                                {"CenterMaxSpring", 0},
                                {"CenterMaxSpeed", 0},
                                {"CenterStartSpeed", 0},
                                {"UseSpeedBasedSpring", "False"},
                                {"SpringSpeed", 0},
                                {"VertRotationMin", -80},
                                {"VertRotationMax", 80}
                            }
                        },
                        {
                            PRECEDING_KEY_WORDS = "CharacterUnderwaterJetpackCam",
                            VALUE_CHANGE_TABLE = {
                                {"CenterStartTime", 0},
                                {"CenterBlendingTime", 0},
                                {"CenterMaxSpring", 0},
                                {"CenterMaxSpeed", 0},
                                {"CenterStartSpeed", 0},
                                {"UseSpeedBasedSpring", "False"},
                                {"SpringSpeed", 0},
                                {"VertRotationMin", -80},
                                {"VertRotationMax", 80}
                            }
                        },
                        {
                            PRECEDING_KEY_WORDS = "CharacterGrabbedCam",
                            VALUE_CHANGE_TABLE = {
                                {"CenterStartTime", 0},
                                {"CenterBlendingTime", 0},
                                {"CenterMaxSpring", 0},
                                {"CenterMaxSpeed", 0},
                                {"CenterStartSpeed", 0},
                                {"UseSpeedBasedSpring", "False"},
                                {"SpringSpeed", 0},
                                {"VertRotationMin", -80},
                                {"VertRotationMax", 80}
                            }
                        },
                        {
                            PRECEDING_KEY_WORDS = "CharacterSitCam",
                            VALUE_CHANGE_TABLE = {
                                {"CenterStartTime", 0},
                                {"CenterBlendingTime", 0},
                                {"CenterMaxSpring", 0},
                                {"CenterMaxSpeed", 0},
                                {"CenterStartSpeed", 0},
                                {"UseSpeedBasedSpring", "False"},
                                {"SpringSpeed", 0},
                                {"VertRotationMin", -80},
                                {"VertRotationMax", 80}
                            }
                        },
                        {
                            PRECEDING_KEY_WORDS = "CharacterRideCam",
                            VALUE_CHANGE_TABLE = {
                                {"CenterStartTime", 0},
                                {"CenterBlendingTime", 0},
                                {"CenterMaxSpring", 0},
                                {"CenterMaxSpeed", 0},
                                {"CenterStartSpeed", 0},
                                {"UseSpeedBasedSpring", "False"},
                                {"SpringSpeed", 0},
                                {"LockToObjectOnIdle", "False"},
                                {"VertRotationMin", -80},
                                {"VertRotationMax", 80}
                            }
                        },
                        {
                            PRECEDING_KEY_WORDS = "CharacterRideCamMedium",
                            VALUE_CHANGE_TABLE = {
                                {"CenterStartTime", 0},
                                {"CenterBlendingTime", 0},
                                {"CenterMaxSpring", 0},
                                {"CenterMaxSpeed", 0},
                                {"CenterStartSpeed", 0},
                                {"UseSpeedBasedSpring", "False"},
                                {"SpringSpeed", 0},
                                {"LockToObjectOnIdle", "False"},
                                {"VertRotationMin", -80},
                                {"VertRotationMax", 80}
                            }
                        },
                        {
                            PRECEDING_KEY_WORDS = "CharacterRideCamLarge",
                            VALUE_CHANGE_TABLE = {
                                {"CenterStartTime", 0},
                                {"CenterBlendingTime", 0},
                                {"CenterMaxSpring", 0},
                                {"CenterMaxSpeed", 0},
                                {"CenterStartSpeed", 0},
                                {"UseSpeedBasedSpring", "False"},
                                {"SpringSpeed", 0},
                                {"LockToObjectOnIdle", "False"},
                                {"VertRotationMin", -80},
                                {"VertRotationMax", 80}
                            }
                        },
                        {
                            PRECEDING_KEY_WORDS = "CharacterRideCamHuge",
                            VALUE_CHANGE_TABLE = {
                                {"CenterStartTime", 0},
                                {"CenterBlendingTime", 0},
                                {"CenterMaxSpring", 0},
                                {"CenterMaxSpeed", 0},
                                {"CenterStartSpeed", 0},
                                {"UseSpeedBasedSpring", "False"},
                                {"SpringSpeed", 0},
                                {"LockToObjectOnIdle", "False"},
                                {"VertRotationMin", -80},
                                {"VertRotationMax", 80}
                            }
                        },
                    }
                }
            }
        }
    }
}