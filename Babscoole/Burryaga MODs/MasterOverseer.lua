NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "MasterOverseer.pak",
["MOD_AUTHOR"]    = "Burryaga",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "3.70",
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
                                {"BuildingUpgradeTimeInSeconds",          "30"},
                                {"JudgementWaitTimeMin",                  "180"},
                                {"JudgementWaitTimeMax",                  "300"},
                                {"MaxNPCPopulation",                      "50"},
                                {"SettlementMiniExpeditionSuccessChance", "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"SettlementBuildingTimes"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Settlement_LandingZone",     "30"},
                                {"Settlement_Bar",             "30"},
                                {"Settlement_Tower",           "30"},
                                {"Settlement_Market",          "30"},
                                {"Settlement_Small",           "30"},
                                {"Settlement_SmallIndustrial", "30"},
                                {"Settlement_Medium",          "30"},
                                {"Settlement_Large",           "30"},
                                {"Settlement_SheriffsOffice",  "30"},
                                {"Settlement_Double",          "30"},
                                {"Settlement_Farm",            "30"},
                                {"Settlement_Factory",         "30"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Settlement_LandingZone",     "GcSettlementBuildingCost.xml", "GroundStorey",  "GcSettlementBuildingCostData.xml"},
                                {"Settlement_Bar",             "GcSettlementBuildingCost.xml", "GroundStorey",  "GcSettlementBuildingCostData.xml"},
                                {"Settlement_Tower",           "GcSettlementBuildingCost.xml", "GroundStorey",  "GcSettlementBuildingCostData.xml"},
                                {"Settlement_Tower",           "GcSettlementBuildingCost.xml", "RegularStorey", "GcSettlementBuildingCostData.xml"},
                                {"Settlement_Tower",           "GcSettlementBuildingCost.xml", "Roof",          "GcSettlementBuildingCostData.xml"},
                                {"Settlement_Tower",           "GcSettlementBuildingCost.xml", "Decoration",    "GcSettlementBuildingCostData.xml"},
                                {"Settlement_Market",          "GcSettlementBuildingCost.xml", "GroundStorey",  "GcSettlementBuildingCostData.xml"},
                                {"Settlement_Market",          "GcSettlementBuildingCost.xml", "RegularStorey", "GcSettlementBuildingCostData.xml"},
                                {"Settlement_Market",          "GcSettlementBuildingCost.xml", "Roof",          "GcSettlementBuildingCostData.xml"},
                                {"Settlement_Small",           "GcSettlementBuildingCost.xml", "GroundStorey",  "GcSettlementBuildingCostData.xml"},
                                {"Settlement_Small",           "GcSettlementBuildingCost.xml", "RegularStorey", "GcSettlementBuildingCostData.xml"},
                                {"Settlement_Small",           "GcSettlementBuildingCost.xml", "Decoration",    "GcSettlementBuildingCostData.xml"},
                                {"Settlement_SmallIndustrial", "GcSettlementBuildingCost.xml", "GroundStorey",  "GcSettlementBuildingCostData.xml"},
                                {"Settlement_SmallIndustrial", "GcSettlementBuildingCost.xml", "RegularStorey", "GcSettlementBuildingCostData.xml"},
                                {"Settlement_Medium",          "GcSettlementBuildingCost.xml", "GroundStorey",  "GcSettlementBuildingCostData.xml"},
                                {"Settlement_Medium",          "GcSettlementBuildingCost.xml", "RegularStorey", "GcSettlementBuildingCostData.xml"},
                                {"Settlement_Large",           "GcSettlementBuildingCost.xml", "GroundStorey",  "GcSettlementBuildingCostData.xml"},
                                {"Settlement_Large",           "GcSettlementBuildingCost.xml", "RegularStorey", "GcSettlementBuildingCostData.xml"},
                                {"Settlement_SheriffsOffice",  "GcSettlementBuildingCost.xml", "GroundStorey",  "GcSettlementBuildingCostData.xml"},
                                {"Settlement_Double",          "GcSettlementBuildingCost.xml", "GroundStorey",  "GcSettlementBuildingCostData.xml"},
                                {"Settlement_Double",          "GcSettlementBuildingCost.xml", "RegularStorey", "GcSettlementBuildingCostData.xml"},
                                {"Settlement_Farm",            "GcSettlementBuildingCost.xml", "GroundStorey",  "GcSettlementBuildingCostData.xml"},
                                {"Settlement_Farm",            "GcSettlementBuildingCost.xml", "RegularStorey", "GcSettlementBuildingCostData.xml"},
                                {"Settlement_Farm",            "GcSettlementBuildingCost.xml", "Roof",          "GcSettlementBuildingCostData.xml"},
                                {"Settlement_Factory",         "GcSettlementBuildingCost.xml", "GroundStorey",  "GcSettlementBuildingCostData.xml"},
                                {"Settlement_Factory",         "GcSettlementBuildingCost.xml", "RegularStorey", "GcSettlementBuildingCostData.xml"},
                                {"Settlement_Factory",         "GcSettlementBuildingCost.xml", "Roof",          "GcSettlementBuildingCostData.xml"},
                            },
                            ["PRECEDING_KEY_WORDS"] = {"Substances"},
                            ["CREATE_HOES"] = "TRUE",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Settlement_LandingZone",     "GcSettlementBuildingCost.xml", "GroundStorey",  "GcSettlementBuildingCostData.xml"},
                                {"Settlement_Bar",             "GcSettlementBuildingCost.xml", "GroundStorey",  "GcSettlementBuildingCostData.xml"},
                                {"Settlement_Tower",           "GcSettlementBuildingCost.xml", "GroundStorey",  "GcSettlementBuildingCostData.xml"},
                                {"Settlement_Tower",           "GcSettlementBuildingCost.xml", "RegularStorey", "GcSettlementBuildingCostData.xml"},
                                {"Settlement_Tower",           "GcSettlementBuildingCost.xml", "Roof",          "GcSettlementBuildingCostData.xml"},
                                {"Settlement_Tower",           "GcSettlementBuildingCost.xml", "Decoration",    "GcSettlementBuildingCostData.xml"},
                                {"Settlement_Market",          "GcSettlementBuildingCost.xml", "GroundStorey",  "GcSettlementBuildingCostData.xml"},
                                {"Settlement_Market",          "GcSettlementBuildingCost.xml", "RegularStorey", "GcSettlementBuildingCostData.xml"},
                                {"Settlement_Market",          "GcSettlementBuildingCost.xml", "Roof",          "GcSettlementBuildingCostData.xml"},
                                {"Settlement_Small",           "GcSettlementBuildingCost.xml", "GroundStorey",  "GcSettlementBuildingCostData.xml"},
                                {"Settlement_Small",           "GcSettlementBuildingCost.xml", "RegularStorey", "GcSettlementBuildingCostData.xml"},
                                {"Settlement_Small",           "GcSettlementBuildingCost.xml", "Decoration",    "GcSettlementBuildingCostData.xml"},
                                {"Settlement_SmallIndustrial", "GcSettlementBuildingCost.xml", "GroundStorey",  "GcSettlementBuildingCostData.xml"},
                                {"Settlement_SmallIndustrial", "GcSettlementBuildingCost.xml", "RegularStorey", "GcSettlementBuildingCostData.xml"},
                                {"Settlement_Medium",          "GcSettlementBuildingCost.xml", "GroundStorey",  "GcSettlementBuildingCostData.xml"},
                                {"Settlement_Medium",          "GcSettlementBuildingCost.xml", "RegularStorey", "GcSettlementBuildingCostData.xml"},
                                {"Settlement_Large",           "GcSettlementBuildingCost.xml", "GroundStorey",  "GcSettlementBuildingCostData.xml"},
                                {"Settlement_Large",           "GcSettlementBuildingCost.xml", "RegularStorey", "GcSettlementBuildingCostData.xml"},
                                {"Settlement_SheriffsOffice",  "GcSettlementBuildingCost.xml", "GroundStorey",  "GcSettlementBuildingCostData.xml"},
                                {"Settlement_Double",          "GcSettlementBuildingCost.xml", "GroundStorey",  "GcSettlementBuildingCostData.xml"},
                                {"Settlement_Double",          "GcSettlementBuildingCost.xml", "RegularStorey", "GcSettlementBuildingCostData.xml"},
                                {"Settlement_Farm",            "GcSettlementBuildingCost.xml", "GroundStorey",  "GcSettlementBuildingCostData.xml"},
                                {"Settlement_Farm",            "GcSettlementBuildingCost.xml", "RegularStorey", "GcSettlementBuildingCostData.xml"},
                                {"Settlement_Farm",            "GcSettlementBuildingCost.xml", "Roof",          "GcSettlementBuildingCostData.xml"},
                                {"Settlement_Factory",         "GcSettlementBuildingCost.xml", "GroundStorey",  "GcSettlementBuildingCostData.xml"},
                                {"Settlement_Factory",         "GcSettlementBuildingCost.xml", "RegularStorey", "GcSettlementBuildingCostData.xml"},
                                {"Settlement_Factory",         "GcSettlementBuildingCost.xml", "Roof",          "GcSettlementBuildingCostData.xml"},
                            },
                            ["PRECEDING_KEY_WORDS"] = {"Products"},
                            ["CREATE_HOS"] = "TRUE",
                            ["ADD"] =
