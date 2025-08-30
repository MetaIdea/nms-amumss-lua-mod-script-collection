-- Configuration constants
local NMS_VERSION = "6.01"
local MOD_VERSION = "0"

-- Settlement timer constants (reduced from defaults)
-- Wait between propsed building projects
local BUILDING_UPGRADE_TIME = 300          -- 5 min (was 13 hours)
-- Free/instant upgrade time  
local BUILDING_FREE_UPGRADE_TIME = 1       -- 1 sec (was 10 sec)
-- Minimum wait time between settlement decisions
local JUDGEMENT_WAIT_MIN = 900             -- 15 min (was 15 min)
-- Maximum wait time between settlement decisions
local JUDGEMENT_WAIT_MAX = 1800             -- 30 min (was 2 hours)
-- Settlement mini-expedition duration
local MINI_EXPEDITION_TIME = 600           -- 10 min (was 50 min)
-- Settlement production cycle duration
local PRODUCTION_CYCLE_TIME = 3600         -- 1 hour (was 20 hours)
-- Settlement alert/crisis cycle duration
local ALERT_CYCLE_TIME = 3600               -- 1 hour (was 57 min)
-- Vile Brood attack cycle duration
local BUG_ATTACK_CYCLE_TIME = 7200          -- 2 hours (was 2.5 hours)

-- Economic and production constants
-- Daily debt payment amount
local DAILY_DEBT_PAYMENT_MODIFIER = 500000000 -- 500M units (was 2M units)
-- Settlement tower recharge time
local TOWER_RECHARGE_TIME = 21600           -- 6 hours (was 24 hours)
-- Tower power abilities recharge time
local TOWER_POWER_RECHARGE_TIME = 21600     -- 6 hours (was 24 hours)
-- Tower scan for anomalies recharge time
local SCAN_ANOMALIES_TIME = 21600           -- 6 hours (was 24 hours)
-- Tower scan for crashed ships recharge time
local SCAN_CRASHED_SHIPS_TIME = 21600       -- 6 hours (was 24 hours)
-- Product units produced per cycle multiplier
local PRODUCT_RATE_MODIFIER = 20            -- 20x multiplier (was 5x)
-- Substance units produced per cycle multiplier
local SUBSTANCE_RATE_MODIFIER = 2000        -- 2000x multiplier (was 500x)
-- Production rate during alert states
local ALERT_RATE_MODIFIER = 20              -- 20x multiplier (unchanged)
-- Production rate during Vile Brood attacks
local BUG_ATTACK_RATE_MODIFIER = 40         -- 40x multiplier (was 20x)

-- Population constants
-- Maximum NPC population in settlement
local MAX_NPC_POPULATION = 100              -- 100 NPCs (was 30 NPCs)

-- Individual building times (all reduced significantly)
-- Settlement landing zone construction time
local LANDING_ZONE_TIME = 5                 -- 5 sec (was 1 hour)
-- Settlement bar construction time
local BAR_TIME = 5                          -- 5 sec (was 1 hour)
-- Settlement tower construction time  
local TOWER_TIME = 5                        -- 5 sec (was 1 hour)
-- Settlement market construction time
local MARKET_TIME = 5                       -- 5 sec (was 2 hours)
-- Small settlement building construction time
local SMALL_TIME = 5                        -- 5 sec (was 20 min)
-- Small industrial building construction time
local SMALL_INDUSTRIAL_TIME = 5             -- 5 sec (was 20 min)
-- Medium settlement building construction time
local MEDIUM_TIME = 5                       -- 5 sec (was 47 min)
-- Large settlement building construction time
local LARGE_TIME = 5                        -- 5 sec (was 2 hours)
-- Sheriff's office construction time
local SHERIFF_TIME = 5                      -- 5 sec (was 90 sec)
-- Double settlement building construction time
local DOUBLE_TIME = 5                       -- 5 sec (was 1 hour)
-- Settlement farm construction time
local FARM_TIME = 5                         -- 5 sec (was 93 min)
-- Settlement factory construction time
local FACTORY_TIME = 5                      -- 5 sec (was 93 min)
-- Fish pond construction time
local FISH_POND_TIME = 5                    -- 5 sec (was 20 min)
-- Builders robo arm construction time
local BUILDERS_ROBO_ARM_TIME = 5            -- 5 sec (was 1 hour)

