NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]    = "_DeadlyAsteroids.pak",
    ["MOD_AUTHOR"]      = "gh0stwizard",
    ["MOD_DESCRIPTION"] = "Removes substances gained by destroying asteroids.",
    ["NMS_VERSION"]     = "5.63",
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
                                { "Rare Asteroid Resource Fuel Odds",         0.05 }, -- 0.2
                                -- Anomaly Detector chance
                                { "Rare Asteroid Data Product Odds",          0.05 }, -- 0.005
                                -- Gold Nugget chance
                                { "Common Asteroid Resource Product Odds",    0.05 }, -- 0.2
                                -- Tritium chance
                                { "Common Asteroid Resource Fuel Odds",       0.7 },  -- 0.5
                                -- Silver & Gold chance
                                { "Common Asteroid Resource Secondary Odds",  0.2 },  -- 0.2
                                -- Tritium / Silver / Gold
                                { "Common Asteroid Min Resources",            0 },    -- 3
                                { "Common Asteroid Max Resources",            0 },    -- 5
                                -- Platinum
                                { "Rare Asteroid Min Resources",              0 },    -- 5
                                { "Rare Asteroid Max Resources",              0 },    -- 10
                                -- multipliers
                                { "Fuel Asteroid Multiplier",                 0 },    -- 10
                                { "Common Asteroid Resource Fuel Multiplier", 0 },    -- 5
                            },
                        },
                    }
                },
            }
        }
    }
}