[[
            <Property value="NMSString0x10.xml">
              <Property name="Value" value="NANOTUBES" />
            </Property>
]]
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
                                {"Settlement_Factory",         "GcSettlementBuildingCost.xml", "GroundStorey",  "GcSettlementBuildingCostData.xml"},
                                {"Settlement_Factory",         "GcSettlementBuildingCost.xml", "RegularStorey", "GcSettlementBuildingCostData.xml"},
                                {"Settlement_Factory",         "GcSettlementBuildingCost.xml", "Roof",          "GcSettlementBuildingCostData.xml"},
                                {"Settlement_Factory",         "GcSettlementBuildingCost.xml", "Decoration",    "GcSettlementBuildingCostData.xml"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountMin", "2"},
                                {"AmountMax", "2"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Settlement_LandingZone",     "GcSettlementBuildingCost.xml", "RegularStorey", "GcSettlementBuildingCostData.xml"},
                                {"Settlement_LandingZone",     "GcSettlementBuildingCost.xml", "Roof",          "GcSettlementBuildingCostData.xml"},
                                {"Settlement_LandingZone",     "GcSettlementBuildingCost.xml", "Decoration",    "GcSettlementBuildingCostData.xml"},
                                {"Settlement_Bar",             "GcSettlementBuildingCost.xml", "RegularStorey", "GcSettlementBuildingCostData.xml"},
                                {"Settlement_Bar",             "GcSettlementBuildingCost.xml", "Roof",          "GcSettlementBuildingCostData.xml"},
                                {"Settlement_Bar",             "GcSettlementBuildingCost.xml", "Decoration",    "GcSettlementBuildingCostData.xml"},
                                {"Settlement_Tower",           "GcSettlementBuildingCost.xml", "RegularStorey", "GcSettlementBuildingCostData.xml"},
                                {"Settlement_Tower",           "GcSettlementBuildingCost.xml", "Roof",          "GcSettlementBuildingCostData.xml"},
                                {"Settlement_Tower",           "GcSettlementBuildingCost.xml", "Decoration",    "GcSettlementBuildingCostData.xml"},
                                {"Settlement_Market",          "GcSettlementBuildingCost.xml", "RegularStorey", "GcSettlementBuildingCostData.xml"},
                                {"Settlement_Market",          "GcSettlementBuildingCost.xml", "Roof",          "GcSettlementBuildingCostData.xml"},
                                {"Settlement_Market",          "GcSettlementBuildingCost.xml", "Decoration",    "GcSettlementBuildingCostData.xml"},
                                {"Settlement_Small",           "GcSettlementBuildingCost.xml", "RegularStorey", "GcSettlementBuildingCostData.xml"},
                                {"Settlement_Small",           "GcSettlementBuildingCost.xml", "Roof",          "GcSettlementBuildingCostData.xml"},
                                {"Settlement_SmallIndustrial", "GcSettlementBuildingCost.xml", "Roof",          "GcSettlementBuildingCostData.xml"},
                                {"Settlement_Medium",          "GcSettlementBuildingCost.xml", "Roof",          "GcSettlementBuildingCostData.xml"},
                                {"Settlement_Medium",          "GcSettlementBuildingCost.xml", "Decoration",    "GcSettlementBuildingCostData.xml"},
                                {"Settlement_Large",           "GcSettlementBuildingCost.xml", "Roof",          "GcSettlementBuildingCostData.xml"},
                                {"Settlement_SheriffsOffice",  "GcSettlementBuildingCost.xml", "RegularStorey", "GcSettlementBuildingCostData.xml"},
                                {"Settlement_SheriffsOffice",  "GcSettlementBuildingCost.xml", "Roof",          "GcSettlementBuildingCostData.xml"},
                                {"Settlement_SheriffsOffice",  "GcSettlementBuildingCost.xml", "Decoration",    "GcSettlementBuildingCostData.xml"},
                                {"Settlement_Double",          "GcSettlementBuildingCost.xml", "Roof",          "GcSettlementBuildingCostData.xml"},
                                {"Settlement_Double",          "GcSettlementBuildingCost.xml", "Decoration",    "GcSettlementBuildingCostData.xml"},
                                {"Settlement_Farm",            "GcSettlementBuildingCost.xml", "Decoration",    "GcSettlementBuildingCostData.xml"},
                                {"Settlement_Factory",         "GcSettlementBuildingCost.xml", "Decoration",    "GcSettlementBuildingCostData.xml"},
                            },
                            ["PRECEDING_KEY_WORDS"] = {"Products"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "NANOTUBES"}
                            }
                        },
                    }
                },
            }
        }
    }
}