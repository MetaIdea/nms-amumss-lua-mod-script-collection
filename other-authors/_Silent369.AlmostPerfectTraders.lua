local modfilename = "AlmostPerfectTraders"
local lua_author  = "Silent"
local lua_version = "v1.2"
local mod_author  = "Silent369"
local nms_version = "3.9x"
local description = "Modifies AI Ships Outpost Approach/Landing. Freighter Hangerdoor/Spacestation Letterbox Entrance Curves"

--Modifies:
--GCAISPACESHIPGLOBALS.GLOBAL.MBIN
--MODELS\SPACE\SPACESTATION\SPACESTATION\ENTITIES\STATION.ENTITY.MBIN
--MODELS\SPACE\SPACESTATION\MODULARPARTS\ENTITIES\STATION_DOCK.ENTITY.MBIN

_ApproachRange = 120
_ApproachSpeed = 150
_AutoLandRange = 400

NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"]            = "_"..modfilename..lua_version..".pak",
    ["LUA_AUTHOR"]              = lua_author,
    ["MOD_AUTHOR"]              = mod_author,
    ["NMS_VERSION"]             = nms_version,
    ["MOD_DESCRIPTION"]         = description,
    ["MODIFICATIONS"]           =
    {
        {
            ["MBIN_CHANGE_TABLE"]   =
            {
                {
                    ["MBIN_FILE_SOURCE"] = {"MODELS\SPACE\SPACESTATION\SPACESTATION\ENTITIES\STATION.ENTITY.MBIN"},
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcOutpostComponentData.xml"},
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"PlayerAutoLandRange",                   "400"}, --Original "300"
                                {"CircleRadius",                         "1900"}, --Original "2000"
                                {"LandingSpeed",                       "0.0001"}, --Original "10"
                                {"LandingHeight",                         "9.5"}, --Original "10"
                                {"TakeOffHeight",                           "1"}, --Original "3"
                                {"TakeOffFwdDist",                          "3"}, --Original "5"
                                {"TakeOffTime",                             "1"}, --Original "1"
                                {"TakeOffAlignTime",                      "1.1"}, --Original "1"
                                {"TakeOffSpeed",                          "250"}, --Original "500"
                                {"TakeOffBoost",                          "110"}, --Original "120"
                                {"TakeOffExtraAIHeight",                    "4"}, --Original "7"
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = {"MODELS\SPACE\SPACESTATION\MODULARPARTS\ENTITIES\STATION_DOCK.ENTITY.MBIN"},
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcOutpostComponentData.xml"},
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"ApproachRange",                _ApproachRange}, --Original "100"
                                {"ApproachSpeed",                _ApproachSpeed}, --Original "100"
                                {"PlayerAutoLandRange",          _AutoLandRange}, --Original "300"
                                {"CircleRadius",                          "190"}, --Original "200"
                                {"LandingSpeed",                       "0.0001"}, --Original "10"
                                {"LandingHeight",                         "9.5"}, --Original "10"
                                {"TakeOffHeight",                           "2"}, --Original "10"
                                {"TakeOffFwdDist",                          "3"}, --Original "5"
                                {"TakeOffTime",                             "1"}, --Original "1"
                                {"TakeOffAlignTime",                      "1.1"}, --Original "1"
                                {"TakeOffSpeed",                           "85"}, --Original "100"
                                {"TakeOffBoost",                            "8"}, --Original "10"
                                {"TakeOffExtraAIHeight",                    "4"}, --Original "7"
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"]    = {"GCAISPACESHIPGLOBALS.GLOBAL.MBIN",},
                    ["EXML_CHANGE_TABLE"]   =
                    {
                            ---------------------------------------------------------------------------------------
                            --Outpost Approach / Landing / Speed
                            ---------------------------------------------------------------------------------------
                        {
                            ["REPLACE_TYPE"]        = "ALL",
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"MinimumCircleTimeBeforeLanding",          "1"}, --Original "5"
                                {"MinimumTimeBetweenOutpostLandings",       "1"}, --Original "3"
                                --{"SpaceStationTraderRequestTime",           "0"}, --Original "20"
                                {"FillUpOutposts",                       "True"}, --Original "False"
                                {"DockingWaitDistance",                     "8"}, --Original "10"
                                {"DockingLandingTime",                      "2"}, --Original "1.6"
                                {"DockingSpringTime",                       "4"}, --Original "6"
                                {"DockingRotateSpeed",                   "0.65"}, --Original "0.5"
                                {"DockingLandingBounceTime",              "0.4"}, --Original "0.8"
                                {"DockingLandingBounceHeight",            "0.4"}, --Original "0.5"
                                {"DirectionBrakeThresholdSq",             "0.5"}, --Original "1"
                                {"OutpostDockMaxApproachSpeed",           "450"}, --Original "400"
                                {"OutpostDockOverspeedBrake",              "80"}, --Original "80"
                                {"OutpostDockApproachDistance",           "950"}, --Original "1000"
                                {"OutpostDockApproachSpeedUpDamper",      "0.2"}, --Original "0.3"
                                {"OutpostDockAIGetToApproachForce",       "0.3"}, --Original "0.5"
                                {"OutpostDockAIGetToApproachBrakeForce",    "2"}, --Original "1"
                                {"OutpostDockAIApproachSpeedForce",         "4"}, --Original "5"
                                {"OutpostDockMinTipLength",                 "5"}, --Original "5"
                                {"OutpostDockMaxTipLength",                "12"}, --Original "10"
                                {"OutpostDockApproachUpAmount",          "0.05"}, --Original "0.1"
                                {"OutpostToLandingDistance",               "40"}, --Original "50"
                                {"LandingTipAngle",                        "13"}, --Original "25"
                                {"LandingLongTipAngle",                     "6"}, --Original "10"
                            }
                        },

                            ---------------------------------------------------------------------------------------
                            --Crashed Ships Have Less Damaged Slots / Cost Less To Repair
                            ---------------------------------------------------------------------------------------

                        {
                            ["REPLACE_TYPE"]        = "ALL",
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                --{"CrashedShipMinNonBrokenSlots",           "20"},
                                {"CrashedShipBrokenSlotChance",             "0"},
                                {"CrashedShipBrokenTechChance",             "0"},
                                {"CrashedShipRepairSlotCostIncreaseFactor", "0"},
                                {"CrashedShipGeneralCostDiscount",          "1"},
                                {"CrashedShipTechSlotsCostDiscount",        "1"},
                            }
                        },

                            ---------------------------------------------------------------------------------------
                            --Outpost / Planet Landing Adjustments (NPC)
                            ---------------------------------------------------------------------------------------

                        {
                            ["SPECIAL_KEY_WORDS"]   = {"OutpostLanding", "GcSpaceshipTravelData.xml"},
                            ["REPLACE_TYPE"]        = "ALL",
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"MinSpeed",                               "80"}, --Original "80"
                                {"MaxSpeed",                               "90"}, --Original "80"
                                {"BoostSpeed",                            "900"}, --Original "1000"
                                {"Force",                                 "250"}, --Original "300"
                                {"MinSpeedForce",                           "3"}, --Original "5"
                                {"DirectionBrake",                          "7"}, --Original "10"
                                {"Falloff",                               "0.3"}, --Original "0.8"
                                {"MinHeight",                            "12.7"}, --Original "15"
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"PlanetLanding", "GcSpaceshipTravelData.xml"},
                            ["REPLACE_TYPE"]        = "ALL",
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"MinSpeed",                               "15"}, --Original "15"
                                {"MaxSpeed",                               "30"}, --Original "20"
                                {"BoostSpeed",                            "900"}, --Original "1000"
                                {"Force",                                 "100"}, --Original "200"
                                {"MinSpeedForce",                           "3"}, --Original "5"
                                {"DirectionBrake",                          "7"}, --Original "10"
                                {"Falloff",                               "0.3"}, --Original "0.8"
                                {"MinHeight",                            "12.7"}, --Original "15"
                            }
                        },

                            ---------------------------------------------------------------------------------------
                            --No Pirate Attacks On Specific Buildings
                            ---------------------------------------------------------------------------------------
                        {
                            ["PRECEDING_KEY_WORDS"] = {"PirateAttackableBuildingClasses"},
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"Outpost",                             "False"}, --Original "True"
                                {"LargeBuilding",                       "False"}, --Original "True"
                            }
                        },
                    }
                },
            }
        },
    }
}