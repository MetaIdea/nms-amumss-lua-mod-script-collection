SpaceStationAlwaysPresentProducts = {"ANTIMATTER","SUBFUEL"}
SpaceStationAlwaysPresentSubstances = {"FUEL1","ROCKETSUB","SAND1","STELLAR2","WATERPLANT","WATER1"}
SpaceStationOptionalProducts = {"REPAIRKIT","QUAD_PROD","WALKER_PROD","FRIGATE_FUEL_3","FRIG_BOOST_COM","FRIG_BOOST_EXP","FRIG_BOOST_MIN","FRIG_BOOST_SPD","FRIG_BOOST_TRA","FRIG_BOOST_TRA"}
SpaceStationOptionalSubstances = {"SPACEGUNK2","PLANT_WATER","PLANT_POOP","PLANT_HOT","PLANT_LUSH","PLANT_RADIO","PLANT_SNOW","PLANT_TOXIC","PLANT_DUST","CREATURE1","LAUNCHSUB2","GAS1","GAS2","GAS3","LAVA1","PLANT_CAVE"}
ShopAlwaysPresentProducts = {"SUBFUEL"}
ShopAlwaysPresentSubstances = {"FUEL1","ROCKETSUB","SAND1","STELLAR2"}
ShopOptionalSubstances = {"PLANT_POOP","CREATURE1","LAUNCHSUB2","GAS1","GAS2","GAS3","LAVA1","WATERPLANT","WATER1"}

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]            = "_ShopOverride.pak",
["MOD_AUTHOR"]              = "InvalidCode",
["LUA_AUTHOR"]              = "Babscoole",
["NMS_VERSION"]             = "5.11",
["GLOBAL_INTEGER_TO_FLOAT"] = "FORCE",
["MODIFICATIONS"]           =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\DEFAULTREALITY.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Value", "CASING"},
                            ["SEC_SAVE_TO"] = "GetProd",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"SpaceStation", "GcTradeData.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinItemsForSale",              "32"},
                                {"MaxItemsForSale",              "37"},
                                {"PercentageOfItemsAreProducts", "0.4"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"SpaceStation", "GcTradeData.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"MinAmountOfSubstanceAvailable"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Poor",    "200"},
                                {"Average", "400"},
                                {"Wealthy", "600"},
                                {"Pirate",  "475"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"SpaceStation", "GcTradeData.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"MaxAmountOfSubstanceAvailable"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Poor",    "675"},
                                {"Average", "1200"},
                                {"Wealthy", "1800"},
                                {"Pirate",  "950"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Shop", "GcTradeData.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinItemsForSale",              "27"},
                                {"MaxItemsForSale",              "32"},
                                {"PercentageOfItemsAreProducts", "0.5"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Shop", "GcTradeData.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"MinAmountOfSubstanceAvailable"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Poor",    "200"},
                                {"Average", "400"},
                                {"Wealthy", "600"},
                                {"Pirate",  "475"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Shop", "GcTradeData.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"MaxAmountOfSubstanceAvailable"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Poor",    "600"},
                                {"Average", "950"},
                                {"Wealthy", "1350"},
                                {"Pirate",  "850"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"ShipTechSpecialist",    "GcTradeData.xml"},
                                {"SuitTechSpecialist",    "GcTradeData.xml"},
                                {"WeapTechSpecialist",    "GcTradeData.xml"},
                                {"VehicleTechSpecialist", "GcTradeData.xml"},
                            },
                            ["PRECEDING_KEY_WORDS"] = {"MinAmountOfProductAvailable"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Poor",    "3"},
                                {"Average", "3"},
                                {"Wealthy", "3"},
                                {"Pirate",  "6"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"ShipTechSpecialist",    "GcTradeData.xml"},
                                {"SuitTechSpecialist",    "GcTradeData.xml"},
                                {"WeapTechSpecialist",    "GcTradeData.xml"},
                                {"VehicleTechSpecialist", "GcTradeData.xml"},
                            },
                            ["PRECEDING_KEY_WORDS"] = {"MaxAmountOfProductAvailable"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Poor",    "3"},
                                {"Average", "3"},
                                {"Wealthy", "3"},
                                {"Pirate",  "6"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ProductID", "LAUNCHFUEL"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountForSale",    "10"},
                                {"PriceMul",         "0.2"},
                                {"RepLevelRequired", "2"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"RepShops", "TradeGuild", "RepItems", "GcRepShopItem.xml", "GcRepShopItem.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountForSale", "5"},
                                {"PriceMul",      "0.35"},
                                {"ProductID",     "HYPERFUEL1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ProductID", "ASTEROID2"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountForSale", "1000"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ProductID", "COMPOUND1"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PriceMul", "0.15"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ProductID", "FARMPROD9"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountForSale",    "2"},
                                {"RepLevelRequired", "8"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ProductID", "FREI_INV_TOKEN"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountForSale", "3"},
                                {"PriceMul",      "2"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ProductID", "GRENFUEL1"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountForSale",    "5"},
                                {"PriceMul",         "0.2"},
                                {"RepLevelRequired", "2"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ProductID", "ROBOT1"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountForSale",    "1000"},
                                {"PriceMul",         "0.3"},
                                {"RepLevelRequired", "4"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ProductID", "U_BOLT3"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountForSale", "3"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ProductID", "CHART_HIVE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountForSale",    "3"},
                                {"PriceMul",         "0.2"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ProductID", "U_BOLT4"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountForSale",    "3"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ProductID", "POWERCELL"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountForSale",    "15"},
                                {"PriceMul",         "0.1"},
                                {"RepLevelRequired", "1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ProductID", "HYPERFUEL2"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountForSale",    "5"},
                                {"PriceMul",         "0.33"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ProductID", "CATALYST2"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountForSale",    "1000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"RepShops", "ExplorerGuild", "RepItems", "GcRepShopItem.xml", "GcRepShopItem.xml", "GcRepShopItem.xml", "GcRepShopItem.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountForSale",    "1"},
                                {"PriceMul",         "0"},
                            }
                        },
                    },
                },
            },
        },
    },
}

