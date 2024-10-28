NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"] = "Reduce the restrictions.pak",
    ["MOD_AUTHOR"] = "liuyueowo",
    ["LUA_AUTHOR"] = "liuyueowo",
    ["NMS_VERSION"] = "5.21",
    ["MOD_DESCRIPTION"] = "In the original version, the maximum limit for installing tech modules is 3.  If you need to change it to your desired value, please replace 3 with your preferred number.",
    ["MODIFICATIONS"] = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                {
                    ["MBIN_FILE_SOURCE"] = "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["VALUE_CHANGE_TABLE"] = {
                                {"MaxNumSameGroupTech", "3"},
                            },
                        },
                    },
                },
            },
        },
    },
}