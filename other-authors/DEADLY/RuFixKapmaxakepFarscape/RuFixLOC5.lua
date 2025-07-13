NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]  = "_RuFixLOC5.pak",
    ["MOD_AUTHOR"]    = "gh0stwizard",
    ["NMS_VERSION"]   = "5.72",
    ["EXML_CREATE"]   = "false",
    ["MODIFICATIONS"] = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                { -- LANGUAGE/NMS_LOC5_RUSSIAN.MBIN
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_LOC5_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        -- совпадает с UI_TELEPORT_FAVOURITES (LOC9)
                        -- синонимы: наилучшее, лучшее, элитное, отборное
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TELE_FILTER_FEATURED" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Избранное
                                -- Featured
                                { "Russian", "Элитное" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NPC_MAPSHOP_OPT_C" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Приобрести случайную карту
                                -- Purchase random map
                                { "Russian", "Купить случайную карту" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "WEAP_BUY_UNITS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Купить (%COST% &lt;IMG&gt;UNITSMALL&lt;&gt;)
                                -- Buy (%COST% &lt;IMG&gt;UNITSMALL&lt;&gt;)
                                { "Russian", "Купить &lt;IMG&gt;UNITSMALL&lt;&gt;%COST%" },
                            }
                        },
                        --
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SHIP_VALUE_FORMAT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "%AMOUNT% (%BASEAMOUNT% осн.)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_STATION_WELCOME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добро пожаловать на борт,&#xA;%NAME% (Welcome Aboard&#xA;%NAME%)
                                { "Russian", "ДОБРО ПОЖАЛОВАТЬ НА БОРТ&#xA;%NAME%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SALVAGE_TECH_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Ценная деталь разрушенного звездолета, созданная на &lt;TECHNOLOGY&gt;терминале оснащения звездолета&lt;&gt;&lt;TRADEABLE&gt;космической станции&lt;&gt;.&#xA;&#xA;Этот компонент можно сдать в утиль, продав его в &lt;VAL_ON&gt;торговом терминале&lt;&gt;.
                                -- A valuable piece of broken down starship, created by a &lt;TECHNOLOGY&gt;Starship Outfitting Terminal&lt;&gt; at a &lt;TRADEABLE&gt;Space Station&lt;&gt;.&#xA;&#xA;Component is useful only as scrap to be sold at a &lt;VAL_ON&gt;Trade Terminal&lt;&gt;.
                                { "Russian", "Ценная деталь разобранного звездолёта, полученная на &lt;TECHNOLOGY&gt;терминале оснащения звездолёта&lt;&gt; &lt;TRADEABLE&gt;космической станции&lt;&gt;.&#xA;&#xA;Можно продать в &lt;VAL_ON&gt;торговом терминале&lt;&gt; в качестве лома." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DAMAGE_POTENTIAL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Максимальный потенциал урона: &lt;STELLAR&gt;%AMOUNT%&lt;&gt; УВС
                                { "Russian", "Пиковый потенциал урона: &lt;STELLAR&gt;%AMOUNT%&lt;&gt; УВС" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PLANETLABEL_SENTINELS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;EX_SENTINEL&lt;&gt;&lt;FUEL&gt;Агрессивные стражи&lt;&gt;
                                -- &lt;IMG&gt;EX_SENTINEL&lt;&gt; &lt;FUEL&gt;Aggressive Sentinels&lt;&gt;
                                { "Russian", "&lt;IMG&gt;EX_SENTINEL&lt;&gt; &lt;FUEL&gt;Агрессивные стражи&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SUPPLYGRID_LABEL_FULL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Состояние трубопровода: ПОЛНАЯ ЗАГРУЗКА
                                { "Russian", "Состояние: ПОЛНАЯ ЗАГРУЗКА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SUPPLYGRID_LABEL_DC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Состояние трубопровода: НЕ ПОДКЛЮЧЕН
                                { "Russian", "Состояние: НЕ ПОДКЛЮЧЕН" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PLANETLABEL_SENTINELS_MOD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;EX_SENTINEL&lt;&gt;&lt;DISC_STAT&gt;Повышенная активность стражей&lt;&gt;
                                -- &lt;IMG&gt;EX_SENTINEL&lt;&gt; &lt;DISC_STAT&gt;High Sentinel Activity&lt;&gt;
                                { "Russian", "&lt;IMG&gt;EX_SENTINEL&lt;&gt; &lt;DISC_STAT&gt;Повышенная активность стражей&lt;&gt;" },
                            }
                        },
                        -- см. LOC4
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FTH_EXOTIC1_PQ_BLD_LANG_4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Дополнительный элемент синтеза ртути — умелый ремесленник. Подобие-Странник, тебе доводилось видеть созданные им лица? Их не отличить от настоящей плоти.
                                { "Russian", "Товарищ по синтезу ртути — умелый ремесленник. Подобие-Странник, тебе доводилось видеть созданные им лица? Их не отличить от настоящей плоти." },
                            }
                        },
                        -- не влазиет, слишком много строк
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "EXP_SCAVENGER_RES_A_7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- С некоторой неохотой %NAME% позволяет мне осмотреть его панцирь. Я сразу же нахожу причину проблемы: простая физическая помеха движению его суставов. Я аккуратно вытаскиваю несколько овальных предметов из его панциря и отступаю с отвращением, когда из них вылупляются слизнеобразные существа.&#xA;Они быстро расползаются, оставляя следы густой слизи. Кажется, корваксу стало намного легче. Он незаметно переводит мне оплату, а затем отворачивается, отказываясь признавать, что только что произошло.
                                { "Russian", "С некоторой неохотой %NAME% позволяет мне осмотреть его панцирь.&#xA;Я сразу же нахожу причину проблемы: простая физическая помеха движению его суставов. Я аккуратно вытаскиваю несколько овальных предметов из его панциря и отступаю с отвращением, когда из них вылупляются слизнеобразные существа.&#xA;Они быстро расползаются, оставляя следы густой слизи. Кажется, корваксу стало намного легче. Он незаметно переводит мне оплату, а затем отворачивается, отказываясь признавать, что только что произошло." },
                            }
                        },
                        -- дошли руки понять что это такое "Запросить:+1.0%"
                        -- итак, открываем википедию и читаем статью "Закон спроса и предложения"
                        -- там есть картинка Demand, Supply, Equilibrium, Quantity
                        -- Demand в данном случае это не глагол, а существительное с точным переводом "Спрос"
                        -- Т.о. разраб пытается научить детей (и взрослых, которые не изучали экономику)
                        -- как работает рынок.
                        -- По закону спроса получается, что когда в игре растет процент спроса, то
                        -- растет и цена товара, а кол-во товара уменьшается.
                        -- Т.о. при положительном значении спроса выгодно продавать, но не выгодно покупать.
                        -- И наоборот, когда спрос отрицательный, цена ниже, товара больше, выгодно покупать, невыгодно продавать.
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DEMAND_SUFFIX" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- И&lt;NEU_AVG&gt;Запросить:&lt;&gt;%AMOUNT%
                                -- &lt;NEU_AVG&gt;Demand:&lt;&gt; %AMOUNT%
                                { "Russian", "&lt;NEU_AVG&gt;Спрос:&lt;&gt; %AMOUNT%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DEMAND_SUFFIX_ALT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;NEU_AVG&gt;Цена:&lt;&gt;%AMOUNT%
                                -- &lt;NEU_AVG&gt;Price:&lt;&gt; %AMOUNT%
                                { "Russian", "&lt;NEU_AVG&gt;Цена:&lt;&gt; %AMOUNT%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NPC_VISITED" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Посещен
                                -- Visited
                                { "Russian", "Общались ранее" },
                            }
                        },
                        -- сноска под "ПРОЛОЖИТЬ МАРШРУТ" в описании карты
                        -- что в оригинале, что в переводе, нормальные люди не в состоянии понять это предложение
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CHART_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Преобразовать данные в навигационную метку экзокостюма
                                -- Convert data to Exosuit navigation marker
                                { "Russian", "Вычислить координаты местоположения объекта" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "INTRCT_SIT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сидеть
                                -- Sit
                                { "Russian", "Присесть" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_U_PIPELINE_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПИТАЮЩИЙ ТРУБОПРОВОД
                                -- SUPPLY PIPE
                                { "Russian", "ТРУБОПРОВОД СНАБЖЕНИЯ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_U_PIPELINE_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Питающий трубопровод
                                -- Supply Pipe
                                { "Russian", "Трубопровод снабжения" },
                            }
                        },
                        -- экран "Склад снабжения"
                        -- двоеточее лишнее
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SILO_STORING_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Настройка хранилища:
                                -- Storage Configured For
                                { "Russian", "Настройка хранилища" },
                            }
                        },
                        -- "сети" не требуется. то что это сеть написано в заголовке
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SUPPLYGRID_INPUT_LABEL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Скорость добычи сети
                                -- Network Extraction Rate
                                { "Russian", "Скорость добычи" },
                            }
                        },
                        -- на экране установки технологии (в мультитул, например)
                        -- мда, британский промт такой промт
                        -- сократил, т.к. инструкция дублируется при наведении на компонент
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TECH_INSTALL_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Использовать все для установки технологии
                                -- Apply all components to install technology
                                { "Russian", "Установите все компоненты" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_INSTALLED_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Установлена: %TECH%
                                -- %TECH% installed
                                { "Russian", "%TECH% — установлено" },
                            }
                        },
                        -- неблагозвучно; место с этим предложением очень маленького размера, не развернуться
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_INSTALL_COMPONENT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вставьте, чтобы продолжить сборку
                                -- Insert to continue assembly
                                { "Russian", "Установите компонент" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ALL_NPC_OPT_WORD_GET_DIRECT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Символ Странствия
                                -- Travel symbol
                                { "Russian", "Символ странствия" },
                            }
                        },
                        -- делаем по аналогии с аккумулятором
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SILO_LABEL_ON" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Статус хранилища: Пустеет
                                -- Silo Status: Emptying
                                { "Russian", "Статус хранилища: ПУСТЕЕТ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SILO_LABEL_CHARGING" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Статус хранилища: Наполняется
                                -- Silo Status: Filling
                                { "Russian", "Статус хранилища: НАПОЛНЯЕТСЯ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SILO_LABEL_OFF" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Статус хранилища: Пусто
                                -- Silo Status: Empty
                                { "Russian", "Статус хранилища: ПУСТО" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SILO_LABEL_DC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Статус хранилища: Простаивает
                                -- Silo Status: Idle
                                { "Russian", "Статус хранилища: ПРОСТАИВАЕТ" },
                            }
                        },
                        -- это два разных события и значения перевода должны быть разными
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_HOTSPOT_DETECTED" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружено скопление
                                -- Hotspot Detected
                                { "Russian", "Скопление найдено" },
                            }
                        },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "UI_HOTSPOT_DISCOVERED" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Обнаружено скопление
                        --         -- Hotspot Discovered
                        --         { "Russian", "Скопление обнаружено" },
                        --     }
                        -- },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BAIT_HINT_ADV_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Чтобы узнать, какая приманка подойдет тем или иным животным, сканируйте их &lt;TECHNOLOGY&gt;анализирующим визором&lt;&gt;.&#xA;Использовать определенную приманку можно в разделе «Инструменты» в быстром меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;).&#xA;С улучшенной приманкой живые существа могут стать &lt;STELLAR&gt;ездовыми&lt;&gt; или &lt;TRADEABLE&gt;хозяйственными&lt;&gt; животными.&#xA;Создать улучшенную приманку можно в &lt;TECHNOLOGY&gt;переработчике нутриентов&lt;&gt;.
                                -- Scan creatures with the &lt;TECHNOLOGY&gt;Analysis Visor&lt;&gt; to discover their bait&#xA;Deploy specific bait from Utilities in the Quick Menu (&lt;IMG&gt;QUICK_MENU&lt;&gt;)&#xA;Advanced bait allows creatures to be &lt;STELLAR&gt;mounted&lt;&gt; or &lt;TRADEABLE&gt;farmed&lt;&gt;&#xA;Create advanced bait in the &lt;TECHNOLOGY&gt;Nutrient Processor&lt;&gt;
                                { "Russian", "Сканируйте животных &lt;TECHNOLOGY&gt;анализирующим визором&lt;&gt;, чтобы узнать какая приманка подойдет&#xA;Выбирайте приманку в разделе быстрого меню «Инструменты» (&lt;IMG&gt;QUICK_MENU&lt;&gt;)&#xA;Животные могут стать &lt;STELLAR&gt;ездовыми&lt;&gt; или &lt;TRADEABLE&gt;хозяйственными&lt;&gt; поев улучшенную приманку&#xA;Создавайте улучшенную приманку в &lt;TECHNOLOGY&gt;переработчике нутриентов&lt;&gt;" },
                            }
                        },
                        -- прокрутка; это наз-е кнопки внизу на экране обработчика еды
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PANTRY_LABEL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ОТКРЫТЬ ХРАНИЛИЩЕ ИНГРЕДИЕНТОВ
                                -- ACCESS INGREDIENT STORAGE
                                { "Russian", "ОТКРЫТЬ ХРАНИЛИЩЕ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PANTRY_LABEL_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Открыть хранилище ингредиентов
                                -- Access Ingredient Storage
                                { "Russian", "Открыть хранилище" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FREIGHTER_TELEPORT_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Телепортационное устройство грузового судна
                                -- Freighter-Mounted Teleportation Device
                                { "Russian", "Устройство телепортации предметов" },
                            }
                        },
                        -- нету никакой "экспедиции фрегата"
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FRIG_TOKEN_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Технологический модуль, добытый на месте крушения крупного межзвездного корабля. Такие можно найти на &lt;STELLAR&gt;месте крушения грузового судна&lt;&gt; или добыть во время &lt;STELLAR&gt;экспедиции фрегата&lt;&gt;.&#xA;&#xA;В текущем виде совершенно бесполезен, но не исключено, что &lt;TECHNOLOGY&gt;исследовательская станция&lt;&gt; на борту вашего грузового судна сможет превратить его в полезную технологию.
                                -- A technology module harvested from the remains of a large interstellar starship. May be collected from &lt;STELLAR&gt;freighter crashsites&lt;&gt; or salvaged during &lt;STELLAR&gt;frigate expeditions&lt;&gt;.&#xA;&#xA;Useless in its current form, a &lt;TECHNOLOGY&gt;Research Station&lt;&gt; aboard your freighter may be able to convert it into useable technology.
                                { "Russian", "Технологический модуль, добытый на месте крушения крупного межзвездного корабля. Такие можно найти на &lt;STELLAR&gt;месте крушения грузового судна&lt;&gt; или добыть во время &lt;STELLAR&gt;экспедиций&lt;&gt;.&#xA;&#xA;В текущем виде совершенно бесполезен, но не исключено, что &lt;TECHNOLOGY&gt;исследовательская станция&lt;&gt; на борту вашего грузового судна сможет превратить его в полезную технологию." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SHIP_INV_TOKEN_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Модуль расширения звездолета
                                { "Russian", "Модуль расширения звездолёта" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SHIP_INV_TOKEN_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Технологический модуль, добытый из останков &#xA;&lt;STELLAR&gt;звездолета&lt;&gt;. Такие можно найти на &lt;STELLAR&gt;месте крушения грузового судна&lt;&gt; или добыть во время &lt;STELLAR&gt;экспедиции фрегата&lt;&gt;.&#xA;&#xA;Их можно использовать, чтобы расширить хранилище звездолета в &lt;TECHNOLOGY&gt;блоке оснащения звездолета&lt;&gt; на космической станции.
                                -- A technology module harvested from the remains of a &lt;STELLAR&gt;salvaged starship&lt;&gt;. May also be collected from &lt;STELLAR&gt;freighter crash sites&lt;&gt; or salvaged during &lt;STELLAR&gt;frigate expeditions&lt;&gt;.&#xA;&#xA;Can be used to expand starship storage capacity at the Space Station's &lt;TECHNOLOGY&gt;Starship Outfitter&lt;&gt;.
                                { "Russian", "Технологический модуль, добытый из обломков &#xA;&lt;STELLAR&gt;звездолёта&lt;&gt;. Такие можно найти на &lt;STELLAR&gt;месте крушения грузового судна&lt;&gt; или добыть во время &lt;STELLAR&gt;экспедиций&lt;&gt;.&#xA;&#xA;Их можно использовать, чтобы расширить хранилище звездолёта с помощью &lt;TECHNOLOGY&gt;терминала оснащения звездолёта&lt;&gt; на космической станции." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SHIP_CLASS_TOKEN_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Технологический модуль, добытый из обломков &lt;STELLAR&gt;звездолета&lt;&gt;. Такие можно найти на &lt;STELLAR&gt;месте крушения грузового судна&lt;&gt; или добыть во время &lt;STELLAR&gt;экспедиции фрегата&lt;&gt;.&#xA;&#xA;Их можно использовать, чтобы повысить &lt;STELLAR&gt;класс&lt;&gt; звездолета в &lt;TECHNOLOGY&gt;секции оснащения звездолета&lt;&gt; на космической станции.
                                -- A technology module harvested from the remains of a &lt;STELLAR&gt;salvaged starship&lt;&gt;. May also be collected from &lt;STELLAR&gt;freighter crash sites&lt;&gt; or salvaged during &lt;STELLAR&gt;frigate expeditions&lt;&gt;.&#xA;&#xA;Can be used to increase a starship's &lt;STELLAR&gt;class rating&lt;&gt; at the Space Station's &lt;TECHNOLOGY&gt;Starship Outfitting Unit&lt;&gt;.
                                { "Russian", "Технологический модуль, добытый из обломков &lt;STELLAR&gt;звездолёта&lt;&gt;. Такие можно найти на &lt;STELLAR&gt;месте крушения грузового судна&lt;&gt; или добыть во время &lt;STELLAR&gt;экспедиций&lt;&gt;.&#xA;&#xA;Их можно использовать, чтобы повысить &lt;STELLAR&gt;класс&lt;&gt; звездолёта с помощью &lt;TECHNOLOGY&gt;терминала оснащения звездолёта&lt;&gt; на космической станции." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "DISC_VIEW_SYSTEM" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Посмотреть всю собранную информацию о системе.
                                -- View all information gathered on this system
                                { "Russian", "Посмотреть всю собранную информацию о системе" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_SILO_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Модуль распределения вещества
                                -- Substance Distribution Module
                                { "Russian", "Модуль распределения субстанции" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FRIGATE_WARN_TITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПРЕДУПРЕЖДЕНИЕ О ФЛОТЕ
                                -- FLEET WARNING
                                { "Russian", "ПРЕДУПРЕЖДЕНИЕ ФЛОТА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CREATURE_FARM_TUT_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Автоматически привлекает и собирает продукты накормленных животных.
                                -- Automatically attracts and harvests produce from fed creatures
                                { "Russian", "Автоматически привлекает и собирает продукты накормленных животных" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CREATURE_FEED_TUT_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Заполните резервуар для наживки, чтобы автоматически привлекать и кормить животных.
                                -- Fill bait tank to automatically attract and feed creatures
                                { "Russian", "Для работы требуется заполнить резервуар для приманки" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TREE_UNLOCK" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ИССЛЕДОВАТЬ ЧЕРТЕЖ
                                -- RESEARCH BLUEPRINT
                                { "Russian", "ИЗУЧИТЬ ЧЕРТЕЖ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TREE_UNLOCK_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Нажмите %COST%, чтобы исследовать новый чертеж
                                -- Use %COST% to learn new blueprint
                                { "Russian", "Нажмите %COST%, чтобы изучить новый чертеж" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_SUBSTANCE_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Занести информацию о месте в журнал
                                -- Pin location information to the Log
                                { "Russian", "Добавить в журнал информацию о том, где искать" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BONES_OBJ4_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Передайте данные клиенту с &lt;TECHNOLOGY&gt;торгового терминала&lt;&gt;.
                                -- Transmit the data to the client at a &lt;TECHNOLOGY&gt;Trade Terminal&lt;&gt;
                                { "Russian", "Используйте &lt;TECHNOLOGY&gt;торговый терминал&lt;&gt;&#xA;для отправки данных клиенту" },
                            }
                        },
                        --
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SURVEY_POWER_MAX" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Макс. напряженность поля
                                -- Max Field Strength
                                { "Russian", "Макс. сила поля" },
                            }
                        },

                        -- TODO: разобраться где это используется
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "UI_U_GRIDSTATUS_POWER_CONSUMPTI" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Энергосеть: расход энергии
                        --         -- Grid Power Consumption
                        --         { "Russian", "Потребление электроэнергии" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "UI_U_GRIDSTATUS_POWER_PRODUCTIO" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Энергосеть: выработка энергии
                        --         -- Grid Power Generation
                        --         { "Russian", "Генерация электроэнергии" },
                        --     }
                        -- },

                        --#region перенесено из Farscape 20.09.2024
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_POWERGRID_LABEL_ON" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Состояние энергосети: РАБОТАЕТ
                                { "Russian", "Энергосеть: РАБОТАЕТ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_POWERGRID_LABEL_OFF" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Состояние энергосети: ПЕРЕГРУЗКА
                                { "Russian", "Энергосеть: ПЕРЕГРУЗКА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_POWERGRID_LABEL_DC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Состояние энергосети: НЕ ПОДКЛЮЧЕНА
                                { "Russian", "Энергосеть: НЕ ПОДКЛЮЧЕНА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_POWERGRID_LABEL_DRAIN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Состояние энергосети: РАЗРЯЖАЕТ АККУМУЛЯТОРЫ
                                { "Russian", "Энергосеть: РАЗРЯЖАЕТ АККУМУЛЯТОРЫ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_POWERGRID_LABEL_STANDBY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Состояние энергосети: ОЖИДАЕТ
                                { "Russian", "Энергосеть: ОЖИДАНИЕ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "CTRL_BTN_REPORT_BASE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сообщить об оскорбительной или неподобающей базе
                                -- Report Offensive or Inappropriate Base
                                { "Russian", "Пожаловаться на базу" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MISSION_BOARD_REWARD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %ITEM% x %NUM%
                                -- %ITEM% x %NUM%
                                { "Russian", "%ITEM% × %NUM%" },
                            }
                        },
                        --#endregion

                        --#region чтобы закрепить точку на экране экзокостюма
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_STARCHART_DESC_SECURE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Карта близлежащей планеты. На ней отмечен &lt;FUEL&gt;охраняемый важный объект&lt;&gt;. В таких местах часто можно найти чертежи для &lt;STELLAR&gt;новых товаров&lt;&gt;.&#xA;&#xA;Выберите карту и &lt;VAL_ON&gt;проложите маршрут (&lt;IMG&gt;FE_ALT1&lt;&gt;)&lt;&gt;, чтобы закрепить точку на экране экзокостюма..&#xA;&#xA;Добыть новые карты можно, обмениваясь &lt;COMMODITY&gt;навигационными данными&lt;&gt; с картографом на космической станции.
                                -- A map of a nearby planet. A &lt;FUEL&gt;secure site of interest&lt;&gt; has been marked. Such sites often hold blueprints for &lt;STELLAR&gt;new products&lt;&gt;.&#xA;&#xA;Select the map and use &lt;VAL_ON&gt;Plot Route (&lt;IMG&gt;FE_ALT1&lt;&gt;)&lt;&gt; to pin the location in your Exosuit display.&#xA;&#xA;New maps can be gained by exchanging &lt;COMMODITY&gt;Navigation Data&lt;&gt; with a Space Station Cartographer.
                                { "Russian", "Карта близлежащей планеты. На ней отмечен &lt;FUEL&gt;охраняемый важный объект&lt;&gt;. В таких местах часто можно найти чертежи для &lt;STELLAR&gt;новых товаров&lt;&gt;.&#xA;&#xA;Выберите карту и &lt;VAL_ON&gt;проложите маршрут (&lt;IMG&gt;FE_ALT1&lt;&gt;)&lt;&gt;, чтобы вывести на экран экзокостюма местоположение объекта.&#xA;&#xA;Картограф на космической станции может обменять &lt;COMMODITY&gt;навигационные данные&lt;&gt; на новые карты." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_STARCHART_DESC_DISTRESS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Карта близлежащей планеты. На ней отмечены &lt;TECHNOLOGY&gt;координаты сигнала бедствия&lt;&gt;.&#xA;&#xA;Выберите карту и &lt;VAL_ON&gt;проложите маршрут (&lt;IMG&gt;FE_ALT1&lt;&gt;)&lt;&gt;, чтобы закрепить точку на экране экзокостюма.&#xA;&#xA;Добыть новые карты можно, обмениваясь &lt;COMMODITY&gt;навигационными данными&lt;&gt; с картографом на космической станции.
                                -- A map of a nearby planet. The coordinates of a &lt;TECHNOLOGY&gt;distress signal&lt;&gt; have been marked.&#xA;&#xA;Select the map and use &lt;VAL_ON&gt;Plot Route (&lt;IMG&gt;FE_ALT1&lt;&gt;)&lt;&gt; to pin the location in your Exosuit display.&#xA;&#xA;New maps can be gained by exchanging &lt;COMMODITY&gt;Navigation Data&lt;&gt; with a Space Station Cartographer.
                                { "Russian", "Карта близлежащей планеты. На ней отмечены координаты &lt;TECHNOLOGY&gt;сигнала бедствия&lt;&gt;.&#xA;&#xA;Выберите карту и &lt;VAL_ON&gt;проложите маршрут (&lt;IMG&gt;FE_ALT1&lt;&gt;)&lt;&gt;, чтобы вывести на экран экзокостюма местоположение объекта.&#xA;&#xA;Картограф на космической станции может обменять &lt;COMMODITY&gt;навигационные данные&lt;&gt; на новые карты." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_STARCHART_DESC_HABITABLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Карта близлежащей планеты. На ней отмечен какой-то &lt;COMMODITY&gt;обитаемый аванпост&lt;&gt;.&#xA;&#xA;Выберите карту и &lt;VAL_ON&gt;проложите маршрут (&lt;IMG&gt;FE_ALT1&lt;&gt;)&lt;&gt;, чтобы закрепить точку на экране экзокостюма.&#xA;&#xA;Добыть новые карты можно, обмениваясь &lt;COMMODITY&gt;навигационными данными&lt;&gt; с картографом на космической станции.
                                -- A map of a nearby planet. An &lt;COMMODITY&gt;inhabited outpost&lt;&gt; of some kind has been marked.&#xA;&#xA;Select the map and use &lt;VAL_ON&gt;Plot Route (&lt;IMG&gt;FE_ALT1&lt;&gt;)&lt;&gt; to pin the location in your Exosuit display.&#xA;&#xA;New maps can be gained by exchanging &lt;COMMODITY&gt;Navigation Data&lt;&gt; with a Space Station Cartographer.
                                { "Russian", "Карта близлежащей планеты. На ней отмечен какой-то &lt;COMMODITY&gt;обитаемый аванпост&lt;&gt;.&#xA;&#xA;Выберите карту и &lt;VAL_ON&gt;проложите маршрут (&lt;IMG&gt;FE_ALT1&lt;&gt;)&lt;&gt;, чтобы вывести на экран экзокостюма местоположение аванпоста.&#xA;&#xA;Картограф на космической станции может обменять &lt;COMMODITY&gt;навигационные данные&lt;&gt; на новые карты." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_STARCHART_DESC_ALIEN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Карта близлежащей планеты. На ней отмечено &lt;SPECIAL&gt;местонахождение древнего артефакта&lt;&gt;.&#xA;&#xA;Выберите карту и &lt;VAL_ON&gt;проложите маршрут (&lt;IMG&gt;FE_ALT1&lt;&gt;)&lt;&gt;, чтобы закрепить точку на экране экзокостюма.&#xA;&#xA;Добыть новые карты можно, обмениваясь &lt;COMMODITY&gt;навигационными данными&lt;&gt; с картографом на космической станции.
                                -- A map of a nearby planet. An &lt;SPECIAL&gt;ancient artifact site&lt;&gt; has been marked.&#xA;&#xA;Select the map and use &lt;VAL_ON&gt;Plot Route (&lt;IMG&gt;FE_ALT1&lt;&gt;)&lt;&gt; to pin the location in your Exosuit display.&#xA;&#xA;New maps can be gained by exchanging &lt;COMMODITY&gt;Navigation Data&lt;&gt; with a Space Station Cartographer.
                                { "Russian", "Карта близлежащей планеты. На ней отмечено &lt;SPECIAL&gt;местонахождение древнего артефакта&lt;&gt;.&#xA;&#xA;Выберите карту и &lt;VAL_ON&gt;проложите маршрут (&lt;IMG&gt;FE_ALT1&lt;&gt;)&lt;&gt;, чтобы вывести на экран экзокостюма местоположение артефакта.&#xA;&#xA;Картограф на космической станции может обменять &lt;COMMODITY&gt;навигационные данные&lt;&gt; на новые карты." },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BATTERY_MAINT_TITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Аккумулятор
                                -- Battery
                                { "Russian", "Батарея" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NEWPOOP_LABEL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найти образец навоза
                                -- Search Dung Sample
                                { "Russian", "Изучить образец навоза" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TELEPORT_FEATURED_BASE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Избранная база&#xA;(построена на сложности «%MODE%»)
                                -- Featured Base&#xA;(Built in %MODE% Difficulty)
                                { "Russian", "Избранная база, построенная на сложности «%MODE%»" },
                            }
                        },

                        --#region UI_.*_HINT_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BAIT_HINT_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Создайте в инвентаре: &lt;FUEL&gt;%ITEM%&lt;&gt; (%CURRENT%/%AMOUNT%)&#xA;Питание для всех существ: %ITEM%.&#xA;Если накормить существо, оно успокоится и позволит вам подойти.
                                -- Craft &lt;FUEL&gt;%ITEM%&lt;&gt; in the Inventory: %CURRENT%/%AMOUNT%&#xA;All creatures will eat %ITEM%&#xA;Feeding will calm creatures and allow you to approach them
                                { "Russian", "Создайте &lt;FUEL&gt;%ITEM%&lt;&gt; в инвентаре: %CURRENT%/%AMOUNT%&#xA;%ITEM% едят все существа&#xA;Покормите существо, чтобы успокоить его" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_STARCHART_HINT_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- На &lt;STELLAR&gt;планетарной карте&lt;&gt; указаны маршруты к &lt;SPECIAL&gt;важным объектам&lt;&gt;.&#xA;Откройте планетарную карту в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;) и &lt;STELLAR&gt;проложите курс&lt;&gt; с помощью &lt;IMG&gt;FE_ALT1&lt;&gt;.&#xA;Покупайте новые карты у &lt;TRADEABLE&gt;картографа&lt;&gt; на космических станциях.
                                -- A &lt;STELLAR&gt;Planetary Chart&lt;&gt; contains directions to a &lt;SPECIAL&gt;point of interest&lt;&gt;&#xA;Access the Planetary Chart in your Inventory (&lt;IMG&gt;INVENTORY&lt;&gt;) and &lt;STELLAR&gt;plot a route&lt;&gt; with &lt;IMG&gt;FE_ALT1&lt;&gt;&#xA;Collect new charts from the &lt;TRADEABLE&gt;Cartographer&lt;&gt; on Space Stations
                                { "Russian", "На &lt;STELLAR&gt;планетарной карте&lt;&gt; указаны маршруты к &lt;SPECIAL&gt;важным объектам&lt;&gt;&#xA;Найдите карту в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;) и &lt;STELLAR&gt;проложите курс&lt;&gt; с помощью &lt;IMG&gt;FE_ALT1&lt;&gt;&#xA;Покупайте новые карты у &lt;TRADEABLE&gt;картографа&lt;&gt; на космических станциях" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_POWER_HINT_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сделайте &lt;STELLAR&gt;дополнительные генераторы&lt;&gt; или &lt;TECHNOLOGY&gt;аккумуляторы&lt;&gt;.&#xA;Подключите новые энергетические модули к энергосети.&#xA;Чтобы открыть меню созидания, нажмите &lt;IMG&gt;BUILD_MENU&lt;&gt;.
                                -- Construct &lt;STELLAR&gt;Additional Generators&lt;&gt; or &lt;TECHNOLOGY&gt;Batteries&lt;&gt;&#xA;Wire the new power modules to the existing grid&#xA;Access the Build Menu with &lt;IMG&gt;BUILD_MENU&lt;&gt;
                                { "Russian", "Создайте &lt;STELLAR&gt;дополнительные генераторы&lt;&gt; или &lt;TECHNOLOGY&gt;батареи&lt;&gt;&#xA;Подключите новые энергетические модули к энергосети&#xA;Откройте меню строительства, нажав &lt;IMG&gt;BUILD_MENU&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PROC_TECH_HINT_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Нажмите &lt;IMG&gt;INVENTORY&lt;&gt;, чтобы открыть инвентарь.&#xA;Нажмите &lt;STELLAR&gt;, чтобы начать установку &lt;&gt;модуля улучшения&lt;IMG&gt;FE_ALT1&lt;&gt;.
                                -- Open the Inventory with &lt;IMG&gt;INVENTORY&lt;&gt;&#xA;Begin the installation of an &lt;STELLAR&gt;upgrade module&lt;&gt; with &lt;IMG&gt;FE_ALT1&lt;&gt;
                                { "Russian", "Откройте инвентарь, нажав &lt;IMG&gt;INVENTORY&lt;&gt;&#xA;Начните установку &lt;STELLAR&gt;модуля улучшения&lt;&gt; с помощью &lt;IMG&gt;FE_ALT1&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_GEODE_HINT_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Используйте &lt;IMG&gt;FE_ALT1&lt;&gt;, чтобы &lt;STELLAR&gt;проанализировать жеоду&lt;&gt;.&#xA;Прежде чем провести анализ, найдите нужный объект в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;).&#xA;Жеоды содержат большое количество &lt;TITLE&gt;феррита&lt;&gt;.
                                -- &lt;STELLAR&gt;Analyse&lt;&gt; the &lt;STELLAR&gt;Geode&lt;&gt; with &lt;IMG&gt;FE_ALT1&lt;&gt;&#xA;To analyse, first locate in the Inventory (&lt;IMG&gt;INVENTORY&lt;&gt;)&#xA;Geodes contain large quantities of &lt;TITLE&gt;Ferrite&lt;&gt;
                                { "Russian", "&lt;STELLAR&gt;Проанализируйте жеоду&lt;&gt;, нажав на ней &lt;IMG&gt;FE_ALT1&lt;&gt;&#xA;Прежде чем провести анализ, найдите предмет в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;)&#xA;Жеоды содержат большое количество &lt;TITLE&gt;феррита&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_GEODE_CRYSTAL_HINT_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Используйте &lt;IMG&gt;FE_ALT1&lt;&gt;, чтобы &lt;STELLAR&gt;проанализировать фрагмент кристалла&lt;&gt;.&#xA;Прежде чем провести анализ, найдите нужный объект в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;).&#xA;Фрагменты кристаллов содержат большое количество &lt;TECHNOLOGY&gt;дигидрогена&lt;&gt;.
                                -- &lt;STELLAR&gt;Analyse&lt;&gt; the &lt;STELLAR&gt;Crystal Fragment&lt;&gt; with &lt;IMG&gt;FE_ALT1&lt;&gt;&#xA;To analyse, first locate in the Inventory (&lt;IMG&gt;INVENTORY&lt;&gt;)&#xA;Crystal Fragments contain large quantities of &lt;TECHNOLOGY&gt;Di-hydrogen&lt;&gt;
                                { "Russian", "&lt;STELLAR&gt;Проанализируйте фрагмент кристалла&lt;&gt;, нажав на нем &lt;IMG&gt;FE_ALT1&lt;&gt;&#xA;Прежде чем провести анализ, найдите предмет в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;)&#xA;Фрагменты кристаллов содержат большое количество &lt;TECHNOLOGY&gt;дигидрогена&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_GEODE_SPACE_HINT_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Используйте &lt;IMG&gt;FE_ALT1&lt;&gt;, чтобы &lt;STELLAR&gt;проанализировать&lt;&gt;&lt;STELLAR&gt;гиперскопление трития&lt;&gt;.&#xA;Прежде чем провести анализ, найдите нужный объект в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;).&#xA;Гиперскопления содержат большое количество &lt;TECHNOLOGY&gt;трития&lt;&gt;.
                                { "Russian", "&lt;STELLAR&gt;Проанализируйте&lt;&gt; &lt;STELLAR&gt;гиперскопление трития&lt;&gt;, нажав &lt;IMG&gt;FE_ALT1&lt;&gt;&#xA;Прежде чем провести анализ, найдите предмет в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;)&#xA;Гиперскопления содержат большое количество &lt;TECHNOLOGY&gt;трития&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_GEODE_ASTEROID_HINT_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Используйте &lt;IMG&gt;FE_ALT1&lt;&gt;, чтобы &lt;STELLAR&gt;проанализировать&lt;&gt;&lt;STELLAR&gt;золотой самородок&lt;&gt;.&#xA;Прежде чем провести анализ, найдите нужный объект в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;).&#xA;Золотые самородки содержат большое количество &lt;COMMODITY&gt;золота&lt;&gt;.
                                { "Russian", "&lt;STELLAR&gt;Проанализируйте&lt;&gt; &lt;STELLAR&gt;золотой самородок&lt;&gt;, нажав &lt;IMG&gt;FE_ALT1&lt;&gt;&#xA;Прежде чем провести анализ, найдите предмет в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;)&#xA;Золотые самородки содержат большое количество &lt;COMMODITY&gt;золота&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region UI_SURVEY_TUT_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SURVEY_TUT_MSG1A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Изучите чертеж &lt;TECHNOLOGY&gt;устройства наблюдения&lt;&gt;.&#xA;Изучайте чертежи улучшений на борту &lt;SPECIAL&gt;Космической Аномалии&lt;&gt;.&#xA;Находясь в космосе, вызовите Аномалию через быстрое меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                { "Russian", "Изучите чертеж &lt;TECHNOLOGY&gt;устройства наблюдения&lt;&gt;&#xA;Изучайте чертежи улучшений на борту &lt;SPECIAL&gt;Космической Аномалии&lt;&gt;&#xA;Находясь в космосе, вызовите Аномалию через быстрое меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SURVEY_TUT_MSG1B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Изучите чертеж &lt;TECHNOLOGY&gt;устройства наблюдения&lt;&gt;.&#xA;Изучайте чертежи улучшений на борту &lt;SPECIAL&gt;Космической Аномалии&lt;&gt;.&#xA;Встретьтесь с &lt;TECHNOLOGY&gt;Эос&lt;&gt;, специалистом по мультитулам.
                                { "Russian", "Изучите чертеж &lt;TECHNOLOGY&gt;устройства наблюдения&lt;&gt;&#xA;Изучайте чертежи улучшений на борту &lt;SPECIAL&gt;Космической Аномалии&lt;&gt;&#xA;Встретьтесь с &lt;TECHNOLOGY&gt;Эос&lt;&gt;, специалистом по мультитулам" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SURVEY_TUT_MSG2_A1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Изучите чертеж &lt;TECHNOLOGY&gt;электромагнитного генератора&lt;&gt;.&#xA;Изучайте строительные чертежи на борту &lt;SPECIAL&gt;Космической Аномалии&lt;&gt;.&#xA;Находясь в космосе, вызовите Аномалию через быстрое меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                { "Russian", "Изучите чертеж &lt;TECHNOLOGY&gt;электромагнитного генератора&lt;&gt;&#xA;Изучайте строительные чертежи на борту &lt;SPECIAL&gt;Космической Аномалии&lt;&gt;&#xA;Находясь в космосе, вызовите Аномалию через быстрое меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SURVEY_TUT_MSG2_A2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Изучите чертеж &lt;TECHNOLOGY&gt;электромагнитного генератора&lt;&gt;.&#xA;Изучайте строительные чертежи на борту &lt;SPECIAL&gt;Космической Аномалии&lt;&gt;.&#xA;Посетите &lt;TECHNOLOGY&gt;станцию строительных исследований&lt;&gt;.
                                { "Russian", "Изучите чертеж &lt;TECHNOLOGY&gt;электромагнитного генератора&lt;&gt;&#xA;Изучайте строительные чертежи на борту &lt;SPECIAL&gt;Космической Аномалии&lt;&gt;&#xA;Посетите &lt;TECHNOLOGY&gt;станцию строительных исследований&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SURVEY_TUT_MSG2_B1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Изучите чертеж &lt;TECHNOLOGY&gt;извлекателя минералов&lt;&gt;.&#xA;Изучайте строительные чертежи на борту &lt;SPECIAL&gt;Космической Аномалии&lt;&gt;.&#xA;Находясь в космосе, вызовите Аномалию через быстрое меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                { "Russian", "Изучите чертеж &lt;TECHNOLOGY&gt;извлекателя минералов&lt;&gt;&#xA;Изучайте строительные чертежи на борту &lt;SPECIAL&gt;Космической Аномалии&lt;&gt;&#xA;Находясь в космосе, вызовите Аномалию через быстрое меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SURVEY_TUT_MSG2_B2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Изучите чертеж &lt;TECHNOLOGY&gt;извлекателя минералов&lt;&gt;.&#xA;Изучайте строительные чертежи на борту &lt;SPECIAL&gt;Космической Аномалии&lt;&gt;.&#xA;Посетите &lt;TECHNOLOGY&gt;станцию строительных исследований&lt;&gt;.
                                { "Russian", "Изучите чертеж &lt;TECHNOLOGY&gt;извлекателя минералов&lt;&gt;&#xA;Изучайте строительные чертежи на борту &lt;SPECIAL&gt;Космической Аномалии&lt;&gt;&#xA;Посетите &lt;TECHNOLOGY&gt;станцию строительных исследований&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SURVEY_TUT_MSG2_C1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Изучите чертеж &lt;TECHNOLOGY&gt;извлекателя газов&lt;&gt;.&#xA;Изучайте строительные чертежи на борту &lt;SPECIAL&gt;Космической Аномалии&lt;&gt;.&#xA;Находясь в космосе, вызовите Аномалию через быстрое меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                { "Russian", "Изучите чертеж &lt;TECHNOLOGY&gt;извлекателя газов&lt;&gt;&#xA;Изучайте строительные чертежи на борту &lt;SPECIAL&gt;Космической Аномалии&lt;&gt;&#xA;Находясь в космосе, вызовите Аномалию через быстрое меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SURVEY_TUT_MSG2_C2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Изучите чертеж &lt;TECHNOLOGY&gt;извлекателя газов&lt;&gt;.&#xA;Изучайте строительные чертежи на борту &lt;SPECIAL&gt;Космической Аномалии&lt;&gt;.&#xA;Посетите &lt;TECHNOLOGY&gt;станцию строительных исследований&lt;&gt;.
                                { "Russian", "Изучите чертеж &lt;TECHNOLOGY&gt;извлекателя газов&lt;&gt;&#xA;Изучайте строительные чертежи на борту &lt;SPECIAL&gt;Космической Аномалии&lt;&gt;&#xA;Посетите &lt;TECHNOLOGY&gt;станцию строительных исследований&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SURVEY_TUT_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Установите &lt;TECHNOLOGY&gt;устройство наблюдения&lt;&gt;.&#xA;Чтобы установить улучшение, нажмите &lt;IMG&gt;TECHMENU&lt;&gt; в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;).
                                { "Russian", "Установите &lt;TECHNOLOGY&gt;устройство наблюдения&lt;&gt;&#xA;Чтобы установить улучшение, нажмите &lt;IMG&gt;TECHMENU&lt;&gt; в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SURVEY_TUT_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Проверьте работу &lt;TECHNOLOGY&gt;устройства наблюдения&lt;&gt;.&#xA;Совершите посадку на планету, чтобы начать разведку.
                                { "Russian", "Проверьте работу &lt;TECHNOLOGY&gt;устройства наблюдения&lt;&gt;&#xA;Совершите посадку на планету, чтобы начать разведку" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SURVEY_TUT_MSG4A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Проверьте работу &lt;TECHNOLOGY&gt;устройства наблюдения&lt;&gt;.&#xA;Включите анализирующий визор (&lt;IMG&gt;AIM&lt;&gt;).&#xA;Нажмите &lt;IMG&gt;SURVEYFILTERL&lt;&gt;, чтобы включить &lt;STELLAR&gt;режим разведки&lt;&gt;.
                                { "Russian", "Проверьте работу &lt;TECHNOLOGY&gt;устройства наблюдения&lt;&gt;&#xA;Включите анализирующий визор (&lt;IMG&gt;AIM&lt;&gt;)&#xA;Нажмите &lt;IMG&gt;SURVEYFILTERL&lt;&gt;, чтобы включить &lt;STELLAR&gt;режим разведки&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SURVEY_TUT_MSG5A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Проверьте работу &lt;TECHNOLOGY&gt;устройства наблюдения&lt;&gt;.&#xA;Используйте визор (&lt;IMG&gt;AIM&lt;&gt;) и &lt;STELLAR&gt;режим разведки&lt;&gt; (&lt;IMG&gt;SURVEYFILTERL&lt;&gt;).&#xA;Отметьте &lt;STELLAR&gt;скопление электромагнитной энергии&lt;&gt;.
                                { "Russian", "Проверьте работу &lt;TECHNOLOGY&gt;устройства наблюдения&lt;&gt;&#xA;Используйте визор (&lt;IMG&gt;AIM&lt;&gt;) и &lt;STELLAR&gt;режим разведки&lt;&gt; (&lt;IMG&gt;SURVEYFILTERL&lt;&gt;)&#xA;Отметьте &lt;STELLAR&gt;скопление электромагнитной энергии&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SURVEY_TUT_MSG5B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Проверьте работу &lt;TECHNOLOGY&gt;устройства наблюдения&lt;&gt;.&#xA;Используйте визор (&lt;IMG&gt;AIM&lt;&gt;) и &lt;STELLAR&gt;режим разведки&lt;&gt; (&lt;IMG&gt;SURVEYFILTERL&lt;&gt;).&#xA;Отметьте &lt;STELLAR&gt;плотное облако газа&lt;&gt;.
                                { "Russian", "Проверьте работу &lt;TECHNOLOGY&gt;устройства наблюдения&lt;&gt;&#xA;Используйте визор (&lt;IMG&gt;AIM&lt;&gt;) и &lt;STELLAR&gt;режим разведки&lt;&gt; (&lt;IMG&gt;SURVEYFILTERL&lt;&gt;)&#xA;Отметьте &lt;STELLAR&gt;плотное облако газа&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SURVEY_TUT_MSG5C" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Проверьте работу &lt;TECHNOLOGY&gt;устройства наблюдения&lt;&gt;.&#xA;Используйте визор (&lt;IMG&gt;AIM&lt;&gt;) и &lt;STELLAR&gt;режим разведки&lt;&gt; (&lt;IMG&gt;SURVEYFILTERL&lt;&gt;).&#xA;Отметьте &lt;STELLAR&gt;глубинные залежи минералов&lt;&gt;.
                                { "Russian", "Проверьте работу &lt;TECHNOLOGY&gt;устройства наблюдения&lt;&gt;&#xA;Используйте визор (&lt;IMG&gt;AIM&lt;&gt;) и &lt;STELLAR&gt;режим разведки&lt;&gt; (&lt;IMG&gt;SURVEYFILTERL&lt;&gt;)&#xA;Отметьте &lt;STELLAR&gt;глубинные залежи минералов&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SURVEY_TUT_MSG6A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружено &lt;STELLAR&gt;скопление электромагнитной энергии&lt;&gt;.&#xA;Скопления ресурсов бывают разных классов:&lt;TRADEABLE&gt;C&lt;&gt;, &lt;TECHNOLOGY&gt;B&lt;&gt;, &lt;FUEL&gt;A&lt;&gt; или &lt;COMMODITY&gt;S&lt;&gt;.&#xA;Используя визор, нажмите &lt;IMG&gt;PLACEMARKER&lt;&gt; и поставьте &lt;STELLAR&gt;метку скопления ресурсов&lt;&gt;.&#xA;Доберитесь до скопления ресурсов и начните строительство.
                                { "Russian", "Обнаружено &lt;STELLAR&gt;скопление электромагнитной энергии&lt;&gt;&#xA;Скопления ресурсов бывают разных классов:&lt;TRADEABLE&gt;C&lt;&gt;, &lt;TECHNOLOGY&gt;B&lt;&gt;, &lt;FUEL&gt;A&lt;&gt; или &lt;COMMODITY&gt;S&lt;&gt;&#xA;Используя визор, нажмите &lt;IMG&gt;PLACEMARKER&lt;&gt; и поставьте &lt;STELLAR&gt;метку скопления ресурсов&lt;&gt;&#xA;Доберитесь до скопления ресурсов и начните строительство" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SURVEY_TUT_MSG6B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружено &lt;STELLAR&gt;плотное облако газа&lt;&gt;.&#xA;Газовые облака бывают разных классов:&lt;TRADEABLE&gt;C&lt;&gt;, &lt;TECHNOLOGY&gt;B&lt;&gt;, &lt;FUEL&gt;A&lt;&gt; или &lt;COMMODITY&gt;S&lt;&gt;.&#xA;Используя визор, нажмите &lt;IMG&gt;PLACEMARKER&lt;&gt; и поставьте &lt;STELLAR&gt;метку скопления ресурсов&lt;&gt;.&#xA;Доберитесь до газового облака и начните строительство.
                                { "Russian", "Обнаружено &lt;STELLAR&gt;плотное облако газа&lt;&gt;.&#xA;Газовые облака бывают разных классов:&lt;TRADEABLE&gt;C&lt;&gt;, &lt;TECHNOLOGY&gt;B&lt;&gt;, &lt;FUEL&gt;A&lt;&gt; или &lt;COMMODITY&gt;S&lt;&gt;&#xA;Используя визор, нажмите &lt;IMG&gt;PLACEMARKER&lt;&gt; и поставьте &lt;STELLAR&gt;метку скопления ресурсов&lt;&gt;&#xA;Доберитесь до газового облака и начните строительство" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SURVEY_TUT_MSG6C" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружены &lt;STELLAR&gt;глубинные залежи минералов&lt;&gt;.&#xA;Глубинные залежи бывают разных классов:&lt;TRADEABLE&gt;C&lt;&gt;, &lt;TECHNOLOGY&gt;B&lt;&gt;, &lt;FUEL&gt;A&lt;&gt; или &lt;COMMODITY&gt;S&lt;&gt;.&#xA;Используя визор, нажмите &lt;IMG&gt;PLACEMARKER&lt;&gt; и поставьте &lt;STELLAR&gt;метку скопления ресурсов&lt;&gt;.&#xA;Доберитесь до залежей и начните строительство.
                                { "Russian", "Обнаружены &lt;STELLAR&gt;глубинные залежи минералов&lt;&gt;&#xA;Глубинные залежи бывают разных классов:&lt;TRADEABLE&gt;C&lt;&gt;, &lt;TECHNOLOGY&gt;B&lt;&gt;, &lt;FUEL&gt;A&lt;&gt; или &lt;COMMODITY&gt;S&lt;&gt;&#xA;Используя визор, нажмите &lt;IMG&gt;PLACEMARKER&lt;&gt; и поставьте &lt;STELLAR&gt;метку скопления ресурсов&lt;&gt;&#xA;Доберитесь до залежей и начните строительство" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SURVEY_TUT_MSG7A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружено &lt;STELLAR&gt;скопление электромагнитной энергии&lt;&gt;.&#xA;Создайте базу, чтобы начать строительство.&#xA;Нажмите &lt;IMG&gt;BUILD_MENU&lt;&gt; и откройте меню строительства.
                                { "Russian", "Обнаружено &lt;STELLAR&gt;скопление электромагнитной энергии&lt;&gt;&#xA;Создайте базу, чтобы начать строительство&#xA;Нажмите &lt;IMG&gt;BUILD_MENU&lt;&gt; и откройте меню строительства" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SURVEY_TUT_MSG7B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружено &lt;STELLAR&gt;плотное облако газа&lt;&gt;.&#xA;Создайте базу, чтобы начать строительство.&#xA;Нажмите &lt;IMG&gt;BUILD_MENU&lt;&gt; и откройте меню строительства.
                                { "Russian", "Обнаружено &lt;STELLAR&gt;плотное облако газа&lt;&gt;&#xA;Создайте базу, чтобы начать строительство&#xA;Нажмите &lt;IMG&gt;BUILD_MENU&lt;&gt; и откройте меню строительства" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SURVEY_TUT_MSG7C" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружены &lt;STELLAR&gt;глубинные залежи минералов&lt;&gt;.&#xA;Создайте базу, чтобы начать строительство.&#xA;Нажмите &lt;IMG&gt;BUILD_MENU&lt;&gt; и откройте меню строительства.
                                { "Russian", "Обнаружены &lt;STELLAR&gt;глубинные залежи минералов&lt;&gt;&#xA;Создайте базу, чтобы начать строительство&#xA;Нажмите &lt;IMG&gt;BUILD_MENU&lt;&gt; и откройте меню строительства" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SURVEY_TUT_MSG8A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружено &lt;STELLAR&gt;скопление электромагнитной энергии&lt;&gt;.&#xA;Разместите &lt;TECHNOLOGY&gt;электромагнитный генератор&lt;&gt;.&#xA;Нажмите &lt;IMG&gt;BUILD_MENU&lt;&gt; и откройте меню строительства.
                                { "Russian", "Обнаружено &lt;STELLAR&gt;скопление электромагнитной энергии&lt;&gt;&#xA;Разместите &lt;TECHNOLOGY&gt;электромагнитный генератор&lt;&gt;&#xA;Нажмите &lt;IMG&gt;BUILD_MENU&lt;&gt; и откройте меню строительства" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SURVEY_TUT_MSG8B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружено &lt;STELLAR&gt;плотное облако газа&lt;&gt;.&#xA;Разместите &lt;TECHNOLOGY&gt;извлекатель газов&lt;&gt;.&#xA;Нажмите &lt;IMG&gt;BUILD_MENU&lt;&gt; и откройте меню строительства.
                                { "Russian", "Обнаружено &lt;STELLAR&gt;плотное облако газа&lt;&gt;&#xA;Разместите &lt;TECHNOLOGY&gt;извлекатель газов&lt;&gt;&#xA;Нажмите &lt;IMG&gt;BUILD_MENU&lt;&gt; и откройте меню строительства" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SURVEY_TUT_MSG8C" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружены &lt;STELLAR&gt;глубинные залежи минералов&lt;&gt;.&#xA;Разместите &lt;TECHNOLOGY&gt;извлекатель минералов&lt;&gt;.&#xA;Нажмите &lt;IMG&gt;BUILD_MENU&lt;&gt; и откройте меню строительства.
                                { "Russian", "Обнаружены &lt;STELLAR&gt;глубинные залежи минералов&lt;&gt;&#xA;Разместите &lt;TECHNOLOGY&gt;извлекатель минералов&lt;&gt;&#xA;Нажмите &lt;IMG&gt;BUILD_MENU&lt;&gt; и откройте меню строительства" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SURVEY_TUT_MSG9A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;Электромагнитный генератор&lt;&gt; построен.&#xA;Подключите генератор к энергосети.&#xA;Нажмите &lt;IMG&gt;BUILD_MENU&lt;&gt; и откройте меню строительства.
                                { "Russian", "&lt;TECHNOLOGY&gt;Электромагнитный генератор&lt;&gt; построен&#xA;Подключите генератор к энергосети&#xA;Нажмите &lt;IMG&gt;BUILD_MENU&lt;&gt; и откройте меню строительства" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SURVEY_TUT_MSG9B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;Извлекатель газов&lt;&gt; построен.&#xA;Подайте питание на извлекатель.&#xA;Нажмите &lt;IMG&gt;BUILD_MENU&lt;&gt; и откройте меню строительства.
                                { "Russian", "&lt;TECHNOLOGY&gt;Извлекатель газов&lt;&gt; построен&#xA;Подайте питание на извлекатель&#xA;Нажмите &lt;IMG&gt;BUILD_MENU&lt;&gt; и откройте меню строительства" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SURVEY_TUT_MSG9C" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;Извлекатель минералов&lt;&gt; построен.&#xA;Подайте питание на извлекатель.&#xA;Нажмите &lt;IMG&gt;BUILD_MENU&lt;&gt; и откройте меню строительства.
                                { "Russian", "&lt;TECHNOLOGY&gt;Извлекатель минералов&lt;&gt; построен&#xA;Подайте питание на извлекатель&#xA;Нажмите &lt;IMG&gt;BUILD_MENU&lt;&gt; и откройте меню строительства" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SURVEY_TUT_MSG10A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;Электромагнитный генератор&lt;&gt; построен.&#xA;Чтобы осмотреть генератор, нажмите &lt;IMG&gt;INTERACT&lt;&gt;.
                                { "Russian", "&lt;TECHNOLOGY&gt;Электромагнитный генератор&lt;&gt; построен&#xA;Чтобы осмотреть генератор, нажмите &lt;IMG&gt;INTERACT&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SURVEY_TUT_MSG10B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;Извлекатель газов&lt;&gt; построен.&#xA;Чтобы осмотреть извлекатель газов, нажмите &lt;IMG&gt;INTERACT&lt;&gt;.
                                { "Russian", "&lt;TECHNOLOGY&gt;Извлекатель газов&lt;&gt; построен&#xA;Чтобы осмотреть извлекатель газов, нажмите &lt;IMG&gt;INTERACT&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SURVEY_TUT_MSG10C" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;Извлекатель минералов&lt;&gt; построен.&#xA;Чтобы осмотреть извлекатель минералов, нажмите &lt;IMG&gt;INTERACT&lt;&gt;.
                                { "Russian", "&lt;TECHNOLOGY&gt;Извлекатель минералов&lt;&gt; построен&#xA;Чтобы осмотреть извлекатель минералов, нажмите &lt;IMG&gt;INTERACT&lt;&gt;" },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_LOW_STANDING_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Недостаточный уровень отношений с фракцией %FACTION%
                                { "Russian", "Недостаточный уровень отношений с %FACTION%ами" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PRODUCTION_PROGRESS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Ход производства (%ITEM%)
                                -- Production Progress (%ITEM%)
                                { "Russian", "%ITEM%" },
                            }
                        },

                        --#region %INPUT%
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BUILD_TIP_NAV" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Навигация %INPUT%
                                { "Russian", "%INPUT% Навигация" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BUILD_TIP_NAV_L_R" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Навигация %INPUT%
                                { "Russian", "%INPUT% Навигация" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BUILD_TIP_NAV_COLOUR" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Выбрать цвет %INPUT%
                                { "Russian", "%INPUT% Выбрать цвет" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BUILD_TIP_NAV_MATERIAL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Выбрать материал %INPUT%
                                { "Russian", "%INPUT% Выбрать материал" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BUILD_TIP_NAV_UP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Навигация вверх %INPUT%
                                { "Russian", "%INPUT% Навигация вверх" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BUILD_TIP_NAV_DOWN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Навигация вниз %INPUT%
                                { "Russian", "%INPUT% Навигация вниз" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BUILD_TIP_SELECT_COLOUR" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Выбрать цвет %INPUT%
                                -- Select Colour %INPUT%
                                { "Russian", "%INPUT% Выбрать цвет" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BUILD_TIP_SELECT_MATERIAL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Выбрать материал %INPUT%
                                -- Select Material %INPUT%
                                { "Russian", "%INPUT% Выбрать материал" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BUILD_TIP_NAV_BACK" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вернуться %INPUT%
                                { "Russian", "%INPUT% Вернуться" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BUILD_TIP_CLOSE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Выход %INPUT%
                                { "Russian", "%INPUT% Выход" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BUILD_TIP_PLACE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Разместить %INPUT%
                                { "Russian", "%INPUT% Разместить" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BUILD_TIP_APPLY_COLOUR" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Применить %INPUT%
                                { "Russian", "%INPUT% Применить" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BUILD_TIP_APPLY_MATERIAL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Применить %INPUT%
                                { "Russian", "%INPUT% Применить" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BUILD_TIP_DELETE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Удалить %INPUT%
                                { "Russian", "%INPUT% Удалить" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BUILD_TIP_WIRE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Разместить провод %INPUT%
                                { "Russian", "%INPUT% Разместить провод" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BUILD_TIP_SELECTION_MODE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Удалить %INPUT%
                                -- Delete %INPUT%
                                { "Russian", "%INPUT% Удалить" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BUILD_TIP_CAMERA" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вкл./откл. камеру строительства %INPUT%
                                { "Russian", "%INPUT% Вкл./откл. камеру строительства" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BUILD_TIP_ROTATE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Резкое вращение %INPUT%
                                { "Russian", "%INPUT% Резкое вращение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BUILD_TIP_SCALE_ROTATE_PC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Масштаб. и повернуть %INPUT% (держать)
                                { "Russian", "%INPUT% (держать) Масштаб. и повернуть" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BUILD_TIP_ROTATE_Y" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Повернуть по оси Y %INPUT%
                                { "Russian", "%INPUT% Повернуть по оси Y" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BUILD_TIP_ROTATE_Z" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Повернуть по оси Z %INPUT%
                                { "Russian", "%INPUT% Повернуть по оси Z" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BUILD_TIP_SCALE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Масштабировать %INPUT%
                                { "Russian", "%INPUT% Масштабировать" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BUILD_TIP_REPORT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сообщить о базе: %INPUT%
                                { "Russian", "%INPUT% Сообщить о базе" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BUILD_TIP_PIN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Закрепить схему %INPUT%
                                { "Russian", "%INPUT% Закрепить схему" },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BIOMASS_MAIN_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Заправьте, чтобы запитать
                                -- Insert fuel to power the grid
                                { "Russian", "Положите топливо в печь" },
                            }
                        },
                        { -- тут жестко все ограничено на кол-во букв
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BURN_TIME_LABEL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запр. на %AMOUNT%
                                -- Fuelled for %AMOUNT%
                                { "Russian", "&lt;IMG&gt;CLOCK&lt;&gt; %AMOUNT%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BIOMASS_TIME_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Оставшееся время горения
                                -- Burn Time Remaining
                                { "Russian", "До окончания горения" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_GALAXYMAP_CONTEXT_EXPAND" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;GALAXYWARP&lt;&gt; Варп  &lt;IMG&gt;GALAXYWAYPT&lt;&gt; Задать точку маршрута  &lt;IMG&gt;EXPAND&lt;&gt; Расширить
                                -- &lt;IMG&gt;GALAXYWARP&lt;&gt; Warp  &lt;IMG&gt;GALAXYWAYPT&lt;&gt; Set Waypoint  &lt;IMG&gt;EXPAND&lt;&gt; Expand
                                { "Russian", "&lt;IMG&gt;GALAXYWARP&lt;&gt; Прыжок  &lt;IMG&gt;GALAXYWAYPT&lt;&gt; Задать точку маршрута  &lt;IMG&gt;EXPAND&lt;&gt; Развернуть" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_GALMAP_CONTEXT_EXPAND" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;EXPAND&lt;&gt; Расширить
                                -- &lt;IMG&gt;EXPAND&lt;&gt; Expand
                                { "Russian", "&lt;IMG&gt;EXPAND&lt;&gt; Развернуть" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_GALAXYMAP_CONTEXT_MIN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;GALAXYWARP&lt;&gt; Варп  &lt;IMG&gt;GALAXYWAYPT&lt;&gt; Задать точку маршрута  &lt;IMG&gt;EXPAND&lt;&gt; Уменьшить
                                -- &lt;IMG&gt;GALAXYWARP&lt;&gt; Warp  &lt;IMG&gt;GALAXYWAYPT&lt;&gt; Set Waypoint  &lt;IMG&gt;EXPAND&lt;&gt; Minimise
                                { "Russian", "&lt;IMG&gt;GALAXYWARP&lt;&gt; Прыжок  &lt;IMG&gt;GALAXYWAYPT&lt;&gt; Задать точку маршрута  &lt;IMG&gt;EXPAND&lt;&gt; Свернуть" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_GALMAP_CONTEXT_WARP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;GALAXYWARP&lt;&gt; Варп
                                -- &lt;IMG&gt;GALAXYWARP&lt;&gt; Warp
                                { "Russian", "&lt;IMG&gt;GALAXYWARP&lt;&gt; Прыжок" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_GALMAP_CONTEXT_MIN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;EXPAND&lt;&gt; Уменьшить
                                -- &lt;IMG&gt;EXPAND&lt;&gt; Minimise
                                { "Russian", "&lt;IMG&gt;EXPAND&lt;&gt; Свернуть" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "HUD_INC_QUICKSILVERBOT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Подавление сигнала: робот для синтеза ртути
                                -- Signal Override: Quicksilver Synthesis Bot
                                { "Russian", "РОБОТ ДЛЯ СИНТЕЗА РТУТИ" },
                            }
                        },
                        -- указывает сколько энергии накоплено батареей
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_POWERLABEL_STORING" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Хранение: %AMOUNT%
                                -- Storing %AMOUNT%
                                { "Russian", "Накоплено %AMOUNT%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SHIP_BUY_FREE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Забрать корабль (бесплатно)
                                -- Claim Ship (Free)
                                { "Russian", "Забрать бесплатно" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "WEAP_BUY_FREE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Взять мультитул (бесплатно)
                                -- Take Multi-Tool (Free)
                                { "Russian", "Взять бесплатно" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CLAIM_BASE_LAST_EDIT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Последние изменения внес игрок %USER%
                                -- Last edited by %USER%
                                { "Russian", "Изменена %USER%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CLAIM_BASE_LAST_EDIT_ALT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Последние изменения базы внес игрок %USER%
                                -- Base last edited by %USER%
                                { "Russian", "База изменена %USER%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TELEPORT_EDIT_DETAIL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Последние изменения внес игрок %USER%, дата: %DAY%/%MONTH%/%YEAR%
                                -- Last edited by %USER% on %DAY%/%MONTH%/%YEAR%
                                { "Russian", "Последнее изменение от %DAY%.%MONTH%.%YEAR% внёс игрок %USER%" },
                            }
                        },

                        --#region TIP_.*_SHIP_CRASHED
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TIP_TRA_SHIP_CRASHED" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Заблудившийся гек просит помочь ему с ремонтом корабля.&#xA;Изучите &lt;STELLAR&gt;поврежденный звездолет&lt;&gt;.
                                -- A stranded Gek requests help with ship repairs&#xA;Investigate the &lt;STELLAR&gt;damaged starship&lt;&gt;
                                { "Russian", "Гек просит помочь ему с ремонтом корабля&#xA;Изучите &lt;STELLAR&gt;поврежденный звездолёт&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TIP_TRA_SHIP_CRASHED_DONE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Заблудившийся гек просит помочь ему с ремонтом корабля.&#xA;Вернитесь к существу и расскажите о своем успехе.
                                -- A stranded Gek requests help with ship repairs&#xA;Return to the lifeform to report your success
                                { "Russian", "Гек просит помочь ему с ремонтом корабля&#xA;Вернитесь к существу и расскажите об успехе" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TIP_WAR_SHIP_CRASHED" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Заблудившийся вай’кин просит помочь ему с ремонтом корабля.&#xA;Изучите &lt;STELLAR&gt;поврежденный звездолет&lt;&gt;.
                                { "Russian", "Вай’кин просит помочь ему с ремонтом корабля&#xA;Изучите &lt;STELLAR&gt;поврежденный звездолёт&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TIP_WAR_SHIP_CRASHED_DONE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Заблудившийся вай’кин просит помочь ему с ремонтом корабля.&#xA;Вернитесь к существу и расскажите о своем успехе.
                                { "Russian", "Вай’кин просит помочь ему с ремонтом корабля&#xA;Вернитесь к существу и расскажите об успехе" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TIP_EXP_SHIP_CRASHED" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Заблудившийся корвакс просит помочь ему с ремонтом корабля.&#xA;Изучите &lt;STELLAR&gt;поврежденный звездолет&lt;&gt;.
                                { "Russian", "Корвакс просит помочь ему с ремонтом корабля&#xA;Изучите &lt;STELLAR&gt;поврежденный звездолёт&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TIP_EXP_SHIP_CRASHED_ALT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Заблудившийся корвакс, неспособный починить свой корабль&#xA;Изучите &lt;STELLAR&gt;поврежденный звездолет&lt;&gt;
                                -- A stranded Korvax is unable to repair their ship&#xA;Investigate the &lt;STELLAR&gt;damaged starship&lt;&gt;
                                { "Russian", "Корвакс не может починить свой корабль&#xA;Изучите &lt;STELLAR&gt;поврежденный звездолёт&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TIP_EXP_SHIP_CRASHED_DONE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Заблудившийся корвакс просит помочь ему с ремонтом корабля.&#xA;Вернитесь к существу и расскажите о своем успехе.
                                { "Russian", "Корвакс просит помочь ему с ремонтом корабля&#xA;Вернитесь к существу и расскажите об успехе" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TIP_EXP_SHIP_CRASHED_DONE_ALT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Заблудившийся корвакс, неспособный починить свой корабль&#xA;Вернитесь к существу и расскажите о завершении ремонта
                                { "Russian", "Корвакс не может починить свой корабль&#xA;Вернитесь к существу и расскажите о завершении ремонта" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TIP_EXP_SHIP_CRASHED_DONE_ALT_B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Заблудившийся корвакс, неспособный починить свой корабль&#xA;Вернитесь к существу и расскажите о своей находке
                                { "Russian", "Корвакс не может починить свой корабль&#xA;Вернитесь к существу и расскажите о своей находке" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TIP_ALL_SHIP_CRASHED_DONE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Заблудившееся существо просит помочь ему с ремонтом корабля.&#xA;Вернитесь к существу и расскажите о своем успехе.
                                { "Russian", "Существо просит помочь ему с ремонтом корабля&#xA;Вернитесь к существу и расскажите об успехе" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TIP_EXP_SHIP_CRASHED_BUILD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Заблудившийся корвакс просит помочь ему отправить сообщение по координатам.&#xA;Создайте &lt;TECHNOLOGY&gt;станцию связи&lt;&gt;.&#xA;Чтобы открыть меню созидания, нажмите &lt;IMG&gt;BUILD_MENU&lt;&gt;.
                                -- A stranded Korvax requests help broadcasting their location&#xA;Construct a &lt;TECHNOLOGY&gt;Communications Station&lt;&gt;&#xA;Access the Build Menu with &lt;IMG&gt;BUILD_MENU&lt;&gt;
                                { "Russian", "Корвакс просит помочь отправить данные своего местоположения&#xA;Создайте &lt;TECHNOLOGY&gt;станцию связи&lt;&gt;&#xA;Откройте меню строительства с помощью &lt;IMG&gt;BUILD_MENU&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TIP_ALL_SHIP_CRASHED_BUILD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Заблудившееся существо просит помочь ему отправить сообщение по координатам.&#xA;Создайте &lt;TECHNOLOGY&gt;станцию связи&lt;&gt;.&#xA;Чтобы открыть меню созидания, нажмите &lt;IMG&gt;BUILD_MENU&lt;&gt;.
                                { "Russian", "Существо просит помочь отправить данные своего местоположения&#xA;Создайте &lt;TECHNOLOGY&gt;станцию связи&lt;&gt;&#xA;Откройте меню строительства с помощью &lt;IMG&gt;BUILD_MENU&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TIP_EXP_SHIP_CRASHED_DIG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Корвакс-собиратель заинтересовался местным артефактом.&#xA;Вернитесь к существу и расскажите о своей находке.
                                -- A scavenging Korvax has interest in a local artifact&#xA;Return to the lifeform to report your findings
                                { "Russian", "Корвакс-собиратель интересуется местным артефактом&#xA;Вернитесь к существу и расскажите о своей находке" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TIP_ALL_SHIP_CRASHED_DIG_DONE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Странствующий историк заинтересовался местным артефактом.&#xA;Вернитесь к существу и расскажите о своей находке.
                                -- A travelling historian has interest in a local artifact.&#xA;Return to the lifeform to report your findings.
                                { "Russian", "Странствующий историк интересуется местным артефактом&#xA;Вернитесь к существу и расскажите о своей находке" },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_STARCHART_EMPTY_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Планетарная карта (ПУСТАЯ)
                                -- PLANETARY CHART (EMPTY)
                                { "Russian", "ПУСТАЯ ПЛАНЕТАРНАЯ КАРТА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_STARCHART_EMPTY_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Планетарная карта (пустая)
                                -- Planetary Chart (Empty)
                                { "Russian", "Пустая планетарная карта" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TECH_TREE_COST_FORMAT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;COMMODITY&gt;СТОИМОСТЬ:&lt;&gt;%NUM% х %CURRENCY%
                                -- &lt;COMMODITY&gt;COST:&lt;&gt; %NUM% x %CURRENCY%
                                { "Russian", "&lt;COMMODITY&gt;СТОИМОСТЬ:&lt;&gt; %NUM% × %CURRENCY%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_TERRARIUM_SUBTITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Специальный вольер для животных.
                                -- Specialised Creature Enclosure
                                { "Russian", "Специальный вольер для животных" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_INSTALLED_LABEL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Установлена
                                -- Installed
                                { "Russian", "Установлено" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SALVAGE_IMPROVE_OPT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Улучшить звездолет
                                -- Upgrade Starship
                                { "Russian", "Улучшить звездолёт" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NPC_TECHSHOP_CATEGORY_SHIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- звездолет
                                -- starship
                                { "Russian", "звездолёт" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SALVAGE_TITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Оснащение звездолета
                                -- Starship Outfitting
                                { "Russian", "Оснащение звездолёта" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NEXUS_SHIP_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Исследование звездолета
                                -- Starship Research
                                { "Russian", "Исследование звездолёта" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SALVAGE_HELP_RES" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Воспользуйтесь этой станцией оснащения, чтобы увеличить размер &lt;TECHNOLOGY&gt;инвентаря&lt;&gt; звездолета или повысить его базовые характеристики, улучшив &lt;STELLAR&gt;класс&lt;&gt;.&#xA;Улучшения конкретных узлов звездолета, таких как вооружение и двигатели, можно приобрести у &lt;TECHNOLOGY&gt;торговцев технологиями&lt;&gt;.
                                -- Use this outfitting station to increase the size of the starship &lt;TECHNOLOGY&gt;inventory&lt;&gt;, or improve its base stats by upgrading its &lt;STELLAR&gt;class&lt;&gt;.&#xA;Upgrades to specific functions such as weapons or engines can be purchased from &lt;TECHNOLOGY&gt;Technology Merchants&lt;&gt;.
                                { "Russian", "Воспользуйтесь этой станцией оснащения, чтобы увеличить размер &lt;TECHNOLOGY&gt;инвентаря&lt;&gt; звездолёта или повысить его базовые характеристики, улучшив &lt;STELLAR&gt;класс&lt;&gt;.&#xA;Улучшения конкретных узлов звездолёта, таких как вооружение и двигатели, можно приобрести у &lt;TECHNOLOGY&gt;торговцев технологиями&lt;&gt;." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SALVAGE_LANG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Дроны отправлены к звездолету «&lt;STELLAR&gt;%SHIPNAME%&lt;&gt;». Доступные действия: &lt;STELLAR&gt;улучшение&lt;&gt; класса и/или хранилища или &lt;FUEL&gt;переплавка корабля&lt;&gt; на лом.
                                -- Drones deployed to target starship '&lt;STELLAR&gt;%SHIPNAME%&lt;&gt;'... Available operations: &lt;STELLAR&gt;Upgrade&lt;&gt; class and/or storage, or &lt;FUEL&gt;melt ship&lt;&gt; into scrap.
                                { "Russian", "Дроны отправлены к звездолёту «&lt;STELLAR&gt;%SHIPNAME%&lt;&gt;». Доступные действия: &lt;STELLAR&gt;улучшение&lt;&gt; класса и/или хранилища или &lt;FUEL&gt;переплавка корабля&lt;&gt; на лом." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SALVAGE_LANG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Улучшить &lt;TECHNOLOGY&gt;хранилище&lt;&gt; или &lt;STELLAR&gt;класс&lt;&gt; звездолета? Улучшить хранилище бесплатно с помощью юнитов &lt;TECHNOLOGY&gt;улучшения хранилища&lt;&gt;.
                                -- Augment &lt;TECHNOLOGY&gt;inventory storage&lt;&gt; or improve starship &lt;STELLAR&gt;class&lt;&gt;? Improve storage for free with &lt;TECHNOLOGY&gt;Storage Augmentation&lt;&gt; Units.
                                { "Russian", "Улучшить &lt;TECHNOLOGY&gt;хранилище&lt;&gt; или &lt;STELLAR&gt;класс&lt;&gt; звездолёта? Бесплатно улучшить хранилище можно с помощью &lt;TECHNOLOGY&gt;улучшений хранилища&lt;&gt;." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SALVAGE_CONFIRM_LANG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;FUEL&gt;ВНИМАНИЕ!&lt;&gt; Звездолет «&lt;STELLAR&gt;%SHIPNAME%&lt;&gt;» и весь его груз будут уничтожены! Подтвердить решение о разборке?
                                -- &lt;FUEL&gt;WARNING:&lt;&gt; Starship '&lt;STELLAR&gt;%SHIPNAME%&lt;&gt;' and all cargo will be destroyed! Confirm salvage decision?
                                { "Russian", "&lt;FUEL&gt;ВНИМАНИЕ!&lt;&gt; Звездолёт «&lt;STELLAR&gt;%SHIPNAME%&lt;&gt;» и весь его груз будут уничтожены! Подтвердить решение о разборке?" },
                            }
                        },
                        -- начало кавычки остается на первой строке из-за убогого автоформатирования
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SALVAGE_CLASS_RES" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Повышение класса звездолета подтверждено... Звездолет «&lt;STELLAR&gt;%SHIPNAME%&lt;&gt;» &lt;TRADEABLE&gt;улучшен&lt;&gt;!
                                -- Starship class improvement confirmed... '&lt;STELLAR&gt;%SHIPNAME%&lt;&gt;' has been successfully &lt;TRADEABLE&gt;upgraded&lt;&gt;!
                                { "Russian", "Повышение класса звездолёта подтверждено...&lt;NEWLINE&gt;Звездолёт «&lt;STELLAR&gt;%SHIPNAME%&lt;&gt;» &lt;TRADEABLE&gt;улучшен&lt;&gt;!" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SALVAGE_RES" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Дроны-утилизаторы отправлены. Звездолет «&lt;STELLAR&gt;%SHIPNAME%&lt;&gt;» будет немедленно разобран на лом. Полученные компоненты будут автоматически добавлены в экзокостюм клиента.
                                -- Salvage drones deployed. Starship '&lt;STELLAR&gt;%SHIPNAME%&lt;&gt;' will be immediately processed for scrap. Salvaged components will be added to customer Exosuit automatically.
                                { "Russian", "Дроны-утилизаторы отправлены. Звездолёт «&lt;STELLAR&gt;%SHIPNAME%&lt;&gt;» будет немедленно разобран на лом. Полученные компоненты будут автоматически добавлены в экзокостюм клиента." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NPC_NEXUS_TECH_SHIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Исследовать улучшения звездолета
                                { "Russian", "Исследовать улучшения звездолёта" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COLLECT_FIEND_MARKER" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Зараженная планета
                                -- Infested Planet
                                { "Russian", "Заражённая планета" },
                            }
                        },

                        --#region UI_SALVAGE_TECH_10_NAME
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SALVAGE_TECH_10_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КЛАПАНЫ ИИ ЗВЕЗДОЛЕТА
                                { "Russian", "КЛАПАНЫ ИИ ЗВЕЗДОЛЁТА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SALVAGE_TECH_10_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Клапаны ИИ звездолета
                                { "Russian", "Клапаны ИИ звездолёта" },
                            }
                        },
                        --#endregion


                        --#region UI_SHIP_CLASS_TOKEN_NAME
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SHIP_CLASS_TOKEN_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- БЛОК ПЕРЕГРУЗКИ ЗВЕЗДОЛЕТА
                                -- STARSHIP OVERDRIVE UNIT
                                { "Russian", "БЛОК ПЕРЕГРУЗКИ ЗВЕЗДОЛЁТА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SHIP_CLASS_TOKEN_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Блок перегрузки звездолета
                                { "Russian", "Блок перегрузки звездолёта" },
                            }
                        },
                        --#endregion

                        --#region UI_SHIPCHARGE_NAME
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SHIPCHARGE_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- БАТАРЕЯ ЗВЕЗДНОГО ЩИТА
                                { "Russian", "БАТАРЕЯ ЗВЁЗДНОГО ЩИТА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SHIPCHARGE_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Батарея звездного щита
                                { "Russian", "Батарея звёздного щита" },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SHIPCHARGE_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Блок хранения энергии, оптимизированный для использования &lt;COMMODITY&gt;в защитных системах звездолетов&lt;&gt;.&#xA; &#xA;Заполненные &lt;SPECIAL&gt;тритием&lt;&gt; конденсаторы быстро заряжают &lt;TECHNOLOGY&gt;отражающий щит&lt;&gt;, но перегружают оборудование меньшего масштаба.
                                { "Russian", "Блок хранения энергии, оптимизированный для использования &lt;COMMODITY&gt;в защитных системах звездолётов&lt;&gt;.&#xA; &#xA;Заполненные &lt;SPECIAL&gt;тритием&lt;&gt; конденсаторы быстро заряжают &lt;TECHNOLOGY&gt;отражающий щит&lt;&gt;, но перегружают оборудование меньшего масштаба." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CREA_DESC_WATER_TOX_5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вид «%PLANET%» обитает в щелочных морях планеты %NAME% и совершенно неподвластен воздействию токсичных веществ.
                                -- Found in the alkaline seas of planet %PLANET%, %NAME% shows no ill-effects from its toxic home waters.
                                { "Russian", "%NAME% обитает в щелочных морях планеты %PLANET% и совершенно неподвластен воздействию токсичных веществ." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "CTRL_BTN_GALAXY_SELECT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Варп
                                -- Warp
                                { "Russian", "Прыжок" },
                            }
                        },
                    }
                },
            }
        }
    }
}
