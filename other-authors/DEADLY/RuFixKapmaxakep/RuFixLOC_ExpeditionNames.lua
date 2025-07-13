NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]    = "_RuFixLOC_ExpeditionNames.pak",
    ["MOD_AUTHOR"]      = "gh0stwizard",
    ["MOD_DESCRIPTION"] = "Fixes fleet expedition names",
    ["NMS_VERSION"]     = "5.72",
    ["EXML_CREATE"]     = "false",
    ["MODIFICATIONS"]   = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                { -- LANGUAGE/NMS_LOC4_RUSSIAN.MBIN
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_LOC4_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        --#region Форматы названий миссий
                        -- === ФОРМАТ №1 ===
                        -- Новая логика: <сущ.> <на что/за что/что>
                        -- Примеры:
                        --    <Задание на> <прибыльные> <заказы>
                        --    <Миссия>: <прибыльные> <заказы>
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_EXPED_TRADING_NAME_1" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- %JOURNEY% %ADJ% %NOUN%
                        --         -- %JOURNEY% %ADJ% %NOUN%
                        --         { "Russian", "%JOURNEY% %ADJ% %NOUN%" },
                        --     }
                        -- },
                        -- === ФОРМАТ №2 ===
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_EXPED_COMBAT_NAME_1" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- %BATTLE% %PROCNAME%
                        --         -- %BATTLE% %PROCNAME%
                        --         { "Russian", "%BATTLE% %PROCNAME%" },
                        --     }
                        -- },
                        -- === ФОРМАТ №3 ===
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_EXPED_GENERAL_NAME_1" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- %PROCNAME% — %MISSION%
                        --         -- %PROCNAME%'s %MISSION%
                        --         { "Russian", "%PROCNAME% — %MISSION%" },
                        --     }
                        -- },
                        -- === ФОРМАТ №4 ===
                        -- Выражения "к <месту>" и "в <место>" не сочетаются.
                        -- Примеры с ошибками:
                        --   <Путешествие> к <звездам> -- %JOURNEY1% к %PLACE%
                        --   <Опасность> в <звездам>   -- %JOURNEY2% в %PLACE%
                        -- Основная проблема в том, что больше половины мест содержат два слова (прил. + сущ.).
                        -- Т.о. нужно просклонять два слова, что при таком форматировании нереально исправить.
                        -- Вторая проблема: <место> может быть как во множественном числе, так и в единственном.
                        -- Третья проблема: <JOURNEY2> тоже может быть во мн. и ед. числах.
                        -- Итог: перед нами задача уровня межгалактической олимпиады по русскому языку!
                        --
                        -- Решение: приводим все к виду <JOURNEY к PLACE>
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_EXPED_EXPLORE_NAME_1" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- %JOURNEY1% к %PLACE%
                        --         -- %JOURNEY1% into %PLACE%
                        --         { "Russian", "%JOURNEY1% к %PLACE%" },
                        --     }
                        -- },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_EXPED_EXPLORE_NAME_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %JOURNEY2% в %PLACE%
                                -- %JOURNEY2% in %PLACE%
                                { "Russian", "%JOURNEY2% к %PLACE%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_EXPED_EXPLORE_NAME_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %JOURNEY2% в %PLACE%
                                -- %JOURNEY2% in %PLACE%
                                { "Russian", "%JOURNEY2% к %PLACE%" },
                            }
                        },
                        -- === ФОРМАТ №5 ===
                        -- TODO
                        -- Уточнить: используется ли %VERB% при генерации имени фригата, или это из генерации имен звездолетов.
                        -- FRIGATE_NAME_FORMAT_3: <%CODE%-%NUMBER% The %PROCNAME% %VERB%> | <%CODE%-%NUMBER% %PROCNAME% %VERB%>
                        --
                        -- Переделываем на: <экспедиция> (чего?) <добычи> <ресурсов>
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_EXPED_MINING_NAME_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %RESOURCE% %VERB% %JOURNEY%
                                -- %RESOURCE% %VERB% %JOURNEY%
                                { "Russian", "%JOURNEY% %VERB% %RESOURCE%" },
                            }
                        },
                        --#endregion

                        --#region ФОРМАТ №1: <%JOURNEY% %ADJ% %NOUN%> (T_JOURNEY)

                        --#region T_JOURNEY
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_T_JOURNEY_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Миссия за (A Mission for)
                                { "Russian", "Миссия:" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_T_JOURNEY_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Миссия для (A Mission of)
                                { "Russian", "Цель —" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_T_JOURNEY_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поиски (Searching for)
                                { "Russian", "Ища" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_T_JOURNEY_4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- В поисках (In Search of)
                                { "Russian", "Поиск —" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_T_JOURNEY_5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Ищущие (Seeking)
                                { "Russian", "Ищущие" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_T_JOURNEY_6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Охота на (The Hunt for)
                                { "Russian", "Охота на" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_T_JOURNEY_7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Путь к (Cruising for)
                                { "Russian", "Рейс:" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_T_JOURNEY_8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Проведение (Conducting)
                                { "Russian", "Организуя" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_T_JOURNEY_9" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Надежда на (Hoping for)
                                { "Russian", "Надежда на" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_T_JOURNEY_10" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- В поисках (To Find)
                                { "Russian", "Найти" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_T_JOURNEY_11" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Защитить (To Secure)
                                { "Russian", "Защитить" },
                            }
                        },
                        --#endregion

                        --#region ADJ
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_T_ADJ_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Тактичные (Tactful)
                                { "Russian", "тактичные" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_T_ADJ_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Мирные (Peaceful)
                                { "Russian", "мирные" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_T_ADJ_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Прибыльные (Profitable)
                                { "Russian", "прибыльные" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_T_ADJ_4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Плодотворные (Fruitful)
                                { "Russian", "плодотворные" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_T_ADJ_5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Доходные (Lucrative)
                                { "Russian", "доходные" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_T_ADJ_6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Изобильные (Bountiful)
                                { "Russian", "изобильные" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_T_ADJ_7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Коммерческие (Commercial)
                                { "Russian", "коммерческие" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_T_ADJ_8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Продуктивные (Productive)
                                { "Russian", "продуктивные" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_T_ADJ_9" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Ценные (Valuable)
                                { "Russian", "ценные" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_T_ADJ_10" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Торговые (Trading)
                                { "Russian", "торговые" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_T_ADJ_11" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Успешные (Auspicious)
                                { "Russian", "успешные" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_T_ADJ_12" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Выгодные (Beneficial)
                                { "Russian", "выгодные" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_T_ADJ_13" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Конструктивные (Constructive)
                                { "Russian", "конструктивные" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_T_ADJ_14" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- «Ненасильственные» (“Non-violent”)
                                { "Russian", "«ненасильственные»" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_T_ADJ_15" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Желанные (Desirable)
                                { "Russian", "желанные" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_T_ADJ_16" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Свежие (Fresh)
                                { "Russian", "свежие" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_T_ADJ_17" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Новейшие (Brand New)
                                { "Russian", "новейшие" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_T_ADJ_18" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Оптовые (Wholesale)
                                { "Russian", "оптовые" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_T_ADJ_19" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Мелкорозничные (Mercantile)
                                { "Russian", "розничные" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_T_ADJ_20" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Полезные (“Helpful”)
                                { "Russian", "полезные" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_T_ADJ_21" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Продающие (Sales)
                                { "Russian", "торговые" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_T_ADJ_22" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Промышленная (Industrial)
                                { "Russian", "промышленные" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_T_ADJ_23" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Бюджетные (Budgetary)
                                { "Russian", "бюджетные" },
                            }
                        },
                        --#endregion

                        --#region NOUN
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_T_NOUN_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- переговоры (Negotiations)
                                { "Russian", "переговоры" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_T_NOUN_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- обмены (Exchanges)
                                { "Russian", "обмены" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_T_NOUN_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- возможности (Opportunities)
                                { "Russian", "возможности" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_T_NOUN_4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- заказы (Commissions)
                                { "Russian", "заказы" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_T_NOUN_5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- рынки (Markets)
                                { "Russian", "рынки" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_T_NOUN_6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- переговоры (Diplomacy)
                                { "Russian", "сделки" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_T_NOUN_7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- отношения (Relations)
                                { "Russian", "отношения" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_T_NOUN_8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- обсуждения (Discussions)
                                { "Russian", "обсуждения" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_T_NOUN_9" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- транзакции (Transactions)
                                { "Russian", "транзакции" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_T_NOUN_10" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- компромиссы (Compromises)
                                { "Russian", "компромиссы" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_T_NOUN_11" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- обещания (Promises)
                                { "Russian", "обещания" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_T_NOUN_12" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- протоколы (Protocols)
                                { "Russian", "протоколы" },
                            }
                        },
                        --#endregion

                        --#endregion

                        --#region ФОРМАТ №4: <%JOURNEY1% к %PLACE%> или <%JOURNEY2% в %PLACE%>

                        --#region JOURNEY1
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_E_JOURNEY1_1" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Путешествие (Journey)
                        --         { "Russian", "Путешествие" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_E_JOURNEY1_2" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Странствия (Voyage)
                        --         { "Russian", "Странствия" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_E_JOURNEY1_3" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Приключение (Adventure)
                        --         { "Russian", "Приключение" },
                        --     }
                        -- },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_E_JOURNEY1_4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вояж (To Sail)
                                { "Russian", "Плывя" },
                            }
                        },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_E_JOURNEY1_5" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Вперед (Forward)
                        --         { "Russian", "Вперед" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_E_JOURNEY1_6" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Напрямую (Onwards)
                        --         { "Russian", "Напрямую" },
                        --     }
                        -- },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_E_JOURNEY1_7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- В путь (Setting Forth)
                                { "Russian", "Направляясь" },
                            }
                        },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_E_JOURNEY1_8" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Путешествия (Travels)
                        --         { "Russian", "Путешествия" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_E_JOURNEY1_9" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Взгляд (Staring)
                        --         { "Russian", "Взгляд" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_E_JOURNEY1_10" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Выискивание (Peering)
                        --         { "Russian", "Выискивание" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_E_JOURNEY1_11" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Марш (Marching)
                        --         { "Russian", "Марш" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_E_JOURNEY1_12" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Шаг вперед (Boldly Forth)
                        --         { "Russian", "Шаг вперед" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_E_JOURNEY1_13" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Продвижение (Advancing)
                        --         { "Russian", "Продвижение" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_E_JOURNEY1_14" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Проход (Passage)
                        --         { "Russian", "Проход" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_E_JOURNEY1_15" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Тропа (A Path)
                        --         { "Russian", "Тропа" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_E_JOURNEY1_16" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Путь (A Way)
                        --         { "Russian", "Путь" },
                        --     }
                        -- },
                        --#endregion

                        --#region JOURNEY2
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_E_JOURNEY2_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Опасность (Danger)
                                { "Russian", "Опасный путь" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_E_JOURNEY2_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Потерянный (Lost)
                                { "Russian", "Затерянный путь" },
                            }
                        },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_E_JOURNEY2_3" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Приключения (Adventures)
                        --         { "Russian", "Приключения" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_E_JOURNEY2_4" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Странствия (Voyages)
                        --         { "Russian", "Странствия" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_E_JOURNEY2_5" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Путешествия (Travels)
                        --         { "Russian", "Путешествия" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_E_JOURNEY2_6" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Вояж (To Sail)
                        --         { "Russian", "Вояж" },
                        --     }
                        -- },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_E_JOURNEY2_7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поиск (Searching)
                                { "Russian", "На поиски" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_E_JOURNEY2_8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Исследование (Exploring)
                                { "Russian", "Исследуя путь" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_E_JOURNEY2_9" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Слава (Glory)
                                { "Russian", "Славный путь" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_E_JOURNEY2_10" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Новые открытия (New Discoveries)
                                { "Russian", "Открывая путь" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_E_JOURNEY2_11" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Рисковый (Risking it)
                                { "Russian", "Рискованный путь" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_E_JOURNEY2_12" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Странные знаки (Strange Signs)
                                { "Russian", "Знаковый путь" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_E_JOURNEY2_13" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Танцующий (Dancing)
                                { "Russian", "Танцуя в пути" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_E_JOURNEY2_14" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Блуждающий (Wandering)
                                { "Russian", "Блуждая в пути" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_E_JOURNEY2_15" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Изучающий (Learning)
                                { "Russian", "Изучая в пути" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_E_JOURNEY2_16" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Ищущий жизнь (Looking for Life)
                                { "Russian", "В поисках жизни" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_E_JOURNEY2_17" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Надежда (Hope)
                                { "Russian", "Спокойный путь" },
                            }
                        },
                        --#endregion

                        --#region PLACE
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_PLACE_1" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- звездам (the Stars)
                        --         { "Russian", "звездам" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_PLACE_2" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- неизвестному (the Unknown)
                        --         { "Russian", "неизвестному" },
                        --     }
                        -- },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_PLACE_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- открытый космос (Deep Space)
                                { "Russian", "открытому космосу" },
                            }
                        },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_PLACE_4" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- чернильной дали (the Inky Beyond)
                        --         { "Russian", "чернильной дали" },
                        --     }
                        -- },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_PLACE_5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- глубине (the Deep)
                                { "Russian", "глубинам" },
                            }
                        },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_PLACE_6" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- бесконечности (the Infinite)
                        --         { "Russian", "бесконечности" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_PLACE_7" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- небу (the Sky)
                        --         { "Russian", "небу" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_PLACE_8" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- космосу (the Cosmos)
                        --         { "Russian", "космосу" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_PLACE_9" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- небесам (the Heavens)
                        --         { "Russian", "небесам" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_PLACE_10" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- пустому океану (the Empty Ocean)
                        --         { "Russian", "пустому океану" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_PLACE_11" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- пустым небесам (an Empty Sky)
                        --         { "Russian", "пустым небесам" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_PLACE_12" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- потерянными мирам (Lost Worlds)
                        --         { "Russian", "потерянными мирам" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_PLACE_13" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- бездне (the Abyss)
                        --         { "Russian", "бездне" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_PLACE_14" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- космической пустоте (the Void Above)
                        --         { "Russian", "космической пустоте" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_PLACE_15" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- эфиру (the Ether)
                        --         { "Russian", "эфиру" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_PLACE_16" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- сферам (the Spheres)
                        --         { "Russian", "сферам" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_PLACE_17" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- безграничным просторам (the Measureless Expanse)
                        --         { "Russian", "безграничным просторам" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_PLACE_18" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- звездному небосводу (the Starry Firmament)
                        --         { "Russian", "звездному небосводу" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_PLACE_19" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- небесной тверди (the Empyrean)
                        --         { "Russian", "небесной тверди" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_PLACE_20" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- далекому свету (the Light Beyond)
                        --         { "Russian", "далекому свету" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_PLACE_21" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- невидимому свету (the Unseen Light)
                        --         { "Russian", "невидимому свету" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_PLACE_22" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- тьме (the Darkness)
                        --         { "Russian", "тьме" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_PLACE_23" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- неведомым землям (Unseen Lands)
                        --         { "Russian", "неведомым землям" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_PLACE_24" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- неведомым небесам (Unseen Skies)
                        --         { "Russian", "неведомым небесам" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_PLACE_25" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- бескрайней галактике (the Galactic Expanse)
                        --         { "Russian", "бескрайней галактике" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_PLACE_26" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- звездным ветрам (the Stellar Winds)
                        --         { "Russian", "звездным ветрам" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_PLACE_27" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- бескрайнему космосу (Endless Space)
                        --         { "Russian", "бескрайнему космосу" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_PLACE_28" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- безграничной вселенной (an Unbound Universe)
                        --         { "Russian", "безграничной вселенной" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_PLACE_29" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- вечным небесам (Eternal Skies)
                        --         { "Russian", "вечным небесам" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_PLACE_30" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- краю космоса (the Edge of Space)
                        --         { "Russian", "краю космоса" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_PLACE_31" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- далекому космосу (the Space Beyond)
                        --         { "Russian", "далекому космосу" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_PLACE_32" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- красоте (Beauty)
                        --         { "Russian", "красоте" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_PLACE_33" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- далеким местам (the Far Places)
                        --         { "Russian", "далеким местам" },
                        --     }
                        -- },
                        --#endregion

                        --#endregion

                        --#region ФОРМАТ №5: <%RESOURCE% %VERB% %JOURNEY%> (M_JOURNEY)

                        --#region RESOURCE
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_RESOURCE_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Грабеж (A Plunder)
                                { "Russian", "награбленного" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_RESOURCE_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сбор утиля (A Salvage)
                                { "Russian", "утиля" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_RESOURCE_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Лом (A Scrap)
                                { "Russian", "лома" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_RESOURCE_4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обломки (A Debris)
                                { "Russian", "обломков" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_RESOURCE_5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Минерал (A Mineral)
                                { "Russian", "минералов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_RESOURCE_6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Астероид (An Asteroid)
                                { "Russian", "астероидов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_RESOURCE_7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Руда (An Ore)
                                { "Russian", "руды" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_RESOURCE_8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сплав (An Alloy)
                                { "Russian", "сплавов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_RESOURCE_9" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Металл (A Metal)
                                { "Russian", "металлов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_RESOURCE_10" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Ресурс (A Resource)
                                { "Russian", "ресурсов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_RESOURCE_11" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Залежи (A Deposit)
                                { "Russian", "залежей" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_RESOURCE_12" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Кристалл (A Crystal)
                                { "Russian", "кристаллов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_RESOURCE_13" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Самоцвет (A Gem)
                                { "Russian", "самоцветов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_RESOURCE_14" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Материал (A Material)
                                { "Russian", "материалов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_RESOURCE_15" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Элемент (An Element)
                                { "Russian", "элементов" },
                            }
                        },
                        --#endregion

                        --#region VERB
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_M_VERB_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добыча (Mining)
                                { "Russian", "добычи" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_M_VERB_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Извлечение (Extraction)
                                { "Russian", "извлечения" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_M_VERB_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Переработка (Recycling)
                                { "Russian", "переработки" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_M_VERB_4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Возвращение (Reclamation)
                                { "Russian", "возвращения" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_M_VERB_5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обработка (Processing)
                                { "Russian", "обработки" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_M_VERB_6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Бурение (Drilling)
                                { "Russian", "сверления" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_M_VERB_7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Изыскание (Prospecting)
                                { "Russian", "изыскания" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_M_VERB_8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Бурение (Tunneling)
                                { "Russian", "бурения" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_M_VERB_9" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Выкачивание (Scooping)
                                { "Russian", "выкачивания" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_M_VERB_10" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Раскопки (Excavating)
                                { "Russian", "выкапывания" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_M_VERB_11" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Выемка (Removal)
                                { "Russian", "удаления" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_M_VERB_12" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Загрузка (Loading)
                                { "Russian", "погрузки" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_M_VERB_13" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сбор (Harvesting)
                                { "Russian", "сбора" },
                            }
                        },
                        --#endregion

                        --#region M_JOURNEY
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_M_JOURNEY_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Экспедиция (Expedition)
                                { "Russian", "Экспедиция для" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_M_JOURNEY_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поиски (Search)
                                { "Russian", "В поисках" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_M_JOURNEY_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Охота (Hunt)
                                { "Russian", "Охота ради" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_M_JOURNEY_4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Странствия (Voyage)
                                { "Russian", "Странствие для" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_M_JOURNEY_5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Исследование (Enquiry)
                                { "Russian", "Расследование" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_M_JOURNEY_6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Исследовательская (Exploration)
                                { "Russian", "Исследование" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_M_JOURNEY_7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Погоня (Chase)
                                { "Russian", "В погоне ради" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_FLEET_M_JOURNEY_8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Приключение (Adventure)
                                { "Russian", "Авантюра" },
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
