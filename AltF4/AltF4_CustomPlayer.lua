NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"] = "AltF4_CustomPlayer.pak",
    ["MOD_AUTHOR"] = "AltF4",
    ["LUA_AUTHOR"] = "AltF4",
    ["NMS_VERSION"] = "4.64",
    ["MOD_DESCRIPTION"] = "Custom Player",
    ["MODIFICATIONS"] = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                {
                    ["MBIN_FILE_SOURCE"] = "GCPLAYERGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] = {
                                {"GroundWalkSpeed", 10},                        -- 4.4
                                {"GroundRunSpeed", 14},                         -- 8
                                {"UnderwaterMaxSpeed", 10},                     -- 4
                                {"UnderwaterForce", 20},                        -- 15
                                {"AnimWalkSpeed", 2},                           -- 1.5
                                {"AnimRunSpeed", 6},                            -- 4
                                {"FreeJetpackRange", 7},                        -- 3
                                {"FreeJetpackRangeNonTerrain", 2},              -- 1.1
                                {"JetpackDrainHorizontalFactor", 3},            -- 2.5
                                {"JetpackForce", 35},                           -- 31 ; lateral force added when pressing in a direction. Existing force remains until direction is released
                                {"JetpackMinLevel", 0.1},                       -- 0.5 ; How flat does the ground need to be to ignite jetpack? At 99, couldn't ignite in most places
                                {"JetpackMaxSpeed", 60},                        -- 5 ; Lateral speed adjustments while airborne, whether using jetpack or not
                                {"JetpackMaxUpSpeed", 40},                      -- 30
                                {"JetpackUpForce", 30},                         -- 30 ; Needs to be above about 20 to overcome standard gravity
                                {"JetpackIgnitionForce", 80},                   -- 60 ; Initial force applied before JetpackIgnitionTime
                                {"JetpackIgnitionTime", 9999},                  -- 0.4 ; How many seconds until transition from JetpackIgnitionForce to JetpackForce and JetpackUpForce
                                {"JetpackMinIgnitionTime", 0.1},                -- 0.2 ; How quickly after igniting the jetpack FROM A SURFACE will jetpack thrust stop?
                                {"JetpackFillRate", 1},                         -- 0.5
                                {"JetpackUpForceDeadPlanetExtra", 10},          -- 10
                                {"JetpackForceDeadPlanetExtra", 20},            -- 15
                                {"JetpackIgnitionForceDeadPlanetExtra", 65},    -- 45
                                {"UnderwaterMaxJetpackSpeed", 30},              -- 8
                                {"UnderwaterJetpackForce", 30},                 -- 25
                                {"UnderwaterMaxJetpackEscapeSpeed", 60},        -- 8
                                {"UnderwaterJetpackEscapeForce", 50},           -- 20
                                {"MeleeSpeedBoost", 8},                         -- 1
                                {"MeleeBoostAirForce", 10},                     -- 3
                                {"MeleeToAirBoostInitialImpulse", 20},          -- 5
                                {"MaxTimeInMeleeBoost", 10},                    -- 1.4
                                {"HardLandMax", 150},                           -- 18 ; No falling damage
                                {"MaxBuildHeight", 1024},                       -- 64
                                {"StealthDrainRate", 0},                        -- 15 ; Cloaking Device no cooling
                                {"StealthRechargeRate", 9999},                  -- 12
                                --{"StealthBaseCharge", 200},                    -- 200
                            }
                        },
                    }
                },
                -- Jetpack No Consume Fuel
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"]	= {
                        { --JetpackTank
                            ["SPECIAL_KEY_WORDS"] = {"ID", "JET1","StatsType","Suit_Jetpack_Tank"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Bonus", 9999},    -- 2.75 ; Jetpack tank size
                            },
                        },
                        { --JetpackDrain
                            ["SPECIAL_KEY_WORDS"] = {"ID", "JET1","StatsType","Suit_Jetpack_Drain"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Bonus", 1},       --1; Life support drain during jetpack use
                            },
                        },
                        { --JetpackRegen
                            ["SPECIAL_KEY_WORDS"] = {"ID", "JET1","StatsType","Suit_Jetpack_Refill"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Bonus", 9999},    --1; 7x tank size = instant refill
                            },
                        },
                    }
                },
            },
        },
    }
}