NMS_MOD_DEFINITION_CONTAINER = {
    MOD_FILENAME = "allowBuildOnFreighterBridge",
    MOD_AUTHOR = "Carbonster",
    MODIFICATIONS = {
        {
            MBIN_CHANGE_TABLE = {
                {
                    MBIN_FILE_SOURCE = "MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGARPIRATE.SCENE.MBIN",
                    EXML_CHANGE_TABLE = {
                        {
                            SPECIAL_KEY_WORDS = {"Name", "BaseBuildingArea"},
                            VALUE_CHANGE_TABLE = {
                                {"TransZ", -28.623486},
                                {"ScaleX", 1.2},
                                {"ScaleZ", 1.2}
                            }
                        }
                    }
                },
                {
                    MBIN_FILE_SOURCE = "MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGAR.SCENE.MBIN",
                    EXML_CHANGE_TABLE = {
                        {
                            SPECIAL_KEY_WORDS = {"Name", "BaseBuildingArea"},
                            VALUE_CHANGE_TABLE = {
                                {"TransZ", -28.623486},
                                {"ScaleX", 1.2},
                                {"ScaleZ", 1.2}
                            }
                        }
                    } 
                }
            }
        }
    }
}