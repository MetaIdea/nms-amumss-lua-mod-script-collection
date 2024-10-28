NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"] = "Hotspot Detection Range.pak",
    ["MOD_AUTHOR"] = "liuyueowo",
    ["LUA_AUTHOR"] = "liuyueowo",
    ["NMS_VERSION"] = "5.21",
    ["MOD_DESCRIPTION"] = "In the original version, the detection range for hotspots is 400u. If you need to change it to your desired value, please replace 400 with your preferred number.",
    ["MODIFICATIONS"] = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                {
                    ["MBIN_FILE_SOURCE"] = "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["VALUE_CHANGE_TABLE"] = {
                                {"SurveyMaxDistance", "400"},
                            },
                        },
                    },
                },
            },
        },
    },
}