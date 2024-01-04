NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]            = "HyperHyperDrive.pak",
["MOD_AUTHOR"]              = "courtykat",
["MODIFICATIONS"]           = 
    {
        {
            ["MBIN_CHANGE_TABLE"]   = 
            { 
                {
                    ["MBIN_FILE_SOURCE"]    = "METADATA\REALITY\TABLES\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"]   = 
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID","HYPERDRIVE",},
                            ["PRECEDING_KEY_WORDS"] = {"Ship_Hyperdrive_JumpDistance",},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"Bonus",   "1000000"},     -- Original "100"
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID","WARP_ALIEN",},
                            ["PRECEDING_KEY_WORDS"] = {"Ship_Hyperdrive_JumpDistance",},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"Bonus",   "1000000"},     -- Original "100"
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID","F_HYPERDRIVE",},
                            ["PRECEDING_KEY_WORDS"] = {"Freighter_Hyperdrive_JumpDistance",},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"Bonus",   "1000000"},     -- Original "100"
                            }
                        },
                    }
                },
            }
        },
        {
            ["MBIN_CHANGE_TABLE"]   = 
            { 
                {
                    ["MBIN_FILE_SOURCE"]    = "GCGALAXYGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"]   = 
                    {
                        {
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"FreePanSpeed",    "1.25"},    -- Original "0.8"
                                {"FreePanSpeedTurbo",   "275"},     -- Original "2.75"
                                {"StarBlurIntroMultiplier", "0"},   -- Original "0.8"
                                {"AnostreakAlpha",  "0"},   -- Original "2.75"
                            }
                        },
                        {
                            ["FOREACH_SKW_GROUP"] =
                            {
                                {"StartingLocation", "GcGalaxyMarkerSettings.xml"},
                                {"Home", "GcGalaxyMarkerSettings.xml"},
                                {"Waypoint", "GcGalaxyMarkerSettings.xml"},
                                {"Contact", "GcGalaxyMarkerSettings.xml"},
                                {"Blackhole", "GcGalaxyMarkerSettings.xml"},
                                {"AtlasStation", "GcGalaxyMarkerSettings.xml"},
                                {"Selection", "GcGalaxyMarkerSettings.xml"},
                                {"PlanetBase", "GcGalaxyMarkerSettings.xml"},
                                {"Visited", "GcGalaxyMarkerSettings.xml"},
                                {"ScanEvent", "GcGalaxyMarkerSettings.xml"},
                                {"Expedition", "GcGalaxyMarkerSettings.xml"},
                                {"NetworkPlayer", "GcGalaxyMarkerSettings.xml"},
                                {"Freighter", "GcGalaxyMarkerSettings.xml"},
                                {"PathIcon", "GcGalaxyMarkerSettings.xml"},
                                {"SeasonParty", "GcGalaxyMarkerSettings.xml"},
                                {"Settlement", "GcGalaxyMarkerSettings.xml"},
                                {"Blackhole", "GcGalaxyMarkerSettings.xml"},
                                {"AtlasStation", "GcGalaxyMarkerSettings.xml"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RadiusFixed",      "0"},
                                {"RadiusMinimum",     "0"},
                                {"RadiusBaseOffset", "0"},
                                {"RadiusEdge",       "0"},
                                {"Icon",             ""},
                                {"MarkerLabel",      ""},
                            }
                        },
                        {
                            ["FOREACH_SKW_GROUP"] =
                            {
                                {"StartingLocation", "GcGalaxyMarkerSettings.xml"},
                                {"Home", "GcGalaxyMarkerSettings.xml"},
                                {"Waypoint", "GcGalaxyMarkerSettings.xml"},
                                {"Contact", "GcGalaxyMarkerSettings.xml"},
                                {"Blackhole", "GcGalaxyMarkerSettings.xml"},
                                {"AtlasStation", "GcGalaxyMarkerSettings.xml"},
                                {"Selection", "GcGalaxyMarkerSettings.xml"},
                                {"PlanetBase", "GcGalaxyMarkerSettings.xml"},
                                {"Visited", "GcGalaxyMarkerSettings.xml"},
                                {"ScanEvent", "GcGalaxyMarkerSettings.xml"},
                                {"Expedition", "GcGalaxyMarkerSettings.xml"},
                                {"NetworkPlayer", "GcGalaxyMarkerSettings.xml"},
                                {"Freighter", "GcGalaxyMarkerSettings.xml"},
                                {"PathIcon", "GcGalaxyMarkerSettings.xml"},
                                {"SeasonParty", "GcGalaxyMarkerSettings.xml"},
                                {"Settlement", "GcGalaxyMarkerSettings.xml"},
                                {"Blackhole", "GcGalaxyMarkerSettings.xml"},
                                {"AtlasStation", "GcGalaxyMarkerSettings.xml"},
                            },
                            ["PRECEDING_KEY_WORDS"] = {"IconSize"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "0"},
                                {"y", "0"},
                            }
                        },
                        {
                            ["FOREACH_SKW_GROUP"] =
                            {
                                {"AnostreakAlphaCurve", "TkCurveType.xml"},
                                {"AnostreakValueCurve", "TkCurveType.xml"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Curve", "Linear"},
                            }
                        },
                    }
                },
            }
        },
    }   
}