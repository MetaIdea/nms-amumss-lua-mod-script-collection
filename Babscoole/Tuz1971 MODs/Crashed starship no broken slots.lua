NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Crashed starship no broken slots.pak",
["MOD_AUTHOR"]      = "Tuz1971",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "4.15",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCAISPACESHIPGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"CrashedShipMinNonBrokenSlots", "100"},
                                {"CrashedShipBrokenSlotChance",  "0"},
                                {"CrashedShipBrokenTechChance",  "0"},
                            }
                        },
                    }
                }
            }
        }
    }
}