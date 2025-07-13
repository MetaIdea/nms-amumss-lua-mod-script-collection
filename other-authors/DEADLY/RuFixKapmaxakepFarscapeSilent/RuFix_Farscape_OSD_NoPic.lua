NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]    = "_RuFix_Farscape_OSD_NoPic.pak",
    ["MOD_AUTHOR"]      = "gh0stwizard",
    ["MOD_DESCRIPTION"] = "OSD text without pictures",
    ["NMS_VERSION"]     = "5.72",
    ["EXML_CREATE"]     = "false",
    ["MODIFICATIONS"]   = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                { -- LANGUAGE/NMS_LOC1_RUSSIAN.MBIN
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_LOC1_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BINOC_NO_TECH" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Анализирующий визор не установлен
                                -- No Analysis Visor installed
                                { "Russian", "АНАЛИЗИРУЮЩИЙ ВИЗОР НЕ УСТАНОВЛЕН" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "PRIMARY_SHIP_SWITCH" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;SLASH&lt;&gt; Основной звездолет заменен &lt;IMG&gt;SLASH&lt;&gt;
                                -- &lt;IMG&gt;SLASH&lt;&gt; Primary Starship switched &lt;IMG&gt;SLASH&lt;&gt;
                                { "Russian", "&lt;IMG&gt;SLASH&lt;&gt; ОСНОВНОЙ ЗВЕЗДОЛЁТ ЗАМЕНЕН &lt;IMG&gt;SLASH&lt;&gt;" },
                            }
                        },
                        -- то что он основной это и так ясно, игра двумя одновременно пользоваться не даст
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "PRIMARY_VEHICLE_SWITCH" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Выбран новый основной вездеход
                                -- Primary Exocraft Switched
                                { "Russian", "&lt;IMG&gt;SLASH&lt;&gt; ОСНОВНОЙ ВЕЗДЕХОД ЗАМЕНЕН &lt;IMG&gt;SLASH&lt;&gt;" },
                            }
                        },
                        -- где-то внизу есть правка для "процедура посадки недоступна"
                        -- значит пишем по аналогии
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NOTIFY_LANDING" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;SLASH&lt;&gt; Запущен процесс приземления &lt;IMG&gt;SLASH&lt;&gt;
                                -- &lt;IMG&gt;SLASH&lt;&gt; Initiating landing sequence &lt;IMG&gt;SLASH&lt;&gt;
                                { "Russian", "&lt;IMG&gt;SLASH&lt;&gt; ВЫПОЛНЯЕТСЯ ПРОЦЕДУРА ПОСАДКИ &lt;IMG&gt;SLASH&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NOTIFY_LAND_TOOHIGH" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;SLASH&lt;&gt; Слишком высоко, чтобы начинать посадку &lt;IMG&gt;SLASH&lt;&gt;
                                -- &lt;IMG&gt;SLASH&lt;&gt; Too high to initiate landing &lt;IMG&gt;SLASH&lt;&gt;
                                { "Russian", "&lt;IMG&gt;SLASH&lt;&gt; ПОСАДКА НЕВОЗМОЖНА • СЛИШКОМ ВЫСОКО &lt;IMG&gt;SLASH&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NOTIFY_CANT_LAND" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Не удалось начать приземление &lt;IMG&gt;SLASH&lt;&gt; Зона высадки занята
                                -- Unable to initiate landing &lt;IMG&gt;SLASH&lt;&gt; Landing area not clear
                                { "Russian", "&lt;IMG&gt;SLASH&lt;&gt; ПОСАДКА НЕВОЗМОЖНА • ЗОНА ВЫСАДКИ ЗАНЯТА &lt;IMG&gt;SLASH&lt;&gt;" },
                            }
                        },
                        -- во всех случаях ITEM будет либо импульсный двигатель или какой-то там двигатель живого корабля
                        -- а его название всегда в нормальном виде (заглавная + прописные буквы), а нам нужен капс
                        -- поэтому делаем ход конем и зашиваем весь текст капсом
                        -- да не идеально, это потому что я не идеальный и Шон не идеальный, иначе бы он продумал этот случай
                        -- еще не идеально то, что у строки ограничение по символам (150 байт?) ... мде
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "JUMP_ORBIT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %ITEM% Отключено &lt;IMG&gt;SLASH&lt;&gt; Начинается суборбитальный полет
                                -- %ITEM% Disengaged &lt;IMG&gt;SLASH&lt;&gt; Beginning sub-orbital flight
                                { "Russian", "ПЛАЗМОДВИГАТЕЛЬ ОТКЛЮЧЕН • СУБОРБИТАЛЬНЫЙ ПОЛЕТ" },
                            }
                        },
                        -- согласно космической практике есть три процесса: дрифт по орбите, сближение и стыковка
                        -- стыковка происходит на расстоянии менее 10 метров, все что до этого называется сближение (approach / proximity operations)
                        -- кстати, в игре не используется термин стыковка для космической станции, а только посадка и это неправильно
                        -- "заход на стыковку" - это отсебятина, по типу захода на посадку, но в космопрактике так не говорят и никаких заходов нет,
                        -- кроме как захода солнца
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "JUMP_STATION_ENTRY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %ITEM% Отключено &lt;IMG&gt;SLASH&lt;&gt; Начинается заход на стыковку
                                -- %ITEM% Disengaged &lt;IMG&gt;SLASH&lt;&gt; Beginning docking approach
                                { "Russian", "ПЛАЗМОДВИГАТЕЛЬ ОТКЛЮЧЕН • НАЧАТО СБЛИЖЕНИЕ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "JUMP_OBSTRUCT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %ITEM% Недоступно &lt;IMG&gt;SLASH&lt;&gt; Планетарные помехи
                                -- %ITEM% Unavailable &lt;IMG&gt;SLASH&lt;&gt; Planetary Interference
                                { "Russian", "ПЛАЗМОДВИГАТЕЛЬ НЕДОСТУПЕН • ПЛАНЕТАРНЫЕ ПОМЕХИ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "JUMP_ENEMY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %ITEM% Недоступно &lt;IMG&gt;SLASH&lt;&gt; Вражеская угроза
                                -- %ITEM% Unavailable &lt;IMG&gt;SLASH&lt;&gt; Local Enemy Disruption
                                { "Russian", "ПЛАЗМОДВИГАТЕЛЬ НЕДОСТУПЕН • ВРАЖЕСКАЯ УГРОЗА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "JUMP_ATMOS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %ITEM% Недоступно &lt;IMG&gt;SLASH&lt;&gt; Атмосферные помехи
                                -- %ITEM% Unavailable &lt;IMG&gt;SLASH&lt;&gt; Atmospheric Interference
                                { "Russian", "ПЛАЗМОДВИГАТЕЛЬ НЕДОСТУПЕН • АТМОСФЕРНЫЕ ПОМЕХИ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "JUMP_FREIGHTER" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %ITEM% Недоступно &lt;IMG&gt;SLASH&lt;&gt; Рядом крупное судно
                                -- %ITEM% Unavailable &lt;IMG&gt;SLASH&lt;&gt; Large Ship Proximity
                                { "Russian", "ПЛАЗМОДВИГАТЕЛЬ НЕДОСТУПЕН • РЯДОМ КРУПНОЕ СУДНО" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "JUMP_STATION" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %ITEM% Недоступно &lt;IMG&gt;SLASH&lt;&gt; Рядом космическая станция
                                -- %ITEM% Unavailable &lt;IMG&gt;SLASH&lt;&gt; Space Station Proximity
                                { "Russian", "ПЛАЗМОДВИГАТЕЛЬ НЕДОСТУПЕН • РЯДОМ КОСМИЧЕСКАЯ СТАНЦИЯ" },
                            }
                        },
                        {
                            -- "Критические гравитационные помехи" не влезают, максимум это см. строку выше
                            ["SPECIAL_KEY_WORDS"] = { "Id", "JUMP_BLACKHOLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %ITEM% Недоступно &lt;IMG&gt;SLASH&lt;&gt; Критические гравитационные помехи
                                -- %ITEM% Unavailable &lt;IMG&gt;SLASH&lt;&gt; Extreme Gravitational Interference
                                { "Russian", "ПЛАЗМОДВИГАТЕЛЬ НЕДОСТУПЕН • ГРАВИТАЦИОННЫЕ ПОМЕХИ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "JUMP_BADPATH" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %ITEM% Недоступно &lt;IMG&gt;SLASH&lt;&gt; Небезопасная траектория
                                -- %ITEM% Unavailable &lt;IMG&gt;SLASH&lt;&gt; Unsafe Trajectory
                                { "Russian", "ПЛАЗМОДВИГАТЕЛЬ НЕДОСТУПЕН • ОПАСНАЯ ТРАЕКТОРИЯ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "JUMP_ATLAS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %ITEM% Недоступно &lt;IMG&gt;SLASH&lt;&gt; Обнаружены помехи Атласа
                                -- %ITEM% Unavailable &lt;IMG&gt;SLASH&lt;&gt; Atlas Interference Detected
                                { "Russian", "ПЛАЗМОДВИГАТЕЛЬ НЕДОСТУПЕН • ПОМЕХИ АТЛАСА" },
                            }
                        },
                        -- появляется на секунду при успешном взаимодействии с постройкой инопланетян (перед тем как лететь к порталу)
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "INTRCT_NO_TECH_TO_REPAIR" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Все технологии работают. Ремонт не требуется
                                -- All technology in working order. Nothing to repair
                                { "Russian", "ТЕХНОЛОГИИ РАБОТАЮТ ШТАТНО • РЕМОНТ НЕ ТРЕБУЕТСЯ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "INTRCT_HEALTH" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;SLASH&lt;&gt; СООБЩЕНИЕ ЭКЗОКОСТЮМА: здоровье восстановлено &lt;IMG&gt;SLASH&lt;&gt;
                                { "Russian", "&lt;IMG&gt;SLASH&lt;&gt; ЗДОРОВЬЕ ВОССТАНОВЛЕНО &lt;IMG&gt;SLASH&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "INTRCT_HEALTH_ALT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;SLASH&lt;&gt;СООБЩЕНИЕ ЭКЗОКОСТЮМА: здоровье восстановлено&lt;IMG&gt;SLASH&lt;&gt;
                                { "Russian", "&lt;IMG&gt;SLASH&lt;&gt;ЗДОРОВЬЕ ВОССТАНОВЛЕНО&lt;IMG&gt;SLASH&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "INTRCT_ENERGY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;SLASH&lt;&gt;СООБЩЕНИЕ ЭКЗОКОСТЮМА: система жизнеобеспечения подзаряжена&lt;IMG&gt;SLASH&lt;&gt;
                                { "Russian", "&lt;IMG&gt;SLASH&lt;&gt; СИСТЕМА ЖИЗНЕОБЕСПЕЧЕНИЯ ПОДЗАРЯЖЕНА &lt;IMG&gt;SLASH&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "INTRCT_HAZARD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;SLASH&lt;&gt; СООБЩЕНИЕ ЭКЗОКОСТЮМА: защита от вредных факторов подзаряжена &lt;IMG&gt;SLASH&lt;&gt;
                                { "Russian", "&lt;IMG&gt;SLASH&lt;&gt; ЗАЩИТА ОТ ВРЕДНЫХ ФАКТОРОВ ПОДЗАРЯЖЕНА &lt;IMG&gt;SLASH&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "INTRCT_FULLHEALTH" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;SLASH&lt;&gt; СООБЩЕНИЕ ЭКЗОКОСТЮМА: здоровье на максимуме &lt;IMG&gt;SLASH&lt;&gt;
                                { "Russian", "&lt;IMG&gt;SLASH&lt;&gt; ЗДОРОВЬЕ НА МАКСИМУМЕ &lt;IMG&gt;SLASH&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "INTRCT_FULLSHIELD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;SLASH&lt;&gt; СООБЩЕНИЕ ЭКЗОКОСТЮМА: щит на максимуме &lt;IMG&gt;SLASH&lt;&gt;
                                { "Russian", "&lt;IMG&gt;SLASH&lt;&gt; ЩИТ ЭКЗОКОСТЮМА НА МАКСИМУМЕ &lt;IMG&gt;SLASH&lt;&gt;" },
                            }
                        },
                        { -- используется также и для сканера вездехода =\
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SCAN_RECHARGE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Перезарядка сканера
                                -- Scanner recharging
                                { "Russian", "СКАНЕР ПЕРЕЗАРЯЖАЕТСЯ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "INTRCT_WORDKNOWN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Не выучено ничего нового
                                -- Learned nothing new
                                { "Russian", "НЕ ВЫУЧЕНО НИЧЕГО НОВОГО" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "INTRCT_EMPTY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Ничего не найдено
                                -- Nothing found
                                { "Russian", "НИЧЕГО НЕ НАЙДЕНО" },
                            }
                        },
                    }
                },
                { -- LANGUAGE/NMS_LOC4_RUSSIAN.MBIN
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_LOC4_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        -- при неверной посадке пилоту нужна краткая и четкая информация
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NOTIFY_LAND_TOOFAST" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;SLASH&lt;&gt; Не удается начать посадку :: Слишком большая скорость полета &lt;IMG&gt;SLASH&lt;&gt;
                                { "Russian", "&lt;IMG&gt;SLASH&lt;&gt; ПОСАДКА НЕВОЗМОЖНА • СЛИШКОМ БОЛЬШАЯ СКОРОСТЬ &lt;IMG&gt;SLASH&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NOTIFY_LAND_INVERTED" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;SLASH&lt;&gt; Не удается начать посадку :: Звездолет развернут &lt;IMG&gt;SLASH&lt;&gt;
                                { "Russian", "&lt;IMG&gt;SLASH&lt;&gt; ПОСАДКА НЕВОЗМОЖНА • ЗВЕЗДОЛЁТ РАЗВЕРНУТ &lt;IMG&gt;SLASH&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BASE_UPLOADING" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Загрузка базы на серверы
                                -- Base Uploading to Servers
                                { "Russian", "ВЫПОЛНЯЕТСЯ ЗАГРУЗКА БАЗЫ НА СЕРВЕР" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ALL_TRADER_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ВХОДЯЩЕЕ СООБЩЕНИЕ // ТОРГОВАЯ ЧАСТОТА
                                { "Russian", "&lt;IMG&gt;SLASH&lt;&gt; ВХОДЯЩЕЕ СООБЩЕНИЕ • ТОРГОВАЯ ЧАСТОТА &lt;IMG&gt;SLASH&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ALL_TRADER_REFUSED" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- СООБЩЕНИЕ ОТКЛОНЕНО // КАНАЛ ЗАНЯТ
                                -- MESSAGE DECLINED // CHANNEL BUSY
                                { "Russian", "&lt;IMG&gt;SLASH&lt;&gt; ВЫЗОВ ОТКЛОНЕН • КАНАЛ ЗАНЯТ &lt;IMG&gt;SLASH&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "QUICK_MENU_NO_NEXUS_PORTAL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Космическая Аномалия недоступна: помехи портала
                                -- Space Anomaly Unreachable :: Portal Interference
                                { "Russian", "НЕЛЬЗЯ ВЫЗВАТЬ КОСМИЧЕСКУЮ АНОМАЛИЮ ИЗ-ЗА ПОМЕХ ПОРТАЛА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "QUICK_MENU_NO_COMMS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Нет сигналов коммуникатора
                                -- No Communicator Signals
                                { "Russian", "НЕТ СИГНАЛОВ ДЛЯ КОММУНИКАЦИИ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "QUICK_MENU_SUM_FREIGHT_PLANET" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Варп-прыжок невозможен. Корабль слишком близко к планете.
                                -- Cannot Warp Freighter - Too Close to Planet
                                { "Russian", "НЕЛЬЗЯ ВЫЗВАТЬ ГРУЗОВОЕ СУДНО ВБЛИЗИ ПЛАНЕТЫ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NO_SUMMON_POD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Невозможно призвать: в системе нет станции вызова вездехода
                                -- Cannot Summon: No Exocraft Summoning Station in System
                                { "Russian", "В СИСТЕМЕ НЕТ СТАНЦИИ ВЫЗОВА ВЕЗДЕХОДА" },
                            }
                        },
                    }
                },
                { -- LANGUAGE/NMS_LOC5_RUSSIAN.MBIN
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_LOC5_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_LANDING_UNAVAILABLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;SLASH&lt;&gt; Процедура посадки недоступна &lt;IMG&gt;SLASH&lt;&gt;
                                -- &lt;IMG&gt;SLASH&lt;&gt; Landing Sequence Unavailable &lt;IMG&gt;SLASH&lt;&gt;
                                { "Russian", "&lt;IMG&gt;SLASH&lt;&gt; ПРОЦЕДУРА ПОСАДКИ НЕДОСТУПНА &lt;IMG&gt;SLASH&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_STARSHIP_OWNER_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ЗВЕЗДОЛЕТ ПУСТУЕТ &lt;IMG&gt;SLASH&lt;&gt; НАЙДИТЕ ПИЛОТА, ЧТОБЫ НАЧАТЬ ОБМЕН
                                -- STARSHIP UNOCCUPIED &lt;IMG&gt;SLASH&lt;&gt; LOCATE PILOT TO BEGIN TRADE
                                { "Russian", "ЗВЕЗДОЛЁТ ПУСТУЕТ • ПИЛОТ ГДЕ-ТО РЯДОМ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "QUICK_MENU_SUM_NEXUS_NO_SPACE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Космическая Аномалия недоступна :: Планетарные помехи
                                -- Space Anomaly Unavailable :: Planetary Interference
                                { "Russian", "ПЛАНЕТАРНЫЕ ПОМЕХИ МЕШАЮТ ВЫЗВАТЬ КОСМИЧЕСКУЮ АНОМАЛИЮ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "QUICK_MENU_ONLY_ONE_GUN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Доступен только один мультитул
                                -- Only One Multi-Tool Available
                                { "Russian", "ДОСТУПЕН ТОЛЬКО ОДИН МУЛЬТИТУЛ" },
                            }
                        },
                    }
                },
                { -- LANGUAGE/NMS_LOC6_RUSSIAN.MBIN
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_LOC6_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "QUICK_MENU_SUM_FREIGHT_POI" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Не удается вызвать грузовое судно :: Поблизости находится аномальный объект
                                -- Cannot Summon Freighter :: Anomalous Object Proximity
                                { "Russian", "НЕЛЬЗЯ ВЫЗВАТЬ ГРУЗОВОЕ СУДНО ИЗ-ЗА АНОМАЛЬНОГО ОБЪЕКТА ПОБЛИЗОСТИ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SPACE_POI_PIRATE_SUMMON" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Станция уничтожена &lt;IMG&gt;SLASH&lt;&gt; Отправлен защитный отряд пиратов
                                -- Station Destroyed &lt;IMG&gt;SLASH&lt;&gt; Pirate Defense Force Deployed
                                { "Russian", "СТАНЦИЯ УНИЧТОЖЕНА • ОТПРАВЛЕН ОТРЯД ПИРАТОВ" },
                            }
                        },
                        { -- яйцо пустоты
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_HAIL_ALIEN_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ВХОДЯЩЕЕ СООБЩЕНИЕ &lt;IMG&gt;SLASH&lt;&gt; НЕИЗВЕСТНАЯ ЧАСТОТА
                                -- INCOMING MESSAGE &lt;IMG&gt;SLASH&lt;&gt; UNKNOWN FREQUENCY
                                { "Russian", "&lt;IMG&gt;SLASH&lt;&gt; ВХОДЯЩЕЕ СООБЩЕНИЕ • НЕИЗВЕСТНАЯ ЧАСТОТА &lt;IMG&gt;SLASH&lt;&gt;" },
                            }
                        },
                    }
                },
                { -- LANGUAGE/NMS_LOC7_RUSSIAN.MBIN
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_LOC7_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SCFM_ENABLED" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Включено автоматическое наведение!
                                -- Autopilot Target Lock Engaged!
                                { "Russian", "&lt;IMG&gt;SLASH&lt;&gt; ВКЛЮЧЕНО АВТОМАТИЧЕСКОЕ НАВЕДЕНИЕ &lt;IMG&gt;SLASH&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SCFM_DISABLED" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Автоматическое наведение отключено
                                -- Autopilot Target Lock Disengaged
                                { "Russian", "&lt;IMG&gt;SLASH&lt;&gt; АВТОМАТИЧЕСКОЕ НАВЕДЕНИЕ ОТКЛЮЧЕНО &lt;IMG&gt;SLASH&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FRIGATE_ERROR_SEED_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Недостаточное разнообразие питательных веществ &lt;IMG&gt;SLASH&lt;&gt; Выберите другой материал
                                -- Insufficient nutrient variety &lt;IMG&gt;SLASH&lt;&gt; Select different material
                                { "Russian", "НЕДОСТАТОЧНОЕ РАЗНООБРАЗИЕ ПИТАТЕЛЬНЫХ ВЕЩЕСТВ • ВЫБЕРИТЕ ЧТО-ТО ДРУГОЕ" },
                            }
                        },
                        -- это нужно проверить и либо внести правку, либо удалить
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "SCANNER_RECHARGE" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Перезарядка сканера
                        --         -- Scanner Recharge
                        --         { "Russian", "ПЕРЕЗАРЯДКА СКАНЕРА" },
                        --     }
                        -- },
                        -- выводится если жимкать автозахват цели в корабле
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SCFM_NO_TARGET" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Нет подходящей цели для боевого автопилота!
                                -- No Valid Target for Combat Autopilot
                                { "Russian", "НЕТ ПОДХОДЯЩЕЙ ЦЕЛИ ДЛЯ БОЕВОГО АВТОПИЛОТА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FREIGHT_BUILD_ERROR_AREA_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Будьте в пределах зоны строительства на судне
                                -- Must be inside freighter construction area
                                { "Russian", "БУДЬТЕ В ПРЕДЕЛАХ ЗОНЫ СТРОИТЕЛЬСТВА НА СУДНЕ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXOHEALTH_RECHARGED" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;SLASH&lt;&gt;Важнейшие системы вездехода отремонтированы!&lt;IMG&gt;SLASH&lt;&gt;
                                -- &lt;IMG&gt;SLASH&lt;&gt;Exocraft Critical Systems Repaired!&lt;IMG&gt;SLASH&lt;&gt;
                                { "Russian", "&lt;IMG&gt;SLASH&lt;&gt;ВАЖНЕЙШИЕ СИСТЕМЫ ВЕЗДЕХОДА ОТРЕМОНТИРОВАНЫ&lt;IMG&gt;SLASH&lt;&gt;" },
                            }
                        },
                    }
                },
                { -- LANGUAGE/NMS_LOC8_RUSSIAN.MBIN
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_LOC8_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NOTIFY_CANT_LAND_WATER" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Посадка на воду невозможна &lt;IMG&gt;SLASH&lt;&gt; Технология посадки на воду не установлена
                                -- Water landing unavailable &lt;IMG&gt;SLASH&lt;&gt; Aquatic landing technology not installed
                                { "Russian", "ПОСАДКА НА ВОДУ НЕВОЗМОЖНА • АКВА ДВИЖИТЕЛИ НЕ УСТАНОВЛЕНЫ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WATER_LANDING_NOTIFY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Начата посадка на воду
                                -- Aquatic Landing Initiated
                                { "Russian", "&lt;IMG&gt;SLASH&lt;&gt; ВЫПОЛНЯЕТСЯ ПРОЦЕДУРА ПРИВОДНЕНИЯ &lt;IMG&gt;SLASH&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BATTLE_BAR_TITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ДРЕДНОУТ АТАКОВАН &lt;IMG&gt;SLASH&lt;&gt; &lt;STELLAR&gt;%NAME%&lt;&gt;
                                -- DREADNOUGHT ENGAGED &lt;IMG&gt;SLASH&lt;&gt; &lt;STELLAR&gt;%NAME%&lt;&gt;
                                { "Russian", "ДРЕДНОУТ &lt;STELLAR&gt;%NAME%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PULSE_ENCOUNTER_HAIL_SENT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ВХОДЯЩЕЕ СООБЩЕНИЕ &lt;IMG&gt;SLASH&lt;&gt; ЧАСТ//А СТР~...α~ЖА
                                --
                                { "Russian", "&lt;IMG&gt;SLASH&lt;&gt; ВХОДЯЩЕЕ СООБЩЕНИЕ • ЧАСТ//А СТР~...α~ЖА &lt;IMG&gt;SLASH&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ROBOT_LOCKED_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Выполнена гармоническая блокировка. &lt;IMG&gt;SLASH&lt;&gt; Найдите интерфейс, чтобы ее снять.
                                -- Harmonic lockdown in progress &lt;IMG&gt;SLASH&lt;&gt; Locate interface to break seal
                                { "Russian", "ГАРМОНИЧЕСКАЯ БЛОКИРОВКА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BUILDSHIP_OSD_OCCUPIED" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Чтобы начать производство, нужно отправить только что построенный звездолет в полет со стартовой площадки.
                                -- Newly built starship must be flown from the pad to begin fabrication
                                { "Russian", "ОСВОБОДИТЕ ПЛАТФОРМУ ДЛЯ СБОРКИ ЗВЕЗДОЛЁТА" },
                            }
                        },
                    }
                },
                { -- LANGUAGE/NMS_UPDATE3_RUSSIAN.MBIN
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_UPDATE3_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        -- где где, а тут обозначение кнопки не ожидал
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "OSD_OVERHEAT_SWITCH" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Режим прокрутки &lt;IMG&gt;CYCLEWEAPON&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt; Перегрев системы вооружения!
                                -- Cycle mode &lt;IMG&gt;CYCLEWEAPON&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt; Weapon Systems Overheated!
                                { "Russian", "&lt;IMG&gt;SLASH&lt;&gt; ПЕРЕГРЕВ СИСТЕМЫ ВООРУЖЕНИЯ &lt;IMG&gt;SLASH&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "QUICK_MENU_SUM_FREIGHT_NO_SPACE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Варп грузового корабля здесь недоступен
                                -- Cannot Warp Freighter Here
                                { "Russian", "СЮДА НЕЛЬЗЯ ВЫЗВАТЬ ГРУЗОВОЕ СУДНО" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "QUICK_MENU_SUM_SHIP_NO_FUEL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Заряд взлетных ускорителей: %CURRENT%% :: Для вызова необходимо: %AMOUNT%%
                                -- Launch Thrusters at %CURRENT%% charge :: %AMOUNT%% required to summon
                                { "Russian", "ЗАРЯД ВЗЛЕТНЫХ УСКОРИТЕЛЕЙ %CURRENT%%, ТРЕБУЕТСЯ %AMOUNT%%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "QUICK_MENU_SUM_GEAR_DAMAGE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Звездолет поврежден, взлет невозможен
                                -- Cannot Launch - Starship Damaged
                                { "Russian", "ПОВРЕЖДЕННЫЙ ЗВЕЗДОЛЁТ НЕ МОЖЕТ ВЗЛЕТЕТЬ" },
                            }
                        },
                    }
                },
                { -- LANGUAGE/NMS_LOC9_RUSSIAN.MBIN
                    ["MBIN_FILE_SOURCE"]  = "LANGUAGE/NMS_LOC9_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        --#region Обновление BEACON
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_UPGRADE_ERR_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Невозможно начать улучшение &lt;IMG&gt;SLASH&lt;&gt; Ведется улучшение другой постройки
                                -- Cannot start upgrade &lt;IMG&gt;SLASH&lt;&gt; Another building is already being upgraded
                                { "Russian", "СНАЧАЛА ДОЖДИТЕСЬ УЛУЧШЕНИЯ ДРУГОЙ ПОСТРОЙКИ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_UPGRADE_RES_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Невозможно начать улучшение &lt;IMG&gt;SLASH&lt;&gt; Не хватает ресурсов
                                -- Cannot start upgrade &lt;IMG&gt;SLASH&lt;&gt; Insufficient resources
                                { "Russian", "НЕ ХВАТАЕТ РЕСУРСОВ ДЛЯ УЛУЧШЕНИЯ ПОСТРОЙКИ" },
                            }
                        },
                        --#endregion
                    }
                },
            }
        }
    }
}
