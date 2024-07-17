NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "spdx_ItTakesAVillage.pak",
["MOD_AUTHOR"]    = "SPDX",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "3.82",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCSETTLEMENTGLOBALS.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"JudgementWaitTimeMax", "3600"},
                                {"MaxNPCPopulation",     "64"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"SettlementBuildingTimes"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Settlement_LandingZone",     "7200"},
                                {"Settlement_Bar",             "7200"},
                                {"Settlement_Tower",           "7200"},
                                {"Settlement_Market",          "7200"},
                                {"Settlement_Small",           "7200"},
                                {"Settlement_SmallIndustrial", "7200"},
                                {"Settlement_Medium",          "7200"},
                                {"Settlement_Large",           "7200"},
                                {"Settlement_SheriffsOffice",  "7200"},
                                {"Settlement_Double",          "7200"},
                                {"Settlement_Farm",            "7200"},
                                {"Settlement_Factory",         "7200"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Settlement_LandingZone",     "GcSettlementBuildingCost.xml", "GroundStorey",  "GcSettlementBuildingCostData.xml"},
                                {"Settlement_LandingZone",     "GcSettlementBuildingCost.xml", "RegularStorey", "GcSettlementBuildingCostData.xml"},
                                {"Settlement_LandingZone",     "GcSettlementBuildingCost.xml", "Roof",          "GcSettlementBuildingCostData.xml"},
                                {"Settlement_LandingZone",     "GcSettlementBuildingCost.xml", "Decoration",    "GcSettlementBuildingCostData.xml"},
                                {"Settlement_Bar",             "GcSettlementBuildingCost.xml", "GroundStorey",  "GcSettlementBuildingCostData.xml"},
                                {"Settlement_Bar",             "GcSettlementBuildingCost.xml", "RegularStorey", "GcSettlementBuildingCostData.xml"},
                                {"Settlement_Bar",             "GcSettlementBuildingCost.xml", "Roof",          "GcSettlementBuildingCostData.xml"},
                                {"Settlement_Bar",             "GcSettlementBuildingCost.xml", "Decoration",    "GcSettlementBuildingCostData.xml"},
                                {"Settlement_Tower",           "GcSettlementBuildingCost.xml", "GroundStorey",  "GcSettlementBuildingCostData.xml"},
                                {"Settlement_Tower",           "GcSettlementBuildingCost.xml", "RegularStorey", "GcSettlementBuildingCostData.xml"},
                                {"Settlement_Tower",           "GcSettlementBuildingCost.xml", "Roof",          "GcSettlementBuildingCostData.xml"},
                                {"Settlement_Tower",           "GcSettlementBuildingCost.xml", "Decoration",    "GcSettlementBuildingCostData.xml"},
                                {"Settlement_Market",          "GcSettlementBuildingCost.xml", "GroundStorey",  "GcSettlementBuildingCostData.xml"},
                                {"Settlement_Market",          "GcSettlementBuildingCost.xml", "RegularStorey", "GcSettlementBuildingCostData.xml"},
                                {"Settlement_Market",          "GcSettlementBuildingCost.xml", "Roof",          "GcSettlementBuildingCostData.xml"},
                                {"Settlement_Market",          "GcSettlementBuildingCost.xml", "Decoration",    "GcSettlementBuildingCostData.xml"},
                                {"Settlement_Small",           "GcSettlementBuildingCost.xml", "GroundStorey",  "GcSettlementBuildingCostData.xml"},
                                {"Settlement_Small",           "GcSettlementBuildingCost.xml", "RegularStorey", "GcSettlementBuildingCostData.xml"},
                                {"Settlement_Small",           "GcSettlementBuildingCost.xml", "Roof",          "GcSettlementBuildingCostData.xml"},
                                {"Settlement_Small",           "GcSettlementBuildingCost.xml", "Decoration",    "GcSettlementBuildingCostData.xml"},
                                {"Settlement_SmallIndustrial", "GcSettlementBuildingCost.xml", "GroundStorey",  "GcSettlementBuildingCostData.xml"},
                                {"Settlement_SmallIndustrial", "GcSettlementBuildingCost.xml", "RegularStorey", "GcSettlementBuildingCostData.xml"},
                                {"Settlement_SmallIndustrial", "GcSettlementBuildingCost.xml", "Roof",          "GcSettlementBuildingCostData.xml"},
                                {"Settlement_SmallIndustrial", "GcSettlementBuildingCost.xml", "Decoration",    "GcSettlementBuildingCostData.xml"},
                                {"Settlement_Medium",          "GcSettlementBuildingCost.xml", "GroundStorey",  "GcSettlementBuildingCostData.xml"},
                                {"Settlement_Medium",          "GcSettlementBuildingCost.xml", "RegularStorey", "GcSettlementBuildingCostData.xml"},
                                {"Settlement_Medium",          "GcSettlementBuildingCost.xml", "Roof",          "GcSettlementBuildingCostData.xml"},
                                {"Settlement_Medium",          "GcSettlementBuildingCost.xml", "Decoration",    "GcSettlementBuildingCostData.xml"},
                                {"Settlement_Large",           "GcSettlementBuildingCost.xml", "GroundStorey",  "GcSettlementBuildingCostData.xml"},
                                {"Settlement_Large",           "GcSettlementBuildingCost.xml", "RegularStorey", "GcSettlementBuildingCostData.xml"},
                                {"Settlement_Large",           "GcSettlementBuildingCost.xml", "Roof",          "GcSettlementBuildingCostData.xml"},
                                {"Settlement_SheriffsOffice",  "GcSettlementBuildingCost.xml", "GroundStorey",  "GcSettlementBuildingCostData.xml"},
                                {"Settlement_SheriffsOffice",  "GcSettlementBuildingCost.xml", "RegularStorey", "GcSettlementBuildingCostData.xml"},
                                {"Settlement_SheriffsOffice",  "GcSettlementBuildingCost.xml", "Roof",          "GcSettlementBuildingCostData.xml"},
                                {"Settlement_SheriffsOffice",  "GcSettlementBuildingCost.xml", "Decoration",    "GcSettlementBuildingCostData.xml"},
                                {"Settlement_Double",          "GcSettlementBuildingCost.xml", "GroundStorey",  "GcSettlementBuildingCostData.xml"},
                                {"Settlement_Double",          "GcSettlementBuildingCost.xml", "RegularStorey", "GcSettlementBuildingCostData.xml"},
                                {"Settlement_Double",          "GcSettlementBuildingCost.xml", "Roof",          "GcSettlementBuildingCostData.xml"},
                                {"Settlement_Double",          "GcSettlementBuildingCost.xml", "Decoration",    "GcSettlementBuildingCostData.xml"},
                                {"Settlement_Farm",            "GcSettlementBuildingCost.xml", "GroundStorey",  "GcSettlementBuildingCostData.xml"},
                                {"Settlement_Farm",            "GcSettlementBuildingCost.xml", "RegularStorey", "GcSettlementBuildingCostData.xml"},
                                {"Settlement_Farm",            "GcSettlementBuildingCost.xml", "Roof",          "GcSettlementBuildingCostData.xml"},
                                {"Settlement_Farm",            "GcSettlementBuildingCost.xml", "Decoration",    "GcSettlementBuildingCostData.xml"},
                                {"Settlement_Factory",         "GcSettlementBuildingCost.xml", "GroundStorey",  "GcSettlementBuildingCostData.xml"},
                                {"Settlement_Factory",         "GcSettlementBuildingCost.xml", "RegularStorey", "GcSettlementBuildingCostData.xml"},
                                {"Settlement_Factory",         "GcSettlementBuildingCost.xml", "Roof",          "GcSettlementBuildingCostData.xml"},
                                {"Settlement_Factory",         "GcSettlementBuildingCost.xml", "Decoration",    "GcSettlementBuildingCostData.xml"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountMin", "@*10"},
                                {"AmountMax", "@*10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"StatsMaxValues"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Population", "256"},
                                {"Production", "2147483647"},
                                {"Upkeep",     "2147483647"},
                                {"Debt",       "65536"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"GekProductionElements"},
                                {"KorvaxProductionElements"},
                                {"VykeenProductionElements"},
                                {"PoorProductionElements"},
                                {"NeutralProductionElements"},
                                {"RichProductionElements"},
                            },
                            ["CREATE_HOES"] = "TRUE",
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GekProductionElements"},
                            ["CREATE_HOS"] = "TRUE",
                            ["ADD"] =
[[
    <Property value="NMSString0x10.xml">
      <Property name="Value" value="TRA_CURIO1" />
    </Property>
    <Property value="NMSString0x10.xml">
      <Property name="Value" value="TRA_CURIO2" />
    </Property>
    <Property value="NMSString0x10.xml">
      <Property name="Value" value="FOOD_P_ALL3" />
    </Property>
    <Property value="NMSString0x10.xml">
      <Property name="Value" value="ASTEROID2" />
    </Property>
    <Property value="NMSString0x10.xml">
      <Property name="Value" value="PLANT_POOP" />
    </Property>
]]
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"KorvaxProductionElements"},
                            ["CREATE_HOS"] = "TRUE",
                            ["ADD"] =
[[
    <Property value="NMSString0x10.xml">
      <Property name="Value" value="EXP_CURIO2" />
    </Property>
    <Property value="NMSString0x10.xml">
      <Property name="Value" value="TECH_COMP" />
    </Property>
    <Property value="NMSString0x10.xml">
      <Property name="Value" value="FOOD_P_GLITCH" />
    </Property>
    <Property value="NMSString0x10.xml">
      <Property name="Value" value="ASTEROID1" />
    </Property>
    <Property value="NMSString0x10.xml">
      <Property name="Value" value="SPECIAL_POOP" />
    </Property>
]]
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"VykeenProductionElements"},
                            ["CREATE_HOS"] = "TRUE",
                            ["ADD"] =
