NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "_SprintChopMelee-Aurfram.pak",
["MOD_AUTHOR"]    = "Aurfram",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.64",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCPLAYERGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MeleeCooldown",                  "0.5"},
                                {"ChargeMeleeCooldown",            "1"},
                                {"MeleeRadius",                    "1"},
                                {"MeleeHitTime",                   "0.5"},
                                {"MeleeSpeedBoost",                "2"},
                                {"MeleeSpeedDamageBoost",          "512"},
                                {"MeleeSpeedBoostRangeMultiplier", "4"},
                                {"MeleeStaminaDrain",              "0.1"},
                            }
                        },
                    }
                },
            }
        },
    }
}
