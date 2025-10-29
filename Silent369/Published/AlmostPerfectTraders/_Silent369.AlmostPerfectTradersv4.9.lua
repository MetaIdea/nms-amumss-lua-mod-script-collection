local modfilename = "AlmostPerfectTraders"
local lua_author  = "Silent"
local lua_version = "4.9"
local mod_author  = "Silent369"
local nms_version = "6.12"
local maintenance = mod_author
local exmlcreate  = true
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

-- Initialise Variables
--------------------------------------------------------------------------------------------
local m_NoPirateAttacks = true
local m_CrashShipDamage = true
local m_FillUp_Outposts = true

-- Outpost / Trader Spawns
--------------------------------------------------------------------------------------------
local m_xAIFlybySpawns  = 2
local m_yAIFlybySpawns  = 4
local m_xSPFlybySpawns  = 3
local m_ySPFlybySpawns  = 4
local m_xMNFlybySpawns  = 2
local m_yMNFlybySpawns  = 2
local m_xOutpostSpawns  = 3
local m_yOutpostSpawns  = 3
local m_xTradersSpawns  = 2
local m_yTradersSpawns  = 2
local m_xAmbientSpawns  = 2
local m_yAmbientSpawns  = 2

-- Station Entity
--------------------------------------------------------------------------------------------
local m_sApproachRange  = 155
local m_sApproachSpeed  = 200
local m_sAutoLandRange  = 345

-- Station Dock Entity
--------------------------------------------------------------------------------------------
local m_dApproachRange  = 155
local m_dApproachSpeed  = 200
local m_dAutoLandRange  = 345
local m_dLandingHeight  = 16
local m_dRotateToDock   = true

--LandingGear Speed
--------------------------------------------------------------------------------------------
local _eXpAnimSpeedUp  = 0.8
local _eXpAnimSpeedDn  = 2.0

--------------------------------------------------------------------------------------------

TableData = TableData or {}

--------------------------------------------------------------------------------------------

-- Crashed Ships Have Less Damaged Slots / Cost Less To Repair
--------------------------------------------------------------------------------------------

