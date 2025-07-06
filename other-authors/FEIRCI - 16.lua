NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"] = "FEIRCI.pak",
    ["MOD_AUTHOR"] = "BCC",
    ["LUA_AUTHOR"] = "BCC",
    ["MOD_DESCRIPTION"] = "Increases the probability of fleet expedition intervension/guidance requests.",
    ["NMS_VERSION"] = "5.53",
    ["MODIFICATIONS"] = {{
        ["MBIN_CHANGE_TABLE"] = {{
            ["MBIN_FILE_SOURCE"] = [[GCFLEETGLOBALS.GLOBAL.MBIN]],
            ["EXML_CHANGE_TABLE"] = {{
                ["VALUE_CHANGE_TABLE"] = {
                    {"PercentChanceOfInterventionEvent", 16}
                }
            }}
        }}
    }}
}