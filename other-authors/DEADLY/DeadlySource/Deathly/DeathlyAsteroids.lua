NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]    = "_DeathlyAsteroids.pak",
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
                                { "FuelAsteroidMultiplier",               0 },      -- 10
                                { "CommonAsteroidResourceFuelMultiplier", 0 },      -- 5
                                -- Tritium / Silver / Gold
                                { "CommonAsteroidMinResources",           0 },      -- 3
                                { "CommonAsteroidMaxResources",           0 },      -- 5
                                -- Platinum
                                { "RareAsteroidMinResources",             0 },      -- 5
                                { "RareAsteroidMaxResources",             0 },      -- 10
                                --
                                { "AsteroidSpaceStationAvoidRadius",      500 },    -- 5000
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
