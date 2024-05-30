NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"] = "AltF4_HaulerWithIronVultureParts.pak",
    ["MOD_AUTHOR"] = "AltF4",
    ["LUA_AUTHOR"] = "AltF4",
    ["NMS_VERSION"] = "4.70",
    ["MOD_DESCRIPTION"] = "Make the hauler with random Iron Vulture parts can be generated naturally.",
    ["MODIFICATIONS"] = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\GAMESTATE\PLAYERDATA\CHARACTERCUSTOMISATIONDESCRIPTORGROUPSDATA.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Value", "_COCKPIT_S13XNEVER"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Value", "_COCKPIT_S13"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Value", "_ENGINES_S13xNEVER"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Value", "_ENGINES_S13"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Value", "_WINGS_S13xNEVER"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Value", "_WINGS_S13"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\DROPSHIPS\DROPSHIP_PROC.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "_Cockpit_S13xNEVER"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Name", "_Cockpit_S13"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "_Engines_S13xNEVER"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Name", "_Engines_S13"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "_Wings_S13xNEVER"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Name", "_Wings_S13"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\DROPSHIPS\DROPSHIP_PROC.DESCRIPTOR.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "_COCKPIT_S13XNEVER"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Id", "_COCKPIT_S13"},
                                {"Name", "_Cockpit_S13"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "_ENGINES_S13XNEVER"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Id", "_ENGINES_S13"},
                                {"Name", "_Engines_S13"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "_WINGS_S13XNEVER"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Id", "_WINGS_S13"},
                                {"Name", "_Wings_S13"},
                            }
                        },
                    }
                },

            },
        },
    }
}