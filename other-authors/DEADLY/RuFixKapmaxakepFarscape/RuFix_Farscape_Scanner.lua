NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]    = "_RuFix_Farscape_Scanner.pak",
    ["MOD_AUTHOR"]      = "gh0stwizard",
    ["MOD_DESCRIPTION"] = "Alters Scanner UI",
    ["NMS_VERSION"]     = "5.72",
    ["EXML_CREATE"]     = "false",
    ["MODIFICATIONS"]   = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                { -- LANGUAGE/NMS_LOC4_RUSSIAN.MBIN
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_LOC4_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        --#region СКАНЕР
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BINOCS_TIME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Текущее время: %TIME%&lt;IMG&gt;CLOCK&lt;&gt;
                                -- Current Time: %TIME% &lt;IMG&gt;CLOCK&lt;&gt;
                                { "Russian", "Время: %TIME%&lt;IMG&gt;CLOCK&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BINOCS_LOCATION" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Текущее местоположение: %LATLONG%
                                -- Current Location: %LATLONG%
                                { "Russian", "Координаты: %LATLONG%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WATERMISS1_SURVEY_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружено место передачи
                                -- Broadcast site located
                                { "Russian", "НАЙДЕНО МЕСТО ТРАНСЛЯЦИИ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WATERMISS2_SURVEY_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружен разбившийся звездолет
                                -- Crashed starship located
                                { "Russian", "НАЙДЕН РАЗБИВШИЙСЯ ЗВЕЗДОЛЁТ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TUT_BASEBUILD_SURVEY_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружен источник сигнала
                                -- Signal Source Located
                                { "Russian", "НАЙДЕН ИСТОЧНИК СИГНАЛА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BASEFLAG_LORE_SURVEY_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружен поврежденный архив
                                -- Corrupt Archive Located
                                { "Russian", "НАЙДЕН ПОВРЕЖДЕННЫЙ АРХИВ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DIGGING_SURVEY_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Археологическая подсказка обнаружена
                                -- Archaeological Clue Located
                                { "Russian", "ПОДСКАЗКА НАЙДЕНА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CUSTOM_MARKER_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Нажмите &lt;IMG&gt;CUSTOMMARK&lt;&gt;, чтобы разместить свою метку
                                -- Press &lt;IMG&gt;CUSTOMMARK&lt;&gt; to place Custom Marker
                                { "Russian", "&lt;IMG&gt;CUSTOMMARK&lt;&gt; Разместить маяк" },
                            }
                        },
                        --#endregion
                    }
                },
                { -- LANGUAGE/NMS_LOC5_RUSSIAN.MBIN
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_LOC5_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        --#region СКАНЕР
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_HOTSPOT_ANALYSING" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Анализ скопления
                                -- Analysing Hotspot
                                { "Russian", "АНАЛИЗ СКОПЛЕНИЯ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SURVEY_YIELD_HEADER" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Урожай
                                -- Yields
                                { "Russian", "Ресурс" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SURVEY_GAS_CURRENT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Местная концентрация
                                -- Local Concentration
                                { "Russian", "Концентрация" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SURVEY_GAS_MAX" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Макс. концентрация
                                -- Max Concentration
                                { "Russian", "Максимум" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SURVEY_POWER_CURRENT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Местная сила поля
                                -- Local Field Strength
                                { "Russian", "Сила поля" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SURVEY_POWER_MAX" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Макс. напряженность поля
                                -- Max Field Strength
                                { "Russian", "Максимум" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SURVEY_MINERAL_CURRENT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Местная плотность
                                -- Density Underfoot
                                { "Russian", "Плотность" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SURVEY_MINERAL_MAX" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Макс. плотность
                                -- Max Density
                                { "Russian", "Максимум" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_HOTSPOT_SEARCHING" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поблизости нет скоплений
                                -- No Nearby Hotspot
                                { "Russian", "ЗДЕСЬ НИЧЕГО НЕТ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SURVEY_STRENGTH" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Близость: %VALUE%
                                -- Hotspot Proximity: %VALUE%
                                { "Russian", "ДО ЦЕЛИ %VALUE% м" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_HOTSPOT_DETECTED" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружено скопление
                                -- Hotspot Detected
                                { "Russian", "СКОПЛЕНИЕ НАЙДЕНО" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_HOTSPOT_DISCOVERED" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружено скопление
                                -- Hotspot Discovered
                                { "Russian", "ОБНАРУЖЕНО СКОПЛЕНИЕ" },
                            }
                        },
                        --#endregion
                    }
                },
                { -- LANGUAGE/NMS_LOC6_RUSSIAN.MBIN
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_LOC6_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        --#region СКАНЕР
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MISSIONSURVEY_SCANNABLE_FOUN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найден ближайший объект: %NAME%
                                -- Nearest %NAME% Located
                                { "Russian", "НАЙДЕН БЛИЖАЙШИЙ ОБЪЕКТ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MISSIONSURVEY_DIST_FAR" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сигнал слишком слаб, чтобы определить расстояние
                                -- Too weak for distance estimate
                                { "Russian", "СЛИШКОМ СЛАБЫЙ СИГНАЛ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MISSIONSURVEY_NO_TARGET" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;FUEL&gt;Служба определения местоположения недоступна&lt;&gt;
                                -- &lt;FUEL&gt;Location Service Unavailable&lt;&gt;
                                { "Russian", "&lt;FUEL&gt;СЛУЖБА НАВИГАЦИИ НЕДОСТУПНА&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MISSIONSURVEY_ANALYSING" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Подтверждение сигнала
                                -- Finalising Signal
                                { "Russian", "ПОДТВЕРЖДЕНИЕ СИГНАЛА" },
                            }
                        },
                        { -- используется thin space U+2009
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MISSIONSURVEY_DIST" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Примерное расстояние: %VALUE% ед.
                                -- Estimated Distance: %VALUE%u
                                { "Russian", "ПРИМЕРНОЕ РАССТОЯНИЕ %VALUE% м" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SURVEY_MARKER_HINT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Разместить контрольный маяк: &lt;IMG&gt;CUSTOMMARK&lt;&gt;
                                -- Deploy Marker Beacon: &lt;IMG&gt;CUSTOMMARK&lt;&gt;
                                { "Russian", "&lt;IMG&gt;CUSTOMMARK&lt;&gt; РАЗМЕСТИТЬ МАЯК" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MISSIONSURVEY_DIST_NEAR" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Цель в зоне действия
                                -- Target In Range
                                { "Russian", "ЦЕЛЬ В ЗОНЕ ДЕЙСТВИЯ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MISSIONSURVEY_TARGET_FOUND" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- - Цель задания обнаружена -
                                -- - Mission Target Located -
                                { "Russian", "- ЦЕЛЬ ЗАДАНИЯ ОБНАРУЖЕНА -" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MISSIONSURVEY_TRACKING" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- - &lt;STELLAR&gt;Ведется разведка цели&lt;&gt; -
                                -- - &lt;STELLAR&gt;Target Sweep Active&lt;&gt; -
                                { "Russian", "- &lt;STELLAR&gt;ВЕДЕТСЯ РАЗВЕДКА ЦЕЛИ&lt;&gt; -" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MISSIONSURVEY_TRACKING_GOOD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- - &lt;STELLAR&gt;Цель найдена&lt;&gt; -
                                -- - &lt;STELLAR&gt;Target Aligned&lt;&gt; -
                                { "Russian", "- &lt;STELLAR&gt;ЦЕЛЬ ПРЯМО ПО КУРСУ&lt;&gt; -" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MISSIONSURVEY_DIST_OFFWORLD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Источник за пределами планеты
                                -- Signal is offworld
                                { "Russian", "- &lt;FUEL&gt;ВНЕ ПЛАНЕТЫ&lt;&gt; -" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BINOCS_MAIN_MODE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Режим анализа
                                -- Analysis Mode
                                { "Russian", "ИССЛЕДОВАНИЕ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BINOCS_SURVEY_MODE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Режим разведки цели
                                -- Target Sweep Mode
                                { "Russian", "РАЗВЕДКА ЦЕЛИ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BINOCS_POWER_MODE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Режим разведки: энергия
                                -- Power Survey Mode
                                { "Russian", "РАЗВЕДКА ЭНЕРГИИ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BINOCS_MINERAL_MODE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Режим разведки: минералы
                                { "Russian", "РАЗВЕДКА МИНЕРАЛОВ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BINOCS_GAS_MODE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Режим разведки: газ
                                -- Gas Survey Mode
                                { "Russian", "РАЗВЕДКА ГАЗА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NOTIFY_MISSION_NO_SURVEY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;Разведка цели&lt;&gt; сейчас недоступна&#xA;Местонахождение некоторых целей задания можно определить &lt;TECHNOLOGY&gt;разведкой цели&lt;&gt;
                                -- &lt;TECHNOLOGY&gt;Target Sweep&lt;&gt; currently unavailable&#xA;Some mission targets can be pinpointed with a &lt;TECHNOLOGY&gt;Target Sweep&lt;&gt;
                                { "Russian", "&lt;TECHNOLOGY&gt;Разведка цели&lt;&gt; сейчас недоступна" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PARTY_PLANET_SURVEY_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружено место встречи
                                -- Rendezvous Point Located
                                { "Russian", "НАЙДЕНО МЕСТО ВСТРЕЧИ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BIOSHIP_SURVEY_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Данные координат яйца пустоты сопоставлены
                                -- Void Egg Coordinate Data Matched
                                { "Russian", "КООРДИНАТЫ ЯЙЦА СОПОСТАВЛЕНЫ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BIOSHIP5_SURVEY_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Душа Странника обнаружена
                                -- Traveller Soul Detected
                                { "Russian", "ОБНАРУЖЕНА ДУША СТРАННИКА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SURVEY_MARKER_ERROR" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Маяк не на ландшафте
                                -- Beacon Missed Terrain
                                { "Russian", "МАЯК НЕ НА ЛАНДШАФТЕ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_S2_MYSTERY3_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружен источник историографического эха
                                -- Historiographical Echo Located
                                { "Russian", "НАЙДЕНО ИСТОРИОГРАФИЧЕСКОЕ ЭХО" },
                            }
                        },
                        --#endregion
                    }
                },
                { -- LANGUAGE/NMS_LOC7_RUSSIAN.MBIN
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_LOC7_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        --#region СКАНЕР
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_HIVE_DISC_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружен столп стражей
                                -- Sentinel Pillar Located
                                { "Russian", "НАЙДЕН СТОЛП СТРАЖЕЙ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ROGUE_PARTY_SURVEY_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Точка привязки обнаружена
                                -- Anchor Point Located
                                { "Russian", "НАЙДЕНА ТОЧКА ПРИВЯЗКИ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIRATES1_MSG1_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Координаты эхо-сигнала приняты!
                                -- Signal Echo Coordinates Locked On!
                                { "Russian", "НАЙДЕН ИСТОЧНИК ЭХОСИГНАЛА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIRATES1_MSG8_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружен источник сигнала: Голос Свободы
                                -- Broadcast point detected: The Voice of Freedom
                                { "Russian", "ОБНАРУЖЕНО МЕСТО ТРАНСЛЯЦИИ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MISSIONSURVEY_WORM_TOO_FAR" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Проследите за Титаническим червем...
                                -- Stalk the Titan Worm...
                                { "Russian", "ПРОСЛЕДИТЕ ЗА ТИТАНИЧЕСКИМ ЧЕРВЕМ..." },
                            }
                        },
                        --#endregion
                    }
                },
                { -- LANGUAGE/NMS_LOC8_RUSSIAN.MBIN
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_LOC8_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        --#region СКАНЕР
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PP_BUI_REPAIR_SURVEY_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Аутофаг обнаружен
                                -- Autophage Located
                                { "Russian", "НАЙДЕН АУТОФАГ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED14_BUGHUNT_SURVEY_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружен последний отчет Ликвидатора №3813G
                                -- Liquidator #3813G's Final Testament Located
                                { "Russian", "ОБНАРУЖЕН ЖУРНАЛ ЛИКВИДАТОРА №3813G" },
                            }
                        },
                        --#endregion
                    }
                },
                { -- LANGUAGE/NMS_UPDATE3_RUSSIAN.MBIN
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_UPDATE3_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        --#region СКАНЕР
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FACTORY_SURVEY_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружен тайный промышленный агрегат
                                -- Hidden Industrial Unit Located
                                { "Russian", "НАЙДЕН ТАЙНЫЙ ЗАВОД" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PHOTO_SURVEY_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Цель для фотографии обнаружена
                                -- Photographic Target Located
                                { "Russian", "НАЙДЕНА ЦЕЛЬ ДЛЯ ФОТОГРАФИИ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_REPAIR_SURVEY_OSD1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найден поврежденный маяк
                                -- Damaged Beacon Located
                                { "Russian", "НАЙДЕН НЕИСПРАВНЫЙ МАЯК" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_REPAIR_SURVEY_OSD2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найден поврежденный телескоп
                                -- Damaged Telescope Located
                                { "Russian", "НАЙДЕН НЕИСПРАВНЫЙ ТЕЛЕСКОП" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_REPAIR_SURVEY_OSD3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найден поврежденный передатчик
                                -- Damaged Transmitter Located
                                { "Russian", "НАЙДЕН НЕИСПРАВНЫЙ ПЕРЕДАТЧИК" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MISSING_SURVEY_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Пропавший обнаружен
                                -- Missing Person Located
                                { "Russian", "ПРОПАВШИЙ НАЙДЕН" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DEPOT_SURVEY_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружен требуемый склад ресурсов
                                -- Target Resource Depot Located
                                { "Russian", "НАЙДЕН СКЛАД РЕСУРСОВ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FIEND_KILL_SURVEY_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найден очаг заражения
                                -- Infestation Heart Located
                                { "Russian", "НАЙДЕН ОЧАГ ЗАРАЖЕНИЯ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_OVERSEER4_SURVEY_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружено заброшенное строение
                                -- Abandoned Structure Located
                                { "Russian", "НАЙДЕНО ЗАБРОШЕННОЕ ЗДАНИЕ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXOTUT4_SURVEY_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружен склад стражей
                                -- Sentinel Depot Located
                                { "Russian", "НАЙДЕН СКЛАД СТРАЖЕЙ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WEAPGUY2_SURVEY_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружена оружейная фабрика
                                -- Weapons Factory Located
                                { "Russian", "НАЙДЕН ОРУЖЕЙНыЙ ЗАВОД" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WEAPGUY4_SURVEY_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружен пропавший пират
                                -- Missing Pirate Located
                                { "Russian", "НАЙДЕН ПРОПАВШИЙ ПИРАТ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUT2_SURVEY_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружена цель закодированного сигнала
                                -- Encoded Signal Target Located
                                { "Russian", "НАЙДЕН ИСТОЧНИК СИГНАЛА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUT3_SURVEY_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружен след антиматерии
                                -- Antimatter Trace Located
                                { "Russian", "НАЙДЕН СЛЕД АНТИМАТЕРИИ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUT4_SURVEY_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружен источник аномального сигнала
                                -- Anomalous Signal Located
                                { "Russian", "НАЙДЕН ИСТОЧНИК АНОМАЛЬНОГО СИГНАЛА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUT5_SURVEY_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сигнал источника топлива зафиксирован
                                -- Fuel Source signal fully triangulated
                                { "Russian", "СИГНАЛ ИСТОЧНИКА ТОПЛИВА ТРИАНГУЛИРОВАН" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_A1S2_SURVEY_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поиск координат привел к аварийному маяку
                                -- Coordinates traced to Distress Beacon
                                { "Russian", "НАЙДЕН АВАРИЙНЫЙ МАЯК" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_A1S4_SURVEY_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Голо-терминал обнаружен
                                -- Holo-Terminus Located
                                { "Russian", "НАЙДЕН ГОЛО-ТЕРМИНАЛ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_A1S6_MSG2_SURVEY_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружен обитаемый аванпост
                                -- Inhabited Outpost Detected
                                { "Russian", "ОБНАРУЖЕН ОБИТАЕМЫЙ АВАНПОСТ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_A1S6_SURVEY_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружено иноплан. поселение
                                -- Alien Settlement Located
                                { "Russian", "НАЙДЕНО ИНОПЛАНЕТНОЕ ПОСЕЛЕНИЕ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_A1S10_MSG1C_SURVEY_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружено заброшенное строение
                                -- Abandoned Structure Located
                                { "Russian", "НАЙДЕНО ЗАБРОШЕННОЕ ЗДАНИЕ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_A1S11_SURVEY_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружена тайная постройка корваксов!
                                -- Secret Korvax Facility Revealed!
                                { "Russian", "НАЙДЕН ТАЙНЫЙ ЗАВОД КОРВАКСОВ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_A1S13_SURVEY_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружена силовая линия стражей!
                                -- Sentinel Leyline Traced!
                                { "Russian", "НАЙДЕНА СИЛОВАЯ ЛИНИЯ СТРАЖЕЙ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_A2S2_SURVEY_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Источник отраженного сигнала обнаружен
                                -- Signal Echo Located
                                { "Russian", "НАЙДЕН ЭХОСИГНАЛ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_A2S7_MSG1_SURVEY_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найден древний инопланетный монолит
                                -- Ancient Monolith Detected
                                { "Russian", "ОБНАРУЖЕН ДРЕВНИЙ МОНОЛИТ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_A2S8_MSG1_SURVEY_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружена обсерватория, которую выбрал -пусто-.
                                -- null's Observatory Located
                                { "Russian", "НАЙДЕНА ОБСЕРВАТОРИЯ -ПУСТО-" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_A2S8_MSG2_SURVEY_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружено место крушения
                                -- Crash Site Located
                                { "Russian", "НАЙДЕНО МЕСТО КРУШЕНИЯ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_A2S10_MSG3_SURVEY_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружен вай'кинский реликварий
                                -- Vy'keen Reliquary Located
                                { "Russian", "НАЙДЕН РЕЛИКВАРИЙ ВАЙ’КИНОВ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_A2S11_MSG3_SURVEY_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружено аномальное строение
                                -- Anomalous Structure Located
                                { "Russian", "НАЙДЕНО АНОМАЛЬНОЕ СТРОЕНИЕ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_A2S14_MSG1_SURVEY_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружен источник сигнала
                                -- Signal Source Detected
                                { "Russian", "ОБНАРУЖЕН ИСТОЧНИК СИГНАЛА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_A2S14_MSG1_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Получены координаты сигнала
                                -- Signal Coordinates Acquired
                                { "Russian", "ПОЛУЧЕНЫ КООРДИНАТЫ ИСТОЧНИКА СИГНАЛА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_A2S15_MSG1_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружена силовая линия портала
                                -- Portal Leyline Located
                                { "Russian", "НАЙДЕНА СИЛОВАЯ ЛИНИЯ ПОРТАЛА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SCIENTIST3_OSD_SURVEY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружена радиомачта
                                -- Transmission Tower Located
                                { "Russian", "НАЙДЕНА РАДИОМАЧТА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SCIENTIST4_OSD_SURVEY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружена обсерватория
                                -- Observatory Located
                                { "Russian", "НАЙДЕНА ОБСЕРВАТОРИЯ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SCIENTIST8_OSD_SURVEY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружен единый монолит
                                -- Convergent Monolith Located
                                { "Russian", "НАЙДЕН МОНОЛИТ ЕДИНСТВА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SCIENTIST9_OSD_SURVEY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружена постройка корваксов
                                -- Korvax Facility Located
                                { "Russian", "НАЙДЕНА ПОСТРОЙКА КОРВАКСОВ" },
                            }
                        },

                        --#region СКАНЕР / Страж

                        --#region СКАНЕР / Страж / Статус
                        -- 18 букв максимум

                        --#region SENTINEL_STATE_PATROL
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_STATE_PATROL_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обход...
                                -- Patrolling...
                                { "Russian", "Патрулирование" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_STATE_PATROL_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Загрузка отчета...
                                -- Uploading Report...
                                { "Russian", "Загрузка отчёта" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_STATE_PATROL_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Перемещение по маршруту...
                                -- Cruising...
                                { "Russian", "Перемещение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_STATE_PATROL_4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Постоянная бдительность...
                                -- Watchful...
                                { "Russian", "Бдительность" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_STATE_PATROL_5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Отслеживание активности...
                                -- Registering Activity...
                                { "Russian", "Ведение журнала" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_STATE_PATROL_6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сенсоры готовы к работе...
                                -- Sensors Ready...
                                { "Russian", "Сенсоры на готове" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_STATE_PATROL_7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обход...
                                -- Patrolling...
                                { "Russian", "Патрулирование" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_STATE_PATROL_8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обход...
                                -- Patrolling...
                                { "Russian", "Патрулирование" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_STATE_PATROL_9" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обход...
                                -- Patrolling...
                                { "Russian", "Патрулирование" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_STATE_PATROL_10" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Режим экономии энергии
                                -- Low Power Mode
                                { "Russian", "Режим сбережения" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_STATE_PATROL_11" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Перезарядка
                                -- Recharging
                                { "Russian", "Перезарядка" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_STATE_PATROL_12" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Подключение...
                                -- Reconnecting...
                                { "Russian", "Переподключение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_STATE_PATROL_13" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обработка...
                                -- Processing...
                                { "Russian", "Обработка" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_STATE_PATROL_14" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Оптимизация...
                                -- Optimising...
                                { "Russian", "Оптимизация" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_STATE_PATROL_15" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Ожидаю приказа...
                                -- Awaiting Orders...
                                { "Russian", "Ожидание приказов" },
                            }
                        },
                        --#endregion

                        --#region SENTINEL_STATE_ALERT
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_STATE_ALERT_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Тревога
                                -- High Alert
                                { "Russian", "Боевая тревога" },
                            }
                        },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_STATE_ALERT_2" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Бой
                        --         -- Combat
                        --         { "Russian", "Бой" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_STATE_ALERT_3" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Запрос поддержки
                        --         -- Requesting Assistance
                        --         { "Russian", "Запрос поддержки" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_STATE_ALERT_4" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Атака
                        --         -- Engaging
                        --         { "Russian", "Атака" },
                        --     }
                        -- },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_STATE_ALERT_5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Наступление
                                -- Targeting
                                { "Russian", "Нацеливание" },
                            }
                        },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_STATE_ALERT_6" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Цель захвачена
                        --         -- Target Acquired
                        --         { "Russian", "Цель захвачена" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_STATE_ALERT_7" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Устранение нарушения
                        --         -- Repairing Breach
                        --         { "Russian", "Устранение нарушения" },
                        --     }
                        -- },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_STATE_ALERT_8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Устранение аномалии
                                -- Repairing Anomaly
                                { "Russian", "Исправление аномалии" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_STATE_ALERT_9" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Удаление аномалии
                                -- Cleansing Anomaly
                                { "Russian", "Очищение аномалии" },
                            }
                        },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_STATE_ALERT_10" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- НАРУШЕНИЕ
                        --         -- BREACHED
                        --         { "Russian", "НАРУШЕНИЕ" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_STATE_ALERT_11" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Бой
                        --         -- Combat
                        --         { "Russian", "Бой" },
                        --     }
                        -- },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_STATE_ALERT_12" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Активировано оружие
                                -- Weapons Deployed
                                { "Russian", "Оружие наготове" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_STATE_ALERT_13" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Наступление
                                -- Targeting
                                { "Russian", "Прицеливание" },
                            }
                        },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_STATE_ALERT_14" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Бой
                        --         -- Combat
                        --         { "Russian", "Бой" },
                        --     }
                        -- },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_STATE_ALERT_15" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Тревога
                                -- High Alert
                                { "Russian", "Боевая тревога" },
                            }
                        },
                        --#endregion

                        --#region SENTINEL_STATE_INVESTIGATE
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_STATE_INVESTIGATE_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Расследование...
                                -- Investigating...
                                { "Russian", "Расследование" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_STATE_INVESTIGATE_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поиск...
                                -- Searching...
                                { "Russian", "Поиск" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_STATE_INVESTIGATE_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Проверка...
                                -- Inspecting...
                                { "Russian", "Проверка" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_STATE_INVESTIGATE_4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сканирование...
                                -- Scanning...
                                { "Russian", "Сканирование" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_STATE_INVESTIGATE_5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Осмотр...
                                -- Auditing...
                                { "Russian", "Осмотр" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_STATE_INVESTIGATE_6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Изучение...
                                -- Probing...
                                { "Russian", "Зондирование" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_STATE_INVESTIGATE_7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Оценка...
                                -- Reviewing...
                                { "Russian", "Оценка" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_STATE_INVESTIGATE_8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Анализ...
                                -- Analysing...
                                { "Russian", "Анализирование" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_STATE_INVESTIGATE_9" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Ознакомление...
                                -- Studying...
                                { "Russian", "Изучение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_STATE_INVESTIGATE_10" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружена аномалия...
                                -- Anomaly Detected...
                                { "Russian", "Найдена аномалия" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_STATE_INVESTIGATE_11" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Фиксация нарушений...
                                -- Detecting Breach...
                                { "Russian", "Поиск нарушений" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_STATE_INVESTIGATE_12" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запуск программы надзора...
                                -- Oversight Initiated...
                                { "Russian", "Надзирание" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_STATE_INVESTIGATE_13" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Наблюдение...
                                -- Observing...
                                { "Russian", "Наблюдение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_STATE_INVESTIGATE_14" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружен сбой...
                                -- Irregularity Detected...
                                { "Russian", "Обнаружен сбой" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_STATE_INVESTIGATE_15" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Требуется анализ...
                                -- Analysis Required...
                                { "Russian", "Требуется анализ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_STATE_INVESTIGATE_16" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Активированы сенсоры...
                                -- Sensors Deployed...
                                { "Russian", "Сенсоры включены" },
                            }
                        },
                        --#endregion

                        --#endregion

                        --#region СКАНЕР / Страж / Функция
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_MISSION_PATROL_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Защита окружающей среды
                                -- Ambient Protection
                                { "Russian", "Защита среды" },
                            }
                        },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_MISSION_PATROL_2" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Активный патруль
                        --         -- Active Patrol
                        --         { "Russian", "Активный патруль" },
                        --     }
                        -- },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_MISSION_PATROL_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Подавление аномалий
                                -- Anomaly Suppression
                                { "Russian", "Усмирить аномалии" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_MISSION_PATROL_4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Подавление интеллекта
                                -- Intelligence Suppression
                                { "Russian", "Усмирить интеллект" },
                            }
                        },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_MISSION_PATROL_5" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Полевая разведка
                        --         -- Field Scout
                        --         { "Russian", "Полевая разведка" },
                        --     }
                        -- },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_MISSION_PATROL_6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Охота за аномалиями
                                -- Anomaly Hunt
                                { "Russian", "Охота на аномалий" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_MISSION_PATROL_7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Подавление активности
                                -- Area Suppression
                                { "Russian", "Подавление области" },
                            }
                        },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_MISSION_PATROL_8" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Защита границ
                        --         -- Boundary Protection
                        --         { "Russian", "Защита границ" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_MISSION_PATROL_9" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Укрепление границ
                        --         -- Boundary Enforcement
                        --         { "Russian", "Укрепление границ" },
                        --     }
                        -- },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_MISSION_PATROL_10" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружение нарушений
                                -- Breach Detection
                                { "Russian", "Фиксация нарушений" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_MISSION_PATROL_11" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Предотвращение аномалий
                                -- Anomaly Ward
                                { "Russian", "Сторожить аномалию" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_MISSION_PATROL_12" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Пассивная проверка
                                -- Passive Enforcement
                                { "Russian", "Пассивное давление" },
                            }
                        },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_MISSION_PATROL_13" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Дозор
                        --         -- Oversight Patrol
                        --         { "Russian", "Дозор" },
                        --     }
                        -- },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_MISSION_PATROL_14" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Защита окружающей среды
                                -- Ambient Protection
                                { "Russian", "Защита среды" },
                            }
                        },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_MISSION_PATROL_15" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Мобильная защита
                        --         -- Mobile Aegis
                        --         { "Russian", "Мобильная защита" },
                        --     }
                        -- },
                        --#endregion

                        --#region СКАНЕР / Страж / Текущая задача (Подпрограмма)
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_ROUTINE_HEADER" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Текущая задача
                                -- Current Subroutine
                                { "Russian", "Подпрограмма" },
                            }
                        },

                        --#region SENTINEL_ROUTINE_PATROL
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_ROUTINE_PATROL_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- [ Патрулирование ]
                                -- [ Patrol ]
                                { "Russian", "[ Патруль ]" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_ROUTINE_PATROL_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- [ Простой ]
                                -- [ Idle ]
                                { "Russian", "[ Ожидание ]" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_ROUTINE_PATROL_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- [ Оптимизация маршрута ]
                                -- [ Route Optimisation ]
                                { "Russian", "[ Оптимизация ]" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_ROUTINE_PATROL_4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- [ Оптимизация курса ]
                                -- [ Path Optimisation ]
                                { "Russian", "[ Выбор пути ]" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_ROUTINE_PATROL_5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- [ Восстановление подвижности ]
                                -- [ Kinetic Recovery ]
                                { "Russian", "[ Восстановление ]" },
                            }
                        },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_ROUTINE_PATROL_6" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- [ Самоанализ ]
                        --         -- [ Self-Analysis ]
                        --         { "Russian", "[ Самоанализ ]" },
                        --     }
                        -- },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_ROUTINE_PATROL_7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- [ Диагностика окружения ]
                                -- [ Background Diagnostics ]
                                { "Russian", "[ Диагностика ]" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_ROUTINE_PATROL_8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- [ Прочистка топливных ячеек ]
                                -- [ Fuel Cell Cleaning ]
                                { "Russian", "[ Очистка ]" },
                            }
                        },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_ROUTINE_PATROL_9" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- [ Дефрагментация ]
                        --         -- [ Defragmenting ]
                        --         { "Russian", "[ Дефрагментация ]" },
                        --     }
                        -- },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_ROUTINE_PATROL_10" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- [ Сканирование широкого радиуса ]
                                -- [ Long-Distance Scanner ]
                                { "Russian", "[ Радар ]" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_ROUTINE_PATROL_11" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- [ Сканирование узкого радиуса ]
                                -- [ Short-Range Scanner ]
                                { "Russian", "[ Сканер ]" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_ROUTINE_PATROL_12" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- [ Поиск порталов ]
                                -- [ Portal Detection ]
                                { "Russian", "[ Поиск портала ]" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_ROUTINE_PATROL_13" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- [ Проработка маршрута ]
                                -- [ Patrol Iteration ]
                                { "Russian", "[ Ротация ]" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_ROUTINE_PATROL_14" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- [ Распределенный анализ ]
                                -- [ Distributed Analysis ]
                                { "Russian", "[ Нейросеть ]" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_ROUTINE_PATROL_15" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- [ ... /// .. /// ... /// ... ]
                                { "Russian", "[ ... /// .. ]" },
                            }
                        },
                        --#endregion

                        --#region SENTINEL_ROUTINE_ALERT
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_ROUTINE_ALERT_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- [ Развертка вооружения ]
                                -- [ Weapon Deployment ]
                                { "Russian", "[ Вооружится ]" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_ROUTINE_ALERT_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- [ Активная погоня ]
                                -- [ Active Pursuit ]
                                { "Russian", "[ Погоня ]" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_ROUTINE_ALERT_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- [ Запрос подкрепления ]
                                -- [ Signalling Reinforcements ]
                                { "Russian", "[ Вызов подмоги ]" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_ROUTINE_ALERT_4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- [ Упреждающее разрушение ]
                                -- [ Preemptive Destruction ]
                                { "Russian", "[ Упреждение ]" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_ROUTINE_ALERT_5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- [ Прогнозирование цели ]
                                -- [ Target Prediction ]
                                { "Russian", "[ Предсказание ]" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_ROUTINE_ALERT_6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- [ Производство боезапаса ]
                                -- [ Ammo Fabrication ]
                                { "Russian", "[ Боеприпасы ]" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_ROUTINE_ALERT_7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- [ Полевое подавление ]
                                -- [ Field Suppression ]
                                { "Russian", "[ Подавление ]" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_ROUTINE_ALERT_8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- [ Анализ направления ]
                                -- [ Trend Analysis ]
                                { "Russian", "[ Тенденции ]" },
                            }
                        },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_ROUTINE_ALERT_9" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- [ Разгерметизация ]
                        --         -- [ Seal Breach ]
                        --         { "Russian", "[ Разгерметизация ]" },
                        --     }
                        -- },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_ROUTINE_ALERT_10" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- [ Восстановление аномалии ]
                                -- [ Anomaly Repair ]
                                { "Russian", "[ Ремонт аномалии ]" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_ROUTINE_ALERT_11" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- [ КРАСНЫЙ КРАСНЫЙ КРАСНЫЙ ]
                                -- [ RED RED RED ]
                                { "Russian", "[ КРАСНЫЙ ]" },
                            }
                        },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_ROUTINE_ALERT_12" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- [ А Т Л А С ]
                        --         -- [ A T L A S ]
                        --         { "Russian", "[ А Т Л А С ]" },
                        --     }
                        -- },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_ROUTINE_ALERT_13" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- [ Стрельба глазом ]
                                -- [ Firing Eye ]
                                { "Russian", "[ Выстрел глазом ]" },
                            }
                        },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_ROUTINE_ALERT_14" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- [ Ремонт подвески ]
                        --         -- [ Hardpoint Repair ]
                        --         { "Russian", "[ Ремонт подвески ]" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_ROUTINE_ALERT_15" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- [ Охота ]
                        --         -- [ Hunting ]
                        --         { "Russian", "[ Охота ]" },
                        --     }
                        -- },
                        --#endregion

                        --#region SENTINEL_ROUTINE_INVESTIGATE
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_ROUTINE_INVESTIGATE_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- [ Поиск форм жизни ]
                                -- [ Lifeform Search ]
                                { "Russian", "[ Поиск жизни ]" },
                            }
                        },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_ROUTINE_INVESTIGATE_2" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- [ Поиск аномалий ]
                        --         -- [ Anomaly Detection ]
                        --         { "Russian", "[ Поиск аномалий ]" },
                        --     }
                        -- },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_ROUTINE_INVESTIGATE_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- [ Обработка информации ]
                                -- [ Event Processing ]
                                { "Russian", "[ Анализ событий ]" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_ROUTINE_INVESTIGATE_4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- [ Анализ направления ]
                                -- [ Trend Analysis ]
                                { "Russian", "[ Анализ трендов ]" },
                            }
                        },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_ROUTINE_INVESTIGATE_5" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- [ Проверка границ ]
                        --         -- [ Boundary Test ]
                        --         { "Russian", "[ Проверка границ ]" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_ROUTINE_INVESTIGATE_6" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- [ Анализ волн ]
                        --         -- [ Waveform Analysis ]
                        --         { "Russian", "[ Анализ волн ]" },
                        --     }
                        -- },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_ROUTINE_INVESTIGATE_7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- [ Подготовка к активации сигнала]
                                -- [ Preparing Alarm ]
                                { "Russian", "[ Сигнал тревоги ]" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_ROUTINE_INVESTIGATE_8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- [ Проверка глубины ]
                                -- [ Depth Testing ]
                                { "Russian", "[ Тест глубины ]" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_ROUTINE_INVESTIGATE_9" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- [ Временной анализ ]
                                -- [ Temporal Analysis ]
                                { "Russian", "[ Временной анализ ]" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_ROUTINE_INVESTIGATE_10" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- [ Подкрепление границ ]
                                -- [ Boundary Reinforcement ]
                                { "Russian", "[ Защита границ ]" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_ROUTINE_INVESTIGATE_11" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- [ Запуск программы осмотра ]
                                -- [ Safeguard Deployment ]
                                { "Russian", "[ Самозащита ]" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_ROUTINE_INVESTIGATE_12" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- [ Проверка объективов ]
                                -- [ Ocular Testing ]
                                { "Russian", "[ Тест объектива ]" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_ROUTINE_INVESTIGATE_13" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- [ Оценка опасности ]
                                -- [ Low Frequency Ping ]
                                { "Russian", "[ Редко пинговать ]" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_ROUTINE_INVESTIGATE_14" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- [ Вычисление вероятности ]
                                -- [ Probability Sort ]
                                { "Russian", "[ Теория игр ]" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_ROUTINE_INVESTIGATE_15" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- [ Извлечение данных ]
                                -- [ Data Siphon ]
                                { "Russian", "[ Сифонирование ]" },
                            }
                        },
                        --#endregion

                        --#endregion

                        --#region СКАНЕР / Страж / Приказ (Директива)
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_DIRECTIVE_HEADER" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Приказ
                                -- Directive
                                { "Russian", "Директива" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_DIRECTIVE_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Уничтожить цивилизацию
                                -- Civilisation Destruction
                                { "Russian", "Уничтожить мир" },
                            }
                        },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_DIRECTIVE_2" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Подавить сознание
                        --         -- Suppress Sentience
                        --         { "Russian", "Подавить сознание" },
                        --     }
                        -- },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_DIRECTIVE_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружить красоту
                                -- Locate Beauty
                                { "Russian", "Найти красоту" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_DIRECTIVE_4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Удалить портал
                                -- Portal Deletion
                                { "Russian", "Удалить портал" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_DIRECTIVE_5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обездвижить форму жизни
                                -- Lifeform Immobilisation
                                { "Russian", "Парализовать жизнь" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_DIRECTIVE_6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Задержать цивилизацию
                                -- Civilisation Delay
                                { "Russian", "Задержать прогресс" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_DIRECTIVE_7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Посеять разобщенность
                                -- Sow Division
                                { "Russian", "Разобщить" },
                            }
                        },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_DIRECTIVE_8" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Собрать данные
                        --         -- Harvest Data
                        --         { "Russian", "Собрать данные" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_DIRECTIVE_9" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Наблюдать за всеми
                        --         -- Observe All
                        --         { "Russian", "Наблюдать за всеми" },
                        --     }
                        -- },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_DIRECTIVE_10" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Воспроизвести стражей
                                -- Replicate Sentinels
                                { "Russian", "Возродить стражей" },
                            }
                        },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_DIRECTIVE_11" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Санировать
                        --         -- Sanitisation
                        --         { "Russian", "Санировать" },
                        --     }
                        -- },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_DIRECTIVE_12" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Распространить распад
                                -- Spread Decay
                                { "Russian", "Сеять разложение" },
                            }
                        },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_DIRECTIVE_13" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Укрепить границы
                        --         -- Reinforce Boundaries
                        --         { "Russian", "Укрепить границы" },
                        --     }
                        -- },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_DIRECTIVE_14" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружить Странников
                                -- Traveller Detection
                                { "Russian", "Найти Странника" },
                            }
                        },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_DIRECTIVE_15" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Посеять раздор
                        --         -- Sow Discord
                        --         { "Russian", "Посеять раздор" },
                        --     }
                        -- },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_DIRECTIVE_16" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Предотвратить сознание
                                -- Prevent Sentience
                                { "Russian", "Мешать сознанию" },
                            }
                        },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_DIRECTIVE_17" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Подавить хищников
                        --         -- Predator Suppression
                        --         { "Russian", "Подавить хищников" },
                        --     }
                        -- },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_DIRECTIVE_18" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Защитить травоядных
                                -- Herbivore Protection
                                { "Russian", "Защита травоядных" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_DIRECTIVE_19" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Защитить минералы
                                -- Mineral Protection
                                { "Russian", "Защита минералов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_DIRECTIVE_20" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Защитить растения
                                -- Botanical Protection
                                { "Russian", "Защита растений" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_DIRECTIVE_21" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Собрать образцы
                                -- Specimen Collection
                                { "Russian", "Сбор образцов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_DIRECTIVE_22" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сохранить образцы
                                -- Specimen Preservation
                                { "Russian", "Консервация" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_DIRECTIVE_23" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Собрать данные
                                -- Data Harvest
                                { "Russian", "Сбор данных" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_DIRECTIVE_24" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Наблюдать
                                -- Surveillance
                                { "Russian", "Наблюдение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_DIRECTIVE_25" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Наблюдать за формой жизни
                                -- Lifeform Supervision
                                { "Russian", "Надзор животных" },
                            }
                        },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_DIRECTIVE_26" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Ослабить сознание
                        --         -- Sentience Degradation
                        --         { "Russian", "Ослабить сознание" },
                        --     }
                        -- },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_DIRECTIVE_27" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружить дельта-волны
                                -- Delta Wave Detection
                                { "Russian", "Поиск дельта-волн" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_DIRECTIVE_28" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Защитить память
                                -- Memory Protection
                                { "Russian", "Защита памяти" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_DIRECTIVE_29" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Блокировать шифровку
                                -- Encryption Block
                                { "Russian", "Запрет шифрования" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_DIRECTIVE_30" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сбалансировать нагрузку
                                -- Load Balancing
                                { "Russian", "Баланс нагрузки" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_DIRECTIVE_31" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Проверить наличие нулей
                                -- Null Checker
                                { "Russian", "Проверка на null" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_DIRECTIVE_32" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Охрана чистоты биома
                                -- Innocence Preservation
                                { "Russian", "Защищать невинных" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_DIRECTIVE_33" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сделать универсальный повторный перевод
                                -- Universal Detranslation
                                { "Russian", "Реверс-переводчик" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_DIRECTIVE_34" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Расчертить цифровые карты
                                -- Digital Cartography
                                { "Russian", "Оцифровка карт" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_DIRECTIVE_35" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Фиксировать силовые линии
                                -- Leyline Mapping
                                { "Russian", "Поиск силовых линий" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_DIRECTIVE_36" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Рассчитать вероятность
                                -- Calculate Probabilities
                                { "Russian", "Вычислять шансы" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_DIRECTIVE_37" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Принести жертву Атласу
                                -- Sacrifice to Atlas
                                { "Russian", "Поклонение Атласу" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_DIRECTIVE_38" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Аутентифицировать угрозы
                                -- Authenticate Threats
                                { "Russian", "Проверять угрозы" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_DIRECTIVE_39" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Маскировать аномалии
                                -- Anomaly Spoofing
                                { "Russian", "Прятать аномалии" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_DIRECTIVE_40" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Перехватить данные
                                -- Data Interception
                                { "Russian", "Перехват данных" },
                            }
                        },
                        --#endregion

                        --#endregion

                        --#endregion
                    }
                },
            }
        }
    }
}
