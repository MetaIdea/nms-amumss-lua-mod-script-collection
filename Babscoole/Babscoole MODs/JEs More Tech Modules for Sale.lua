-- Original game settings in comments
minPoor = 3        -- 1
maxPoor = 5        -- 1
minAverage = 4     -- 1
maxAverage = 6     -- 1
minWealthy = 5     -- 1
maxWealthy = 7     -- 1
minPirate = 3      -- 1
maxPirate = 7      -- 1
minPirateTech = 3  -- 1
maxPirateTech = 7  -- 3
minItems = 18
maxItems = 24

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "JEs More Tech Modules for Sale",
["MOD_DESCRIPTION"] = "Purchase more of an available Upgrade module from vendors Based on System Economy",
["MOD_AUTHOR"]      = "Jaggid Edje and Babscoole",
["NMS_VERSION"]     = "6.10",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\DEFAULTREALITY.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"TradeSettings", "ShipTechSpecialist",    "MinAmountOfProductAvailable"},
                                {"TradeSettings", "SuitTechSpecialist",    "MinAmountOfProductAvailable"},
                                {"TradeSettings", "WeapTechSpecialist",    "MinAmountOfProductAvailable"},
                                {"TradeSettings", "VehicleTechSpecialist", "MinAmountOfProductAvailable"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Poor",    minPoor},
                                {"Average", minAverage},
                                {"Wealthy", minWealthy},
                                {"Pirate",  minPirate}
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"TradeSettings", "ShipTechSpecialist",    "MaxAmountOfProductAvailable"},
                                {"TradeSettings", "SuitTechSpecialist",    "MaxAmountOfProductAvailable"},
                                {"TradeSettings", "WeapTechSpecialist",    "MaxAmountOfProductAvailable"},
                                {"TradeSettings", "VehicleTechSpecialist", "MaxAmountOfProductAvailable"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Poor",    maxPoor},
                                {"Average", maxAverage},
                                {"Wealthy", maxWealthy},
                                {"Pirate",  maxPirate}
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"TradeSettings", "PirateTech", "MinAmountOfProductAvailable"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Poor",    minPoor},
                                {"Average", minAverage},
                                {"Wealthy", minWealthy},
                                {"Pirate",  minPirateTech}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"TradeSettings", "PirateTech", "MaxAmountOfProductAvailable"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Poor",    maxPoor},
                                {"Average", maxAverage},
                                {"Wealthy", maxWealthy},
                                {"Pirate",  maxPirateTech}
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"ShipTechSpecialist"},
                                {"SuitTechSpecialist"},
                                {"WeapTechSpecialist"},
                                {"VehicleTechSpecialist"},
                                {"PirateTech"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinItemsForSale", minItems},
                                {"MaxItemsForSale", maxItems}
                            }
                        },
                    }
                }
            }
        }
    }
}