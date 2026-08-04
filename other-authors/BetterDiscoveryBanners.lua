NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"] = "Better Discovery Banners",
    ["MOD_AUTHOR"] = "me",
    ["MODIFICATIONS"] = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                {
                    ["MBIN_FILE_SOURCE"] = "UI/HUD/HUDMESSAGE.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID","DISCOVERYTITLE"},
                            ["VALUE_CHANGE_TABLE"] = { {"Position Y","80.000000"} },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID","LARGETITLE"},
                            ["VALUE_CHANGE_TABLE"] = { {"Position Y","864.000000"} },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID","STATTITLE"},
                            ["VALUE_CHANGE_TABLE"] = { {"Position Y","80.000000"} },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID","SEASONALTITLE"},
                            ["VALUE_CHANGE_TABLE"] = { {"Position Y","80.000000"} },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID","FANCYTITLE"},
                            ["VALUE_CHANGE_TABLE"] = { {"Position Y","80.000000"} },
                        },
                    },
                },
                {
                    ["MBIN_FILE_SOURCE"] = "UI/HUD/COMPONENTS/HUDSTATMESSAGECENTRE.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID","TITLELAYER"},
                            ["VALUE_CHANGE_TABLE"] = { {"Position Y","80.000000"} },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID","STAT"},
                            ["VALUE_CHANGE_TABLE"] = { {"Position Y","780.000000"} },
                        },
                    },
                }
            }
        }
    }
}