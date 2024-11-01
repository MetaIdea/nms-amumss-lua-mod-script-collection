NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]    = "_DeadlyAsteroids.pak",
    ["MOD_AUTHOR"]      = "gh0stwizard",
    ["MOD_DESCRIPTION"] = "Removes substances gained by destroying asteroids.",
    ["NMS_VERSION"]     = "4.46",
    ["MODIFICATIONS"]   = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                { -- GCGAMEPLAYGLOBALS.GLOBAL.MBIN
                    ["MBIN_FILE_SOURCE"] = "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["VALUE_CHANGE_TABLE"] = {
                                { "VoxelAsteroidResourceChance", 0 }, -- 0.25
                            }
                        }
                    }
                },
                { -- GCSOLARGENERATIONGLOBALS.GLOBAL.MBIN
                    ["MBIN_FILE_SOURCE"] = "GCSOLARGENERATIONGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Tritium Hypercluster chance
                                { "RareAsteroidResourceFuelOdds",         0.06 }, -- 0.2
                                -- Anomaly Detector chance
                                { "RareAsteroidDataProductOdds",          0.04 }, -- 0.005
                                -- Gold Nugget chance
                                { "CommonAsteroidResourceProductOdds",    0.05 }, -- 0.2
                                -- Tritium chance
                                { "CommonAsteroidResourceFuelOdds",       0 },    -- 0.5
                                -- Silver & Gold chance
                                { "CommonAsteroidResourceSecondaryOdds",  0 },    -- 0.2
                                -- Tritium / Silver / Gold
                                { "CommonAsteroidMinResources",           0 },    -- 3
                                { "CommonAsteroidMaxResources",           0 },    -- 5
                                -- Platinum
                                { "RareAsteroidMinResources",             0 },    -- 5
                                { "RareAsteroidMaxResources",             0 },    -- 10
                                -- multipliers
                                { "FuelAsteroidMultiplier",               0 },    -- 10
                                { "CommonAsteroidResourceFuelMultiplier", 0 },    -- 5
                            },
                        },
                    }
                },
            }
        }
    }
}
