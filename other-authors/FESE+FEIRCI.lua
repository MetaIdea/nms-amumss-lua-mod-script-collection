NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"] = "FESE+FEIRCI.pak",
    ["MOD_AUTHOR"] = "BCC",
    ["LUA_AUTHOR"] = "BCC",
    ["MOD_DESCRIPTION"] = "Expands the selection of available fleet expeditions in the fleet expeditions menu and increases the probability of fleet expedition intervension/guidance requests.",
    ["NMS_VERSION"] = "4.65",
    ["MODIFICATIONS"] = {{
        ["MBIN_CHANGE_TABLE"] = {{
            ["MBIN_FILE_SOURCE"] = [[GCFLEETGLOBALS.GLOBAL.MBIN]],
            ["EXML_CHANGE_TABLE"] = {{
                ["VALUE_CHANGE_TABLE"] = {
                    {"NumberOfExpeditionChoices", 30},
                    {"PercentChanceOfInterventionEvent", 16}
                }
            }}
        }}
    }}
}