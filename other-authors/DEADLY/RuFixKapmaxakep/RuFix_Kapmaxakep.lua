NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]    = "_RuFix_Kapmaxakep.pak",
    ["MOD_AUTHOR"]      = "Kapmaxakep",
    ["LUA_AUTHOR"]      = "gh0stwizard",
    ["MOD_DESCRIPTION"] = "Restores names of ships, space stations and multitools in English.",
    ["NMS_VERSION"]     = "5.72",
    ["EXML_CREATE"]     = "false",
    ["MODIFICATIONS"]   = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                { -- LANGUAGE/NMS_LOC6_RUSSIAN.MBIN
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_LOC6_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NORMANDY_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Корабль «Нормандия» SR1
                                -- SSV Normandy SR1
                                { "Russian", "SSV Normandy SR1" },
                            }
                        },
                        -- Изменение языка сохранения с русского на английский от Kapmaxakep
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPD_SHIP_01_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ЗОЛОТОЙ ВЕКТОР
                                { "Russian", "GOLDEN VECTOR" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPD_SHIP_01_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Золотой вектор
                                { "Russian", "Golden Vector" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "GHOSTSHIP_NAME_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %CODE% Звезда %PROCNAME%
                                { "Russian", "%CODE% Star of %PROCNAME%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "GHOSTSHIP_NAME_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %CODE% Гордость %PROCNAME%
                                { "Russian", "%CODE% Pride of %PROCNAME%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "GHOSTSHIP_NAME_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %CODE% Император %PROCNAME%
                                { "Russian", "%CODE% Emperor %PROCNAME%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "GHOSTSHIP_NAME_4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %CODE% Тягач %PROCNAME%
                                { "Russian", "%CODE% %PROCNAME% Hauler" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "GHOSTSHIP_NAME_5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %CODE% Дух %PROCNAME%
                                { "Russian", "%CODE% %PROCNAME% Spirit" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "GHOSTSHIP_NAME_6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %CODE% Корпус «%PROCNAME%»
                                { "Russian", "%CODE% Bulk of %PROCNAME%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "GHOSTSHIP_NAME_7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %CODE% Непобедимый %PROCNAME%
                                { "Russian", "%CODE% Invincible %PROCNAME%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "GHOSTSHIP_NAME_8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %CODE% Слава %PROCNAME%
                                { "Russian", "%CODE% Glory of %PROCNAME%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "GHOSTSHIP_NAME_9" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Путешественник %PROCNAME%
                                { "Russian", "The %PROCNAME% Explorer" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "GHOSTSHIP_NAME_10" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Море %PROCNAME%
                                { "Russian", "The Sea of %PROCNAME%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "GHOSTSHIP_NAME_11" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Грузовоз (%PROCNAME%)
                                { "Russian", "The %PROCNAME% Hauler" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "GHOSTSHIP_NAME_12" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %CODE% Ветра %PROCNAME%
                                { "Russian", "%CODE% Winds of %PROCNAME%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "GHOSTSHIP_NAME_13" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %CODE% Грациозный %PROCNAME%
                                { "Russian", "%CODE% Graceful %PROCNAME%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "GHOSTSHIP_NAME_14" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %CODE% Молот %PROCNAME%
                                { "Russian", "%CODE% %PROCNAME% Hammer" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "GHOSTSHIP_NAME_15" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %CODE% Мясник %PROCNAME%
                                { "Russian", "%CODE% Butcher of %PROCNAME%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "GHOSTSHIP_NAME_16" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %CODE% Коготь %PROCNAME%
                                { "Russian", "%CODE% Claw of %PROCNAME%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "GHOSTSHIP_NAME_17" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %CODE% Гордость %PROCNAME%
                                { "Russian", "%CODE% %PROCNAME%'s Pride" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "GHOSTSHIP_NAME_18" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %CODE% Слава %PROCNAME%
                                { "Russian", "%CODE% %PROCNAME%'s Glory" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "GHOSTSHIP_NAME_19" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %CODE% Сестра %PROCNAME%
                                { "Russian", "%CODE% Sister of %PROCNAME%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "GHOSTSHIP_NAME_20" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %CODE% Дочь %PROCNAME%
                                { "Russian", "%CODE% Daughter of %PROCNAME%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "GHOSTSHIP_NAME_21" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %CODE% Желтый %PROCNAME%
                                { "Russian", "%CODE% Yellow %PROCNAME%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEIRDSHIP_FORMAT_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %PROCNAME%%SHIPCODE%
                                -- %PROCNAME% %SHIPCODE%
                                { "Russian", "%PROCNAME% %SHIPCODE%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEIRDSHIP_FORMAT_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %PREFIX%%PROCNAME%
                                -- %PREFIX% %PROCNAME%
                                { "Russian", "%PREFIX% %PROCNAME%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "PREFIXGEN_WEIRDSHIP_PREFIX_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вопящий
                                { "Russian", "The Screaming" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "PREFIXGEN_WEIRDSHIP_PREFIX_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Шепчущий
                                { "Russian", "The Whispering" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "PREFIXGEN_WEIRDSHIP_PREFIX_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Потерянный
                                { "Russian", "The Lost" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "PREFIXGEN_WEIRDSHIP_PREFIX_4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Лучезарный
                                { "Russian", "The Radiant" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "PREFIXGEN_WEIRDSHIP_PREFIX_5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обреченный
                                { "Russian", "The Doomed" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "PREFIXGEN_WEIRDSHIP_PREFIX_6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Единственный
                                { "Russian", "The Only" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "PREFIXGEN_WEIRDSHIP_PREFIX_7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Ползучий
                                { "Russian", "The Creeping" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "PREFIXGEN_WEIRDSHIP_PREFIX_8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Мертвенный
                                { "Russian", "The Deathly" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "PREFIXGEN_WEIRDSHIP_PREFIX_9" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Живой
                                { "Russian", "The Living" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "PREFIXGEN_WEIRDSHIP_PREFIX_10" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Страдающий
                                { "Russian", "The Pained" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "PREFIXGEN_WEIRDSHIP_PREFIX_11" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Одинокий
                                { "Russian", "The Lonely" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "PREFIXGEN_WEIRDSHIP_PREFIX_12" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Призрачный
                                { "Russian", "The Haunted" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "PREFIXGEN_WEIRDSHIP_PREFIX_13" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Воспламененный
                                { "Russian", "The Inflamed" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "PREFIXGEN_WEIRDSHIP_PREFIX_14" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Неутешный
                                { "Russian", "The Restless" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "PREFIXGEN_WEIRDSHIP_PREFIX_15" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Дергающийся
                                { "Russian", "The Twitching" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "PREFIXGEN_WEIRDSHIP_PREFIX_16" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Бессердечный
                                { "Russian", "The Heartless" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "PREFIXGEN_WEIRDSHIP_PREFIX_17" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Зараженный
                                { "Russian", "The Infected" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "PREFIXGEN_WEIRDSHIP_PREFIX_18" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Умирающий
                                { "Russian", "The Dying" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "PREFIXGEN_WEIRDSHIP_PREFIX_19" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обвитый
                                { "Russian", "The Coiled" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "PREFIXGEN_WEIRDSHIP_PREFIX_20" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Звездный
                                { "Russian", "The Starlit" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "PREFIXGEN_WEIRDSHIP_PREFIX_21" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Спящий
                                { "Russian", "The Sleeping" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "PREFIXGEN_WEIRDSHIP_PREFIX_22" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Неудержимый
                                { "Russian", "The Relentless" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "PREFIXGEN_WEIRDSHIP_PREFIX_23" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Пропавший
                                { "Russian", "The Missing" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "PREFIXGEN_WEIRDSHIP_PREFIX_24" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Последний
                                { "Russian", "The Final" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "PREFIXGEN_WEIRDSHIP_PREFIX_25" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Первый
                                { "Russian", "The First" },
                            }
                        },
                    }
                },
                { -- LANGUAGE/NMS_LOC7_RUSSIAN.MBIN
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_LOC7_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SAVE_SUMMARY_ON_FOOT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- На планете %PLANET%
                                { "Russian", "On Planet (%PLANET%)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SAVE_SUMMARY_PLANET_OUTPOST" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- На планете %PLANET%
                                { "Russian", "On Planet (%PLANET%)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SAVE_SUMMARY_ON_SETTLEMENT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- В поселении %SETTLEMENT%
                                { "Russian", "Settlement of %SETTLEMENT%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SAVE_SUMMARY_ON_BASE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- На базе %BASE%
                                { "Russian", "Within %BASE%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SAVE_SUMMARY_ABAND_FREIGHTER" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- На борту заброшенного судна
                                { "Russian", "Aboard a derelict freighter" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SAVE_SUMMARY_IN_NEXUS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- На борту Космической Аномалии
                                { "Russian", "Aboard the Space Anomaly" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SAVE_SUMMARY_IN_FREIGHTER" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- На борту грузового судна (%FREIGHTER%)
                                { "Russian", "On freighter (%FREIGHTER%)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SAVE_SUMMARY_IN_STATION" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- На борту (%STATION%)
                                { "Russian", "Aboard %STATION%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SAVE_SUMMARY_IN_SHIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- В системе %SYSTEM%
                                { "Russian", "In the %SYSTEM% system" },
                            }
                        },
                    }
                },
                { -- LANGUAGE/NMS_LOC8_RUSSIAN.MBIN
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_LOC8_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "UI_GHOSTSHIP_NAME" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Корабль проклятых
                        --         -- Ship of the Damned
                        --         { "Russian", "Ship of the Damned" },
                        --     }
                        -- },
                        -- переделал для всех в RuFix_Farscape.lua, назвал просто Трофей
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "BASESTATS_ROBOT_L" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Извлечен. (Salvaged)
                        --         { "Russian", "Salvaged" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "BASESTATS_ROBOTSHIP_L" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Извлечен. (Salvaged)
                        --         { "Russian", "Salvaged" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "BASESTATS_ROBOTSHIP" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- ИЗВЛЕЧЕН. (SALVAGED)
                        --         { "Russian", "SALVAGED" },
                        --     }
                        -- },
                        --
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_STAFF_ADJ_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Безмолвный
                                { "Russian", "Silent" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_STAFF_ADJ_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Идеальный
                                { "Russian", "Perfect" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_STAFF_ADJ_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Бесконечный
                                { "Russian", "Infinite" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_STAFF_ADJ_4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Стеклянный
                                { "Russian", "Glassy" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_STAFF_ADJ_5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Атлантидский
                                { "Russian", "Atlantid" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_STAFF_ADJ_6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Геометрический
                                { "Russian", "Geometric" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_STAFF_ADJ_7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Перерожденный
                                { "Russian", "Reborn" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_STAFF_ADJ_8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Переделанный
                                { "Russian", "Remade" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_STAFF_ADJ_9" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Извлеченный
                                { "Russian", "Salvaged" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_STAFF_ADJ_10" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Огнерожденный
                                { "Russian", "Flameborn" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_STAFF_ADJ_11" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Отдельный
                                { "Russian", "Fragment" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_STAFF_ADJ_12" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Светящийся
                                { "Russian", "Radiant" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_STAFF_ADJ_13" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Эроновый
                                { "Russian", "Aeron" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_STAFF_ADJ_14" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Нестройный
                                { "Russian", "Discordant" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_STAFF_ADJ_15" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Гармонический
                                { "Russian", "Harmonic" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_STAFF_ADJ_16" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Возвращенный
                                { "Russian", "Returned" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_STAFF_ADJ_17" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Неумирающий
                                { "Russian", "Undying" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_STAFF_ADJ_18" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вывернутый
                                { "Russian", "Inverted" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_STAFF_ADJ_19" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Диссонансный
                                { "Russian", "Dissonant" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_STAFF_ADJ_20" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Перекованный
                                { "Russian", "Reforged" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_STAFF_ADJ_21" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Нетающий
                                { "Russian", "Unmelting" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_STAFF_ADJ_22" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Отклоняющий
                                { "Russian", "Divergent" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_STAFF_ADJ_23" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вихревой
                                { "Russian", "Vortex" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_STAFF_ADJ_24" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Искрящийся
                                { "Russian", "Spark" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_STAFF_ADJ_25" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Воющий
                                { "Russian", "Howl" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_ROBOTSHIP_NAME_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Благословленный
                                { "Russian", "Blessed" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_ROBOTSHIP_NAME_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Перерожденный
                                { "Russian", "Reborn" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_ROBOTSHIP_NAME_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Багров.
                                { "Russian", "Crimson" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_ROBOTSHIP_NAME_4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Извлечен.
                                { "Russian", "Salvaged" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_ROBOTSHIP_NAME_5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Восстановлен.
                                { "Russian", "Recovered" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_ROBOTSHIP_NAME_6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Очищенный
                                { "Russian", "Purged" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_ROBOTSHIP_NAME_7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обгоревший
                                { "Russian", "Burned" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_ROBOTSHIP_NAME_8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Осколок
                                { "Russian", "Shard" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_ROBOTSHIP_NAME_9" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Фрагмент
                                { "Russian", "Fragment" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_ROBOTSHIP_NAME_10" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Осколок
                                { "Russian", "Remnant" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_ROBOTSHIP_NAME_11" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Благовест
                                { "Russian", "Blessing" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_ROBOTSHIP_NAME_12" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Пламя
                                { "Russian", "Flame" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_ROBOTSHIP_NAME_13" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Огонь
                                { "Russian", "Fire" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_ROBOTSHIP_NAME_14" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Пожар Атласа
                                { "Russian", "Atlas-Fire" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_ROBOTSHIP_NAME_15" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Стеклянный дух
                                { "Russian", "Glass Soul" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_ROBOTSHIP_NAME_16" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Охотник
                                { "Russian", "Hunter" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_ROBOTSHIP_NAME_17" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Надежда
                                { "Russian", "Hope" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_ROBOTSHIP_NAME_18" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Огнерожденный
                                { "Russian", "Flameborn" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_ROBOTSHIP_NAME_19" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Перекованный
                                { "Russian", "Reforged" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_ROBOTSHIP_NAME_20" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Эрон
                                { "Russian", "Aeron" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPD_SHIP_09_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- СПИДЕР УТОПИИ
                                { "Russian", "UTOPIA SPEEDER" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPD_SHIP_09_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Спидер Утопии
                                { "Russian", "Utopia Speeder" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPD_SHIP_12_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ЗВЕЗДОРОЖДЕННЫЙ БЕГУН
                                { "Russian", "STARBORN RUNNER" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPD_SHIP_12_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Звездорожденный бегун
                                { "Russian", "Starborn Runner" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPD_ATLASSTAFF_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "ATLAS SCEPTRE" }, -- СКИПЕТР АТЛАСА
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPD_ATLASSTAFF_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Atlas Sceptre" }, -- Скипетр Атласа
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPD_SHIP_13_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "IRON VULTURE" }, -- ЖЕЛЕЗНЫЙ СТЕРВЯТНИК
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPD_SHIP_13_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Iron Vulture" }, -- Железный стервятник
                            }
                        },
                    }
                },
                { -- LANGUAGE/NMS_UPDATE3_RUSSIAN.MBIN
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_UPDATE3_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        -- Изменение генерации названия станций, кораблей и мультитулов от Kapmaxakep
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SPACESTATION_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Станция — %SYSNAME%
                                -- %SYSNAME% Station
                                { "Russian", "%SYSNAME% Station" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SPACESTATION_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %SYSNAME%, орбитальная станция
                                -- %SYSNAME% Orbital
                                { "Russian", "%SYSNAME% Orbital" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SPACESTATION_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %SYSNAME%, станция
                                -- %SYSNAME% Station
                                { "Russian", "%SYSNAME% Station" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SPACESTATION_4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %SYSNAME%, станция «Альфа»
                                -- %SYSNAME% Station Alpha
                                { "Russian", "%SYSNAME% Station Alpha" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SPACESTATION_5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %SYSNAME%, станция «Бета»
                                -- %SYSNAME% Station Beta
                                { "Russian", "%SYSNAME% Station Beta" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SPACESTATION_6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %SYSNAME%, станция «Омега»
                                -- %SYSNAME% Station Omega
                                { "Russian", "%SYSNAME% Station Omega" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SPACESTATION_7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %SYSNAME%, цикловая станция
                                -- %SYSNAME% Cycler
                                { "Russian", "%SYSNAME% Cycler" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SPACESTATION_8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %SYSNAME%, контактная станция
                                -- %SYSNAME% Rendezvous
                                { "Russian", "%SYSNAME% Rendezvous" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SPACESTATION_9" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %SYSNAME%, главный порт
                                -- %SYSNAME% Hub
                                { "Russian", "%SYSNAME% Hub" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SPACESTATION_10" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %SYSNAME%, конечная
                                -- %SYSNAME% Terminus
                                { "Russian", "%SYSNAME% Terminus" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SPACESTATION_11" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Станция Сигма — %SYSNAME%
                                -- %SYSNAME% Station Sigma
                                { "Russian", "%SYSNAME% Station Sigma" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SPACESTATION_12" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %SYSNAME%, узловая станция
                                -- %%SYSNAME% Junction
                                { "Russian", "%SYSNAME% Junction" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SPACESTATION_13" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Станция Тау — %SYSNAME%
                                -- %SYSNAME% Station Tau
                                { "Russian", "%SYSNAME% Station Tau" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SPACESTATION_14" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %SYSNAME%, станция обмена
                                -- %SYSNAME% Exchange
                                { "Russian", "%SYSNAME% Exchange" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SPACESTATION_15" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %SYSNAME%, Прайм
                                -- %SYSNAME% Prime
                                { "Russian", "%SYSNAME% Prime" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SPACESTATION_16" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %SYSNAME%, малая станция
                                -- %SYSNAME% Station Minor
                                { "Russian", "%SYSNAME% Station Minor" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SPACESTATION_17" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %SYSNAME%, большая станция
                                -- %SYSNAME% Station Major
                                { "Russian", "%SYSNAME% Station Major" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SPACESTATION_18" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %SYSNAME%, платформа
                                -- %SYSNAME% Platform
                                { "Russian", "%SYSNAME% Platform" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SPACESTATION_19" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %SYSNAME%, сфера
                                -- The %SYSNAME% Sphere
                                { "Russian", "The %SYSNAME% Sphere" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SPACESTATION_20" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %SYSNAME%, Звездный Наблюдатель
                                -- %SYSNAME% Stellar Observer
                                { "Russian", "%SYSNAME% Stellar Observer" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_FORMAT_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %NOUN%: %PROPERTY%
                                -- %NOUN% of %PROPERTY%
                                { "Russian", "%NOUN% of %PROPERTY%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_FORMAT_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %PROCNAME% — %WEAP1% %WEAP2%
                                -- %PROCNAME%'s %WEAP1% %WEAP2%
                                { "Russian", "%PROCNAME%'s %WEAP1% %WEAP2%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_FORMAT_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %NOUN%: %PROPERTY% %SERIALNUM%
                                -- %NOUN% of %PROPERTY% %SERIALNUM%
                                { "Russian", "%NOUN% of %PROPERTY% %SERIALNUM%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_FORMAT_4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %NOUN%: %PROCNAME%-%NUMERAL%
                                -- %NOUN% of %PROCNAME%-%NUMERAL%
                                { "Russian", "%NOUN% of %PROCNAME%-%NUMERAL%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_FORMAT_5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %%WEAP1% %WEAP2%, модель %NUMERAL%
                                -- %WEAP1% %WEAP2% Mark %NUMERAL%
                                { "Russian", "%WEAP1% %WEAP2% Mark %NUMERAL%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_FORMAT_7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %WEAP1% %ADJECTIVE% %WEAP2%
                                -- %ADJECTIVE% %WEAP1% %WEAP2%
                                { "Russian", "%ADJECTIVE% %WEAP1% %WEAP2%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_FORMAT_8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %PROCNAME% %ADJECTIVE% %WEAP2%
                                -- %ADJECTIVE% %PROCNAME% %WEAP2%
                                { "Russian", "%ADJECTIVE% %PROCNAME% %WEAP2%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_FORMAT_9" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %WEAP1% %ADJECTIVE% %WEAP2%
                                -- %ADJECTIVE% %WEAP1% %WEAP2%
                                { "Russian", "%ADJECTIVE% %WEAP1% %WEAP2%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_FORMAT_10" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %NOUN%: %PROPERTY%
                                -- %NOUN% of %PROPERTY%
                                { "Russian", "%NOUN% of %PROPERTY%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_NOUN_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Aspect" }, -- Подход
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_NOUN_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Gift" }, -- Дар
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_NOUN_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Loop" }, -- Цикл
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_NOUN_4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Theory" }, -- Теория
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_NOUN_5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Trace" }, -- След
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_NOUN_6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Surge" }, -- Всплеск
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_NOUN_7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Shadow" }, -- Тень
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_NOUN_8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Return" }, -- Возвращение
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_NOUN_9" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Overload" }, -- Перегрузка
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_NOUN_10" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Whispers" }, -- Шепот
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_NOUN_11" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Prayer" }, -- Молитва
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_NOUN_12" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Obedience" }, -- Повиновение
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_NOUN_13" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Memories" }, -- Воспоминания
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_NOUN_14" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Dreams" }, -- Мечты
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_NOUN_15" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Sleep" }, -- Сон
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_NOUN_16" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Defiance" }, -- Непокорство
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_NOUN_17" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Touch" }, -- Касание
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_NOUN_18" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Song" }, -- Песня
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_NOUN_19" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "The End" }, -- Конец
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_NOUN_20" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Legacy" }, -- Наследие
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_NOUN_21" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Messenger" }, -- Посланник
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_NOUN_22" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Silhouette" }, -- Силуэт
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_NOUN_23" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Destroyer" }, -- Уничтожитель
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_NOUN_24" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Harbinger" }, -- Предвестник
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_NOUN_25" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Herald" }, -- Вестник
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_NOUN_26" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Pillar" }, -- Столп
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_NOUN_27" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "The Hand" }, -- Рука
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_NOUN_28" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Art" }, -- Искусство
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_NOUN_29" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Poem" }, -- Стих
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_NOUN_30" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Kiss" }, -- Поцелуй
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_NOUN_31" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Bane" }, -- Погибель
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_ADJ_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Iridescent" }, -- радуги
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_ADJ_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Unusual" }, -- Своеобразная
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_ADJ_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Gleaming" }, -- свечения
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_ADJ_4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Theoretical" }, -- теории
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_ADJ_5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Conceptual" }, -- концепции
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_ADJ_6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Geometric" }, -- геометрии
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_ADJ_7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Mathematical" }, -- Математики
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_ADJ_8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Imperfect" }, -- несовершенства
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_ADJ_9" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Infinite" }, -- неопределенности
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_ADJ_10" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Silent" }, -- тишины
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_ADJ_11" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Unprotected" }, -- уязвимости
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_ADJ_12" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Overloaded" }, -- Перегрузки
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_ADJ_13" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Comforting" }, -- комфорта
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_ADJ_14" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Dazzling" }, -- Ошеломления
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_ADJ_15" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Retuned" }, -- перенастройки
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_ADJ_16" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Hand-made" }, -- ручной работы
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_ADJ_17" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Improvised" }, -- импровизации
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_ADJ_18" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Burning" }, -- пламени
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_ADJ_19" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Volcanic" }, -- вулкана
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_ADJ_20" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Heavy" }, -- тяжести
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_ADJ_21" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Optimised" }, -- оптимизации
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_ADJ_22" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Parallel" }, -- параллельности
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_ADJ_23" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Improved" }, -- улучшения
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_ADJ_24" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Hidden" }, -- скрытности
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_ADJ_25" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Backup" }, -- резерва
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_ADJ_26" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Negative" }, -- отрицания
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_ADJ_27" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Ancestral" }, -- предков
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_ADJ_28" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Structural" }, -- структуры
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_ADJ_29" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Unstable" }, -- нестабильности
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_ADJ_30" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Electric" }, -- электричества
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_ADJ_31" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Ohmic" }, -- Ома
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_PROPERTY_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Gravity" }, -- притяжения
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_PROPERTY_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Infinity" }, -- бесконечности
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_PROPERTY_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Harmony" }, -- гармонии
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_PROPERTY_4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Clarity" }, -- ясности
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_PROPERTY_5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Perfection" }, -- совершенства
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_PROPERTY_6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Silence" }, -- тишины
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_PROPERTY_7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Bones" }, -- костей
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_PROPERTY_8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Supplication" }, -- мольбы
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_PROPERTY_9" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Storms" }, -- бурь
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_PROPERTY_10" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "the Sky" }, -- неба
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_PROPERTY_11" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "the Nexus" }, -- Нексуса
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_PROPERTY_12" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "the Horizon" }, -- горизонта
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_PROPERTY_13" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Lightning" }, -- молнии
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_PROPERTY_14" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Tongues" }, -- языков
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_PROPERTY_15" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "the Wind" }, -- ветра
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_PROPERTY_16" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Certainty" }, -- уверенности
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_PROPERTY_17" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "the Dance" }, -- танца
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_PROPERTY_18" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "the Abyss" }, -- бездны
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_PROPERTY_19" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Thought" }, -- мысли
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_PROPERTY_20" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Matter" }, -- материи
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_PROPERTY_21" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "the Ancients" }, -- Древних
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_PROPERTY_22" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "the Stars" }, -- звезд
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_PROPERTY_23" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "the Anomaly" }, -- аномалии
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_PROPERTY_24" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Sight" }, -- вида
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_PROPERTY_25" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Fire" }, -- огня
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_PROPERTY_26" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Zeal" }, -- рвения
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_PROPERTY_27" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Peace" }, -- мира
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_PROPERTY_28" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "War" }, -- войны
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_PROPERTY_29" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Solemnity" }, -- торжественности
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_PROPERTY_30" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "the Night" }, -- ночи
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_COMP1_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Reflex" }, -- Рефлекс
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_COMP1_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Arc" }, -- Дуга
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_COMP1_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Loop" }, -- Цикл
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_COMP1_4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Angle" }, -- Взгляд
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_COMP1_5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Polygon" }, -- Полигон
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_COMP1_6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Impulse" }, -- Импульс
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_COMP1_7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Quantum" }, -- Квант
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_COMP1_8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Waveform" }, -- Волна
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_COMP1_9" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Light" }, -- Свет
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_COMP1_10" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Spacetime" }, -- Пространство-время
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_COMP1_11" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Voltage" }, -- Напряжение
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_COMP1_12" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Ion" }, -- Ион
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_COMP1_13" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Raycast" }, -- Лучемет
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_COMP1_14" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Dream" }, -- Мечта
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_COMP1_15" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Vector" }, -- Вектор
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_COMP1_16" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Molecule" }, -- Молекула
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_COMP1_17" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Neutron" }, -- Нейтрон
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_COMP1_18" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Isotope" }, -- Изотоп
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_COMP1_19" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Mass" }, -- Масса
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_COMP1_20" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Inertial" }, -- Инерция
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_COMP1_21" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Ozone" }, -- Озон
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_COMP1_22" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Oxide" }, -- Оксид
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_COMP1_23" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Gravity" }, -- притяжения
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_COMP1_24" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Stasis" }, -- Гравитация
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_COMP1_25" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "M-Field" }, -- Магнитное поле
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_COMP1_26" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Force" }, -- Сила
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_COMP1_27" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Nano" }, -- Нано
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_COMP1_28" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Chrono" }, -- Хроно
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_COMP1_29" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Shock" }, -- Шок
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_COMP1_30" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Atmosphere" }, -- Атмосфера
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_COMP2_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Blaster" }, -- Бластер
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_COMP2_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Silencer" }, -- Глушитель
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_COMP2_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Stabiliser" }, -- Компенсатор
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_COMP2_4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Balancer" }, -- Балансировщик
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_COMP2_5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Analyser" }, -- Анализатор
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_COMP2_6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Driver" }, -- Привод
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_COMP2_7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Charger" }, -- Магазин
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_COMP2_8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Clarifier" }, -- Очиститель
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_COMP2_9" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Irradiator" }, -- Излучатель
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_COMP2_10" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Obstructor" }, -- Заградитель
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_COMP2_11" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Focuser" }, -- Фокусировщик
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_COMP2_12" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Tuner" }, -- Тюнер
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_COMP2_13" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Inverter" }, -- Обратитель
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_COMP2_14" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Reflector" }, -- Отражатель
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_COMP2_15" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Engine" }, -- Двигатель
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_COMP2_16" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Translator" }, -- Переводчик
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_COMP2_17" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Elevator" }, -- Подъемник
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_COMP2_18" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Hunter" }, -- Охотник
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_COMP2_19" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Auditor" }, -- Ревизор
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_COMP2_20" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Capacitor" }, -- Конденсатор
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_COMP2_21" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Puncher" }, -- Ударник
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_COMP2_22" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Beam" }, -- Луч
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_COMP2_23" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Generator" }, -- Генератор
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_COMP2_24" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Scoop" }, -- Заборник
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_COMP2_25" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Harmoniser" }, -- Согласователь
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_COMP2_26" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Needler" }, -- Игольщик
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_COMP2_27" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Probe" }, -- Зонд
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_COMP2_28" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Compressor" }, -- Компрессор
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_COMP2_29" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Absorber" }, -- Поглотитель
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_COMP2_30" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Entangler" }, -- Ловец
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_COMP2_31" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Atomiser" }, -- Расщепитель
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_WEAP_COMP2_32" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Injector" }, -- Инжектор
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_FORMAT_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %NOUN%: %PROPERTY%
                                -- The %NOUN% of %PROPERTY%
                                { "Russian", "The %NOUN% of %PROPERTY%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_FORMAT_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %PROCNAME% — %ADJECTIVE% %VERB%
                                -- %PROCNAME%'s %ADJECTIVE% %VERB%
                                { "Russian", "%PROCNAME%'s %ADJECTIVE% %VERB%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_FORMAT_4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %NOUN% — %PROCNAME%
                                -- %NOUN% of the %PROCNAME%
                                { "Russian", "%NOUN% of the %PROCNAME%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_FORMAT_6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %NOUN% %ADJECTIVE% %SHIPCODE%
                                -- %ADJECTIVE% %NOUN% %SHIPCODE%
                                { "Russian", "%ADJECTIVE% %NOUN% %SHIPCODE%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_FORMAT_7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %PROCNAME% %ADJECTIVE% %NUMERAL%
                                -- %ADJECTIVE% %PROCNAME% %NUMERAL%
                                { "Russian", "%ADJECTIVE% %PROCNAME% %NUMERAL%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_FORMAT_8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %PROCNAME% — %POSSESSION%
                                -- %PROCNAME%'s %POSSESSION%
                                { "Russian", "%PROCNAME%'s %POSSESSION%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_FORMAT_9" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %PROCNAME% — %POSSESSION% %SHIPCODE%
                                -- %PROCNAME%'s %POSSESSION% %SHIPCODE%
                                { "Russian", "%PROCNAME%'s %POSSESSION% %SHIPCODE%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_FORMAT_10" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %PROCNAME% — %ADJECTIVE% %POSSESSION%
                                -- %PROCNAME%'s %ADJECTIVE% %POSSESSION%
                                { "Russian", "%PROCNAME%'s %ADJECTIVE% %POSSESSION%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_FORMAT_11" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %PROCNAME%: %PROPERTY%
                                -- %PROCNAME% of %PROPERTY%
                                { "Russian", "%PROCNAME% of %PROPERTY%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_FORMAT_12" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %NOUN% %ADJECTIVE% %SHIPCODE%
                                -- %ADJECTIVE% %NOUN% %SHIPCODE%
                                { "Russian", "%ADJECTIVE% %NOUN% %SHIPCODE%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_FORMAT_15" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %NOUN%: %PROPERTY%
                                -- The %NOUN% of %PROPERTY%
                                { "Russian", "The %NOUN% of %PROPERTY%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_NOUN_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Owl" }, -- Филин
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_NOUN_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Hammer" }, -- Молот
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_NOUN_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Pillar" }, -- Столп
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_NOUN_4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Wings" }, -- Крылья
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_NOUN_5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Apostle" }, -- Апостол
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_NOUN_6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Falcon" }, -- Сокол
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_NOUN_7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Skylark" }, -- Жаворонок
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_NOUN_8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Eagle" }, -- Орел
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_NOUN_9" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Song" }, -- Песня
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_NOUN_10" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Mistress" }, -- Госпожа
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_NOUN_11" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Master" }, -- Господин
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_NOUN_12" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Hand" }, -- Рука
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_NOUN_13" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Focus" }, -- Фокус
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_NOUN_14" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "End" }, -- Конец
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_NOUN_15" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Birth" }, -- Рождение
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_NOUN_16" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Aegis" }, -- Эгида
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_NOUN_17" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Shield" }, -- Щит
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_NOUN_18" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Mother" }, -- Мать
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_NOUN_19" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Father" }, -- Отец
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_NOUN_20" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Breath" }, -- Дыхание
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_NOUN_21" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Claws" }, -- Когти
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_NOUN_22" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Talon" }, -- Коготь
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_NOUN_23" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Sword" }, -- Меч
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_NOUN_24" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Marvel" }, -- Чудо
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_NOUN_25" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Pride" }, -- Гордость
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_NOUN_26" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Victory" }, -- Победа
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_NOUN_27" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Triumph" }, -- Триумф
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_NOUN_28" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Defeat" }, -- Поражение
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_NOUN_29" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Hawk" }, -- Ястреб
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_NOUN_30" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Spear" }, -- Копье
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_NOUN_31" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Vision" }, -- Видение
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_NOUN_32" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Prophecy" }, -- Пророчество
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_NOUN_33" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Omen" }, -- Знамение
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_NOUN_34" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Nemesis" }, -- Немезида
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_NOUN_35" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Son" }, -- Сын
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_NOUN_36" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Daughter" }, -- Дочь
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_NOUN_37" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Sleep" }, -- Сон
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_NOUN_38" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Voice" }, -- Голос
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_NOUN_39" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Dance" }, -- Танец
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_NOUN_40" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Dance" }, -- Прах
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_NOUN_41" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Mirror" }, -- Зеркало
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_NOUN_42" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Reflection" }, -- Отражение
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_NOUN_43" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Bard" }, -- Бард
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_NOUN_44" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Foe" }, -- Враг
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_NOUN_45" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Departure" }, -- Отбытие
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_NOUN_46" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Anvil" }, -- Наковальня
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_NOUN_47" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Forge" }, -- Кузня
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_NOUN_48" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Voice" }, -- Глас
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_ADJ_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Speedy" }, -- Быстрый
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_ADJ_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Blazing" }, -- Пламенный
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_ADJ_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Soaring" }, -- Парящий
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_ADJ_4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Abyssal" }, -- Бездонный
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_ADJ_5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Reckless" }, -- Отчаянный
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_ADJ_6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Airborne" }, -- Небесный
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_ADJ_7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Swift" }, -- Стремительный
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_ADJ_8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Deadly" }, -- Смертельный
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_ADJ_9" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Burning" }, -- пламени
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_ADJ_10" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Floating" }, -- Свободный
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_ADJ_11" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Bright" }, -- Яркий
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_ADJ_12" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Colourless" }, -- Бесцветный
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_ADJ_13" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Frozen" }, -- Замерзший
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_ADJ_14" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Geometric" }, -- геометрии
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_ADJ_15" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Ancestral" }, -- предков
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_ADJ_16" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Timeless" }, -- вечности
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_ADJ_17" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Infinite" }, -- неопределенности
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_ADJ_18" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Limitless" }, -- Безграничный
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_ADJ_19" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Relentless" }, -- Неудержимый
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_ADJ_20" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Gravity" }, -- притяжения
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_ADJ_21" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Magnificent" }, -- Великолепный
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_ADJ_22" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Inspiring" }, -- Вдохновляющий
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_ADJ_23" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Exhausted" }, -- Утомленный
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_ADJ_24" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Final" }, -- Последний
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_ADJ_25" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Ultimate" }, -- Высший
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_ADJ_26" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Flying" }, -- Летающий
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_ADJ_27" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Towering" }, -- Нависший
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_ADJ_28" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Hyper" }, -- Гипер
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_ADJ_29" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Second" }, -- Второй
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_ADJ_30" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Winged" }, -- Крылатый
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_ADJ_31" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Prime" }, -- Прайм
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_ADJ_32" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Visionary" }, -- Иллюзорный
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_ADJ_33" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Ruthless" }, -- Безжалостный
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_ADJ_34" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Tranquil" }, -- Спокойный
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_ADJ_35" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Serene" }, -- Ясный
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_ADJ_36" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Halcyon" }, -- Безмятежный
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_ADJ_37" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Whispering" }, -- Шепчущий
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_ADJ_38" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Raging" }, -- Бушующий
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_ADJ_39" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Luminous" }, -- Светящийся
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_ADJ_40" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Radiant" }, -- Лучезарный
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_ADJ_41" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Lucent" }, -- Прозрачный
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_ADJ_42" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Shimmering" }, -- Мерцающий
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_ADJ_43" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Crystal" }, -- Кристальный
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_ADJ_44" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Stellar" }, -- Звездный
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_ADJ_45" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Parallax" }, -- Смещенный
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_ADJ_46" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Favourite" }, -- Возлюбленный
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_ADJ_47" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Rebuilt" }, -- Перестроенный
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_ADJ_48" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Abstract" }, -- Абстрактный
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_PROPERTY_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Flight" }, -- Полета
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_PROPERTY_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Gravity" }, -- притяжения
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_PROPERTY_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "the Stars" }, -- звезд
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_PROPERTY_4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "the Sun" }, -- Солнца
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_PROPERTY_5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "the Moon" }, -- Луны
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_PROPERTY_6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Fire" }, -- огня
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_PROPERTY_7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "the Wind" }, -- ветра
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_PROPERTY_8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Air" }, -- Воздуха
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_PROPERTY_9" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "the Ether" }, -- Эфира
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_PROPERTY_10" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Truth" }, -- Истины
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_PROPERTY_11" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Madness" }, -- Безумия
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_PROPERTY_12" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "the Abyss" }, -- бездны
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_PROPERTY_13" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "the Void" }, -- Пустоты
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_PROPERTY_14" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Destiny" }, -- Судьбы
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_PROPERTY_15" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Abstraction" }, -- Абстракции
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_PROPERTY_16" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Death" }, -- Смерти
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_PROPERTY_17" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Beauty" }, -- Красоты
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_PROPERTY_18" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Dreams" }, -- Мечты
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_PROPERTY_19" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Sleep" }, -- Сон
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_PROPERTY_20" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Inevitability" }, -- Неизбежности
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_PROPERTY_21" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Frost" }, -- Мороз
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_PROPERTY_22" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Destruction" }, -- Разрушения
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_PROPERTY_23" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Devastation" }, -- Опустошения
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_PROPERTY_24" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Providence" }, -- Провидения
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_PROPERTY_25" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "the Ancients" }, -- Древних
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_PROPERTY_26" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Perfection" }, -- совершенства
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_PROPERTY_27" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Souls" }, -- Душ
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_PROPERTY_28" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "the Korvax" }, -- Корваксов
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_PROPERTY_29" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "the Gek" }, -- Геков
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_PROPERTY_30" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "the Vy'keen" }, -- Вай'кинов
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_PROPERTY_31" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Infinity" }, -- бесконечности
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_PROPERTY_32" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "the Horizon" }, -- горизонта
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_PROPERTY_33" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Clouds" }, -- Облаков
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_PROPERTY_34" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Melody" }, -- Мелодии
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_PROPERTY_35" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Jeopardy" }, -- Опасности
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_PROPERTY_36" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Freedom" }, -- Свободы
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_VERB_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Explorer" }, -- Путешественник
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_VERB_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Observer" }, -- Наблюдатель
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_VERB_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Vanquisher" }, -- Победитель
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_VERB_4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Liberator" }, -- Освободитель
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_VERB_5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Voyager" }, -- Турист
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_VERB_6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Scanner" }, -- Сканер
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_VERB_7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Saviour" }, -- Спаситель
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_VERB_8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Guardian" }, -- Хранитель
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_VERB_9" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Protector" }, -- Заступник
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_VERB_10" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "War-Spear" }, -- Гарпун
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_VERB_11" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Defender" }, -- Защитник
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_VERB_12" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Star-Sailor" }, -- Звездоход
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_VERB_13" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Roamer" }, -- Скиталец
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_VERB_14" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Adventurer" }, -- Искатель приключений
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_VERB_15" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Calculator" }, -- Счетовод
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_VERB_16" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Auditor" }, -- Ревизор
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_VERB_17" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Surveyor" }, -- Смотритель
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_VERB_18" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Peacemaker" }, -- Миротворец
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_VERB_19" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Enforcer" }, -- Головорез
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_VERB_20" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Pilgrim" }, -- Пилигрим
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_VERB_21" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Pioneer" }, -- Первооткрыватель
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_VERB_22" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Pathfinder" }, -- Следопыт
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_VERB_23" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Trailblazer" }, -- Первопроходец
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_VERB_24" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Seeker" }, -- Искатель
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_VERB_25" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Singer" }, -- Певец
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_VERB_26" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Avenger" }, -- Мститель
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_VERB_27" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Void-Dancer" }, -- Танцующий в пустоте
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_VERB_28" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Sentinel" }, -- Страж
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_VERB_29" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Examiner" }, -- Испытатель
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_VERB_30" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Inquirer" }, -- Дознаватель
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_VERB_31" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Terror" }, -- Ужас
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_VERB_32" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Prospector" }, -- Изыскатель
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_VERB_33" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Architect" }, -- Архитектор
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_VERB_34" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Fabricator" }, -- Фабрикатор
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_VERB_35" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Forerunner" }, -- Предшественник
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_VERB_36" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Initiator" }, -- Инициатор
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_POSESSION_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Folly" }, -- каприза
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_POSESSION_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Last Laugh" }, -- последнего смеха
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_POSESSION_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Dream" }, -- мечты
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_POSESSION_4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Pride" }, -- гордости
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_POSESSION_5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Lost Work" }, -- потерянных трудов
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_POSESSION_6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Discovery" }, -- открытия
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_POSESSION_7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Victory" }, -- Победа
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_POSESSION_8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Triumph" }, -- Триумф
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_POSESSION_9" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Defeat" }, -- Поражение
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_POSESSION_10" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Experiment" }, -- эксперимента
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_POSESSION_11" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Gambit" }, -- гамбита
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_POSESSION_12" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Gamble" }, -- азарта
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_POSESSION_13" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Desperation" }, -- отчаяния
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_POSESSION_14" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Future" }, -- будущего
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_POSESSION_15" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Prospect" }, -- перспективы
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_POSESSION_16" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Indiscretion" }, -- неучтивости
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_POSESSION_17" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Coup" }, -- переворота
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_POSESSION_18" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Decree" }, -- указа
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_POSESSION_19" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Will" }, -- воли
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_POSESSION_20" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Flight" }, -- Полета
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_POSESSION_21" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Wings" }, -- Крылья
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_POSESSION_22" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Resistance" }, -- сопротивления
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_POSESSION_23" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Spirit" }, -- духа
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_POSESSION_24" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Voyage" }, -- странствия
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_POSESSION_25" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Redemption" }, -- искупления
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_POSESSION_26" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Champion" }, -- чемпиона
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_POSESSION_27" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Conqueror" }, -- завоевателя
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_POSESSION_28" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Inspiration" }, -- вдохновения
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_POSESSION_29" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Regret" }, -- сожаления
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_POSESSION_30" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Hand" }, -- Рука
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_POSESSION_31" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Transporter" }, -- транспорта
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_POSESSION_32" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Prize" }, -- приза
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FREIGHTER_NAME_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "MS Star of %PROCNAME%" }, -- Звезда %PROCNAME%
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FREIGHTER_NAME_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "MV Pride of %PROCNAME%" }, -- Гордость %PROCNAME%
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FREIGHTER_NAME_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Wreck of the %PROCNAME%" }, -- Обломки %PROCNAME%
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FREIGHTER_NAME_4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Remains of the SS %PROCNAME%" }, -- Останки %PROCNAME%
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FREIGHTER_NAME_5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "%PROCNAME% Tanker Wreckage" }, -- Останки танкера «%PROCNAME%»
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FREIGHTER_NAME_6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "%PROCNAME% Shuttle Remains" }, -- Останки челнока «%PROCNAME%»
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FREIGHTER_NAME_7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "SV Emperor %PROCNAME%" }, -- Император %PROCNAME%
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FREIGHTER_NAME_8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "MV %PROCNAME% Hauler" }, -- Тягач %PROCNAME%
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FREIGHTER_NAME_9" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "MS %PROCNAME% Spirit" }, -- Дух %PROCNAME%
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FREIGHTER_NAME_13" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Hull of the %PROCNAME% IV" }, -- Остов «%PROCNAME% IV
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FREIGHTER_NAME_14" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Wreck of the %PROCNAME% VI" }, -- Обломки «%PROCNAME% VI
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FREIGHTER_NAME_15" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "MV Bulk of %PROCNAME%" }, -- Корпус «%PROCNAME%
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FREIGHTER_NAME_16" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "MS Invincible %PROCNAME%" }, -- Непобедимый %PROCNAME%
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FREIGHTER_NAME_17" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "SV Glory of %PROCNAME%" }, -- Слава %PROCNAME%
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FREIGHTER_NAME_18" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "The %PROCNAME% Explorer" }, -- Путешественник %PROCNAME%
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FREIGHTER_NAME_20" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Wreck of MS %PROCNAME%'s Vision" }, -- Остов «Видения %PROCNAME%»
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FREIGHTER_NAME_22" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Wreck of the SV %PROCNAME% III" }, -- Обломки «%PROCNAME% III
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FREIGHTER_NAME_23" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Hull of the MV %PROCNAME% IX" }, -- Остов «%PROCNAME% IX
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FREIGHTER_NAME_24" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Remains of the MS %PROCNAME% II" }, -- Останки «%PROCNAME% II
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FREIGHTER_NAME_25" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Remnants of the Sea of %PROCNAME%" }, -- Следы моря %PROCNAME%
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FREIGHTER_NAME_26" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "The %PROCNAME% Hauler" }, -- Грузовоз %PROCNAME%
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FREIGHTER_NAME_27" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Smashed Remains, SS %PROCNAME%" }, -- Разбитые останки %PROCNAME%
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FREIGHTER_NAME_28" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "MV Winds of %PROCNAME%" }, -- Ветра %PROCNAME%
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FREIGHTER_NAME_29" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "MV Graceful %PROCNAME%" }, -- Грациозный %PROCNAME%
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FREIGHTER_NAME_30" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Wreck of the MS %PROCNAME% VII" }, -- Обломки «%PROCNAME% VII
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FREIGHTER_NAME_31" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "MS %PROCNAME% Hammer" }, -- Молот %PROCNAME%
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FREIGHTER_NAME_32" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "SV Butcher of %PROCNAME%" }, -- Мясник %PROCNAME%
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FREIGHTER_NAME_33" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "MS Claw of %PROCNAME%" }, -- Коготь %PROCNAME%
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FREIGHTER_NAME_34" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "MS %PROCNAME%'s Pride" }, -- Гордость %PROCNAME%
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FREIGHTER_NAME_35" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "MS %PROCNAME%'s Glory" }, -- Слава %PROCNAME%
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FREIGHTER_NAME_36" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "MS Sister of %PROCNAME%" }, -- Сестра %PROCNAME%
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FREIGHTER_NAME_37" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "MV Daughter of %PROCNAME%" }, -- Дочь %PROCNAME%
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FREIGHTER_NAME_39" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Hollowed core of the MS %PROCNAME%" }, -- Пустое ядро '%PROCNAME%'
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FREIGHTER_NAME_40" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "SV Yellow %PROCNAME%" }, -- Желтый %PROCNAME%
                            }
                        },
                    }
                },
                { -- LANGUAGE/NMS_LOC9_RUSSIAN.MBIN
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_LOC9_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPD_SHIP_16_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПОГРАНИЧНЫЙ ВЕСТНИК
                                -- BOUNDARY HERALD
                                { "Russian", "BOUNDARY HERALD" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPD_SHIP_16_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Пограничный вестник
                                -- Boundary Herald
                                { "Russian", "Boundary Herald" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SHIP_TGA_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ЗВЕЗДОРОЖДЕННЫЙ ФЕНИКС
                                -- STARBORN PHOENIX
                                { "Russian", "STARBORN PHOENIX" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SHIP_TGA_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Звездорожденный феникс
                                -- Starborn Phoenix
                                { "Russian", "Starborn Phoenix" },
                            }
                        },

                        --#region UI_EXPD_SHIP_17
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPD_SHIP_17_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПРИЗРАК
                                -- THE WRAITH
                                { "Russian", "THE WRAITH" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPD_SHIP_17_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Призрак
                                -- The Wraith
                                { "Russian", "The Wraith" },
                            }
                        },
                        --#endregion

                        --#region UI_EXPED_STAFF_17_NAME
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_STAFF_17_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- СТОЛП ТИТАНА
                                -- PILLAR OF TITAN
                                { "Russian", "PILLAR OF TITAN" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_STAFF_17_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Столп титана
                                -- Pillar of Titan
                                { "Russian", "Pillar of Titan" },
                            }
                        },
                        --#endregion

                        --#region UI_EXPED_STAFF_18
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_STAFF_18_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КОРОНА ВАСИЛИСКА
                                -- BASILISK CROWN
                                { "Russian", "BASILISK CROWN" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_STAFF_18_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Корона василиска
                                -- Basilisk Crown
                                { "Russian", "Basilisk Crown" },
                            }
                        },
                        --#endregion
                    }
                },
            }
        }
    }
}
