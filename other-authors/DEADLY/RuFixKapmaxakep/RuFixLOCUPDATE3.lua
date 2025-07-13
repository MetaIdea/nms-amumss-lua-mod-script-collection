NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]  = "_RuFixLOCUPDATE3.pak",
    ["MOD_AUTHOR"]    = "gh0stwizard",
    ["NMS_VERSION"]   = "5.72",
    ["EXML_CREATE"]   = "false",
    ["MODIFICATIONS"] = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                { -- LANGUAGE/NMS_UPDATE3_RUSSIAN.MBIN
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_UPDATE3_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BASESTATS_SCIENTIFIC_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Скиталец" }, -- Путешественник (Explorer)
                            }
                        },
                        -- с учетом того, что макс. 8 букв без прокрутки, то и "истребит." не влазеет
                        -- нужен хороший синоним к истрибителю, но я не смог подобрать...
                        -- ястреб и ястребок как-то странно звучат и вроде как не вписываются в космооперу
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BASESTATS_FIGHTER_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Боец" }, -- Истребитель (Fighter)
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ECON_CLASS_MINING_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Минералогия" }, -- минералов (Minerals)
                            }
                        },
                        { -- в идеале "геологическая разведка", но термин геологоразведка в ходу и смысл тот же
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ECON_CLASS_MINING_4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Геологоразведка" }, -- Геологич. изыскания (Prospecting)
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ECON_CLASS_TRADE_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Грузоперевозки" }, -- Перевозки (Shipping)
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ECON_CLASS_TRADE_4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Коммерция" }, -- Коммерческая (Commercial)
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ECON_CLASS_SCIENCE_4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Математика" }, -- математики (Mathematical)
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_GALAXYMAP_FILTER_CONFLICT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Обстановка" }, -- Конфликт (Conflict)
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SYSTEM_INFO_CONFLICT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Обстановка:" }, -- Обстановка на планете: (Conflict level:)
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SYSTEM_BINOCS_CONFLICT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Обстановка" }, -- Обстановка на планете (Conflict level)
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CONFLICT_LEVEL_LOW_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Мирная" }, -- мирная (Peaceful)
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CONFLICT_LEVEL_LOW_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Низкий уровень конфликта" }, -- низкий уровень конфликта (Low)
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CONFLICT_LEVEL_LOW_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Спокойная" }, -- спокойная (Tranquil)
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CONFLICT_LEVEL_LOW_4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Расслабленная" }, -- расслабленная (Relaxed)
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CONFLICT_LEVEL_LOW_5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Мягкая" }, -- мягкая (Gentle)
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CONFLICT_LEVEL_LOW_6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Стабильная" }, -- стабильная (Stable)
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CONFLICT_LEVEL_LOW_7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Тихая" }, -- тихая (Untroubled)
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CONFLICT_LEVEL_LOW_8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Простая" }, -- Простая (Trivial)
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CONFLICT_LEVEL_LOW_9" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Неопасная" }, -- неопасная (Unthreatening)
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CONFLICT_LEVEL_LOW_10" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Умеренная" }, -- умеренная (Mild)
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CONFLICT_LEVEL_MED_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Периодические конфликты" }, -- с периодическими конфликтами (Intermittent)
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CONFLICT_LEVEL_MED_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Средний уровень конфликта" }, -- средний уровень конфликта (Medium)
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CONFLICT_LEVEL_MED_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Спорадические конфликты" }, -- нерегулярные конфликты (Sporadic)
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CONFLICT_LEVEL_MED_4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Нестабильная" }, -- нестабильная (Unstable)
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CONFLICT_LEVEL_MED_5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Беспокойная" }, -- беспокойная (Fractious)
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CONFLICT_LEVEL_MED_6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Неуправляемая" }, -- неуправляемая (Unruly)
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CONFLICT_LEVEL_MED_7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Бурная" }, -- бурная (Boisterous)
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CONFLICT_LEVEL_MED_8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Обостренная" }, -- Обостренная (Testy)
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CONFLICT_LEVEL_MED_9" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Воинственная" }, -- воинственная (Belligerent)
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CONFLICT_LEVEL_MED_10" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Буйная" }, -- буйная (Rowdy)
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CONFLICT_LEVEL_HIGH_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Высокий уровень конфликта" }, -- высокий уровень конфликта (High)
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CONFLICT_LEVEL_HIGH_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Опасная" }, -- опасная (Dangerous)
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CONFLICT_LEVEL_HIGH_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Идет война" }, -- идет война (At War)
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CONFLICT_LEVEL_HIGH_4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Творится беззаконие" }, -- творится беззаконие (Lawless)
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CONFLICT_LEVEL_HIGH_5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Гибельная" }, -- гибельная (Perilous)
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CONFLICT_LEVEL_HIGH_6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Тревожная" }, -- тревожная (Alarming)
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CONFLICT_LEVEL_HIGH_7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Критическая" }, -- критическая (Critical)
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CONFLICT_LEVEL_HIGH_8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Грозная" }, -- грозная (Formidable)
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CONFLICT_LEVEL_HIGH_9" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Разрушительная" }, -- разрушительная (Destructive)
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CONFLICT_LEVEL_HIGH_10" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Агрессивная" }, -- агрессивная (Aggressive)
                            }
                        },

                        -- Генерация имен планет (ссорян, все будет на инглише, имхо это косяк разрабов)
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_PLANET_ADORN_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Prime" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_PLANET_ADORN_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Major" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_PLANET_ADORN_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Minor" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_PLANET_ADORN_4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Alpha" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_PLANET_ADORN_5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Beta" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_PLANET_ADORN_6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Gamma" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_PLANET_ADORN_7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Delta" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_PLANET_ADORN_8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Omega" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_PLANET_ADORN_9" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Sigma" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_PLANET_ADORN_10" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Tau" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_PLANET_STYLE_10" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %PROCNORM% – новое
                                -- New %PROCNORM%
                                { "Russian", "New %PROCNORM%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TERRAIN_EDIT_TIP_PAD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Удерживайте&lt;&gt;&lt;IMG&gt;ATTACK&lt;&gt;, чтобы рисовать объекты в режиме &lt;TECHNOLOGY&gt;создания&lt;&gt;&#xA;Используйте режим &lt;TECHNOLOGY&gt;сглаживания&lt;&gt;, чтобы быстро сгладить зону&#xA;Режим &lt;TECHNOLOGY&gt;восстановления&lt;&gt; позволяет удалять изменения &#xA;и восстанавливать ландшафт
                                -- &lt;STELLAR&gt;Hold&lt;&gt; &lt;IMG&gt;ATTACK&lt;&gt; to draw large shapes in &lt;TECHNOLOGY&gt;Create&lt;&gt; Mode&#xA;Use &lt;TECHNOLOGY&gt;Flatten&lt;&gt; mode to quickly smooth an area&#xA;&lt;TECHNOLOGY&gt;Restore&lt;&gt; mode allows edits to be removed and terrain restored
                                { "Russian", "&lt;STELLAR&gt;Удерживайте&lt;&gt; &lt;IMG&gt;ATTACK&lt;&gt;, чтобы рисовать объекты в режиме &lt;TECHNOLOGY&gt;создания&lt;&gt;&#xA;Используйте режим &lt;TECHNOLOGY&gt;сглаживания&lt;&gt;, чтобы быстро сгладить зону&#xA;Режим &lt;TECHNOLOGY&gt;восстановления&lt;&gt; позволяет удалять изменения &#xA;и восстанавливать ландшафт" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TERRAIN_EDIT_TIP_PC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Удерживайте&lt;&gt;&lt;IMG&gt;ATTACK&lt;&gt;, чтобы рисовать крупные фигуры в режиме &lt;TECHNOLOGY&gt;создания&lt;&gt;&#xA;Используйте режим &lt;TECHNOLOGY&gt;сглаживания&lt;&gt;, чтобы быстро сгладить зону&#xA;Режим &lt;TECHNOLOGY&gt;восстановления&lt;&gt; позволяет удалять изменения
                                { "Russian", "&lt;STELLAR&gt;Удерживайте&lt;&gt; &lt;IMG&gt;ATTACK&lt;&gt;, чтобы рисовать крупные фигуры в режиме &lt;TECHNOLOGY&gt;создания&lt;&gt;&#xA;Используйте режим &lt;TECHNOLOGY&gt;сглаживания&lt;&gt;, чтобы быстро сгладить зону&#xA;Режим &lt;TECHNOLOGY&gt;восстановления&lt;&gt; позволяет удалять изменения" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SIGNAL_SCANNER_DESC_ALT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружение сигналов аванпостов &lt;STELLAR&gt;активно&lt;&gt;&lt;IMG&gt;SLASH&lt;&gt; Навигационные подпрограммы &lt;STELLAR&gt;активны&lt;&gt;&lt;IMG&gt;SLASH&lt;&gt; Обнаружение элементов улучшения экзокостюма &lt;STELLAR&gt;активно&lt;&gt;&lt;IMG&gt;SLASH&lt;&gt;.&#xA;Укажите навигационную задачу:
                                -- Outpost signal detection &lt;STELLAR&gt;online&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt; Navigation subroutines &lt;STELLAR&gt;online&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt; Exosuit Upgrade Unit detection &lt;STELLAR&gt;online&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt;&#xA;Please select navigational task:
                                { "Russian", "Обнаружение сигналов аванпостов &lt;STELLAR&gt;активно&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt; Навигационные подпрограммы &lt;STELLAR&gt;активны&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt; Обнаружение элементов улучшения экзокостюма &lt;STELLAR&gt;активно&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt;&#xA;Укажите навигационную задачу:" },
                            }
                        },
                        -- планетоид исправлен в малую планету
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PARADISE_PLANET" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Райcк. %PLANETCLASS%
                                -- Paradise %PLANETCLASS%
                                { "Russian", "Райcкая %PLANETCLASS%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "WIRECELLSBIOME1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Разбит. %PLANETCLASS%
                                -- Shattered %PLANETCLASS%
                                { "Russian", "Разбитая %PLANETCLASS%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "WIRECELLSBIOME2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Расколот. %PLANETCLASS%
                                -- Fractured %PLANETCLASS%
                                { "Russian", "Расколотая %PLANETCLASS%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "WIRECELLSBIOME3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Раздробленн. %PLANETCLASS%
                                -- Fragmented %PLANETCLASS%
                                { "Russian", "Раздробленная %PLANETCLASS%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "CONTOURBIOME1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Очерченн. %PLANETCLASS%
                                -- Contoured %PLANETCLASS%
                                { "Russian", "Очерченная %PLANETCLASS%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "CONTOURBIOME2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обрамленн. %PLANETCLASS%
                                -- Cabled %PLANETCLASS%
                                { "Russian", "Обрамлённая %PLANETCLASS%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "CONTOURBIOME3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Оплетенн. %PLANETCLASS%
                                -- Webbed %PLANETCLASS%
                                { "Russian", "Оплетённая %PLANETCLASS%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BONESPIREBIOME1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Грохочущ. %PLANETCLASS%
                                -- Rattling %PLANETCLASS%
                                { "Russian", "Грохочущая %PLANETCLASS%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "IRRISHELLSBIOME2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Клинкообразн. %PLANETCLASS%
                                -- Bladed %PLANETCLASS%
                                { "Russian", "Клинкообразная %PLANETCLASS%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "HYDROGARDENBIOME2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Споров. %PLANETCLASS%
                                -- Sporal %PLANETCLASS%
                                { "Russian", "Споровая %PLANETCLASS%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "HYDROGARDENBIOME3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Крыт. %PLANETCLASS%
                                -- Capped %PLANETCLASS%
                                { "Russian", "Крытая %PLANETCLASS%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "MSTRUCTBIOME1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Затвердевш. %PLANETCLASS%
                                -- Ossified %PLANETCLASS%
                                { "Russian", "Окостеневшая %PLANETCLASS%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "MSTRUCTBIOME2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Окаменел. %PLANETCLASS%
                                -- Petrified %PLANETCLASS%
                                { "Russian", "Окаменелая %PLANETCLASS%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "MSTRUCTBIOME3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Кальцинированн. %PLANETCLASS%
                                -- Calcified %PLANETCLASS%
                                { "Russian", "Кальцинированная %PLANETCLASS%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BEAMSBIOME1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Растресканн. %PLANETCLASS%
                                -- Fissured %PLANETCLASS%
                                { "Russian", "Растресканная %PLANETCLASS%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BEAMSBIOME3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Пробит. %PLANETCLASS%
                                -- Breached %PLANETCLASS%
                                { "Russian", "Пробитая %PLANETCLASS%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "HEXAGONBIOME1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Шестиугольн. %PLANETCLASS%
                                -- Hexagonal %PLANETCLASS%
                                { "Russian", "Шестиугольная %PLANETCLASS%" },
                            }
                        },
                        --- ???
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "HEXAGONBIOME2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сплющенн. %PLANETCLASS%
                                -- Plated %PLANETCLASS%
                                { "Russian", "Позолоченная %PLANETCLASS%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "HEXAGONBIOME3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Чешуйчат. %PLANETCLASS%
                                -- Scaly %PLANETCLASS%
                                { "Russian", "Чешуйчатая %PLANETCLASS%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FRACTCUBEBIOME1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Механическ. %PLANETCLASS%
                                -- Mechanical %PLANETCLASS%
                                { "Russian", "Механическая %PLANETCLASS%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FRACTCUBEBIOME2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Металлическ. %PLANETCLASS%
                                -- Metallic %PLANETCLASS%
                                { "Russian", "Металлическая %PLANETCLASS%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FRACTCUBEBIOME3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Металлургическ. %PLANETCLASS%
                                -- Metallurgic %PLANETCLASS%
                                { "Russian", "Металлургическая %PLANETCLASS%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BUBBLEBIOME1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Пузырящ. %PLANETCLASS%
                                -- Bubbling %PLANETCLASS%
                                { "Russian", "Пузырящаяся %PLANETCLASS%" },
                            }
                        },
                        --- ???
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BUBBLEBIOME2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вспученн. %PLANETCLASS%
                                -- Frothing %PLANETCLASS%
                                { "Russian", "Пенная %PLANETCLASS%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BUBBLEBIOME3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Пенящ. %PLANETCLASS%
                                -- Foaming %PLANETCLASS%
                                { "Russian", "Пенящаяся %PLANETCLASS%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SHARDSBIOME1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Волокнист. %PLANETCLASS%
                                -- Columned %PLANETCLASS%
                                { "Russian", "Колоннообразная %PLANETCLASS%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SHARDSBIOME2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сегментированн. %PLANETCLASS%
                                -- Sharded %PLANETCLASS%
                                { "Russian", "Сегментированная %PLANETCLASS%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "GLITCHBIOME1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Багров. %PLANETCLASS%
                                -- Crimson %PLANETCLASS%
                                { "Russian", "Багровая %PLANETCLASS%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "GLITCHBIOME3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Неисправн. %PLANETCLASS%
                                -- Malfunctioning %PLANETCLASS%
                                { "Russian", "Неисправная %PLANETCLASS%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "GLITCHBIOME4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поврежден. %PLANETCLASS%
                                -- Breached %PLANETCLASS%
                                { "Russian", "Поврежденная %PLANETCLASS%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "GLITCHBIOME5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Заражен. %PLANETCLASS%
                                -- Infected %PLANETCLASS%
                                { "Russian", "Заражённая %PLANETCLASS%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "GLITCHBIOME7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Стеклян. %PLANETCLASS%
                                -- Glassy %PLANETCLASS%
                                { "Russian", "Стеклянная %PLANETCLASS%" },
                            }
                        },
                        -- ??? Иссохшая / Жаждущая
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "GLITCHBIOME8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Измучен. жаждой %PLANETCLASS%
                                -- Thirsty %PLANETCLASS%
                                { "Russian", "Измученная жаждой %PLANETCLASS%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "GLITCHBIOME9" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обречен. %PLANETCLASS%
                                -- Doomed %PLANETCLASS%
                                { "Russian", "Обречённая %PLANETCLASS%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "GLITCHBIOME10" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Удален. %PLANETCLASS%
                                -- Erased %PLANETCLASS%
                                { "Russian", "Стертая %PLANETCLASS%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "GLITCHBIOME11" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Времен. %PLANETCLASS%
                                -- Temporary %PLANETCLASS%
                                { "Russian", "Временная %PLANETCLASS%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "GLITCHBIOME12" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Испорчен. %PLANETCLASS%
                                -- Corrupted %PLANETCLASS%
                                { "Russian", "Испорченная %PLANETCLASS%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "LUSH5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Покрыт. травой %PLANETCLASS%
                                -- Grassy %PLANETCLASS%
                                { "Russian", "Покрытая травой %PLANETCLASS%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "IRRISHELLSBIOME3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обросш. раковинами %PLANETCLASS%
                                { "Russian", "Обросшая раковинами %PLANETCLASS%" },
                            }
                        },
                        -- На галактической карте
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_GALMAP_BUY_SELL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %ECONOMY% // Продать: %SELL%% Купить: %BUY%% // %WEALTH%
                                { "Russian", "Продать: %SELL%% Купить: %BUY%% // %WEALTH%" },
                            }
                        },
                        --
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ALL_ABAN_DESC_25" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Я посещаю их вновь, пытаясь уличить во лжи, но корваксы полны решимости. Они утверждают, что мои слова лишены логики, что во всей вселенной нет силы, способной уничтожить планету, не оставив никаких следов: ни останков, ни воспоминаний. Они требуют, чтобы я ушел.&#xA; &#xA;Но я говорю правду. Неужели они этого не понимают? Я точно знаю, что это произошло. Я должен был вспомнить, должен был настоять на своем. Но я был слаб.&#xA; &#xA;Тогда я впервые услышал его. Голос тьмы.
                                { "Russian", "Я посещаю их вновь, пытаясь уличить во лжи, но корваксы полны решимости. Они утверждают, что мои слова лишены логики, что во всей вселенной нет силы, способной уничтожить планету, не оставив никаких следов: ни останков, ни воспоминаний.&#xA;&#xA;Они требуют, чтобы я ушел. Но я говорю правду. Неужели они этого не понимают? Я точно знаю, что это произошло. Я должен был вспомнить, должен был настоять на своем. Но я был слаб.&#xA;&#xA;Тогда я впервые услышал его. Голос тьмы." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NPC_ARMS_BRIEF_MAIN_LANG_6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Они совсем рядом... Но у меня есть для тебя последнее задание. Чтобы служить тебе, мне нужна сила. Вай’кины знают вещество, способное поддержать силы стариков. Наша молодежь отдает его добровольно, без принуждения.&#xA;Я сам не один год поставлял его старейшинам. Мои органы дарили свои ферменты нашему флоту. И я гордился своей участью. Однако сейчас такое мучительное самопожертвование не потребуется. Мне хватит остаточных следов ферментов. Их можно найти на &lt;TRADEABLE&gt;вай’кинских кинжалах&lt;&gt;.
                                { "Russian", "Они совсем рядом... Но у меня есть для тебя последнее задание. Чтобы служить тебе, мне нужна сила. Вай’кины знают вещество, способное поддержать силы стариков. Наша молодежь отдает его добровольно, без принуждения.&#xA;Я сам не один год поставлял его старейшинам. Мои органы дарили свои ферменты нашему флоту. И я гордился своей участью.&#xA;Однако сейчас такое мучительное самопожертвование не потребуется. Мне хватит остаточных следов ферментов. Их можно найти на &lt;TRADEABLE&gt;вай’кинских кинжалах&lt;&gt;." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "WAR_ARMS_PIRATE_LANG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Гра! Глупый разрушитель! Месяцы моей работы потеряны! Благородный вай’кинский офицер работал с пиратами под прикрытием! Был близок к беглецу, которого выслеживал! Но последователям Нала не скрыться от наказания! Это я тебе обещаю! Гра!
                                { "Russian", "Гра! Глупый разрушитель! Месяцы моей работы потеряны!&#xA;Благородный вай’кинский офицер работал с пиратами под прикрытием! Был близок к беглецу, которого выслеживал! Но последователям Нала не скрыться от наказания! Это я тебе обещаю! Гра!" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NPC_EXO_FINAL_LANG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Странник, я обнаружил точку, представляющую определенный материальный интерес! Заодно это поможет тебе лучше освоиться с управлением вездеходом! Если успеешь найти источник сигнала до того, как он исчезнет, мы сможем присвоить все хранящиеся там юниты!
                                { "Russian", "Странник, я обнаружил точку, представляющую определенный материальный интерес! Заодно это поможет тебе лучше освоиться с управлением вездеходом!&#xA;Если успеешь найти источник сигнала до того, как он исчезнет, мы сможем присвоить все хранящиеся там юниты!" },
                            }
                        },
                        -- текст обрывается на "Я знаю, что наблюдатель никогда"
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NPC_FARMER_FINAL_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Фермер больше не предлагает мне заданий. Он объясняет, что его контракт подходит к концу, и ему пора возвращаться к гекам.&#xA;&#xA;Рассуждая, когда ему будет удобнее уехать, гек внимательно поглядывает на потолок. Я не понимаю, что он хочет там увидеть. Неожиданно %NAME% хватает меня за плечи и советует не доверять наблюдателю. Он подозревает, что наблюдатель вовсе не гек. Фермер даже предполагает, что во всю его еду было что-то подмешано...&#xA;&#xA;Но это не может быть правдой. Мне приходилось делить еду с наблюдателем, и со мной все в порядке. Я знаю, что наблюдатель никогда не причинит мне вреда. Он желает мне только добра.&#xA;&#xA;Через секунду фермер умолкает. Он уверяет меня, что просто пошутил, и просит больше не заговаривать с ним на эту тему.
                                { "Russian", "Фермер больше не предлагает мне заданий: его контракт подходит к концу, и ему пора возвращаться к гекам.&#xA;&#xA;Рассуждая, когда ему будет удобнее уехать, гек внимательно смотрит на потолок. Неожиданно %NAME% хватает меня за плечи и советует не доверять наблюдателю.&#xA;&#xA;Он подозревает, что наблюдатель вовсе не гек, и даже считает, что во всю его еду было что-то подмешано...&#xA;&#xA;Я сомневаюсь в этом. Мне приходилось делить еду с наблюдателем, и со мной все в порядке.&#xA;&#xA;Через секунду фермер умолкает и говорит, что просто пошутил. Он просит больше не обсуждать эту тему." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NPC_FARMER_WAIT_LANG_10" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Наблюдатель хочет в последний раз разделить со мной ужин. &lt;TRADEABLE&gt;Мордитовый корень&lt;&gt; будет моим последним блюдом на этой базе, друг мой!&#xA;&#xA;Многие неправильно понимают природу мордита. Хотя он возникает в мертвых телах, сам он не является производным мертвой плоти. Нет, это оболочка жившего внутри мертвеца паразита, которым заражены почти все обитатели нашей вселенной.&#xA;&#xA;Достаточно правильно за ним ухаживать, и он сможет поселиться в почве. Ему требуется только уважение.
                                { "Russian", "Наблюдатель хочет в последний раз разделить со мной ужин. &lt;TRADEABLE&gt;Мордитовый корень&lt;&gt; будет моим последним блюдом на этой базе, друг мой!&#xA;&#xA;Многие неправильно понимают природу мордита.&#xA;&#xA;Хотя он возникает в мертвых телах, сам он не является производным мертвой плоти. Нет, это оболочка жившего внутри мертвеца паразита, которым заражены почти все обитатели нашей вселенной.&#xA;&#xA;Достаточно правильно за ним ухаживать, и он сможет поселиться в почве. Ему требуется только уважение." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ALL_ABAN_DESC_30" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Я стою у помоста, передо мной открыта червоточина. Стоять здесь, где многие другие потерпели неудачу, — само по себе большая честь, однако я снова испытываю знакомое чувство вины. Как будто мои действия были ошибкой. Но мне нельзя так думать. Мне нужно вернуться домой.&#xA; &#xA;Я вхожу. Мой голос сказал, что со мной все будет в порядке.
                                { "Russian", "Я стою у помоста, передо мной открыта червоточина. Стоять здесь, где многие другие потерпели неудачу, — само по себе большая честь, однако я снова испытываю знакомое чувство вины. Как будто мои действия были ошибкой.&#xA;&#xA;Но мне нельзя так думать. Мне нужно вернуться домой.&#xA;&#xA;Я вхожу. Мой голос сказал, что со мной все будет в порядке." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "LUSH_GAL_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TRADEABLE&gt;спокойная галактика.&lt;&gt;
                                { "Russian", "&lt;TRADEABLE&gt;Спокойная галактика.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "LUSH_GAL_1_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TRADEABLE&gt;спокойная галактика.&lt;&gt; Атлас создал симуляцию собственного мира, собственного существования. Все ради того, чтобы увидеть собственную гибель. Он хочет показать мне свое прошлое и будущее...
                                { "Russian", "&lt;TRADEABLE&gt;Спокойная галактика.&lt;&gt; Атлас создал симуляцию собственного мира, собственного существования. Все ради того, чтобы увидеть собственную гибель. Он хочет показать мне свое прошлое и будущее..." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "LUSH_GAL_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TRADEABLE&gt;вдохновляющая галактика.&lt;&gt;
                                { "Russian", "&lt;TRADEABLE&gt;Вдохновляющая галактика.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "LUSH_GAL_2_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TRADEABLE&gt;вдохновляющая галактика.&lt;&gt; Атлас создал симуляцию собственного мира, собственного существования. Все ради того, чтобы увидеть собственную гибель. Он хочет показать мне свое прошлое и будущее...
                                { "Russian", "&lt;TRADEABLE&gt;Вдохновляющая галактика.&lt;&gt; Атлас создал симуляцию собственного мира, собственного существования. Все ради того, чтобы увидеть собственную гибель. Он хочет показать мне свое прошлое и будущее..." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "LUSH_GAL_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TRADEABLE&gt;ясная галактика.&lt;&gt;
                                { "Russian", "&lt;TRADEABLE&gt;Ясная галактика.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "LUSH_GAL_3_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TRADEABLE&gt;ясная галактика.&lt;&gt; Атлас создал симуляцию собственного мира, собственного существования. Все ради того, чтобы увидеть собственную гибель. Он хочет показать мне свое прошлое и будущее...
                                { "Russian", "&lt;TRADEABLE&gt;Ясная галактика.&lt;&gt; Атлас создал симуляцию собственного мира, собственного существования. Все ради того, чтобы увидеть собственную гибель. Он хочет показать мне свое прошлое и будущее..." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "LUSH_GAL_4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TRADEABLE&gt;безмятежная галактика.&lt;&gt;
                                { "Russian", "&lt;TRADEABLE&gt;Безмятежная галактика.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "LUSH_GAL_4_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TRADEABLE&gt;безмятежная галактика.&lt;&gt; Атлас создал симуляцию собственного мира, собственного существования. Все ради того, чтобы увидеть собственную гибель. Он хочет показать мне свое прошлое и будущее...
                                { "Russian", "&lt;TRADEABLE&gt;Безмятежная галактика.&lt;&gt; Атлас создал симуляцию собственного мира, собственного существования. Все ради того, чтобы увидеть собственную гибель. Он хочет показать мне свое прошлое и будущее..." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "EMPTY_GAL_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;галактика предков.&lt;&gt;
                                { "Russian", "&lt;TECHNOLOGY&gt;Галактика предков.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "EMPTY_GAL_1_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;галактика предков.&lt;&gt; Атлас создал симуляцию собственного мира, собственного существования. Все ради того, чтобы увидеть собственную гибель. Он хочет показать мне свое прошлое и будущее...
                                { "Russian", "&lt;TECHNOLOGY&gt;Галактика предков.&lt;&gt; Атлас создал симуляцию собственного мира, собственного существования. Все ради того, чтобы увидеть собственную гибель. Он хочет показать мне свое прошлое и будущее..." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "EMPTY_GAL_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;тихая галактика.&lt;&gt;
                                { "Russian", "&lt;TECHNOLOGY&gt;Тихая галактика.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "EMPTY_GAL_2_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;тихая галактика.&lt;&gt; Атлас создал симуляцию собственного мира, собственного существования. Все ради того, чтобы увидеть собственную гибель. Он хочет показать мне свое прошлое и будущее...
                                { "Russian", "&lt;TECHNOLOGY&gt;Тихая галактика.&lt;&gt; Атлас создал симуляцию собственного мира, собственного существования. Все ради того, чтобы увидеть собственную гибель. Он хочет показать мне свое прошлое и будущее..." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "EMPTY_GAL_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;утомленная галактика.&lt;&gt;
                                { "Russian", "&lt;TECHNOLOGY&gt;Утомленная галактика.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "EMPTY_GAL_3_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;утомленная галактика.&lt;&gt; Атлас создал симуляцию собственного мира, собственного существования. Все ради того, чтобы увидеть собственную гибель. Он хочет показать мне свое прошлое и будущее...
                                { "Russian", "&lt;TECHNOLOGY&gt;Утомленная галактика.&lt;&gt; Атлас создал симуляцию собственного мира, собственного существования. Все ради того, чтобы увидеть собственную гибель. Он хочет показать мне свое прошлое и будущее..." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "EMPTY_GAL_4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;замерзшая галактика.&lt;&gt;
                                { "Russian", "&lt;TECHNOLOGY&gt;Замёрзшая галактика.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "EMPTY_GAL_4_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;замерзшая галактика.&lt;&gt; Атлас создал симуляцию собственного мира, собственного существования. Все ради того, чтобы увидеть собственную гибель. Он хочет показать мне свое прошлое и будущее...
                                { "Russian", "&lt;TECHNOLOGY&gt;Замёрзшая галактика.&lt;&gt; Атлас создал симуляцию собственного мира, собственного существования. Все ради того, чтобы увидеть собственную гибель. Он хочет показать мне свое прошлое и будущее..." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "HARSH_GAL_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;FUEL&gt;бушующая галактика.&lt;&gt;
                                { "Russian", "&lt;FUEL&gt;Бушующая галактика.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "HARSH_GAL_1_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;FUEL&gt;бушующая галактика.&lt;&gt; Атлас создал симуляцию собственного мира, собственного существования. Все ради того, чтобы увидеть собственную гибель. Он хочет показать мне свое прошлое и будущее...
                                { "Russian", "&lt;FUEL&gt;Бушующая галактика.&lt;&gt; Атлас создал симуляцию собственного мира, собственного существования. Все ради того, чтобы увидеть собственную гибель. Он хочет показать мне свое прошлое и будущее..." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "HARSH_GAL_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;FUEL&gt;безжалостная галактика.&lt;&gt;
                                { "Russian", "&lt;FUEL&gt;Безжалостная галактика.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "HARSH_GAL_2_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;FUEL&gt;безжалостная галактика.&lt;&gt; Атлас создал симуляцию собственного мира, собственного существования. Все ради того, чтобы увидеть собственную гибель. Он хочет показать мне свое прошлое и будущее...
                                { "Russian", "&lt;FUEL&gt;Безжалостная галактика.&lt;&gt; Атлас создал симуляцию собственного мира, собственного существования. Все ради того, чтобы увидеть собственную гибель. Он хочет показать мне свое прошлое и будущее..." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "HARSH_GAL_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;FUEL&gt;неудержимая галактика.&lt;&gt;
                                { "Russian", "&lt;FUEL&gt;Неудержимая галактика.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "HARSH_GAL_3_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;FUEL&gt;неудержимая галактика.&lt;&gt; Атлас создал симуляцию собственного мира, собственного существования. Все ради того, чтобы увидеть собственную гибель. Он хочет показать мне свое прошлое и будущее...
                                { "Russian", "&lt;FUEL&gt;Неудержимая галактика.&lt;&gt; Атлас создал симуляцию собственного мира, собственного существования. Все ради того, чтобы увидеть собственную гибель. Он хочет показать мне свое прошлое и будущее..." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "HARSH_GAL_4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;FUEL&gt;пламенная галактика.&lt;&gt;
                                { "Russian", "&lt;FUEL&gt;Пламенная галактика.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "HARSH_GAL_4_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;FUEL&gt;пламенная галактика.&lt;&gt; Атлас создал симуляцию собственного мира, собственного существования. Все ради того, чтобы увидеть собственную гибель. Он хочет показать мне свое прошлое и будущее...
                                { "Russian", "&lt;FUEL&gt;Пламенная галактика.&lt;&gt; Атлас создал симуляцию собственного мира, собственного существования. Все ради того, чтобы увидеть собственную гибель. Он хочет показать мне свое прошлое и будущее..." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NORM_GAL_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;VAL_ON&gt;несовершенная галактика.&lt;&gt;
                                { "Russian", "&lt;VAL_ON&gt;Несовершенная галактика.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NORM_GAL_1_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;VAL_ON&gt;несовершенная галактика.&lt;&gt; Атлас создал симуляцию собственного мира, собственного существования. Все ради того, чтобы увидеть собственную гибель. Он хочет показать мне свое прошлое и будущее...
                                { "Russian", "&lt;VAL_ON&gt;Несовершенная галактика.&lt;&gt; Атлас создал симуляцию собственного мира, собственного существования. Все ради того, чтобы увидеть собственную гибель. Он хочет показать мне свое прошлое и будущее..." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NORM_GAL_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;VAL_ON&gt;параллельная галактика.&lt;&gt;
                                { "Russian", "&lt;VAL_ON&gt;Параллельная галактика.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NORM_GAL_2_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;VAL_ON&gt;параллельная галактика.&lt;&gt; Атлас создал симуляцию собственного мира, собственного существования. Все ради того, чтобы увидеть собственную гибель. Он хочет показать мне свое прошлое и будущее...
                                { "Russian", "&lt;VAL_ON&gt;Параллельная галактика.&lt;&gt; Атлас создал симуляцию собственного мира, собственного существования. Все ради того, чтобы увидеть собственную гибель. Он хочет показать мне свое прошлое и будущее..." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NORM_GAL_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;VAL_ON&gt;улучшенная галактика.&lt;&gt;
                                { "Russian", "&lt;VAL_ON&gt;Улучшенная галактика.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NORM_GAL_3_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;VAL_ON&gt;улучшеная галактика.&lt;&gt; Атлас создал симуляцию собственного мира, собственного существования. Все ради того, чтобы увидеть собственную гибель. Он хочет показать мне свое прошлое и будущее...
                                { "Russian", "&lt;VAL_ON&gt;Улучшенная галактика.&lt;&gt; Атлас создал симуляцию собственного мира, собственного существования. Все ради того, чтобы увидеть собственную гибель. Он хочет показать мне свое прошлое и будущее..." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NORM_GAL_4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;VAL_ON&gt;перестроеная галактика.&lt;&gt;
                                { "Russian", "&lt;VAL_ON&gt;Перестроенная галактика.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NORM_GAL_4_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;VAL_ON&gt;перестроенная галактика.&lt;&gt; Атлас создал симуляцию собственного мира, собственного существования. Все ради того, чтобы увидеть собственную гибель. Он хочет показать мне свое прошлое и будущее...
                                { "Russian", "&lt;VAL_ON&gt;Перестроенная галактика.&lt;&gt; Атлас создал симуляцию собственного мира, собственного существования. Все ради того, чтобы увидеть собственную гибель. Он хочет показать мне свое прошлое и будущее..." },
                            }
                        },
                        -- не отображается последнее предложение после "И я ..."
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NPC_CORE_ACT3_8G_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Он говорит. Я понимаю.&#xA;&#xA;Я могу отдать Атласу команду начать сброс. Это уже происходило, и это ничего не смогло изменить. Так или иначе, Атласу осталось жить 16 минут.&#xA;&#xA;Не знаю, буду ли я что-нибудь помнить после. Мое пробуждение возле звездолета... Возможно, незадолго до этого мне пришлось принять это решение? Сбросить все параметры? Возможно, это пришлось сделать кому-то другому?&#xA;&#xA;Конец приближается. Возможно, осталось только познать последнюю истину этой симуляции. Понять, кто такие Странники. А потом... Тысячи галактик исчезнут. Но появятся тысячи новых. И я смогу бесконечно их исследовать.
                                { "Russian", "Он говорит. Я понимаю.&#xA;&#xA;Я могу отдать Атласу команду начать сброс. Это уже происходило, и это ничего не изменило. Так или иначе, Атласу осталось жить 16 минут.&#xA;&#xA;Не знаю, буду ли я что-нибудь помнить после... Возможно, незадолго до этого мне пришлось принять это решение? Сбросить все параметры? Возможно, это пришлось сделать кому-то другому?&#xA;&#xA;Конец приближается. Возможно, осталось только познать последнюю истину этой симуляции. Понять, кто такие Странники. А потом... Тысячи галактик исчезнут. Но появятся тысячи новых.&#xA;&#xA;И я смогу бесконечно их исследовать." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NPC_CORE_ACT1_4E_LANG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Большая часть моего снаряжения повреждена. Я в полном одиночестве, без транспорта, на забывшей о солнце планете. Я даже не знаю, как до меня доходит твой сигнал. Но тот корабль, что тебе удалось найти... когда-то он принадлежал мне. Возможно, надежда еще есть.&#xA;&#xA;Нужно понять, где мы находимся. Если создашь &lt;TECHNOLOGY&gt;усилители сигнала&lt;&gt; в этой системе, мы сможем зафиксировать твое местоположение. Я смогу... &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt; кзззкт...&lt;&gt;&lt;DELAY&gt;0.8&lt;&gt; выбраться отсюда, и ты получишь ответы, которые ищешь.
                                { "Russian", "Большая часть моего снаряжения повреждена. Я в полном одиночестве, без транспорта, на забывшей о солнце планете. Я даже не знаю, как до меня доходит твой сигнал.&#xA;&#xA;Но тот корабль, что тебе удалось найти... когда-то он принадлежал мне. Возможно, надежда еще есть.&#xA;&#xA;Нужно понять, где мы находимся. Если создашь &lt;TECHNOLOGY&gt;усилители сигнала&lt;&gt; в этой системе, мы сможем зафиксировать твое местоположение. Я смогу... &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt; кзззкт...&lt;&gt;&lt;DELAY&gt;0.8&lt;&gt; выбраться отсюда, и ты получишь ответы, которые ищешь." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NPC_CORE_ACT1_4A_LANG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Прости, но здесь трудно соображать. Что-то не так с...&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;кзззккт...&lt;&gt;&#xA;&#xA;Иногда проще создать новую реальность. Мне казалось, что ты — плод моих фантазий. Прости. Я не упомню, когда приходилось слышать чужой голос. Особенно с тех пор, как мне пришлось вырвать динамик из своего экзокостюма.&lt;DELAY&gt;0.6&lt;&gt; Сколько страшного мне довелось услышать...
                                { "Russian", "Прости, но здесь трудно соображать. Что-то не так с...&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;кзззккт...&lt;&gt;&#xA;&#xA;Иногда проще создать новую реальность. Мне казалось, что ты — плод моих фантазий.&#xA;&#xA;Прости. Я не упомню, когда приходилось слышать чужой голос. Особенно с тех пор, как мне пришлось вырвать динамик из своего экзокостюма.&lt;DELAY&gt;0.6&lt;&gt; Сколько страшного мне довелось услышать..." },
                            }
                        },
                        -- обрезается на "Так или иначе, мы быстро найд"
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NPC_CORE_ACT1_10C_LANG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Итак. Для начала разберем теорию о том, что стражи для перемещения используют «порталы». Как они их активируют? Нужно понаблюдать. Нужно вызвать их.&#xA;&#xA;И лучший способ это сделать — атаковать &lt;TRANS_EXP&gt;тайную фабрику корваксов&lt;&gt;. И те, и другие — кибернетические формы жизни. У них слишком много общего. Я не верю, что это просто совпадение.&#xA;&#xA;Проникни на фабрику и взломай терминал. Если добудем данные на стражей? Хорошо. Если нет, то их, в любом случае, будет достаточно много, чтобы мы смогли отследить любые скачки энергии на твоей планете. Так или иначе, мы быстро найдем портал.
                                { "Russian", "Итак. Для начала разберем теорию о том, что стражи для перемещения используют «порталы». Как они их активируют? Нужно понаблюдать. Нужно вызвать их.&#xA;&#xA;И лучший способ это сделать — атаковать &lt;TRANS_EXP&gt;тайную фабрику корваксов&lt;&gt;. И те, и другие — кибернетические формы жизни. У них слишком много общего. Я не верю, что это просто совпадение.&#xA;&#xA;Проникни на фабрику и взломай терминал. Если добудем данные на стражей? Хорошо. Если нет, то их, в любом случае, будет достаточно много, чтобы мы смогли отследить любые скачки энергии на твоей планете и найти портал." },
                            }
                        },
                        -- обрезается после "Технику нужны только"
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NPC_EXO_BRIEF_MAIN_DESC_12" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Для улучшения &lt;TECHNOLOGY&gt;радара вездехода&lt;&gt; технику необходимо больше &lt;SPECIAL&gt;скоплений нанитов&lt;&gt;. &#xD;&#xA;&#xD;&#xA;Но что-то не так. Какое-то время назад мне довелось увидеть вай'кина со снимком его семьи. Это было еще до того, как он провел загадочный ритуал, освободивший его разум от всех привязанностей. Подходя к нему сейчас, я вижу то же самое изображение. &#xD;&#xA;&#xD;&#xA;Техник смотрит на него в течение нескольких секунд отсутствующим взглядом. Когда он замечает меня, фотография пропадает с дисплея. &#xD;&#xA;&#xD;&#xA;Мы не будем об этом говорить. Я не хочу вновь пробуждать его боль. Технику нужны только &lt;SPECIAL&gt;скопления нанитов&lt;&gt;. Мое сочувствие ему неприятно.
                                -- The technician requires more &lt;SPECIAL&gt;Nanite Clusters&lt;&gt; to create an upgrade for my &lt;TECHNOLOGY&gt;Exocraft Radar&lt;&gt;. &#xA;&#xA;Something is wrong. Some time ago I saw the Vy'keen with an image of their family, before they performed some ritual to erase such attachments from their mind. As I approach now, I see that same image. &#xA;&#xA;The technician stares at it, blinking for a few moments with an empty expression. When they notice me, they remove the photograph from the display. &#xA;&#xA;We do not speak of it again. I do not wish to awaken their pain. They desire only &lt;SPECIAL&gt;Nanite Clusters&lt;&gt;, not my sympathy.
                                { "Russian", "Для улучшения &lt;TECHNOLOGY&gt;радара вездехода&lt;&gt; технику необходимо больше &lt;SPECIAL&gt;скоплений нанитов&lt;&gt;.&#xA;&#xA;Но что-то не так. Какое-то время назад мне довелось увидеть вай'кина со снимком его семьи. Это было еще до того, как он провел загадочный ритуал, освободивший его разум от всех привязанностей. Подойдя к нему сейчас, я вижу то же самое изображение.&#xA;&#xA;Техник смотрит на него без эмоций несколько секунд. Когда он замечает меня, фотография пропадает с дисплея.&#xA;&#xA;Мы не будем об этом говорить. Я не хочу вновь пробуждать его боль. Ему нужны наниты, а не симпатии." },
                            }
                        },
                        --
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NPC_FARMER_BRIEF_MAIN_LANG_8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Повсюду столько жизни — во льдах и в огне, в условиях ядерной зимы и в ядовитых пустошах... Думаю, ты уже понимаешь, что безжизненных планет просто не бывает, друг мой. Жизнь есть всегда, даже если на первый взгляд ее трудно заметить.&#xD;&#xA;&#xD;&#xA;Взгляни, скажем, на &lt;TRADEABLE&gt;эхинокактус&lt;&gt;. Они встречаются на пустынных планетах и долго ждут своего шанса расцвести. Представь, каким станет это растение в более благоприятных условиях!
                                { "Russian", "Повсюду столько жизни — во льдах и в огне, в условиях ядерной зимы и в ядовитых пустошах...&#xA;&#xA;Думаю, ты уже понимаешь, что безжизненных планет просто не бывает, друг мой. Жизнь есть всегда, даже если на первый взгляд ее трудно заметить.&#xA;&#xA;Взгляни, скажем, на &lt;TRADEABLE&gt;эхинокактус&lt;&gt;. Они встречаются на пустынных планетах и долго ждут своего шанса расцвести. Представь, каким станет это растение в более благоприятных условиях!" },
                            }
                        },
                        -- перенос строки для красоты
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NPC_CORE_ACT2_21D_LANG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вот все, что я знаю. В распоряжении Атласа бесконечность, но с каждым циклом — за небольшим исключением — мы наблюдаем одну и ту же картину, одну и ту же троицу... Геки, корваксы, вай’кины. Геки, корваксы, вай’кины. Торговцы, воины, ученые, и каждый раз их история заканчивается насилием.&#xA;&#xA;Подумай об этом. Как Атлас обратится к нам, каким будет его крик о помощи? Он использует единственный язык, который знает. Язык самой жизни. Он будет творить.&#xA;&#xA;Что бы ни делали эти существа, результат остается неизменным — конфликт. Я думаю, с Атласом происходит что-то ужасное. Он кричит единственным известным ему способом.
                                { "Russian", "Вот все, что я знаю.&#xA;&#xA;В распоряжении Атласа бесконечность, но с каждым циклом — за небольшим исключением — мы наблюдаем одну и ту же картину, одну и ту же троицу... Геки, корваксы, вай’кины. Геки, корваксы, вай’кины. Торговцы, воины, учёные, и каждый раз их история заканчивается насилием.&#xA;&#xA;Подумай об этом. Как Атлас обратится к нам, каким будет его крик о помощи? Он использует единственный язык, который знает. Язык самой жизни. Он будет творить.&#xA;&#xA;Что бы ни делали эти существа, результат остается неизменным — конфликт. Я думаю, с Атласом происходит что-то ужасное. Он кричит единственным известным ему способом." },
                            }
                        },
                        -- обрезается после "им не было числа, и в"
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NPC_CORE_ACT2_21B_LANG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Мне выпало странствовать, посещать новые миры, давать им имена, регистрировать их в базе данных, открывать новые виды животных и растений. Небо... оно принадлежало мне.&#xA;&#xA;Но Атлас сказал, что мне не суждено увидеть всю вселенную. Что она слишком велика. Мне пришлось сделать то, что сделано. Выжить пред лицом бесконечности. Посетить каждую планету в своей вселенной.&#xA;И вернуться к Атласу... Рассказать ему о моих поступках. Помню свой вопрос о том, гордится ли он мной.&#xA;&#xA;Он... Он посмеялся надо мной... Без сомнения. Он показал мне другие вселенные — им не было числа, и в каждой был свой Странник, такой же, как я. Во мне не было ничего особенного. Не был уникальности.&#xA;Все мои поступки... все свершения... не имели значения.
                                { "Russian", "Я странствовал, посещал миры, давал им имена, регистрировал животных и растений.&#xA;&#xA;Но Атлас сказал, что мне не суждено увидеть всю вселенную — она слишком велика. И мне пришлось сделать то, что сделано. Посетить каждую планету в своей вселенной.&#xA;Я вернулся к Атласу... Рассказал ему о моих поступках и спросил, гордится ли он мной.&#xA;&#xA;Он... Он посмеялся надо мной... Без сомнения. Он показал мне другие вселенные — им не было числа, и в каждой был свой Странник, такой же, как я. Во мне не было ничего особенного. &#xA;Все мои поступки... свершения... не имели значения." },
                            }
                        },
                        -- обрезается после "Стражи могут свободно перемещаться м"
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NPC_CORE_ACT2_15A_LANG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Думаешь, я не знаю, кто тот корвакс? Странник, ни к чему быть таким наивным. Думаешь, найденные тобой записи удивляют меня?&#xA;&#xA;Но мне нужно было подтвердить свои подозрения. Теперь я это знаю наверняка. &lt;DELAY&gt;1&lt;&gt; Атлас с тобой. Этого не увидеть, если самому не захотеть.&#xA;&#xA;Тот грузовой корабль прибыл из другой вселенной. В нашей мультивселенной бесчисленное множество таких мест. Измерений, где одни и те же события развивались по-разному... но есть три исключения.&#xA;&#xA;В каждом из них существует Атлас — единое создание с единым разумом. Стражи могут свободно перемещаться между измерениями.
                                { "Russian", "Думаешь, я не знаю, кто тот корвакс? Странник, ни к чему быть таким наивным.&#xA;&#xA;Мне нужно было подтвердить свои подозрения. Теперь я это знаю наверняка. &lt;DELAY&gt;1&lt;&gt; Атлас с тобой. Ты бы этого не узнал, если бы он не захотел этого.&#xA;&#xA;Тот грузовой корабль прибыл из параллельной вселенной. В нашей мультивселенной бесчисленное множество таких мест. Измерений, где одни и те же события развивались по-разному... но есть три исключения.&#xA;&#xA;В каждом из них существует Атлас — единое создание с единым разумом. Стражи могут свободно перемещаться между измерениями." },
                            }
                        },
                        -- обрезается после "рассказывающие о мирах, которых не существует, о"
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NPC_CORE_ACT2_13_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Предположение -пусто- оказалось верным. Терминал заманчиво открыт, запись можно прочитать...&#xA;&#xA;Похоже, обсерватория работает как спасательная станция, и руководит ей один гек-специалист. Этот переводчик был наказан за то, что начал совать свой клюв не в свое дело, задавать лишние вопросы и проявлять инакомыслие... Назначение на эту станцию должно было стать его наказанием.&#xA;&#xA;Но складывается впечатление, что он сам хотел сюда попасть. В обломках он находил странные и необъяснимые вещи... аномалии, данные, рассказывающие о мирах, которых не существует, о событиях, которых не происходило.&#xA;Тот гек отправился лично исследовать одно такое судно, на борту которого сканеры засекли живого корвакса. Назад специалист так и не вернулся.&#xA;&#xA;Так Нада и Поло познакомились? Так мои друзья нашли друг друга? На консоли осталось одно повторяющееся сообщение — шестнадцать коротких сигналов, повторяющихся бесконечно.
                                { "Russian", "-пусто- оказался прав. Доступ к терминалу открыт...&#xA;&#xA;Обсерватория работала как спасательная станция и руководил ей гек-специалист. Назначение на эту станцию должно было стать его наказанием за инакомыслие.&#xA;&#xA;Но кажется, что он сам хотел сюда попасть. Однажды этот гек отправился лично исследовать место кораблекрушения, на борту которого сканеры засекли живого корвакса. Назад он не вернулся.&#xA;&#xA;Так мои друзья Нада и Поло познакомились? На консоли осталось одно повторяющееся сообщение — шестнадцать коротких сигналов, повторяющихся бесконечно." },
                            }
                        },
                        -- обрезается после "Атлас... не то, чем он кажется. Со вселе"
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NPC_CORE_ACT2_11_LANG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Две заблудшие души... Одна изо всех сил пытался найти ответы, другой было все равно. Жизнь оказалось не такой, как им обещали.&#xA;&#xA;В какой-то момент своей жизни каждое разумное существо испытывает нечто подобное. Так же когда-то было и со мной. Я помню злость, растерянность и чувство одиночества.  Представь мое удивление, когда твои действия пробудили меня.&#xA;&#xA;О, я понимаю, что это не входило в твои намерения... Я понимаю, что тебе просто захотелось поиграть с порталами. Но, как бы то ни было, теперь я здесь, и мне нужна твоя помощь.&#xA;&#xA;Атлас... не то, чем он кажется. Со вселенной что-то происходит... Надо выяснить, что именно.
                                { "Russian", "Две заблудшие души... Одна изо всех сил пытался найти ответы, другой было все равно. Жизнь оказалось не такой, как им обещали.&#xA;&#xA;В какой-то момент своей жизни каждое разумное существо испытывает нечто подобное. Так же когда-то было и со мной. Я помню злость, растерянность и чувство одиночества.  Представь мое удивление, когда твои действия пробудили меня.&#xA;&#xA;О, я понимаю, что это не входило в твои намерения... Но, как бы то ни было, теперь я здесь, и мне нужна твоя помощь.&#xA;&#xA;Атлас... не то, чем он кажется. Со вселенной что-то происходит... Надо выяснить, что именно." },
                            }
                        },
                        -- переносим строку для красоты
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NPC_SCI_FINAL_LANG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Прости за такие вопросы, существо, но... Не были ли мы с тобой когда-то знакомы? Мне кажется, что я где-то тебя видел. Эти терминалы явно разработаны мной лично. Один из них даже назвал меня своим отцом и признавался в любви.&#xD;&#xA;Эхеу! Разумеется, я удалил этот вирус. У меня все-таки серьезная база. В библиотеке этого терминала хранилась пара чертежей. Может, они тебе пригодятся?
                                { "Russian", "Прости за такие вопросы, существо, но... Не были ли мы с тобой когда-то знакомы? Мне кажется, что я где-то тебя видел.&#xA;Эти терминалы явно разработаны мной лично. Один из них даже назвал меня своим отцом и признавался в любви.&#xA;Эхеу! Разумеется, я удалил этот вирус. У меня все-таки серьезная база. В библиотеке этого терминала хранилась пара чертежей. Может, они тебе пригодятся?" },
                            }
                        },
                        --
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NPC_CORE_ACT1_4B_RES" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Я не получаю словесного ответа.&lt;AUDIO&gt;MUS_StoryMode_MusicCue_10_Lp&lt;&gt;&lt;DELAY&gt;1.1&lt;&gt;Мне передают образ — &lt;DELAY&gt;0.5&lt;&gt;красную звезду и хрупкую на вид планету. Внутри я вижу какие-то формы и слышу голоса, которые не могу понять...&#xA;&#xA;Я вижу живых существ, населяющих все, даже самые дальние уголки галактики. Я вижу первый вдох незнакомки, чувствую стремление к звездам. Я вижу себя и понимаю, что сплю в алой пустоте в ожидании сна о далеких мирах.&#xA;&#xA;Сквозь тьму я слышу голос...
                                { "Russian", "Я не получаю словесного ответа. &lt;AUDIO&gt;MUS_StoryMode_MusicCue_10_Lp&lt;&gt;&lt;DELAY&gt;1.1&lt;&gt;Мне передают образ — &lt;DELAY&gt;0.5&lt;&gt;красную звезду и хрупкую на вид планету. Внутри я вижу какие-то формы и слышу голоса, которые не могу понять...&#xA;&#xA;Я вижу живых существ, населяющих все, даже самые дальние уголки галактики. Я вижу первый вдох незнакомки, чувствую стремление к звездам. Я вижу себя и понимаю, что сплю в алой пустоте в ожидании сна о далеких мирах.&#xA;&#xA;Сквозь тьму я слышу голос..." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NPC_CORE_ACT1_4D_LANG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;AUDIO&gt;Portal_Jump_Story_End&lt;&gt;То, что ты видишь...преследует меня с момента пробуждения. Полагаю, тебе это тоже знакомо?&#xA;&#xA;Мы — Странники, открыватели миров. С тех пор как твои глаза впервые открылись, ты чувствуешь, что отличаешься от других. Как чувствую это и я.&#xA;&#xA;Я здесь и нахожусь из-за поисков &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;кзззттт...&lt;&gt;&lt;DELAY&gt;0.8&lt;&gt; наконец-то встретиться. То, что тебе удалось поймать этот сигнал, не может быть простым совпадением... Скажи, у тебя еще остался журнал данных с того разбитого корабля?
                                { "Russian", "&lt;AUDIO&gt;Portal_Jump_Story_End&lt;&gt;То, что ты видишь... преследует меня с момента пробуждения. Полагаю, тебе это тоже знакомо?&#xA;&#xA;Мы — Странники, открыватели миров. С тех пор как твои глаза впервые открылись, ты чувствуешь, что отличаешься от других. Как чувствую это и я.&#xA;&#xA;Я здесь и нахожусь из-за поисков &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;кзззттт...&lt;&gt;&lt;DELAY&gt;0.8&lt;&gt; наконец-то встретиться. То, что тебе удалось поймать этот сигнал, не может быть простым совпадением... Скажи, у тебя еще остался журнал данных с того разбитого корабля?" },
                            }
                        },
                        -- "Дальше": не ясно зачем так перевели, особого смысла как в ориганале это не придает.
                        -- Дословно конечно: Ваша судьба ждет вас Впаереди. Но так тоже никакой смысловой нагрузки.
                        -- Можно капсом ВПЕРЕДИ (у-у-ууу, впереди, уууу). Но это зашквар.
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "U3_NOTIFY_FINAL_GOMAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Судьба ведет вас Дальше&#xA;Нажмите &lt;IMG&gt;QUICK_MENU&lt;&gt;, чтобы открыть галактическую карту
                                -- Your Destiny lies in the Beyond&#xA;Press &lt;IMG&gt;QUICK_MENU&lt;&gt; to open Galactic Map
                                { "Russian", "Судьба ведет вас дальше&#xA;Нажмите &lt;IMG&gt;QUICK_MENU&lt;&gt;, чтобы открыть галактическую карту" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TUTORIAL_ANTIMATTER_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Терминал наполнен неприятной п&lt;DELAY&gt;0.1&lt;&gt;у&lt;DELAY&gt;0.1&lt;&gt;л&lt;DELAY&gt;0.1&lt;&gt;ь&lt;DELAY&gt;0.1&lt;&gt;с&lt;DELAY&gt;0.1&lt;&gt;ирующей слизью Тем не менее, судя по всему, он исправен. Но стоит мне коснуться панели, как эта субстанция резко дергается.&lt;DELAY&gt;0.4&lt;&gt;Я понимаю, что терминал лучше не трогать.&#xA;Панель поднимается, и я вижу одинокое, немигающее алое око.&lt;AUDIO&gt;UI_Destination_Reached&lt;&gt;.&lt;DELAY&gt;0.4&lt;&gt; Оно распечатывает &lt;TECHNOLOGY&gt;чертеж&lt;&gt; для &lt;FUEL&gt;антиматерии&lt;&gt; и странное сообщение...
                                { "Russian", "Терминал наполнен неприятной п&lt;DELAY&gt;0.1&lt;&gt;у&lt;DELAY&gt;0.1&lt;&gt;л&lt;DELAY&gt;0.1&lt;&gt;ь&lt;DELAY&gt;0.1&lt;&gt;с&lt;DELAY&gt;0.1&lt;&gt;ирующей слизью. Тем не менее, судя по всему, он исправен. Но стоит мне коснуться панели, как эта субстанция резко дергается.&lt;DELAY&gt;0.4&lt;&gt; Я понимаю, что терминал лучше не трогать.&#xA;Панель поднимается, и я вижу одинокое, немигающее алое око.&lt;AUDIO&gt;UI_Destination_Reached&lt;&gt;.&lt;DELAY&gt;0.4&lt;&gt; Оно распечатывает &lt;TECHNOLOGY&gt;чертеж&lt;&gt; для &lt;FUEL&gt;антиматерии&lt;&gt; и странное сообщение..." },
                            }
                        },
                        -- вопрос может быть задан как Артемиде, так и Аполлону
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NPC_CORE_ACT1_3B_OPT_A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Спросить собеседника, где он
                                { "Russian", "Где вы находитесь?" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NPC_CORE_ACT1_3B_RES" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- В глазах незнакомца — страх и смятение. Спустя несколько мгновений он обращается ко мне...
                                { "Russian", "В глазах незнакомки — страх и смятение. Спустя несколько мгновений она обращается ко мне..." },
                            }
                        },
                        -- меняем Datestamp на Дата
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "LOST_FREIGHTER_DESC_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Datestamp &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE1%&lt;&gt; :: Жизнь продолжается. День за днем, доставка за... &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;кзззкт&lt;&gt; Я надеюсь скоро попасть домой. Жить как... &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;кзззкт&lt;&gt; — не для меня.&#xA;&#xA;Datestamp &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE2%&lt;&gt; :: Обнаружено множество сигналов стражей, срочно требуется... &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;кзззкт&lt;&gt; Выход из варпа, они... тут... Стражи... &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;кзззкт&lt;&gt;. Что они делают?&#xA;&#xA;Datestamp &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE3%&lt;&gt; :: Они сражаются друг с другом, корабли стражей атакуют друг друга... &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;кззкт&lt;&gt;. Пока что игнорируют нас...&#xA;&#xA;Datestamp &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE4%&lt;&gt; :: Стражи ушли. Они... &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;кззкктз&lt;&gt;...Поблизости сигнал бедствия... &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;кзкт&lt;&gt;. По кругу транслирует слово «шестнадцать».&lt;NEWLINE&gt;Посмотрю, что там...
                                { "Russian", "Дата &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE1%&lt;&gt; :: Жизнь продолжается. День за днем, доставка за... &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;кзззкт&lt;&gt; Я надеюсь скоро попасть домой. Жить как... &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;кзззкт&lt;&gt; — не для меня.&#xA;&#xA;Дата &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE2%&lt;&gt; :: Обнаружено множество сигналов стражей, срочно требуется... &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;кзззкт&lt;&gt; Выход из варпа, они... тут... Стражи... &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;кзззкт&lt;&gt;. Что они делают?&#xA;&#xA;Дата &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE3%&lt;&gt; :: Они сражаются друг с другом, корабли стражей атакуют друг друга... &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;кззкт&lt;&gt;. Пока что игнорируют нас...&#xA;&#xA;Дата &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE4%&lt;&gt; :: Стражи ушли. Они... &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;кззкктз&lt;&gt;...Поблизости сигнал бедствия... &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;кзкт&lt;&gt;. По кругу транслирует слово «шестнадцать».&lt;NEWLINE&gt;Посмотрю, что там..." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "LOST_FREIGHTER_DESC_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Datestamp &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE1%&lt;&gt; :: Любовь моя. Завтра я нырну в черную дыру. Я знаю, что мы решили не... &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;кзззкт&lt;&gt; &#xA;&#xA;Datestamp &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE2%&lt;&gt; :: Они выслушали мои предостережения... &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;кззкт&lt;&gt; нецелесообразности отправки такого большого судна через разлом. Но они же гордые, тщеславные существа.&#xA;&#xA;Datestamp &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE3%&lt;&gt; :: Мы вышли в небе над... &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;кззкзкт&lt;&gt; аномалией.&#xA;Самой действительности нет здесь места. Ландшафт в прошлом гордой планеты ныне — место развлечения невидимого врага, усыпанное огромными шестиугольниками...Я боюсь, что не вернусь домой еще... &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;кзкззкт&lt;&gt; время.&#xA;&#xA;Datestamp &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE4%&lt;&gt; :: Мы пили воду.&lt;NEWLINE&gt;Любовь моя... прости меня...
                                { "Russian", "Дата &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE1%&lt;&gt; :: Любовь моя. Завтра я нырну в черную дыру. Я знаю, что мы решили не... &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;кзззкт&lt;&gt; &#xA;&#xA;Дата &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE2%&lt;&gt; :: Они выслушали мои предостережения... &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;кззкт&lt;&gt; нецелесообразности отправки такого большого судна через разлом. Но они же гордые, тщеславные существа.&#xA;&#xA;Дата &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE3%&lt;&gt; :: Мы вышли в небе над... &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;кззкзкт&lt;&gt; аномалией.&#xA;Самой действительности нет здесь места. Ландшафт в прошлом гордой планеты ныне — место развлечения невидимого врага, усыпанное огромными шестиугольниками...Я боюсь, что не вернусь домой еще... &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;кзкззкт&lt;&gt; время.&#xA;&#xA;Дата &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE4%&lt;&gt; :: Мы пили воду.&lt;NEWLINE&gt;Любовь моя... прости меня..." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "LOST_FREIGHTER_DESC_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Datestamp &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE1%&lt;&gt; :: Мне это не нравится. Мы должны везти гека на борту? Обеспечить ему безопасное странствие меж звезд? Я отправляю жалобу. Лучше нам... &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;кззкт&lt;&gt; &#xA;&#xA;Datestamp &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE2%&lt;&gt; :: Мы обнаружили останки экспедиционных войск вай'кинов. Их корабли уничтожены, среди астероидов болтаются куски тел и металла.&#xA;Стражи сканируют обломки. Мы быстро покинули это место.&#xA;&#xA;Datestamp &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE3%&lt;&gt; :: Я отказываюсь вести команду дальше. Тебе следовало объяснить, зачем мы это делаем. Зачем... &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;кззкт&lt;&gt; &#xA;&#xA;Datestamp &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE4%&lt;&gt; :: Надежды нет, так?
                                { "Russian", "Дата &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE1%&lt;&gt; :: Мне это не нравится. Мы должны везти гека на борту? Обеспечить ему безопасное странствие меж звезд? Я отправляю жалобу. Лучше нам... &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;кззкт&lt;&gt; &#xA;&#xA;Дата &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE2%&lt;&gt; :: Мы обнаружили останки экспедиционных войск вай'кинов. Их корабли уничтожены, среди астероидов болтаются куски тел и металла.&#xA;Стражи сканируют обломки. Мы быстро покинули это место.&#xA;&#xA;Дата &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE3%&lt;&gt; :: Я отказываюсь вести команду дальше. Тебе следовало объяснить, зачем мы это делаем. Зачем... &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;кззкт&lt;&gt; &#xA;&#xA;Дата &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE4%&lt;&gt; :: Надежды нет, так?" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "LOST_FREIGHTER_DESC_4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Datestamp &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE1%&lt;&gt; :: Эти корваксы — просто нечто, не правда ли? Мы пытались... &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;кззкт&lt;&gt; Как оно работало? В чем был смысл? Оно просто... &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;кззкт&lt;&gt; смотрело на нас...&#xA;&#xA;Datestamp &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE4%&lt;&gt; :: Мы хорошо заработали в последнем порту. Мы спросили корвакса, как поступить с его долей. Он заговорил впервые с тех пор как взошел на борт. Он сказал... &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;кззкт&lt;&gt; &#xA;&#xA;Datestamp &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE5%&lt;&gt; :: Корвакс показал мне секрет. Осталось немного. Мы должны двигаться к центру. Мы должны... &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt; кззкт&lt;&gt;
                                { "Russian", "Дата &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE1%&lt;&gt; :: Эти корваксы — просто нечто, не правда ли? Мы пытались... &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;кззкт&lt;&gt; Как оно работало? В чем был смысл? Оно просто... &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;кззкт&lt;&gt; смотрело на нас...&#xA;&#xA;Дата &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE4%&lt;&gt; :: Мы хорошо заработали в последнем порту. Мы спросили корвакса, как поступить с его долей. Он заговорил впервые с тех пор как взошел на борт. Он сказал... &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;кззкт&lt;&gt; &#xA;&#xA;Дата &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE5%&lt;&gt; :: Корвакс показал мне секрет. Осталось немного. Мы должны двигаться к центру. Мы должны... &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt; кззкт&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "LOST_FREIGHTER_DESC_5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Datestamp &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE1%&lt;&gt; :: Мы приближаемся к временной аномалии. Признаюсь, меня охватывает возбуждение. Возможно, никто до меня... &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;кззкт&lt;&gt;...&#xA;&#xA;Datestamp &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE2%&lt;&gt; :: У этой системы невозможные свойства. Вчера вечером звук какое-то время был быстрее света.&#xA;&#xA;Datestamp &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE3%&lt;&gt; :: Я попросил у них прощения, но они обозвали меня дураком. Сказали, что я — хороший капитан. Мы пили допоздна в... &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;кззкт&lt;&gt; &#xA;&#xA;Datestamp &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE4%&lt;&gt; :: В одно мгновение наши приборы уничтожены. В следующее они работают за пределами исходных возможностей. &#xA;&#xA;И это так прекрасно, что я не могу спать...&#xA;&#xA;Звезды... Сейчас их шестнадцать, сейчас... &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;кззкт&lt;&gt; Я приближаюсь к...
                                { "Russian", "Дата &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE1%&lt;&gt; :: Мы приближаемся к временной аномалии. Признаюсь, меня охватывает возбуждение. Возможно, никто до меня... &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;кззкт&lt;&gt;...&#xA;&#xA;Дата &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE2%&lt;&gt; :: У этой системы невозможные свойства. Вчера вечером звук какое-то время был быстрее света.&#xA;&#xA;Дата &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE3%&lt;&gt; :: Я попросил у них прощения, но они обозвали меня дураком. Сказали, что я — хороший капитан. Мы пили допоздна в... &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;кззкт&lt;&gt; &#xA;&#xA;Дата &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE4%&lt;&gt; :: В одно мгновение наши приборы уничтожены. В следующее они работают за пределами исходных возможностей. &#xA;&#xA;И это так прекрасно, что я не могу спать...&#xA;&#xA;Звезды... Сейчас их шестнадцать, сейчас... &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;кззкт&lt;&gt; Я приближаюсь к..." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "LOST_FREIGHTER_DESC_6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Datestamp &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE1%&lt;&gt; :: Мы разбились. Крушение было куда спокойнее, чем можно было ожидать. Тренировки прошли не зря: команда держалась спокойно... &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;кзкзкт&lt;&gt; &#xA;&#xA;Двенадцать погибших. Мы их не забудем.&#xA;&#xA;Datestamp &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE2%&lt;&gt; :: У нас заканчивается еда. Когда мы пытаемся отправиться на поиски, пытаемся бороться за выживание — объявляются стражи, чтобы помешать нам. Нам нужно покинуть эту планету...&#xA;&#xA;Datestamp &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE3%&lt;&gt; :: Мы спрячемся под землей и будем ждать спасения. Я буду поддерживать связь с кораблем.&#xA;&#xA;Datestamp &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE4%&lt;&gt; :: Они мертвы... &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;кззкт&lt;&gt;... &#xA;&#xA;Datestamp &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE5%&lt;&gt; :: уже не голодны, уже не... &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;кззккт&lt;&gt;... &#xA;&#xA;Что мы наделали?
                                { "Russian", "Дата &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE1%&lt;&gt; :: Мы разбились. Крушение было куда спокойнее, чем можно было ожидать. Тренировки прошли не зря: команда держалась спокойно... &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;кзкзкт&lt;&gt; &#xA;&#xA;Двенадцать погибших. Мы их не забудем.&#xA;&#xA;Дата &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE2%&lt;&gt; :: У нас заканчивается еда. Когда мы пытаемся отправиться на поиски, пытаемся бороться за выживание — объявляются стражи, чтобы помешать нам. Нам нужно покинуть эту планету...&#xA;&#xA;Дата &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE3%&lt;&gt; :: Мы спрячемся под землей и будем ждать спасения. Я буду поддерживать связь с кораблем.&#xA;&#xA;Дата &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE4%&lt;&gt; :: Они мертвы... &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;кззкт&lt;&gt;... &#xA;&#xA;Дата &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE5%&lt;&gt; :: уже не голодны, уже не... &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;кззккт&lt;&gt;... &#xA;&#xA;Что мы наделали?" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "LOST_FREIGHTER_DESC_7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Datestamp &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE1%&lt;&gt; :: Мне уже известны слухи. Так называемые «Странники-аномалии» — различные существа, преследующие различные цели. Когда их корабль приблизился, мы взялись за оружие. Они... &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;кззкт&lt;&gt;...&#xA;&#xA;Тот, что был перед нами, умолял о мире. Похоже, они были биомеханическими. По крайней мере, частично. Мы сбили их корабль.&#xA;&#xA;Datestamp &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE2%&lt;&gt; :: Зонды обнаружили тело. Если точнее, фрагменты ДНК и кода. Как говорят исследователи, для них это почти одно и то же. Признаюсь, меня охватывает сильное возбуждение. Но это... &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;кзкзкт&lt;&gt;...&#xA;&#xA;Datestamp &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE4%&lt;&gt; :: Мы должны понять, что происходит с нашими мирами. Это подтверждают визуальные данные. Тот, кого мы расстреляли две недели назад, стоит перед нами.&#xA;&#xA;Эти существа восстанавливаются после смерти, как и предполагал император. Ну что ж... Это возможность заполучить дополнительные образцы. Я приказываю умертвить его снова.
                                { "Russian", "Дата &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE1%&lt;&gt; :: Мне уже известны слухи. Так называемые «Странники-аномалии» — различные существа, преследующие различные цели. Когда их корабль приблизился, мы взялись за оружие. Они... &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;кззкт&lt;&gt;...&#xA;&#xA;Тот, что был перед нами, умолял о мире. Похоже, они были биомеханическими. По крайней мере, частично. Мы сбили их корабль.&#xA;&#xA;Дата &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE2%&lt;&gt; :: Зонды обнаружили тело. Если точнее, фрагменты ДНК и кода. Как говорят исследователи, для них это почти одно и то же. Признаюсь, меня охватывает сильное возбуждение. Но это... &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;кзкзкт&lt;&gt;...&#xA;&#xA;Дата &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE4%&lt;&gt; :: Мы должны понять, что происходит с нашими мирами. Это подтверждают визуальные данные. Тот, кого мы расстреляли две недели назад, стоит перед нами.&#xA;&#xA;Эти существа восстанавливаются после смерти, как и предполагал император. Ну что ж... Это возможность заполучить дополнительные образцы. Я приказываю умертвить его снова." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "LOST_FREIGHTER_DESC_8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Datestamp &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE1%&lt;&gt; :: Пробоина испортила половину нашего груза. Теперь это надо объяснить куратору: геки не слишком любят сломанные... &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;кзззкт&lt;&gt;...&#xA;&#xA;Думаю, лучше мне рассказать обо всем лично.&#xA;&#xA;Datestamp &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE1%&lt;&gt; :: Пробоина испортила половину нашего груза. Теперь это надо... надо объяснить...&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;кззкт&lt;&gt; что это... &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;кзззкт&lt;&gt;...
                                { "Russian", "Дата &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE1%&lt;&gt; :: Пробоина испортила половину нашего груза. Теперь это надо объяснить куратору: геки не слишком любят сломанные... &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;кзззкт&lt;&gt;...&#xA;&#xA;Думаю, лучше мне рассказать обо всем лично.&#xA;&#xA;Дата &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE1%&lt;&gt; :: Пробоина испортила половину нашего груза. Теперь это надо... надо объяснить...&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;кззкт&lt;&gt; что это... &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;кзззкт&lt;&gt;..." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "LOST_FREIGHTER_DESC_9" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Datestamp &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE1%&lt;&gt; :: Вай'кины покинули Совет. Мы знали, что так будет. Осталось только два народа — геки и корваксы. И мы, я... &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;кззкт&lt;&gt;...&#xA;&#xA;Странно, но почему-то я больше доверяю честности воинов. Никому не нужен этот союз.&#xA;&#xA;Datestamp &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE2%&lt;&gt; :: Существа Нада и Поло обнаружены в соседней системе. Судя по всему, эта вселенная им не родная. Их структура предполагает возмущения границ измерений.&#xA;&#xA;Datestamp &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE3%&lt;&gt; :: За одну неделю мы прервали приход и уход не менее чем 5182 Странников. Их сила растет.&#xA;&#xA;Datestamp &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE4%&lt;&gt; :: Пространственная аномалия прямо перед нами. Это странно, но мне кажется, будто... &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;кззкт&lt;&gt; Но это невозможно, это просто дурацкая мечта. Мы можем прожить лишь одну жизнь.
                                { "Russian", "Дата &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE1%&lt;&gt; :: Вай'кины покинули Совет. Мы знали, что так будет. Осталось только два народа — геки и корваксы. И мы, я... &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;кззкт&lt;&gt;...&#xA;&#xA;Странно, но почему-то я больше доверяю честности воинов. Никому не нужен этот союз.&#xA;&#xA;Дата &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE2%&lt;&gt; :: Существа Нада и Поло обнаружены в соседней системе. Судя по всему, эта вселенная им не родная. Их структура предполагает возмущения границ измерений.&#xA;&#xA;Дата &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE3%&lt;&gt; :: За одну неделю мы прервали приход и уход не менее чем 5182 Странников. Их сила растет.&#xA;&#xA;Дата &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE4%&lt;&gt; :: Пространственная аномалия прямо перед нами. Это странно, но мне кажется, будто... &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;кззкт&lt;&gt; Но это невозможно, это просто дурацкая мечта. Мы можем прожить лишь одну жизнь." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "LOST_FREIGHTER_DESC_10" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Datestamp &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE1%&lt;&gt; :: Нам было приказано сбивать все корабли вай'кинов...&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;кззкзт&lt;&gt;. Их признали врагами Атласа, врагами Совета, врагами всего сущего...&#xA;&#xA;Datestamp &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE2%&lt;&gt; :: Нам приказали поддерживать отколовшуюся фракцию вай'кинов в надежде на то, что им удастся создать внутренние волнения и усилить раскол. Мы должны встретиться с двумя многообещающими революционерами. Этих братьев по оружию зовут Хирк и Нал.&#xA;&#xA;Datestamp &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE3%&lt;&gt; :: Кто-то читает эти сообщения.&lt;NEWLINE&gt;Кто ты?
                                { "Russian", "Дата &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE1%&lt;&gt; :: Нам было приказано сбивать все корабли вай'кинов...&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;кззкзт&lt;&gt;. Их признали врагами Атласа, врагами Совета, врагами всего сущего...&#xA;&#xA;Дата &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE2%&lt;&gt; :: Нам приказали поддерживать отколовшуюся фракцию вай'кинов в надежде на то, что им удастся создать внутренние волнения и усилить раскол. Мы должны встретиться с двумя многообещающими революционерами. Этих братьев по оружию зовут Хирк и Нал.&#xA;&#xA;Дата &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE3%&lt;&gt; :: Кто-то читает эти сообщения.&lt;NEWLINE&gt;Кто ты?" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "LOST_FREIGHTER_DESC_11" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Datestamp &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE1%&lt;&gt; :: Все началось с идеи, с симуляции... Корваксы желали узнать, что станет с вселенной в будущем. Они хотели подтвердить то, что произошло в прошлом. Мы были частью их амбициозного плана и доставляли огромные множества скоплений нанитов со всей галактики.&#xA;&#xA;Datestamp &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE2%&lt;&gt; :: Симуляция показывает моего ребенка. Он словно живой и во второй раз делает первые шаги. &#xA;&#xA;Она показывает мне его смерть. И мою.&#xA;&#xA;Я прошу корваксов прекратить. Они отказываются.&#xA;&#xA;Datestamp &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE3%&lt;&gt; :: Корваксы отключают свою машину. Эксперимент окончен. Они утверждают, что вселенная на самом деле — мультивселенная, циклическая, без начала и конца. По крайней мере, на основе текущих данных.&#xA;&#xA;В некоторых мирах могут быть корваксы. В других — нет геков.&#xA;&#xA;В третьих нас никогда не было, либо мы уничтожили свою планету задолго до того, как другие народы галактики находили нас. Мне не нравится тон объясняющего это корвакса.
                                { "Russian", "Дата &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE1%&lt;&gt; :: Все началось с идеи, с симуляции...&#xA;&#xA;Корваксы желали узнать, что станет с вселенной в будущем. Они хотели подтвердить то, что произошло в прошлом. Мы были частью их амбициозного плана и доставляли огромные множества скоплений нанитов со всей галактики.&#xA;&#xA;Дата &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE2%&lt;&gt; :: Симуляция показывает моего ребенка. Он словно живой и во второй раз делает первые шаги. &#xA;&#xA;Она показывает мне его смерть. И мою.&#xA;&#xA;Я прошу корваксов прекратить. Они отказываются.&#xA;&#xA;Дата &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE3%&lt;&gt; :: Корваксы отключают свою машину. Эксперимент окончен. Они утверждают, что вселенная на самом деле — мультивселенная, циклическая, без начала и конца. По крайней мере, на основе текущих данных.&#xA;&#xA;В некоторых мирах могут быть корваксы. В других — нет геков.&#xA;&#xA;В третьих нас никогда не было, либо мы уничтожили свою планету задолго до того, как другие народы галактики находили нас. Мне не нравится тон объясняющего это корвакса." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "LOST_FREIGHTER_DESC_12" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Datestamp &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE1%&lt;&gt; :: В команде поговаривают о бунте. Ха! Пусть попробуют. Пусть поймут, почему я занимаю этот пост и являюсь величайшим командиром, которого... &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;кззкт&lt;&gt;...&#xA;&#xA;[ РАСШИФРОВКА: НА АВТОМАТИЧЕСКОЙ ЗАПИСИ ЗВУКА СЛЫШНЫ ВЫСТРЕЛЫ И КРИКИ ]&#xA;&#xA;Datestamp &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE2%&lt;&gt; :: Мы подвесили их головы на фонари в столовой. Все их видели. Теперь все спокойны. Назад дороги нет.&#xA;&#xA;Datestamp &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE5%&lt;&gt; :: Куда же дальше? Впереди вся вселенная...
                                { "Russian", "Дата &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE1%&lt;&gt; :: В команде поговаривают о бунте. Ха! Пусть попробуют. Пусть поймут, почему я занимаю этот пост и являюсь величайшим командиром, которого... &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;кззкт&lt;&gt;...&#xA;&#xA;[ РАСШИФРОВКА: НА АВТОМАТИЧЕСКОЙ ЗАПИСИ ЗВУКА СЛЫШНЫ ВЫСТРЕЛЫ И КРИКИ ]&#xA;&#xA;Дата &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE2%&lt;&gt; :: Мы подвесили их головы на фонари в столовой. Все их видели. Теперь все спокойны. Назад дороги нет.&#xA;&#xA;Дата &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE5%&lt;&gt; :: Куда же дальше? Впереди вся вселенная..." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "LOST_FREIGHTER_DESC_13" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Datestamp &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE1%&lt;&gt; :: Я последний год летаю по этому торговому маршруту. Дома... &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;кзззкт&lt;&gt;. Дома меня ждет ребенок. По крайней мере, так мне сказали. Пришло время остепениться.&#xA;&#xA;Datestamp &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE2%&lt;&gt; :: Я смотрю на свою команду и думаю об их семьях. Геки рождаются толпами. Они знают, кто их родители, но по своей сути не могут создавать сколь-нибудь крепкие семейные узы. С самого начала их жизнь — сплошная конкуренция. Не исключено, что поэтому они и стали торговцами.&#xA;&#xA;У корваксов не бывает детей, если не брать в расчет экземпляры искусственного интеллекта, создаваемые ими в ходе экспериментов. Только семьи вай'кинов похожи на наши. Это маленькие группы из родителей и нескольких детей, которых воспитывают воинами.&#xA;&#xA;Вся наша история наполнена войной и ненавистью. Мы так похожи на вай'кинов, что иногда я смотрю на своего ребенка и думаю...&#xA;&#xA;Неважно. Вскоре я все узнаю, а пока что у меня есть дела вдали от дома.
                                { "Russian", "Дата &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE1%&lt;&gt; :: Я последний год летаю по этому торговому маршруту. Дома... &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;кзззкт&lt;&gt;. Дома меня ждет ребенок. По крайней мере, так мне сказали. Пришло время остепениться.&#xA;&#xA;Дата &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE2%&lt;&gt; :: Я смотрю на свою команду и думаю об их семьях. Геки рождаются толпами. Они знают, кто их родители, но по своей сути не могут создавать сколь-нибудь крепкие семейные узы. С самого начала их жизнь — сплошная конкуренция. Не исключено, что поэтому они и стали торговцами.&#xA;&#xA;У корваксов не бывает детей, если не брать в расчет экземпляры искусственного интеллекта, создаваемые ими в ходе экспериментов. Только семьи вай'кинов похожи на наши. Это маленькие группы из родителей и нескольких детей, которых воспитывают воинами.&#xA;&#xA;Вся наша история наполнена войной и ненавистью. Мы так похожи на вай'кинов, что иногда я смотрю на своего ребенка и думаю...&#xA;&#xA;Неважно. Вскоре я все узнаю, а пока что у меня есть дела вдали от дома." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "LOST_FREIGHTER_DESC_14" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Datestamp &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE1%&lt;&gt; :: Мы возвращаемся домой и везем с собой резервные копии отзвуков.&#xA;&#xA;Команде это не нравится. Эти души пугают их. Я говорю им, что волноваться не о чем. Те, кто достаточно богаты, чтобы пережить смерть, не думали о нас во время жизни, а теперь у нас их резервные копии.&#xA;&#xA;Теперь мы им нужны на случай, если произойдет авария или кто-то отключит центр. Интересно, кому бы такое могло прийти в голову?&#xA;&#xA;Datestamp &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE2%&lt;&gt; :: Мы первыми установили связь с корваксами. Они нашли нас и показали, что мы можем... &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;кззкт&lt;&gt;...&#xA;&#xA;Datestamp &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE3%&lt;&gt; :: У них тоже есть «отзвуки», хотя это неточный перевод. Их Единство — хранилище всех, кто когда-либо жил. Наше же — мавзолей тщеславия, памятник страху смерти и не более того...&#xA;&#xA;Datestamp &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE4%&lt;&gt; :: ... ...&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;кзззкт&lt;&gt;... ...&#xA;&#xA;...
                                { "Russian", "Дата &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE1%&lt;&gt; :: Мы возвращаемся домой и везем с собой резервные копии отзвуков.&#xA;&#xA;Команде это не нравится. Эти души пугают их. Я говорю им, что волноваться не о чем. Те, кто достаточно богаты, чтобы пережить смерть, не думали о нас во время жизни, а теперь у нас их резервные копии.&#xA;&#xA;Теперь мы им нужны на случай, если произойдет авария или кто-то отключит центр. Интересно, кому бы такое могло прийти в голову?&#xA;&#xA;Дата &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE2%&lt;&gt; :: Мы первыми установили связь с корваксами. Они нашли нас и показали, что мы можем... &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;кззкт&lt;&gt;...&#xA;&#xA;Дата &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE3%&lt;&gt; :: У них тоже есть «отзвуки», хотя это неточный перевод. Их Единство — хранилище всех, кто когда-либо жил. Наше же — мавзолей тщеславия, памятник страху смерти и не более того...&#xA;&#xA;Дата &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE4%&lt;&gt; :: ... ...&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;кзззкт&lt;&gt;... ...&#xA;&#xA;..." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "LOST_FREIGHTER_DESC_15" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Datestamp &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE1%&lt;&gt; :: Странник хотел пристыковаться без корабля. Он утверждал, что поможет нам перезапустить двигатели после... &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;кзззкт&lt;&gt;... &#xA;&#xA;Я рискнул, хотя Хикс грозился доложить об этом. Помощь есть помощь.&#xA;&#xA;Datestamp &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE2%&lt;&gt; :: Это странные существа. Они не нуждаются в еде и воде, никогда не покидают эти свои «экзокостюмы» даже в безопасных средах. &#xA;&#xA;Они задают много вопросов о нашей истории, об Атласе и о видениях прошлого. Я рассказываю им все, что знаю, но, похоже, им это не помогает.&#xA;&#xA;Datestamp &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE5%&lt;&gt; :: Мы были теми, кто видел алый лик...&#xA;&#xA;Нас вознесли со сферы из грязи и мусора к самим звездам...&#xA;&#xA;Странник утверждает, что все это нереально? Кто же... &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;кззкт&lt;&gt;...
                                { "Russian", "Дата &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE1%&lt;&gt; :: Странник хотел пристыковаться без корабля. Он утверждал, что поможет нам перезапустить двигатели после... &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;кзззкт&lt;&gt;... &#xA;&#xA;Я рискнул, хотя Хикс грозился доложить об этом. Помощь есть помощь.&#xA;&#xA;Дата &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE2%&lt;&gt; :: Это странные существа. Они не нуждаются в еде и воде, никогда не покидают эти свои «экзокостюмы» даже в безопасных средах. &#xA;&#xA;Они задают много вопросов о нашей истории, об Атласе и о видениях прошлого. Я рассказываю им все, что знаю, но, похоже, им это не помогает.&#xA;&#xA;Дата &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE5%&lt;&gt; :: Мы были теми, кто видел алый лик...&#xA;&#xA;Нас вознесли со сферы из грязи и мусора к самим звездам...&#xA;&#xA;Странник утверждает, что все это нереально? Кто же... &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;кззкт&lt;&gt;..." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "LOST_FREIGHTER_DESC_16" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Datestamp &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE1%&lt;&gt; :: Перед нами целый флот грузовых судов. Этот огромный караван перевозит наш народ между звездами. &#xA;&#xA;Мы оставили свое прошлое. Мы бросили все колонии. Мы направляемся к... &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;кззкт&lt;&gt;...&#xA;&#xA;Datestamp &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE2%&lt;&gt; :: Перед уходом корваксы поделились своим открытием. Они сказали, что вселенная близится к своему концу. Как и всякая вселенная, со временем...&#xA;&#xA;Наше предназначение будет исполнено. Мы исчезнем, и Атлас создаст сущее заново. Никто никогда не узнает, что мы делали и кем были.&#xA;&#xA;Datestamp &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE3%&lt;&gt; :: Я продолжу выполнять свой долг. Вера или сомнение, покорность или сопротивление... Конец или новое начало. &#xA;&#xA;Мы странствуем, чтобы встретиться с создателем. Мы странствуем, чтобы сделать великое дело. Не мне судить о таких вещах... &lt;NEWLINE&gt;Это выше всех нас.
                                { "Russian", "Дата &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE1%&lt;&gt; :: Перед нами целый флот грузовых судов. Этот огромный караван перевозит наш народ между звездами. &#xA;&#xA;Мы оставили свое прошлое. Мы бросили все колонии. Мы направляемся к... &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;кззкт&lt;&gt;...&#xA;&#xA;Дата &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE2%&lt;&gt; :: Перед уходом корваксы поделились своим открытием. Они сказали, что вселенная близится к своему концу. Как и всякая вселенная, со временем...&#xA;&#xA;Наше предназначение будет исполнено. Мы исчезнем, и Атлас создаст сущее заново. Никто никогда не узнает, что мы делали и кем были.&#xA;&#xA;Дата &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE3%&lt;&gt; :: Я продолжу выполнять свой долг. Вера или сомнение, покорность или сопротивление... Конец или новое начало. &#xA;&#xA;Мы странствуем, чтобы встретиться с создателем. Мы странствуем, чтобы сделать великое дело. Не мне судить о таких вещах... &lt;NEWLINE&gt;Это выше всех нас." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "LOST_FREIGHTER_DESC_17" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Datestamp &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE1%&lt;&gt; :: Прошлой ночью мне приснился сон... Мне снились все миры, в которых мы когда-то жили. Все места, где ступала наша нога. От них ничего не осталось. Лишь дюны... Повсюду сплошные песок, гниль и грязь.&#xA;&#xA;Что если мы не вернемся? Что если Атлас решит, что мы больше не стоим того, чтобы существовать? Сделает так, будто нас никогда не было?..&#xA;&#xA;Datestamp &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE2%&lt;&gt; :: Я рассказываю команде все, что мне довелось узнать за время странствий, и за одно это меня можно судить как предателя и еретика. Я спрашиваю их, что они думают, как они себя чувствуют, на что надеются.&#xA;&#xA;Datestamp &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE3%&lt;&gt; :: Они единодушны в своем решении. Мы повернем назад. Мы присоединимся к вай'кинам в их переселении и оставим центр тем, кто предан Атласу. &#xA;&#xA;Возможно, мы все-таки выживем, даже если остальные представители нашего вида погибнут...&#xA;&#xA;Datestamp &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE4%&lt;&gt; :: Что-то происходит. Прошу, кто бы вы ни были, не прекращайте читать, не... &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;кзззкт&lt;&gt;...&#xA;&#xA;Шестнадцать...&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;кззкт&lt;&gt; Их всего...
                                { "Russian", "Дата &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE1%&lt;&gt; :: Прошлой ночью мне приснился сон... Мне снились все миры, в которых мы когда-то жили. Все места, где ступала наша нога. От них ничего не осталось. Лишь дюны... Повсюду сплошные песок, гниль и грязь.&#xA;&#xA;Что если мы не вернемся? Что если Атлас решит, что мы больше не стоим того, чтобы существовать? Сделает так, будто нас никогда не было?..&#xA;&#xA;Дата &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE2%&lt;&gt; :: Я рассказываю команде все, что мне довелось узнать за время странствий, и за одно это меня можно судить как предателя и еретика. Я спрашиваю их, что они думают, как они себя чувствуют, на что надеются.&#xA;&#xA;Дата &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE3%&lt;&gt; :: Они единодушны в своем решении. Мы повернем назад. Мы присоединимся к вай'кинам в их переселении и оставим центр тем, кто предан Атласу. &#xA;&#xA;Возможно, мы все-таки выживем, даже если остальные представители нашего вида погибнут...&#xA;&#xA;Дата &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE4%&lt;&gt; :: Что-то происходит. Прошу, кто бы вы ни были, не прекращайте читать, не... &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;кзззкт&lt;&gt;...&#xA;&#xA;Шестнадцать...&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;кззкт&lt;&gt; Их всего..." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "LOST_FREIGHTER_DESC_18" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Datestamp &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE1%&lt;&gt; :: Странник снова нашел нас. Мы убили его уже восемь раз, а он все равно полон доброты и благодарности за возможность поговорить.&#xA;&#xA;Datestamp &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE2%&lt;&gt; :: Что мы наделали? Меня не покидает чувство, что... &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;кззкт&lt;&gt;...&#xA;&#xA;Datestamp &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE3%&lt;&gt; :: Он рассказывает нам, что отличается от других представителей своего вида. Так же, как и мы отличаемся от прочих представителей нашего. Он пережил конец всего сущего. Он не отрицает, что совершал ужасные вещи, но каков смысл в этике перед лицом экзистенциальной гибели?&#xA;&#xA;Datestamp &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE4%&lt;&gt; :: Вселенные возникают и пропадают. Цивилизации расцветают и рушатся. А цикл все продолжается. Но даже ему однажды придет конец. Ничто не вечно, даже само время.&#xA;&#xA;И в последние мгновения, когда все былое превратится в пыль, границы между мирами падут. Наше время придет вновь, пусть и ненадолго.&#xA;&#xA;Увидят ли нас, услышат ли нас и наш корабль? Наше грузовое судно?&#xA;&#xA;Мы заживем вновь, во всем своем разнообразии, во всю полноту нашей человеческой сути... Мы заживем вновь, потому что кто-то где-то прочтет наши слова в последний раз.
                                { "Russian", "Дата &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE1%&lt;&gt; :: Странник снова нашел нас. Мы убили его уже восемь раз, а он все равно полон доброты и благодарности за возможность поговорить.&#xA;&#xA;Дата &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE2%&lt;&gt; :: Что мы наделали? Меня не покидает чувство, что... &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;кззкт&lt;&gt;...&#xA;&#xA;Дата &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE3%&lt;&gt; :: Он рассказывает нам, что отличается от других представителей своего вида. Так же, как и мы отличаемся от прочих представителей нашего. Он пережил конец всего сущего. Он не отрицает, что совершал ужасные вещи, но каков смысл в этике перед лицом экзистенциальной гибели?&#xA;&#xA;Дата &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE4%&lt;&gt; :: Вселенные возникают и пропадают. Цивилизации расцветают и рушатся. А цикл все продолжается. Но даже ему однажды придет конец. Ничто не вечно, даже само время.&#xA;&#xA;И в последние мгновения, когда все былое превратится в пыль, границы между мирами падут. Наше время придет вновь, пусть и ненадолго.&#xA;&#xA;Увидят ли нас, услышат ли нас и наш корабль? Наше грузовое судно?&#xA;&#xA;Мы заживем вновь, во всем своем разнообразии, во всю полноту нашей человеческой сути... Мы заживем вновь, потому что кто-то где-то прочтет наши слова в последний раз." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "LOST_FREIGHTER_DESC_19" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Datestamp &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE1%&lt;&gt; :: Я прощаюсь с офицерами. Мы служили вместе много лет. С ними я могу хоть пойти на смерть.&#xA;&#xA;Один из них говорит, что у него был ребенок. Как и у меня. Как и у многих...&#xA;&#xA;Datestamp &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE2%&lt;&gt; :: В последний великолепный вечер все общаются, забыв о званиях и различиях. Мы говорим о том, что видели, об инопланетных воинах, торговцах и существах, чье сознание далеко за пределами нашего понимания.&#xA;&#xA;Мы прощаемся со всем этим.&#xA;&#xA;Наши датчики говорят, что осталось совсем немного времени. Звезды гаснут одна за другой.&#xA;&#xA;Прощай, любовь моя.&#xA;&#xA;Прощай.
                                { "Russian", "Дата &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE1%&lt;&gt; :: Я прощаюсь с офицерами. Мы служили вместе много лет. С ними я могу хоть пойти на смерть.&#xA;&#xA;Один из них говорит, что у него был ребенок. Как и у меня. Как и у многих...&#xA;&#xA;Дата &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE2%&lt;&gt; :: В последний великолепный вечер все общаются, забыв о званиях и различиях. Мы говорим о том, что видели, об инопланетных воинах, торговцах и существах, чье сознание далеко за пределами нашего понимания.&#xA;&#xA;Мы прощаемся со всем этим.&#xA;&#xA;Наши датчики говорят, что осталось совсем немного времени. Звезды гаснут одна за другой.&#xA;&#xA;Прощай, любовь моя.&#xA;&#xA;Прощай." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "LOST_FREIGHTER_DESC_20" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Datestamp &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE1%&lt;&gt; :: ... ...&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;кзззкт&lt;&gt; ... ...&#xA;&#xA;...&#xA;&#xA;... ...&#xA;&#xA;Неужели... &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;кззкт&lt;&gt;...&#xA;&#xA;Кто-нибудь... &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;кзззкт&lt;&gt;...&#xA;&#xA;Это не... &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;кзкзкзкт&lt;&gt;... &#xA;&#xA;Ничто не заканчивается. Разве ты не видишь? Ничто... &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;кзззкт&lt;&gt;...&#xA;&#xA;Ничто...
                                { "Russian", "Дата &lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE1%&lt;&gt; :: ... ...&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;кзззкт&lt;&gt; ... ...&#xA;&#xA;...&#xA;&#xA;... ...&#xA;&#xA;Неужели... &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;кззкт&lt;&gt;...&#xA;&#xA;Кто-нибудь... &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;кзззкт&lt;&gt;...&#xA;&#xA;Это не... &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;кзкзкзкт&lt;&gt;... &#xA;&#xA;Ничто не заканчивается. Разве ты не видишь? Ничто... &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;кзззкт&lt;&gt;...&#xA;&#xA;Ничто..." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MEDAL_DIST_WARP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- отмечено систем
                                { "Russian", "Отмечено систем" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PHOTO_BLD_OBJ_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сделайте снимок: &lt;STELLAR&gt;%BUILDING%&lt;&gt;&#xA;Активируйте фоторежим с помощью &lt;IMG&gt;QUICK_MENU&lt;&gt;.
                                { "Russian", "Сделайте снимок: &lt;STELLAR&gt;%BUILDING%&lt;&gt;&#xA;Активируйте фоторежим с помощью &lt;IMG&gt;QUICK_MENU&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PHOTO_SURVEY_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сделайте снимок: &lt;STELLAR&gt;%BUILDING%&lt;&gt;&#xA;Клиент предоставил примерные координаты.
                                { "Russian", "Сфотографируйте: &lt;STELLAR&gt;%BUILDING%&lt;&gt;&#xA;Клиент предоставил примерные координаты" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PHOTO_SURVEY_OFF" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сделайте &lt;TECHNOLOGY&gt;фотографию&lt;&gt; цели (%BUILDING%).&#xA;Подходящая цель обнаружена неподалеку.&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы найти цель для фотографии.
                                { "Russian", "&lt;TECHNOLOGY&gt;Сфотографируйте&lt;&gt;: %BUILDING%&#xA;Подходящая цель обнаружена неподалеку&#xA;Найдите её, используя &lt;STELLAR&gt;разведку цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PHOTO_SURVEY_SWAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сделайте &lt;TECHNOLOGY&gt;фотографию&lt;&gt; цели (%BUILDING%).&#xA;Подходящая цель обнаружена неподалеку.&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;
                                { "Russian", "&lt;TECHNOLOGY&gt;Сфотографируйте&lt;&gt;: %BUILDING%&#xA;Подходящая цель обнаружена неподалеку&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;" },
                            }
                        },
                        -- не влазиет
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ALL_ABAN_DESC_32" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Я не могу пройти внутрь. Теперь я знаю, что, если я это сделаю, всему придет конец. Жизни возвращаются ко мне. Мне довелось видеть ужасы и чудеса. Мне довелось вести себя жестоко. Мне довелось быть на стороне добра и на стороне зла. Жизнь за жизнью, все эти вещи отходили на задний план. И теперь я — это ты.&#xA; &#xA;И ты читаешь это. Я знаю, что ты это читаешь... Это значит, что однажды я пройду через портал. И я проснусь рядом с разбившимся кораблем, возродившись вновь.
                                { "Russian", "Я не могу пройти внутрь. Теперь я знаю, что, если я это сделаю, всему придет конец. Жизни возвращаются ко мне. Мне довелось видеть ужасы и чудеса. Мне довелось вести себя жестоко. Мне довелось быть на стороне добра и на стороне зла.&#xA;&#xA;Жизнь за жизнью, все эти вещи отходили на задний план. И теперь я — это ты.&#xA;&#xA;И ты читаешь это. Я знаю, что ты это читаешь... Это значит, что однажды я пройду через портал. И я проснусь рядом с разбившимся кораблем, возродившись вновь." },
                            }
                        },
                        -- по факту никакого спасения нет, тупо хрэбежь
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NOTIFY_FREIGHTER_TITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Место спасения имущества: %FREIGHTER_NAME%
                                { "Russian", "Место крушения %FREIGHTER_NAME%" },
                            }
                        },
                        -- используем корректное сконение
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FARMPROD_5_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соединительное волокно. Создается из современных синтетических полимеров и способно передавать энергию и данные.&#xA;&#xA;Производится из &lt;TRADEABLE&gt;мякоти кактуса&lt;&gt; и &lt;TRADEABLE&gt;Звездный лук&lt;&gt;.
                                { "Russian", "Соединительное волокно. Создается из современных синтетических полимеров и способно передавать энергию и данные.&#xA;&#xA;Производится из &lt;TRADEABLE&gt;мякоти кактуса&lt;&gt; и &lt;TRADEABLE&gt;звёздного лука&lt;&gt;." },
                            }
                        },
                        -- нет точки после "Оценка риска: энтропический"
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NPC_SCI_TERM_DESC_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ОШИБКА.&#xD;&#xA; &#xD;&#xA;Диагностика: ученый-корвакс, испорченный общением со Странником. Личность переписана | ОБНАРУЖЕНО ВОЗДЕЙСТВИЕ АНОМАЛИИ&#xD;&#xA;Решение: изолировать ученого-корвакса от Единства. Наблюдение. Анализ. Молчание.&#xD;&#xA;Гипотеза: страж | АТЛАС | универсальный фокус | ответные меры применяются&#xD;&#xA;Оценка риска: энтропический Разрушение галактики | возрождение&#xD;&#xA;&#xD;&#xA;ОШИБКА&#xD;&#xA;АТЛАС&#xD;&#xA;ОШИБКА&#xD;&#xA;ОШИБКА&#xD;&#xA;ОШИБКА&#xD;&#xA;ОНИ ТЕБЯ ВИДЯТ
                                -- ERROR.&#xA; &#xA;Diagnostic: Korvax Science Unit corrupted by Traveller interaction. Personality overwritten | ANOMALY INVOLVEMENT DETECTED&#xA;Solution: Quarantine Korvax Science Unit from Convergence. Observe. Analyse. Silence.&#xA;Hypothesis: Sentinel | ATLAS | Universal Foci | Countermeasure In-Progress&#xA;Risk Assessment: Entropic. Galactic Destruction | Rebirth&#xA;&#xA;ERROR&#xA;ATLAS&#xA;ERROR&#xA;ERROR&#xA;ERROR&#xA;THEY SEE YOU
                                { "Russian", "ОШИБКА.&#xA; &#xA;Диагностика: учёный-корвакс, испорченный общением со Странником. Личность переписана | ОБНАРУЖЕНО ВОЗДЕЙСТВИЕ АНОМАЛИИ&#xA;Решение: изолировать ученого-корвакса от Единства. Наблюдение. Анализ. Молчание.&#xA;Гипотеза: страж | АТЛАС | универсальный фокус | ответные меры применяются&#xA;Оценка риска: энтропический. Разрушение галактики | возрождение&#xA;&#xA;ОШИБКА&#xA;АТЛАС&#xA;ОШИБКА&#xA;ОШИБКА&#xA;ОШИБКА&#xA;ОНИ ТЕБЯ ВИДЯТ" },
                            }
                        },
                        -- отсебятина переводчиков. в оригинале вопрос "Y/N", но переводичики вопрос сделали "ДА/НЕТ"
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NPC_CORE_ACT1_17D_OPT_A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Д (Y)
                                { "Russian", "ДА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NPC_CORE_ACT1_17D_OPT_B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Н (N)
                                { "Russian", "НЕТ" },
                            }
                        },
                        -- в конце речь о -пусто-
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NPC_CORE_ACT2_4_ARC_RES" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Я активирую дугу сознания. Я не знаю, чего ждать. Яркого лазерного шоу? Эффектной сцены, в финале которой Артемида предстанет предо мной во плоти?&#xA;&#xA;Этому не бывать. Голограмма просто исчезает. Незнакомка, давшая мне этот чертеж, вновь подзывает меня.
                                { "Russian", "Я активирую ковчег сознания. Я не знаю, чего ждать. Яркого лазерного шоу? Эффектной сцены, в финале которой Артемида предстанет предо мной во плоти?&#xA;&#xA;Этому не бывать. Голограмма просто исчезает. Незнакомец, давший мне этот чертеж, вновь подзывает меня." },
                            }
                        },
                        -- не влазиет после "Это первородный"
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NPC_CORE_ACT2_4E_LANG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- «Странники» — это лишь сны. Идея о том, что мы занимаем особое место во вселенной. Артемида видела этот сон. Как и ты. И Аполлон, хотя он и не станет об этом говорить. Даже у меня был этот сон. Когда-то давно.&#xA;&#xA;Нас безграничное количество, друг мой. Мы скитаемся по этим мирам в поисках друзей. Никто не хочет быть один. Но чем сильнее мы сближаемся с другими, тем больше рискуем причинить им или самим себе боль. &#xA;&#xA;Величайшая тайна вселенной — не Стекло, не Эрон, не прародители. Это заключительное действие — решение бросить тех, кто в тебе нуждается. Это первородный грех, основа всего сущего.&#xA;&#xA;Иди к звездам, Странник. Твои друзья ждут. Они помогут тебе принести мир и покой Артемиде. Возвращайся, когда закончишь. Нам нужно многое обсудить.
                                { "Russian", "«Странники» — это сон, иллюзия о том, что мы занимаем особое место во вселенной. Артемида, ты, Аполлон, даже я  — все видели этот сон.&#xA;&#xA;Мы скитаемся по мирам в поисках друзей. Никто не хочет быть один. Но чем сильнее мы сближаемся с другими, тем выше риск причинить боль себе и другим.&#xA;&#xA;Величайшая тайна вселенной — решение бросить в последний момент тех, кто в тебе нуждается. Это первородный грех, основа всего сущего.&#xA;&#xA;Иди к звездам, Странник. Твои друзья ждут. Они помогут принести покой Артемиде. Возвращайся, когда закончишь. Нам нужно многое обсудить." },
                            }
                        },
                        --
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ABANDONED_INFO" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %RACE% (покинутая планета)
                                -- %RACE% (Abandoned)
                                { "Russian", "%RACE% (покинутая система)" },
                            }
                        },
                        -- говорит Артемида
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NPC_CORE_ACT2_16_LANG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Я думал о тебе и об Аполлоне... Я так счастлив.&#xA;&#xA;Чем мы займемся, когда наконец встретимся?
                                -- I've been thinking about you, about Apollo... I'm so happy.&#xA;&#xA;What do you want to do first when we meet?
                                { "Russian", "Я думала о тебе и об Аполлоне... Я так счастлива.&#xA;&#xA;Чем мы займемся, когда наконец встретимся?" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NPC_CORE_ACT2_16A_LANG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Я нашел кое-какие детали — компоненты, из которых я смогу собрать корабль. Не знаю точно, смогу ли я поднять его в небо, но я постараюсь.&#xA;&#xA;До скорой встречи. Жду не дождусь...
                                -- I've found parts, you know – components I might be able to craft into a ship. I don't know if it'll fly, but I'll do what I can.&#xA;&#xA;I'll see you soon. I can't wait...
                                { "Russian", "Я нашла кое-какие детали — компоненты, из которых я смогу собрать корабль. Не знаю точно, смогу ли я поднять его в небо, но я постараюсь.&#xA;&#xA;До скорой встречи. Жду не дождусь..." },
                            }
                        },
                        -- обрезается после "Корваксы видели Атласа тем, чем сами мечтают когда-нибудь"
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "EXP_CORE_ACT2_17A_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Несмотря на то, что я стою совершенно неподвижно, мое сознание блуждает в необъятных просторах космоса. Я вижу жизнь такой, какой видят ее корваксы: бесконечное полотно воспоминаний, которые делит между собой бесчисленное множество существ.&#xA;&#xA;Я стою на родной планете корваксов и вижу, как небо заполоняют корабли геков... Я вижу, как первого корвакса плавят, чтобы получить редкие минералы.&#xA;&#xA;Но даже в момент отчаяния корваксы понимали, что надежда еще есть. Они идут на сделку и молятся высшему существу.&#xA;&#xA;Корваксы видели Атласа тем, чем сами мечтают когда-нибудь стать: высшей формой интеллекта, непостижимой и непогрешимой.&#xA;&#xA;Видение заканчивается. Я, содрогаясь, замечаю, что скопления нанитов проникли в мой шлем. Корвакс отрешенно наблюдает за мной.
                                -- Even as I stand in space, my mind travels across the cosmos. I see life as the Korvax see it: a vast tapestry of wonder, of memories shared between countless beings and times.&#xA;&#xA;I stand on the Korvax homeworld as Gek ships fill the skies... I see the moment the first Korvax was melted down for their rare minerals.&#xA;&#xA;But even in the depths of their subjugation, there was hope. A bargain, a prayer to a greater being.&#xA;&#xA;The Korvax viewed the Atlas as what they might become in time: an intelligence beyond comprehension, beyond judgement.&#xA;&#xA;The vision ends, and I convulse as the Nanite Clusters spill through my helmet. The Korvax watches me impassively.
                                { "Russian", "Мое сознание блуждает в космосе. Я вижу жизнь такой, какой видят ее корваксы: бесчисленные существа делят между собой огромный гобелен чудес и воспоминаний.&#xA;&#xA;Небо родной планеты корваксов заполоняют корабли геков... Корваксов плавят, чтобы получить редкие минералы.&#xA;&#xA;Но даже будучи порабощенными, осталась надежда.&#xA;&#xA;Корваксы видели Атласа тем, чем могли бы стать со временем: высшая форма интеллекта, непостижимая и непогрешимая.&#xA;&#xA;Видение заканчивается от потрясения: скопления нанитов заполняют мой шлем. Корвакс отрешенно наблюдает за мной." },
                            }
                        },
                        -- обрезается после "Падение геков, их поклонение Атласу, освобо"
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TRA_CORE_ACT2_20F_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Внезапно я оказываюсь на Балароне, родине геков. Я стою в самом сердце империи Первородов и воочию наблюдаю события, происходившие очень и очень давно.&#xA;%NAME% стоит рядом со мной. Он видит то же, что и я, и по его лицу ручьем текут слезы.&#xA;&#xA;Я вижу, как корваксы ходят между плодильными гнездами. Они останавливаются у каждого из них и вскрывают свои собственные оболочки. Они высвобождают из своих синтетических тел скопления нанитов, и те попадают в эмбриональную жидкость геков.&#xA;&#xA;Наконец я начинаю понимать, что происходит. Падение геков, их поклонение Атласу, освобождение корваксов... &#xA;Все это не стремление искупить свою вину. Это революция. Сотни корваксов пожертвовали своим бессмертием, чтобы смешать свои скопления нанитов с клетками нерожденных геков.&#xA;&#xA;Геки не стали добрее. Они стали корваксами, по крайней мере, частично. Рабы геков подчинили себе их сознание, повлияв на их сущность. В первый и последний раз корваксы упивались страданием своих угнетателей.
                                -- I blink and I am on Balaron itself, homeworld of the Gek. I stand within the centre of the First Spawn empire, witnessing events that occurred long ago.&#xA;%NAME% stands next to me, watching what I watch, tears streaming down their face.&#xA;&#xA;I see enslaved Korvax move from Gek spawning pool to spawning pool. At each one, they cut into their own suits. Nanite Clusters pool out, falling into the fluid of embryonic Gek.&#xA;&#xA;It is then that I finally understand. The fall of the Gek, their conversion to the Atlas, their release of the Korvax... &#xA;It was not redemption. It was revolution. Hundreds of Korvax sacrificing their immortality, mingling their Nanite Clusters with the unborn Gek.&#xA;&#xA;The Gek did not become good. They became Korvax, at least in part. Their slaves altered Gek brains, shifting their nature. For the first and final time, the Korvax Convergence delighted in the pain of the oppressor.
                                { "Russian", "Передо мной события, происходившие очень давно, в самом сердце империи Первородов, Балароне, родине геков.&#xA;%NAME% стоит рядом со мной. Он видит то же, что и я. По его лицу ручьем текут слезы.&#xA;&#xA;Порабощенные корваксы ходят между плодильными гнездами и возле каждого из них вскрывают свои оболочки. Скопления нанитов вытекают, сливаясь с эмбриональной жидкостью геков.&#xA;&#xA;Сотни корваксов пожертвовали своим бессмертием, чтобы смешать свои скопления нанитов с клетками нерожденных геков.&#xA;&#xA;В первый и последний раз корваксы упивались страданием своих угнетателей." },
                            }
                        },
                        -- обрезается после "Но потом один гек рассказал мне кое-что другое. Геки не по собс"
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NPC_CORE_ACT2_21A_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Я рассказываю -пусто- все, что мне удалось выяснить. О священной войне вай’кинов со стражами. О том, что им почти удалось добиться своей цели, но Гекские Первороды своей жестокостью и безрассудством вновь привлекли стражей.&#xA;&#xA;Теперь я знаю, что родина корваксов была уничтожена геками, а всех, кто выжил, поработили или переплавили на ресурсы.&#xA;Долгие годы корваксы томились под гнетом захватчиков, пока империя геков не распалась, и они наконец смогли обрести свободу. Геки начали поклоняться Атласу.&#xA;&#xA;Но потом один гек рассказал мне кое-что другое. Геки не по собственной воле решили измениться. Огромное количество корваксов принесло себя в жертву, объединив наниты из своих тел с клетками нерожденных геков.&#xA;Их одержимость торговлей пришла на смену их одержимости войной — те же инстинкты, просто слегка видоизмененные.
                                -- I tell -null- all that I have learned. Of the Vy'keen's crusade against the Sentinels. How they nearly succeeded, only to have the barbarism of the Gek First Spawn draw the Sentinels back to the galaxy.&#xA;&#xA;I learned that the homeworld of the Korvax was destroyed by the Gek, the survivors enslaved or melted down.&#xA;For years the Korvax toiled beneath their oppressors, until the empire fell and they were free once more. The Gek became Atlas worshippers.&#xA;&#xA;But from the Gek, I learned something different. The Gek did not redeem themselves of their own accord. A great number of Korvax sacrificed themselves, mingling their Nanite blood with countless unborn Gek.&#xA;Their impulse to trade is a mere evolution of their impulse to war, a few signals switched in the brain.
                                { "Russian", "Я рассказываю -пусто- все, что мне удалось выяснить. О священной войне вай’кинов со стражами. Как они почти победили, как варварство гекских Перводов привлекло стражей обратно.&#xA;&#xA;Я узнал, что родина корваксов была уничтожена геками, а оставшихся поработили или расплавили.&#xA;Затем империя геков распалась и корваксы вновь обрели свободу. Геки начали поклоняться Атласу.&#xA;&#xA;Один гек рассказал иную историю. Множество корваксов принесло себя в жертву, объединив наниты из своих тел с клетками нерожденных геков.&#xA;Одержимость воевать сменилась одержимостью торговать. " },
                            }
                        },
                        -- обрезается после "Мы любим тебя. Б"
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NPC_TRAVELLER_LANG_16" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Я вижу тебя... &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;кзкззккт...&lt;&gt; вижу, как ты смотришь на мои могилы... на множество моих смертей...&#xA;Так и я смотрел на следы шестнадцати, что были до меня... &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;кзкзкзт...&lt;&gt; как смотрел на самого себя...&#xA;Мы прощаем тебя за все... &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;кзкзкзкт...&lt;&gt; наши жизни которые обрывались всякий раз, как погибали в бою... умирали...&#xA;Мы передаем тебе эти знаки... Ты будешь проходить сквозь порталы... В них ты будешь умирать. Кроме тебя есть и другие «ты»... &#xA;Молись с нами. Молись за всех нас. Стражи спасли нас. Стражи всех нас прокляли.&#xA;Мы любим тебя. Будем любить вечно...
                                -- I can see you – &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;kzkzzkkt&lt;&gt; – looking at my graves... staring at my many deaths...&#xA;Just as I stared at sixteen others... &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;kzkzkzkt&lt;&gt;... just as I stared at myself through the static of forgotten horrors...&#xA;We have forgiven you for what you did– &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;kzkzkzkt&lt;&gt; – those selves that we have ended... each time we fell in battle... each time we died...&#xA;These glyphs we impart... through the portals you will walk.... Through them, you will die. You are not the only you... &#xA;Pray with us. Pray for all of us. The Sentinels have saved us. The Sentinels have damned us.&#xA;We love you, forever...
                                { "Russian", "Я вижу тебя – &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;кзкззккт&lt;&gt; – смотрящего на мои могилы... на множество моих смертей...&#xA;Так и я смотрел на остальных шестнадцать... &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;кзкзкзт&lt;&gt;... смотрел на самого себя сквозь помехи забытых ужасов...&#xA;Мы прощаем тебе все– &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;кзкзкзкт&lt;&gt; –  жизни, которые мы оборвали... всякий раз, как мы погибали в бою... и умирали...&#xA;Мы передаем эти знаки... сможешь проходить сквозь порталы... Проходя через них ты погибнешь. Ты не единственный... &#xA;Молись с нами. Молись за всех нас. Стражи спасли нас. Стражи всех нас прокляли.&#xA;Мы любим тебя, вечно..." },
                            }
                        },
                        -- делаем перенос строки перед "нежели"
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_OUTPOST_TRADE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TITLE&gt;Получен позывной торгового пункта&lt;&gt;&#xA;Планетарные аванпосты приносят &lt;COMMODITY&gt;больше торговой прибыли&lt;&gt;, нежели космические станции.
                                -- &lt;TITLE&gt;Trading Post callsign received&lt;&gt;&#xA;Planetary Outposts offer &lt;COMMODITY&gt;greater trade profits&lt;&gt; than Space Stations
                                { "Russian", "&lt;TITLE&gt;Получен позывной торгового пункта&lt;&gt;&#xA;Планетарные аванпосты приносят &lt;COMMODITY&gt;больше прибыли&lt;&gt;" },
                            }
                        },
                        -- подсказка к древним руинам
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TREASURE_LOCATED" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Обнаружено место исторической важности&lt;&gt;.&#xA;Доберитесь до места и используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt;, чтобы найти сокровище.
                                -- &lt;STELLAR&gt;Site of Historical Interest Located&lt;&gt;&#xA;Reach the site and use a &lt;TECHNOLOGY&gt;Terrain Manipulator&lt;&gt; to search for treasure
                                { "Russian", "&lt;STELLAR&gt;Обнаружено место исторической важности&lt;&gt;&#xA;Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt;, чтобы найти сокровище" },
                            }
                        },
                        -- это трындец, никто не сказал, я не заметил, моду почти год...
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PORTAL_SEQUENCE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ВВЕСТИ ПОСЛЕДОВАТЕЛ.
                                -- ENTER SEQUENCE
                                { "Russian", "ВВЕДИТЕ ЗНАКИ" },
                            }
                        },
                        -- лишние двоеточия
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FACTORY_TIMED_OSD1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ВНИМАНИЕ: &lt;IMG&gt;SLASH&lt;&gt; ЗАЩИТА ВКЛЮЧЕНА &lt;IMG&gt;SLASH&lt;&gt; ДАННЫЕ УДАЛЯЮТСЯ
                                -- WARNING &lt;IMG&gt;SLASH&lt;&gt; DEFENCES ACTIVE &lt;IMG&gt;SLASH&lt;&gt; DATA WIPE INITIATED
                                { "Russian", "ВНИМАНИЕ &lt;IMG&gt;SLASH&lt;&gt; АКТИВИРОВАНА ЗАЩИТА &lt;IMG&gt;SLASH&lt;&gt; ДАННЫЕ УДАЛЯЮТСЯ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FACTORY_TIMED_OSD2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ВНИМАНИЕ: &lt;IMG&gt;SLASH&lt;&gt; НЕМИНУЕМАЯ ПОТЕРЯ ДАННЫХ
                                -- WARNING &lt;IMG&gt;SLASH&lt;&gt; DATA WIPE IMMINENT
                                { "Russian", "ВНИМАНИЕ &lt;IMG&gt;SLASH&lt;&gt; НЕМИНУЕМАЯ ПОТЕРЯ ДАННЫХ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FACTORY_TIMED_OBJ1_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Получите данные на &lt;STELLAR&gt;терминале фабрики&lt;&gt;.&#xA;Осталось времени: &lt;RED&gt;%TIME%&lt;&gt;&#xA;Чтобы проникнуть в постройку, придется &lt;FUEL&gt;применить силу&lt;&gt;.
                                -- Harvest data from the from the &lt;STELLAR&gt;factory terminal&lt;&gt;&#xA;Time Remaining: &lt;RED&gt;%TIME%&lt;&gt;&#xA;&lt;FUEL&gt;Force&lt;&gt; will be required to enter the facility
                                { "Russian", "Заберите данные с &lt;STELLAR&gt;терминала фабрики&lt;&gt;&#xA;Осталось времени: &lt;RED&gt;%TIME%&lt;&gt;&#xA;Чтобы проникнуть в здание, придется &lt;FUEL&gt;применить силу&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FACTORY_FAILURE_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ВНИМАНИЕ: &lt;IMG&gt;SLASH&lt;&gt; ДАННЫЕ УДАЛЕНЫ &lt;IMG&gt;SLASH&lt;&gt; ЗАДАНИЕ ПРОВАЛЕНО
                                -- WARNING &lt;IMG&gt;SLASH&lt;&gt; DATA WIPED &lt;IMG&gt;SLASH&lt;&gt; MISSION FAILED
                                { "Russian", "ВНИМАНИЕ &lt;IMG&gt;SLASH&lt;&gt; ДАННЫЕ УДАЛЕНЫ &lt;IMG&gt;SLASH&lt;&gt; ЗАДАНИЕ ПРОВАЛЕНО" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FACTORY_OBJ1_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Украдите промышленные тайны из &lt;TECHNOLOGY&gt;охраняемой постройки&lt;&gt;.&#xA;Получите данные на &lt;STELLAR&gt;терминале фабрики&lt;&gt;.&#xA;Чтобы проникнуть в постройку, придется &lt;FUEL&gt;применить силу&lt;&gt;.
                                -- Steal industrial secrets from a &lt;TECHNOLOGY&gt;secure facility&lt;&gt;&#xA;Harvest data from the from the &lt;STELLAR&gt;factory terminal&lt;&gt;&#xA;&lt;FUEL&gt;Force&lt;&gt; will be required to enter the facility
                                { "Russian", "Украдите промышленные тайны из &lt;TECHNOLOGY&gt;охраняемого здания&lt;&gt;&#xA;Заберите данные с &lt;STELLAR&gt;терминала фабрики&lt;&gt;&#xA;Чтобы проникнуть, придется &lt;FUEL&gt;применить силу&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FACTORY_OBJ1_MSG_WEAPON" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Проникните на охраняемую постройку.&#xA;Создайте &lt;TECHNOLOGY&gt;плазмомет&lt;&gt; с помощью мультитула.
                                -- Breach the secure facility&#xA;Construct a &lt;TECHNOLOGY&gt;Boltcaster&lt;&gt; in your Multi-Tool
                                { "Russian", "Проникните на охраняемую постройку&#xA;Создайте &lt;TECHNOLOGY&gt;плазмомет&lt;&gt; с помощью мультитула" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FACTORY_OBJ1_MSG_WEAPON_MODE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Проникните на охраняемую постройку.&#xA;Переключайте режимы оружия, используя &lt;IMG&gt;CYCLEWEAPON&lt;&gt;.
                                -- Breach the secure facility&#xA;Cycle weapon modes with &lt;IMG&gt;CYCLEWEAPON&lt;&gt;
                                { "Russian", "Проникните в охраняемое здание&#xA;Переключайте режимы оружия, используя &lt;IMG&gt;CYCLEWEAPON&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FACTORY_MSG_SURVEY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Украдите промышленные тайны из &lt;TECHNOLOGY&gt;охраняемой постройки&lt;&gt;.&#xA;Используйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt;, чтобы обнаружить постройку.
                                -- Steal industrial secrets from a &lt;TECHNOLOGY&gt;secure facility&lt;&gt;&#xA;Use the &lt;TECHNOLOGY&gt;Target Sweep&lt;&gt; to reveal the facility
                                { "Russian", "Украдите промышленные тайны из &lt;TECHNOLOGY&gt;охраняемого здания&lt;&gt;.&#xA;Узнайте местоположение объекта с помощью &lt;TECHNOLOGY&gt;разведки цели&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FACTORY_MSG_SURVEY_SWAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Украдите промышленные тайны из &lt;TECHNOLOGY&gt;охраняемой постройки&lt;&gt;.&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;
                                -- Steal industrial secrets from a &lt;TECHNOLOGY&gt;secure facility&lt;&gt;&#xA;Activate a &lt;TECHNOLOGY&gt;Target Sweep&lt;&gt; with &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;
                                { "Russian", "Украдите промышленные тайны из &lt;TECHNOLOGY&gt;охраняемого здания&lt;&gt;&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;" },
                            }
                        },
                        -- кнопка мимо скобок
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FACTORY_MSG_SURVEY_OFF" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Украдите промышленные тайны из &lt;TECHNOLOGY&gt;охраняемой постройки&lt;&gt;.&#xA;Активируйте &lt;&gt;разведку цели&lt;IMG&gt;AIM&lt;&gt; (&lt;STELLAR&gt;), чтобы обнаружить постройку.
                                -- Steal industrial secrets from a &lt;TECHNOLOGY&gt;secure facility&lt;&gt;&#xA;Activate a &lt;STELLAR&gt;Target Sweep&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;) to reveal the facility
                                { "Russian", "Украдите промышленные тайны из &lt;TECHNOLOGY&gt;охраняемого здания&lt;&gt;&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы обнаружить его" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FACTORY_MSG_SURVEY_CAR" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Выкрадите промышленные тайны из &lt;TECHNOLOGY&gt;охраняемой постройки&lt;&gt;.&#xA;Воспользуйтесь &lt;STELLAR&gt;разведкой цели&lt;&gt;, чтобы ее найти.&#xA;Чтобы подтвердить направление разведки, выйдите из своего транспорта.
                                -- Steal industrial secrets from a &lt;TECHNOLOGY&gt;secure facility&lt;&gt;&#xA;Use a &lt;STELLAR&gt;Target Sweep&lt;&gt; to locate the facility&#xA;To confirm target sweep directions, exit your vehicle
                                { "Russian", "Украдите промышленные тайны из &lt;TECHNOLOGY&gt;охраняемого здания&lt;&gt;&#xA;Найдите его с помощью &lt;STELLAR&gt;разведки цели&lt;&gt;&#xA;Выйдите из транспорта, чтобы сверить направление" },
                            }
                        },
                        -- это чистый косяк разрабов, т.к. не учли лингвистическую специфику
                        -- чистой воды п-графия! тьфу
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "NOTIFY_PRO_ACTIVE" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- %HAZARD%: ЗАЩИТА АКТИВНА
                        --         -- %HAZARD% PROTECTION ACTIVE
                        --         { "Russian", "РАБОТАЕТ ЗАЩИТА ОТ ВНЕШНИХ ФАКТОРОВ" },
                        --     }
                        -- },
                        -- на экране терминала в заброшенных зданиях итд
                        -- точка на конце лишняя; убрал "чтобы открыть" -- итак ясно что он откроется
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MAINTAIN_CRATE_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Чтобы открыть, уберите поврежденные компоненты и обломки.
                                -- Remove damaged components and scrap to open
                                { "Russian", "Уберите поврежденные компоненты и обломки" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MAINTAIN_TECHDEBRIS_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Чтобы открыть, отремонтируйте поврежденные компоненты.
                                -- Repair damaged components to open
                                { "Russian", "Отремонтируйте поврежденные компоненты" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MAINTAIN_ABANDONED_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Чтобы отремонтировать, удалите испорченный материал.
                                -- Repair by removing corrupted material
                                { "Russian", "Удалите испорченный материал" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MAINTAIN_FREIGHTER_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Отремонтируйте поврежденные компоненты и откройте.
                                -- Open by repairing damaged components
                                { "Russian", "Отремонтируйте поврежденные компоненты" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MAINTAIN_DISTRESS_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Отремонтируйте поврежденные компоненты и откройте журнал.
                                -- Access log by repairing damaged components
                                { "Russian", "Отремонтируйте поврежденные компоненты" },
                            }
                        },
                        -- появляется на центральном экране в кабине
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "HUD_INC_FALLBACK" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Входящее&#xA;сообщение
                                -- Incoming&#xA;Message
                                { "Russian", "ВХОДЯЩЕЕ&#xA;СООБЩЕНИЕ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "HUD_INC_TRAVELLER" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Подавление сигнала: %NAME%
                                -- Signal Override: %NAME%
                                { "Russian", "На линии %NAME%" },
                            }
                        },
                        -- comms это не канал связи, а позывной в данном случае
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "HUD_INC_PIRATE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Канал связи противника: %NAME%
                                -- Hostile Comms: %NAME%
                                { "Russian", "Позывной врага: %NAME%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "HUD_INC_TRADER" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Торговый канал: %NAME%
                                -- Trade Link: %NAME%
                                { "Russian", "Торговый канал: %NAME%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "HUD_INC_MYSTERY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Подавление сигнала&#xA;&#xA;16 / 16 / 16 / 16
                                -- Comms Override&#xA;&#xA;16 / 16 / 16 / 16
                                { "Russian", "16 / 16 / 16 / 16" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "HUD_INC_TARGET" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сигнальный канал: %NAME%
                                -- Signal Link: %NAME%
                                { "Russian", "Сигнальный канал: %NAME%" },
                            }
                        },
                        -- осмотр такой осмотр
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "DISC_VIEW_DISCOVERY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ОСМОТР ОТКРЫТИЯ: %BUTTON%
                                -- VIEW DISCOVERY %BUTTON%
                                { "Russian", "ОБ ОТКРЫТИИ %BUTTON%" },
                            }
                        },
                        -- топливо в ускорителях, отличный перевод
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NOTIFY_SHIP_SUMMON" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Используйте &lt;IMG&gt;QUICK_MENU&lt;&gt;, чтобы вызвать корабль.&#xA;Чтобы вызвать корабль, требуется &lt;FUEL&gt;топливо&lt;&gt; во &lt;TECHNOLOGY&gt;взлетных ускорителях&lt;&gt;.
                                -- Use &lt;IMG&gt;QUICK_MENU&lt;&gt; to summon your ship&#xA;Summoning requires &lt;FUEL&gt;fuel&lt;&gt; in the &lt;TECHNOLOGY&gt;Launch Thruster&lt;&gt;
                                { "Russian", "Используйте &lt;IMG&gt;QUICK_MENU&lt;&gt;, чтобы вызвать корабль&#xA;&lt;TECHNOLOGY&gt;Взлетные ускорители&lt;&gt; должны быть заправлены &lt;FUEL&gt;топливом&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NOTIFY_SHIP_SUMMON_VR" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Используйте &lt;TECHNOLOGY&gt;быстрое меню&lt;&gt;, чтобы вызвать корабль.&#xA;Откройте быстрое меню, указав на %SECONDARY_HAND%.&#xA;Чтобы вызвать корабль, требуется &lt;FUEL&gt;топливо&lt;&gt; во &lt;TECHNOLOGY&gt;взлетных ускорителях&lt;&gt;.
                                -- Use the &lt;TECHNOLOGY&gt;Quick Menu&lt;&gt; to summon your ship&#xA;Access the Quick Menu by pointing at your %SECONDARY_HAND%&#xA;Summoning requires &lt;FUEL&gt;fuel&lt;&gt; in the &lt;TECHNOLOGY&gt;Launch Thruster&lt;&gt;
                                { "Russian", "Используйте &lt;TECHNOLOGY&gt;быстрое меню&lt;&gt;, чтобы вызвать корабль&#xA;Откройте быстрое меню, указав на %SECONDARY_HAND%&#xA;&lt;TECHNOLOGY&gt;Взлетные ускорители&lt;&gt; корабля должны быть заправлены &lt;FUEL&gt;топливом&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_GENERIC_MAINT_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Восстановление поврежденных подсистем и полный ремонт.
                                -- Fix all damaged subsystems to complete repair.
                                { "Russian", "Отремонтируйте поврежденные подсистемы" },
                            }
                        },
                        -- не показывает время, баг? удалил, чтобы не мозолил глаза
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TIMED_MSG_SURVEY_OFF" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Выследите &lt;STELLAR&gt;пропавшего&lt;&gt;, прежде чем он &lt;FUEL&gt;сбежит&lt;&gt;.&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы обнаружить беглеца.&#xA;Осталось времени: &lt;RED&gt;%TIME%&lt;&gt;.
                                -- Track the &lt;STELLAR&gt;missing person&lt;&gt; before they &lt;FUEL&gt;escape&lt;&gt;&#xA;Activate a &lt;STELLAR&gt;Target Sweep&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;) to reveal the fugitive&#xA;Time Remaining: &lt;RED&gt;%TIME%&lt;&gt;
                                { "Russian", "Выследите &lt;STELLAR&gt;пропавшего&lt;&gt;, прежде чем он &lt;FUEL&gt;сбежит&lt;&gt;&#xA;Найдите его, используя &lt;STELLAR&gt;разведку цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)&#xA;Осталось времени: &lt;RED&gt;%TIME%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TIMED_MSG_SURVEY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Выследите &lt;STELLAR&gt;пропавшего&lt;&gt;, прежде чем он &lt;FUEL&gt;сбежит&lt;&gt;.&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt;, чтобы выследить беглеца.&#xA;Осталось времени: &lt;RED&gt;%TIME%&lt;&gt;.
                                -- Track the &lt;STELLAR&gt;missing person&lt;&gt; before they &lt;FUEL&gt;escape&lt;&gt;&#xA;Use the &lt;TECHNOLOGY&gt;Target Sweep&lt;&gt; to track the fugitive&#xA;Time Remaining: &lt;RED&gt;%TIME%&lt;&gt;
                                { "Russian", "Выследите &lt;STELLAR&gt;пропавшего&lt;&gt;, прежде чем он &lt;FUEL&gt;сбежит&lt;&gt;&#xA;Найдите его, используя &lt;STELLAR&gt;разведку цели&lt;&gt;&#xA;Осталось времени: &lt;RED&gt;%TIME%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TIMED_MSG_SURVEY_SWAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Выследите &lt;STELLAR&gt;пропавшего&lt;&gt;, прежде чем он &lt;FUEL&gt;сбежит&lt;&gt;.&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;&#xA;Осталось времени: &lt;RED&gt;%TIME%&lt;&gt;.
                                -- Track the &lt;STELLAR&gt;missing person&lt;&gt; before they &lt;FUEL&gt;escape&lt;&gt;&#xA;Activate a &lt;TECHNOLOGY&gt;Target Sweep&lt;&gt; with &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;&#xA;Time Remaining: &lt;RED&gt;%TIME%&lt;&gt;
                                { "Russian", "Выследите &lt;STELLAR&gt;пропавшего&lt;&gt;, прежде чем он &lt;FUEL&gt;сбежит&lt;&gt;&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;&#xA;Осталось времени: &lt;RED&gt;%TIME%&lt;&gt;" },
                            }
                        },
                        -- тут время показывает, просто приводим к единому виду
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_HIDE_SEEK_TIMED_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;FUEL&gt;ВНИМАНИЕ&lt;&gt;: цель скрылась.&#xA;Выследите &lt;STELLAR&gt;пропавшего&lt;&gt;, прежде чем он &lt;FUEL&gt;сбежит&lt;&gt;.&#xA;Осталось времени: &lt;RED&gt;%TIME%&lt;&gt;
                                -- &lt;FUEL&gt;ALERT&lt;&gt;: Target has fled&#xA;Track the &lt;STELLAR&gt;missing person&lt;&gt; before they &lt;FUEL&gt;escape&lt;&gt;&#xA;Time Remaining: &lt;RED&gt;%TIME%&lt;&gt;
                                { "Russian", "&lt;FUEL&gt;ВНИМАНИЕ!&lt;&gt; Цель скрылась&#xA;Выследите &lt;STELLAR&gt;пропавшего&lt;&gt;, прежде чем он &lt;FUEL&gt;сбежит&lt;&gt;&#xA;Осталось времени: &lt;RED&gt;%TIME%&lt;&gt;" },
                            }
                        },
                        -- это показывается в центре экрана, слеши лишние
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MISSING_OBJ1_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;SLASH&lt;&gt; ОБНАРУЖЕНО ВОЗМОЖНОЕ МЕСТО &lt;IMG&gt;SLASH&lt;&gt;
                                -- &lt;IMG&gt;SLASH&lt;&gt; POTENTIAL LOCATION DETECTED &lt;IMG&gt;SLASH&lt;&gt;
                                { "Russian", "ОБНАРУЖЕНО ПРЕДПОЛАГАЕМОЕ МЕСТОПОЛОЖЕНИЕ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_HIDE_SEEK_OBJ1_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;SLASH&lt;&gt; ПОЛУЧЕНЫ ДАННЫЕ О ВОЗМОЖНОМ МЕСТЕ &lt;IMG&gt;SLASH&lt;&gt;
                                -- &lt;IMG&gt;SLASH&lt;&gt; POTENTIAL LOCATION DETAILS RECEIVED &lt;IMG&gt;SLASH&lt;&gt;
                                { "Russian", "ПОЛУЧЕНЫ ДАННЫЕ О ПРЕДПОЛАГАЕМОМ МЕСТОПОЛОЖЕНИИ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "MISSION_REPAIR_OPT_A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Данные переданы
                                -- Transmit Success
                                { "Russian", "Сообщить об успехе" },
                            }
                        },
                        -- лишние точки
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DELIVERY_OBJ1_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Доставьте предмет: %PRIMARYITEM%&#xA;Клиент предоставил точные координаты &lt;TECHNOLOGY&gt;охраняемого склада&lt;&gt;.
                                -- Deliver the %PRIMARYITEM%&#xA;Client has provided direct coordinates for a &lt;TECHNOLOGY&gt;secure depot&lt;&gt;
                                { "Russian", "Доставьте предмет: %PRIMARYITEM%&#xA;Клиент предоставил точные координаты &lt;TECHNOLOGY&gt;безопасного хранилища&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DELIVERY_OBJ1_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %PRIMARYITEM%: доставить на &lt;TECHNOLOGY&gt;охраняемый склад&lt;&gt;&#xA;Клиент передал точные координаты в одной из соседних систем.&#xA;Находясь в космосе, воспользуйтесь &lt;IMG&gt;QUICK_MENU&lt;&gt;, чтобы открыть галактическую карту.
                                -- Deliver the %PRIMARYITEM% to the &lt;TECHNOLOGY&gt;secure depot&lt;&gt;&#xA;Client has provided direct coordinates to a nearby system&#xA;In space, consult the Galaxy Map with &lt;IMG&gt;QUICK_MENU&lt;&gt;
                                { "Russian", "Доставьте товар в &lt;TECHNOLOGY&gt;другую систему&lt;&gt;&#xA;Груз: %PRIMARYITEM%&#xA;Находясь в космосе, откройте галактическую карту (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        -- точки запяточки
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_HIDESEEK_OBJ1_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите &lt;TECHNOLOGY&gt;пропавшего&lt;&gt;.&#xA;Вернитесь на корабль, чтобы начать поиск.
                                -- Locate the &lt;TECHNOLOGY&gt;missing person&lt;&gt;&#xA;Return to your ship to begin the search
                                { "Russian", "Найдите &lt;TECHNOLOGY&gt;пропавшего&lt;&gt;&#xA;Вернитесь на корабль, чтобы начать поиск" },
                            }
                        },
                        -- это капец, обрезается на "в быстром меню ("
                        -- ха, это баг и в оригинале, неправильно указана кнопка
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_HIDESEEK_OBJ1_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите &lt;TECHNOLOGY&gt;пропавшего&lt;&gt;.&#xA;Откройте &lt;TECHNOLOGY&gt;коммуникатор&lt;&gt; в быстром меню (&lt;IMG&gt;&lt;&gt;) и ответьте на вызов.
                                -- Locate the &lt;TECHNOLOGY&gt;missing person&lt;&gt;&#xA;Answer the &lt;TECHNOLOGY&gt;Communicator&lt;&gt; from the Quick Menu &lt;IMG&gt;&lt;&gt;
                                { "Russian", "Незнакомец на связи&#xA;Ответьте по &lt;TECHNOLOGY&gt;коммуникатору&lt;&gt; из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_HIDESEEK_OBJ1_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Встретьтесь с инопланетным осведомителем.&#xA;Он может знать, где найти &lt;TECHNOLOGY&gt;пропавшего&lt;&gt;.
                                -- Meet with the alien informant&#xA;They may know where to find the &lt;TECHNOLOGY&gt;missing person&lt;&gt;
                                { "Russian", "Встретьтесь с инопланетным осведомителем&#xA;Он может знать, где найти &lt;TECHNOLOGY&gt;пропавшего&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_HIDESEEK_OBJ1_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Инопланетный осведомитель сообщил &lt;STELLAR&gt;местоположение цели&lt;&gt;.&#xA;Доберитесь до нужного места и найдите &lt;TECHNOLOGY&gt;пропавшего&lt;&gt;.
                                -- &lt;STELLAR&gt;Target location&lt;&gt; supplied by alien informer&#xA;Reach the location and search for the &lt;TECHNOLOGY&gt;missing person&lt;&gt;
                                { "Russian", "Инопланетный осведомитель сообщил &lt;STELLAR&gt;местоположение цели&lt;&gt;&#xA;Доберитесь до нужного места и найдите &lt;TECHNOLOGY&gt;пропавшего&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_HIDESEEK_OBJ1_MSG5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вы достигли &lt;TECHNOLOGY&gt;последнего известного места&lt;&gt;, где видели цель.&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; в анализирующем визоре &lt;IMG&gt;AIM&lt;&gt;
                                -- Target's &lt;TECHNOLOGY&gt;last known location&lt;&gt; reached&#xA;Activate a &lt;STELLAR&gt;Target Sweep&lt;&gt; from the Analysis Visor &lt;IMG&gt;AIM&lt;&gt;
                                { "Russian", "Вы достигли &lt;TECHNOLOGY&gt;последнего известного места&lt;&gt;, где видели цель&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; в анализирующем визоре &lt;IMG&gt;AIM&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_HIDESEEK_OBJ1_MSG6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вы достигли &lt;TECHNOLOGY&gt;последнего известного места&lt;&gt;, где видели цель.&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;
                                -- Target's &lt;TECHNOLOGY&gt;last known location&lt;&gt; reached&#xA;Activate a &lt;TECHNOLOGY&gt;Target Sweep&lt;&gt; with &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;
                                { "Russian", "Вы достигли &lt;TECHNOLOGY&gt;последнего известного места&lt;&gt;, где видели цель&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_HIDESEEK_OBJ1_MSG7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;Разведка цели&lt;&gt; активирована.&#xA;Двигайтесь по &lt;STELLAR&gt;направляющим&lt;&gt;, чтобы найти &lt;TECHNOLOGY&gt;пропавшего&lt;&gt;.
                                -- &lt;TECHNOLOGY&gt;Target Sweep&lt;&gt; activated&#xA;Follow the &lt;STELLAR&gt;directional indicators&lt;&gt; to locate the &lt;TECHNOLOGY&gt;missing person&lt;&gt;
                                { "Russian", "&lt;TECHNOLOGY&gt;Разведка цели&lt;&gt; активирована&#xA;Двигайтесь по &lt;STELLAR&gt;направляющим&lt;&gt;, чтобы найти &lt;TECHNOLOGY&gt;пропавшего&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_HIDESEEK_OBJ1_MSG8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;Пропавший&lt;&gt; обнаружен.&#xA;Поговорите с целью.
                                -- &lt;TECHNOLOGY&gt;Missing person&lt;&gt; located&#xA;Speak with the target
                                { "Russian", "&lt;TECHNOLOGY&gt;Пропавший&lt;&gt; обнаружен&#xA;Поговорите с целью" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "REFINER_TITLE_HINT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Позволяет перерабатывать сырье в полезные изделия и вещества
                                -- Process raw materials into useable products and substances
                                { "Russian", "Перерабатывает сырье в полезные изделия и вещества" },
                            }
                        },
                        -- нет пробела между Цель: и ИМЯ
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "MISSION_GIVER_CAT_OBJ" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TITLE&gt;&lt;IMG&gt;DIAMONDBULLET&lt;&gt; Цель:&lt;&gt;%OBJ%
                                -- &lt;TITLE&gt;&lt;IMG&gt;DIAMONDBULLET&lt;&gt; Objective:&lt;&gt; %OBJ%
                                { "Russian", "&lt;TITLE&gt;&lt;IMG&gt;DIAMONDBULLET&lt;&gt; Задача:&lt;&gt; %OBJ%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "MISSION_GIVER_CAT_CLIENT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TITLE&gt;&lt;IMG&gt;DIAMONDBULLET&lt;&gt; Клиент:&lt;&gt;%CLIENT%
                                -- &lt;TITLE&gt;&lt;IMG&gt;DIAMONDBULLET&lt;&gt; Client:&lt;&gt; %CLIENT%
                                { "Russian", "&lt;TITLE&gt;&lt;IMG&gt;DIAMONDBULLET&lt;&gt; Клиент:&lt;&gt; %CLIENT%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DEPOT_OBJ1_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите и уничтожьте &lt;TECHNOLOGY&gt;склады ресурсов&lt;&gt;.&#xA;Клиент предоставил &lt;STELLAR&gt;примерные координаты&lt;&gt;.
                                -- Find and destroy &lt;TECHNOLOGY&gt;resource depots&lt;&gt;&#xA;Client has provided &lt;STELLAR&gt;approximate coordinates&lt;&gt;
                                { "Russian", "Найдите и уничтожьте &lt;TECHNOLOGY&gt;склады ресурсов&lt;&gt;&#xA;Клиент предоставил &lt;STELLAR&gt;примерные координаты&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DEPOT_MSG_SURVEY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите и уничтожьте &lt;TECHNOLOGY&gt;склады ресурсов&lt;&gt;.&#xA;Используйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt;, чтобы обнаружить охраняемые склады.
                                -- Find and destroy &lt;TECHNOLOGY&gt;resource depots&lt;&gt;&#xA;Use the &lt;TECHNOLOGY&gt;Target Sweep&lt;&gt; to locate secure depots
                                { "Russian", "Найдите и уничтожьте &lt;TECHNOLOGY&gt;склады ресурсов&lt;&gt;&#xA;Используйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; для их обнаружения" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DEPOT_MSG_SURVEY_SWAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите и уничтожьте &lt;TECHNOLOGY&gt;склады ресурсов&lt;&gt;.&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;
                                -- Find and destroy &lt;TECHNOLOGY&gt;resource depots&lt;&gt;&#xA;Activate a &lt;TECHNOLOGY&gt;Target Sweep&lt;&gt; with &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;
                                { "Russian", "Найдите и уничтожьте &lt;TECHNOLOGY&gt;склады ресурсов&lt;&gt;&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DEPOT_MSG_SURVEY_OFF" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите и уничтожьте &lt;TECHNOLOGY&gt;склады ресурсов&lt;&gt;.&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt;&lt;IMG&gt;AIM&lt;&gt;, чтобы обнаружить охраняемые склады
                                -- Find and destroy &lt;TECHNOLOGY&gt;resource depots&lt;&gt;&#xA;Activate a &lt;STELLAR&gt;Target Sweep&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;) to locate secure depots
                                { "Russian", "Найдите и уничтожьте &lt;TECHNOLOGY&gt;склады ресурсов&lt;&gt;&#xA;Найдите их, используя &lt;STELLAR&gt;разведку цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DEPOT_MSG_SURVEY_CAR" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Неподалеку&lt;&gt; замечены &lt;TECHNOLOGY&gt;склады ресурсов&lt;&gt;.&#xA;Воспользуйтесь &lt;STELLAR&gt;разведкой цели&lt;&gt;, чтобы ее найти.&#xA;Чтобы подтвердить направление разведки, выйдите из своего транспорта.
                                -- &lt;TECHNOLOGY&gt;Resource depots&lt;&gt; are &lt;STELLAR&gt;nearby&lt;&gt;&#xA;Use a &lt;STELLAR&gt;Target Sweep&lt;&gt; to locate the objective&#xA;To confirm target sweep directions, exit your vehicle
                                { "Russian", "&lt;STELLAR&gt;Неподалеку&lt;&gt; замечены &lt;TECHNOLOGY&gt;склады ресурсов&lt;&gt;&#xA;Найдите их, используя &lt;STELLAR&gt;разведку цели&lt;&gt;&#xA;Выйдите из транспорта, чтобы сверить направление" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COLLECT_OBJ1_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите: %PRIMARYITEM% (&lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;)&#xA;Сканируйте (&lt;IMG&gt;SCAN&lt;&gt;) планету из космоса, чтобы найти ресурсы.&#xA;Используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt;, чтобы найти залежи минералов.
                                -- Gather %PRIMARYITEM%: &lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;&#xA;Scan a planet (&lt;IMG&gt;SCAN&lt;&gt;) from space to identify resources&#xA;Use the &lt;TECHNOLOGY&gt;Analysis Visor&lt;&gt; to find mineral deposits
                                { "Russian", "Соберите: %PRIMARYITEM% (&lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;)&#xA;Находите ресурсы, сканируя планеты из космоса (&lt;IMG&gt;SCAN&lt;&gt;)&#xA;&lt;TECHNOLOGY&gt;Анализирующий визор&lt;&gt; поможет найти залежи минералов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COLLECT_OBJ1_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Создайте: %PRIMARYITEM% (&lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;)&#xA;Получите схемы у &lt;TECHNOLOGY&gt;ученого на базе&lt;&gt;.
                                -- Craft %PRIMARYITEM%: &lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;&#xA;Learn recipes from a &lt;TECHNOLOGY&gt;Base Scientist&lt;&gt;
                                { "Russian", "Создайте: %PRIMARYITEM% (&lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;)&#xA;Получите чертежи у &lt;TECHNOLOGY&gt;ученого на базе&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COLLECT_OBJ1_MSG3A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Купите: %PRIMARYITEM% (&lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;)&#xA;Найдите подходящий тип &lt;SPECIAL&gt;экономики системы&lt;&gt;.&#xA;Установите &lt;TECHNOLOGY&gt;сканер экономики&lt;&gt;, чтобы получить данные.
                                -- Purchase %PRIMARYITEM%: &lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;&#xA;Find the correct &lt;SPECIAL&gt;system economy&lt;&gt; type&#xA;Install an &lt;TECHNOLOGY&gt;Economy Scanner&lt;&gt; to see data
                                { "Russian", "Купите: %PRIMARYITEM% (&lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;)&#xA;Найдите подходящий тип &lt;SPECIAL&gt;экономики системы&lt;&gt;&#xA;Установите &lt;TECHNOLOGY&gt;сканер экономики&lt;&gt;, чтобы получить данные" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COLLECT_OBJ1_MSG3B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Купите: %PRIMARYITEM% (&lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;)&#xA;Найдите подходящий тип &lt;SPECIAL&gt;экономики системы&lt;&gt;.&#xA;Купите в торговых терминалах.
                                -- Purchase %PRIMARYITEM%: &lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;&#xA;Find the correct &lt;SPECIAL&gt;system economy&lt;&gt; type&#xA;Purchase from Trade Terminals
                                { "Russian", "Купите: %PRIMARYITEM% (&lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;)&#xA;Найдите подходящий тип &lt;SPECIAL&gt;экономики системы&lt;&gt;&#xA;Предмет продается в торговых терминалах" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COLLECT_OBJ1_MSG4A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите урожай: %PRIMARYITEM% (&lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;)&#xA;Сканируйте (&lt;IMG&gt;SCAN&lt;&gt;) планету из космоса, чтобы найти ресурсы.&#xA;Вырастите посадки на базе с помощью &lt;TRADEABLE&gt;сельскохозяйственного терминала&lt;&gt;.
                                -- Harvest %PRIMARYITEM%: &lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;&#xA;Scan a planet (&lt;IMG&gt;SCAN&lt;&gt;) from space to identify resources&#xA;Grow plants in a base with an &lt;TRADEABLE&gt;Agriculture Terminal&lt;&gt;
                                { "Russian", "Соберите: %PRIMARYITEM% (&lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;)&#xA;Находите ресурсы, сканируя планеты из космоса (&lt;IMG&gt;SCAN&lt;&gt;)&#xA;С помощью &lt;TRADEABLE&gt;сельскохозяйственного терминала&lt;&gt;&#xA;выращивайте растения на базе" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COLLECT_OBJ1_MSG4B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите урожай: %PRIMARYITEM% (&lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;)&#xA;Вырастите посадки на базе или сканируйте планету&#xA;из космоса (&lt;IMG&gt;SCAN&lt;&gt;), чтобы найти ресурсы.
                                -- Harvest %PRIMARYITEM%: &lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;&#xA;Grow plants in your base, or scan a planet&#xA;from space (&lt;IMG&gt;SCAN&lt;&gt;) to identify resources
                                { "Russian", "Соберите: %PRIMARYITEM% (&lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;)&#xA;Вырастите растения на базе или&#xA;найдите ресурсы, сканируя планеты из космоса (&lt;IMG&gt;SCAN&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_REPAIR_OBJ1_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Найдите&lt;&gt; и &lt;STELLAR&gt;почините&lt;&gt; поврежденный механизм.&#xA;Устройство для передачи координат &lt;FUEL&gt;повреждено&lt;&gt;: есть только примерные координаты.
                                -- &lt;STELLAR&gt;Find&lt;&gt; and &lt;STELLAR&gt;repair&lt;&gt; the damaged machinery&#xA;Location reporting service &lt;FUEL&gt;damaged&lt;&gt;: coordinates are approximate
                                { "Russian", "&lt;STELLAR&gt;Найдите&lt;&gt; и &lt;STELLAR&gt;почините&lt;&gt; поврежденный механизм&#xA;Устройство для передачи координат &lt;FUEL&gt;повреждено&lt;&gt;&#xA;Известны лишь примерные координаты" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_REPAIR_OBJ1_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Почините&lt;&gt; поврежденный механизм.
                                -- &lt;STELLAR&gt;Repair&lt;&gt; the damaged machinery
                                { "Russian", "&lt;STELLAR&gt;Почините&lt;&gt; поврежденный механизм" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_REPAIR_MSG_SURVEY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Найдите&lt;&gt; и &lt;STELLAR&gt;почините&lt;&gt; поврежденный механизм.&#xA;Используйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt;, чтобы точно установить координаты места ремонта.
                                -- &lt;STELLAR&gt;Find&lt;&gt; and &lt;STELLAR&gt;repair&lt;&gt; the damaged machinery&#xA;Use the &lt;TECHNOLOGY&gt;Target Sweep&lt;&gt; to pinpoint the repair site
                                { "Russian", "&lt;STELLAR&gt;Найдите&lt;&gt; и &lt;STELLAR&gt;почините&lt;&gt; поврежденный механизм&#xA;Узнайте точные координаты места ремонта&#xA;с помощью &lt;TECHNOLOGY&gt;разведки цели&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_REPAIR_MSG_SURVEY_SWAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Найдите&lt;&gt; и &lt;STELLAR&gt;почините&lt;&gt; поврежденный механизм.&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;
                                -- &lt;STELLAR&gt;Find&lt;&gt; and &lt;STELLAR&gt;repair&lt;&gt; the damaged machinery&#xA;Activate a &lt;TECHNOLOGY&gt;Target Sweep&lt;&gt; with &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;
                                { "Russian", "&lt;STELLAR&gt;Найдите&lt;&gt; и &lt;STELLAR&gt;почините&lt;&gt; поврежденный механизм&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_REPAIR_MSG_SURVEY_OFF" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Найдите&lt;&gt; и &lt;STELLAR&gt;почините&lt;&gt; поврежденный механизм.&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы точно установить координаты места ремонта.
                                -- &lt;STELLAR&gt;Find&lt;&gt; and &lt;STELLAR&gt;repair&lt;&gt; the damaged machinery&#xA;Activate a &lt;STELLAR&gt;Target Sweep&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;) to pinpoint the repair site
                                { "Russian", "&lt;STELLAR&gt;Найдите&lt;&gt; и &lt;STELLAR&gt;почините&lt;&gt; поврежденный механизм&#xA;Узнайте точные координаты места ремонта&#xA;с помощью &lt;STELLAR&gt;разведки цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)" },
                            }
                        },
                        -- забыли пробелы
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "MISSION_GIVER_CAT_RANK" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TITLE&gt;&lt;IMG&gt;DIAMONDBULLET&lt;&gt; Требуется ранг:&lt;&gt;%RANK%
                                -- &lt;TITLE&gt;&lt;IMG&gt;DIAMONDBULLET&lt;&gt; Required Rank:&lt;&gt; %RANK%
                                { "Russian", "&lt;TITLE&gt;&lt;IMG&gt;DIAMONDBULLET&lt;&gt; Требуется ранг:&lt;&gt; %RANK%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "MISSION_GIVER_CAT_FACTION" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TITLE&gt;&lt;IMG&gt;DIAMONDBULLET&lt;&gt; Ответственная фракция:&lt;&gt;%FACTION%
                                -- &lt;TITLE&gt;&lt;IMG&gt;DIAMONDBULLET&lt;&gt; Commissioning Faction:&lt;&gt; %FACTION%
                                { "Russian", "&lt;TITLE&gt;&lt;IMG&gt;DIAMONDBULLET&lt;&gt; Ответственная фракция:&lt;&gt; %FACTION%" },
                            }
                        },
                        -- точки
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FIEND_KILL_OBJ1_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите очаг &lt;SPECIAL&gt;заражения&lt;&gt;.&#xA;Двигайтесь по &lt;STELLAR&gt;указанным координатам&lt;&gt;.
                                -- Locate the heart of the &lt;SPECIAL&gt;infestation&lt;&gt;&#xA;Follow the &lt;STELLAR&gt;marked coordinates&lt;&gt;
                                { "Russian", "Найдите очаг &lt;SPECIAL&gt;заражения&lt;&gt;&#xA;Двигайтесь по &lt;STELLAR&gt;указанным координатам&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FIEND_KILL_SURVEY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружьте очаг &lt;SPECIAL&gt;заражения&lt;&gt;.&#xA;Используйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt;, чтобы найти гнездо.
                                -- Reveal the heart of the &lt;SPECIAL&gt;infestation&lt;&gt;&#xA;Use the &lt;TECHNOLOGY&gt;Target Sweep&lt;&gt; to hunt for the nest
                                { "Russian", "Обнаружьте очаг &lt;SPECIAL&gt;заражения&lt;&gt;&#xA;Используйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt;, чтобы найти гнездо" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FIEND_KILL_SURVEY_SWAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружьте очаг &lt;SPECIAL&gt;заражения&lt;&gt;.&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;
                                -- Reveal the heart of the &lt;SPECIAL&gt;infestation&lt;&gt;&#xA;Activate a &lt;TECHNOLOGY&gt;Target Sweep&lt;&gt; with &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;
                                { "Russian", "Обнаружьте очаг &lt;SPECIAL&gt;заражения&lt;&gt;&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FIEND_KILL_SURVEY_OFF" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружьте очаг &lt;SPECIAL&gt;заражения&lt;&gt;.&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы найти гнездо.
                                -- Reveal the heart of the &lt;SPECIAL&gt;infestation&lt;&gt;&#xA;Activate a &lt;STELLAR&gt;Target Sweep&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;) to hunt for the nest
                                { "Russian", "Обнаружьте очаг &lt;SPECIAL&gt;заражения&lt;&gt;&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы найти гнездо" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FIEND_KILL_SURVEY_CAR" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите очаг &lt;SPECIAL&gt;заражения&lt;&gt;.&#xA;Воспользуйтесь &lt;STELLAR&gt;разведкой цели&lt;&gt;, чтобы ее найти.&#xA;Чтобы подтвердить направление разведки, выйдите из своего транспорта.
                                -- Reveal the heart of the &lt;SPECIAL&gt;infestation&lt;&gt;&#xA;Use a &lt;STELLAR&gt;Target Sweep&lt;&gt; to locate the objective&#xA;To confirm target sweep directions, exit your vehicle
                                { "Russian", "Найдите очаг &lt;SPECIAL&gt;заражения&lt;&gt;&#xA;Воспользуйтесь &lt;STELLAR&gt;разведкой цели&lt;&gt;, чтобы ее найти&#xA;Выйдите из транспорта, чтобы сверить направление" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FIEND_KILL_OBJ2_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите и убейте тварей: &lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;&lt;FUEL&gt;ВНИМАНИЕ&lt;&gt;: нападение на шепчущие яйца привлечет внимание роя...
                                -- Find and kill monstrosities :&lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;&#xA;&lt;FUEL&gt;WARNING&lt;&gt;: Disturbing whispering eggs will summon the brood...
                                { "Russian", "Найдите и убейте тварей: &lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;&#xA;&lt;FUEL&gt;Нападение на шепчущие яйца&lt;&gt; привлечет внимание роя..." },
                            }
                        },
                        -- нужно тестить хорошо; вроде ок, да, текст теперь плавает на экране достижений, ну а что
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "EXP_GUILD_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Гильдия исследоват.
                                -- Explorers Guild
                                { "Russian", "Гильдия исследователей" },
                            }
                        },
                        -- не влазеет в экран нормально
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_REPAIR_OBJ" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найти и отремонтировать поврежденный механизм
                                -- Locate and repair the damaged machinery
                                { "Russian", "Найти и починить поврежденный механизм" },
                            }
                        },
                        -- сократим для красоты
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BNTY_EASY_OBJ" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найти и уничтожить цель, за которую объявлена награда
                                -- Locate and destroy the bounty target
                                { "Russian", "Найти и уничтожить цель в розыске" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BNTY_MED_OBJ" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найти и уничтожить цель, за которую объявлена награда
                                -- Locate and destroy the bounty target
                                { "Russian", "Найти и уничтожить цель в розыске" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BNTY_HARD_OBJ" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найти и уничтожить цель, за которую объявлена награда
                                -- Locate and destroy the bounty target
                                { "Russian", "Найти и уничтожить цель в розыске" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SCANEVENT_GOTO_MAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Совершите варп-прыжок в другую систему.&#xA;Откройте галактическую карту с помощью &lt;IMG&gt;QUICK_MENU&lt;&gt;.
                                -- Mission target is in another system&#xA;In space, consult the Galaxy Map with &lt;IMG&gt;QUICK_MENU&lt;&gt;
                                { "Russian", "Совершите прыжок в другую систему&#xA;Находясь в космосе, откройте галактическую карту (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PHOTO_BIO_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Клиенту нужны фотографии определенных планет.&#xA;Чтобы получить информацию о планете, находясь в космосе, используйте &lt;TECHNOLOGY&gt;корабельный сканер&lt;&gt; (&lt;IMG&gt;SHIPSCAN&lt;&gt;).
                                -- The client requires photos of specific worlds.&#xA;Learn information about planets from space by using the &lt;TECHNOLOGY&gt;Ship Scanner&lt;&gt; (&lt;IMG&gt;SHIPSCAN&lt;&gt;).
                                { "Russian", "Клиенту нужны фотографии определенных планет.&#xA;Чтобы получить информацию о планете, находясь в космосе, используйте &lt;TECHNOLOGY&gt;корабельный сканер&lt;&gt; (&lt;IMG&gt;SHIPSCAN&lt;&gt;)." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SCAN_TREE_OBJ1_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Клиенту нужны сканы с &lt;STELLAR&gt;определенной планеты&lt;&gt;.&#xA;Чтобы найти нужный&lt;TRADEABLE&gt;район исследования растений&lt;&gt;, откройте &lt;VAL_ON&gt;галактическую карту&lt;&gt;, находясь в космосе.
                                -- The client has requested scans from a &lt;STELLAR&gt;specific planet&lt;&gt;&#xA;Consult the &lt;VAL_ON&gt;Galaxy Map&lt;&gt; while in space to locate the &lt;TRADEABLE&gt;Floral Survey Location&lt;&gt;
                                { "Russian", "Клиенту нужны сканы с &lt;STELLAR&gt;определенной планеты&lt;&gt;&#xA;Найдите нужный &lt;TRADEABLE&gt;район исследования растений&lt;&gt;&#xA;Находясь в космосе, откройте &lt;VAL_ON&gt;галактическую карту&lt;&gt; (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SCAN_TREE_OBJ1_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Клиенту нужны сканы с &lt;STELLAR&gt;определенной планеты&lt;&gt;.&#xA;Совершите посаду в нужном &lt;TRADEABLE&gt;районе исследования растений&lt;&gt;, чтобы начать сканирование.
                                -- The client has requested scans from a &lt;STELLAR&gt;specific planet&lt;&gt;&#xA;Land at the &lt;TRADEABLE&gt;Floral Survey Location&lt;&gt; to begin scanning
                                { "Russian", "Клиенту нужны сканы с &lt;STELLAR&gt;определенной планеты&lt;&gt;&#xA;Совершите посадку в &lt;TRADEABLE&gt;районе исследования растений&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SCAN_TREE_OBJ1_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Просканируйте уникальные растения: &lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;&#xA;Для сканирования используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;).
                                -- Scan unique plants: &lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;&#xA;Use the &lt;TECHNOLOGY&gt;Analysis Visor&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;) to scan
                                { "Russian", "Просканируйте уникальные растения: &lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;&#xA;Для сканирования используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TREE_SCAN_TARGET_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружена неизвестная планета для исследования растений. &lt;IMG&gt;SLASH&lt;&gt; Откройте галактическую карту.
                                -- Undiscovered Planet located for Floral Survey &lt;IMG&gt;SLASH&lt;&gt; Consult Galaxy Map
                                { "Russian", "Найдена неизвестная планета для исследования растений" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SCAN_MIN_OBJ1_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Клиенту нужны сканы с &lt;STELLAR&gt;определенной планеты&lt;&gt;.&#xA;Чтобы найти нужный&lt;TECHNOLOGY&gt;район исследования минералов&lt;&gt;, откройте &lt;VAL_ON&gt;галактическую карту&lt;&gt;, находясь в космосе.
                                -- The client has requested scans from a &lt;STELLAR&gt;specific planet&lt;&gt;&#xA;Consult the &lt;VAL_ON&gt;Galaxy Map&lt;&gt; while in space to locate the &lt;TECHNOLOGY&gt;Mineral Survey Location&lt;&gt;
                                { "Russian", "Клиенту нужны сканы с &lt;STELLAR&gt;определенной планеты&lt;&gt;&#xA;Найдите нужный &lt;TRADEABLE&gt;район исследования минералов&lt;&gt;&#xA;Находясь в космосе, откройте &lt;VAL_ON&gt;галактическую карту&lt;&gt; (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SCAN_MIN_OBJ1_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Клиенту нужны сканы с &lt;STELLAR&gt;определенной планеты&lt;&gt;.&#xA;Совершите посаду в нужном &lt;TECHNOLOGY&gt;районе исследования минералов&lt;&gt;, чтобы начать сканирование.
                                -- The client has requested scans from a &lt;STELLAR&gt;specific planet&lt;&gt;&#xA;Land at the &lt;TECHNOLOGY&gt;Mineral Survey Location&lt;&gt; to begin scanning
                                { "Russian", "Клиенту нужны сканы с &lt;STELLAR&gt;определенной планеты&lt;&gt;&#xA;Совершите посадку в &lt;TECHNOLOGY&gt;районе исследования минералов&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SCAN_MIN_OBJ1_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Просканируйте уникальные минералы: &lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;&#xA;Для сканирования используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;).
                                -- Scan unique minerals: &lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;&#xA;Use the &lt;TECHNOLOGY&gt;Analysis Visor&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;) to scan
                                { "Russian", "Просканируйте уникальные минералы: &lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;&#xA;Для сканирования используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MIN_SCAN_TARGET_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружена неизвестная планета для исследования минералов. &lt;IMG&gt;SLASH&lt;&gt; Откройте галактическую карту.
                                -- Undiscovered Planet located for Mineral Survey &lt;IMG&gt;SLASH&lt;&gt; Consult Galaxy Map
                                { "Russian", "Найдена неизвестная планета для исследования минералов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SCAN_CRE_OBJ1_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Клиенту нужны сканы с &lt;STELLAR&gt;определенной планеты&lt;&gt;&#xA;Чтобы найти нужный&lt;TRADEABLE&gt;район исследования&lt;&gt;, откройте &lt;VAL_ON&gt;галактическую карту&lt;&gt;, находясь в космосе.
                                -- The client has requested scans from a &lt;STELLAR&gt;specific planet&lt;&gt;&#xA;Consult the &lt;VAL_ON&gt;Galaxy Map&lt;&gt; while in space to locate the &lt;TRADEABLE&gt;survey location&lt;&gt;
                                { "Russian", "Клиенту нужны сканы с &lt;STELLAR&gt;определенной планеты&lt;&gt;&#xA;Найдите нужный &lt;TRADEABLE&gt;район исследования&lt;&gt;&#xA;Находясь в космосе, откройте &lt;VAL_ON&gt;галактическую карту&lt;&gt; (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SCAN_CRE_OBJ1_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Клиенту нужны сканы с &lt;STELLAR&gt;определенной планеты&lt;&gt;.&#xA;Совершите посаду в нужном &lt;TRADEABLE&gt;районе исследования существ&lt;&gt;, чтобы начать сканирование.
                                -- The client has requested scans from a &lt;STELLAR&gt;specific planet&lt;&gt;&#xA;Land at the &lt;TRADEABLE&gt;Creature Survey Location&lt;&gt; to begin scanning
                                { "Russian", "Клиенту нужны сканы с &lt;STELLAR&gt;определенной планеты&lt;&gt;&#xA;Совершите посадку в &lt;TRADEABLE&gt;районе исследования существ&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SCAN_CRE_OBJ1_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Просканируйте уникальных существ: &lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;&#xA;Для сканирования используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;).
                                -- Scan unique creatures: &lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;&#xA;Use the &lt;TECHNOLOGY&gt;Analysis Visor&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;) to scan
                                { "Russian", "Просканируйте уникальных существ: &lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;&#xA;Для сканирования используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CRE_SCAN_TARGET_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружена неизвестная планета для исследования существ. &lt;IMG&gt;SLASH&lt;&gt; Откройте галактическую карту.
                                -- Undiscovered Planet located for Creature Survey &lt;IMG&gt;SLASH&lt;&gt; Consult Galaxy Map
                                { "Russian", "Найдена неизвестная планета для исследования существ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BNTY_EASY_OBJ2A_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вернитесь к цели, за которую объявлена награда.
                                -- Return to the bounty target
                                { "Russian", "Вернитесь к цели, за которую объявлена награда" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BNTY_MED_OBJ2A_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вернитесь к цели, за которую объявлена награда.
                                -- Return to the bounty target
                                { "Russian", "Вернитесь к цели, за которую объявлена награда" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BNTY_HARD_OBJ1A_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Возвращайтесь с грузового корабля на свой корабль.
                                -- Return to your ship and leave the freighter
                                { "Russian", "Покиньте грузовое судно на своем звездолёте" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BNTY_HARD_OBJ2A_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вернитесь к цели, за которую объявлена награда.
                                -- Return to the bounty target
                                { "Russian", "Вернитесь к цели, за которую объявлена награда" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CRE_KILL_OBJ1_MSG_ALT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Убейте животных: &lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;&#xA;Чтобы обнаружить их, используйте анализирующий визор (&lt;IMG&gt;AIM&lt;&gt;).&#xA;В визоре ищите &lt;FUEL&gt;красные точки&lt;&gt; или &lt;TRADEABLE&gt;зеленые следы лап&lt;&gt;.
                                -- Cull creatures: &lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;&#xA;Locate creatures using the Analysis Visor (&lt;IMG&gt;AIM&lt;&gt;)&#xA;In the Visor, look for &lt;FUEL&gt;red dots&lt;&gt; or &lt;TRADEABLE&gt;green pawprints&lt;&gt;
                                { "Russian", "Убейте животных: &lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;&#xA;Чтобы обнаружить их, используйте анализирующий визор (&lt;IMG&gt;AIM&lt;&gt;)&#xA;В визоре ищите &lt;FUEL&gt;красные точки&lt;&gt; или &lt;TRADEABLE&gt;зеленые следы лап&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PRED_KILL_OBJ1_MSG_ALT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Убейте хищных животных: &lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;&#xA;Чтобы обнаружить их, используйте анализирующий визор (&lt;IMG&gt;AIM&lt;&gt;).&#xA;В визоре ищите &lt;FUEL&gt;красные точки&lt;&gt; или &lt;TRADEABLE&gt;зеленые следы лап&lt;&gt;.
                                -- Cull predatory creatures: &lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;&#xA;Locate creatures using the Analysis Visor (&lt;IMG&gt;AIM&lt;&gt;)&#xA;In the Visor, look for &lt;FUEL&gt;red dots&lt;&gt; or &lt;TRADEABLE&gt;green pawprints&lt;&gt;
                                { "Russian", "Убейте хищных животных: &lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;&#xA;Чтобы обнаружить их, используйте анализирующий визор (&lt;IMG&gt;AIM&lt;&gt;)&#xA;В визоре ищите &lt;FUEL&gt;красные точки&lt;&gt; или &lt;TRADEABLE&gt;зеленые следы лап&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NPC_MISSION_CRE_SCAN_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найти и отсканировать существ, обитающих на планете
                                -- Track and Scan Planetary Creatures
                                { "Russian", "Найти и отсканировать существ на планете" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NPC_MISSION_TREE_SCAN_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найти и отсканировать растения, растущие на планете
                                -- Track and Scan Planetary Flora
                                { "Russian", "Найти и отсканировать растения на планете" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NPC_MISSION_MIN_SCAN_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найти и отсканировать минералы, встречающиеся на планете
                                -- Track and Scan Planetary Minerals
                                { "Russian", "Найти и отсканировать минералы на планете" },
                            }
                        },
                        --
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "PC_MENU_QUIT_TO_DESKTOP_U" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ВЫЙТИ НА РАБОЧИЙ СТОЛ
                                -- QUIT TO DESKTOP
                                { "Russian", "ВЫЙТИ ИЗ ИГРЫ" },
                            }
                        },
                        --
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FREIGHT_BATTLE_MSG_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Осталось враждебных пиратов: &lt;FUEL&gt;%AMOUNT%&lt;&gt;&#xA;%FLIGHT_TIP%&#xA;Используйте &lt;IMG&gt;PREVTARGET&lt;&gt;/&lt;IMG&gt;NEXTTARGET&lt;&gt;, чтобы сменить цель.
                                -- Hostile pirates remaining: &lt;FUEL&gt;%AMOUNT%&lt;&gt;&#xA;%FLIGHT_TIP%&#xA;Change targets with &lt;IMG&gt;PREVTARGET&lt;&gt; / &lt;IMG&gt;NEXTTARGET&lt;&gt;
                                { "Russian", "Осталось враждебных пиратов: &lt;FUEL&gt;%AMOUNT%&lt;&gt;&#xA;%FLIGHT_TIP%&#xA;Сменить цель: &lt;IMG&gt;PREVTARGET&lt;&gt;/&lt;IMG&gt;NEXTTARGET&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FREIGHT_BATTLE_MSG_1A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;FUEL&gt;ЗАРЯД ЩИТА %SHIELD%%&lt;&gt; Перезарядите его в быстром меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)&#xA;%FLIGHT_TIP%&#xA;Используйте &lt;IMG&gt;PREVTARGET&lt;&gt; / &lt;IMG&gt;NEXTTARGET&lt;&gt;, чтобы сменить цель.
                                -- &lt;FUEL&gt;SHIELD AT %SHIELD%%&lt;&gt; Recharge in Quick Menu (&lt;IMG&gt;QUICK_MENU&lt;&gt;)&#xA;%FLIGHT_TIP%&#xA;Change targets with &lt;IMG&gt;PREVTARGET&lt;&gt; / &lt;IMG&gt;NEXTTARGET&lt;&gt;
                                { "Russian", "&lt;FUEL&gt;ЩИТ ЗВЕЗДОЛЁТА: %SHIELD%%&lt;&gt;&#xA;Перезарядитесь из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)&#xA;%FLIGHT_TIP%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FREIGHT_BATTLE_MSG_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Состыкуйтесь с ведущим грузовым кораблем и поговорите с &lt;STELLAR&gt;капитаном&lt;&gt;.&#xA;Вы будете &lt;COMMODITY&gt;вознаграждены&lt;&gt; за помощь.
                                -- Land in lead freighter and speak to the &lt;STELLAR&gt;Captain&lt;&gt;&#xA;Your assistance will be &lt;COMMODITY&gt;rewarded&lt;&gt;
                                { "Russian", "Состыкуйтесь с ведущим грузовым кораблем&#xA;и поговорите с &lt;STELLAR&gt;капитаном&lt;&gt;&#xA;Вы будете &lt;COMMODITY&gt;вознаграждены&lt;&gt; за помощь" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FREIGHT_BATTLE_MSG_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Пройдите на мостик и поговорите с &lt;STELLAR&gt;капитаном&lt;&gt;.&#xA;Вы будете &lt;COMMODITY&gt;вознаграждены&lt;&gt; за помощь.
                                -- Make your way to the bridge and speak to the &lt;STELLAR&gt;Captain&lt;&gt;&#xA;Your assistance will be &lt;COMMODITY&gt;rewarded&lt;&gt;
                                { "Russian", "Пройдите на мостик и поговорите с &lt;STELLAR&gt;капитаном&lt;&gt;&#xA;Вы будете &lt;COMMODITY&gt;вознаграждены&lt;&gt; за помощь" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FREIGHT_BATTLE_MSG_4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поговорите с &lt;STELLAR&gt;капитаном&lt;&gt;.&#xA;Вы будете &lt;COMMODITY&gt;вознаграждены&lt;&gt; за помощь.
                                -- Speak to the &lt;STELLAR&gt;Captain&lt;&gt;&#xA;Your assistance will be &lt;COMMODITY&gt;rewarded&lt;&gt;
                                { "Russian", "Поговорите с &lt;STELLAR&gt;капитаном&lt;&gt;&#xA;Вы будете &lt;COMMODITY&gt;вознаграждены&lt;&gt; за помощь" },
                            }
                        },
                        --
                        -- на центральном экране звездолета
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_HIDE_SEEK_ALERT_HUD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПОЛУЧЕН ЗАКОДИРОВАННЫЙ СИГНАЛ
                                -- ENCRYPTED SIGNAL RECEIVED
                                { "Russian", "АНОНИМНЫЙ ИСТОЧНИК" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_HIDE_SEEK_OBJ2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Проверить зацепку, полученную от таинственного посланника
                                -- Follow the lead from the mysterious messenger
                                { "Russian", "Следовать указаниям таинственного посланника" },
                            }
                        },
                        -- XXX: используется и как уведомление; см. METADATA\SIMULATION\MISSIONS\TABLES\NPCMISSIONTABLE.MBIN
                        -- есть группа текста для уведомлений UI_HIDESEEK_OBJ1_MSG{1-9}
                        -- должна быть создана аналогичная для OBJ3
                        -- итог: это возможно исправят через официальный zendesk, а возможно что и не исправят
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "UI_HIDE_SEEK_OBJ3_TIP" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Выследите скрывающееся существо и передайте его координаты клиенту.&#xA;Потенциальная зацепка внесена в систему навигации.&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; в &lt;TECHNOLOGY&gt;анализирующем визоре&lt;&gt;, чтобы ускорить поиск скрытых целей.
                        --         -- Track the hidden individual and report their location to the client.&#xA;A potential lead has been logged to your navigation systems.&#xA;Use a &lt;STELLAR&gt;Target Sweep&lt;&gt; from the &lt;TECHNOLOGY&gt;Analysis Visor&lt;&gt; to help search for obscured targets.
                        --         { "Russian", "Выследите скрывающееся существо и передайте его координаты клиенту&#xA;Потенциальная зацепка внесена в систему навигации&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; в &lt;TECHNOLOGY&gt;анализирующем визоре&lt;&gt;, чтобы ускорить поиск скрытых целей" },
                        --     }
                        -- },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NAV_DROPPOD_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Зашифрованные навигационные данные, расшифровка которых позволит определить местоположение &lt;TECHNOLOGY&gt;капсулы&lt;&gt; с &lt;STELLAR&gt;улучшением инвентаря&lt;&gt; экзокостюма.&#xA;&#xA;Выберите координаты в инвентаре и &lt;TECHNOLOGY&gt;проложите маршрут&lt;&gt; (&lt;IMG&gt;FE_ALT1&lt;&gt;), чтобы закрепить местоположение на экране вашего экзокостюма.
                                -- Encoded navigation data which, when properly decrypted, will reveal the location of a &lt;TECHNOLOGY&gt;Drop Pod&lt;&gt; containing an Exosuit &lt;STELLAR&gt;Inventory Upgrade&lt;&gt;.&#xA;&#xA;Select the coordinates in the inventory and use &lt;TECHNOLOGY&gt;Plot Route&lt;&gt; (&lt;IMG&gt;FE_ALT1&lt;&gt;) to pin the location in your Exosuit display.
                                { "Russian", "Зашифрованные навигационные данные, расшифровка которых позволит определить местоположение &lt;TECHNOLOGY&gt;капсулы&lt;&gt; для &lt;STELLAR&gt;улучшения инвентаря&lt;&gt; экзокостюма.&#xA;&#xA;Выберите карту в инвентаре и &lt;TECHNOLOGY&gt;проложите маршрут&lt;&gt; (&lt;IMG&gt;FE_ALT1&lt;&gt;). Местоположение &lt;TECHNOLOGY&gt;капсулы&lt;&gt; будет отображено на экране вашего экзокостюма." },
                            }
                        },
                        -- перевод делать, да? хорошо платить, а? работа плоха!
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FREIGHTER_DRIVE_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ГРУЗОВОЙ КОРАБЛЬ ГИПЕРДВИГАТЕЛЬ
                                -- FREIGHTER HYPERDRIVE
                                { "Russian", "ГИПЕРДВИГАТЕЛЬ ГРУЗОВОГО СУДНА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FREIGHTER_DRIVE_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Грузовой корабль Гипердвигатель
                                -- Freighter Hyperdrive
                                { "Russian", "Гипердвигатель грузового судна" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FREIGHTER_DRIVE_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сверхсветовой реактивный двигатель, позволяющий звездолету достигать варп-скорости и прыгать между соседними системами.
                                -- FTL propulsion drive that allows starship to attain warp speed and jump between neighbouring systems.
                                { "Russian", "Сверхсветовой реактивный двигатель, позволяющий грузовому судну достигать варп-скорости и прыгать между соседними системами." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SHIP_TELEPORT_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Корабельное телепортационное устройство
                                -- Ship-Mounted Teleportation Device
                                { "Russian", "Устройство телепортации предметов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "COMPARE_TRADE_IN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Цена встречной продажи: &lt;STAT&gt;%TOTAL%&lt;&gt;
                                -- Trade-in Price: &lt;STAT&gt;%TOTAL%&lt;&gt;
                                { "Russian", "Встречная цена: &lt;STAT&gt;%TOTAL%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SHORT_SHIP_EXCHANGE_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Продать текущий корабль в счет покупки нового
                                -- Trade in current ship
                                { "Russian", "Поменять корабль на корабль" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NOTIFY_NEW_SHIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;COMMODITY&gt;Новый корабль получен&lt;&gt;&#xA;Чтобы отменить покупку,&#xA;взаимодействуйте со старым кораблем до отбытия.
                                -- &lt;COMMODITY&gt;New Ship Acquired&lt;&gt;&#xA;To undo this purchase,&#xA;interact with your old ship before you leave
                                { "Russian", "&lt;COMMODITY&gt;Получен новый корабль&lt;&gt;&#xA;Взаимодействуйте со старым кораблем&#xA;до отбытия для отмены покупки" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COMPOUND_6_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Крионасос состоит из сложного, саморегулирующегося гибридного материала и сверхэффективно распределяет тепло, что делает его незаменимым компонентом терморегуляторов.&#xA;&#xA;Производится из &lt;TECHNOLOGY&gt;горячего льда&lt;&gt; и &lt;FUEL&gt;термического конденсата&lt;&gt;.
                                -- An advanced, self-regulating hybrid material, the Cryo-Pump distributes heat across itself with near perfect efficiency, making it vital in the creation of thermal regulators.&#xA;&#xA;Crafted from &lt;TECHNOLOGY&gt;Hot Ice&lt;&gt; and &lt;FUEL&gt;Thermic Condensate&lt;&gt;
                                { "Russian", "Крионасос состоит из сложного, саморегулирующегося гибридного материала и сверхэффективно распределяет тепло, что делает его незаменимым компонентом терморегуляторов.&#xA;&#xA;Изготавливается из &lt;TECHNOLOGY&gt;горячего льда&lt;&gt; и &lt;FUEL&gt;термического конденсата&lt;&gt;." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NONE_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Неизвестн.
                                -- Uncharted
                                { "Russian", "Неизвестно" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "MISSION_FACTION_NONE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Неизвестн.
                                -- Uncharted
                                { "Russian", "Неизвестно" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIRATE_HAIL_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Передайте вражеской силе подпространственное послание.&#xA;Чтобы использовать передатчик, нажмите &lt;IMG&gt;QUICK_MENU&lt;&gt;.&#xA;Осталось времени: %TIME% сек.
                                -- Send sub-space signal to hostile force&#xA;Use Communicator by pressing &lt;IMG&gt;QUICK_MENU&lt;&gt;&#xA;Time remaining: %TIME%s
                                { "Russian", "Свяжитесь с пиратами, чтобы &lt;COMMODITY&gt;договориться&lt;&gt;&#xA;Используйте коммуникатор, нажав &lt;IMG&gt;QUICK_MENU&lt;&gt;&#xA;Осталось времени: %TIME% сек." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_POLICE_ASSIST_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Власти системы отреагировали на запрос помощи. &#xA;Осталось времени: %TIME% сек.
                                -- System Authorities responding to assistance request &#xA;Time remaining: %TIME%s
                                { "Russian", "Власти системы отреагировали на запрос помощи&#xA;Осталось времени: %TIME% сек." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "POLICE_TOKEN_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Подтверждение договоренности с местными властями
                                -- System Authority Payment Substitute
                                { "Russian", "Расписка местных властей" },
                            }
                        },
                        -- На центральном экране в звездолете
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "HOSTILE_SCAN_T" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вражеское сканиров. (Hostile Scan)
                                { "Russian", "ВРАЖЕСКАЯ УГРОЗА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "HOSTILE_SCAN_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Идет подпространственное скан.
                                -- Sub-space scan in progress
                                { "Russian", "СКАНИРОВАНИЕ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_LAST_SAVE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сохранено:
                                -- Last Save
                                { "Russian", "Сохранено" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SHIP_BUY_UNITS_S" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Купить (%COST% &lt;IMG&gt;UNITSMALL&lt;&gt;)
                                -- Buy (%COST% &lt;IMG&gt;UNITSMALL&lt;&gt;)
                                { "Russian", "Купить &lt;IMG&gt;UNITSMALL&lt;&gt;%COST%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SHIP_EXCHANGE_UNITS_S" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обменять (%COST% &lt;IMG&gt;UNITSMALL&lt;&gt;)
                                -- Exchange (%COST% &lt;IMG&gt;UNITSMALL&lt;&gt;)
                                { "Russian", "Обменять &lt;IMG&gt;UNITSMALL&lt;&gt;%COST%" },
                            }
                        },
                        -- т.к. в игре "минералы" это по сути отдельные камни,
                        -- то правильно указать горные породы, а не просто "образцы минералов" -- такого понятия вообще нет
                        -- т.о., либо просто минералы, либо минеральные виды
                        -- и игра считает именно виды, а не общее кол-во найденных штук
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "DISC_MINERALS_DISCOVERED" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружены образцы минералов: %AMOUNT% шт.
                                -- %AMOUNT% Mineral Samples Discovered
                                { "Russian", "Обнаружено минералов: %AMOUNT%" },
                            }
                        },
                        -- продвинутая переводчица делает продвинутые переводы в продвинутых играх
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COMPOUND_2_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Продвинутый материал, широко используемый в электронике. Обладает встроенным терморегулятором.&#xA;&#xA;Производится из &lt;FUEL&gt;термического конденсата&lt;&gt; и &lt;TECHNOLOGY&gt;азотной соли&lt;&gt;.
                                -- An advanced material useful in many electronic devices, with its own in-built temperature regulator.&#xA;&#xA;Crafted from &lt;FUEL&gt;Thermic Condensate&lt;&gt; and &lt;TECHNOLOGY&gt;Nitrogen Salt&lt;&gt;.
                                { "Russian", "Прогрессивный материал, широко используемый в электронике. Обладает встроенным терморегулятором.&#xA;&#xA;Производится из &lt;FUEL&gt;термического конденсата&lt;&gt; и &lt;TECHNOLOGY&gt;азотной соли&lt;&gt;." },
                            }
                        },
                        --
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLDBUT_PROD_MORE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Чтобы изменить объем производства, используйте &lt;IMG&gt;UI_LEFT&lt;&gt; и &lt;IMG&gt;UI_RIGHT&lt;&gt;
                                -- Change craft amount with &lt;IMG&gt;UI_LEFT&lt;&gt; and &lt;IMG&gt;UI_RIGHT&lt;&gt;
                                { "Russian", "Меняйте объем производства с помощью &lt;IMG&gt;UI_LEFT&lt;&gt; и &lt;IMG&gt;UI_RIGHT&lt;&gt;" },
                            }
                        },
                        -- 1е эта строка в любом случае не влазеет
                        -- 2е "хозяины" это у америкосов
                        -- 3е в оригинале ни слова про "хозяев"
                        -- 4е есть хозяин в доме, но всем остальным _владеют_
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NPC_SHIP_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Звездолет, хоз.: %NAME%
                                -- Starship of %NAME%
                                { "Russian", "Владелец: %NAME%" },
                            }
                        },
                        --
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SUIT_TITLE_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Оборудование
                                -- Equipment
                                { "Russian", "Снаряжение" },
                            }
                        },

                        --#region Dominant Lifeform
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SYSTEM_INFO_RACE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Домин. раса:
                                -- Dominant Lifeform:
                                { "Russian", "Раса:" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SYSTEM_BINOCS_RACE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Доминирующая форма жизни
                                -- Dominant Lifeform
                                { "Russian", "Раса" },
                            }
                        },
                        --#endregion

                        --#region Ранги
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TGUILD_PLAYER_RANK_IMPROVED" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поверх. знакомство
                                -- Initiate
                                { "Russian", "Посвященный" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "WGUILD_PLAYER_RANK_IMPROVED" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поверх. знакомство
                                -- Initiate
                                { "Russian", "Посвященный" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "EGUILD_PLAYER_RANK_IMPROVED" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поверх. знакомство
                                -- Initiate
                                { "Russian", "Посвященный" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TGUILD_PLAYER_RANK_HIGHEST3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Прославленный
                                -- Exalted
                                { "Russian", "Благородный" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TGUILD_PLAYER_RANK_HIGHEST6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Высокочтимый
                                -- Revered
                                { "Russian", "Почитаемый" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TGUILD_PLAYER_RANK_HIGHEST7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Почитаемый
                                -- Esteemed
                                { "Russian", "Уважаемый" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "WGUILD_PLAYER_RANK_HIGHEST3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Прославленный
                                -- Exalted
                                { "Russian", "Благородный" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "WGUILD_PLAYER_RANK_HIGHEST6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Высокочтимый
                                -- Revered
                                { "Russian", "Почитаемый" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "WGUILD_PLAYER_RANK_HIGHEST7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Почитаемый
                                -- Esteemed
                                { "Russian", "Уважаемый" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "EGUILD_PLAYER_RANK_HIGHEST3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Прославленный
                                -- Exalted
                                { "Russian", "Благородный" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "EGUILD_PLAYER_RANK_HIGHEST6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Высокочтимый
                                -- Revered
                                { "Russian", "Почитаемый" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "EGUILD_PLAYER_RANK_HIGHEST7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Почитаемый
                                -- Esteemed
                                { "Russian", "Уважаемый" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "EXP_PLAYER_RANK_HIGHEST4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Высокочтимый
                                -- Revered
                                { "Russian", "Почитаемый" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "EXP_PLAYER_RANK_HIGHEST5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Заслуженный
                                -- Worthy Divergence
                                { "Russian", "Достойное расхождение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "EXP_PLAYER_RANK_HIGHEST6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Прославленный
                                -- Exalted
                                { "Russian", "Благородный" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TRA_PLAYER_RANK_HIGHEST4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Высокочтимый
                                -- Revered
                                { "Russian", "Почитаемый" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TRA_PLAYER_RANK_HIGHEST5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обожаемый
                                -- Most Favoured
                                { "Russian", "Обожаемый" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TRA_PLAYER_RANK_HIGHEST6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Прославленный
                                -- Exalted
                                { "Russian", "Благородный" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "WAR_PLAYER_RANK_HIGHEST4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Высокочтимый
                                -- Revered
                                { "Russian", "Почитаемый" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "WAR_PLAYER_RANK_HIGHEST5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Командор
                                -- Commandant
                                { "Russian", "Командор" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "WAR_PLAYER_RANK_HIGHEST6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Прославленный
                                -- Exalted
                                { "Russian", "Благородный" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "WAR_PLAYER_RANK_HIGHEST7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Верховный
                                -- Supreme Commander
                                { "Russian", "Главнокомандующий" },
                            }
                        },
                        -- Новый ранг
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "OSD_TGUILD_PLAYER_RANK_BAD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Новый ранг в гильдии торговцев: ненавистный
                                -- New Merchants Guild Rank: Hated
                                { "Russian", "Новый ранг: Ненавистный Торговец" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "OSD_TGUILD_PLAYER_RANK_LOW" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Новый ранг в гильдии торговцев: враждебный
                                -- New Merchants Guild Rank: Hostile
                                { "Russian", "Новый ранг: Враждебный Торговец" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "OSD_TGUILD_PLAYER_RANK_NORMAL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Новый ранг в гильдии торговцев: неизвестный
                                -- New Merchants Guild Rank: Unknown
                                { "Russian", "Новый ранг: Неизвестный Торговец" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "OSD_TGUILD_PLAYER_RANK_IMPROVED" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Новый ранг в гильдии торговцев: поверхностное знакомство
                                -- New Merchants Guild Rank: Initiate
                                { "Russian", "Новый ранг: Посвященный Торговец" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "OSD_TGUILD_PLAYER_RANK_MEDIUM" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Новый ранг в гильдии торговцев: ученик
                                -- New Merchants Guild Rank: Apprentice
                                { "Russian", "Новый ранг: Ученик Торговцев" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "OSD_TGUILD_PLAYER_RANK_GOOD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Новый ранг в гильдии торговцев: подмастерье
                                -- New Merchants Guild Rank: Journeyman
                                { "Russian", "Новый ранг: Подмастерье Торговцев" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "OSD_TGUILD_PLAYER_RANK_HIGH" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Новый ранг в гильдии торговцев: напарник
                                -- New Merchants Guild Rank: Associate
                                { "Russian", "Новый ранг: Напарник Торговцев" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "OSD_TGUILD_PLAYER_RANK_HIGHEST" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Новый ранг в гильдии торговцев: специалист
                                -- New Merchants Guild Rank: Senior
                                { "Russian", "Новый ранг: Специалист Торговли" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "OSD_TGUILD_PLAYER_RANK_HIGHEST1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Новый ранг в гильдии торговцев: мастер
                                -- New Merchants Guild Rank: Master
                                { "Russian", "Новый ранг: Мастер Торговли" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "OSD_TGUILD_PLAYER_RANK_HIGHEST2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Новый ранг в гильдии торговцев: старейшина
                                -- New Merchants Guild Rank: Elder
                                { "Russian", "Новый ранг: Старейшина Торговцев" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "OSD_TGUILD_PLAYER_RANK_HIGHEST3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Новый ранг в гильдии торговцев: прославленный
                                -- New Merchants Guild Rank: Exalted
                                { "Russian", "Новый ранг: Благородный Торговец" },
                            }
                        },
                        --
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "OSD_WGUILD_PLAYER_RANK_BAD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Новый ранг в гильдии наемников: ненавистный
                                -- New Mercenaries Guild Rank: Hated
                                { "Russian", "Новый ранг: Ненавистный Наемник" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "OSD_WGUILD_PLAYER_RANK_LOW" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Новый ранг в гильдии наемников: враждебный
                                -- New Mercenaries Guild Rank: Hostile
                                { "Russian", "Новый ранг: Враждебный Наемник" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "OSD_WGUILD_PLAYER_RANK_NORMAL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Новый ранг в гильдии наемников: неизвестный
                                -- New Mercenaries Guild Rank: Unknown
                                { "Russian", "Новый ранг: Неизвестный Наемник" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "OSD_WGUILD_PLAYER_RANK_IMPROVED" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Новый ранг в гильдии наемников: поверхностное знакомство
                                -- New Mercenaries Guild Rank: Initiate
                                { "Russian", "Новый ранг: Посвященный Наемник" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "OSD_WGUILD_PLAYER_RANK_MEDIUM" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Новый ранг в гильдии наемников: ученик
                                -- New Mercenaries Guild Rank: Apprentice
                                { "Russian", "Новый ранг: Ученик Наемников" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "OSD_WGUILD_PLAYER_RANK_GOOD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Новый ранг в гильдии наемников: подмастерье
                                -- New Mercenaries Guild Rank: Journeyman
                                { "Russian", "Новый ранг: Подмастерье Наемников" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "OSD_WGUILD_PLAYER_RANK_HIGH" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Новый ранг в гильдии наемников: напарник
                                -- New Mercenaries Guild Rank: Associate
                                { "Russian", "Новый ранг: Напарник Наемников" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "OSD_WGUILD_PLAYER_RANK_HIGHEST" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Новый ранг в гильдии наемников: специалист
                                -- New Mercenaries Guild Rank: Senior
                                { "Russian", "Новый ранг: Специалист Наемников" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "OSD_WGUILD_PLAYER_RANK_HIGHEST1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Новый ранг в гильдии наемников: мастер
                                -- New Mercenaries Guild Rank: Master
                                { "Russian", "Новый ранг: Мастер Наемников" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "OSD_WGUILD_PLAYER_RANK_HIGHEST2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Новый ранг в гильдии наемников: старейшина
                                -- New Mercenaries Guild Rank: Elder
                                { "Russian", "Новый ранг: Старейшина Наемников" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "OSD_WGUILD_PLAYER_RANK_HIGHEST3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Новый ранг в гильдии наемников: прославленный
                                -- New Mercenaries Guild Rank: Exalted
                                { "Russian", "Новый ранг: Благородный Наемник" },
                            }
                        },
                        --
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "OSD_EGUILD_PLAYER_RANK_BAD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Новый ранг в гильдии исследователей: ненавистный
                                -- New Explorers Guild Rank: Hated
                                { "Russian", "Новый ранг: Ненавистный Исследователь" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "OSD_EGUILD_PLAYER_RANK_LOW" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Новый ранг в гильдии исследователей: враждебный
                                -- New Explorers Guild Rank: Hostile
                                { "Russian", "Новый ранг: Враждебный Исследователь" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "OSD_EGUILD_PLAYER_RANK_NORMAL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Новый ранг в гильдии исследователей: неизвестный
                                -- New Explorers Guild Rank: Unknown
                                { "Russian", "Новый ранг: Неизвестный Исследователь" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "OSD_EGUILD_PLAYER_RANK_IMPROVED" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Новый ранг в гильдии исследователей: поверхностное знакомство
                                -- New Explorers Guild Rank: Initiate
                                { "Russian", "Новый ранг: Посвященный Исследователь" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "OSD_EGUILD_PLAYER_RANK_MEDIUM" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Новый ранг в гильдии исследователей: ученик
                                -- New Explorers Guild Rank: Apprentice
                                { "Russian", "Новый ранг: Ученик Исследователей" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "OSD_EGUILD_PLAYER_RANK_GOOD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Новый ранг в гильдии исследователей: подмастерье
                                -- New Explorers Guild Rank: Journeyman
                                { "Russian", "Новый ранг: Подмастерье Исследователей" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "OSD_EGUILD_PLAYER_RANK_HIGH" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Новый ранг в гильдии исследователей: напарник
                                -- New Explorers Guild Rank: Associate
                                { "Russian", "Новый ранг: Напарник Исследователей" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "OSD_EGUILD_PLAYER_RANK_HIGHEST" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Новый ранг в гильдии исследователей: специалист
                                -- New Explorers Guild Rank: Senior
                                { "Russian", "Новый ранг: Специалист Исследователей" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "OSD_EGUILD_PLAYER_RANK_HIGHEST1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Новый ранг в гильдии исследователей: мастер
                                -- New Explorers Guild Rank: Master
                                { "Russian", "Новый ранг: Мастер-Исследователь" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "OSD_EGUILD_PLAYER_RANK_HIGHEST2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Новый ранг в гильдии исследователей: старейшина
                                -- New Explorers Guild Rank: Elder
                                { "Russian", "Новый ранг: Старейшина Исследователей" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "OSD_EGUILD_PLAYER_RANK_HIGHEST3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Новый ранг в гильдии исследователей: прославленный
                                -- New Explorers Guild Rank: Exalted
                                { "Russian", "Новый ранг: Благородный Исследователь" },
                            }
                        },
                        --#endregion

                        --#region Уровень экономики
                        -- все должно быть с большой буквы, т.к. это используется в сканере (Богатство)
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ECON_LEVEL_LOW_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- проблемная
                                -- Struggling
                                { "Russian", "Проблемная" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ECON_LEVEL_LOW_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- молодая
                                -- Fledgling
                                { "Russian", "Молодая" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ECON_LEVEL_LOW_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- бесперспективная
                                -- Unpromising
                                { "Russian", "Бесперспективная" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ECON_LEVEL_LOW_4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- слабеющая
                                -- Declining
                                { "Russian", "Слабеющая" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ECON_LEVEL_LOW_5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- упадочная
                                -- Failing
                                { "Russian", "Упадочная" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ECON_LEVEL_LOW_6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- бедная
                                -- Destitute
                                { "Russian", "Бедная" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ECON_LEVEL_LOW_7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- недост. снабжение
                                -- Low Supply
                                { "Russian", "Недост. снабжение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ECON_LEVEL_LOW_8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- безуспешная
                                -- Unsuccessful
                                { "Russian", "Безуспешная" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ECON_LEVEL_MED_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- удобная
                                -- Comfortable
                                { "Russian", "Удобная" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ECON_LEVEL_MED_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- сбалансированная
                                -- Balanced
                                { "Russian", "Сбалансированная" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ECON_LEVEL_MED_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- многообещающая
                                -- Promising
                                { "Russian", "Многообещающая" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ECON_LEVEL_MED_4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- развивающаяся
                                -- Developing
                                { "Russian", "Развивающаяся" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ECON_LEVEL_MED_5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- среднее снабжение
                                -- Medium Supply
                                { "Russian", "Среднее снабжение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ECON_LEVEL_MED_6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- удовлетворительная
                                -- Satisfactory
                                { "Russian", "Удовлетворительная" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ECON_LEVEL_MED_7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- жизнеспособная
                                -- Sustainable
                                { "Russian", "Жизнеспособная" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ECON_LEVEL_MED_8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- достойная
                                -- Adequate
                                { "Russian", "Достойная" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ECON_LEVEL_HIGH_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- благополучная
                                -- Wealthy
                                { "Russian", "Благополучная" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ECON_LEVEL_HIGH_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- процветающая
                                -- Prosperous
                                { "Russian", "Процветающая" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ECON_LEVEL_HIGH_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- продвинутая
                                -- Advanced
                                { "Russian", "Продвинутая" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ECON_LEVEL_HIGH_4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- состоятельная
                                -- Affluent
                                { "Russian", "Состоятельная" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ECON_LEVEL_HIGH_5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- буйно развивающаяся
                                -- Booming
                                { "Russian", "Буйно развивающаяся" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ECON_LEVEL_HIGH_6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- в расцвете
                                -- Flourishing
                                { "Russian", "В расцвете" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ECON_LEVEL_HIGH_7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- достаточное снабжение
                                -- High Supply
                                { "Russian", "Достаточное снабжение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ECON_LEVEL_HIGH_8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- изобилие
                                -- Opulent
                                { "Russian", "Изобилие" },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FARMPROD_4_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Тепл. конденсатор
                                -- Heat Capacitor
                                { "Russian", "Тепловой конденсатор" },
                            }
                        },
                        --
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COLLECT_OBJ" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Выясните происхождение предметов для клиента
                                -- Source items for the client
                                { "Russian", "Узнать больше о предмете" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DELIVERY_OBJ" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Доставьте товар на защищенный склад
                                -- Deliver the goods to the secure depot
                                { "Russian", "Доставить товар на склад" },
                            }
                        },
                        --
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "CLIENT_TRADERGUILD_7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Кооп. ферм по производству смазки
                                -- Lubricant Farmers Cooperative
                                { "Russian", "Кооператив фермеров «Смазки»" },
                            }
                        },
                        --
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SCANEVENT_GOTO_MAP_TELE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Цель задания находится в другой системе.&#xA;Вы можете мгновенно вернуться в посещенные системы через &lt;TECHNOLOGY&gt;телепорт&lt;&gt;.&#xA;Телепорты можно найти на &lt;COMMODITY&gt;космических станциях&lt;&gt; или на борту &lt;SPECIAL&gt;Аномалии&lt;&gt;.
                                -- Mission target is in another system&#xA;Use a &lt;TECHNOLOGY&gt;Teleporter&lt;&gt; to instantly return to previous systems&#xA;Find Teleporters in &lt;COMMODITY&gt;Space Stations&lt;&gt; or the &lt;SPECIAL&gt;Anomaly&lt;&gt;
                                { "Russian", "Цель задания находится в другой системе&#xA;&lt;TECHNOLOGY&gt;Телепорты&lt;&gt; на &lt;COMMODITY&gt;космических станциях&lt;&gt; или &lt;SPECIAL&gt;Аномалии&lt;&gt;&#xA;помогут вернуться в ранее посещенные системы" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SCANEVENT_GOTO_NEXUS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Цель задания находится на борту Космической Аномалии.&#xA;Находясь в космосе, вызовите Аномалию через быстрое меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                -- Mission target is aboard the Space Anomaly&#xA;In space, summon the Anomaly from the Quick Menu (&lt;IMG&gt;QUICK_MENU&lt;&gt;)
                                { "Russian", "Цель задания находится на борту Космической Аномалии&#xA;Находясь в космосе, вызовите Аномалию через быстрое меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SCANEVENT_GOTO_PORTAL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Цель задания находится в другой системе.&#xA;Вернитесь через портал, чтобы выполнить цели задания.
                                -- Mission target is in another system&#xA;Return through the portal to complete objectives
                                { "Russian", "Цель задания находится в другой системе&#xA;Вернитесь через портал, чтобы выполнить цели задания" },
                            }
                        },

                        --#region перенесено из Farscape 20.09.2024
                        -- я конечно понимаю, что хочется написать какую-то умную фигню разрабам
                        -- но это а) не звучит б) бесмыслица какая-то
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SCAN_EVENT_GLXY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Пойман сигнал миссии
                                -- Mission Signal Detected
                                { "Russian", "Место выполнения задания" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "MISSION_OBJ_COLLECT_T" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Собрать %TYPE%: %COUNT%
                                -- Collect %COUNT% %TYPE%
                                { "Russian", "Добыть %COUNT% × %TYPE%" },
                            }
                        },
                        --#endregion

                        -- в сканере при наведении на растение (прокрутка)
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "GROWTIME_HEADER" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Время выращивания
                                -- Growing Time
                                { "Russian", "Время созревания" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COMPOUND_1_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Органич. катализатор
                                -- Organic Catalyst
                                { "Russian", "Органический катализатор" },
                            }
                        },
                        --
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "MINERAL_NOTES_52" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Возможно, синтез. искусственно
                                -- Potentially Synthetic
                                { "Russian", "Возможно, синтетический" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "PLANT_NOTES_94" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поверх. покрыта мелк. чешуйками
                                -- Flakey Coating
                                { "Russian", "Покрыт чешуйками" },
                            }
                        },

                        --#region Приблизительный возраст:
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_TREASURE_UNCOMMON_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Приблизительный возраст: &lt;VAL_ON&gt;%AGE%&lt;&gt;.&#xA;&#xA;Хотя внутри полно насекомых, это заплесневелое сокровище — крайне ценный артефакт.
                                { "Russian", "Примерный возраст — &lt;VAL_ON&gt;%AGE%&lt;&gt; лет.&#xA;&#xA;Хотя внутри полно насекомых, это заплесневелое сокровище — крайне ценный артефакт." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_SALVAGE_COMMON_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Приблизительный возраст: &lt;VAL_ON&gt;%AGE%&lt;&gt;.&#xA;&#xA;Эта надежная и распространенная технология многие годы использовалась при строительстве гекских звездолетов. Эти детали раз за разом повторно используются в различных механизмах. Особенно часто их применяют в модулях ремонта вездеходов.
                                { "Russian", "Примерный возраст — &lt;VAL_ON&gt;%AGE%&lt;&gt; лет.&#xA;&#xA;Эта надежная и распространенная технология многие годы использовалась при строительстве гекских звездолётов. Эти детали раз за разом повторно используются в различных механизмах. Особенно часто их применяют в модулях ремонта вездеходов." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_SALVAGE_COMMON_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Приблизительный возраст: &lt;VAL_ON&gt;%AGE%&lt;&gt;.&#xA;&#xA;Эта технология давно перестала приносить пользу. Впрочем, она содержит редкие и ценные элементы, которые можно продать за хорошую цену.
                                { "Russian", "Примерный возраст — &lt;VAL_ON&gt;%AGE%&lt;&gt; лет.&#xA;&#xA;Эта технология давно перестала приносить пользу. Впрочем, она содержит редкие и ценные элементы, которые можно продать за хорошую цену." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_SALVAGE_COMMON_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Приблизительный возраст: &lt;VAL_ON&gt;%AGE%&lt;&gt;.&#xA;&#xA;Этот занимательный технологический компонент нарушает несколько галактических производственных протоколов. Похоже, это кустарная поделка. Впрочем, он до сих пор работает.
                                { "Russian", "Примерный возраст — &lt;VAL_ON&gt;%AGE%&lt;&gt; лет.&#xA;&#xA;Этот занимательный технологический компонент нарушает несколько галактических производственных протоколов. Похоже, это кустарная поделка. Впрочем, он до сих пор работает." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_SALVAGE_COMMON_4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Приблизительный возраст: &lt;VAL_ON&gt;%AGE%&lt;&gt;.&#xA;&#xA;Постоянно применяющаяся в различных приборах, эта древняя технология не раз доказывала свою полезность за прошедшие тысячелетия. Этот образец немного обуглился из-за попадания снаряда.
                                { "Russian", "Примерный возраст — &lt;VAL_ON&gt;%AGE%&lt;&gt; лет.&#xA;&#xA;Постоянно применяющаяся в различных приборах, эта древняя технология не раз доказывала свою полезность за прошедшие тысячелетия. Этот образец немного обуглился из-за попадания снаряда." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_SALVAGE_COMMON_5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Приблизительный возраст: &lt;VAL_ON&gt;%AGE%&lt;&gt;.&#xA;&#xA;Этот сохранившийся в хорошем состоянии компонент явно побывал на нескольких звездолетах. Должно быть, он провел в межзвездных путешествиях не одно столетие.
                                { "Russian", "Примерный возраст — &lt;VAL_ON&gt;%AGE%&lt;&gt; лет.&#xA;&#xA;Этот сохранившийся в хорошем состоянии компонент явно побывал на нескольких звездолётах. Должно быть, он провел в межзвездных путешествиях не одно столетие." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_SALVAGE_UNCOMMON_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Приблизительный возраст: &lt;VAL_ON&gt;%AGE%&lt;&gt;.&#xA;&#xA;Классический пример инженерной мысли корваксов. Этот технологический компонент крайне надежен и хорошо сохранился.
                                { "Russian", "Примерный возраст — &lt;VAL_ON&gt;%AGE%&lt;&gt; лет.&#xA;&#xA;Классический пример инженерной мысли корваксов. Этот технологический компонент крайне надежен и хорошо сохранился." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_SALVAGE_UNCOMMON_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Приблизительный возраст: &lt;VAL_ON&gt;%AGE%&lt;&gt;.&#xA;&#xA;Такие ценные компоненты обычно используются парами, но вы нашли только один. Он совершенно цел, но не функционирует.
                                { "Russian", "Примерный возраст — &lt;VAL_ON&gt;%AGE%&lt;&gt; лет.&#xA;&#xA;Такие ценные компоненты обычно используются парами, но вы нашли только один. Он совершенно цел, но не функционирует." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_SALVAGE_UNCOMMON_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Приблизительный возраст: &lt;VAL_ON&gt;%AGE%&lt;&gt;.&#xA;&#xA;У этого компонента необычная конструкция, однако он сделан из отличных материалов и великолепно собран, а потому по-прежнему ценен. В наше время ему нет практического применения, однако такой вещью может заинтересоваться коллекционер.
                                { "Russian", "Примерный возраст — &lt;VAL_ON&gt;%AGE%&lt;&gt; лет.&#xA;&#xA;У этого компонента необычная конструкция, однако он сделан из отличных материалов и великолепно собран, а потому по-прежнему ценен. В наше время ему нет практического применения, однако такой вещью может заинтересоваться коллекционер." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_SALVAGE_RARE_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Приблизительный возраст: &lt;VAL_ON&gt;%AGE%&lt;&gt;.&#xA;&#xA;Только эксперт может определить первоначальное назначение этой таинственной детали. Она слегка вибрирует, и некоторые виды существ стараются держаться от нее подальше.
                                { "Russian", "Примерный возраст — &lt;VAL_ON&gt;%AGE%&lt;&gt; лет.&#xA;&#xA;Только эксперт может определить первоначальное назначение этой таинственной детали. Она слегка вибрирует, и некоторые виды существ стараются держаться от нее подальше." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_SALVAGE_RARE_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Приблизительный возраст: &lt;VAL_ON&gt;%AGE%&lt;&gt;.&#xA;&#xA;Подобные невероятно сложные технологии попадаются крайне редко. Даже не подключенная и обесточенная, она все равно теплая на ощупь.
                                { "Russian", "Примерный возраст — &lt;VAL_ON&gt;%AGE%&lt;&gt; лет.&#xA;&#xA;Подобные невероятно сложные технологии попадаются крайне редко. Даже не подключенная и обесточенная, она все равно теплая на ощупь." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_SALVAGE_RARE_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Приблизительный возраст: &lt;VAL_ON&gt;%AGE%&lt;&gt;.&#xA;&#xA;На этом компоненте стоит официальное клеймо производителя с многовековой историей, известного высокими стандартами и долговечностью своих изделий. Несмотря на возраст, этот образчик находится в почти идеальном состоянии.
                                { "Russian", "Примерный возраст — &lt;VAL_ON&gt;%AGE%&lt;&gt; лет.&#xA;&#xA;На этом компоненте стоит официальное клеймо производителя с многовековой историей, известного высокими стандартами и долговечностью своих изделий. Несмотря на возраст, этот образчик находится в почти идеальном состоянии." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BONES_COMMON_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Приблизительный возраст: &lt;VAL_ON&gt;%AGE%&lt;&gt;.&#xA;&#xA;Груда костей давно вымершего животного. Следы зубов красноречиво свидетельствуют о том, что кости были съедены, переварены и исторгнуты каким-то более крупным хищником.
                                { "Russian", "Примерный возраст — &lt;VAL_ON&gt;%AGE%&lt;&gt; лет.&#xA;&#xA;Груда костей давно вымершего животного. Следы зубов красноречиво свидетельствуют о том, что кости были съедены, переварены и исторгнуты каким-то более крупным хищником." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BONES_COMMON_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Приблизительный возраст: &lt;VAL_ON&gt;%AGE%&lt;&gt;.&#xA;&#xA;Эти хрупкие пустотелые кости когда-то образовывали поистине огромные крылья. Некогда грозный властитель небес низведен до нескольких горстей кальция.
                                { "Russian", "Примерный возраст — &lt;VAL_ON&gt;%AGE%&lt;&gt; лет.&#xA;&#xA;Эти хрупкие пустотелые кости когда-то образовывали поистине огромные крылья. Некогда грозный властитель небес низведен до нескольких горстей кальция." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BONES_COMMON_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Приблизительный возраст: &lt;VAL_ON&gt;%AGE%&lt;&gt;.&#xA;&#xA;Большая часть скелета безвозвратно потеряна. От жившего когда-то существа осталось только несколько поистине огромных костей.
                                { "Russian", "Примерный возраст — &lt;VAL_ON&gt;%AGE%&lt;&gt; лет.&#xA;&#xA;Большая часть скелета безвозвратно потеряна. От жившего когда-то существа осталось только несколько поистине огромных костей." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BONES_COMMON_4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Приблизительный возраст: &lt;VAL_ON&gt;%AGE%&lt;&gt;.&#xA;&#xA;Небольшая группа костей древнего существа. Значительное разрушение суставов указывает на серьезные физические нагрузки, которые пришлось пережить этому существу.
                                { "Russian", "Примерный возраст — &lt;VAL_ON&gt;%AGE%&lt;&gt; лет.&#xA;&#xA;Небольшая группа костей древнего существа. Значительное разрушение суставов указывает на серьезные физические нагрузки, которые пришлось пережить этому существу." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BONES_COMMON_5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Приблизительный возраст: &lt;VAL_ON&gt;%AGE%&lt;&gt;.&#xA;&#xA;Должно быть, скелет принадлежал существу с ярко выраженными регенеративными способностями. Кости явно часто ломались, но сращивались обратно.
                                { "Russian", "Примерный возраст — &lt;VAL_ON&gt;%AGE%&lt;&gt; лет.&#xA;&#xA;Должно быть, скелет принадлежал существу с ярко выраженными регенеративными способностями. Кости явно часто ломались, но сращивались обратно." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BONES_UNCOMMON_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Приблизительный возраст: &lt;VAL_ON&gt;%AGE%&lt;&gt;.&#xA;&#xA;Полный набор костей многоголового существа. Он не столько дает ответы, сколько порождает новые вопросы. Интересная находка.
                                { "Russian", "Примерный возраст — &lt;VAL_ON&gt;%AGE%&lt;&gt; лет.&#xA;&#xA;Полный набор костей многоголового существа. Он не столько дает ответы, сколько порождает новые вопросы. Интересная находка." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BONES_UNCOMMON_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Приблизительный возраст: &lt;VAL_ON&gt;%AGE%&lt;&gt;.&#xA;&#xA;Необычайно плотные и крепкие кости вкупе с огромными бивнями. Трудно понять, служили эти бивни для защиты или предназначались для охоты.
                                { "Russian", "Примерный возраст — &lt;VAL_ON&gt;%AGE%&lt;&gt; лет.&#xA;&#xA;Необычайно плотные и крепкие кости вкупе с огромными бивнями. Трудно понять, служили эти бивни для защиты или предназначались для охоты." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BONES_UNCOMMON_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Приблизительный возраст: &lt;VAL_ON&gt;%AGE%&lt;&gt;.&#xA;&#xA;Среди этих костей находится череп с необычным обилием глазных впадин. В каких условиях должно жить существо, чтобы обзавестись такой уймой глаз?
                                { "Russian", "Примерный возраст — &lt;VAL_ON&gt;%AGE%&lt;&gt; лет.&#xA;&#xA;Среди этих костей находится череп с необычным обилием глазных впадин. В каких условиях должно жить существо, чтобы обзавестись такой уймой глаз?" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BONES_RARE_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Приблизительный возраст: &lt;VAL_ON&gt;%AGE%&lt;&gt;.&#xA;&#xA;Этот целый скелет был найден рядом с еще одним, куда меньшим скелетом такого же животного. Невозможно определить, кто погиб первым: взрослая или молодая особь.
                                { "Russian", "Примерный возраст — &lt;VAL_ON&gt;%AGE%&lt;&gt; лет.&#xA;&#xA;Этот целый скелет был найден рядом с еще одним, куда меньшим скелетом такого же животного. Невозможно определить, кто погиб первым: взрослая или молодая особь." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BONES_RARE_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Приблизительный возраст: &lt;VAL_ON&gt;%AGE%&lt;&gt;.&#xA;&#xA;Эти истлевшие кости носят мрачные, но интересные следы метастаз давно унесшей чью-то жизнь болезни.
                                { "Russian", "Примерный возраст — &lt;VAL_ON&gt;%AGE%&lt;&gt; лет.&#xA;&#xA;Эти истлевшие кости носят мрачные, но интересные следы метастаз давно унесшей чью-то жизнь болезни." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_BONES_RARE_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Приблизительный возраст: &lt;VAL_ON&gt;%AGE%&lt;&gt;.&#xA;&#xA;Даже после смерти на впечатляющем скелете этого существа остался сделанный кем-то артефакт. Была ли эта особь разумной? Или это был чей-то питомец? По одним костям этого не определить. В любом случае, это интереснейшая находка.
                                { "Russian", "Примерный возраст — &lt;VAL_ON&gt;%AGE%&lt;&gt; лет.&#xA;&#xA;Даже после смерти на впечатляющем скелете этого существа остался сделанный кем-то артефакт. Была ли эта особь разумной? Или это был чей-то питомец? По одним костям этого не определить. В любом случае, это интереснейшая находка." },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_GALMAP_TIP_PATH" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;СМОТРЕТЬ&lt;&gt; Двигайтесь по маршруту
                                -- &lt;IMG&gt;LOOK&lt;&gt; Move along route
                                { "Russian", "&lt;IMG&gt;LOOK&lt;&gt; Движение по маршруту" },
                            }
                        },
                        --
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "CLIENT_FIGHTGUILD_7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Орбит. комп. «Спасение имущества»
                                -- Orbital 'Salvage' Co
                                { "Russian", "Орбитальная компания «Спасение»" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COLLECT_OBJ_FORMAT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Источник %ITEM%: %CURRENT%/%AMOUNT%
                                -- Source %ITEM%: %CURRENT%/%AMOUNT%
                                { "Russian", "Добыть: %ITEM% (%CURRENT%/%AMOUNT%)" },
                            }
                        },

                        --#region GLITCH_NAME
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "GLITCH_NAME_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ВТОРЖЕНИЕ // Индикатор: «%PROCNAME%»
                                -- BREACH // Label: '%PROCNAME%'
                                { "Russian", "БРЕШЬ // Метка: '%PROCNAME%'" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "GLITCH_NAME_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- АНОМАЛИЯ // Индикатор: «%PROCNAME%»
                                -- ANOMALY // Label: '%PROCNAME%'
                                { "Russian", "АНОМАЛИЯ // Метка: '%PROCNAME%'" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "GLITCH_NAME_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПОТЕРЯ ГРАНИЦ // Индикатор: «%PROCNAME%»
                                -- BOUNDS LOSS // Label: '%PROCNAME%'
                                { "Russian", "ПОТЕРЯ ГРАНИЦ // Метка: '%PROCNAME%'" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "GLITCH_NAME_4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- СБОЙ // Индикатор: «%PROCNAME%»
                                -- FAILURE // Label: '%PROCNAME%'
                                { "Russian", "СБОЙ // Метка: '%PROCNAME%'" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "GLITCH_NAME_5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ТРЕБУЕТСЯ РЕМОНТ // Индикатор: «%PROCNAME%»
                                -- REPAIR NEEDED // Label: '%PROCNAME%'
                                { "Russian", "ТРЕБУЕТСЯ РЕМОНТ // Метка: '%PROCNAME%'" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "GLITCH_NAME_6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ОШИБКА СЧИТЫВАНИЯ ДАННЫХ // Индикатор: «%PROCNAME%»
                                -- DATA ERROR // Label: '%PROCNAME%'
                                { "Russian", "ОШИБКА ЧТЕНИЯ // Метка: '%PROCNAME%'" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "GLITCH_NAME_7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ДАННЫЕ ПОВРЕЖДЕНЫ // Индикатор: «%PROCNAME%»
                                -- DATA CORRUPT // Label: '%PROCNAME%'
                                { "Russian", "ДАННЫЕ ПОВРЕЖДЕНЫ // Метка: '%PROCNAME%'" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "GLITCH_NAME_8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПОВТОРНОЕ ВТОРЖЕНИЕ // Индикатор: «%PROCNAME%»
                                -- REPEAT BREACH  // Label: '%PROCNAME%'
                                { "Russian", "ПОВТОРНОЕ ВТОРЖЕНИЕ // Метка: '%PROCNAME%'" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "GLITCH_NAME_9" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- НЕИЗВЕСТНЫЕ ДАННЫЕ // Индикатор: «%PROCNAME%»
                                -- ROGUE DATA // Label: '%PROCNAME%'
                                { "Russian", "СОМНИТЕЛЬНЫЕ ДАННЫЕ // Метка: '%PROCNAME%'" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "GLITCH_NAME_10" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- НЕИЗВЕСТНЫЙ СБОЙ // Индикатор: «%PROCNAME%»
                                -- UNEXPLAINED // Label: '%PROCNAME%'
                                { "Russian", "НЕОБЪЯСНИМЫЙ // Метка: '%PROCNAME%'" },
                            }
                        },
                        --#endregion

                        --#region PROC_FLAVOUR_FACTORY
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "PROC_FLAVOUR_FACTORY_4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %PROCNAME%: фабрика
                                { "Russian", "Фабрика %PROCNAME%" },
                            }
                        },
                        { -- возможно пасхалка к 3/4 фоллу
                            ["SPECIAL_KEY_WORDS"] = { "Id", "PROC_FLAVOUR_FACTORY_5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %PROCNAME%: завод синтетики
                                -- %PROCNAME% Synth-Plant
                                { "Russian", "Синт-завод %PROCNAME%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "PROC_FLAVOUR_FACTORY_6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %PROCNAME%: автоконструктор
                                -- %PROCNAME% Auto-Constructor
                                { "Russian", "Автоконструктор %PROCNAME%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "PROC_FLAVOUR_FACTORY_7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %PROCNAME%: станция
                                -- The %PROCNAME% Facility
                                { "Russian", "Предприятие %PROCNAME%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "PROC_FLAVOUR_FACTORY_8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %PROCNAME%: лаборатории
                                -- %PROCNAME% Labs
                                { "Russian", "Лаборатории %PROCNAME%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "PROC_FLAVOUR_FACTORY_9" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %PROCNAME%: плавильня
                                -- %PROCNAME% Foundry
                                { "Russian", "Литейный завод %PROCNAME%" },
                            }
                        },
                        --#endregion

                        --#region PROC_FLAVOUR_ATLAS
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "PROC_FLAVOUR_ATLAS_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %PROCNAME%: сингулярность
                                -- %PROCNAME% Singularity
                                { "Russian", "Сингулярность %PROCNAME%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "PROC_FLAVOUR_ATLAS_4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %PROCNAME%: единство
                                -- Unity of %PROCNAME%
                                { "Russian", "Объединение %PROCNAME%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "PROC_FLAVOUR_ATLAS_5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %PROCNAME%: геометрический конструкт
                                -- Geometric Construct %PROCNAME%
                                { "Russian", "Геометрический конструкт %PROCNAME%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "PROC_FLAVOUR_ATLAS_6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %PROCNAME%: абстракция
                                -- The %PROCNAME% Abstraction
                                { "Russian", "Абстракция %PROCNAME%" },
                            }
                        },
                        --#endregion

                        --#region PROC_FLAVOUR_MONOLITH
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "PROC_FLAVOUR_MONOLITH_9" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Осмотр: %PROCNAME%
                                -- Visitation of %PROCNAME%
                                { "Russian", "Осмотр %PROCNAME%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "PROC_FLAVOUR_MONOLITH_10" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Столпы: %PROCNAME%
                                -- Pillars of %PROCNAME%
                                { "Russian", "Столпы %PROCNAME%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "PROC_FLAVOUR_MONOLITH_11" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Пункт назначения: %PROCNAME%
                                -- %PROCNAME%'s Destination
                                { "Russian", "Пункт назначения %PROCNAME%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "PROC_FLAVOUR_MONOLITH_12" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %PROCNAME% — тревожный сон
                                -- %PROCNAME%'s Restless Sleep
                                { "Russian", "Тревожный сон %PROCNAME%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "PROC_FLAVOUR_MONOLITH_13" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %PROCNAME% — сны
                                -- Dreams of %PROCNAME%
                                { "Russian", "Сны %PROCNAME%" },
                            }
                        },
                        --#endregion

                        --#region PROC_FLAVOUR_RADIO
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "PROC_FLAVOUR_RADIO_4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %PROCNAME%: антенна
                                -- %PROCNAME% Antenna
                                { "Russian", "Антенна %PROCNAME%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "PROC_FLAVOUR_RADIO_5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %PROCNAME%: сеть
                                -- The %PROCNAME% Network
                                { "Russian", "Сеть %PROCNAME%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "PROC_FLAVOUR_RADIO_6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %PROCNAME%: массив
                                -- %PROCNAME% Array
                                { "Russian", "Массив %PROCNAME%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "PROC_FLAVOUR_RADIO_7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %PROCNAME%, станция %NUMERAL%
                                -- %PROCNAME% Station %NUMERAL%
                                { "Russian", "Станция %NUMERAL% %PROCNAME%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "PROC_FLAVOUR_RADIO_8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %PROCNAME%: радар
                                -- %PROCNAME% Radar
                                { "Russian", "Радар %PROCNAME%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "PROC_FLAVOUR_RADIO_9" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %PROCNAME%: повторитель
                                -- %PROCNAME% Repeater
                                { "Russian", "Повторитель %PROCNAME%" },
                            }
                        },
                        --#endregion

                        --#region PROC_FLAVOUR_OBS
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "PROC_FLAVOUR_OBS_4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %PROCNAME%: сканер %NUMERAL%
                                -- %PROCNAME% Scanner %NUMERAL%
                                { "Russian", "Сканер %NUMERAL% %PROCNAME%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "PROC_FLAVOUR_OBS_5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Искатель: %PROCNAME%
                                -- The %PROCNAME% Seeker
                                { "Russian", "Искатель %PROCNAME%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "PROC_FLAVOUR_OBS_6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обсерватория: %PROCNAME%
                                -- %PROCNAME% Observatory
                                { "Russian", "Обсерватория %PROCNAME%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "PROC_FLAVOUR_OBS_7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Телескоп: %PROCNAME%
                                -- The %PROCNAME% Telescope
                                { "Russian", "Телескоп %PROCNAME%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "PROC_FLAVOUR_OBS_8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Астрономы: %PROCNAME%
                                -- Stargazers of %PROCNAME%
                                { "Russian", "Звездочёты %PROCNAME%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "PROC_FLAVOUR_OBS_9" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Визуальный массив: %PROCNAME%
                                -- %PROCNAME% Ocular Array
                                { "Russian", "Окулярный массив %PROCNAME%" },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SHIPJUMP1_DAMAGED" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обеспечивает реактивную тягу в космосе и атмосферах планет.&#xA;&#xA;Система сильно повреждена. Для ремонта требуются &lt;COMMODITY&gt;металлическая обшивка&lt;&gt; и &lt;COMMODITY&gt;герметик&lt;&gt;.
                                { "Russian", "Обеспечивает реактивную тягу в космосе и атмосфере планет.&#xA;&#xA;Система сильно повреждена. Для ремонта требуются &lt;COMMODITY&gt;металлическая обшивка&lt;&gt; и &lt;COMMODITY&gt;герметик&lt;&gt;." },
                            }
                        },

                        --#region UI_NOTIFY_LIFESUP_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NOTIFY_LIFESUP_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите &lt;FUEL&gt;кислород&lt;&gt; для перезарядки.&#xA;Сканер поврежден. Отремонтируйте его, чтобы найти кислород.&#xA;Для этого нажмите &lt;IMG&gt;INVENTORY&lt;&gt; или &lt;IMG&gt;QUICK_MENU&lt;&gt;.
                                -- Locate &lt;FUEL&gt;Oxygen&lt;&gt; to recharge&#xA;Scanner is damaged - repair to find Oxygen&#xA;Repair with &lt;IMG&gt;INVENTORY&lt;&gt; or &lt;IMG&gt;QUICK_MENU&lt;&gt;
                                { "Russian", "Найдите &lt;FUEL&gt;кислород&lt;&gt; для перезарядки&#xA;Отремонтируйте сканер, чтобы найти кислород&#xA;Для этого нажмите &lt;IMG&gt;INVENTORY&lt;&gt; или &lt;IMG&gt;QUICK_MENU&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NOTIFY_LIFESUP_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите &lt;FUEL&gt;кислород&lt;&gt; для перезарядки.&#xA;Или изготовьте &lt;FUEL&gt;гель системы жизнеобеспечения&lt;&gt; в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;).&#xA;Чтобы найти кислород, используйте сканирование (&lt;IMG&gt;SCAN&lt;&gt;).
                                { "Russian", "Соберите &lt;FUEL&gt;кислород&lt;&gt; для перезарядки&#xA;Или изготовьте &lt;FUEL&gt;гель системы жизнеобеспечения&lt;&gt; в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;)&#xA;Чтобы найти кислород, используйте сканирование (&lt;IMG&gt;SCAN&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NOTIFY_LIFESUP_MSG2_VRA" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите &lt;FUEL&gt;кислород&lt;&gt; для подзарядки.&#xA;Используйте &lt;STELLAR&gt;сканер&lt;&gt;, чтобы найти кислород.&#xA;Заведите руку за плечо и нажмите &lt;IMG&gt;VR_HOLSTER&lt;&gt;, чтобы взять мультитул.&#xA;Или откройте инвентарь (&lt;IMG&gt;INVENTORY&lt;&gt;) и создайте &lt;FUEL&gt;гель системы жизнеобеспечения&lt;&gt;.
                                -- Gather &lt;FUEL&gt;Oxygen&lt;&gt; to recharge&#xA;&lt;STELLAR&gt;Scan&lt;&gt; to locate Oxygen&#xA;Reach over your shoulder, then press &lt;IMG&gt;VR_HOLSTER&lt;&gt; to pick up your Multi-Tool&#xA;Or craft &lt;FUEL&gt;Life Support Gel&lt;&gt; in your inventory (&lt;IMG&gt;INVENTORY&lt;&gt;)
                                { "Russian", "Соберите &lt;FUEL&gt;кислород&lt;&gt; для подзарядки&#xA;Используйте &lt;STELLAR&gt;сканер&lt;&gt;, чтобы найти кислород&#xA;Заведите руку за плечо и нажмите &lt;IMG&gt;VR_HOLSTER&lt;&gt;, чтобы взять мультитул&#xA;Или откройте инвентарь (&lt;IMG&gt;INVENTORY&lt;&gt;) и создайте &lt;FUEL&gt;гель системы жизнеобеспечения&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NOTIFY_LIFESUP_MSG2_VRB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите &lt;FUEL&gt;кислород&lt;&gt; для подзарядки.&#xA;Используйте &lt;STELLAR&gt;сканер&lt;&gt;, чтобы найти кислород.&#xA;Укажите &lt;STELLAR&gt;%SECONDARY_HAND%&lt;&gt; на заднюю сторону своего &lt;TECHNOLOGY&gt;мультитула&lt;&gt;.&#xA;Или откройте инвентарь (&lt;FUEL&gt;INVENTORY&lt;&gt;) и создайте &lt;IMG&gt;гель системы жизнеобеспечения&lt;&gt;.
                                -- Gather &lt;FUEL&gt;Oxygen&lt;&gt; to recharge&#xA;&lt;STELLAR&gt;Scan&lt;&gt; to locate Oxygen&#xA;Point at the rear of your &lt;TECHNOLOGY&gt;Multi-Tool&lt;&gt; with your &lt;STELLAR&gt;%SECONDARY_HAND%&lt;&gt;&#xA;Or craft &lt;FUEL&gt;Life Support Gel&lt;&gt; in your inventory (&lt;IMG&gt;INVENTORY&lt;&gt;)
                                { "Russian", "Соберите &lt;FUEL&gt;кислород&lt;&gt; для подзарядки&#xA;Используйте &lt;STELLAR&gt;сканер&lt;&gt;, чтобы найти кислород&#xA;Укажите &lt;STELLAR&gt;%SECONDARY_HAND%&lt;&gt; на заднюю сторону своего &lt;TECHNOLOGY&gt;мультитула&lt;&gt;&#xA;Или откройте инвентарь (&lt;IMG&gt;INVENTORY&lt;&gt;) и создайте &lt;FUEL&gt;гель системы жизнеобеспечения&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NOTIFY_LIFESUP_MSG2_VRC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите &lt;FUEL&gt;кислород&lt;&gt; для подзарядки.&#xA;Используйте &lt;STELLAR&gt;сканер&lt;&gt;, чтобы найти кислород.&#xA;Укажите на слово «Сканирование» и выберите то, что вам нужно, при помощи &lt;IMG&gt;FE_ALTSELECT&lt;&gt;.&#xA;Или откройте инвентарь (&lt;IMG&gt;INVENTORY&lt;&gt;) и создайте &lt;FUEL&gt;гель системы жизнеобеспечения&lt;&gt;.
                                { "Russian", "Соберите &lt;FUEL&gt;кислород&lt;&gt; для подзарядки&#xA;Используйте &lt;STELLAR&gt;сканер&lt;&gt;, чтобы найти кислород&#xA;Укажите на слово «Сканирование» и выберите то, что вам нужно, при помощи &lt;IMG&gt;FE_ALTSELECT&lt;&gt;&#xA;Или откройте инвентарь (&lt;IMG&gt;INVENTORY&lt;&gt;) и создайте &lt;FUEL&gt;гель системы жизнеобеспечения&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NOTIFY_LIFESUP_MSG2_VRD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите &lt;FUEL&gt;кислород&lt;&gt; для подзарядки.&#xA;Удерживайте &lt;IMG&gt;VR_TELEPORT&lt;&gt;, чтобы перейти в режим телепортации.&#xA;Отпустите &lt;IMG&gt;VR_TELEPORT&lt;&gt;, чтобы телепортироваться.
                                { "Russian", "Найдите &lt;FUEL&gt;кислород&lt;&gt; для подзарядки&#xA;Удерживайте &lt;IMG&gt;VR_TELEPORT&lt;&gt;, чтобы перейти в режим телепортации&#xA;Отпустите &lt;IMG&gt;VR_TELEPORT&lt;&gt;, чтобы телепортироваться" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NOTIFY_LIFESUP_MSG2_VRE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите &lt;FUEL&gt;кислород&lt;&gt; для подзарядки.&#xA;Используйте &lt;IMG&gt;VR_SNAPLEFT&lt;&gt;/&lt;IMG&gt;VR_SNAPRIGHT&lt;&gt; для смены направления.&#xA;Удерживайте &lt;IMG&gt;VR_TELEPORT&lt;&gt;, чтобы перейти в режим телепортации.&#xA;Отпустите &lt;IMG&gt;VR_TELEPORT&lt;&gt;, чтобы телепортироваться.
                                { "Russian", "Найдите &lt;FUEL&gt;кислород&lt;&gt; для подзарядки&#xA;Используйте &lt;IMG&gt;VR_SNAPLEFT&lt;&gt;/&lt;IMG&gt;VR_SNAPRIGHT&lt;&gt; для смены направления&#xA;Удерживайте &lt;IMG&gt;VR_TELEPORT&lt;&gt;, чтобы перейти в режим телепортации&#xA;Отпустите &lt;IMG&gt;VR_TELEPORT&lt;&gt;, чтобы телепортироваться" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NOTIFY_LIFESUP_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Выполните перезарядку в быстром меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;) или инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;).
                                -- Recharge from the Quick Menu (&lt;IMG&gt;QUICK_MENU&lt;&gt;) or Inventory (&lt;IMG&gt;INVENTORY&lt;&gt;)
                                { "Russian", "&lt;COMMODITY&gt;Перезарядитесь&lt;&gt; из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)&#xA;или инвентаря (&lt;IMG&gt;INVENTORY&lt;&gt;)" },
                            }
                        },
                        --#endregion

                        -- прокрутка в сканере
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_GALAXYMAP_NO_ECON_INFO" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- - Данные недоступны -
                                -- - Data Unavailable -
                                { "Russian", "- Нет данных -" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_GALAXYMAP_NO_CONFLICT_INFO" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- - Данные недоступны -
                                -- - Data Unavailable -
                                { "Russian", "- Нет данных -" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TRANSFER_RECEIVE_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Переместить элементы из других инвентарей сюда
                                -- Transfer elements here from other inventories
                                { "Russian", "Переместить сюда вещи из других инвентарей" },
                            }
                        },

                        --#region UI_NOTIFY_HAZPROT.*MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NOTIFY_HAZPROT_MSG0" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите &lt;COMMODITY&gt;натрий&lt;&gt; для перезарядки&#xA;Сканер поврежден. Отремонтируйте его, чтобы найти натрий.&#xA;На &lt;TECHNOLOGY&gt;вашем корабле&lt;&gt; или в &lt;TECHNOLOGY&gt;укрытии&lt;&gt; доступна неограниченная подзарядка.
                                { "Russian", "Соберите &lt;COMMODITY&gt;натрий&lt;&gt; для перезарядки&#xA;Отремонтируйте сканер, чтобы найти натрий&#xA;На &lt;TECHNOLOGY&gt;вашем корабле&lt;&gt; или в &lt;TECHNOLOGY&gt;укрытии&lt;&gt; доступна неограниченная подзарядка" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NOTIFY_HAZPROT_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите &lt;COMMODITY&gt;натрий&lt;&gt; для перезарядки&#xA;Сканер поврежден. Отремонтируйте его, чтобы найти натрий.&#xA;Для этого нажмите &lt;IMG&gt;INVENTORY&lt;&gt; или &lt;IMG&gt;QUICK_MENU&lt;&gt;.
                                -- Gather &lt;COMMODITY&gt;Sodium&lt;&gt; to recharge&#xA;Scanner is damaged. Repair to find Sodium&#xA;Repair with &lt;IMG&gt;INVENTORY&lt;&gt; or &lt;IMG&gt;QUICK_MENU&lt;&gt;
                                { "Russian", "Соберите &lt;COMMODITY&gt;натрий&lt;&gt; для перезарядки&#xA;Отремонтируйте сканер, чтобы найти натрий&#xA;Для этого нажмите &lt;IMG&gt;INVENTORY&lt;&gt; или &lt;IMG&gt;QUICK_MENU&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NOTIFY_HAZPROT_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите &lt;COMMODITY&gt;натрий&lt;&gt; для перезарядки&#xA;Начните сканирование &lt;IMG&gt;SCAN&lt;&gt;, чтобы найти натрий.&#xA;На &lt;TECHNOLOGY&gt;вашем корабле&lt;&gt; или в &lt;TECHNOLOGY&gt;укрытии&lt;&gt; доступна неограниченная подзарядка.
                                { "Russian", "Соберите &lt;COMMODITY&gt;натрий&lt;&gt; для перезарядки&#xA;Начните сканирование &lt;IMG&gt;SCAN&lt;&gt;, чтобы найти натрий&#xA;На &lt;TECHNOLOGY&gt;вашем корабле&lt;&gt; или в &lt;TECHNOLOGY&gt;укрытии&lt;&gt; доступна неограниченная подзарядка" },
                            }
                        },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NOTIFY_HAZPROT_MSG2_VRA" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Используйте &lt;STELLAR&gt;сканер&lt;&gt;, чтобы найти &lt;COMMODITY&gt;натрий&lt;&gt; для перезарядки&#xA;Заведите руку за плечо и нажмите &lt;IMG&gt;VR_HOLSTER&lt;&gt;, чтобы взять мультитул&#xA;На &lt;TECHNOLOGY&gt;вашем корабле&lt;&gt; или в &lt;TECHNOLOGY&gt;укрытии&lt;&gt; доступна неограниченная подзарядка
                        --         { "Russian", "Используйте &lt;STELLAR&gt;сканер&lt;&gt;, чтобы найти &lt;COMMODITY&gt;натрий&lt;&gt; для перезарядки&#xA;Заведите руку за плечо и нажмите &lt;IMG&gt;VR_HOLSTER&lt;&gt;, чтобы взять мультитул&#xA;На &lt;TECHNOLOGY&gt;вашем корабле&lt;&gt; или в &lt;TECHNOLOGY&gt;укрытии&lt;&gt; доступна неограниченная подзарядка" },
                        --     }
                        -- },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NOTIFY_HAZPROT_MSG2_VRB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Используйте &lt;STELLAR&gt;сканер&lt;&gt;, чтобы найти &lt;COMMODITY&gt;натрий&lt;&gt; для перезарядки&#xA;Укажите &lt;STELLAR&gt;%SECONDARY_HAND%&lt;&gt; на заднюю сторону своего &lt;TECHNOLOGY&gt;мультитула&lt;&gt;.&#xA;На &lt;TECHNOLOGY&gt;вашем корабле&lt;&gt; или в &lt;TECHNOLOGY&gt;укрытии&lt;&gt; доступна неограниченная подзарядка.
                                { "Russian", "Используйте &lt;STELLAR&gt;сканер&lt;&gt;, чтобы найти &lt;COMMODITY&gt;натрий&lt;&gt; для перезарядки&#xA;Укажите &lt;STELLAR&gt;%SECONDARY_HAND%&lt;&gt; на заднюю сторону своего &lt;TECHNOLOGY&gt;мультитула&lt;&gt;&#xA;На &lt;TECHNOLOGY&gt;вашем корабле&lt;&gt; или в &lt;TECHNOLOGY&gt;укрытии&lt;&gt; доступна неограниченная подзарядка" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NOTIFY_HAZPROT_MSG2_VRC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Используйте &lt;STELLAR&gt;сканер&lt;&gt;, чтобы найти &lt;COMMODITY&gt;натрий&lt;&gt; для перезарядки.&#xA;Укажите на слово «Сканирование» и выберите то, что вам нужно, при помощи &lt;IMG&gt;FE_ALTSELECT&lt;&gt;&#xA;На &lt;TECHNOLOGY&gt;вашем корабле&lt;&gt; или в &lt;TECHNOLOGY&gt;укрытии&lt;&gt; доступна неограниченная подзарядка.
                                { "Russian", "Используйте &lt;STELLAR&gt;сканер&lt;&gt;, чтобы найти &lt;COMMODITY&gt;натрий&lt;&gt; для перезарядки&#xA;Укажите на слово «Сканирование» и выберите то, что вам нужно, при помощи &lt;IMG&gt;FE_ALTSELECT&lt;&gt;&#xA;На &lt;TECHNOLOGY&gt;вашем корабле&lt;&gt; или в &lt;TECHNOLOGY&gt;укрытии&lt;&gt; доступна неограниченная подзарядка" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NOTIFY_HAZPROT_MSG2_VRD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите &lt;COMMODITY&gt;натрий&lt;&gt;: %CURRENT% / %AMOUNT%&#xA;Удерживайте &lt;IMG&gt;VR_TELEPORT&lt;&gt;, чтобы перейти в режим телепортации&#xA;Отпустите &lt;IMG&gt;VR_TELEPORT&lt;&gt;, чтобы телепортироваться в новое место
                                { "Russian", "Найдите &lt;COMMODITY&gt;натрий&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Удерживайте &lt;IMG&gt;VR_TELEPORT&lt;&gt;, чтобы перейти в режим телепортации&#xA;Отпустите &lt;IMG&gt;VR_TELEPORT&lt;&gt;, чтобы телепортироваться в новое место" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NOTIFY_HAZPROT_MSG2_VRE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найти: &lt;COMMODITY&gt;натрий&lt;&gt; — %CURRENT%/%AMOUNT%&#xA;Используйте &lt;IMG&gt;VR_SNAPLEFT&lt;&gt;/&lt;IMG&gt;VR_SNAPRIGHT&lt;&gt; для смены направления.&#xA;Удерживайте &lt;IMG&gt;VR_TELEPORT&lt;&gt;, чтобы перейти в режим телепортации.&#xA;На &lt;TECHNOLOGY&gt;вашем корабле&lt;&gt; или в &lt;TECHNOLOGY&gt;укрытии&lt;&gt; доступна неограниченная подзарядка.
                                { "Russian", "Найдите &lt;COMMODITY&gt;натрий&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Используйте &lt;IMG&gt;VR_SNAPLEFT&lt;&gt;/&lt;IMG&gt;VR_SNAPRIGHT&lt;&gt; для смены направления&#xA;Удерживайте &lt;IMG&gt;VR_TELEPORT&lt;&gt;, чтобы перейти в режим телепортации&#xA;На &lt;TECHNOLOGY&gt;вашем корабле&lt;&gt; или в &lt;TECHNOLOGY&gt;укрытии&lt;&gt; доступна неограниченная подзарядка" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NOTIFY_HAZPROT_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Перезарядите в быстром меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;) или инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;).&#xA;На &lt;TECHNOLOGY&gt;вашем корабле&lt;&gt; или в &lt;TECHNOLOGY&gt;укрытии&lt;&gt; доступна неограниченная подзарядка.
                                -- Recharge from the Quick Menu (&lt;IMG&gt;QUICK_MENU&lt;&gt;) or Inventory (&lt;IMG&gt;INVENTORY&lt;&gt;)&#xA;Recharge is free in &lt;TECHNOLOGY&gt;your ship&lt;&gt; or in &lt;TECHNOLOGY&gt;shelter&lt;&gt;
                                { "Russian", "Перезарядите в быстром меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;) или инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;)&#xA;На &lt;TECHNOLOGY&gt;вашем корабле&lt;&gt; или в &lt;TECHNOLOGY&gt;укрытии&lt;&gt; доступна неограниченная подзарядка" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NOTIFY_HAZPROT_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;COMMODITY&gt;Защита от вредных факторов&lt;&gt;&#xA;Защита от вредных факторов автоматически перезаряжается в &lt;TECHNOLOGY&gt;укрытии&lt;&gt;.&#xA;Укрытием может выступать &lt;TECHNOLOGY&gt;ваш корабль&lt;&gt;, &lt;COMMODITY&gt;строения&lt;&gt; или &lt;TRADEABLE&gt;пещеры&lt;&gt;.
                                -- &lt;COMMODITY&gt;Hazard Protection&lt;&gt;&#xA;Hazard Protection automatically recharges in &lt;TECHNOLOGY&gt;shelter&lt;&gt;&#xA;Shelter in &lt;TECHNOLOGY&gt;your ship&lt;&gt;, &lt;COMMODITY&gt;buildings&lt;&gt; or &lt;TRADEABLE&gt;caves&lt;&gt;.
                                { "Russian", "&lt;COMMODITY&gt;Защита от вредных факторов&lt;&gt; автоматически&#xA;перезаряжается в &lt;TECHNOLOGY&gt;укрытии&lt;&gt;&#xA;Укрытием может выступать &lt;TECHNOLOGY&gt;ваш корабль&lt;&gt;,&#xA;&lt;COMMODITY&gt;строения&lt;&gt; или &lt;TRADEABLE&gt;пещеры&lt;&gt;" },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_GALMAP_TIP_EXPAND" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;GALAXYEXPAND&lt;&gt; Расширить
                                -- &lt;IMG&gt;GALAXYEXPAND&lt;&gt; Expand
                                { "Russian", "&lt;IMG&gt;GALAXYEXPAND&lt;&gt; Развернуть" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_GALMAP_TIP_MINIMISE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;GALAXYEXPAND&lt;&gt; Уменьшить
                                -- &lt;IMG&gt;GALAXYEXPAND&lt;&gt; Minimise
                                { "Russian", "&lt;IMG&gt;GALAXYEXPAND&lt;&gt; Свернуть" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "HELP_NO_WARP_CURR_SYS_PC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;GALAXYHOME&lt;&gt; Режим свободного обзора &lt;IMG&gt;SLASH&lt;&gt;&lt;IMG&gt;GALAXY_NAV_L&lt;&gt;&lt;IMG&gt;GALAXY_NAV_R&lt;&gt; Выбрать новый путь
                                -- &lt;IMG&gt;GALAXYHOME&lt;&gt; Enter free-look &lt;IMG&gt;SLASH&lt;&gt; &lt;IMG&gt;GALAXY_NAV_L&lt;&gt;&lt;IMG&gt;GALAXY_NAV_R&lt;&gt; Select new path
                                { "Russian", "&lt;IMG&gt;GALAXYHOME&lt;&gt; Свободная камера &lt;IMG&gt;SLASH&lt;&gt;&lt;IMG&gt;GALAXY_NAV_L&lt;&gt;&lt;IMG&gt;GALAXY_NAV_R&lt;&gt; Выбрать новый путь" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_GALMAP_TIP_DESELECT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;DESELECT&lt;&gt; Режим свободного обзора
                                -- &lt;IMG&gt;DESELECT&lt;&gt; Enter free-look
                                { "Russian", "&lt;IMG&gt;DESELECT&lt;&gt; Свободная камера" },
                            }
                        },
                        -- изначально криво составлен текст, если не смогли уместить в 1 предложение
                        -- простую мысль, что нужно открыть галактическую карту.
                        -- игрок итак догается что нужно открыть карту,
                        -- а если не догадается, то пошаговые инструкции еще расписаны в подсказке внизу справа.
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SCANEVENT_ANOTHER_SYSTEM" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ЦЕЛЬ ЗА ПРЕДЕЛАМИ СИСТЕМЫ &lt;IMG&gt;SLASH&lt;&gt; СМ. ГАЛАКТИЧЕСКУЮ КАРТУ
                                -- TARGET OUTSIDE LOCAL SYSTEM &lt;IMG&gt;SLASH&lt;&gt; CONSULT GALAXY MAP
                                { "Russian", "ЦЕЛЬ НАХОДИТСЯ В ДРУГОЙ ЗВЁЗДНОЙ СИСТЕМЕ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_COMMS_OSD1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;SLASH&lt;&gt; ВХОДЯЩЕЕ СООБЩЕНИЕ &lt;IMG&gt;SLASH&lt;&gt;  ЧАСТОТА: ИЗВЕСТНЫЙ СОБЕСЕДНИК &lt;IMG&gt;SLASH&lt;&gt;
                                -- &lt;IMG&gt;SLASH&lt;&gt; INCOMING MESSAGE &lt;IMG&gt;SLASH&lt;&gt;  FREQUENCY : KNOWN CONTACT &lt;IMG&gt;SLASH&lt;&gt;
                                { "Russian", "ВХОДЯЩЕЕ СООБЩЕНИЕ &lt;IMG&gt;SLASH&lt;&gt; ЗНАКОМЫЙ СОБЕСЕДНИК" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_COMMS_OSD2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;SLASH&lt;&gt;ВХОДЯЩЕЕ СООБЩЕНИЕ &lt;IMG&gt;SLASH&lt;&gt;  ЧАСТОТА: НЕИЗВЕСТНЫЙ ИСТОЧНИК&lt;IMG&gt;SLASH&lt;&gt;
                                -- &lt;IMG&gt;SLASH&lt;&gt; INCOMING MESSAGE &lt;IMG&gt;SLASH&lt;&gt;  FREQUENCY : SOURCE UNKNOWN &lt;IMG&gt;SLASH&lt;&gt;
                                { "Russian", "ВХОДЯЩЕЕ СООБЩЕНИЕ &lt;IMG&gt;SLASH&lt;&gt; НЕИЗВЕСТНЫЙ ИСТОЧНИК" },
                            }
                        },

                        --#region UI_OVERSEER.*_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_OVERSEER1_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Постройте &lt;TRADEABLE&gt;прямой коридор&lt;&gt;.&#xA;Чтобы открыть меню созидания, нажмите &lt;IMG&gt;BUILD_MENU&lt;&gt;.
                                { "Russian", "Постройте &lt;TRADEABLE&gt;прямой коридор&lt;&gt;&#xA;Чтобы открыть меню строительства, нажмите &lt;IMG&gt;BUILD_MENU&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_OVERSEER1_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Постройте &lt;TRADEABLE&gt;цилиндрическую комнату&lt;&gt;.&#xA;Чтобы открыть меню созидания, нажмите &lt;IMG&gt;BUILD_MENU&lt;&gt;.
                                { "Russian", "Постройте &lt;TRADEABLE&gt;цилиндрическую комнату&lt;&gt;&#xA;Чтобы открыть меню строительства, нажмите &lt;IMG&gt;BUILD_MENU&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_OVERSEER1_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Постройте &lt;TRADEABLE&gt;строительный терминал&lt;&gt;.&#xA;Этот терминал — ключ к &lt;STELLAR&gt;расширению вашей базы&lt;&gt;.&#xA;Чтобы открыть меню созидания, нажмите &lt;IMG&gt;BUILD_MENU&lt;&gt;
                                { "Russian", "Постройте &lt;TRADEABLE&gt;строительный терминал&lt;&gt;&#xA;Этот терминал — ключ к &lt;STELLAR&gt;расширению вашей базы&lt;&gt;&#xA;Чтобы открыть меню строительства, нажмите &lt;IMG&gt;BUILD_MENU&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_OVERSEER2_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Наймите &lt;STELLAR&gt;куратора&lt;&gt;.&#xA;Куратор поможет вам с расширением базы.&#xA;Наймите подходящего кандидата на космической станции.
                                { "Russian", "Наймите &lt;STELLAR&gt;куратора&lt;&gt;&#xA;Куратор поможет вам расширить базу&#xA;Наймите подходящего кандидата на космической станции" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_OVERSEER2_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поговорите с &lt;STELLAR&gt;куратором&lt;&gt; у терминала.&#xA;Куратор поможет вам с расширением базы.
                                { "Russian", "Поговорите с &lt;STELLAR&gt;куратором&lt;&gt; у терминала&#xA;Куратор поможет вам расширить базу" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_OVERSEER3_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Очистить: %ITEM% — %CURRENT%/%AMOUNT%&#xA;Создайте %ITEM% из меди (или другого &lt;STELLAR&gt;звездного металла&lt;&gt;).&#xA;Найдите залежи меди с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;.
                                -- Refine %ITEM%: %CURRENT%/%AMOUNT%&#xA;Create %ITEM% from Copper (or other &lt;STELLAR&gt;Stellar Metals&lt;&gt;)&#xA;Find copper deposits with the &lt;TECHNOLOGY&gt;Analysis Visor&lt;&gt;
                                { "Russian", "Рафинировать %ITEM%: %CURRENT%/%AMOUNT%&#xA;Создайте %ITEM% из меди или другого&#xA;&lt;STELLAR&gt;звездного металла&lt;&gt;&#xA;Найдите залежи меди с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_OVERSEER4_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите хранящиеся внутри данные&#xA;Найдите внутри строения терминал
                                -- Search the building for data&#xA;Find a terminal within the building
                                { "Russian", "Поищите данные в здании&#xA;Найдите терминал внутри здания" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_OVERSEER4_MSG_SURVEY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите данные, хранящиеся в &lt;FUEL&gt;заброшенном строении&lt;&gt;.&#xA;Используйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt;, чтобы точно установить местоположение строения.
                                -- Search for data in an &lt;FUEL&gt;Abandoned Building&lt;&gt;&#xA;Use the &lt;TECHNOLOGY&gt;Target Sweep&lt;&gt; to pinpoint the structure
                                { "Russian", "Поищите данные в &lt;FUEL&gt;заброшенном здании&lt;&gt;&#xA;Используйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt;, чтобы найти его" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_OVERSEER4_MSG_SURVEY_SWAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите данные, хранящиеся в &lt;FUEL&gt;заброшенном строении&lt;&gt;.&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;
                                { "Russian", "Поищите данные в &lt;FUEL&gt;заброшенном здании&lt;&gt;&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_OVERSEER4_MSG_SURVEY_OFF" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите данные, хранящиеся в &lt;FUEL&gt;заброшенном строении&lt;&gt;.&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы точно установить местоположение строения.
                                { "Russian", "Поищите данные в &lt;FUEL&gt;заброшенном здании&lt;&gt;&#xA;Найдите его с помощью &lt;STELLAR&gt;разведки цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_OVERSEER5_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Наймите для своей базы &lt;TECHNOLOGY&gt;ученого&lt;&gt;&#xA;Узнайте, как создавать &lt;COMMODITY&gt;микропроцессоры&lt;&gt;.&#xA;Нажмите &lt;IMG&gt;OPTIONS&lt;&gt;, чтобы сменить активное задание.
                                -- Hire a &lt;TECHNOLOGY&gt;Scientist&lt;&gt; for your base&#xA;Learn how to construct &lt;COMMODITY&gt;Microprocessors&lt;&gt;&#xA;Press &lt;IMG&gt;OPTIONS&lt;&gt; to change active mission
                                { "Russian", "Наймите для своей базы &lt;TECHNOLOGY&gt;ученого&lt;&gt;&#xA;Узнайте, как создавать &lt;COMMODITY&gt;микропроцессоры&lt;&gt;&#xA;Нажмите &lt;IMG&gt;OPTIONS&lt;&gt;, чтобы сменить активное задание" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_OVERSEER5_MSG1A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Наймите для своей базы &lt;TECHNOLOGY&gt;ученого&lt;&gt;&#xA;Нажмите &lt;IMG&gt;OPTIONS&lt;&gt;, чтобы сменить активное задание.
                                { "Russian", "Наймите для своей базы &lt;TECHNOLOGY&gt;ученого&lt;&gt;&#xA;Нажмите &lt;IMG&gt;OPTIONS&lt;&gt;, чтобы сменить активное задание" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_OVERSEER5_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добыть: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;Создайте %ITEM% из &lt;STELLAR&gt;хроматического металла&lt;&gt; и &lt;COMMODITY&gt;углеродных нанотрубок&lt;&gt;
                                -- Acquire a %ITEM%: %CURRENT%/%AMOUNT%&#xA;Craft %ITEM% from &lt;STELLAR&gt;Chromatic Metal&lt;&gt; and &lt;COMMODITY&gt;Carbon Nanotubes&lt;&gt;
                                { "Russian", "Добудьте: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;Создайте %ITEM% из &lt;STELLAR&gt;хроматического металла&lt;&gt;&#xA;и &lt;COMMODITY&gt;углеродных нанотрубок&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_OVERSEER6_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите &lt;SPECIAL&gt;%ITEM%&lt;&gt; со стражей (%CURRENT%/%AMOUNT%)&#xA;Уничтожайте стражей, чтобы получить &lt;SPECIAL&gt;%ITEM%&lt;&gt;
                                -- Harvest &lt;SPECIAL&gt;%ITEM%&lt;&gt; from Sentinels: %CURRENT%/%AMOUNT%&#xA;Destroy Sentinels to release &lt;SPECIAL&gt;%ITEM%&lt;&gt;
                                { "Russian", "Соберите &lt;SPECIAL&gt;%ITEM%&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Уничтожайте стражей, чтобы добыть &lt;SPECIAL&gt;%ITEM%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_OVERSEER7_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Наймите &lt;FUEL&gt;оружейника&lt;&gt;.&#xA;Нажмите &lt;IMG&gt;OPTIONS&lt;&gt;, чтобы сменить активное задание.
                                -- Hire an &lt;FUEL&gt;Armourer&lt;&gt;&#xA;Press &lt;IMG&gt;OPTIONS&lt;&gt; to change active mission
                                { "Russian", "Наймите &lt;FUEL&gt;оружейника&lt;&gt;&#xA;Нажмите &lt;IMG&gt;OPTIONS&lt;&gt;, чтобы сменить активное задание" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_OVERSEER7_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите %ITEM%: %CURRENT%/%AMOUNT%&#xA;%ITEM% встречается на &lt;FUEL&gt;высокотемпературных&lt;&gt; планетах.
                                -- Gather %ITEM%: %CURRENT%/%AMOUNT%&#xA;%ITEM% is found on &lt;FUEL&gt;Scorched&lt;&gt; worlds
                                { "Russian", "Соберите: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;%ITEM% встречается на &lt;FUEL&gt;выженных&lt;&gt; планетах" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_OVERSEER7_MSG2_SURVEY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите: %ITEM% %CURRENT%/%AMOUNT%&#xA;Используйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt;, чтобы обнаружить цель (%ITEM%).
                                -- Gather %ITEM%: %CURRENT%/%AMOUNT%&#xA;Use the &lt;TECHNOLOGY&gt;Target Sweep&lt;&gt; to locate %ITEM%
                                { "Russian", "Соберите: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;Используйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_OVERSEER7_MSG2_SURVEY_SWAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите: %ITEM% %CURRENT%/%AMOUNT%&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;
                                { "Russian", "Соберите: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_OVERSEER7_MSG2_SURVEY_OFF" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите: %ITEM% %CURRENT%/%AMOUNT%&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы найти цель (%ITEM%).
                                { "Russian", "Соберите: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_OVERSEER8_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добудьте %ITEM%: %CURRENT%/%AMOUNT%&#xA;Создайте плату в инвентаре.&#xA;&lt;TECHNOLOGY&gt;Ученый&lt;&gt; поможет вам выучить чертеж.
                                -- Acquire a %ITEM%: %CURRENT%/%AMOUNT%&#xA;Construct a circuit board in your inventory&#xA;The &lt;TECHNOLOGY&gt;Scientist&lt;&gt; will help you learn the blueprint
                                { "Russian", "Добудьте: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;Создайте плату в инвентаре&#xA;&lt;TECHNOLOGY&gt;Учёный&lt;&gt; поможет вам выучить чертеж" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_OVERSEER9_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Собрать %ITEM%: %CURRENT%/%AMOUNT%&#xA;%ITEM% встречаются на &lt;FUEL&gt;хорошо защищенных&lt;&gt; планетах.&#xA;Также можно выращивать на базе при помощи фермера.
                                -- Gather %ITEM%: %CURRENT%/%AMOUNT%&#xA;Find %ITEM% on &lt;FUEL&gt;High Security&lt;&gt; worlds,&#xA;Or grow one in your base with the help of a Farmer
                                { "Russian", "Соберите: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;Можно найти на &lt;FUEL&gt;хорошо защищенных&lt;&gt; планетах&#xA;Или вырастить на базе при поддержке фермера" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_OVERSEER9_MSG_SURVEY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите: %ITEM% %CURRENT%/%AMOUNT%&#xA;Используйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt;, чтобы обнаружить цель (%ITEM%).
                                { "Russian", "Соберите: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;Используйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_OVERSEER9_MSG_SURVEY_SWAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите: %ITEM% %CURRENT%/%AMOUNT%&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;
                                { "Russian", "Соберите: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_OVERSEER9_MSG_SURVEY_OFF" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите: %ITEM% %CURRENT%/%AMOUNT%&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы найти цель (%ITEM%).
                                { "Russian", "Соберите: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_OVERSEER10_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Собрать: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;%ITEM% добывают из тел погибших животных.&#xA;Также можно выращивать на базе при помощи фермера.
                                -- Gather %ITEM%: %CURRENT%/%AMOUNT%&#xA;%ITEM% is released when animals are killed,&#xA;Or can be grown in your base with the help of a Farmer
                                { "Russian", "Соберите: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;Убивайте животных, чтобы добыть %ITEM%&#xA;Или вырастите на базе при поддержке фермера" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_OVERSEER_RET_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вернитесь к наблюдателю.&#xA;Наблюдатель ждет вас в своем терминале.
                                -- Return to the Overseer&#xA;Your Overseer awaits at their terminal
                                { "Russian", "Вернитесь к наблюдателю&#xA;Он ждёт вас в своем терминале" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_OVERSEER_RET_WARP_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вернитесь к наблюдателю.&#xA;На кос. станции можно найти &lt;TECHNOLOGY&gt;терминал телепорта&lt;&gt;, для телепортации на базу.
                                -- Return to the Overseer&#xA;Use the &lt;TECHNOLOGY&gt;Space Station Teleport&lt;&gt; to quickly return to your base.
                                { "Russian", "Вернитесь к наблюдателю&#xA;Переместитесь на свою базу с помощью&#xA;&lt;TECHNOLOGY&gt;телепорта&lt;&gt; на &lt;COMMODITY&gt;космической станции&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region UI_SCIENTIST.*_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SCIENTIST1_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Постройте &lt;TECHNOLOGY&gt;научный терминал&lt;&gt;&#xA;Для строительства используйте &lt;IMG&gt;BUILD_MENU&lt;&gt;.
                                { "Russian", "Постройте &lt;TECHNOLOGY&gt;научный терминал&lt;&gt;&#xA;Для строительства используйте &lt;IMG&gt;BUILD_MENU&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SCIENTIST1_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Наймите ученого.&#xA;Наймите подходящего кандидата на космической станции.
                                { "Russian", "Наймите учёного&#xA;Наймите подходящего кандидата на космической станции" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SCIENTIST1_MSG2A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Наймите ученого на космической станции корваксов.&#xA;Используйте быстрое меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;), чтобы открыть галактическую карту.&#xA;Находясь в открытом космосе, используйте галактическую карту, чтобы переместиться в новую систему.
                                -- Hire a base Scientist from a Korvax space station&#xA;Use the Quick Menu (&lt;IMG&gt;QUICK_MENU&lt;&gt;) to access the Galaxy Map&#xA;When in space, use the Galaxy Map to warp to a new star system
                                { "Russian", "Наймите учёного на космической станции корваксов&#xA;Находясь в космосе, откройте галактическую карту из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)&#xA;Переместитесь в новую систему на галактической карте" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SCIENTIST1_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Навестите ученого в научном терминале.
                                { "Russian", "Навестите учёного в научном терминале" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SCIENTIST2_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добудьте: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;Найдите под землей &lt;TRADEABLE&gt;луковичную тыкву&lt;&gt; и &lt;EARTH&gt;кобальт&lt;&gt;.
                                -- Acquire %ITEM%: %CURRENT%/%AMOUNT%&#xA;Find both &lt;TRADEABLE&gt;Marrow Bulb&lt;&gt; and &lt;EARTH&gt;Cobalt&lt;&gt; underground
                                { "Russian", "Добудьте: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;Найдите &lt;TRADEABLE&gt;луковичную тыкву&lt;&gt; и &lt;EARTH&gt;кобальт&lt;&gt; под землей" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SCIENTIST3_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Посетите радиомачту.&#xA;Заново подключите ядро личности ученого к Единству.
                                -- Visit a Transmission Tower&#xA;Reconnect the Scientist to the Convergence
                                { "Russian", "Посетите радиомачту&#xA;Переподключите учёного к Единству" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SCIENTIST3_MSG_SURVEY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Заново подключите ядро личности ученого к Единству.&#xA;Используйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt;, чтобы точно установить местоположение &lt;TECHNOLOGY&gt;радиомачты&lt;&gt;.
                                -- Reconnect the Scientist to the Convergence&#xA;Use the &lt;TECHNOLOGY&gt;Target Sweep&lt;&gt; to pinpoint a &lt;TECHNOLOGY&gt;transmission tower&lt;&gt;
                                { "Russian", "Переподключите учёного к Единству&#xA;Найдите &lt;TECHNOLOGY&gt;радиомачту&lt;&gt; с помощью &lt;TECHNOLOGY&gt;разведки цели&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SCIENTIST3_MSG_SURVEY_SWAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Заново подключите ядро личности ученого к Единству.&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;
                                { "Russian", "Переподключите учёного к Единству&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SCIENTIST3_MSG_SURVEY_OFF" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Заново подключите ядро личности ученого к Единству.&#xA;Используйте &lt;STELLAR&gt;разведку цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы точно установить местоположение &lt;TECHNOLOGY&gt;радиомачты&lt;&gt;.
                                { "Russian", "Переподключите учёного к Единству&#xA;Найдите &lt;TECHNOLOGY&gt;радиомачту&lt;&gt; с помощью &lt;STELLAR&gt;разведки цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SCIENTIST4_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите хранящиеся в &lt;SPECIAL&gt;обсерватории&lt;&gt; данные.&#xA;Ищите терминал внутри строения.
                                -- Gather data from an &lt;SPECIAL&gt;Observatory&lt;&gt;&#xA;Search inside the building
                                { "Russian", "Соберите хранящиеся в &lt;SPECIAL&gt;обсерватории&lt;&gt; данные&#xA;Обыщите здание изнутри" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SCIENTIST4_MSG_SURVEY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите хранящиеся в &lt;SPECIAL&gt;обсерватории&lt;&gt; данные.&#xA;Используйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt;, чтобы обнаружить строение.
                                -- Gather data from an &lt;SPECIAL&gt;Observatory&lt;&gt;&#xA;Use the &lt;TECHNOLOGY&gt;Target Sweep&lt;&gt; to locate the facility
                                { "Russian", "Соберите хранящиеся в &lt;SPECIAL&gt;обсерватории&lt;&gt; данные&#xA;Найдите сооружение с помощью &lt;TECHNOLOGY&gt;разведки цели&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SCIENTIST4_MSG_SURVEY_SWAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите хранящиеся в &lt;SPECIAL&gt;обсерватории&lt;&gt; данные.&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;
                                { "Russian", "Соберите хранящиеся в &lt;SPECIAL&gt;обсерватории&lt;&gt; данные&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SCIENTIST4_MSG_SURVEY_OFF" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите хранящиеся в &lt;SPECIAL&gt;обсерватории&lt;&gt; данные.&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы найти постройку.
                                { "Russian", "Соберите хранящиеся в &lt;SPECIAL&gt;обсерватории&lt;&gt; данные&#xA;Найдите сооружение с помощью &lt;STELLAR&gt;разведки цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SCIENTIST6_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Просканируйте существ (%CURRENT%/%AMOUNT%)
                                -- Scan creatures: %CURRENT%/%AMOUNT%
                                { "Russian", "Просканируйте существ: %CURRENT%/%AMOUNT%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SCIENTIST7_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Собрать: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;%ITEM% необходимо найти, купить или создать.
                                -- Gather %ITEM%: %CURRENT%/%AMOUNT%&#xA;Locate, purchase or craft %ITEM%
                                { "Russian", "Найдите, купите или создайте: %ITEM% (%CURRENT%/%AMOUNT%)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SCIENTIST8_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите монолит.&#xA;Заново подключите ядро личности ученого к Единству.
                                -- Visit a Monolith&#xA;Reconnect the Scientist to the Convergence
                                { "Russian", "Посетите монолит&#xA;Переподключите учёного к Единству" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SCIENTIST8_MSG_SURVEY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Заново подключите ядро личности ученого к Единству.&#xA;Используйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt;, чтобы обнаружить &lt;SPECIAL&gt;монолит&lt;&gt;.
                                { "Russian", "Переподключите учёного к Единству&#xA;Найдите &lt;SPECIAL&gt;монолит&lt;&gt; с помощью &lt;TECHNOLOGY&gt;разведки цели&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SCIENTIST8_MSG_SURVEY_SWAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Заново подключите ядро личности ученого к Единству.&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;
                                { "Russian", "Переподключите учёного к Единству&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SCIENTIST8_MSG_SURVEY_OFF" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Заново подключите ядро личности ученого к Единству.&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы найти &lt;SPECIAL&gt;монолит&lt;&gt;.
                                { "Russian", "Переподключите учёного к Единству&#xA;Найдите &lt;SPECIAL&gt;монолит&lt;&gt; с помощью &lt;STELLAR&gt;разведки цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SCIENTIST9_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Собрать: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;Найдите или приобретите куб.
                                -- Gather %ITEM%: %CURRENT%/%AMOUNT%&#xA;Locate or purchase the Cube
                                { "Russian", "Добудьте: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;Найдите или приобретите куб" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SCIENTIST9_MSG_SURVEY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добудьте куб Единства корваксов.&#xA;Используйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt;, чтобы обнаружить фабрику корваксов.
                                -- Collect a Convergence Cube&#xA;Use the &lt;TECHNOLOGY&gt;Target Sweep&lt;&gt; to locate a Korvax factory
                                { "Russian", "Добудьте куб Единства корваксов&#xA;Найдите фабрику корваксов с помощью &lt;TECHNOLOGY&gt;разведки цели&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SCIENTIST9_MSG_SURVEY_SWAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добудьте куб Единства корваксов.&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;
                                { "Russian", "Добудьте куб Единства корваксов&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SCIENTIST9_MSG_SURVEY_OFF" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добудьте куб Единства корваксов.&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы обнаружить фабрику корваксов.
                                { "Russian", "Добудьте куб Единства корваксов&#xA;Найдите фабрику корваксов с помощью &lt;STELLAR&gt;разведки цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SCIENTIST_RET_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вернитесь к ученому.&#xA;Ученый ждет вас в своем терминале.
                                -- Return to the Scientist&#xA;Your Scientist awaits at their terminal
                                { "Russian", "Вернитесь к учёному&#xA;Он ждёт вас в своем терминале" },
                            }
                        },
                        --#endregion

                        --#region UI_SCI_.*_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SCI_3_WAIT_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Ученый перезагружается.&#xA;До завершения загрузки: %TIME%.&#xA;Чтобы выбрать другую задачу, посмотрите журнал (&lt;IMG&gt;OPTIONS&lt;&gt;).
                                -- The Scientist is rebooting&#xA;Boot time remaining: %TIME%&#xA;Consult the Log (&lt;IMG&gt;OPTIONS&lt;&gt;) to select another task
                                { "Russian", "Учёный перезагружается&#xA;До завершения загрузки %TIME%&#xA;Выберите другую задачу в журнале (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SCI_8_WAIT_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Ученый обучает своего Маяка.&#xA;Осталось времени: %TIME%.&#xA;Чтобы выбрать другую задачу, посмотрите журнал (&lt;IMG&gt;OPTIONS&lt;&gt;).
                                -- The Scientist is educating their Beacon child&#xA;Time remaining: %TIME%&#xA;Consult the Log (&lt;IMG&gt;OPTIONS&lt;&gt;) to select another task
                                { "Russian", "Учёный обучает своего Маяка&#xA;До завершения %TIME%&#xA;Выберите другую задачу в журнале (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SCI_RET_WARP_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вернитесь к ученому.&#xA;На кос. станции можно найти &lt;TECHNOLOGY&gt;терминал телепорта&lt;&gt;, для телепортации на базу.
                                { "Russian", "Вернитесь к учёному&#xA;Переместитесь на свою базу с помощью&#xA;&lt;TECHNOLOGY&gt;телепорта&lt;&gt; на &lt;COMMODITY&gt;космической станции&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region UI_EXOTUT.*_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXOTUT1_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Постройте &lt;TECHNOLOGY&gt;терминал вездехода&lt;&gt;.&#xA;Для строительства используйте &lt;IMG&gt;BUILD_MENU&lt;&gt;.
                                { "Russian", "Постройте &lt;TECHNOLOGY&gt;терминал вездехода&lt;&gt;&#xA;Для строительства используйте &lt;IMG&gt;BUILD_MENU&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXOTUT1_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Наймите техника по обслуживанию вездехода.&#xA;Наймите подходящего кандидата на космической станции.
                                { "Russian", "Наймите техника по обслуживанию вездехода&#xA;Наймите подходящего кандидата на космической станции" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXOTUT1_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Навестите техника на новом месте работы.
                                -- Visit the Technician at their new station
                                { "Russian", "Навестите техника на новом месте работы" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXOTUT2_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Построить: %ITEM%&#xA;Станции для вездеходов можно строить в любой точке планеты.
                                { "Russian", "Постройте: %ITEM%&#xA;Станции для вездеходов можно строить в любой точке планеты" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXOTUT2_MSG_S" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Постройте геостанцию «Кочевника»&#xA;Станции для вездеходов можно строить в любой точке планеты.
                                { "Russian", "Постройте геостанцию «Кочевника»&#xA;Станции для вездеходов можно строить в любой точке планеты" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXOTUT2_MSG_M" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Постройте геостанцию «Скитальца»&#xA;Станции для вездеходов можно строить в любой точке планеты.
                                { "Russian", "Постройте геостанцию «Скитальца»&#xA;Станции для вездеходов можно строить в любой точке планеты" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXOTUT2_MSG_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Постройте геостанцию «Колосса»&#xA;Станции для вездеходов можно строить в любой точке планеты.
                                { "Russian", "Постройте геостанцию «Колосса»&#xA;Станции для вездеходов можно строить в любой точке планеты" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXOTUT3_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Построить: %ITEM%&#xA;Для работы с вездеходом используйте &lt;IMG&gt;INVENTORY&lt;&gt;.
                                -- Construct the %ITEM%&#xA;Use &lt;IMG&gt;INVENTORY&lt;&gt; to access Exocraft Systems
                                { "Russian", "Постройте: %ITEM%&#xA;Для работы с вездеходом используйте &lt;IMG&gt;INVENTORY&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXOTUT3_MSGA" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Изготовьте %ITEM% в своем &lt;TECHNOLOGY&gt;«Скитальце»&lt;&gt;.&#xA;Вызывать «Скитальца» можно на &lt;TECHNOLOGY&gt;геостанции&lt;&gt; или с помощью &lt;TECHNOLOGY&gt;быстрого меню&lt;&gt; (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                -- Construct the %ITEM% in your &lt;TECHNOLOGY&gt;Roamer&lt;&gt;&#xA;Summon the Roamer from its &lt;TECHNOLOGY&gt;Geobay&lt;&gt; or the &lt;TECHNOLOGY&gt;Quick Menu&lt;&gt; (&lt;IMG&gt;QUICK_MENU&lt;&gt;)
                                { "Russian", "Создайте в &lt;TECHNOLOGY&gt;Скитальце&lt;&gt;: %ITEM%&#xA;Скитальца можно вызвать на &lt;TECHNOLOGY&gt;геостанции&lt;&gt;&#xA;или из &lt;TECHNOLOGY&gt;быстрого меню&lt;&gt; (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXOTUT3_MSGB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Изготовьте %ITEM% в своем &lt;TECHNOLOGY&gt;«Скитальце»&lt;&gt;.&#xA;Разместите &lt;STELLAR&gt;геостанцию «Скитальца»&lt;&gt; с помощью &lt;TECHNOLOGY&gt;меню созидания&lt;&gt; (&lt;IMG&gt;BUILD_MENU&lt;&gt;).
                                { "Russian", "Создайте в &lt;TECHNOLOGY&gt;Скитальце&lt;&gt;: %ITEM%&#xA;Разместите &lt;STELLAR&gt;геостанцию «Скитальца»&lt;&gt;&#xA;из &lt;TECHNOLOGY&gt;меню строительства&lt;&gt; (&lt;IMG&gt;BUILD_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXOTUT3_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Изготовьте радар вездехода.&#xA;Для работы с вездеходом используйте &lt;IMG&gt;INVENTORY&lt;&gt;.
                                -- Construct the Exocraft Radar&#xA;Use &lt;IMG&gt;INVENTORY&lt;&gt; to access Exocraft Systems
                                { "Russian", "Создайте радар вездехода&#xA;Для работы с вездеходом используйте &lt;IMG&gt;INVENTORY&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXOTUT3_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Построить: Расщепитель для вездехода&#xA;Для работы с вездеходом используйте &lt;IMG&gt;INVENTORY&lt;&gt;.
                                { "Russian", "Создайте расщепитель для вездехода&#xA;Для работы с вездеходом используйте &lt;IMG&gt;INVENTORY&lt;&gt;" },
                            }
                        },
                        { -- уже нет никакого радара сигма, сейчас это VEHICLESCAN_U1_NAME - Radar Amplifier
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXOTUT3_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Изготовьте улучшение радара вездехода сигма.&#xA;Для работы с вездеходом используйте &lt;IMG&gt;INVENTORY&lt;&gt;.
                                -- Construct the Exocraft Radar Upgrade Sigma&#xA; Use &lt;IMG&gt;INVENTORY&lt;&gt; to access Exocraft Systems
                                { "Russian", "Создайте усилитель радара для вездехода&#xA;Для работы с вездеходом используйте &lt;IMG&gt;INVENTORY&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXOTUT4_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Собрать: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;%ITEM% можно добыть из разрушенных складов.&#xA;ВНИМАНИЕ: агрессивные действия привлекут внимание стражей.
                                -- Gather %ITEM%: %CURRENT%/%AMOUNT%&#xA;Destroy depots to collect %ITEM%&#xA;WARNING: Aggression will attract Sentinels
                                { "Russian", "Соберите: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;Разрушайте склады, чтобы добыть %ITEM%&#xA;ВНИМАНИЕ! Агрессивные действия привлекут внимание стражей" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXOTUT4_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сядьте в вездеход.&#xA;Для поиска складов стражей необходим &lt;TECHNOLOGY&gt;радар вездехода&lt;&gt;.
                                { "Russian", "Сядьте в вездеход&#xA;Для поиска складов стражей нужен &lt;TECHNOLOGY&gt;радар вездехода&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXOTUT4_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;%ITEM% можно добыть из разрушенных складов.&#xA;Откройте радар вездехода с помощью &lt;IMG&gt;QUICK_MENU&lt;&gt;.
                                -- Gather %ITEM%: %CURRENT%/%AMOUNT%&#xA;Destroy depots to collect %ITEM%&#xA;Access the Exocraft Radar with &lt;IMG&gt;QUICK_MENU&lt;&gt;
                                { "Russian", "Добудьте: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;Разрушайте склады, чтобы добыть %ITEM%&#xA;Активируйте радар вездехода с помощью &lt;IMG&gt;QUICK_MENU&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXOTUT5_MSG1_ALT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Доберитесь до терминала.&#xA;Срочно!
                                -- Reach the Terminal&#xA;Urgent!
                                { "Russian", "Доберитесь до терминала&#xA;Срочно!" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXOTUT5_MSG2_ALT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Доберитесь до терминала.&#xA;Срочно!&#xA;Чтобы двигаться быстрее, создайте &lt;TECHNOLOGY&gt;модуль для ускорения вездехода&lt;&gt;.
                                -- Reach the Terminal&#xA;Urgent!&#xA;Construct an &lt;TECHNOLOGY&gt;Acceleration Module&lt;&gt; to go faster
                                { "Russian", "Срочно доберитесь до терминала!&#xA;Установите &lt;TECHNOLOGY&gt;ускорители&lt;&gt;, чтобы ехать быстрее" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXOTUT5_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Доберитесь до терминала.&#xA;Срочно! Осталось времени: &lt;HIGHLIGHT&gt;%TIME%&lt;&gt;
                                -- Reach the Terminal&#xA;Urgent! Time left: &lt;HIGHLIGHT&gt;%TIME%&lt;&gt;
                                { "Russian", "Срочно доберитесь до терминала!&#xA;Осталось времени: &lt;HIGHLIGHT&gt;%TIME%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXOTUT5_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Доберитесь до терминала.&#xA;Срочно! Осталось времени: &lt;HIGHLIGHT&gt;%TIME%&lt;&gt;&#xA;Чтобы двигаться быстрее, создайте &lt;TECHNOLOGY&gt;модуль для ускорения вездехода&lt;&gt;.
                                -- Reach the Terminal&#xA;Urgent! Time left: &lt;HIGHLIGHT&gt;%TIME%&lt;&gt;&#xA;Construct an &lt;TECHNOLOGY&gt;Acceleration Module&lt;&gt; to go faster
                                { "Russian", "Срочно доберитесь до терминала!&#xA;Осталось времени: &lt;HIGHLIGHT&gt;%TIME%&lt;&gt;&#xA;Установите &lt;TECHNOLOGY&gt;ускорители&lt;&gt;, чтобы ехать быстрее" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXOTUT7_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Собрать: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;Расщепляйте экзотическую руду с помощью &lt;TECHNOLOGY&gt;расщепителя для вездехода&lt;&gt;.
                                -- Gather %ITEM%: %CURRENT%/%AMOUNT%&#xA;Use the &lt;TECHNOLOGY&gt;Exocraft Mining Laser&lt;&gt; to mine exotic rocks
                                { "Russian", "Соберите: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;Используйте &lt;TECHNOLOGY&gt;расщепитель для вездехода&lt;&gt; на экзотических камнях" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXOTUT9_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;Откройте радар вездехода с помощью &lt;IMG&gt;QUICK_MENU&lt;&gt;.
                                -- Gather %ITEM%: %CURRENT%/%AMOUNT%&#xA;Access the Exocraft Radar with &lt;IMG&gt;QUICK_MENU&lt;&gt;
                                { "Russian", "Добудьте: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;Активируйте радар вездехода с помощью &lt;IMG&gt;QUICK_MENU&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXOTUT9_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Собрать: %ITEM% (%CURRENT%/%AMOUNT%)
                                -- Gather %ITEM%: %CURRENT%/%AMOUNT%
                                { "Russian", "Добудьте: %ITEM% (%CURRENT%/%AMOUNT%)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXOTUT10_MSG1_ALT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Доберитесь до &lt;SPECIAL&gt;монолита&lt;&gt;.&#xA;Срочно!
                                { "Russian", "Доберитесь до &lt;SPECIAL&gt;монолита&lt;&gt;&#xA;Срочно!" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXOTUT10_MSG2_ALT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Доберитесь до &lt;SPECIAL&gt;монолита&lt;&gt;.&#xA;Срочно!&#xA;Чтобы двигаться быстрее, создайте &lt;TECHNOLOGY&gt;модуль для ускорения вездехода&lt;&gt;.
                                -- Reach the &lt;SPECIAL&gt;Monolith&lt;&gt;&#xA;Urgent!&#xA;Construct an &lt;TECHNOLOGY&gt;Acceleration Module&lt;&gt; to go faster
                                { "Russian", "Доберитесь до &lt;SPECIAL&gt;монолита&lt;&gt;&#xA;Срочно!&#xA;Установите &lt;TECHNOLOGY&gt;ускорители&lt;&gt;, чтобы ехать быстрее" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXOTUT10_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Доберитесь до &lt;SPECIAL&gt;монолита&lt;&gt;.&#xA;Срочно! Осталось времени: &lt;HIGHLIGHT&gt;%TIME%&lt;&gt;
                                -- Reach the &lt;SPECIAL&gt;Monolith&lt;&gt;&#xA;Urgent! Time left: &lt;HIGHLIGHT&gt;%TIME%&lt;&gt;
                                { "Russian", "Срочно доберитесь до &lt;SPECIAL&gt;монолита&lt;&gt;&#xA;Осталось времени: &lt;HIGHLIGHT&gt;%TIME%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXOTUT10_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Доберитесь до &lt;SPECIAL&gt;монолита&lt;&gt;.&#xA;Срочно! Осталось времени: &lt;HIGHLIGHT&gt;%TIME%&lt;&gt;&#xA;Чтобы двигаться быстрее, создайте &lt;TECHNOLOGY&gt;модуль для ускорения вездехода&lt;&gt;.
                                { "Russian", "Срочно доберитесь до &lt;SPECIAL&gt;монолита&lt;&gt;&#xA;Осталось времени: &lt;HIGHLIGHT&gt;%TIME%&lt;&gt;&#xA;Установите &lt;TECHNOLOGY&gt;ускорители&lt;&gt;, чтобы ехать быстрее" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXOTUT_RET_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вернитесь к технику.&#xA;Техник ждет вас в своем терминале.
                                -- Return to the Technician&#xA;Your Technician awaits at their terminal
                                { "Russian", "Вернитесь к технику&#xA;Он ждёт вас в своем терминале" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXOTUT_RET_WARP_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вернитесь к технику.&#xA;На кос. станции можно найти &lt;TECHNOLOGY&gt;терминал телепорта&lt;&gt;, для телепортации на базу.
                                { "Russian", "Вернитесь к технику&#xA;Переместитесь на свою базу с помощью&#xA;&lt;TECHNOLOGY&gt;телепорта&lt;&gt; на &lt;COMMODITY&gt;космической станции&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region UI_FARMER.*_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FARMER1_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Постройте &lt;TECHNOLOGY&gt;сельскохозяйственный терминал&lt;&gt;.&#xA;Для строительства используйте &lt;IMG&gt;BUILD_MENU&lt;&gt;.
                                { "Russian", "Постройте &lt;TECHNOLOGY&gt;сельскохозяйственный терминал&lt;&gt;&#xA;Для строительства используйте &lt;IMG&gt;BUILD_MENU&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FARMER1_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Наймите &lt;TRADEABLE&gt;фермера&lt;&gt;.&#xA;Наймите подходящего кандидата на космической станции.
                                { "Russian", "Наймите &lt;TRADEABLE&gt;фермера&lt;&gt;&#xA;Наймите подходящего кандидата на космической станции" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FARMER1_MSG2A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Наймите фермера на космической станции геков.&#xA;Используйте быстрое меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;), чтобы открыть галактическую карту.&#xA;Находясь в открытом космосе, используйте галактическую карту, чтобы переместиться в новую систему.
                                { "Russian", "Наймите фермера на космической станции геков&#xA;Находясь в космосе, откройте галактическую карту из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)&#xA;Переместитесь в новую систему на галактической карте" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FARMER1_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Навестите фермера в сельскохозяйственном терминале.
                                { "Russian", "Навестите фермера в сельскохозяйственном терминале" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FARMER_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вырастить: %ITEM%&#xA;Нажмите &lt;IMG&gt;BUILD_MENU&lt;&gt;, чтобы открыть меню &lt;STELLAR&gt;сельского хозяйства&lt;&gt;.&#xA;Посадите растение в &lt;TECHNOLOGY&gt;гидропонном блоке&lt;&gt;.
                                -- Grow %ITEM%&#xA;Use &lt;IMG&gt;BUILD_MENU&lt;&gt; to access the &lt;STELLAR&gt;Farming&lt;&gt; menu&#xA;Plant in a &lt;TECHNOLOGY&gt;Hydroponics Tray&lt;&gt;
                                { "Russian", "Вырастите: %ITEM%&#xA;Откройте меню сельского хозяйства с помощью &lt;IMG&gt;BUILD_MENU&lt;&gt;&#xA;Используйте &lt;TECHNOLOGY&gt;гидропонный блок&lt;&gt; для выращивания" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FARMER_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Собрать урожай с растения %ITEM%: %CURRENT%/%AMOUNT%&#xA;Прежде чем собирать урожай, дождитесь полной зрелости растения.
                                -- Harvest %ITEM%: %CURRENT%/%AMOUNT%&#xA;Harvest when the plant is fully grown
                                { "Russian", "Соберите урожай: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;Подождите пока растение вырастет&#xA;Затем соберите с него урожай" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FARMER_RET_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вернитесь к фермеру.&#xA;Фермер ждет вас в своем терминале.
                                -- Return to the Farmer&#xA;Your Farmer awaits at their terminal
                                { "Russian", "Вернитесь к фермеру&#xA;Он ждёт вас в своем терминале" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FARMER_RET_WARP_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вернитесь к фермеру.&#xA;На кос. станции можно найти &lt;TECHNOLOGY&gt;терминал телепорта&lt;&gt;, для телепортации на базу.
                                { "Russian", "Вернитесь к фермеру&#xA;Переместитесь на свою базу с помощью&#xA;&lt;TECHNOLOGY&gt;телепорта&lt;&gt; на &lt;COMMODITY&gt;космической станции&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region UI_WEAPGUY.*_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WEAPGUY1_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Постройте &lt;TECHNOLOGY&gt;оружейный терминал&lt;&gt;.&#xA;Для строительства используйте &lt;IMG&gt;BUILD_MENU&lt;&gt;.
                                { "Russian", "Постройте &lt;TECHNOLOGY&gt;оружейный терминал&lt;&gt;&#xA;Для строительства используйте &lt;IMG&gt;BUILD_MENU&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WEAPGUY1_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Наймите оружейника.&#xA;Наймите подходящего кандидата на космической станции.
                                { "Russian", "Наймите оружейника&#xA;Наймите подходящего кандидата на космической станции" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WEAPGUY1_MSG2A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Наймите оружейника на космической станции вай'кинов.&#xA;Используйте быстрое меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;), чтобы открыть галактическую карту.&#xA;Находясь в открытом космосе, используйте галактическую карту, чтобы переместиться в новую систему.
                                { "Russian", "Наймите оружейника на космической станции вай'кинов&#xA;Находясь в космосе, откройте галактическую карту из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)&#xA;Переместитесь в новую систему на галактической карте" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WEAPGUY1_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Навестите оружейника в оружейном терминале.
                                { "Russian", "Навестите оружейника в оружейном терминале" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WEAPGUY2_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Остановите производство на оружейной фабрике.
                                -- Shut down the Weapons Factory
                                { "Russian", "Остановите производство на оружейной фабрике" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WEAPGUY2_MSG1_SURVEY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Остановите производство на оружейной фабрике.&#xA;Используйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt;, чтобы точно установить местоположение постройки.
                                -- Shut down the Weapons Factory&#xA;Use the &lt;TECHNOLOGY&gt;Target Sweep&lt;&gt; to pinpoint the facility
                                { "Russian", "Остановите производство на оружейной фабрике&#xA;Найдите сооружение с помощью &lt;TECHNOLOGY&gt;разведки цели&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WEAPGUY2_MSG1_SURVEY_SWAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Остановите производство на оружейной фабрике.&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;
                                { "Russian", "Остановите производство на оружейной фабрике&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WEAPGUY2_MSG1_SURVEY_OFF" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Остановите производство на оружейной фабрике.&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы точно установить местоположение постройки.
                                { "Russian", "Остановите производство на оружейной фабрике&#xA;Найдите сооружение с помощью &lt;STELLAR&gt;разведки цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WEAPGUY2_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Уничтожьте дверь на фабрику.&#xA;Создайте &lt;TECHNOLOGY&gt;плазмомет&lt;&gt;.&#xA;Чтобы активировать плазмомет, используйте &lt;IMG&gt;CYCLEWEAPON&lt;&gt;.
                                { "Russian", "Уничтожьте дверь на фабрику&#xA;Создайте &lt;TECHNOLOGY&gt;плазмомет&lt;&gt;&#xA;Активируйте плазмомет с помощью &lt;IMG&gt;CYCLEWEAPON&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WEAPGUY3_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вернитесь на свой корабль и поднимайтесь в небо.
                                -- Return to your ship and proceed to space
                                { "Russian", "Вернитесь на свой корабль и отправляйтесь в космос" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WEAPGUY3_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите пиратский корабль.
                                { "Russian", "Найдите пиратский корабль" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WEAPGUY3_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Уничтожьте пирата.
                                { "Russian", "Уничтожьте пирата" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WEAPGUY4_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите и допросите пирата.
                                { "Russian", "Найдите и допросите пирата" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WEAPGUY4_MSG_SURVEY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите и допросите пирата.&#xA;Используйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt;, чтобы найти беглого пилота.
                                -- Find and interrogate the Pirate&#xA;Use the &lt;TECHNOLOGY&gt;Target Sweep&lt;&gt; to locate the fugitive pilot
                                { "Russian", "Найдите и допросите пирата&#xA;Найдите беглого пилота с помощью &lt;TECHNOLOGY&gt;разведки цели&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WEAPGUY4_MSG_SURVEY_SWAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите и допросите пирата.&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;
                                { "Russian", "Найдите и допросите пирата&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WEAPGUY4_MSG_SURVEY_OFF" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите и допросите пирата.&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы найти беглого пилота.
                                { "Russian", "Найдите и допросите пирата&#xA;Найдите беглого пилота с помощью &lt;STELLAR&gt;разведки цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WEAPGUY5_MSG0" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите &lt;SPECIAL&gt;склад стражей&lt;&gt;.
                                { "Russian", "Найдите &lt;SPECIAL&gt;склад стражей&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WEAPGUY5_MSG0_SURVEY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите &lt;SPECIAL&gt;склад стражей&lt;&gt;.&#xA;Использовать &lt;TECHNOLOGY&gt;разведку цели&lt;&gt;, чтобы точно установить местоположение станции
                                -- Locate a &lt;SPECIAL&gt;Sentinel Depot&lt;&gt;&#xA;Use the &lt;TECHNOLOGY&gt;Target Sweep&lt;&gt; to pinpoint the facility
                                { "Russian", "Найдите &lt;SPECIAL&gt;склад стражей&lt;&gt;&#xA;Найдите постройку с помощью &lt;TECHNOLOGY&gt;разведки цели&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WEAPGUY5_MSG0_SURVEY_SWAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите &lt;SPECIAL&gt;склад стражей&lt;&gt;.&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;
                                { "Russian", "Найдите &lt;SPECIAL&gt;склад стражей&lt;&gt;&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WEAPGUY5_MSG0_SURVEY_OFF" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите &lt;SPECIAL&gt;склад стражей&lt;&gt;.&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы точно установить местоположение постройки.
                                { "Russian", "Найдите &lt;SPECIAL&gt;склад стражей&lt;&gt;&#xA;Найдите постройку с помощью &lt;STELLAR&gt;разведки цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WEAPGUY5_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Уничтожьте склады: %CURRENT%/%AMOUNT%&#xA;&lt;FUEL&gt;ВНИМАНИЕ&lt;&gt;: агрессивные действия привлекут внимание стражей.
                                { "Russian", "Уничтожьте склады: %CURRENT%/%AMOUNT%&#xA;&lt;FUEL&gt;ВНИМАНИЕ!&lt;&gt; Агрессивные действия привлекут внимание стражей" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WEAPGUY5_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Активируйте сигнал бедствия.
                                { "Russian", "Активируйте сигнал бедствия" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WEAPGUY7_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите стражей.
                                -- Locate Sentinel forces
                                { "Russian", "Найдите силы стражей" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WEAPGUY7_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Атакуйте и уничтожьте стражей: %CURRENT%/%AMOUNT%
                                { "Russian", "Атакуйте и уничтожьте стражей: %CURRENT%/%AMOUNT%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WEAPGUY_RET_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вернитесь к оружейнику.&#xA;Оружейник ждет вас в своем терминале.
                                -- Return to the Armourer&#xA;Your Armourer awaits at their terminal
                                { "Russian", "Вернитесь к оружейнику&#xA;Он ждёт вас в своем терминале" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WEAPGUY_RET_WARP_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вернитесь к оружейнику.&#xA;На кос. станции можно найти &lt;TECHNOLOGY&gt;терминал телепорта&lt;&gt;, для телепортации на базу.
                                { "Russian", "Вернитесь к оружейнику&#xA;Переместитесь на свою базу с помощью&#xA;&lt;TECHNOLOGY&gt;телепорта&lt;&gt; на &lt;COMMODITY&gt;космической станции&lt;&gt;" },
                            }
                        },
                        --#endregion

                        -- XXX: это должно быть исправлено в файлах:
                        -- METADATA/SIMULATION/MISSIONS/TABLES/MISSIONTABLE.MBIN
                        -- METADATA/SIMULATION/MISSIONS/TABLES/RECURRINGMISSIONTABLE.MBIN
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_OVERSEER2_OSD2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вернитесь на свою базу
                                { "Russian", "ВЕРНИТЕСЬ НА СВОЮ БАЗУ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_OVERSEER_RET_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вернитесь к наблюдателю
                                -- Return to the Overseer
                                { "Russian", "ВЕРНИТЕСЬ К НАБЛЮДАТЕЛЮ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXOTUT_RET_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вернуться к технику
                                -- Return to the Technician
                                { "Russian", "ВЕРНИТЕСЬ К ТЕХНИКУ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FARMER_RET_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вернитесь к фермеру
                                -- Return to the Farmer
                                { "Russian", "ВЕРНИТЕСЬ К ФЕРМЕРУ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WEAPGUY_RET_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вернитесь к оружейнику
                                -- Return to the Armourer
                                { "Russian", "ВЕРНИТЕСЬ К ОРУЖЕЙНИКУ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SCIENTIST_RET_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вернитесь к ученому
                                -- Return to the Scientist
                                { "Russian", "ВЕРНИТЕСЬ К УЧЁНОМУ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_RETURN_MISSION_OBJ1_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вернитесь к диспетчеру заданий
                                -- Return to the Mission Agent
                                { "Russian", "ВЕРНИТЕСЬ К ДИСПЕТЧЕРУ ЗАДАНИЙ" },
                            }
                        },
                        --
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_OVERSEER1_OBJ1_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Чтобы открыть меню созидания, нажмите (&lt;IMG&gt;BUILD_MENU&lt;&gt;). Новые компоненты можно размещать только в пределах базы. Технологические детали можно достраивать и вне ее пределов.
                                -- Use (&lt;IMG&gt;BUILD_MENU&lt;&gt;) to access the Build Menu. Structural components can be built only within the bounds of a base. General technology parts maybe be constructed further afield.
                                { "Russian", "Нажмите &lt;IMG&gt;BUILD_MENU&lt;&gt;, чтобы открыть меню строительства. Структурные компоненты можно размещать только в пределах базы. Обычные технологические детали можно строить и вне ее пределов." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WEAPGUY_BOUNTY_TARGET" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Цель оружейника
                                -- The Armourer's Target
                                { "Russian", "ЦЕЛЬ ОРУЖЕЙНИКА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXOTUT1_OBJ2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Наймите техника по обслуживанию вездехода.
                                -- Hire an Exocraft Technician
                                { "Russian", "Наймите техника по обслуживанию вездехода" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NPC_EXO_BRIEF_MAIN_DESC_9" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вай'кин утверждает, что Нал, которому поклоняется его культ, однажды посещал мою планету. Не знаю, правда это или нет.&#xA;Один за другим я исследую эти заброшенные миры, наблюдаю за их обитателями и каждый раз поражаюсь, как сильно они одержимы своим прошлым и ненавистью, разделившей их.&#xA;Интересно, что мне готовит будущее? Отголоски каких тайн мне предстоит встретить на своем пути?&#xA;&#xA;Чтобы начать последний ритуал, технику требуются &lt;SPECIAL&gt;скопления нанитов&lt;&gt;. Когда я вернусь, меня будут ждать &lt;TECHNOLOGY&gt;ускорители для вездехода&lt;&gt;.
                                { "Russian", "Вай'кин утверждает, что Нал, которому поклоняется его культ, однажды посещал мою планету. Не знаю, правда это или нет.&#xA;Один за другим я исследую эти заброшенные миры, наблюдаю за их обитателями и каждый раз поражаюсь, как сильно они одержимы своим прошлым и ненавистью, разделившей их.&#xA;Интересно, что мне готовит будущее? Отголоски каких тайн мне предстоит встретить на своем пути?&#xA;&#xA;Чтобы начать последний ритуал, технику требуются &lt;SPECIAL&gt;скопления нанитов﻿.&lt;&gt; Когда я вернусь, меня будут ждать &lt;TECHNOLOGY&gt;ускорители для вездехода﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "OSD_OVERHEAT_SWITCH" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Режим прокрутки &lt;IMG&gt;CYCLEWEAPON&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt; Перегрев системы вооружения!
                                -- Cycle mode &lt;IMG&gt;CYCLEWEAPON&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt; Weapon Systems Overheated!
                                { "Russian", "Переключить оружие &lt;IMG&gt;CYCLEWEAPON&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt; Перегрев вооружения!" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "AMOUNT_UNITS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %AMOUNT% юн.
                                -- %AMOUNT% Units
                                { "Russian", "Юниты × %AMOUNT%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FIEND_KILL_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ВЫ ДОСТИГЛИ МЕСТА ЗАРАЖЕНИЯ
                                -- INFESTATION SITE REACHED
                                { "Russian", "ДОСТИГНУТО МЕСТО ЗАРАЖЕНИЯ" },
                            }
                        },

                        --#region WEATHER_
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "WEATHER_HEAT5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Темп. аномалии в атмосфере
                                -- Atmospheric Heat Instabilities
                                { "Russian", "Тепловые аномалии в атмосфере" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "WEATHER_DEAD2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Отсутствующ.
                                -- Absent
                                { "Russian", "Отсутствующая" },
                            }
                        },
                        { -- silent не существует в виде существительного (ср. с silence)
                            ["SPECIAL_KEY_WORDS"] = { "Id", "WEATHER_DEAD8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Тишины
                                -- Silent
                                { "Russian", "Тихая" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "WEATHER_DEAD9" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Инертен
                                -- Inert
                                { "Russian", "Инертная" },
                            }
                        },
                        -- во-первых, не радиоактивные, а радиационные бури
                        -- во-вторых, буря сама по себе "планетарна" в контексте погоды на _планете_
                        -- в идеале должно быть Всепланетные, но может не влезть
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "WEATHER_RADIOEXTREME3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Планетарные радиоакт. бури
                                -- Planet-Wide Radiation Storms
                                { "Russian", "Глобальные радиационные бури" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "WEATHER_GLITCH12" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Аномальн.
                                -- Anomalous
                                { "Russian", "Аномальная" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "WEATHER_LUSH_CLEAR10" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Райская
                                -- Blissful
                                { "Russian", "Блаженная" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "WEATHER_COLD_CLEAR2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Зимний
                                -- Wintry
                                { "Russian", "Зимняя" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "WEATHER_BARRENEXTREME4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обжиг. легкие ночной ветер
                                -- Lung-Burning Night Wind
                                { "Russian", "Сжигающий легкие ночной ветер" },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BINOC_STARSHIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Звездолет
                                -- Starship
                                { "Russian", "Звездолёт" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TRADE_ITEM_COMMOD_2_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ЗВЕЗДНЫЙ ШЕЛК
                                -- STAR SILK
                                { "Russian", "ЗВЁЗДНЫЙ ШЁЛК" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TRADE_ITEM_COMMOD_2_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Звездный шелк
                                -- Star Silk
                                { "Russian", "Звёздный шёлк" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TRADE_ITEM_COMMOD_2_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Несколько мотков звездного шелка.&#xA;&#xA;Звездный шелк производят на огромных звездных прядильнях, расположенных на орбитах торговых планет. Космические лучи определяют форму и узор полотна, которое затем можно использовать в процессе обработки &lt;SPECIAL&gt;продвинутых материалов&lt;&gt;.
                                -- Several spools of star silk.&#xA;&#xA;Star silk is woven on enormous solar looms in orbit around trading planets. Cosmic ray impact triggers the pattern of the weave, which can then be used in &lt;SPECIAL&gt;advanced material&lt;&gt; processing.
                                { "Russian", "Несколько мотков звёздного шёлка.&#xA;&#xA;Звёздный шёлк производят на огромных звёздных прядильнях, расположенных на орбитах торговых планет. Космические лучи определяют форму и узор полотна, которое затем можно использовать в процессе обработки &lt;SPECIAL&gt;прогрессивных материалов﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PLAYER_SHIP_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Ваш звездолет
                                -- Your Starship
                                { "Russian", "Ваш звездолёт" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "LUSH4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Зеленая %PLANETCLASS%
                                -- Viridescent %PLANETCLASS%
                                { "Russian", "Зеленоватая %PLANETCLASS%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FROZEN1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Замерзшая %PLANETCLASS%
                                -- Frozen %PLANETCLASS%
                                { "Russian", "Замёрзшая %PLANETCLASS%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLUEBIOME7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Замерзшая аномалия
                                -- Frozen Anomaly
                                { "Russian", "Замёрзшая аномалия" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "QUICK_MENU_TIP_COMMUNICATOR" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Коммуникатор звездолета
                                { "Russian", "Коммуникатор звездолёта" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SCORCHED8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Раскаленная %PLANETCLASS%
                                -- Torrid %PLANETCLASS%
                                { "Russian", "Раскалённая %PLANETCLASS%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "WEATHER_LUSH3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сверхраскаленная изморось
                                -- Superheated Drizzle
                                { "Russian", "Сверхраскалённая изморось" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "WEATHER_HEATEXTREME4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сверхраскаленный воздух
                                { "Russian", "Сверхраскалённый воздух" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "WEATHER_LUSHEXTREME3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сверхраскаленный дождь
                                { "Russian", "Сверхраскалённый дождь" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "IRRADIATED1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Облученная %PLANETCLASS%
                                -- Irradiated %PLANETCLASS%
                                { "Russian", "Облучённая %PLANETCLASS%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TOXIC8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Зараженная %PLANETCLASS%
                                -- Blighted %PLANETCLASS%
                                { "Russian", "Отравленная %PLANETCLASS%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TOXIC3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Отравленная %PLANETCLASS%
                                -- Noxious %PLANETCLASS%
                                { "Russian", "Вредная %PLANETCLASS%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "DEAD2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Мертвая %PLANETCLASS%
                                -- Dead %PLANETCLASS%
                                { "Russian", "Мёртвая %PLANETCLASS%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BARREN9" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Опустошенная %PLANETCLASS%
                                -- Desolate %PLANETCLASS%
                                { "Russian", "Опустошённая %PLANETCLASS%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "DEAD4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Опустошенная %PLANETCLASS%
                                -- Desolate %PLANETCLASS%
                                { "Russian", "Опустошённая %PLANETCLASS%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "GREENBIOME10" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Смертоносная зеленая аномалия
                                -- Deathly Green Anomaly
                                { "Russian", "Смертоносная зелёная аномалия" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SHORT_COMPARE_SHIP_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сравнить инвентари звездолетов
                                { "Russian", "Сравнить инвентари звездолётов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PLANTSUB_WATER_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Водоросл. мешок
                                -- Kelp Sac
                                { "Russian", "Водорослевый мешок" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "PLANT_AGE_23" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Восстанавливающееся
                                -- Regenerating
                                { "Russian", "Регенерирующий" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "GREENBIOME2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Потерянная зеленая %PLANETCLASS%
                                -- Lost Green %PLANETCLASS%
                                { "Russian", "Потерянная зелёная %PLANETCLASS%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "QUICK_MENU_SUM_GEAR_DAMAGE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Звездолет поврежден, взлет невозможен
                                -- Cannot Launch - Starship Damaged
                                { "Russian", "Взлёт невозможен — звездолёт поврежден" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PORTAL_ADDRESS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запросите координаты этой планеты
                                -- Request this planet's address
                                { "Russian", "Узнать координаты этой планеты" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAMEGEN_SHIP_ADJ_13" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Замерзший
                                -- Frozen
                                { "Russian", "Замёрзший" },
                            }
                        },

                        --#region CAVEGRAVE_NAME_
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "CAVEGRAVE_NAME_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %PROCNAME%: могила
                                -- Grave of %PROCNAME%
                                { "Russian", "Могила %PROCNAME%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "CAVEGRAVE_NAME_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %PROCNAME%: конец
                                -- %PROCNAME%'s End
                                { "Russian", "Конец %PROCNAME%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "CAVEGRAVE_NAME_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %PROCNAME%: последний приют
                                -- %PROCNAME%'s Termination
                                { "Russian", "Исход %PROCNAME%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "CAVEGRAVE_NAME_4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %PROCNAME%: пристанище
                                -- "%PROCNAME%'s Boundary
                                { "Russian", "Граница %PROCNAME%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "CAVEGRAVE_NAME_5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %PROCNAME%: ошибка
                                -- Failure of %PROCNAME%
                                { "Russian", "Провал %PROCNAME%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "CAVEGRAVE_NAME_6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %PROCNAME%: возрождение
                                -- %PROCNAME%'s Regeneration
                                { "Russian", "Регенерация %PROCNAME%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "CAVEGRAVE_NAME_10" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %PROCNAME%: последний журнал
                                -- %PROCNAME%'s Final Log
                                { "Russian", "Последний журнал %PROCNAME%" },
                            }
                        },
                        --#endregion

                        --#region UI_PLANTSUB_LUSH_NAME
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PLANTSUB_LUSH_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ЗВЕЗДНЫЙ ЛУК
                                { "Russian", "ЗВЁЗДНЫЙ ЛУК" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PLANTSUB_LUSH_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Звездный лук
                                { "Russian", "Звёздный лук" },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MISSION_RESET_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;SLASH&lt;&gt; Перезапуск миссии &lt;IMG&gt;SLASH&lt;&gt;
                                -- &lt;IMG&gt;SLASH&lt;&gt; Mission Restarted &lt;IMG&gt;SLASH&lt;&gt;
                                { "Russian", "&lt;IMG&gt;SLASH&lt;&gt; Задание перезапущено &lt;IMG&gt;SLASH&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_GALMAP_TIP_WARP_NOICON" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Варп
                                -- Warp
                                { "Russian", "Прыжок" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "GLXY_WARP_NOT_POSSIBLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Варп невозможен
                                -- Unable to Warp
                                { "Russian", "Прыжок невозможен" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "QUICK_MENU_SUM_FREIGHT_NO_SPACE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Варп грузового корабля здесь недоступен
                                -- Cannot Warp Freighter Here
                                { "Russian", "Сюда нельзя вызвать грузовое судно" },
                            }
                        },

                        --#region ; Варп
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "HELP_WHEN_SYSTEM_SELECTED" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;GALAXYWARP&lt;&gt; Варп &lt;IMG&gt;SLASH&lt;&gt;&lt;IMG&gt;LOOK&lt;&gt; Выбрать следующую систему &lt;IMG&gt;SLASH&lt;&gt;&lt;IMG&gt;GALAXYWAYPT&lt;&gt; Задать точку маршрута &lt;IMG&gt;SLASH&lt;&gt;&lt;IMG&gt;GALAXYHOME&lt;&gt; Отменить выбор
                                -- &lt;IMG&gt;GALAXYWARP&lt;&gt; Warp &lt;IMG&gt;SLASH&lt;&gt; &lt;IMG&gt;LOOK&lt;&gt; Select next system &lt;IMG&gt;SLASH&lt;&gt; &lt;IMG&gt;GALAXYWAYPT&lt;&gt; Set Waypoint &lt;IMG&gt;SLASH&lt;&gt; &lt;IMG&gt;GALAXYHOME&lt;&gt; Deselect
                                { "Russian", "&lt;IMG&gt;GALAXYWARP&lt;&gt; Прыжок &lt;IMG&gt;SLASH&lt;&gt; &lt;IMG&gt;LOOK&lt;&gt; Следующая система &lt;IMG&gt;SLASH&lt;&gt; &lt;IMG&gt;GALAXYWAYPT&lt;&gt; Задать точку маршрута &lt;IMG&gt;SLASH&lt;&gt; &lt;IMG&gt;GALAXYHOME&lt;&gt; Отмена" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "HELP_WHEN_SYSTEM_SELECTED_PC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;GALAXYWARP&lt;&gt; Варп &lt;IMG&gt;SLASH&lt;&gt; &lt;IMG&gt;GALAXYHOME&lt;&gt; Отменить выбор &lt;IMG&gt;SLASH&lt;&gt; &lt;IMG&gt;GALAXYWAYPT&lt;&gt; Задать точку маршрута &lt;IMG&gt;SLASH&lt;&gt; Изменить путь &lt;IMG&gt;GALAXY_NAV_L&lt;&gt;&lt;IMG&gt;GALAXY_NAV_R&lt;&gt;
                                -- &lt;IMG&gt;GALAXYWARP&lt;&gt; Warp &lt;IMG&gt;SLASH&lt;&gt; &lt;IMG&gt;GALAXYHOME&lt;&gt; Deselect &lt;IMG&gt;SLASH&lt;&gt; &lt;IMG&gt;GALAXYWAYPT&lt;&gt; Set Waypoint &lt;IMG&gt;SLASH&lt;&gt; Change path &lt;IMG&gt;GALAXY_NAV_L&lt;&gt;&lt;IMG&gt;GALAXY_NAV_R&lt;&gt;
                                { "Russian", "&lt;IMG&gt;GALAXYWARP&lt;&gt; Прыжок &lt;IMG&gt;SLASH&lt;&gt; &lt;IMG&gt;GALAXYHOME&lt;&gt; Отмена &lt;IMG&gt;SLASH&lt;&gt; &lt;IMG&gt;GALAXYWAYPT&lt;&gt; Задать точку маршрута &lt;IMG&gt;SLASH&lt;&gt; Изменить путь &lt;IMG&gt;GALAXY_NAV_L&lt;&gt;&lt;IMG&gt;GALAXY_NAV_R&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "HELP_WHEN_SELECTED_NO_WARP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;FUEL&gt;&lt;IMG&gt;GALAXYWARP&lt;&gt; Варп недоступен&lt;&gt;&lt;IMG&gt;SLASH&lt;&gt;&lt;IMG&gt;LOOK&lt;&gt; Выбрать следующую систему &lt;IMG&gt;SLASH&lt;&gt;&lt;IMG&gt;GALAXYWAYPT&lt;&gt; Задать точку маршрута &lt;IMG&gt;SLASH&lt;&gt;&lt;IMG&gt;GALAXYHOME&lt;&gt; Отменить выбор
                                -- &lt;FUEL&gt;&lt;IMG&gt;GALAXYWARP&lt;&gt; Cannot Warp&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt; &lt;IMG&gt;LOOK&lt;&gt; Select next system &lt;IMG&gt;SLASH&lt;&gt; &lt;IMG&gt;GALAXYWAYPT&lt;&gt; Set Waypoint &lt;IMG&gt;SLASH&lt;&gt; &lt;IMG&gt;GALAXYHOME&lt;&gt; Deselect
                                { "Russian", "&lt;FUEL&gt;&lt;IMG&gt;GALAXYWARP&lt;&gt; Прыжок недоступен&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt; &lt;IMG&gt;LOOK&lt;&gt; Следующая система &lt;IMG&gt;SLASH&lt;&gt; &lt;IMG&gt;GALAXYWAYPT&lt;&gt; Задать точку маршрута &lt;IMG&gt;SLASH&lt;&gt; &lt;IMG&gt;GALAXYHOME&lt;&gt; Отмена" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "HELP_WHEN_SELECTED_NO_WARP_PC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;FUEL&gt;&lt;IMG&gt;GALAXYWARP&lt;&gt; Варп недоступен&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt; &lt;IMG&gt;GALAXYHOME&lt;&gt; Отменить выбор &lt;IMG&gt;SLASH&lt;&gt; &lt;IMG&gt;GALAXYWAYPT&lt;&gt; Задать точку маршрута &lt;IMG&gt;SLASH&lt;&gt; &lt;IMG&gt;GALAXY_NAV_L&lt;&gt;&lt;IMG&gt;GALAXY_NAV_R&lt;&gt; Изменить путь
                                -- &lt;FUEL&gt;&lt;IMG&gt;GALAXYWARP&lt;&gt; Cannot Warp&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt; &lt;IMG&gt;GALAXYHOME&lt;&gt; Deselect &lt;IMG&gt;SLASH&lt;&gt; &lt;IMG&gt;GALAXYWAYPT&lt;&gt; Set Waypoint &lt;IMG&gt;SLASH&lt;&gt; &lt;IMG&gt;GALAXY_NAV_L&lt;&gt;&lt;IMG&gt;GALAXY_NAV_R&lt;&gt; Change path 
                                { "Russian", "&lt;FUEL&gt;&lt;IMG&gt;GALAXYWARP&lt;&gt; Прыжок недоступен&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt; &lt;IMG&gt;GALAXYHOME&lt;&gt; Отмена &lt;IMG&gt;SLASH&lt;&gt; &lt;IMG&gt;GALAXYWAYPT&lt;&gt; Задать точку маршрута &lt;IMG&gt;SLASH&lt;&gt; &lt;IMG&gt;GALAXY_NAV_L&lt;&gt;&lt;IMG&gt;GALAXY_NAV_R&lt;&gt; Изменить путь" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_GALMAP_TIP_WARP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;GALAXYWARP&lt;&gt; Варп
                                { "Russian", "&lt;IMG&gt;GALAXYWARP&lt;&gt; Прыжок" },
                            }
                        },
                        --#endregion

                    }
                },
            }
        }
    }
}
