NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]    = "_RuFix_Farscape.pak",
    ["MOD_AUTHOR"]      = "gh0stwizard",
    ["MOD_DESCRIPTION"] = "In memory of Farscape TV series",
    ["NMS_VERSION"]     = "5.72",
    ["EXML_CREATE"]     = "false",
    ["MODIFICATIONS"]   = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                { -- LANGUAGE/NMS_LOC1_RUSSIAN.MBIN
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_LOC1_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "HUD_JUMPING" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ИМП привод активен (Pulse Engine Active)
                                { "Russian", "ПЛАЗМОДВИГАТЕЛЬ АКТИВЕН" },
                            }
                        },
                        -- после прыжка в другую систему, большими буквами на конце "Система"
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "DISC_TYPE_SYSTEM" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Система
                                { "Russian", " " },
                            }
                        },
                        -- эти строчки не закапсить, т.к. в %DISTANCE% добавляется "св. лет"
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLACK_HOLE_SUCCESS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Прыжок сквозь черную дыру удался. Пройденное расстояние: %DISTANCE%
                                -- Black Hole Warp Successful. Distance Travelled %DISTANCE%
                                { "Russian", "Выполнен прыжок на расстояние %DISTANCE%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RELIC_GATE_SUCCESS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Древний варп-проход: переход успешен. Пройденное расстояние: %DISTANCE%
                                -- Ancient Warp Pathway Successful. Distance Travelled %DISTANCE%
                                { "Russian", "Выполнен прыжок на расстояние %DISTANCE%" },
                            }
                        },
                        -- используется только на галактической карте и капсить не нужно было (даже на англ.)
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "GLXY_REGION" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- РЕГИОН
                                -- REGION
                                { "Russian", "Регион" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NEW_GALAXY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружена новая галактика
                                -- New Galaxy Discovered
                                { "Russian", "ОБНАРУЖЕНА НОВАЯ ГАЛАКТИКА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BUY_COMPARE_SHIP_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сравнить и переместить инвентарь звездолета
                                -- Compare and transfer starship inventory
                                { "Russian", "Подробнее о звездолёте" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BUY_COMPARE_FREIGHTER_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сравнить и переместить инвентарь грузового корабля
                                -- Compare and transfer freighter inventory
                                { "Russian", "Подробнее о грузовом судне" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "JM_NEXT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- До следующего важного этапа (%NEXT%): %AMOUNT%
                                -- Next Milestone (%NEXT%) in %AMOUNT%
                                { "Russian", "До этапа %NEXT%: %AMOUNT%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "STANDING_UI_NEXT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- След. (%STAND%) через: %NUM%
                                -- Next Rank (%STAND%) in: %NUM%
                                { "Russian", "До ранга %STAND%: %NUM%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "QUICK_MENU_NO_FUEL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Нет доступного топлива
                                -- No Fuel Available
                                { "Russian", "НЕТ ДОСТУПНОГО ТОПЛИВА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NOTIFY_JETPACK" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Используйте реактивный ранец&#xA;Для активации удерживайте &lt;IMG&gt;JUMP&lt;&gt;
                                -- Use Jetpack to climb&#xA;Hold &lt;IMG&gt;JUMP&lt;&gt; to activate
                                { "Russian", "Удерживайте &lt;IMG&gt;JUMP&lt;&gt; для левитации" },
                            }
                        },
                        -- устанавливается подкомпонент, а не сама технология
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BUILD_TECH" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- УСТАНОВИТЬ ТЕХНОЛОГИЮ
                                -- INSTALL TECHNOLOGY
                                { "Russian", "УСТАНОВИТЬ" },
                            }
                        },

                        --#region Черная дыра / Кротовая нора
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLACK_HOLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Кротовая нора" }, -- Черная дыра
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "GLXY_ANALYSIS_BLACKHOLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "ВНИМАНИЕ: обнаружена кротовая нора" }, -- ВНИМАНИЕ: обнаружена черная дыра
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "GLXY_ROUTE_BH" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Путь к кротовой норе" }, -- Путь к черной дыре
                            }
                        },
                        --#endregion

                        -- в идеале бы p со стрелкой вправо наверху, но такого нет в шрифтах близко
                        -- максимум греческое "ро"
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "HUD_JUMP_ENGAGE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запуск имп. привода (Engaging Pulse Engine)
                                { "Russian", "ЗАПУСК ПЛАЗМОДВИГАТЕЛЯ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "INTRCT_SHIELD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;SLASH&lt;&gt; СООБЩЕНИЕ ЭКЗОКОСТЮМА: щит перезаряжен &lt;IMG&gt;SLASH&lt;&gt;
                                { "Russian", "&lt;IMG&gt;SLASH&lt;&gt; ЩИТ ЭКЗОКОСТЮМА ЗАРЯЖЕН &lt;IMG&gt;SLASH&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "INTRCT_SHIP_SHIELD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;SLASH&lt;&gt; Щиты звездолета восстановлены &lt;IMG&gt;SLASH&lt;&gt;
                                { "Russian", "&lt;IMG&gt;SLASH&lt;&gt; ЩИТЫ ЗВЕЗДОЛЁТА ВОССТАНОВЛЕНЫ &lt;IMG&gt;SLASH&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "INTRCT_HAZARD_COLD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;SLASH&lt;&gt; СООБЩЕНИЕ ЭКЗОКОСТЮМА: температура повышена &lt;IMG&gt;SLASH&lt;&gt;
                                { "Russian", "&lt;IMG&gt;SLASH&lt;&gt; ТЕМПЕРАТУРА ЭКЗОКОСТЮМА ПОВЫШЕНА &lt;IMG&gt;SLASH&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "INTRCT_HAZARD_RAD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;SLASH&lt;&gt; СООБЩЕНИЕ ЭКЗОКОСТЮМА: уровень радиации понижен &lt;IMG&gt;SLASH&lt;&gt;
                                { "Russian", "&lt;IMG&gt;SLASH&lt;&gt; УРОВЕНЬ РАДИАЦИИ ПОНИЖЕН &lt;IMG&gt;SLASH&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "INTRCT_HAZARD_TOX" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;SLASH&lt;&gt; СООБЩЕНИЕ ЭКЗОКОСТЮМА: токсины нейтрализованы &lt;IMG&gt;SLASH&lt;&gt;
                                { "Russian", "&lt;IMG&gt;SLASH&lt;&gt; ТОКСИНЫ НЕЙТРАЛИЗОВАНЫ &lt;IMG&gt;SLASH&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "INTRCT_HAZARD_HEAT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;SLASH&lt;&gt; СООБЩЕНИЕ ЭКЗОКОСТЮМА: температура понижена &lt;IMG&gt;SLASH&lt;&gt;
                                { "Russian", "&lt;IMG&gt;SLASH&lt;&gt; ТЕМПЕРАТУРА ЭКЗОКОСТЮМА ПОНИЖЕНА &lt;IMG&gt;SLASH&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "INTRCT_DAMAGE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;SLASH&lt;&gt;ОПАСНОСТЬ: замечено повреждение экзокостюма&lt;IMG&gt;SLASH&lt;&gt;
                                { "Russian", "&lt;IMG&gt;SLASH&lt;&gt; ЭКЗОКОСТЮМ ПОВРЕЖДЕН &lt;IMG&gt;SLASH&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "INTRCT_SHIELDDAMAGE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;SLASH&lt;&gt;ОПАСНОСТЬ: щит экзокостюма истощен&lt;IMG&gt;SLASH&lt;&gt;
                                { "Russian", "&lt;IMG&gt;SLASH&lt;&gt; ЩИТ ЭКЗОКОСТЮМА ИСТОЩЕН &lt;IMG&gt;SLASH&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "INTRCT_FULL_SHIPSHIELD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;SLASH&lt;&gt; Щиты звездолета на максимуме &lt;IMG&gt;SLASH&lt;&gt;
                                { "Russian", "&lt;IMG&gt;SLASH&lt;&gt; ЩИТЫ ЗВЕЗДОЛЁТА НА МАКСИМУМЕ &lt;IMG&gt;SLASH&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "INTRCT_FULLHEALTH_ALT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;SLASH&lt;&gt;СООБЩЕНИЕ ЭКЗОКОСТЮМА: здоровье на максимуме&lt;IMG&gt;SLASH&lt;&gt;
                                { "Russian", "&lt;IMG&gt;SLASH&lt;&gt;ЗДОРОВЬЕ НА МАКСИМУМЕ&lt;IMG&gt;SLASH&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "PIRATE_PROBE_SUCCESS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Враждебное сканирование определило наличие ценного груза
                                -- Hostile sub-space scan found valuable cargo
                                { "Russian", "ВРАЖДЕБНОЕ СКАНИРОВАНИЕ ОБНАРУЖИЛО ЦЕННЫЙ ГРУЗ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "PIRATE_PROBE_FAIL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Враждебное сканирование сорвалось
                                -- Hostile sub-space scan failed
                                { "Russian", "ВРАЖДЕБНОЕ СКАНИРОВАНИЕ СОРВАЛОСЬ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINELS_INCOMING1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Дроны стражей оповещены
                                -- SENTINEL DRONES ALERTED
                                { "Russian", "ДРОНЫ СТРАЖЕЙ ОПОВЕЩЕНЫ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINELS_INCOMING2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ВНИМАНИЕ: К СТРАЖАМ НАПРАВЛЕНО ПОДКРЕПЛЕНИЕ
                                -- WARNING - SENTINEL REINFORCEMENTS DEPLOYED
                                { "Russian", "ВНИМАНИЕ • К СТРАЖАМ НАПРАВЛЕНО ПОДКРЕПЛЕНИЕ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINELS_INCOMING3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ВНИМАНИЕ: ЗАПУЩЕН БОЕВОЙ СТРАЖ
                                -- WARNING - SENTINEL COMBAT UNIT DEPLOYED
                                { "Russian", "ВНИМАНИЕ • ЗАПУЩЕН БОЕВОЙ СТРАЖ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINELS_INCOMING4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ВНИМАНИЕ: ОБНАРУЖЕН ШАГАЮЩИЙ СТРАЖ
                                -- WARNING - SENTINEL WALKER DETECTED
                                { "Russian", "ВНИМАНИЕ • ОБНАРУЖЕН ШАГАЮЩИЙ СТРАЖ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINELS_INCOMING5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ВНИМАНИЕ: ЭЛИТНЫЕ СТРАЖИ
                                -- WARNING - ELITE SENTINEL FORCE
                                { "Russian", "ВНИМАНИЕ • ЭЛИТНЫЕ СТРАЖИ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_POLICE_INCOMING" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ВНИМАНИЕ: ПРИБЛИЖАЮТСЯ СТРАЖИ-ПЕРЕХВАТЧИКИ
                                -- WARNING - SENTINEL INTERCEPTORS INCOMING
                                { "Russian", "ПРИБЛИЖАЮТСЯ СТРАЖИ-ПЕРЕХВАТЧИКИ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NOTIFY_PIRATE_BATTLE_REINFORCE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ВНИМАНИЕ: ПРИБЛИЖАЮТСЯ КОРАБЛИ ПОДКРЕПЛЕНИЯ
                                -- WARNING - REINFORCEMENT SHIPS INBOUND
                                { "Russian", "ПРИБЛИЖАЕТСЯ ПОДКРЕПЛЕНИЕ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BASEBUILD_INVALID_BIOME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Нельзя посадить на улице &lt;IMG&gt;SLASH&lt;&gt; Не подходит биом
                                -- Cannot Plant Outdoors &lt;IMG&gt;SLASH&lt;&gt; Invalid Biome
                                { "Russian", "НЕЛЬЗЯ ПОСАДИТЬ СНАРУЖИ • НЕ ПОДХОДИТ БИОМ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BASEBUILD_INVALID_POS_BUILDING" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Строительство невозможно &lt;IMG&gt;SLASH&lt;&gt; Надо присоединить к строению
                                -- Cannot Build &lt;IMG&gt;SLASH&lt;&gt; Must Attach To Structure
                                { "Russian", "НАДО ПРИСОЕДИНИТЬ К СТРОЕНИЮ" },
                            }
                        },
                        -- в меню экрана инвентаря звездолета
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SHIP_OUT_OF_RANGE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Звездолет вне досягаемости
                                -- Starship out of range
                                { "Russian", "ЗВЕЗДОЛЁТ ВНЕ ДОСЯГАЕМОСТИ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "VEHICLE_OUT_OF_RANGE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вездеход вне досягаемости
                                -- Exocraft out of range
                                { "Russian", "ВЕЗДЕХОД ВНЕ ДОСЯГАЕМОСТИ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SHIP_TELEPORT_RANGE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Включена телепортация предметов
                                -- Item Teleportation Enabled
                                { "Russian", "ВКЛЮЧЕНА ТЕЛЕПОРТАЦИЯ ПРЕДМЕТОВ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BASEBUILD_WIRE_TOO_LONG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Не удается построить &lt;IMG&gt;SLASH&lt;&gt; Слишком длинное соединение
                                -- Cannot Build &lt;IMG&gt;SLASH&lt;&gt; Connection Too Long
                                { "Russian", "СЛИШКОМ ДЛИННОЕ СОЕДИНЕНИЕ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BASEBUILD_LIMIT_REACHED" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Нельзя построить &lt;IMG&gt;SLASH&lt;&gt; Превышен лимит построек
                                -- Cannot Build &lt;IMG&gt;SLASH&lt;&gt; Construction Limit Reached
                                { "Russian", "ПРЕВЫШЕН ЛИМИТ ПОСТРОЕК" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BASEBUILD_INVALID_POS_TERRAIN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Нельзя построить &lt;IMG&gt;SLASH&lt;&gt; Надо разместить на ландшафте
                                -- Cannot Build &lt;IMG&gt;SLASH&lt;&gt; Must Place On Terrain
                                { "Russian", "НАДО РАЗМЕСТИТЬ НА ЛАНДШАФТЕ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BASEBUILD_PLAYER_INSIDE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Нельзя построить &lt;IMG&gt;SLASH&lt;&gt; Объект слишком близко
                                -- Cannot Build &lt;IMG&gt;SLASH&lt;&gt; Object Too Close
                                { "Russian", "ОБЪЕКТ СЛИШКОМ БЛИЗКО" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BASEBUILD_PLAYER_INSIDE_ALT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Нельзя построить &lt;IMG&gt;SLASH&lt;&gt;%NAME% находится слишком близко от объекта
                                -- Cannot Build &lt;IMG&gt;SLASH&lt;&gt; Object Too Close to %NAME%
                                { "Russian", "%NAME% находится слишком близко от объекта" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BASEBUILD_SHIP_INSIDE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Нельзя построить &lt;IMG&gt;SLASH&lt;&gt; Слишком близко от звездолета
                                -- Cannot Build &lt;IMG&gt;SLASH&lt;&gt; Too Close To Starship
                                { "Russian", "НЕЛЬЗЯ СТРОИТЬ СЛИШКОМ БЛИЗКО ОТ ЗВЕЗДОЛЁТА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BASEBUILD_INVALID_PERMISSIONS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Постройка невозможна &lt;IMG&gt;SLASH&lt;&gt; Нет разрешения на изменение
                                -- Cannot Build &lt;IMG&gt;SLASH&lt;&gt; No Edit Permission
                                { "Russian", "НЕТ РАЗРЕШЕНИЯ НА ИЗМЕНЕНИЕ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TERRAIN_INVALID_PERMISSIONS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Нельзя изменить ландшафт &lt;IMG&gt;SLASH&lt;&gt; Нет разрешения на изменение
                                -- Cannot Alter Terrain &lt;IMG&gt;SLASH&lt;&gt; No Edit Permission
                                { "Russian", "НЕТ РАЗРЕШЕНИЯ НА ИЗМЕНЕНИЕ ЛАНДШАФТА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NOTIFY_NEW_DISC_MISSION" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запись об открытии нового вида существ &lt;IMG&gt;TICK&lt;&gt;&#xA;Есть: &lt;DISC_STAT&gt;%AMOUNT%&lt;&gt; из &lt;DISC_STAT&gt;%TOTAL%&lt;&gt;
                                -- New Discovery Record Creature Species &lt;IMG&gt;TICK&lt;&gt;&#xA;Found &lt;DISC_STAT&gt;%AMOUNT%&lt;&gt; of &lt;DISC_STAT&gt;%TOTAL%&lt;&gt;
                                { "Russian", "Найдено видов существ: &lt;DISC_STAT&gt;%AMOUNT%&lt;&gt; из &lt;DISC_STAT&gt;%TOTAL%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BASE_BUILDING_REPORT_TEXT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Отметить эту базу как оскорбительную или неуместную
                                -- Report this Base as Offensive or Inappropriate
                                { "Russian", "Пожаловаться на базу" },
                            }
                        },
                        --
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SHIP_SCAN_PLANET" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Нажмите &lt;IMG&gt;SCAN&lt;&gt;, чтобы сканировать
                                -- Press &lt;IMG&gt;SCAN&lt;&gt; to scan
                                { "Russian", "&lt;IMG&gt;SCAN&lt;&gt; Сканирование" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "WAR_MON_OPT_C_10" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Отдать хроматический металл
                                -- Surrender Chromatic Metal
                                { "Russian", "Отдать цветной металл" },
                            }
                        },

                        --#region ДО ПРИБЫТИЯ:
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TIME_FOOT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ДО ПРИБЫТИЯ: %TIME%
                                -- ARRIVE IN: %TIME%
                                { "Russian", "До прибытия: %TIME%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TIME_SHIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ДО ПРИБЫТИЯ: %TIME%
                                { "Russian", "До прибытия: %TIME%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TIME_DAY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ДО ПРИБЫТИЯ: %TIME% ДН.
                                { "Russian", "До прибытия: %TIME% дн." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TIME_DAYS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ДО ПРИБЫТИЯ: %TIME% ДН.
                                { "Russian", "До прибытия: %TIME% дн." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TIME_NEVER" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ДО ПРИБЫТИЯ: НЕИЗВЕСТНО
                                { "Russian", "До прибытия: неизвестно" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TIME_WEEK" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ДО ПРИБЫТИЯ: %TIME% НЕД.
                                { "Russian", "До прибытия: %TIME% нед." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TIME_HOURS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ДО ПРИБЫТИЯ: %TIME% Ч
                                { "Russian", "До прибытия: %TIME% ч" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TIME_HOUR" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ДО ПРИБЫТИЯ: %TIME% Ч
                                { "Russian", "До прибытия: %TIME% ч" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TIME_MINUTES" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ДО ПРИБЫТИЯ: %TIME% МИН
                                { "Russian", "До прибытия: %TIME% мин" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TIME_MINUTE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ДО ПРИБЫТИЯ: %TIME% МИН
                                { "Russian", "До прибытия: %TIME% мин" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TIME_SECONDS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ДО ПРИБЫТИЯ: %TIME% С
                                { "Russian", "До прибытия: %TIME% с" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TIME_WEEKS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ДО ПРИБЫТИЯ: %TIME% НЕД.
                                { "Russian", "До прибытия: %TIME% нед." },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "OFFPLANET" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ВНЕ ПЛАНЕТЫ
                                -- OFF PLANET
                                { "Russian", "Вне планеты" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ONPLANET" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- НА ПЛАНЕТЕ
                                -- ON PLANET
                                { "Russian", "На планете" },
                            }
                        },
                    }
                },
                { -- LANGUAGE/NMS_LOC4_RUSSIAN.MBIN
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_LOC4_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TELEPORT_FILTER_BASE_ONLY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Ваши базы
                                -- Your Bases
                                { "Russian", "Мои базы" },
                            }
                        },
                        -- к сожалению не камильфо
                        -- "Открыто один месяц назад", но "Открыто одну неделю назад"
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "UI_NUMBER_1" },
                            ["VALUE_MATCH"]        = "один",
                            ["VALUE_MATCH_TYPE"]   = "STRING",
                            ["VALUE_CHANGE_TABLE"] = {
                                -- один
                                -- one
                                { "Russian", "1" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "UI_NUMBER_2" },
                            ["VALUE_MATCH"]        = "два",
                            ["VALUE_MATCH_TYPE"]   = "STRING",
                            ["VALUE_CHANGE_TABLE"] = {
                                -- два
                                -- two
                                { "Russian", "2" },
                            }
                        },

                        --#region UI_COMM_WEEK_.*_SUB
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COMM_WEEK_01_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Помочь специалисту Поло — неделя 1 из 8
                                { "Russian", "Помогите специалисту Поло" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COMM_WEEK_02_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Помочь специалисту Поло — неделя 2 из 8
                                { "Russian", "Помогите специалисту Поло" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COMM_WEEK_03_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Помочь специалисту Поло — неделя 3 из 8
                                { "Russian", "Помогите специалисту Поло" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COMM_WEEK_04_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Помочь специалисту Поло — неделя 4 из 8
                                { "Russian", "Помогите специалисту Поло" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COMM_WEEK_05_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Помочь специалисту Поло — неделя 5 из 8
                                { "Russian", "Помогите специалисту Поло" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COMM_WEEK_06_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Помочь специалисту Поло — неделя 6 из 8
                                { "Russian", "Помогите специалисту Поло" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COMM_WEEK_07_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Помощь сущности-священнику Нада — неделя 7 из 8
                                { "Russian", "Помогите специалисту Поло" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COMM_WEEK_08_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Помочь специалисту Поло — неделя 8 из 8
                                { "Russian", "Помогите специалисту Поло" },
                            }
                        },
                        --#endregion

                        --#region Галактическая навигация недоступна
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "QUICK_MENU_NO_GALMAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Галактическая навигация недоступна: планетарные помехи
                                { "Russian", "МЕШАЮТ ПЛАНЕТАРНЫЕ ПОМЕХИ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "QUICK_MENU_NO_GALMAP_COMBAT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Галактическая навигация недоступна: враждебные варп-глушители
                                -- Galactic Navigation Unavailable :: Hostile Warp Jammers
                                { "Russian", "МЕШАЮТ ВРАЖДЕСКИЕ ВАРП-ГЛУШИТЕЛИ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "QUICK_MENU_NO_GALMAP_PORTAL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Галактическая навигация недоступна: помехи портала
                                { "Russian", "МЕШАЮТ ПОМЕХИ ПОРТАЛА" },
                            }
                        },
                        --#endregion

                        --#region Вы вошли как ГОСТЬ
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BASE_ANYWHERE_OTHER" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вы вошли как ГОСТЬ. &#xA;База: активная &lt;IMG&gt;SLASH&lt;&gt;Управление базой: ограничено &lt;IMG&gt;SLASH&lt;&gt; Разрешение на строительство: недоступно
                                -- Logged in as GUEST. &#xA;Base: Operational &lt;IMG&gt;SLASH&lt;&gt; Base Controls: Limited &lt;IMG&gt;SLASH&lt;&gt; Construction Permissions: Unavailable
                                { "Russian", "Вы вошли как ГОСТЬ.&#xA;&lt;IMG&gt;SLASH&lt;&gt;База... &lt;TRADE&gt;АКТИВНАЯ&lt;&gt;&lt;IMG&gt;SLASH&lt;&gt;&lt;NEWLINE&gt;&lt;IMG&gt;SLASH&lt;&gt;Управление базой... &lt;STELLAR&gt;ОГРАНИЧЕНО&lt;&gt;&lt;IMG&gt;SLASH&lt;&gt;&lt;NEWLINE&gt;&lt;IMG&gt;SLASH&lt;&gt;Разрешение на строительство... &lt;FUEL&gt;НЕДОСТУПНО&lt;&gt;&lt;IMG&gt;SLASH&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BASE_ANYWHERE_FRIEND" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- База зарегистрирована на известного пользователя. Вы вошли как &lt;STELLAR&gt;ГОСТЬ&lt;&gt;.&#xA;База: активная &lt;IMG&gt;SLASH&lt;&gt; Управление базой: ограничено &lt;IMG&gt;SLASH&lt;&gt; Разрешение на строительство: получено
                                -- Base Registered to Known Contact. Logged in as &lt;STELLAR&gt;GUEST&lt;&gt;.&#xA;Base: Operational &lt;IMG&gt;SLASH&lt;&gt; Base Controls: Limited &lt;IMG&gt;SLASH&lt;&gt; Construction Permissions: Unlocked
                                { "Russian", "База зарегистрирована на известного пользователя. Вы вошли как &lt;STELLAR&gt;ГОСТЬ&lt;&gt;.&#xA;&lt;IMG&gt;SLASH&lt;&gt;База... &lt;TRADE&gt;АКТИВНАЯ&lt;&gt;&lt;IMG&gt;SLASH&lt;&gt;&lt;NEWLINE&gt;&lt;IMG&gt;SLASH&lt;&gt;Управление базой... &lt;STELLAR&gt;ОГРАНИЧЕНО&lt;&gt;&lt;IMG&gt;SLASH&lt;&gt;&lt;NEWLINE&gt;&lt;IMG&gt;SLASH&lt;&gt;Разрешение на строительство... &lt;TRADE&gt;ПОЛУЧЕНО&lt;&gt;&lt;IMG&gt;SLASH&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "YOUR_FRIEND_OWNS_THIS_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вы вошли как ГОСТЬ игрока %NAME%&#xA;База: активная &lt;IMG&gt;SLASH&lt;&gt; Управление базой: ограничено &lt;IMG&gt;SLASH&lt;&gt; Разрешение на строительство: частичное
                                -- Logged in as GUEST of %NAME%&#xA;Base: Operational &lt;IMG&gt;SLASH&lt;&gt; Base Controls: Limited &lt;IMG&gt;SLASH&lt;&gt; Construction Permissions: Partial
                                { "Russian", "Вы вошли как ГОСТЬ игрока &quot;%NAME%&quot;.&#xA;&lt;IMG&gt;SLASH&lt;&gt;База... &lt;TRADE&gt;АКТИВНАЯ&lt;&gt;&lt;IMG&gt;SLASH&lt;&gt;&lt;NEWLINE&gt;&lt;IMG&gt;SLASH&lt;&gt;Управление базой... &lt;STELLAR&gt;ОГРАНИЧЕНО&lt;&gt;&lt;IMG&gt;SLASH&lt;&gt;&lt;NEWLINE&gt;&lt;IMG&gt;SLASH&lt;&gt;Разрешение на строительство... &lt;STELLAR&gt;ЧАСТИЧНОЕ&lt;&gt;&lt;IMG&gt;SLASH&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region ГИДРОТЕРМАЛЬНЫЙ ТОПЛИВНЫЙ БЛОК
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SUBFUEL_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ГИДРОТЕРМАЛЬНЫЙ ТОПЛИВНЫЙ БЛОК
                                -- HYDROTHERMAL FUEL CELL
                                { "Russian", "ГИДРОТЕРМАЛЬНЫЙ БЛОК" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SUBFUEL_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Гидротермальный топливный блок
                                -- Hydrothermal Fuel Cell
                                { "Russian", "Гидротермальный блок" },
                            }
                        },
                        --#endregion

                        --#region КОНТЕЙНЕР ДЛЯ АНТИМАТЕРИИ
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "AM_HOUSING_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КОНТЕЙНЕР ДЛЯ АНТИМАТЕРИИ
                                -- ANTIMATTER HOUSING
                                { "Russian", "КОНТЕЙНЕР АНТИМАТЕРИИ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "AM_HOUSING_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Контейнер для антиматерии
                                { "Russian", "Контейнер антиматерии" },
                            }
                        },
                        --#endregion

                        --#region Гель системы жизнеобеспечения
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FUELGEL3_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ГЕЛЬ СИСТЕМЫ ЖИЗНЕОБЕСПЕЧЕНИЯ
                                -- LIFE SUPPORT GEL
                                { "Russian", "ГЕЛЬ ЖИЗНЕОБЕСПЕЧЕНИЯ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FUELGEL3_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Гель системы жизнеобеспечения
                                { "Russian", "Гель жизнеобеспечения" },
                            }
                        },
                        --#endregion

                        --#region Открываемая херь
                        -- вещей столько, что теперь половина предметов "открываемая", епрст
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SPECIAL_EMOTE_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Жест (открываемый)
                                { "Russian", "Жест" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SPECIAL_HAT_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Шлем (открываемый)
                                { "Russian", "Шлем" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SPECIAL_ARMOUR_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Броня (открываемая)
                                -- Unlockable Armour
                                { "Russian", "Броня" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SPECIAL_TORSO_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Изменение внешнего вида торса (открываемое)
                                -- Unlockable Torso Customisation
                                { "Russian", "Кастомизация торса" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SPECIAL_GLOVE_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Перчатки (открываемые)
                                { "Russian", "Перчатки" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SPECIAL_LEGS_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Изменение внешнего вида ног (открываемое)
                                -- Unlockable Leg Customisation
                                { "Russian", "Кастомизация ног" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SPECIAL_BOOTS_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Ботинки (открываемые)
                                { "Russian", "Ботинки" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SPECIAL_STATUE_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Украшение (открываемое)
                                -- Unlockable Decoration
                                { "Russian", "Украшение" },
                            }
                        },
                        --#endregion

                        --#region Окно торговли
                        -- без кнопки слева влезают все варианты без прокрутки для 1920х1080 + 100% масштабирование
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TRADE_BUY_UNITS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;SELECT&lt;&gt; Купить за %PRICE%&lt;IMG&gt;UNITS&lt;&gt;
                                -- &lt;IMG&gt;SELECT&lt;&gt; Buy for &lt;IMG&gt;UNITS&lt;&gt; %PRICE%
                                { "Russian", "Купить &lt;IMG&gt;UNITSMALL&lt;&gt;%PRICE%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TRADE_BUY_UNITS_POS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;SELECT&lt;&gt; Купить за &lt;POS_AV&gt;&lt;IMG&gt;UNITS&lt;&gt;%PRICE%&lt;&gt;
                                -- &lt;IMG&gt;SELECT&lt;&gt; Buy for &lt;POS_AV&gt;&lt;IMG&gt;UNITS&lt;&gt; %PRICE%&lt;&gt;
                                { "Russian", "Купить &lt;POS_AV&gt;&lt;IMG&gt;UNITSMALL&lt;&gt;%PRICE%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TRADE_BUY_UNITS_NEG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;SELECT&lt;&gt; Купить за &lt;NEG_AV&gt;&lt;IMG&gt;UNITS&lt;&gt;%PRICE%&lt;&gt;
                                -- &lt;IMG&gt;SELECT&lt;&gt; Buy for &lt;NEG_AV&gt;&lt;IMG&gt;UNITS&lt;&gt; %PRICE%&lt;&gt;
                                { "Russian", "Купить &lt;NEG_AV&gt;&lt;IMG&gt;UNITSMALL&lt;&gt;%PRICE%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TRADE_SELL_UNITS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;SELECT&lt;&gt; Продать %AMOUNT% за &lt;IMG&gt;UNITS&lt;&gt;%PRICE%
                                -- &lt;IMG&gt;SELECT&lt;&gt; Sell %AMOUNT% for &lt;IMG&gt;UNITS&lt;&gt; %PRICE%
                                { "Russian", "Сбыть &lt;IMG&gt;UNITSMALL&lt;&gt;%PRICE%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TRADE_SELL_UNITS_POS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;SELECT&lt;&gt; Продать %AMOUNT% за &lt;POS_AVG&gt;&lt;IMG&gt;UNITS&lt;&gt;%PRICE%&lt;&gt;
                                -- &lt;IMG&gt;SELECT&lt;&gt; Sell %AMOUNT% for &lt;POS_AVG&gt;&lt;IMG&gt;UNITS&lt;&gt; %PRICE%&lt;&gt;
                                { "Russian", "Сбыть &lt;POS_AVG&gt;&lt;IMG&gt;UNITSMALL&lt;&gt;%PRICE%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TRADE_SELL_UNITS_NEG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;SELECT&lt;&gt; Продать %AMOUNT% за &lt;NEG_AV&gt;&lt;IMG&gt;UNITS&lt;&gt;%PRICE%&lt;&gt;
                                -- &lt;IMG&gt;SELECT&lt;&gt; Sell %AMOUNT% for &lt;NEG_AV&gt;&lt;IMG&gt;UNITS&lt;&gt; %PRICE%&lt;&gt;
                                { "Russian", "Сбыть &lt;NEG_AV&gt;&lt;IMG&gt;UNITSMALL&lt;&gt;%PRICE%&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region на странице "Открытия" // Обнаружено сегодня. Первооткрыватель:
                        -- На эту строку выделено примерно 50 букв
                        -- Новая логика: <cистема/планета> открыто <когда> (кем? игроком) <кем>
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "DISC_TODAY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружено &lt;VAL_ON&gt;сегодня&lt;&gt;. Первооткрыватель: &lt;VAL_ON&gt;%NAME%&lt;&gt;.
                                -- Discovered &lt;VAL_ON&gt;today&lt;&gt; by &lt;VAL_ON&gt;%NAME%&lt;&gt;
                                { "Russian", "Открыто &lt;VAL_ON&gt;сегодня&lt;&gt; игроком &lt;VAL_ON&gt;%NAME%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "DISC_YESTERDAY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружено &lt;VAL_ON&gt;вчера&lt;&gt;. Первооткрыватель: &lt;VAL_ON&gt;%NAME%&lt;&gt;.
                                { "Russian", "Открыто &lt;VAL_ON&gt;вчера&lt;&gt; игроком &lt;VAL_ON&gt;%NAME%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "DISC_DAYS_AGO" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружено &lt;VAL_ON&gt;%NUM%&lt;&gt; дн. назад игроком: &lt;VAL_ON&gt;%NAME%&lt;&gt;.
                                { "Russian", "Открыто &lt;VAL_ON&gt;%NUM%&lt;&gt; &lt;STELLAR&gt;дн.&lt;&gt; назад &lt;VAL_ON&gt;%NAME%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "DISC_WEEKS_AGO" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружено &lt;VAL_ON&gt;%NUM%&lt;&gt; нед. назад. Первооткрыватель: &lt;VAL_ON&gt;%NAME%&lt;&gt;.
                                { "Russian", "Открыто &lt;VAL_ON&gt;%NUM%&lt;&gt; &lt;STELLAR&gt;нед.&lt;&gt; назад &lt;VAL_ON&gt;%NAME%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "DISC_MONTHS_AGO" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружено &lt;VAL_ON&gt;%NUM%&lt;&gt; мес. назад. Первооткрыватель: &lt;VAL_ON&gt;%NAME%&lt;&gt;.
                                { "Russian", "Открыто &lt;VAL_ON&gt;%NUM%&lt;&gt; &lt;STELLAR&gt;мес.&lt;&gt; назад &lt;VAL_ON&gt;%NAME%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "DISC_YEARS_AGO" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружено &lt;VAL_ON&gt;%NUM%&lt;&gt; лет (года) назад. Первооткрыватель: &lt;VAL_ON&gt;%NAME%&lt;&gt;.
                                { "Russian", "Открыто &lt;VAL_ON&gt;%NUM%&lt;&gt; &lt;STELLAR&gt;гг.&lt;&gt; назад &lt;VAL_ON&gt;%NAME%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "DISC_DAYS_AGO_SINGLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружено &lt;VAL_ON&gt;один&lt;&gt; день назад. Первооткрыватель: &lt;VAL_ON&gt;%NAME%&lt;&gt;.
                                { "Russian", "Открыто &lt;VAL_ON&gt;позавчера&lt;&gt; игроком &lt;VAL_ON&gt;%NAME%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "DISC_WEEKS_AGO_SINGLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружено &lt;VAL_ON&gt;одну&lt;&gt; неделю назад. Первооткрыватель: &lt;VAL_ON&gt;%NAME%&lt;&gt;.
                                { "Russian", "Открыто &lt;VAL_ON&gt;неделю&lt;&gt; назад игроком &lt;VAL_ON&gt;%NAME%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "DISC_MONTHS_AGO_SINGLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружено &lt;VAL_ON&gt;один&lt;&gt; месяц назад. Первооткрыватель: &lt;VAL_ON&gt;%NAME%&lt;&gt;.
                                { "Russian", "Открыто &lt;VAL_ON&gt;месяц&lt;&gt; назад игроком &lt;VAL_ON&gt;%NAME%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "DISC_YEARS_AGO_SINGLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружено &lt;VAL_ON&gt;один&lt;&gt; год назад. Первооткрыватель: &lt;VAL_ON&gt;%NAME%&lt;&gt;.
                                { "Russian", "Открыто &lt;VAL_ON&gt;год&lt;&gt; назад игроком &lt;VAL_ON&gt;%NAME%&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region ХРОМАТИЧЕСКИЙ МЕТАЛЛ
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_STELLAR2_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ХРОМАТИЧЕСКИЙ МЕТАЛЛ
                                -- CHROMATIC METAL
                                { "Russian", "ЦВЕТНОЙ МЕТАЛЛ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_STELLAR2_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Хром. металл
                                -- Chromatic Metal
                                { "Russian", "Цветной металл" },
                            }
                        },
                        --#endregion

                        --#region НЕ ОТСОРТИРОВАНО
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TELEPORT_FILTER_SPACE_ONLY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Космические станции
                                { "Russian", "Станции" },
                            }
                        },
                        -- прокрутка это плохо
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TERRAINMODE_SUBTITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Режим манипулятора
                                { "Russian", "Режим" },
                            }
                        },
                        -- тут вспомнил фоллаут возрождение и хотел назвать "ВОЗРОДИТЬ" =))
                        -- потом пришло в голову, что режим отмены более подходит
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TERRAINMODE_UNDO" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ВОССТАНОВИТЬ
                                -- RESTORE
                                { "Russian", "ОТМЕНА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_GUIDE_HEADING_STANDING" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Инопланетные формы жизни
                                -- Alien Lifeforms
                                { "Russian", "Инопланетяне" },
                            }
                        },
                        -- сообщения экзокостюма + звездолета
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SHIELD_RECHARGED" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;SLASH&lt;&gt;СООБЩЕНИЕ ЭКЗОКОСТЮМА: щит перезаряжен&lt;IMG&gt;SLASH&lt;&gt;
                                { "Russian", "&lt;IMG&gt;SLASH&lt;&gt;ЩИТ ЭКЗОКОСТЮМА ПЕРЕЗАРЯЖЕН&lt;IMG&gt;SLASH&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SHIPSHIELD_RECHARGED" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;SLASH&lt;&gt;Запас энергии щита восстановлен!&lt;IMG&gt;SLASH&lt;&gt;
                                { "Russian", "&lt;IMG&gt;SLASH&lt;&gt;ЗАПАС ЭНЕРГИИ ЩИТОВ ВОССТАНОВЛЕН&lt;IMG&gt;SLASH&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_HEALTH_RECHARGED" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;SLASH&lt;&gt;СООБЩЕНИЕ ЭКЗОКОСТЮМА: здоровье восстановлено&lt;IMG&gt;SLASH&lt;&gt;
                                { "Russian", "&lt;IMG&gt;SLASH&lt;&gt;ЗДОРОВЬЕ ВОССТАНОВЛЕНО&lt;IMG&gt;SLASH&lt;&gt;" },
                            }
                        },
                        --
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DIGGING_OBJ4_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Извлеките артефакт с помощью &lt;TECHNOLOGY&gt;ландшафтного манипулятора&lt;&gt;.&#xA;Соберите %ITEM% из &lt;SPECIAL&gt;фрагментов артефакта&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Используйте %ITEM%, чтобы открыть &lt;SPECIAL&gt;ящик с артефактом&lt;&gt;.
                                -- Unearth the artifact with the &lt;TECHNOLOGY&gt;Terrain Manipulator&lt;&gt;&#xA;Collect %ITEM% from &lt;SPECIAL&gt;Artifact Fragments&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Use the %ITEM%s to open the &lt;SPECIAL&gt;Artifact Crate&lt;&gt;
                                { "Russian", "Извлеките артефакт с помощью &lt;TECHNOLOGY&gt;терраформера&lt;&gt;&#xA;Соберите %ITEM% из &lt;SPECIAL&gt;фрагментов артефакта&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Используйте %ITEM%, чтобы открыть &lt;SPECIAL&gt;ящик с артефактом&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DIGGING_OBJ5_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Извлеките артефакт с помощью &lt;TECHNOLOGY&gt;ландшафтного манипулятора&lt;&gt;.&#xA;Найдите и откройте &lt;SPECIAL&gt;ящик с артефактом&lt;&gt;.
                                -- Unearth the artifact with the &lt;TECHNOLOGY&gt;Terrain Manipulator&lt;&gt;&#xA;Locate and open the &lt;SPECIAL&gt;Artifact Crate&lt;&gt;
                                { "Russian", "Извлеките артефакт с помощью &lt;TECHNOLOGY&gt;терраформера&lt;&gt;&#xA;Найдите и откройте &lt;SPECIAL&gt;ящик с артефактом&lt;&gt;" },
                            }
                        },
                        --
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ABOVEWATER_WARNING" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Строится под водой
                                -- Must Be Constructed Underwater
                                { "Russian", "СТРОИТСЯ ПОД ВОДОЙ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FUELGEL_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Портативное питание системы жизнеобеспечения
                                -- Portable Life Support Power
                                { "Russian", "Топливо системы жизнеобеспечения" },
                            }
                        },
                        -- возможно было уместно "созданный компонент технологии", но созданной технологии...
                        -- в русском производстве есть термин, который полностью описывает "Crafted Technology Component"
                        -- деталь: _изготовленная_ (Crafted) часть изделия, часть технической (Technology) конструкции
                        -- и деталь сама по себе компонент
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "CRAFTPROD_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Компонент созданной технологии
                                -- Crafted Technology Component
                                { "Russian", "Деталь" },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CRE_FEED_OBJ1_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Кормите диких существ &lt;TRADEABLE&gt;питательными гранулами&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Чтобы обнаружить их, используйте анализирующий визор (&lt;IMG&gt;AIM&lt;&gt;).&#xA;В визоре ищите &lt;FUEL&gt;красные точки&lt;&gt; или &lt;TRADEABLE&gt;зеленые следы лап&lt;&gt;.
                                -- Feed wildlife with &lt;TRADEABLE&gt;Creature Pellets&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Locate creatures using the Analysis Visor (&lt;IMG&gt;AIM&lt;&gt;)&#xA;In the Visor, look for &lt;FUEL&gt;red dots&lt;&gt; or &lt;TRADEABLE&gt;green pawprints&lt;&gt;
                                { "Russian", "Накормите диких существ: %CURRENT%/%AMOUNT%" },
                            }
                        },
                        -- и тут косяк с "+": в строчке ниже в англ. версии ожидается +<%AMOUNT% smth>
                        -- на экране фрегата, плюс зашит в %AMOUNT%, т.е. тоже получается <+%AMOUNT% smth>
                        -- а в русской версии формат для %STAT% примерно такой <Торговля: %AMOUNT%>
                        -- и формат <%AMOUNT% Торговля> совсем не канон...
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_UI_MODULE_FORMAT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;%NAME%:&lt;&gt;%DESC%&lt;COMMODITY&gt;+%STAT%&lt;&gt;
                                -- &lt;TECHNOLOGY&gt;%NAME%:&lt;&gt; %DESC% &lt;COMMODITY&gt;+%STAT%&lt;&gt;
                                { "Russian", "&lt;COMMODITY&gt;+%STAT%&lt;&gt;" },
                            }
                        },
                        --
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "QUICK_MENU_NO_EXOCRAFT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- У вас нет вездехода
                                -- Exocraft Not Owned
                                { "Russian", "У ВАС НЕТ ЭТОГО ВЕЗДЕХОДА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "QUICK_MENU_NO_EXO_SCANNER" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сканер вездехода не установлен
                                -- No Exocraft Scanner Installed
                                { "Russian", "СКАНЕР ВЕЗДЕХОДА НЕ УСТАНОВЛЕН" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ALL_FLEET_HUD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Защищенный канал: %NAME%
                                -- Secure Channel: %NAME%
                                { "Russian", "%NAME%" },
                            }
                        },

                        --#region UI_(RED|BLUE|GREEN|YELLOW)2_DESC
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_RED2_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Хроматический металл&lt;&gt;, получаемый в ходе синтеза в центре звезды. Такие звездные материалы в итоге обнаруживаются в виде залежей в коре окружающих планет.&#xA;&#xA;Кадмий можно найти на планетах, обращающихся вокруг &lt;FUEL&gt;красных звезд&lt;&gt;. Его можно обработать в &lt;TECHNOLOGY&gt;очистителе&lt;&gt;, чтобы создать &lt;STELLAR&gt;хроматический металл&lt;&gt;, использующийся в производстве продвинутых технологий.
                                { "Russian", "&lt;STELLAR&gt;Звёздный металл&lt;&gt;, получаемый в ходе синтеза в центре звезды. Такие звёздные материалы в итоге обнаруживаются в виде залежей в коре окружающих планет.&#xA;&#xA;Кадмий можно найти на планетах, обращающихся вокруг &lt;FUEL&gt;красных звёзд﻿.&lt;&gt; Его можно обработать в &lt;TECHNOLOGY&gt;очистителе﻿,&lt;&gt; чтобы создать &lt;STELLAR&gt;цветной металл﻿,&lt;&gt; использующийся в производстве продвинутых технологий." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BLUE2_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Хроматический металл&lt;&gt;, получаемый в ходе синтеза в центре звезды. Такие звездные материалы в итоге обнаруживаются в виде залежей в коре окружающих планет.&#xA;&#xA;Индий можно найти на планетах, обращающихся вокруг &lt;TECHNOLOGY&gt;синих звезд&lt;&gt;. Его можно обработать в &lt;TECHNOLOGY&gt;очистителе&lt;&gt;, чтобы создать &lt;STELLAR&gt;хроматический металл&lt;&gt;, использующийся в производстве продвинутых технологий.
                                { "Russian", "&lt;STELLAR&gt;Звёздный металл&lt;&gt;, получаемый в ходе синтеза в центре звезды. Такие звёздные материалы в итоге обнаруживаются в виде залежей в коре окружающих планет.&#xA;&#xA;Индий можно найти на планетах, обращающихся вокруг &lt;TECHNOLOGY&gt;синих звёзд﻿.&lt;&gt; Его можно обработать в &lt;TECHNOLOGY&gt;очистителе﻿,&lt;&gt; чтобы создать &lt;STELLAR&gt;цветной металл﻿,&lt;&gt; использующийся в производстве продвинутых технологий." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_YELLOW2_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Хроматический металл&lt;&gt;, получаемый в ходе синтеза в центре звезды. Такие звездные материалы в итоге обнаруживаются в виде залежей в коре окружающих планет.&#xA;&#xA;Медь можно найти на планетах, обращающихся вокруг &lt;CATALYST&gt;желтых звезд&lt;&gt;. Ее можно обработать в &lt;TECHNOLOGY&gt;очистителе&lt;&gt;, чтобы создать &lt;STELLAR&gt;хроматический металл&lt;&gt;, использующийся в производстве продвинутых технологий.
                                { "Russian", "&lt;STELLAR&gt;Звёздный металл&lt;&gt;, получаемый в ходе синтеза в центре звезды. Такие звёздные материалы в итоге обнаруживаются в виде залежей в коре окружающих планет.&#xA;&#xA;Медь можно найти на планетах, обращающихся вокруг &lt;CATALYST&gt;жёлтых звёзд﻿.&lt;&gt; Её можно обработать в &lt;TECHNOLOGY&gt;очистителе﻿,&lt;&gt; чтобы создать &lt;STELLAR&gt;цветной металл﻿,&lt;&gt; использующийся в производстве продвинутых технологий." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_GREEN2_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Хроматический металл&lt;&gt;, получаемый в ходе синтеза в центре звезды.&#xA;&#xA;Эмерил можно найти на планетах, обращающихся вокруг &lt;TRADEABLE&gt;зеленых звезд&lt;&gt;. Его можно обработать в &lt;TECHNOLOGY&gt;очистителе&lt;&gt;, чтобы создать &lt;STELLAR&gt;хроматический металл&lt;&gt;, использующийся в производстве продвинутых технологий.
                                { "Russian", "&lt;STELLAR&gt;Звёздный металл&lt;&gt;, получаемый в ходе синтеза в центре звезды.&#xA;&#xA;Эмерил можно найти на планетах, обращающихся вокруг &lt;TRADEABLE&gt;зелёных звёзд&lt;&gt;. Его можно обработать в &lt;TECHNOLOGY&gt;очистителе﻿,&lt;&gt; чтобы создать &lt;STELLAR&gt;цветной металл﻿,&lt;&gt; использующийся в производстве продвинутых технологий." },
                            }
                        },
                        --#endregion

                        --#region UI_EX_(RED|BLUE|GREEN|YELLOW)_DESC
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EX_RED_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Хроматический металл&lt;&gt;, получаемый в ходе синтеза в центре звезды.&#xA;&#xA;Этот кадмий был сформирован под воздействием экстремальных условий. Имеет высокую ценность.&#xA;&#xA;Кадмий можно найти на планетах, обращающихся вокруг &lt;FUEL&gt;красных звезд&lt;&gt;. Его можно обработать в &lt;TECHNOLOGY&gt;очистителе&lt;&gt;, чтобы создать &lt;STELLAR&gt;хроматический металл&lt;&gt;.
                                { "Russian", "&lt;STELLAR&gt;Звёздный металл&lt;&gt;, получаемый в ходе синтеза в центре звезды.&#xA;&#xA;Этот кадмий был сформирован под воздействием экстремальных условий. Имеет высокую ценность.&#xA;&#xA;Кадмий можно найти на планетах, обращающихся вокруг &lt;FUEL&gt;красных звёзд﻿.&lt;&gt; Его можно обработать в &lt;TECHNOLOGY&gt;очистителе﻿,&lt;&gt; чтобы создать &lt;STELLAR&gt;цветной металл﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EX_BLUE_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Хроматический металл&lt;&gt;, получаемый в ходе синтеза в центре звезды.&#xA;&#xA;Индий можно найти на планетах, обращающихся вокруг &lt;TECHNOLOGY&gt;синих звезд&lt;&gt;. Его можно обработать в &lt;TECHNOLOGY&gt;очистителе&lt;&gt;, чтобы создать &lt;STELLAR&gt;хроматический металл&lt;&gt;.&#xA;&#xA;Этот индий был сформирован под воздействием экстремальных условий. Имеет высокую ценность.
                                { "Russian", "&lt;STELLAR&gt;Звёздный металл&lt;&gt;, получаемый в ходе синтеза в центре звезды.&#xA;&#xA;Индий можно найти на планетах, обращающихся вокруг &lt;TECHNOLOGY&gt;синих звёзд﻿.&lt;&gt; Его можно обработать в &lt;TECHNOLOGY&gt;очистителе&lt;&gt;, чтобы создать &lt;STELLAR&gt;цветной металл﻿.&lt;&gt;&#xA;&#xA;Этот индий был сформирован под воздействием экстремальных условий. Имеет высокую ценность." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EX_YELLOW_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Хроматический металл&lt;&gt;, получаемый в ходе синтеза в центре звезды.&#xA;&#xA;Эта медь была сформирована под воздействием экстремальных условий. Имеет высокую ценность.&#xA;&#xA;Медь можно найти на планетах, обращающихся вокруг &lt;CATALYST&gt;желтых звезд&lt;&gt;. Ее можно обработать в &lt;TECHNOLOGY&gt;очистителе&lt;&gt;, чтобы создать &lt;STELLAR&gt;хроматический металл&lt;&gt;.
                                { "Russian", "&lt;STELLAR&gt;Звёздный металл&lt;&gt;, получаемый в ходе синтеза в центре звезды.&#xA;&#xA;Эта медь была сформирована под воздействием экстремальных условий. Имеет высокую ценность.&#xA;&#xA;Медь можно найти на планетах, обращающихся вокруг &lt;CATALYST&gt;жёлтых звёзд﻿.&lt;&gt; Её можно обработать в &lt;TECHNOLOGY&gt;очистителе﻿,&lt;&gt; чтобы создать &lt;STELLAR&gt;цветной металл﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EX_GREEN_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Хроматический металл&lt;&gt;, получаемый в ходе синтеза в центре звезды.&#xA;&#xA;Этот эмерил был сформирован под воздействием экстремальных условий. Имеет высокую ценность.&#xA;&#xA;Эмерил можно найти на планетах, обращающихся вокруг &lt;TRADEABLE&gt;зеленых звезд&lt;&gt;. Его можно обработать в &lt;TECHNOLOGY&gt;очистителе&lt;&gt;, чтобы создать &lt;STELLAR&gt;хроматический металл&lt;&gt;.
                                { "Russian", "&lt;STELLAR&gt;Звёздный металл&lt;&gt;, получаемый в ходе синтеза в центре звезды.&#xA;&#xA;Этот эмерил был сформирован под воздействием экстремальных условий. Имеет высокую ценность.&#xA;&#xA;Эмерил можно найти на планетах, обращающихся вокруг &lt;TRADEABLE&gt;зелёных звёзд﻿.&lt;&gt; Его можно обработать в &lt;TECHNOLOGY&gt;очистителе﻿,&lt;&gt; чтобы создать &lt;STELLAR&gt;цветной металл﻿.&lt;&gt;" },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_STELLAR2_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обработанный металлический сплав, созданный в &lt;TECHNOLOGY&gt;очистителе&lt;&gt; из &lt;STELLAR&gt;звездных металлов&lt;&gt;: &lt;COMMODITY&gt;меди&lt;&gt;, &lt;FUEL&gt;кадмия&lt;&gt;, &lt;TRADEABLE&gt;эмерила&lt;&gt; и &lt;TECHNOLOGY&gt;индия&lt;&gt;.&#xA;&#xA;Чем более &lt;SPECIAL&gt;редким&lt;&gt; является звездный металл, тем больше хроматического металла из него получается.&#xA;&#xA;Этот ценный металл используется для создания многих &lt;TECHNOLOGY&gt;продвинутых технологий&lt;&gt;.
                                -- A processed metal alloy, created in a &lt;TECHNOLOGY&gt;Refiner&lt;&gt; from the &lt;STELLAR&gt;stellar metals&lt;&gt;: &lt;COMMODITY&gt;Copper&lt;&gt;, &lt;FUEL&gt;Cadmium&lt;&gt;, &lt;TRADEABLE&gt;Emeril&lt;&gt; and &lt;TECHNOLOGY&gt;Indium&lt;&gt;.&#xA;&#xA;The &lt;SPECIAL&gt;rarer&lt;&gt; the stellar metal, the more Chromatic Metal it will produce.&#xA;&#xA;This valuable metal is used in the creation of many &lt;TECHNOLOGY&gt;advanced technologies&lt;&gt;.
                                { "Russian", "Обработанный металлический сплав, созданный в &lt;TECHNOLOGY&gt;очистителе&lt;&gt; из &lt;STELLAR&gt;звёздных металлов﻿:&lt;&gt; &lt;COMMODITY&gt;меди﻿,&lt;&gt; &lt;FUEL&gt;кадмия﻿,&lt;&gt; &lt;TRADEABLE&gt;эмерила&lt;&gt; и &lt;TECHNOLOGY&gt;индия﻿.&lt;&gt;&#xA;&#xA;Чем более &lt;SPECIAL&gt;редким&lt;&gt; является звёздный металл, тем больше цветного металла из него получается.&#xA;&#xA;Этот ценный металл используется для создания многих &lt;TECHNOLOGY&gt;продвинутых технологий﻿.&lt;&gt;" },
                            }
                        },
                        -- заголовок задания дублирует смысл (см. FLEET_MISSION_TITLE)
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_MISSION_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Помочь экспедиции %EXPED_NAME%
                                -- Assist %EXPED_NAME%
                                { "Russian", "%EXPED_NAME%" },
                            }
                        },
                    }
                },
                { -- LANGUAGE/NMS_LOC5_RUSSIAN.MBIN
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_LOC5_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COMM_NEXUS_WRAP_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите данные для Космической Аномалии
                                -- Gather Data for the Space Anomaly
                                { "Russian", "Соберите данные для Аномалии" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FREIGHTERINV_OUT_OF_RANGE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Грузовое судно вне зоны доступа
                                -- Freighter out of range
                                { "Russian", "ГРУЗОВОЕ СУДНО ВНЕ ЗОНЫ ДОСТУПА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "QUICK_MENU_EMERGENCY_WARP_BAN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Галактическая навигация недоступна
                                -- Galactic Navigation Unavailable
                                { "Russian", "ГАЛАКТИЧЕСКАЯ НАВИГАЦИЯ НЕДОСТУПНА" },
                            }
                        },

                        --#region UI_COMM_WEEK_.*_SUB
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COMM_WEEK_09_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите данные для Космической аномалии
                                -- Gather Data for the Space Anomaly
                                { "Russian", "Соберите данные для Аномалии" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COMM_WEEK_09A_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите редкие технологии для Космической аномалии
                                -- Gather rare technologies for the Space Anomaly
                                { "Russian", "Соберите редкие технологии" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COMM_WEEK_09A2_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите редкие кристаллы для Космической аномалии
                                { "Russian", "Соберите редкие кристаллы" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COMM_WEEK_09B_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите неоткрытые миры для Космической аномалии
                                -- Find undiscovered worlds for the Space Anomaly
                                { "Russian", "Найдите неоткрытые миры" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COMM_WEEK_09B2_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите неоткрытые системы для Космической аномалии
                                -- Find undiscovered systems for the Space Anomaly
                                { "Russian", "Найдите неоткрытые системы" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COMM_WEEK_09C_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запишите данные о разрушении для Космической аномалии
                                -- Record destruction logs for the Space Anomaly
                                { "Russian", "Запишите данные о разрушении" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COMM_WEEK_09C2_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запишите данные о разрушении для Космической аномалии
                                -- Record destruction logs for the Space Anomaly
                                { "Russian", "Запишите данные о разрушении" },
                            }
                        },
                        --#endregion

                        { -- не более 16 букв чтоб без прокрутки
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_MISSION_EXIT_BUTTON" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Изменить настройки выхода
                                -- Change Exit Setting
                                { "Russian", "Настройка выхода" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_MISSION_JOIN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Присоединиться к заданию
                                -- Join Mission
                                { "Russian", "Присоединиться" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MOVE_TECH_UI" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПЕРЕМЕЩЕНИЕ ТЕХНОЛОГИИ
                                -- MOVE TECHNOLOGY
                                { "Russian", "ПЕРЕМЕСТИТЬ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NPC_POLO_BLACKHOLE_OPT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Спросить координаты черной дыры
                                { "Russian", "Спросить координаты кротовой норы" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NPC_POLO_BLACKHOLE_RES2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поло улыбается и передает координаты черной дыры на компьютер моего звездолета.
                                { "Russian", "Поло улыбается и передает координаты кротовой норы на компьютер моего звездолёта." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_GALMAP_CURRENT_LOC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- (Текущее местоположение)
                                { "Russian", "·◊·" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_GALMAP_PREV_VISITED" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- (Посещено)
                                { "Russian", "― посещено" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TELE_FILTER_NEXUS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Космическая Аномалия
                                { "Russian", "Аномалия" },
                            }
                        },
                        -- не влазиет в интерфейсе сканера, думаю итак ясно о какой энергии речь
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SURVEY_POWER_LABEL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Скопление электромагнитной энергии
                                { "Russian", "Скопление энергии" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SURVEY_POWER_YIELD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Электромагнитная энергия
                                { "Russian", "Энергия" },
                            }
                        },
                        -- не влазиет в интерфейс, хотя перевод точный
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_STARCHART_SUB_SECURE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Тайные картографические данные
                                -- Secret Cartographic Data
                                { "Russian", "Секретная карта" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_STARCHART_SUB_DISTRESS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Аварийные картографические данные
                                -- Emergency Cartographic Data
                                { "Russian", "Карта места аварии" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_STARCHART_SUB_HABITABLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Коммерческие картографические данные
                                -- Commercial Cartographic Data
                                { "Russian", "Коммерческая карта" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_STARCHART_SUB_ALIEN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Инопланетные картографические данные
                                -- Alien Cartographic Data
                                { "Russian", "Инопланетная карта" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CIVILIAN_MURDER_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- УНИЧТОЖЕНО ГРАЖДАНСКОЕ СУДНО &lt;IMG&gt;SLASH&lt;&gt; ВЛАСТИ ОПОВЕЩЕНЫ
                                { "Russian", "ГРАЖДАНСКОЕ СУДНО УНИЧТОЖЕНО • ВЛАСТИ ОПОВЕЩЕНЫ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_SPACEBATTLE_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ВНИМАНИЕ: ПРИБЛИЖАЕТСЯ ПОДКРЕПЛЕНИЕ ПРОТИВНИКА
                                -- WARNING - HOSTILE REINFORCEMENTS ARRIVING
                                { "Russian", "ПРИБЛИЖАЕТСЯ ПОДКРЕПЛЕНИЕ ПРОТИВНИКА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_SPACEBATTLE_OSD_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ВНИМАНИЕ: ПОСЛЕДНЯЯ ВОЛНА ПОДКРЕПЛЕНИЙ
                                -- WARNING - FINAL REINFORCEMENT WAVE
                                { "Russian", "ПРИБЛИЖАЕТСЯ ПОСЛЕДНЯЯ ВОЛНА ПОДКРЕПЛЕНИЙ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NEXUS_DEFAULT_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поговорите с Поло и другими существами на борту Аномалии.&#xA;Поло владеет координатами &lt;SPECIAL&gt;черных дыр&lt;&gt; и &lt;FUEL&gt;станций Атласа&lt;&gt;.&#xA;Странники &lt;STELLAR&gt;Гелиос&lt;&gt; и &lt;STELLAR&gt;Арес&lt;&gt; готовы поделиться с вами своими &lt;TECHNOLOGY&gt;нанитами&lt;&gt;.
                                { "Russian", "Поговорите с Поло и другими существами на Аномалии&#xA;Поло владеет координатами &lt;SPECIAL&gt;кротовых нор&lt;&gt; и &lt;FUEL&gt;станций Атласа&lt;&gt;.&#xA;Странники &lt;STELLAR&gt;Гелиос&lt;&gt; и &lt;STELLAR&gt;Арес&lt;&gt; готовы поделиться с вами своими &lt;TECHNOLOGY&gt;нанитами&lt;&gt;." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NEXUS2_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Продолжайте помогать Артемиде&lt;&gt;.&#xA;Поло владеет координатами &lt;SPECIAL&gt;черных дыр&lt;&gt; и &lt;FUEL&gt;станций Атласа&lt;&gt;.&#xA;Странники &lt;STELLAR&gt;Гелиос&lt;&gt; и &lt;STELLAR&gt;Арес&lt;&gt; снабжают вас &lt;TECHNOLOGY&gt;нанитами&lt;&gt;.&#xA;Смените активное задание в журнале (&lt;IMG&gt;OPTIONS&lt;&gt;).
                                -- &lt;STELLAR&gt;Continue to help Artemis&lt;&gt;&#xA;Polo holds coordinates for &lt;SPECIAL&gt;Black Holes&lt;&gt; and &lt;FUEL&gt;Atlas Stations&lt;&gt;&#xA;Travellers &lt;STELLAR&gt;Helios&lt;&gt; and &lt;STELLAR&gt;Ares&lt;&gt; supply &lt;TECHNOLOGY&gt;Nanites&lt;&gt;&#xA;Change active mission in the Log (&lt;IMG&gt;OPTIONS&lt;&gt;)
                                { "Russian", "&lt;STELLAR&gt;Продолжайте помогать Артемиде&lt;&gt;&#xA;Поло владеет координатами &lt;SPECIAL&gt;кротовых нор&lt;&gt; и &lt;FUEL&gt;станций Атласа&lt;&gt;&#xA;Странники &lt;STELLAR&gt;Гелиос&lt;&gt; и &lt;STELLAR&gt;Арес&lt;&gt; дают &lt;TECHNOLOGY&gt;наниты&lt;&gt;&#xA;Смените активное задание в журнале (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NEXUS3_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Ищите Артемиду и Аполлона&lt;&gt;.&#xA;Поло владеет координатами &lt;SPECIAL&gt;черных дыр&lt;&gt; и &lt;FUEL&gt;станций Атласа&lt;&gt;.&#xA;Странники &lt;STELLAR&gt;Гелиос&lt;&gt; и &lt;STELLAR&gt;Арес&lt;&gt; снабжают вас &lt;TECHNOLOGY&gt;нанитами&lt;&gt;.&#xA;Смените активное задание в журнале (&lt;IMG&gt;OPTIONS&lt;&gt;).
                                -- &lt;STELLAR&gt;Search for Artemis &amp; Apollo&lt;&gt;&#xA;Polo holds coordinates for &lt;SPECIAL&gt;Black Holes&lt;&gt; and &lt;FUEL&gt;Atlas Stations&lt;&gt;&#xA;Travellers &lt;STELLAR&gt;Helios&lt;&gt; and &lt;STELLAR&gt;Ares&lt;&gt; supply &lt;TECHNOLOGY&gt;Nanites&lt;&gt;&#xA;Change active mission in the Log (&lt;IMG&gt;OPTIONS&lt;&gt;)
                                { "Russian", "&lt;STELLAR&gt;Найдите Артемиду и Аполлона&lt;&gt;&#xA;Поло владеет координатами &lt;SPECIAL&gt;кротовых нор&lt;&gt; и &lt;FUEL&gt;станций Атласа&lt;&gt;&#xA;Странники &lt;STELLAR&gt;Гелиос&lt;&gt; и &lt;STELLAR&gt;Арес&lt;&gt; дают &lt;TECHNOLOGY&gt;наниты&lt;&gt;&#xA;Смените активное задание в журнале (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NEXUS4_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Продолжайте следовать плану Аполлона&lt;&gt;.&#xA;Поло владеет координатами &lt;SPECIAL&gt;черных дыр&lt;&gt; и &lt;FUEL&gt;станций Атласа&lt;&gt;.&#xA;Странники &lt;STELLAR&gt;Гелиос&lt;&gt; и &lt;STELLAR&gt;Арес&lt;&gt; снабжают вас &lt;TECHNOLOGY&gt;нанитами&lt;&gt;.&#xA;Смените активное задание в журнале (&lt;IMG&gt;OPTIONS&lt;&gt;).
                                { "Russian", "&lt;STELLAR&gt;Продолжайте следовать плану Аполлона&lt;&gt;&#xA;Поло владеет координатами &lt;SPECIAL&gt;кротовых нор&lt;&gt; и &lt;FUEL&gt;станций Атласа&lt;&gt;&#xA;Странники &lt;STELLAR&gt;Гелиос&lt;&gt; и &lt;STELLAR&gt;Арес&lt;&gt; дают &lt;TECHNOLOGY&gt;наниты&lt;&gt;&#xA;Смените активное задание в журнале (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NEXUS5_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Найдите способ помочь Артемиде&lt;&gt;.&#xA;Поло владеет координатами &lt;SPECIAL&gt;черных дыр&lt;&gt; и &lt;FUEL&gt;станций Атласа&lt;&gt;.&#xA;Странники &lt;STELLAR&gt;Гелиос&lt;&gt; и &lt;STELLAR&gt;Арес&lt;&gt; снабжают вас &lt;TECHNOLOGY&gt;нанитами&lt;&gt;.&#xA;Смените активное задание в журнале (&lt;IMG&gt;OPTIONS&lt;&gt;).
                                { "Russian", "&lt;STELLAR&gt;Найдите способ помочь Артемиде&lt;&gt;&#xA;Поло владеет координатами &lt;SPECIAL&gt;кротовых нор&lt;&gt; и &lt;FUEL&gt;станций Атласа&lt;&gt;&#xA;Странники &lt;STELLAR&gt;Гелиос&lt;&gt; и &lt;STELLAR&gt;Арес&lt;&gt; дают &lt;TECHNOLOGY&gt;наниты&lt;&gt;&#xA;Смените активное задание в журнале (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NEXUS6_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Продолжайте следовать плану существа&lt;&gt;.&#xA;Поло владеет координатами &lt;SPECIAL&gt;черных дыр&lt;&gt; и &lt;FUEL&gt;станций Атласа&lt;&gt;.&#xA;Странники &lt;STELLAR&gt;Гелиос&lt;&gt; и &lt;STELLAR&gt;Арес&lt;&gt; снабжают вас &lt;TECHNOLOGY&gt;нанитами&lt;&gt;.&#xA;Смените активное задание в журнале (&lt;IMG&gt;OPTIONS&lt;&gt;).
                                -- &lt;STELLAR&gt;Continue with null's plan&lt;&gt;&#xA;Polo holds coordinates for &lt;SPECIAL&gt;Black Holes&lt;&gt; and &lt;FUEL&gt;Atlas Stations&lt;&gt;&#xA;Travellers &lt;STELLAR&gt;Helios&lt;&gt; and &lt;STELLAR&gt;Ares&lt;&gt; supply &lt;TECHNOLOGY&gt;Nanites&lt;&gt;&#xA;Change active mission in the Log (&lt;IMG&gt;OPTIONS&lt;&gt;)
                                { "Russian", "&lt;STELLAR&gt;Продолжайте следовать плану -пусто-&lt;&gt;&#xA;Поло владеет координатами &lt;SPECIAL&gt;кротовых нор&lt;&gt; и &lt;FUEL&gt;станций Атласа&lt;&gt;&#xA;Странники &lt;STELLAR&gt;Гелиос&lt;&gt; и &lt;STELLAR&gt;Арес&lt;&gt; дают &lt;TECHNOLOGY&gt;наниты&lt;&gt;&#xA;Смените активное задание в журнале (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NEXUS7_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Продолжайте собирать данные с существом -пусто-&lt;&gt;.&#xA;Поло владеет координатами &lt;SPECIAL&gt;черных дыр&lt;&gt; и &lt;FUEL&gt;станций Атласа&lt;&gt;.&#xA;Странники &lt;STELLAR&gt;Гелиос&lt;&gt; и &lt;STELLAR&gt;Арес&lt;&gt; снабжают вас &lt;TECHNOLOGY&gt;нанитами&lt;&gt;.&#xA;Смените активное задание в журнале (&lt;IMG&gt;OPTIONS&lt;&gt;).
                                -- &lt;STELLAR&gt;Continue investigating with -null-&lt;&gt;&#xA;Polo holds coordinates for &lt;SPECIAL&gt;Black Holes&lt;&gt; and &lt;FUEL&gt;Atlas Stations&lt;&gt;&#xA;Travellers &lt;STELLAR&gt;Helios&lt;&gt; and &lt;STELLAR&gt;Ares&lt;&gt; supply &lt;TECHNOLOGY&gt;Nanites&lt;&gt;&#xA;Change active mission in the Log (&lt;IMG&gt;OPTIONS&lt;&gt;)
                                { "Russian", "&lt;STELLAR&gt;Продолжайте расследование вместе с -пусто-&lt;&gt;&#xA;Поло владеет координатами &lt;SPECIAL&gt;кротовых нор&lt;&gt; и &lt;FUEL&gt;станций Атласа&lt;&gt;&#xA;Странники &lt;STELLAR&gt;Гелиос&lt;&gt; и &lt;STELLAR&gt;Арес&lt;&gt; дают &lt;TECHNOLOGY&gt;наниты&lt;&gt;&#xA;Смените активное задание в журнале (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NEXUS8_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Продолжайте собирать данные с существом -пусто-&lt;&gt;.&#xA;Поло владеет координатами &lt;SPECIAL&gt;черных дыр&lt;&gt; и &lt;FUEL&gt;станций Атласа&lt;&gt;.&#xA;Странники &lt;STELLAR&gt;Гелиос&lt;&gt; и &lt;STELLAR&gt;Арес&lt;&gt; снабжают вас &lt;TECHNOLOGY&gt;нанитами&lt;&gt;.&#xA;Смените активное задание в журнале (&lt;IMG&gt;OPTIONS&lt;&gt;).
                                { "Russian", "&lt;STELLAR&gt;Продолжайте расследование вместе с -пусто-&lt;&gt;&#xA;Поло владеет координатами &lt;SPECIAL&gt;кротовых нор&lt;&gt; и &lt;FUEL&gt;станций Атласа&lt;&gt;&#xA;Странники &lt;STELLAR&gt;Гелиос&lt;&gt; и &lt;STELLAR&gt;Арес&lt;&gt; дают &lt;TECHNOLOGY&gt;наниты&lt;&gt;&#xA;Смените активное задание в журнале (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NEXUS9_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Вы и -пусто- должны изучить вай’кинов&lt;&gt;.&#xA;Поло владеет координатами &lt;SPECIAL&gt;черных дыр&lt;&gt; и &lt;FUEL&gt;станций Атласа&lt;&gt;.&#xA;Странники &lt;STELLAR&gt;Гелиос&lt;&gt; и &lt;STELLAR&gt;Арес&lt;&gt; снабжают вас &lt;TECHNOLOGY&gt;нанитами&lt;&gt;.&#xA;Смените активное задание в журнале (&lt;IMG&gt;OPTIONS&lt;&gt;).
                                -- &lt;STELLAR&gt;Investigate the Vy'keen with -null-&lt;&gt;&#xA;Polo holds coordinates for &lt;SPECIAL&gt;Black Holes&lt;&gt; and &lt;FUEL&gt;Atlas Stations&lt;&gt;&#xA;Travellers &lt;STELLAR&gt;Helios&lt;&gt; and &lt;STELLAR&gt;Ares&lt;&gt; supply &lt;TECHNOLOGY&gt;Nanites&lt;&gt;&#xA;Change active mission in the Log (&lt;IMG&gt;OPTIONS&lt;&gt;)
                                { "Russian", "&lt;STELLAR&gt;Изучите вай’кинов вместе с -пусто-&lt;&gt;&#xA;Поло владеет координатами &lt;SPECIAL&gt;кротовых нор&lt;&gt; и &lt;FUEL&gt;станций Атласа&lt;&gt;&#xA;Странники &lt;STELLAR&gt;Гелиос&lt;&gt; и &lt;STELLAR&gt;Арес&lt;&gt; дают &lt;TECHNOLOGY&gt;наниты&lt;&gt;&#xA;Смените активное задание в журнале (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NEXUS10_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Вы и -пусто- должны изучить корваксов&lt;&gt;.&#xA;Поло владеет координатами &lt;SPECIAL&gt;черных дыр&lt;&gt; и &lt;FUEL&gt;станций Атласа&lt;&gt;.&#xA;Странники &lt;STELLAR&gt;Гелиос&lt;&gt; и &lt;STELLAR&gt;Арес&lt;&gt; снабжают вас &lt;TECHNOLOGY&gt;нанитами&lt;&gt;.&#xA;Смените активное задание в журнале (&lt;IMG&gt;OPTIONS&lt;&gt;).
                                { "Russian", "&lt;STELLAR&gt;Изучите корваксов вместе с -пусто-&lt;&gt;&#xA;Поло владеет координатами &lt;SPECIAL&gt;кротовых нор&lt;&gt; и &lt;FUEL&gt;станций Атласа&lt;&gt;&#xA;Странники &lt;STELLAR&gt;Гелиос&lt;&gt; и &lt;STELLAR&gt;Арес&lt;&gt; дают &lt;TECHNOLOGY&gt;наниты&lt;&gt;&#xA;Смените активное задание в журнале (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NEXUS11_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Вы и -пусто- должны изучить геков&lt;&gt;.&#xA;Поло владеет координатами &lt;SPECIAL&gt;черных дыр&lt;&gt; и &lt;FUEL&gt;станций Атласа&lt;&gt;.&#xA;Странники &lt;STELLAR&gt;Гелиос&lt;&gt; и &lt;STELLAR&gt;Арес&lt;&gt; снабжают вас &lt;TECHNOLOGY&gt;нанитами&lt;&gt;.&#xA;Смените активное задание в журнале (&lt;IMG&gt;OPTIONS&lt;&gt;).
                                { "Russian", "&lt;STELLAR&gt;Изучите геков вместе с -пусто-&lt;&gt;&#xA;Поло владеет координатами &lt;SPECIAL&gt;кротовых нор&lt;&gt; и &lt;FUEL&gt;станций Атласа&lt;&gt;&#xA;Странники &lt;STELLAR&gt;Гелиос&lt;&gt; и &lt;STELLAR&gt;Арес&lt;&gt; дают &lt;TECHNOLOGY&gt;наниты&lt;&gt;&#xA;Смените активное задание в журнале (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NEXUS12_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Ищите Атлас&lt;&gt;.&#xA;Поло владеет координатами &lt;SPECIAL&gt;черных дыр&lt;&gt; и &lt;FUEL&gt;станций Атласа&lt;&gt;.&#xA;Странники &lt;STELLAR&gt;Гелиос&lt;&gt; и &lt;STELLAR&gt;Арес&lt;&gt; снабжают вас &lt;TECHNOLOGY&gt;нанитами&lt;&gt;.&#xA;Смените активное задание в журнале (&lt;IMG&gt;OPTIONS&lt;&gt;).
                                -- &lt;STELLAR&gt;Seek the Atlas&lt;&gt;&#xA;Polo holds coordinates for &lt;SPECIAL&gt;Black Holes&lt;&gt; and &lt;FUEL&gt;Atlas Stations&lt;&gt;&#xA;Travellers &lt;STELLAR&gt;Helios&lt;&gt; and &lt;STELLAR&gt;Ares&lt;&gt; supply &lt;TECHNOLOGY&gt;Nanites&lt;&gt;&#xA;Change active mission in the Log (&lt;IMG&gt;OPTIONS&lt;&gt;)
                                { "Russian", "&lt;STELLAR&gt;Ищите Атлас&lt;&gt;&#xA;Поло владеет координатами &lt;SPECIAL&gt;кротовых нор&lt;&gt; и &lt;FUEL&gt;станций Атласа&lt;&gt;&#xA;Странники &lt;STELLAR&gt;Гелиос&lt;&gt; и &lt;STELLAR&gt;Арес&lt;&gt; дают &lt;TECHNOLOGY&gt;наниты&lt;&gt;&#xA;Смените активное задание в журнале (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NEXUS13_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Перезагрузите симуляцию&lt;&gt;.&#xA;Поло владеет координатами &lt;SPECIAL&gt;черных дыр&lt;&gt; и &lt;FUEL&gt;станций Атласа&lt;&gt;.&#xA;Странники &lt;STELLAR&gt;Гелиос&lt;&gt; и &lt;STELLAR&gt;Арес&lt;&gt; снабжают вас &lt;TECHNOLOGY&gt;нанитами&lt;&gt;.&#xA;Смените активное задание в журнале (&lt;IMG&gt;OPTIONS&lt;&gt;).
                                { "Russian", "&lt;STELLAR&gt;Перезагрузите симуляцию&lt;&gt;&#xA;Поло владеет координатами &lt;SPECIAL&gt;кротовых нор&lt;&gt; и &lt;FUEL&gt;станций Атласа&lt;&gt;&#xA;Странники &lt;STELLAR&gt;Гелиос&lt;&gt; и &lt;STELLAR&gt;Арес&lt;&gt; дают &lt;TECHNOLOGY&gt;наниты&lt;&gt;&#xA;Смените активное задание в журнале (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NEXUS14_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Исследуйте бесчисленные реальности&lt;&gt;.&#xA;Поло владеет координатами &lt;SPECIAL&gt;черных дыр&lt;&gt; и &lt;FUEL&gt;станций Атласа&lt;&gt;.&#xA;Странники &lt;STELLAR&gt;Гелиос&lt;&gt; и &lt;STELLAR&gt;Арес&lt;&gt; снабжают вас &lt;TECHNOLOGY&gt;нанитами&lt;&gt;.&#xA;Смените активное задание в журнале (&lt;IMG&gt;OPTIONS&lt;&gt;).
                                -- &lt;STELLAR&gt;Explore countless realities&lt;&gt;&#xA;Polo holds coordinates for &lt;SPECIAL&gt;Black Holes&lt;&gt; and &lt;FUEL&gt;Atlas Stations&lt;&gt;&#xA;Travellers &lt;STELLAR&gt;Helios&lt;&gt; and &lt;STELLAR&gt;Ares&lt;&gt; supply &lt;TECHNOLOGY&gt;Nanites&lt;&gt;&#xA;Change active mission in the Log (&lt;IMG&gt;OPTIONS&lt;&gt;)
                                { "Russian", "&lt;STELLAR&gt;Исследуйте бесчисленные реальности&lt;&gt;&#xA;Поло владеет координатами &lt;SPECIAL&gt;кротовых нор&lt;&gt; и &lt;FUEL&gt;станций Атласа&lt;&gt;&#xA;Странники &lt;STELLAR&gt;Гелиос&lt;&gt; и &lt;STELLAR&gt;Арес&lt;&gt; дают &lt;TECHNOLOGY&gt;наниты&lt;&gt;&#xA;Смените активное задание в журнале (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NEXUS15_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Наслаждайтесь реальностью, пока есть время&lt;&gt;.&#xA;Поло владеет координатами &lt;SPECIAL&gt;черных дыр&lt;&gt; и &lt;FUEL&gt;станций Атласа&lt;&gt;.&#xA;Странники &lt;STELLAR&gt;Гелиос&lt;&gt; и &lt;STELLAR&gt;Арес&lt;&gt; снабжают вас &lt;TECHNOLOGY&gt;нанитами&lt;&gt;.&#xA;Смените активное задание в журнале (&lt;IMG&gt;OPTIONS&lt;&gt;).
                                { "Russian", "&lt;STELLAR&gt;Наслаждайтесь реальностью, пока есть время&lt;&gt;&#xA;Поло владеет координатами &lt;SPECIAL&gt;кротовых нор&lt;&gt; и &lt;FUEL&gt;станций Атласа&lt;&gt;&#xA;Странники &lt;STELLAR&gt;Гелиос&lt;&gt; и &lt;STELLAR&gt;Арес&lt;&gt; дают &lt;TECHNOLOGY&gt;наниты&lt;&gt;&#xA;Смените активное задание в журнале (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                            }
                        },

                        -- везде сделал без переноса в описании планеты, кроме этого
                        -- надоел мелкий интерфейс, где не развернуться
                        -- как вариант можно было написать "боевитые стражи", но как-то непривычно, может потом заменю
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PLANETLABEL_SENTINELS_MOD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;EX_SENTINEL&lt;&gt;&lt;DISC_STAT&gt;Повышенная активность стражей&lt;&gt;
                                -- &lt;IMG&gt;EX_SENTINEL&lt;&gt; &lt;DISC_STAT&gt;High Sentinel Activity&lt;&gt;
                                { "Russian", "&lt;IMG&gt;EX_SENTINEL&lt;&gt; &lt;DISC_STAT&gt;Бойкие стражи&lt;&gt;" },
                            }
                        },

                        --#region Уважение / Презрение
                        -- это не влезает при большом масштабе
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_STANDING_TRA_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Отношения улучшены: геки
                                -- Standing Increased: Gek
                                { "Russian", "Уважение: Геки" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_STANDING_EXP_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Отношения улучшены: корваксы
                                -- Standing Increased: Korvax
                                { "Russian", "Уважение: Корваксы" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_STANDING_WAR_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Отношения улучшены: вай’кины
                                -- Standing Increased: Vy'keen
                                { "Russian", "Уважение: Вай’кины" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_STANDING_G_TRA_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Отношения улучшены: Гильдия торговцев
                                -- Standing Increased: Merchants Guild
                                { "Russian", "Уважение: Гильдия торговцев" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_STANDING_G_EXP_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Отношения улучшены: Гильдия исследователей
                                -- Standing Increased: Explorers Guild
                                { "Russian", "Уважение: Гильдия исследователей" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_STANDING_G_WAR_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Отношения улучшены: Гильдия наемников
                                -- Standing Increased: Mercenaries Guild
                                { "Russian", "Уважение: Гильдия наемников" },
                            }
                        },
                        --
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_STANDING_DOWN_TRA_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Отношения ухудшены: геки
                                -- Standing Decreased: Gek
                                { "Russian", "Презрение: Геки" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_STANDING_DOWN_EXP_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Отношения ухудшены: корваксы
                                -- Standing Decreased: Korvax
                                { "Russian", "Презрение: Корваксы" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_STANDING_DOWN_WAR_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Отношения ухудшены: вай’кины
                                -- Standing Decreased: Vy'keen
                                { "Russian", "Презрение: Вай’кины" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_STANDING_G_DOWN_TRA_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Отношения ухудшены: Гильдия торговцев
                                -- Standing Decreased: Merchants Guild
                                { "Russian", "Презрение: Гильдия торговцев" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_STANDING_G_DOWN_EXP_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Отношения ухудшены: Гильдия исследователей
                                -- Standing Decreased: Explorers Guild
                                { "Russian", "Презрение: Гильдия исследователей" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_STANDING_G_DOWN_WAR_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Отношения ухудшены: Гильдия наемников
                                -- Standing Decreased: Mercenaries Guild
                                { "Russian", "Презрение: Гильдия наемников" },
                            }
                        },
                        --#endregion

                        -- в меню экрана инвентаря грузового судна
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FREIGHTER_TELEPORT_RANGE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Включена телепортация предметов
                                -- Item Teleportation Enabled
                                { "Russian", "ВКЛЮЧЕНА ТЕЛЕПОРТАЦИЯ ПРЕДМЕТОВ" },
                            }
                        },
                        -- везде, значит, warp переводили как "варп", а тут решили авторский перевод
                        -- где тут слово база. ок-ок, возможно, осталось от старого перевода
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TELEPORT_PROMPT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Переместиться на базу %BASE%
                                -- Warp to %BASE%
                                { "Russian", "Перенестись в %BASE%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DOWNLOADING_BASE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Идет загрузка данных: %BASE%
                                -- Downloading Data: %BASE%...
                                { "Russian", "Загрузка..." },
                            }
                        },
                        -- в 5.11 аквахерни уменьшили интерфейс, теперь сглаживание прокручивается при масштабе 100%
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TERRAINMODE_FLATTEN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- СГЛАЖИВАНИЕ
                                -- FLATTEN
                                { "Russian", "РАВНЕНИЕ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SHIP_INV_TOKEN_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- УЛУЧШЕНИЕ ХРАНИЛИЩА
                                -- STORAGE AUGMENTATION
                                { "Russian", "ЯЧЕЙКА ДЛЯ ЗВЕЗДОЛЁТА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SHIP_INV_TOKEN_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Улучшение хранилища
                                -- Storage Augmentation
                                { "Russian", "Ячейка для звездолёта" },
                            }
                        },
                        -- вообще так не говорят в русском языке
                        -- добытый модуль, полученный модуль, изъятый модуль (норм, но не наш случай)
                        -- по-русски должно быть б/у модуль
                        -- но т.к. б/у модуль или не б/у - всем пофиг
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FRIG_TOKEN_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ИЗВЛ. МОД. ФРЕГАТА
                                -- SALVAGED FRIGATE MODULE
                                { "Russian", "МОДУЛЬ ФРЕГАТА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FRIG_TOKEN_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Извлеченный модуль фрегата
                                -- Salvaged Frigate Module
                                { "Russian", "Модуль фрегата" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FRIG_TOKEN_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Платформа подключения для крупного корабля
                                -- Capital Ship Wiring Platform
                                { "Russian", "Запчасть крупного корабля" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SALVAGE_INV_OPTA" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Купить хранилище
                                -- Purchase Storage
                                { "Russian", "Купить ячейку" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_NO_PARTICIPANTS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Нет записавшихся участников
                                -- No Participants Registered
                                { "Russian", "НЕТ ЗАПИСАВШИХСЯ УЧАСТНИКОВ" },
                            }
                        },
                        { -- здоровье считается в пунктах/единицах, а не в процентах
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CONSUME_HEALTH_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Система питания экзокостюма восстановит &lt;STELLAR&gt;%NUM%% здоровья&lt;&gt;
                                -- Exosuit nutrient system will restore &lt;STELLAR&gt;%NUM%% health&lt;&gt;
                                { "Russian", "Восстановить &lt;STELLAR&gt;%NUM% ед. здоровья&lt;&gt;" },
                            }
                        },
                    }
                },
                { -- LANGUAGE/NMS_LOC6_RUSSIAN.MBIN
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_LOC6_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "QUICK_MENU_SUM_FREIGHT_NO_DRIVE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Не удалось призвать :: Мощности варп-двигателя судна недостаточно для текущей системы.
                                -- Cannot Summon :: Freighter warpdrive is insufficient for current system
                                { "Russian", "КОНФИГУРАЦИЯ ВАРП-ДВИГАТЕЛЯ КРУПНОГО СУДНА НЕ ПОЗВОЛЯЕТ ПЕРЕМЕСТИТЬСЯ В ТЕКУЩУЮ СИСТЕМУ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "QUICK_MENU_SUM_SHIP_COMBAT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Невозможно вызвать в бою
                                -- Cannot Summon In Combat
                                { "Russian", "НЕВОЗМОЖНО ВЫЗВАТЬ В БОЮ" },
                            }
                        },
                        -- первые 5 галактик без скобок, сохраняем формат, а то какая-то альфа версия игры...
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TELEPORT_GALNAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- [Галактика %GALNAME%]
                                -- [%GALNAME%]
                                { "Russian", "%GALNAME%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TRADE_BUY_SCRAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;SELECT&lt;&gt; Испорченный металл (%AMOUNT%)
                                -- &lt;IMG&gt;SELECT&lt;&gt; %AMOUNT% Tainted Metal
                                { "Russian", "&lt;IMG&gt;SELECT&lt;&gt; Обменять &lt;METAL&gt;&lt;IMG&gt;EARTH&lt;&gt;&lt;&gt;%AMOUNT%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BUY_SCRAP_HEADER" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ОБМЕНЯТЬ ИСПОРЧЕННЫЙ МЕТАЛЛ (%AMOUNT%)
                                -- EXCHANGE %AMOUNT% TAINTED METAL
                                { "Russian", "ИСПОРЧЕННЫЙ МЕТАЛЛ × %AMOUNT%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TRADE_BUY_SCRAP_ALT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;SELECT&lt;&gt; Пугний (%AMOUNT%)
                                -- &lt;IMG&gt;SELECT&lt;&gt; %AMOUNT% Pugneum
                                { "Russian", "&lt;IMG&gt;SELECT&lt;&gt; Обменять &lt;SPECIAL&gt;&lt;IMG&gt;SPECIAL&lt;&gt;&lt;&gt;%AMOUNT%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BUY_SCRAP_HEADER_ALT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ОБМЕНЯТЬ ПУГНИЙ (%AMOUNT%)
                                -- EXCHANGE %AMOUNT% PUGNEUM
                                { "Russian", "ОБМЕНЯТЬ ПУГНИЙ × %AMOUNT%" },
                            }
                        },

                        --#region Ячейка расширения мультитула
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WEAPON_INV_TOKEN_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ЯЧЕЙКА РАСШИРЕНИЯ МУЛЬТИТУЛА
                                -- MULTI-TOOL EXPANSION SLOT
                                { "Russian", "ЯЧЕЙКА ДЛЯ МУЛЬТИТУЛА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WEAPON_INV_TOKEN_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Ячейка расширения мультитула
                                -- Multi-Tool Expansion Slot
                                { "Russian", "Ячейка для мультитула" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WEAPON_INV_TOKEN_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Блок улучшения
                                -- Upgrade Unit
                                { "Russian", "Модуль расширения мультитула" },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SUIT_INV_TOKEN_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОДУЛЬ РАСШИРЕНИЯ ЭКЗОКОСТЮМА
                                -- EXOSUIT EXPANSION UNIT
                                { "Russian", "ЯЧЕЙКА ДЛЯ ЭКЗОКОСТЮМА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SUIT_INV_TOKEN_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Модуль расширения экзокостюма
                                -- Exosuit Expansion Unit
                                { "Russian", "Ячейка для экзокостюма" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SUIT_INV_TOKEN_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Блок улучшения
                                -- Upgrade Unit
                                { "Russian", "Модуль расширения экзокостюма" },
                            }
                        },

                        --#region Черная дыра / Кротовая нора
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_GALMAP_BHOLE_FOUND" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Обнаружена кротовая нора" }, -- Обнаружена черная дыра
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_BLACKHOLE_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Обнаружена черная дыра&lt;&gt;&#xA;Пересеките горизонт событий черной дыры: %CURRENT%/%AMOUNT%
                                -- &lt;SPECIAL&gt;Black hole located&lt;&gt;&#xA;Cross the black hole's event horizon: %CURRENT%/%AMOUNT%
                                { "Russian", "&lt;SPECIAL&gt;Обнаружена кротовая нора&lt;&gt;&#xA;Пересеките горизонт событий кротовой норы: %CURRENT%/%AMOUNT%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_BLACKHOLE_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Попросите &lt;TRANS_EXP&gt;Нада&lt;&gt; на &lt;SPECIAL&gt;Космической Аномалии&lt;&gt; вам помочь.&#xA;Отмеченная &lt;SPECIAL&gt;черная дыра&lt;&gt; появится на галактической карте.
                                --
                                { "Russian", "Попросите &lt;TRANS_EXP&gt;Нада&lt;&gt; на &lt;SPECIAL&gt;Космической Аномалии&lt;&gt; вам помочь.&#xA;Отмеченная &lt;SPECIAL&gt;кротовая нора&lt;&gt; появится на галактической карте." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TIP_BANNER_WARP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Кротовая нора" }, -- Черная дыра
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_BLACKHOLE_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Попадите в кротовую нору" }, -- Попадите в черную дыру
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_BLACKHOLE_DESC_D" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Вы попали в кротовую нору" }, -- Вы попали в черную дыру
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_BLACKHOLE_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите &lt;SPECIAL&gt;черную дыру&lt;&gt;&#xA;Если вам нужна помощь, поговорите со &lt;TRANS_TRA&gt;Специалистом Поло&lt;&gt; на борту &lt;SPECIAL&gt;Космической Аномалии&lt;&gt;.
                                { "Russian", "Найдите &lt;SPECIAL&gt;кротовую нору&lt;&gt;&#xA;Если вам нужна помощь, поговорите со &lt;TRANS_TRA&gt;Специалистом Поло&lt;&gt; на борту &lt;SPECIAL&gt;Космической Аномалии&lt;&gt;." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_BLACKHOLE_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите &lt;SPECIAL&gt;черную дыру&lt;&gt;&#xA;Черная дыра отмечена на галактической карте (&lt;IMG&gt;QUICK_MENU&lt;&gt;)&#xA;Следуйте по &lt;STELLAR&gt;пути до черной дыры&lt;&gt;, чтобы добраться до отмеченной системы.
                                { "Russian", "Найдите &lt;SPECIAL&gt;кротовую нору&lt;&gt;&#xA;Кротовая нора отмечена на галактической карте (&lt;IMG&gt;QUICK_MENU&lt;&gt;)&#xA;Следуйте по &lt;STELLAR&gt;пути до кротовой норы&lt;&gt;, чтобы добраться до отмеченной системы." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_BLACKHOLE_OBJ" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Попасть в кротовую нору" }, -- Попасть в черную дыру
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TITLE_OWNED_BLACK_HOLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Вы прошли через кротовую нору" }, -- Вы прошли через черную дыру
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "PET_OPT_LAY_EGG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Стимулировать появление яйца
                                -- Induce Egg
                                { "Russian", "Откладывание яйца" },
                            }
                        },
                        -- не влазиет в интерфейс, хотя перевод точный
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_STARCHART_TREASURE_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Картографические данные мест раскопок
                                -- Dig Site Cartographic Data
                                { "Russian", "Карта раскопок" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WEAPON_SLOTS_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Установлена ячейка мультитула!
                                -- New Multi-Tool Slot Installed!
                                { "Russian", "УСТАНОВЛЕНА ЯЧЕЙКА МУЛЬТИТУЛА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ATLAS_WORD_KNOWN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Передачи Атласа полностью изучены
                                -- Atlas communications fully mapped
                                { "Russian", "ИЗУЧЕНЫ ВСЕ СЛОВА АТЛАСА" },
                            }
                        },
                        -- даааа переводчик, тебе точно нужны пилюли для имбического перевода
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NO_THROW_BAIT_HERE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сейчас выдача пилюль невозможна
                                -- Cannot dispense pellets right now
                                { "Russian", "РАЗДАЧА ГРАНУЛ СЕЙЧАС НЕВОЗМОЖНА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SPECIAL_BLD_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Украшение (открываемое)
                                -- Unlockable Decoration
                                { "Russian", "Украшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SPECIAL_PET_CUSTOM_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Открываемый аксессуар для питомца
                                -- Unlockable Companion Accessory
                                { "Russian", "Аксессуар для питомца" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JETTRAIL_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Декоративный выхлоп реактивного ранца
                                -- Jetpack Exhaust Override
                                { "Russian", "Декоративный выхлоп ранца" },
                            }
                        },
                        -- уменьшаем длину строк и оставляем только полезную информацию
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NOTIFY_STORM_JETPACK" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;FUEL&gt;Перегретая атмосфера&lt;&gt; повышает эффективность &lt;STELLAR&gt;реактивного ранца&lt;&gt;.&#xA;Позволяет перелетать дальше во время высокотемпературных бурь.
                                -- &lt;FUEL&gt;Superheated atmosphere&lt;&gt; improves &lt;STELLAR&gt;jetpack&lt;&gt; efficiency&#xA;Jetpack further during high-temperature storms
                                { "Russian", "&lt;FUEL&gt;Перегретая атмосфера&lt;&gt;&#xA;Дальность &lt;STELLAR&gt;прыжков&lt;&gt; увеличена" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NOTIFY_STORM_SPRINT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TRADEABLE&gt;Продвинутая переработка газа&lt;&gt; повышает эффективность &lt;STELLAR&gt; бега&lt;&gt;.&#xA;Позволяет бегать дальше во время токсичных бурь.
                                -- &lt;TRADEABLE&gt;Advanced gas processing&lt;&gt; improves &lt;STELLAR&gt;sprinting&lt;&gt; efficiency&#xA;Sprint further during toxic storms
                                { "Russian", "&lt;TRADEABLE&gt;Трансформация воздушных масс&lt;&gt;&#xA;Дальность &lt;STELLAR&gt;бега&lt;&gt; увеличена" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NOTIFY_STORM_MINING" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;COMMODITY&gt;Локализованные столкновения ионов&lt;&gt; повышают &lt;STELLAR&gt;эффективность добычи&lt;&gt;.&#xA;Позволяет добывать больше ресурсов во время радиоактивных бурь.
                                -- &lt;COMMODITY&gt;Localised ionic collisions&lt;&gt; improve &lt;STELLAR&gt;mining output&lt;&gt;&#xA;Additional materials are mined during radiation storms
                                { "Russian", "&lt;COMMODITY&gt;Локализованные столкновения ионов&lt;&gt;&#xA;&lt;STELLAR&gt;Количество добываемых ресурсов&lt;&gt; увеличено" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NOTIFY_STORM_HEAT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;Низкие температуры&lt;&gt; повышают &lt;STELLAR&gt;эффективность системы охлаждения&lt;&gt;.&#xA;Расщепитель нагревается медленнее во время вьюги.
                                -- &lt;TECHNOLOGY&gt;Freezing Temperatures&lt;&gt; improve &lt;STELLAR&gt;heat efficiency&lt;&gt;&#xA;The Mining Beam overheats slowly during blizzards
                                { "Russian", "&lt;TECHNOLOGY&gt;Низкая температура&lt;&gt;&#xA;Расщепитель &lt;STELLAR&gt;нагревается медленнее&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPLORE_LOG_MSG_PLANET_BONUS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Погода: %WEATHER%&lt;STELLAR&gt;Обнаружены все существа!&lt;&gt; Зарегистрируйте полный каталог на странице открытий (&lt;IMG&gt;OPTIONS&lt;&gt;).&#xA;Задокументировано флоры: &lt;%PLANT_GRADE%&gt;%PLANTS%&lt;&gt; / &lt;%PLANT_GRADE%&gt;%PLANTS_MAX%&lt;&gt;&#xA;Изучено минералов: &lt;%MIN_GRADE%&gt;%MINERALS%&lt;&gt; / &lt;%MIN_GRADE%&gt;%MINERALS_MAX%&lt;&gt;
                                -- Weather: %WEATHER%&#xA;&lt;STELLAR&gt;All Creatures Discovered!&lt;&gt; Register complete catalogue in the Discovery Page ( &lt;IMG&gt;OPTIONS&lt;&gt; )&#xA;Flora documented: &lt;%PLANT_GRADE%&gt;%PLANTS%&lt;&gt; / &lt;%PLANT_GRADE%&gt;%PLANTS_MAX%&lt;&gt;&#xA;Minerals analysed: &lt;%MIN_GRADE%&gt;%MINERALS%&lt;&gt; / &lt;%MIN_GRADE%&gt;%MINERALS_MAX%&lt;&gt;
                                { "Russian", "Погода: %WEATHER%&#xA;&lt;STELLAR&gt;Обнаружены все существа&lt;&gt; — зарегистрируйте их (&lt;IMG&gt;OPTIONS&lt;&gt;)&#xA;Задокументировано флоры: &lt;%PLANT_GRADE%&gt;%PLANTS%&lt;&gt; / &lt;%PLANT_GRADE%&gt;%PLANTS_MAX%&lt;&gt;&#xA;Изучено минералов: &lt;%MIN_GRADE%&gt;%MINERALS%&lt;&gt; / &lt;%MIN_GRADE%&gt;%MINERALS_MAX%&lt;&gt;" },
                            }
                        },
                        --
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FREE_ABAND_OPT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Спросить о заброшенных грузовых судах
                                -- Ask about derelict freighters
                                { "Russian", "Спросить о грузовых судах" },
                            }
                        },
                    }
                },
                { -- LANGUAGE/NMS_LOC7_RUSSIAN.MBIN
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_LOC7_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CONTRACT_BUTTON_LABEL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Скрыть варианты внешнего вида и вернуться к автоконструктору
                                -- Hide visual variants and return to auto-construct
                                { "Russian", "Скрыть и вернуться к автоконструктору" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_TECH_PACK_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КОМПЛЕКТ %NAME%
                                { "Russian", "%NAME%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_TECH_PACK_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Комплект %NAME%
                                -- %NAME% Package
                                { "Russian", "%NAME%" },
                            }
                        },
                        --
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BOUNTY_NAMED_LABEL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %NAME% (награда: %AMOUNT%&lt;IMG&gt;ЮН.&lt;&gt;)
                                -- %NAME% (%AMOUNT%&lt;IMG&gt;UNITS&lt;&gt; reward)
                                { "Russian", "%NAME%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FREIGHTER_ATTACK_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Корабль &lt;STELLAR&gt;%FREIGHTER%&lt;&gt; перехвачен! Уничтожено грузовых капсул: &lt;FUEL&gt;%CURRENT%/%AMOUNT%&lt;&gt;&#xA;%FLIGHT_TIP%&#xA;Используйте &lt;IMG&gt;PREVTARGET&lt;&gt; / &lt;IMG&gt;NEXTTARGET&lt;&gt;, чтобы сменить цель
                                -- &lt;STELLAR&gt;%FREIGHTER%&lt;&gt; intercepted! Cargo pods destroyed: &lt;FUEL&gt;%CURRENT%/%AMOUNT%&lt;&gt;&#xA;%FLIGHT_TIP%&#xA;Change targets with &lt;IMG&gt;PREVTARGET&lt;&gt; / &lt;IMG&gt;NEXTTARGET&lt;&gt;
                                { "Russian", "Судно &lt;STELLAR&gt;%FREIGHTER%&lt;&gt; перехвачено&#xA;Уничтожено грузовых капсул: &lt;FUEL&gt;%CURRENT%/%AMOUNT%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "QUICK_MENU_SUM_ERR_SHIP_ABOARD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Звездолет уже стоит в ангаре грузового судна
                                -- Starship already docked in freighter hangar
                                { "Russian", "ЗВЕЗДОЛЁТ УЖЕ СТОИТ В АНГАРЕ ГРУЗОВОГО СУДНА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENTINEL_HIVE_LOOT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добываемая технология стражей
                                -- Harvestable Sentinel Technology
                                { "Russian", "Технология стражей" },
                            }
                        },

                        --#region Торговая ракета
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_QUICK_MENU_NO_ROCKET" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Экзокостюм не связан с торговой ракетой
                                { "Russian", "ЭКЗОКОСТЮМ НЕ СВЯЗАН С ТОРГОВОЙ РАКЕТОЙ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_QUICK_MENU_NO_ROCKET_FUEL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Не удалось вызвать :: Мало топлива
                                { "Russian", "В ТОРГОВОЙ РАКЕТЕ МАЛО ТОПЛИВА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_QUICK_MENU_ROCKET_DAMAGED" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Не удалось вызвать :: Торговая ракета повреждена
                                { "Russian", "ТОРГОВАЯ РАКЕТА ПОВРЕЖДЕНА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_QUICK_MENU_ROCKET_BAD_LAND" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Не удалось вызвать :: Зона приземления перекрыта
                                -- Cannot Summon :: Landing area not clear
                                { "Russian", "ЗОНА ПРИЗЕМЛЕНИЯ ПЕРЕКРЫТА" },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_PMEDAL_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добавить указания в журнал &lt;IMG&gt;PINICON&lt;&gt;
                                -- Add guidance to log &lt;IMG&gt;PINICON&lt;&gt;
                                { "Russian", "Добавить в журнал &lt;IMG&gt;PINICON&lt;&gt;" },
                            }
                        },
                        -- кто помнит старый драмдебасс, тот поймет
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIRATE_STATION_LABEL_U" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- СТАНЦИЯ ПРЕСТУПНИКОВ
                                { "Russian", "ПИРАТСКАЯ СТАНЦИЯ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIRATE_STATION_LABEL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Станция преступников
                                { "Russian", "Пиратская станция" },
                            }
                        },
                        -- первое, мы уже "вошли", во-вторых, не входим, а стыкуемся
                        -- в-третьих, вариант "вы стыкуетесь со станцией п-в" слишком длинное
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIRATE_STATION_WELCOME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вы входите на станцию преступников&#xA;%NAME%
                                -- Entering Outlaw Station&#xA;%NAME%
                                { "Russian", "ПИРАТСКАЯ СТАНЦИЯ&#xA;%NAME%" },
                            }
                        },
                        -- выводится на экран при использовании отражателя сканирования
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SCAN_BLOCKER_ERROR" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Отражатель сканирования груза не установлен
                                -- No Cargo Scan Deflector Installed
                                { "Russian", "ОТРАЖАТЕЛЬ СКАНИРОВАНИЯ НЕ УСТАНОВЛЕН" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SCAN_BLOCKER_FAIL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Не удалось помешать сканированию груза!
                                -- Cargo Scan Deflection Failed!
                                { "Russian", "НЕ УДАЛОСЬ ПОМЕШАТЬ СКАНИРОВАНИЮ ГРУЗА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NOTIFY_SHIELD_DOWN_COMBAT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ЩИТ ОТКЛЮЧЕН &lt;IMG&gt;SLASH&lt;&gt; ВАЖНЫЕ СИСТЕМЫ В ОПАСНОСТИ
                                -- SHIELD DOWN &lt;IMG&gt;SLASH&lt;&gt; CRITICAL SYSTEMS VULNERABLE
                                { "Russian", "ЩИТ ОТКЛЮЧЁН • ВАЖНЫЕ СИСТЕМЫ В ОПАСНОСТИ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NOTIFY_SHIELD_DOWN_ONFOOT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ЩИТ ОТКЛЮЧЕН &lt;IMG&gt;SLASH&lt;&gt; УКЛОНЯЙТЕСЬ УКЛОНЯЙТЕСЬ
                                { "Russian", "ЩИТ ОТКЛЮЧЁН • УКЛОНЯЙТЕСЬ! УКЛОНЯЙТЕСЬ!" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BASEBUILD_INVALID_INSIDE_BASE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Нельзя построить &lt;IMG&gt;SLASH&lt;&gt; На территории существующей базы
                                -- Cannot Build &lt;IMG&gt;SLASH&lt;&gt; Within Existing Base
                                { "Russian", "НЕЛЬЗЯ СТРОИТЬ НА ЭТОЙ ТЕРРИТОРИИ БАЗЫ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NO_EDIT_SETTLEMENT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Нельзя строить на территории поселения
                                -- Cannot build within settlement limits
                                { "Russian", "НЕЛЬЗЯ СТРОИТЬ НА ТЕРРИТОРИИ ПОСЕЛЕНИЯ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CRAFT_ERROR_INV" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Нельзя построить &lt;IMG&gt;SLASH&lt;&gt; Инвентарь полон
                                -- Cannot Build &lt;IMG&gt;SLASH&lt;&gt; Inventory Full
                                { "Russian", "НЕЛЬЗЯ ПОСТРОИТЬ • ИНВЕНТАРЬ ПОЛОН" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CRAFT_ERROR_RECIPE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Нельзя построить &lt;IMG&gt;SLASH&lt;&gt; Схема неизвестна
                                -- Cannot Build &lt;IMG&gt;SLASH&lt;&gt; Recipe not Known
                                { "Russian", "НЕЛЬЗЯ ПОСТРОИТЬ • ЧЕРТЕЖ НЕИЗВЕСТЕН" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CRAFT_ERROR_AFFORD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Не хватает ресурсов &lt;IMG&gt;SLASH&lt;&gt; Закрепите, чтобы найти материалы
                                -- Insufficient Resources &lt;IMG&gt;SLASH&lt;&gt; Pin to Locate Materials
                                { "Russian", "НЕ ХВАТАЕТ РЕСУРСОВ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CRAFT_ERROR_AFFORD_ALT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Не хватает ресурсов &lt;IMG&gt;SLASH&lt;&gt; Посмотреть шаги создания
                                -- Insufficient Resources &lt;IMG&gt;SLASH&lt;&gt; View Craft Steps
                                { "Russian", "НЕ ХВАТАЕТ РЕСУРСОВ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BASEBUILD_FRE_SNAP_INVALID" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Надо соединить с комнатой
                                -- Must attach to existing room
                                { "Russian", "НЕОБХОДИМО СОЕДИНИТЬ С КОМНАТОЙ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BASEBUILD_FRE_OUT_OF_BASE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Целевая область выходит за пределы строительства
                                -- Targeted area is outside of build limits
                                { "Russian", "ЦЕЛЕВАЯ ОБЛАСТЬ ВЫХОДИТ ЗА ПРЕДЕЛЫ СТРОИТЕЛЬСТВА" },
                            }
                        },
                        -- при установке технологии над каждым компонентом копируется имя технологии
                        -- потом в описании имя технологии зачем-то пихают, епрст, за идиотов людей держат
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_INSTALL_TECH_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ДЕТАЛЬ ТЕХНОЛОГИИ %TECH%
                                -- %TECH% PART
                                { "Russian", "ДЕТАЛЬ ТЕХНОЛОГИИ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MEDAL_PIN_TITLE_FORMAT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %NAME% (%PROGRESS%)
                                { "Russian", "%NAME% › %PROGRESS%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SQUADRON_RECRUIT_OPT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Завербовать форму жизни в эскадрилью
                                -- Recruit lifeform to squadron
                                { "Russian", "Завербовать в эскадрилью" },
                            }
                        },

                        --#region КАТАЛОГ
                        -- каталог рецептов
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PORTAL_CAT_REC_REF1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Простые рецепты очистителя
                                -- Simple Refiner Recipes
                                { "Russian", "Простые рецепты" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PORTAL_CAT_REC_REF2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Рецепты очистителя
                                -- Refiner Recipes
                                { "Russian", "Обычные рецепты" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PORTAL_CAT_REC_REF2_U" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- РЕЦЕПТЫ ОЧИСТИТЕЛЯ
                                -- REFINER RECIPES
                                { "Russian", "ОБЫЧНЫЕ РЕЦЕПТЫ ОЧИСТИТЕЛЯ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PORTAL_CAT_REC_REF3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сложные рецепты очистителя
                                -- Complex Refiner Recipes
                                { "Russian", "Сложные рецепты" },
                            }
                        },
                        -- в идеале это "Программно-аппартные комплексы"
                        -- но есть ограничение на 22 буквы
                        -- мда, не зря назвали именно так даже в англ. варианте...
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PORTAL_CAT_BLD_TECH" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Технология для строительства
                                -- Buildable Technology
                                { "Russian", "Технические системы" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PORTAL_CAT_BLD_TECH_U" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ТЕХНОЛОГИЯ ДЛЯ СТРОИТЕЛЬСТВА
                                -- BUILDABLE TECHNOLOGY
                                { "Russian", "ТЕХНИЧЕСКИЕ СИСТЕМЫ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PORTAL_CAT_BLD_FRE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Строительство на грузовом судне
                                -- Freighter Construction
                                { "Russian", "Грузовое судно" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PORTAL_CAT_BLD_IND" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Энергия и промышленность
                                -- Power &amp; Industry
                                { "Russian", "Промышленность" },
                            }
                        },
                        -- или "Ремесленные детали"
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PORTAL_CAT_MAT_CRAFT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Компоненты для созидания
                                -- Crafting Components
                                { "Russian", "Детали и компоненты" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PORTAL_CAT_MAT_CRAFT_U" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КОМПОНЕНТЫ ДЛЯ СОЗИДАНИЯ
                                -- CRAFTING COMPONENTS
                                { "Russian", "ДЕТАЛИ И КОМПОНЕНТЫ" },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SPECIAL_CAPE_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Плащ (открываемый)
                                { "Russian", "Плащ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SPECIAL_HOOD_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Капюшон (открываемый)
                                { "Russian", "Капюшон" },
                            }
                        },
                        --
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SILO_MAIN_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Хранит извлеченные материалы, которые можно забрать
                                -- Stores extracted materials ready for collection
                                { "Russian", "Хранит добытые материалы" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_RETURN_PIRATE_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вернитесь к &lt;TECHNOLOGY&gt;решале&lt;&gt;.&#xA;Найти его можно на борту любой &lt;STELLAR&gt;станции преступников&lt;&gt;.
                                -- Return to the &lt;TECHNOLOGY&gt;Bounty Master&lt;&gt;&#xA;Find a bounty master in any &lt;STELLAR&gt;outlaw station&lt;&gt;
                                { "Russian", "Вернитесь на &lt;STELLAR&gt;станцию преступников&lt;&gt;&#xA;к &lt;TECHNOLOGY&gt;решале&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SMUGGLE_MISSION_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Безопасно доставьте груз (%PRIMARYITEM%)
                                -- Safely deliver %PRIMARYITEM%
                                { "Russian", "Доставить: %PRIMARYITEM%" },
                            }
                        },
                    }
                },
                { -- LANGUAGE/NMS_LOC8_RUSSIAN.MBIN
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_LOC8_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "WONDER_PLANET_RAD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Самый высокий уровень радиации
                                -- Highest Radiation Level
                                { "Russian", "Самая радиактивная" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TRADE_BUY_BUI_SCRAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;ВЫБРАТЬ&lt;&gt; пыль пустоты: %AMOUNT%
                                -- &lt;IMG&gt;SELECT&lt;&gt; %AMOUNT% Void Motes
                                { "Russian", "&lt;IMG&gt;SELECT&lt;&gt; Обменять &lt;RARE&gt;&lt;IMG&gt;EXOTIC&lt;&gt;&lt;&gt;%AMOUNT%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BUY_BUI_HEADER" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ОБМЕНЯТЬ ПЫЛЬ ПУСТОТЫ: %AMOUNT%
                                -- EXCHANGE %AMOUNT% VOID MOTES
                                { "Russian", "ПЫЛЬ ПУСТОТЫ × %AMOUNT%" },
                            }
                        },
                        -- русские кавычки в капсе, прокрутка... брррр
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_RENAME_CUSTOM_WONDER" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПЕРЕИМЕНОВАТЬ: «%WONDER%»
                                -- RENAME '%WONDER%'
                                { "Russian", "ПЕРЕИМЕНОВАТЬ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MEDAL_FREIKILL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Ограбление грузовых судов
                                -- Freighters Plundered
                                { "Russian", "Грабёж по-крупному" },
                            }
                        },
                        --
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PLANETLABEL_SENTINEL_CORRUPT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;EX_SENTINEL&lt;&gt; &lt;SPECIAL&gt;Обнаружено отсутствие гармонии&lt;&gt;
                                { "Russian", "&lt;IMG&gt;EX_SENTINEL&lt;&gt; &lt;SPECIAL&gt;Отсутствие гармонии&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NOTIFY_CANNOT_QUICKWARP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Галактическая навигация недоступна
                                -- Galactic Navigation Unavailable
                                { "Russian", "ГАЛАКТИЧЕСКАЯ НАВИГАЦИЯ НЕДОСТУПНА" },
                            }
                        },

                        --#region ЗНАКИ
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PORTAL_GLYPH_NAME_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ЗНАК ПЕРВЫЙ
                                { "Russian", "ЗНАК I" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PORTAL_GLYPH_NAME_L_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Знак первый
                                { "Russian", "Знак I" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PORTAL_GLYPH_NAME_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ЗНАК ВТОРОЙ
                                { "Russian", "ЗНАК II" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PORTAL_GLYPH_NAME_L_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Знак второй
                                { "Russian", "Знак II" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PORTAL_GLYPH_NAME_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ЗНАК ТРЕТИЙ
                                { "Russian", "ЗНАК III" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PORTAL_GLYPH_NAME_L_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Знак третий
                                { "Russian", "Знак III" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PORTAL_GLYPH_NAME_4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ЗНАК ЧЕТВЕРТЫЙ
                                { "Russian", "ЗНАК IV" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PORTAL_GLYPH_NAME_L_4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Знак четвертый
                                { "Russian", "Знак IV" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PORTAL_GLYPH_NAME_5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ЗНАК ПЯТЫЙ
                                { "Russian", "ЗНАК V" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PORTAL_GLYPH_NAME_L_5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Знак пятый
                                { "Russian", "Знак V" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PORTAL_GLYPH_NAME_6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ЗНАК ШЕСТОЙ
                                { "Russian", "ЗНАК VI" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PORTAL_GLYPH_NAME_L_6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Знак шестой
                                { "Russian", "Знак VI" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PORTAL_GLYPH_NAME_7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ЗНАК СЕДЬМОЙ
                                { "Russian", "ЗНАК VII" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PORTAL_GLYPH_NAME_L_7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Знак седьмой
                                { "Russian", "Знак VII" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PORTAL_GLYPH_NAME_8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ЗНАК ВОСЬМОЙ
                                { "Russian", "ЗНАК VIII" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PORTAL_GLYPH_NAME_L_8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Знак восьмой
                                { "Russian", "Знак VIII" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PORTAL_GLYPH_NAME_9" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ЗНАК ДЕВЯТЫЙ
                                { "Russian", "ЗНАК IX" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PORTAL_GLYPH_NAME_L_9" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Знак девятый
                                { "Russian", "Знак IX" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PORTAL_GLYPH_NAME_10" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ЗНАК ДЕСЯТЫЙ
                                { "Russian", "ЗНАК X" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PORTAL_GLYPH_NAME_L_10" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Знак десятый
                                { "Russian", "Знак X" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PORTAL_GLYPH_NAME_11" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ЗНАК ОДИННАДЦАТЫЙ
                                { "Russian", "ЗНАК XI" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PORTAL_GLYPH_NAME_L_11" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Знак одиннадцатый
                                { "Russian", "Знак XI" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PORTAL_GLYPH_NAME_12" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ЗНАК ДВЕНАДЦАТЫЙ
                                { "Russian", "ЗНАК XII" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PORTAL_GLYPH_NAME_L_12" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Знак двенадцатый
                                { "Russian", "Знак XII" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PORTAL_GLYPH_NAME_13" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ЗНАК ТРИНАДЦАТЫЙ
                                { "Russian", "ЗНАК XIII" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PORTAL_GLYPH_NAME_L_13" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Знак тринадцатый
                                { "Russian", "Знак XIII" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PORTAL_GLYPH_NAME_14" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ЗНАК ЧЕТЫРНАДЦАТЫЙ
                                { "Russian", "ЗНАК XIV" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PORTAL_GLYPH_NAME_L_14" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Знак четырнадцатый
                                { "Russian", "Знак XIV" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PORTAL_GLYPH_NAME_15" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ЗНАК ПЯТНАДЦАТЫЙ
                                { "Russian", "ЗНАК XV" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PORTAL_GLYPH_NAME_L_15" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Знак пятнадцатый
                                { "Russian", "Знак XV" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PORTAL_GLYPH_NAME_16" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ЗНАК ШЕСТНАДЦАТЫЙ
                                { "Russian", "ЗНАК XVI" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PORTAL_GLYPH_NAME_L_16" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Знак шестнадцатый
                                { "Russian", "Знак XVI" },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TRADE_SURGE_ACTIVE_ERR" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сканирование не удалось &lt;IMG&gt;SLASH&lt;&gt; Рост торговли уже обнаружен
                                -- Scan Failed &lt;IMG&gt;SLASH&lt;&gt; Existing Trade Surge Detected
                                { "Russian", "СКАНИРОВАНИЕ НЕ УДАЛОСЬ • ВСПЛЕСК ТОРГОВЛИ УЖЕ НАЙДЕН" },
                            }
                        },

                        --#region Отношения улучшены / ухудшены
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_STANDING_PIR_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Преступники: отношения улучшены
                                -- Standing Increased: Outlaws
                                { "Russian", "Уважение: Пираты" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_STANDING_BUI_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Отношения улучшены: аутофаги
                                -- Standing Increased: Autophage
                                { "Russian", "Уважение: Аутофаги" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_STANDING_PIR_DOWN_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Преступники: отношения ухудшены
                                -- Standing Decreased: Outlaws
                                { "Russian", "Презрение: Пираты" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_STANDING_DOWN_BUI_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Отношения ухудшены: аутофаги
                                -- Standing Decreased: Autophage
                                { "Russian", "Презрение: Аутофаги" },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EVENT_FAILURE_ROBOCAMP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Локация не принесла результатов. &lt;IMG&gt;SLASH&lt;&gt; В данной системе гармонии не обнаружены.
                                -- Locator failed &lt;IMG&gt;SLASH&lt;&gt; No harmonies detected in current system
                                { "Russian", "В ЭТОЙ СИСТЕМЕ ГАРМОНИИ НЕ ОБНАРУЖЕНЫ" },
                            }
                        },
                        -- отображается наверху под "ДРЕДНОУТ ПОБЕЖДЕН"
                        -- в идеале должно быть так
                        -- ПОДНИМИТЕСЬ НА БОРТ, ЧТОБЫ ОБГОВОРИТЬ УСЛОВИЯ СДАЧИ • УНИЧТОЖЬТЕ КОРАБЛЬ, ЧТОБЫ ПОЛУЧИТЬ ЗНАЧИТЕЛЬНУЮ НАГРАДУ
                        -- но эта строка очень длинная
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BATTLE_BAR_DEFEAT_HINT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Взойдите на борт корабля, чтобы обговорить условия. &lt;IMG&gt;SLASH&lt;&gt; Уничтожьте корабль, чтобы получить значительную награду.
                                -- Board to negotiate terms &lt;IMG&gt;SLASH&lt;&gt; Destroy for a large bounty
                                { "Russian", "АБОРДАЖ И ПЕРЕГОВОРЫ • УНИЧТОЖИТЬ РАДИ НАЖИВЫ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BATTLE_BAR_SHIELD_DOWN_HINT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Атакуйте &lt;STELLAR&gt;топливные стержни&lt;&gt;, чтобы нанести корпусу дополнительный урон
                                -- Target &lt;STELLAR&gt;fuel rods&lt;&gt; for additional hull damage
                                { "Russian", "РАЗРУШЕНИЕ &lt;STELLAR&gt;ТОПЛИВНЫХ СТЕРЖНЕЙ&lt;&gt; НАНЕСЁТ ДОПОЛНИТЕЛЬНЫЙ УРОН КОРПУСУ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BATTLE_BAR_TORPEDO_WARN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- До пуска торпед: &lt;FUEL&gt;%COUNTDOWN%&lt;&gt; сек.
                                -- Torpedoes launching in &lt;FUEL&gt;%COUNTDOWN%&lt;&gt;s
                                { "Russian", "ДО ЗАПУСКА ТОРПЕД &lt;FUEL&gt;%COUNTDOWN%&lt;&gt; сек." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BATTLE_BAR_TORPEDO_COUNT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Приближаются торпеды: &lt;FUEL&gt;%TORPEDOES%&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt; Прочность корпуса гражданского судна: &lt;STELLAR&gt;%HULL%%&lt;&gt;
                                -- Incoming Torpedoes: &lt;FUEL&gt;%TORPEDOES%&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt; Civilian hull at &lt;STELLAR&gt;%HULL%%&lt;&gt;
                                { "Russian", "ЗАПУЩЕНО ТОРПЕД: &lt;FUEL&gt;%TORPEDOES%&lt;&gt; • ПРОЧНОСТЬ КОРПУСА ГРАЖДАНСКОГО СУДНА: &lt;STELLAR&gt;%HULL%%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BATTLE_BAR_SHIELD_HINT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Пролетите под щитами, чтобы уничтожить &lt;STELLAR&gt;генераторы щитов&lt;&gt; дредноута
                                -- Fly beneath shields to destroy Dreadnought &lt;STELLAR&gt;shield generators&lt;&gt;
                                { "Russian", "УНИЧТОЖЬТЕ &lt;STELLAR&gt;ГЕНЕРАТОРЫ ЩИТОВ&lt;&gt; ДРЕДНОУТА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BATTLE_BAR_POLICE_SHIELD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Пролетите под щитами, чтобы уничтожить &lt;STELLAR&gt;генераторы щитов&lt;&gt; крупного корабля
                                -- Fly beneath shields to destroy capital ship &lt;STELLAR&gt;shield generators&lt;&gt;
                                { "Russian", "УНИЧТОЖЬТЕ &lt;STELLAR&gt;ГЕНЕРАТОРЫ ЩИТОВ&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BATTLE_BAR_HULL_ALT1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Щиты &lt;STELLAR&gt;отключены&lt;&gt;! &lt;IMG&gt;SLASH&lt;&gt; Корпус уязвим
                                -- Shields &lt;STELLAR&gt;disabled&lt;&gt;! &lt;IMG&gt;SLASH&lt;&gt; Hull vulnerable
                                { "Russian", "ЩИТЫ &lt;STELLAR&gt;ОТКЛЮЧЕНЫ&lt;&gt; • КОРПУС УЯЗВИМ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BATTLE_BAR_HULL_ALT2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Уничтожьте защитные турели и атакуйте корпус крупного корабля
                                -- Destroy defense turrets and engage capital ship hull
                                { "Russian", "УНИЧТОЖЬТЕ ЗАЩИТНЫЕ ТУРЕЛИ И АТАКУЙТЕ КОРПУС" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "QUICK_MENU_SUM_ERR_SHIP_NEAR" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Звездолет уже стоит в ангаре станции
                                -- Starship already docked in station hangar
                                { "Russian", "ЗВЕЗДОЛЁТ УЖЕ СТОИТ В АНГАРЕ СТАНЦИИ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "QUICK_MENU_SUM_ERR_SHIP_DAM" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Выбранный звездолет критически поврежден
                                -- Selected starship is critically damaged
                                { "Russian", "ВЫБРАННЫЙ ЗВЕЗДОЛЁТ КРИТИЧЕСКИ ПОВРЕЖДЕН" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SHIPSCAN_ECON_LABEL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- АКТИВИРОВАТЬ ТОРГОВЫЙ КОМПЬЮТЕР
                                -- ACTIVATE TRADE COMPUTER
                                { "Russian", "ВКЛЮЧИТЬ КОМПЬЮТЕР" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JM_TITLE_SEASON" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Предыдущие экспедиции
                                -- Previous Expeditions
                                { "Russian", "Экспедиции" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SPECIAL_PACK_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Реактивный ранец (открываемый)
                                { "Russian", "Реактивный ранец" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SPECIAL_HEAD_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Голова (открываемая)
                                -- Unlockable Head
                                { "Russian", "Голова" },
                            }
                        },
                        --
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CATA_JOURNEY_MILESTONE_HEAD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Всего достигнуто этапов: &lt;STELLAR&gt;%TOTAL%&lt;&gt;
                                -- Total Milestones Achieved: &lt;STELLAR&gt;%TOTAL%&lt;&gt;
                                { "Russian", "Завершено этапов: &lt;STELLAR&gt;%TOTAL%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CATA_SYSTEM_STANDING" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Отношения (%RACE%): &lt;STELLAR&gt;%STANDING%&lt;&gt;
                                -- %RACE% standing: &lt;STELLAR&gt;%STANDING%&lt;&gt;
                                { "Russian", "Отношение %RACE%ов: &lt;STELLAR&gt;%STANDING%&lt;&gt;" },
                            }
                        },
                        --
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BUGS_HINT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружен мерзкая стая
                                { "Russian", "Мерзкая стая" },
                            }
                        },
                        --
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENTINEL_CRASH_OBJ1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Очистить поврежденный корабль от порчи стражей
                                -- Purge the damaged ship of Sentinel taint
                                { "Russian", "Очистите корабль от порчи стражей" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENTINEL_CRASH_OBJ2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сделать корабль пригодным для постороннего пилота
                                -- Make the ship fit for a non-Sentinel pilot
                                { "Russian", "Подготовить корабль для полётов" },
                            }
                        },
                        --
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WALKER_BAR_SHIELD_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Цельтесь в броню ноги и мозга, чтобы обнажить цепи управления
                                -- Target leg and brain armour to expose control circuits
                                { "Russian", "РАЗРУШЬТЕ БРОНЮ НОГ И МОЗГА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WALKER_BAR_SHIELD_TIP_CORE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Цельтесь в броню мозга, чтобы обнажить цепи управления
                                -- Target brain armour to expose control circuits
                                { "Russian", "РАЗРУШЬТЕ БРОНЮ МОЗГА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WALKER_BAR_SHIELD_DOWN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Броня уничтожена &lt;IMG&gt;SLASH&lt;&gt; Шагающий страж уязвим!
                                -- Armour destroyed &lt;IMG&gt;SLASH&lt;&gt; Walker vulnerable!
                                { "Russian", "БРОНЯ УНИЧТОЖЕНА • ШАГАЮЩИЙ СТРАЖ УЯЗВИМ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_STARCHART_ROBOT_HINT_TITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Получен эхолокатор
                                -- Echo Locator Acquired
                                { "Russian", "Эхолокатор" },
                            }
                        },

                        --#region UI_TRACK_BLACKHOLE
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TRACK_BLACKHOLE_TITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите черную дыру
                                { "Russian", "Найдите кротовую нору" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TRACK_BLACKHOLE_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Нада и Поло пообещали помочь мне в исследовании галактики. Они отметили координаты черной дыры на моей карте. Похоже, им самим интересно, куда она меня приведет.
                                { "Russian", "Нада и Поло пообещали помочь мне в исследовании галактики. Они отметили координаты кротовой норы на моей карте. Похоже, им самим интересно, куда она меня приведет." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TRACK_BLACKHOLE_OBJ" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найти черную дыру
                                { "Russian", "Найти кротовую нору" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TRACK_BLACKHOLE_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Чтобы открыть &lt;TECHNOLOGY&gt;галактическую карту&lt;&gt;, окажитесь в космосе и используйте быстрое меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;). Системы с &lt;SPECIAL&gt;гравитационными аномалиями&lt;&gt; помечены особым значком. Используйте &lt;IMG&gt;GALAXY_NAV_L&lt;&gt; и &lt;IMG&gt;GALAXY_NAV_R&lt;&gt;, чтобы сменить текущий курс на галактической карте на тот, который приведет вас к ближайшей системе с активной черной дырой.&#xA;&#xA;Пройдя сквозь центр черной дыры, вы сможете преодолеть большие пространства, но при этом &lt;TECHNOLOGY&gt;технологии звездолета&lt;&gt; могут быть повреждены.&#xA;&#xA;Используйте &lt;COMMODITY&gt;телепорт космической станции&lt;&gt;, чтобы вернуться в исходную точку, если в результате гравитационного путешествия окажетесь в неожиданном месте.
                                -- While in space, access the &lt;TECHNOLOGY&gt;Galaxy Map&lt;&gt; from the Quick Menu (&lt;IMG&gt;QUICK_MENU&lt;&gt;). Systems with &lt;SPECIAL&gt;gravitational anomalies&lt;&gt; are marked with a special icon. Use &lt;IMG&gt;GALAXY_NAV_L&lt;&gt; and &lt;IMG&gt;GALAXY_NAV_R&lt;&gt; to change the current galaxy map path to lead you towards the nearest system with an active black hole.&#xA;&#xA;Travelling through the heart of the black hole allows for rapid progress across the universe, though may cause damage to &lt;TECHNOLOGY&gt;starship technologies&lt;&gt;.&#xA;&#xA;A &lt;COMMODITY&gt;Space Station Teleporter&lt;&gt; can be used to return to local space if gravitational travel provides an unexpected destination...
                                { "Russian", "Находясь в космосе, откройте &lt;TECHNOLOGY&gt;галактическую карту&lt;&gt; из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;). Системы с &lt;SPECIAL&gt;гравитационными аномалиями&lt;&gt; помечены особым значком. Используйте &lt;IMG&gt;GALAXY_NAV_L&lt;&gt; и &lt;IMG&gt;GALAXY_NAV_R&lt;&gt;, чтобы сменить курс на галактической карте на тот, который приведет вас к ближайшей системе с кротовой норой.&#xA;&#xA;Пройдя сквозь центр кротовой норы, вы сможете преодолеть большие пространства, но при этом &lt;TECHNOLOGY&gt;технологии звездолёта&lt;&gt; могут быть повреждены.&#xA;&#xA;Вернитесь в исходную точку через &lt;COMMODITY&gt;телепорт&lt;&gt; на космической станции, если гравитационное путешествие занесет в неожиданное место..." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TRACK_BLACKHOLE_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите &lt;SPECIAL&gt;черную дыру&lt;&gt;.&#xA;Вернитесь в космос и откройте &lt;TECHNOLOGY&gt;галактическую карту&lt;&gt;.
                                { "Russian", "Найдите &lt;SPECIAL&gt;кротовую нору&lt;&gt;&#xA;Вернитесь в космос и откройте &lt;TECHNOLOGY&gt;галактическую карту&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TRACK_BLACKHOLE_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите &lt;SPECIAL&gt;черную дыру&lt;&gt;.&#xA;Откройте &lt;TECHNOLOGY&gt;галактическую карту&lt;&gt; с помощью быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;).&#xA;Изменить курс на галактической карте можно, используя &lt;IMG&gt;GALAXY_NAV_L&lt;&gt;&lt;IMG&gt;GALAXY_NAV_R&lt;&gt;.
                                -- Locate a &lt;SPECIAL&gt;Black Hole&lt;&gt;&#xA;Access the &lt;TECHNOLOGY&gt;Galaxy Map&lt;&gt; from the Quick Menu (&lt;IMG&gt;QUICK_MENU&lt;&gt;)&#xA;Change galaxy map paths with &lt;IMG&gt;GALAXY_NAV_L&lt;&gt;&lt;IMG&gt;GALAXY_NAV_R&lt;&gt;
                                { "Russian", "Найдите &lt;SPECIAL&gt;кротовую нору&lt;&gt;&#xA;Откройте &lt;TECHNOLOGY&gt;галактическую карту&lt;&gt; из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)&#xA;Меняйте курс на галактической карте с помощью &lt;IMG&gt;GALAXY_NAV_L&lt;&gt;&lt;IMG&gt;GALAXY_NAV_R&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TRACK_BLACKHOLE_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Подлетите к &lt;SPECIAL&gt;черной дыре&lt;&gt;.&#xA;&lt;FUEL&gt;ВНИМАНИЕ&lt;&gt;: путешествие через гравитационную аномалию ведет к непредсказуемым результатам.
                                -- Approach the &lt;SPECIAL&gt;Black Hole&lt;&gt;&#xA;&lt;FUEL&gt;CAUTION&lt;&gt;: Travel via gravitational anomaly is highly unpredictable
                                { "Russian", "Направляйтесь к &lt;SPECIAL&gt;кротовой норе&lt;&gt;&#xA;Путешествие может быть &lt;FUEL&gt;непредсказуемым&lt;&gt;" },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENTINEL_CRASH_TITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Место крушения: планета %PLANET%
                                -- Salvage Site: Planet %PLANET%
                                { "Russian", "Крушение на %PLANET%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENTINEL_CRASH_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите разбившегося стража-перехватчика
                                -- Salvage a Sentinel Interceptor
                                { "Russian", "Спасение стража-перехватчика" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ROBOT_MONO_TITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Атлантидский монолит: планета %PLANET%
                                -- Atlantid Monolith: Planet %PLANET%
                                { "Russian", "Атлантидский монолит %PLANET%" },
                            }
                        },

                        --#region меню настроек
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "PC_SETTINGS_UNDO" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Отменить изменения
                                -- Undo Changes
                                { "Russian", "Отменить" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "PC_SETTINGS_RESET" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вернуть по умолчанию
                                -- Reset to Default
                                { "Russian", "По умолчанию" },
                            }
                        },
                        --#endregion
                    }
                },
                { -- LANGUAGE/NMS_UPDATE3_RUSSIAN.MBIN
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_UPDATE3_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MAINTAIN_PLANTER_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Позволяет выращивать сельскохозяйственные культуры. Для работы требуется топливо.
                                -- Allows farmed plants to grow. Requires fuel to operate.
                                { "Russian", "Позволяет выращивать сельхоз культуры" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MAINTAIN_GAS_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Автоматически собирает газы. Для работы требуется топливо.
                                -- Automatically collects gases. Requires fuel to operate.
                                { "Russian", "Автоматически собирает газы" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MAINTAIN_AMFU_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Автоматически собирает минералы. Для работы требуется топливо.
                                -- Automatically collects minerals. Requires fuel to operate.
                                { "Russian", "Автоматически собирает минералы" },
                            }
                        },
                        -- местами не влазеет, например, на вкладке Открытия
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_UNKNOWN_PLANET" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %PLANETCLASS% - Неизвестная
                                -- Unknown %PLANETCLASS%
                                { "Russian", "%PLANETCLASS%" },
                            }
                        },

                        --#region Уровень экономики
                        -- в данном случае Supply это предложение (из экономики)
                        -- наиболее точный и правильный перевод: низкий/умеренный/высокий уровень/объем предложения
                        -- но это очень длинная строка
                        -- поскольку предложение это по сути кол-во товаров и услуг на рынке, а услуги в игре не продаются,
                        -- то можно использовать и товары в описании, но из-за Medium Supply это не очень
                        -- наиболее длинная строка "достаточное снабжение" в ориг. переводе имеет 21 букву (желательно 16)
                        -- дефицит/изобилие корректнее сделать как нехватка/избыток, но дефицит и изобилие более емкие
                        -- Medium Supply это про равновесную цену, но уже есть Balanced...
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ECON_LEVEL_LOW_7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- недост. снабжение
                                -- Low Supply
                                { "Russian", "Дефицит товаров" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ECON_LEVEL_MED_5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- среднее снабжение
                                -- Medium Supply
                                { "Russian", "Достаток товаров" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ECON_LEVEL_MED_6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- удовлетворительная
                                -- Satisfactory
                                { "Russian", "Приемлимая" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ECON_LEVEL_MED_7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- жизнеспособная
                                -- Sustainable
                                { "Russian", "Устойчивая" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ECON_LEVEL_MED_8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- достойная
                                -- Adequate
                                { "Russian", "Адекватная" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ECON_LEVEL_HIGH_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- благополучная
                                -- Wealthy
                                { "Russian", "Богатая" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ECON_LEVEL_HIGH_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- процветающая
                                -- Prosperous
                                { "Russian", "Зажиточная" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ECON_LEVEL_HIGH_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- продвинутая
                                -- Advanced
                                { "Russian", "Прогрессивная" },
                            }
                        },
                        -- уменьшаем до 16 букв
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ECON_LEVEL_HIGH_5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- буйно развивающаяся
                                -- Booming
                                { "Russian", "Быстрорастущая" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ECON_LEVEL_HIGH_6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- в расцвете
                                -- Flourishing
                                { "Russian", "Процветающая" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ECON_LEVEL_HIGH_7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- достаточное снабжение
                                -- High Supply
                                { "Russian", "Изобилие товаров" },
                            }
                        },
                        -- в идеале должно быть "невероятно богатая", но 2 буквы "решают" в миллипиздрическом UI
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ECON_LEVEL_HIGH_8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- изобилие
                                -- Opulent
                                { "Russian", "Богатейшая" },
                            }
                        },
                        --#endregion

                        --#region Подзаголовки "продуктов"
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MEGAPROD_SUBTITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Продвинутый произведенный товар
                                -- Advanced Crafted Product
                                { "Russian", "Сборочная единица" },
                            }
                        },
                        -- в англ. "Manufactured Gas" это отдельный термин, который включает следующие методики:
                        -- газификации угля, получение водяного газа и светильного газа (блаугаз)
                        -- в русском пространстве, водяной газ и генераторный газ объединены в понятие синтез-газ
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COMPOUND_SUBTITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Произведенный газовый продукт
                                -- Manufactured Gas Product
                                { "Russian", "Продукт на основе синтез-газа" },
                            }
                        },
                        -- и тут неправильно! где написано слово про очистку???
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_REACTION_SUBTITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Очищенный газовый продукт
                                -- Enhanced Gas Product
                                { "Russian", "Газообразное топливо" },
                            }
                        },
                        -- В игре 7 типов экономик: продвинутые мат-лы (сплавы), производство, производство топлива, наука, технология, торговля и горная.
                        -- При этом "Строительство" также называется подтип экономики "производство". Это вводит в заблуждение.
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TRADE_ITEM_ALLOY_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Товары на продажу (строительство)
                                -- Trade Goods (Construction)
                                { "Russian", "Продвинутые материалы на продажу" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TRADE_ITEM_TECH_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Товары на продажу (технология)
                                -- Trade Goods (Technology)
                                { "Russian", "Технологичные товары на продажу" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TRADE_ITEM_EXOTICS_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Товары на продажу (наука)
                                -- Trade Goods (Scientific)
                                { "Russian", "Научные товары на продажу" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TRADE_ITEM_COMPONENT_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Товары на продажу (промышленные)
                                -- Trade Goods (Industrial)
                                { "Russian", "Промышленные товары на продажу" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TRADE_ITEM_ENERGY_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Товары на продажу (источник энергии)
                                -- Trade Goods (Energy Source)
                                { "Russian", "Источники энергии на продажу" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TRADE_ITEM_MINERALS_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Товары на продажу (минералы)
                                -- Trade Goods (Minerals)
                                { "Russian", "Минералы на продажу" },
                            }
                        },
                        --#endregion

                        --#region Черная дыра / Кротовая нора
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_GALAXYMAP_BHOLE_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Выбрано направление: черная дыра
                                -- Path Selected: Black Hole
                                { "Russian", "Выбрано направление: кротовая нора" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_GALAXYMAP_BHOLE_PATH" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Черная дыра (%DISTSTRING%)
                                -- Black Hole (%DISTSTRING%)
                                { "Russian", "Кротовая нора (%DISTSTRING%)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_GALAXYMAP_BHOLE_PATH_ONLY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Черная дыра
                                { "Russian", "Кротовая нора" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_GALAXYMAP_MARKER_BHOLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Черная дыра
                                { "Russian", "Кротовая нора" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_GALAXYMAP_NO_BHOLE_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Черная дыра не найдена
                                { "Russian", "Кротовая нора не найдена" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BLACKHOLE_MISSION_TITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Черные дыры
                                { "Russian", "Кротовые норы" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BLACKHOLE_MISSION_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Нада и Поло пообещали помочь мне в исследовании галактики. Они отметили координаты черной дыры на моей карте. Похоже, им самим интересно, куда она меня приведет.
                                { "Russian", "Нада и Поло пообещали помочь мне в исследовании галактики. Они отметили координаты кротовой норы на моей карте. Похоже, им самим интересно, куда она меня приведет." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BLACKHOLE_MISSION_OBJ" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Доберитесь до черной дыры
                                { "Russian", "Доберитесь до кротовой норы" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BLACKHOLE_MISSION_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Маршрут до черной дыры можно проложить по галактической карте.
                                { "Russian", "Маршрут до кротовой норы можно проложить по галактической карте." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BLACKHOLE_MISSION_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Доберитесь до черной дыры.&#xA;Используйте &lt;IMG&gt;QUICK_MENU&lt;&gt;, чтобы открыть галактическую карту.
                                { "Russian", "Доберитесь до кротовой норы.&#xA;Используйте &lt;IMG&gt;QUICK_MENU&lt;&gt;, чтобы открыть галактическую карту." },
                            }
                        },
                        --#endregion

                        -- поскольку ничего в этом месте не меняется, основной фокус это название галактики
                        -- альтернативно %NAME% › Галактическое ядро
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "DISTANCE_FROM_CENTRE_TITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Галактическое ядро (%NAME%)
                                -- Galactic Core (%NAME%)
                                { "Russian", "Галактическое ядро • %NAME%" },
                            }
                        },
                        -- странно, но пояснения как искать животных для их кормежки нет
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CRE_KILL_OBJ1_MSG_ALT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Убейте животных: &lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;&#xD;&#xA;Чтобы обнаружить животных, ищите &lt;FUEL&gt;красные&lt;&gt; и &lt;TRADEABLE&gt;зеленые&lt;&gt; точки с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;.
                                { "Russian", "Убейте животных: &lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;" },
                            }
                        },
                        -- не влазиет в интерфейс, хотя перевод точный
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NAV_DATA_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Зашифрованные навигационные данные
                                -- Encrypted Navigation Data
                                { "Russian", "Зашифрованные координаты" },
                            }
                        },
                        -- как же не люблю эту прокрутку
                        -- привет фанатам Сабнатики
                        -- незачет Шону за то, что не "взлюбил" Джека Уильямсона (автор термина терроформирование) или не читал его
                        -- нужно бы почитать этого Джека... судя по названию его книг он придумал половину современной фантастики
                        -- ну и не называть же ЛАМАН, звучит как лагман... туман, терраман =))
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TERRAIN_EDIT_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ЛАНДШАФТНЫЙ МАНИПУЛЯТОР
                                -- TERRAIN MANIPULATOR
                                { "Russian", "ТЕРРАФОРМЕР" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TERRAIN_EDIT_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Ландшафтный манипулятор
                                -- Terrain Manipulator
                                { "Russian", "Терраформер" },
                            }
                        },
                        -- на галактической карте
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "GLXY_REQ_TOOFAR" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Дальность прыжка превышена
                                -- Out Of Jump Range
                                { "Russian", "ПРЕВЫШЕНА ДАЛЬНОСТЬ ПРЫЖКА" },
                            }
                        },
                        -- когда адрес портала неправильный
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PORTAL_ERROR" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- АТЛАС: ОШИБКА ПЕРЕМЕЩЕНИЯ &lt;IMG&gt;SLASH&lt;&gt; НЕКОРРЕКТНЫЕ КООРДИНАТЫ &lt;IMG&gt;SLASH&lt;&gt; ПРИБЛИЗИТЕЛЬНОЕ МЕСТОПОЛОЖЕНИЕ
                                -- ATLAS TRANSPORT ERROR &lt;IMG&gt;SLASH&lt;&gt; LOCATION CORRUPTED &lt;IMG&gt;SLASH&lt;&gt; APPROXIMATING DESTINATION
                                { "Russian", "ОШИБКА ПЕРЕМЕЩЕНИЯ АТЛАС&#xA;НЕТОЧНОЕ МЕСТО НАЗНАЧЕНИЯ" },
                            }
                        },
                        -- см выше UI_INSTALL_TECH_NAME LOC7
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_GENERIC_MAINT_TECH_R_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ДЕТАЛЬ ТЕХНОЛОГИИ %TECH%
                                -- %TECH% PART
                                { "Russian", "ДЕТАЛЬ ТЕХНОЛОГИИ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NAV_DROPPOD_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КАРТА УЛУЧШЕНИЯ ЭКЗОКОСТЮМА
                                -- EXOSUIT UPGRADE CHART
                                { "Russian", "КООРДИНАТЫ КАПСУЛЫ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NAV_DROPPOD_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Карта улучшения экзокостюма
                                -- Exosuit Upgrade Chart
                                { "Russian", "Координаты капсулы" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_GENERIC_MAINT_TECH_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПОВРЕЖДЕННАЯ ДЕТАЛЬ ТЕХНОЛОГИИ «%TECH%»
                                -- DAMAGED %TECH% PART
                                { "Russian", "ПОВРЕЖДЕННАЯ ДЕТАЛЬ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PULSEDRIVE_WARNING" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ИМПУЛЬСНЫЙ ДВИГАТЕЛЬ ОТКЛЮЧЕН
                                -- PULSE ENGINE OFFLINE
                                { "Russian", "ПЛАЗМОДВИГАТЕЛЬ ОТКЛЮЧЁН" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PULSEDRIVE_WARNING_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Импульсный двигатель отключен
                                -- Pulse Engine Offline
                                { "Russian", "Плазмодвигатель отключен" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PULSEDRIVE_WARNING_TIME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запуск импульсного двигателя через %TIME%
                                -- Pulse Engine Online in %TIME%
                                { "Russian", "Запуск плазмодвигателя через %TIME%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_RETURN_MISSION_OBJ1_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вернитесь к диспетчеру заданий&#xA;Найдите диспетчера заданий на борту космической станции
                                -- Return to the Mission Agent&#xA;Find a mission agent aboard a space station
                                { "Russian", "Вернитесь на космическую станцию&#xA;к диспетчеру заданий" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SHIP_SWAP_ABANDONED_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- При смене вы оставите текущий корабль и его груз
                                -- Swap abandons current ship and cargo
                                { "Russian", "Оставить текущий корабль и его груз" },
                            }
                        },
                        --
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NPC_SHIP_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Звездолет, хоз.: %NAME%
                                -- Starship of %NAME%
                                { "Russian", "%NAME%" },
                            }
                        },

                        --#region точные координаты
                        -- если координаты точные и есть маркер, то не нужно об этом напоминать
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DELIVERY_OBJ1_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Доставьте предмет: %PRIMARYITEM%&#xA;Клиент предоставил точные координаты &lt;TECHNOLOGY&gt;охраняемого склада&lt;&gt;.
                                -- Deliver the %PRIMARYITEM%&#xA;Client has provided direct coordinates for a &lt;TECHNOLOGY&gt;secure depot&lt;&gt;
                                { "Russian", "Доставьте товар на склад&#xA;Груз: %PRIMARYITEM%" },
                            }
                        },
                        --#endregion

                        --#region Обнаружено звездное искажение
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "REDBIOME5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружено звездное искажение
                                -- Stellar Corruption Detected
                                { "Russian", "Звёздное искажение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "GREENBIOME4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружено звездное искажение
                                -- Stellar Corruption Detected
                                { "Russian", "Звёздное искажение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLUEBIOME4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружено звездное искажение
                                -- Stellar Corruption Detected
                                { "Russian", "Звёздное искажение" },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TREASURE_LOCATED" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Обнаружено место исторической важности&lt;&gt;.&#xA;Доберитесь до места и используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt;, чтобы найти сокровище.
                                -- &lt;STELLAR&gt;Site of Historical Interest Located&lt;&gt;&#xA;Reach the site and use a &lt;TECHNOLOGY&gt;Terrain Manipulator&lt;&gt; to search for treasure
                                { "Russian", "&lt;STELLAR&gt;Обнаружено место исторической важности&lt;&gt;&#xA;Используйте &lt;TECHNOLOGY&gt;терраформер&lt;&gt;, чтобы найти сокровище" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FACTORY_OBJ" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Напасть на планетарный сборщик и украсть данные
                                -- Raid a planetary Harvester and steal data
                                { "Russian", "Украсть промышленные тайны" },
                            }
                        },
                        -- указывает сколько времени продержится защита от вредных факторов
                        -- точный перевод "критическое воздействие через ..."
                        -- возможно, проще было бы написать "время работы защиты от вредных факторов"
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CRITICAL_EXPOSURE_TIME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- До критической опасности: %TIME%
                                -- Critical Exposure in: %TIME%
                                { "Russian", "До опасного состояния %TIME%" },
                            }
                        },
                        --
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_LABEL_PICKUP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;DECONSTRUCT&lt;&gt;, чтобы подобрать
                                -- &lt;IMG&gt;DECONSTRUCT&lt;&gt; to Pick Up
                                { "Russian", "&lt;IMG&gt;DECONSTRUCT&lt;&gt; Подобрать" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NPC_MISSION_DELIVERY_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Требуется срочная курьерская доставка
                                -- Urgent Courier Service Required
                                { "Russian", "Срочная курьерская доставка" },
                            }
                        },
                        --
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "HUD_INC_TRAVELLER" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Подавление сигнала: %NAME%
                                -- Signal Override: %NAME%
                                { "Russian", "%NAME%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "HUD_INC_PIRATE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Канал связи противника: %NAME%
                                -- Hostile Comms: %NAME%
                                { "Russian", "%NAME%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "HUD_INC_TRADER" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Торговый канал: %NAME%
                                -- Trade Link: %NAME%
                                { "Russian", "%NAME%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "HUD_INC_TARGET" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сигнальный канал: %NAME%
                                -- Signal Link: %NAME%
                                { "Russian", "%NAME%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NPC_FREIGHTER_MAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Карта варп-перемещений грузового корабля
                                -- Freighter Warp Map
                                { "Russian", "Галактическая карта грузового судна" },
                            }
                        },

                        --#region Выбрать конечную систему
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "HELP_WHEN_SYSTEM_UNSELECTED" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;GALAXYWARP&lt;&gt; Выбрать конечную систему &lt;IMG&gt;SLASH&lt;&gt;&lt;IMG&gt;GALAXYHOME&lt;&gt; Выбрать мои координаты
                                -- &lt;IMG&gt;GALAXYWARP&lt;&gt; Select targeted system &lt;IMG&gt;SLASH&lt;&gt; &lt;IMG&gt;GALAXYHOME&lt;&gt; Select my location
                                { "Russian", "&lt;IMG&gt;GALAXYWARP&lt;&gt; Выбрать систему &lt;IMG&gt;SLASH&lt;&gt;&lt;IMG&gt;GALAXYHOME&lt;&gt; Выбрать мои координаты" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_GALAXYMAP_SELECT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;GALAXYWARP&lt;&gt; Выбрать конечную систему
                                { "Russian", "&lt;IMG&gt;GALAXYWARP&lt;&gt; Выбрать систему" },
                            }
                        },
                        --#endregion

                    }
                },
                { -- LANGUAGE/NMS_LOC9_RUSSIAN.MBIN
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_LOC9_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FISH_BUCKET_LABEL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Открыть холодильник
                                -- Access Cold Storage
                                { "Russian", "Открыть ящик" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BAIT_LABEL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- НАСТРОИТЬ И ИСПОЛЬЗОВАТЬ НАЖИВКУ
                                -- CUSTOMISE &amp; APPLY BAIT
                                { "Russian", "НАСАДИТЬ НАЖИВКУ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BAIT_LABEL_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Использовать наживку
                                -- Apply Bait
                                { "Russian", "Насадить наживку" },
                            }
                        },

                        --#region ВОССТАНОВЛЕННОЕ СООБЩЕНИЕ
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BOTTLED_MESSAGE_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ВОССТАНОВЛЕННОЕ СООБЩЕНИЕ
                                -- RECOVERED MESSAGE
                                { "Russian", "СООБЩЕНИЕ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BOTTLED_MESSAGE_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Восстановленное сообщение
                                { "Russian", "Сообщение" },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_QUICK_MENU_SKIFF_NO_WATER" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Не удалось призвать :: Размещайте на воде
                                { "Russian", "РАЗМЕЩАЕТСЯ ТОЛЬКО НА ВОДНОЙ ПОВЕРХНОСТИ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_QUICK_MENU_SKIFF_DAMAGED" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Не удалось призвать :: Экзоплот поврежден
                                { "Russian", "ЭКЗОПЛОТ ПОВРЕЖДЕН" },
                            }
                        },
                        -- в описании чертежа
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_REFINER_DETAILS_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %ITEM%: процесс создания
                                -- %ITEM% creation process
                                { "Russian", "%ITEM%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_RECIPE_DETAILS_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %ITEM%: описание составляющих
                                -- %ITEM% ingredient breakdown
                                { "Russian", "%ITEM%" },
                            }
                        },

                        --#region XXX: нужно проверить с картинкой или без, потом перенести
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ARCHIVE_SHIP_STORE_ERR_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Нельзя восстановить звездолет &lt;IMG&gt;SLASH&lt;&gt; Активный флот переполнен
                                -- Cannot restore starship &lt;IMG&gt;SLASH&lt;&gt; Active fleet at max capacity
                                { "Russian", "СНАЧАЛА ОСВОБОДИТЕ МЕСТО ВО ФЛОТЕ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ARCHIVE_SHIP_PRIME_BTN_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Внимание &lt;IMG&gt;SLASH&lt;&gt; Нельзя поместить единственный звездолет на долгосрочное хранение
                                -- Warning &lt;IMG&gt;SLASH&lt;&gt; Cannot place only starship into long-term storage
                                { "Russian", "НЕВОЗМОЖНО АРХИВИРОВАТЬ ЕДИНСТВЕННЫЙ ЗВЕЗДОЛЁТ" },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TELEPORT_FILTER_SETTLEMENT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Ваши поселения
                                -- Your Settlements
                                { "Russian", "Мои поселения" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PURPLE2_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Хроматический минерал&lt;&gt;, получаемый в ходе синтеза в центре звезды. Такие звездные материалы в итоге обнаруживаются в виде залежей в коре окружающих планет.&#xA;&#xA;Кварцит можно найти на планетах, вращающихся вокруг &lt;SPECIAL&gt;пурпурных звезд&lt;&gt;. Его можно обработать в &lt;TECHNOLOGY&gt;очистителе&lt;&gt;, чтобы создать &lt;STELLAR&gt;хроматический металл&lt;&gt;, использующийся в производстве продвинутых технологий.
                                -- A &lt;STELLAR&gt;chromatic mineral&lt;&gt;, generated by fusion in the heart of a star. Such stellar material ends up forming deposits in the crust of local planets.&#xA;&#xA;Quartzite is found on planets orbiting &lt;SPECIAL&gt;purple stars&lt;&gt;, and can be placed in a &lt;TECHNOLOGY&gt;Refiner&lt;&gt; to create purified &lt;STELLAR&gt;Chromatic Metal&lt;&gt; for use in the manufacture of advanced technologies.
                                { "Russian", "&lt;STELLAR&gt;Минерал&lt;&gt;, получаемый в ходе синтеза в центре звезды. Такие звёздные материалы в итоге обнаруживаются в виде залежей в коре окружающих планет.&#xA;&#xA;Кварцит можно найти на планетах, вращающихся вокруг &lt;SPECIAL&gt;пурпурных звёзд﻿.&lt;&gt; Его можно обработать в &lt;TECHNOLOGY&gt;очистителе﻿,&lt;&gt; чтобы создать &lt;STELLAR&gt;цветной металл﻿,&lt;&gt; использующийся в производстве продвинутых технологий." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EX_PURPLE_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Хроматический минерал&lt;&gt;, получаемый в ходе синтеза в центре звезды.&#xA;&#xA;Кварцит можно найти на планетах, вращающихся вокруг &lt;SPECIAL&gt;пурпурных звезд&lt;&gt;. Его можно обработать в &lt;TECHNOLOGY&gt;очистителе&lt;&gt;, чтобы создать &lt;STELLAR&gt;хроматический металл&lt;&gt;.&#xA;&#xA;Этот кварцит был сформирован под воздействием экстремальных условий. Имеет высокую ценность.
                                -- A &lt;STELLAR&gt;chromatic mineral&lt;&gt;, generated by fusion in the heart of a star.&#xA;&#xA;Quartzite is found on planets orbiting &lt;SPECIAL&gt;purple stars&lt;&gt;, and can be placed in a &lt;TECHNOLOGY&gt;Refiner&lt;&gt; to create purified &lt;STELLAR&gt;Chromatic Metal&lt;&gt;.&#xA;&#xA;This quartzite has been activated by the extreme conditions in which it was formed, and is highly valuable.
                                { "Russian", "&lt;STELLAR&gt;Минерал&lt;&gt;, получаемый в ходе синтеза в центре звезды.&#xA;&#xA;Кварцит можно найти на планетах, вращающихся вокруг &lt;SPECIAL&gt;пурпурных звёзд﻿.&lt;&gt; Его можно обработать в &lt;TECHNOLOGY&gt;очистителе﻿,&lt;&gt; чтобы создать &lt;STELLAR&gt;цветной металл﻿.&lt;&gt;&#xA;&#xA;Этот кварцит был сформирован под воздействием экстремальных условий. Имеет высокую ценность." },
                            }
                        },
                        --
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_EXPED_SEED_TITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Экспедиция из поселения %SETTLEMENT%
                                -- Expedition from %SETTLEMENT%
                                { "Russian", "Экспедиция: %SETTLEMENT%" },
                            }
                        },
                    }
                },
            }
        }
    }
}