if m_CrashShipDamage then
    table.insert(TableData,
        {
            REPLACE_TYPE = "ALL",
            VCT = {
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

-- No Pirate Attacks On Specific Buildings (for Ship Hunters, Outposts/Planet Archives).
--------------------------------------------------------------------------------------------

if m_NoPirateAttacks then
    table.insert(TableData,
        {
            PKW = {"PirateAttackableBuildingClasses"},
            VCT = {
                {"Outpost",       "false"}, --Original "true"
                {"LargeBuilding", "false"}, --Original "true"
            }
        }
    )
end

-- Toggle whether to Fill Up Outposts or not.
--------------------------------------------------------------------------------------------

if m_FillUp_Outposts then
    table.insert(TableData,
        {
            VCT = {
                {"FillUpOutposts", "true"}, --Original "false"
            }
        }
    )
end

--------------------------------------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER =
{
    MOD_FILENAME    = table.concat({modfilename, ".v", lua_version}),
    LUA_AUTHOR      = lua_author,
    MOD_AUTHOR      = mod_author,
    NMS_VERSION     = nms_version,
    MOD_DESCRIPTION = description,
    MOD_MAINTENANCE = maintenance,
    EXML_CREATE     = exmlcreate,
    MODIFICATIONS   =
    {
        {
            MBIN_CT =
            {
                {
                    MBIN_FS = [[GCAISPACESHIPGLOBALS.GLOBAL.MBIN]],
                    MXML_CT = TableData
                },
            }
        },
        {
            MBIN_CT =
            {
                {
                    MBIN_FS = {
                        [[MODELS\SPACE\SPACESTATION\SPACESTATIONTYPEB\ENTITIES\STATIONTYPEB.ENTITY.MBIN]],
                        [[MODELS\SPACE\SPACESTATION\SPACESTATION\ENTITIES\STATION.ENTITY.MBIN]],
                        [[MODELS\SPACE\SPACESTATION\SPACESTATION\ENTITIES\STATION_ABANDONED.ENTITY.MBIN]],
                        [[MODELS\SPACE\NEXUS\NEXUS\ENTITIES\NEXUS.ENTITY.MBIN]],
                        [[MODELS\SPACE\NEXUS\NEXUSEXTERIOR\ENTITIES\NEXUSEXTERIOR.ENTITY.MBIN]],
                        [[MODELS\SPACE\ATLASSTATION\SHARED\ENTITIES\ATLASSTATION.ENTITY.MBIN]],
                    },
                    MXML_CT =
                    {
                        {
                            SKW = {"Components", "GcOutpostComponentData"},
                            PKW = {"GcOutpostComponentData"},
                            VCT = {
                                {"ApproachRange",              m_sApproachRange}, --Original "150"
                                {"ApproachSpeed",              m_sApproachSpeed}, --Original "150"
                                {"PlayerAutoLandRange",        m_sAutoLandRange}, --Original "300"
                                {"CircleRadius",                         "1900"}, --Original "2000"
                                {"LandingSpeed",                          "1.5"}, --Original "10"
                                {"LandingHeight",              m_dLandingHeight}, --Original "10"
                                {"RotateToDock",                m_dRotateToDock}, --Original "true"
                                {"TakeOffTime",                           "0.6"}, --Original "1"
                                {"TakeOffAlignTime",                      "1.1"}, --Original "1"
                                {"TakeOffExtraAIHeight",                    "6"}, --Original "7"
                                {"PostTakeOffExtraPlayerHeight",           "-1"}, --Original "0"
                                {"PostTakeOffExtraPlayerSpeed",            "65"}, --Original "60"
                                {"TakeOffProgressForExtraHeight",         "0.8"}, --Original "1"
                            }
                        },
                    }
                },
                {
                    MBIN_FS = {
                        [[MODELS\COMMON\SPACECRAFT\BIGGS\ENTITIES\BIGGSLANDINGZONEOUTPOST.ENTITY.MBIN]]
                    },
                    MXML_CT =
                    {
                        {
                            SKW = {"Components", "GcOutpostComponentData"},
                            PKW = {"GcOutpostComponentData"},
                            VCT = {
                                {"ApproachRange",              m_sApproachRange}, --Original "150"
                                {"ApproachSpeed",              m_sApproachSpeed}, --Original "150"
                                {"PlayerAutoLandRange",        m_sAutoLandRange}, --Original "300"
                                {"CircleRadius",                         "1900"}, --Original "2000"
                                {"LandingSpeed",                            "2"}, --Original "10"
                                {"LandingHeight",              m_dLandingHeight}, --Original "10"
                                {"RotateToDock",                m_dRotateToDock}, --Original "true"
                                {"TakeOffTime",                           "0.5"}, --Original "1"
                                {"TakeOffAlignTime",                      "0.5"}, --Original "1"
                                {"TakeOffExtraAIHeight",                   "10"}, --Original "7"
                                {"PostTakeOffExtraPlayerHeight",           "-1"}, --Original "0"
                                {"PostTakeOffExtraPlayerSpeed",            "85"}, --Original "60"
                                {"TakeOffProgressForExtraHeight",           "1"}, --Original "1"
                            }
                        },
                    }
                },
                {
                    MBIN_FS = {
                        [[MODELS\SPACE\SPACESTATION\MODULARPARTS\ENTITIES\STATION_DOCK.ENTITY.MBIN]],
                        [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\LANDINGPAD\LANDINGPADTRADER\ENTITIES\LANDINGPADTRADER.ENTITY.MBIN]]
                    },
                    MXML_CT =
                    {
                        {
                            SKW = {"Components", "GcOutpostComponentData"},
                            PKW = {"GcOutpostComponentData"},
                            VCT = {
                                {"ApproachRange",              m_dApproachRange}, --Original "100"
                                {"ApproachSpeed",              m_dApproachSpeed}, --Original "100"
                                {"PlayerAutoLandRange",        m_dAutoLandRange}, --Original "300"
                                {"CircleRadius",                          "150"}, --Original "200"
                                {"LandingSpeed",                          "1.5"}, --Original "10"
                                {"LandingHeight",              m_dLandingHeight}, --Original "10"
                                {"RotateToDock",                m_dRotateToDock}, --Original "true"
                                {"TakeOffTime",                           "0.6"}, --Original "1"
                                {"TakeOffAlignTime",                      "1.1"}, --Original "1"
                                {"TakeOffExtraAIHeight",                    "6"}, --Original "7"
                                {"PostTakeOffExtraPlayerHeight",           "-1"}, --Original "0"
                                {"PostTakeOffExtraPlayerSpeed",            "65"}, --Original "60"
                                {"TakeOffProgressForExtraHeight",         "0.8"}, --Original "1"
                            }
                        },
                    }
                },
                --|=======================================================================================--
                --Adjust Landing Gear Animation Speed for Several Ship Types
                --|=======================================================================================--
                {
                    MBIN_FS = {
                        [[MODELS\COMMON\SPACECRAFT\SCIENTIFIC\ACCESSORIES\LANDINGGEAR\LANDINGGEAR_POD\ENTITIES\LANDINGGEAR.ENTITY.MBIN]],
                        [[MODELS\COMMON\SPACECRAFT\DROPSHIPS\ACCESSORIES\LANDINGGEAR\ENTITIES\LANDINGGEARFRONT.ENTITY.MBIN]],
                        [[MODELS\COMMON\SPACECRAFT\DROPSHIPS\ACCESSORIES\LANDINGGEAR\ENTITIES\LANDINGGEARREAR.ENTITY.MBIN]],
                        [[MODELS\COMMON\SPACECRAFT\S-CLASS\ROYALPARTS\LANDINGGEAR\LANDINGGEAR_A\ENTITIES\S_CLASS_LANDINGGEAR_A.ENTITY.MBIN]],
                        [[MODELS\COMMON\SPACECRAFT\S-CLASS\SQUIDPARTS\LANDINGGEAR\LANDINGGEAR_A\ENTITIES\LANDINGGEAR_A.ENTITY.MBIN]]
                    },
                    MXML_CT =
                    {
                        {
                            SKW = {"Anim", "GEARDOWN"},
                            ITF = "FORCE",
                            VCT = {
                                {"Speed", _eXpAnimSpeedDn}, --Original "1"
                            }
                        },
                        {
                            SKW = {"Anim", "GEARUP"},
                            ITF = "FORCE",
                            VCT = {
                                {"Speed", _eXpAnimSpeedUp}, --Original "1"
                            }
                        },
                    }
                },
                --------------------------------------------------------------------------------------------
                -- Outpost / Planet Landing Adjustments (NPC)
                --------------------------------------------------------------------------------------------
                {
                    MBIN_FS = [[GCAISPACESHIPGLOBALS.GLOBAL.MBIN]],
                    MXML_CT =
                    {
                        {
                            SKW = {"OutpostLanding", "GcSpaceshipTravelData"},
                            REPLACE_TYPE = "ALL",
                            VCT = {
                                {"MinSpeed",                               "50"}, --Original "80"
                                {"MaxSpeed",                               "70"}, --Original "80"
                                {"BoostSpeed",                            "800"}, --Original "1000"
                                {"Force",                                 "200"}, --Original "300"
                                {"TurnMin",                                 "2"}, --Original "1"
                                {"TurnMax",                                 "2"}, --Original "1"
                                {"MaxSpeed",                               "70"}, --Original "80"
                                {"MinHeight",                            "14.8"}, --Original "15"

                            }
                        },
                        {
                            SKW = {"PlanetLanding", "GcSpaceshipTravelData"},
                            REPLACE_TYPE = "ALL",
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
                            VCT = {
                                {"MinimumCircleTimeBeforeLanding",          "2"}, --Original "5"
                                {"MinimumTimeBetweenOutpostLandings",       "2"}, --Original "3"
                                {"DockingRotateSpeed",                   "0.75"}, --Original "0.5"
                                {"DockWaitMinTime",                        "15"}, --Original "20"
                                {"DockWaitMaxTime",                        "30"}, --Original "60"
                                {"DockingLandingBounceTime",              "0.6"}, --Original "0.8"
                                {"DockingLandingBounceHeight",            "0.4"}, --Original "0.5"
                                {"OutpostDockMinTipLength",                 "5"}, --Original "5"
                                {"OutpostDockMaxTipLength",                "12"}, --Original "10"
                                {"OutpostDockApproachUpAmount",           "0.2"}, --Original "0.1"
                                {"LandingTipAngle",                        "16"}, --Original "25"
                                {"LandingLongTipAngle",                     "8"}, --Original "10"
                                --{"MaxNumActiveTraders",                    "20"}, --Original "15"
                                {"SpaceStationTraderRequestTime",           "2"}, --Original "20"
                                {"TraderArriveSpeed",                     "600"}, --Original "300"
                                {"TraderArriveTime",                        "1"}, --Original "3"
                            }
                        },
                        {
                            VCT = {
                                {"TradeRouteFlickerAmp",                    "0"}, --Original "0.01"
                            }
                        },
                    }
                },
                --------------------------------------------------------------------------------------------
                -- Outpost / Trader Spawn Rates
                --------------------------------------------------------------------------------------------
                {
                    MBIN_FS = [[METADATA\SIMULATION\SCENE\EXPERIENCESPAWNTABLE.MBIN]],
                    MXML_CT =
                    {
                        {
                            SKW = {"FlybySpawns", "GcAIShipSpawnData"},
                            PKW = {"Count"},
                            VCT = {
                                {"X", m_xAIFlybySpawns},
                                {"Y", m_yAIFlybySpawns},
                            }
                        },
                        {
                            SKW = {"SpaceFlybySpawns", "GcAIShipSpawnData"},
                            PKW = {"Count"},
                            VCT = {
                                {"X", m_xSPFlybySpawns},
                                {"Y", m_ySPFlybySpawns},
                            }
                        },
                        {
                            SKW = {"MiningFlybySpawns", "GcAIShipSpawnData"},
                            PKW = {"Count"},
                            VCT = {
                                {"X", m_xMNFlybySpawns},
                                {"Y", m_yMNFlybySpawns},
                            }
                        },
                        {
                            SKW = {"OutpostSpawns", "GcAIShipSpawnData"},
                            PKW = {"Count"},
                            VCT = {
                                {"X", m_xOutpostSpawns},
                                {"Y", m_yOutpostSpawns},
                            }
                        },
                        {
                            SKW = {"TraderSpawns", "GcAIShipSpawnData"},
                            PKW = {"Count"},
                            VCT = {
                                {"X", m_xTradersSpawns},
                                {"Y", m_yTradersSpawns},
                            }
                        },
                        {
                            SKW = {"AmbientSpawns", "GcAIShipSpawnData"},
                            PKW = {"Count"},
                            MATH_OP = "*",
                            VCT = {
                                {"X", m_xAmbientSpawns},
                                {"Y", m_yAmbientSpawns},
                            }
                        },
                    }
                },
            }
        },
    }
}
