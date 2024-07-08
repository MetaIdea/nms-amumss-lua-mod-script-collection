NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "NoSharkSpawns.pak",
["MOD_AUTHOR"]    = "courtycat",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "3.75",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] =
                    {
                        "METADATA\SIMULATION\ECOSYSTEM\UNDERWATER\UNDERWATERTABLECOMMON.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\DEPRECATE\UNDERWATER\UNDERWATERTABLECOMMON.MBIN",
                    },
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"CreatureType", "Shark"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ProbabilityOfBeingEnabled", "0"}
                            }
                        },
                    }
                },
            }
        }
    }
}