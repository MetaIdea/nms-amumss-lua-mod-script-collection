NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "NoWaterSpawns.pak",
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
                        "METADATA\SIMULATION\ECOSYSTEM\UNDERWATER\UNDERWATERTABLECRABS.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\DEPRECATE\UNDERWATER\UNDERWATERTABLECOMMON.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\DEPRECATE\UNDERWATER\UNDERWATERTABLEEXTRA.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\DEPRECATE\UNDERWATER\UNDERWATERTABLESEASNAKE.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\DEPRECATE\UNDERWATER\UNDERWATERTABLEWHALE.MBIN",
                    },
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["REPLACE_TYPE"] = "ALL",
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