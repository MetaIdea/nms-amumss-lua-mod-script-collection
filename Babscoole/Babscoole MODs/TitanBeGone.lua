NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "TitanBeGone",
["MOD_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.10",
["MOD_DESCRIPTION"] = "Removes Titan burrow spawns from Infested planets",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\RARE\INFESTATION.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"DebugName", "WORMSPAWNER"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SCENE\EXPERIENCESPAWNTABLE.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "ROGUE_WORMS"},
                            ["REMOVE"] = "SECTION"
                        },
                        -- {
                            -- ["REPLACE_TYPE"] = "RAW",
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {
                                    -- [[<Property name="GroundWorms" value="GcSentinelSpawnSequenceGroupList">]], [[<Property name="Reward" value="GcSentinelSpawnSequenceGroupList">]]
                                -- },
                            -- }
                        -- },
                    }
                },
            }
        },
    }
}