[[
    <Property value="NMSString0x10.xml">
      <Property name="Value" value="WAR_CURIO1" />
    </Property>
    <Property value="NMSString0x10.xml">
      <Property name="Value" value="WAR_CURIO2" />
    </Property>
    <Property value="NMSString0x10.xml">
      <Property name="Value" value="FOOD_P_RADWILD" />
    </Property>
    <Property value="NMSString0x10.xml">
      <Property name="Value" value="STELLAR2" />
    </Property>
    <Property value="NMSString0x10.xml">
      <Property name="Value" value="ROBOT1" />
    </Property>
]]
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"PoorProductionElements"},
                            ["CREATE_HOS"] = "TRUE",
                            ["ADD"] =
[[
    <Property value="NMSString0x10.xml">
      <Property name="Value" value="TRA_ALLOY1" />
    </Property>
    <Property value="NMSString0x10.xml">
      <Property name="Value" value="TRA_ALLOY2" />
    </Property>
    <Property value="NMSString0x10.xml">
      <Property name="Value" value="TRA_COMMODITY1" />
    </Property>
    <Property value="NMSString0x10.xml">
      <Property name="Value" value="TRA_COMMODITY2" />
    </Property>
    <Property value="NMSString0x10.xml">
      <Property name="Value" value="TRA_COMPONENT1" />
    </Property>
    <Property value="NMSString0x10.xml">
      <Property name="Value" value="TRA_COMPONENT2" />
    </Property>
    <Property value="NMSString0x10.xml">
      <Property name="Value" value="TRA_ENERGY1" />
    </Property>
    <Property value="NMSString0x10.xml">
      <Property name="Value" value="TRA_ENERGY2" />
    </Property>
    <Property value="NMSString0x10.xml">
      <Property name="Value" value="TRA_EXOTICS1" />
    </Property>
    <Property value="NMSString0x10.xml">
      <Property name="Value" value="TRA_EXOTICS2" />
    </Property>
    <Property value="NMSString0x10.xml">
      <Property name="Value" value="TRA_MINERALS1" />
    </Property>
    <Property value="NMSString0x10.xml">
      <Property name="Value" value="TRA_MINERALS2" />
    </Property>
    <Property value="NMSString0x10.xml">
      <Property name="Value" value="TRA_TECH1" />
    </Property>
    <Property value="NMSString0x10.xml">
      <Property name="Value" value="TRA_TECH2" />
    </Property>
]]
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"NeutralProductionElements"},
                            ["CREATE_HOS"] = "TRUE",
                            ["ADD"] =
