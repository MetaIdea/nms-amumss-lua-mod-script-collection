NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]    = "_RuFix_Farscape_Nailed.pak",
    ["MOD_AUTHOR"]      = "gh0stwizard",
    ["MOD_DESCRIPTION"] = "Delete this when UI get fixed.",
    ["NMS_VERSION"]     = "5.72",
    ["EXML_CREATE"]     = "false",
    ["MODIFICATIONS"]   = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                { -- LANGUAGE/NMS_LOC1_RUSSIAN.MBIN
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_LOC1_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        -- Альтернативные варианты: Фрейтер, Фрахтер, Грузовоз, Сухогруз
                        -- фрейтер это американизированное слово, которое только вносит недопонимание,
                        -- т.к. фрахт это действие, а не корабль! Точное наз-е в англ. это "cargo ship".
                        -- В немецков варианте с этим лучше:
                        -- Ein Frachtschiff, kurz Frachter
                        -- Но, кроме слова "фрахт" в руссий язык не приехало слово "фрахтер",
                        -- а приехало фрахтовщик - лицо, которое занимается фрахтованием.
                        { -- ппц, это используется в сканере
                            ["SPECIAL_KEY_WORDS"] = { "Id", "WAR_FAC_OPT_C_21" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Грузовой корабль
                                -- Freighter
                                { "Russian", "Грузовоз" },
                            }
                        },
                        { -- это хз где используется
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NEW_FREIGHTER_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Грузовой корабль
                                -- Freighter
                                { "Russian", "Грузовоз" },
                            }
                        },

                        --#region виды животных
                        -- чтобы не было прокрутки, наиболее длинная комбинация
                        -- "Обычный / Земля / Чаще ночью / С" не должна быть длиннее 24 букв
                        -- вырезание букв на конце начинается от 30 включительно букв
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UNCOMMON" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Необычный
                                -- Uncommon
                                { "Russian", "Особый" },
                            }
                        },
                        --#endregion

                        -- одна буква решает будет прокрутка или нет... епрст
                        -- но! плюс в том, что китайцы в 10 веке придумали копье яростного огня
                        -- ... и это было интересно узнать... =)))
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RAILGUN1_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Пламенное копье
                                -- Blaze Javelin
                                { "Russian", "Копье" },
                            }
                        },

                        --#region ЗАЩИТА ОТ ВРЕД. ФАКТОРОВ
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "PROTECT_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ЗАЩИТА ОТ ВРЕД. ФАКТОРОВ
                                -- HAZARD PROTECTION
                                { "Russian", "СИСТЕМА БЕЗОПАСНОСТИ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "PROTECT_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Защита от вредных факторов
                                { "Russian", "Система безопасности" },
                            }
                        },
                        --#endregion
                    }
                },
                { -- LANGUAGE/NMS_LOC4_RUSSIAN.MBIN
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_LOC4_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "T_GRENADE_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Геологическая пушка
                                -- Geology Cannon
                                { "Russian", "Геопушка" },
                            }
                        },
                        -- выигрываем как можно больше букв, чтобы избежать прокрутку
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMUSE_BUILD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- строительство
                                -- Building
                                { "Russian", "зодчество" },
                            }
                        },
                        --
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DISC_FLORA_DISCOVERED" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружена флора
                                -- Flora Discovered
                                { "Russian", " " },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DISC_FAUNA_DISCOVERED" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружена фауна
                                -- Fauna Discovered
                                { "Russian", " " },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DISC_MINERALS_DISCOVERED" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружены минералы
                                -- Minerals Discovered
                                { "Russian", " " },
                            }
                        },

                        --#region описание строительных модулей
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BASE_TELEPORT_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;Личное устройство телепортации&lt;&gt;, позволяющее пользователю быстро перемещаться между построенными базами, а также терминалами космических станций, которые подключены к сети.&#xA;&#xA;Рекомендуется проверять целостность сети перед отправкой любых материалов, потеря которых нежелательна.
                                { "Russian", "&lt;TECHNOLOGY&gt;Личное устройство телепортации&lt;&gt;, позволяющее пользователю быстро перемещаться между построенными базами, а также терминалами космических станций, которые подключены к сети." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "O2_HARVESTER_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;Автономный атмосферный экстрактор&lt;&gt; для выделения кислорода из атмосферы с его последующим сбором. Пользователю необходимо периодически заправлять устройство для обеспечения непрерывной работы.&#xA;&#xA;Получаемый газ сжимается, обрабатывается и может быть использован во всех стандартных &lt;FUEL&gt;системах жизнеобеспечения&lt;&gt;.
                                { "Russian", "&lt;TECHNOLOGY&gt;Автономный атмосферный экстрактор&lt;&gt; для выделения кислорода из атмосферы с его последующим сбором. Пользователю необходимо периодически заправлять устройство для обеспечения непрерывной работы." },
                            }
                        },
                        --#endregion
                    }
                },
                { -- LANGUAGE/NMS_LOC5_RUSSIAN.MBIN
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_LOC5_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        --#region виды животных
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CRE_TERRAIN_AIR" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Летающее (Flying)
                                { "Russian", "Воздух" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CRE_TERRAIN_BASE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Наземное (Ground)
                                { "Russian", "Земля" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CRE_TERRAIN_ROCK" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Наземное (Ground)
                                { "Russian", "Земля" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CRE_TERRAIN_MOUNTAIN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Горное (Mountainous)
                                { "Russian", "Горы" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CRE_TERRAIN_WATER" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Подводное (Underwater)
                                { "Russian", "Вода" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CRE_TERRAIN_CAVE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Подземное (Underground)
                                { "Russian", "Пещера" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CRE_TERRAIN_DIRT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Наземное (Ground)
                                { "Russian", "Земля" },
                            }
                        },
                        --#endregion

                        --#region Скотоводческая система
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_HARVESTER_INV_TITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- СОБРАННЫЕ ТОВАРЫ
                                -- HARVESTED GOODS
                                { "Russian", "ХРАНИЛИЩЕ" }, -- желательно не более 15 букв
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_HARVESTER_INV_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Хранилище только для продуктов, автоматически собранных с существ
                                -- Storage for automatically harvested creature products only
                                { "Russian", "Хранилище для автоматически собранных продуктов" },
                            }
                        },
                        --#endregion

                        --#region описание строительных модулей
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_U_GENERATOR_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- При размещении в области с высокой напряженностью поля, эффективные динамо-машины начинают производить &lt;STELLAR&gt;практически безграничную энергию&lt;&gt;.&#xA;&#xA;Найдите подходящие места, воспользовавшись особым &lt;TECHNOLOGY&gt;исследовательским&lt;&gt; улучшением для &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;. Выходная мощность в разных районах может отличаться.
                                -- When suitably placed in an area of high field strength, efficient electromagnetic dynamos are used to generate &lt;STELLAR&gt;near limitless power&lt;&gt;.&#xA;&#xA;Locate appropriate sites with the &lt;TECHNOLOGY&gt;Surveying&lt;&gt; upgrade for the &lt;TECHNOLOGY&gt;Analysis Visor&lt;&gt;. Power output will vary from site to site.
                                { "Russian", "При размещении в области с высокой напряженностью поля, эффективные динамо-машины начинают производить &lt;STELLAR&gt;практически безграничную энергию&lt;&gt;.&#xA;&#xA;Найдите подходящие места, воспользовавшись особым &lt;TECHNOLOGY&gt;исследовательским&lt;&gt; улучшением для &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CREATURE_FARM_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Фермерский робот, созданный для &lt;STELLAR&gt;автоматической добычи&lt;&gt; веществ из живых существ. Требуется &lt;STELLAR&gt;энергия&lt;&gt;.&#xA;&#xA;Животные, у которых можно забрать молоко, яйца и иную продукцию, подойдут к роботу и оставят у него все свои питательные материалы. Животные в процессе не пострадают.&#xA;&#xA;Собирает сельскохозяйственную продукцию у животных, которых хозяин кормил лично или при помощи &lt;TECHNOLOGY&gt;автоматической кормушки&lt;&gt;.
                                -- A robotic farming unit, designed to &lt;STELLAR&gt;automatically harvest&lt;&gt; substances from creatures. Requires &lt;STELLAR&gt;power&lt;&gt;.&#xA;&#xA;Creatures that are ready to be harvested for milk, eggs or other specialist produce will approach the Livestock Unit and deposit their yields. The creatures are unharmed by the process.&#xA;&#xA;Will harvest produce from creatures fed by hand or via an &lt;TECHNOLOGY&gt;Automated Feeder&lt;&gt;.
                                { "Russian", "Фермерский робот, созданный для &lt;STELLAR&gt;автоматического сбора&lt;&gt; субстанций из живых существ. Требует &lt;STELLAR&gt;энергию&lt;&gt;.&#xA;&#xA;Собирает сельскохозяйственную продукцию у животных, которых хозяин кормил лично или при помощи &lt;TECHNOLOGY&gt;автоматической кормушки&lt;&gt;." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_ANTIMATTER_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;Автономный бариогенетический реактор&lt;&gt; — это устройство может собирать парадоксы реальности и превращать их в полезную &lt;FUEL&gt;антиматерию&lt;&gt;. Пользователю необходимо периодически заправлять устройство для обеспечения непрерывной работы.&#xA;&#xA;Вырабатываемая антиматерия хранится в безопасной форме, готовая для использования в любых стандартных &lt;FUEL&gt;гиперпространственных силовых установках&lt;&gt;.
                                -- An &lt;TECHNOLOGY&gt;autonomous baryogenesis reactor&lt;&gt;, this device can be left to harvest reality paradoxes and convert them into usable &lt;FUEL&gt;antimatter&lt;&gt;. User must monitor fuel levels to ensure continued operation.&#xA;&#xA;The resulting antimatter is safely contained, ready for use in all standard &lt;FUEL&gt;hyperspace power units&lt;&gt;.
                                { "Russian", "&lt;TECHNOLOGY&gt;Автономный бариогенетический реактор&lt;&gt; — это устройство может собирать парадоксы реальности и превращать их в полезную &lt;FUEL&gt;антиматерию&lt;&gt;. Пользователю необходимо периодически заправлять устройство для обеспечения непрерывной работы." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_U_SOLAR_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Эффективная &lt;STELLAR&gt;генераторная установка&lt;&gt;. Комплект солнечных батарей превращает солнечный свет в электрическую энергию, необходимую для работы многих сооружений на базе.&#xA;&#xA;&lt;FUEL&gt;Не производит энергию в ночное время&lt;&gt;. Рекомендуется использовать вместе с &lt;TECHNOLOGY&gt;аккумуляторами&lt;&gt;, которые смогут накапливать энергию для расходования в темное время суток.
                                { "Russian", "Эффективный &lt;STELLAR&gt;генератор&lt;&gt;, который превращает солнечный свет в электрическую энергию, необходимую для работы многих сооружений на базе.&#xA;&#xA;&lt;FUEL&gt;Не производит энергию в ночное время&lt;&gt;. Рекомендуется использовать вместе с &lt;TECHNOLOGY&gt;аккумуляторными батареями&lt;&gt;." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_U_SOLAR_S_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Эффективная &lt;STELLAR&gt;генераторная установка&lt;&gt;. Комплект солнечных батарей превращает солнечный свет в электрическую энергию, необходимую для работы многих сооружений на базе.&#xA;&#xA;&lt;FUEL&gt;Не производит энергию в ночное время&lt;&gt;. Рекомендуется использовать вместе с &lt;TECHNOLOGY&gt;аккумуляторами&lt;&gt;, которые смогут накапливать энергию для расходования в темное время суток.
                                -- An efficient &lt;STELLAR&gt;power generator&lt;&gt;, this solar array will turn sunlight into the electrical energy required to power many base structures.&#xA;&#xA;Generates &lt;FUEL&gt;no power at night&lt;&gt;. Partner with &lt;TECHNOLOGY&gt;Batteries&lt;&gt; to store energy for the hours of darkness.
                                { "Russian", "Эффективный &lt;STELLAR&gt;генератор&lt;&gt;, который превращает солнечный свет в электрическую энергию, необходимую для работы многих сооружений на базе.&#xA;&#xA;&lt;FUEL&gt;Не производит энергию в ночное время&lt;&gt;. Рекомендуется использовать вместе с &lt;TECHNOLOGY&gt;аккумуляторными батареями&lt;&gt;." },
                            }
                        },
                        --#endregion
                    }
                },
                { -- LANGUAGE/NMS_LOC6_RUSSIAN.MBIN
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_LOC6_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        --#region описание незаконного улучшения
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UPGRADE_1_STAT_ILLEGAL_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Этот модуль улучшения нарушает почти все галактические стандарты работы и безопасности. Он изменяет следующее: &lt;STELLAR&gt;%STAT1%&lt;&gt;.
                                { "Russian", "Этот модуль улучшения нарушает почти все галактические стандарты работы и безопасности." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UPGRADE_2_STAT_ILLEGAL_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Этот модуль улучшения нарушает почти все галактические стандарты работы и безопасности. Он изменяет следующее: &lt;STELLAR&gt;%STAT1%&lt;&gt; и &lt;STELLAR&gt;%STAT2%&lt;&gt;.
                                { "Russian", "Этот модуль улучшения нарушает почти все галактические стандарты работы и безопасности." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UPGRADE_3_STAT_ILLEGAL_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Этот модуль улучшения нарушает почти все галактические стандарты работы и безопасности. Он изменяет следующее: &lt;STELLAR&gt;%STAT1%&lt;&gt;, &lt;STELLAR&gt;%STAT2%&lt;&gt; и &lt;STELLAR&gt;%STAT3%&lt;&gt;.
                                { "Russian", "Этот модуль улучшения нарушает почти все галактические стандарты работы и безопасности." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UPGRADE_4_STAT_ILLEGAL_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Этот модуль улучшения нарушает почти все галактические стандарты работы и безопасности. Он изменяет следующее: &lt;STELLAR&gt;%STAT1%&lt;&gt;, &lt;STELLAR&gt;%STAT2%&lt;&gt;, &lt;STELLAR&gt;%STAT3%&lt;&gt; и &lt;STELLAR&gt;%STAT4%&lt;&gt;.
                                { "Russian", "Этот модуль улучшения нарушает почти все галактические стандарты работы и безопасности." },
                            }
                        },
                        --#endregion

                        --#region виды животных
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CRE_ACTIVE_MOSTLY_DAY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Чаще днём" }, -- В основном дневной
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CRE_ACTIVE_MOSTLY_NIGHT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Чаще ночью" }, -- В основном ночной
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CRE_ACTIVE_ANYTIME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Всегда" }, -- Всегда активный
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CRE_ACTIVE_DAY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "День" }, -- Дневной
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CRE_ACTIVE_NIGHT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Ночь" }, -- Ночной
                            }
                        },
                        -- за счет этих сокращений никогда не будет прокрутки
                        -- по сути единственный способ "выиграть" 4 буквы...
                        -- никак не получилось найти замену для "Чаще ночью" -- это трындец
                        -- и даже аббр. "С" и "Ю" нельзя запихнуть в кавычки, т.к. это +2 символа и привет прокрутка
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CRE_HEMISPHERE_NORTH" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "С" }, -- Обитает на севере (Found in the North)
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CRE_HEMISPHERE_SOUTH" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Ю" }, -- Обитает на юге (Found in the South)
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CRE_HEMISPHERE_ALL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "∞" }, -- Обитает повсюду (Found Everywhere)
                            }
                        },
                        --#endregion

                        --#region описание строительных модулей
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_POWERLINE_HIDER_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                --Устройство позволяет скрывать провода на базах с возможностью заселения.&#xA;&#xA;Создание &lt;TECHNOLOGY&gt;блока маскировки электропроводки&lt;&gt; на работающей базе снизит заметность всей местной &lt;TECHNOLOGY&gt;электропроводки&lt;&gt;. Скрытые провода продолжат подавать электричество при его наличии.
                                --Device to enable a wireless aesthetic in habitable bases.&#xA;&#xA;Constructing the &lt;TECHNOLOGY&gt;Electrical Cloaking Unit&lt;&gt; within a powered base will reduce the visual prominence of all local &lt;TECHNOLOGY&gt;Electrical Wiring&lt;&gt;. Hidden wires will continue to supply electricity, provided they are sufficiently powered.
                                { "Russian", "Устройство позволяет скрывать провода на базах с возможностью заселения.&#xA;&#xA;Скрытые провода продолжат подавать электричество при его наличии." },
                            }
                        },
                        --#endregion
                    }
                },
                { -- LANGUAGE/NMS_LOC7_RUSSIAN.MBIN
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_LOC7_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        -- все что до 9 букв должно влезать и без прокрутки, когда кол-во слотов в обоих местах макс. 2х-значное
                        -- т.о. желательно до 8 букв
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BASESTATS_SAIL_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Солнечн.
                                -- Solar
                                { "Russian", "Солярис" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BASESTATS_SAIL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- СОЛНЕЧН.
                                -- SOLAR
                                { "Russian", "СОЛЯРИС" },
                            }
                        },
                    }
                },
                { -- LANGUAGE/NMS_LOC8_RUSSIAN.MBIN
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_LOC8_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        -- мда, при слотах больше 100 начинается прокрутка для "Трофейный" =\
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BASESTATS_ROBOT_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Извлечен. (Salvaged)
                                { "Russian", "Трофей" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BASESTATS_ROBOTSHIP_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Извлечен. (Salvaged)
                                { "Russian", "Трофей" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BASESTATS_ROBOTSHIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ИЗВЛЕЧЕН. (SALVAGED)
                                { "Russian", "ТРОФЕЙ" },
                            }
                        },
                        --
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ATLAS_LASER_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Руническая линза
                                -- Runic Lens
                                { "Russian", "Линза" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_LASER_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Взломанный лазер
                                -- Hijacked Laser
                                { "Russian", "Лазер" },
                            }
                        },
                    }
                },
                { -- LANGUAGE/NMS_UPDATE3_RUSSIAN.MBIN
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_UPDATE3_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "GROUND_SHIELD_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Личное силовое поле
                                -- Personal Forcefield
                                { "Russian", "Личный щит" },
                            }
                        },
                        -- на 1920х1080 не влезает =\
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_RELOAD_MANUAL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Загрузить точку восстановления [ %TIMESTAMP% ]
                                -- Reload Restore Point [ %TIMESTAMP% ]
                                { "Russian", "Загрузить точку возврата [ %TIMESTAMP% ]" },
                            }
                        },
                        -- для класса корабля не более 8 букв (проверено до версий нмс 5.0.5)
                        -- хех, если перевести техническое название, royal, то получится "царский" =))
                        -- что в принципе прикольно и подходит в ограничение на длину в 8 букв
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BASESTATS_ROYAL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ЭКЗОТИЧЕСКОЕ
                                -- EXOTIC
                                { "Russian", "ЭКЗОТИКА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BASESTATS_ROYAL_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Экзотич.
                                -- Exotic
                                { "Russian", "Экзотика" },
                            }
                        },
                        -- из описания предмета, речь идет про "жидкий порох", который в реальной
                        -- жизни используется в подземном строительстве и других работах
                        -- в идеале должно быть "экспериментальное жидкое топливо", но это длинно
                        -- для убогого интерфейса
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TRADE_ITEM_ENERGY_4_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ЭКСПЕРИМЕНТАЛЬНАЯ ЭНЕРГЕТИЧЕСКАЯ ЖИДКОСТЬ
                                -- EXPERIMENTAL POWER FLUID
                                { "Russian", "ЖИДКОЕ ТОПЛИВО" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TRADE_ITEM_ENERGY_4_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Экспериментальная энергетическая жидкость
                                -- Experimental Power Fluid
                                { "Russian", "Жидкое топливо" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TRADE_ITEM_COMP_1_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ОГРОМНАЯ МЕТАЛЛИЧЕСКАЯ ШЕСТЕРНЯ
                                -- ENORMOUS METAL COG
                                { "Russian", "ОГРОМНАЯ ШЕСТЕРНЯ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TRADE_ITEM_COMP_1_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Огромная металлическая шестерня
                                { "Russian", "Огромная шестерня" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TRADE_ITEM_COMP_1_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Несколько огромных шестерней.&#xA;&#xA;Крепкие качественные шестеренки. При всей своей простоте являются важнейшим компонентом &lt;SPECIAL&gt;высокотехнологичного&lt;&gt; оборудования и используются по всей галактике.
                                -- Several huge cogs.&#xA;&#xA;Sturdy, well-made metal gears. While not advanced technology themselves, they're a vital component in countless pieces of &lt;SPECIAL&gt;high-tech&lt;&gt; machinery all over the galaxy.
                                { "Russian", "Несколько огромных шестерней.&#xA;&#xA;Крепкие качественные металлические шестеренки. При всей своей простоте являются важнейшим компонентом &lt;SPECIAL&gt;высокотехнологичного&lt;&gt; оборудования и используются по всей галактике." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TRADE_ITEM_MINERALS_5_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ЭКРАНИРОВАННЫЙ ДУГОВОЙ КРИСТАЛЛ
                                -- RE-LATTICED ARC CRYSTAL
                                { "Russian", "ДУГОВОЙ КРИСТАЛЛ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TRADE_ITEM_MINERALS_5_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Экранированный дуговой кристалл
                                { "Russian", "Дуговой кристалл" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TRADE_ITEM_MINERALS_5_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Аккуратно упакованный пакет экранированных дуговых кристаллов.&#xA;&#xA;Дуговые кристаллы — это чрезвычайное редкое минеральное образование, незаменимое в &lt;SPECIAL&gt;производственной&lt;&gt; промышленности. Также из них получаются очень красивые (хоть и крайне опасные) украшения.
                                -- A neatly wrapped parcel of re-latticed arc crystals.&#xA;&#xA;Extremely rare mineral formations, arc crystals are in high demand in &lt;SPECIAL&gt;manufacturing&lt;&gt; economies, where their hardness and conductivity is vital to several industrial processes. They also make alluring (if dangerous) jewellery.
                                { "Russian", "Аккуратно упакованный пакет экранированных дуговых кристаллов.&#xA;&#xA;Дуговые кристаллы — это чрезвычайное редкое минеральное образование, незаменимое в &lt;SPECIAL&gt;производственной&lt;&gt; промышленности. Также из них получаются очень красивые, хоть и крайне опасные, украшения." },
                            }
                        },

                        --#region описание строительных модулей
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PLANT_7_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Крупный кристаллический цветок с яркими голубыми лепестками, растет только в снежных биомах. Плюхею можно культивировать. Это растение отлично приспособлено к суровым климатическим условиям и позволяет часто собирать урожай.&#xA;&#xA;Подходит для гидропонного выращивания внутри помещения. Для выращивания в поле создайте условия холодного климата.&#xA;&#xA;Примерное время выращивания: &lt;TECHNOLOGY&gt;1 час&lt;&gt;
                                { "Russian", "Крупный кристаллический цветок с яркими голубыми лепестками, растет только в снежных биомах. Плюхею можно культивировать. Это растение отлично приспособлено к суровым климатическим условиям и позволяет часто собирать урожай.&#xA;&#xA;Примерное время выращивания: &lt;TECHNOLOGY&gt;1 час&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PLANT_9_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Растет в пустынных биомах и может переносить долгие периоды засухи. Эхинокактус — съедобный суккулент среднего размера, который легко культивируется и приносит редкий, но обильный урожай.&#xA;&#xA;Подходит для гидропонного выращивания внутри помещения. Для выращивания в поле создайте условия пустынного климата.&#xA;&#xA;Примерное время выращивания: &lt;TECHNOLOGY&gt;16 часов&lt;&gt;
                                -- Native to barren biomes and capable of withstanding long periods of drought, Echinocactus is an edible succulent that responds well to cultivation, yielding a large but occasional harvest.&#xA;&#xA;Suitable for hydroponic indoor planting. Ensure Barren climate before planting outdoors.&#xA;&#xA;Approximate growing time: &lt;TECHNOLOGY&gt;16 hours&lt;&gt;
                                { "Russian", "Растет в пустынных биомах и может переносить долгие периоды засухи. Эхинокактус — съедобный суккулент среднего размера, который легко культивируется и приносит редкий, но обильный урожай.&#xA;&#xA;Примерное время выращивания: &lt;TECHNOLOGY&gt;16 часов&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "REFINER2_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Важная часть планетарного оборудования. &lt;TECHNOLOGY&gt;Очиститель&lt;&gt; позволяет перерабатывать собранные субстанции в более мощные и сложные материалы.&#xA;&#xA;Средний очиститель позволяет объединять &lt;COMMODITY&gt;две&lt;&gt; различные субстанции в новый материал, а также более эффективно перерабатывать материалы. &#xA;&#xA;Для работы средний очиститель необходимо установить на &lt;VAL_ON&gt;базе с возможностью заселения&lt;&gt;, но дополнительный источник питания не требуется.
                                { "Russian", "Средний очиститель позволяет объединять &lt;COMMODITY&gt;две&lt;&gt; различные субстанции в новый материал, а также более эффективно перерабатывать материалы.&#xA;&#xA;Очиститель необходимо установить на &lt;VAL_ON&gt;базе с возможностью заселения&lt;&gt;, но дополнительный источник питания не требуется." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "REFINER3_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Важная часть планетарного оборудования. &lt;TECHNOLOGY&gt;Очиститель&lt;&gt; позволяет перерабатывать собранные субстанции в более мощные и сложные материалы.&#xA;&#xA;Крупный очиститель позволяет объединять &lt;COMMODITY&gt;три&lt;&gt; различные субстанции в новый материал, а также более эффективно перерабатывать материалы. &#xA;&#xA;Для работы крупный очиститель необходимо установить на &lt;VAL_ON&gt;базе с возможностью заселения&lt;&gt;, но дополнительный источник питания не требуется.
                                { "Russian", "Большой очиститель позволяет объединять &lt;COMMODITY&gt;три&lt;&gt; различные субстанции в новый материал, а также более эффективно перерабатывать материалы.&#xA;&#xA;Очиститель необходимо установить на &lt;VAL_ON&gt;базе с возможностью заселения&lt;&gt;, но дополнительный источник питания не требуется." },
                            }
                        },
                        --#endregion

                        --#region Сканирование
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "MINERAL_TYPE_HEADER" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вторичный элемент
                                -- Secondary Element
                                { "Russian", "Второй элемент" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SUBSTANCE2_HEADER" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вторичный элемент
                                -- Secondary Element
                                { "Russian", "Второй элемент" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "MINERAL_CONTENT_HEADER" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Содержание металла
                                -- Metal Content
                                { "Russian", "Процент металла" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "MINERAL_FORMATION_HEADER" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Процесс формирования
                                -- Formation Process
                                { "Russian", "Генезис" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "PLANT_FOOD_HEADER" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Источник пит. вещ.
                                -- Nutrient Source
                                { "Russian", "Питание" },
                            }
                        },
                        --#endregion

                        --#region ТОПЛИВО ФРЕГАТА
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FREIGHTER_FUEL_1_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ТОПЛИВО ФРЕГАТА (50 ТОНН)
                                -- FRIGATE FUEL (50 TONNES)
                                { "Russian", "ТОПЛИВО ФРЕГАТА, 50Т" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FREIGHTER_FUEL_2_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ТОПЛИВО ФРЕГАТА (100 ТОНН)
                                -- FRIGATE FUEL (100 TONNES)
                                { "Russian", "ТОПЛИВО ФРЕГАТА, 100Т" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FREIGHTER_FUEL_3_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ТОПЛИВО ФРЕГАТА (200 ТОНН)
                                -- FRIGATE FUEL (200 TONNES)
                                { "Russian", "ТОПЛИВО ФРЕГАТА, 200Т" },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FARMER_TITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сельскохозяйственные исследования
                                -- Agricultural Research
                                { "Russian", "Сельхоз исследования" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FARMER_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Ферм. оборудование и образцы растений
                                -- Farm Equipment and Plant Samples
                                { "Russian", "Всё для фермерства" },
                            }
                        },

                        --#region UI_TRADE_ITEM_COMMOD_1_NAME
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TRADE_ITEM_COMMOD_1_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ДЕШИФРОВАННЫЕ ПОЛЬЗОВАТЕЛЬСКИЕ ДАННЫЕ
                                -- DECRYPTED USER DATA
                                { "Russian", "ПОЛЬЗОВАТЕЛЬСКИЕ ДАННЫЕ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TRADE_ITEM_COMMOD_1_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Дешифр. пользовательские данные
                                -- Decrypted User Data
                                { "Russian", "Пользовательские данные" },
                            }
                        },
                        --#endregion

                        --#region UI_TRADE_ITEM_ALLOY_2_NAME
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TRADE_ITEM_ALLOY_2_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- САМОВОССТАНАВЛИВАЮЩИЙСЯ ГЕРИДИЙ
                                -- SELF-REPAIRING HERIDIUM
                                { "Russian", "ЯЩИК ГЕРИДИЯ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TRADE_ITEM_ALLOY_2_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Самовосстанавливающийся геридий
                                -- Self-Repairing Heridium
                                { "Russian", "Ящик геридия" },
                            }
                        },
                        --#endregion

                        --#region UI_TRADE_ITEM_TECH_4_NAME
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TRADE_ITEM_TECH_4_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- БЛОК АВТОНОМНОГО ПОЗИЦИОНИРОВАНИЯ
                                -- AUTONOMOUS POSITIONING UNIT
                                { "Russian", "БЛОК ПОЗИЦИОНИРОВАНИЯ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TRADE_ITEM_TECH_4_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Блок автономного позиционирования
                                -- Autonomous Positioning Unit
                                { "Russian", "Блок позиционирования" },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TRADE_ITEM_TECH_4_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Контейнер с блоками позиционирования и необходимой для них проводкой.&#xA;&#xA;Блоки автономного позиционирования способны превратить буквально любую технику в систему с самостоятельной навигацией. Пользуются особым спросом в системах с экономикой, основанной на &lt;SPECIAL&gt;производстве энергии&lt;&gt; — работа на таком производстве сопряжена с большим риском, а благодаря этим блокам непосредственное присутствие рабочих больше не требуется.
                                -- A container of positioning units and associated wiring.&#xA;&#xA;These APS units can be used to turn virtually any technology into a self-navigating system. Highly valuable in &lt;SPECIAL&gt;power generation&lt;&gt; economies, where they're used to remove conductive organic hands from the manufacturing process.
                                { "Russian", "Контейнер с блоками автономного позиционирования и необходимыми кабелями.&#xA;&#xA;Эти блоки способны превратить буквально любую технику в систему с самостоятельной навигацией. Имеют высокий спрос в системах с экономикой, основанной на &lt;SPECIAL&gt;производстве энергии﻿,&lt;&gt; где они используются, чтобы исключить токопроводящие органические руки из процесса производства." },
                            }
                        },
                    }
                },
            }
        }
    }
}
