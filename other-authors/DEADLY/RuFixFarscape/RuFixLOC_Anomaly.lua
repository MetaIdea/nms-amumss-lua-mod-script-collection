NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]    = "_RuFixLOC_Anomaly.pak",
    ["MOD_AUTHOR"]      = "gh0stwizard",
    ["MOD_DESCRIPTION"] = "Fixes text issues of Anomaly quests.",
    ["NMS_VERSION"]     = "5.72",
    ["EXML_CREATE"]     = "false",
    ["MODIFICATIONS"]   = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                { -- LANGUAGE/NMS_LOC4_RUSSIAN.MBIN
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_LOC4_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "MP_MISSION_STATION_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Выполняйте задания с другими Странниками, чтобы помочь Нада и Поло.
                                -- Complete missions with other Travellers to assist Nada and Polo
                                { "Russian", "Помогите Нада и Поло, выполняя задания с другими Странниками" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CHAT_START_MP_MISSION_ALT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ЗАДАНИЕ НАЧАЛОСЬ: %MISSION%
                                -- MISSION STARTED: %MISSION%
                                { "Russian", "Задание начато: %MISSION%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_RETURN_MPMISSION_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вернитесь в Нексус, чтобы получить награду.&#xA;Находясь в космосе, вызовите Космическую Аномалию в быстром меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                { "Russian", "Вернитесь в Нексус, чтобы получить награду.&#xA;Находясь в космосе, откройте быстрое меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;) и вызовите Космическую Аномалию." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_RETURN_MPMISSION_OBJ1_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вернитесь в Нексус, чтобы получить награду.&#xA;Находясь в космосе, вызовите Космическую Аномалию в быстром меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                { "Russian", "Вернитесь в Нексус, чтобы получить награду&#xA;Находясь в космосе, откройте быстрое меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)&#xA;и вызовите Космическую Аномалию" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_RETURN_MPMISSION_OBJ1_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вернуться на Космическую Аномалию
                                -- Return to the Space Anomaly
                                { "Russian", "Вернитесь на Космическую Аномалию" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CREW_SPACECOMBAT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;DIAMONDBULLET&lt;&gt;ЭСКАДРА: %CURRENT%/%TOTAL%
                                -- &lt;IMG&gt;DIAMONDBULLET&lt;&gt;SQUADRON: %CURRENT%/%TOTAL%
                                { "Russian", "&lt;IMG&gt;DIAMONDBULLET&lt;&gt;ЭСКАДРИЛЬЯ: %CURRENT%/%TOTAL%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CREW_GROUNDCOMBAT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;DIAMONDBULLET&lt;&gt;ВЫСАДКА: %CURRENT%/%TOTAL%
                                -- &lt;IMG&gt;DIAMONDBULLET&lt;&gt;AWAY TEAM: %CURRENT%/%TOTAL%
                                { "Russian", "&lt;IMG&gt;DIAMONDBULLET&lt;&gt;ГРУППА ВЫСАДКИ: %CURRENT%/%TOTAL%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CREW_RESEARCH" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;DIAMONDBULLET&lt;&gt;ГРУППА: %CURRENT%/%TOTAL%
                                -- &lt;IMG&gt;DIAMONDBULLET&lt;&gt;RESEARCH CREW: %CURRENT%/%TOTAL%
                                { "Russian", "&lt;IMG&gt;DIAMONDBULLET&lt;&gt;ИССЛЕДОВАТЕЛИ: %CURRENT%/%TOTAL%" },
                            }
                        },

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CREW_REPAIR" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;DIAMONDBULLET&lt;&gt;НАЗЕМНЫЕ: %CURRENT%/%TOTAL%
                                -- &lt;IMG&gt;DIAMONDBULLET&lt;&gt;GROUND CREW: %CURRENT%/%TOTAL%
                                { "Russian", "&lt;IMG&gt;DIAMONDBULLET&lt;&gt;НАЗЕМНАЯ КОМАНДА: %CURRENT%/%TOTAL%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CREW_PIRACY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;DIAMONDBULLET&lt;&gt;ЭСКАДРА: %CURRENT%/%TOTAL%
                                -- &lt;IMG&gt;DIAMONDBULLET&lt;&gt;SQUADRON: %CURRENT%/%TOTAL%
                                { "Russian", "&lt;IMG&gt;DIAMONDBULLET&lt;&gt;ЭСКАДРИЛЬЯ: %CURRENT%/%TOTAL%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CREW_PHOTO" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;DIAMONDBULLET&lt;&gt;ГРУППА: %CURRENT%/%TOTAL%
                                -- &lt;IMG&gt;DIAMONDBULLET&lt;&gt;RESEARCH CREW: %CURRENT%/%TOTAL%
                                { "Russian", "&lt;IMG&gt;DIAMONDBULLET&lt;&gt;ИССЛЕДОВАТЕЛИ: %CURRENT%/%TOTAL%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CREW_FEEDING" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;DIAMONDBULLET&lt;&gt;НАЗЕМНЫЕ: %CURRENT%/%TOTAL%
                                -- &lt;IMG&gt;DIAMONDBULLET&lt;&gt;GROUND CREW: %CURRENT%/%TOTAL%
                                { "Russian", "&lt;IMG&gt;DIAMONDBULLET&lt;&gt;НАЗЕМНАЯ КОМАНДА: %CURRENT%/%TOTAL%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TRADE_BUY_EXPED_SHOP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Получите вознаграждения за экспедиции
                                -- Collect expedition rewards
                                { "Russian", "Получить вознаграждения за экспедиции" },
                            }
                        },
                    }
                },
                { -- LANGUAGE/NMS_LOC5_RUSSIAN.MBIN
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_LOC5_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_REPAIR_PART_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Компонент звездолета
                                -- Starship Component
                                { "Russian", "Компонент звездолёта" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_FIEND_KILL_TERM_MARKER" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Оживший терминал
                                -- Haunted Terminal
                                { "Russian", "Терминал с привидениями" },
                            }
                        },
                        -- не влазиет, не прокручивается (макс. 17 рус. букв)
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_MISSION_WEEKEND_EVENT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- СОБЫТИЕ НА ВЫХОДНЫЕ
                                { "Russian", "АКЦИЯ НА ВЫХОДНЫЕ" },
                            }
                        },
                        --
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_HEADER_SPACECOMBAT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;DIAMONDBULLET&lt;&gt;ЭСКАДРА %CURRENT%/%TOTAL%
                                -- &lt;IMG&gt;DIAMONDBULLET&lt;&gt;SQUADRON (%CURRENT%/%TOTAL%)
                                { "Russian", "&lt;IMG&gt;DIAMONDBULLET&lt;&gt;ЭСКАДРИЛЬЯ %CURRENT%/%TOTAL%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_HEADER_RESEARCH" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;DIAMONDBULLET&lt;&gt;ИССЛЕДОВАТЕЛЬСКАЯ ГРУППА %CURRENT%/%TOTAL%
                                -- &lt;IMG&gt;DIAMONDBULLET&lt;&gt;RESEARCH CREW (%CURRENT%/%TOTAL%)
                                { "Russian", "&lt;IMG&gt;DIAMONDBULLET&lt;&gt;ИССЛЕДОВАТЕЛИ %CURRENT%/%TOTAL%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_HEADER_REPAIR" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;DIAMONDBULLET&lt;&gt;НАЗЕМНЫЙ СОСТАВ %CURRENT%/%TOTAL%
                                -- &lt;IMG&gt;DIAMONDBULLET&lt;&gt;GROUND CREW (%CURRENT%/%TOTAL%)
                                { "Russian", "&lt;IMG&gt;DIAMONDBULLET&lt;&gt;НАЗЕМНАЯ КОМАНДА %CURRENT%/%TOTAL%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_HEADER_PIRACY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;DIAMONDBULLET&lt;&gt;ЭСКАДРА %CURRENT%/%TOTAL%
                                -- &lt;IMG&gt;DIAMONDBULLET&lt;&gt;SQUADRON (%CURRENT%/%TOTAL%)
                                { "Russian", "&lt;IMG&gt;DIAMONDBULLET&lt;&gt;ЭСКАДРИЛЬЯ %CURRENT%/%TOTAL%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_HEADER_PHOTO" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;DIAMONDBULLET&lt;&gt;ИССЛЕДОВАТЕЛЬСКАЯ ГРУППА %CURRENT%/%TOTAL%
                                -- &lt;IMG&gt;DIAMONDBULLET&lt;&gt;RESEARCH CREW (%CURRENT%/%TOTAL%)
                                { "Russian", "&lt;IMG&gt;DIAMONDBULLET&lt;&gt;ИССЛЕДОВАТЕЛИ %CURRENT%/%TOTAL%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_HEADER_FEEDING" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;DIAMONDBULLET&lt;&gt;НАЗЕМНЫЙ СОСТАВ %CURRENT%/%TOTAL%
                                -- &lt;IMG&gt;DIAMONDBULLET&lt;&gt;GROUND CREW (%CURRENT%/%TOTAL%)
                                { "Russian", "&lt;IMG&gt;DIAMONDBULLET&lt;&gt;НАЗЕМНАЯ КОМАНДА %CURRENT%/%TOTAL%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_MISSION_MAKE_READY_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Чтобы начать, нужно подготовиться в &lt;STELLAR&gt;Нексусе&lt;&gt;.
                                -- Ready up at the &lt;STELLAR&gt;the Nexus&lt;&gt; to begin
                                { "Russian", "Подготовьтесь и начните задание в &lt;STELLAR&gt;Нексусе&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_MISSION_WAITING_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Ожидаем готовности экипажа.
                                -- Waiting for crew to be ready
                                { "Russian", "Ожидаем готовности команды" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_MISSION_WAITING_MSG_ALT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Ожидаем готовности экипажа.&#xA;Готовность членов экипажа: &lt;STELLAR&gt;%CURRENT%/%TOTAL%&lt;&gt;
                                -- Waiting for crew to be ready&#xA;Crew members ready: &lt;STELLAR&gt;%CURRENT%/%TOTAL%&lt;&gt;
                                { "Russian", "Ожидаем готовности команды&#xA;Готовность членов команды: &lt;STELLAR&gt;%CURRENT%/%TOTAL%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_MISSION_STARTING_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Все члены экипажа &lt;TRADEABLE&gt;готовы!&lt;&gt;&#xA;Задание начнется через &lt;STELLAR&gt;%TIME% сек.&lt;&gt;!
                                -- All crew members &lt;TRADEABLE&gt;ready!&lt;&gt;&#xA;Mission starting in &lt;STELLAR&gt;%TIME%s&lt;&gt;!
                                { "Russian", "Все члены команды &lt;TRADEABLE&gt;готовы!&lt;&gt;&#xA;Задание начнется через &lt;STELLAR&gt;%TIME% с&lt;&gt;!" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_MISSION_LEAVE_NEXUS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вернитесь на корабль и покиньте Космическую Аномалию&#xA;Экипаж может совершить &lt;STELLAR&gt;варп-прыжок&lt;&gt; к месту выполнения задания
                                -- Return to your ship and leave the Space Anomaly&#xA;Crew may be &lt;STELLAR&gt;warped&lt;&gt; to the mission location
                                { "Russian", "Вернитесь на корабль и покиньте Космическую Аномалию&#xA;Команда, возможно, совершит &lt;STELLAR&gt;варп-прыжок&lt;&gt;&#xA;к месту выполнения задания" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_MISSION_LEAVE_NEXUS_ALT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вернитесь на корабль и покиньте Космическую Аномалию&#xA;Вы можете совершить &lt;STELLAR&gt;варп-прыжок&lt;&gt; к месту выполнения задания
                                -- Return to your ship and leave the Space Anomaly&#xA;You may be &lt;STELLAR&gt;warped&lt;&gt; to the mission location
                                { "Russian", "Вернитесь на корабль и покиньте Космическую Аномалию&#xA;Возможно, вы совершите &lt;STELLAR&gt;варп-прыжок&lt;&gt;&#xA;к месту выполнения задания" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_MISSION_LEAVE_NEXUS_TIMER" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вернитесь на корабль и покиньте Космическую Аномалию: &lt;FUEL&gt;%TIME%&lt;&gt;&#xA;Экипаж может совершить &lt;STELLAR&gt;варп-прыжок&lt;&gt; к месту выполнения задания.
                                -- Return to your ship and leave the Space Anomaly: &lt;FUEL&gt;%TIME%&lt;&gt;&#xA;Crew may be &lt;STELLAR&gt;warped&lt;&gt; to the mission location
                                { "Russian", "Вернитесь на корабль и покиньте Космическую Аномалию&#xA;Осталось времени: &lt;FUEL&gt;%TIME%&lt;&gt;&#xA;Команда, возможно, совершит &lt;STELLAR&gt;варп-прыжок&lt;&gt;&#xA;к месту выполнения задания" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_MISSION_LEAVE_NEXUS_FAIL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Время задания истекло: «%MISSION%» — прекращено
                                -- Mission Timeout: '%MISSION%' Abandoned
                                { "Russian", "Время выполнения задания истекло&#xA;Задание «%MISSION%» прекращено" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_PORTALQUEST_GRA_DESC_6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Могила потрескивает от необычной энергии. &#xA;Покоившийся здесь Странник давно исчез. Его забрала дуга сознания из другой вселенной.
                                -- The grave crackles with exotic energies. &#xA;The Traveller who once rested here is long gone, harvested by a Mind Ark from another universe.
                                { "Russian", "Могила потрескивает от необычной энергии. &#xA;Покоившийся здесь Странник давно исчез. Его забрал ковчег сознания из другой вселенной. " },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_PORTALQUEST_GRA_RES_5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Дуга сознания очищена. Душа, находящаяся внутри нее, благодарит Странников за помощь.&#xA;&#xA;Я спрашиваю, что Астерия мне пророчит. Я спрашиваю об истинной природе моего врага.&#xA;&#xA;Астерия говорит, что Бездна — не то, чем она кажется.&#xA;&#xA;Голос смолкает. Я ухожу. Услышанное сильно меня тяготит.
                                { "Russian", "Ковчег сознания очищен. Душа, находящаяся внутри него, благодарит Странников за помощь.&#xA;&#xA;Я спрашиваю, что Астерия мне пророчит. Я спрашиваю об истинной природе моего врага.&#xA;&#xA;Астерия говорит, что Бездна — не то, чем она кажется.&#xA;&#xA;Голос смолкает. Я ухожу. Услышанное сильно меня тяготит." },
                            }
                        },

                        --#region UI_MP_COLLECT_POOP
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_COLLECT_POOP_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружена &lt;STELLAR&gt;планета животных&lt;&gt;.&#xA;&lt;TRADEABLE&gt;Фекалий&lt;&gt; производится хорошо откормленными формами жизни.&#xA;Доберитесь до нужной планеты.
                                -- &lt;STELLAR&gt;Fauna dense planet&lt;&gt; located&#xA;&lt;TRADEABLE&gt;Faecium&lt;&gt; is produced by well-fed lifeforms&#xA;Reach the target planet
                                { "Russian", "Обнаружена &lt;STELLAR&gt;планета с богатой фауной&lt;&gt;&#xA;&lt;TRADEABLE&gt;Фекалий&lt;&gt; производится хорошо откормленными формами жизни&#xA;Доберитесь до нужной планеты" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_COLLECT_POOP_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вы достигли &lt;STELLAR&gt;планеты животных&lt;&gt;.&#xA;&lt;TRADEABLE&gt;Фекалий&lt;&gt; производится хорошо откормленными формами жизни.&#xA;Приземлитесь на ее поверхность.
                                -- &lt;STELLAR&gt;Fauna dense planet&lt;&gt; reached&#xA;&lt;TRADEABLE&gt;Faecium&lt;&gt; is produced by well-fed lifeforms&#xA;Land on the planet surface
                                { "Russian", "Вы достигли &lt;STELLAR&gt;планеты с богатой фауной&lt;&gt;&#xA;&lt;TRADEABLE&gt;Фекалий&lt;&gt; производится хорошо откормленными формами жизни&#xA;Приземлитесь на поверхность планеты" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_COLLECT_POOP_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Получить: %ITEM% — %CURRENT%/%AMOUNT%&#xA;%ITEM% производится хорошо откормленными формами жизни.&#xA;Существа отображаются в &lt;TECHNOLOGY&gt;анализирующем визоре&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;) в виде &lt;FUEL&gt;красных точек&lt;&gt; или &lt;TRADEABLE&gt;зеленых следов лап&lt;&gt;.
                                -- Collect %ITEM%: %CURRENT%/%AMOUNT%&#xA;%ITEM% is produced by well-fed lifeforms&#xA;Creatures appear in the &lt;TECHNOLOGY&gt;Analysis Visor&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;) as &lt;FUEL&gt;red dots&lt;&gt; or &lt;TRADEABLE&gt;green pawprints&lt;&gt;
                                { "Russian", "Соберите: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;%ITEM% производится хорошо откормленными формами жизни&#xA;Существа отображаются в &lt;TECHNOLOGY&gt;анализирующем визоре&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)&#xA;в виде &lt;FUEL&gt;красных точек&lt;&gt; или &lt;TRADEABLE&gt;зеленых следов лап&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region UI_MP_COLLECT_STORM
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_COLLECT_STORM_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Обнаружены экстремальные погодные условия&lt;&gt;.&#xA;Найдите необходимую систему на &lt;TECHNOLOGY&gt;галактической карте&lt;&gt;.&#xA;Находясь на звездолете, откройте галактическую карту с помощью &lt;IMG&gt;QUICK_MENU&lt;&gt;.
                                { "Russian", "&lt;STELLAR&gt;Обнаружены экстремальные погодные условия&lt;&gt;&#xA;Найдите необходимую систему на &lt;TECHNOLOGY&gt;галактической карте&lt;&gt;&#xA;Находясь в космосе, откройте галактическую карту с помощью &lt;IMG&gt;QUICK_MENU&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_COLLECT_STORM_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Обнаружены экстремальные погодные условия&lt;&gt;.&#xA;Нацельтесь на планету и нажмите &lt;IMG&gt;SCAN&lt;&gt;, чтобы просканировать ее на наличие активированных минералов.&#xA;Сядьте на нужную планету.
                                -- &lt;STELLAR&gt;Extreme Weather Patterns Detected&lt;&gt;&#xA;Target a planet and use &lt;IMG&gt;SCAN&lt;&gt; to scan for activated minerals&#xA;Land on the target planet
                                { "Russian", "&lt;STELLAR&gt;Обнаружены экстремальные погодные условия&lt;&gt;&#xA;Нацельтесь на планету и нажмите &lt;IMG&gt;SCAN&lt;&gt;, чтобы просканировать ее&#xA;на наличие активированных минералов&#xA;Приземлитесь на нужную планету" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_COLLECT_STORM_MSG2_ALT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Обнаружены экстремальные погодные условия&lt;&gt;.&#xA;Сядьте на нужную планету.
                                { "Russian", "&lt;STELLAR&gt;Обнаружены экстремальные погодные условия&lt;&gt;&#xA;Приземлитесь на нужную планету" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_COLLECT_STORM_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите: %ITEM% (&lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;)&#xA;Используйте для поиска &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (%ITEM%).&#xA;Собирайте во время &lt;FUEL&gt;бурь&lt;&gt; следующий ресурс: %ITEM%
                                -- Collect %ITEM%: &lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;&#xA;Use the &lt;TECHNOLOGY&gt;Analysis Visor&lt;&gt; to search for %ITEM%&#xA;Collect %ITEM% during &lt;FUEL&gt;storms&lt;&gt;
                                { "Russian", "Соберите: %ITEM% (&lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;)&#xA;Используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; для поиска&#xA;Собирайте предметы во время &lt;FUEL&gt;бурь&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region UI_MP_COLLECT_FISH
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_COLLECT_FISH_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Обнаружена океаническая планета&lt;&gt;&#xA;Найдите необходимую систему на &lt;TECHNOLOGY&gt;галактической карте&lt;&gt;.&#xA;Находясь на звездолете, откройте галактическую карту (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                { "Russian", "&lt;STELLAR&gt;Обнаружена океаническая планета&lt;&gt;&#xA;Найдите необходимую систему на &lt;TECHNOLOGY&gt;галактической карте&lt;&gt;&#xA;Находясь в космосе, откройте галактическую карту (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_COLLECT_FISH_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Обнаружена океаническая планета&lt;&gt;&#xA;Приземлитесь на нужную планету.
                                { "Russian", "&lt;STELLAR&gt;Обнаружена океаническая планета&lt;&gt;&#xA;Приземлитесь на нужную планету" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_COLLECT_FISH_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите: %ITEM% (&lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;)&#xA;Соберите особей &lt;TECHNOLOGY&gt;под водой&lt;&gt;.&#xA;Используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; для поиска &lt;STELLAR&gt;привлекательных особей&lt;&gt; или &lt;STELLAR&gt;затопленных реликвий&lt;&gt;.
                                -- Collect %ITEM%: &lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;&#xA;Collect the specimens &lt;TECHNOLOGY&gt;underwater&lt;&gt;&#xA;Use the &lt;TECHNOLOGY&gt;Analysis Visor&lt;&gt; to search for &lt;STELLAR&gt;Alluring Specimens&lt;&gt; or &lt;STELLAR&gt;Submerged Relics&lt;&gt;
                                { "Russian", "Соберите: %ITEM% (&lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;)&#xA;Собирайте особей &lt;TECHNOLOGY&gt;под водой&lt;&gt;&#xA;Используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; для поиска &lt;STELLAR&gt;привлекательных особей&lt;&gt; или &lt;STELLAR&gt;затопленных реликвий&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_COLLECT_FISH_SURVEY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите: %ITEM% (&lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;)&#xA;Разделитесь, чтобы исследовать &lt;TECHNOLOGY&gt;дно океана&lt;&gt;.&#xA;Используйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; для поиска &lt;STELLAR&gt;привлекательных особей&lt;&gt; или &lt;STELLAR&gt;затопленных реликвий&lt;&gt;.
                                { "Russian", "Соберите: %ITEM% (&lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;)&#xA;Разделитесь, чтобы исследовать &lt;TECHNOLOGY&gt;дно океана&lt;&gt;&#xA;Используйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; для поиска&#xA;&lt;STELLAR&gt;привлекательных особей&lt;&gt; или &lt;STELLAR&gt;затопленных реликвий&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_COLLECT_FISH_SURVEY_SWAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите: %ITEM% (&lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;)&#xA;Разделитесь, чтобы исследовать &lt;TECHNOLOGY&gt;дно океана&lt;&gt;.&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;.
                                { "Russian", "Соберите: %ITEM% (&lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;)&#xA;Разделитесь, чтобы исследовать &lt;TECHNOLOGY&gt;дно океана&lt;&gt;&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_COLLECT_FISH_SURVEY_OFF" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите: %ITEM% (&lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;)&#xA;Разделитесь, чтобы исследовать &lt;TECHNOLOGY&gt;дно океана&lt;&gt;.&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; для поиска (&lt;IMG&gt;AIM&lt;&gt;) &lt;STELLAR&gt;привлекательных особей&lt;&gt; или &lt;STELLAR&gt;затопленных реликвий&lt;&gt;.
                                -- Collect %ITEM%: &lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;&#xA;Split up to search the &lt;TECHNOLOGY&gt;ocean floor&lt;&gt;&#xA;Activate a &lt;STELLAR&gt;Target Sweep&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;) to locate &lt;STELLAR&gt;Alluring Specimens&lt;&gt; or &lt;STELLAR&gt;Submerged Relics&lt;&gt;
                                { "Russian", "Соберите: %ITEM% (&lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;)&#xA;Разделитесь, чтобы исследовать &lt;TECHNOLOGY&gt;дно океана&lt;&gt;&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;) для поиска&#xA;&lt;STELLAR&gt;привлекательных особей&lt;&gt; или &lt;STELLAR&gt;затопленных реликвий&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region UI_MP_COLLECT_PEARL
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_COLLECT_PEARL_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите: %ITEM% (&lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;)&#xA;Соберите особей &lt;TECHNOLOGY&gt;под водой&lt;&gt;.&#xA;Используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; для поиска &lt;STELLAR&gt;панцирных устриц&lt;&gt;.
                                { "Russian", "Соберите: %ITEM% (&lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;)&#xA;Соберите особей &lt;TECHNOLOGY&gt;под водой&lt;&gt;&#xA;Используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; для поиска &lt;STELLAR&gt;панцирных устриц&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_COLLECT_PEARL_SURVEY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите: %ITEM% (&lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;)&#xA;Разделитесь, чтобы исследовать &lt;TECHNOLOGY&gt;дно океана&lt;&gt;.&#xA;Используйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; для поиска &lt;STELLAR&gt;панцирных устриц&lt;&gt;.
                                { "Russian", "Соберите: %ITEM% (&lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;)&#xA;Разделитесь, чтобы исследовать &lt;TECHNOLOGY&gt;дно океана&lt;&gt;&#xA;Используйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; для поиска &lt;STELLAR&gt;панцирных устриц&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_COLLECT_PEARL_SURVEY_SWAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите: %ITEM% (&lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;)&#xA;Разделитесь, чтобы исследовать &lt;TECHNOLOGY&gt;дно океана&lt;&gt;.&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;.
                                { "Russian", "Соберите: %ITEM% (&lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;)&#xA;Разделитесь, чтобы исследовать &lt;TECHNOLOGY&gt;дно океана&lt;&gt;&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_COLLECT_PEARL_SURVEY_OFF" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите: %ITEM% (&lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;)&#xA;Разделитесь, чтобы исследовать &lt;TECHNOLOGY&gt;дно океана&lt;&gt;.&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;) для поиска &lt;STELLAR&gt;панцирных устриц&lt;&gt;.
                                { "Russian", "Соберите: %ITEM% (&lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;)&#xA;Разделитесь, чтобы исследовать &lt;TECHNOLOGY&gt;дно океана&lt;&gt;&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;) для поиска &lt;STELLAR&gt;панцирных устриц&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region UI_MP_COLLECT_FIEND
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_COLLECT_FIEND_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Обнаружены признаки аномального заражения&lt;&gt;.&#xA;Найдите необходимую систему на &lt;TECHNOLOGY&gt;галактической карте&lt;&gt;.&#xA;Находясь на звездолете, откройте галактическую карту с помощью &lt;IMG&gt;QUICK_MENU&lt;&gt;.
                                -- &lt;STELLAR&gt;Anomalous Infestation Patterns Detected&lt;&gt;&#xA;In the &lt;TECHNOLOGY&gt;Galaxy Map&lt;&gt;, search for the target system&#xA;Access the Galaxy Map with &lt;IMG&gt;QUICK_MENU&lt;&gt; while in the Starship
                                { "Russian", "&lt;STELLAR&gt;Обнаружены признаки аномального заражения&lt;&gt;&#xA;Найдите необходимую систему на &lt;TECHNOLOGY&gt;галактической карте&lt;&gt;&#xA;Находясь в космосе, откройте галактическую карту с помощью &lt;IMG&gt;QUICK_MENU&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_COLLECT_FIEND_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Обнаружены признаки аномального заражения&lt;&gt;&#xA;Нацельтесь на планету и нажмите &lt;IMG&gt;SCAN&lt;&gt;, чтобы просканировать ее на наличие признаков заражения.&#xA;Сядьте на нужную планету.
                                { "Russian", "&lt;STELLAR&gt;Обнаружены признаки аномального заражения&lt;&gt;&#xA;Нацельтесь на планету и нажмите &lt;IMG&gt;SCAN&lt;&gt;, чтобы просканировать ее&#xA;на наличие признаков заражения&#xA;Приземлитесь на нужную планету" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_COLLECT_FIEND_MSG2_ALT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Обнаружены признаки аномального заражения&lt;&gt;&#xA;Сядьте на нужную планету.
                                { "Russian", "&lt;STELLAR&gt;Обнаружены признаки аномального заражения&lt;&gt;&#xA;Приземлитесь на нужную планету" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_COLLECT_FIEND_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите %ITEM%: &lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;&#xA;Используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; для поиска &lt;STELLAR&gt;шепчущих яиц&lt;&gt;&lt;FUEL&gt;&lt;IMG&gt;DANGER&lt;&gt;&lt;&gt;&#xA;Уничтожьте яйца и заберите их ядра
                                -- Collect %ITEM%: &lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;&#xA;Use the &lt;TECHNOLOGY&gt;Analysis Visor&lt;&gt; to search for &lt;STELLAR&gt;Whispering Eggs&lt;&gt; &lt;FUEL&gt;&lt;IMG&gt;DANGER&lt;&gt;&lt;&gt;&#xA;Destroy the eggs to claim their cores
                                { "Russian", "Соберите: %ITEM% (&lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;)&#xA;Используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt;&#xA;для поиска &lt;STELLAR&gt;шепчущих яиц&lt;&gt; &lt;FUEL&gt;&lt;IMG&gt;DANGER&lt;&gt;&lt;&gt;&#xA;Уничтожайте яйца и подбирайте их ядра" },
                            }
                        },
                        --#endregion

                        --#region UI_MP_COLLECT_QUAD
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_COLLECT_QUAD_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Обнаружена активность стражей&lt;&gt;&#xA;Найдите необходимую систему на &lt;TECHNOLOGY&gt;галактической карте&lt;&gt;.&#xA;Находясь на звездолете, откройте галактическую карту с помощью &lt;IMG&gt;QUICK_MENU&lt;&gt;.
                                { "Russian", "&lt;STELLAR&gt;Обнаружена активность стражей&lt;&gt;&#xA;Найдите необходимую систему на &lt;TECHNOLOGY&gt;галактической карте&lt;&gt;&#xA;Находясь в космосе, откройте галактическую карту с помощью &lt;IMG&gt;QUICK_MENU&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_COLLECT_QUAD_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Обнаружена активность стражей&lt;&gt;&#xA;Сядьте на нужную планету.
                                { "Russian", "&lt;STELLAR&gt;Обнаружена активность стражей&lt;&gt;&#xA;Приземлитесь на нужную планету" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_COLLECT_QUAD_MSG2_ALT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Обнаружена активность стражей&lt;&gt;&#xA;Доберитесь до нужного здания.
                                { "Russian", "&lt;STELLAR&gt;Обнаружена активность стражей&lt;&gt;&#xA;Доберитесь до нужного здания" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_COLLECT_QUAD_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите: %ITEM% (&lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;)&#xA;Найдите &lt;SPECIAL&gt;стражей&lt;&gt; и вступите с ними в бой.
                                -- Collect %ITEM%: &lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;&#xA;Locate and engage &lt;SPECIAL&gt;Sentinel Forces&lt;&gt;
                                { "Russian", "Соберите: %ITEM% (&lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;)&#xA;Найдите &lt;SPECIAL&gt;стражей&lt;&gt; и вступите с ними в бой" },
                            }
                        },
                        --#endregion

                        --#region UI_MP_COLLECT_DELIV
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_COLLECT_DELIVERY_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Доставьте предмет «%PRIMARYITEM%».&#xA;Найдите защищенный склад.
                                -- Deliver the %PRIMARYITEM%&#xA;Locate the secure depot
                                { "Russian", "Доставьте предмет на охраняемый склад&#xA;Груз: %PRIMARYITEM%" },
                            }
                        },
                        --#endregion

                        --#region UI_MP_COLLECT_EXYE
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_COLLECT_EXYELLOW_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Обнаружена активированная медь&lt;&gt;.&#xA;Доберитесь до нужной планеты.
                                { "Russian", "&lt;STELLAR&gt;Обнаружена активированная медь&lt;&gt;&#xA;Доберитесь до нужной планеты" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_COLLECT_EXYELLOW_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вы добрались до нужной планеты.&#xA;Приземлитесь на поверхность, чтобы искать &lt;STELLAR&gt;залежи активированной меди&lt;&gt;.
                                { "Russian", "Вы добрались до нужной планеты&#xA;Приземлитесь и начните поиски&#xA;&lt;STELLAR&gt;залежей активированной меди&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region UI_MP_COLLECT_EXRED
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_COLLECT_EXRED_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Обнаружен активированный кадмий&lt;&gt;.&#xA;Доберитесь до нужной планеты.
                                { "Russian", "&lt;STELLAR&gt;Обнаружен активированный кадмий&lt;&gt;&#xA;Доберитесь до нужной планеты" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_COLLECT_EXRED_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вы добрались до нужной планеты.&#xA;Приземлитесь на поверхность, чтобы искать &lt;STELLAR&gt;залежи активированного кадмия&lt;&gt;.
                                { "Russian", "Вы добрались до нужной планеты&#xA;Приземлитесь, чтобы начать поиски&#xA;&lt;STELLAR&gt;залежей активированного кадмия&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region UI_MP_COLLECT_RED
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_COLLECT_RED_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Обнаружен кадмий&lt;&gt;.&#xA;Доберитесь до нужной планеты.
                                { "Russian", "&lt;STELLAR&gt;Обнаружен кадмий&lt;&gt;&#xA;Доберитесь до нужной планеты" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_COLLECT_RED_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вы добрались до нужной планеты.&#xA;Приземлитесь на поверхность, чтобы искать &lt;STELLAR&gt;залежи кадмия&lt;&gt;.
                                { "Russian", "Вы добрались до нужной планеты&#xA;Приземлитесь и начните поиски&#xA;&lt;STELLAR&gt;залежей кадмия&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region UI_MP_COLLECT_EXGREEN
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_COLLECT_EXGREEN_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Обнаружен активированный эмерил&lt;&gt;.&#xA;Доберитесь до нужной планеты.
                                { "Russian", "&lt;STELLAR&gt;Обнаружен активированный эмерил&lt;&gt;&#xA;Доберитесь до нужной планеты" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_COLLECT_EXGREEN_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вы добрались до нужной планеты.&#xA;Приземлитесь на поверхность, чтобы искать &lt;STELLAR&gt;залежи активированного эмерила&lt;&gt;.
                                { "Russian", "Вы добрались до нужной планеты&#xA;Приземлитесь, чтобы начать поиски&#xA;&lt;STELLAR&gt;залежей активированного эмерила&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region UI_MP_COLLECT_EXBLUE
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_COLLECT_EXBLUE_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Обнаружен активированный индий&lt;&gt;.&#xA;Доберитесь до нужной планеты.
                                { "Russian", "&lt;STELLAR&gt;Обнаружен активированный индий&lt;&gt;&#xA;Доберитесь до нужной планеты" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_COLLECT_EXBLUE_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вы добрались до нужной планеты.&#xA;Приземлитесь на поверхность, чтобы искать &lt;STELLAR&gt;залежи активированного индия&lt;&gt;.
                                { "Russian", "Вы добрались до нужной планеты&#xA;Приземлитесь, чтобы начать поиски&#xA;&lt;STELLAR&gt;залежей активированного индия&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region "UI_MP_FEEDING
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_FEEDING_PLANET_LABEL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Планета животных
                                -- Fauna Dense Planet
                                { "Russian", "Планета с богатой фауной" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_FEEDING_PLANET_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружена планета животных
                                -- Fauna Dense Planet Located
                                { "Russian", "Обнаружена планета с богатой фауной" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_FEEDING_OBJ1_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружена &lt;STELLAR&gt;планета животных&lt;&gt;&#xA;Эволюционный алгоритм Поло предсказывает расположение биологически интересных мест на выбранной планете.
                                -- &lt;STELLAR&gt;Fauna dense planet&lt;&gt; located.&#xA;Polo's evolutionary algorithm predicts sites of biological interest on target planet.
                                { "Russian", "Обнаружена &lt;STELLAR&gt;планета с богатой фауной&lt;&gt;.&#xA;Эволюционный алгоритм Поло предсказывает расположение биологически интересных мест на выбранной планете." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_FEEDING_OBJ3_TIP_ALT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Создать приманку можно в &lt;TECHNOLOGY&gt;переработчике нутриентов&lt;&gt;.&#xA;&lt;TRADEABLE&gt;Приманка для травоядных&lt;&gt; делается из &lt;TRADEABLE&gt;коприта&lt;&gt; и &lt;TRADEABLE&gt;заготавливаемых растений&lt;&gt;.&#xA;&lt;FUEL&gt;Приманка для хищников&lt;&gt; делается из &lt;SPECIAL&gt;мордита&lt;&gt; и &lt;FUEL&gt;мяса животных&lt;&gt;.&#xA;Используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt;&lt;IMG&gt;AIM&lt;&gt;для поиска &lt;TRADEABLE&gt;заготавливаемых растений&lt;IMG&gt;HARVESTPLANT&lt;&gt;&lt;&gt;.&#xA;Взаимодействуйте с животными, чтобы собирать &lt;TRADEABLE&gt;коприт&lt;&gt;.
                                -- Create bait in the &lt;TECHNOLOGY&gt;Nutrient Processor&lt;&gt;.&#xA;&lt;TRADEABLE&gt;Herbivore Bait&lt;&gt; is made from &lt;TRADEABLE&gt;Coprite&lt;&gt; and &lt;TRADEABLE&gt;harvestable plants&lt;&gt;.&#xA;&lt;FUEL&gt;Carnivore Bait&lt;&gt; is made from &lt;SPECIAL&gt;Mordite&lt;&gt; and &lt;FUEL&gt;creature meat&lt;&gt;.&#xA;Use the &lt;TECHNOLOGY&gt;Analysis Visor&lt;&gt; &lt;IMG&gt;AIM&lt;&gt;to search this planet for &lt;TRADEABLE&gt;harvestable plants &lt;IMG&gt;HARVESTPLANT&lt;&gt;&lt;&gt;.&#xA;Interact with creatures to gather &lt;TRADEABLE&gt;Coprite&lt;&gt;.
                                { "Russian", "Создать приманку можно в &lt;TECHNOLOGY&gt;переработчике нутриентов&lt;&gt;.&#xA;&lt;TRADEABLE&gt;Приманка для травоядных&lt;&gt; делается из &lt;TRADEABLE&gt;коприта&lt;&gt; и &lt;TRADEABLE&gt;заготавливаемых растений&lt;&gt;.&#xA;&lt;FUEL&gt;Приманка для хищников&lt;&gt; делается из &lt;SPECIAL&gt;мордита&lt;&gt; и &lt;FUEL&gt;мяса животных&lt;&gt;.&#xA;Используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; &lt;IMG&gt;AIM&lt;&gt;для поиска &lt;TRADEABLE&gt;заготавливаемых растений &lt;IMG&gt;HARVESTPLANT&lt;&gt;&lt;&gt;.&#xA;Взаимодействуйте с животными, чтобы собирать &lt;TRADEABLE&gt;коприт&lt;&gt;." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_FEEDING_OBJ2_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Создать приманку можно в &lt;TECHNOLOGY&gt;переработчике нутриентов&lt;&gt;.&#xA;&lt;TRADEABLE&gt;Приманка для травоядных&lt;&gt; делается из &lt;FUEL&gt;фекалия&lt;&gt; и &lt;TRADEABLE&gt;заготавливаемых растений&lt;&gt;.&#xA;Используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt;&lt;IMG&gt;AIM&lt;&gt;для поиска &lt;TRADEABLE&gt;заготавливаемых растений&lt;IMG&gt;HARVESTPLANT&lt;&gt;&lt;&gt;.&#xA;Взаимодействуйте с животными, чтобы собирать &lt;FUEL&gt;фекалий&lt;&gt;.
                                { "Russian", "Создать приманку можно в &lt;TECHNOLOGY&gt;переработчике нутриентов&lt;&gt;.&#xA;&lt;TRADEABLE&gt;Приманка для травоядных&lt;&gt; делается из &lt;FUEL&gt;фекалия&lt;&gt; и &lt;TRADEABLE&gt;заготавливаемых растений&lt;&gt;.&#xA;Используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; &lt;IMG&gt;AIM&lt;&gt;для поиска &lt;TRADEABLE&gt;заготавливаемых растений &lt;IMG&gt;HARVESTPLANT&lt;&gt;&lt;&gt;.&#xA;Взаимодействуйте с животными, чтобы собирать &lt;FUEL&gt;фекалий&lt;&gt;." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_FEEDING_OBJ2_TIP_ALT1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Создать приманку можно в &lt;TECHNOLOGY&gt;переработчике нутриентов&lt;&gt;.&#xA;&lt;TRADEABLE&gt;Приманка для травоядных&lt;&gt; делается из &lt;TRADEABLE&gt;коприта&lt;&gt; и &lt;TRADEABLE&gt;заготавливаемых растений&lt;&gt;.&#xA;Используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt;&lt;IMG&gt;AIM&lt;&gt;для поиска &lt;TRADEABLE&gt;заготавливаемых растений&lt;IMG&gt;HARVESTPLANT&lt;&gt;&lt;&gt;.&#xA;Взаимодействуйте с животными, чтобы собирать &lt;TRADEABLE&gt;коприт&lt;&gt;.
                                { "Russian", "Создать приманку можно в &lt;TECHNOLOGY&gt;переработчике нутриентов&lt;&gt;.&#xA;&lt;TRADEABLE&gt;Приманка для травоядных&lt;&gt; делается из &lt;TRADEABLE&gt;коприта&lt;&gt; и &lt;TRADEABLE&gt;заготавливаемых растений&lt;&gt;.&#xA;Используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; &lt;IMG&gt;AIM&lt;&gt;для поиска &lt;TRADEABLE&gt;заготавливаемых растений &lt;IMG&gt;HARVESTPLANT&lt;&gt;&lt;&gt;.&#xA;Взаимодействуйте с животными, чтобы собирать &lt;TRADEABLE&gt;коприт&lt;&gt;." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_FEEDING_OBJ2_TIP_ALT2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Создать приманку можно в &lt;TECHNOLOGY&gt;переработчике нутриентов&lt;&gt;.&#xA;&lt;TRADEABLE&gt;Приманка для травоядных&lt;&gt; делается из &lt;FUEL&gt;навоза&lt;&gt; и &lt;TRADEABLE&gt;заготавливаемых растений&lt;&gt;.&#xA;Используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt;&lt;IMG&gt;AIM&lt;&gt;для поиска &lt;TRADEABLE&gt;заготавливаемых растений&lt;IMG&gt;HARVESTPLANT&lt;&gt;&lt;&gt;.&#xA;Взаимодействуйте с животными, чтобы собирать &lt;FUEL&gt;навоз&lt;&gt;.
                                { "Russian", "Создать приманку можно в &lt;TECHNOLOGY&gt;переработчике нутриентов&lt;&gt;.&#xA;&lt;TRADEABLE&gt;Приманка для травоядных&lt;&gt; делается из &lt;FUEL&gt;навоза&lt;&gt; и &lt;TRADEABLE&gt;заготавливаемых растений&lt;&gt;.&#xA;Используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; &lt;IMG&gt;AIM&lt;&gt;для поиска &lt;TRADEABLE&gt;заготавливаемых растений &lt;IMG&gt;HARVESTPLANT&lt;&gt;&lt;&gt;.&#xA;Взаимодействуйте с животными, чтобы собирать &lt;FUEL&gt;навоз&lt;&gt;." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_FEEDING_OBJ3_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Создать &lt;TRADEABLE&gt;приманку для травоядных&lt;&gt; можно в &lt;TECHNOLOGY&gt;переработчике нутриентов&lt;&gt;.&#xA;Попробуйте смешать &lt;FUEL&gt;фекалий&lt;&gt; и &lt;TRADEABLE&gt;заготавливаемые растения &lt;IMG&gt;HARVESTPLANT&lt;&gt;&lt;&gt;, чтобы изготовить различные типы приманки.&#xA;&lt;TRADEABLE&gt;Подслащенный компост&lt;&gt; изготавливается из &lt;TRADEABLE&gt;фекалия&lt;&gt; и &lt;TRADEABLE&gt;других типов приманки&lt;&gt;.&#xA;Для разных травоядных нужна разная приманка. Узнайте их &lt;STELLAR&gt;предпочтения&lt;&gt; с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;&lt;IMG&gt;AIM&lt;&gt;.&#xA;Использовать приманку можно в разделе &lt;TECHNOLOGY&gt;Инструменты&lt;&gt; в быстром меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                { "Russian", "Создать &lt;TRADEABLE&gt;приманку для травоядных&lt;&gt; можно в &lt;TECHNOLOGY&gt;переработчике нутриентов&lt;&gt;.&#xA;Попробуйте смешать &lt;FUEL&gt;фекалий&lt;&gt; и &lt;TRADEABLE&gt;заготавливаемые растения &lt;IMG&gt;HARVESTPLANT&lt;&gt;&lt;&gt;, чтобы изготовить различные типы приманки.&#xA;&lt;TRADEABLE&gt;Подслащенный компост&lt;&gt; изготавливается из &lt;TRADEABLE&gt;фекалия&lt;&gt; и &lt;TRADEABLE&gt;других типов приманки&lt;&gt;.&#xA;Для разных травоядных нужна разная приманка. Узнайте их &lt;STELLAR&gt;предпочтения&lt;&gt; с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt; &lt;IMG&gt;AIM&lt;&gt;.&#xA;Использовать приманку можно в разделе &lt;TECHNOLOGY&gt;Инструменты&lt;&gt; в быстром меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_FEEDING_OBJ3_TIP_ALT1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Создать &lt;TRADEABLE&gt;приманку для травоядных&lt;&gt; можно в &lt;TECHNOLOGY&gt;переработчике нутриентов&lt;&gt;.&#xA;Попробуйте смешать &lt;TRADEABLE&gt;коприт&lt;&gt; и &lt;TRADEABLE&gt;заготавливаемые растения &lt;IMG&gt;HARVESTPLANT&lt;&gt;&lt;&gt;, чтобы изготовить различные типы приманки.&#xA;&lt;TRADEABLE&gt;Подслащенный компост&lt;&gt; изготавливается из &lt;TRADEABLE&gt;коприта&lt;&gt; и &lt;TRADEABLE&gt;других типов приманки&lt;&gt;.&#xA;Для разных травоядных нужна разная приманка. Узнайте их &lt;STELLAR&gt;предпочтения&lt;&gt; с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;&lt;IMG&gt;AIM&lt;&gt;.&#xA;Использовать приманку можно в разделе &lt;TECHNOLOGY&gt;Инструменты&lt;&gt; в быстром меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                { "Russian", "Создать &lt;TRADEABLE&gt;приманку для травоядных&lt;&gt; можно в &lt;TECHNOLOGY&gt;переработчике нутриентов&lt;&gt;.&#xA;Попробуйте смешать &lt;TRADEABLE&gt;коприт&lt;&gt; и &lt;TRADEABLE&gt;заготавливаемые растения &lt;IMG&gt;HARVESTPLANT&lt;&gt;&lt;&gt;, чтобы изготовить различные типы приманки.&#xA;&lt;TRADEABLE&gt;Подслащенный компост&lt;&gt; изготавливается из &lt;TRADEABLE&gt;коприта&lt;&gt; и &lt;TRADEABLE&gt;других типов приманки&lt;&gt;.&#xA;Для разных травоядных нужна разная приманка. Узнайте их &lt;STELLAR&gt;предпочтения&lt;&gt; с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt; &lt;IMG&gt;AIM&lt;&gt;.&#xA;Использовать приманку можно в разделе &lt;TECHNOLOGY&gt;Инструменты&lt;&gt; в быстром меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_FEEDING_OBJ3_TIP_ALT2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Создать &lt;TRADEABLE&gt;приманку для травоядных&lt;&gt; можно в &lt;TECHNOLOGY&gt;переработчике нутриентов&lt;&gt;.&#xA;Попробуйте смешать &lt;FUEL&gt;навоз&lt;&gt; и &lt;TRADEABLE&gt;заготавливаемые растения &lt;IMG&gt;HARVESTPLANT&lt;&gt;&lt;&gt;, чтобы изготовить различные типы приманки.&#xA;&lt;TRADEABLE&gt;Подслащенный компост&lt;&gt; изготавливается из &lt;FUEL&gt;навоза&lt;&gt; и &lt;TRADEABLE&gt;других типов приманки&lt;&gt;.&#xA;Для разных травоядных нужна разная приманка. Узнайте их &lt;STELLAR&gt;предпочтения&lt;&gt; с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;&lt;IMG&gt;AIM&lt;&gt;.&#xA;Использовать приманку можно в разделе &lt;TECHNOLOGY&gt;Инструменты&lt;&gt; в быстром меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                { "Russian", "Создать &lt;TRADEABLE&gt;приманку для травоядных&lt;&gt; можно в &lt;TECHNOLOGY&gt;переработчике нутриентов&lt;&gt;.&#xA;Попробуйте смешать &lt;FUEL&gt;навоз&lt;&gt; и &lt;TRADEABLE&gt;заготавливаемые растения &lt;IMG&gt;HARVESTPLANT&lt;&gt;&lt;&gt;, чтобы изготовить различные типы приманки.&#xA;&lt;TRADEABLE&gt;Подслащенный компост&lt;&gt; изготавливается из &lt;FUEL&gt;навоза&lt;&gt; и &lt;TRADEABLE&gt;других типов приманки&lt;&gt;.&#xA;Для разных травоядных нужна разная приманка. Узнайте их &lt;STELLAR&gt;предпочтения&lt;&gt; с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt; &lt;IMG&gt;AIM&lt;&gt;.&#xA;Использовать приманку можно в разделе &lt;TECHNOLOGY&gt;Инструменты&lt;&gt; в быстром меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_FEEDING_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружена &lt;STELLAR&gt;планета животных&lt;&gt;&#xA;Доберитесь до нужной планеты
                                { "Russian", "Обнаружена &lt;STELLAR&gt;планета с богатой фауной&lt;&gt;&#xA;Доберитесь до нужной планеты" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_FEEDING_MSG1A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вы достигли &lt;STELLAR&gt;планеты животных&lt;&gt;.&#xA;Приземлитесь на ее поверхность.
                                { "Russian", "Вы достигли &lt;STELLAR&gt;планеты с богатой фауной&lt;&gt;&#xA;Приземлитесь на ее поверхность" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_FEEDING_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Используйте &lt;TECHNOLOGY&gt;переработчик нутриентов&lt;&gt;, чтобы изготовить приманку&#xA;Чтобы открыть меню созидания, нажмите &lt;IMG&gt;BUILD_MENU&lt;&gt;
                                -- Deploy a &lt;TECHNOLOGY&gt;Nutrient Processor&lt;&gt; to create bait&#xA;Access the Build Menu with &lt;IMG&gt;BUILD_MENU&lt;&gt;
                                { "Russian", "Используйте &lt;TECHNOLOGY&gt;переработчик нутриентов&lt;&gt;, чтобы изготовить приманку&#xA;Откройте меню строительства, нажав &lt;IMG&gt;BUILD_MENU&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_FEEDING_MSG2A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите %ITEM%, чтобы создать приманку.&#xA;Взаимодействуйте с животными, чтобы собирать %ITEM%.&#xA;Чтобы обнаружить животных, ищите &lt;FUEL&gt;красные&lt;&gt; и &lt;TRADEABLE&gt;зеленые&lt;&gt; точки с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;.
                                -- Gather %ITEM% to create bait&#xA;Interact with creatures to gather %ITEM%&#xA;Look for &lt;FUEL&gt;red&lt;&gt; and &lt;TRADEABLE&gt;green&lt;&gt; dots in the &lt;TECHNOLOGY&gt;Analysis Visor&lt;&gt; to locate creatures
                                { "Russian", "Соберите %ITEM%, чтобы создать приманку&#xA;Взаимодействуйте с животными, чтобы собирать %ITEM%&#xA;Ищите &lt;FUEL&gt;красные&lt;&gt; и &lt;TRADEABLE&gt;зеленые&lt;&gt; точки в &lt;TECHNOLOGY&gt;анализирующем визоре&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_FEEDING_MSG2B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Собирайте &lt;TRADEABLE&gt;заготавливаемые растения&lt;&gt;, чтобы создавать приманку.&#xA;Используйте &lt;TECHNOLOGY&gt;анализирующий визор &lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;) для поиска &lt;TRADEABLE&gt;заготавливаемых растений&lt;IMG&gt;HARVESTPLANT&lt;&gt;&lt;&gt;.
                                -- Gather &lt;TRADEABLE&gt;harvestable plants&lt;&gt; to create bait&#xA;Use the &lt;TECHNOLOGY&gt;Analysis Visor&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;) to search this planet for &lt;TRADEABLE&gt;harvestable plants &lt;IMG&gt;HARVESTPLANT&lt;&gt;&lt;&gt;
                                { "Russian", "Собирайте &lt;TRADEABLE&gt;заготавливаемые растения&lt;&gt;, чтобы создавать приманку&#xA;Используйте &lt;TECHNOLOGY&gt;анализирующий визор &lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;) для поиска &lt;TRADEABLE&gt;заготавливаемых растений &lt;IMG&gt;HARVESTPLANT&lt;&gt;&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_FEEDING_MSG2C" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Создать приманку можно в &lt;TECHNOLOGY&gt;переработчике нутриентов&lt;&gt;.&#xA;Чтобы узнать &lt;STELLAR&gt;вкусовые предпочтения&lt;&gt; животных, сканируйте их &lt;TECHNOLOGY&gt;анализирующим визором&lt;&gt;&lt;IMG&gt;AIM&lt;&gt;&#xA;Разные типы &lt;TRADEABLE&gt;приманки для травоядных&lt;&gt; можно изготовить из &lt;FUEL&gt;фекалия&lt;&gt; и &lt;TRADEABLE&gt;собираемых растений &lt;IMG&gt;HARVESTPLANT&lt;&gt;&lt;&gt;.
                                -- Create bait in the &lt;TECHNOLOGY&gt;Nutrient Processor&lt;&gt;&#xA;Scan creatures with the &lt;TECHNOLOGY&gt;Analysis Visor&lt;&gt; &lt;IMG&gt;AIM&lt;&gt; to discover their &lt;STELLAR&gt;bait preference&lt;&gt;&#xA;Types of &lt;TRADEABLE&gt;Herbivore Bait&lt;&gt; can be made from &lt;FUEL&gt;Faecium&lt;&gt; and &lt;TRADEABLE&gt;harvestable plants &lt;IMG&gt;HARVESTPLANT&lt;&gt;&lt;&gt;
                                { "Russian", "Создайте приманку в &lt;TECHNOLOGY&gt;переработчике нутриентов&lt;&gt;&#xA;Чтобы узнать &lt;STELLAR&gt;вкусовые предпочтения&lt;&gt; животных, сканируйте их &lt;TECHNOLOGY&gt;анализирующим визором&lt;&gt; &lt;IMG&gt;AIM&lt;&gt;&#xA;&lt;TRADEABLE&gt;Приманки для травоядных&lt;&gt; можно изготовить из &lt;FUEL&gt;фекалия&lt;&gt; и &lt;TRADEABLE&gt;собираемых растений &lt;IMG&gt;HARVESTPLANT&lt;&gt;&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_FEEDING_MSG2C_ALT1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Создать приманку можно в &lt;TECHNOLOGY&gt;переработчике нутриентов&lt;&gt;.&#xA;Разные типы &lt;TRADEABLE&gt;приманки для травоядных&lt;&gt; можно изготовить из &lt;FUEL&gt;фекалия&lt;&gt; и &lt;TRADEABLE&gt;собираемых растений &lt;IMG&gt;HARVESTPLANT&lt;&gt;&lt;&gt;.
                                { "Russian", "Создайте приманку в &lt;TECHNOLOGY&gt;переработчике нутриентов&lt;&gt;&#xA;&lt;TRADEABLE&gt;Приманки для травоядных&lt;&gt; можно изготовить из &lt;FUEL&gt;фекалия&lt;&gt; и &lt;TRADEABLE&gt;собираемых растений &lt;IMG&gt;HARVESTPLANT&lt;&gt;&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_FEEDING_MSG2C_ALT2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Создать приманку можно в &lt;TECHNOLOGY&gt;переработчике нутриентов&lt;&gt;.&#xA;Разные типы &lt;TRADEABLE&gt;приманки для травоядных&lt;&gt; можно изготовить из &lt;TRADEABLE&gt;коприта&lt;&gt; и &lt;TRADEABLE&gt;заготавливаемых растений &lt;IMG&gt;HARVESTPLANT&lt;&gt;&lt;&gt;.
                                { "Russian", "Создайте приманку в &lt;TECHNOLOGY&gt;переработчике нутриентов&lt;&gt;&#xA;&lt;TRADEABLE&gt;Приманки для травоядных&lt;&gt; можно изготовить из &lt;TRADEABLE&gt;коприта&lt;&gt; и &lt;TRADEABLE&gt;заготавливаемых растений &lt;IMG&gt;HARVESTPLANT&lt;&gt;&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_FEEDING_MSG2C_ALT3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Создать приманку можно в &lt;TECHNOLOGY&gt;переработчике нутриентов&lt;&gt;.&#xA;Разные типы &lt;TRADEABLE&gt;приманки для травоядных&lt;&gt; можно изготовить из &lt;FUEL&gt;навоза&lt;&gt; и &lt;TRADEABLE&gt;заготавливаемых растений &lt;IMG&gt;HARVESTPLANT&lt;&gt;&lt;&gt;.
                                { "Russian", "Создайте приманку в &lt;TECHNOLOGY&gt;переработчике нутриентов&lt;&gt;&#xA;&lt;TRADEABLE&gt;Приманки для травоядных&lt;&gt; можно изготовить из &lt;FUEL&gt;навоза&lt;&gt; и &lt;TRADEABLE&gt;заготавливаемых растений &lt;IMG&gt;HARVESTPLANT&lt;&gt;&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_FEEDING_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Приручайте животных с помощью приманки для травоядных: %CURRENT%/%AMOUNT%&#xA;Смешивайте &lt;FUEL&gt;фекалий&lt;&gt; с различными собираемыми растениями &lt;TRADEABLE&gt;&lt;IMG&gt;HARVESTPLANT&lt;&gt;&lt;&gt;, чтобы создавать разные приманки&#xA;Чтобы узнать &lt;STELLAR&gt;вкусовые предпочтения&lt;&gt; животных, сканируйте их &lt;TECHNOLOGY&gt;анализирующим визором&lt;&gt;&lt;IMG&gt;AIM&lt;&gt;&#xA;Использовать приманку можно в разделе &lt;TECHNOLOGY&gt;Инструменты&lt;&gt; в &lt;TECHNOLOGY&gt;быстром меню&lt;&gt;
                                -- Tame creatures with Herbivore Bait: %CURRENT%/%AMOUNT%&#xA;Combine &lt;FUEL&gt;Faecium&lt;&gt; with different &lt;TRADEABLE&gt;harvestable plants &lt;IMG&gt;HARVESTPLANT&lt;&gt;&lt;&gt; to create different baits&#xA;Scan creatures with the &lt;TECHNOLOGY&gt;Analysis Visor&lt;&gt; &lt;IMG&gt;AIM&lt;&gt; to discover their &lt;STELLAR&gt;bait preference&lt;&gt;&#xA;Deploy bait from &lt;TECHNOLOGY&gt;Utilities&lt;&gt; in the &lt;TECHNOLOGY&gt;Quick Menu&lt;&gt;
                                { "Russian", "Приручите животных с помощью приманки для травоядных: %CURRENT%/%AMOUNT%&#xA;Смешивайте &lt;FUEL&gt;фекалий&lt;&gt; с различными &lt;TRADEABLE&gt;собираемыми растениями &lt;IMG&gt;HARVESTPLANT&lt;&gt;&lt;&gt;, чтобы создавать разные приманки&#xA;Чтобы узнать &lt;STELLAR&gt;вкусовые предпочтения&lt;&gt; животных, сканируйте их &lt;TECHNOLOGY&gt;анализирующим визором&lt;&gt; &lt;IMG&gt;AIM&lt;&gt;&#xA;Использовать приманку можно из раздела &lt;TECHNOLOGY&gt;Инструменты&lt;&gt; в &lt;TECHNOLOGY&gt;быстром меню&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_FEEDING_MSG3_ALT1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Приручайте животных с помощью приманки для травоядных: %CURRENT%/%AMOUNT%&#xA;Смешивайте &lt;TRADEABLE&gt;коприт&lt;&gt; с различными &lt;TRADEABLE&gt;заготавливаемыми растениями &lt;IMG&gt;HARVESTPLANT&lt;&gt;&lt;&gt;, чтобы создавать разные приманки&#xA;Чтобы узнать &lt;STELLAR&gt;вкусовые предпочтения&lt;&gt; животных, сканируйте их &lt;TECHNOLOGY&gt;анализирующим визором&lt;&gt;&lt;IMG&gt;AIM&lt;&gt;&#xA;Использовать приманку можно в разделе &lt;TECHNOLOGY&gt;Инструменты&lt;&gt; в &lt;TECHNOLOGY&gt;быстром меню&lt;&gt;
                                { "Russian", "Приручите животных с помощью приманки для травоядных: %CURRENT%/%AMOUNT%&#xA;Смешивайте &lt;TRADEABLE&gt;коприт&lt;&gt; с различными &lt;TRADEABLE&gt;заготавливаемыми растениями &lt;IMG&gt;HARVESTPLANT&lt;&gt;&lt;&gt;, чтобы создавать разные приманки&#xA;Чтобы узнать &lt;STELLAR&gt;вкусовые предпочтения&lt;&gt; животных, сканируйте их &lt;TECHNOLOGY&gt;анализирующим визором&lt;&gt; &lt;IMG&gt;AIM&lt;&gt;&#xA;Использовать приманку можно из раздела &lt;TECHNOLOGY&gt;Инструменты&lt;&gt; в &lt;TECHNOLOGY&gt;быстром меню&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_FEEDING_MSG3_ALT2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Приручайте животных с помощью приманки для травоядных: %CURRENT%/%AMOUNT%&#xA;Смешивайте &lt;FUEL&gt;навоз&lt;&gt; с различными &lt;TRADEABLE&gt;заготавливаемыми растениями &lt;IMG&gt;HARVESTPLANT&lt;&gt;&lt;&gt;, чтобы создавать разные приманки&#xA;Чтобы узнать &lt;STELLAR&gt;вкусовые предпочтения&lt;&gt; животных, сканируйте их &lt;TECHNOLOGY&gt;анализирующим визором&lt;&gt;&lt;IMG&gt;AIM&lt;&gt;&#xA;Использовать приманку можно в разделе &lt;TECHNOLOGY&gt;Инструменты&lt;&gt; в &lt;TECHNOLOGY&gt;быстром меню&lt;&gt;
                                { "Russian", "Приручите животных с помощью приманки для травоядных: %CURRENT%/%AMOUNT%&#xA;Смешивайте &lt;FUEL&gt;навоз&lt;&gt; с различными &lt;TRADEABLE&gt;заготавливаемыми растениями &lt;IMG&gt;HARVESTPLANT&lt;&gt;&lt;&gt;, чтобы создавать разные приманки&#xA;Чтобы узнать &lt;STELLAR&gt;вкусовые предпочтения&lt;&gt; животных, сканируйте их &lt;TECHNOLOGY&gt;анализирующим визором&lt;&gt; &lt;IMG&gt;AIM&lt;&gt;&#xA;Использовать приманку можно из раздела &lt;TECHNOLOGY&gt;Инструменты&lt;&gt; в &lt;TECHNOLOGY&gt;быстром меню&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_FEEDING_BASIC_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Приручите диких существ с помощью &lt;TRADEABLE&gt;питательных гранул&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Чтобы обнаружить их, используйте анализирующий визор (&lt;IMG&gt;AIM&lt;&gt;).&#xA;В визоре ищите &lt;FUEL&gt;красные точки&lt;&gt; или &lt;TRADEABLE&gt;зеленые следы лап&lt;&gt;.
                                -- Tame wildlife with &lt;TRADEABLE&gt;Creature Pellets&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Locate creatures using the Analysis Visor (&lt;IMG&gt;AIM&lt;&gt;)&#xA;In the Visor, look for &lt;FUEL&gt;red dots&lt;&gt; or &lt;TRADEABLE&gt;green pawprints&lt;&gt;
                                { "Russian", "Приручите диких существ с помощью &lt;TRADEABLE&gt;питательных гранул&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Чтобы обнаружить их, используйте анализирующий визор (&lt;IMG&gt;AIM&lt;&gt;)&#xA;В визоре ищите &lt;FUEL&gt;красные точки&lt;&gt; или &lt;TRADEABLE&gt;зеленые следы лап&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region UI_MP_PLANTKILL
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_PLANTKILL_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружен участок &lt;STELLAR&gt;нашествия растений&lt;&gt;.&#xA;Обнаружена сигнатура экзокостюма погибшего странника&#xA;Доберитесь до нужной планеты.
                                -- Site of &lt;STELLAR&gt;floral infestation&lt;&gt; located&#xA;Fallen traveller exosuit signature detected&#xA;Reach the target planet
                                { "Russian", "Найдено место &lt;STELLAR&gt;нашествия растений&lt;&gt;&#xA;Обнаружена сигнатура экзокостюма погибшего странника&#xA;Доберитесь до нужной планеты" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_PLANTKILL_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вы добрались до нужной планеты.&#xA;Обнаружена сигнатура экзокостюма &lt;STELLAR&gt;погибшего странника&lt;&gt;.&#xA;Осмотрите &lt;STELLAR&gt;заросший растениями&lt;&gt; участок.
                                { "Russian", "Вы добрались до нужной планеты&#xA;Обнаружена сигнатура экзокостюма &lt;STELLAR&gt;погибшего странника&lt;&gt;&#xA;Осмотрите &lt;STELLAR&gt;заросший растениями&lt;&gt; участок" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_PLANTKILL_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Уничтожьте &lt;FUEL&gt;опасную флору&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Разделитесь, чтобы обследовать поверхность планеты и подземные пещеры.&#xA;&lt;TECHNOLOGY&gt;Анализирующий визор&lt;&gt;&lt;IMG&gt;AIM&lt;&gt; обнаруживает опасную флору &lt;IMG&gt;DANGER&lt;&gt; с небольшого расстояния.
                                -- Eliminate &lt;FUEL&gt;Hazardous Flora&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Split up to search the planet surface and any underground caves&#xA;The &lt;TECHNOLOGY&gt;Analysis Visor&lt;&gt; &lt;IMG&gt;AIM&lt;&gt; can detect hazardous flora &lt;IMG&gt;DANGER&lt;&gt; at short range
                                { "Russian", "Уничтожьте &lt;FUEL&gt;опасную флору&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Разделитесь, чтобы обследовать поверхность планеты и подземные пещеры&#xA;Находите опасную флору &lt;IMG&gt;DANGER&lt;&gt;, используя &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; &lt;IMG&gt;AIM&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_PLANTKILL_SURVEY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Уничтожьте &lt;FUEL&gt;опасную флору&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Разделитесь, чтобы обследовать поверхность планеты и подземные пещеры.&#xA;Используйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt;, чтобы обнаружить опасные растения.
                                -- Eliminate &lt;FUEL&gt;Hazardous Flora&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Split up to search the planet surface and any underground caves&#xA;Use the &lt;TECHNOLOGY&gt;Target Sweep&lt;&gt; to locate dangerous plants
                                { "Russian", "Уничтожьте &lt;FUEL&gt;опасную флору&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Разделитесь, чтобы обследовать поверхность планеты и подземные пещеры&#xA;Используйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt;, чтобы обнаружить опасные растения" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_PLANTKILL_SURVEY_SWAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Уничтожьте &lt;FUEL&gt;опасную флору&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Разделитесь, чтобы обследовать поверхность планеты и подземные пещеры.&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;.
                                { "Russian", "Уничтожьте &lt;FUEL&gt;опасную флору&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Разделитесь, чтобы обследовать поверхность планеты и подземные пещеры&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_PLANTKILL_SURVEY_OFF" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Уничтожьте &lt;FUEL&gt;опасную флору&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Разделитесь, чтобы обследовать поверхность планеты и подземные пещеры.&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы обнаружить опасные растения.
                                { "Russian", "Уничтожьте &lt;FUEL&gt;опасную флору&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Разделитесь, чтобы обследовать поверхность планеты и подземные пещеры&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы обнаружить опасные растения" },
                            }
                        },
                        --#endregion

                        --#region UI_MP_DIGSITE
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_DIGSITE_PLANET_LABEL" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Планета костей
                        --         -- Bone-Rich Planet
                        --         { "Russian", "Богатая костями планета" },
                        --     }
                        -- },

                        --#region UI_MP_DIGSITE_OBJ.*_TIP
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_DIGSITE_OBJ1_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружены древние &lt;STELLAR&gt;ископаемые слои&lt;&gt;.&#xA;Станок Нада для пространственно-временного плетения предсказывает наличие на указанной планете древних костей животных.
                                { "Russian", "Обнаружены древние &lt;STELLAR&gt;фоссилии&lt;&gt;.&#xA;Станок Нада для пространственно-временного плетения предсказывает наличие на указанной планете древних костей животных." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_DIGSITE_OBJ2_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Для его исследования Нада нужны только самые редкие кости — реликвии &lt;SPECIAL&gt;эпического&lt;&gt; или &lt;STELLAR&gt;легендарного&lt;&gt; класса.&#xA;Найдите &lt;STELLAR&gt;ископаемые слои&lt;&gt; с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;.&#xA;Для выемки грунта в месте раскопок используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt;.
                                { "Russian", "Для его исследования Нада нужны только самые редкие кости — реликвии &lt;SPECIAL&gt;эпического&lt;&gt; или &lt;STELLAR&gt;легендарного&lt;&gt; класса.&#xA;Найдите &lt;STELLAR&gt;фоссилии&lt;&gt; с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;.&#xA;Для выемки грунта в месте раскопок используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt;." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_DIGSITE_OBJ2_TIP_ALT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Находите &lt;STELLAR&gt;ископаемые слои&lt;&gt; с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;).&#xA;Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt; (&lt;IMG&gt;ATTACK&lt;&gt;), чтобы провести раскопки.&#xA;Будьте осторожны: стражи из &lt;SPECIAL&gt;живого камня&lt;&gt; могут пробудиться, чтобы защитить древние места упокоения.
                                { "Russian", "Находите &lt;STELLAR&gt;фоссилии&lt;&gt; с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;).&#xA;Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt; (&lt;IMG&gt;ATTACK&lt;&gt;), чтобы провести раскопки.&#xA;Будьте осторожны: стражи из &lt;SPECIAL&gt;живого камня&lt;&gt; могут пробудиться, чтобы защитить древние места упокоения." },
                            }
                        },
                        --#endregion


                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_DIGSITE_OBJ3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добыть сканированные данные костей
                                { "Russian", "Добыть сканы костей" },
                            }
                        },

                        --#region UI_MP_DIGSITE_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_DIGSITE_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружены древние &lt;STELLAR&gt;ископаемые слои&lt;&gt;.&#xA;Доберитесь до нужной планеты.
                                { "Russian", "Обнаружены древние &lt;STELLAR&gt;фоссилии&lt;&gt;&#xA;Доберитесь до нужной планеты" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_DIGSITE_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вы достигли планеты костей.&#xA;Приземлитесь на ее поверхность и начните поиски &lt;STELLAR&gt;ископаемых слоев&lt;&gt;.
                                { "Russian", "Вы достигли планеты костей&#xA;Приземлитесь на ее поверхность и начните поиски &lt;STELLAR&gt;фоссилий&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_DIGSITE_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите &lt;SPECIAL&gt;эпические&lt;&gt; или &lt;STELLAR&gt;легендарные&lt;&gt; древние кости.&#xA;Найдите &lt;STELLAR&gt;ископаемые слои&lt;&gt; с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;.&#xA;Для выемки грунта в месте раскопок используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt;.
                                { "Russian", "Соберите &lt;SPECIAL&gt;эпические&lt;&gt; или &lt;STELLAR&gt;легендарные&lt;&gt; древние кости&#xA;Найдите &lt;STELLAR&gt;фоссилии&lt;&gt; с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;.&#xA;Для выемки грунта в месте раскопок используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_DIGSITE_MSG3_ALT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите древние кости: &lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;&#xA;Находите &lt;STELLAR&gt;ископаемые слои&lt;&gt; с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;).&#xA;Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt; (&lt;IMG&gt;ATTACK&lt;&gt;), чтобы провести раскопки.&#xA;Будьте осторожны: древние места упокоения охраняют стражи из &lt;SPECIAL&gt;живого камня&lt;&gt;.
                                { "Russian", "Соберите древние кости: &lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;&#xA;Находите &lt;STELLAR&gt;фоссилии&lt;&gt; с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)&#xA;Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt; (&lt;IMG&gt;ATTACK&lt;&gt;), чтобы провести раскопки&#xA;Древние места упокоения &lt;FUEL&gt;охраняют&lt;&gt; стражи из &lt;SPECIAL&gt;живого камня&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_DIGSITE_MSG3_SURVEY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите древние кости: &lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;&#xA;Воспользуйтесь &lt;TECHNOLOGY&gt;разведкой цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы найти &lt;STELLAR&gt;ископаемые слои&lt;&gt;.&#xA;Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt; (&lt;IMG&gt;ATTACK&lt;&gt;), чтобы провести раскопки.&#xA;Будьте осторожны: древние места упокоения охраняют стражи из &lt;SPECIAL&gt;живого камня&lt;&gt;.
                                { "Russian", "Соберите древние кости: &lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;&#xA;Воспользуйтесь &lt;TECHNOLOGY&gt;разведкой цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы найти &lt;STELLAR&gt;фоссилии&lt;&gt;&#xA;Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt; (&lt;IMG&gt;ATTACK&lt;&gt;), чтобы провести раскопки&#xA;Древние места упокоения &lt;FUEL&gt;охраняют&lt;&gt; стражи из &lt;SPECIAL&gt;живого камня&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_DIGSITE_MSG3_SURVEY_SWAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите древние кости: &lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;.&#xA;Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt; (&lt;IMG&gt;ATTACK&lt;&gt;), чтобы провести раскопки.&#xA;Будьте осторожны: древние места упокоения охраняют стражи из &lt;SPECIAL&gt;живого камня&lt;&gt;.
                                { "Russian", "Соберите древние кости: &lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;&#xA;Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt; (&lt;IMG&gt;ATTACK&lt;&gt;), чтобы провести раскопки&#xA;Древние места упокоения &lt;FUEL&gt;охраняют&lt;&gt; стражи из &lt;SPECIAL&gt;живого камня&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_DIGSITE_MSG3_SURVEY_OFF" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите древние кости: &lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы найти &lt;STELLAR&gt;ископаемые слои&lt;&gt;.&#xA;Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt; (&lt;IMG&gt;ATTACK&lt;&gt;), чтобы провести раскопки.&#xA;Будьте осторожны: древние места упокоения охраняют стражи из &lt;SPECIAL&gt;живого камня&lt;&gt;.
                                { "Russian", "Соберите древние кости: &lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы найти &lt;STELLAR&gt;фоссилии&lt;&gt;&#xA;Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt; (&lt;IMG&gt;ATTACK&lt;&gt;), чтобы провести раскопки&#xA;Древние места упокоения &lt;FUEL&gt;охраняют&lt;&gt; стражи из &lt;SPECIAL&gt;живого камня&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_DIGSITE_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Доставьте древние кости местному остеологу.&#xA;Используйте сканер (&lt;IMG&gt;SCAN&lt;&gt;), чтобы найти связного Поло.
                                { "Russian", "Доставьте древние кости местному остеологу&#xA;Используйте сканер (&lt;IMG&gt;SCAN&lt;&gt;), чтобы найти связного Поло" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_DIGSITE_MSG4B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;FUEL&gt;Внимание:&lt;&gt; сигнал перехвачен!&#xA;Уничтожьте стражей или спрячьтесь от них.
                                { "Russian", "&lt;FUEL&gt;ВНИМАНИЕ!&lt;&gt; Сигнал перехвачен!&#xA;Уничтожьте стражей или спрячьтесь от них" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_DIGSITE_MSG5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Доставьте древние кости местному остеологу.&#xA;Планетарный связной Поло извлечет необходимые данные.&#xA;Команда вправе оставить находку себе.
                                { "Russian", "Доставьте древние кости местному остеологу&#xA;Планетарный связной Поло извлечет необходимые данные&#xA;Команда вправе оставить находку себе" },
                            }
                        },
                        --#endregion

                        --#endregion

                        --#region UI_MP_FIEND_KILL
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_FIEND_KILL_2_TERM_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ОБНАРУЖЕНО НОВОЕ ЗАРАЖЕНИЕ &lt;IMG&gt;SLASH&lt;&gt; ДОСТУПНЫ КООРДИНАТЫ
                                -- FURTHER INFESTATION DETECTED &lt;IMG&gt;SLASH&lt;&gt; COORDINATES AVAILABLE
                                { "Russian", "ОБНАРУЖЕНО МЕСТОПОЛОЖЕНИЕ ЗАРАЖЕНИЯ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_FIEND_KILL_OSD2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ОБНАРУЖЕНО ВТОРИЧНОЕ МЕСТО ЗАРАЖЕНИЯ
                                { "Russian", "ОБНАРУЖЕНО ВТОРОЕ МЕСТО ЗАРАЖЕНИЯ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_FIEND_KILL_OSD3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ОБНАРУЖЕНО ТРЕТИЧНОЕ МЕСТО ЗАРАЖЕНИЯ
                                { "Russian", "ОБНАРУЖЕНО ТРЕТЬЕ МЕСТО ЗАРАЖЕНИЯ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_FIEND_KILL_2_TERM_LANG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ОБНАРУЖЕНО МЕСТО ВТОРИЧНОГО ЗАРАЖЕНИЯ &lt;IMG&gt;SLASH&lt;&gt; ЗАГРУЗИТЬ КООРДИНАТЫ?
                                -- SECONDARY INFESTATION SITE DETECTED &lt;IMG&gt;SLASH&lt;&gt; DOWNLOAD COORDINATES?
                                { "Russian", "ОБНАРУЖЕНО МЕСТО ВТОРОГО ЗАРАЖЕНИЯ&lt;NEWLINE&gt;ЗАГРУЗИТЬ КООРДИНАТЫ?" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_FIEND_KILL_2_TERM_LANG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ОБНАРУЖЕНО МЕСТО ТРЕТИЧНОГО ЗАРАЖЕНИЯ &lt;IMG&gt;SLASH&lt;&gt; ЗАГРУЗИТЬ КООРДИНАТЫ?
                                -- TERTIARY INFESTATION SITE DETECTED &lt;IMG&gt;SLASH&lt;&gt; DOWNLOAD COORDINATES?
                                { "Russian", "ОБНАРУЖЕНО МЕСТО ТРЕТЬЕГО ЗАРАЖЕНИЯ&lt;NEWLINE&gt;ЗАГРУЗИТЬ КООРДИНАТЫ?" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_FIEND_KILL_OBJ1_SURV_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите место заражения.&#xA;Приземлитесь рядом с &lt;STELLAR&gt;примерными координатами&lt;&gt;.
                                { "Russian", "Найдите место заражения&#xA;Приземлитесь рядом с &lt;STELLAR&gt;примерными координатами&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_FIEND_KILL_OBJ2_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите и убейте тварей: &lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;&#xA;Найдите места заражения рядом с заброшенными зданиями.&#xA;&lt;FUEL&gt;ВНИМАНИЕ&lt;&gt;: нападение на шепчущие яйца привлечет внимание роя...
                                { "Russian", "Найдите и убейте тварей: &lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;&#xA;Найдите места заражения рядом с заброшенными зданиями&#xA;&lt;FUEL&gt;Нападение на шепчущие яйца&lt;&gt; привлечет внимание роя..." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_FIEND_KILL_2_OBJ3_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Исследуйте терминал в заброшенном здании.&#xA;Заражение распространилось и в другие места.
                                { "Russian", "Исследуйте терминал в заброшенном здании&#xA;Заражение распространилось и в другие места" },
                            }
                        },
                        --#endregion

                        --#region UI_MP_DISCOVER
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_DISCOVER_ALREADY_SCANNED" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Уже отсканировано (%NAME%)
                                -- Already scanned by %NAME%
                                { "Russian", "Уже открыто игроком %NAME%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_DISCOVER_OBJ1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добраться до нужной планеты.
                                { "Russian", "Добраться до нужной планеты" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_DISCOVER_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружена &lt;STELLAR&gt;неизученная планета&lt;&gt;.&#xA;Доберитесь до нужной планеты.
                                { "Russian", "Обнаружена &lt;STELLAR&gt;неизученная планета&lt;&gt;&#xA;Доберитесь до нужной планеты" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_DISCOVER_MSG1A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вы добрались до &lt;STELLAR&gt;неизученной планеты&lt;&gt;.&#xA;Сядьте на нужную планету.
                                { "Russian", "Вы добрались до &lt;STELLAR&gt;неизученной планеты&lt;&gt;&#xA;Приземлитесь на планету" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_DISCOVER_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите минералы %CURRENT% / %AMOUNT%&#xA;Просканируйте цели с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;).
                                -- Discover minerals %CURRENT% / %AMOUNT%&#xA;Scan targets with the &lt;TECHNOLOGY&gt;Analysis Visor&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)
                                { "Russian", "Найдите минералы: %CURRENT%/%AMOUNT%&#xA;Сканируйте с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_DISCOVER_MSG2A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите существ %CURRENT% / %AMOUNT%&lt;FUEL&gt;Красные&lt;&gt; точки на &lt;TECHNOLOGY&gt;анализирующем визоре&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;) указывают на неизученных существ.&#xA;Просканируйте цели с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;, используя &lt;IMG&gt;BINOCSCAN&lt;&gt;.
                                -- Discover creatures %CURRENT% / %AMOUNT%&#xA;&lt;FUEL&gt;Red&lt;&gt; dots in the &lt;TECHNOLOGY&gt;Analysis Visor&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;) indicate undiscovered creatures&#xA;Scan targets in the &lt;TECHNOLOGY&gt;Analysis Visor&lt;&gt; with &lt;IMG&gt;BINOCSCAN&lt;&gt;
                                { "Russian", "Найдите существ: %CURRENT%/%AMOUNT%&#xA;&lt;FUEL&gt;Красные&lt;&gt; точки в &lt;TECHNOLOGY&gt;анализирующем визоре&lt;&gt;&#xA;указывают на неизученных существ&#xA;Сканируйте с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt; (&lt;IMG&gt;BINOCSCAN&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_DISCOVER_MSG2B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите растения %CURRENT% / %AMOUNT%&#xA;Просканируйте цели с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;).
                                { "Russian", "Найдите растения: %CURRENT%/%AMOUNT%&#xA;Сканируйте с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_DISCOVER_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Установите &lt;TECHNOLOGY&gt;устройство наблюдения&lt;&gt;.&#xA;Чтобы установить улучшение, нажмите &lt;IMG&gt;TECHMENU&lt;&gt; в инвентаре мультитула (&lt;IMG&gt;INVENTORY&lt;&gt;).
                                -- Install the &lt;TECHNOLOGY&gt;Survey Device&lt;&gt;&#xA;In the Multi-Tool Inventory (&lt;IMG&gt;INVENTORY&lt;&gt;), install upgrades with &lt;IMG&gt;TECHMENU&lt;&gt;
                                { "Russian", "Установите &lt;TECHNOLOGY&gt;устройство наблюдения&lt;&gt;&#xA;Откройте инвентарь мультитула (&lt;IMG&gt;INVENTORY&lt;&gt;)&#xA;и установите улучшения с помощью &lt;IMG&gt;TECHMENU&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_DISCOVER_MSG3_REWARD_FAIL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Инвентарь полон.&#xA;Освободите в инвентаре место под комплект Поло для разведки.
                                -- Inventory Full&#xA;Clear space in your Inventory to receive Polo's surveying kit
                                { "Russian", "Инвентарь полон&#xA;Освободите в инвентаре место под комплект для разведки от Поло" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_DISCOVER_MSG3A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Включите анализирующий визор (&lt;IMG&gt;AIM&lt;&gt;).&#xA;Нажмите &lt;IMG&gt;SURVEYFILTERL&lt;&gt;, чтобы включить &lt;STELLAR&gt;режим разведки&lt;&gt;.
                                -- Activate the Analysis Visor (&lt;IMG&gt;AIM&lt;&gt;)&#xA;Enable &lt;STELLAR&gt;Surveying&lt;&gt; with &lt;IMG&gt;SURVEYFILTERL&lt;&gt;
                                { "Russian", "Включите анализирующий визор (&lt;IMG&gt;AIM&lt;&gt;)&#xA;Выберите &lt;STELLAR&gt;режим разведки&lt;&gt;, нажав &lt;IMG&gt;SURVEYFILTERL&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_DISCOVER_MSG3B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- В визоре (&lt;IMG&gt;AIM&lt;&gt;) прокручивайте &lt;STELLAR&gt;режимы наблюдения&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt; / &lt;IMG&gt;SURVEYFILTERR&lt;&gt;.&#xA;Найдите скопления &lt;STELLAR&gt;электромагнитной энергии&lt;&gt;, &lt;STELLAR&gt;газа&lt;&gt; и &lt;STELLAR&gt;глубинных минералов&lt;&gt;.&#xA;Найдено скоплений: %CURRENT% / %AMOUNT%
                                -- In the Visor (&lt;IMG&gt;AIM&lt;&gt;), cycle &lt;STELLAR&gt;Survey Modes&lt;&gt; with &lt;IMG&gt;SURVEYFILTERL&lt;&gt; / &lt;IMG&gt;SURVEYFILTERR&lt;&gt;&#xA;Pinpoint an &lt;STELLAR&gt;Electromagnetic Power&lt;&gt;, &lt;STELLAR&gt;Gas&lt;&gt; and &lt;STELLAR&gt;Deep-Level Mineral&lt;&gt; hotspot&#xA;%CURRENT% / %AMOUNT% hotspots found
                                { "Russian", "В визоре (&lt;IMG&gt;AIM&lt;&gt;) меняйте &lt;STELLAR&gt;режимы разведки&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;&#xA;Найдите скопления &lt;STELLAR&gt;электромагнитной энергии&lt;&gt;,&#xA;&lt;STELLAR&gt;газа&lt;&gt; и &lt;STELLAR&gt;глубинных минералов&lt;&gt;&#xA;Найдено скоплений: %CURRENT%/%AMOUNT%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_DISCOVER_MSG3C" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- В визоре (&lt;IMG&gt;AIM&lt;&gt;) прокручивайте &lt;STELLAR&gt;режимы наблюдения&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt; / &lt;IMG&gt;SURVEYFILTERR&lt;&gt;.&#xA;Найдите скопления &lt;STELLAR&gt;электромагнитной энергии&lt;&gt; и &lt;STELLAR&gt;газа&lt;&gt;.&#xA;Найдено скоплений: %CURRENT% / %AMOUNT%
                                { "Russian", "В визоре (&lt;IMG&gt;AIM&lt;&gt;) меняйте &lt;STELLAR&gt;режимы разведки&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;&#xA;Найдите скопления &lt;STELLAR&gt;электромагнитной энергии&lt;&gt; и &lt;STELLAR&gt;газа&lt;&gt;&#xA;Найдено скоплений: %CURRENT%/%AMOUNT%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_DISCOVER_MSG3D" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- В визоре (&lt;IMG&gt;AIM&lt;&gt;) прокручивайте &lt;STELLAR&gt;режимы наблюдения&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt; / &lt;IMG&gt;SURVEYFILTERR&lt;&gt;.&#xA;Найдите скопления &lt;STELLAR&gt;электромагнитной энергии&lt;&gt; и &lt;STELLAR&gt;глубинных минералов&lt;&gt;.&#xA;Найдено скоплений: %CURRENT% / %AMOUNT%
                                { "Russian", "В визоре (&lt;IMG&gt;AIM&lt;&gt;) меняйте &lt;STELLAR&gt;режимы разведки&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;&#xA;Найдите скопления &lt;STELLAR&gt;электромагнитной энергии&lt;&gt; и &lt;STELLAR&gt;глубинных минералов&lt;&gt;&#xA;Найдено скоплений: %CURRENT%/%AMOUNT%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_DISCOVER_MSG3E" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- В визоре (&lt;IMG&gt;AIM&lt;&gt;) прокручивайте &lt;STELLAR&gt;режимы наблюдения&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt; / &lt;IMG&gt;SURVEYFILTERR&lt;&gt;.&#xA;Найдите скопление &lt;STELLAR&gt;электромагнитной энергии&lt;&gt;.&#xA;Найдено скоплений: %CURRENT% / %AMOUNT%
                                { "Russian", "В визоре (&lt;IMG&gt;AIM&lt;&gt;) меняйте &lt;STELLAR&gt;режимы разведки&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;&#xA;Найдите скопление &lt;STELLAR&gt;электромагнитной энергии&lt;&gt;&#xA;Найдено скоплений: %CURRENT%/%AMOUNT%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_DISCOVER_MSG3F" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- В визоре (&lt;IMG&gt;AIM&lt;&gt;) прокручивайте &lt;STELLAR&gt;режимы наблюдения&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt; / &lt;IMG&gt;SURVEYFILTERR&lt;&gt;.&#xA;Найдите скопления &lt;STELLAR&gt;газа&lt;&gt; и &lt;STELLAR&gt;глубинных минералов&lt;&gt;.&#xA;Найдено скоплений: %CURRENT% / %AMOUNT%
                                { "Russian", "В визоре (&lt;IMG&gt;AIM&lt;&gt;) меняйте &lt;STELLAR&gt;режимы разведки&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;&#xA;Найдите скопления &lt;STELLAR&gt;газа&lt;&gt; и &lt;STELLAR&gt;глубинных минералов&lt;&gt;&#xA;Найдено скоплений: %CURRENT%/%AMOUNT%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_DISCOVER_MSG3G" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- В визоре (&lt;IMG&gt;AIM&lt;&gt;) прокручивайте &lt;STELLAR&gt;режимы наблюдения&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt; / &lt;IMG&gt;SURVEYFILTERR&lt;&gt;.&#xA;Найдите скопления &lt;STELLAR&gt;глубинных минералов&lt;&gt;.&#xA;Найдено скоплений: %CURRENT% / %AMOUNT%
                                { "Russian", "В визоре (&lt;IMG&gt;AIM&lt;&gt;) меняйте &lt;STELLAR&gt;режимы разведки&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;&#xA;Найдите скопление &lt;STELLAR&gt;глубинных минералов&lt;&gt;&#xA;Найдено скоплений: %CURRENT%/%AMOUNT%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_DISCOVER_MSG3H" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- В визоре (&lt;IMG&gt;AIM&lt;&gt;) прокручивайте &lt;STELLAR&gt;режимы наблюдения&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt; / &lt;IMG&gt;SURVEYFILTERR&lt;&gt;.&#xA;Найдите скопления &lt;STELLAR&gt;газа&lt;&gt;.&#xA;Найдено скоплений: %CURRENT% / %AMOUNT%
                                { "Russian", "В визоре (&lt;IMG&gt;AIM&lt;&gt;) меняйте &lt;STELLAR&gt;режимы разведки&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;&#xA;Найдите скопление &lt;STELLAR&gt;газа&lt;&gt;&#xA;Найдено скоплений: %CURRENT%/%AMOUNT%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_DISCOVER_OBJ4_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Подпишите пакеты данных для загрузки исследования в базы данных Космической Аномалии.&#xA;Используйте усилитель сигнала, чтобы отметить станцию загрузки.
                                -- Sign the data packets to upload survey to the Space Anomaly's databanks.&#xA;Use a Signal Booster to mark an upload station.
                                { "Russian", "Подпишите пакеты данных для загрузки исследования в базы данных Космической Аномалии.&#xA;Используйте усилитель сигнала, чтобы найти станцию загрузки." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_DISCOVER_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Загрузите данные исследования на Космическую Аномалию.&#xA;Используйте &lt;TECHNOLOGY&gt;усилитель сигнала&lt;&gt;, чтобы отметить станцию загрузки.&#xA;Нажмите &lt;IMG&gt;BUILD_MENU&lt;&gt; и откройте меню строительства.
                                { "Russian", "Загрузите данные исследования на Космическую Аномалию&#xA;Используйте &lt;TECHNOLOGY&gt;усилитель сигнала&lt;&gt;, чтобы найти станцию загрузки&#xA;Откройте меню строительства, нажав &lt;IMG&gt;BUILD_MENU&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_DISCOVER_MSG4A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Загрузите данные исследования на Космическую Аномалию.&#xA;Используйте &lt;TECHNOLOGY&gt;усилитель сигнала&lt;&gt;, чтобы &lt;STELLAR&gt;найти постройки поблизости&lt;&gt;.
                                { "Russian", "Загрузите данные исследования на Космическую Аномалию&#xA;Используйте &lt;TECHNOLOGY&gt;усилитель сигнала&lt;&gt;, чтобы &lt;STELLAR&gt;найти постройки поблизости&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_DISCOVER_MSG4B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Загрузите данные исследования на Космическую Аномалию.&#xA;Доберитесь до отмеченной &lt;STELLAR&gt;станции загрузки&lt;&gt;.
                                { "Russian", "Загрузите данные исследования на Космическую Аномалию&#xA;Доберитесь до отмеченной &lt;STELLAR&gt;станции загрузки&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_DISCOVER_MSG4C" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Загрузите данные исследования на Космическую Аномалию.&#xA;Воспользуйтесь терминалом &lt;STELLAR&gt;станции загрузки&lt;&gt;.
                                { "Russian", "Загрузите данные исследования на Космическую Аномалию&#xA;Воспользуйтесь терминалом &lt;STELLAR&gt;станции загрузки&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_DISCOVER_BUILDING_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Строение обнаружено &lt;IMG&gt;SLASH&lt;&gt; Идет взлом терминала
                                -- Structure Located &lt;IMG&gt;SLASH&lt;&gt; Overriding Terminal
                                { "Russian", "Строение обнаружено &lt;IMG&gt;SLASH&lt;&gt; Перенастраиваем терминал" },
                            }
                        },
                        --#endregion

                        --#region UI_MP_DEPOT_RAID
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_DEPOT_RAID_FACT_MARKER" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Пораженный комплекс
                                -- Compromised Facility
                                { "Russian", "Уязвимый комплекс" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_DEPOT_FACT_TITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Пораженный терминал
                                -- Compromised Terminal
                                { "Russian", "Уязвимый терминал" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_DEPOT_RAID_FACT_SURV_OSD2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружена постройка со стражами!
                                -- Sentinel Facility Located!
                                { "Russian", "Обнаружен завод стражей!" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_DEPOT_RAID_TITLE_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сеть взломана
                                -- Network Compromises
                                { "Russian", "Взлом сети" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_DEPOT_RAID_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Доберитесь до &lt;STELLAR&gt;пораженного комплекса&lt;&gt;.
                                -- Reach the &lt;STELLAR&gt;Compromised Facility&lt;&gt;
                                { "Russian", "Доберитесь до &lt;STELLAR&gt;уязвимого комплекса&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_DEPOT_RAID_SURV_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Доберитесь до &lt;STELLAR&gt;раскрытой постройки&lt;&gt;.&#xA;Приземлитесь рядом с &lt;STELLAR&gt;примерными координатами&lt;&gt;.
                                -- Reach the &lt;STELLAR&gt;Compromised Facility&lt;&gt;&#xA;Land near the &lt;STELLAR&gt;approximate coordinates&lt;&gt;
                                { "Russian", "Доберитесь до &lt;STELLAR&gt;уязвимой постройки&lt;&gt;&#xA;Приземлитесь рядом с &lt;STELLAR&gt;примерными координатами&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_DEPOT_RAID_MSG1A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Получите доступ к &lt;STELLAR&gt;пораженному комплексу&lt;&gt;&#xA;Запертые двери можно уничтожить или взломать&#xA;Нанося повреждения объектам, можно привлечь внимание стражей
                                { "Russian", "Получите доступ к &lt;STELLAR&gt;комплексу&lt;&gt;&#xA;Запертые двери можно уничтожить или взломать&#xA;Повреждение объектов может привлечь внимание стражей" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_DEPOT_RAID_MSG1B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Уничтожьте &lt;FUEL&gt;дверь станции&lt;&gt;.&#xA;Создайте &lt;TECHNOLOGY&gt;плазмомет&lt;&gt;.&#xA;Активируйте плазмомет, используя &lt;IMG&gt;CYCLEWEAPON&lt;&gt;.
                                { "Russian", "Уничтожьте &lt;FUEL&gt;дверь станции&lt;&gt;&#xA;Создайте &lt;TECHNOLOGY&gt;плазмомет&lt;&gt;&#xA;Активируйте плазмомет, используя &lt;IMG&gt;CYCLEWEAPON&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_DEPOT_RAID_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Войдите в сеть стражей.&#xA;Соберите %ITEM%, чтобы получить доступ: &lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;
                                -- Access the Sentinel network&#xA;Gather %ITEM% to gain access: &lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;
                                { "Russian", "Войдите в сеть стражей&#xA;Соберите %ITEM%, чтобы получить доступ: &lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_DEPOT_RAID_MSG2_ALT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Войдите в сеть стражей.&#xA;Соберите %ITEM%, чтобы получить доступ: &lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;&#xA;Вступайте в бой со стражами, чтобы затем извлечь &lt;SPECIAL&gt;пугний&lt;&gt; из их оболочек
                                { "Russian", "Войдите в сеть стражей&#xA;Соберите %ITEM%, чтобы получить доступ: &lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;&#xA;Побеждайте стражей, чтобы добыть &lt;SPECIAL&gt;пугний&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_DEPOT_RAID_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вы добыли &lt;SPECIAL&gt;пугний&lt;&gt;&#xA;Вернитесь в &lt;STELLAR&gt;пораженный комплекс&lt;&gt;&#xA;Передайте &lt;SPECIAL&gt;пугний&lt;&gt; путешественнику, использовав &lt;IMG&gt;TRANSFER&lt;&gt; в инвентаре
                                -- &lt;SPECIAL&gt;Pugneum&lt;&gt; acquired&#xA;Return to the &lt;STELLAR&gt;Compromised Facility&lt;&gt;&#xA;Transfer &lt;SPECIAL&gt;Pugneum&lt;&gt; to one explorer using &lt;IMG&gt;TRANSFER&lt;&gt; in Inventory
                                { "Russian", "Вы добыли &lt;SPECIAL&gt;пугний&lt;&gt;&#xA;Вернитесь в &lt;STELLAR&gt;уязвимый комплекс&lt;&gt;&#xA;Передайте &lt;SPECIAL&gt;пугний&lt;&gt; путешественнику, используя &lt;IMG&gt;TRANSFER&lt;&gt; в инвентаре" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_DEPOT_RAID_MSG3_ALT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Пугний&lt;&gt; получен.&#xA;Вернитесь в &lt;STELLAR&gt;пораженный комплекс&lt;&gt;.
                                { "Russian", "&lt;SPECIAL&gt;Пугний&lt;&gt; получен&#xA;Вернитесь в &lt;STELLAR&gt;уязвимый комплекс&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_DEPOT_RAID_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружены координаты &lt;SPECIAL&gt;склада стражей&lt;&gt;.&#xA;Доберитесь до склада.
                                { "Russian", "Обнаружено местоположение &lt;SPECIAL&gt;склада стражей&lt;&gt;&#xA;Доберитесь до него" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_DEPOT_RAID_MSG4A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружены координаты &lt;SPECIAL&gt;склада стражей&lt;&gt;.&#xA;Уничтожьте стражей или спрячьтесь от них.
                                { "Russian", "Обнаружено местоположение &lt;SPECIAL&gt;склада стражей&lt;&gt;&#xA;Уничтожьте стражей или спрячьтесь от них" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_DEPOT_RAID_MSG5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;FUEL&gt;АТАКА ВРАЖДЕБНЫХ СТРАЖЕЙ&lt;&gt;&#xA;Уничтожьте склады: &lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;
                                -- &lt;FUEL&gt;HOSTILE SENTINELS ENGAGED&lt;&gt;&#xA;Destroy the Depots: &lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;
                                { "Russian", "&lt;FUEL&gt;НАПАДЕНИЕ ВРАЖДЕБНЫХ СТРАЖЕЙ&lt;&gt;&#xA;Уничтожьте склады: &lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_DEPOT_RAID_MSG5A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Склады уничтожены!&#xA;Победите стражей или спрячьтесь от них.
                                { "Russian", "Склады уничтожены!&#xA;Победите стражей или спрячьтесь от них" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_DEPOT_RAID_OBJ1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добраться до пораженного комплекса
                                -- Reach the Compromised Facility
                                { "Russian", "Добраться до уязвимого комплекса" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_DEPOT_RAID_OBJ2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Войдите в сеть стражей.
                                { "Russian", "Войдите в сеть стражей" },
                            }
                        },
                        --#endregion

                        --#region UI_MP_PIRATES
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_PIRATES_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите эскадрилью пиратов.&#xA;Чтобы найти пиратов, вернитесь в космос.
                                { "Russian", "Найдите эскадрилью пиратов&#xA;Чтобы найти пиратов, вернитесь в космос" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_PIRATES_MSG1B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите эскадрилью пиратов.&#xA;Доберитесь до &lt;STELLAR&gt;отмеченной точки&lt;&gt;, чтобы сразиться с враждебными кораблями.
                                { "Russian", "Найдите эскадрилью пиратов&#xA;Доберитесь до &lt;STELLAR&gt;отмеченной точки&lt;&gt;, чтобы сразиться" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_PIRATES_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите эскадрилью пиратов&#xA;Воспользуйтесь &lt;TECHNOLOGY&gt;сканером звездолета&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;), чтобы передать сигнатуру своего корабля&#xA;&lt;FUEL&gt;ВНИМАНИЕ&lt;&gt;: убедитесь, что все члены экипажа готовы, прежде чем бросать вызов пиратам
                                -- Locate the pirate squadron&#xA;Use the &lt;TECHNOLOGY&gt;Starship Scanner&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;) to broadcast your ship signature&#xA;&lt;FUEL&gt;WARNING&lt;&gt;: Ensure all crew are ready before antagonising pirates
                                { "Russian", "Найдите эскадрилью пиратов&#xA;Передайте свой позывной, используя &lt;TECHNOLOGY&gt;сканер звездолёта&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;)&#xA;&lt;FUEL&gt;ВНИМАНИЕ!&lt;&gt; Убедитесь, что команда готова бросить вызов пиратам" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_PIRATES_MSG2_ALT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите эскадрилью пиратов.&#xA;Воспользуйтесь &lt;TECHNOLOGY&gt;сканером звездолета&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;), чтобы передать сигнатуру своего корабля.
                                { "Russian", "Найдите эскадрилью пиратов&#xA;Передайте свой позывной, используя &lt;TECHNOLOGY&gt;сканер звездолёта&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;)" },
                            }
                        },
                        --#endregion

                        --#region UI_MP_REPAIR
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_REPAIR_OBJ1_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сядьте на нужную планету и поговорите с &lt;STELLAR&gt;нуждающимся существом&lt;&gt;.
                                -- Land on the target planet and speak to the &lt;STELLAR&gt;stranded lifeform&lt;&gt;.
                                { "Russian", "Приземлитесь на нужную планету и поговорите с &lt;STELLAR&gt;формой жизни в затруднительном положении&lt;&gt;." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_REPAIR_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружен сигнал бедствия &lt;STELLAR&gt;нуждающегося существа&lt;&gt;.&#xA;Доберитесь до нужной планеты.
                                -- &lt;STELLAR&gt;Stranded lifeform&lt;&gt; distress signal located&#xA;Reach the target planet
                                { "Russian", "Обнаружен сигнал бедствия&#xA;Доберитесь до нужной планеты" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_REPAIR_SURV_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Примерно установлено место сигнала бедствия &lt;STELLAR&gt;нуждающегося существа&lt;&gt;.&#xA;Доберитесь до нужной планеты.
                                -- &lt;STELLAR&gt;Stranded lifeform&lt;&gt; distress signal approximated&#xA;Reach the target planet
                                { "Russian", "Установлено примерное местоположение&#xA;сигнала бедствия&#xA;Доберитесь до нужной планеты" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_REPAIR_MSG1A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вы добрались до нужной планеты.&#xA;Поговорите с &lt;STELLAR&gt;нуждающимся существом&lt;&gt;.
                                -- Target planet reached&#xA;Speak to the &lt;STELLAR&gt;stranded lifeform&lt;&gt;
                                { "Russian", "Вы добрались до нужной планеты&#xA;Поговорите с &lt;STELLAR&gt;нуждающимся существом&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_REPAIR_MSG2_TERRAINEDITOR" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Установите &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt;&#xA;Чтобы установить улучшение, нажмите &lt;IMG&gt;TECHMENU&lt;&gt; в инвентаре мультитула (&lt;IMG&gt;INVENTORY&lt;&gt;).
                                -- Install the &lt;TECHNOLOGY&gt;Terrain Manipulator&lt;&gt;&#xA;In the Multi-Tool Inventory (&lt;IMG&gt;INVENTORY&lt;&gt;), install upgrades with &lt;IMG&gt;TECHMENU&lt;&gt;
                                { "Russian", "Установите &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt;&#xA;В инвентаре мультитула (&lt;IMG&gt;INVENTORY&lt;&gt;) установите улучшения, используя &lt;IMG&gt;TECHMENU&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_REPAIR_MSG2_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите рабочий &lt;TECHNOLOGY&gt;навигационный компьютер&lt;&gt; в засыпанных технологических модулях.&#xA;Для поиска &lt;STELLAR&gt;засыпанных технологических модулей&lt;&gt; используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;).&#xA;Чтобы извлечь лом, используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt;.
                                -- Search Buried Technology Modules for a working &lt;TECHNOLOGY&gt;Navigation Computer&lt;&gt;&#xA;Locate &lt;STELLAR&gt;Buried Technology Modules&lt;&gt; with the &lt;TECHNOLOGY&gt;Analysis Visor&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)&#xA;Use the &lt;TECHNOLOGY&gt;Terrain Manipulator&lt;&gt; to excavate salvage
                                { "Russian", "Найдите рабочий &lt;TECHNOLOGY&gt;навигационный компьютер&lt;&gt;&#xA;в засыпанных технологических модулях&#xA;Для поиска &lt;STELLAR&gt;технологических модулей&lt;&gt; используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)&#xA;Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt; для выемки грунта" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_REPAIR_1_SURVEY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите рабочий &lt;TECHNOLOGY&gt;навигационный компьютер&lt;&gt; в засыпанных технологических модулях.&#xA;Используйте &lt;STELLAR&gt;разведку цели&lt;&gt; для поиска засыпанных технологических модулей.&#xA;Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt;, чтобы извлечь лом.
                                -- Search Buried Technology Modules for a working &lt;TECHNOLOGY&gt;Navigation Computer&lt;&gt;&#xA;Use the &lt;STELLAR&gt;Target Sweep&lt;&gt; to locate buried technology modules&#xA;Use the &lt;TECHNOLOGY&gt;Terrain Manipulator&lt;&gt; to excavate salvage
                                { "Russian", "Найдите рабочий &lt;TECHNOLOGY&gt;навигационный компьютер&lt;&gt;&#xA;в засыпанных технологических модулях&#xA;Используйте &lt;STELLAR&gt;разведку цели&lt;&gt; для поиска модулей&#xA;Для выемки грунта используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_REPAIR_1_SURVEY_SWAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите рабочий &lt;TECHNOLOGY&gt;навигационный компьютер&lt;&gt; в засыпанных технологических модулях.&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;&#xA;Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt;, чтобы извлечь лом.
                                { "Russian", "Найдите рабочий &lt;TECHNOLOGY&gt;навигационный компьютер&lt;&gt;&#xA;в засыпанных технологических модулях&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;&#xA;Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt; для выемки грунта" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_REPAIR_1_SURVEY_OFF" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите рабочий &lt;TECHNOLOGY&gt;навигационный компьютер&lt;&gt; в засыпанных технологических модулях.&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;) для поиска засыпанных технологических модулей.&#xA;Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt;, чтобы извлечь лом.
                                { "Russian", "Найдите рабочий &lt;TECHNOLOGY&gt;навигационный компьютер&lt;&gt;&#xA;в засыпанных технологических модулях&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;) для поиска модулей&#xA;Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt; для выемки грунта" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_REPAIR_MSG2_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите рабочий &lt;TECHNOLOGY&gt;блок управления связью&lt;&gt; в засыпанных технологических модулях.&#xA;Для поиска &lt;STELLAR&gt;засыпанных технологических модулей&lt;&gt; используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;).&#xA;Чтобы извлечь лом, используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt;.
                                { "Russian", "Найдите рабочий &lt;TECHNOLOGY&gt;блок управления связью&lt;&gt;&#xA;в засыпанных технологических модулях&#xA;Для поиска &lt;STELLAR&gt;модулей&lt;&gt; используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)&#xA;Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt; для выемки грунта" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_REPAIR_2_SURVEY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите рабочий &lt;TECHNOLOGY&gt;блок управления связью&lt;&gt; в засыпанных технологических модулях.&#xA;Используйте &lt;STELLAR&gt;разведку цели&lt;&gt; для поиска засыпанных технологических модулей.&#xA;Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt;, чтобы извлечь лом.
                                { "Russian", "Найдите рабочий &lt;TECHNOLOGY&gt;блок управления связью&lt;&gt;&#xA;в засыпанных технологических модулях&#xA;Используйте &lt;STELLAR&gt;разведку цели&lt;&gt; для поиска модулей&#xA;Для выемки грунта используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_REPAIR_2_SURVEY_SWAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите рабочий &lt;TECHNOLOGY&gt;блок управления связью&lt;&gt; в засыпанных технологических модулях.&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;&#xA;Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt;, чтобы извлечь лом.
                                { "Russian", "Найдите рабочий &lt;TECHNOLOGY&gt;блок управления связью&lt;&gt;&#xA;в засыпанных технологических модулях&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;&#xA;Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt; для выемки грунта" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_REPAIR_2_SURVEY_OFF" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите рабочий &lt;TECHNOLOGY&gt;блок управления связью&lt;&gt; в засыпанных технологических модулях.&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;) для поиска засыпанных технологических модулей.&#xA;Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt;, чтобы извлечь лом.
                                { "Russian", "Найдите рабочий &lt;TECHNOLOGY&gt;блок управления связью&lt;&gt;&#xA;в засыпанных технологических модулях&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;) для поиска модулей&#xA;Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt; для выемки грунта" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_REPAIR_MSG2_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите рабочий &lt;TECHNOLOGY&gt;блок аутентификации пользователя&lt;&gt; в засыпанных технологических модулях.&#xA;Для поиска &lt;STELLAR&gt;засыпанных технологических модулей&lt;&gt; используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;).&#xA;Чтобы извлечь лом, используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt;.
                                { "Russian", "Найдите рабочий &lt;TECHNOLOGY&gt;блок аутентификации пользователя&lt;&gt;&#xA;в засыпанных технологических модулях&#xA;Для поиска &lt;STELLAR&gt;модулей&lt;&gt; используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)&#xA;Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt; для выемки грунта" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_REPAIR_3_SURVEY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите рабочий &lt;TECHNOLOGY&gt;блок аутентификации пользователя&lt;&gt; в засыпанных технологических модулях.&#xA;Используйте &lt;STELLAR&gt;разведку цели&lt;&gt; для поиска засыпанных технологических модулей.&#xA;Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt;, чтобы извлечь лом.
                                { "Russian", "Найдите рабочий &lt;TECHNOLOGY&gt;блок аутентификации пользователя&lt;&gt;&#xA;в засыпанных технологических модулях&#xA;Используйте &lt;STELLAR&gt;разведку цели&lt;&gt; для поиска модулей&#xA;Для выемки грунта используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_REPAIR_3_SURVEY_SWAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите рабочий &lt;TECHNOLOGY&gt;блок аутентификации пользователя&lt;&gt; в засыпанных технологических модулях.&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;&#xA;Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt;, чтобы извлечь лом.
                                { "Russian", "Найдите рабочий &lt;TECHNOLOGY&gt;блок аутентификации пользователя&lt;&gt;&#xA;в засыпанных технологических модулях&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;&#xA;Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt; для выемки грунта" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_REPAIR_3_SURVEY_OFF" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите рабочий &lt;TECHNOLOGY&gt;навигационный компьютер&lt;&gt; в засыпанных технологических модулях.&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;) для поиска засыпанных технологических модулей.&#xA;Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt;, чтобы извлечь лом.
                                { "Russian", "Найдите рабочий &lt;TECHNOLOGY&gt;навигационный компьютер&lt;&gt;&#xA;в засыпанных технологических модулях&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;) для поиска модулей&#xA;Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt; для выемки грунта" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_REPAIR_MSG3_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Проанализируйте&lt;&gt;&lt;TECHNOLOGY&gt;зашифрованный компьютер&lt;&gt;, используя &lt;IMG&gt;FE_ALT1&lt;&gt;.&#xA;Прежде чем провести анализ, найдите нужную деталь в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;).&#xA;В случае успешного анализа вы узнаете местоположение терминала расшифровки.
                                { "Russian", "&lt;STELLAR&gt;Проанализируйте&lt;&gt; &lt;TECHNOLOGY&gt;зашифрованный компьютер&lt;&gt;&#xA;Найдите предмет в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;)&#xA;и выполните анализ, нажав &lt;IMG&gt;FE_ALT1&lt;&gt;&#xA;В случае успешного анализа вы узнаете местоположение терминала расшифровки" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_REPAIR_MSG3_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Проанализируйте&lt;&gt;&lt;TECHNOLOGY&gt;зашифрованный блок управления&lt;&gt;, используя &lt;IMG&gt;FE_ALT1&lt;&gt;.&#xA;Прежде чем провести анализ, найдите нужную деталь в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;).&#xA;В случае успешного анализа вы узнаете местоположение терминала расшифровки.
                                { "Russian", "&lt;STELLAR&gt;Проанализируйте&lt;&gt; &lt;TECHNOLOGY&gt;зашифрованный блок управления&lt;&gt;&#xA;Найдите предмет в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;)&#xA;и выполните анализ, нажав &lt;IMG&gt;FE_ALT1&lt;&gt;&#xA;В случае успешного анализа вы узнаете местоположение терминала расшифровки" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_REPAIR_MSG3_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Проанализируйте&lt;&gt;&lt;TECHNOLOGY&gt;зашифрованный блок аутентификации&lt;&gt;, используя &lt;IMG&gt;FE_ALT1&lt;&gt;.&#xA;Прежде чем провести анализ, найдите нужную деталь в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;).&#xA;В случае успешного анализа вы узнаете местоположение терминала расшифровки.
                                { "Russian", "&lt;STELLAR&gt;Проанализируйте&lt;&gt; &lt;TECHNOLOGY&gt;зашифрованный блок аутентификации&lt;&gt;&#xA;Найдите предмет в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;)&#xA;и выполните анализ, нажав &lt;IMG&gt;FE_ALT1&lt;&gt;&#xA;В случае успешного анализа вы узнаете местоположение терминала расшифровки" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_REPAIR_MSG3A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Доберитесь до терминала расшифровки.&#xA;&lt;FUEL&gt;Внимание&lt;&gt;: испорченные стражи могут попытаться отнять извлеченную деталь.
                                { "Russian", "Доберитесь до терминала расшифровки&#xA;&lt;FUEL&gt;Внимание&lt;&gt;: испорченные стражи&#xA;могут отнять деталь" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_REPAIR_MSG3B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;FUEL&gt;Обнаружен испорченный дрон стражей!&lt;&gt;&#xA;Победите дронов, чтобы получить доступ к терминалу.
                                { "Russian", "&lt;FUEL&gt;Обнаружены испорченные дроны стражей!&lt;&gt;&#xA;Победите дронов, чтобы получить доступ к терминалу" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_REPAIR_MSG3C" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружен терминал расшифровки.&#xA;Воспользуйтесь терминалом, чтобы &lt;STELLAR&gt;расшифровать&lt;&gt; извлеченную деталь корабля.
                                { "Russian", "Обнаружен терминал расшифровки&#xA;&lt;STELLAR&gt;Расшифруйте&lt;&gt; деталь корабля в терминале" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_REPAIR_OBJ4_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вернитесь на место крушения и поговорите с &lt;STELLAR&gt;нуждающимся существом&lt;&gt;.
                                { "Russian", "Вернитесь на место крушения и поговорите с &lt;STELLAR&gt;формой жизни в затруднительном положении&lt;&gt;." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_REPAIR_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Доставьте зашифрованную деталь.&#xA;Вернитесь к месту крушения и поговорите с &lt;STELLAR&gt;нуждающимся существом&lt;&gt;.
                                -- Deliver the decrypted part&#xA;Return to the crash site and speak to the &lt;STELLAR&gt;stranded lifeform&lt;&gt;
                                { "Russian", "Доставьте расшифрованную деталь&#xA;Вернитесь к месту крушения и поговорите&#xA;с &lt;STELLAR&gt;существом&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_REPAIR_PART_SUBLABEL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружен связанный терминал расшифровки
                                -- Locate paired decryption terminal
                                { "Russian", "Найдите терминал для расшифровки" },
                            }
                        },
                        --#endregion

                        --#region UI_MP_PORTALQUEST
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_PORTALQUEST_DESC_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Станок Нада для пространственно-временного плетения обнаружил необычный и потенциально очень опасный сигнал. Итерации, обитающие на борту Космической Аномалии, полагают, что источником такого сигнала может быть лишь искажение реальности, добраться до которого можно только через портал.&#xA;&#xA;&lt;SPECIAL&gt;СОБЫТИЕ НА ВЫХОДНЫЕ&lt;&gt;: это задание можно выполнить только один раз в неделю. Хотя его можно пройти самостоятельно, мы рекомендуем объединиться с другими исследователями.
                                { "Russian", "Аппарат Нада для пространственно-временного плетения обнаружил необычный и потенциально очень опасный сигнал. Итерации, обитающие на борту Космической Аномалии, полагают, что источником такого сигнала может быть лишь искажение реальности, добраться до которого можно только через портал.&#xA;&#xA;&lt;SPECIAL&gt;СОБЫТИЕ НА ВЫХОДНЫЕ&lt;&gt;: это задание можно выполнить только один раз в неделю. Хотя его можно пройти самостоятельно, мы рекомендуем объединиться с другими исследователями." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_PORTALQUEST_DESC_5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Станок Нада для пространственно-временного плетения обнаружил нарушения в одном из дальних уголков вселенной. Из-за угрозы, которую несет потенциальный разрыв ткани реальности, Космическая Аномалия не может отправиться туда самостоятельно. Странники должны попасть в этот район через портал.&#xA;&#xA;&lt;SPECIAL&gt;СОБЫТИЕ НА ВЫХОДНЫЕ&lt;&gt;: это задание можно выполнить только один раз в неделю. Хотя его можно пройти самостоятельно, мы рекомендуем объединиться с другими исследователями.
                                { "Russian", "Аппарат Нада для пространственно-временного плетения обнаружил искажение в одном из дальних уголков вселенной. Из-за угрозы, которую несет потенциальный разрыв ткани реальности, Космическая Аномалия не может отправиться туда самостоятельно. Странники должны попасть в этот район через портал.&#xA;&#xA;&lt;SPECIAL&gt;СОБЫТИЕ НА ВЫХОДНЫЕ&lt;&gt;: это задание можно выполнить только один раз в неделю. Хотя его можно пройти самостоятельно, мы рекомендуем объединиться с другими исследователями." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_PORTALQUEST_MSG_NO_PORTAL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Неправильный пункт назначения // нарушение не обнаружено&#xA;Вернитесь через портал
                                -- Incorrect destination // disturbance not detected&#xA;Return through the portal
                                { "Russian", "Неправильный пункт назначения &lt;IMG&gt;SLASH&lt;&gt; искажение не обнаружено&#xA;Вернитесь через портал" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_PORTALQUEST_MSG_NO_PLANET" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найти нарушение&#xA;Вернуться на поверхность планеты
                                -- Locate the disturbance&#xA;Return to the planet surface
                                { "Russian", "Найдите искажение&#xA;Вернитесь на поверхность планеты" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_PORTALQUEST_OBJ0" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Узнать о нарушении
                                -- Learn More About the Disturbance
                                { "Russian", "Узнать об искажении" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_PORTALQUEST_MSG0_E1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Попасть в район искажения можно только &lt;SPECIAL&gt;через портал&lt;&gt;.&#xA;Чтобы узнать больше, поговорите с &lt;SPECIAL&gt;итерацией Ариадны&lt;&gt;.
                                { "Russian", "Попасть в район искажения можно только &lt;SPECIAL&gt;через портал&lt;&gt;&#xA;Чтобы узнать больше, поговорите с &lt;SPECIAL&gt;итерацией Ариадны&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_PORTALQUEST_MSG0_E2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Попасть в район искажения можно только &lt;SPECIAL&gt;через портал&lt;&gt;.&#xA;Чтобы узнать больше, поговорите с &lt;SPECIAL&gt;итерацией Геминия&lt;&gt;.
                                { "Russian", "Попасть в район искажения можно только &lt;SPECIAL&gt;через портал&lt;&gt;&#xA;Чтобы узнать больше, поговорите с &lt;SPECIAL&gt;итерацией Геминия&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_PORTALQUEST_MSG0_E3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Попасть в район искажения можно только &lt;SPECIAL&gt;через портал&lt;&gt;.&#xA;Чтобы узнать больше, поговорите с &lt;SPECIAL&gt;итерацией Меркурия&lt;&gt;.
                                { "Russian", "Попасть в район искажения можно только &lt;SPECIAL&gt;через портал&lt;&gt;&#xA;Чтобы узнать больше, поговорите с &lt;SPECIAL&gt;итерацией Меркурия&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_PORTALQUEST_MSG0_E4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Попасть в район искажения можно только &lt;SPECIAL&gt;через портал&lt;&gt;.&#xA;Чтобы узнать больше, поговорите с &lt;SPECIAL&gt;итерацией Тефиды&lt;&gt;.
                                { "Russian", "Попасть в район искажения можно только &lt;SPECIAL&gt;через портал&lt;&gt;&#xA;Чтобы узнать больше, поговорите с &lt;SPECIAL&gt;итерацией Тефиды&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_PORTALQUEST_MSG0_E5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Попасть в район искажения можно только &lt;SPECIAL&gt;через портал&lt;&gt;.&#xA;Чтобы узнать больше, поговорите с &lt;SPECIAL&gt;итерацией Геспера&lt;&gt;.
                                { "Russian", "Попасть в район искажения можно только &lt;SPECIAL&gt;через портал&lt;&gt;&#xA;Чтобы узнать больше, поговорите с &lt;SPECIAL&gt;итерацией Геспера&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_PORTALQUEST_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Чтобы получить нужные координаты, соберите знаки с древних камней знаний.&#xA;Доберитесь до нужной планеты, чтобы начать поиски.
                                -- Acquire glyphic coordinates from Knowledge Stones&#xA;Reach the target planet to begin search
                                { "Russian", "Узнайте координаты с помощью камней знаний&#xA;Доберитесь до нужной планеты, чтобы начать поиски" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_PORTALQUEST_MSG1A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Чтобы получить нужные координаты, соберите знаки с древних камней знаний.&#xA;Посадите звездолет, чтобы начать поиски.
                                { "Russian", "Узнайте координаты с помощью камней знаний&#xA;Посадите звездолёт, чтобы начать поиски" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_PORTALQUEST_MSG1B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите камни знаний: 0/3&#xA;Чтобы найти камни знаний, используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;).&#xA;Соберите полную последовательность знаков портала.
                                -- Seek Knowledge Stones: 0/3&#xA;Knowledge Stones can be detected with the &lt;TECHNOLOGY&gt;Analysis Visor&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)&#xA;Acquire the full sequence of portal glyphs
                                { "Russian", "Найдите камни знаний: 0/3&#xA;Используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;) для поиска&#xA;Соберите полную последовательность знаков портала" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_PORTALQUEST_MSG1C" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите камни знаний: 1/3&#xA;Чтобы найти камни знаний, используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;).&#xA;Соберите полную последовательность знаков портала.
                                { "Russian", "Найдите камни знаний: 1/3&#xA;Используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;) для поиска&#xA;Соберите полную последовательность знаков портала" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_PORTALQUEST_MSG1D" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите камни знаний: 2/3&#xA;Чтобы найти камни знаний, используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;).&#xA;Соберите полную последовательность знаков портала.
                                { "Russian", "Найдите камни знаний: 2/3&#xA;Используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;) для поиска&#xA;Соберите полную последовательность знаков портала" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_PORTALQUEST_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Доберитесь до отмеченного портала.&#xA;Доберитесь до района искажения при помощи этого древнего портала.
                                -- Reach the marked Portal&#xA;Access the disturbed region through this ancient gateway...
                                { "Russian", "Доберитесь до отмеченного портала&#xA;Используйте этот древний портал,&#xA;чтобы попасть в район искажения" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_PORTALQUEST_MSG2A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Войдите в портал.&#xA;Доберитесь до района искажения при помощи этого древнего портала.
                                -- Step through the Portal&#xA;Access the disturbed region through this ancient gateway...
                                { "Russian", "Пройдите через портал&#xA;Доберитесь до района искажения..." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_PORTALQUEST_OBJ3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добраться до нарушения
                                { "Russian", "Добраться до искажения" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_PORTALQUEST_OBJ3_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Ваш костюм отметил источник нарушения.&#xA;Подойдите к источнику, чтобы изучить его.
                                { "Russian", "Ваш костюм отметил источник искажения.&#xA;Подойдите к источнику, чтобы изучить его." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_PORTALQUEST_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Доберитесь до источника нарушения.&#xA;&lt;FUEL&gt;ВНИМАНИЕ&lt;&gt;: пункт назначения может быть нестабильным.&#xA;Соблюдайте предельную осторожность.
                                -- Reach the source of the disturbance&#xA;&lt;FUEL&gt;WARNING&lt;&gt;: Destination may be unstable&#xA;Proceed with extreme caution
                                { "Russian", "Доберитесь до источника искажения&#xA;&lt;FUEL&gt;ВНИМАНИЕ!&lt;&gt; Пункт назначения может быть нестабильным&#xA;Соблюдайте предельную осторожность" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_PORTALQUEST_MSG3A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Из нарушения появились чудовища.&#xA;Осталось угроз: &lt;FUEL&gt;%AMOUNT%&lt;&gt;
                                { "Russian", "Из искажения появились чудовища&#xA;Осталось угроз: &lt;FUEL&gt;%AMOUNT%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_PORTALQUEST_MSG3A_WATER" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Из нарушения появились глубинные ужасы.&#xA;Осталось угроз: &lt;FUEL&gt;%AMOUNT%&lt;&gt;
                                { "Russian", "Из искажения появились глубинные ужасы&#xA;Осталось угроз: &lt;FUEL&gt;%AMOUNT%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_PORTALQUEST_MSG3A_SENT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Из нарушения появился испорченный страж&#xA;Осталось угроз: &lt;FUEL&gt;1&lt;&gt;
                                { "Russian", "Из искажения появился испорченный страж&#xA;Осталось угроз: &lt;FUEL&gt;1&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_PORTALQUEST_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Стабилизируйте разрыв, пожертвовав материалы.&#xA;Соберите: %ITEM% (&lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;)
                                -- Stabilise the rift with a material sacrifice&#xA;Gather %ITEM%: &lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;
                                { "Russian", "Стабилизируйте разрыв, пожертвовав материалы&#xA;Соберите: %ITEM% (&lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_PORTALQUEST_MSG4_PEARL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите %ITEM% с глубоководных панцирных устриц: &lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;.&#xA;Найдите &lt;STELLAR&gt;панцирных устриц&lt;&gt; с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;).&#xA;Используйте (&lt;IMG&gt;INTERACT&lt;&gt;) свечную водоросль, чтобы пополнить запасы кислорода.&#xA;Чтобы найти ее, используйте &lt;TECHNOLOGY&gt;сканер&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;).
                                -- Harvest %ITEM% from deep-water clams: &lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;&#xA;Locate &lt;STELLAR&gt;Armoured Clams&lt;&gt; with the &lt;TECHNOLOGY&gt;Analysis Visor&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)&#xA;Interact (&lt;IMG&gt;INTERACT&lt;&gt;) with Candle Kelp to replenish oxygen&#xA;Locate Candle Kelp with the &lt;TECHNOLOGY&gt;Scanner&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;)
                                { "Russian", "Соберите: %ITEM% (&lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;)&#xA;Найдите &lt;STELLAR&gt;панцирных устриц&lt;&gt; с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)&#xA;Светящиеся водоросли помогут восполнить кислород&#xA;Для поиска используйте &lt;TECHNOLOGY&gt;сканер&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_PORTALQUEST_MSG4_ECUBE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите: %ITEM% (&lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;)&#xA;Чтобы найти эти плавучие диковинки, используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;).
                                -- Gather %ITEM%: &lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;&#xA;Locate these floating curiosities with the &lt;TECHNOLOGY&gt;Analysis Visor&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)
                                { "Russian", "Соберите: %ITEM% (&lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;)&#xA;&lt;TECHNOLOGY&gt;Анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;) поможет найти&#xA;эти плавучие диковинки" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_PORTALQUEST_MSG4_PULPY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите: %ITEM% (&lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;)&#xA;Чтобы найти эти заготавливаемые растения, используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;).
                                { "Russian", "Соберите: %ITEM% (&lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;)&#xA;&lt;TECHNOLOGY&gt;Анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;) поможет найти&#xA;эти растения" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_PORTALQUEST_MSG4_LIVER" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите: %ITEM% (&lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;)&#xA;Собирайте хищников, чтобы получать &lt;FUEL&gt;мясо созданий&lt;&gt;.&#xA;Местная фауна отмечается красными или зелеными точками на &lt;TECHNOLOGY&gt;анализирующем визоре&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;).
                                -- Gather %ITEM%: &lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;&#xA;Cull predators to release &lt;FUEL&gt;creature meat&lt;&gt;&#xA;Local fauna are marked with red or green dots in the &lt;TECHNOLOGY&gt;Analysis Visor&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)
                                { "Russian", "Соберите: %ITEM% (&lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;)&#xA;Охота на хищников поможет добыть &lt;FUEL&gt;мясо&lt;&gt;&#xA;Фауна отмечается красными и зелеными&#xA;точками в &lt;TECHNOLOGY&gt;анализирующем визоре&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_PORTALQUEST_MSG4_ALBUMEN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите: %ITEM% (&lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;)&#xA;Найдите &lt;STELLAR&gt;жужжащие мешки&lt;&gt; с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;).&#xA;ВНИМАНИЕ! За предметом %ITEM% наблюдают Стражи.
                                { "Russian", "Соберите: %ITEM% (&lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;)&#xA;Найдите &lt;STELLAR&gt;жужжащие мешки&lt;&gt; с помощью&#xA;&lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)&#xA;ВНИМАНИЕ! Стражи наблюдают за вами" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_PORTALQUEST_MSG4_ALB_ALT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите: %ITEM% (&lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;)&#xA;Найдите &lt;STELLAR&gt;разумные растения&lt;&gt; с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)&#xA;ВНИМАНИЕ! За предметом %ITEM% наблюдают стражи.
                                { "Russian", "Соберите: %ITEM% (&lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;)&#xA;Найдите &lt;STELLAR&gt;разумные растения&lt;&gt; с помощью&#xA;&lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)&#xA;ВНИМАНИЕ! Стражи наблюдают за вами" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_PORTALQUEST_MSG4_SACVENOM" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите: %ITEM% (&lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;)&#xA;Чтобы найти эти редкие диковинки, используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;).&#xA;ВНИМАНИЕ! За предметом %ITEM% наблюдают Стражи.
                                { "Russian", "Соберите: %ITEM% (&lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;)&#xA;&lt;TECHNOLOGY&gt;Анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;) поможет найти&#xA;эти редкие диковинки&#xA;ВНИМАНИЕ! Стражи наблюдают за вами" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_PORTALQUEST_MSG4_VENTGEM" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите: %ITEM% (&lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;)&#xA;Чтобы найти эти минералы, используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;).&#xA;Используйте (&lt;IMG&gt;INTERACT&lt;&gt;) свечную водоросль, чтобы пополнить запасы кислорода.&#xA;Чтобы найти ее, используйте &lt;TECHNOLOGY&gt;сканер&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;).
                                { "Russian", "Соберите: %ITEM% (&lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;)&#xA;&lt;TECHNOLOGY&gt;Анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;) поможет найти минералы&#xA;Светящиеся водоросли помогут восполнить кислород&#xA;Для поиска используйте &lt;TECHNOLOGY&gt;сканер&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_PORTALQUEST_MSG4_CAVECUBE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите: %ITEM% (&lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;)&#xA;Чтобы найти эти &lt;STELLAR&gt;подземные реликвии&lt;&gt;, используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;).&#xA;Ищите входы в пещеры или пробивайте свои собственные с помощью &lt;TECHNOLOGY&gt;ландшафтного манипулятора&lt;&gt;.
                                { "Russian", "Соберите: %ITEM% (&lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;)&#xA;&lt;TECHNOLOGY&gt;Анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;) поможет найти &lt;STELLAR&gt;подземные реликвии&lt;&gt;&#xA;Ищите входы в пещеры или пробивайте свои собственные&#xA;с помощью &lt;TECHNOLOGY&gt;ландшафтного манипулятора&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_PORTALQUEST_MSG4_STORM" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите: %ITEM%. Сбор должен вестись во время &lt;FUEL&gt;экстремальной бури&lt;&gt;: &lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;.&#xA;Чтобы найти эти редкие диковинки, используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;).
                                -- Gather %ITEM% during an &lt;FUEL&gt;extreme storm&lt;&gt;: &lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;&#xA;Locate these rare curiosities with the &lt;TECHNOLOGY&gt;Analysis Visor&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)
                                { "Russian", "Соберите: %ITEM% (&lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;)&#xA;Сбор должен вестись во время &lt;FUEL&gt;экстремальной бури&lt;&gt;&#xA;&lt;TECHNOLOGY&gt;Анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;) поможет найти&#xA;эти редкие диковинки" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_PORTALQUEST_MSG4_GRAVBALL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите: %ITEM% (&lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;)&#xA;Чтобы найти эти редкие диковинки, используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;).&#xA;ВНИМАНИЕ! За предметом %ITEM% наблюдают Стражи.
                                { "Russian", "Соберите: %ITEM% (&lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;)&#xA;&lt;TECHNOLOGY&gt;Анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;) поможет найти&#xA;эти редкие диковинки&#xA;ВНИМАНИЕ! Стражи наблюдают за вами" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_PORTALQUEST_MSG4_TRT_MLK" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите &lt;STELLAR&gt;%ITEM%&lt;&gt; (&lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;), чтобы приготовить аномальный тарт.&#xA;Приманивайте существ с помощью &lt;TRADEABLE&gt;ферментированной жидкости&lt;&gt;, чтобы добывать их молоко.&#xA;Чтобы узнать &lt;STELLAR&gt;вкусовые предпочтения&lt;&gt; животных, сканируйте их &lt;TECHNOLOGY&gt;анализирующим визором&lt;&gt;&lt;IMG&gt;AIM&lt;&gt;&#xA;Использовать приманку можно в разделе &lt;TECHNOLOGY&gt;Инструменты&lt;&gt; в быстром меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                -- Gather &lt;STELLAR&gt;%ITEM%&lt;&gt; (&lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;) to cook an Anomalous Tart&#xA;Bait creatures using &lt;TRADEABLE&gt;Enzyme Fluid&lt;&gt; to harvest their milk&#xA;Scan creatures with the &lt;TECHNOLOGY&gt;Analysis Visor&lt;&gt; &lt;IMG&gt;AIM&lt;&gt; to discover their &lt;STELLAR&gt;bait preference&lt;&gt;&#xA;Deploy bait from &lt;TECHNOLOGY&gt;Utilities&lt;&gt; in the Quick Menu (&lt;IMG&gt;QUICK_MENU&lt;&gt;)
                                { "Russian", "Соберите: &lt;STELLAR&gt;%ITEM%&lt;&gt; (&lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;)&#xA;Приманивайте существ с помощью &lt;TRADEABLE&gt;ферментной жидкости&lt;&gt;, чтобы добывать их молоко&#xA;Чтобы узнать &lt;STELLAR&gt;вкусовые предпочтения&lt;&gt; животных, сканируйте их &lt;TECHNOLOGY&gt;анализирующим визором&lt;&gt; &lt;IMG&gt;AIM&lt;&gt;&#xA;Использовать приманку можно из раздела &lt;TECHNOLOGY&gt;Инструменты&lt;&gt; в быстром меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_PORTALQUEST_MSG4_TRT_PLT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите &lt;TRADEABLE&gt;гексаягоду&lt;&gt; и &lt;TRADEABLE&gt;гептаплоидную пшеницу&lt;&gt;, чтобы приготовить аномальный тарт.&#xA;Чтобы найти эти заготавливаемые растения, используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;).
                                { "Russian", "Соберите &lt;TRADEABLE&gt;гексаягоду&lt;&gt; и &lt;TRADEABLE&gt;гептаплоидную пшеницу&lt;&gt;&#xA;&lt;TECHNOLOGY&gt;Анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;) поможет найти&#xA;эти растения" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_PORTALQUEST_MSG4_TRT_PLTA" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите &lt;TRADEABLE&gt;гексаягоду&lt;&gt; (&lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;), чтобы приготовить аномальный тарт.&#xA;Чтобы найти эти заготавливаемые растения, используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;).
                                { "Russian", "Соберите &lt;TRADEABLE&gt;гексаягоду&lt;&gt; (&lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;)&#xA;&lt;TECHNOLOGY&gt;Анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;) поможет найти&#xA;эти растения" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_PORTALQUEST_MSG4_TRT_PLTB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите &lt;TRADEABLE&gt;гептаплоидную пшеницу&lt;&gt; (&lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;), чтобы приготовить аномальный тарт.&#xA;Чтобы найти эти заготавливаемые растения, используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;).
                                { "Russian", "Соберите &lt;TRADEABLE&gt;гептаплоидную пшеницу&lt;&gt; (&lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;)&#xA;&lt;TECHNOLOGY&gt;Анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;) поможет найти&#xA;эти растения" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_PORTALQUEST_MSG4_TRT_RFN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Один путешественник использует &lt;TECHNOLOGY&gt;переработчик нутриентов&lt;&gt;, чтобы приготовить &lt;SPECIAL&gt;аномальный тарт&lt;&gt;.&#xA;Чтобы открыть меню созидания, нажмите &lt;IMG&gt;BUILD_MENU&lt;&gt;
                                -- One explorer deploy a &lt;TECHNOLOGY&gt;Nutrient Processor&lt;&gt; to cook an &lt;SPECIAL&gt;Anomalous Tart&lt;&gt;&#xA;Access the Build Menu with &lt;IMG&gt;BUILD_MENU&lt;&gt;
                                { "Russian", "Один путешественник готовит &lt;SPECIAL&gt;аномальный тарт&lt;&gt;&#xA;в &lt;TECHNOLOGY&gt;переработчике нутриентов&lt;&gt;&#xA;Откройте меню строительства, нажав &lt;IMG&gt;BUILD_MENU&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_PORTALQUEST_MSG4_TRT_FLR" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Очистите &lt;TRADEABLE&gt;гептаплоидную пшеницу&lt;&gt;, чтобы получить &lt;STELLAR&gt;%ITEM%&lt;&gt; (&lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;).&#xA;Используйте размещаемый &lt;TECHNOLOGY&gt;переработчик нутриентов&lt;&gt; для обработки ингредиентов.
                                -- Refine &lt;TRADEABLE&gt;Heptaploid Wheat&lt;&gt; to create &lt;STELLAR&gt;%ITEM%&lt;&gt; (&lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;)&#xA;Use a deployable &lt;TECHNOLOGY&gt;Nutrient Processor&lt;&gt; to process cooking items
                                { "Russian", "Очистите &lt;TRADEABLE&gt;гептаплоидную пшеницу&lt;&gt;&#xA;в &lt;TECHNOLOGY&gt;переработчике нутриентов&lt;&gt;&#xA;Приготовлено: &lt;STELLAR&gt;%ITEM%&lt;&gt; (&lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_PORTALQUEST_MSG4_TRT_CRM" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Взбейте &lt;STELLAR&gt;свежее молоко&lt;&gt;, чтобы получить &lt;STELLAR&gt;%ITEM%&lt;&gt; (&lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;).&#xA;Используйте размещаемый &lt;TECHNOLOGY&gt;переработчик нутриентов&lt;&gt; для обработки ингредиентов.
                                { "Russian", "Взбейте &lt;STELLAR&gt;свежее молоко&lt;&gt; в &lt;TECHNOLOGY&gt;переработчике нутриентов&lt;&gt;&#xA;Приготовлено: &lt;STELLAR&gt;%ITEM%&lt;&gt; (&lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_PORTALQUEST_MSG4_TRT_BTR" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Взбейте &lt;STELLAR&gt;сливки&lt;&gt;, чтобы получить &lt;STELLAR&gt;%ITEM%&lt;&gt; (&lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;).&#xA;Используйте размещаемый &lt;TECHNOLOGY&gt;переработчик нутриентов&lt;&gt; для обработки ингредиентов.
                                { "Russian", "Взбейте &lt;STELLAR&gt;сливки&lt;&gt; в &lt;TECHNOLOGY&gt;переработчике нутриентов&lt;&gt;&#xA;Приготовлено: &lt;STELLAR&gt;%ITEM%&lt;&gt; (&lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_PORTALQUEST_MSG4_TRT_PTY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Смешайте &lt;STELLAR&gt;муку мелкого помола&lt;&gt; и &lt;STELLAR&gt;сбитое масло&lt;&gt;, чтобы получить &lt;STELLAR&gt;%ITEM%&lt;&gt; (&lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;).&#xA;Используйте размещаемый &lt;TECHNOLOGY&gt;переработчик нутриентов&lt;&gt; для обработки ингредиентов.
                                { "Russian", "Смешайте &lt;STELLAR&gt;муку мелкого помола&lt;&gt; и &lt;STELLAR&gt;сбитое масло&lt;&gt;&#xA;в &lt;TECHNOLOGY&gt;переработчике нутриентов&lt;&gt;&#xA;Приготовлено: &lt;STELLAR&gt;%ITEM%&lt;&gt; (&lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_PORTALQUEST_MSG4_TRT_PIE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите &lt;STELLAR&gt;сдобу&lt;&gt;, чтобы получить &lt;STELLAR&gt;%ITEM%&lt;&gt; (&lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;).&#xA;Используйте размещаемый &lt;TECHNOLOGY&gt;переработчик нутриентов&lt;&gt; для обработки ингредиентов.
                                { "Russian", "Приготовьте &lt;STELLAR&gt;сдобу&lt;&gt;&#xA;в &lt;TECHNOLOGY&gt;переработчике нутриентов&lt;&gt;&#xA;Приготовлено: &lt;STELLAR&gt;%ITEM%&lt;&gt; (&lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_PORTALQUEST_MSG4_TRT_TRT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добавьте &lt;TRADEABLE&gt;гексаягоду&lt;&gt; в &lt;STELLAR&gt;пирог без начинки&lt;&gt;, чтобы получить &lt;SPECIAL&gt;%ITEM%&lt;&gt; (&lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;).&#xA;Используйте размещаемый &lt;TECHNOLOGY&gt;переработчик нутриентов&lt;&gt; для обработки ингредиентов.
                                { "Russian", "Добавьте &lt;TRADEABLE&gt;гексаягоду&lt;&gt; в &lt;STELLAR&gt;пирог без начинки&lt;&gt;&#xA;в &lt;TECHNOLOGY&gt;переработчике нутриентов&lt;&gt;&#xA;Приготовлено: &lt;STELLAR&gt;%ITEM%&lt;&gt; (&lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_PORTALQUEST_MSG4_FINGERS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Собирайте водных существ, чтобы получать %ITEM% (&lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;).&#xA;Местная фауна отмечается красными или зелеными точками на &lt;TECHNOLOGY&gt;анализирующем визоре&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;).&#xA;Используйте (&lt;IMG&gt;INTERACT&lt;&gt;) свечную водоросль, чтобы пополнить запасы кислорода.&#xA;Чтобы найти ее, используйте &lt;TECHNOLOGY&gt;сканер&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;).
                                -- Cull aquatic creatures to release %ITEM% (&lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;)&#xA;Local fauna are marked with red or green dots in the &lt;TECHNOLOGY&gt;Analysis Visor&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)&#xA;Interact (&lt;IMG&gt;INTERACT&lt;&gt;) with Candle Kelp to replenish oxygen&#xA;Locate Candle Kelp with the &lt;TECHNOLOGY&gt;Scanner&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;)
                                { "Russian", "Соберите: %ITEM% (&lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;)&#xA;Фауна отмечается красными и зелеными&#xA;точками в &lt;TECHNOLOGY&gt;анализирующем визоре&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_PORTALQUEST_MSG4_HYDROPOD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите: %ITEM% (&lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;)&#xA;Чтобы найти эти экзотические наросты, используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;).
                                { "Russian", "Соберите: %ITEM% (&lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;)&#xA;&lt;TECHNOLOGY&gt;Анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;) поможет найти&#xA;эти экзотические наросты" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_PORTALQUEST_MSG4_OFFALSAC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Собирайте бесформенных существ, чтобы получать %ITEM% (&lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;).&#xA;Местная фауна отмечается красными или зелеными точками на &lt;TECHNOLOGY&gt;анализирующем визоре&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;).
                                { "Russian", "Соберите: %ITEM% (&lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;)&#xA;Фауна отмечается красными и зелеными&#xA;точками в &lt;TECHNOLOGY&gt;анализирующем визоре&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_PORTALQUEST_MSG4_PUGNEUM" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите: %ITEM% (&lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;)&#xA;Вступайте в бой со Стражами, чтобы затем извлечь &lt;SPECIAL&gt;%ITEM%&lt;&gt; из их оболочек.
                                { "Russian", "Соберите: %ITEM% (&lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;)&#xA;&lt;SPECIAL&gt;%ITEM%&lt;&gt; можно добыть уничтожив стража" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_PORTALQUEST_MSG4_JAM_PLT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите &lt;TRADEABLE&gt;гексаягоду&lt;&gt; (&lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;), чтобы приготовить аномальный джем.&#xA;Чтобы найти эти заготавливаемые растения, используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;).
                                { "Russian", "Соберите &lt;TRADEABLE&gt;гексаягоду&lt;&gt; (&lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;)&#xA;&lt;TECHNOLOGY&gt;Анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;) поможет найти&#xA;эти растения" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_PORTALQUEST_MSG4_JAM_SWT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите &lt;TRADEABLE&gt;сладкий корень&lt;&gt; (&lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;), чтобы приготовить аномальный джем.&#xA;Чтобы найти эти заготавливаемые растения, используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;).
                                { "Russian", "Соберите &lt;TRADEABLE&gt;сладкий корень&lt;&gt; (&lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;)&#xA;&lt;TECHNOLOGY&gt;Анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;) поможет найти&#xA;эти растения" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_PORTALQUEST_MSG4_JAM_RFN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Используйте &lt;TECHNOLOGY&gt;переработчик нутриентов&lt;&gt;, чтобы приготовить &lt;SPECIAL&gt;аномальный джем&lt;&gt;.&#xA;Чтобы открыть меню созидания, нажмите &lt;IMG&gt;BUILD_MENU&lt;&gt;
                                { "Russian", "Используйте &lt;TECHNOLOGY&gt;переработчик нутриентов&lt;&gt;, чтобы приготовить &lt;SPECIAL&gt;аномальный джем&lt;&gt;&#xA;Откройте меню строительства, нажав &lt;IMG&gt;BUILD_MENU&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_PORTALQUEST_MSG4_JAM_SGR" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Очистите &lt;TRADEABLE&gt;сладкий корень&lt;&gt;, чтобы получить &lt;STELLAR&gt;%ITEM%&lt;&gt; (&lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;).&#xA;Используйте размещаемый &lt;TECHNOLOGY&gt;переработчик нутриентов&lt;&gt; для обработки ингредиентов.
                                { "Russian", "Очистите &lt;TRADEABLE&gt;сладкий корень&lt;&gt;&#xA;в &lt;TECHNOLOGY&gt;переработчике нутриентов&lt;&gt;&#xA;Приготовлено: &lt;STELLAR&gt;%ITEM%&lt;&gt; (&lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_PORTALQUEST_MSG4_JAM_JAM" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Смешайте &lt;TRADEABLE&gt;гексаягоду&lt;&gt; и &lt;STELLAR&gt;чистый сахар&lt;&gt;, чтобы получить &lt;STELLAR&gt;%ITEM%&lt;&gt; (&lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;).&#xA;Используйте размещаемый &lt;TECHNOLOGY&gt;переработчик нутриентов&lt;&gt; для обработки ингредиентов.
                                { "Russian", "Смешайте &lt;TRADEABLE&gt;гексаягоду&lt;&gt; и &lt;STELLAR&gt;чистый сахар&lt;&gt;&#xA;в &lt;TECHNOLOGY&gt;переработчике нутриентов&lt;&gt;&#xA;Приготовлено: &lt;STELLAR&gt;%ITEM%&lt;&gt; (&lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_PORTALQUEST_MSG4_EGGS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите &lt;STELLAR&gt;%ITEM%&lt;&gt;: &lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;.&#xA;Приманивайте существ с помощью &lt;TRADEABLE&gt;ферментированной жидкости&lt;&gt;, чтобы добывать их яйца.&#xA;Чтобы узнать &lt;STELLAR&gt;вкусовые предпочтения&lt;&gt; животных, сканируйте их &lt;TECHNOLOGY&gt;анализирующим визором&lt;&gt;&lt;IMG&gt;AIM&lt;&gt;&#xA;Использовать приманку &lt;TECHNOLOGY&gt;Инструменты&lt;&gt; в Меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                { "Russian", "Соберите: &lt;STELLAR&gt;%ITEM%&lt;&gt; (&lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;)&#xA;Приманивайте существ с помощью &lt;TRADEABLE&gt;ферментной жидкости&lt;&gt;, чтобы добывать их яйца&#xA;Чтобы узнать &lt;STELLAR&gt;вкусовые предпочтения&lt;&gt; животных, сканируйте их &lt;TECHNOLOGY&gt;анализирующим визором&lt;&gt; &lt;IMG&gt;AIM&lt;&gt;&#xA;Использовать приманку можно из раздела &lt;TECHNOLOGY&gt;Инструменты&lt;&gt; в быстром меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_PORTALQUEST_MSG4_EGGS_STR" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите &lt;STELLAR&gt;%ITEM%&lt;&gt;: &lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;.&#xA;Приманите высоких созданий &lt;TRADEABLE&gt;подслащенным компостом&lt;&gt;, чтобы собрать их яйца&#xA;Использовать приманку можно в разделе &lt;TECHNOLOGY&gt;Инструменты&lt;&gt; в быстром меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                { "Russian", "Соберите: &lt;STELLAR&gt;%ITEM%&lt;&gt; (&lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;)&#xA;Приманите высоких созданий &lt;TRADEABLE&gt;подслащенным компостом&lt;&gt;, чтобы собрать их яйца&#xA;Использовать приманку можно из раздела &lt;TECHNOLOGY&gt;Инструменты&lt;&gt; в быстром меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_PORTALQUEST_MSG4_QUADPROD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите &lt;SPECIAL&gt;четверные сервоприводы&lt;&gt;: &lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;&#xA;Вступите в бой с &lt;SPECIAL&gt;четвероногими стражами&lt;&gt;&#xA;Уничтожьте появившиеся &lt;VAL_ON&gt;баки с боевыми припасами&lt;&gt;, чтобы собрать &lt;SPECIAL&gt;четверные приводы&lt;&gt;
                                -- Gather &lt;SPECIAL&gt;Quad Servos&lt;&gt;: &lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;&#xA;Engage &lt;SPECIAL&gt;Sentinel Quads&lt;&gt; in combat&#xA;Destroy the released &lt;VAL_ON&gt;Combat Supply Barrels&lt;&gt; to collect &lt;SPECIAL&gt;Quad Servos&lt;&gt;
                                { "Russian", "Соберите &lt;SPECIAL&gt;четверные сервоприводы&lt;&gt;: &lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;&#xA;Вступите в бой с &lt;SPECIAL&gt;четвероногими стражами&lt;&gt;&#xA;Уничтожайте появляющиеся &lt;VAL_ON&gt;баллоны с боевыми ресурсами&lt;&gt;, чтобы добыть &lt;SPECIAL&gt;сервоприводы&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_PORTALQUEST_MSG4_MEAT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Убивайте существ, чтобы получать %ITEM% (&lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;).&#xA;Местная фауна отмечается красными или зелеными точками на &lt;TECHNOLOGY&gt;анализирующем визоре&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;).
                                { "Russian", "Соберите: %ITEM% (&lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;)&#xA;Фауна отмечается красными и зелеными&#xA;точками в &lt;TECHNOLOGY&gt;анализирующем визоре&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_PORTALQUEST_MSG4_FRUIT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите &lt;STELLAR&gt;%ITEM%&lt;&gt;: &lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;.&#xA;Приманите созданий &lt;TRADEABLE&gt;подслащенным компостом&lt;&gt;, чтобы собрать их «плоды».&#xA;Чтобы узнать &lt;STELLAR&gt;вкусовые предпочтения&lt;&gt; животных, сканируйте их &lt;TECHNOLOGY&gt;анализирующим визором&lt;&gt; &lt;IMG&gt;AIM&lt;&gt;&#xA;Использовать приманку можно в разделе &lt;TECHNOLOGY&gt;Инструменты&lt;&gt; в быстром меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                { "Russian", "Соберите: &lt;STELLAR&gt;%ITEM%&lt;&gt; (&lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;)&#xA;Приманите созданий &lt;TRADEABLE&gt;подслащенным компостом&lt;&gt;, чтобы собрать их «плоды»&#xA;Чтобы узнать &lt;STELLAR&gt;вкусовые предпочтения&lt;&gt; животных, сканируйте их &lt;TECHNOLOGY&gt;анализирующим визором&lt;&gt; &lt;IMG&gt;AIM&lt;&gt;&#xA;Использовать приманку можно из раздела &lt;TECHNOLOGY&gt;Инструменты&lt;&gt; в быстром меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_PORTALQUEST_MSG5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Стабилизируйте разрыв, принеся в жертву необходимые материалы.&#xA;Передайте жертвенные материалы путешественнику, использовав &lt;IMG&gt;TRANSFER&lt;&gt; в инвентаре.
                                -- Stabilise the rift with the demanded material&#xA;Transfer sacrificial items to one explorer using &lt;IMG&gt;TRANSFER&lt;&gt; in Inventory
                                { "Russian", "Стабилизируйте разрыв, принеся в жертву необходимые материалы&#xA;Передайте материалы путешественнику, используя &lt;IMG&gt;TRANSFER&lt;&gt; в инвентаре" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_PORTALQUEST_MSG6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вернитесь через портал.&#xA;Вернувшись, посетите Нексус и заберите свою награду.
                                { "Russian", "Вернитесь через портал&#xA;Вернувшись, посетите Нексус и заберите свою награду" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_PORTALQUEST_RIFT_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружено нарушение
                                -- Disturbance Detected
                                { "Russian", "Обнаружено искажение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_PORTALQUEST_RIFT_MARKER" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Аномальное нарушение
                                -- Anomalous Disturbance
                                { "Russian", "Аномальное искажение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_PORTALQUEST_RIFT_MARK_UW" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Подводное нарушение
                                -- Underwater Disturbance
                                { "Russian", "Подводное искажение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_PORTALQUEST_RIFT_CHAT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружен источник нарушения
                                -- Disturbance Source Identified
                                { "Russian", "Обнаружен источник искажения" },
                            }
                        },
                        --#endregion

                        --#region NOTIFY_SURVEY.*_MP
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NOTIFY_SURVEY_MP_DEPOT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Уязвимая постройка стражей расположена &lt;STELLAR&gt;неподалеку&lt;&gt;.&#xA;Используйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt;, чтобы точно установить местоположение постройки.
                                -- Vulnerable sentinel facility is &lt;STELLAR&gt;nearby&lt;&gt;&#xA;Use the &lt;TECHNOLOGY&gt;Target Sweep&lt;&gt; to pinpoint the vulnerable facility
                                { "Russian", "Уязвимая постройка стражей расположена &lt;STELLAR&gt;неподалеку&lt;&gt;&#xA;Узнайте точное местоположение постройки с помощью &lt;TECHNOLOGY&gt;разведки цели&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NOTIFY_SURVEY_SWAP_MP_DEPOT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Уязвимая постройка стражей расположена &lt;STELLAR&gt;неподалеку&lt;&gt;.&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;
                                { "Russian", "Уязвимая постройка стражей расположена &lt;STELLAR&gt;неподалеку&lt;&gt;&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NOTIFY_SURVEY_INACTIVE_MP_DEPOT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Уязвимая постройка стражей расположена &lt;STELLAR&gt;неподалеку&lt;&gt;.&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; в анализирующем визоре &lt;IMG&gt;AIM&lt;&gt;
                                { "Russian", "Уязвимая постройка стражей расположена &lt;STELLAR&gt;неподалеку&lt;&gt;&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; в анализирующем визоре &lt;IMG&gt;AIM&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NOTIFY_SURVEY_MP_COLL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Охраняемый склад расположен &lt;STELLAR&gt;неподалеку&lt;&gt;.&#xA;Используйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt;, чтобы точно установить местоположение склада.
                                -- Secure delivery depot is &lt;STELLAR&gt;nearby&lt;&gt;&#xA;Use the &lt;TECHNOLOGY&gt;Target Sweep&lt;&gt; to pinpoint the secure depot
                                { "Russian", "Охраняемый склад расположен &lt;STELLAR&gt;неподалеку&lt;&gt;&#xA;Используйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt;, чтобы установить точное местоположение склада" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NOTIFY_SURVEY_SWAP_MP_COLL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Охраняемый склад расположен &lt;STELLAR&gt;неподалеку&lt;&gt;.&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;
                                { "Russian", "Охраняемый склад расположен &lt;STELLAR&gt;неподалеку&lt;&gt;&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NOTIFY_SURVEY_INACTIVE_MP_COLL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Охраняемый склад расположен &lt;STELLAR&gt;неподалеку&lt;&gt;.&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; в анализирующем визоре &lt;IMG&gt;AIM&lt;&gt;
                                { "Russian", "Охраняемый склад расположен &lt;STELLAR&gt;неподалеку&lt;&gt;&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; в анализирующем визоре &lt;IMG&gt;AIM&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NOTIFY_SURVEY_MP_PKILL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сигнатура погибшего странника расположена &lt;STELLAR&gt;неподалеку&lt;&gt;.&#xA;Используйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt;, чтобы точно местоположение сигнатуры экзокостюма.
                                -- Fallen traveller signature is &lt;STELLAR&gt;nearby&lt;&gt;&#xA;Use the &lt;TECHNOLOGY&gt;Target Sweep&lt;&gt; to pinpoint the exosuit signature
                                { "Russian", "Сигнатура погибшего странника расположена &lt;STELLAR&gt;неподалеку&lt;&gt;&#xA;Используйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt;, чтобы точно определить сигнатуру экзокостюма" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NOTIFY_SURVEY_SWAP_MP_PKILL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сигнатура погибшего странника расположена &lt;STELLAR&gt;неподалеку&lt;&gt;.&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;
                                { "Russian", "Сигнатура погибшего странника расположена &lt;STELLAR&gt;неподалеку&lt;&gt;&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NOTIFY_SURVEY_INACTIVE_MP_PKILL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сигнатура погибшего странника расположена &lt;STELLAR&gt;неподалеку&lt;&gt;.&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; в анализирующем визоре &lt;IMG&gt;AIM&lt;&gt;.
                                { "Russian", "Сигнатура погибшего странника расположена &lt;STELLAR&gt;неподалеку&lt;&gt;&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; в анализирующем визоре &lt;IMG&gt;AIM&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NOTIFY_SURVEY_MP_FIENDS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Место заражения расположено &lt;STELLAR&gt;неподалеку&lt;&gt;.&#xA;Используйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt;, чтобы точно установить место заражения.
                                -- Infestation site is &lt;STELLAR&gt;nearby&lt;&gt;&#xA;Use the &lt;TECHNOLOGY&gt;Target Sweep&lt;&gt; to pinpoint the site
                                { "Russian", "Место заражения расположено &lt;STELLAR&gt;неподалеку&lt;&gt;&#xA;Используйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt;, чтобы установить точное место заражения" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NOTIFY_SURVEY_SWAP_MP_FIENDS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Место заражения расположено &lt;STELLAR&gt;неподалеку&lt;&gt;.&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;
                                { "Russian", "Место заражения расположено &lt;STELLAR&gt;неподалеку&lt;&gt;&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NOTIFY_SURVEY_INACTIVE_MP_FIEND" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Место заражения расположено &lt;STELLAR&gt;неподалеку&lt;&gt;.&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; в анализирующем визоре &lt;IMG&gt;AIM&lt;&gt;.
                                -- Infestation site is &lt;STELLAR&gt;nearby&lt;&gt;&#xA;Activate a &lt;STELLAR&gt;Target Sweep&lt;&gt; from the Analysis Visor &lt;IMG&gt;AIM&lt;&gt;
                                { "Russian", "Место заражения расположено &lt;STELLAR&gt;неподалеку&lt;&gt;&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; в анализирующем визоре &lt;IMG&gt;AIM&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NOTIFY_SURVEY_MP_REP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Нуждающееся существо находится &lt;STELLAR&gt;неподалеку&lt;&gt;.&#xA;Используйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt;, чтобы точно установить местоположение нуждающегося существа.
                                --
                                { "Russian", "Нуждающееся существо находится &lt;STELLAR&gt;неподалеку&lt;&gt;&#xA;Узнайте точное местоположение нуждающегося существа с помощью &lt;TECHNOLOGY&gt;разведки цели&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NOTIFY_SURVEY_SWAP_MP_REP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Нуждающееся существо находится &lt;STELLAR&gt;неподалеку&lt;&gt;.&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;
                                { "Russian", "Нуждающееся существо находится &lt;STELLAR&gt;неподалеку&lt;&gt;&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NOTIFY_SURVEY_INACTIVE_MP_REP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Нуждающееся существо находится &lt;STELLAR&gt;неподалеку&lt;&gt;.&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; в анализирующем визоре &lt;IMG&gt;AIM&lt;&gt;.
                                { "Russian", "Нуждающееся существо находится &lt;STELLAR&gt;неподалеку&lt;&gt;&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; в анализирующем визоре &lt;IMG&gt;AIM&lt;&gt;" },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COMM_NEXUS_WRAP_OBJ_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Нада и Поло ищут Странников, которые согласятся помочь им в исследованиях.&#xA;Находясь в космосе, вызовите &lt;SPECIAL&gt;Аномалию&lt;&gt; через быстрое меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;).&#xA;Запишитесь на участие в заданиях в &lt;STELLAR&gt;Нексусе&lt;&gt;.
                                -- Nada and Polo seek dedicated Travellers to assist with their research&#xA;In space, summon the &lt;SPECIAL&gt;Anomaly&lt;&gt; from the Quick Menu (&lt;IMG&gt;QUICK_MENU&lt;&gt;)&#xA;Sign up for missions at &lt;STELLAR&gt;the Nexus&lt;&gt;
                                { "Russian", "Нада и Поло ищут Странников, готовых помочь им в исследованиях&#xA;Находясь в космосе, вызовите &lt;SPECIAL&gt;Аномалию&lt;&gt; из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)&#xA;Принимайте участие в заданиях &lt;STELLAR&gt;Нексуса&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "QUICK_MENU_SUM_NEXUS_NO_SPACE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Космическая Аномалия недоступна :: Планетарные помехи
                                -- Space Anomaly Unavailable :: Planetary Interference
                                { "Russian", "Планетарные помехи мешают вызвать Космическую Аномалию" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COMM_NEXUS_WRAP_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Космическая Аномалия хранит данные, собранные Странниками в реальностях.  Имея  &lt;STELLAR&gt;универсальные данные&lt;&gt; компаньон для ртутного синтеза создает &lt;SPECIAL&gt;дополнительные коллекционные предметы&lt;&gt;. Экзотические коллекционные предметы синтезируются при помощи &lt;TRADE_SPECIALS&gt;ртути&lt;&gt;.
                                -- The Space Anomaly is accumulating research data from Travellers across multiple realities.&#xA;As further &lt;STELLAR&gt;universal data&lt;&gt; is submitted, the Quicksilver Synthesis Companion will unlock &lt;SPECIAL&gt;additional collectables&lt;&gt;. Exotic collectables may be synthesised with &lt;TRADE_SPECIALS&gt;Quicksilver&lt;&gt;.
                                { "Russian", "Космическая Аномалия хранит данные, собранные Странниками в реальностях. Товарищ по синтезу ртути открывает &lt;SPECIAL&gt;дополнительные коллекционные предметы&lt;&gt; по мере поступления &lt;STELLAR&gt;универсальных данных&lt;&gt;. Экзотические коллекционные предметы синтезируются при помощи &lt;TRADE_SPECIALS&gt;ртути&lt;&gt;." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_SPACEBATTLE_TITLE_5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Мор средь звезд
                                -- Blight Across the Stars
                                { "Russian", "Мор средь звёзд" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_CONSTRUCT_TITLE_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Убежище среди звезд
                                -- Niche In the Stars
                                { "Russian", "Убежище среди звёзд" },
                            }
                        },
                    }
                },
                { -- LANGUAGE/NMS_LOC7_RUSSIAN.MBIN
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_LOC7_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        --#region UI_MP_INFEST
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_INFEST_PLANET_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружена зараженная планета
                                -- Infested Planet Detected
                                { "Russian", "Обнаружена заражённая планета" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_INFEST_PLANET_MARKER" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Зараженная планета
                                -- Infested Planet
                                { "Russian", "Заражённая планета" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_INFEST_OBJ1_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Носитель множества пастей тянется к &lt;FUEL&gt;норам титанического червя&lt;&gt;. Уничтожьте &lt;FUEL&gt;алчущие отростки&lt;&gt;, чтобы ликвидировать заражение.&#xA;&#xA;Чтобы найти &lt;IMG&gt;ОПАСНЫЕ&lt;&gt; норы червей, воспользуйтесь &lt;TECHNOLOGY&gt;анализирующим визором&lt;&gt; на зараженных планетах.
                                -- The vessel of the many mouths is drawn to &lt;FUEL&gt;Titan Worm Burrows&lt;&gt;. Eliminate their &lt;FUEL&gt;Hungering Tendrils&lt;&gt; to purge the infestation.&#xA;&#xA;Worm Burrows &lt;IMG&gt;DANGER&lt;&gt; can be located with the &lt;TECHNOLOGY&gt;Analysis Visor&lt;&gt; while on infested worlds.
                                { "Russian", "Носитель множества пастей тянется к &lt;FUEL&gt;норам титанического червя&lt;&gt;. Уничтожьте &lt;FUEL&gt;алчущие отростки&lt;&gt;, чтобы ликвидировать заражение.&#xA;&#xA;Находите норы червей &lt;IMG&gt;DANGER&lt;&gt; с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt; на зараженных планетах." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_INFEST_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружена сильно зараженная планета!&#xA;Доберитесь до планеты &lt;SPECIAL&gt;%PLANET%&lt;&gt;.
                                -- Heavily infested planet detected!&#xA;Reach the planet &lt;SPECIAL&gt;%PLANET%&lt;&gt;
                                { "Russian", "Обнаружена сильно заражённая планета!&#xA;Доберитесь до планеты &lt;SPECIAL&gt;%PLANET%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_INFEST_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Уничтожьте &lt;FUEL&gt;алчущие отростки&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Их пасти во множестве наблюдаются возле &lt;FUEL&gt;нор титанических червей&lt;&gt;.&#xA;Чтобы найти норы червей, используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;).
                                -- Eliminate &lt;FUEL&gt;Hungering Tendrils&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Their Many Mouths gather around &lt;FUEL&gt;Titan Worm Burrows&lt;&gt;&#xA;Locate worm burrows with the &lt;TECHNOLOGY&gt;Analysis Visor&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)
                                { "Russian", "Уничтожьте &lt;FUEL&gt;алчущие отростки&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Возле &lt;FUEL&gt;нор титанических червей&lt;&gt; располагаются их пасти&#xA;Находите норы с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_INFEST_SURVEY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Уничтожьте &lt;FUEL&gt;алчущие отростки&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Их пасти во множестве наблюдаются возле &lt;FUEL&gt;нор титанических червей&lt;&gt;.&#xA;Чтобы найти норы червей, используйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt;.
                                { "Russian", "Уничтожьте &lt;FUEL&gt;алчущие отростки&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Возле &lt;FUEL&gt;нор титанических червей&lt;&gt; располагаются их пасти&#xA;Находите норы, используя &lt;TECHNOLOGY&gt;разведку цели&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_INFEST_SURVEY_SWAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Уничтожьте &lt;FUEL&gt;алчущие отростки&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Их пасти во множестве наблюдаются возле &lt;FUEL&gt;нор титанических червей&lt;&gt;.&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;.
                                { "Russian", "Уничтожьте &lt;FUEL&gt;алчущие отростки&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Возле &lt;FUEL&gt;нор титанических червей&lt;&gt; располагаются их пасти&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_INFEST_SURVEY_OFF" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Уничтожьте &lt;FUEL&gt;алчущие отростки&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Их пасти во множестве наблюдаются возле &lt;FUEL&gt;нор титанических червей&lt;&gt;.&#xA;Чтобы найти норы червей, активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;).
                                { "Russian", "Уничтожьте &lt;FUEL&gt;алчущие отростки&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Возле &lt;FUEL&gt;нор титанических червей&lt;&gt; располагаются их пасти&#xA;Находите норы, используя &lt;STELLAR&gt;разведку цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_INFEST_COMP_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Задание выполнено &lt;IMG&gt;SLASH&lt;&gt; Заражение идет на спад
                                { "Russian", "Заражение идет на спад" },
                            }
                        },
                        --#endregion

                        --#region UI_MP_HIVE
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_HIVE_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружена &lt;STELLAR&gt;планета с высокой активностью стражей&lt;&gt;.&#xA;Доберитесь до нужной планеты.
                                { "Russian", "Обнаружена &lt;STELLAR&gt;планета с высокой активностью стражей&lt;&gt;&#xA;Доберитесь до нужной планеты" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_HIVE_MSG1A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вы достигли &lt;STELLAR&gt;планеты с высокой активностью стражей&lt;&gt;.&#xA;Найдите столп стражей.
                                { "Russian", "Вы достигли &lt;STELLAR&gt;планеты с высокой активностью стражей&lt;&gt;&#xA;Найдите столп стражей" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_HIVE_SURVEY_INACTIVE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Столп стражей расположен &lt;STELLAR&gt;неподалеку&lt;&gt;.&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; в анализирующем визоре (&lt;IMG&gt;AIM&lt;&gt;).
                                -- Sentinel Pillar is &lt;STELLAR&gt;nearby&lt;&gt;&#xA;Activate a &lt;STELLAR&gt;Target Sweep&lt;&gt; from the Analysis Visor &lt;IMG&gt;AIM&lt;&gt;
                                { "Russian", "Столп стражей расположен &lt;STELLAR&gt;неподалеку&lt;&gt;&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; в анализирующем визоре (&lt;IMG&gt;AIM&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_HIVE_SURVEY_SWAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Столп стражей расположен &lt;STELLAR&gt;неподалеку&lt;&gt;.&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;
                                -- Sentinel Pillar is &lt;STELLAR&gt;nearby&lt;&gt;&#xA;Activate a &lt;TECHNOLOGY&gt;Target Sweep&lt;&gt; with &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;
                                { "Russian", "Столп стражей расположен &lt;STELLAR&gt;неподалеку&lt;&gt;&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_HIVE_SURVEY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Столп стражей расположен &lt;STELLAR&gt;неподалеку&lt;&gt;.&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; в анализирующем визоре (&lt;IMG&gt;AIM&lt;&gt;).
                                --Sentinel Pillar is &lt;STELLAR&gt;nearby&lt;&gt;&#xA;Activate a &lt;STELLAR&gt;Target Sweep&lt;&gt; from the Analysis Visor &lt;IMG&gt;AIM&lt;&gt;
                                { "Russian", "Столп стражей расположен &lt;STELLAR&gt;неподалеку&lt;&gt;&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; в анализирующем визоре (&lt;IMG&gt;AIM&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_HIVE_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Статус терминала столпа: &lt;SPECIAL&gt;ЗАБЛОКИРОВАН&lt;&gt;&#xA;Уничтожено узлов: %CURRENT%/%AMOUNT%&#xA;Уничтожьте узлы управления столпа (&lt;IMG&gt;ATTACK&lt;&gt;), чтобы получить доступ к терминалу.
                                -- The Pillar terminal status: &lt;SPECIAL&gt;LOCKED&lt;&gt;&#xA;Nodes destroyed: %CURRENT%/%AMOUNT%&#xA;Destroy the Pillar Control Nodes (&lt;IMG&gt;ATTACK&lt;&gt;) to access the terminal
                                { "Russian", "Терминал столпа стражей &lt;SPECIAL&gt;заблокирован&lt;&gt;&#xA;Уничтожено узлов: %CURRENT%/%AMOUNT%&#xA;Уничтожьте узлы управления (&lt;IMG&gt;ATTACK&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_HIVE_MSG2_NO_WEAPON" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Статус терминала столпа: &lt;SPECIAL&gt;ЗАБЛОКИРОВАН&lt;&gt;&#xA;Уничтожено узлов: %CURRENT%/%AMOUNT%&#xA;Сделайте &lt;TECHNOLOGY&gt;плазмомет&lt;&gt; для мультитула.
                                -- The Pillar terminal status: &lt;SPECIAL&gt;LOCKED&lt;&gt;&#xA;Nodes destroyed: %CURRENT%/%AMOUNT%&#xA;Construct a &lt;TECHNOLOGY&gt;Boltcaster&lt;&gt; in your Multi-Tool
                                { "Russian", "Терминал столпа стражей &lt;SPECIAL&gt;заблокирован&lt;&gt;&#xA;Уничтожено узлов: %CURRENT%/%AMOUNT%&#xA;Создайте &lt;TECHNOLOGY&gt;плазмомет&lt;&gt; для мультитула" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_HIVE_MSG2_CYCLE_WEAPON" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Статус терминала столпа: &lt;SPECIAL&gt;ЗАБЛОКИРОВАН&lt;&gt;&#xA;Уничтожено узлов: %CURRENT%/%AMOUNT%&#xA;Переключайте режимы оружия, используя &lt;IMG&gt;CYCLEWEAPON&lt;&gt;.
                                -- The Pillar terminal status: &lt;SPECIAL&gt;LOCKED&lt;&gt;&#xA;Nodes destroyed: %CURRENT%/%AMOUNT%&#xA;Cycle weapon mode with &lt;IMG&gt;CYCLEWEAPON&lt;&gt;
                                { "Russian", "Терминал столпа стражей &lt;SPECIAL&gt;заблокирован&lt;&gt;&#xA;Уничтожено узлов: %CURRENT%/%AMOUNT%&#xA;Переключайте режимы оружия, используя &lt;IMG&gt;CYCLEWEAPON&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_HIVE_MSG2_RETURN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Статус терминала столпа: &lt;SPECIAL&gt;ЗАБЛОКИРОВАН&lt;&gt;&#xA;Вернитесь к столпу стражей.
                                { "Russian", "Терминал столпа стражей &lt;SPECIAL&gt;заблокирован&lt;&gt;&#xA;Вернитесь к столпу стражей" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_HIVE_MSG2A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Статус терминала столпа: &lt;SPECIAL&gt;ЗАБЛОКИРОВАН&lt;&gt;&#xA;Сразитесь с силами стражей, чтобы получить доступ к терминалу.
                                { "Russian", "Терминал столпа стражей &lt;SPECIAL&gt;заблокирован&lt;&gt;&#xA;Сразитесь с силами стражей" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_HIVE_MSG2B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Статус терминала столпа: &lt;SPECIAL&gt;ЗАБЛОКИРОВАН&lt;&gt;&#xA;Текущая волна: &lt;FUEL&gt;%WANTED%/5&lt;&gt;&#xA;Победите силы стражей, чтобы получить доступ к терминалу.
                                -- The Pillar terminal status: &lt;SPECIAL&gt;LOCKED&lt;&gt;&#xA;Current wave: &lt;FUEL&gt;%WANTED%/5&lt;&gt;&#xA;Defeat Sentinel forces to access the terminal
                                { "Russian", "Терминал столпа стражей &lt;SPECIAL&gt;заблокирован&lt;&gt;&#xA;Текущая волна: &lt;FUEL&gt;%WANTED%/5&lt;&gt;&#xA;Победите силы стражей" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_HIVE_MSG2B_ALT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Статус терминала столпа: &lt;SPECIAL&gt;ЗАБЛОКИРОВАН&lt;&gt;&#xA;Текущая волна охранников: &lt;FUEL&gt;%WAVE%/%WAVES%&lt;&gt;&#xA;Победите силы стражей, чтобы получить доступ к терминалу.
                                -- The Pillar terminal status: &lt;SPECIAL&gt;LOCKED&lt;&gt;&#xA;Current guard wave: &lt;FUEL&gt;%WAVE%/%WAVES%&lt;&gt;&#xA;Defeat Sentinel forces to access the terminal
                                { "Russian", "Терминал столпа стражей &lt;SPECIAL&gt;заблокирован&lt;&gt;&#xA;Волна стражей: &lt;FUEL&gt;%WAVE%/%WAVES%&lt;&gt;&#xA;Победите силы стражей" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_HIVE_MSG2B_ALT2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Статус терминала столпа: &lt;SPECIAL&gt;ЗАБЛОКИРОВАН&lt;&gt;&#xA;Осталось стражей: %CURRENT%&#xA;Победите силы стражей, чтобы получить доступ к терминалу.
                                -- The Pillar terminal status: &lt;SPECIAL&gt;LOCKED&lt;&gt;&#xA;Guards remaining: %CURRENT%&#xA;Defeat Sentinel forces to access the terminal
                                { "Russian", "Терминал столпа стражей &lt;SPECIAL&gt;заблокирован&lt;&gt;&#xA;Осталось стражей: %CURRENT%&#xA;Победите силы стражей" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_HIVE_MSG2C" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Уничтожено узлов: 3/3 — терминал уязвим!&#xA;Осмотрите терминал, чтобы загрузить данные на Космическую Аномалию.
                                -- Nodes destroyed: 3/3 - terminal vulnerable!&#xA;Investigate the terminal to upload data for the Space Anomaly
                                { "Russian", "Уничтожено узлов: 3/3 — терминал уязвим!&#xA;Осмотрите терминал" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_HIVE_ENCOUNTER_WAVE_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПРИБЛИЖАЕТСЯ ВОЛНА СТРАЖЕЙ %WAVE%!
                                -- SENTINEL WAVE %WAVE% INCOMING!
                                { "Russian", "ПРИБЛИЖАЕТСЯ %WAVE% ВОЛНА СТРАЖЕЙ!" },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TRADE_BUY_SWITCH_SHOP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Заберите особые награды
                                -- Collect special rewards
                                { "Russian", "Забрать особые награды" },
                            }
                        },
                    }
                },
                { -- LANGUAGE/NMS_LOC8_RUSSIAN.MBIN
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_LOC8_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        --#region UI_MP_BUGS
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_BUGS_PLANET_MARKER" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Зараженная планета
                                -- Infested Planet
                                { "Russian", "Заражённая планета" },
                            }
                        },
                        -- Задание выполнено дублириуется еще снизу, не понятно зачем так было делать
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_BUGS_COMP_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Задание выполнено &lt;IMG&gt;SLASH&lt;&gt; Стая уходит...
                                -- Mission Success &lt;IMG&gt;SLASH&lt;&gt; The brood retreats...
                                { "Russian", "Стая уходит..." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_BUGS_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Истребите &lt;TRADEABLE&gt;мерзкие стаи&lt;&gt;.&#xA;Доберитесь до зараженной планеты &lt;STELLAR&gt;%PLANET%&lt;&gt;.
                                { "Russian", "Истребите &lt;TRADEABLE&gt;мерзкие стаи&lt;&gt;&#xA;Доберитесь до зараженной планеты &lt;STELLAR&gt;%PLANET%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_BUGS_MSG1A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Истребите &lt;TRADEABLE&gt;мерзкие стаи&lt;&gt;.&#xA;Доберитесь до заражения в системе &lt;STELLAR&gt;%SYSTEM%&lt;&gt;.
                                { "Russian", "Истребите &lt;TRADEABLE&gt;мерзкие стаи&lt;&gt;&#xA;Доберитесь до заражения в системе &lt;STELLAR&gt;%SYSTEM%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_BUGS_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Истребите мерзкие стаи: %CURRENT%/%AMOUNT%&#xA;Раздавите мерзкую мясистую &lt;TRADEABLE&gt;личинку&lt;&gt;, чтобы призвать &lt;TRADEABLE&gt; мать стаи&lt;&gt;.&#xA;Откройте инвентарь (&lt;IMG&gt; ИНВЕНТАРЬ&lt;&gt;) и выберите личинку, чтобы ее &lt;FUEL&gt; раздавить&lt;&gt;.
                                -- Exterminate vile broods: %CURRENT%/%AMOUNT%&#xA;Crush a vile, juicy &lt;TRADEABLE&gt;grub&lt;&gt; to summon a &lt;TRADEABLE&gt;brood mother&lt;&gt;&#xA;Open your inventory (&lt;IMG&gt;INVENTORY&lt;&gt;) and select the grub to &lt;FUEL&gt;crush&lt;&gt; it
                                { "Russian", "Истребите мерзкие стаи: %CURRENT%/%AMOUNT%&#xA;Раздавите мерзкую мясистую &lt;TRADEABLE&gt;личинку&lt;&gt;, чтобы призвать &lt;TRADEABLE&gt; мать стаи&lt;&gt;&#xA;Откройте инвентарь (&lt;IMG&gt;INVENTORY&lt;&gt;) и выберите личинку, чтобы ее &lt;FUEL&gt; раздавить&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_BUGS_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Истребите мерзкие стаи: %CURRENT%/%AMOUNT%&#xA;Раздавите &lt;TRADEABLE&gt;мясистые личинки&lt;&gt;, чтобы призвать &lt;TRADEABLE&gt;мать стаи&lt;&gt;.&#xA;Используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы искать личинки.
                                -- Exterminate vile broods: %CURRENT%/%AMOUNT%&#xA;Crush &lt;TRADEABLE&gt;juicy grubs&lt;&gt; to summon a &lt;TRADEABLE&gt;Brood Mother&lt;&gt;&#xA;Locate grubs with the &lt;TECHNOLOGY&gt;Analysis Visor&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)
                                { "Russian", "Истребите мерзкие стаи: %CURRENT%/%AMOUNT%&#xA;Раздавите &lt;TRADEABLE&gt;мясистые личинки&lt;&gt;, чтобы призвать &lt;TRADEABLE&gt;мать стаи&lt;&gt;&#xA;Используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы искать личинки" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_BUGS_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Истребите мерзкие стаи: %CURRENT%/%AMOUNT%&#xA;Победите &lt;TRADEABLE&gt;мать стаи&lt;&gt;, чтобы ослабить заражение.
                                { "Russian", "Истребите мерзкие стаи: %CURRENT%/%AMOUNT%&#xA;Победите &lt;TRADEABLE&gt;мать стаи&lt;&gt;, чтобы ослабить заражение" },
                            }
                        },
                        --#endregion

                        --#region UI_MP_CORRUPT
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_CORRUPT_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружен всплеск энергии диссонанса!&#xA;Доберитесь до планеты &lt;SPECIAL&gt;%PLANET%&lt;&gt;.
                                -- Dissonant energy spike detected!&#xA;Reach the planet &lt;SPECIAL&gt;%PLANET%&lt;&gt;
                                { "Russian", "Обнаружен всплеск энергии диссонанса!&#xA;Доберитесь до планеты &lt;SPECIAL&gt;%PLANET%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_CORRUPT_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Уничтожьте &lt;FUEL&gt;резонаторы диссонанса&lt;&gt;: %CURRENT%/%AMOUNT%.&#xA;Испорченный рой питается дисгармоничной энергией.&#xA;Найдите извлекатели диссонанса с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;).
                                -- Destroy &lt;FUEL&gt;Dissonance Resonators&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;The corrupted swarm feed on disharmonic energy&#xA;Locate dissonant extractors with the &lt;TECHNOLOGY&gt;Analysis Visor&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)
                                { "Russian", "Уничтожьте &lt;FUEL&gt;резонаторы диссонанса&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Испорченный рой питается дисгармоничной энергией&#xA;Используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;) для поиска" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_CORRUPT_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Резонатор диссонанса уничтожен!&#xA;Победите испорченных стражей или спрячьтесь от них.
                                -- Dissonance Resonators destroyed!&#xA;Defeat or hide from corrupted Sentinel forces
                                { "Russian", "Резонаторы диссонанса уничтожены!&#xA;Победите испорченных стражей или спрячьтесь от них" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_CORRUPT_COMP_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Задание выполнено &lt;IMG&gt;SLASH&lt;&gt; Испорченный рой ослаблен...
                                -- Mission Success &lt;IMG&gt;SLASH&lt;&gt; Corrupt swarm weakening...
                                { "Russian", "Испорченный рой ослаблен..." },
                            }
                        },
                        --#endregion
                    }
                },
                { -- LANGUAGE/NMS_UPDATE3_RUSSIAN.MBIN
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_UPDATE3_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MISSION_STARTED" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ЗАДАНИЕ НАЧАЛОСЬ
                                -- MISSION STARTED
                                { "Russian", "ЗАДАНИЕ НАЧАТО" },
                            }
                        },
                    }
                },
                { -- LANGUAGE/NMS_LOC9_RUSSIAN.MBIN
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_LOC9_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        --#region UI_MP_FISH
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_FISH_OBJ1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поймать необычную рыбу (%AMOUNT% шт.)
                                -- Catch %AMOUNT% uncommon fish
                                { "Russian", "Поймать %AMOUNT% шт. необычной рыбы" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_FISH_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поймайте &lt;TECHNOLOGY&gt;необычную рыбу&lt;&gt;.&#xA;Доберитесь до места рыбалки на планете &lt;STELLAR&gt;%PLANET%&lt;&gt;.
                                -- Catch &lt;TECHNOLOGY&gt;uncommon fish&lt;&gt;&#xA;Reach the fishing spot on &lt;STELLAR&gt;%PLANET%&lt;&gt;
                                { "Russian", "Поймайте &lt;TECHNOLOGY&gt;необычную рыбу&lt;&gt; на планете &lt;STELLAR&gt;%PLANET%&lt;&gt;&#xA;Доберитесь до рыболовного места" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_FISH_MSG1A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поймайте &lt;TECHNOLOGY&gt;необычную рыбу&lt;&gt;.&#xA;Доберитесь до места рыбалки в системе &lt;STELLAR&gt;%SYSTEM%&lt;&gt;.
                                { "Russian", "Поймайте &lt;TECHNOLOGY&gt;необычную рыбу&lt;&gt; в системе &lt;STELLAR&gt;%SYSTEM%&lt;&gt;&#xA;Доберитесь до рыболовного места" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_FISH_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поймайте &lt;TECHNOLOGY&gt;необычную&lt;&gt; рыбу: %CURRENT%/%AMOUNT%&#xA;Найдите подходящий водоем и забросьте крючок с помощью &lt;IMG&gt;ATTACK&lt;&gt;.&#xA;Изготовьте и используйте &lt;STELLAR&gt;наживку&lt;&gt;, чтобы приманить редкую рыбу.
                                { "Russian", "Поймайте &lt;TECHNOLOGY&gt;необычную&lt;&gt; рыбу: %CURRENT%/%AMOUNT%&#xA;Найдите подходящий водоем и забросьте крючок с помощью &lt;IMG&gt;ATTACK&lt;&gt;&#xA;Изготовьте и используйте &lt;STELLAR&gt;наживку&lt;&gt;, чтобы приманить редкую рыбу" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_FISH_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поймайте &lt;TECHNOLOGY&gt;необычную&lt;&gt; рыбу: %CURRENT%/%AMOUNT%&#xA;В системе обнаружена &lt;TECHNOLOGY&gt;водная планета&lt;&gt;.&#xA;Океаны на поверхности планеты видны из космоса.
                                -- Catch &lt;TECHNOLOGY&gt;uncommon&lt;&gt; fish: %CURRENT%/%AMOUNT%&#xA;&lt;TECHNOLOGY&gt;Water planet&lt;&gt; detected in local system&#xA;Oceans are visible on a planet's surface from space
                                { "Russian", "Поймайте &lt;TECHNOLOGY&gt;необычную&lt;&gt; рыбу: %CURRENT%/%AMOUNT%&#xA;В системе обнаружена планета с &lt;TECHNOLOGY&gt;водой&lt;&gt;&#xA;Океаны на поверхности планеты видны из космоса" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_FISH_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поймайте &lt;TECHNOLOGY&gt;необычную&lt;&gt; рыбу: %CURRENT%/%AMOUNT%&#xA;Найдите системы с &lt;TECHNOLOGY&gt;водой&lt;&gt; на &lt;TECHNOLOGY&gt;галактической карте&lt;&gt;.&#xA;Находясь на звездолете, откройте галактическую карту (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                { "Russian", "Поймайте &lt;TECHNOLOGY&gt;необычную&lt;&gt; рыбу: %CURRENT%/%AMOUNT%&#xA;Найдите систему с &lt;TECHNOLOGY&gt;водой&lt;&gt; на &lt;TECHNOLOGY&gt;галактической карте&lt;&gt;&#xA;Находясь в космосе, откройте галактическую карту (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_FISH_MSG5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поймайте &lt;TECHNOLOGY&gt;необычную&lt;&gt; рыбу: %CURRENT%/%AMOUNT%&#xA;&lt;TECHNOLOGY&gt;Снасть&lt;&gt; не установлена.&#xA;Просматривайте чертежи в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;) с помощью &lt;IMG&gt;TECHMENU&lt;&gt;.&#xA;&lt;COMMODITY&gt;Закрепите&lt;&gt; указания по установке с помощью &lt;IMG&gt;PIN&lt;&gt;.
                                -- Catch &lt;TECHNOLOGY&gt;uncommon&lt;&gt; fish: %CURRENT%/%AMOUNT%&#xA;No &lt;TECHNOLOGY&gt;Fishing Rig&lt;&gt; installed&#xA;In the Inventory (&lt;IMG&gt;INVENTORY&lt;&gt;), view blueprints with &lt;IMG&gt;TECHMENU&lt;&gt;&#xA;&lt;COMMODITY&gt;Pin&lt;&gt; installation instructions with &lt;IMG&gt;PIN&lt;&gt;
                                { "Russian", "Поймайте &lt;TECHNOLOGY&gt;необычную&lt;&gt; рыбу: %CURRENT%/%AMOUNT%&#xA;&lt;TECHNOLOGY&gt;Удочка&lt;&gt; не установлена&#xA;Изучите чертежи в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;) с помощью &lt;IMG&gt;TECHMENU&lt;&gt;&#xA;Инструкции по установке можно &lt;COMMODITY&gt;закрепить&lt;&gt; с помощью &lt;IMG&gt;PIN&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_FISH_MSG6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поймайте &lt;TECHNOLOGY&gt;необычную&lt;&gt; рыбу: %CURRENT%/%AMOUNT%&#xA;Найдите подходящий водоем, чтобы начать рыбачить.&#xA;Выберите &lt;TECHNOLOGY&gt;снасть&lt;&gt; с помощью &lt;IMG&gt;CYCLEWEAPON&lt;&gt;.
                                { "Russian", "Поймайте &lt;TECHNOLOGY&gt;необычную&lt;&gt; рыбу: %CURRENT%/%AMOUNT%&#xA;Найдите подходящий водоем для ловли&#xA;Выберите &lt;TECHNOLOGY&gt;удочку&lt;&gt; с помощью &lt;IMG&gt;CYCLEWEAPON&lt;&gt;" },
                            }
                        },
                        --#endregion
                    }
                },
            }
        }
    }
}
