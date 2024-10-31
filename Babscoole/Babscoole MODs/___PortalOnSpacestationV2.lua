NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]            = "___PortalOnSpacestationV2.pak",
["MOD_AUTHOR"]              = "Mjjstral and Babscoole",
["NMS_VERSION"]             = "5.22",
["MOD_DESCRIPTION"]         = "Adds portal to new, old, abandoned, and pirate space stations",
["GLOBAL_INTEGER_TO_FLOAT"] = "FORCE",
["MODIFICATIONS"]           =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] =
                    {
                        {"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PORTAL\PORTAL.SCENE.MBIN", "CUSTOMFOLDER\PORTAL\PORTAL.SCENE.MBIN", "REMOVE"},
                    },
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\COMMONPARTS\HANGARINTERIORPARTS\HANGARINTERIOR_ABAND.SCENE.MBIN",
                    ["MBIN_FS_DISCARD"] = "TRUE",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Dock3C"},
                            ["SEC_SAVE_TO"] = "ADD_NODE",
                        },
                        {
                            ["SEC_EDIT"] = "ADD_NODE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Name",     "SpacestationPortal"},
                                {"NameHash", "3101089239"},
                                {"ScaleX",   "0.50"},
                                {"ScaleY",   "0.50"},
                                {"ScaleZ",   "0.50"},
                                {"Value",    "CUSTOMFOLDER\PORTAL\PORTAL.SCENE.MBIN"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\BACK_SECTION.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SEC_EDIT"] = "ADD_NODE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TransX",   "-32"},
                                {"TransY",   "0"},
                                {"TransZ",   "160"},
                                {"RotY",     "90"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "MainHallModule"},
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["SEC_ADD_NAMED"] = "ADD_NODE",
                        },
                    },
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\SPACE\SPACESTATION\MODULARPARTSTYPEB\DOCK\BACK_SECTION.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SEC_EDIT"] = "ADD_NODE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TransX",   "-44"},
                                {"TransY",   "-.09"},
                                {"TransZ",   "-37"},
                                {"RotY",     "59"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "_SpaceStation_"},
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["SEC_ADD_NAMED"] = "ADD_NODE",
                        },
                    },
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\BACK_SECTION_ABANDONED.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SEC_EDIT"] = "ADD_NODE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TransX",   "-31"},
                                {"TransY",   "0"},
                                {"TransZ",   "130"},
                                {"RotY",     "90"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Wall_Section"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["SEC_ADD_NAMED"] = "ADD_NODE",
                        },
                    },
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\BACK_SECTION_PIRATE.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SEC_EDIT"] = "ADD_NODE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TransX",   "-7"},
                                {"TransY",   "0"},
                                {"TransZ",   "185"},
                                {"RotY",     "90"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Wall_Section"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["SEC_ADD_NAMED"] = "ADD_NODE",
                        },
                    },
                },
                {
                    ["MBIN_FILE_SOURCE"] = "CUSTOMFOLDER\PORTAL\PORTAL.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "PortalStructure"},
                            ["VCT"] =
                            {
                                {"ScaleY", "0.3"},
                                {"ScaleZ", "0.75"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "Base"},
                                {"Name", "PillarsB"},
                                {"Name", "PillarsA"},
                                -- {"Name", "REFPortalMistVFX"},
                                -- {"Name", "REFPortalCloudsVFX"},
                                {"Name", "_Clump1"},
                                {"Name", "_Clump2"},
                                {"Name", "_Clump3"},
                                {"Name", "_Clump4"},
                                {"Name", "_Clump5"},
                                {"Name", "_Clump6"},
                            },
                            ["REMOVE"] = "SECTION",
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PORTAL\PORTAL\ENTITIES\BUTTON.ENTITY.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Template", "GcMaintenanceComponentData.xml"},
                            ["SECTION_UP"] = 1,
                            ["REMOVE"] = "SECTION",
                        }
                    }
                },
            }
        },
    }
}