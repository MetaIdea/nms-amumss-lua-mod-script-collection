NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "BetterBlobsMod-Blob Safari.pak",
["MOD_AUTHOR"]    = "JustInNovel",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.15",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\ECOSYSTEM\CREATUREDATATABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "BLOB", "Rarity", "GcCreatureRarity.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"CreatureRarity", "Common"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "BLOB", "HerbivoreProbabilityModifier", "GcCreatureRoleFrequencyModifier.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"CreatureRoleFrequencyModifier", "High"},
                            }
                        },
                    }
                },
            }
        },
    }
}