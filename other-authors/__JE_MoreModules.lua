Author = "Jaggid Edje"
ModName = "MoreModules"
ModNameSub = "__JE"
BaseDescription = "Purchase more of an available Upgrade module from vendors Based on System Economy"
GameVersion = "4.36"
-- ModVersion = "v4.36"
FileSource1 = "METADATA\REALITY\DEFAULTREALITY.MBIN"

-- Original game settings in comments
minPoor = 2            -- 1
maxPoor = 2            -- 1
minAverage = 3        -- 1
maxAverage = 3        -- 1
minWealthy = 4        -- 1
maxWealthy = 4        -- 1
minPirate = 4        -- 1
maxPirate = 4        -- 1
minPirateTech = 3    -- 1
maxPirateTech = 6    -- 3

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
                    ["MBIN_FILE_SOURCE"] = FileSource1,
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