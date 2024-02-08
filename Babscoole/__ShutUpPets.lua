NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "__ShutUpPets.pak",
["MOD_AUTHOR"]    = "Revale",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4,48",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCCREATUREGLOBALS.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PetChatCooldown", "1800"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\ECOSYSTEM\CREATUREPETBEHAVIOURTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ChatChance", "0"},
                            }
                        },
                    }
                },
            }
        },
    }
}