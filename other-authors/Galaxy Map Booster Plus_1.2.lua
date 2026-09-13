-- ============================================================================
-- NOBLEMANN11 - GALAXY MAP BOOSTER PLUS - STABLE NAV30 / TURBO200
-- Criador: Noblemann11
--============================================================================

NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"]    = "GalaxyMapBooster_Plus_1.2.pak",
    ["MOD_DESCRIPTION"] = "Stable Galaxy Map booster with 30 percent faster normal navigation, 200 percent turbo speed, original FOV/zoom behavior, extreme hyperdrive range and mild fuel-efficiency improvements.",
    ["MOD_AUTHOR"]      = "Noblemann11",
    ["LUA_AUTHOR"]      = "Noblemann11",
    ["NMS_VERSION"]     = "6.45.1",

    ["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                -- ============================================================
                -- 01 - GALAXY MAP CAMERA / MOVEMENT
                -- ============================================================
                {
                    ["MBIN_FILE_SOURCE"] = "GCGALAXYGLOBALS.GLOBAL.MBIN",

                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                -- Visual / distância: SEM exageros
                                {"CameraFOV",                    "130"},

                                -- Normal movement: +30% from the original working baseline
                                {"MovementBlendRateFree",        "9.1"},
                                {"FreePanSpeed",                 "14.04"},
                                {"FreePanSpeedTurbo",            "25.5"}, -- 200% of original baseline
                                {"FreeUpDownSpeed",              "10.14"},
                                {"FreeUpDownSpeedTurbo",         "17.5"}, -- 200% of original baseline
                                {"FreeRotateSpeed",              "13.65"},
                                {"FreeElevationBlendRate",       "14.17"},

                                -- Zoom rates kept conservative
                                {"ZoomOutSpin",                  "10.1"},
                                {"ZoomOutPushDist",              "10.8"},
                                {"ZoomOutRate",                  "11.8"},
                                {"ZoomInRate",                   "14.8"},

                                -- Mesmas distâncias da primeira versão
                                {"MaxZoomDistance",              "200"},
                                {"MinPushingZoomDistance",       "55"},
                                {"MinPushingZoomDistanceScaler", "25"},
                            }
                        },
                    }
                },

                -- ============================================================
                -- 02 - HYPERDRIVE EXTREMO
                -- ============================================================
                -- ============================================================
                {
                    ["MBIN_FILE_SOURCE"] =
                        "METADATA\REALITY\TABLES\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN",

                    ["MXML_CHANGE_TABLE"] =
                    {
                        -- Nave: alcance extremo
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                "StatsType", "Ship_Hyperdrive_JumpDistance"
                            },

                            ["SECTION_UP"]   = 1,
                            ["REPLACE_TYPE"] = "ALL",

                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Bonus", "1000000"},
                            }
                        },

                        -- Cargueiro: alcance extremo
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                "StatsType", "Freighter_Hyperdrive_JumpDistance"
                            },

                            ["SECTION_UP"]   = 1,
                            ["REPLACE_TYPE"] = "ALL",

                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Bonus", "1000000"},
                            }
                        },

                        -- ====================================================
                        -- 03 - EFICIÊNCIA MODERADA DE WARP CELL
                        -- ====================================================
                        -- Multiplica os bônus existentes por 1.25.
                        -- ====================================================
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                "StatsType", "Ship_Hyperdrive_JumpsPerCell"
                            },

                            ["SECTION_UP"]     = 1,
                            ["REPLACE_TYPE"]   = "ALL",
                            ["MATH_OPERATION"] = "*",

                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Bonus", "1.25"},
                            }
                        },

                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                "StatsType", "Freighter_Hyperdrive_JumpsPerCell"
                            },

                            ["SECTION_UP"]     = 1,
                            ["REPLACE_TYPE"]   = "ALL",
                            ["MATH_OPERATION"] = "*",

                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Bonus", "1.25"},
                            }
                        },

                        -- ====================================================
                        -- 04 - CONSUMO MODERADAMENTE MENOR DO PULSE DRIVE
                        -- ====================================================
                        -- Multiplica o consumo existente por 0.90.
                        -- ====================================================
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                "StatsType", "Ship_PulseDrive_MiniJumpFuelSpending"
                            },

                            ["SECTION_UP"]     = 1,
                            ["REPLACE_TYPE"]   = "ALL",
                            ["MATH_OPERATION"] = "*",

                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Bonus", "0.90"},
                            }
                        },

                        -- ====================================================
                        -- 05 - CUSTO DE DECOLAGEM MODERADAMENTE MENOR
                        -- ====================================================
                        -- Multiplica o custo existente por 0.90.
                        -- ====================================================
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                "StatsType", "Ship_Launcher_TakeOffCost"
                            },

                            ["SECTION_UP"]     = 1,
                            ["REPLACE_TYPE"]   = "ALL",
                            ["MATH_OPERATION"] = "*",

                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Bonus", "0.90"},
                            }
                        },
                    }
                },
            }
        },
    }
}