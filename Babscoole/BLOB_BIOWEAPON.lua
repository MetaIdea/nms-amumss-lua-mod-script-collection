NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "BLOB_BIOWEAPON.pak",
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
                            ["SPECIAL_KEY_WORDS"] = {"Id", "BLOB"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"OnlySpawnWhenIdIsForced", "True"},
                                {"EcoSystemCreature",       "False"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "BLOB", "Rarity", "GcCreatureRarity.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"CreatureRarity", "SuperRare"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "BLOB", "HerbivoreProbabilityModifier", "GcCreatureRoleFrequencyModifier.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"CreatureRoleFrequencyModifier", "Never"},
                            }
                        },
                    }
                },
            }
        },
    }
}