[[
    <Property value="NMSString0x10.xml">
      <Property name="Value" value="TRA_ALLOY2" />
    </Property>
    <Property value="NMSString0x10.xml">
      <Property name="Value" value="TRA_ALLOY3" />
    </Property>
    <Property value="NMSString0x10.xml">
      <Property name="Value" value="TRA_ALLOY4" />
    </Property>
    <Property value="NMSString0x10.xml">
      <Property name="Value" value="TRA_COMMODITY2" />
    </Property>
    <Property value="NMSString0x10.xml">
      <Property name="Value" value="TRA_COMMODITY3" />
    </Property>
    <Property value="NMSString0x10.xml">
      <Property name="Value" value="TRA_COMMODITY4" />
    </Property>
    <Property value="NMSString0x10.xml">
      <Property name="Value" value="TRA_COMPONENT2" />
    </Property>
    <Property value="NMSString0x10.xml">
      <Property name="Value" value="TRA_COMPONENT3" />
    </Property>
    <Property value="NMSString0x10.xml">
      <Property name="Value" value="TRA_COMPONENT4" />
    </Property>
    <Property value="NMSString0x10.xml">
      <Property name="Value" value="TRA_ENERGY2" />
    </Property>
    <Property value="NMSString0x10.xml">
      <Property name="Value" value="TRA_ENERGY3" />
    </Property>
    <Property value="NMSString0x10.xml">
      <Property name="Value" value="TRA_ENERGY4" />
    </Property>
    <Property value="NMSString0x10.xml">
      <Property name="Value" value="TRA_EXOTICS2" />
    </Property>
    <Property value="NMSString0x10.xml">
      <Property name="Value" value="TRA_EXOTICS3" />
    </Property>
    <Property value="NMSString0x10.xml">
      <Property name="Value" value="TRA_EXOTICS4" />
    </Property>
    <Property value="NMSString0x10.xml">
      <Property name="Value" value="TRA_MINERALS2" />
    </Property>
    <Property value="NMSString0x10.xml">
      <Property name="Value" value="TRA_MINERALS3" />
    </Property>
    <Property value="NMSString0x10.xml">
      <Property name="Value" value="TRA_MINERALS4" />
    </Property>
    <Property value="NMSString0x10.xml">
      <Property name="Value" value="TRA_TECH2" />
    </Property>
    <Property value="NMSString0x10.xml">
      <Property name="Value" value="TRA_TECH3" />
    </Property>
    <Property value="NMSString0x10.xml">
      <Property name="Value" value="TRA_TECH4" />
    </Property>
]]
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"RichProductionElements"},
                            ["CREATE_HOS"] = "TRUE",
                            ["ADD"] =
