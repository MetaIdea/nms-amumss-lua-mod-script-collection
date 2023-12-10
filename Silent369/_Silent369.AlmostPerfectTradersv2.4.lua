local modfilename = "AlmostPerfectTraders"
local lua_author  = "Silent"
local lua_version = "v2.4"
local mod_author  = "Silent369"
local nms_version = "4.46"
local maintenance = mod_author
local description = [[

Modifies AI Ships Outpost / Planetary Archive / Station Approach and Landing Settings.
Changes settings so that outposts / planetary archives and stations 'feel' much more
alive and bustling with activity. There should be a faster turnaround of ships arriving
and leaving these locations.

Also changes slightly several ship landing gear animation speed timings so they land
with their respective landing-gear fully extended before touching down on the docking
pads.

There are also optional settings to turn off Pirate Attacks at Trade Outposts / Archives
and to minimise the damage to Crashed Ships when discovered to save resources on repair.

]]

--|=======================================================================================--

local _NoPirateAttacks = true
local _CrashShipDamage = true
local _FillUp_Outposts = true

--|=======================================================================================--

--Station Entity
local _sApproachRange  = 155
local _sApproachSpeed  = 200
local _sAutoLandRange  = 345

--Station Dock Entity
local _dApproachRange  = 105
local _dApproachSpeed  = 200
local _dAutoLandRange  = 345

--LandingGear Speed
local _eXpAnimSpeedUp  = 0.6
local _eXpAnimSpeedDn  = 1.6

--|=======================================================================================--

TableData = TableData or {}

--|=======================================================================================--

--| Crashed Ships Have Less Damaged Slots / Cost Less To Repair
--|=======================================================================================--
if _CrashShipDamage then
    table.insert(TableData,
        {
            ["REPLACE_TYPE"]        = "ALL",
            ["INTEGER_TO_FLOAT"]    = "FORCE",
            ["VALUE_CHANGE_TABLE"]  =
            {
                {"CrashedShipMinNonBrokenSlots",            "9"}, --Original "3"
                {"CrashedShipBrokenSlotChance",             "0"}, --Original "0.75"
                {"CrashedShipBrokenTechChance",             "0"}, --Original "0.7"
                {"CrashedShipRepairSlotCostIncreaseFactor", "0"}, --Original "1.3"
                {"CrashedShipGeneralCostDiscount",          "1"}, --Original "0.7"
                {"CrashedShipTechSlotsCostDiscount",        "1"}, --Original "0.1"
                {"SentinelGunBrokenSlotChance",             "0"}, --Original "0.5"
            }
        }
    )
end

--| No Pirate Attacks On Specific Buildings (for Ship Hunters, Outposts/Planet Archives).
--|=======================================================================================--
if _NoPirateAttacks then
    table.insert(TableData,
        {
            ["PRECEDING_KEY_WORDS"] = {"PirateAttackableBuildingClasses"},
            ["VALUE_CHANGE_TABLE"]  =
            {
                {"Outpost",       "False"}, --Original "True"
                {"LargeBuilding", "False"}, --Original "True"
            }
        }
    )
end

--| Toggle whether to Fill Up Outposts or not.
--|=======================================================================================--
if _FillUp_Outposts then
    table.insert(TableData,
        {
            ["SPECIAL_KEY_WORDS"]  = {"FillUpOutposts", "False"},
            ["VALUE_CHANGE_TABLE"] =
            {
                {"FillUpOutposts", "True"}, --Original "False"
            }
        }
    )
end

--|=======================================================================================--

NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"]         = string.format("_%s%s.pak", modfilename, lua_version),
    ["LUA_AUTHOR"]           = lua_author,
    ["MOD_AUTHOR"]           = mod_author,
    ["NMS_VERSION"]          = nms_version,
    ["MOD_DESCRIPTION"]      = description,
    ["MAINTENANCE"]          = maintenance,
    ["MODIFICATIONS"]        =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"]  = [[GCAISPACESHIPGLOBALS.GLOBAL.MBIN]],
                    ["EXML_CHANGE_TABLE"] = TableData
                },
            }
        },
        {
            ["MBIN_CHANGE_TABLE"]   =
            {
                {
                    ["MBIN_FILE_SOURCE"] =
                    {
                        [[MODELS\\SPACE\\SPACESTATION\\SPACESTATION\\ENTITIES\\STATION.ENTITY.MBIN]],
                        [[MODELS\\SPACE\\SPACESTATION\\SPACESTATION\\ENTITIES\\STATION_ABANDONED.ENTITY.MBIN]],
                        [[MODELS\\SPACE\\NEXUS\\NEXUS\\ENTITIES\\NEXUS.ENTITY.MBIN]],
                        [[MODELS\\SPACE\\NEXUS\\NEXUSEXTERIOR\\ENTITIES\\NEXUSEXTERIOR.ENTITY.MBIN]],
                        [[MODELS\\SPACE\\ATLASSTATION\\SHARED\\ENTITIES\\ATLASSTATION.ENTITY.MBIN]]
                    },
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcOutpostComponentData.xml"},
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"ApproachRange",               _sApproachRange}, --Original "150"
                                {"ApproachSpeed",               _sApproachSpeed}, --Original "150"
                                {"PlayerAutoLandRange",         _sAutoLandRange}, --Original "300"
                                {"CircleRadius",                         "1900"}, --Original "2000"
                                {"TakeOffHeight",                           "3"}, --Original "3"
                                {"TakeOffFwdDist",                          "2"}, --Original "5"
                                {"TakeOffAlignTime",                      "0.5"}, --Original "1"
                                {"TakeOffExtraAIHeight",                    "4"}, --Original "7"
                                {"PostTakeOffExtraPlayerSpeed",           "150"}, --Original "60"
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] =
                    {
                        [[MODELS\\SPACE\\SPACESTATION\\MODULARPARTS\\ENTITIES\\STATION_DOCK.ENTITY.MBIN]],
                        [[MODELS\\PLANETS\\BIOMES\\COMMON\\BUILDINGS\\LANDINGPAD\\LANDINGPADTRADER\\ENTITIES\\LANDINGPADTRADER.ENTITY.MBIN]]
                    },
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcOutpostComponentData.xml"},
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"ApproachRange",               _dApproachRange}, --Original "100"
                                {"ApproachSpeed",               _dApproachSpeed}, --Original "100"
                                {"PlayerAutoLandRange",         _dAutoLandRange}, --Original "300"
                                {"CircleRadius",                          "150"}, --Original "200"
                                {"TakeOffHeight",                           "3"}, --Original "10"
                                {"TakeOffFwdDist",                          "2"}, --Original "5"
                                {"TakeOffAlignTime",                      "0.5"}, --Original "1"
                                {"TakeOffExtraAIHeight",                    "4"}, --Original "7"
                                {"PostTakeOffExtraPlayerSpeed",           "150"}, --Original "60"
                            }
                        },
                    }
                },
                            --|=======================================================================================--
                            --Adjust Landing Gear Animation Speed for Several Ship Types
                            --|=======================================================================================--
                {
                    ["MBIN_FILE_SOURCE"]  =
                    {
                        [[MODELS\\COMMON\\SPACECRAFT\\SCIENTIFIC\\ACCESSORIES\\LANDINGGEAR\\LANDINGGEAR_POD\\ENTITIES\\LANDINGGEAR.ENTITY.MBIN]],
                        [[MODELS\\COMMON\\SPACECRAFT\\DROPSHIPS\\ACCESSORIES\\LANDINGGEAR\\ENTITIES\\LANDINGGEARFRONT.ENTITY.MBIN]],
                        [[MODELS\\COMMON\\SPACECRAFT\\DROPSHIPS\\ACCESSORIES\\LANDINGGEAR\\ENTITIES\\LANDINGGEARREAR.ENTITY.MBIN]],
                        [[MODELS\\COMMON\\SPACECRAFT\\S-CLASS\\ROYALPARTS\\LANDINGGEAR\\LANDINGGEAR_A\\ENTITIES\\S_CLASS_LANDINGGEAR_A.ENTITY.MBIN]],
                        [[MODELS\\COMMON\\SPACECRAFT\\S-CLASS\\SQUIDPARTS\\LANDINGGEAR\\LANDINGGEAR_A\\ENTITIES\\LANDINGGEAR_A.ENTITY.MBIN]]
                    },
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Anim", "LANDING"},
                            ["SECTION_ACTIVE"]      = {1,},
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"Speed", _eXpAnimSpeedDn}, --Original "1"
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Anim", "TAKEOFF"},
                            ["SECTION_ACTIVE"]      = {1,},
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"Speed", _eXpAnimSpeedUp}, --Original "1"
                            }
                        },
                    }
                },
                            --|=======================================================================================--
                            --Outpost / Planet Landing Adjustments (NPC)
                            --|=======================================================================================--
                {
                    ["MBIN_FILE_SOURCE"]    = [[GCAISPACESHIPGLOBALS.GLOBAL.MBIN]],
                    ["EXML_CHANGE_TABLE"]   =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"OutpostLanding", "GcSpaceshipTravelData.xml"},
                            ["REPLACE_TYPE"]        = "ALL",
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"MinSpeed",                              "100"}, --Original "80"
                                {"MaxSpeed",                              "100"}, --Original "80"
                                {"BoostSpeed",                           "2000"}, --Original "1000"
                                {"Force",                                 "400"}, --Original "300"
                                {"TurnMin",                                 "2"}, --Original "1"
                                {"TurnMax",                                 "2"}, --Original "1"
                                {"MaxSpeed",                              "100"}, --Original "80"
                                {"MinHeight",                            "14.6"}, --Original "15"

                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"PlanetLanding", "GcSpaceshipTravelData.xml"},
                            ["REPLACE_TYPE"]        = "ALL",
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"MinSpeed",                              "100"}, --Original "15"
                                {"MaxSpeed",                              "100"}, --Original "20"
                                {"BoostSpeed",                           "2000"}, --Original "1000"
                                {"Force",                                 "300"}, --Original "200"
                                {"TurnMin",                                 "3"}, --Original "2"
                                {"TurnMax",                                 "3"}, --Original "2"
                                {"MinHeight",                            "14.6"}, --Original "15"
                            }
                        },
                        {
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"MinimumCircleTimeBeforeLanding",          "2"}, --Original "5"
                                {"MinimumTimeBetweenOutpostLandings",       "2"}, --Original "3"
                                {"DockingRotateSpeed",                    "0.6"}, --Original "0.5"
                                {"DockWaitMinTime",                        "10"}, --Original "20"
                                {"DockWaitMaxTime",                        "45"}, --Original "60"
                                {"DockingLandingBounceTime",              "0.6"}, --Original "0.8"
                                {"DockingLandingBounceHeight",            "0.4"}, --Original "0.5"
                                {"OutpostDockMinTipLength",                 "5"}, --Original "5"
                                {"OutpostDockMaxTipLength",                "12"}, --Original "10"
                                {"OutpostDockApproachUpAmount",           "0.2"}, --Original "0.1"
                                {"LandingTipAngle",                        "15"}, --Original "25"
                                {"LandingLongTipAngle",                     "7"}, --Original "10"
                            }
                        },
                        {
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"TradeRouteFlickerAmp",                    "0"}, --Original "0.01"
                            }
                        },
                    }
                },
            }
        },
    }
}
