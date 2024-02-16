NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]    = "_DeadlyAsteroids.pak",
    ["MOD_AUTHOR"]      = "gh0stwizard",
    ["MOD_DESCRIPTION"] = "Removes substances gained by destroying asteroids.",
    ["NMS_VERSION"]     = "4.46",
    ["MODIFICATIONS"]   = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                --
                -- GCGAMEPLAYGLOBALS.GLOBAL.MBIN
                --
                {
                    ["MBIN_FILE_SOURCE"] = "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["VALUE_CHANGE_TABLE"] = {
                                { "VoxelAsteroidResourceChance", 0 }, -- 0.25
                            }
                        }
                    }
                },
                --
                -- GCSOLARGENERATIONGLOBALS.GLOBAL.MBIN
                --
                {
                    ["MBIN_FILE_SOURCE"] = "GCSOLARGENERATIONGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Anomaly Detector chance
                                -- { "RareAsteroidDataProductOdds",          0.005 },  -- 0.005
                                { "FuelAsteroidMultiplier",               0 },      -- 10
                                { "CommonAsteroidResourceFuelMultiplier", 0 },      -- 5
                                -- Tritium / Silver / Gold
                                { "CommonAsteroidMinResources",           0 },      -- 3
                                { "CommonAsteroidMaxResources",           0 },      -- 5
                                -- Tritium chance
                                { "CommonAsteroidResourceFuelOdds",       0.7 },    -- 0.5
                                -- Gold Nugget chance
                                { "CommonAsteroidResourceProductOdds",    0.03 },   -- 0.2
                                -- Silver / Gold
                                { "CommonAsteroidResourceSecondaryOdds",  0.1 },    -- 0.2
                                -- Platinum
                                { "RareAsteroidMinResources",             0 },      -- 5
                                { "RareAsteroidMaxResources",             0 },      -- 10
                                -- Tritium Hypercluster chance
                                { "RareAsteroidResourceFuelOdds",         0.1 },    -- 0.2
                                --
                                { "AsteroidSpaceStationAvoidRadius",      1000 },   -- 5000
                                { "AsteroidWarpInAreaAvoidRadius",        500 },    -- 5000
                                -- place asteroids a bit farer from planets
                                { "PlanetInvalidAsteroidZone",            100000 }, -- 10000
                            },
                        },
                    }
                },
            }
        }
    }
}
