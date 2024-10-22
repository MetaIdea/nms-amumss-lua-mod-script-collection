NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "FearMeBaby-OneMoreTime.pak",
["MOD_DESCRIPTION"] = "makes your enemies a real challenge",
["MOD_AUTHOR"]      = "Wombi",
["lUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "4.47",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = {"GCAISPACESHIPGLOBALS.GLOBAL.MBIN"},
                    ["EXML_CHANGE_TABLE"] =
                    {
                        -- {
                            -- ["SPECIAL_KEY_WORDS"] = {"Attack", "GcShipAIAttackData.xml"},
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"NumHitsBeforeBail",       "5000"},
                                -- {"NumHitsBeforeReposition", "2000"},
                            -- },
                        -- },
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PirateExtraDamage", "3"},
                            },
                        },
                        -- {
                            -- ["SPECIAL_KEY_WORDS"] = {"BountyAttack", "GcShipAIAttackData.xml"},
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"NumHitsBeforeReposition", "2000"},
                            -- },
                        -- },
                        -- {
                            -- ["SPECIAL_KEY_WORDS"] = {"AttackPlanet", "GcShipAIAttackData.xml"},
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"NumHitsBeforeBail",       "4000"},
                                -- {"NumHitsBeforeReposition", "1000"},
                            -- },
                        -- },
                        -- {
                            -- ["SPECIAL_KEY_WORDS"] = {"TraderAttack", "GcShipAIAttackData.xml"},
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"NumHitsBeforeBail",       "1000"},
                                -- {"NumHitsBeforeReposition", "600"},
                            -- },
                        -- },
                    },
                },
                {
                    ["MBIN_FILE_SOURCE"] = {"GCCREATUREGLOBALS.MBIN"},
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"CreatureSmallHealth",  "3000"},
                                {"CreatureMedHealth",    "6000"},
                                {"CreatureLargeHealth",  "12000"},
                                {"CreatureHugeHealth",   "20000"},
                                {"PredatorSmallHealth",  "3000"},
                                {"PredatorMedHealth",    "6000"},
                                {"PredatorLargeHealth",  "12000"},
                                {"PredatorHugeHealth",   "20000"},
                                {"FiendHealth",          "6000"},
                                {"FishFiendSmallHealth", "2000"},
                                {"FishFiendBigHealth",   "27000"},
                            },
                        },
                    },
                },
                {
                    ["MBIN_FILE_SOURCE"] = {"GCROBOTGLOBALS.MBIN"},
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxNumPatrolDrones",   "3"},
                                -- {"DroneHealth",          "5600"},
                                -- {"CorruptedDroneHealth", "9000"},
                                -- {"QuadHealth",           "14000"},
                                -- {"WalkerHealth",         "60000"},
                            },
                        },
                        -- {
                            -- ["SPECIAL_KEY_WORDS"] = {"DroneControl", "GcDroneData.xml"},
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"AttackFireTimeMin", "1"},
                                -- {"AttackFireTimeMax", "2"},
                            -- },
                        -- },
                    },
                },
                {
                    ["MBIN_FILE_SOURCE"] = {"GCUIGLOBALS.GLOBAL.MBIN"},
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SkipShopIntro", "False"},
                            },
                        },
                    },
                },
                {
                    ["MBIN_FILE_SOURCE"] = {"METADATA\GAMESTATE\DEFAULTSAVEDATA.MBIN"},
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ShopNumber", "34"},
                                {"ShopTier",   "3"},
                            },
                        },
                    },
                },
                {
                    ["MBIN_FILE_SOURCE"] = {"METADATA\REALITY\DEFAULTREALITY.MBIN"},
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["FOREACH_SKW_GROUP"] =
                            {
                                {"SuitStartingSlotLayout",         "GcInventoryLayout.xml"},
                                {"SuitTechOnlyStartingSlotLayout", "GcInventoryLayout.xml"},
                                {"SuitCargoStartingSlotLayout",    "GcInventoryLayout.xml"},
                                {"ShipTechOnlyStartingLayout",     "GcInventoryLayout.xml"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Slots", "0"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"SuitUpgradePrices"},
                            ["REPLACE_TYPE"] = "ONCEINSIDE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IGNORE", "500000"},
                                {"IGNORE", "1000000"},
                                {"IGNORE", "2000000"},
                                {"IGNORE", "3000000"},
                                {"IGNORE", "4000000"},
                                {"IGNORE", "5000000"},
                                {"IGNORE", "6000000"},
                                {"IGNORE", "7000000"},
                                {"IGNORE", "8000000"},
                                {"IGNORE", "9000000"},
                                {"IGNORE", "10000000"},
                                {"IGNORE", "11000000"},
                                {"IGNORE", "12000000"},
                                {"IGNORE", "13000000"},
                                {"IGNORE", "14000000"},
                                {"IGNORE", "15000000"},
                                {"IGNORE", "16000000"},
                                {"IGNORE", "17000000"},
                                {"IGNORE", "18000000"},
                                {"IGNORE", "19000000"},
                                {"IGNORE", "20000000"},
                                {"IGNORE", "21000000"},
                                {"IGNORE", "22000000"},
                                {"IGNORE", "23000000"},
                                {"IGNORE", "24000000"},
                                {"IGNORE", "25000000"},
                                {"IGNORE", "26000000"},
                                {"IGNORE", "27000000"},
                                {"IGNORE", "28000000"},
                                {"IGNORE", "29000000"},
                                {"IGNORE", "30000000"},
                                {"IGNORE", "31000000"},
                                {"IGNORE", "32000000"},
                                {"IGNORE", "33000000"},
                                {"IGNORE", "34000000"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"SuitTechOnlyUpgradePrices"},
                            ["REPLACE_TYPE"] = "ONCEINSIDE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IGNORE", "100000"},
                                {"IGNORE", "500000"},
                                {"IGNORE", "1000000"},
                                {"IGNORE", "3000000"},
                                {"IGNORE", "6000000"},
                                {"IGNORE", "10000000"},
                                {"IGNORE", "20000000"},
                                {"IGNORE", "35000000"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"SuitCargoUpgradePrices"},
                            ["REPLACE_TYPE"] = "ONCEINSIDE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IGNORE", "500000"},
                                {"IGNORE", "50000000"},
                                {"IGNORE", "10000000"},
                                {"IGNORE", "20000000"},
                                {"IGNORE", "25000000"},
                                {"IGNORE", "30000000"},
                                {"IGNORE", "35000000"},
                                {"IGNORE", "40000000"},
                                {"IGNORE", "45000000"},
                                {"IGNORE", "50000000"},
                                {"IGNORE", "55000000"},
                                {"IGNORE", "60000000"},
                                {"IGNORE", "65000000"},
                                {"IGNORE", "70000000"},
                                {"IGNORE", "80000000"},
                                {"IGNORE", "85000000"},
                                {"IGNORE", "90000000"},
                                {"IGNORE", "95000000"},
                                {"IGNORE", "100000000"},
                            },
                        },
                    },
                },
                -- {
                    -- ["MBIN_FILE_SOURCE"] = {"METADATA\SIMULATION\SPACE\AISPACESHIPATTACKDATATABLE.MBIN"},
                    -- ["EXML_CHANGE_TABLE"] =
                    -- {
                        -- {
                            -- ["SPECIAL_KEY_WORDS"] = {"Id", "PIRATE"},
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"AttackShootTimeMin",   "10"},
                                -- {"AttackShootTimeMax",   "10"},
                                -- {"NumHitsBeforeBail",    "6000"},
                                -- {"FleeMaxTime",          "0.5"},
                                -- {"AttackTargetMaxRange", "1200"},
                            -- },
                        -- },
                        -- {
                            -- ["SPECIAL_KEY_WORDS"] = {"Id", "EASY"},
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"NumHitsBeforeBail", "6000"},
                                -- {"FleeMaxTime",       "4"},
                            -- },
                        -- },
                        -- {
                            -- ["SPECIAL_KEY_WORDS"] = {"Id", "MEDIUM"},
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"NumHitsBeforeBail",       "5000"},
                                -- {"NumHitsBeforeReposition", "5000"},
                                -- {"FleeMaxTime",             "2"},
                            -- },
                        -- },
                        -- {
                            -- ["SPECIAL_KEY_WORDS"] = {"Id", "HARD"},
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"AttackWeaponRange",       "2000"},
                                -- {"AttackTooCloseRange",     "25"},
                                -- {"NumHitsBeforeBail",       "10000"},
                                -- {"NumHitsBeforeReposition", "10000"},
                                -- {"FleeMaxTime",             "0.5"},
                                -- {"AttackTargetMinRange",    "100"},
                                -- {"AttackTargetMaxRange",    "1200"},
                            -- },
                        -- },
                        -- {
                            -- ["SPECIAL_KEY_WORDS"] = {"Id", "SOLO"},
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"AttackShootTimeMin", "7"},
                                -- {"AttackShootTimeMax", "7"},
                            -- },
                        -- },
                        -- {
                            -- ["SPECIAL_KEY_WORDS"] = {"Id", "POLICE"},
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"AttackShootWaitTime",     "0.5"},
                                -- {"AttackShootTimeMin",      "100"},
                                -- {"AttackShootTimeMax",      "100"},
                                -- {"AttackMaxTime",           "100"},
                                -- {"AttackTooCloseRange",     "50"},
                                -- {"NumHitsBeforeBail",       "6000"},
                                -- {"NumHitsBeforeReposition", "10000"},
                                -- {"AttackTargetMinRange",    "100"},
                                -- {"AttackTargetMaxRange",    "1500"},
                            -- },
                        -- },
                        -- {
                            -- ["SPECIAL_KEY_WORDS"] = {"Id", "BOUNTY"},
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"AttackShootTimeMin",      "3"},
                                -- {"AttackShootTimeMax",      "3"},
                                -- {"NumHitsBeforeBail",       "6000"},
                                -- {"NumHitsBeforeReposition", "10000"},
                            -- },
                        -- },
                    -- },
                -- },
                {
                    ["MBIN_FILE_SOURCE"] = {"METADATA\SIMULATION\SCENE\EXPERIENCESPAWNTABLE.MBIN"},
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FlybySpawns", "Spread"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "30"},
                                {"y", "80"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FlybySpawns", "Count"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"y", "4"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"SpaceFlybySpawns", "Count"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"y", "6"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"PirateSpawns", "Count"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"y", "6"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"PirateSpawns", "GcAIShipSpawnData.xml", "GcAIShipSpawnData.xml", "Count"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "2"},
                                {"y", "6"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"PirateBattleSpawns", "Count"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "10"},
                                {"y", "24"},
                            },
                        },
                        -- {
                            -- ["PRECEDING_KEY_WORDS"] = {"PoliceSpawns", "Spread"},
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"y", "120"},
                            -- },
                        -- },
                        -- {
                            -- ["PRECEDING_KEY_WORDS"] = {"PoliceSpawns", "Count"},
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"y", "2"},
                            -- },
                        -- },
                        -- {
                            -- ["PRECEDING_KEY_WORDS"] = {"PoliceSpawns", "GcAIShipSpawnData.xml", "GcAIShipSpawnData.xml", "Spread"},
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"y", "100"},
                            -- },
                        -- },
                        -- {
                            -- ["PRECEDING_KEY_WORDS"] = {"PoliceSpawns", "GcAIShipSpawnData.xml", "GcAIShipSpawnData.xml", "Count"},
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"y", "3"},
                            -- },
                        -- },
                        -- {
                            -- ["PRECEDING_KEY_WORDS"] = {"PoliceSpawns", "GcAIShipSpawnData.xml", "GcAIShipSpawnData.xml", "GcAIShipSpawnData.xml", "Spread"},
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"y", "120"},
                            -- },
                        -- },
                        -- {
                            -- ["PRECEDING_KEY_WORDS"] = {"PoliceSpawns", "GcAIShipSpawnData.xml", "GcAIShipSpawnData.xml", "GcAIShipSpawnData.xml", "Count"},
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"x", "3"},
                                -- {"y", "4"},
                            -- },
                        -- },
                        -- {
                            -- ["PRECEDING_KEY_WORDS"] = {"PoliceSpawns", "GcAIShipSpawnData.xml", "GcAIShipSpawnData.xml", "GcAIShipSpawnData.xml", "GcAIShipSpawnData.xml", "Spread"},
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"y", "120"},
                            -- },
                        -- },
                        -- {
                            -- ["PRECEDING_KEY_WORDS"] = {"PoliceSpawns", "GcAIShipSpawnData.xml", "GcAIShipSpawnData.xml", "GcAIShipSpawnData.xml", "GcAIShipSpawnData.xml", "Count"},
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"x", "3"},
                                -- {"y", "6"},
                            -- },
                        -- },
                        -- {
                            -- ["PRECEDING_KEY_WORDS"] = {"PoliceSpawns", "GcAIShipSpawnData.xml", "GcAIShipSpawnData.xml", "GcAIShipSpawnData.xml", "GcAIShipSpawnData.xml", "GcAIShipSpawnData.xml", "Spread"},
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"x", "200"},
                                -- {"y", "600"},
                            -- },
                        -- },
                        -- {
                            -- ["PRECEDING_KEY_WORDS"] = {"PoliceSpawns", "GcAIShipSpawnData.xml", "GcAIShipSpawnData.xml", "GcAIShipSpawnData.xml", "GcAIShipSpawnData.xml", "GcAIShipSpawnData.xml", "Count"},
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"y", "2"},
                            -- },
                        -- },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AmbientSpawns", "Spread"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"y", "4500"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AmbientSpawns", "Count"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"y", "6"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AmbientSpawns", "ChildSpawns", "GcAIShipSpawnData.xml", "Spread"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "1500"},
                                {"y", "3000"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AmbientSpawns", "ChildSpawns", "GcAIShipSpawnData.xml", "Count"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"y", "4"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AmbientSpawns", "ChildSpawns", "GcAIShipSpawnData.xml", "GcAIShipSpawnData.xml", "Spread"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "1500"},
                                {"y", "3500"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AmbientSpawns", "ChildSpawns", "GcAIShipSpawnData.xml", "GcAIShipSpawnData.xml", "Count"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"y", "7"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AmbientSpawns", "ChildSpawns", "GcAIShipSpawnData.xml", "GcAIShipSpawnData.xml", "GcAIShipSpawnData.xml", "Spread"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"y", "1000"},
                            },
                        },
                    },
                },
            }
        }
    }
}