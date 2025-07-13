NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]  = "_RuFixLOC1.pak",
    ["MOD_AUTHOR"]    = "gh0stwizard",
    ["NMS_VERSION"]   = "5.72",
    ["EXML_CREATE"]   = "false",
    ["MODIFICATIONS"] = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                { -- LANGUAGE/NMS_LOC1_RUSSIAN.MBIN
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_LOC1_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SCAN_NO_TECH" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Нет установленных сканеров &lt;IMG&gt;SLASH&lt;&gt;
                                -- No scan technology installed &lt;IMG&gt;SLASH&lt;&gt;
                                { "Russian", "СКАНЕР НЕ УСТАНОВЛЕН" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SCAN_BROKEN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сканер получил критические повреждения &lt;IMG&gt;SLASH&lt;&gt;
                                -- Scanner is critically damaged &lt;IMG&gt;SLASH&lt;&gt;
                                { "Russian", "СКАНЕР СЛОМАН" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "WEATHER_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Биом
                                -- Weather
                                { "Russian", "Погода" },
                            }
                        },
                        -- какое-то неправильное описание
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BUY_ACCEPT_PRICE_SUIT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Улучшить экзокостюм (%COST% юн.)
                                -- Upgrade Exosuit (%COST% Units)
                                { "Russian", "Купить &lt;IMG&gt;UNITSMALL&lt;&gt;%COST%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BUY_ACCEPT_PRICE_SUIT_PROD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Улучшить экзокостюм
                                -- Upgrade Exosuit
                                { "Russian", "Установить" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BUY_ACCEPT_PRICE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Согласиться (%COST% юн.)
                                -- Accept (%COST% Units)
                                { "Russian", "Принять &lt;IMG&gt;UNITSMALL&lt;&gt;%COST%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BUY_DECLINE_DESC_FREIGHTER" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Отказаться от покупки грузового корабля
                                -- Decline the freighter purchase.
                                { "Russian", "Не покупать грузовой корабль" },
                            }
                        },
                        -- это не смотрится в микроскопическом UI
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TECH_FRAGMENT_COST" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КУПИТЬ ЗА %PRICE% %FRAGMENTS%
                                -- BUY FOR %PRICE% %FRAGMENTS%
                                { "Russian", "КУПИТЬ ЗА &lt;IMG&gt;NANITESMALL&lt;&gt;%PRICE%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TRADE_BUY_FOR" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КУПИТЬ %AMOUNT% ЗА %PRICE% ЮН.
                                -- BUY %AMOUNT% FOR %PRICE% UNITS
                                { "Russian", "КУПИТЬ %AMOUNT% ЗА &lt;IMG&gt;UNITSMALL&lt;&gt;%PRICE%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TRADE_SELL_FOR" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПРОДАТЬ %AMOUNT% за %PRICE% ЮН.
                                -- SELL %AMOUNT% for %PRICE% UNITS
                                { "Russian", "ПРОДАТЬ %AMOUNT% ЗА &lt;IMG&gt;UNITSMALL&lt;&gt;%PRICE%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "INVENTORY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ИНВЕНТАРЬ: %TYPE%
                                -- %TYPE% INVENTORY
                                { "Russian", "ИНВЕНТАРЬ › %TYPE%" },
                            }
                        },
                        -- в самом низу под "Купить Х за У ЮН."
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TRADE_BUY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Покупайте в галактической торговой сети
                                -- Buy items from the Galactic Trade Network
                                { "Russian", "Приобрести товары в галактической торговой сети" },
                            }
                        },
                        -- не знаю зачем, вроде как нигде не используется, просто для соответствия
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BASESTATS_SCIENCE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПУТЕШЕСТВЕННИК
                                -- EXPLORER
                                { "Russian", "СКИТАЛЕЦ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BASESTATS_ALIEN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ИНОПЛАНЕТЯНИН
                                -- ALIEN
                                { "Russian", "ЧУЖОЙ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BASESTATS_ALIEN_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Инопланетн.
                                -- Alien
                                { "Russian", "Чужой" },
                            }
                        },
                        -- ну спасибо Шон, что удлинил эту строку на дорогие 10 байт (или сколько там)
                        -- теперь в Мирах-1 эта строка наконец влезает
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "HUD_JUMPING" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ИМП привод активен (Pulse Engine Active)
                                { "Russian", "ИМПУЛЬСНЫЙ ДВИГАТЕЛЬ АКТИВЕН" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "HUD_JUMP_FUEL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "ЗАПАС ТОПЛИВА" }, -- Осталось топлива
                            }
                        },
                        -- а эта строка так и осталась в Мирах-1 на прокрутке (нет переноса строки)
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "HUD_JUMP_ENGAGE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запуск имп. привода (Engaging Pulse Engine)
                                { "Russian", "ЗАПУСК ИМП. ДВИГАТЕЛЯ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "DISC_MISS_BONUS_BUTTON" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Удерживайте, чтобы засчитать выполнение! (Бонус нанитов: %UNITS%)
                                -- Hold to register completion! (%UNITS% nanite bonus)
                                { "Russian", "Удерживайте, чтобы получить %UNITS% нанитов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NET_OFFLINE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соединение с сетевыми службами открытия потеряно. Нажмите &lt;IMG&gt;DISNETRETRY&lt;&gt;, чтобы подключиться повторно.
                                -- You have lost connection to online discovery services, press &lt;IMG&gt;DISNETRETRY&lt;&gt; to reconnect
                                { "Russian", "Соединение с онлайн-сервисами потеряно. Нажмите &lt;IMG&gt;DISNETRETRY&lt;&gt;, чтобы подключиться повторно." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NET_IN_PROGRESS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Подключение к сетевым службам открытия (Connecting to Online Discovery Services)
                                { "Russian", "Выполняется подключение к онлайн-сервисам ..." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NET_ONLINE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сетевые службы открытия подключены (Online Discovery Services Active)
                                { "Russian", "Онлайн-сервисы подключены" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NET_UNAVAILABLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соединение с сетевыми службами открытия потеряно (You have lost connection to online discovery services)
                                { "Russian", "Соединение с онлайн-сервисами потеряно" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "DISCS_UPLOADED_NANITES" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Открытия загружены. Получено нанитов: %REWARD%.
                                -- Discoveries uploaded. %REWARD% Nanites received.
                                { "Russian", "Загружено — получено %REWARD% нанитов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "DISC_UPLOADED_CREDIT_NANITES" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Открытие загружено. Получены скопления нанитов (%REWARD%).
                                -- Discovery uploaded. %REWARD% Nanite Clusters received.
                                { "Russian", "Загружено — получено %REWARD% нанитов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "MINERAL_SUFFIX" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "ite" }, -- ит (ite)
                            }
                        },
                        -- В кабине звездолета / описание модов
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SHIPSHOTGUN_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "ПТ эжектор" }, -- Позитронный эжектор
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SHIPMINIGUN_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "ИК ускоритель" }, -- Инфракрасный ускоритель
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SHIPBLOB_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "ЦТ баллиста" }, -- Циклотронная баллиста
                            }
                        },
                        --
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "JUMP_ORBIT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %ITEM% Отключено &lt;IMG&gt;SLASH&lt;&gt; Начинается суборбитальный полет
                                -- %ITEM% Disengaged &lt;IMG&gt;SLASH&lt;&gt; Beginning sub-orbital flight
                                { "Russian", "%ITEM% отключен &lt;IMG&gt;SLASH&lt;&gt; Начат суборбитальный полет" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "JUMP_STATION_ENTRY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %ITEM% Отключено &lt;IMG&gt;SLASH&lt;&gt; Начинается заход на стыковку
                                -- %ITEM% Disengaged &lt;IMG&gt;SLASH&lt;&gt; Beginning docking approach
                                { "Russian", "%ITEM% отключен &lt;IMG&gt;SLASH&lt;&gt; Запущен процесс стыковки" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "WEATHER_WARN_RADIO" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ОПАСНАЯ ПОГОДА: ПРИБЛИЖАЕТСЯ РАДИОАКТИВНАЯ СВЕРХЯЧЕЙКА
                                -- WEATHER WARNING: RADIOACTIVE SUPERCELL APPROACHING
                                { "Russian", "ОПАСНАЯ ПОГОДА: ПРИБЛИЖАЕТСЯ РАДИОАКТИВНАЯ СУПЕРЪЯЧЕЙКА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "JUMP_OBSTRUCT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %ITEM% Недоступно &lt;IMG&gt;SLASH&lt;&gt; Планетарные помехи
                                -- %ITEM% Unavailable &lt;IMG&gt;SLASH&lt;&gt; Planetary Interference
                                { "Russian", "%ITEM% недоступен &lt;IMG&gt;SLASH&lt;&gt; Планетарные помехи" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "JUMP_ENEMY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %ITEM% Недоступно &lt;IMG&gt;SLASH&lt;&gt; Вражеская угроза
                                { "Russian", "%ITEM% недоступен &lt;IMG&gt;SLASH&lt;&gt; Вражеская угроза" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "JUMP_ATMOS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %ITEM% Недоступно &lt;IMG&gt;SLASH&lt;&gt; Атмосферные помехи
                                { "Russian", "%ITEM% недоступен &lt;IMG&gt;SLASH&lt;&gt; Атмосферные помехи" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "JUMP_FREIGHTER" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %ITEM% Недоступно &lt;IMG&gt;SLASH&lt;&gt; Рядом крупное судно
                                -- %ITEM% Unavailable &lt;IMG&gt;SLASH&lt;&gt; Large Ship Proximity
                                { "Russian", "%ITEM% недоступен &lt;IMG&gt;SLASH&lt;&gt; Рядом крупное судно" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "JUMP_STATION" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %ITEM% Недоступно &lt;IMG&gt;SLASH&lt;&gt; Рядом космическая станция
                                { "Russian", "%ITEM% недоступен &lt;IMG&gt;SLASH&lt;&gt; Рядом космическая станция" },
                            }
                        },
                        {
                            -- "Критические гравитационные помехи" не влезают, максимум это см. строку выше
                            ["SPECIAL_KEY_WORDS"] = { "Id", "JUMP_BLACKHOLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %ITEM% Недоступно &lt;IMG&gt;SLASH&lt;&gt; Критические гравитационные помехи
                                -- %ITEM% Unavailable &lt;IMG&gt;SLASH&lt;&gt; Extreme Gravitational Interference
                                { "Russian", "%ITEM% недоступен &lt;IMG&gt;SLASH&lt;&gt; Гравитационные помехи" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "JUMP_NOFUEL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %ITEM% Недоступно &lt;IMG&gt;SLASH&lt;&gt; Мало топлива
                                { "Russian", "%ITEM% недоступен &lt;IMG&gt;SLASH&lt;&gt; Мало топлива" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "JUMP_BADPATH" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %ITEM% Недоступно &lt;IMG&gt;SLASH&lt;&gt; Небезопасная траектория
                                { "Russian", "%ITEM% недоступен &lt;IMG&gt;SLASH&lt;&gt; Небезопасная траектория" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "JUMP_ATLAS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %ITEM% Недоступно &lt;IMG&gt;SLASH&lt;&gt; Обнаружены помехи Атласа
                                { "Russian", "%ITEM% недоступен &lt;IMG&gt;SLASH&lt;&gt; Обнаружены помехи Атласа" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "GLXY_DIST_LIGHTYE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- СВЕТОВЫХ ЛЕТ: %DISTANCE%
                                -- %DISTANCE% LIGHTYEARS
                                { "Russian", "%DISTANCE% СВЕТОВЫХ ЛЕТ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "GLXY_DISTANCE_LY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Св. лет: %DISTANCE%
                                -- %DISTANCE% Light-years
                                { "Russian", "%DISTANCE% cв. лет" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "PIRATE_BOUNTY_TITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружен звездолет беглеца
                                -- Fugitive Starship Detected
                                { "Russian", "Обнаружен звездолёт беглеца" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "PIRATE_BOUNTY1_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Цель контракта: &lt;TECHNOLOGY&gt;%NAME%&lt;&gt;&#xA;Выследите и уничтожьте, чтобы получить награду: %AMOUNT% юн.&#xA;Уровень угрозы беглеца: &lt;TRADEABLE&gt;значительный&lt;&gt;
                                -- Bounty Target: &lt;TECHNOLOGY&gt;%NAME%&lt;&gt;&#xA;Hunt and destroy to claim reward: %AMOUNT% Units&#xA;Fugitive Threat Level: &lt;TRADEABLE&gt;Significant&lt;&gt;
                                { "Russian", "Цель: &lt;TECHNOLOGY&gt;%NAME%&lt;&gt;&#xA;Награда: &lt;IMG&gt;UNITSMALL&lt;&gt;%AMOUNT%&#xA;Уровень угрозы: &lt;TRADEABLE&gt;значительный&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "PIRATE_BOUNTY2_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Цель контракта: &lt;TECHNOLOGY&gt;%NAME%&lt;&gt;&#xA;Выследите и уничтожьте, чтобы получить награду: %AMOUNT% юн.&#xA;Уровень угрозы беглеца: &lt;COMMODITY&gt;опасный&lt;&gt;
                                { "Russian", "Цель: &lt;TECHNOLOGY&gt;%NAME%&lt;&gt;&#xA;Награда: &lt;IMG&gt;UNITSMALL&lt;&gt;%AMOUNT%&#xA;Уровень угрозы: &lt;COMMODITY&gt;опасный&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "PIRATE_BOUNTY3_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Цель контракта: &lt;TECHNOLOGY&gt;%NAME%&lt;&gt;&#xA;Выследите и уничтожьте, чтобы получить награду: %AMOUNT% юн.&#xA;Уровень угрозы беглеца: &lt;FUEL&gt;элитный&lt;&gt;
                                { "Russian", "Цель: &lt;TECHNOLOGY&gt;%NAME%&lt;&gt;&#xA;Награда: &lt;IMG&gt;UNITSMALL&lt;&gt;%AMOUNT%&#xA;Уровень угрозы: &lt;FUEL&gt;элитный&lt;&gt;" },
                            }
                        },
                        -- лучше целая подсказка, чем обрубки текста
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "PIRATE_BOUNTY_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Цель контракта: &lt;TECHNOLOGY&gt;%NAME%&lt;&gt;&#xA;Выследите и уничтожьте, чтобы получить награду: %AMOUNT% юн.&#xA;%FLIGHT_TIP%
                                { "Russian", "%FLIGHT_TIP%" },
                            }
                        },
                        -- подсказку убираем, не до основ пилотирования
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NOTIFY_SPACE_SHIELDS_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;FUEL&gt;ЗАРЯД ЩИТА %SHIELD%%&lt;&gt; Перезарядите его в быстром меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)&#xA;%FLIGHT_TIP%
                                { "Russian", "&lt;FUEL&gt;ЩИТ ЗВЕЗДОЛЁТА: %SHIELD%%&lt;&gt;&#xA;Перезарядитесь из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        -- убираем подсказку, будем считать что игрок-пират это ас всех асов по управлению звездолетами
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NOTIFY_TRADER_ATTACK_TITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Осталось враждебных торговых судов: &lt;FUEL&gt;%AMOUNT%&lt;&gt;&#xA;При уничтожении торговцев по тревоге поднимутся &lt;STELLAR&gt;стражи-перехватчики&lt;&gt;&#xA;%FLIGHT_TIP%
                                -- Hostile trade ships remaining: &lt;FUEL&gt;%AMOUNT%&lt;&gt;&#xA;Destroying traders will alert &lt;STELLAR&gt;Sentinel Interceptors&lt;&gt;&#xA;%FLIGHT_TIP%
                                { "Russian", "Осталось враждебных торговых судов: &lt;FUEL&gt;%AMOUNT%&lt;&gt;&#xA;Уничтожение торговцев привлечёт&#xA;внимание &lt;STELLAR&gt;стражей-перехватчиков&lt;&gt;" },
                            }
                        },
                        -- даже 1 подсказка без ничего нормально не влазеет
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NOTIFY_SPACE_POLICE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Осталось стражей-перехватчиков: &lt;FUEL&gt;%AMOUNT%&lt;&gt;&#xA;%FLIGHT_TIP%&#xA;Используйте &lt;IMG&gt;PREVTARGET&lt;&gt;/&lt;IMG&gt;NEXTTARGET&lt;&gt;, чтобы сменить цель.
                                -- Sentinel interceptors remaining: &lt;FUEL&gt;%AMOUNT%&lt;&gt;&#xA;%FLIGHT_TIP%&#xA;Change targets with &lt;IMG&gt;PREVTARGET&lt;&gt; / &lt;IMG&gt;NEXTTARGET&lt;&gt;
                                { "Russian", "Осталось стражей-перехватчиков: &lt;FUEL&gt;%AMOUNT%&lt;&gt;&#xA;Удерживайте &lt;IMG&gt;AUTOFOLLOW&lt;&gt; для автонаведения&#xA;Переключение целей: &lt;IMG&gt;PREVTARGET&lt;&gt; / &lt;IMG&gt;NEXTTARGET&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NOTIFY_SPACE_POLICE_FLEE_A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Осталось стражей-перехватчиков: &lt;FUEL&gt;%AMOUNT%&lt;&gt;&#xA;Избегайте повреждений, чтобы &lt;TECHNOLOGY&gt;восстановить импульсные двигатели&lt;&gt;&#xA;%FLIGHT_TIP%
                                -- Sentinel interceptors remaining: &lt;FUEL&gt;%AMOUNT%&lt;&gt;&#xA;Avoid damage to &lt;TECHNOLOGY&gt;re-enable pulse engines&lt;&gt;&#xA;%FLIGHT_TIP%
                                { "Russian", "Осталось стражей-перехватчиков: &lt;FUEL&gt;%AMOUNT%&lt;&gt;&#xA;Избегайте повреждений, чтобы &lt;TECHNOLOGY&gt;перезапустить импульсный двигатель&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NOTIFY_SPACE_POLICE_FLEE_B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Осталось перехватчиков: &lt;FUEL&gt;%AMOUNT%&lt;&gt;&#xA;&lt;TECHNOLOGY&gt;Импульсный привод&lt;&gt; восстановится через: &lt;TECHNOLOGY&gt;%TIME%&lt;&gt;&#xA;%FLIGHT_TIP%
                                -- Sentinel interceptors remaining: &lt;FUEL&gt;%AMOUNT%&lt;&gt;&#xA;&lt;TECHNOLOGY&gt;Pulse Drive&lt;&gt; re-enabled in: &lt;TECHNOLOGY&gt;%TIME%&lt;&gt;&#xA;%FLIGHT_TIP%
                                { "Russian", "Осталось перехватчиков: &lt;FUEL&gt;%AMOUNT%&lt;&gt;&#xA;&lt;TECHNOLOGY&gt;Импульсный двигатель&lt;&gt; перезапустится через &lt;TECHNOLOGY&gt;%TIME%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NOTIFY_SPACE_POLICE_PULSE_BAN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- До прибытия подкреплений перехватчиков: &lt;FUEL&gt;%TIME% сек.&lt;&gt;&#xA;Избегайте повреждений, чтобы &lt;TECHNOLOGY&gt;восстановить импульсные двигатели&lt;&gt;&#xA;%FLIGHT_TIP%
                                -- Reinforcement interceptors incoming: &lt;FUEL&gt;%TIME%s&lt;&gt;&#xA;Avoid damage to &lt;TECHNOLOGY&gt;re-enable pulse engines&lt;&gt;&#xA;%FLIGHT_TIP%
                                { "Russian", "Подкрепление прибудет через &lt;FUEL&gt;%TIME% с&lt;&gt;&#xA;Избегайте повреждений, чтобы &lt;TECHNOLOGY&gt;перезапустить импульсный двигатель&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NOTIFY_SPACE_POLICE_PULSE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- До прибытия подкрепления перехватчиков: &lt;FUEL&gt;%TIME% сек.&lt;&gt;&#xA;Удерживайте &lt;IMG&gt;PULSEJUMP&lt;&gt;, чтобы запустить &lt;TECHNOLOGY&gt;импульсный двигатель&lt;&gt; и &lt;STELLAR&gt;сбежать&lt;&gt;
                                -- Reinforcement interceptors incoming: &lt;FUEL&gt;%TIME%s&lt;&gt;&#xA;Hold &lt;IMG&gt;PULSEJUMP&lt;&gt; to engage the &lt;TECHNOLOGY&gt;pulse engine&lt;&gt; and &lt;STELLAR&gt;escape&lt;&gt;
                                { "Russian", "Подкрепление прибудет через &lt;FUEL&gt;%TIME% с&lt;&gt;&#xA;Удерживайте &lt;IMG&gt;PULSEJUMP&lt;&gt;, чтобы запустить &lt;TECHNOLOGY&gt;импульсный двигатель&lt;&gt;&#xA;и &lt;STELLAR&gt;сбежать&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NOTIFY_SPACE_POLICE_INCOMING" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- До прибытия подкреплений перехватчиков: &lt;FUEL&gt;%TIME% сек.&lt;&gt;&#xA;%FLIGHT_TIP%
                                -- Reinforcement interceptors incoming: &lt;FUEL&gt;%TIME%s&lt;&gt;&#xA;%FLIGHT_TIP%
                                { "Russian", "Подкрепление прибудет через &lt;FUEL&gt;%TIME% с&lt;&gt;&#xA;%FLIGHT_TIP%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NOTIFY_SHIPJUMP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Удерживайте &lt;IMG&gt;PULSEJUMP&lt;&gt;&#xA;, чтобы совершить импульсный прыжок
                                -- Hold &lt;IMG&gt;PULSEJUMP&lt;&gt;&#xA;to engage pulse jump
                                { "Russian", "Совершите импульсный прыжок,&#xA;удерживая &lt;IMG&gt;PULSEJUMP&lt;&gt;" },
                            }
                        },
                        -- первая часть не влазиет, разбиваем на три
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "EXP_CRA_DESC_7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Когда я пробираюсь мимо заблокированного грузового отсека, включается голографический черный ящик судна. Корабль попал под удар метеорита и совершил аварийную посадку. Рядом лежит мертвый электронный пилот. Его защитная оболочка треснула, а оружие валяется у его ног. Судя по позе, в которой он погиб, перед падением он пытался связаться со своими.&#xA;&#xA;На потолке есть работающая камера. Сигнал можно усилить. Возможно, я смогу объяснить исчезновение этого существа.
                                { "Russian", "Когда я пробираюсь мимо заблокированного грузового отсека, включается голографический черный ящик судна. Корабль попал под удар метеорита и совершил аварийную посадку.&#xA;&#xA;Рядом лежит мертвый электронный пилот. Его защитная оболочка треснула, а оружие валяется у его ног. Судя по позе, в которой он погиб, перед падением он пытался связаться со своими.&#xA;&#xA;На потолке есть работающая камера. Сигнал можно усилить. Возможно, я смогу объяснить исчезновение этого существа." },
                            }
                        },
                        -- не встречал такие объекты в игре, но в контексте планетных тел данное исправление уместно.
                        -- чтобы все было женского рода: планета, луна, малая планета.
                        -- см. исправления вида <прилаг.> %PLANETCLASS% (NMS_LOC6_RUSSIAN)
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "PLANETCLASS3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Малая планета" }, -- Планетоид (Planetoid)
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ALL_1_RADIO_DESC_11" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- На операционный терминал поступило экстренное сообщение. На него был дан ответ, но нет никаких признаков, что туда отправилась спасательная группа.&#xA;&#xA;Когда-то давно работник пункта связи отправился на разведку, но записей о том, как разрешилась ситуация, не сохранилось. Вероятно, сами спасатели пали жертвой тяжелых природных условий и хищников этой странной планеты. Если мне удастся выделить структуру в зашифрованной частоте, возможно, я смогу закончить их работу...
                                { "Russian", "На операционный терминал поступило экстренное сообщение. На него был дан ответ, но нет никаких признаков, что туда отправилась спасательная группа.&#xA;&#xA;Когда-то давно работник пункта связи отправился на разведку, но записей о том, как разрешилась ситуация, не сохранилось. Вероятно, сами спасатели пали жертвой тяжелых природных условий и хищников этой странной планеты.&#xA;&#xA;Если мне удастся выделить структуру в зашифрованной частоте, возможно, я смогу закончить их работу..." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BOLTSHOTGUN_DESCRIPTION" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Специализированный модуль &lt;STELLAR&gt;ближнего боя&lt;&gt; для &lt;TECHNOLOGY&gt;мультитула&lt;&gt;. Нажмите &lt;IMG&gt;CYCLEWEAPON&lt;&gt;, чтобы выбрать режим стрельбы. Чтобы выстрелить, нажмите &lt;IMG&gt;ATTACK&lt;&gt;.&#xA;&#xA;&lt;TECHNOLOGY&gt;Бластер-рассеиватель&lt;&gt; изменяет конфигурацию мультитула, позволяя ему нагревать и раскалывать &lt;EARTH&gt;металл&lt;&gt;. Обладает &lt;STELLAR&gt;широкой областью поражения&lt;&gt;. Дальность весьма ограничена, однако вблизи шрапнель крайне эффективна.
                                { "Russian", "Специальный модуль &lt;STELLAR&gt;ближнего боя&lt;&gt; для &lt;TECHNOLOGY&gt; мультитула&lt;&gt;. Нажмите &lt;IMG&gt;CYCLEWEAPON&lt;&gt;, чтобы выбрать режим стрельбы. Чтобы выстрелить, нажмите &lt;IMG&gt;ATTACK&lt;&gt;.&#xA;&#xA;&lt;TECHNOLOGY&gt;Бластер-рассеиватель&lt;&gt; изменяет конфигурацию мультитула, позволяя ему нагревать и раскалывать &lt;EARTH&gt;  металл&lt;&gt;. Обладает &lt;STELLAR&gt;широкой областью поражения&lt;&gt;. Дальность весьма ограничена, однако вблизи шрапнель крайне эффективна." },
                            }
                        },
                        -- подсказки внизу справа
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NOTIFY_PIRATES" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Осталось атакующих кораблей пиратов: &lt;FUEL&gt;%AMOUNT%&lt;&gt;&#xA;Используйте &lt;STELLAR&gt;тормоз&lt;&gt; (&lt;IMG&gt;BRAKE&lt;&gt;), чтобы быстро развернуться&#xA;Удерживайте &lt;STELLAR&gt;ускорение&lt;&gt; (&lt;IMG&gt;BOOST&lt;&gt;), чтобы уклониться&#xA;Используйте &lt;IMG&gt;PREVTARGET&lt;&gt; / &lt;IMG&gt;NEXTTARGET&lt;&gt;, чтобы сменить цель
                                { "Russian", "Осталось пиратов: &lt;FUEL&gt;%AMOUNT%&lt;&gt;&#xA;Используйте &lt;STELLAR&gt;тормоз&lt;&gt; (&lt;IMG&gt;BRAKE&lt;&gt;) и &lt;STELLAR&gt;ускорение&lt;&gt; (&lt;IMG&gt;BOOST&lt;&gt;) для маневрирования" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NOTIFY_PIRATES_FOLLOW" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Осталось атакующих кораблей пиратов: &lt;FUEL&gt;%AMOUNT%&lt;&gt;&#xA;Наведитесь на цель и преследуйте ее с помощью &lt;IMG&gt;AUTOFOLLOW&lt;&gt;&#xA;Используйте &lt;IMG&gt;PREVTARGET&lt;&gt; / &lt;IMG&gt;NEXTTARGET&lt;&gt;, чтобы сменить цель
                                { "Russian", "Осталось пиратов: &lt;FUEL&gt;%AMOUNT%&lt;&gt;&#xA;Автонаведение: &lt;IMG&gt;AUTOFOLLOW&lt;&gt;&#xA;Смена цели: &lt;IMG&gt;PREVTARGET&lt;&gt; / &lt;IMG&gt;NEXTTARGET&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NOTIFY_PIRATES_FOLLOW_HOLD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Осталось атакующих кораблей пиратов: &lt;FUEL&gt;%AMOUNT%&lt;&gt;&#xA;Удерживайте &lt;IMG&gt;AUTOFOLLOW&lt;&gt;, чтобы навестись на цель и преследовать ее&#xA;Используйте &lt;IMG&gt;PREVTARGET&lt;&gt; / &lt;IMG&gt;NEXTTARGET&lt;&gt;, чтобы сменить цель
                                -- Pirate attack ships remaining: &lt;FUEL&gt;%AMOUNT%&lt;&gt;&#xA;Hold &lt;IMG&gt;AUTOFOLLOW&lt;&gt; to lock on and chase your target&#xA;Change targets with &lt;IMG&gt;PREVTARGET&lt;&gt; / &lt;IMG&gt;NEXTTARGET&lt;&gt;
                                { "Russian", "Осталось пиратов: &lt;FUEL&gt;%AMOUNT%&lt;&gt;&#xA;Удерживайте &lt;IMG&gt;AUTOFOLLOW&lt;&gt; для автонаведения&#xA;Переключение целей: &lt;IMG&gt;PREVTARGET&lt;&gt; / &lt;IMG&gt;NEXTTARGET&lt;&gt;" },
                            }
                        },
                        -- "Дальше": не ясно зачем так перевели, особого смысла как в ориганале это не придает.
                        -- Дословно конечно: Ваша судьба ждет вас Впаереди. Но так тоже никакой смысловой нагрузки.
                        -- Можно капсом ВПЕРЕДИ (у-у-ууу, впереди, уууу). Но это зашквар.
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NOTIFY_FINAL_GOMAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TITLE&gt;Атлас&lt;&gt;&#xA;Судьба ведет вас Дальше&#xA;Нажмите &lt;IMG&gt;QUICK_MENU&lt;&gt;, чтобы открыть галактическую карту
                                { "Russian", "&lt;TITLE&gt;Атлас&lt;&gt;&#xA;Судьба ведет вас дальше.&#xA;Нажмите &lt;IMG&gt;QUICK_MENU&lt;&gt;, чтобы открыть галактическую карту." },
                            }
                        },
                        -- последния предложения не влазиют
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TRA_CRA_DESC_5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Корабль был явно сбит более мощным судном — внутри меня встречает груда обгорелых обломков и металла. Кажется, будто он вот-вот развалится на куски.&#xA; &#xA;Корабль весь содрогается, а я прохожу в кабину пилота, где черный ящик показывает цель корабля и его последние минуты: это было дипломатическое судно, на которое напали представители воинственной расы, взявшие правосудие в свои руки. Войны начинались и из-за меньшего. Скорее всего, по этому кораблю крайне скучают дома...
                                { "Russian", "Корабль был явно сбит более мощным судном — внутри меня встречает груда обгорелых обломков и металла. Кажется, будто он вот-вот развалится на куски.&#xA;&#xA;Корабль весь содрогается, а я прохожу в кабину пилота, где черный ящик показывает цель корабля и его последние минуты: это было дипломатическое судно, на которое напали представители воинственной расы, взявшие правосудие в свои руки.&#xA;&#xA;Войны начинались и из-за меньшего. Скорее всего, по этому кораблю крайне скучают дома..." },
                            }
                        },
                        -- описание фауны
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RARITY_WEIRD1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Необычн.
                                { "Russian", "Необычная" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RARITY_WEIRD2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Потерян.
                                { "Russian", "Потерянная" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RARITY_WEIRD3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Перемещен.
                                { "Russian", "Перемещенная" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RARITY_WEIRD4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Чужеземн.
                                { "Russian", "Чужеземная" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RARITY_WEIRD5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вырван.
                                { "Russian", "Вырванная" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RARITY_WEIRD6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Утерян.
                                { "Russian", "Утерянная" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RARITY_WEIRD7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Оставлен.
                                { "Russian", "Оставленная" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RARITY_WEIRD8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Междумирн.
                                { "Russian", "Междумирная" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RARITY_INFESTED1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Заражен.
                                { "Russian", "Заражённая" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RARITY_INFESTED2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Больн.
                                { "Russian", "Больная" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RARITY_INFESTED3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Искажен.
                                { "Russian", "Искаженная" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RARITY_INFESTED4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вопящ.
                                { "Russian", "Вопящая" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RARITY_INFESTED5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вирусн.
                                { "Russian", "Вирусная" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RARITY_INFESTED6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Внедряющ.
                                { "Russian", "Внедряющая" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "MONEY_STAT_04_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Торговец (Merchant)
                                { "Russian", "Купец" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "MONEY_STAT_05_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Предприимчивое (Enterprising)
                                { "Russian", "Предприимчивый" },
                            }
                        },
                        -- в интерфейсе такая длинная строка не очень смотрится
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TECH_ALREADY_KNOWN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вам уже известен этот чертеж технологии
                                -- Technology blueprint already known
                                { "Russian", "Чертеж уже известен" },
                            }
                        },
                        -- в описании модуля "импульсный двигатель"
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SHIPJUMP_DESCRIPTION" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Реактивный полет, ускорения и импульсные прыжки в пределах системы.&#xA; &#xA;Для зарядки импульсного двигателя требуется &lt;EXOTIC&gt;тритий&lt;&gt;. Тритий в изобилии встречается в &lt;COMMODITY&gt;скоплениях астероидов рядом с планетами&lt;&gt;. Воспользуйтесь сканером звездолета (&lt;IMG&gt;SCAN&lt;&gt;), чтобы найти тритий.&#xA;&#xA;Удерживайте &lt;IMG&gt;PULSEJUMP&lt;&gt;, чтобы совершить импульсный прыжок.&#xA;Удерживайте &lt;IMG&gt;BOOST&lt;&gt;, чтобы активировать ускоритель в полете.
                                -- Spaceflight propulsion, boosts and on-demand Pulse Jumps through local system.&#xA; &#xA;User is advised that &lt;EXOTIC&gt;Tritium&lt;&gt; is required to charge Pulse Engine. Tritium is abundant in &lt;COMMODITY&gt;near-space asteroid fields&lt;&gt;. Locate Tritium with the starship scanner (&lt;IMG&gt;SCAN&lt;&gt;).&#xA;&#xA;Hold &lt;IMG&gt;PULSEJUMP&lt;&gt; to engage Pulse Jump.&#xA;Hold &lt;IMG&gt;BOOST&lt;&gt; to initiate in-flight speed boost.
                                { "Russian", "Реактивный полет, ускорения и импульсные прыжки в пределах системы.&#xA; &#xA;Для зарядки импульсного двигателя требуется &lt;EXOTIC&gt;тритий&lt;&gt;. Тритий в изобилии встречается в &lt;COMMODITY&gt;скоплениях астероидов рядом с планетами&lt;&gt;. Используйте сканер звездолёта (&lt;IMG&gt;SCAN&lt;&gt;), чтобы найти тритий.&#xA;&#xA;Удерживайте &lt;IMG&gt;PULSEJUMP&lt;&gt;, чтобы совершить импульсный прыжок.&#xA;Удерживайте &lt;IMG&gt;BOOST&lt;&gt;, чтобы активировать ускоритель в полете." },
                            }
                        },
                        -- еще одно очень сложно написанное предложение. точка на конце лишняя
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "INV_PICKING_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Складывайте предметы, разделяйте их и перемещайте в другой инвентарь.
                                -- Stack items, split stacks or move to other inventories
                                { "Russian", "Складывайте, разделяйте и перемещайте предметы" },
                            }
                        },
                        -- приводим к тому, что слышим в озвучке
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NOTIFY_ENEMYSHIPS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %TECH% заглушен&#xA;Уничтожьте нападающие корабли &lt;IMG&gt;ATTACK&lt;&gt;
                                -- %TECH% Jammed&#xA;Destroy Attack Ships &lt;IMG&gt;ATTACK&lt;&gt;
                                { "Russian", "%TECH% заглушен&#xA;Уничтожьте вражеские корабли &lt;IMG&gt;ATTACK&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NOTIFY_PIRATE_WIN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- НАПАДАЮЩИЕ КОРАБЛИ УНИЧТОЖЕНЫ
                                -- ATTACK SHIPS DEFEATED
                                { "Russian", "ВРАЖЕСКИЕ КОРАБЛИ УНИЧТОЖЕНЫ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NOTIFY_PIRATE_BATTLE_WIN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- НАПАДАЮЩИЕ КОРАБЛИ УНИЧТОЖЕНЫ
                                -- ATTACK SHIPS DEFEATED
                                { "Russian", "ВРАЖЕСКИЕ КОРАБЛИ УНИЧТОЖЕНЫ" },
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
                        -- приводим к общепринятому понятию
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SCAN1_SUBTITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Топографический обзор
                                -- Topographic Survey
                                { "Russian", "Топографическая съемка" },
                            }
                        },
                        -- см. также update3, NOTIFY_PRO_ACTIVE
                        -- ну как так можно было сочинять текст, а? не нужно было переводы делать ни на какие языки,
                        -- игра должна была быть только на англ., и чтобы Шон жил в бедноте, млять. Реально бесит.
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NOTIFY_SHELTER" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %HAZARD%: необходимо убежище&#xA;Восстановить: %TECH%&lt;IMG&gt;INVENTORY&lt;&gt;
                                -- Seek shelter from %HAZARD%&#xA;Restore %TECH% &lt;IMG&gt;INVENTORY&lt;&gt;
                                { "Russian", "Найдите укрытие&#xA;Восстановите %TECH% &lt;IMG&gt;INVENTORY&lt;&gt;" },
                            }
                        },
                        -- при нахождении Завода с помощью карты
                        -- какая нафиг формула продукта???
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TIP_FACTORY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TITLE&gt;Перехвачен сигнал завода&lt;&gt;&#xA;Доступна новая схема продукта
                                -- &lt;TITLE&gt;Intercepted Manufacturing Facility signal&lt;&gt;&#xA;New product formula now accessible
                                { "Russian", "&lt;TITLE&gt;Перехвачен сигнал завода&lt;&gt;&#xA;Добудьте новый чертеж" },
                            }
                        },
                        -- на экране откртый при наведении на планету
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "DISC_REPORT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ОТЧЕТ
                                -- REPORT
                                { "Russian", "ПОЖАЛОВАТЬСЯ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "DISC_RENAME_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Дать название вашему открытию.
                                -- Name your discovery
                                { "Russian", "Дать название вашему открытию" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TECH_REPAIRED" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Восстановлена технология: %TECH%
                                -- %TECH% repaired
                                { "Russian", "%TECH% — восстановлено" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TIP_DEPOT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TITLE&gt;Обнаружен маркер склада&lt;&gt;&#xA;Доступны ресурсы
                                -- &lt;TITLE&gt;Supply Depot marker detected&lt;&gt;&#xA;Stockpiled resources available
                                { "Russian", "&lt;TITLE&gt;Пойманы координаты склада снабжения&lt;&gt;&#xA;На складах хранятся ценные ресурсы" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TIP_SHELTER" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TITLE&gt;Обнаружен маркер убежища&lt;&gt;&#xA;Доступны ресурсы и защита от агрессивной внешней среды
                                -- &lt;TITLE&gt;Shelter marker detected&lt;&gt;&#xA;Environmental protection and resources available
                                { "Russian", "&lt;TITLE&gt;Получены координаты убежища&lt;&gt;&#xA;В убежище можно найти ресурсы и укрытие" },
                            }
                        },
                        -- это должно было быть пофикшено первым, лол
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "STAT_MESSAGES_TITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Завершен важный этап путешествия
                                -- JOURNEY MILESTONE ACCOMPLISHED
                                { "Russian", "ЗАВЕРШЕН ВАЖНЫЙ ЭТАП ПУТЕШЕСТВИЯ" },
                            }
                        },
                        -- моя твоя не понимать
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NOTIFY_EXTREME_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;FUEL&gt;Планета с высокой защитой&lt;&gt;&#xA;Вероятны ресурсы под угрозой исчезновения&#xA;Стражи будут атаковать без предупреждения
                                -- &lt;FUEL&gt;High Security Planet&lt;&gt;&#xA;Endangered resources likely&#xD;&#xA;Sentinels will attack on sight
                                { "Russian", "&lt;FUEL&gt;Планета с высокой защитой&lt;&gt;&#xA;Ресурсы могут оказаться под угрозой исчезновения&#xA;Стражи будут атаковать без предупреждения" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NOTIFY_VEHICLE_FUEL_LOW" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ВЕЗДЕХОДНОЕ ТОПЛИВО - НИЗКИЙ УРОВЕНЬ
                                -- EXOCRAFT FUEL AT %PERCENT%
                                { "Russian", "ЗАПАС ТОПЛИВА ВЕЗДЕХОДА — %PERCENT%" },
                            }
                        },
                        -- на какой еще улице?
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BASEBUILD_INVALID_BIOME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Нельзя посадить на улице &lt;IMG&gt;SLASH&lt;&gt; Не подходит биом
                                -- Cannot Plant Outdoors &lt;IMG&gt;SLASH&lt;&gt; Invalid Biome
                                { "Russian", "Нельзя посадить снаружи &lt;IMG&gt;SLASH&lt;&gt; Не подходит биом" },
                            }
                        },
                        -- ну то, что карта наша/ваша это и так ясно
                        -- сделал точный перевод waypoint, полезно для эрудиции
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "DISC_SET_WAYPNT_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поставить точку маршрута на вашей галактической карте
                                -- Set waypoint on your galactic map
                                { "Russian", "Поставить путевую точку на галактической карте" },
                            }
                        },
                        -- когда нет толпива в импульсном двигателе
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NOTIFY_SHIP_NOFUEL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %TECH% нуждается в дозаправке, используйте %AMOUNT%&#xA;Зарядите в &lt;TECHNOLOGY&gt;быстром меню&lt;&gt; (&lt;IMG&gt;QUICK_MENU&lt;&gt;)
                                -- Refuel %TECH% with %AMOUNT%&#xA;Recharge from the &lt;TECHNOLOGY&gt;Quick Menu&lt;&gt; (&lt;IMG&gt;QUICK_MENU&lt;&gt;)
                                { "Russian", "Заправьте &lt;TECHNOLOGY&gt;%TECH%&lt;&gt; из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)&#xA;Тип топлива: %AMOUNT%" },
                            }
                        },
                        -- это строка может добавиться к строке выше ^^^ и последнее предложение обрезается на "богатые тритием" в случае с "Тритий или Лучистый осколок"
                        -- сократил как мог, а еще фишка в том, что %AMOUNT% выше может содержать до 4х элементов, что може еще сильнее урезать строку ниже
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NOTIFY_MINE_ASTEROIDS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Удерживайте &lt;IMG&gt;SHIPFIRE&lt;&gt;, чтобы добывать из астероидов %SUBSTANCE%.&#xA;Выполните сканирование (&lt;IMG&gt;SCAN&lt;&gt;), чтобы найти &lt;TECHNOLOGY&gt;богатые тритием астероиды&lt;&gt;.
                                -- Hold &lt;IMG&gt;SHIPFIRE&lt;&gt; to mine asteroids for %SUBSTANCE%&#xA;Scan (&lt;IMG&gt;SCAN&lt;&gt;) to search for &lt;TECHNOLOGY&gt;tritium-rich asteroids&lt;&gt;
                                { "Russian", "Добывайте %SUBSTANCE% из астероидов с помощью &lt;IMG&gt;SHIPFIRE&lt;&gt;&#xA;Сканирование (&lt;IMG&gt;SCAN&lt;&gt;) поможет найти &lt;TECHNOLOGY&gt;астероиды с тритием&lt;&gt;" },
                            }
                        },
                        -- баги перевода где есть "&lt;IMG&gt;&lt;&gt;"
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "OPTIONS_R1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Удар &lt;IMG&gt;&lt;&gt;
                                -- Melee &lt;IMG&gt;MELEE&lt;&gt;
                                { "Russian", "Удар &lt;IMG&gt;MELEE&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "OPT_R1_TXT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Удар &lt;IMG&gt;&lt;&gt;
                                -- Melee &lt;IMG&gt;MELEE&lt;&gt;
                                { "Russian", "Удар &lt;IMG&gt;MELEE&lt;&gt;" },
                            }
                        },
                        -- если бы разраб хотел именно терминал, то так и написал - terminal
                        -- в данном случае terminus это все что угодно но не терминал
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "INTRCT_TELEPORT_NEXUS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Межзвездный терминал
                                -- Interstellar Terminus
                                { "Russian", "Межзвёздный вокзал" },
                            }
                        },
                        -- даже тут прокрутка
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "PC_MENU_QUIT_TO_DESKTOP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Выйти на рабочий стол
                                -- Quit to Desktop
                                { "Russian", "Выйти из игры" },
                            }
                        },
                        -- на экране выбора сохранения
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "PATCH1_TITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Описание обновления
                                -- Patch Notes
                                { "Russian", "Об обновлении" },
                            }
                        },
                        -- ну так не переводят...
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "DISCOVERY_DEATH_STAT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Мне удалось восстановиться %DEATHS% раз(а)
                                -- I regenerated %DEATHS% times
                                { "Russian", "Перерожден %DEATHS% раза" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "DISCOVERY_DEATH_STAT_ONE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Мне удалось восстановиться %DEATHS% р.
                                -- I regenerated %DEATHS% time
                                { "Russian", "Перерожден %DEATHS% раз" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NOTIFY_GATHER_IRON" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TITLE&gt;Почените взлетные ускорители&lt;&gt;&#xA;Используйте &lt;IMG&gt; ATTACK &lt;&gt; для сбора минералов&#xA;Соберите &lt;COMMODITY&gt;железо&lt;&gt; из мелких камней
                                -- &lt;TITLE&gt;Repair Starship Launch Thrusters&lt;&gt;&#xA;Use &lt;IMG&gt;ATTACK&lt;&gt; to gather minerals&#xA;&lt;COMMODITY&gt;Iron&lt;&gt; is found in small rocks
                                { "Russian", "&lt;TITLE&gt;Почините взлетные ускорители&lt;&gt;&#xA;Используйте &lt;IMG&gt;ATTACK&lt;&gt; для сбора минералов&#xA;Соберите &lt;COMMODITY&gt;железо&lt;&gt; из мелких камней" },
                            }
                        },
                        -- мульитула
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "LASER_DESCRIPTION" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;Расщепитель&lt;&gt; мульитула, заряжается от &lt;FUEL&gt;углеродных элементов&lt;&gt;. Чтобы выстрелить, нажмите &lt;IMG&gt;ATTACK&lt;&gt;.&#xA;Помещает в мультитул фокусирующую оптику, позволяя ему выпускать &lt;STELLAR&gt;мощный энергетический луч&lt;&gt;. Излучение воздействует на молекулы обычных &lt;STELLAR&gt;органических и геологических объектов&lt;&gt;. Благодаря такому воздействию устройство активно используется для добычи полезных ископаемых.&#xA;&lt;FUEL&gt;ВНИМАНИЕ&lt;&gt;: уничтожение флоры, фауны и минералов может привлечь внимание стражей.
                                -- Multi-Tool &lt;TECHNOLOGY&gt;Mining Beam&lt;&gt; powered by &lt;FUEL&gt;Carbon-based Elements&lt;&gt;. Fire the beam with &lt;IMG&gt;ATTACK&lt;&gt;.&#xA;&#xA;Installs focusing optics within the Multi-Tool, allowing it to emit a &lt;STELLAR&gt;high-energy beam&lt;&gt;. The beam is calibrated to excite molecules within common &lt;STELLAR&gt;organic or geological objects&lt;&gt;, allowing it to operate as a highly effective mining device.&#xA;&#xA;&lt;FUEL&gt;WARNING&lt;&gt;: Destruction of flora, fauna or minerals may attract Sentinel attention.
                                { "Russian", "&lt;TECHNOLOGY&gt;Расщепитель&lt;&gt; мультитула заряжается от &lt;FUEL&gt;углеродных элементов&lt;&gt;. Чтобы выстрелить, нажмите &lt;IMG&gt;ATTACK&lt;&gt;.&#xA;Добавляет в мультитул фокусирующую оптику, позволяя ему выпускать &lt;STELLAR&gt;мощный энергетический луч&lt;&gt;. Излучение воздействует на молекулы обычных &lt;STELLAR&gt;органических и геологических объектов&lt;&gt;. Благодаря такому воздействию устройство активно используется для добычи полезных ископаемых.&#xA;&lt;FUEL&gt;Уничтожение&lt;&gt; флоры, фауны и минералов может привлечь внимание стражей." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "CHARGE_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Зарядить c: %TYPE%
                                -- Charge equipment with %TYPE%
                                { "Russian", "Заряд: %TYPE%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SHIPJUMP_SUBTITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Корабельный ускоритель полета
                                -- Starship Flight Booster
                                { "Russian", "Субсветовой двигатель" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "DISC_MISS_REWARD_COMP_NANITES" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Завершите, чтобы получить наниты (%UNITS%).
                                -- Complete to Receive %UNITS% Nanites
                                { "Russian", "Получите %UNITS% нанитов, открыв все виды" },
                            }
                        },
                        --
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "LONGEST_LIFE_STAT_06_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Суровая
                                -- Rugged
                                { "Russian", "Суровый" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "LONGEST_LIFE_STAT_10_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Бессмертн.
                                -- Everlasting
                                { "Russian", "Бессмертный" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "OPTION_REPORT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сообщить об неподобающей базе
                                -- Report Offensive or Inappropriate Base
                                { "Russian", "Сообщить о неподобающей базе" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NOTIFY_BINOCULARS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Наводите на объекты и удерживайте &lt;IMG&gt;BINOCSCAN&lt;&gt;, чтобы анализировать их&#xA;Для приближения нажмите &lt;IMG&gt;ZOOM&lt;&gt;.
                                -- Target objects and hold &lt;IMG&gt;BINOCSCAN&lt;&gt; to analyse&#xA;Press &lt;IMG&gt;ZOOM&lt;&gt; to zoom
                                { "Russian", "Наводите на объекты и удерживайте &lt;IMG&gt;BINOCSCAN&lt;&gt; для анализа&#xA;Нажмите &lt;IMG&gt;ZOOM&lt;&gt; для приближения" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "LONGEST_LIFE_STAT_LVL_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Пережито опасных планет: %STAT%
                                -- Survived %STAT% on extreme worlds
                                { "Russian", "В экстремальных условиях: %STAT%" },
                            }
                        },
                        -- эта строка также используется при найме фригатов
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BUY_COMPLETE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Завершить передачу
                                -- Complete Transfer
                                { "Russian", "Завершить сделку" },
                            }
                        },
                        -- речь про мультитул
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BASESTATS_PRISTINE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ЭКСПЕРИМЕНТАЛЬНАЯ
                                -- EXPERIMENTAL
                                { "Russian", "ЭКСПЕРИМЕНТАЛЬНЫЙ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BASESTATS_PRISTINE_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Экспериментальн.
                                -- Experimental
                                { "Russian", "Экспериментальный" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "DISC_CANT_SET_WAYPOINT_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Координаты места находятся за пределами текущей галактики
                                -- Location not in current galaxy
                                { "Russian", "Расположено в другой галактике" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "LASER_SUBTITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Луч для извлечения минералов
                                -- Mineral Extraction Laser
                                { "Russian", "Горнодобывающий лазер" },
                            }
                        },
                        -- останавливаемся на концепции вокзалов, а не конечных станций
                        -- т.о. телепорт это вокзал, с которого можно попасть на станцию или вокзал где-либо
                        -- конечно, можно было назвать и "терминал станции", но терминал не передает сути
                        -- если мыслить шире, то это "космический терминал станции/базы",
                        -- а точнее межгалактический терминал
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "INTRCT_TELEPORT_STN_BASE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Точка станции
                                -- Station Terminus
                                { "Russian", "Вокзал станции" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "INTRCT_TELEPORT_BASE_STN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Точка базы
                                -- Base Terminus
                                { "Russian", "Вокзал базы" },
                            }
                        },
                        -- приводим к единому виду
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "GLXY_ANALYSIS_PLANETS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %i планета
                                -- %i Planet
                                { "Russian", "Планет: %i" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "GLXY_ANALYSIS_MOON" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %i луна
                                -- %i Moon
                                { "Russian", "Лун: %i" },
                            }
                        },

                        --#region Ранги
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TRA_PLAYER_RANK_BAD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Враг
                                -- Rival
                                { "Russian", "Соперник" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TRA_PLAYER_RANK_LOW" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соперник
                                -- Competitor
                                { "Russian", "Конкурент" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TRA_PLAYER_RANK_NORMAL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Клиент
                                -- Customer
                                { "Russian", "Покупатель" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TRA_PLAYER_RANK_IMPROVED" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Потребитель
                                -- Client
                                { "Russian", "Клиент" },
                            }
                        },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "EXP_PLAYER_RANK_BAD" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Недовольство
                        --         -- Annoyance
                        --         { "Russian", "Недовольство" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "EXP_PLAYER_RANK_LOW" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Раздражение
                        --         -- Irritation
                        --         { "Russian", "Раздражение" },
                        --     }
                        -- },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "EXP_PLAYER_RANK_NORMAL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Темная лошадка
                                -- Unstudied
                                { "Russian", "Неизученный" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "EXP_PLAYER_RANK_MEDIUM" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Объект исследования
                                -- Test Subject
                                { "Russian", "Подопытный" },
                            }
                        },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "EXP_PLAYER_RANK_IMPROVED" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Точка интереса
                        --         -- Point of Interest
                        --         { "Russian", "Точка интереса" },
                        --     }
                        -- },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "EXP_PLAYER_RANK_HIGH" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Кандидат
                                -- Trial Candidate
                                { "Russian", "Испытуемый" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "EXP_PLAYER_RANK_HIGHEST" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Важная шишка
                                -- Significance
                                { "Russian", "Значимость" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "WAR_PLAYER_RANK_NORMAL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Нейтрально
                                -- Neutral
                                { "Russian", "Нейтральный" },
                            }
                        },
                        -- Новый ранг
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "OSD_TRA_PLAYER_RANK_BAD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Ранг врага геков: недруг
                                -- Hostile Gek Rank: Rival
                                { "Russian", "Новый ранг: Соперник Геков" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "OSD_TRA_PLAYER_RANK_LOW" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Ранг врага геков: соперник
                                -- Hostile Gek Rank: Competitor
                                { "Russian", "Новый ранг: Конкурент Геков" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "OSD_TRA_PLAYER_RANK_NORMAL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Новый ранг у геков: клиент
                                -- New Gek Rank: Customer
                                { "Russian", "Новый ранг у Геков: Покупатель" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "OSD_TRA_PLAYER_RANK_IMPROVED" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Новый ранг у геков: заказчик
                                -- New Gek Rank: Client
                                { "Russian", "Новый ранг: Клиент Геков" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "OSD_TRA_PLAYER_RANK_MEDIUM" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Новый ранг у геков: ценный клиент
                                -- New Gek Rank: Valued Customer
                                { "Russian", "Новый ранг: Ценный клиент Геков" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "OSD_TRA_PLAYER_RANK_GOOD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Новый ранг у геков: коллега
                                { "Russian", "Новый ранг: Коллега Геков" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "OSD_TRA_PLAYER_RANK_HIGH" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Новый ранг у геков: партнер
                                { "Russian", "Новый ранг: Партнер Геков" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "OSD_TRA_PLAYER_RANK_HIGHEST" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Новый ранг у геков: друг
                                { "Russian", "Новый ранг: Друг Геков" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "OSD_TRA_PLAYER_RANK_HIGHEST1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Новый ранг у геков: лучший друг
                                { "Russian", "Новый ранг: Лучший друг Геков" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "OSD_TRA_PLAYER_RANK_HIGHEST2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Новый ранг у геков: обожаемый
                                { "Russian", "Новый ранг: Обожаемый Геками" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "OSD_TRA_PLAYER_RANK_HIGHEST3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Новый ранг у геков: гений торговли
                                { "Russian", "Новый ранг: Гений торговли среди Геков" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "OSD_EXP_PLAYER_RANK_BAD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Ранг врага корваксов: источник недовольства
                                -- Hostile Korvax Rank: Annoyance
                                { "Russian", "Новый ранг: Недовольство Корваксов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "OSD_EXP_PLAYER_RANK_LOW" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Ранг врага корваксов: раздражающий
                                -- Hostile Korvax Rank: Irritation
                                { "Russian", "Новый ранг: Раздражение Корваксов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "OSD_EXP_PLAYER_RANK_NORMAL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Новый ранг у корваксов: темная лошадка
                                -- New Korvax Rank: Unstudied
                                { "Russian", "Новый ранг: Неизученный Корваксами" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "OSD_EXP_PLAYER_RANK_IMPROVED" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Новый ранг у корваксов: интересная личность
                                -- New Korvax Rank: Point of Interest
                                { "Russian", "Новый ранг: Точка интереса Корваксов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "OSD_EXP_PLAYER_RANK_MEDIUM" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Новый ранг у корваксов: объект исследования
                                -- New Korvax Rank: Test Subject
                                { "Russian", "Новый ранг: Подопытный Корваксов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "OSD_EXP_PLAYER_RANK_GOOD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Новый ранг у корваксов: цель исследования
                                -- New Korvax Rank: Research Focus
                                { "Russian", "Новый ранг: Цель исследования Корваксов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "OSD_EXP_PLAYER_RANK_HIGH" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Новый ранг у корваксов: кандидат
                                -- New Korvax Rank: Trial Candidate
                                { "Russian", "Новый ранг: Испытуемый Корваксов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "OSD_EXP_PLAYER_RANK_HIGHEST" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Новый ранг у корваксов: важная шишка
                                -- New Korvax Rank: Significance
                                { "Russian", "Новый ранг: Значимость Корваксов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "OSD_EXP_PLAYER_RANK_HIGHEST1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Новый ранг у корваксов: спаситель
                                -- New Korvax Rank: Saviour
                                { "Russian", "Новый ранг: Спаситель Корваксов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "OSD_EXP_PLAYER_RANK_HIGHEST2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Новый ранг у корваксов: сингулярность
                                -- New Korvax Rank: Singularity
                                { "Russian", "Новый ранг: Сингулярность Корваксов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "OSD_EXP_PLAYER_RANK_HIGHEST3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Новый ранг у корваксов: странник Атласа
                                -- New Korvax Rank: Traveller of the Atlas
                                { "Russian", "Новый ранг: Странник Атласа Корваксов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "OSD_WAR_PLAYER_RANK_BAD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Ранг врага вай’кинов: враг
                                -- Hostile Vy'keen Rank: Enemy
                                { "Russian", "Новый ранг: Враг Вай’кинов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "OSD_WAR_PLAYER_RANK_LOW" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Ранг врага вай’кинов: клеветник
                                -- Hostile Vy'keen Rank: Detractor
                                { "Russian", "Новый ранг: Клеветник Вай’кинов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "OSD_WAR_PLAYER_RANK_NORMAL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Новый ранг у вай’кинов: нейтральный
                                -- New Vy'keen Rank: Neutral
                                { "Russian", "Новый ранг у Вай’кинов: Нейтральный" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "OSD_WAR_PLAYER_RANK_IMPROVED" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Новый ранг у вай’кинов: соучастник
                                -- New Vy'keen Rank: Accomplice
                                { "Russian", "Новый ранг у Вай’кинов: Соучастник" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "OSD_WAR_PLAYER_RANK_MEDIUM" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Новый ранг у вай’кинов: союзник
                                -- New Vy'keen Rank: Ally
                                { "Russian", "Новый ранг: Союзник Вай’кинов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "OSD_WAR_PLAYER_RANK_GOOD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Новый ранг у вай’кинов: близкий союзник
                                -- New Vy'keen Rank: Close Ally
                                { "Russian", "Новый ранг: Близкий союзник Вай’кинов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "OSD_WAR_PLAYER_RANK_HIGH" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Новый ранг у вай’кинов: товарищ
                                -- New Vy'keen Rank: Comrade
                                { "Russian", "Новый ранг: Товарищ Вай’кинов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "OSD_WAR_PLAYER_RANK_HIGHEST" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Новый ранг у вай’кинов: наставник
                                -- New Vy'keen Rank: Preceptor
                                { "Russian", "Новый ранг: Наставник Вай’кинов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "OSD_WAR_PLAYER_RANK_HIGHEST1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Новый ранг у вай’кинов: адъютант
                                -- New Vy'keen Rank: Adjutant
                                { "Russian", "Новый ранг: Адъютант Вай’кинов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "OSD_WAR_PLAYER_RANK_HIGHEST2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Новый ранг у вай’кинов: командор
                                -- New Vy'keen Rank: Commandant
                                { "Russian", "Новый ранг: Командор Вай’кинов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "OSD_WAR_PLAYER_RANK_HIGHEST3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Новый ранг у вай’кинов: тамплиер
                                -- New Vy'keen Rank: Templar
                                { "Russian", "Новый ранг: Тамплиер Вай’кинов" },
                            }
                        },
                        --#endregion

                        --#region ГРУЗОВОЙ КОРАБЛЬ -> ГРУЗОВОЕ СУДНО
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FREIGHTER" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ГРУЗОВОЙ КОРАБЛЬ
                                -- FREIGHTER
                                { "Russian", "ГРУЗОВОЕ СУДНО" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FREIGHTER_TITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ТРЮМ ГРУЗОВОГО КОРАБЛЯ
                                -- FREIGHTER STORAGE
                                { "Russian", "ТРЮМ ГРУЗОВОГО СУДНА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "CURRENT_FREIGHTER_TITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ТЕКУЩИЙ ГРУЗ. КОРАБЛЬ
                                -- CURRENT FREIGHTER
                                { "Russian", "ТЕКУЩЕЕ ГРУЗОВОЕ СУДНО" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NEW_FREIGHTER_TITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- НОВЫЙ ГРУЗОВОЙ КОРАБЛЬ
                                -- NEW FREIGHTER
                                { "Russian", "НОВОЕ ГРУЗОВОЕ СУДНО" },
                            }
                        },
                        { -- это используется в меню сравнения кораблей (класс)
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FREIGHTER_LABEL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Грузовой корабль
                                -- Freighter
                                { "Russian", "Грузовоз" },
                            }
                        },
                        --#endregion

                        --#region перенесено из Farscape 20.09.2024
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "DISC_VIEW_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Просмотреть всю информацию, собранную на этой планете.
                                { "Russian", "Показать информацию о данной планете" },
                            }
                        },
                        -- На странице открытий, в мини-окне о планете
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "DISC_UPLOAD_DESC_NANITES" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Загрузите открытие и получите скопления нанитов (%REWARD%).
                                { "Russian", "Получите %REWARD% нанитов за загрузку открытия" },
                            }
                        },
                        -- на экране откртый при наведении на планету
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "DISC_REPORT_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Отметить это открытие как оскорбительное или неуместное
                                -- Report this discovery as offensive or inappropriate
                                { "Russian", "Пожаловаться на это открытие" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "DISC_CREATURES_STAT_LVL_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Планет, где обнаруж. все виды: %STAT%
                                -- Discovered all species on %STAT% planets
                                { "Russian", "Планет с изученной фауной: %STAT%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "DISC_CREATURES_STAT_LVL_ONE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Планет, где обнаруж. все виды: %STAT%
                                -- Discovered all species on %STAT% planet
                                { "Russian", "Планет с изученной фауной: %STAT%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_MESSAGEMODULE_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. ПОСЛАНИЙ
                                -- MESSAGE MODULE
                                { "Russian", "МОДУЛЬ ПОСЛАНИЙ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_TOWER_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. БАШНИ
                                -- TOWER MODULE
                                { "Russian", "МОДУЛЬ БАШНИ" },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SIGNAL_TIME_FAIL_NOTIFY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TITLE&gt;Срочное событие&lt;&gt;&#xA;Вы потерпели неудачу.&#xA;Вернитесь на базу, чтобы повторить попытку.
                                -- &lt;TITLE&gt;Time Critical Event&lt;&gt;&#xA;Event Failed&#xA;Return to your Base to retry
                                { "Russian", "&lt;TITLE&gt;Срочное событие&lt;&gt;&#xA;Вы потерпели неудачу&#xA;Вернитесь на базу, чтобы повторить попытку" },
                            }
                        },
                        --
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BUY_ACCEPT_ITEM" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Купить за %COST% юн.
                                -- Purchase for %COST% units
                                { "Russian", "Купить за &lt;IMG&gt;UNITSMALL&lt;&gt;%COST%" },
                            }
                        },

                        --#region MISSION_COST_NOCOST_
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "MISSION_COST_NOCOST_BUILDER" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вернитесь к строителю.
                                { "Russian", "Вернитесь к строителю" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "MISSION_COST_NOCOST_FARMER" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вернитесь к фермеру.
                                { "Russian", "Вернитесь к фермеру" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "MISSION_COST_NOCOST_VEHICLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вернитесь к технику.
                                { "Russian", "Вернитесь к технику" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "MISSION_COST_NOCOST_SCIENCE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вернитесь к ученому.
                                { "Russian", "Вернитесь к ученому" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "MISSION_COST_NOCOST_WEAPONS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вернитесь к оружейнику.
                                { "Russian", "Вернитесь к оружейнику" },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "PROD_NIP_SUBTITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Лекарственное вещество
                                -- Medicinal Substance
                                { "Russian", "Лекарственное средство" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TIP_DAMAGEDMACHINE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TITLE&gt;Перехвачен сигнал капсулы&lt;&gt;&#xA;Доступно повышение вместительности экзокостюма
                                -- &lt;TITLE&gt;Drop Pod Signal intercepted&lt;&gt;&#xA;Exosuit capacity upgrade now available
                                { "Russian", "&lt;TITLE&gt;Перехвачен сигнал капсулы&lt;&gt;&#xA;Расширьте вместительность экзокостюма" },
                            }
                        },
                        -- в таком виде не ясно что закреплять, как закреплять итд
                        -- человек сам разберется что делать
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLDBUT_NO" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Не хватает ресурсов. &lt;STELLAR&gt;Закрепите&lt;&gt;, чтобы получить больше информации.
                                -- Insufficient resources - &lt;STELLAR&gt;Pin&lt;&gt; for more information
                                { "Russian", "Не хватает ресурсов" },
                            }
                        },
                        -- особенности англ. языка в отношение измеряемых/неизмеряемых величин
                        -- https://ell.stackexchange.com/questions/340281/
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RARITY_HIGH2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Высокая
                                -- High
                                { "Russian", "Многочисленная" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RARITY_LOW1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Низкая
                                -- Low
                                { "Russian", "Малочисленная" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RARITY_LOW9" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Малочисленная
                                -- Few
                                { "Russian", "Немногочисленная" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TIP_PLAQUE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TITLE&gt;Обнаружен сигнал инопланетного артефакта&lt;&gt;&#xA;Доступен язык местных инопланетян
                                -- &lt;TITLE&gt;Alien Artifact signature detected&lt;&gt;&#xA;Language of local alien species available
                                { "Russian", "&lt;TITLE&gt;Обнаружен сигнал инопланетного артефакта&lt;&gt;&#xA;Выучите язык местных инопланетян" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TIP_TERMINAL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TITLE&gt;Обнаружен позывной терминала&lt;&gt;&#xA;Возможна торговля
                                -- &lt;TITLE&gt;Remote Terminal callsign received&lt;&gt;&#xA;Trading uplink open and online
                                { "Russian", "&lt;TITLE&gt;Получен позывной удаленного терминала&lt;&gt;&#xA;Канал торговли открыт и доступен" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TIP_RADIOTOWER" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TITLE&gt;Получен позывной радиомачты&lt;&gt;&#xA;Доступны координаты сигнала бедствия
                                -- &lt;TITLE&gt;Transmission Tower callsign received&lt;&gt;&#xA;Starship distress signal coordinates accessible
                                { "Russian", "&lt;TITLE&gt;Получен позывной радиомачты&lt;&gt;&#xA;Добудьте координаты сигнала бедствия звездолёта" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TIP_ABANDONED" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TITLE&gt;Обнаружено заброшенное здание&lt;&gt;&#xA;Доступна редкая технология
                                -- &lt;TITLE&gt;Abandoned Building detected&lt;&gt;&#xA;Rare technology available
                                { "Russian", "&lt;TITLE&gt;Обнаружено заброшенное здание&lt;&gt;&#xA;Найдите редкую технологию" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TIP_OBSERVATORY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TITLE&gt;Перехвачен позывной обсерватории&lt;&gt;&#xA;Доступны координаты внешней трансляции
                                -- &lt;TITLE&gt;Observatory callsign intercepted&lt;&gt;&#xA;Off-planet transmission locations accessible
                                { "Russian", "&lt;TITLE&gt;Перехвачен позывной обсерватории&lt;&gt;&#xA;Узнайте местоположение внешней трансляции" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TIP_DISTRESSSIGNAL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TITLE&gt;Перехвачен сигнал бедствия&lt;&gt;&#xA;Возмож. ремонт заброш. звездолета
                                -- &lt;TITLE&gt;Intercepted Starship Distress Signal&lt;&gt;&#xA;Abandoned starship available to claim and repair
                                { "Russian", "&lt;TITLE&gt;Перехвачен сигнал бедствия звездолёта&lt;&gt;&#xA;Почините звездолёт и завладейте им" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TIP_HARVESTER" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TITLE&gt;Перехвачен сигнал центра управления&lt;&gt;&#xA;Обнаружена закодированная инопланетная программа
                                -- &lt;TITLE&gt;Intercepted Operations Centre signal&lt;&gt;&#xA;Secure alien installation detected
                                { "Russian", "&lt;TITLE&gt;Перехвачен сигнал центра управления&lt;&gt;&#xA;Обнаружено охраняемое инопланетное сооружение" },
                            }
                        },

                        --#region Призвать вездеход
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SUMMON_WHEELEDBIKE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Призвать вездеход «Пилигрим»
                                { "Russian", "Вызвать «Пилигрима»" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SUMMON_HOVERSHIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Призвать вездеход «Стрекоза»
                                { "Russian", "Вызвать «Стрекозу»" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SUMMON_BIKE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Призвать вездеход «Кочевник»
                                { "Russian", "Вызвать «Кочевника»" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SUMMON_BUGGY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Призвать вездеход «Скиталец»
                                { "Russian", "Вызвать «Скитальца»" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SUMMON_TRUCK" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Призвать вездеход «Колосс»
                                { "Russian", "Вызвать «Колосс»" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SUMMON_SUBMARINE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Призвать подводную лодку «Наутилон»
                                -- Summon Nautilon Submarine
                                { "Russian", "Вызвать подводную лодку «Наутилон»" },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "QUICK_MENU_HOTKEYS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;HOTKEY1&lt;&gt; И &lt;IMG&gt;HOTKEY2&lt;&gt; Быстрая привязка
                                -- &lt;IMG&gt;HOTKEY1&lt;&gt; &amp; &lt;IMG&gt;HOTKEY2&lt;&gt; Quick Bind
                                { "Russian", "&lt;IMG&gt;HOTKEY1&lt;&gt; + &lt;IMG&gt;HOTKEY2&lt;&gt; Быстрая привязка" },
                            }
                        },

                        --#region кавычки, которые НИКТО не просил!
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "JM_00" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- «АПОЛЛОН»
                                -- APOLLO
                                { "Russian", "АПОЛЛОН" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "JM_01" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- «ПАТФАЙНДЕР»
                                { "Russian", "ПАТФАЙНДЕР" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "JM_02" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- «ЮНОНА»
                                { "Russian", "ЮНОНА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "JM_03" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- «РОЗЕТТА»
                                { "Russian", "РОЗЕТТА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "JM_04" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- «КАССИНИ»
                                { "Russian", "КАССИНИ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "JM_05" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- «КЕПЛЕР»
                                { "Russian", "КЕПЛЕР" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "JM_06" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- «РАССВЕТ»
                                -- DAWN
                                { "Russian", "РАССВЕТ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "JM_07" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- «КЬЮРИОСИТИ»
                                -- CURIOSITY
                                { "Russian", "КЬЮРИОСИТИ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "JM_08" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- «ХАББЛ»
                                { "Russian", "ХАББЛ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "JM_09" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- «ВИКИНГ»
                                { "Russian", "ВИКИНГ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "JM_10" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- «МАГЕЛЛАН»
                                { "Russian", "МАГЕЛЛАН" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "JM_11" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- «ГАЛИЛЕО»
                                { "Russian", "ГАЛИЛЕО" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "JM_00_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Аполлон
                                -- Apollo
                                { "Russian", "Аполлон" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "JM_01_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Следопыт
                                -- Pathfinder
                                { "Russian", "Патфайндер" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "JM_02_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- «Юнона»
                                { "Russian", "Юнона" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "JM_03_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- «Розетта»
                                { "Russian", "Розетта" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "JM_04_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- «Кассини»
                                { "Russian", "Кассини" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "JM_05_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- «Кеплер»
                                { "Russian", "Кеплер" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "JM_06_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- «Рассвет»
                                -- Dawn
                                { "Russian", "Рассвет" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "JM_07_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- диковинка
                                -- Curiosity
                                { "Russian", "Кьюриосити" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "JM_08_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- «Хаббл»
                                { "Russian", "Хаббл" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "JM_09_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- «Викинг»
                                { "Russian", "Викинг" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "JM_10_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- «Магеллан»
                                { "Russian", "Магеллан" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "JM_11_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- «Галилео»
                                { "Russian", "Галилео" },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RELIC_GATE_SUCCESS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Древний варп-проход: переход успешен. Пройденное расстояние: %DISTANCE%
                                -- Ancient Warp Pathway Successful. Distance Travelled %DISTANCE%
                                { "Russian", "Выполнен прыжок через древние врата&#xA;Пройденное расстояние: %DISTANCE%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NOTIFY_NORUN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Заряд ускорения истощен&lt;&gt;&#xA;Дождитесь восстановления выносливости&#xA;Приобретите &lt;TECHNOLOGY&gt;улучшения&lt;&gt; выносливости на космической станции
                                -- &lt;STELLAR&gt;Sprint Depleted&lt;&gt;&#xA;Wait for stamina to recharge&#xA;Purchase stamina &lt;TECHNOLOGY&gt;upgrades&lt;&gt; at a Space Station
                                { "Russian", "&lt;STELLAR&gt;Заряд ускорения истощен&lt;&gt;&#xA;Дождитесь восстановления выносливости&#xA;Приобретайте &lt;TECHNOLOGY&gt;улучшения&lt;&gt; выносливости&#xA;на космических станциях" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "PROC_FLAVOUR_FACTORY_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сборка %PROCNAME%
                                -- %PROCNAME% Assembly
                                { "Russian", "Сборочный цех %PROCNAME%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "PROC_FLAVOUR_ATLAS_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Единство %PROCNAME%
                                -- %PROCNAME% Convergence
                                { "Russian", "Конвергенция %PROCNAME%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLUEPRINT_AWARD_TITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вы получили %SET_NAME% — изучено предметов: %NUMBER%
                                -- %SET_NAME% received - %NUMBER% items learned
                                { "Russian", "%SET_NAME%, %NUMBER% шт. получены и изучены" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "JM_NEXT_COMPLETE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Максимальный этап
                                -- Maximum Milestone
                                { "Russian", "Последний этап" },
                            }
                        },
                        -- "Требуется: Продвинутый расщепитель" обрезается на последней букве "ь"
                        -- как всегда, одна буква решает
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "INTERACTION_COST_TECH" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Требуется: %TECH%
                                -- %TECH% required
                                { "Russian", "Нужно: %TECH%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "PRODUCT_REQ_TITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Требуются детали
                                -- Required Parts
                                { "Russian", "Требуемые компоненты" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "INTRCT_CLAIM_BASE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- База с возможностью заселения
                                -- Habitable Base
                                { "Russian", "Жилая база" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TIP_BASE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TITLE&gt;База с возможностью заселения&lt;&gt;&#xA;Провозгласить своей планетой
                                -- &lt;TITLE&gt;Habitable Base&lt;&gt;&#xA;Claim Home Planet
                                { "Russian", "&lt;TITLE&gt;Жилая база&lt;&gt;&#xA;Объявить родной планетой" },
                            }
                        },

                        --#region %RACE%"
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "INTRCT_SHIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Корабль %RACE%
                                { "Russian", "Корабль %RACE%ов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "INTRCT_OUTPOST" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Аванпост %RACE%
                                { "Russian", "Аванпост %RACE%ов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "INTRCT_SPACE_STN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Космическая станция %RACE%
                                { "Russian", "Космическая станция %RACE%ов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "INTRCT_RADIO_TWR" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Радиомачта %RACE%
                                -- %RACE% Transmission Tower
                                { "Russian", "Радиомачта %RACE%ов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "INTRCT_MONOLITH" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Монолит %RACE%
                                { "Russian", "Монолит %RACE%ов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "INTRCT_FACTORY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Завод %RACE%
                                { "Russian", "Завод %RACE%ов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "INTRCT_EMPTY_SHIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Брошенный корабль %RACE%
                                { "Russian", "Брошенный корабль %RACE%ов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "INTRCT_HARVESTER" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Центр управления %RACE%
                                { "Russian", "Центр управления %RACE%ов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "INTRCT_OBSERVATORY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обсерватория %RACE%
                                { "Russian", "Обсерватория %RACE%ов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "INTRCT_TRADING_PST" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Торговый пункт %RACE%
                                { "Russian", "Торговый пункт %RACE%ов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "INTRCT_DISTRESS_BECN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Аварийный маяк %RACE%
                                { "Russian", "Аварийный маяк %RACE%ов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "INTRCT_PLAQUE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Плита %RACE%
                                { "Russian", "Плита %RACE%ов" },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NOTIFY_ARTIFACTS_REMIND" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Продукт &lt;TRADEABLE&gt;%PRODUCT%&lt;&gt; можно предложить расе &lt;COMMODITY&gt;%RACE%&lt;&gt;,&#xA;чтобы улучшить ваши отношения.
                                -- This &lt;TRADEABLE&gt;%PRODUCT%&lt;&gt; can be offered to the &lt;COMMODITY&gt;%RACE%&lt;&gt;&#xA;to improve your standing.
                                { "Russian", "&lt;TRADEABLE&gt;%PRODUCT%&lt;&gt;, в качестве подарка &lt;COMMODITY&gt;%RACE%ам&lt;&gt;,&#xA;поможет улучшить ваши отношения" },
                            }
                        },

                        --#region NEWPROD3_NAME
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NEWPROD3_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КУБ ЕДИНСТВА КОРВАКСОВ
                                -- CONVERGENCE CUBE
                                { "Russian", "КУБ ЕДИНСТВА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NEWPROD3_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Куб Единства корваксов
                                -- Convergence Cube
                                { "Russian", "Куб Единства" },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NOTIFY_HIT_ENERGY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- СИСТЕМА ЖИЗНЕОБЕСПЕЧЕНИЯ НЕДОСТУПНА
                                -- LIFE SUPPORT OFFLINE
                                { "Russian", "СИСТЕМА ЖИЗНЕОБЕСПЕЧЕНИЯ ОТКЛЮЧЕНА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NOTIFY_NOJETPACK" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Заряд реактивного ранца истощен&lt;&gt;&#xA;Дождитесь перезарядки реактивного ранца&#xA;Приобретите &lt;TECHNOLOGY&gt;улучшения&lt;&gt; реактивного ранца на космической станции
                                -- &lt;STELLAR&gt;Jetpack Depleted&lt;&gt;&#xA;Wait for jetpack to recharge&#xA;Purchase jetpack &lt;TECHNOLOGY&gt;upgrades&lt;&gt; at a Space Station
                                { "Russian", "&lt;STELLAR&gt;Заряд реактивного ранца истощен&lt;&gt;&#xA;Дождитесь перезарядки реактивного ранца&#xA;Приобретайте &lt;TECHNOLOGY&gt;улучшения&lt;&gt; реактивного ранца&#xA;на космической станции" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NOTIFY_PRODUCT_UNKOWN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %TITLE%&#xA;Купите %PRODUCT% на одном из терминалов&#xA;Занимайтесь торговлей на космических станциях и аванпостах
                                -- %TITLE%&#xA;Purchase %PRODUCT% at Terminals&#xA;Trade at Space Stations and Outposts
                                { "Russian", "%TITLE%&#xA;Купите %PRODUCT% в терминале&#xA;Торгуйте на космических станциях и аванпостах" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NOTIFY_CREATURE_SCAN_HINT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TITLE&gt;Проанализировать и загрузить открытия&lt;&gt;&#xA;Удерживайте &lt;IMG&gt;AIM&lt;&gt;, чтобы использовать анализатор&#xA;Удерживайте существо в прицеле, чтобы провести анализ
                                -- &lt;TITLE&gt;Analyse and Upload Discoveries&lt;&gt;&#xA;Hold &lt;IMG&gt;AIM&lt;&gt; to use Analyser&#xA;Target and track a creature to analyse
                                { "Russian", "&lt;TITLE&gt;Проанализируйте и загрузите открытия&lt;&gt;&#xA;Удерживайте &lt;IMG&gt;AIM&lt;&gt;, чтобы использовать анализатор&#xA;Удерживайте существо в прицеле, чтобы провести анализ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NOTIFY_GATHER_REPAIR2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите %AMOUNT1% и %AMOUNT2%&#xA;чтобы отремонтировать %TECH%
                                -- Gather %AMOUNT1% and %AMOUNT2%&#xA;to repair %TECH%
                                { "Russian", "Соберите %AMOUNT1% и %AMOUNT2%,&#xA;чтобы отремонтировать %TECH%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NOTIFY_GATHER_BUILD2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите %AMOUNT1% и %AMOUNT2%&#xA;чтобы создать %TECH%
                                -- Gather %AMOUNT1% and %AMOUNT2%&#xA;to build %TECH%
                                { "Russian", "Соберите %AMOUNT1% и %AMOUNT2%,&#xA;чтобы создать %TECH%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NOTIFY_REPAIR_GETIN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TITLE&gt;Покинуть планету&lt;&gt;&#xA;Найдите разбившийся звездолет&#xA;Удерживайте &lt;IMG&gt;INTERACT&lt;&gt;, для взаимодействия
                                -- &lt;TITLE&gt;Leave Planet&lt;&gt;&#xA;Find your crashed Starship&#xA;Hold &lt;IMG&gt;INTERACT&lt;&gt; to Interact
                                { "Russian", "&lt;TITLE&gt;Покиньте планету&lt;&gt;&#xA;Найдите разбившийся звездолёт&#xA;Удерживайте &lt;IMG&gt;INTERACT&lt;&gt;, для взаимодействия" },
                            }
                        },

                        --#region NOTIFY_REPAIR_SHIP
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NOTIFY_REPAIR_SHIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TITLE&gt;Покинуть планету&lt;&gt;&#xA;Отремонтировать взлетные ускорители &lt;IMG&gt;NOTICK&lt;&gt;&#xA;Отремонтировать импульсный двигатель &lt;IMG&gt;NOTICK&lt;&gt;&#xA;Заправить взлетные ускорители &lt;IMG&gt;NOTICK&lt;&gt;
                                -- &lt;TITLE&gt;Leave Planet&lt;&gt;&#xA;Repair Launch Thrusters &lt;IMG&gt;NOTICK&lt;&gt;&#xA;Repair Pulse Engine &lt;IMG&gt;NOTICK&lt;&gt;&#xA;Refuel Launch Thrusters &lt;IMG&gt;NOTICK&lt;&gt;
                                { "Russian", "&lt;TITLE&gt;Покиньте планету&lt;&gt;&#xA;Почините взлетные ускорители &lt;IMG&gt;NOTICK&lt;&gt;&#xA;Почините импульсный двигатель &lt;IMG&gt;NOTICK&lt;&gt;&#xA;Заправьте взлетные ускорители &lt;IMG&gt;NOTICK&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NOTIFY_REPAIR_SHIP_THRUSTERS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TITLE&gt;Отремонтируйте взлетные ускорители звездолета&lt;&gt;
                                { "Russian", "&lt;TITLE&gt;Почините взлетные ускорители звездолёта&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NOTIFY_REPAIR_SHIP_ENGINE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TITLE&gt;Отремонтируйте импульсный двигатель звездолета&lt;&gt;
                                { "Russian", "&lt;TITLE&gt;Почините импульсный двигатель звездолёта&lt;&gt;" },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "WAR_FAC_OPT_B_21" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Звездолет
                                -- Starship
                                { "Russian", "Звездолёт" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SHIP_MARKER" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Ваш звездолет
                                -- YOUR STARSHIP
                                { "Russian", "ВАШ ЗВЕЗДОЛЁТ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SHIP_MARKER_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Ваш звездолет
                                -- Your Starship
                                { "Russian", "Ваш звездолёт" },
                            }
                        },
                        -- не влазеет (6 строк)
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "WAR_HARV_DESC_6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Я обнаруживаю сообщение, отправленное с другой планеты и адресованное оператору этой станции. Оно удивительно сентиментальное. В нем я обнаруживаю изображения воина-младенца, потом того же существа уже в виде забрызганного кровью подростка: он гордо вцепился в горло какого-то копытного зверя.
                                -- I find an off-world message intended for a creature posted in this station. It's oddly sentimental. Images of an infant warrior can be seen, then a picture of the same creature as a bloodied adolescent – proudly biting into the throat of a hoofed beast.
                                { "Russian", "Я обнаруживаю сообщение, отправленное с другой планеты и адресованное оператору этой станции. Оно удивительно сентиментальное.&#xA;&#xA;В нем я обнаруживаю изображения воина-младенца, потом того же существа уже в виде забрызганного кровью подростка: он гордо вцепился в горло какого-то копытного зверя." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BUY_SHIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Купить звездолет
                                -- BUY THE STARSHIP
                                { "Russian", "КУПИТЬ ЗВЕЗДОЛЁТ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NPC_TRADER_BUY_SHIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Купить звездолет
                                -- Make an offer on the lifeform's starship
                                { "Russian", "Купить звездолёт" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "CALLSHIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вызвать звездолет
                                -- Call starship
                                { "Russian", "Вызвать звездолёт" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BUY_DECLINE_DESC_ABAND_SHIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Не трогать звездолет
                                -- Leave the starship alone
                                { "Russian", "Не трогать звездолёт" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SHIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ЗВЕЗДОЛЕТ
                                -- STARSHIP
                                { "Russian", "ЗВЕЗДОЛЁТ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BASESTATS_TYPE_SHIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ЗВЕЗДОЛЕТ
                                -- STARSHIP
                                { "Russian", "ЗВЕЗДОЛЁТ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NOTIFY_HAZ_CRIT_TOXIC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ВЫСОКАЯ ТОКСИЧНОСТЬ: %LEVEL%
                                -- EXTREME TOXICITY %LEVEL%
                                { "Russian", "ВЫСОКАЯ ТОКСИЧНОСТЬ — %LEVEL%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NOTIFY_HAZ_WATER_TOXIC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ВЫСОКАЯ ТОКСИЧНОСТЬ ВОДЫ: %LEVEL%
                                -- EXTREME WATER TOXICITY %LEVEL%
                                { "Russian", "ВЫСОКАЯ ТОКСИЧНОСТЬ ВОДЫ — %LEVEL%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NOTIFY_HAZ_CAVE_TOXIC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ВЫСОКАЯ ТОКСИЧНОСТЬ ПЕЩЕРЫ: %LEVEL%
                                -- EXTREME CAVE TOXICITY %LEVEL%
                                { "Russian", "ВЫСОКАЯ ТОКСИЧНОСТЬ ПЕЩЕРЫ — %LEVEL%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NOTIFY_HAZ_NIGHT_TOXIC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ВЫСОКАЯ НОЧНАЯ ТОКСИЧНОСТЬ: %LEVEL%
                                -- EXTREME NIGHT TOXICITY %LEVEL%
                                { "Russian", "ВЫСОКАЯ НОЧНАЯ ТОКСИЧНОСТЬ — %LEVEL%" },
                            }
                        },

                        --#region ОПАСНАЯ.*ТЕМПЕРАТУРА
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NOTIFY_HAZ_CRIT_HEAT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ОПАСНАЯ ТЕМПЕРАТУРА: %LEVEL%°C
                                -- EXTREME TEMPERATURE %LEVEL%°C
                                { "Russian", "ОПАСНАЯ ТЕМПЕРАТУРА %LEVEL%°C" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NOTIFY_HAZ_CRIT_COLD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ОПАСНАЯ ТЕМПЕРАТУРА: %LEVEL%°C
                                { "Russian", "ОПАСНАЯ ТЕМПЕРАТУРА %LEVEL%°C" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NOTIFY_HAZ_WATER_HEAT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ОПАСНАЯ ТЕМПЕРАТУРА ВОДЫ: %LEVEL%°C
                                -- EXTREME WATER TEMPERATURE %LEVEL%°C
                                { "Russian", "ОПАСНАЯ ТЕМПЕРАТУРА ВОДЫ %LEVEL%°C" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NOTIFY_HAZ_WATER_COLD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ОПАСНАЯ ТЕМПЕРАТУРА ВОДЫ: %LEVEL%°C
                                { "Russian", "ОПАСНАЯ ТЕМПЕРАТУРА ВОДЫ %LEVEL%°C" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NOTIFY_HAZ_CAVE_HEAT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ОПАСНАЯ ТЕМПЕРАТУРА ПЕЩЕРЫ: %LEVEL%°C
                                { "Russian", "ОПАСНАЯ ТЕМПЕРАТУРА ПЕЩЕРЫ %LEVEL%°C" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NOTIFY_HAZ_CAVE_COLD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ОПАСНАЯ ТЕМПЕРАТУРА ПЕЩЕРЫ: %LEVEL%°C
                                { "Russian", "ОПАСНАЯ ТЕМПЕРАТУРА ПЕЩЕРЫ %LEVEL%°C" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NOTIFY_HAZ_NIGHT_HEAT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ОПАСНАЯ НОЧНАЯ ТЕМПЕРАТУРА: %LEVEL%°C
                                { "Russian", "ОПАСНАЯ НОЧНАЯ ТЕМПЕРАТУРА %LEVEL%°C" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NOTIFY_HAZ_NIGHT_COLD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ОПАСНАЯ НОЧНАЯ ТЕМПЕРАТУРА: %LEVEL%°C
                                { "Russian", "ОПАСНАЯ НОЧНАЯ ТЕМПЕРАТУРА %LEVEL%°C" },
                            }
                        },
                        --#endregion

                        --#region РАД.*LEVEL
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NOTIFY_HAZ_CRIT_RADIATION" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ОПАСНЫЙ УРОВЕНЬ РАДИАЦИИ: %LEVEL% Зв
                                { "Russian", "ОПАСНЫЙ УРОВЕНЬ РАДИАЦИИ — %LEVEL% Зв" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NOTIFY_HAZ_WATER_RADIATION" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ОПАСНЫЙ УРОВЕНЬ РАДИАЦИИ В ВОДЕ: %LEVEL% Зв
                                { "Russian", "ОПАСНЫЙ УРОВЕНЬ РАДИАЦИИ В ВОДЕ — %LEVEL% Зв" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NOTIFY_HAZ_CAVE_RADIATION" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ОПАСНЫЙ УРОВЕНЬ РАДИАЦИИ В ПЕЩЕРЕ: %LEVEL% Зв
                                { "Russian", "ОПАСНЫЙ УРОВЕНЬ РАДИАЦИИ В ПЕЩЕРЕ — %LEVEL% Зв" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NOTIFY_HAZ_ALTITUDE_RADIATION" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- УРОВЕНЬ РАДИАЦИИ НА ВОЗВЫШЕННОСТИ: %LEVEL% Зв
                                -- HIGH ALTITUDE RADIATION %LEVEL% Sv
                                { "Russian", "УРОВЕНЬ РАДИАЦИИ НА ВОЗВЫШЕННОСТИ — %LEVEL% Зв" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NOTIFY_HAZ_STORM_RADIATION" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- УРОВЕНЬ РАДИАЦИИ БУРИ: %LEVEL% Зв
                                -- STORM RADIATION %LEVEL% Sv
                                { "Russian", "УРОВЕНЬ РАДИАЦИИ БУРИ — %LEVEL% Зв" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NOTIFY_HAZ_NIGHT_RADIATION" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ВЫСОКИЙ УРОВЕНЬ НОЧНОЙ РАДИАЦИИ: %LEVEL% Зв
                                { "Russian", "ВЫСОКИЙ УРОВЕНЬ НОЧНОЙ РАДИАЦИИ — %LEVEL% Зв" },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "CURRENT_SHIP_TITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ТЕКУЩИЙ ЗВЕЗДОЛЕТ
                                { "Russian", "ТЕКУЩИЙ ЗВЕЗДОЛЁТ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NEW_SHIP_TITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- НОВЫЙ ЗВЕЗДОЛЕТ
                                { "Russian", "НОВЫЙ ЗВЕЗДОЛЁТ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ABANDONED_SHIP_TITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ЗАБРОШЕННЫЙ ЗВЕЗДОЛЕТ
                                { "Russian", "ЗАБРОШЕННЫЙ ЗВЕЗДОЛЁТ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BUY_DECLINE_DESC_SHIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Отказаться от звездолета
                                { "Russian", "Отказаться от звездолёта" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "VEHICLE_BIKE_TITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ВЕЗДЕХОД
                                -- NOMAD
                                { "Russian", "КОЧЕВНИК" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "VEHICLE_BIKE_TITLE_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вездеход
                                { "Russian", "Кочевник" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "DIST_STAT_07_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вездеход
                                -- Nomad
                                { "Russian", "Кочевник" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "VEHICLE_BUGGY_TITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ВЕЗДЕХОД
                                -- ROAMER
                                { "Russian", "СКИТАЛЕЦ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "VEHICLE_BUGGY_TITLE_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вездеход
                                { "Russian", "Скиталец" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "VEHICLE_TRUCK_TITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ВЕЗДЕХОД
                                -- COLOSSUS
                                { "Russian", "КОЛОСС" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "VEHICLE_TRUCK_TITLE_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вездеход
                                { "Russian", "Колосс" },
                            }
                        },

                        --#region [щЩ]елочн
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "WAR_NPC_DESC_11_TOX" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Всю шею воина покрывают рваные красные раны от укусов. На груди видны следы когтей, и сигналы экзокостюма светятся красным. Из раны сочится странная щелочная слизь.
                                { "Russian", "Всю шею воина покрывают рваные красные раны от укусов. На груди видны следы когтей, и сигналы экзокостюма светятся красным. Из раны сочится странная щелочная слизь." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "WAR_NPC_DESC_13A_TOX" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Я обдумываю предложение. Я слышу лишь мягкий стук щелочного дождя по изношенной крыше здания.&lt;DELAY&gt;0.4&lt;&gt; Это ловушка? Испытание? Воин показывает, что готов торговать...
                                { "Russian", "Я обдумываю предложение. Я слышу лишь мягкий стук щелочного дождя по изношенной крыше здания.&lt;DELAY&gt;0.4&lt;&gt; Это ловушка? Испытание? Воин показывает, что готов торговать..." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "WAR_NPC_DESC_17_TOX" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- При моем приближении воин раздувает ноздри. Он глубоко вдыхает, пробуя на вкус затхлый щелочной запах токсичного дождя, оставшегося на моем экзокостюме.&#xA;Существо предупреждающе рявкает. Я спешу жестами показать, что не желаю зла, а также очень плохо понимаю его язык.
                                { "Russian", "При моем приближении воин раздувает ноздри. Он глубоко вдыхает, пробуя на вкус затхлый щелочной запах токсичного дождя, оставшегося на моем экзокостюме.&#xA;Существо предупреждающе рявкает. Я спешу жестами показать, что не желаю зла, а также очень плохо понимаю его язык." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TRA_FAC_RES_A_23" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Щелочной раствор с резким шипящим звуком заполняет трубы комплекса. Все оборудование, словно напрягаясь, пытается освободиться от закупорки механизмов.&#xA;С резким щелчком комплекс вдруг вновь оживает. По-видимому останки существа, мешавшие работе комплекса, наконец вымыло.
                                { "Russian", "Щелочной раствор с резким шипящим звуком заполняет трубы комплекса. Все оборудование, словно напрягаясь, пытается освободиться от закупорки механизмов.&#xA;С резким щелчком комплекс вдруг вновь оживает. По-видимому останки существа, мешавшие работе комплекса, наконец вымыло." },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SECTOR_WATER8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соленое море %SECTOR%
                                -- The Briny %SECTOR%
                                { "Russian", "Солёное море %SECTOR%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "DISC_UI_ALL_SYSTEMS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПОСЕЩЕННЫЕ СИСТЕМЫ
                                -- VISITED SYSTEMS
                                { "Russian", "ПОСЕЩЁННЫЕ СИСТЕМЫ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TRA_MON_DESC_15" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Я наблюдаю за происходящим со стороны. Я вижу, как клювоносые торговцы в современных экзокостюмах что-то оставляют у подножья монолита. Этот предмет представляет собой странную комбинацию проводов и резервуаров. Они заряжают его с помощью странного металла и быстро уходят.&#xA;&#xA;Будто во сне я подхожу к древнему камню. Внезапно все начинает казаться совершенно реальным. Я нахожусь в недавнем прошлом.
                                -- I am an observer. I witness beaked traders dressed in modern Exosuits leaving an object at the base of a Monolith. It is a small mesh of wires and canisters. They charge it with a strange metal, then quickly depart.&#xA;&#xA;As if in a dream, I approach the ancient edifice. It all suddenly feels real. I live and breathe in the recent past.
                                { "Russian", "Я наблюдаю за происходящим со стороны. Я вижу, как клювоносые торговцы в современных экзокостюмах что-то оставляют у подножья монолита.&#xA;Этот предмет представляет собой странную комбинацию проводов и резервуаров. Они заряжают его с помощью странного металла и быстро уходят.&#xA;&#xA;Будто во сне я подхожу к древнему камню. Внезапно все начинает казаться совершенно реальным. Я нахожусь в недавнем прошлом." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "EXP_MON_DESC_19" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Я чувствую слабость. Более того, мне начинает казаться, что меня поразила какая-то болезнь. Оглядываясь, я вижу, что вся растительность, окружающая это древнее сооружение, высохла и постепенно умирает. Все живые существа на этой планете стараются держаться от монолита подальше.&#xA;Я смотрю, как на камне само по себе вырезается предупреждение словами древнего языка...
                                { "Russian", "Я чувствую слабость. Более того, мне начинает казаться, что меня поразила какая-то болезнь.&#xA;Оглядываясь, я вижу, что вся растительность, окружающая это древнее сооружение, высохла и постепенно умирает. Все живые существа на этой планете стараются держаться от монолита подальше.&#xA;Я смотрю, как на камне само по себе вырезается предупреждение словами древнего языка..." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "CHARGE_SUBTITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Собирайте %SUBSTANCE%, чтобы зарядить: %TECH%
                                -- Collect %SUBSTANCE% to charge up your %TECH%
                                { "Russian", "Соберите %SUBSTANCE%, чтобы зарядить: %TECH%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "EXP_MON_DESC_4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Из портала возникает мерцающее отражение моего собственного тела. Оно повторяет за мной каждое движение. Я машу рукой — и оно машет. Я поднимаю мультитул — и оно. Двойник делает движение, как будто чего-то хочет, и мы оба отшатываемся друг от друга, когда я понимаю, что инстинктивно копирую его.&#xA;&#xA;Его тело мерцает, но оборудование выглядит настоящим. Его мультитул выглядит лучше моего. Аномалия измерений исчезает.
                                { "Russian", "Из портала возникает мерцающее отражение моего собственного тела. Оно повторяет за мной каждое движение.&#xA;Я машу рукой — и оно машет. Я поднимаю мультитул — и оно. Двойник делает движение, как будто чего-то хочет, и мы оба отшатываемся друг от друга, когда я понимаю, что инстинктивно копирую его.&#xA;&#xA;Его тело мерцает, но оборудование выглядит настоящим. Его мультитул выглядит лучше моего. Аномалия измерений исчезает." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TRA_MON_DESC_13" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Время отматывается назад. Я сижу на платформе и наблюдаю сцену казни. Передо мной на коленях стоят двое небольших клювоносых торговцев. Один очень маленький и худощавый, другой же — тучный с зобом, свисающим до земли. Стоящее за ними создание в маске из зеленой ткани заносит над ними топор.
                                { "Russian", "Время отматывается назад. Я сижу на платформе и наблюдаю сцену казни.&#xA;Передо мной на коленях стоят двое небольших клювоносых торговцев. Один очень маленький и худощавый, другой же — тучный с зобом, свисающим до земли. Стоящее за ними создание в маске из зеленой ткани заносит над ними топор." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "EXP_MON_DESC_9" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- На поверхности монолита медленно вращаются два каменных блока. Две точки красного света рисуют на каждом из них изображение. Затем красные точки соединяются и превращаются в жидкость в углублении внизу. Чем ближе я подхожу, тем больше волнуется красная жидкость.&#xA;&#xA;На обоих изображениях — электронные формы жизни в масках. На первом изображении форма жизни поглощает силу, чтобы освободиться от оков. На втором существо прячется от своих захватчиков.
                                { "Russian", "На поверхности монолита медленно вращаются два каменных блока. Две точки красного света рисуют на каждом из них изображение. Затем красные точки соединяются и превращаются в жидкость в углублении внизу.&#xA;Чем ближе я подхожу, тем больше волнуется красная жидкость.&#xA;&#xA;На обоих изображениях — электронные формы жизни в масках. На первом изображении форма жизни поглощает силу, чтобы освободиться от оков. На втором существо прячется от своих захватчиков." },
                            }
                        },
                    }
                },
            }
        }
    }
}
