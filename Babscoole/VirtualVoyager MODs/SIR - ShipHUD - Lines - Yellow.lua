NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "SIR - ShipHUD - Lines - Yellow.pak",
["MOD_DESCRIPTION"] = "",
["MOD_AUTHOR"]      = "VirtualVoyager",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "4.08",
["GLOBAL_INTEGER_TO_FLOAT"] = "FORCE",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCUIGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SpaceMapShowPlanetLines", "False"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"SpaceFriendlyShipLineColour", "Colour.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"G", "1"},
                                {"B", "0"},
                                {"A", "0.8"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"SpaceEnemyShipLineColour", "Colour.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"G", "0"},
                                {"A", "0.8"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"SpaceMapAttackColour", "Colour.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "1"},
                                {"G", "0"},
                                {"B", "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"SpaceMapOtherPlayerColour", "Colour.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "1"},
                                {"G", "1"},
                                {"B", "0"},
                                {"A", "0.8"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"SpaceMapThreatColour", "Colour.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "1"},
                                {"G", "0"},
                                {"B", "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"SpaceMapNeutralColour", "Colour.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "1"},
                                {"G", "1"},
                                {"B", "0"},
                                {"A", "0.8"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"SpaceMapSquadronColour", "Colour.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "0"},
                                {"G", "1"},
                                {"B", "1"},
                                {"A", "0.8"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"SpaceMapDeathPointColour", "Colour.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "1"},
                                {"G", "1"},
                                {"B", "0"},
                                {"A", "0.8"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"SpaceMapMarkerData", "GcSpaceMapObjectData.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "1"},
                                {"G", "1"},
                                {"B", "0"},
                                {"A", "0.8"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"SpaceMapPlanetData", "GcSpaceMapObjectData.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "1"},
                                {"G", "1"},
                                {"B", "0"},
                                {"A", "0.8"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"SpaceMapStationData", "GcSpaceMapObjectData.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "1"},
                                {"G", "1"},
                                {"B", "0"},
                                {"A", "0.8"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"SpaceMapNexusData", "GcSpaceMapObjectData.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "1"},
                                {"G", "1"},
                                {"B", "0"},
                                {"A", "0.8"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"SpaceMapAtlasData", "GcSpaceMapObjectData.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "1"},
                                {"G", "1"},
                                {"B", "0"},
                                {"A", "0.8"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"SpaceMapBlackHoleData", "GcSpaceMapObjectData.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "1"},
                                {"G", "1"},
                                {"B", "0"},
                                {"A", "0.8"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"SpaceMapShipData", "GcSpaceMapObjectData.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "1"},
                                {"G", "1"},
                                {"B", "0"},
                                {"A", "0.8"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"SpaceMapFreighterData", "GcSpaceMapObjectData.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "1"},
                                {"G", "1"},
                                {"B", "0"},
                                {"A", "0.8"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"SpaceMapPulseEncounterData", "GcSpaceMapObjectData.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "1"},
                                {"G", "1"},
                                {"B", "0"},
                                {"A", "0.8"},
                            }
                        },
                    }
                }
            }
        }
    }
}