NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]    = "_RuFixLOC_Measurements.pak",
    ["MOD_AUTHOR"]      = "gh0stwizard",
    ["MOD_DESCRIPTION"] = "Changes measurement system to real ones.",
    ["NMS_VERSION"]     = "5.72",
    ["EXML_CREATE"]     = "false",
    ["MODIFICATIONS"]   = {
        {
            --
            -- ВНИМАНИЕ: используется thin space (U+2009); не правьте если не знаете зачем он.
            --
            -- Ссылки:
            --   https://nomanssky.fandom.com/wiki/Distance
            -- Помимо того, что рост персонажей, кроме геков, 2.1u, и это действительно выглядит как 2.1 м,
            -- в игре также зашиты величины kg и m (которые не перевести), например, в сканере при наведении
            -- на исследованное животное. Т.о. используется метрическая система.
            --
            -- Чего нет на вики и что я нашел в файлах игры, файл GCUIGLOBALS.GLOBAL.MBIN:
            --   <Property name="DistanceUnitM" value="u" />
            --   <Property name="DistanceUnitKM" value="ks" />
            --   <Property name="DistanceUnitMpS" value="u/s" />
            --
            -- Основная проблема перевода - отображение глубины (слева внизу экрана).
            -- Эта часть урезается для длинной строки, а "ед." занимает 3 символа, что есть
            -- непозволительная роскошь. См. UI_DEPTH_READOUT
            --
            ["MBIN_CHANGE_TABLE"] = {
                { -- LANGUAGE/NMS_LOC4_RUSSIAN.MBIN
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_LOC4_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        --#region формат отсчета времени
                        -- Переделал в технический вариант, т.е. сокращения без точки и убрал ":"
                        -- Сравнение:
                        --   5д.: 10ч.: 33мин.: 56сек.  -- оригинальный перевод
                        --   5 сут 10 ч 33 мин 56 с     -- вариант 1
                        --   5д : 10ч : 33м : 56с       -- вариант 2
                        --   5д.: 10ч.: 33м.: 56с.      -- вариант 3
                        --   5д:10ч:33м:56с             -- вариант 4
                        --   5 д 10 ч 33 мин 56 сек     -- вариант 5
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MISSION_DEADLINE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %DAYS%д.: %HOURS%ч.: %MINUTES%мин.: %SECONDS%сек.
                                -- %DAYS%d : %HOURS%h : %MINUTES%m : %SECONDS%s
                                { "Russian", "%DAYS% сут %HOURS% ч %MINUTES% мин %SECONDS% с" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_UI_TIME_FORMAT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;CLOCK&lt;&gt;%HOURS%ч : %MINUTES%мин. : %SECONDS%сек.
                                -- &lt;IMG&gt;CLOCK&lt;&gt; %HOURS%h : %MINUTES%m : %SECONDS%s
                                { "Russian", "&lt;IMG&gt;CLOCK&lt;&gt; %HOURS% ч %MINUTES% мин %SECONDS% с" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_UI_TIME_FORMAT_SHORT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;CLOCK&lt;&gt;%HOURS% ч.:%MINUTES% мин.:%SECONDS% сек.
                                -- &lt;IMG&gt;CLOCK&lt;&gt;%HOURS%h:%MINUTES%m:%SECONDS%s
                                { "Russian", "&lt;IMG&gt;CLOCK&lt;&gt;%HOURS% ч %MINUTES% мин %SECONDS% с" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_UI_TIME_NO_CLOCK" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %HOURS%h : %MINUTES%m : %SECONDS%s
                                -- %HOURS% ч. : %MINUTES% мин. : %SECONDS% сек.
                                { "Russian", "%HOURS% ч %MINUTES% мин %SECONDS% с" },
                            }
                        },
                        { -- добавил пробел в конец, т.к. теперь все влезает и есть еще доп. место
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_UI_UNAVAILABLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- На миссии:
                                -- On Mission:
                                { "Russian", "На миссии " },
                            }
                        },
                        --#endregion

                        --#region единицы измерения расстояния и скорости
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_UI_FUEL_BODY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %AMOUNT% т/250 св. л.
                                -- %AMOUNT% tonnes / 250 LY
                                { "Russian", "%AMOUNT% т / 250 св. лет" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_UI_EXPEDITION_LENGTH" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Пройденное расстояние: %NUM% св. л.
                                -- Distance Covered: %NUM% Light Years
                                { "Russian", "Пройденное расстояние: %NUM% св. лет" },
                            }
                        },
                        --#endregion
                    }
                },
                { -- LANGUAGE/NMS_LOC5_RUSSIAN.MBIN
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_LOC5_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        --#region единицы измерения энергии
                        -- исправления по просьбе Phantom7z1
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_POWERHUD_GENERATION" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Выработка: %NUM% кЭ
                                { "Russian", "Выработка: %NUM% кВт" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_POWERHUD_CONSUMPTION" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Расход: %NUM% кЭ
                                { "Russian", "Расход: %NUM% кВт" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_POWERHUD_STORAGE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запас: %NUM% кЭ
                                { "Russian", "Запас: %NUM% кВт" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_U_POWER_RATE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %RATE% кЭ/с
                                -- %RATE%kPs
                                { "Russian", "%RATE% кВт/с" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_U_POWER_AMOUNT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %AMOUNT% кЭ
                                -- %AMOUNT%kP
                                { "Russian", "%AMOUNT% кВт" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_POWERGRID_LABEL_SUPPLY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Источник питания %SUPPLY% кЭ &lt;IMG&gt;SLASH&lt;&gt; Используется %USAGE% кЭ
                                { "Russian", "Источник питания %SUPPLY% кВт &lt;IMG&gt;SLASH&lt;&gt; Используется %USAGE% кВт" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_POWERGRID_STORAGE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %STORED% кЭ
                                { "Russian", "%STORED% кВт" },
                            }
                        },
                        -- То, что используется указано выше "Расход мощности энергосети",
                        -- а сокращение лишнее и занимает место (мало ли кто строит тысячи солнечных панелей)
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_POWERGRID_USAGE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Используется %USED% кЭ/ Доступно %RATE% кЭ
                                -- %USED%kP Used / %RATE%kP Available
                                { "Russian", "%USED% кВт из %RATE% кВт" },
                            }
                        },
                        --#endregion

                        --#region единицы измерения расстояния и скорости
                        { -- используется thin space U+2009
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SURVEY_STRENGTH" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Близость: %VALUE%
                                -- Hotspot Proximity: %VALUE%
                                { "Russian", "Близость: %VALUE% м" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_U_RESOURCE_RATE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %RATE%/ч.
                                -- %RATE%/hr
                                { "Russian", "%RATE% ед/ч" },
                            }
                        },
                        --#endregion
                    }
                },
                { -- LANGUAGE/NMS_LOC6_RUSSIAN.MBIN
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_LOC6_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        --#region единицы измерения расстояния и скорости
                        { -- используется thin space U+2009
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MISSIONSURVEY_HUD_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- До цели: %DIST% ед.
                                -- Target: %DIST%u
                                { "Russian", "До цели %DIST% м" },
                            }
                        },
                        { -- используется thin space U+2009
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MISSIONSURVEY_DIST" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Примерное расстояние: %VALUE% ед.
                                -- Estimated Distance: %VALUE%u
                                { "Russian", "Примерное расстояние %VALUE% м" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_WALKER_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Пройдите: %CURRENT% из %AMOUNT% ед.
                                -- Explore on foot: %CURRENT%u/%AMOUNT%u
                                { "Russian", "Пройдите: %CURRENT%/%AMOUNT% м" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_WALKER_DESC_D" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вы прошли %NUM% ед.
                                -- Walked %NUM%u
                                { "Russian", "Вы прошли %NUM% м" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_WALKER_OBJ" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Исследовать пешком: %CURRENT%/%AMOUNT% ед.
                                -- Explore on foot: %CURRENT%u/%AMOUNT%u
                                { "Russian", "Пройти пешком %AMOUNT% м" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_WALKER_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Исследуйте пешком: %CURRENT%/%AMOUNT% ед.&#xA;Используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;) и &lt;TECHNOLOGY&gt;компас&lt;&gt;, чтобы находить важные объекты.&#xA;Вы можете двигаться быстрее с помощью ускорения (&lt;IMG&gt;RUN&lt;&gt;) и реактивного ранца (&lt;IMG&gt;JUMP&lt;&gt;).
                                -- Explore on foot: %CURRENT%u/%AMOUNT%u&#xA;Use the &lt;TECHNOLOGY&gt;Analysis Visor&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;) and &lt;TECHNOLOGY&gt;Compass&lt;&gt; to find points of interest&#xA;Use the jetpack (&lt;IMG&gt;JUMP&lt;&gt;) and sprint (&lt;IMG&gt;RUN&lt;&gt;) to move faster
                                { "Russian", "Исследуйте пешком: %CURRENT%/%AMOUNT% м&#xA;Находите важные объекты, используя &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;) и &lt;TECHNOLOGY&gt;компас&lt;&gt;&#xA;Ускорение (&lt;IMG&gt;RUN&lt;&gt;) и реактивный ранец (&lt;IMG&gt;JUMP&lt;&gt;) помогут двигаться быстрее" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_EXTREME_OBJ" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Пройти по экстремальным планетам: %CURRENT% из %AMOUNT% ед.
                                -- Explore extreme worlds on foot: %CURRENT%u/%AMOUNT%u
                                { "Russian", "Пройти пешком %AMOUNT% м по экстремальным планетам" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_EXTREME_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Пройдите по экстремальные планеты: %CURRENT% из %AMOUNT% ед.
                                -- Explore extreme worlds: %CURRENT%u/%AMOUNT%u
                                { "Russian", "Исследовать экстремальные миры: %CURRENT%/%AMOUNT% м" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_EXTREME_DESC_D" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вы прошли по экстремальным планетам: %NUM% ед.
                                -- Walked %NUM%u on extreme worlds
                                { "Russian", "Вы прошли по экстремальным планетам: %NUM% м" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_EXTREME_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Пройдите по &lt;STELLAR&gt;экстремальным планетам&lt;&gt;: %CURRENT% из %AMOUNT% ед.&#xA;В текущей системе экстремальные планеты не найдены.
                                -- Navigate &lt;STELLAR&gt;extreme worlds&lt;&gt; on foot: %CURRENT%u/%AMOUNT%u&#xA;No extreme planets detected in current system
                                { "Russian", "Пройдите по &lt;STELLAR&gt;экстремальным планетам&lt;&gt;: %CURRENT%u/%AMOUNT% м&#xA;В текущей системе экстремальные планеты не найдены" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_EXTREME_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Пройдите по &lt;STELLAR&gt;экстремальным планетам&lt;&gt;: %CURRENT% из %AMOUNT% ед.&#xA;В текущей системе &lt;TRADEABLE&gt;обнаружены&lt;&gt; экстремальные планеты&#xA;&lt;TECHNOLOGY&gt;Сканируйте&lt;&gt; (&lt;IMG&gt;SHIPSCAN&lt;&gt;) планеты из космоса, чтобы собрать о них сведения.
                                { "Russian", "Пройдите по &lt;STELLAR&gt;экстремальным планетам&lt;&gt;: %CURRENT%u/%AMOUNT% м&#xA;В текущей системе &lt;TRADEABLE&gt;обнаружены&lt;&gt; экстремальные планеты&#xA;&lt;TECHNOLOGY&gt;Сканируйте&lt;&gt; (&lt;IMG&gt;SHIPSCAN&lt;&gt;) планеты из космоса, чтобы собрать о них сведения" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_EXTREME_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Пройдите по &lt;STELLAR&gt;экстремальным планетам&lt;&gt;: %CURRENT% из %AMOUNT% ед.&#xA;Настоятельно рекомендуем улучшить систему защиты от вредных факторов.
                                { "Russian", "Пройдите по &lt;STELLAR&gt;экстремальным планетам&lt;&gt;: %CURRENT%u/%AMOUNT% м&#xA;Настоятельно рекомендуем улучшить систему защиты от вредных факторов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_FLYER_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Упр. кораблем: %CURRENT% ед./%AMOUNT% ед.
                                -- Pilot your ship: %CURRENT%u/%AMOUNT%u
                                { "Russian", "Пролетите: %CURRENT%/%AMOUNT% м" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_FLYER_DESC_D" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Дальность полета %NUM% ед.
                                -- Flew %NUM%u
                                { "Russian", "Вы пролетели %NUM% м" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_FLYER_OBJ" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Управляйте своим звездолетом: %CURRENT% ед./%AMOUNT% ед.
                                -- Pilot your starship: %CURRENT%u/%AMOUNT%u
                                { "Russian", "Налетать на звездолёте %AMOUNT% м" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_FLYER_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Управляйте кораблем в воздухе: %CURRENT% / %AMOUNT% ед.&#xA;Используйте &lt;TECHNOLOGY&gt;сканер&lt;&gt; (&lt;IMG&gt;SHIPSCAN&lt;&gt;) для поиска важных объектов.&#xA;Воспользуйтесь ускорением (&lt;IMG&gt;BOOST&lt;&gt;), чтобы лететь быстрее.
                                -- Fly your ship: %CURRENT%u/%AMOUNT%u&#xA;Use the &lt;TECHNOLOGY&gt;Scanner&lt;&gt; (&lt;IMG&gt;SHIPSCAN&lt;&gt;) to find points of interest&#xA;Use the boost (&lt;IMG&gt;BOOST&lt;&gt;) to fly faster
                                { "Russian", "Управляйте кораблем в воздухе: %CURRENT%u/%AMOUNT% м&#xA;Используйте &lt;TECHNOLOGY&gt;сканер&lt;&gt; (&lt;IMG&gt;SHIPSCAN&lt;&gt;) для поиска важных объектов&#xA;Используйте ускорение (&lt;IMG&gt;BOOST&lt;&gt;), чтобы лететь быстрее" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_EXO_DISTANCE_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Проедьтесь на вездеходе: %CURRENT%/%AMOUNT% ед.
                                -- Travel by Exocraft: %CURRENT%/%AMOUNT%u
                                { "Russian", "Проехать на вездеходе: %CURRENT%/%AMOUNT% м" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_EXO_DISTANCE_DESC_D" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Пройдено на вездеходе: %NUM% ед.
                                -- Travelled %NUM%u by Exocraft
                                { "Russian", "Проехано на вездеходе: %NUM% м" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_EXO_DISTANCE_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вернитесь в &lt;STELLAR&gt;вездеход&lt;&gt;, чтобы продолжить разведку.&#xA;Вызовите вездеход из &lt;TECHNOLOGY&gt;быстрого меню&lt;&gt; (&lt;IMG&gt;QUICK_MENU&lt;&gt;)&#xA;Пройденное расстояние: %CURRENT%/%AMOUNT% ед.
                                -- Return to your &lt;STELLAR&gt;Exocraft&lt;&gt; to continue exploring&#xA;Summon your Exocraft from the &lt;TECHNOLOGY&gt;Quick Menu&lt;&gt; (&lt;IMG&gt;QUICK_MENU&lt;&gt;)&#xA;Distance travelled: %CURRENT%/%AMOUNT%u
                                { "Russian", "Вернитесь в &lt;STELLAR&gt;вездеход&lt;&gt;&#xA;Вызовите вездеход из &lt;TECHNOLOGY&gt;быстрого меню&lt;&gt; (&lt;IMG&gt;QUICK_MENU&lt;&gt;)&#xA;Пройденное расстояние: %CURRENT%/%AMOUNT% м" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_EXO_DISTANCE_MSG1A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вернитесь в &lt;STELLAR&gt;вездеход&lt;&gt;, чтобы продолжить разведку.&#xA;Постройте &lt;STELLAR&gt;станцию вызова вездехода&lt;&gt;, чтобы увеличить дальность вызова.&#xA;Вызовите вездеход из &lt;TECHNOLOGY&gt;быстрого меню&lt;&gt; (&lt;IMG&gt;QUICK_MENU&lt;&gt;).&#xA;Пройденное расстояние: %CURRENT%/%AMOUNT% ед.
                                -- Return to your &lt;STELLAR&gt;Exocraft&lt;&gt; to continue exploring&#xA;Construct a &lt;STELLAR&gt;Exocraft Summoning Station&lt;&gt; to improve summon range&#xA;Summon your Exocraft from the &lt;TECHNOLOGY&gt;Quick Menu&lt;&gt; (&lt;IMG&gt;QUICK_MENU&lt;&gt;)&#xA;Distance travelled: %CURRENT%/%AMOUNT%u
                                { "Russian", "Вернитесь в &lt;STELLAR&gt;вездеход&lt;&gt;&#xA;Постройте &lt;STELLAR&gt;станцию вызова вездехода&lt;&gt;, чтобы увеличить дальность вызова&#xA;Вызовите вездеход из &lt;TECHNOLOGY&gt;быстрого меню&lt;&gt; (&lt;IMG&gt;QUICK_MENU&lt;&gt;)&#xA;Пройденное расстояние: %CURRENT%/%AMOUNT% м" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_EXO_DISTANCE_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Пройденное на вездеходе расстояние: %CURRENT%/%AMOUNT% ед.&#xA;Воспользуйтесь &lt;TECHNOLOGY&gt;сканером&lt;&gt; (&lt;IMG&gt;VEHICLESCAN&lt;&gt;), чтобы найти ближайшие важные объекты.
                                -- Distance travelled by Exocraft: %CURRENT%/%AMOUNT%u&#xA;Use the &lt;TECHNOLOGY&gt;Scanner&lt;&gt; (&lt;IMG&gt;VEHICLESCAN&lt;&gt;) to locate nearby points of interest
                                { "Russian", "Пройденное на вездеходе расстояние: %CURRENT%/%AMOUNT% м&#xA;Воспользуйтесь &lt;TECHNOLOGY&gt;сканером&lt;&gt; (&lt;IMG&gt;VEHICLESCAN&lt;&gt;), чтобы найти ближайшие важные объекты" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_EXO_DISTANCE_MSG2_ALT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Пройденное на вездеходе расстояние: %CURRENT%/%AMOUNT% ед.
                                -- Distance travelled by Exocraft: %CURRENT%/%AMOUNT%u
                                { "Russian", "Проехано на вездеходе: %CURRENT%/%AMOUNT% м" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_EXO_DISTANCE_OBJ" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Проехать на вездеходе: %CURRENT%/%AMOUNT% ед.
                                -- Travel by Exocraft: %CURRENT%/%AMOUNT%u
                                { "Russian", "Проехать на вездеходе %AMOUNT% м" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_STORM_WALKER_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Путешествуйте во время бурь: %CURRENT%/%AMOUNT% ед.
                                -- Navigate during storms: %CURRENT%u/%AMOUNT%u
                                { "Russian", "Путешествуйте во время бурь: %CURRENT%/%AMOUNT% м" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_STORM_WALKER_DESC_D" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Пройдено во время бурь: %NUM% ед.
                                -- Walked through a storm for %NUM%u
                                { "Russian", "Пройдено %NUM% м во время бури" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_STORM_WALKER_OBJ" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Пройти пешком во время бурь: %CURRENT%/%AMOUNT% ед.
                                -- Explore on foot during storms: %CURRENT%u/%AMOUNT%u
                                { "Russian", "Пройти пешком %AMOUNT% м во время бурь" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_STORM_WALKER_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сейчас все тихо, бурь нет.&#xA;Путешествуйте во время бурь: %CURRENT%/%AMOUNT% ед.&#xA;Перезарядите систему &lt;COMMODITY&gt;защиты от вредных факторов&lt;&gt; в инвентаре или через быстрое меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                { "Russian", "Сейчас все тихо, бурь нет.&#xA;Путешествуйте во время бурь: %CURRENT%/%AMOUNT% м&#xA;Перезарядите систему &lt;COMMODITY&gt;защиты от вредных факторов&lt;&gt;&#xA;в инвентаре или из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_STORM_WALKER_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Путешествуйте во время бурь: %CURRENT%/%AMOUNT% ед.&#xA;Перезарядите систему &lt;COMMODITY&gt;защиты от вредных факторов&lt;&gt; в инвентаре или через быстрое меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;).&#xA;Используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;) и &lt;TECHNOLOGY&gt;компас&lt;&gt;, чтобы находить важные объекты.
                                { "Russian", "Путешествуйте во время бурь: %CURRENT%/%AMOUNT% м&#xA;Перезарядите систему &lt;COMMODITY&gt;защиты от вредных факторов&lt;&gt;&#xA;в инвентаре или из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)&#xA;Находите важные объекты, используя &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;) и &lt;TECHNOLOGY&gt;компас&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_MOUNTAIN_TOP_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поднимитесь на вершину горы высотой не менее %AMOUNT% ед.
                                -- Summit a mountain of at least %AMOUNT%u
                                { "Russian", "Поднимитесь на гору высотой не менее %AMOUNT% м" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_MOUNTAIN_TOP_DESC_D" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Покорена вершина горы высотой более %NUM% ед.
                                -- Climbed a mountain over %NUM%u
                                { "Russian", "Покорена вершина горы высотой более %NUM% м" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_MOUNTAIN_TOP_OBJ" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Забраться на высоту %AMOUNT% ед.
                                -- Reach an elevation of %AMOUNT%u
                                { "Russian", "Забраться на высоту %AMOUNT% м" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_MOUNTAIN_TOP_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Текущая высота: %CURRENT%/%AMOUNT% ед.&#xA;Используйте реактивный ранец (&lt;IMG&gt;JUMP&lt;&gt;), чтобы взбираться по отвесным поверхностям.
                                { "Russian", "Текущая высота: %CURRENT%/%AMOUNT% м&#xA;Взбирайтесь по отвесным поверхностям,&#xA;используя реактивный ранец (&lt;IMG&gt;JUMP&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_MOUNTAIN_TOP_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Достигните &lt;STELLAR&gt;вершины&lt;&gt;.&#xA;Достигнута минимальная высота (%AMOUNT% ед.)
                                -- Reach the &lt;STELLAR&gt;summit&lt;&gt;&#xA;Minimum elevation (%AMOUNT%u) attained
                                { "Russian", "Достигните &lt;STELLAR&gt;вершины&lt;&gt;&#xA;Минимальная достигнутая высота: %AMOUNT% м" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TITLE_OWNED_JM_WALK1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вы прошли %NUM% ед.
                                -- Walked %NUM%u
                                { "Russian", "Вы прошли %NUM% м" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TITLE_OWNED_JM_WALK2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вы прошли %NUM% ед.
                                -- Walked %NUM%u
                                { "Russian", "Вы прошли %NUM% м" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TITLE_OWNED_JM_WALK3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вы прошли %NUM% ед.
                                -- Walked %NUM%u
                                { "Russian", "Вы прошли %NUM% м" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_MOLEMAN_OBJ" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Прокопать туннель под землей: %CURRENT%/%AMOUNT% куб. ед.
                                -- Tunnel underground: %CURRENT%/%AMOUNT%u³
                                { "Russian", "Прокопать туннель под землей: %CURRENT%/%AMOUNT% м³" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_MOLEMAN_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Прокопать туннель под землей: %CURRENT%/%AMOUNT% куб. ед.
                                -- Tunnel underground: %CURRENT%/%AMOUNT%u³
                                { "Russian", "Прокопать туннель: %CURRENT%/%AMOUNT% м³" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_MOLEMAN_DESC_D" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Прокопано под землей %NUM% куб. ед.
                                -- Tunnelled %NUM%u³
                                { "Russian", "Прокопано под землей %NUM% м³" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_MOLEMAN_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Создайте систему туннелей: выкопано %CURRENT%/%AMOUNT% куб. ед.&#xA;Туннели необходимо копать под землей.&#xA;Найдите пещеры или воспользуйтесь &lt;TECHNOLOGY&gt;ландшафтным манипулятором&lt;&gt;.
                                -- Create a tunnel network: %CURRENT%/%AMOUNT%u³ excavated&#xA;Tunnels must be dug while underground&#xA;Find natural caves or use the &lt;TECHNOLOGY&gt;Terrain Manipulator&lt;&gt;
                                { "Russian", "Создайте систему туннелей: %CURRENT%/%AMOUNT% м³ выкопано&#xA;Туннели необходимо копать под землей&#xA;Найдите пещеры или используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_MOLEMAN_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Создайте систему туннелей: выкопано %CURRENT%/%AMOUNT% куб. ед.&#xA;Выберите &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt; с помощью кнопки &lt;IMG&gt;CYCLEWEAPON&lt;&gt;.
                                { "Russian", "Создайте систему туннелей: %CURRENT%/%AMOUNT% м³ выкопано&#xA;Выберите &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt;, нажав &lt;IMG&gt;CYCLEWEAPON&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_MOLEMAN_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Создайте систему туннелей: выкопано %CURRENT%/%AMOUNT% куб. ед.&#xA;Создайте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt; для мультитула.
                                { "Russian", "Создайте систему туннелей: %CURRENT%/%AMOUNT% м³ выкопано&#xA;Создайте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt; для мультитула" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_MOLEMAN_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Создайте систему туннелей: выкопано %CURRENT%/%AMOUNT% куб. ед.
                                { "Russian", "Создайте систему туннелей: %CURRENT%/%AMOUNT% м³ выкопано" },
                            }
                        },
                        --#endregion
                    }
                },
                { -- LANGUAGE/NMS_LOC7_RUSSIAN.MBIN
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_LOC7_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        --#region единицы измерения расстояния и скорости
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_DIST_WALK_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Достигните этапа &lt;STELLAR&gt;'%MILESTONE%'&lt;&gt; за пешее исследование.&#xA;Реактивный ранец экзокостюма (&lt;IMG&gt;JUMP&lt;&gt;) и бег (&lt;IMG&gt;RUN&lt;&gt;) позволяют передвигаться быстрее.&#xA;Приобрести улучшения системы передвижения можно у &lt;TECHNOLOGY&gt;торговца технологиями&lt;&gt; на борту космической станции.&#xA;Пройдено: %CURRENT% / %AMOUNT% юн.
                                -- Reach milestone &lt;STELLAR&gt;'%MILESTONE%'&lt;&gt; for On-foot Exploration&#xA;The Exosuit's jetpack (&lt;IMG&gt;JUMP&lt;&gt;) and sprint (&lt;IMG&gt;RUN&lt;&gt;) allow for faster movement&#xA;Purchase movement upgrades from a space station &lt;TECHNOLOGY&gt;technology merchant&lt;&gt;&#xA;Distance walked: %CURRENT%u / %AMOUNT%u
                                { "Russian", "Достигните этапа &lt;STELLAR&gt;'%MILESTONE%'&lt;&gt; за пешее исследование&#xA;Реактивный ранец экзокостюма (&lt;IMG&gt;JUMP&lt;&gt;) и бег (&lt;IMG&gt;RUN&lt;&gt;) позволяют передвигаться быстрее&#xA;Приобрести улучшения системы передвижения можно у &lt;TECHNOLOGY&gt;торговца технологиями&lt;&gt; на борту космической станции&#xA;Пройдено: %CURRENT%/%AMOUNT% м" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_DIVE_DEEP_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Спуститесь в глубины океана: %CURRENT%/%AMOUNT% ед.
                                -- Reach ocean depths: %CURRENT%/%AMOUNT%u
                                { "Russian", "Спуститься в глубины океана: %CURRENT%/%AMOUNT% м" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_DIVE_DEEP_DESC_D" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Исследовано %AMOUNT% ед. ниже уровня моря
                                -- Explored %AMOUNT%u below sea level
                                { "Russian", "Исследовано %AMOUNT% м ниже уровня моря" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_DIVE_DEEP_MSG0" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Спуститесь в глубины океана: %CURRENT%/%AMOUNT% ед.&#xA;В данной системе вода не обнаружена.&#xA;Найдите планеты с &lt;TECHNOLOGY&gt;водой&lt;&gt; на галактической карте.
                                { "Russian", "Спуститесь в глубины океана: %CURRENT%/%AMOUNT% м&#xA;В данной системе вода не обнаружена&#xA;Найдите планеты с &lt;TECHNOLOGY&gt;водой&lt;&gt; на галактической карте" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_DIVE_DEEP_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Спуститесь в глубины океана: %CURRENT%/%AMOUNT% ед.&#xA;На данной планете вода не обнаружена.
                                { "Russian", "Спуститесь в глубины океана: %CURRENT%/%AMOUNT% м&#xA;На данной планете вода не обнаружена" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_DIVE_DEEP_MSG1A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Спуститесь в глубины океана: %CURRENT%/%AMOUNT% ед.&#xA;Приземлитесь на планету с &lt;TECHNOLOGY&gt;водой&lt;&gt;.
                                { "Russian", "Спуститесь в глубины океана: %CURRENT%/%AMOUNT% м&#xA;Приземлитесь на планету с &lt;TECHNOLOGY&gt;водой&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_DIVE_DEEP_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Спуститесь в глубины океана: %CURRENT%/%AMOUNT% ед.
                                -- Reach ocean depths: %CURRENT%/%AMOUNT%u
                                { "Russian", "Спуститесь в глубины океана: %CURRENT%/%AMOUNT% м" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_WORM6_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Переживите экстремально жаркие бури: %CURRENT%u/%AMOUNT%u
                                -- Endure extreme heat storms: %CURRENT%u/%AMOUNT%u
                                { "Russian", "Переживите экстремально жаркие бури: %CURRENT%/%AMOUNT% м" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_WORM6_DESC_D" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вы пережили экстремальную жару в течение %NUM%u
                                -- Endured extreme heat for %NUM%u
                                { "Russian", "Вы прошли в экстремальной жаре %NUM% м" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_HOT_WALK_OBJ" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Пережить экстремальную жару вне транспорта: %CURRENT%u/%AMOUNT%u
                                -- Survive while walking through extreme heat: %CURRENT%u/%AMOUNT%u
                                { "Russian", "Пройти пешком в экстремальной жаре %AMOUNT% м" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_HOT_WALK_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Пройдите через &lt;FUEL&gt;экстремально жаркую бурю&lt;&gt;: %CURRENT%u/%AMOUNT%u&#xA;В этой системе не обнаружены планеты с экстремальной жарой.
                                -- Walk through an &lt;FUEL&gt;extreme heat storm&lt;&gt;: %CURRENT%u/%AMOUNT%u&#xA;No extreme heat planets detected in current system
                                { "Russian", "Пройдите через &lt;FUEL&gt;экстремально жаркую бурю&lt;&gt;: %CURRENT%/%AMOUNT% м&#xA;В этой системе не обнаружены планеты с экстремальной жарой" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_HOT_WALK_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Пройдите через &lt;FUEL&gt;экстремально жаркую бурю&lt;&gt;: %CURRENT%u/%AMOUNT%u&#xA;В этой системе &lt;TRADEABLE&gt;обнаружена&lt;&gt; планета с экстремальной жарой.&#xA;&lt;TECHNOLOGY&gt;Сканируйте&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;) планеты из космоса, чтобы собрать о них сведения.
                                { "Russian", "Пройдите через &lt;FUEL&gt;экстремально жаркую бурю&lt;&gt;: %CURRENT%/%AMOUNT% м&#xA;В этой системе &lt;TRADEABLE&gt;обнаружена&lt;&gt; экстремально жаркая планета&#xA;&lt;TECHNOLOGY&gt;Сканируйте&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;) планеты из космоса, чтобы собрать о них сведения" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_HOT_WALK_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Пройдите через &lt;FUEL&gt;экстремально жаркую бурю&lt;&gt;: %CURRENT%u/%AMOUNT%u&#xA;&lt;STELLAR&gt;Найдены&lt;&gt; условия для экстремально жаркой бури!&#xA;Дождитесь начала бури...
                                -- Walk through an &lt;FUEL&gt;extreme heat storm&lt;&gt;: %CURRENT%u/%AMOUNT%u&#xA;Extreme heat storm conditions &lt;STELLAR&gt;detected!&lt;&gt;&#xA;Await the onset of the storm...
                                { "Russian", "Пройдите через &lt;FUEL&gt;экстремально жаркую бурю&lt;&gt;: %CURRENT%/%AMOUNT% м&#xA;&lt;STELLAR&gt;Обнаружены&lt;&gt; условия для экстремально жаркой бури!&#xA;Дождитесь начала бури..." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_HOT_WALK_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Пройдите через &lt;FUEL&gt;экстремально жаркую бурю&lt;&gt;: %CURRENT%u/%AMOUNT%u&#xA;Здесь &lt;TRADEABLE&gt;бушует&lt;&gt; экстремально жаркая буря!&#xA;&lt;STELLAR&gt;Настоятельно рекомендуется&lt;&gt; улучшить &lt;TECHNOLOGY&gt;защиту от вредных факторов&lt;&gt;.
                                { "Russian", "Пройдите через &lt;FUEL&gt;экстремально жаркую бурю&lt;&gt;: %CURRENT%/%AMOUNT% м&#xA;Здесь &lt;TRADEABLE&gt;бушует&lt;&gt; экстремально жаркая буря!&#xA;&lt;STELLAR&gt;Настоятельно рекомендуется&lt;&gt; улучшить &lt;TECHNOLOGY&gt;защиту от вредных факторов&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_PET_DISTANCE_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Проехать на питомце: %CURRENT%/%AMOUNT% ед.
                                -- Ride a companion: %CURRENT%u/%AMOUNT%u
                                { "Russian", "Проехать на питомце: %CURRENT%/%AMOUNT% м" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_PET_DISTANCE_DESC_D" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вы проехали %NUM% ед.
                                -- Rode %NUM%u
                                { "Russian", "Вы проехали %NUM% м" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_PET_DISTANCE_OBJ" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Проехать на питомце: %CURRENT%/%AMOUNT% ед.
                                -- Ride a creature companion: %CURRENT%u/%AMOUNT%u
                                { "Russian", "Проехать на питомце %AMOUNT% м" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_PET_DISTANCE_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Оседлайте питомца и найдите свой корабль: %CURRENT%/%AMOUNT% ед.&#xA;Выбирайте направление с помощью &lt;IMG&gt;PLAYER_LR&lt;&gt;&#xA;Чтобы ехать быстрее, нажмите &lt;IMG&gt;RUN&lt;&gt;&#xA;Чтобы слезть с питомца, нажмите &lt;IMG&gt;JUMP&lt;&gt;
                                -- Ride a creature companion to locate your ship: %CURRENT%u/%AMOUNT%u&#xA;Suggest directions with &lt;IMG&gt;PLAYER_LR&lt;&gt;&#xA;Move faster with &lt;IMG&gt;RUN&lt;&gt;&#xA;Dismount with &lt;IMG&gt;JUMP&lt;&gt;
                                { "Russian", "Доедьте на питомце до своего корабля: %CURRENT%/%AMOUNT% м&#xA;Выбирайте направление с помощью &lt;IMG&gt;PLAYER_LR&lt;&gt;&#xA;Чтобы ехать быстрее, нажмите &lt;IMG&gt;RUN&lt;&gt;&#xA;Чтобы слезть с питомца, нажмите &lt;IMG&gt;JUMP&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_PET_DISTANCE_MSG_ALT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Оседлайте питомца: %CURRENT%/%AMOUNT% ед.&#xA;Выбирайте направление с помощью &lt;IMG&gt;PLAYER_LR&lt;&gt;&#xA;Чтобы ехать быстрее, нажмите &lt;IMG&gt;RUN&lt;&gt;&#xA;Чтобы слезть с питомца, нажмите &lt;IMG&gt;JUMP&lt;&gt;
                                -- Ride a creature companion: %CURRENT%u/%AMOUNT%u&#xA;Suggest directions with &lt;IMG&gt;PLAYER_LR&lt;&gt;&#xA;Move faster with &lt;IMG&gt;RUN&lt;&gt;&#xA;Dismount with &lt;IMG&gt;JUMP&lt;&gt;
                                { "Russian", "Проедьтесь на питомце: %CURRENT%/%AMOUNT% м&#xA;Выбирайте направление с помощью &lt;IMG&gt;PLAYER_LR&lt;&gt;&#xA;Чтобы ехать быстрее, нажмите &lt;IMG&gt;RUN&lt;&gt;&#xA;Чтобы слезть с питомца, нажмите &lt;IMG&gt;JUMP&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_PET_DISTANCE_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Оседлайте питомца и найдите свой корабль: %CURRENT%/%AMOUNT% ед.&#xA;Призовите питомца с помощью &lt;TECHNOLOGY&gt;быстрого меню&lt;&gt; (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                { "Russian", "Доедьте на питомце до своего корабля: %CURRENT%/%AMOUNT% м&#xA;Призовите питомца из &lt;TECHNOLOGY&gt;быстрого меню&lt;&gt; (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_PET_DISTANCE_MSG2_ALT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Оседлайте питомца: %CURRENT%/%AMOUNT% ед.&#xA;Призовите питомца с помощью &lt;TECHNOLOGY&gt;быстрого меню&lt;&gt; (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                { "Russian", "Проедьтесь на питомце: %CURRENT%/%AMOUNT% м&#xA;Призовите питомца из &lt;TECHNOLOGY&gt;быстрого меню&lt;&gt; (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_PET_DISTANCE_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Оседлайте питомца: %CURRENT%/%AMOUNT% ед.&#xA;Чтобы приручить животных, воспользуйтесь &lt;TRADEABLE&gt;питательными гранулами&lt;&gt;&#xA;Используйте анализирующий визор (&lt;IMG&gt;AIM&lt;&gt;), чтобы находить животных на &lt;TRADEABLE&gt;обитаемых планетах&lt;&gt;
                                { "Russian", "Проедьтесь на питомце: %CURRENT%/%AMOUNT% м&#xA;Чтобы приручить животных, воспользуйтесь &lt;TRADEABLE&gt;питательными гранулами&lt;&gt;&#xA;Используйте анализирующий визор (&lt;IMG&gt;AIM&lt;&gt;), чтобы находить животных на &lt;TRADEABLE&gt;обитаемых планетах&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_PET_DIST_FLY_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Пролетите на питомце: %CURRENT%/%AMOUNT% ед.
                                -- Fly on a companion: %CURRENT%u/%AMOUNT%u
                                { "Russian", "Пролетите на питомце: %CURRENT%/%AMOUNT% м" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_PET_DIST_FLY_DESC_D" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вы пролетели на питомце %NUM% ед.
                                -- Flew %NUM%u on a companion
                                { "Russian", "Вы пролетели на питомце %NUM% м" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_PET_DIST_FLY_OBJ" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Пролететь на питомце: %CURRENT%/%AMOUNT% ед.
                                -- Fly on a companion: %CURRENT%u/%AMOUNT%u
                                { "Russian", "Пролететь на питомце %AMOUNT% м" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_PET_DIST_FLY_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Пролетите на летающем питомце: %CURRENT%/%AMOUNT% ед.&#xA;Выбирайте направление с помощью&lt;IMG&gt;PLAYER_LR&lt;&gt;&#xA;Чтобы слезть с питомца, нажмите &lt;IMG&gt;JUMP&lt;&gt;
                                -- Ride a flying creature companion: %CURRENT%u/%AMOUNT%u&#xA;Suggest directions with &lt;IMG&gt;PLAYER_LR&lt;&gt;&#xA;Dismount with &lt;IMG&gt;JUMP&lt;&gt;
                                { "Russian", "Пролетите на летающем питомце: %CURRENT%/%AMOUNT% м&#xA;Выбирайте направление с помощью&lt;IMG&gt;PLAYER_LR&lt;&gt;&#xA;Чтобы слезть с питомца, нажмите &lt;IMG&gt;JUMP&lt;&gt;" },
                            }
                        },
                        --#endregion
                    }
                },
                { -- LANGUAGE/NMS_LOC8_RUSSIAN.MBIN
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_LOC8_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        --#region единицы измерения расстояния и скорости
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WONDER_HIGHEST" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Наибольшая отмеченная высота:&lt;&gt; %NUM% ед.
                                -- &lt;STELLAR&gt;Highest Mapped Altitude:&lt;&gt; %NUM%u
                                { "Russian", "&lt;STELLAR&gt;Наибольшая отмеченная высота:&lt;&gt; %NUM% м" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WONDER_LOWEST" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Наибольшая отмеченная глубина:&lt;&gt; %NUM% ед.
                                -- &lt;STELLAR&gt;Lowest Mapped Depths:&lt;&gt; %NUM%u below
                                { "Russian", "&lt;STELLAR&gt;Наибольшая отмеченная глубина:&lt;&gt; %NUM% м" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WONDER_RADIUS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Радиус:&lt;&gt; %NUM%кс
                                -- &lt;STELLAR&gt;Radius:&lt;&gt; %NUM%ks
                                { "Russian", "&lt;STELLAR&gt;Радиус:&lt;&gt; %NUM% км" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WONDER_HEIGHT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Высота:&lt;&gt; %NUM%м
                                -- &lt;STELLAR&gt;Height:&lt;&gt; %NUM%m
                                { "Russian", "&lt;STELLAR&gt;Высота:&lt;&gt; %NUM% м" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_JETPACKER_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Пролетите на реактивном ранце:%CURRENT%/%AMOUNT% ед.
                                -- Travel by jetpack : %CURRENT%u/%AMOUNT%u
                                { "Russian", "Пролетите на реактивном ранце: %CURRENT%/%AMOUNT% м" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_JETPACKER_DESC_D" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вы пролетели на реактивном ранце %NUM% ед.
                                -- Jetpacked %NUM%u
                                { "Russian", "Вы пролетели на реактивном ранце %NUM% м" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_JETPACKER_OBJ" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Пролетите на реактивном ранце:%CURRENT%/%AMOUNT% ед.
                                -- Travel by jetpack : %CURRENT%u/%AMOUNT%u
                                { "Russian", "Пролетите на реактивном ранце %AMOUNT% м" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_JETPACKER_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Пролетите на реактивном ранце: %CURRENT%/%AMOUNT% ед.&#xA;Активируйте &lt;TECHNOLOGY&gt;реактивный ранец экзокостюма&lt;&gt; с помощью &lt;IMG&gt;JUMP&lt;&gt;&#xA;Используйте его, чтобы уклоняться от огня противника во время боя.
                                -- Jetpack across planets: %CURRENT%u/%AMOUNT%u&#xA;Activate the &lt;TECHNOLOGY&gt;Exosuit Jetpack&lt;&gt; with &lt;IMG&gt;JUMP&lt;&gt;&#xA;Use the jetpack to evade hostile fire while in combat
                                { "Russian", "Пролетите на реактивном ранце: %CURRENT%/%AMOUNT% м&#xA;Активируйте &lt;TECHNOLOGY&gt;реактивный ранец экзокостюма&lt;&gt; с помощью &lt;IMG&gt;JUMP&lt;&gt;&#xA;Используйте его, чтобы уклоняться от огня противника во время боя" },
                            }
                        },
                        --#endregion
                    }
                },
                { -- LANGUAGE/NMS_UPDATE3_RUSSIAN.MBIN
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_UPDATE3_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        --#region единицы измерения расстояния и скорости
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_UNIT_U" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- эл.
                                -- u
                                { "Russian", " м" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_UNIT_KS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ks
                                -- ks
                                { "Russian", " км" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_UNIT_US" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- u/s
                                -- u/s
                                { "Russian", "м/с" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_GALAXYMAP_PATH_DISTANCE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %DIST% св. л.
                                -- %DIST% LY
                                { "Russian", "%DIST% св. лет" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "DISTANCE_FROM_CENTRE_LY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %DIST% св. л.
                                -- %DIST% LY
                                { "Russian", "%DIST% св. лет" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_GALAXYMAP_PLANETNAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %PLANET% (%DIST% св. л.)
                                -- %PLANET% (%DIST% LY)
                                { "Russian", "%PLANET% (%DIST% св. лет)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "GLXY_ACTION_WARP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Варп (%DIST% св. л.)
                                -- Warp (%DIST% LY)
                                { "Russian", "Варп (%DIST% св. лет)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "STATS_UNIT_LIGHTYEAR_DISTANCE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %DISTANCE% св. л.
                                -- %DISTANCE% ly
                                { "Russian", "%DISTANCE% св. лет" },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIRATE_HAIL_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Передайте вражеской силе подпространственное послание.&#xA;Чтобы использовать передатчик, нажмите &lt;IMG&gt;QUICK_MENU&lt;&gt;.&#xA;Осталось времени: %TIME% сек.
                                -- Send sub-space signal to hostile force&#xA;Use Communicator by pressing &lt;IMG&gt;QUICK_MENU&lt;&gt;&#xA;Time remaining: %TIME%s
                                { "Russian", "Свяжитесь с пиратами, чтобы &lt;COMMODITY&gt;договориться&lt;&gt;&#xA;Используйте коммуникатор, нажав &lt;IMG&gt;QUICK_MENU&lt;&gt;&#xA;Осталось времени: %TIME% с" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_POLICE_ASSIST_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Власти системы отреагировали на запрос помощи. &#xA;Осталось времени: %TIME% сек.
                                -- System Authorities responding to assistance request &#xA;Time remaining: %TIME%s
                                { "Russian", "Власти системы отреагировали на запрос помощи&#xA;Осталось времени: %TIME% с" },
                            }
                        },
                    }
                },
                { -- LANGUAGE/NMS_LOC9_RUSSIAN.MBIN
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_LOC9_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        --#region единицы измерения расстояния и скорости
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_UNIT_KUH" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- к-ед/ч
                                -- ku/h
                                { "Russian", "км/ч" },
                            }
                        },
                        --#endregion

                        -- сейчас эта строчка пропадает, если закинуть удочку и первым счетчиком станет Глубь
                        -- в англ версии тоже -> косяк разрабов
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SPOOK_READOUT" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- %NUM% эксБ
                        --         -- %NUM% exB
                        --         { "Russian", "%NUM% ‡" },
                        --     }
                        -- },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_FLOATER_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Плавайте над &lt;TECHNOLOGY&gt;глубинами океана&lt;&gt;: &lt;STELLAR&gt;%CURRENT%/%AMOUNT% сек.&lt;&gt;&#xA;Глубина воды в данной точке: %CURRENT_DEPTH%/%AMOUNT_DEPTH% юн.
                                -- Float on the surface of the &lt;TECHNOLOGY&gt;deep ocean&lt;&gt;: &lt;STELLAR&gt;%CURRENT%/%AMOUNT%s&lt;&gt;&#xA;Water depth at current location: %CURRENT_DEPTH%/%AMOUNT_DEPTH%u
                                { "Russian", "Плывите над &lt;TECHNOLOGY&gt;глубинами океана&lt;&gt;: &lt;STELLAR&gt;%CURRENT%/%AMOUNT% с&lt;&gt;&#xA;Глубина воды в данной точке: %CURRENT_DEPTH%/%AMOUNT_DEPTH% м" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_FLOATER_MSG2A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Плавайте над &lt;TECHNOLOGY&gt;глубинами океана&lt;&gt;: &lt;STELLAR&gt;%CURRENT%/%AMOUNT% сек.&lt;&gt;&#xA;Глубина воды в данной точке: &lt;TECHNOLOGY&gt;%CURRENT_DEPTH% юн.&lt;&gt;&#xA;Какие существа плавают под вами?
                                -- Float on the surface of the &lt;TECHNOLOGY&gt;deep ocean&lt;&gt;: &lt;STELLAR&gt;%CURRENT%/%AMOUNT%s&lt;&gt;&#xA;Water depth at current location: &lt;TECHNOLOGY&gt;%CURRENT_DEPTH%u&lt;&gt;&#xA;What things swim beneath your feet?
                                { "Russian", "Плывите над &lt;TECHNOLOGY&gt;глубинами океана&lt;&gt;: &lt;STELLAR&gt;%CURRENT%/%AMOUNT% с&lt;&gt;&#xA;Глубина воды в данной точке: &lt;TECHNOLOGY&gt;%CURRENT_DEPTH% м&lt;&gt;&#xA;Какие существа плавают под вами?" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_FLOATER_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вода зовет...&#xA;&#xA;Найдите водоем &lt;STELLAR&gt;глубиной не менее 50 юн.&lt;&gt; и поплавайте на поверхности, размышляя о том, какие существа обитают под вами.&#xA;&#xA;Океаны на поверхности планеты видны их космоса, а &lt;TECHNOLOGY&gt;двигатели посадки на воду&lt;&gt; помогут добраться до нужной части водоема.
                                -- The water calls to you...&#xA;&#xA;Find water at least &lt;STELLAR&gt;50u deep&lt;&gt; and float upon the surface, contemplating what swims in the depths below.&#xA;&#xA;Oceans are visible on a planet's surface from space, and &lt;TECHNOLOGY&gt;Aquatic Landing Jets&lt;&gt; will assist a seaborne excursion.
                                { "Russian", "Вода зовет...&#xA;&#xA;Найдите водоем &lt;STELLAR&gt;глубиной не менее 50 м&lt;&gt; и поплавайте на поверхности, размышляя о том, какие существа обитают под вами.&#xA;&#xA;Океаны на поверхности планеты видны их космоса, а &lt;TECHNOLOGY&gt;движители приводнения&lt;&gt; помогут добраться до нужной части водоема." },
                            }
                        },

                        --#region ПОГРУЖЕНИЕ НИЖЕ
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NOTIFY_HAZ_DEPTH_OXYGEN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПОГРУЖЕНИЕ НИЖЕ %DEPTH% ЕД. — СИСТЕМА ЖИЗНЕОБЕСПЕЧЕНИЯ ПЕРЕГРУЖЕНА
                                { "Russian", "ПОГРУЖЕНИЕ НИЖЕ %DEPTH% м&#xA;СИСТЕМА ЖИЗНЕОБЕСПЕЧЕНИЯ ПЕРЕГРУЖЕНА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NOTIFY_HAZ_DEPTH_HEAT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПОГРУЖЕНИЕ НИЖЕ %DEPTH% ЕД. — ОБНАРУЖЕНА ОПАСНАЯ ТЕМПЕРАТУРА ВОДЫ %LEVEL% °C
                                { "Russian", "ПОГРУЖЕНИЕ НИЖЕ %DEPTH% м&#xA;ОБНАРУЖЕНА ОПАСНАЯ ТЕМПЕРАТУРА ВОДЫ %LEVEL% °C" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NOTIFY_HAZ_DEPTH_COLD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПОГРУЖЕНИЕ НИЖЕ %DEPTH% ЕД. — ОБНАРУЖЕНА ОПАСНАЯ ТЕМПЕРАТУРА ВОДЫ %LEVEL% °C
                                { "Russian", "ПОГРУЖЕНИЕ НИЖЕ %DEPTH% м&#xA;ОБНАРУЖЕНА ОПАСНАЯ ТЕМПЕРАТУРА ВОДЫ %LEVEL% °C" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NOTIFY_HAZ_DEPTH_TOXIC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПОГРУЖЕНИЕ НИЖЕ %DEPTH% ЕД. — ОБНАРУЖЕНА ЭКСТРЕМАЛЬНАЯ ТОКСИЧНОСТЬ ВОДЫ %LEVEL%
                                { "Russian", "ПОГРУЖЕНИЕ НИЖЕ %DEPTH% м&#xA;ОБНАРУЖЕНА ЭКСТРЕМАЛЬНАЯ ТОКСИЧНОСТЬ ВОДЫ %LEVEL%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NOTIFY_HAZ_DEPTH_RADIATION" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПОГРУЖЕНИЕ НИЖЕ %DEPTH% ЕД. — ОБНАРУЖЕНА ЭКСТРЕМАЛЬНАЯ РАДИОАКТИВНОСТЬ ВОДЫ %LEVEL% Зв
                                { "Russian", "ПОГРУЖЕНИЕ НИЖЕ %DEPTH% м&#xA;ОБНАРУЖЕНА ЭКСТРЕМАЛЬНАЯ РАДИОАКТИВНОСТЬ ВОДЫ %LEVEL% Зв" },
                            }
                        },
                        --#endregion

                        --#region UI_TIME_
                        { -- %HOURS% ч %MINUTES% мин %SECONDS% с
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TIME_FULL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %DAYS%д.:%HOURS%ч.:%MINUTES%мин.:%SECONDS%сек.
                                { "Russian", "%DAYS% сут %HOURS% ч %MINUTES% мин %SECONDS% с" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TIME_HOURS_MINS_SEC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %HOURS% ч.:%MINUTES% мин.:%SECONDS% сек.
                                { "Russian", "%HOURS% ч %MINUTES% мин %SECONDS% с" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TIME_DAYS_HOURS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %DAYS% д. : %HOURS% ч.
                                { "Russian", "%DAYS% сут %HOURS% ч" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TIME_HOURS_MINS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %HOURS% ч.:%MINUTES% мин.
                                { "Russian", "%HOURS% ч %MINUTES% мин" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TIME_DAYS_HOURS_MIN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %DAYS%д.:%HOURS%ч.:%MINUTES%мин.
                                { "Russian", "%DAYS% сут %HOURS% ч %MINUTES% мин" },
                            }
                        },
                        --#endregion

                    }
                },
            }
        }
    }
}
