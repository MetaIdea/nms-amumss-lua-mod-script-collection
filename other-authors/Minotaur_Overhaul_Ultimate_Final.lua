NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"]             = "Minotaur_Ultimate_Overhaul_v3.pak",
  ["MOD_AUTHOR"]               = "Gemini Enhanced",
  ["MOD_DESCRIPTION"]          = "Minotaur AI Companion = War Machine. Overpowered weapons, insane firepower, one-mech army against max Sentinel forces!",
  ["MODIFICATIONS"]            = 
    {
        {
            ["MBIN_CHANGE_TABLE"] = 
            { 
                {
                    ["MBIN_FILE_SOURCE"]     = "GCVEHICLEGLOBALS.GLOBAL.MBIN",
                    ["MXML_CHANGE_TABLE"]     = 
                    {
                        {
                            ["VALUE_CHANGE_TABLE"]     = 
                            {
                                -- ========== PLAYER CONTROLS - SAFE VALUES ==========
                                {"MechPlayerGroundTurnSpeed",               "0.5"},   -- VANILLA - works correctly
                                {"MechJetpackTurnSpeed",                    "3.0"},   -- VANILLA - works correctly
                                
                                -- ========== AI COMPANION - COMBAT FOCUSED ==========
                                {"MechAIGroundTurnSpeed",                   "1.0"},   -- VANILLA - safe turning
                                {"MechAIResummonTriggerDistance",           "500.0"}, -- Moderate follow distance (was 100)
                                {"MechAIResummonMinSpawnDistance",          "15.0"},  -- Spawns at combat distance (was 10)
                                {"MechAIResummonMinSpeedForVelBasedSpawnPos", "0.5"},  -- Balanced response (was 1.0)
                                {"MechAIResummonVelBasedSpawnSpeedMultiplier", "5.0"},  -- Moderate positioning (was 4.0)
                                
                                -- ========== JETPACK - BALANCED FOR COMBAT ==========
                                {"MechJetpackForce",                        "100.0"}, -- Controlled thrust (was 70)
                                {"MechJetpackMaxSpeed",                     "25.0"},  -- Combat speed (was 20)
                                {"MechJetpackMaxUpSpeed",                   "25.0"},  -- Moderate vertical (was 20)
                                {"MechJetpackUpForce",                      "130.0"}, -- Controlled lift (was 100)
                                {"MechJetpackDrainRate",                    "0.2"},   -- Lasts 2.5x longer (was 0.5)
                                {"MechJetpackFillRate",                     "1.2"},   -- Recharges faster (was 0.5)
                                {"MechJetpackIgnitionForce",                "150.0"}, -- Quick launch (was 120)
                                {"MechJetpackIgnitionTime",                 "0.3"},   -- Quick response (was 0.4)
                                
                                -- ========== MOVEMENT - SAFE VALUES ==========
                                {"MechLandBrake",                           "1.5"},   -- Soft landing (was 4.0)
                                {"MechWalkToRunTimeIdle",                   "2.0"},   -- VANILLA - safe
                                {"MechWalkToRunTimeSkid",                   "0.2"},   -- VANILLA - safe
                                
                                -- ========== WEAPON TARGETING - SNIPER PRECISION ==========
                                {"MechWeaponInterpSpeed",                   "12.0"},  -- Lightning aim (was 4.0)
                                {"MechTurretTurnTimeGround",                "0.5"},   -- VANILLA - safe
                                {"MechTurretTurnTimeGroundPlayerCombat",    "0.15"},  -- VANILLA - safe
                                {"MechTurretTurnTimeAir",                   "0.7"},   -- VANILLA - safe
                                
                                -- ========== VISUAL POLISH ==========
                                {"MechFirstPersonDamping",                  "0.15"},  -- Ultra smooth camera (was 0.5)
                                {"MechCameraOffsetTime",                    "0.05"},  -- Instant transitions (was 0.2)
                                
                                -- ========== TITAN FALL - DRAMATIC ENTRANCE ==========
                                {"MechTitanFallHeight",                     "80.0"},  -- Sky drop (was 30)
                                {"MechTitanFallLandIntroTime",              "1.5"},   -- Fast deployment (was 4.5)
                            }
                        },
                        
                        -- ========== STANDARD GUN - MINIGUN MODE ==========
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MechWeaponData","Gun"},
                            ["VALUE_CHANGE_TABLE"]     = 
                            {
                                {"CooldownTimeMin",                 "0.1"},   -- Near instant (was 3.0)
                                {"CooldownTimeMax",                 "0.2"},   -- Continuous fire (was 5.0)
                                {"MinRange",                        "1.0"},   -- Point blank capable
                                {"MaxRange",                        "120.0"}, -- Sniper range (was 60)
                            }
                        },
                        
                        -- ========== LASER - DEATH BEAM ==========
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MechWeaponData","Laser"},
                            ["VALUE_CHANGE_TABLE"]     = 
                            {
                                {"CooldownTimeMin",                 "0.3"},   -- Rapid cooldown (was 2.0)
                                {"CooldownTimeMax",                 "0.8"},   -- Quick recovery (was 4.0)
                                {"MinRange",                        "0.5"},   -- Melee range laser (was 3.0)
                                {"MaxRange",                        "80.0"},  -- Extreme reach (was 30)
                            }
                        },
                    }
                },
                
                -- ========== ROBOT GLOBALS - WAR MACHINE AI ==========
                {
                    ["MBIN_FILE_SOURCE"]     = "GCROBOTGLOBALS.MBIN",
                    ["MXML_CHANGE_TABLE"]     = 
                    {
                        {
                            ["VALUE_CHANGE_TABLE"]     = 
                            {
                                -- ========== AI COMBAT BEHAVIOR - STAY AND FIGHT ==========
                                {"RobotSteeringFollowWeight",           "8.0"},   -- Follows but prioritizes combat (was 2.0)
                                {"RobotSteeringAvoidTurnWeight",        "0.5"},   -- Less avoidance, more aggression (was 3.0)
                                
                                -- ========== COMBAT STATS - TERMINATOR MODE ==========
                                {"CriticalHitSizeMech",                 "0.9"},   -- Easy crits for YOU (was 0.5)
                                {"MechFadeInTime",                      "0.3"},   -- Instant spawn (was 2.0)
                                
                                -- ========== AI AWARENESS - OMNISCIENT ==========
                                {"MechAlertRange",                      "100.0"}, -- Detects everything (was 16)
                                {"MechAttackRange",                     "150.0"}, -- Engages from afar (was 30)
                                {"MechSightRange",                      "200.0"}, -- Sees across the horizon (was 40)
                                {"MechHearingRange",                    "120.0"}, -- Hears distant battles (was 25)
                            }
                        },
                        
                        -- ========== HEALTH - WALKING TANK ==========
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Resource","MODELS/COMMON/ROBOTS/SENTINELMECH.SCENE.MBIN"},
                            ["VALUE_CHANGE_TABLE"]     = 
                            {
                                {"BaseHealth",                      "50000"}, -- 6.6x health - nearly unkillable (was 7500)
                                {"HealthIncreasePerLevel",          "40000"}, -- Scales to godhood (was 12000)
                            }
                        },
                        
                        -- ========== AI WEAPON: SENTINEL SMG - ABSOLUTE CARNAGE ==========
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","SENMECHGUN"},
                            ["VALUE_CHANGE_TABLE"]     = 
                            {
                                {"CooldownTimeMin",                 "0.1"},   -- Gatling gun speed (was 1.5)
                                {"CooldownTimeMax",                 "0.3"},   -- Minimal reload (was 3.0)
                                {"MaxRange",                        "100.0"}, -- Sniper SMG (was 40)
                                {"ProjectileFireInterval",          "0.01"},  -- 100 rounds/sec (was 0.05)
                                {"ProjectileNumShotsMin",           "80"},    -- Massive magazine (was 15)
                                {"ProjectileNumShotsMax",           "150"},   -- Sustained suppression (was 25)
                            }
                        },
                        
                        -- ========== AI WEAPON: SENTINEL CANNON - ORBITAL STRIKE ==========
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","SENMECHCANON"},
                            ["VALUE_CHANGE_TABLE"]     = 
                            {
                                {"CooldownTimeMin",                 "0.3"},   -- Rapid bombardment (was 5.0)
                                {"CooldownTimeMax",                 "0.8"},   -- Quick reload (was 8.0)
                                {"MaxRange",                        "200.0"}, -- Artillery cannon (was 70)
                                {"ProjectileNumShotsMin",           "8"},     -- Heavy barrage (was 2)
                                {"ProjectileNumShotsMax",           "12"},    -- Devastating volleys (was 3)
                                {"ProjectileExplosionRadius",       "8.0"},   -- Massive AoE (was 2.0)
                            }
                        },
                        
                        -- ========== AI WEAPON: FLAMETHROWER - HELLFIRE ==========
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","MECHFLAME"},
                            ["VALUE_CHANGE_TABLE"]     = 
                            {
                                {"CooldownTimeMin",                 "0.2"},   -- Minimal cooldown (was 3.0)
                                {"CooldownTimeMax",                 "0.8"},   -- Fast reload (was 5.0)
                                {"MaxRange",                        "50.0"},  -- Flamethrower lance (was 20)
                                {"ProjectileFireInterval",          "0.008"}, -- Inferno stream (was 0.04)
                                {"ProjectileNumShotsMin",           "150"},   -- Extended burn (was 30)
                                {"ProjectileNumShotsMax",           "250"},   -- Endless fire (was 40)
                                {"ProjectileSpread",                "0.12"},  -- Wide cone of death (was 0.05)
                            }
                        },
                    }
                }
            }
        }
    }
}