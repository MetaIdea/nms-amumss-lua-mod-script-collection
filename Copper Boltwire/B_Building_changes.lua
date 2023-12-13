
--[[ Summery Description:
More powerful Biogenerator, Biogenerator takes less resources. Solar panels are more powerful. Storage in batteries are greatly increased. Etc... Read below.
]]--

SolarRate = 500             --Original 50
BioRate = 750               --Original 50 -- Because it costs carbon, i think it should be balanced by producing more power then the passive power from solar panels... -CB
BioStorage = 250            --Original 3600 -- However, just like Gumsk suggests, i think it's storage should be small. We still want you to use the superior solar panels.
BatteryStorage = 999000     --Original 45000
EMRate = 2500               --Original 1 (C=175, B=220, A=250, S=300)
EMAnywhere = "Power"        --Original Power - set to "None" for EMAnywhere to work where ever you like (apparently...)
MineralRate = 1000          --100
MineralStorage = 3600000    --360000
GasRate = 1000              --100
GasStorage = 3600000        --360000
SiloStorage = 9999999       --Original 1400000
FreighterRate = 999999      --10000

NMS_MOD_DEFINITION_CONTAINER = 
{
    ["MOD_FILENAME"]    = "B_Building_changes.pak",
    ["MOD_AUTHOR"]      = "Gumsk",
    ["NMS_VERSION"]     = "4.46",
    ["MODIFICATIONS"]   = 
    {
        {
            ["MBIN_CHANGE_TABLE"] = 
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\BASEBUILDINGCOSTSTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] = 
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID","U_SOLAR_S"},
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"Rate",SolarRate},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID","U_BIOGENERATOR"},
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"DependentRate",BioRate},
                                {"Storage",BioStorage},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID","U_BATTERY_S"},
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"Storage",BatteryStorage},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID","U_GENERATOR_S"},
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"DependsOnHotspots",EMAnywhere},
                                {"Rate",EMRate},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID","U_EXTRACTOR_S"},
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"Storage",MineralStorage},
                                {"Rate",MineralRate},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID","U_GASEXTRACTOR"},
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"Storage",GasStorage},
                                {"Rate",GasRate},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID","U_SILO_S"},
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"Storage",SiloStorage},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID","AIRLCKCONNECTOR"},
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"Rate", FreighterRate},
                            }
                        },
                    },
                }
            },
        }
    }
}