NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"] = "NoTut_RandomShip_RandomMultiTool.pak",
    ["MOD_AUTHOR"] = "Leonard",
    ["NMS_VERSION"] = "4.2",
    ["MODIFICATIONS"] = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                {
                    ["MBIN_FILE_SOURCE"] = "GCDEBUGOPTIONS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["PRECEDING_KEY_WORDS"] = {},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"ForceInitialShip", "False"},
                                {"ForceInitialWeapon", "False"}
                            }
                        }
                    }
                }, {
                    ["MBIN_FILE_SOURCE"] = "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["REPLACE_TYPE"] = "ALL",
                            ["PRECEDING_KEY_WORDS"] = {"Presets"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TutorialEnabled", "False"}
                            }
                        }
                    }
                }
            }
        }
    }
}
-- NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED

