NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Colorized Derelict Icons",
["MOD_AUTHOR"]      = "Babscoole and Lyravega",
["MOD_DESCRIPTION"] = "Adds a few colourized icons and alters scanline colours for a few derelict objects",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\UI\HUD\SCANNERICONS.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ScannableIcons", "Hazard"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Filename", "TEXTURES/UI/HUD/ICONS/PICKUPS/PICKUP.DANGER.DDS"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"ScannableIcons", "Refiner"},
                                {"ScannableIcons", "Cooker"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Filename", "TEXTURES/UI/HUD/ICONS/PICKUPS/PICKUP.BASETECH.DDS"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ScannableIconsBinocs", "Hazard"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Filename", "TEXTURES/UI/HUD/ICONS/SCANNING/PICKUP.DANGER.DDS"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"ScannableIconsBinocs", "Refiner"},
                                {"ScannableIconsBinocs", "Cooker"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Filename", "TEXTURES/UI/HUD/ICONS/SCANNING/PICKUP.BASETECH.DDS"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ScannableColours", "Hazard"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "1"},
                                {"G", "0"},
                                {"B", "0"},
                                {"A", "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ScannableColours", "FreighterHeater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "0.875"},
                                {"G", "0.700"},
                                {"B", "0"},
                                {"A", "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ScannableColours", "FreighterTerminal"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "0.82"},
                                {"G", "0.8"},
                                {"B", "0.2"},
                                {"A", "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"ScannableColours", "FreighterDoor"},
                                {"ScannableColours", "FreighterTeleporter"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "0"},
                                {"G", "0.6"},
                                {"B", "0.8"},
                                {"A", "1"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] =
                    {
                        "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\SPACEBASE\INFESTATION\LARGEPILLARSLIME\ENTITIES\LARGEPILLARSLIME.ENTITY.MBIN",
	                      "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\SPACEBASE\INFESTATION\MEDIUMHANGSLIME\ENTITIES\MEDIUMHANGSLIME.ENTITY.MBIN",
                    },
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ScanIconType", "Hazard"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\UNDERWATER\MEDIUMPLANTS\MEDIUIMGLOWPLANT\ENTITIES\_BASE_1.ENTITY.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ScanIconType", "Plant"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] =
                    {
				                "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\NPCROOMS\NPC_ABANDFRIGATECAPTAIN\ENTITIES\ABANFRIGATETERMINALCAPTAIN.ENTITY.MBIN",
				                "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\NPCROOMS\NPC_ABANDFRIGATECAPTAIN\ENTITIES\ABANFRIGATETERMINALCREW.ENTITY.MBIN",
				                "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\NPCROOMS\NPC_ABANDFRIGATECAPTAIN\ENTITIES\ABANFRIGATETERMINALFINAL.ENTITY.MBIN",
                    },
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Components", "GcScannableComponentData"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"UseModelNode", "false"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\SPACEBASE\INFESTATION\LARGEPILLARSLIME\ENTITIES\LARGEPILLARSLIME.ENTITY.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Components", "GcScannableComponentData"},
                            ["SEC_SAVE_TO"] = "SaveScan",
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] =
                    {
                        "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\SPACEBASE\EXPLODINGBARREL\ENTITIES\EXPLODINGBARREL.ENTITY.MBIN",
                        "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\SPACEBASE\TURRET\ENTITIES\TURRET.ENTITY.MBIN",
                        "MODELS\PLANETS\CREATURES\FISH\FREIGHTERJELLYFISH\ENTITIES\FREIGHTERJELLYFISH.ENTITY.MBIN",
                        "MODELS\PLANETS\CREATURES\SPIDERRIG\FREIGHTERFIEND\ENTITIES\FREIGHTERFIEND.ENTITY.MBIN",
                        "MODELS\COMMON\ROBOTS\FREIGHTERDRONE\ENTITIES\FREIGHTERDRONE.ENTITY.MBIN",
                    },
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Components"},
                            ["SEC_ADD_NAMED"] = "SaveScan",
                        },
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NameOverride", "UI_ANGRYSLIME_NAME"},
                                {"ScanName",     "UI_ANGRYSLIME_NAME"},
                            }
                        },
                    }
                },
            }
        },
    }
}