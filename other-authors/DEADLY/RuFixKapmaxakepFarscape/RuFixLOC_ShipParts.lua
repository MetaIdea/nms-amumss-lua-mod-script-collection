NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]    = "_RuFixLOC_ShipParts.pak",
    ["MOD_AUTHOR"]      = "gh0stwizard",
    ["MOD_DESCRIPTION"] = "Fixes translation of ship fabricator components.",
    ["NMS_VERSION"]     = "5.72",
    ["EXML_CREATE"]     = "false",
    ["MODIFICATIONS"]   = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                { -- LANGUAGE/NMS_LOC8_RUSSIAN.MBIN
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_LOC8_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SHIP_BUILDER_INPUT_COCK" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КАБИНА ЭКИПАЖА
                                -- COCKPIT
                                { "Russian", "ФЮЗЕЛЯЖ" },
                            }
                        },

                        --#region БОЕВОЙ

                        --#region БОЕВОЙ / КРЫЛЬЯ
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FIGHTER_WING_A_FI_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КРЫЛЬЯ «ВЕКТОР» (СТАБИЛИЗАТОР)
                                { "Russian", "КРЫЛЬЯ «ВЕКТОР» (КИЛЬ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FIGHTER_WING_A_FI_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Крылья «Вектор» (стабилизатор)
                                { "Russian", "Крылья «Вектор» (киль)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FIGHTER_WING_B_FI_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КАРКАСНЫЕ КРЫЛЬЯ (СТАБИЛИЗАТОР)
                                { "Russian", "КАРКАСНЫЕ КРЫЛЬЯ (КИЛЬ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FIGHTER_WING_B_FI_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Каркасные крылья (стабилизатор)
                                { "Russian", "Каркасные крылья (киль)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FIGHTER_WING_BA_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КАРКАСНЫЕ КРЫЛЬЯ «S»
                                { "Russian", "КАРКАСНЫЕ S-КРЫЛЬЯ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FIGHTER_WING_BA_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Каркасные крылья «S»
                                { "Russian", "Каркасные S-крылья" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FIGHTER_WING_BA_FI_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КАРКАСНЫЕ КРЫЛЬЯ «S» (СТАБИЛИЗАТОР)
                                { "Russian", "КАРКАСНЫЕ S-КРЫЛЬЯ (КИЛЬ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FIGHTER_WING_BA_FI_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Каркасные крылья «S» (стабилизатор)
                                { "Russian", "Каркасные S-крылья (киль)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FIGHTER_WING_BB_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КАРКАСНЫЕ КРЫЛЬЯ «E»
                                { "Russian", "КАРКАСНЫЕ E-КРЫЛЬЯ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FIGHTER_WING_BB_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Каркасные крылья «E»
                                { "Russian", "Каркасные E-крылья" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FIGHTER_WING_BB_FI_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КАРКАСНЫЕ КРЫЛЬЯ «E (СТАБИЛИЗАТОР)
                                { "Russian", "КАРКАСНЫЕ E-КРЫЛЬЯ (КИЛЬ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FIGHTER_WING_BB_FI_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Каркасные крылья «E» (стабилизатор)
                                { "Russian", "Каркасные E-крылья (киль)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FIGHTER_WING_BC_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КАРКАСНЫЕ КРЫЛЬЯ «V»
                                { "Russian", "КАРКАСНЫЕ V-КРЫЛЬЯ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FIGHTER_WING_BC_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Каркасные крылья «V»
                                { "Russian", "Каркасные V-крылья" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FIGHTER_WING_BC_FI_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КАРКАСНЫЕ КРЫЛЬЯ «V» (СТАБИЛИЗАТОР)
                                { "Russian", "КАРКАСНЫЕ V-КРЫЛЬЯ (КИЛЬ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FIGHTER_WING_BC_FI_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Каркасные крылья «V» (стабилизатор)
                                { "Russian", "Каркасные V-крылья (киль)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FIGHTER_WING_BD_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КАРКАСНЫЕ КРЫЛЬЯ «C»
                                { "Russian", "КАРКАСНЫЕ C-КРЫЛЬЯ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FIGHTER_WING_BD_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Каркасные крылья «C»
                                { "Russian", "Каркасные C-крылья" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FIGHTER_WING_BD_FI_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КАРКАСНЫЕ КРЫЛЬЯ «C (СТАБИЛИЗАТОР)
                                { "Russian", "КАРКАСНЫЕ C-КРЫЛЬЯ (КИЛЬ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FIGHTER_WING_BD_FI_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Каркасные крылья «C» (стабилизатор)
                                { "Russian", "Каркасные C-крылья (киль)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FIGHTER_WING_EA_FI_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КРЫЛЬЯ «ФОРСАЖ» (СТАБИЛИЗАТОР)
                                { "Russian", "КРЫЛЬЯ «ФОРСАЖ» (КИЛЬ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FIGHTER_WING_EA_FI_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Крылья «Форсаж» (стабилизатор)
                                { "Russian", "Крылья «Форсаж» (киль)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FIGHTER_WING_EB_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КРЫЛЬЯ «ФОРСАЖ» «E»
                                -- AFTERBURNER E-WINGS
                                { "Russian", "E-КРЫЛЬЯ «ФОРСАЖ»" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FIGHTER_WING_EB_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Крылья «Форсаж» «E»
                                { "Russian", "E-крылья «Форсаж»" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FIGHTER_WING_EB_FI_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КРЫЛЬЯ «ФОРСАЖ» «E» (СТАБИЛИЗАТОР)
                                { "Russian", "E-КРЫЛЬЯ «ФОРСАЖ» (КИЛЬ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FIGHTER_WING_EB_FI_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Крылья «Форсаж» «E» (стабилизатор)
                                { "Russian", "E=крылья «Форсаж» (киль)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FIGHTER_WING_EC_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КРЫЛЬЯ «ФОРСАЖ» «V»
                                { "Russian", "V-КРЫЛЬЯ «ФОРСАЖ»" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FIGHTER_WING_EC_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Крылья «Форсаж» «V»
                                { "Russian", "V-крылья «Форсаж»" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FIGHTER_WING_EC_FI_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КРЫЛЬЯ «ФОРСАЖ» «V» (СТАБИЛИЗАТОР)
                                { "Russian", "V-КРЫЛЬЯ «ФОРСАЖ» (КИЛЬ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FIGHTER_WING_EC_FI_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Крылья «Форсаж» «V» (стабилизатор)
                                { "Russian", "V-крылья «Форсаж» (киль)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FIGHTER_WING_ED_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КРЫЛЬЯ «ФОРСАЖ» «C»
                                { "Russian", "C-КРЫЛЬЯ «ФОРСАЖ»" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FIGHTER_WING_ED_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Крылья «Форсаж» «C»
                                { "Russian", "C-крылья «Форсаж»" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FIGHTER_WING_ED_FI_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КРЫЛЬЯ «ФОРСАЖ» «C» (СТАБИЛИЗАТОР)
                                { "Russian", "C-КРЫЛЬЯ «ФОРСАЖ» (КИЛЬ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FIGHTER_WING_ED_FI_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Крылья «Форсаж» «C» (стабилизатор)
                                { "Russian", "C-крылья «Форсаж» (киль)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FIGHTER_WING_EE_FI_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КРЫЛЬЯ «КОНДОР» (СТАБИЛИЗАТОР)
                                { "Russian", "КРЫЛЬЯ «КОНДОР» (КИЛЬ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FIGHTER_WING_EE_FI_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Крылья «Кондор» (стабилизатор)
                                { "Russian", "Крылья «Кондор» (киль)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FIGHTER_WING_EF_FI_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КРЫЛЬЯ «СТЕРВЯТНИК» (СТАБИЛИЗАТОР)
                                { "Russian", "КРЫЛЬЯ «СТЕРВЯТНИК» (КИЛЬ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FIGHTER_WING_EF_FI_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Крылья «Стервятник» (стабилизатор)
                                { "Russian", "Крылья «Стервятник» (киль)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FIGHTER_WING_FC_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КРЫЛЬЯ «РЕШЕТКА»
                                { "Russian", "КРЫЛЬЯ «ПАЛИСАД»" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FIGHTER_WING_FC_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Крылья «Решетка»
                                { "Russian", "Крылья «Палисад»" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FIGHTER_WING_FC_FI_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КРЫЛЬЯ «РЕШЕТКА» (СТАБИЛИЗАТОР)
                                { "Russian", "КРЫЛЬЯ «ПАЛИСАД» (КИЛЬ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FIGHTER_WING_FC_FI_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Крылья «Решетка» (стабилизатор)
                                { "Russian", "Крылья «Палисад» (киль)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FIGHTER_WING_FD_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КРЫЛЬЯ «ЗВЕЗДНЫЙ ТАНЦОР»
                                { "Russian", "КРЫЛЬЯ «ЗВЁЗДНЫЙ ТАНЦОР»" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FIGHTER_WING_FD_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Крылья «Звездный танцор»
                                { "Russian", "Крылья «Звёздный танцор»" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FIGHTER_WING_FD_FI_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КРЫЛЬЯ «ЗВЕЗДНЫЙ ТАНЦОР» (СТАБИЛИЗАТОР)
                                { "Russian", "КРЫЛЬЯ «ЗВЁЗДНЫЙ ТАНЦОР» (КИЛЬ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FIGHTER_WING_FD_FI_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Крылья «Звездный танцор» (стабилизатор)
                                { "Russian", "Крылья «Звёздный танцор» (киль)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FIGHTER_WING_FE_FI_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КРЫЛЬЯ «ГОРИЗОНТ» (СТАБИЛИЗАТОР)
                                { "Russian", "КРЫЛЬЯ «ГОРИЗОНТ» (КИЛЬ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FIGHTER_WING_FE_FI_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Крылья «Горизонт» (стабилизатор)
                                { "Russian", "Крылья «Горизонт» (киль)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FIGHTER_WING_G_FI_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- СИЯЮЩИЕ КРЫЛЬЯ (СТАБИЛИЗАТОР)
                                { "Russian", "СИЯЮЩИЕ КРЫЛЬЯ (КИЛЬ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FIGHTER_WING_G_FI_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сияющие крылья (стабилизатор)
                                { "Russian", "Сияющие крылья (киль)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FIGHTER_WING_H_FI_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КРЫЛЬЯ «ДРОИД» (СТАБИЛИЗАТОР)
                                { "Russian", "КРЫЛЬЯ «ДРОИД» (КИЛЬ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FIGHTER_WING_H_FI_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Крылья «Дроид» (стабилизатор)
                                { "Russian", "Крылья «Дроид» (киль)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FIGHTER_WING_HA_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КРЫЛЬЯ «ДРОИД» «S»
                                { "Russian", "S-КРЫЛЬЯ «ДРОИД»" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FIGHTER_WING_HA_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Крылья «Дроид» «S»
                                { "Russian", "S-крылья «Дроид»" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FIGHTER_WING_HA_FI_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КРЫЛЬЯ «ДРОИД» «S» (СТАБИЛИЗАТОР)
                                { "Russian", "S-КРЫЛЬЯ «ДРОИД» (КИЛЬ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FIGHTER_WING_HA_FI_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Крылья «Дроид» «S» (стабилизатор)
                                { "Russian", "S-крылья «Дроид» (киль)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FIGHTER_WING_HB_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КРЫЛЬЯ «ДРОИД» «E»
                                { "Russian", "E-КРЫЛЬЯ «ДРОИД»" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FIGHTER_WING_HB_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Крылья «Дроид» «E»
                                { "Russian", "E-крылья «Дроид»" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FIGHTER_WING_HB_FI_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КРЫЛЬЯ «ДРОИД» «E» (СТАБИЛИЗАТОР)
                                { "Russian", "E-КРЫЛЬЯ «ДРОИД» (КИЛЬ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FIGHTER_WING_HB_FI_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Крылья «Дроид» «E» (стабилизатор)
                                { "Russian", "E-крылья «Дроид» (киль)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FIGHTER_WING_HC_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КРЫЛЬЯ «ДРОИД» «V»
                                { "Russian", "V-КРЫЛЬЯ «ДРОИД»" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FIGHTER_WING_HC_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Крылья «Дроид» «V»
                                { "Russian", "V-крылья «Дроид»" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FIGHTER_WING_HC_FI_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КРЫЛЬЯ «ДРОИД» «V» (СТАБИЛИЗАТОР)
                                { "Russian", "V-КРЫЛЬЯ «ДРОИД» (КИЛЬ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FIGHTER_WING_HC_FI_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Крылья «Дроид» «V» (стабилизатор)
                                { "Russian", "V-крылья «Дроид» (киль)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FIGHTER_WING_HD_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КРЫЛЬЯ «ДРОИД» «C»
                                { "Russian", "C-КРЫЛЬЯ «ДРОИД»" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FIGHTER_WING_HD_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Крылья «Дроид» «C»
                                { "Russian", "C-крылья «Дроид»" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FIGHTER_WING_HD_FI_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КРЫЛЬЯ «ДРОИД» «C» (СТАБИЛИЗАТОР)
                                { "Russian", "C-КРЫЛЬЯ «ДРОИД» (КИЛЬ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FIGHTER_WING_HD_FI_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Крылья «Дроид» «C» (стабилизатор)
                                { "Russian", "C-крылья «Дроид» (киль)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FIGHTER_WING_I_FI_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КРЫЛЬЯ «КВАЗАР» (СТАБИЛИЗАТОР)
                                { "Russian", "КРЫЛЬЯ «КВАЗАР» (КИЛЬ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FIGHTER_WING_I_FI_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Крылья «Квазар» (стабилизатор)
                                { "Russian", "Крылья «Квазар» (киль)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FIGHTER_WING_JLOW_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- СТРЕЛОВИДНЫЕ КРЫЛЬЯ (НИЗКИЕ)
                                -- SWEPT WINGS (LOW)
                                { "Russian", "КРЫЛЬЯ «МЕТЛА» (НИЗ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FIGHTER_WING_JLOW_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Стреловидные крылья (низкие)
                                { "Russian", "Крылья «Метла» (низ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FIGHTER_WING_JMID_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- СТРЕЛОВИДНЫЕ КРЫЛЬЯ (СРЕДНИЕ)
                                { "Russian", "КРЫЛЬЯ «МЕТЛА» (ЦЕНТР)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FIGHTER_WING_JMID_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Стреловидные крылья (средние)
                                { "Russian", "Крылья «Метла» (центр)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FIGHTER_WING_JFULL_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- СТРЕЛОВИДНЫЕ КРЫЛЬЯ (ПОЛНЫЕ)
                                -- SWEPT WINGS (FULL)
                                { "Russian", "КРЫЛЬЯ «МЕТЛА» (ВСЕ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FIGHTER_WING_JFULL_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Стреловидные крылья (полные)
                                { "Russian", "Крылья «Метла» (все)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FIGHTER_WING_KAA_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КРЫЛЬЯ «ВЕСПЕР» (СТРЕЛОВИДНЫЕ)
                                -- VESPER WINGS (SWEPT)
                                { "Russian", "КРЫЛЬЯ «ВЕСПЕР» (МЕТЛА)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FIGHTER_WING_KAA_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Крылья «Веспер» (стреловидные)
                                { "Russian", "Крылья «Веспер» (метла)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FIGHTER_WING_KBB_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КРЫЛЬЯ «ВЕСПЕР» (СТАБИЛИЗАТОР)
                                { "Russian", "КРЫЛЬЯ «ВЕСПЕР» (КИЛЬ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FIGHTER_WING_KBB_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Крылья «Веспер» (стабилизатор)
                                { "Russian", "Крылья «Веспер» (киль)" },
                            }
                        },
                        --#endregion

                        --#endregion

                        --#region СОЛНЕЧНЫЙ

                        --#region СОЛНЕЧНЫЙ / КАБИНЫ
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SAIL_BODY_C_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ФЮЗЕЛЯЖ «ЗВЕЗДНЫЙ ВОЛК»
                                -- STARWOLF FUSELAGE
                                { "Russian", "ФЮЗЕЛЯЖ «ЗВЁЗДНЫЙ ВОЛК»" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SAIL_BODY_C_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Фюзеляж «Звездный волк»
                                -- Starwolf Fuselage
                                { "Russian", "Фюзеляж «Звёздный волк»" },
                            }
                        },
                        --#endregion

                        --#region СОЛНЕЧНЫЙ / ПАРУСА
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SAIL_SAIL_A_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- СОЛНЕЧНЫЙ ПАРУС «ПОЛУМЕСЯЦ»
                                -- CRESCENT SOLAR SAIL
                                { "Russian", "ПАРУС ПОЛУМЕСЯЦ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SAIL_SAIL_A_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Солнечный парус «Полумесяц»
                                { "Russian", "Парус полумесяц" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SAIL_SAIL_B_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- СОТОВЫЙ СОЛНЕЧНЫЙ ПАРУС
                                -- HEX SOLAR SAIL
                                { "Russian", "ГЕКСАГОНАЛЬНЫЙ ПАРУС" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SAIL_SAIL_B_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сотовый солнечный парус
                                { "Russian", "Гексагональный парус" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SAIL_SAIL_C_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КВАДРАТНЫЙ СОЛНЕЧНЫЙ ПАРУС
                                -- SQUARE-RIG SOLAR SAIL
                                { "Russian", "ПРЯМОУГОЛЬНЫЙ ПАРУС" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SAIL_SAIL_C_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Квадратный солнечный парус
                                { "Russian", "Прямоугольный парус" },
                            }
                        },
                        --#endregion

                        --#region СОЛНЕЧНЫЙ / КРЫЛЬЯ
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SAIL_WINGAA_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- БРИТВЕННОЕ КРЫЛО (ЭЛЕГАНТНОЕ)
                                -- RAZOR WING (SLEEK)
                                { "Russian", "КРЫЛО БРИТВА, ТОРПЕДА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SAIL_WINGAA_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Бритвенное крыло (элегантное)
                                { "Russian", "Крыло бритва, торпеда" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SAIL_WINGAB_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- БРИТВЕННОЕ КРЫЛО (БУР)
                                -- RAZOR WING (DRILL)
                                { "Russian", "КРЫЛО БРИТВА, БУР" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SAIL_WINGAB_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Бритвенное крыло (бур)
                                { "Russian", "Крыло бритва, бур" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SAIL_WINGAC_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- БРИТВЕННОЕ КРЫЛО (ЗВЕЗДА)
                                -- RAZOR WING (TRISTAR)
                                { "Russian", "КРЫЛО БРИТВА, ЗВЕЗДА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SAIL_WINGAC_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Бритвенное крыло (звезда)
                                { "Russian", "Крыло бритва, звезда" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SAIL_WINGAD_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- БРИТВЕННОЕ КРЫЛО (V-ОБРАЗНОЕ)
                                -- RAZOR WING (V-BLADE)
                                { "Russian", "КРЫЛО БРИТВА, V-ОБРАЗНОЕ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SAIL_WINGAD_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Бритвенное крыло (V-образное)
                                { "Russian", "Крыло бритва, V-образное" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SAIL_WINGAE_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- БРИТВЕННОЕ КРЫЛО (H-ОБРАЗНОЕ)
                                -- RAZOR WING (H-BLADE)
                                { "Russian", "КРЫЛО БРИТВА, H-ОБРАЗНОЕ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SAIL_WINGAE_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Бритвенное крыло (H-образное)
                                { "Russian", "Крыло бритва, H-образное" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SAIL_WINGBA_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- САБЛЕВИДНОЕ КРЫЛО (ЭЛЕГАНТНОЕ)
                                -- CUTLASS WING (SLEEK)
                                { "Russian", "КРЫЛО МАЧЕТЕ, ТОРПЕДА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SAIL_WINGBA_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Саблевидное крыло (элегантное)
                                { "Russian", "Крыло мачете, торпеда" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SAIL_WINGBB_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- САБЛЕВИДНОЕ КРЫЛО (БУР)
                                { "Russian", "КРЫЛО МАЧЕТЕ, БУР" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SAIL_WINGBB_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Саблевидное крыло (бур)
                                { "Russian", "Крыло мачете, бур" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SAIL_WINGBC_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- САБЛЕВИДНОЕ КРЫЛО (ЗВЕЗДА)
                                { "Russian", "КРЫЛО МАЧЕТЕ, ЗВЕЗДА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SAIL_WINGBC_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Саблевидное крыло (звезда)
                                { "Russian", "Крыло мачете, звезда" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SAIL_WINGBD_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- САБЛЕВИДНОЕ КРЫЛО (V-ОБРАЗНОЕ)
                                -- CUTLASS WING (V-BLADE)
                                { "Russian", "КРЫЛО МАЧЕТЕ, V-ОБРАЗНОЕ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SAIL_WINGBD_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Саблевидное крыло (V-образное)
                                { "Russian", "Крыло мачете, V-образное" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SAIL_WINGBE_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- САБЛЕВИДНОЕ КРЫЛО (H-ОБРАЗНОЕ)
                                { "Russian", "КРЫЛО МАЧЕТЕ, H-ОБРАЗНОЕ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SAIL_WINGBE_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Саблевидное крыло (H-образное)
                                { "Russian", "Крыло мачете, H-образное" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SAIL_WINGCA_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ЭКРАНИРОВАННОЕ КРЫЛО (ЭЛЕГАНТНОЕ)
                                -- SHIELDED WING (SLEEK)
                                { "Russian", "КРЫЛО ЩИТ, ТОРПЕДА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SAIL_WINGCA_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Экранированное крыло (элегантное)
                                { "Russian", "Крыло щит, торпеда" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SAIL_WINGCB_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ЭКРАНИРОВАННОЕ КРЫЛО (БУР)
                                { "Russian", "КРЫЛО ЩИТ, БУР" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SAIL_WINGCB_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Экранированное крыло (бур)
                                { "Russian", "Крыло щит, бур" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SAIL_WINGCC_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ЭКРАНИРОВАННОЕ КРЫЛО (ЗВЕЗДА)
                                { "Russian", "КРЫЛО ЩИТ, ЗВЕЗДА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SAIL_WINGCC_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Экранированное крыло (звезда)
                                { "Russian", "Крыло щит, звезда" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SAIL_WINGCD_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ЭКРАНИРОВАННОЕ КРЫЛО (V-ОБРАЗНОЕ)
                                { "Russian", "КРЫЛО ЩИТ, V-ОБРАЗНОЕ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SAIL_WINGCD_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Экранированное крыло (V-образное)
                                { "Russian", "Крыло щит, V-образное" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SAIL_WINGCE_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ЭКРАНИРОВАННОЕ КРЫЛО (H-ОБРАЗНОЕ)
                                { "Russian", "КРЫЛО ЩИТ, H-ОБРАЗНОЕ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SAIL_WINGCE_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Экранированное крыло (H-образное)
                                { "Russian", "Крыло щит, H-образное" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SAIL_WINGDA_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КРЫЛО «КОГОТЬ» (ЭЛЕГАНТНОЕ)
                                -- TALON WING (SLEEK)
                                { "Russian", "КРЫЛО КОГОТЬ, ТОРПЕДА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SAIL_WINGDA_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Крыло «Коготь» (элегантное)
                                { "Russian", "Крыло коготь, торпеда" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SAIL_WINGDB_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КРЫЛО «КОГОТЬ» (БУР)
                                { "Russian", "КРЫЛО КОГОТЬ, БУР" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SAIL_WINGDB_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Крыло «Коготь» (бур)
                                { "Russian", "Крыло коготь, бур" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SAIL_WINGDC_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КРЫЛО «КОГОТЬ» (ЗВЕЗДА)
                                { "Russian", "КРЫЛО КОГОТЬ, ЗВЕЗДА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SAIL_WINGDC_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Крыло «Коготь» (звезда)
                                { "Russian", "Крыло коготь, звезда" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SAIL_WINGDD_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КРЫЛО «КОГОТЬ» (V-ОБРАЗНОЕ)
                                { "Russian", "КРЫЛО КОГОТЬ, V-ОБРАЗНОЕ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SAIL_WINGDD_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Крыло «Коготь» (V-образное)
                                { "Russian", "Крыло коготь, V-образное" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SAIL_WINGDE_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КРЫЛО «КОГОТЬ» (H-ОБРАЗНОЕ)
                                { "Russian", "КРЫЛО КОГОТЬ, H-ОБРАЗНОЕ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SAIL_WINGDE_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Крыло «Коготь» (H-образное)
                                { "Russian", "Крыло коготь, H-образное" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SAIL_WINGEA_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КРЫЛО «ШАШКА» (ЭЛЕГАНТНОЕ)
                                -- SABRE WING (SLEEK)
                                { "Russian", "КРЫЛО САБЛЯ, ТОРПЕДА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SAIL_WINGEA_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Крыло «Шашка» (элегантное)
                                { "Russian", "Крыло сабля, торпеда" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SAIL_WINGEB_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КРЫЛО «ШАШКА» (БУР)
                                { "Russian", "КРЫЛО САБЛЯ, БУР" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SAIL_WINGEB_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Крыло «Шашка» (бур)
                                { "Russian", "Крыло сабля, бур" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SAIL_WINGEC_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КРЫЛО «ШАШКА» (ЗВЕЗДА)
                                { "Russian", "КРЫЛО САБЛЯ, ЗВЕЗДА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SAIL_WINGEC_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Крыло «Шашка» (звезда)
                                { "Russian", "Крыло сабля, звезда" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SAIL_WINGED_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КРЫЛО «ШАШКА» (V-ОБРАЗНОЕ)
                                { "Russian", "КРЫЛО САБЛЯ, V-ОБРАЗНОЕ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SAIL_WINGED_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Крыло «Шашка» (V-образное)
                                { "Russian", "Крыло сабля, V-образное" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SAIL_WINGEE_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КРЫЛО «ШАШКА» (H-ОБРАЗНОЕ)
                                { "Russian", "КРЫЛО САБЛЯ, H-ОБРАЗНОЕ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SAIL_WINGEE_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Крыло «Шашка» (H-образное)
                                { "Russian", "Крыло сабля, H-образное" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SAIL_WINGFA_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КРЫЛО «ЯТАГАН» (ЭЛЕГАНТНОЕ)
                                -- SCIMITAR WING (SLEEK)
                                { "Russian", "КРЫЛО ЯТАГАН, ТОРПЕДА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SAIL_WINGFA_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Крыло «Ятаган» (элегантное)
                                { "Russian", "Крыло ятаган, торпеда" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SAIL_WINGFB_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КРЫЛО «ЯТАГАН» (БУР)
                                { "Russian", "КРЫЛО ЯТАГАН, БУР" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SAIL_WINGFB_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Крыло «Ятаган» (бур)
                                { "Russian", "Крыло ятаган, бур" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SAIL_WINGFC_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КРЫЛО «ЯТАГАН» (ЗВЕЗДА)
                                { "Russian", "КРЫЛО ЯТАГАН, ЗВЕЗДА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SAIL_WINGFC_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Крыло «Ятаган» (звезда)
                                { "Russian", "Крыло ятаган, звезда" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SAIL_WINGFD_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КРЫЛО «ЯТАГАН» (V-ОБРАЗНОЕ)
                                { "Russian", "КРЫЛО ЯТАГАН, V-ОБРАЗНОЕ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SAIL_WINGFD_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Крыло «Ятаган» (V-образное)
                                { "Russian", "Крыло ятаган, V-образное" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SAIL_WINGFE_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КРЫЛО «ЯТАГАН» (H-ОБРАЗНОЕ)
                                { "Russian", "КРЫЛО ЯТАГАН, H-ОБРАЗНОЕ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SAIL_WINGFE_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Крыло «Ятаган» (H-образное)
                                { "Russian", "Крыло ятаган, H-образное" },
                            }
                        },
                        --#endregion

                        --#endregion

                        --#region ПУТЕШЕСТВЕННИК

                        --#region ПУТЕШЕСТВЕННИК / КАБИНЫ
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SCIENTIFIC_COCK_AAA_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КОРПУС «СВЕТЛЯЧОК» «F»
                                { "Russian", "КОРПУС «СВЕТЛЯЧОК», F" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SCIENTIFIC_COCK_AAA_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Корпус «Светлячок» «F»
                                { "Russian", "Корпус «Светлячок», F" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SCIENTIFIC_COCK_ABA_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КОРПУС «СВЕТЛЯЧОК» «S»
                                { "Russian", "КОРПУС «СВЕТЛЯЧОК», S" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SCIENTIFIC_COCK_ABA_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Корпус «Светлячок» «S»
                                { "Russian", "Корпус «Светлячок», S" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SCIENTIFIC_COCK_ACA_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КОРПУС «СВЕТЛЯЧОК» «D»
                                { "Russian", "КОРПУС «СВЕТЛЯЧОК», D" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SCIENTIFIC_COCK_ACA_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Корпус «Светлячок» «D»
                                { "Russian", "Корпус «Светлячок», D" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SCIENTIFIC_COCK_AAB_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КОРПУС «СТРЕКОЗА» «F»
                                { "Russian", "КОРПУС «СТРЕКОЗА», F" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SCIENTIFIC_COCK_AAB_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Корпус «Стрекоза» «F»
                                { "Russian", "Корпус «Стрекоза», F" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SCIENTIFIC_COCK_ABB_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КОРПУС «СТРЕКОЗА» «S»
                                { "Russian", "КОРПУС «СТРЕКОЗА», S" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SCIENTIFIC_COCK_ABB_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Корпус «Стрекоза» «S»
                                { "Russian", "Корпус «Стрекоза», S" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SCIENTIFIC_COCK_ACB_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КОРПУС «СТРЕКОЗА» «D»
                                { "Russian", "КОРПУС «СТРЕКОЗА», D" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SCIENTIFIC_COCK_ACB_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Корпус «Стрекоза» «D»
                                { "Russian", "Корпус «Стрекоза», D" },
                            }
                        },
                        --#endregion

                        --#region ПУТЕШЕСТВЕННИК / КРЫЛЬЯ
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SCIENTIFIC_WING_EMPTY_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КРЫЛО-ЦЕНТРОПЛАН (ПУСТОЕ)
                                { "Russian", "КРЫЛО-ЦЕНТРОПЛАН, ПУСТОЕ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SCIENTIFIC_WING_EMPTY_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Крыло-центроплан (пустое)
                                { "Russian", "Крыло-центроплан, пустое" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SCIENTIFIC_WING_BC_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- РАЗДЕЛЕННОЕ КРЫЛО «ПУЛЬСАР»
                                -- PULSAR SPLIT-WING
                                { "Russian", "КРЫЛО «ПУЛЬСАР», РАЗДЕЛЕННОЕ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SCIENTIFIC_WING_BC_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Разделенное крыло «Пульсар»
                                { "Russian", "Крыло «Пульсар», разделенное" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SCIENTIFIC_WING_KC_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- РАЗДЕЛЕННОЕ КРЫЛО «СОЛНЕЧНОЕ ПЯТНО»
                                { "Russian", "КРЫЛО «СОЛНЕЧНОЕ ПЯТНО», РАЗДЕЛЕННОЕ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SCIENTIFIC_WING_KC_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Разделенное крыло «Солнечное пятно»
                                { "Russian", "Крыло «Солнечное пятно», разделенное" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SCIENTIFIC_WING_T_C_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КРЫЛО «БАРАБАН» (ОБЕЛИСК)
                                { "Russian", "КРЫЛО «БАРАБАН», ОБЕЛИСК" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SCIENTIFIC_WING_T_C_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Крыло «Барабан» (Обелиск)
                                { "Russian", "Крыло «Барабан», Обелиск" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SCIENTIFIC_WING_T_G_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КРЫЛО «БАРАБАН» (КУРАТОР)
                                { "Russian", "КРЫЛО «БАРАБАН», КУРАТОР" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SCIENTIFIC_WING_T_G_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Крыло «Барабан» (Куратор)
                                { "Russian", "Крыло «Барабан», Куратор" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SCIENTIFIC_WING_T_I_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КРЫЛО «БАРАБАН» (КОРОТКОВОЛНОВОЕ)
                                { "Russian", "КРЫЛО «БАРАБАН», КОРОТКОВОЛНОВОЕ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SCIENTIFIC_WING_T_I_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Крыло «Барабан» (коротковолновое)
                                { "Russian", "Крыло «Барабан», коротковолновое" },
                            }
                        },
                        --#endregion

                        --#endregion

                    }
                },
            }
        }
    }
}
