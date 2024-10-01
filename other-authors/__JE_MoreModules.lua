Author = "Jaggid Edje"
ModName = "MoreModules"
ModNameSub = "__JE"
BaseDescription = "Purchase more of an available Upgrade module from vendors Based on System Economy"
GameVersion = "5.12"

-- Original game settings in comments
minPoor = 3            -- 1
maxPoor = 5            -- 1
minAverage = 4        -- 1
maxAverage = 6        -- 1
minWealthy = 5        -- 1
maxWealthy = 7        -- 1
minPirate = 3        -- 1
maxPirate = 7        -- 1
minPirateTech = 3    -- 1
maxPirateTech = 7    -- 3

NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"]    = ModNameSub.."_"..ModName..".pak",
    ["MOD_DESCRIPTION"]    = BaseDescription,
    ["MOD_AUTHOR"]        = Author,
    ["NMS_VERSION"]        = GameVersion,
    ["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] = {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\DEFAULTREALITY.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"TradeSettings", "ShipTechSpecialist", "MinAmountOfProductAvailable"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Poor", minPoor},
                                {"Average", minAverage},
                                {"Wealthy", minWealthy},
                                {"Pirate", minPirate}
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"TradeSettings", "SuitTechSpecialist", "MinAmountOfProductAvailable"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Poor", minPoor},
                                {"Average", minAverage},
                                {"Wealthy", minWealthy},
                                {"Pirate", minPirate}
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"TradeSettings", "WeapTechSpecialist", "MinAmountOfProductAvailable"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Poor", minPoor},
                                {"Average", minAverage},
                                {"Wealthy", minWealthy},
                                {"Pirate", minPirate}
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"TradeSettings", "VehicleTechSpecialist", "MinAmountOfProductAvailable"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Poor", minPoor},
                                {"Average", minAverage},
                                {"Wealthy", minWealthy},
                                {"Pirate", minPirate}
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"TradeSettings", "ShipTechSpecialist", "MaxAmountOfProductAvailable"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Poor", maxPoor},
                                {"Average", maxAverage},
                                {"Wealthy", maxWealthy},
                                {"Pirate", maxPirate}
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"TradeSettings", "SuitTechSpecialist", "MaxAmountOfProductAvailable"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Poor", maxPoor},
                                {"Average", maxAverage},
                                {"Wealthy", maxWealthy},
                                {"Pirate", maxPirate}
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"TradeSettings", "WeapTechSpecialist", "MaxAmountOfProductAvailable"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Poor", maxPoor},
                                {"Average", maxAverage},
                                {"Wealthy", maxWealthy},
                                {"Pirate", maxPirate}
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"TradeSettings", "VehicleTechSpecialist", "MaxAmountOfProductAvailable"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Poor", maxPoor},
                                {"Average", maxAverage},
                                {"Wealthy", maxWealthy},
                                {"Pirate", maxPirate}
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"TradeSettings", "PirateTech", "MinAmountOfProductAvailable"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Poor", minPoor},
                                {"Average", minAverage},
                                {"Wealthy", minWealthy},
                                {"Pirate", minPirateTech}
                            },
                        },                            
                        {
                            ["PRECEDING_KEY_WORDS"] = {"TradeSettings", "PirateTech", "MaxAmountOfProductAvailable"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Poor", maxPoor},
                                {"Average", maxAverage},
                                {"Wealthy", maxWealthy},
                                {"Pirate", maxPirateTech}
                            }
                        }
                    }
                }
            }
        }
    }
}