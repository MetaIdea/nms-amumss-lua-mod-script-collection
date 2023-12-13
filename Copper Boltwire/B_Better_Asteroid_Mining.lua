
--[[ Summery Description:
Increases asteroid mining by a factor of 10. No longer will you have to GRIND asteroids for a bit of fuel or the like,
Now you can sit back and enjoy the life of being utterly rich in mere minutes.
]]--

NMS_MOD_DEFINITION_CONTAINER = 
{
    ["MOD_FILENAME"]    = "B_Better_Asteroid_Mining.pak",
    ["MOD_AUTHOR"]      = "Gumsk and Copper B.",
    ["NMS_VERSION"]     = "4.46",
    ["MODIFICATIONS"]   = {
        {
            ["MBIN_CHANGE_TABLE"] = 
            {
                {
                    ["MBIN_FILE_SOURCE"]    = "GCSOLARGENERATIONGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"]   = 
                    {
                        {
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"CommonAsteroidMinResources", 10},
                                {"CommonAsteroidMaxResources", 13},
                                {"RareAsteroidMinResources", 10},
                                {"RareAsteroidMaxResources", 13},
                            },
                        },
                        {
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"AsteroidSomeRaresOdds", 0.50}, -- 0.2_ Increased the chance of rare asteroids.
                                
                                {"CommonAsteroidResourceSecondaryOdds", 0.50}, -- 0.2_ Chance of getting "gold" material.
                                
                                {"RareAsteroidResourceFuelOdds", 0.50},      -- 0.2_ Chance of getting a "TRITIUM HYPERCLUSTER".
                                {"CommonAsteroidResourceProductOdds", 0.45}, -- 0.2_ Chance of getting a "GOLD NUGGET".
                                {"RareAsteroidDataProductOdds", 0.01},       -- 0.005_ Chance of getting an "ANOMALY DETECTOR".
                            },
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"]    = "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"]   = 
                    {
                        {
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"AsteroidResourceReducer", 10}, -- 20_ This should also increase gain from asteroids, as the amount in TINY...
                            },
                        },
                    }
                }
            }
        }
    }
}