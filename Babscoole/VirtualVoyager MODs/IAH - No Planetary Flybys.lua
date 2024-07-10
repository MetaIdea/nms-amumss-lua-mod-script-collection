NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "IAH - No Planetary Flybys.pak",
["MOD_AUTHOR"]    = "PCMystic",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.08",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SCENE\EXPERIENCESPAWNTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"FlybySpawns", "GcAIShipSpawnData.xml", "Count"},
                                {"AmbientSpawns", "GcAIShipSpawnData.xml", "GcAIShipSpawnData.xml", "Count"},
                                {"AmbientSpawns", "GcAIShipSpawnData.xml", "GcAIShipSpawnData.xml", "GcAIShipSpawnData.xml", "Count"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"y", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"PirateSpawns", "GcAIShipSpawnData.xml", "Count"},
                                {"PirateSpawns", "GcAIShipSpawnData.xml", "GcAIShipSpawnData.xml", "Count"},
                                {"PlanetaryPirateFlybySpawns", "GcAIShipSpawnData.xml", "Count"},
                                {"PlanetaryPirateRaidSpawns", "GcAIShipSpawnData.xml", "Count"},
                                {"PirateBattleSpawns", "GcAIShipSpawnData.xml", "Count"},
                                {"AmbientSpawns", "GcAIShipSpawnData.xml", "Count"},
                                {"AmbientSpawns", "GcAIShipSpawnData.xml", "GcAIShipSpawnData.xml", "GcAIShipSpawnData.xml", "GcAIShipSpawnData.xml", "Count"},
                                {"FrigateFlybySpawns", "GcAIShipSpawnData.xml", "Count"},
                                {"FrigateFlybySpawns", "GcAIShipSpawnData.xml", "GcAIShipSpawnData.xml", "Count"},
                                {"FrigateFlybySpawns", "GcAIShipSpawnData.xml", "GcAIShipSpawnData.xml", "GcAIShipSpawnData.xml", "Count"},
                                {"FrigateFlybySpawns", "GcAIShipSpawnData.xml", "GcAIShipSpawnData.xml", "GcAIShipSpawnData.xml", "GcAIShipSpawnData.xml", "Count"},
                                {"FrigateFlybySpawns", "GcAIShipSpawnData.xml", "GcAIShipSpawnData.xml", "GcAIShipSpawnData.xml", "GcAIShipSpawnData.xml", "GcAIShipSpawnData.xml", "Count"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "0"},
                                {"y", "0"},
                            }
                        },
                    }
                },
            }
        }
    }
}