-- UI/Visual constants
-- Building reveal cutscene duration
local BUILDING_REVEAL_CUTSCENE = 1.0        -- 1 sec (was 10 sec)

NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"] = string.format("Accelerated Settlements %s.%s", NMS_VERSION, MOD_VERSION),
    ["MOD_AUTHOR"] = "NilOutput",
    ["LUA_AUTHOR"] = "NilOutput", 
    ["MOD_DESCRIPTION"] = "Drastically reduces settlement building construction times, increases production rates, and accelerates debt payoff for faster settlement progression. Works with all settlements, including Autophage settlements.",
    ["NMS_VERSION"] = NMS_VERSION,
    ["MODIFICATIONS"] = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                {
                    ["MBIN_FILE_SOURCE"] = "GCSETTLEMENTGLOBALS.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        {
                            ["VALUE_CHANGE_TABLE"] = {
                                {"BuildingUpgradeTimeInSeconds", BUILDING_UPGRADE_TIME},
                                {"BuildingFreeUpgradeTimeInSeconds", BUILDING_FREE_UPGRADE_TIME},
                                {"JudgementWaitTimeMin", JUDGEMENT_WAIT_MIN},
                                {"JudgementWaitTimeMax", JUDGEMENT_WAIT_MAX},
                                {"SettlementMiniExpeditionTime", MINI_EXPEDITION_TIME},
                                {"ProductionCycleDurationInSeconds", PRODUCTION_CYCLE_TIME},
                                {"AlertCycleDurationInSeconds", ALERT_CYCLE_TIME},
                                {"DailyDebtPaymentModifier", DAILY_DEBT_PAYMENT_MODIFIER},
                                {"ProductUnitsPerCycleRateModifier", PRODUCT_RATE_MODIFIER},
                                {"SubstanceUnitsPerCycleRateModifier", SUBSTANCE_RATE_MODIFIER},
                                {"AlertUnitsPerCycleRateModifier", ALERT_RATE_MODIFIER},
                                {"BugAttackCycleDurationInSeconds", BUG_ATTACK_CYCLE_TIME},
                                {"BugAttackUnitsPerCycleRateModifier", BUG_ATTACK_RATE_MODIFIER},
                                {"BuildingRevealCutsceneLength", BUILDING_REVEAL_CUTSCENE},
                                {"MaxNPCPopulation", MAX_NPC_POPULATION},
                                {"TowerRechargeTime", TOWER_RECHARGE_TIME}
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"TowerPowerRechargeTime"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"EarnNavigationData", TOWER_POWER_RECHARGE_TIME},
                                {"ScanForBuildings", TOWER_POWER_RECHARGE_TIME},
                                {"ScanForAnomalies", SCAN_ANOMALIES_TIME},
                                {"ScanForCrashedShips", SCAN_CRASHED_SHIPS_TIME}
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"SettlementBuildingTimes"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Settlement_LandingZone", LANDING_ZONE_TIME},
                                {"Settlement_Bar", BAR_TIME},
                                {"Settlement_Tower", TOWER_TIME},
                                {"Settlement_Market", MARKET_TIME},
                                {"Settlement_Small", SMALL_TIME},
                                {"Settlement_SmallIndustrial", SMALL_INDUSTRIAL_TIME},
                                {"Settlement_Medium", MEDIUM_TIME},
                                {"Settlement_Large", LARGE_TIME},
                                {"Settlement_SheriffsOffice", SHERIFF_TIME},
                                {"Settlement_Double", DOUBLE_TIME},
                                {"Settlement_Farm", FARM_TIME},
                                {"Settlement_Factory", FACTORY_TIME},
                                {"Settlement_FishPond", FISH_POND_TIME},
                                {"Settlement_Builders_RoboArm", BUILDERS_ROBO_ARM_TIME}
                            }
                        }
                    }
                }
            }
        }
    }
}