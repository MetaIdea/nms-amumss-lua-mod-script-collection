NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"] = "AltF4_ReplaceFreighterLandingPad.pak",
    ["MOD_AUTHOR"] = "AltF4",
    ["LUA_AUTHOR"] = "AltF4",
    ["NMS_VERSION"] = "4.72",
    ["MOD_DESCRIPTION"] = "Replace the freighter landing pad with the space station landing pad.",
    ["MODIFICATIONS"] = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                {
                    ["MBIN_FILE_SOURCE"] = {
                        "MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGAR.SCENE.MBIN",
                        "MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGARPIRATE.SCENE.MBIN",
                    },
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"] = {
                                {"Name","Dock3C"},
                                {"Name","Dock3B"},
                                {"Name","Dock3A"},
                                {"Name","Dock2C"},
                                {"Name","Dock2B"},
                                {"Name","Dock2A"},
                                {"Name","Dock1C"},
                                {"Name","Dock1B"},
                                {"Name","Dock1A"},
                            },
                            ["VALUE_CHANGE_TABLE"] = {
                                {"RotY", "0"},
                                {"Value", "MODELS\SPACE\SPACESTATION\MODULARPARTSTYPEB\DOCK\LANDINGPAD.SCENE.MBIN"},
                            }
                        },
                    }
                },
            },
        },
    }
}