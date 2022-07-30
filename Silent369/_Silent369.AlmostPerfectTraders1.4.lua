local modfilename = "AlmostPerfectTraders"
local lua_author  = "Silent"
local lua_version = "v1.4"
local mod_author  = "Silent369"
local nms_version = "3.9x"
local description = [[
Modifies AI Ships Outpost Approach/Landing. Freighter Hangerdoor/Spacestation
Letterbox Entrance Curves.
]]

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
                                {"LandingHeight",                         "8.5"}, --Original "10"
                                {"TakeOffHeight",                           "2"}, --Original "3"
                                {"TakeOffFwdDist",                          "3"}, --Original "5"
                                {"TakeOffTime",                             "1"}, --Original "1"
                                {"TakeOffAlignTime",                      "1.1"}, --Original "1"
                                {"TakeOffSpeed",                          "550"}, --Original "500"
                                {"TakeOffBoost",                          "130"}, --Original "120"
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
                                {"LandingHeight",                         "8.5"}, --Original "10"
                                {"TakeOffHeight",                           "2"}, --Original "10"
                                {"TakeOffFwdDist",                          "3"}, --Original "5"
                                {"TakeOffTime",                             "1"}, --Original "1"
                                {"TakeOffAlignTime",                      "1.1"}, --Original "1"
                                {"TakeOffSpeed",                          "120"}, --Original "100"
                                {"TakeOffBoost",                           "12"}, --Original "10"
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
                            --Outpost / Planet Landing Adjustments (NPC)
                            ---------------------------------------------------------------------------------------
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"OutpostLanding", "GcSpaceshipTravelData.xml"},
                            ["REPLACE_TYPE"]        = "ALL",
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"MinHeight",                            "12.3"}, --Original "15"
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"PlanetLanding", "GcSpaceshipTravelData.xml"},
                            ["REPLACE_TYPE"]        = "ALL",
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"MinHeight",                            "12.3"}, --Original "15"
                            }
                        },
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
                                {"SpaceStationTraderRequestTime",           "-1"}, --Original "20"
                                {"FillUpOutposts",                       "True"}, --Original "False"
                                {"DockingWaitDistance",                     "8"}, --Original "10"
                                {"DockingLandingTime",                      "2"}, --Original "1.6"
                                {"DockingSpringTime",                       "4"}, --Original "6"
                                {"DockingRotateSpeed",                   "0.65"}, --Original "0.5"
                                {"DockingLandingBounceTime",              "0.4"}, --Original "0.8"
                                {"DockingLandingBounceHeight",            "0.4"}, --Original "0.5"
                                {"DirectionBrakeThresholdSq",             "0.5"}, --Original "1"
                                {"OutpostDockAIGetToApproachForce",       "0.3"}, --Original "0.5"
                                {"OutpostDockAIGetToApproachBrakeForce",    "2"}, --Original "1"
                                {"OutpostDockMinTipLength",                 "5"}, --Original "5"
                                {"OutpostDockMaxTipLength",                "12"}, --Original "10"
                                {"OutpostDockApproachUpAmount",          "0.02"}, --Original "0.1"
                                {"OutpostToLandingDistance",               "40"}, --Original "50"
                                {"LandingTipAngle",                        "15"}, --Original "25"
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
                                {"CrashedShipBrokenSlotChance",             "0"},
                                {"CrashedShipBrokenTechChance",             "0"},
                                {"CrashedShipRepairSlotCostIncreaseFactor", "0"},
                                {"CrashedShipGeneralCostDiscount",          "1"},
                                {"CrashedShipTechSlotsCostDiscount",        "1"},
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