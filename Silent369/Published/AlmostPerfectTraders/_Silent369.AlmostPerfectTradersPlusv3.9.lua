local modfilename = "AlmostPerfectTradersPlus"
local lua_author  = "Silent"
local lua_version = "3.9"
local mod_author  = "Silent369"
local nms_version = "5.12"
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

--Outpost / Trader Spawns
local _xOutpostSpawns  = 3
local _yOutpostSpawns  = 3
local _xTradersSpawns  = 2
local _yTradersSpawns  = 2
local _xAmbientSpawns  = 2
local _yAmbientSpawns  = 2

--Station Entity
local _sApproachRange  = 155
local _sApproachSpeed  = 200
local _sAutoLandRange  = 345

--Station Dock Entity
local _dApproachRange  = 105
local _dApproachSpeed  = 200
local _dAutoLandRange  = 345

--LandingGear Speed
local _eXpAnimSpeedUp  = 0.8
local _eXpAnimSpeedDn  = 1.6

--|=======================================================================================--

TableData = TableData or {}

--|=======================================================================================--

--| Crashed Ships Have Less Damaged Slots / Cost Less To Repair
--|=======================================================================================--
if _CrashShipDamage then
    table.insert(TableData,
        {
            REPLACE_TYPE = "ALL",
            ITF = "FORCE",
            VCT = {
                {"CrashedShipMinNonBrokenSlots",           "12"}, --Original "3"
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
            PKW = {"PirateAttackableBuildingClasses"},
            VCT = {
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
            SKW = {"FillUpOutposts", "False"},
            VCT = {
                {"FillUpOutposts", "True"}, --Original "False"
            }
        }
    )
end

--|=======================================================================================--

NMS_MOD_DEFINITION_CONTAINER =
{
    MOD_FILENAME    = string.format("_%s%s.pak", modfilename, "v"..lua_version),
    LUA_AUTHOR      = lua_author,
    MOD_AUTHOR      = mod_author,
    NMS_VERSION     = nms_version,
    MOD_DESCRIPTION = description,
    MAINTENANCE     = maintenance,
    MODIFICATIONS   =
    {
        {
            MBIN_CT =
            {
                {
                    MBIN_FS = [[GCAISPACESHIPGLOBALS.GLOBAL.MBIN]],
                    EXML_CT = TableData
                },
            }
        },
        {
            MBIN_CT =
            {
                {
                    MBIN_FS =
                    {
                        [[MODELS\SPACE\SPACESTATION\SPACESTATIONTYPEB\ENTITIES\STATIONTYPEB.ENTITY.MBIN]],
                        [[MODELS\SPACE\SPACESTATION\SPACESTATION\ENTITIES\STATION.ENTITY.MBIN]],
                        [[MODELS\SPACE\SPACESTATION\SPACESTATION\ENTITIES\STATION_ABANDONED.ENTITY.MBIN]],
                        [[MODELS\SPACE\NEXUS\NEXUS\ENTITIES\NEXUS.ENTITY.MBIN]],
                        [[MODELS\SPACE\NEXUS\NEXUSEXTERIOR\ENTITIES\NEXUSEXTERIOR.ENTITY.MBIN]],
                        [[MODELS\SPACE\ATLASSTATION\SHARED\ENTITIES\ATLASSTATION.ENTITY.MBIN]]
                    },
                    EXML_CT =
                    {
                        {
                            SKW = {"Template", "GcOutpostComponentData.xml"},
                            ITF = "FORCE",
                            VCT = {
                                {"ApproachRange",               _sApproachRange}, --Original "150"
                                {"ApproachSpeed",               _sApproachSpeed}, --Original "150"
                                {"PlayerAutoLandRange",         _sAutoLandRange}, --Original "300"
                                {"CircleRadius",                         "1900"}, --Original "2000"
                                {"TakeOffHeight",                           "2"}, --Original "3"
                                {"TakeOffFwdDist",                          "3"}, --Original "5"
                                {"TakeOffAlignTime",                      "1.5"}, --Original "1"
                                {"TakeOffExtraAIHeight",                    "2"}, --Original "7"
                                {"PostTakeOffExtraPlayerSpeed",            "30"}, --Original "60"
                            }
                        },
                    }
                },
                {
                    MBIN_FS =
                    {
                        [[MODELS\SPACE\SPACESTATION\MODULARPARTS\ENTITIES\STATION_DOCK.ENTITY.MBIN]],
                        [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\LANDINGPAD\LANDINGPADTRADER\ENTITIES\LANDINGPADTRADER.ENTITY.MBIN]]
                    },
                    EXML_CT =
                    {
                        {
                            SKW = {"Template", "GcOutpostComponentData.xml"},
                            ITF = "FORCE",
                            VCT = {
                                {"ApproachRange",               _dApproachRange}, --Original "100"
                                {"ApproachSpeed",               _dApproachSpeed}, --Original "100"
                                {"PlayerAutoLandRange",         _dAutoLandRange}, --Original "300"
                                {"CircleRadius",                          "150"}, --Original "200"
                                {"TakeOffHeight",                           "5"}, --Original "10"
                                {"TakeOffFwdDist",                          "3"}, --Original "5"
                                {"TakeOffAlignTime",                      "1.5"}, --Original "1"
                                {"TakeOffExtraAIHeight",                    "3"}, --Original "7"
                                {"PostTakeOffExtraPlayerSpeed",            "30"}, --Original "60"
                            }
                        },
                    }
                },
                            --|=======================================================================================--
                            --Adjust Landing Gear Animation Speed for Several Ship Types
                            --|=======================================================================================--
                {
                    MBIN_FS =
                    {
                        [[MODELS\COMMON\SPACECRAFT\SCIENTIFIC\ACCESSORIES\LANDINGGEAR\LANDINGGEAR_POD\ENTITIES\LANDINGGEAR.ENTITY.MBIN]],
                        [[MODELS\COMMON\SPACECRAFT\DROPSHIPS\ACCESSORIES\LANDINGGEAR\ENTITIES\LANDINGGEARFRONT.ENTITY.MBIN]],
                        [[MODELS\COMMON\SPACECRAFT\DROPSHIPS\ACCESSORIES\LANDINGGEAR\ENTITIES\LANDINGGEARREAR.ENTITY.MBIN]],
                        [[MODELS\COMMON\SPACECRAFT\S-CLASS\ROYALPARTS\LANDINGGEAR\LANDINGGEAR_A\ENTITIES\S_CLASS_LANDINGGEAR_A.ENTITY.MBIN]],
                        [[MODELS\COMMON\SPACECRAFT\S-CLASS\SQUIDPARTS\LANDINGGEAR\LANDINGGEAR_A\ENTITIES\LANDINGGEAR_A.ENTITY.MBIN]]
                    },
                    EXML_CT =
                    {
                        {
                            SKW = {"Anim", "GEARDOWN"},
                            SECTION_ACTIVE = {1,},
                            ITF = "FORCE",
                            VCT = {
                                {"Speed", _eXpAnimSpeedDn}, --Original "1"
                            }
                        },
                        {
                            SKW = {"Anim", "GEARUP"},
                            SECTION_ACTIVE = {1,},
                            ITF = "FORCE",
                            VCT = {
                                {"Speed", _eXpAnimSpeedUp}, --Original "1"
                            }
                        },
                    }
                },
                            --|=======================================================================================--
                            --Outpost / Planet Landing Adjustments (NPC)
                            --|=======================================================================================--
                {
                    MBIN_FS = [[GCAISPACESHIPGLOBALS.GLOBAL.MBIN]],
                    EXML_CT =
                    {
                        {
                            SKW = {"OutpostLanding", "GcSpaceshipTravelData.xml"},
                            REPLACE_TYPE = "ALL",
                            ITF = "FORCE",
                            VCT = {
                                {"MinSpeed",                               "50"}, --Original "80"
                                {"MaxSpeed",                               "70"}, --Original "80"
                                {"BoostSpeed",                            "800"}, --Original "1000"
                                {"Force",                                 "200"}, --Original "300"
                                {"TurnMin",                                 "2"}, --Original "1"
                                {"TurnMax",                                 "2"}, --Original "1"
                                {"MaxSpeed",                              "100"}, --Original "80"
                                {"MinHeight",                            "14.6"}, --Original "15"

                            }
                        },
                        {
                            SKW = {"PlanetLanding", "GcSpaceshipTravelData.xml"},
                            REPLACE_TYPE = "ALL",
                            ITF = "FORCE",
                            VCT = {
                                {"MinSpeed",                               "50"}, --Original "15"
                                {"MaxSpeed",                               "50"}, --Original "20"
                                {"BoostSpeed",                            "800"}, --Original "1000"
                                {"Force",                                 "100"}, --Original "200"
                                {"TurnMin",                                 "3"}, --Original "2"
                                {"TurnMax",                                 "3"}, --Original "2"
                                {"MinHeight",                            "14.6"}, --Original "15"
                            }
                        },
                        {
                            ITF = "FORCE",
                            VCT = {
                                {"MinimumCircleTimeBeforeLanding",          "2"}, --Original "5"
                                {"MinimumTimeBetweenOutpostLandings",       "2"}, --Original "3"
                                {"DockingRotateSpeed",                    "0.6"}, --Original "0.5"
                                {"DockWaitMinTime",                        "20"}, --Original "20"
                                {"DockWaitMaxTime",                        "30"}, --Original "60"
                                {"DockingLandingBounceTime",              "0.6"}, --Original "0.8"
                                {"DockingLandingBounceHeight",            "0.4"}, --Original "0.5"
                                {"OutpostDockMinTipLength",                 "5"}, --Original "5"
                                {"OutpostDockMaxTipLength",                "12"}, --Original "10"
                                {"OutpostDockApproachUpAmount",           "0.2"}, --Original "0.1"
                                {"LandingTipAngle",                        "15"}, --Original "25"
                                {"LandingLongTipAngle",                     "7"}, --Original "10"
                                {"MaxNumActiveTraders",                    "30"}, --Original "15"
                                {"SpaceStationTraderRequestTime",           "1"}, --Original "20"
                                {"TraderArriveSpeed",                     "800"}, --Original "300"
                                {"TraderArriveTime",                        "1"}, --Original "3"
                            }
                        },
                        {
                            ITF = "FORCE",
                            VCT = {
                                {"TradeRouteFlickerAmp",                    "0"}, --Original "0.01"
                            }
                        },
                    }
                },

                            --|=======================================================================================--
                            --Outpost / Trader Spawn Rates
                            --|=======================================================================================--
                {
                    MBIN_FS = [[METADATA\SIMULATION\SCENE\EXPERIENCESPAWNTABLE.MBIN]],
                    EXML_CT =
                    {
                        {
                            PKW = {"OutpostSpawns", "Count"},
                            VCT = {
                                {"x", _xOutpostSpawns},
                                {"y", _yOutpostSpawns},
                            }
                        },
                        {
                            PKW = {"TraderSpawns", "Count"},
                            VCT = {
                                {"x", _xTradersSpawns},
                                {"y", _yTradersSpawns},
                            }
                        },
                        {
                            PKW = {"AmbientSpawns", "Count"},
                            MATH_OP = "*",
                            VCT = {
                                {"x", _xAmbientSpawns},
                                {"y", _yAmbientSpawns},
                            }
                        },
                    }
                },
            }
        },
    }
}
