-- Energy generation and storage is 100x normal because building solar farms frustrates me to no end. Edit in the following variables
-- Extractor and Silo storage are both increased by 10x
-- Extraction rate is 5x
-- All values can be edited below

-- Sotrage Size
SiloStorage = 14400000              -- Default: 1440000 (1000 Stack size)
ExtractorStorage = 3600000          -- Default: 360000 (250 Stack Size)
GasExtractorStorage = 3600000       -- Default: 360000 (250 Stack Size)

-- Generation Rate Multiplier in %
ExtractorRate = 500
GasExtractorRate = 500

-- Solar Panel
SolarPanelRate = 5000                 -- Default: 50

-- Battery
BatteryStorage = 4500000                -- Default: 45000

NMS_MOD_DEFINITION_CONTAINER = 
{
    ["MOD_FILENAME"]    = "MoreForLessIndustry-10xStorage.pak",
    ["MOD_AUTHOR"]      = "Holyprin",
    ["NMS_VERSION"]     = "4.xx",
    ["MODIFICATIONS"]   = 
    {
        {
            ["MBIN_CHANGE_TABLE"] = 
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\BASEBUILDINGOBJECTSTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] = 
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID","U_SILO_S"},
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"Storage",SiloStorage},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID","U_EXTRACTOR_S"},
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"Storage",ExtractorStorage},
                                {"Rate", ExtractorRate},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID","U_GASEXTRACTOR"},
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"Storage",GasExtractorStorage},
                                {"Rate",GasExtractorRate},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID","U_SOLAR_S"},
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"Rate",SolarPanelRate},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID","U_BATTERY_S"},
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"Storage",BatteryStorage},
                            }
                        },
                    },
                }
            },
        }
    }
}