local DefaultRealityTable  = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]

for i=1,#SpaceStationAlwaysPresentProducts do
  local PROD = SpaceStationAlwaysPresentProducts[i]
   
  DefaultRealityTable[#DefaultRealityTable+1] =
    {
        ["SEC_EDIT"] = "GetProd",
        ["VALUE_CHANGE_TABLE"] =
        {
            {"Value", PROD},
        }
    }   
  DefaultRealityTable[#DefaultRealityTable +1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"SpaceStation", "GcTradeData.xml"},
        ["PRECEDING_KEY_WORDS"] = {"AlwaysPresentProducts"},
        ["ADD_OPTION"] = "ADDendSECTION",
        ["SEC_ADD_NAMED"] = "GetProd"
    }
end

for i=1,#SpaceStationAlwaysPresentSubstances do
  local PROD = SpaceStationAlwaysPresentSubstances[i]
   
  DefaultRealityTable[#DefaultRealityTable+1] =
    {
        ["SEC_EDIT"] = "GetProd",
        ["VALUE_CHANGE_TABLE"] =
        {
            {"Value", PROD},
        }
    }   
  DefaultRealityTable[#DefaultRealityTable +1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"SpaceStation", "GcTradeData.xml"},
        ["PRECEDING_KEY_WORDS"] = {"AlwaysPresentSubstances"},
        ["ADD_OPTION"] = "ADDendSECTION",
        ["SEC_ADD_NAMED"] = "GetProd"
    }
end

for i=1,#SpaceStationOptionalProducts do
  local PROD = SpaceStationOptionalProducts[i]
   
  DefaultRealityTable[#DefaultRealityTable+1] =
    {
        ["SEC_EDIT"] = "GetProd",
        ["VALUE_CHANGE_TABLE"] =
        {
            {"Value", PROD},
        }
    }   
  DefaultRealityTable[#DefaultRealityTable +1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"SpaceStation", "GcTradeData.xml"},
        ["PRECEDING_KEY_WORDS"] = {"OptionalProducts"},
        ["ADD_OPTION"] = "ADDendSECTION",
        ["SEC_ADD_NAMED"] = "GetProd"
    }
end

for i=1,#SpaceStationOptionalSubstances do
  local PROD = SpaceStationOptionalSubstances[i]
   
  DefaultRealityTable[#DefaultRealityTable+1] =
    {
        ["SEC_EDIT"] = "GetProd",
        ["VALUE_CHANGE_TABLE"] =
        {
            {"Value", PROD},
        }
    }   
  DefaultRealityTable[#DefaultRealityTable +1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"SpaceStation", "GcTradeData.xml"},
        ["PRECEDING_KEY_WORDS"] = {"OptionalSubstances"},
        ["ADD_OPTION"] = "ADDendSECTION",
        ["SEC_ADD_NAMED"] = "GetProd"
    }
end

for i=1,#ShopAlwaysPresentProducts do
  local PROD = ShopAlwaysPresentProducts[i]
   
  DefaultRealityTable[#DefaultRealityTable+1] =
    {
        ["SEC_EDIT"] = "GetProd",
        ["VALUE_CHANGE_TABLE"] =
        {
            {"Value", PROD},
        }
    }   
  DefaultRealityTable[#DefaultRealityTable +1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"Shop", "GcTradeData.xml"},
        ["PRECEDING_KEY_WORDS"] = {"AlwaysPresentProducts"},
        ["ADD_OPTION"] = "ADDendSECTION",
        ["SEC_ADD_NAMED"] = "GetProd"
    }
end

for i=1,#ShopAlwaysPresentSubstances do
  local PROD = ShopAlwaysPresentSubstances[i]
   
  DefaultRealityTable[#DefaultRealityTable+1] =
    {
        ["SEC_EDIT"] = "GetProd",
        ["VALUE_CHANGE_TABLE"] =
        {
            {"Value", PROD},
        }
    }   
  DefaultRealityTable[#DefaultRealityTable +1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"Shop", "GcTradeData.xml"},
        ["PRECEDING_KEY_WORDS"] = {"AlwaysPresentSubstances"},
        ["ADD_OPTION"] = "ADDendSECTION",
        ["SEC_ADD_NAMED"] = "GetProd"
    }
end

for i=1,#ShopOptionalSubstances do
  local PROD = ShopOptionalSubstances[i]
   
  DefaultRealityTable[#DefaultRealityTable+1] =
    {
        ["SEC_EDIT"] = "GetProd",
        ["VALUE_CHANGE_TABLE"] =
        {
            {"Value", PROD},
        }
    }   
  DefaultRealityTable[#DefaultRealityTable +1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"Shop", "GcTradeData.xml"},
        ["PRECEDING_KEY_WORDS"] = {"OptionalSubstances"},
        ["ADD_OPTION"] = "ADDendSECTION",
        ["SEC_ADD_NAMED"] = "GetProd"
    }
end