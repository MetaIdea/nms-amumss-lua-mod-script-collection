NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]    = "_RuFix_ItemGenPlant.pak",
    ["MOD_AUTHOR"]      = "gh0stwizard",
    ["MOD_DESCRIPTION"] = "Fix names of generated plants.",
    ["NMS_VERSION"]     = "5.72",
    ["EXML_CREATE"]     = "false",
    ["MODIFICATIONS"]   = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                {
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_UPDATE3_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_FORMAT_PLANT_1" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- %PLANTBOX% %PLANTPART1%%PLANTPART2% %PLANTNOUN%
                        --         -- %PLANTBOX% %PLANTPART1%%PLANTPART2% %PLANTNOUN%
                        --         { "Russian", "%PLANTBOX% %PLANTPART1%%PLANTPART2% %PLANTNOUN%" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_FORMAT_PLANT_2" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- %PLANTPART1%%PLANTPART2% %PLANTNOUN%
                        --         -- %PLANTPART1%%PLANTPART2% %PLANTNOUN%
                        --         { "Russian", "%PLANTPART1%%PLANTPART2% %PLANTNOUN%" },
                        --     }
                        -- },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_BOX_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Мутировавш.
                                { "Russian", "Мутировавшие" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_BOX_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Молод.
                                { "Russian", "Молодые" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_BOX_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Клонирован.
                                { "Russian", "Клонированные" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_BOX_4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Декоративн.
                                { "Russian", "Декоративные" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_BOX_5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Пророщен.
                                { "Russian", "Пророщенные" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_BOX_6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сохранен.
                                { "Russian", "Сохраненные" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_BOX_7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Спящ.
                                { "Russian", "Спящие" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_BOX_8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Гибридн. (Hybrid)
                                { "Russian", "Гибридные" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_BOX_9" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Гибридн. (Hybrid)
                                { "Russian", "Гибридные" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_BOX_10" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Мутировавш.
                                { "Russian", "Мутировавшие" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_BOX_11" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Молод.
                                { "Russian", "Молодые" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_BOX_12" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Токсичн.
                                { "Russian", "Токсичные" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_BOX_13" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Потерянн.
                                { "Russian", "Потерянные" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_BOX_14" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Последн.
                                { "Russian", "Последние" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_BOX_15" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Редк.
                                { "Russian", "Редкие" },
                            }
                        },
                        -- префикс
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_1" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Рвано
                        --         { "Russian", "Рвано" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_2" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Губо
                        --         { "Russian", "Губо" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_3" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Пенни
                        --         { "Russian", "Пенни" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_4" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Быко
                        --         { "Russian", "Быко" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_5" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Коне
                        --         { "Russian", "Коне" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_6" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Устри
                        --         { "Russian", "Устри" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_7" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Утко
                        --         { "Russian", "Утко" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_8" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Прудо
                        --         { "Russian", "Прудо" },
                        --     }
                        -- },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_9" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Тонуть (Sink)
                                { "Russian", "Раковино" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_10" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Призра
                                { "Russian", "Призрачно" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_11" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Луна
                                { "Russian", "Луно" },
                            }
                        },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_12" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Стекло
                        --         { "Russian", "Стекло" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_13" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Мано (Tempt)
                        --         { "Russian", "Мано" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_14" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Примано
                        --         { "Russian", "Примано" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_15" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Хлысто
                        --         { "Russian", "Хлысто" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_16" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Глазо
                        --         { "Russian", "Глазо" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_17" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Рото
                        --         { "Russian", "Рото" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_18" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Нерво
                        --         { "Russian", "Нерво" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_19" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Хлопко
                        --         { "Russian", "Хлопко" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_20" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Связо
                        --         { "Russian", "Связо" },
                        --     }
                        -- },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_21" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Ветер
                                { "Russian", "Ветеро" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_22" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Коготь
                                { "Russian", "Когте" },
                            }
                        },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_23" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Грязе
                        --         { "Russian", "Грязе" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_24" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Лаймо
                        --         { "Russian", "Лаймо" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_25" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Низино
                        --         { "Russian", "Низино" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_26" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Западо
                        --         { "Russian", "Западо" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_27" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Мельно
                        --         { "Russian", "Мельно" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_28" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Тихо
                        --         { "Russian", "Тихо" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_29" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Гофро
                        --         { "Russian", "Гофро" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_30" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Игло
                        --         { "Russian", "Игло" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_31" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Пластино
                        --         { "Russian", "Пластино" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_32" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Мрачно
                        --         { "Russian", "Мрачно" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_33" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Темно
                        --         { "Russian", "Темно" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_34" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Трамо (Tram)
                        --         { "Russian", "Трамо" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_35" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Волно
                        --         { "Russian", "Волно" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_36" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Потопо (Flood)
                        --         { "Russian", "Потопо" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_37" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Соло
                        --         { "Russian", "Соло" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_38" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Пепло
                        --         { "Russian", "Пепло" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_39" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Огне
                        --         { "Russian", "Огне" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_40" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Коро
                        --         { "Russian", "Коро" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_41" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Пробко
                        --         { "Russian", "Пробко" },
                        --     }
                        -- },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_42" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Стручковый
                                { "Russian", "Стручково" },
                            }
                        },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_43" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Порто
                        --         { "Russian", "Порто" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_44" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Жуко
                        --         { "Russian", "Жуко" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_45" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Мухо
                        --         { "Russian", "Мухо" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_46" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Термито
                        --         { "Russian", "Термито" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_47" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Глубо
                        --         { "Russian", "Глубо" },
                        --     }
                        -- },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_48" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Трясина
                                { "Russian", "Трясино" },
                            }
                        },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_49" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Каменно
                        --         { "Russian", "Каменно" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_50" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Серо
                        --         { "Russian", "Серо" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_51" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Глино
                        --         { "Russian", "Глино" },
                        --     }
                        -- },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_52" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Змеи
                                { "Russian", "Змее" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_53" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Брего (Coast)
                                { "Russian", "Берего" },
                            }
                        },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_54" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Озеро
                        --         { "Russian", "Озеро" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_55" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Реко
                        --         { "Russian", "Реко" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_56" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Висо
                        --         { "Russian", "Висо" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_57" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Крае
                        --         { "Russian", "Крае" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_58" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Широ
                        --         { "Russian", "Широ" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_59" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Плесне
                        --         { "Russian", "Плесне" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_60" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Млечно
                        --         { "Russian", "Млечно" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_61" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Солнце
                        --         { "Russian", "Солнце" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_62" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Туро
                        --         { "Russian", "Туро" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_63" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Грудо
                        --         { "Russian", "Грудо" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_64" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Куло (Cul)
                        --         { "Russian", "Куло" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_65" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Орехо
                        --         { "Russian", "Орехо" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_66" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Масло
                        --         { "Russian", "Масло" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_67" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Сбиво
                        --         { "Russian", "Сбиво" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_68" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Гнило
                        --         { "Russian", "Гнило" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_69" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Сухо
                        --         { "Russian", "Сухо" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_70" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Пыле
                        --         { "Russian", "Пыле" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_71" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Сабле
                        --         { "Russian", "Сабле" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_72" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Пило
                        --         { "Russian", "Пило" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_73" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Гладко
                        --         { "Russian", "Гладко" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_74" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Каше
                        --         { "Russian", "Каше" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_75" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Губко
                        --         { "Russian", "Губко" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_76" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Зверо
                        --         { "Russian", "Зверо" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_77" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Пряно
                        --         { "Russian", "Пряно" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_78" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Арома (Fume)
                        --         { "Russian", "Арома" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_79" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Дымко
                        --         { "Russian", "Дымко" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_80" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Тумано
                        --         { "Russian", "Тумано" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_81" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Глино
                        --         { "Russian", "Глино" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_82" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Скрипо
                        --         { "Russian", "Скрипо" },
                        --     }
                        -- },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_83" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Крабы
                                { "Russian", "Крабо" },
                            }
                        },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_84" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Яблоко
                        --         { "Russian", "Яблоко" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_85" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Косто
                        --         { "Russian", "Косто" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_86" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Олово
                        --         { "Russian", "Олово" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_87" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Ржаво
                        --         { "Russian", "Ржаво" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_88" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Верно (Trust)
                        --         { "Russian", "Верно" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_89" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Мускусо
                        --         { "Russian", "Мускусо" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_90" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Ложно
                        --         { "Russian", "Ложно" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_91" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Фальше
                        --         { "Russian", "Фальше" },
                        --     }
                        -- },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_92" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Осень
                                { "Russian", "Осенне" },
                            }
                        },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_93" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Небо
                        --         { "Russian", "Небо" },
                        --     }
                        -- },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_94" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Потерян.
                                { "Russian", "Потеряно" },
                            }
                        },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_95" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Хвало
                        --         { "Russian", "Хвало" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_96" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Главно
                        --         { "Russian", "Главно" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_97" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Коже
                        --         { "Russian", "Коже" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_98" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Воро
                        --         { "Russian", "Воро" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_99" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Грано
                        --         { "Russian", "Грано" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_100" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Ржано
                        --         { "Russian", "Ржано" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_101" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Пшенично
                        --         { "Russian", "Пшенично" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_102" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Бухто
                        --         { "Russian", "Бухто" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_103" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Судо
                        --         { "Russian", "Судо" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_104" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Кукурузо
                        --         { "Russian", "Кукурузо" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_105" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Скверно
                        --         { "Russian", "Скверно" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_106" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Шляпко
                        --         { "Russian", "Шляпко" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_107" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Крано
                        --         { "Russian", "Крано" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_108" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Покрово
                        --         { "Russian", "Покрово" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_109" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Мешко
                        --         { "Russian", "Мешко" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_110" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Песко
                        --         { "Russian", "Песко" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_111" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Олене
                        --         { "Russian", "Олене" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_112" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Железо
                        --         { "Russian", "Железо" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_113" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Мякотно
                        --         { "Russian", "Мякотно" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_114" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Шишко
                        --         { "Russian", "Шишко" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_115" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Вороно
                        --         { "Russian", "Вороно" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_116" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Росо
                        --         { "Russian", "Росо" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_117" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Жаро
                        --         { "Russian", "Жаро" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_118" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Арома (Fume)
                        --         { "Russian", "Арома" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_119" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Токо
                        --         { "Russian", "Токо" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_120" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Кишко
                        --         { "Russian", "Кишко" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_121" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Падубо (Holly)
                        --         { "Russian", "Падубо" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_122" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Зудо
                        --         { "Russian", "Зудо" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_123" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Крако
                        --         { "Russian", "Крако" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_124" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Круже
                        --         { "Russian", "Круже" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_125" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Блохо
                        --         { "Russian", "Блохо" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_126" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Любо
                        --         { "Russian", "Любо" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_127" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Одно
                        --         { "Russian", "Одно" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_128" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Вошко
                        --         { "Russian", "Вошко" },
                        --     }
                        -- },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_129" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- мечты (Dream)
                                { "Russian", "Мечто" },
                            }
                        },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_130" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Свино
                        --         { "Russian", "Свино" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_131" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Зубо
                        --         { "Russian", "Зубо" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_132" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Лягушко
                        --         { "Russian", "Лягушко" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_133" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Жабо
                        --         { "Russian", "Жабо" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_134" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Капле
                        --         { "Russian", "Капле" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART1_135" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Медо
                        --         { "Russian", "Медо" },
                        --     }
                        -- },
                        -- суффиксы
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART2_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- сор
                                { "Russian", "сорные" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART2_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- сусло
                                { "Russian", "сусловые" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART2_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- лист
                                { "Russian", "листевые" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART2_4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- бодяк (thistle)
                                { "Russian", "чертополоховые" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART2_5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- трав
                                { "Russian", "травянные" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART2_6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- петрушка (parsley)
                                { "Russian", "петрушковые" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART2_7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- кисть (brush)
                                { "Russian", "кистевые" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART2_8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- цвет
                                { "Russian", "цветковые" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART2_9" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- мох
                                { "Russian", "моховые" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART2_10" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- корень
                                { "Russian", "корневые" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART2_11" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- роза
                                { "Russian", "розовые" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART2_12" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ягода
                                { "Russian", "ягодные" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART2_13" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- дерево
                                { "Russian", "деревянные" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART2_14" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- бумага
                                { "Russian", "бумажные" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART2_15" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- кресс (cress)
                                { "Russian", "крессовые" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART2_16" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- шип
                                { "Russian", "шиповые" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART2_17" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- вереск
                                { "Russian", "вересковые" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART2_18" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- древ
                                { "Russian", "древесные" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART2_19" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- далис (dalis)
                                { "Russian", "далисовые" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART2_20" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ног
                                { "Russian", "ногие" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART2_21" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- желчь
                                { "Russian", "желчные" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART2_22" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- папоротник
                                { "Russian", "папоротниковые" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART2_23" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- лен (flax)
                                { "Russian", "льяные" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART2_24" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- фрукт
                                { "Russian", "фруктовые" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART2_25" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- бур (bore)
                                { "Russian", "буровые" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART2_26" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- злак
                                { "Russian", "злаковые" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART2_27" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- бег
                                { "Russian", "беговые" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART2_28" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- пальм
                                { "Russian", "пальмовые" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART2_29" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- лоза
                                { "Russian", "лозовые" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART2_30" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- сет (foil)
                                { "Russian", "сетовые" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART2_31" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- тень
                                { "Russian", "теневые" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART2_32" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- дуб
                                { "Russian", "дубовые" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART2_33" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- березник
                                { "Russian", "березняковые" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART2_34" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- бук
                                { "Russian", "буковые" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART2_35" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- стар (-elder)
                                { "Russian", "старовые" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART2_36" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- куст
                                { "Russian", "кустовые" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART2_37" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- кол
                                { "Russian", "коловые" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART2_38" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- рожь
                                { "Russian", "ржаные" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART2_39" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- пад (drop)
                                { "Russian", "падовые" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART2_40" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- слива (plum)
                                { "Russian", "сливовые" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART2_41" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- колодезник
                                { "Russian", "колодезниковые" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART2_42" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- луч
                                { "Russian", "лучевые" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART2_43" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- лилия
                                { "Russian", "лилейные" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART2_44" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- хмель
                                { "Russian", "хмельные" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART2_45" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- плеть
                                { "Russian", "плетевые" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART2_46" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- гибельник
                                { "Russian", "гибельниковые" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_PART2_47" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- рос
                                { "Russian", "росянные" },
                            }
                        },
                        -- сущзствительные
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_NOUN_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Семена
                                { "Russian", "семена" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_NOUN_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Побеги
                                { "Russian", "побеги" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_NOUN_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Плоды
                                { "Russian", "плоды" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_NOUN_4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Ягоды
                                { "Russian", "ягоды" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_NOUN_5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Ростки
                                { "Russian", "ростки" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_NOUN_6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Лепестки
                                { "Russian", "лепестки" },
                            }
                        },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_NOUN_7" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- образцы (Samples)
                        --         { "Russian", "образцы" },
                        --     }
                        -- },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_NOUN_8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Орехи
                                { "Russian", "орехи" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_NOUN_9" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обрезки (Clippings)
                                { "Russian", "наросты" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_NOUN_10" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Клубни
                                { "Russian", "клубни" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_NOUN_11" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сосуды (Bulbs)
                                { "Russian", "луковицы" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_NOUN_12" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Частицы пыльцы (Pollen)
                                { "Russian", "частицы пыльцы" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_NOUN_13" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обрезки (Clippings)
                                { "Russian", "наросты" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_NOUN_14" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Клубни
                                { "Russian", "клубни" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_NOUN_15" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сосуды (Bulbs)
                                { "Russian", "луковицы" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_NOUN_16" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Частицы пыльцы (Pollen)
                                { "Russian", "частицы пыльцы" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_NOUN_17" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Семена
                                { "Russian", "семена" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_NOUN_18" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Побеги
                                { "Russian", "побеги" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_PLANT_NOUN_19" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Культура (Cultivar)
                                { "Russian", "сорта" },
                            }
                        },
                    }
                }
            }
        }
    }
}