[[
    <Property value="NMSString0x10.xml">
      <Property name="Value" value="TRA_ALLOY4" />
    </Property>
    <Property value="NMSString0x10.xml">
      <Property name="Value" value="TRA_ALLOY5" />
    </Property>
    <Property value="NMSString0x10.xml">
      <Property name="Value" value="TRA_COMMODITY4" />
    </Property>
    <Property value="NMSString0x10.xml">
      <Property name="Value" value="TRA_COMMODITY5" />
    </Property>
    <Property value="NMSString0x10.xml">
      <Property name="Value" value="TRA_COMPONENT4" />
    </Property>
    <Property value="NMSString0x10.xml">
      <Property name="Value" value="TRA_COMPONENT5" />
    </Property>
    <Property value="NMSString0x10.xml">
      <Property name="Value" value="TRA_ENERGY4" />
    </Property>
    <Property value="NMSString0x10.xml">
      <Property name="Value" value="TRA_ENERGY5" />
    </Property>
    <Property value="NMSString0x10.xml">
      <Property name="Value" value="TRA_EXOTICS4" />
    </Property>
    <Property value="NMSString0x10.xml">
      <Property name="Value" value="TRA_EXOTICS5" />
    </Property>
    <Property value="NMSString0x10.xml">
      <Property name="Value" value="TRA_MINERALS4" />
    </Property>
    <Property value="NMSString0x10.xml">
      <Property name="Value" value="TRA_MINERALS5" />
    </Property>
    <Property value="NMSString0x10.xml">
      <Property name="Value" value="TRA_TECH4" />
    </Property>
    <Property value="NMSString0x10.xml">
      <Property name="Value" value="TRA_TECH5" />
    </Property>
]]
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\ENVIRONMENT\PLANETBUILDINGTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Settlement_Hub", "GcBuildingDefinitionData.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NumOverridesToGenerate", "1"}
                            }
                        },
                    }
                },
            }
        }
    }
}