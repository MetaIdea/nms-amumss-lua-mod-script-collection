NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]    = "_RuFix_ItemGenBio.pak",
    ["MOD_AUTHOR"]      = "gh0stwizard",
    ["MOD_DESCRIPTION"] = "Fix names of generated bio.",
    ["NMS_VERSION"]     = "5.72",
    ["EXML_CREATE"]     = "false",
    ["MODIFICATIONS"]   = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                {
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_UPDATE3_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        -- Невидимые Цветки в Пакете
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_FORMAT_BIO_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %BIOADJ%: %BIONOUN% — %BIOCONT%
                                -- %BIOCONT% of %BIOADJ% %BIONOUN%
                                { "Russian", "%BIOADJ% %BIONOUN% в %BIOCONT%" },
                            }
                        },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_FORMAT_BIO_2" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- %BIOADJ% %BIONOUN%
                        --         -- %BIOADJ% %BIONOUN%
                        --         { "Russian", "%BIOADJ% %BIONOUN%" },
                        --     }
                        -- },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BIO_CONT_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сосуд
                                { "Russian", "сосуде" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BIO_CONT_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Коробка
                                { "Russian", "коробке" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BIO_CONT_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Пакет
                                { "Russian", "пакете" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BIO_CONT_4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Комплект (Bundle)
                                { "Russian", "пучке" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BIO_CONT_5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Набор
                                { "Russian", "наборе" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BIO_CONT_6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Коробка
                                { "Russian", "коробке" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BIO_CONT_7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Ряд (Handful)
                                { "Russian", "горстке" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BIO_CONT_8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Блок (Trunk)
                                { "Russian", "чемодане" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BIO_CONT_9" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сверток
                                { "Russian", "свертке" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BIO_CONT_10" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Блок (Trunk)
                                { "Russian", "чемодане" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BIO_CONT_11" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сверток
                                { "Russian", "свертке" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BIO_CONT_12" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сосуд
                                { "Russian", "сосуде" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BIO_CONT_13" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Коробка
                                { "Russian", "коробке" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BIO_CONT_14" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Пакет
                                { "Russian", "пакете" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BIO_CONT_15" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Комплект (Bundle)
                                { "Russian", "пучке" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BIO_CONT_16" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Коробка
                                { "Russian", "коробке" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BIO_CONT_17" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Картонный ящик
                                { "Russian", "картонном ящике" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BIO_CONT_18" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Мешочек
                                { "Russian", "мешочке" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BIO_CONT_19" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Комплект (Bundle)
                                { "Russian", "пучке" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BIO_CONT_20" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Коробка
                                { "Russian", "коробке" },
                            }
                        },
                        --
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BIO_ADJ_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Жужжащий
                                { "Russian", "Жужжащие" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BIO_ADJ_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сохраненный
                                { "Russian", "Сохраненные" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BIO_ADJ_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Древнее
                                { "Russian", "Древние" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BIO_ADJ_4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сверкающий
                                { "Russian", "Сверкающие" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BIO_ADJ_5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Дергающийся
                                { "Russian", "Дергающиеся" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BIO_ADJ_6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Ядовитая
                                { "Russian", "Ядовитые" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BIO_ADJ_7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Питательный
                                { "Russian", "Питательные" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BIO_ADJ_8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Грязный
                                { "Russian", "Грязные" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BIO_ADJ_9" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Прекрасная (Beautiful)
                                { "Russian", "Красивые" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BIO_ADJ_10" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Загустевший
                                { "Russian", "Загустевшие" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BIO_ADJ_11" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Цен.
                                { "Russian", "Ценные" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BIO_ADJ_12" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Редкая
                                { "Russian", "Редкие" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BIO_ADJ_13" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Токсичная
                                { "Russian", "Токсичные" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BIO_ADJ_14" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Шерстистый
                                { "Russian", "Шерстистые" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BIO_ADJ_15" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Стеклянный
                                { "Russian", "Стеклянные" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BIO_ADJ_16" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Жгучее
                                { "Russian", "Жгучие" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BIO_ADJ_17" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Замерзший
                                { "Russian", "Замёрзшие" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BIO_ADJ_18" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сухая
                                { "Russian", "Сухие" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BIO_ADJ_19" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Пыльный
                                { "Russian", "Пыльные" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BIO_ADJ_20" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Синтетический
                                { "Russian", "Синтетические" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BIO_ADJ_21" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Искусственный
                                { "Russian", "Искусственные" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BIO_ADJ_22" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Хрупкий
                                { "Russian", "Хрупкие" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BIO_ADJ_23" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Невидим.
                                { "Russian", "Невидимые" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BIO_ADJ_24" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Хрустальный
                                { "Russian", "Хрустальные" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BIO_ADJ_25" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Нейротоксичный
                                { "Russian", "Нейротоксичные" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BIO_ADJ_26" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Маслянистый
                                { "Russian", "Маслянистые" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BIO_ADJ_27" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Утончен.
                                { "Russian", "Утонченные" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BIO_ADJ_28" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Целебный
                                { "Russian", "Целебные" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BIO_ADJ_29" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Галлюциногенный
                                { "Russian", "Галлюциногенные" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BIO_ADJ_30" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Съедобный
                                { "Russian", "Съедобные" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BIO_ADJ_31" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Щелочной
                                { "Russian", "Щелочные" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BIO_ADJ_32" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Спящий
                                { "Russian", "Спящие" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BIO_ADJ_33" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вымерший
                                { "Russian", "Вымершие" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BIO_ADJ_34" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Удивительный
                                { "Russian", "Удивительные" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BIO_ADJ_35" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Невероятный
                                { "Russian", "Невероятные" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BIO_ADJ_36" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Хорошо изученный
                                { "Russian", "Хорошо изученные" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BIO_ADJ_37" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Липкий
                                { "Russian", "Липкие" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BIO_ADJ_38" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Гнилой
                                { "Russian", "Гнилые" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BIO_ADJ_39" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Радиоактивен
                                { "Russian", "Радиоактивные" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BIO_ADJ_40" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Пульсирующий
                                { "Russian", "Пульсирующие" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BIO_ADJ_41" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Кровавый
                                { "Russian", "Кровавые" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BIO_ADJ_42" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Не открыто (Undiscovered)
                                { "Russian", "Неизвестные" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BIO_ADJ_43" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сладкий на запах (Sweet-Smelling)
                                { "Russian", "Сладко пахнущие" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BIO_ADJ_44" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Клонируемый
                                { "Russian", "Клонируемые" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BIO_ADJ_45" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Гудящий
                                { "Russian", "Гудящие" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BIO_ADJ_46" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Склизкий
                                { "Russian", "Склизкие" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BIO_ADJ_47" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Извивающийся
                                { "Russian", "Извивающиеся" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BIO_ADJ_48" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Гипнотический
                                { "Russian", "Гипнотические" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BIO_ADJ_49" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Инопланетный
                                { "Russian", "Инопланетные" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BIO_ADJ_50" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Развитый
                                { "Russian", "Развитые" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BIO_ADJ_51" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Небесный
                                { "Russian", "Небесные" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BIO_ADJ_52" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Молодое
                                { "Russian", "Молодые" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BIO_ADJ_53" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Драгоценный
                                { "Russian", "Драгоценные" },
                            }
                        },
                        --
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BIO_NOUN_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Остатки (Remains)
                                { "Russian", "остатки" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BIO_NOUN_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- костей (Bones)
                                { "Russian", "кости" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BIO_NOUN_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Палки (Sticks)
                                { "Russian", "палочки" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BIO_NOUN_4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Семена
                                { "Russian", "семена" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BIO_NOUN_5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Стручки
                                { "Russian", "стручки" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BIO_NOUN_6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Побеги
                                { "Russian", "побеги" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BIO_NOUN_7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сеянцы (Seedlings)
                                { "Russian", "саженцы" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BIO_NOUN_8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Саженцы (Sproutlings)
                                { "Russian", "росточки" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BIO_NOUN_9" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Плоды
                                { "Russian", "плоды" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BIO_NOUN_10" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Ягоды
                                { "Russian", "ягоды" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BIO_NOUN_11" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Ростки (Sprouts)
                                { "Russian", "ростки" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BIO_NOUN_12" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- образцы (Samples)
                                { "Russian", "образцы" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BIO_NOUN_13" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Черви
                                { "Russian", "черви" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BIO_NOUN_14" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Плесне (Mould)
                                { "Russian", "плесневые грибы" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BIO_NOUN_15" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Лишайники (Lichens)
                                { "Russian", "лишайники" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BIO_NOUN_16" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Кусочки мха (Moss)
                                { "Russian", "куски мха" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BIO_NOUN_17" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обрезки (Clippings)
                                { "Russian", "наросты" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BIO_NOUN_18" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Насекомые (Insects)
                                { "Russian", "насекомые" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BIO_NOUN_19" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Цветы
                                { "Russian", "цветы" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BIO_NOUN_20" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Лепестки
                                { "Russian", "лепестки" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BIO_NOUN_21" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Бутоны
                                { "Russian", "бутоны" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BIO_NOUN_22" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Хворостинки (Twigs)
                                { "Russian", "ветки" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BIO_NOUN_23" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Отходы (Residue)
                                { "Russian", "отходы" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BIO_NOUN_24" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Черепа (Skulls)
                                { "Russian", "черепа" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BIO_NOUN_25" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Раковины
                                { "Russian", "раковины" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BIO_NOUN_26" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Травы
                                { "Russian", "травы" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BIO_NOUN_27" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Цветки
                                { "Russian", "цветки" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BIO_NOUN_28" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Частицы пыльцы (Pollen)
                                { "Russian", "частицы пыльцы" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BIO_NOUN_29" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Частицы органической материи (Organic Matter)
                                { "Russian", "органические вещества" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BIO_NOUN_30" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Орехи
                                { "Russian", "орехи" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BIO_NOUN_31" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сосуды (Bulbs)
                                { "Russian", "сосуды" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BIO_NOUN_32" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Клубни
                                { "Russian", "клубни" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BIO_NOUN_33" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Ростки чертополоха (Thistles)
                                { "Russian", "ростки чертополоха" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BIO_NOUN_34" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сорняки
                                { "Russian", "сорняки" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BIO_NOUN_35" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Листья
                                { "Russian", "листья" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BIO_NOUN_36" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Яйца
                                { "Russian", "яйца" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BIO_NOUN_37" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Личинки
                                { "Russian", "личинки" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BIO_NOUN_38" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Корни
                                { "Russian", "корни" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BIO_NOUN_39" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Коро (Bark)
                                { "Russian", "куски коры" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BIO_NOUN_40" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Бобы
                                { "Russian", "бобы" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BIO_NOUN_41" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Косточки (Kernels)
                                { "Russian", "семечки" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BIO_NOUN_42" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Пальцы (Fingers)
                                { "Russian", "пальцы" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BIO_NOUN_43" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Жуки (Bugs)
                                { "Russian", "жуки" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BIO_NOUN_44" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Жучки (Beetles)
                                { "Russian", "пчелы" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BIO_NOUN_45" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Гусеницы (Grubs)
                                { "Russian", "гусеницы" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BIO_NOUN_46" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Гранулы (Nodules)
                                { "Russian", "гранулы" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BIO_NOUN_47" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Куски почвы (Soil)
                                { "Russian", "куски почвы" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BIO_NOUN_48" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сгустки слизи (Ooze)
                                { "Russian", "сгустки слизи" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BIO_NOUN_49" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Зерна (Grain)
                                { "Russian", "зерна" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BIO_NOUN_50" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Споры
                                { "Russian", "споры" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BIO_NOUN_51" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Мотыльки (Moths)
                                { "Russian", "мотыльки" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BIO_NOUN_52" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Мальки (Hatchlings)
                                { "Russian", "мальки" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BIO_NOUN_53" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Орхидеи
                                { "Russian", "орхидеи" },
                            }
                        },
                    }
                }
            }
        }
    }
}
