NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]    = "_RuFix_ItemGenHistDoc.pak",
    ["MOD_AUTHOR"]      = "gh0stwizard",
    ["MOD_DESCRIPTION"] = "Fix names of generated documents.",
    ["NMS_VERSION"]     = "5.72",
    ["EXML_CREATE"]     = "false",
    ["MODIFICATIONS"]   = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                {
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_UPDATE3_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_FORMAT_DOC_1" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- %HISTADJ% %HISTNOUN%
                        --         -- %HISTADJ% %HISTNOUN%
                        --         { "Russian", "%HISTADJ% %HISTNOUN%" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_FORMAT_DOC_2" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- %HISTADJ% %HISTNOUN%
                        --         -- %HISTADJ% %HISTNOUN%
                        --         { "Russian", "%HISTADJ% %HISTNOUN%" },
                        --     }
                        -- },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_HIST_ADJ_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Геки
                                { "Russian", "Гекск." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_HIST_ADJ_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вай’кины
                                { "Russian", "Вай’кинск." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_HIST_ADJ_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Корваксы
                                { "Russian", "Корвакск." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_HIST_ADJ_4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Пыльный
                                { "Russian", "Пыльн." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_HIST_ADJ_5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Любопытн.
                                { "Russian", "Любопытн." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_HIST_ADJ_6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Еретические
                                { "Russian", "Еретическ." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_HIST_ADJ_7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Покрытые кожей (Leather-Bound)
                                { "Russian", "В кожаном переплете" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_HIST_ADJ_8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Подозрительн.
                                { "Russian", "Подозрительн." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_HIST_ADJ_9" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Не открыто (Undiscovered)
                                { "Russian", "Неоткрыт." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_HIST_ADJ_10" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Забытый
                                { "Russian", "Забыт." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_HIST_ADJ_11" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Древнее (Ancient)
                                { "Russian", "Древн." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_HIST_ADJ_12" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Проклятый
                                { "Russian", "Проклят." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_HIST_ADJ_13" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Редкая
                                { "Russian", "Редк." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_HIST_ADJ_14" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Таинствен.
                                { "Russian", "Таинствен." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_HIST_ADJ_15" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Призрачные
                                { "Russian", "Призрачн." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_HIST_ADJ_16" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Покинутые (Forsaken)
                                { "Russian", "Покинут." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_HIST_ADJ_17" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Прекрасная (Beautiful)
                                { "Russian", "Красив." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_HIST_ADJ_18" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Ненавязчивые (Subtle)
                                { "Russian", "Утонченн." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_HIST_ADJ_19" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Значимые (Thoughtful)
                                { "Russian", "Вдумчив." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_HIST_ADJ_20" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Личные
                                { "Russian", "Личн." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_HIST_ADJ_21" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Заметные (Well-Observed)
                                { "Russian", "Заметн." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_HIST_ADJ_22" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Рассыпающиеся (Crumbling)
                                { "Russian", "Рассыпающ." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_HIST_ADJ_23" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Пепельные
                                { "Russian", "Пепельн." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_HIST_ADJ_24" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Романтичные
                                { "Russian", "Романтичн." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_HIST_ADJ_25" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Изящный (Ornate)
                                { "Russian", "Изящн." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_HIST_ADJ_26" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Зараженные (Blighted)
                                { "Russian", "Зараженн." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_HIST_ADJ_27" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Лиричные
                                { "Russian", "Лиричн." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_HIST_ADJ_28" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Исторический
                                { "Russian", "Историческ." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_HIST_ADJ_29" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Мрачно (Grim)
                                { "Russian", "Мрачн." },
                            }
                        },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_HIST_ADJ_30" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Потерян.
                        --         { "Russian", "Потерян." },
                        --     }
                        -- },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_HIST_ADJ_31" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Скверные (Ill-Advised)
                                { "Russian", "Скверн." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_HIST_ADJ_32" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Утончен. (Delicate)
                                { "Russian", "Деликатн." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_HIST_ADJ_33" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Безупречность (Sublime)
                                { "Russian", "Возвышенн." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_HIST_ADJ_34" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Грубые (Coarse)
                                { "Russian", "Груб." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_HIST_ADJ_35" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Изящные (Elegant)
                                { "Russian", "Элегантн." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_HIST_ADJ_36" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Потрепанные (Timeworn)
                                { "Russian", "Потрепанн." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_HIST_ADJ_37" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Древние (Age-Old)
                                { "Russian", "Веков." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_HIST_ADJ_38" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Состаренные (Antiquated)
                                { "Russian", "Устаревш." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_HIST_ADJ_39" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Светящийся (Luminous)
                                { "Russian", "Светящ." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_HIST_ADJ_40" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- опасная (Dangerous)
                                { "Russian", "Опасн." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_HIST_ADJ_41" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Рукодельные (Hand-Made)
                                { "Russian", "Рукодельн." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_HIST_ADJ_42" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Окровавленные (Blood Stained)
                                { "Russian", "Окровавленн." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_HIST_ADJ_43" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запачканный (Stained)
                                { "Russian", "Запачканн." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_HIST_ADJ_44" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Непристойные (Lewd)
                                { "Russian", "Непристойн." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_HIST_ADJ_45" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запечатанные (Sealed)
                                { "Russian", "Запечатанн." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_HIST_ADJ_46" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Раскрытые (Unsealed)
                                { "Russian", "Раскрыт." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_HIST_ADJ_47" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Тоскливые (Wistful)
                                { "Russian", "Тосклив." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_HIST_ADJ_48" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Драгоценный (Precious)
                                { "Russian", "Драгоценн." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_HIST_ADJ_49" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Эпические (Epic)
                                { "Russian", "Эпическ." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_HIST_ADJ_50" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Драматичные (Dramatic)
                                { "Russian", "Драматичн." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_HIST_ADJ_51" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запретные (Forbidden)
                                { "Russian", "Запретн." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_HIST_ADJ_52" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Мятые (Crumpled)
                                { "Russian", "Помят." },
                            }
                        },
                        -- существительные
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_HIST_NOUN_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Полевые записки (Field Notes)
                                { "Russian", "полевые записки" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_HIST_NOUN_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Бумаги (Papers)
                                { "Russian", "бумаги" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_HIST_NOUN_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Диаграммы (Diagrams)
                                { "Russian", "диаграммы" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_HIST_NOUN_4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Книги (Books)
                                { "Russian", "книги" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_HIST_NOUN_5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Рукописи (Manuscripts)
                                { "Russian", "манускрипты" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_HIST_NOUN_6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Артефакты (Artefacts)
                                { "Russian", "артефакты" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_HIST_NOUN_7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Данные исследований (Research Data)
                                { "Russian", "данные исследований" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_HIST_NOUN_8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Схемы (Recipe)
                                { "Russian", "рецепт" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_HIST_NOUN_9" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Формулы (Formulae)
                                { "Russian", "формула" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_HIST_NOUN_10" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Дневники (Diaries)
                                { "Russian", "дневники" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_HIST_NOUN_11" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Стихи (Poetry)
                                { "Russian", "стихи" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_HIST_NOUN_12" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Рисунки (Drawings)
                                { "Russian", "рисунки" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_HIST_NOUN_13" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Гравюры (Etchings)
                                { "Russian", "офорты" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_HIST_NOUN_14" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Гравюры на дереве (Woodcut)
                                { "Russian", "гравюра на дереве" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_HIST_NOUN_15" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Документы (Documents)
                                { "Russian", "документы" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_HIST_NOUN_16" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Записи (Scribblings)
                                { "Russian", "каракули" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_HIST_NOUN_17" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Календари (Calendar)
                                { "Russian", "календарь" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_HIST_NOUN_18" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Портреты (Portraits)
                                { "Russian", "портреты" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_HIST_NOUN_19" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Нотные листы (Sheet Music)
                                { "Russian", "нотные листы" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_HIST_NOUN_20" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сочинения (Theses)
                                { "Russian", "тезисы" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_HIST_NOUN_21" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Договоры (Treatises)
                                { "Russian", "научные труды" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_HIST_NOUN_22" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Рассказы (Literature)
                                { "Russian", "литература" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_HIST_NOUN_23" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Красивые записи (Calligraphy)
                                { "Russian", "калиграфия" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_HIST_NOUN_24" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Трактаты (Tracts)
                                { "Russian", "трактаты" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_HIST_NOUN_25" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Памфлеты (Pamphlets)
                                { "Russian", "памфлеты" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_HIST_NOUN_26" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Записи (Recordings)
                                { "Russian", "записи" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_HIST_NOUN_27" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Мемуары (Memoirs)
                                { "Russian", "мемуары" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_HIST_NOUN_28" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Свитки (Scrolls)
                                { "Russian", "свитки" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_HIST_NOUN_29" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Памятки (Mementos)
                                { "Russian", "памятки" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_HIST_NOUN_30" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Наброски (Sketches)
                                { "Russian", "наброски" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_HIST_NOUN_31" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Фотографии (Photographs)
                                { "Russian", "фотографии" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_HIST_NOUN_32" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Отчеты (Reports)
                                { "Russian", "отчёты" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_HIST_NOUN_33" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Рапорты (Case Files)
                                { "Russian", "рапорты" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_HIST_NOUN_34" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Судебные иски (Lawsuits)
                                { "Russian", "судебные иски" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_HIST_NOUN_35" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Квитанции (Receipts)
                                { "Russian", "квитанции" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_HIST_NOUN_36" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Примеры работ (Portfolio)
                                { "Russian", "портфолио" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_HIST_NOUN_37" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Архивы (Archives)
                                { "Russian", "архивы" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_HIST_NOUN_38" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Антологии (Anthology)
                                { "Russian", "антологии" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_HIST_NOUN_39" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Композиции (Compositions)
                                { "Russian", "композиции" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_HIST_NOUN_40" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Разные документы (Miscellany)
                                { "Russian", "разные документы" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_HIST_NOUN_41" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Правовые документы (Legal Documents)
                                { "Russian", "правовые документы" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_HIST_NOUN_42" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Торговые записи (Commercial Records)
                                { "Russian", "торговые договоры" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_HIST_NOUN_43" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Реликвия (Relic)
                                { "Russian", "реликвия" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_HIST_NOUN_44" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Пиктограммы (Pictographs)
                                { "Russian", "пиктограммы" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_HIST_NOUN_45" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Идол (Statue)
                                { "Russian", "идол" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_HIST_NOUN_46" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Предмет наследства (Heirloom)
                                { "Russian", "семейная реликвия" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_HIST_NOUN_47" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Листок (Leaflet)
                                { "Russian", "листок" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_HIST_NOUN_48" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Буклет (Brochure)
                                { "Russian", "брошюра" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_HIST_NOUN_49" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Этюд (Essay)
                                { "Russian", "сочинение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_HIST_NOUN_50" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Автобиография (Autobiography)
                                { "Russian", "автобиография" },
                            }
                        },
                    }
                }
            }
        }
    }
}
