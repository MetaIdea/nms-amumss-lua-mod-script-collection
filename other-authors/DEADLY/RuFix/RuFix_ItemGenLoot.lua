NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]    = "_RuFix_ItemGenLoot.pak",
    ["MOD_AUTHOR"]      = "gh0stwizard",
    ["MOD_DESCRIPTION"] = "Fix names of generated loot.",
    ["NMS_VERSION"]     = "5.72",
    ["EXML_CREATE"]     = "false",
    ["MODIFICATIONS"]   = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                {
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_UPDATE3_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_FORMAT_LOOT_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %LOOTADJ%: %LOOTNOUN% — %LOOTCONT%
                                -- %LOOTCONT% of %LOOTADJ% %LOOTNOUN%
                                { "Russian", "%LOOTADJ% %LOOTNOUN% %LOOTCONT%" },
                            }
                        },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_FORMAT_LOOT_2" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- %LOOTADJ% %LOOTNOUN%
                        --         -- %LOOTADJ% %LOOTNOUN%
                        --         { "Russian", "%LOOTADJ% %LOOTNOUN%" },
                        --     }
                        -- },
                        -- прилагательные
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_LOOT_ADJ_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Блестящий
                                { "Russian", "Блестящие" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_LOOT_ADJ_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сверкающий (Glowing)
                                { "Russian", "Светящиеся" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_LOOT_ADJ_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Жужжащий
                                { "Russian", "Жужжащие" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_LOOT_ADJ_4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Яркий
                                { "Russian", "Яркие" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_LOOT_ADJ_5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Редкая
                                { "Russian", "Редкие" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_LOOT_ADJ_6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Желанный
                                { "Russian", "Желанные" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_LOOT_ADJ_7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Древнее
                                { "Russian", "Древние" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_LOOT_ADJ_8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Отполирован.
                                { "Russian", "Отполированные" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_LOOT_ADJ_9" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Потускневший
                                { "Russian", "Потускневшие" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_LOOT_ADJ_10" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Свечения (Gleaming)
                                { "Russian", "Сверкающие" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_LOOT_ADJ_11" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Цен.
                                { "Russian", "Ценные" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_LOOT_ADJ_12" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Прекрасный (Splendid)
                                { "Russian", "Великолепные" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_LOOT_ADJ_13" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Забытый
                                { "Russian", "Забытые" },
                            }
                        },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_LOOT_ADJ_14" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Украденные
                        --         { "Russian", "Украденные" },
                        --     }
                        -- },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_LOOT_ADJ_15" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Заброшен.
                                { "Russian", "Заброшенные" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_LOOT_ADJ_16" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Проклятый
                                { "Russian", "Проклятые" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_LOOT_ADJ_17" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вибрирующий
                                { "Russian", "Вибрирующие" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_LOOT_ADJ_18" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Радиоактивен (Radioactive)
                                { "Russian", "Радиоактивные" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_LOOT_ADJ_19" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Драгоценный
                                { "Russian", "Драгоценные" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_LOOT_ADJ_20" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Странность (Strange)
                                { "Russian", "Странные" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_LOOT_ADJ_21" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Таинствен.
                                { "Russian", "Таинственные" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_LOOT_ADJ_22" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Аномальн.
                                { "Russian", "Аномальные" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_LOOT_ADJ_23" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Исключительный (Exceptional)
                                { "Russian", "Исключительные" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_LOOT_ADJ_24" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Геки
                                { "Russian", "Гекские" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_LOOT_ADJ_25" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вай’кины
                                { "Russian", "Вай’кинские" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_LOOT_ADJ_26" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Корваксы
                                { "Russian", "Корвакские" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_LOOT_ADJ_27" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Магнитный
                                { "Russian", "Магнитные" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_LOOT_ADJ_28" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Блестящ. (Sparkling)
                                { "Russian", "Искрящиеся" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_LOOT_ADJ_29" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Электрический (Electrified)
                                { "Russian", "Наэлектризованные" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_LOOT_ADJ_30" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Роскошный
                                { "Russian", "Роскошные" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_LOOT_ADJ_31" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Изящный (Ornate)
                                { "Russian", "Витиеватые" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_LOOT_ADJ_32" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Проводит ток (Conductive)
                                { "Russian", "Проводящие" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_LOOT_ADJ_33" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Синтетический
                                { "Russian", "Синтетические" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_LOOT_ADJ_34" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Приятный
                                { "Russian", "Приятные" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_LOOT_ADJ_35" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Неотразимый (Irresistible)
                                { "Russian", "Неотразимые" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_LOOT_ADJ_36" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Разноцветный
                                { "Russian", "Разноцветные" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_LOOT_ADJ_37" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Легендарный
                                { "Russian", "Легендарные" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_LOOT_ADJ_38" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вечности (Timeless)
                                { "Russian", "Вечные" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_LOOT_ADJ_39" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Гипнотический
                                { "Russian", "Гипнотические" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_LOOT_ADJ_40" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сохраненный (Preserved)
                                { "Russian", "Сохраненные" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_LOOT_ADJ_41" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сияющ. (Starry)
                                { "Russian", "Звездные" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_LOOT_ADJ_42" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Небесный (Celestial)
                                { "Russian", "Небесные" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_LOOT_ADJ_43" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Прозрачный
                                { "Russian", "Прозрачные" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_LOOT_ADJ_44" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Зараженная
                                { "Russian", "Заражённые" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_LOOT_ADJ_45" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Музыкальный
                                { "Russian", "Музыкальные" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_LOOT_ADJ_46" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добытый нечестным путем (Ill-gotten)
                                { "Russian", "Спёртые" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_LOOT_ADJ_47" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Наука (Scientific)
                                { "Russian", "Научные" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_LOOT_ADJ_48" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Принадлежащее предкам (Ancestral)
                                { "Russian", "Родовые" },
                            }
                        },
                        -- существительные
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_LOOT_NOUN_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Лунные камни
                                { "Russian", "лунные камни" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_LOOT_NOUN_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сокровища
                                { "Russian", "сокровища" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_LOOT_NOUN_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Самоцветы
                                { "Russian", "самоцветы" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_LOOT_NOUN_4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Побрякушки
                                { "Russian", "побрякушки" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_LOOT_NOUN_5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Слитки
                                { "Russian", "слитки" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_LOOT_NOUN_6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Драгоценные камни
                                { "Russian", "драгоценные камни" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_LOOT_NOUN_7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Черепа
                                { "Russian", "черепа" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_LOOT_NOUN_8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Камни
                                { "Russian", "камни" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_LOOT_NOUN_9" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добыча (Loot)
                                { "Russian", "вещи" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_LOOT_NOUN_10" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Драгоценности
                                { "Russian", "драгоценности" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_LOOT_NOUN_11" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Богатства
                                { "Russian", "богатства" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_LOOT_NOUN_12" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Жемчужины
                                { "Russian", "жемчужины" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_LOOT_NOUN_13" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сферы
                                { "Russian", "сферы" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_LOOT_NOUN_14" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Бусины
                                { "Russian", "бусины" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_LOOT_NOUN_15" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Украшения
                                { "Russian", "украшения" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_LOOT_NOUN_16" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Безделушки
                                { "Russian", "безделушки" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_LOOT_NOUN_17" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Предметы искусства
                                { "Russian", "предметы искусства" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_LOOT_NOUN_18" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Статуэтки
                                { "Russian", "статуэтки" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_LOOT_NOUN_19" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Шкуры
                                { "Russian", "шкуры" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_LOOT_NOUN_20" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Одежды
                                { "Russian", "одежды" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_LOOT_NOUN_21" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Короны
                                { "Russian", "короны" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_LOOT_NOUN_22" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Металлические украшения
                                { "Russian", "металлические украшения" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_LOOT_NOUN_23" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Реликвии
                                { "Russian", "реликвии" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_LOOT_NOUN_24" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Мечи
                                { "Russian", "мечи" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_LOOT_NOUN_25" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Алмазы
                                { "Russian", "алмазы" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_LOOT_NOUN_26" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Яйца
                                { "Russian", "яйца" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_LOOT_NOUN_27" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Кольца
                                { "Russian", "кольца" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_LOOT_NOUN_28" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Браслеты
                                { "Russian", "браслеты" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_LOOT_NOUN_29" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Солнечные камни
                                { "Russian", "солнечные камни" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_LOOT_NOUN_30" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Монеты
                                { "Russian", "монеты" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_LOOT_NOUN_31" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Орудия
                                { "Russian", "орудия" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_LOOT_NOUN_32" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Кубки
                                { "Russian", "кубки" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_LOOT_NOUN_33" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Трофеи
                                { "Russian", "трофеи" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_LOOT_NOUN_34" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Зубы
                                { "Russian", "зубы" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_LOOT_NOUN_35" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Шелка
                                { "Russian", "шелка" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_LOOT_NOUN_36" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Ткани
                                { "Russian", "ткани" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_LOOT_NOUN_37" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Зелья
                                { "Russian", "зелья" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_LOOT_NOUN_38" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Любопытные (Curios)
                                { "Russian", "диковинки" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_LOOT_NOUN_39" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Антикварные (Antiques)
                                { "Russian", "антиквариаты" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_LOOT_NOUN_40" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Материал
                                { "Russian", "материалы" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_LOOT_NOUN_41" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Остатки (Remains)
                                { "Russian", "остатки" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_LOOT_NOUN_42" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Костей
                                { "Russian", "кости" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_LOOT_NOUN_43" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Броня
                                { "Russian", "доспехи" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_LOOT_NOUN_44" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Руны
                                { "Russian", "руны" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_LOOT_NOUN_45" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вино
                                { "Russian", "вина" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_LOOT_NOUN_46" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сосуды духа
                                { "Russian", "сосуды духа" },
                            }
                        },
                        -- контейнеры
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_LOOT_CONT_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Ящик (Crate)
                                { "Russian", "в ящике" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_LOOT_CONT_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Коробка (Box)
                                { "Russian", "в коробке" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_LOOT_CONT_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Хлам (Jumble)
                                { "Russian", "вперемешку" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_LOOT_CONT_4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Саркофаг (Sarcophagus)
                                { "Russian", "в саркофаге" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_LOOT_CONT_5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сундук (Chest)
                                { "Russian", "в сундуке" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_LOOT_CONT_6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Бочонок (Barrel)
                                { "Russian", "в бочонке" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_LOOT_CONT_7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Кейс (Case)
                                { "Russian", "в кейсе" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_LOOT_CONT_8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сверток (Package)
                                { "Russian", "в свертке" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_LOOT_CONT_9" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Бушель (Bushel)
                                { "Russian", "в бушеле" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_LOOT_CONT_10" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Блок (Trunk)
                                { "Russian", "в чемодане" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_LOOT_CONT_11" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Комплект (Bundle)
                                { "Russian", "— комплект" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_LOOT_CONT_12" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Ассортимент (Assortment)
                                { "Russian", "— ассортимент" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_LOOT_CONT_13" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поддон (Pallet)
                                { "Russian", "на поддоне" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_LOOT_CONT_14" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Ящик (Crate)
                                { "Russian", "в ящике" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_LOOT_CONT_15" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сундук (Chest)
                                { "Russian", "в сундуке" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_LOOT_CONT_16" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Блок (Trunk)
                                { "Russian", "в чемодане" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_LOOT_CONT_17" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Кейс (Case)
                                { "Russian", "в кейсе" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_LOOT_CONT_18" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Пакет (Packet)
                                { "Russian", "в пакете" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_LOOT_CONT_19" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Набор (Collection)
                                { "Russian", "— коллекция" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_LOOT_CONT_20" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Склад (Trove)
                                { "Russian", "в шкатулке" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_LOOT_CONT_21" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Навал (Pile)
                                { "Russian", "в куче" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_LOOT_CONT_22" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сверток (Parcel)
                                { "Russian", "в упаковке" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_LOOT_CONT_23" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Завал (Hoard)
                                { "Russian", "в стопке" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_LOOT_CONT_24" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Ящик (Crate)
                                { "Russian", "в ящике" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_LOOT_CONT_25" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Коробка (Box)
                                { "Russian", "в коробке" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_LOOT_CONT_26" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Ящик (Crate)
                                { "Russian", "в ящике" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_LOOT_CONT_27" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сундук (Chest)
                                { "Russian", "в сундуке" },
                            }
                        },
                    }
                }
            }
        }
    }
}
