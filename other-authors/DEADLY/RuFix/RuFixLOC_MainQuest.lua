NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]    = "_RuFixLOC_MainQuest.pak",
    ["MOD_AUTHOR"]      = "gh0stwizard",
    ["MOD_DESCRIPTION"] = "Fixes for main quests",
    ["NMS_VERSION"]     = "5.72",
    ["EXML_CREATE"]     = "false",
    ["MODIFICATIONS"]   = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                { -- LANGUAGE/NMS_LOC1_RUSSIAN.MBIN
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_LOC1_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        --#region NOTIFY_LEAVE_PLANET
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NOTIFY_LEAVE_PLANET" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TITLE&gt;Покинуть планету&lt;&gt;&#xA;Поднимитесь на борт звездолета, чтобы приготовиться к отлету
                                -- &lt;TITLE&gt;Leave Planet&lt;&gt;&#xA;Board Starship for take off
                                { "Russian", "&lt;TITLE&gt;Покиньте планету&lt;&gt;&#xA;Поднимитесь на борт звездолёта" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NOTIFY_LEAVE_PLANET2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TITLE&gt;Покинуть планету&lt;&gt;&#xA;Отправьтесь на звездолете в космос. Удерживайте &lt;IMG&gt;THRUST&lt;&gt;, чтобы ускориться.&#xA;Поднимитесь с помощью &lt;IMG&gt;SHIPCAMERA&lt;&gt;, чтобы покинуть атмосферу
                                -- &lt;TITLE&gt;Leave Planet&lt;&gt;&#xA;Fly Starship into Space, Hold &lt;IMG&gt;THRUST&lt;&gt; to Accelerate&#xA;Fly up using &lt;IMG&gt;SHIPCAMERA&lt;&gt; to Exit Atmosphere
                                { "Russian", "&lt;TITLE&gt;Покиньте планету&lt;&gt;&#xA;Отправьтесь в космос, удерживайте &lt;IMG&gt;THRUST&lt;&gt; для ускорения&#xA;Устремитесь вверх с помощью &lt;IMG&gt;SHIPCAMERA&lt;&gt;, чтобы покинуть атмосферу" },
                            }
                        },
                        --#endregion

                    }
                },
                { -- LANGUAGE/NMS_LOC4_RUSSIAN.MBIN
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_LOC4_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        --#region Разное
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BASELOG_TITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Компьютерный архив базы
                                -- Base Computer Archives
                                { "Russian", "Архивы компьютера базы" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_STARTALT_OSD1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ОБНАРУЖЕН АВАРИЙНЫЙ СИГНАЛ С АВТОМАТИЧЕСКОГО ПЕРЕДАТЧИКА
                                -- AUTOMATED DISTRESS SIGNAL DETECTED
                                { "Russian", "ОБНАРУЖЕН АВТОМАТИЧЕСКИЙ СИГНАЛ БЕДСТВИЯ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_STARTALT_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПРОГРАММА ЗАГРУЗКИ ЗАВЕРШЕНА &lt;IMG&gt;SLASH&lt;&gt; ВОССТАНОВИТЕ ВАЖНЕЙШИЕ ПОДСИСТЕМЫ
                                -- BOOT SEQUENCE COMPLETE &lt;IMG&gt;SLASH&lt;&gt; REPAIR CRUCIAL SUB-SYSTEMS
                                { "Russian", "ПРОГРАММА ЗАГРУЗКИ ЗАВЕРШЕНА &lt;IMG&gt;SLASH&lt;&gt; ПОЧИНИТЕ ВАЖНЕЙШИЕ ПОДСИСТЕМЫ" },
                            }
                        },
                        { -- обрезается на "Ремонт будет завершен после"
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TUT_REPAIR_SHIP_OBJ2_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Для ремонта импульсного двигателя потребуются &lt;COMMODITY&gt;герметик&lt;&gt; и &lt;COMMODITY&gt;металлическая обшивка&lt;&gt;.&#xA;Найдите &lt;COMMODITY&gt;герметик&lt;&gt;.&#xA;Создайте &lt;COMMODITY&gt;металлическую обшивку&lt;&gt; из &lt;EARTH&gt;ферритной пыли&lt;&gt;.&#xA;&#xA;Отремонтируйте предметы в &lt;VAL_ON&gt;инвентаре&lt;&gt;.&#xA;Используйте &lt;IMG&gt;INVENTORY&lt;&gt;, чтобы открыть инвентарь. Для ремонта предметов используйте &lt;IMG&gt;REPAIR&lt;&gt;.&#xA;Ремонт можно &lt;VAL_ON&gt;разделить на несколько этапов&lt;&gt;. Ремонт будет завершен после полного восстановления всех компонентов.
                                -- Repairing the Pulse Engine requires &lt;COMMODITY&gt;Hermetic Seal&lt;&gt; and &lt;COMMODITY&gt;Metal Plating&lt;&gt;.&#xA;Search for a &lt;COMMODITY&gt;Hermetic Seal&lt;&gt;.&#xA;Craft &lt;COMMODITY&gt;Metal Plating&lt;&gt; from &lt;EARTH&gt;Ferrite Dust&lt;&gt;.&#xA;&#xA;Repair items from the &lt;VAL_ON&gt;Inventory&lt;&gt;.&#xA;Access the Inventory using &lt;IMG&gt;INVENTORY&lt;&gt;. Repair items using &lt;IMG&gt;REPAIR&lt;&gt;.&#xA;Repairs can be &lt;VAL_ON&gt;carried out in stages&lt;&gt;. The repair is complete when each component is repaired.
                                { "Russian", "Для ремонта потребуется &lt;COMMODITY&gt;герметик&lt;&gt; и &lt;COMMODITY&gt;металлическая обшивка&lt;&gt;. &lt;COMMODITY&gt;Герметик&lt;&gt; можно найти. &lt;COMMODITY&gt;Металлическую обшивку&lt;&gt; можно создать из &lt;EARTH&gt;ферритной пыли﻿.&lt;&gt;&#xA;&#xA;Отремонтируйте предметы в &lt;VAL_ON&gt;инвентаре&lt;&gt;.&#xA;Используйте &lt;IMG&gt;INVENTORY&lt;&gt;, чтобы открыть инвентарь. С помощью &lt;IMG&gt;REPAIR&lt;&gt; ремонтируйте предметы.&#xA;Ремонт можно &lt;VAL_ON&gt;проводить в несколько этапов&lt;&gt;." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TUT_ADV_MATS_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите материалы, чтобы починить звездолет
                                -- Gather materials to repair the starship
                                { "Russian", "Соберите материалы для починки звездолёта" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TUT_BASEBUILD_OBJ3_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите подходящую планету и разместите &lt;TECHNOLOGY&gt;компьютер базы&lt;&gt;.&#xA;Используйте маяк, чтобы зарегистрировать право владения данной площадкой и начать строительство.&#xA;Разместите компоненты новой базы с помощью меню созидания (&lt;IMG&gt;BUILD_MENU&lt;&gt;)
                                -- Find a suitable planet and deploy a &lt;TECHNOLOGY&gt;Base Computer&lt;&gt;.&#xA;Use the Beacon to register your claim on the site and begin construction.&#xA;Use the Build Menu (&lt;IMG&gt;BUILD_MENU&lt;&gt;) to place new base components.
                                { "Russian", "Найдите подходящую планету и разместите &lt;TECHNOLOGY&gt;компьютер базы&lt;&gt;.&#xA;Используйте компьютер, чтобы зарегистрировать право владения данной площадкой и начать строительство.&#xA;Разместите компоненты новой базы с помощью меню строительства (&lt;IMG&gt;BUILD_MENU&lt;&gt;)." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ALL_MYSTERY_SOLVED_LANG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;SLASH&lt;&gt; Мы &lt;FUEL&gt;&lt;&gt; наблюдаем &lt;FUEL&gt;за тобой&lt;&gt;, Странник-Друг. &lt;IMG&gt;SLASH&lt;&gt;&lt;FUEL&gt;Найди&lt;&gt; то&lt;FUEL&gt;, что &lt;&gt;мы&lt;FUEL&gt; тебе &lt;&gt;оставили&lt;IMG&gt;SLASH&lt;&gt;
                                -- &lt;IMG&gt;SLASH&lt;&gt; We &lt;FUEL&gt;are&lt;&gt; watching &lt;FUEL&gt;you&lt;&gt;, Traveller-friend. &lt;IMG&gt;SLASH&lt;&gt; &lt;FUEL&gt;Find&lt;&gt; what &lt;FUEL&gt;we&lt;&gt; have &lt;FUEL&gt;left&lt;&gt; you &lt;IMG&gt;SLASH&lt;&gt;
                                { "Russian", "&lt;IMG&gt;SLASH&lt;&gt; Мы наблюдаем &lt;FUEL&gt;за тобой&lt;&gt;, Странник-Друг &lt;IMG&gt;SLASH&lt;&gt; &lt;FUEL&gt;Найди&lt;&gt; то, что &lt;FUEL&gt;мы&lt;&gt; тебе &lt;FUEL&gt;оставили&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt; " },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TUT2_BASELOG_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Доберитесь до &lt;TECHNOLOGY&gt;компьютера базы&lt;&gt;.&#xA;Воспользуйтесь архивами и расшифруйте код, полученный с космической станции.
                                -- Visit the &lt;TECHNOLOGY&gt;Base Computer&lt;&gt;&#xA;Use archives to decrypt the code acquired from the Space Station
                                { "Russian", "Доберитесь до &lt;TECHNOLOGY&gt;компьютера базы&lt;&gt;&#xA;Воспользуйтесь архивами и расшифруйте код,&#xA;полученный на космической станции" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BASEFLAG_MAIN_LANG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Выполняется автоматизированное &lt;STELLAR&gt;восстановление архива&lt;&gt;... &lt;IMG&gt;SLASH&lt;&gt;&lt;IMG&gt;SLASH&lt;&gt;&lt;IMG&gt;SLASH&lt;&gt;
                                -- Automated &lt;STELLAR&gt;archive recovery&lt;&gt; in progress... &lt;IMG&gt;SLASH&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt;
                                { "Russian", "Выполняется автоматизированное &lt;STELLAR&gt;восстановление архива&lt;&gt;...&lt;NEWLINE&gt;&lt;IMG&gt;SLASH&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BASEFLAG_OBJ_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Установить на свой звездолет &lt;TECHNOLOGY&gt;приемник телепорта&lt;&gt;
                                -- Install the &lt;TECHNOLOGY&gt;Teleport Receiver&lt;&gt; in your starship
                                { "Russian", "Установить на звездолёт &lt;TECHNOLOGY&gt;приемник телепорта&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BASEFLAG_OBJ_5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Установите &lt;TECHNOLOGY&gt;эффективные ускорители&lt;&gt; на ваш звездолет.
                                -- Install the &lt;TECHNOLOGY&gt;Efficient Thrusters&lt;&gt; in your Starship.
                                { "Russian", "Установите &lt;TECHNOLOGY&gt;эффективные ускорители&lt;&gt; на ваш звездолёт" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BP_ANALYSTER_LANG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- БЛОК АНАЛИЗАТОРА АКТИВИРОВАН... Выберите нужное направление исследования...
                                -- ANALYSIS UNIT ONLINE... Indicate Desired Research Path...
                                { "Russian", "АНАЛИТИЧЕСКИЙ БЛОК АКТИВИРОВАН...&lt;NEWLINE&gt;Выберите нужное направление исследования..." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BP_ANALYSTER_LANG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- БЛОК АНАЛИЗАТОРА АКТИВИРОВАН... Рекомендация системы диагностики: добывайте &lt;STELLAR&gt;извлеченные данные&lt;&gt; из &lt;TECHNOLOGY&gt;засыпанных технологий&lt;&gt;. Установите и используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt;.
                                -- ANALYSIS UNIT ONLINE... Diagnostic Suggestion: User should recover &lt;STELLAR&gt;Salvaged Data&lt;&gt; from &lt;TECHNOLOGY&gt;Buried Technology&lt;&gt;. Equip and utilise an &lt;TECHNOLOGY&gt;Analysis Visor&lt;&gt;.
                                { "Russian", "АНАЛИТИЧЕСКИЙ БЛОК АКТИВИРОВАН...&lt;NEWLINE&gt;Рекомендация системы диагностики: добывайте &lt;STELLAR&gt;извлеченные данные&lt;&gt; из &lt;TECHNOLOGY&gt;засыпанных технологий&lt;&gt;. Установите и используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt;." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BASELOG_OSD_NEW" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КОМПЬЮТЕР БАЗЫ ЗАПУЩЕН &lt;IMG&gt;SLASH&lt;&gt; ДОСТУПНЫ АРХИВЫ
                                -- BASE COMPUTER ONLINE &lt;IMG&gt;SLASH&lt;&gt; ARCHIVES AVAILABLE
                                { "Russian", "ДОСТУПНЫ НОВЫЕ АРХИВЫ КОМПЬЮТЕРА БАЗЫ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BASEFLAG_LORE_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружено местоположение архива &lt;IMG&gt;SLASH&lt;&gt; Координаты загружены
                                -- Archive location detected &lt;IMG&gt;SLASH&lt;&gt; Coordinates Loaded
                                { "Russian", "ОБНАРУЖЕНО МЕСТОПОЛОЖЕНИЕ АРХИВА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BASEFLAG_LORE_MAP_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружено местоположение архива &lt;IMG&gt;SLASH&lt;&gt; Получены межзвездные координаты
                                -- Archive location detected &lt;IMG&gt;SLASH&lt;&gt; Interstellar Coordinates Acquired
                                { "Russian", "АРХИВ НАХОДИТСЯ В ДРУГОЙ ЗВЁЗДНОЙ СИСТЕМЕ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_POLO_LONGWAIT_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поло занят анализом ранее собранных данных.&#xA;Поло закончит анализ через &lt;STELLAR&gt;%TIME%&lt;&gt;.&#xA;Выберите возможные места назначения в журнале (&lt;IMG&gt;OPTIONS&lt;&gt;) или проложите курс на галактической карте (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                -- Polo is busy analysing the previous data collection&#xA;Time until Polo is finished: &lt;STELLAR&gt;%TIME%&lt;&gt;&#xA;Select opportunities in the Log (&lt;IMG&gt;OPTIONS&lt;&gt;) or plot a course on the Galaxy Map (&lt;IMG&gt;QUICK_MENU&lt;&gt;)
                                { "Russian", "Поло занят анализом ранее собранных данных&#xA;Поло закончит анализ через &lt;STELLAR&gt;%TIME%&lt;&gt;&#xA;Выберите любое задание в журнале (&lt;IMG&gt;OPTIONS&lt;&gt;) или проложите курс&#xA;на галактической карте (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BASEFLAG_OBJ_TIP_LORE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;Компьютер базы&lt;&gt; обнаружил &lt;STELLAR&gt;архив на другой планете&lt;&gt;.&#xA;Доберитесь до отмеченных координат и изучите находку.&#xA;Чтобы определить местоположение, сверьтесь с &lt;VAL_ON&gt;картой галактики&lt;&gt;, когда окажетесь в космосе.
                                -- The &lt;TECHNOLOGY&gt;Base Computer&lt;&gt; has located an &lt;STELLAR&gt;off-world archive&lt;&gt;.&#xA;Reach the marked coordinates and investigate.&#xA;Consult the &lt;VAL_ON&gt;Galaxy Map&lt;&gt; while in space to locate destination.
                                { "Russian", "&lt;TECHNOLOGY&gt;Компьютер базы&lt;&gt; обнаружил &lt;STELLAR&gt;архив на другой планете&lt;&gt;.&#xA;Доберитесь до отмеченных координат и изучите находку.&#xA;Находясь в космосе, откройте &lt;VAL_ON&gt;галактическую карту&lt;&gt; и определите куда следует направиться." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TRAVELLER_LOG_MAIN_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Я нахожусь в местности, отмеченной &lt;TECHNOLOGY&gt;компьютером базы&lt;&gt;. Удаленный терминал архива тихо гудит, ожидая моих действий.
                                -- I have reached the location marked by my &lt;TECHNOLOGY&gt;Base Computer&lt;&gt;. The remote archive terminal hums, awaiting my input.
                                { "Russian", "Я прибыл на место, указанное &lt;TECHNOLOGY&gt;компьютером базы&lt;&gt;. Удаленный терминал архива тихо гудит, ожидая моих действий." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SCAN_PORTAL_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите портал.&#xA;Чтобы просканировать окрестности, используйте &lt;IMG&gt;SCAN&lt;&gt;.
                                -- Locate a Portal&#xA;Use &lt;IMG&gt;SCAN&lt;&gt; to scan your surroundings.
                                { "Russian", "Найдите портал&#xA;Просканируйте окрестности с помощью &lt;IMG&gt;SCAN&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_APOLLO_SCAN_SPACE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Свяжитесь с Аполлоном, когда будете готовы продолжать&#xA;Используйте &lt;TECHNOLOGY&gt;сканер звездолета&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;), чтобы установить контакт
                                -- Contact Apollo when ready to proceed&#xA;Use the &lt;TECHNOLOGY&gt;Starship Scanner&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;) to make contact
                                { "Russian", "Свяжитесь с Аполлоном, когда будете готовы&#xA;Используйте &lt;TECHNOLOGY&gt;сканер звездолёта&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_APOLLO_SCAN_PLANET" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Свяжитесь с Аполлоном, когда будете готовы продолжать&#xA;Вернитесь в космос, чтобы установить связь
                                -- Contact Apollo when ready to proceed&#xA;Return to space to establish communication
                                { "Russian", "Свяжитесь с Аполлоном, когда будете готовы&#xA;Вернитесь в космос, чтобы установить связь" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COMMS_ALL_COMMS_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ВХОДЯЩЕЕ СООБЩЕНИЕ // ЧАСТОТА: ИЗВЕСТНЫЙ СОБЕСЕДНИК&#xA;Чтобы ответить, нажмите &lt;IMG&gt;QUICK_MENU&lt;&gt;.
                                -- INCOMING MESSAGE //  FREQUENCY : KNOWN CONTACT&#xA;Answer the Communicator by pressing &lt;IMG&gt;QUICK_MENU&lt;&gt;
                                { "Russian", "ВХОДЯЩЕЕ СООБЩЕНИЕ &lt;IMG&gt;SLASH&lt;&gt; ЗНАКОМЫЙ СОБЕСЕДНИК&#xA;Ответьте по коммуникатору из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COMM_RET_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вернитесь к куратору.&#xA;Куратор ждет вас в своем терминале.
                                -- Return to the Overseer&#xA;Your Overseer awaits at their terminal
                                { "Russian", "Вернитесь к куратору&#xA;Куратор ждёт вас у своего терминала" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TUT_BASEBUILD_OBJ5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найти модули базы: поиск чертежей
                                -- Find Base Modules: Unearth Blueprints
                                { "Russian", "Найти модули базы: извлечь из земли чертежи" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TUT_BASEBUILD_OBJ5_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Расширьте базу с помощью дополнительных &lt;TECHNOLOGY&gt;компонентов базы&lt;&gt;.&#xA;Постройте &lt;TECHNOLOGY&gt;модуль строительных исследований&lt;&gt; и изучите новые компоненты.&#xA;Добудьте &lt;TECHNOLOGY&gt;извлеченные данные&lt;&gt; из &lt;STELLAR&gt;закопанной технологии&lt;&gt; и потратьте их в &lt;TECHNOLOGY&gt;модуле строительных исследований&lt;&gt;.&#xA;Найдите &lt;STELLAR&gt;засыпанные технологии&lt;&gt; с помощью &lt;TECHNOLOGY&gt;ландшафтного манипулятора&lt;&gt;.
                                -- Expand your base with additional &lt;TECHNOLOGY&gt;Base Components&lt;&gt;.&#xA;Construct a &lt;TECHNOLOGY&gt;Construction Research Unit&lt;&gt; and research new components.&#xA;Extract &lt;TECHNOLOGY&gt;Salvaged Data&lt;&gt; from &lt;STELLAR&gt;Buried Technology&lt;&gt; and spend them at the &lt;TECHNOLOGY&gt;Construction Research Unit&lt;&gt;.&#xA;Search for &lt;STELLAR&gt;Buried Technology&lt;&gt; with a &lt;TECHNOLOGY&gt;Terrain Manipulator&lt;&gt;.
                                { "Russian", "Расширьте базу с помощью дополнительных &lt;TECHNOLOGY&gt;компонентов базы﻿.&lt;&gt;&#xA;Постройте &lt;TECHNOLOGY&gt;модуль строительных исследований&lt;&gt; и изучите новые компоненты.&#xA;Добудьте &lt;TECHNOLOGY&gt;извлеченные данные&lt;&gt; из &lt;STELLAR&gt;засыпанного технологического модуля&lt;&gt; и потратьте их в &lt;TECHNOLOGY&gt;модуле строительных исследований﻿.&lt;&gt;&#xA;&lt;TECHNOLOGY&gt;Ландшафтный манипулятор&lt;&gt; поможет добраться до модуля." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TUT_BASEBUILD_OBJ6_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Расширьте базу с помощью дополнительных &lt;TECHNOLOGY&gt;компонентов базы&lt;&gt;.&#xA;Добудьте &lt;TECHNOLOGY&gt;извлеченные данные&lt;&gt; из &lt;STELLAR&gt;закопанной технологии&lt;&gt; и потратьте их в &lt;TECHNOLOGY&gt;модуле строительных исследований&lt;&gt;.&#xA;Найдите &lt;STELLAR&gt;засыпанные технологии&lt;&gt; с помощью &lt;TECHNOLOGY&gt;ландшафтного манипулятора&lt;&gt;.
                                -- Expand your base with additional &lt;TECHNOLOGY&gt;Base Components&lt;&gt;.&#xA;Extract &lt;TECHNOLOGY&gt;Salvaged Data&lt;&gt; from &lt;STELLAR&gt;Buried Technology&lt;&gt; and spend them at the &lt;TECHNOLOGY&gt;Construction Research Unit&lt;&gt;.&#xA;Search for &lt;STELLAR&gt;Buried Technology&lt;&gt; with a &lt;TECHNOLOGY&gt;Terrain Manipulator&lt;&gt;.
                                { "Russian", "Расширьте базу с помощью дополнительных &lt;TECHNOLOGY&gt;компонентов базы﻿.&lt;&gt;&#xA;Добудьте &lt;TECHNOLOGY&gt;извлеченные данные&lt;&gt; из &lt;STELLAR&gt;засыпанного технологического модуля&lt;&gt; и потратьте их в &lt;TECHNOLOGY&gt;модуле строительных исследований﻿.&lt;&gt;&#xA;&lt;TECHNOLOGY&gt;Ландшафтный манипулятор&lt;&gt; поможет добраться до модуля." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FLEET_TUT_OBJ_TIP2A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Просмотреть текущее состояние флота можно на терминале &lt;TECHNOLOGY&gt;управления флотом&lt;&gt; на мостике.&#xA;Фрегаты имеют различные специализации, от которых зависит, для какого типа экспедиций они больше подходят.&#xA;Чтобы увеличить свой флот, ищите и покупайте новые фрегаты.
                                -- View your current fleet at the &lt;TECHNOLOGY&gt;Fleet Management&lt;&gt; terminal on the bridge.&#xA;Frigates have different specialisations marking their suitability for different expedition types.&#xA;Expand your fleet by finding and purchasing new frigates.
                                { "Russian", "Изучите текущее состояние флота на мостике в терминале &lt;TECHNOLOGY&gt;управления флотом﻿.&lt;&gt;&#xA;Фрегаты имеют различные специализации, от которых зависит, для какого типа экспедиций они больше подходят.&#xA;Находите и покупайте новые фрегаты, чтобы расширить свой флот." },
                            }
                        },
                        --#endregion

                        --#region UI_CORE_.*_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_LAUNCHSUB_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Дигидроген является ключевым компонентом &lt;COMMODITY&gt;взлетного топлива для звездолета&lt;&gt;.&#xA;Чтобы узнать больше, нажмите &lt;IMG&gt;OPTIONS&lt;&gt;.
                                -- Di-hydrogen is the key component of &lt;COMMODITY&gt;Starship Launch Fuel&lt;&gt;&#xA;Press &lt;IMG&gt;OPTIONS&lt;&gt; to learn more
                                { "Russian", "Дигидроген является ключевым компонентом&#xA;&lt;COMMODITY&gt;взлетного топлива для звездолёта&lt;&gt;&#xA;Чтобы узнать больше, нажмите &lt;IMG&gt;OPTIONS&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_FUEL2_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сжатый углерод обладает большим заряжающим потенциалом, чем обычный углерод.&#xA;Сжатый углерод можно найти в кристаллическом виде или создать его в &lt;TECHNOLOGY&gt;очистителе&lt;&gt;.&#xA;Чтобы узнать больше, нажмите &lt;IMG&gt;OPTIONS&lt;&gt;.
                                { "Russian", "Сжатый углерод заряжает лучше, чем обычный углерод&#xA;Найдите кристаллы с сжатым углеродом&#xA;Как вариант, получите его в &lt;TECHNOLOGY&gt;очистителе&lt;&gt;&#xA;Чтобы узнать больше, нажмите &lt;IMG&gt;OPTIONS&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_NAV_DROP_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Улучшите экзокостюм с помощью &lt;TECHNOLOGY&gt;капсулы&lt;&gt;, чтобы добавить ячейки инвентаря.&#xA;Воспользуйтесь &lt;STELLAR&gt;картой улучшения экзокостюма&lt;&gt;, чтобы найти капсулу.&#xA;Улучшения с помощью капсулы &lt;STELLAR&gt;бесплатны&lt;&gt;.
                                -- Upgrade the Exosuit at a &lt;TECHNOLOGY&gt;Drop Pod&lt;&gt; to add inventory slots&#xA;Use your &lt;STELLAR&gt;Exosuit Upgrade Chart&lt;&gt; to locate a drop pod&#xA;Upgrades from a drop pod are &lt;STELLAR&gt;free&lt;&gt;
                                { "Russian", "Улучшите экзокостюм с помощью &lt;TECHNOLOGY&gt;капсулы&lt;&gt;,&#xA;чтобы добавить ячейки инвентаря&#xA;Найдите капсулу с помощью &lt;STELLAR&gt;карты улучшения экзокостюма&lt;&gt;&#xA;Улучшения с помощью капсулы &lt;STELLAR&gt;бесплатны&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_OXYGEN_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Кислород используется для зарядки &lt;TECHNOLOGY&gt;системы жизнеобеспечения&lt;&gt;.&#xA;Чтобы узнать больше, нажмите &lt;IMG&gt;OPTIONS&lt;&gt;.
                                -- Use Oxygen to fuel your &lt;TECHNOLOGY&gt;Life Support Systems&lt;&gt;&#xA;Press &lt;IMG&gt;OPTIONS&lt;&gt; to learn more
                                { "Russian", "Кислород используется для зарядки &lt;TECHNOLOGY&gt;системы жизнеобеспечения&lt;&gt;&#xA;Чтобы узнать больше, нажмите &lt;IMG&gt;OPTIONS&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_CATALYST1_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Натрий используется для зарядки системы &lt;COMMODITY&gt;защиты от вредных факторов&lt;&gt;.&#xA;Чтобы узнать больше, нажмите &lt;IMG&gt;OPTIONS&lt;&gt;.
                                { "Russian", "Натрий используется для зарядки системы&#xA;&lt;COMMODITY&gt;защиты от вредных факторов&lt;&gt;&#xA;Чтобы узнать больше, нажмите &lt;IMG&gt;OPTIONS&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_CATALYST2_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Натрий используется для зарядки системы &lt;COMMODITY&gt;защиты от вредных факторов&lt;&gt;.&#xA;Очистите &lt;COMMODITY&gt;оксид азота&lt;&gt; в &lt;TECHNOLOGY&gt;очистителе&lt;&gt;, чтобы повысить его заряжающий потенциал.&#xA;Чтобы узнать больше, нажмите &lt;IMG&gt;OPTIONS&lt;&gt;.
                                -- Sodium is used to charge &lt;COMMODITY&gt;Hazard Protection&lt;&gt;&#xA;Refine &lt;COMMODITY&gt;Nitrous Oxide&lt;&gt; in the &lt;TECHNOLOGY&gt;Refiner&lt;&gt; for greater charge&#xA;Press &lt;IMG&gt;OPTIONS&lt;&gt; to learn more
                                { "Russian", "Натрий используется для зарядки системы&#xA;&lt;COMMODITY&gt;защиты от вредных факторов&lt;&gt;&#xA;Очищенный &lt;COMMODITY&gt;натрий&lt;&gt; &lt;TECHNOLOGY&gt;заряжает&lt;&gt; системы лучше" },
                            }
                        },
                        --#endregion

                        --#region UI_STARTALT_.*MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_STARTALT_REPAIR_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Проверьте работу &lt;TECHNOLOGY&gt;мультитула&lt;&gt; при помощи &lt;IMG&gt;SCAN&lt;&gt;: 0 / 1&#xA;Проверьте работу &lt;TECHNOLOGY&gt;анализирующего сканера&lt;&gt;, удерживая &lt;IMG&gt;AIM&lt;&gt;: 0 / 1
                                { "Russian", "Проверьте работу &lt;TECHNOLOGY&gt;мультитула&lt;&gt;, нажав &lt;IMG&gt;SCAN&lt;&gt;&#xA;Проверьте работу &lt;TECHNOLOGY&gt;анализирующего сканера&lt;&gt;, удерживая &lt;IMG&gt;AIM&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_STARTALT_REPAIR_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Проверьте работу &lt;TECHNOLOGY&gt;мультитула&lt;&gt; при помощи &lt;IMG&gt;SCAN&lt;&gt;: 0 / 1
                                { "Russian", "Проверьте работу &lt;TECHNOLOGY&gt;мультитула&lt;&gt;, нажав &lt;IMG&gt;SCAN&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_STARTALT_REPAIR_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Проверьте работу &lt;TECHNOLOGY&gt;анализирующего сканера&lt;&gt;, удерживая &lt;IMG&gt;AIM&lt;&gt;: 0 / 1
                                { "Russian", "Проверьте работу &lt;TECHNOLOGY&gt;анализирующего сканера&lt;&gt;, удерживая &lt;IMG&gt;AIM&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_STARTALT_REPAIR_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Отремонтируйте &lt;TECHNOLOGY&gt;системы мультитула&lt;&gt;&#xA;Используйте журнал заданий (&lt;IMG&gt;OPTIONS&lt;&gt;), чтобы выбрать программу ремонта
                                -- Repair &lt;TECHNOLOGY&gt;Multi-Tool Systems&lt;&gt;&#xA;Use the Mission Log (&lt;IMG&gt;OPTIONS&lt;&gt;) to select repair sequences
                                { "Russian", "Отремонтируйте &lt;TECHNOLOGY&gt;системы мультитула&lt;&gt;&#xA;Используйте журнал заданий (&lt;IMG&gt;OPTIONS&lt;&gt;), чтобы изменить последовательность ремонта" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_STARTALT_REPAIR_MSG_TEMP0" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Активируйте &lt;TECHNOLOGY&gt;сканер&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;): 0 / 1
                                { "Russian", "Активируйте &lt;TECHNOLOGY&gt;сканер&lt;&gt;, нажав &lt;IMG&gt;SCAN&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_STARTALT_REPAIR_MSG_TEMP1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Активируйте &lt;TECHNOLOGY&gt;сканер&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;): 0 / 1&#xA;Найдите &lt;CATALYST&gt;натрий&lt;&gt; с помощью &lt;TECHNOLOGY&gt;сканера&lt;&gt;&#xA;Используйте натрий для подзарядки системы &lt;TECHNOLOGY&gt;температурной защиты&lt;&gt;
                                { "Russian", "Активируйте &lt;TECHNOLOGY&gt;сканер&lt;&gt;, нажав &lt;IMG&gt;SCAN&lt;&gt;&#xA;Найдите &lt;CATALYST&gt;натрий&lt;&gt; с помощью &lt;TECHNOLOGY&gt;сканера&lt;&gt;&#xA;Используйте натрий для подзарядки системы&#xA;&lt;TECHNOLOGY&gt;температурной защиты&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_STARTALT_REPAIR_MSG_TEMP2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите &lt;CATALYST&gt;натрий&lt;&gt;: 0 / 10&#xA;Добудьте натрий из небольших желтых &lt;CATALYST&gt;растений&lt;&gt;&#xA;Используйте натрий для подзарядки системы &lt;TECHNOLOGY&gt;температурной защиты&lt;&gt;
                                { "Russian", "Соберите &lt;CATALYST&gt;натрий&lt;&gt;: 0/10&#xA;Добудьте натрий из небольших желтых &lt;CATALYST&gt;растений&lt;&gt;&#xA;Используйте натрий для подзарядки системы&#xA;&lt;TECHNOLOGY&gt;тепловой защиты&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_STARTALT_REPAIR_MSG_TOX0" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Активируйте &lt;TECHNOLOGY&gt;сканер&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;): 0 / 1
                                { "Russian", "Активируйте &lt;TECHNOLOGY&gt;сканер&lt;&gt;, нажав &lt;IMG&gt;SCAN&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_STARTALT_REPAIR_MSG_TOX1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Активируйте &lt;TECHNOLOGY&gt;сканер&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;): 0 / 1&#xA;Найдите &lt;CATALYST&gt;натрий&lt;&gt; с помощью &lt;TECHNOLOGY&gt;сканера&lt;&gt;&#xA;Используйте натрий для подзарядки системы &lt;TECHNOLOGY&gt;защиты от токсинов&lt;&gt;
                                { "Russian", "Активируйте &lt;TECHNOLOGY&gt;сканер&lt;&gt;, нажав &lt;IMG&gt;SCAN&lt;&gt;&#xA;Найдите &lt;CATALYST&gt;натрий&lt;&gt; с помощью &lt;TECHNOLOGY&gt;сканера&lt;&gt;&#xA;Используйте натрий для подзарядки системы&#xA;&lt;TECHNOLOGY&gt;защиты от токсинов&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_STARTALT_REPAIR_MSG_TOX2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите &lt;CATALYST&gt;натрий&lt;&gt;: 0 / 10&#xA;Добудьте натрий из небольших желтых &lt;CATALYST&gt;растений&lt;&gt;&#xA;Используйте натрий для подзарядки системы &lt;TECHNOLOGY&gt;защиты от токсинов&lt;&gt;
                                { "Russian", "Соберите &lt;CATALYST&gt;натрий&lt;&gt;: 0/10&#xA;Добудьте натрий из небольших желтых &lt;CATALYST&gt;растений&lt;&gt;&#xA;Используйте натрий для подзарядки системы&#xA;&lt;TECHNOLOGY&gt;защиты от токсинов&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_STARTALT_REPAIR_MSG_RAD0" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Активируйте &lt;TECHNOLOGY&gt;сканер&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;): 0 / 1
                                { "Russian", "Активируйте &lt;TECHNOLOGY&gt;сканер&lt;&gt;, нажав &lt;IMG&gt;SCAN&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_STARTALT_REPAIR_MSG_RAD1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Активируйте &lt;TECHNOLOGY&gt;сканер&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;): 0 / 1&#xA;Найдите &lt;CATALYST&gt;натрий&lt;&gt; с помощью &lt;TECHNOLOGY&gt;сканера&lt;&gt;&#xA;Используйте натрий для подзарядки системы &lt;TECHNOLOGY&gt;защиты от радиации&lt;&gt;
                                { "Russian", "Активируйте &lt;TECHNOLOGY&gt;сканер&lt;&gt;, нажав &lt;IMG&gt;SCAN&lt;&gt;&#xA;Найдите &lt;CATALYST&gt;натрий&lt;&gt; с помощью &lt;TECHNOLOGY&gt;сканера&lt;&gt;&#xA;Используйте натрий для подзарядки системы&#xA;&lt;TECHNOLOGY&gt;защиты от радиации&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_STARTALT_REPAIR_MSG_RAD2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите &lt;CATALYST&gt;натрий&lt;&gt;: 0 / 10&#xA;Добудьте натрий из небольших желтых &lt;CATALYST&gt;растений&lt;&gt;&#xA;Используйте натрий для подзарядки системы &lt;TECHNOLOGY&gt;защиты от радиации&lt;&gt;
                                { "Russian", "Соберите &lt;CATALYST&gt;натрий&lt;&gt;: 0/10&#xA;Добудьте натрий из небольших желтых &lt;CATALYST&gt;растений&lt;&gt;&#xA;Используйте натрий для подзарядки системы&#xA;&lt;TECHNOLOGY&gt;защиты от радиации&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_STARTALT_REPAIR_MSG6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Используйте &lt;TECHNOLOGY&gt;сканер&lt;&gt;, чтобы найти ресурсы&#xA;Активируйте &lt;TECHNOLOGY&gt;сканер&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;)
                                { "Russian", "Используйте &lt;TECHNOLOGY&gt;сканер&lt;&gt;, чтобы найти ресурсы&#xA;Активируйте &lt;TECHNOLOGY&gt;сканер&lt;&gt;, нажав &lt;IMG&gt;SCAN&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_STARTALT_REPAIR_MSG7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Используйте &lt;TECHNOLOGY&gt;сканер&lt;&gt;, чтобы найти ресурсы&#xA;Выберите задание «&lt;STELLAR&gt;Ремонт сканера&lt;&gt;» в журнале (&lt;IMG&gt;OPTIONS&lt;&gt;)
                                -- Use the &lt;TECHNOLOGY&gt;Scanner&lt;&gt; to locate resources&#xA;Select the &lt;STELLAR&gt;Scanner Repair&lt;&gt; mission in the Log (&lt;IMG&gt;OPTIONS&lt;&gt;)
                                { "Russian", "Используйте &lt;TECHNOLOGY&gt;сканер&lt;&gt;, чтобы найти ресурсы&#xA;Выберите задание &lt;STELLAR&gt;Ремонт сканера&lt;&gt; в журнале (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_STARTALT_REPAIR_MSG8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Перезарядите &lt;CATALYST&gt;натрием&lt;&gt; систему защиты от вредных факторов&#xA;Выполните перезарядку в быстром меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;) или инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;)&#xA;Текущий уровень защиты: %CURRENT% / &lt;STELLAR&gt;%AMOUNT%&lt;&gt;
                                { "Russian", "Перезарядите &lt;CATALYST&gt;натрием&lt;&gt; систему защиты от вредных факторов&#xA;Выполните перезарядку из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;) или в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;)&#xA;Текущий уровень защиты: %CURRENT%/&lt;STELLAR&gt;%AMOUNT%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_STARTALT_REPAIR_MSG8_VR1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Используйте &lt;CATALYST&gt;натрий&lt;&gt; для перезарядки системы защиты от вредных факторов.&#xA;Подзарядите через &lt;STELLAR&gt;быстрое меню&lt;&gt; или &lt;STELLAR&gt;инвентарь&lt;&gt;.&#xA;Чтобы открыть меню, укажите на &lt;STELLAR&gt;%SECONDARY_HAND%&lt;&gt;.
                                { "Russian", "Используйте &lt;CATALYST&gt;натрий&lt;&gt; для перезарядки системы защиты от вредных факторов&#xA;Выполните перезарядку в &lt;STELLAR&gt;быстром меню&lt;&gt; или &lt;STELLAR&gt;инвентаре&lt;&gt;&#xA;Чтобы открыть меню, укажите на &lt;STELLAR&gt;%SECONDARY_HAND%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_STARTALT_REPAIR_MSG8_VR2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Используйте &lt;CATALYST&gt;натрий&lt;&gt; для подзарядки системы защиты от вредных факторов.&#xA;Выполните перезарядку в &lt;STELLAR&gt;быстром меню&lt;&gt; или &lt;STELLAR&gt;инвентаре&lt;&gt;.&#xA;Чтобы вызвать &lt;TECHNOLOGY&gt;быстрое меню&lt;&gt;, нажмите &lt;IMG&gt;FE_SELECT&lt;&gt;.
                                { "Russian", "Используйте &lt;CATALYST&gt;натрий&lt;&gt; для подзарядки системы защиты от вредных факторов&#xA;Выполните перезарядку в &lt;STELLAR&gt;быстром меню&lt;&gt; или &lt;STELLAR&gt;инвентаре&lt;&gt;&#xA;Чтобы вызвать &lt;TECHNOLOGY&gt;быстрое меню&lt;&gt;, нажмите &lt;IMG&gt;FE_SELECT&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_STARTALT_REPAIR_MSG8_VR3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Используйте &lt;CATALYST&gt;натрий&lt;&gt; для подзарядки системы защиты от вредных факторов.&#xA;Выполните перезарядку в &lt;STELLAR&gt;быстром меню&lt;&gt; или &lt;STELLAR&gt;инвентаре&lt;&gt;.&#xA;Выберите &lt;TECHNOLOGY&gt;«Зарядить»&lt;&gt;, нажав &lt;IMG&gt;FE_SELECT&lt;&gt;.
                                { "Russian", "Используйте &lt;CATALYST&gt;натрий&lt;&gt; для подзарядки системы защиты от вредных факторов&#xA;Выполните перезарядку в &lt;STELLAR&gt;быстром меню&lt;&gt; или &lt;STELLAR&gt;инвентаре&lt;&gt;&#xA;Выберите &lt;TECHNOLOGY&gt;Зарядить&lt;&gt;, нажав &lt;IMG&gt;FE_SELECT&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region UI_TUT_ADV_MATS_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TUT_ADV_MATS_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Получены &lt;COMMODITY&gt;навигационные данные&lt;&gt;&#xA;Создайте &lt;TECHNOLOGY&gt;усилитель сигнала&lt;&gt;, чтобы использовать навигационные данные&#xA;Чтобы открыть меню созидания, нажмите &lt;IMG&gt;BUILD_MENU&lt;&gt;.
                                { "Russian", "Получены &lt;COMMODITY&gt;навигационные данные&lt;&gt;&#xA;Создайте &lt;TECHNOLOGY&gt;усилитель сигнала&lt;&gt;, чтобы использовать навигационные данные&#xA;Чтобы открыть меню строительства, нажмите &lt;IMG&gt;BUILD_MENU&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TUT_ADV_MATS_MSG2B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Получены &lt;COMMODITY&gt;навигационные данные&lt;&gt;&#xA;Создайте &lt;TECHNOLOGY&gt;усилитель сигнала&lt;&gt;, чтобы использовать навигационные данные&#xA;Создайте: %ITEM% %CURRENT%/%AMOUNT%&#xA;Откройте инвентарь (&lt;IMG&gt;INVENTORY&lt;&gt;) и используйте &lt;IMG&gt;PRODMENU&lt;&gt;, чтобы создавать в пустых ячейках
                                { "Russian", "Получены &lt;COMMODITY&gt;навигационные данные&lt;&gt;&#xA;Создайте &lt;TECHNOLOGY&gt;усилитель сигнала&lt;&gt;, чтобы использовать навигационные данные&#xA;Создайте: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;Откройте инвентарь (&lt;IMG&gt;INVENTORY&lt;&gt;) и создайте объект в пустой ячейке с помощью &lt;IMG&gt;PRODMENU&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TUT_ADV_MATS_MSG2D" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Получены &lt;COMMODITY&gt;навигационные данные&lt;&gt;&#xA;Создайте &lt;TECHNOLOGY&gt;усилитель сигнала&lt;&gt;, чтобы использовать навигационные данные&#xA;Создайте: %ITEM% %CURRENT%/%AMOUNT%&#xA;Откройте инвентарь (&lt;IMG&gt;INVENTORY&lt;&gt;) и используйте &lt;IMG&gt;PRODMENU&lt;&gt;, чтобы создавать в пустых ячейках
                                { "Russian", "Получены &lt;COMMODITY&gt;навигационные данные&lt;&gt;&#xA;Создайте &lt;TECHNOLOGY&gt;усилитель сигнала&lt;&gt;, чтобы использовать навигационные данные&#xA;Создайте: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;Откройте инвентарь (&lt;IMG&gt;INVENTORY&lt;&gt;) и создайте объект в пустой ячейке с помощью &lt;IMG&gt;PRODMENU&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TUT_ADV_MATS_MSG2E" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Получены &lt;COMMODITY&gt;навигационные данные&lt;&gt;&#xA;Создайте &lt;TECHNOLOGY&gt;усилитель сигнала&lt;&gt;, чтобы использовать навигационные данные&#xA;Соберите: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;Используйте &lt;TECHNOLOGY&gt;сканер&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;), чтобы найти %ITEM%
                                { "Russian", "Получены &lt;COMMODITY&gt;навигационные данные&lt;&gt;&#xA;Создайте &lt;TECHNOLOGY&gt;усилитель сигнала&lt;&gt;, чтобы использовать навигационные данные&#xA;Соберите: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;Начните поиски с помощью &lt;TECHNOLOGY&gt;сканера&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TUT_ADV_MATS_MSG3B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Получена &lt;COMMODITY&gt;планетарная карта&lt;&gt;.&#xA;Откройте инвентарь (&lt;IMG&gt;INVENTORY&lt;&gt;), чтобы просмотреть данные.&#xA;Выделите карту и нажмите &lt;IMG&gt;FE_ALT1&lt;&gt;, чтобы &lt;STELLAR&gt;проложить маршрут&lt;&gt;.
                                -- &lt;COMMODITY&gt;Planetary Chart&lt;&gt; recovered&#xA;Open the Inventory (&lt;IMG&gt;INVENTORY&lt;&gt;) to view data&#xA;Highlight the chart and use &lt;IMG&gt;FE_ALT1&lt;&gt; to &lt;STELLAR&gt;Plot a Route&lt;&gt;
                                { "Russian", "Получена &lt;COMMODITY&gt;планетарная карта&lt;&gt;&#xA;Откройте инвентарь (&lt;IMG&gt;INVENTORY&lt;&gt;), чтобы просмотреть данные&#xA;Выделите карту и нажмите &lt;IMG&gt;FE_ALT1&lt;&gt;, чтобы &lt;STELLAR&gt;проложить маршрут&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TUT_ADV_MATS_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Доберитесь до &lt;STELLAR&gt;отмеченных координат&lt;&gt;: 0/1&#xA;Планетарная карта использована для прокладки маршрута
                                { "Russian", "Доберитесь до &lt;STELLAR&gt;отмеченных координат" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TUT_ADV_MATS_MSG4A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Доберитесь до отмеченных координат&#xA;Используйте &lt;TECHNOLOGY&gt;компас&lt;&gt; для определения интересных мест
                                { "Russian", "Доберитесь до отмеченных координат&#xA;Используйте &lt;TECHNOLOGY&gt;компас&lt;&gt; для нахождения интересных мест" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TUT_ADV_MATS_MSG4C" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Доберитесь до отмеченных координат&#xA;Используйте &lt;TECHNOLOGY&gt;реактивный ранец&lt;&gt; (&lt;IMG&gt;JUMP&lt;&gt;) для полета на небольшие расстояния&#xA;Или &lt;TECHNOLOGY&gt;ускоритель экзокостюма&lt;&gt; (&lt;IMG&gt;RUN&lt;&gt;), чтобы двигаться быстрее
                                -- Reach the marked coordinates&#xA;Use the &lt;TECHNOLOGY&gt;Jetpack&lt;&gt; (&lt;IMG&gt;JUMP&lt;&gt;) to fly short distances&#xA;Or the &lt;TECHNOLOGY&gt;Exosuit Speed Boost&lt;&gt; (&lt;IMG&gt;RUN&lt;&gt;) to sprint
                                { "Russian", "Доберитесь до отмеченных координат&#xA;Используйте &lt;TECHNOLOGY&gt;реактивный ранец&lt;&gt; (&lt;IMG&gt;JUMP&lt;&gt;) для полета на небольшие расстояния&#xA;Или &lt;TECHNOLOGY&gt;ускоритель экзокостюма&lt;&gt; (&lt;IMG&gt;RUN&lt;&gt;) для бега" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TUT_ADV_MATS_MSG4D" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Доберитесь до отмеченных координат&#xA;Для сканирования объектов используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;).&#xA;Сканируйте объекты, чтобы &lt;COMMODITY&gt;зарабатывать юниты&lt;&gt; (&lt;IMG&gt;UNITS&lt;&gt;) и &lt;TRADEABLE&gt;переименовывать найденное&lt;&gt;
                                -- Reach the marked coordinates&#xA;Use the &lt;TECHNOLOGY&gt;Analysis Visor&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;) to scan objects&#xA;Scan objects to &lt;COMMODITY&gt;earn units&lt;&gt; (&lt;IMG&gt;UNITS&lt;&gt;) and &lt;TRADEABLE&gt;rename them&lt;&gt;
                                { "Russian", "Доберитесь до отмеченных координат&#xA;Для сканирования объектов используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)&#xA;Сканируйте объекты, чтобы &lt;COMMODITY&gt;зарабатывать юниты&lt;&gt; (&lt;IMG&gt;UNITSMALL&lt;&gt;) и &lt;TRADEABLE&gt;переименовывать их&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TUT_ADV_MATS_MSG6A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы найти звездолет: 0 / 1&#xA;Вернитесь к кораблю и продолжите ремонт
                                { "Russian", "Используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы найти звездолёт&#xA;Вернитесь к кораблю и продолжите ремонт" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TUT_ADV_MATS_MSG6A_VR" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt;, чтобы найти звездолет: 0 / 1&#xA;Поднимите &lt;STELLAR&gt;%SECONDARY_HAND%&lt;&gt;, отведите ее за голову и нажмите &lt;IMG&gt;AIM&lt;&gt;, чтобы его включить.&#xA;Вернитесь к кораблю и продолжите ремонт.
                                { "Russian", "Используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt;, чтобы найти звездолёт&#xA;Поднимите &lt;STELLAR&gt;%SECONDARY_HAND%&lt;&gt;, отведите ее за голову и нажмите &lt;IMG&gt;AIM&lt;&gt;, чтобы его включить&#xA;Вернитесь к кораблю и продолжите ремонт" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TUT_ADV_MATS_MSG6B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;FUEL&gt;ВНИМАНИЕ!&lt;&gt; Не удается обнаружить звездолет!&#xA;Выберите задание «&lt;TECHNOLOGY&gt;Анализирующий визор&lt;&gt;» в журнале (&lt;IMG&gt;OPTIONS&lt;&gt;)
                                -- &lt;FUEL&gt;WARNING:&lt;&gt; Unable to locate Starship&#xA;Select &lt;TECHNOLOGY&gt;Analysis Visor&lt;&gt; mission in the Log (&lt;IMG&gt;OPTIONS&lt;&gt;)
                                { "Russian", "&lt;FUEL&gt;ВНИМАНИЕ!&lt;&gt; Не удается обнаружить звездолёт!&#xA;Выберите задание &lt;TECHNOLOGY&gt;Анализирующий визор&lt;&gt; в журнале (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TUT_ADV_MATS_MSG7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Укройтесь в пещере или здании&#xA;Зарядите &lt;CATALYST&gt;натрием&lt;&gt; систему &lt;TECHNOLOGY&gt;защиты от вредных факторов&lt;&gt;&#xA;Используйте сканер (&lt;IMG&gt;SCAN&lt;&gt;), чтобы найти &lt;CATALYST&gt;натрий&lt;&gt;.
                                { "Russian", "Укройтесь в пещере или здании&#xA;Зарядите &lt;CATALYST&gt;натрием&lt;&gt; систему &lt;TECHNOLOGY&gt;защиты от вредных факторов&lt;&gt;&#xA;Найдите &lt;CATALYST&gt;натрий&lt;&gt; с помощью сканера (&lt;IMG&gt;SCAN&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TUT_ADV_MATS_MSG7_GUN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Укройтесь в пещере или здании.&#xA;Зарядите &lt;CATALYST&gt;натрием&lt;&gt; систему &lt;TECHNOLOGY&gt;защиты от вредных факторов&lt;&gt;.&#xA;Чтобы найти натрий, возьмите в руки мультитул (заведите руку за плечо и нажмите &lt;IMG&gt;VR_HOLSTER&lt;&gt;).
                                { "Russian", "Укройтесь в пещере или здании&#xA;Зарядите &lt;CATALYST&gt;натрием&lt;&gt; систему &lt;TECHNOLOGY&gt;защиты от вредных факторов&lt;&gt;&#xA;Возьмите в руки мультитул: заведите руку за плечо и нажмите &lt;IMG&gt;VR_HOLSTER&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TUT_ADV_MATS_MSG7_VRA" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Укройтесь в пещере или здании&#xA;Зарядите &lt;CATALYST&gt;натрием&lt;&gt; систему &lt;TECHNOLOGY&gt;защиты от вредных факторов&lt;&gt;&#xA;Чтобы найти натрий, укажите на заднюю сторону своего &lt;TECHNOLOGY&gt;мультитула&lt;&gt;
                                { "Russian", "Укройтесь в пещере или здании&#xA;Зарядите &lt;CATALYST&gt;натрием&lt;&gt; систему &lt;TECHNOLOGY&gt;защиты от вредных факторов&lt;&gt;&#xA;Чтобы найти натрий, укажите на заднюю сторону своего &lt;TECHNOLOGY&gt;мультитула&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TUT_ADV_MATS_MSG8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Отремонтируйте звездолет&#xA;Выберите в журнале (&lt;IMG&gt;OPTIONS&lt;&gt;) дополнительное задание: &lt;VAL_ON&gt;Критический ремонт&lt;&gt;
                                -- Repair the Starship&#xA;Select &lt;VAL_ON&gt;Critical Maintenance&lt;&gt; secondary mission in the Log (&lt;IMG&gt;OPTIONS&lt;&gt;)
                                { "Russian", "Отремонтируйте звездолёт&#xA;Выберите дополнительное задание &lt;VAL_ON&gt;Критический ремонт&lt;&gt; в журнале (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TUT_ADV_MATS_MSG9" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Требуются продвинутые материалы: &lt;EARTH&gt;чистый феррит&lt;&gt;&#xA;Разместите &lt;TECHNOLOGY&gt;портативный очиститель&lt;&gt;&#xA;Чтобы открыть &lt;VAL_ON&gt;меню созидания&lt;&gt;, нажмите &lt;IMG&gt;BUILD_MENU&lt;&gt;.
                                { "Russian", "Требуются продвинутые материалы: &lt;EARTH&gt;чистый феррит&lt;&gt;&#xA;Разместите &lt;TECHNOLOGY&gt;портативный очиститель&lt;&gt;&#xA;Чтобы открыть &lt;VAL_ON&gt;меню строительства&lt;&gt;, нажмите &lt;IMG&gt;BUILD_MENU&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TUT_ADV_MATS_MSG9_VR1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Разместите &lt;TECHNOLOGY&gt;портативный очиститель&lt;&gt;&#xA;Чтобы открыть меню, укажите на &lt;STELLAR&gt;%SECONDARY_HAND%&lt;&gt;.&#xA;Укажите на меню созидания и выберите его при помощи &lt;IMG&gt;QUICK_ACTION&lt;&gt;
                                { "Russian", "Разместите &lt;TECHNOLOGY&gt;портативный очиститель&lt;&gt;&#xA;Чтобы открыть меню, укажите на &lt;STELLAR&gt;%SECONDARY_HAND%&lt;&gt;&#xA;Укажите на меню строительства и выберите его при помощи &lt;IMG&gt;QUICK_ACTION&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TUT_ADV_MATS_MSG9_VR2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Разместите &lt;TECHNOLOGY&gt;портативный очиститель&lt;&gt;.&#xA;Укажите на меню созидания и выберите его при помощи &lt;IMG&gt;QUICK_ACTION&lt;&gt;&#xA;Используйте &lt;IMG&gt;QUICK_ACTION&lt;&gt;, чтобы выбирать детали и подкатегории.&#xA;Укажите на окружающее вас пространство, выберите, где вы хотите разместить выбранную деталь и подтвердите свое решение, нажав &lt;IMG&gt;QUICK_ACTION&lt;&gt;
                                { "Russian", "Разместите &lt;TECHNOLOGY&gt;портативный очиститель&lt;&gt;&#xA;Укажите на меню строительства и выберите его при помощи &lt;IMG&gt;QUICK_ACTION&lt;&gt;&#xA;Используйте &lt;IMG&gt;QUICK_ACTION&lt;&gt;, чтобы выбирать детали и подкатегории&#xA;Укажите на окружающее вас пространство, выберите, где вы хотите разместить выбранную деталь и подтвердите свое решение, нажав &lt;IMG&gt;QUICK_ACTION&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TUT_ADV_MATS_MSG10A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Требуются продвинутые материалы: &lt;EARTH&gt;чистый феррит&lt;&gt;.&#xA;Заправьте &lt;TECHNOLOGY&gt;портативный очиститель&lt;&gt; &lt;FUEL&gt;углеродом&lt;&gt;.&#xA;Соберите %ITEM% с &lt;STELLAR&gt;деревьев и растений&lt;&gt;: %CURRENT%/%AMOUNT%
                                { "Russian", "Требуются продвинутые материалы: &lt;EARTH&gt;чистый феррит&lt;&gt;&#xA;Заправьте &lt;TECHNOLOGY&gt;портативный очиститель&lt;&gt; &lt;FUEL&gt;углеродом&lt;&gt;&#xA;Соберите с &lt;STELLAR&gt;деревьев и растений&lt;&gt;: %ITEM% (%CURRENT%/%AMOUNT%)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TUT_ADV_MATS_MSG10" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Получены продвинутые материалы: &lt;EARTH&gt;чистый феррит&lt;&gt;&#xA;Заправьте топливом &lt;TECHNOLOGY&gt;портативный очиститель&lt;&gt;&#xA;Используйте &lt;IMG&gt;INTERACT&lt;&gt;, чтобы осмотреть размещенный очиститель.
                                -- Advanced Materials Required: &lt;EARTH&gt;Pure Ferrite&lt;&gt;&#xA;Fuel the &lt;TECHNOLOGY&gt;Portable Refiner&lt;&gt;&#xA;Use &lt;IMG&gt;INTERACT&lt;&gt; to inspect a deployed Refiner
                                { "Russian", "Требуются продвинутые материалы: &lt;EARTH&gt;чистый феррит&lt;&gt;&#xA;Заправьте топливом &lt;TECHNOLOGY&gt;портативный очиститель&lt;&gt;&#xA;Используйте &lt;IMG&gt;INTERACT&lt;&gt;, чтобы осмотреть размещенный очиститель" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TUT_ADV_MATS_MSG11" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Требуются продвинутые материалы: &lt;EARTH&gt;чистый феррит&lt;&gt;.&#xA;Добудьте ферритную пыль из &lt;STELLAR&gt;маленьких камней&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Ферритную пыль можно преобразовывать в &lt;TECHNOLOGY&gt;портативном очистителе&lt;&gt;.
                                { "Russian", "Требуются продвинутые материалы: &lt;EARTH&gt;чистый феррит&lt;&gt;&#xA;Добудьте ферритную пыль из &lt;STELLAR&gt;маленьких камней&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Ферритную пыль можно обработать в &lt;TECHNOLOGY&gt;портативном очистителе&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TUT_ADV_MATS_MSG12" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Требуются продвинутые материалы: &lt;EARTH&gt;чистый феррит&lt;&gt;.&#xA;Очистка &lt;TRADEABLE&gt;завершена&lt;&gt;!&#xA;Заберите &lt;EARTH&gt;чистый феррит&lt;&gt; из очистителя.&#xA;Используйте &lt;IMG&gt;INTERACT&lt;&gt;, чтобы осмотреть размещенный очиститель.
                                { "Russian", "Требуются продвинутые материалы: &lt;EARTH&gt;чистый феррит&lt;&gt;&#xA;Очистка &lt;TRADEABLE&gt;завершена&lt;&gt;!&#xA;Заберите &lt;EARTH&gt;чистый феррит&lt;&gt; из очистителя&#xA;Используйте &lt;IMG&gt;INTERACT&lt;&gt;, чтобы осмотреть размещенный очиститель" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TUT_ADV_MATS_MSG12A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Требуются продвинутые материалы: &lt;EARTH&gt;чистый феррит&lt;&gt;.&#xA;Поместите &lt;EARTH&gt;ферритную пыль&lt;&gt; в приемник &lt;TECHNOLOGY&gt;переносного очистителя&lt;&gt;.&#xA;Используйте &lt;IMG&gt;INTERACT&lt;&gt;, чтобы осмотреть размещенный очиститель.
                                { "Russian", "Требуются продвинутые материалы: &lt;EARTH&gt;чистый феррит&lt;&gt;&#xA;Поместите &lt;EARTH&gt;ферритную пыль&lt;&gt; в приемник &lt;TECHNOLOGY&gt;переносного очистителя&lt;&gt;&#xA;Используйте &lt;IMG&gt;INTERACT&lt;&gt;, чтобы осмотреть размещенный очиститель" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TUT_ADV_MATS_MSG12C" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Требуются дополнительные материалы: &lt;EARTH&gt;чистый феррит&lt;&gt;.&#xA;Используйте &lt;IMG&gt;INTERACT&lt;&gt;, чтобы осмотреть размещенный очиститель.&#xA;Затем выберите &lt;TECHNOLOGY&gt;Начать&lt;&gt;, чтобы начать очистку.
                                -- Advanced Materials Required: &lt;EARTH&gt;Pure Ferrite&lt;&gt;&#xA;Use &lt;IMG&gt;INTERACT&lt;&gt; to inspect a deployed Refiner&#xA;Then select &lt;TECHNOLOGY&gt;Begin&lt;&gt; to start refining
                                { "Russian", "Требуются продвинутые материалы: &lt;EARTH&gt;чистый феррит&lt;&gt;&#xA;Используйте &lt;IMG&gt;INTERACT&lt;&gt;, чтобы осмотреть размещенный очиститель&#xA;Затем выберите &lt;TECHNOLOGY&gt;Начать&lt;&gt;, чтобы начать очистку" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TUT_ADV_MATS_MSG13" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Требуются продвинутые материалы: &lt;EARTH&gt;намагниченный феррит&lt;&gt;.&#xA;Заберите &lt;EARTH&gt;намагниченный феррит&lt;&gt; из очистителя: %CURRENT%/%AMOUNT%&#xA;Используйте &lt;IMG&gt;INTERACT&lt;&gt;, чтобы осмотреть размещенный очиститель.
                                { "Russian", "Требуются продвинутые материалы: &lt;EARTH&gt;намагниченный феррит&lt;&gt;&#xA;Заберите &lt;EARTH&gt;намагниченный феррит&lt;&gt; из очистителя: %CURRENT%/%AMOUNT%&#xA;Используйте &lt;IMG&gt;INTERACT&lt;&gt;, чтобы осмотреть размещенный очиститель" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TUT_ADV_MATS_MSG13A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Требуются продвинутые материалы: &lt;EARTH&gt;намагниченный феррит&lt;&gt;.&#xA;Поместите &lt;EARTH&gt;чистый феррит&lt;&gt; в приемник &lt;TECHNOLOGY&gt;портативного очистителя&lt;&gt;.
                                { "Russian", "Требуются продвинутые материалы: &lt;EARTH&gt;намагниченный феррит&lt;&gt;&#xA;Поместите &lt;EARTH&gt;чистый феррит&lt;&gt; в приемник &lt;TECHNOLOGY&gt;портативного очистителя&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TUT_ADV_MATS_MSG14" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Получить: &lt;TECHNOLOGY&gt;дигидроген&lt;&gt; — %CURRENT%/%AMOUNT%&#xA;Найдите дигидроген с помощью сканера (&lt;IMG&gt;SCAN&lt;&gt;).&#xA;Используйте дигидроген, чтобы создать &lt;FUEL&gt;дигидрогенный гель&lt;&gt;.
                                -- Collect &lt;TECHNOLOGY&gt;Di-hydrogen&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Find Di-hydrogen using the Scanner (&lt;IMG&gt;SCAN&lt;&gt;)&#xA;Use Di-hydrogen to create &lt;FUEL&gt;Di-hydrogen Jelly&lt;&gt;
                                { "Russian", "Соберите &lt;TECHNOLOGY&gt;дигидроген&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Найдите дигидроген с помощью сканера (&lt;IMG&gt;SCAN&lt;&gt;)&#xA;Используйте дигидроген, чтобы создать &lt;FUEL&gt;дигидрогенный гель&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TUT_ADV_MATS_MSG15" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Создайте &lt;FUEL&gt;дигидрогенный гель&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Накоплено дигидрогена: &lt;TRADEABLE&gt;40&lt;&gt;/&lt;TRADEABLE&gt;40&lt;&gt;&#xA;Откройте &lt;TECHNOLOGY&gt;инвентарь&lt;&gt;.&#xA;Создавайте предметы в ячейках инвентаря с помощью &lt;IMG&gt;PRODMENU&lt;&gt;
                                -- Craft &lt;FUEL&gt;Di-hydrogen Jelly&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Di-hydrogen acquired: &lt;TRADEABLE&gt;40&lt;&gt;/&lt;TRADEABLE&gt;40&lt;&gt;&#xA;Open the &lt;TECHNOLOGY&gt;Inventory&lt;&gt;&#xA;Use &lt;IMG&gt;PRODMENU&lt;&gt; to craft items in Inventory slots
                                { "Russian", "Создайте &lt;FUEL&gt;дигидрогенный гель&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Накоплено дигидрогена: &lt;TRADEABLE&gt;40&lt;&gt;/&lt;TRADEABLE&gt;40&lt;&gt;&#xA;Откройте &lt;TECHNOLOGY&gt;инвентарь&lt;&gt;, нажав &lt;IMG&gt;INVENTORY&lt;&gt;&#xA;Создайте гель в ячейке инвентаря с помощью &lt;IMG&gt;PRODMENU&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TUT_ADV_MATS_MSG16" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Смажьте &lt;TECHNOLOGY&gt;взлетный ускоритель&lt;&gt; &lt;FUEL&gt;дигидрогенным гелем&lt;&gt;.&#xA;Откройте инвентарь, нажав &lt;IMG&gt;INVENTORY&lt;&gt;, и почините предметы с помощью команды &lt;IMG&gt;REPAIR&lt;&gt;.
                                -- Grease the &lt;TECHNOLOGY&gt;Launch Thruster&lt;&gt; with &lt;FUEL&gt;Di-hydrogen Jelly&lt;&gt;&#xA;Access the Inventory using &lt;IMG&gt;INVENTORY&lt;&gt; and repair items using &lt;IMG&gt;REPAIR&lt;&gt;
                                { "Russian", "Смажьте &lt;TECHNOLOGY&gt;взлетный ускоритель&lt;&gt; &lt;FUEL&gt;дигидрогенным гелем&lt;&gt;&#xA;Откройте инвентарь (&lt;IMG&gt;INVENTORY&lt;&gt;) и почините предметы с помощью &lt;IMG&gt;REPAIR&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TUT_ADV_MATS_MSG16B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вернитесь к &lt;TECHNOLOGY&gt;звездолету&lt;&gt;.&#xA;Смажьте &lt;TECHNOLOGY&gt;взлетный ускоритель&lt;&gt; &lt;FUEL&gt;дигидрогенным гелем&lt;&gt;.
                                { "Russian", "Вернитесь к &lt;TECHNOLOGY&gt;звездолёту&lt;&gt;&#xA;Смажьте &lt;TECHNOLOGY&gt;взлетный ускоритель&lt;&gt; &lt;FUEL&gt;дигидрогенным гелем&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region UI_TUT_ADV_MATS_REFINER
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TUT_ADV_MATS_REFINER_1A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Изготовьте &lt;TECHNOLOGY&gt;портативный очиститель&lt;&gt;.&#xA;Добыть: %ITEM% — %CURRENT%/%AMOUNT%&#xA;Добудьте %ITEM% из &lt;STELLAR&gt;мелких камней&lt;&gt; с помощью &lt;TECHNOLOGY&gt;расщепителя&lt;&gt;.
                                -- Construct a &lt;TECHNOLOGY&gt;Portable Refiner&lt;&gt;&#xA;Gather %ITEM%: %CURRENT%/%AMOUNT%&#xA;Harvest %ITEM% from &lt;STELLAR&gt;small rocks&lt;&gt; with the &lt;TECHNOLOGY&gt;Mining Beam&lt;&gt;
                                { "Russian", "Постройте &lt;TECHNOLOGY&gt;портативный очиститель&lt;&gt;&#xA;Соберите: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;Используйте &lt;TECHNOLOGY&gt;расщепитель&lt;&gt; на &lt;STELLAR&gt;мелких камнях&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TUT_ADV_MATS_REFINER_1B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Изготовьте &lt;TECHNOLOGY&gt;портативный очиститель&lt;&gt;&#xA;Создать: %ITEM%%CURRENT%/%AMOUNT%&#xA;Откройте инвентарь с помощью &lt;IMG&gt;INVENTORY&lt;&gt;&#xA;Чтобы создать объект в пустой ячейке, используйте &lt;IMG&gt;PRODMENU&lt;&gt;
                                -- Construct a &lt;TECHNOLOGY&gt;Portable Refiner&lt;&gt;&#xA;Craft %ITEM%: %CURRENT%/%AMOUNT%&#xA;Use &lt;IMG&gt;INVENTORY&lt;&gt; to access your Inventory&#xA;Use &lt;IMG&gt;PRODMENU&lt;&gt; to craft in empty slots
                                { "Russian", "Постройте &lt;TECHNOLOGY&gt;портативный очиститель&lt;&gt;&#xA;Создайте: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;Откройте инвентарь с помощью &lt;IMG&gt;INVENTORY&lt;&gt;&#xA;Создайте предмет в пустой ячейке, используя &lt;IMG&gt;PRODMENU&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TUT_ADV_MATS_REFINER_1C" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Изготовьте &lt;TECHNOLOGY&gt;портативный очиститель&lt;&gt;&#xA;Соберите: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;Найдите %ITEM% с помощью &lt;TECHNOLOGY&gt;сканера&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;)
                                { "Russian", "Постройте &lt;TECHNOLOGY&gt;портативный очиститель&lt;&gt;&#xA;Соберите: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;Начните поиски с помощью &lt;TECHNOLOGY&gt;сканера&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TUT_ADV_MATS_REFINER_1C_VRA" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Изготовьте &lt;TECHNOLOGY&gt;портативный очиститель&lt;&gt;&#xA;Соберите: %ITEM%%CURRENT%/%AMOUNT%&#xA;Используйте &lt;STELLAR&gt;сканер&lt;&gt;, чтобы найти %ITEM%&#xA;Заведите руку за плечо и нажмите &lt;IMG&gt;VR_HOLSTER&lt;&gt;, чтобы взять мультитул
                                { "Russian", "Постройте &lt;TECHNOLOGY&gt;портативный очиститель&lt;&gt;&#xA;Соберите: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;Используйте &lt;STELLAR&gt;сканер&lt;&gt;, чтобы найти %ITEM%&#xA;Заведите руку за плечо и нажмите &lt;IMG&gt;VR_HOLSTER&lt;&gt;, чтобы взять мультитул" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TUT_ADV_MATS_REFINER_1C_VRB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Изготовьте &lt;TECHNOLOGY&gt;портативный очиститель&lt;&gt;.&#xA;Соберите: %ITEM%%CURRENT%/%AMOUNT%&#xA;Используйте &lt;STELLAR&gt;сканер&lt;&gt;, чтобы найти %ITEM%.&#xA;Укажите &lt;STELLAR&gt;%SECONDARY_HAND%&lt;&gt; на заднюю сторону своего &lt;TECHNOLOGY&gt;мультитула&lt;&gt;.
                                { "Russian", "Постройте &lt;TECHNOLOGY&gt;портативный очиститель&lt;&gt;&#xA;Соберите: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;Используйте &lt;STELLAR&gt;сканер&lt;&gt;, чтобы найти %ITEM%&#xA;Укажите &lt;STELLAR&gt;%SECONDARY_HAND%&lt;&gt; на заднюю сторону своего &lt;TECHNOLOGY&gt;мультитула&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TUT_ADV_MATS_REFINER_1C_VRC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Изготовьте &lt;TECHNOLOGY&gt;портативный очиститель&lt;&gt;.&#xA;Соберите: %ITEM%%CURRENT%/%AMOUNT%&#xA;Используйте &lt;STELLAR&gt;сканер&lt;&gt;, чтобы найти %ITEM%.&#xA;Укажите на слово «Сканирование» и выберите то, что вам нужно, при помощи &lt;IMG&gt;FE_ALTSELECT&lt;&gt;
                                { "Russian", "Постройте &lt;TECHNOLOGY&gt;портативный очиститель&lt;&gt;&#xA;Соберите: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;Используйте &lt;STELLAR&gt;сканер&lt;&gt;, чтобы найти %ITEM%&#xA;Укажите на слово «Сканирование» и выберите то, что вам нужно, при помощи &lt;IMG&gt;FE_ALTSELECT&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TUT_ADV_MATS_REFINER_1C_VRD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Изготовьте &lt;TECHNOLOGY&gt;портативный очиститель&lt;&gt;.&#xA;Найти: %ITEM% — %CURRENT%/%AMOUNT%&#xA;Удерживайте &lt;IMG&gt;VR_TELEPORT&lt;&gt;, чтобы перейти в режим телепортации.&#xA;Отпустите &lt;IMG&gt;VR_TELEPORT&lt;&gt;, чтобы телепортироваться.
                                { "Russian", "Постройте &lt;TECHNOLOGY&gt;портативный очиститель&lt;&gt;&#xA;Найдите: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;Удерживайте &lt;IMG&gt;VR_TELEPORT&lt;&gt;, чтобы перейти в режим телепортации&#xA;Отпустите &lt;IMG&gt;VR_TELEPORT&lt;&gt;, чтобы телепортироваться" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TUT_ADV_MATS_REFINER_1C_VRE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Изготовьте &lt;TECHNOLOGY&gt;портативный очиститель&lt;&gt;.&#xA;Найти: %ITEM% — %CURRENT%/%AMOUNT%&#xA;Удерживайте &lt;IMG&gt;VR_TELEPORT&lt;&gt;, чтобы перейти в режим телепортации.&#xA;Отпустите &lt;IMG&gt;VR_TELEPORT&lt;&gt;, чтобы телепортироваться в новое место.
                                { "Russian", "Постройте &lt;TECHNOLOGY&gt;портативный очиститель&lt;&gt;&#xA;Найдите: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;Удерживайте &lt;IMG&gt;VR_TELEPORT&lt;&gt;, чтобы перейти в режим телепортации&#xA;Отпустите &lt;IMG&gt;VR_TELEPORT&lt;&gt;, чтобы телепортироваться в новое место" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TUT_ADV_MATS_REFINER_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Изготовьте новый &lt;TECHNOLOGY&gt;портативный очиститель&lt;&gt;&#xA;Чтобы открыть &lt;VAL_ON&gt;меню созидания&lt;&gt;, нажмите &lt;IMG&gt;BUILD_MENU&lt;&gt;
                                { "Russian", "Постройте новый &lt;TECHNOLOGY&gt;портативный очиститель&lt;&gt;&#xA;Чтобы открыть &lt;VAL_ON&gt;меню строительства&lt;&gt;, нажмите &lt;IMG&gt;BUILD_MENU&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region UI_TUT_REPAIR_SHIP_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TUT_REPAIR_SHIP_MSG0C" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите %ITEM%: %CURRENT%/%AMOUNT%&#xA;Создайте &lt;COMMODITY&gt;металлическую обшивку&lt;&gt;, чтобы отремонтировать &lt;TECHNOLOGY&gt;импульсный двигатель&lt;&gt;&#xA;Используйте %ITEM%, чтобы создать &lt;COMMODITY&gt;металлическую обшивку&lt;&gt;
                                { "Russian", "Соберите: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;Создайте &lt;COMMODITY&gt;металлическую обшивку&lt;&gt;, чтобы отремонтировать &lt;TECHNOLOGY&gt;импульсный двигатель&lt;&gt;&#xA;Используйте %ITEM%, чтобы создать &lt;COMMODITY&gt;металлическую обшивку&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TUT_REPAIR_SHIP_MSG0" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Создайте &lt;COMMODITY&gt;металлическую обшивку&lt;&gt;, чтобы отремонтировать &lt;TECHNOLOGY&gt;импульсный двигатель&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Добыто ферритной пыли: &lt;TRADEABLE&gt;50&lt;&gt;/&lt;TRADEABLE&gt;50&lt;&gt;&#xA;Откройте инвентарь с помощью &lt;IMG&gt;INVENTORY&lt;&gt;&#xA;Чтобы создать объект в пустой ячейке, используйте &lt;IMG&gt;PRODMENU&lt;&gt;
                                { "Russian", "Создайте &lt;COMMODITY&gt;металлическую обшивку&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Добыто ферритной пыли: &lt;TRADEABLE&gt;50&lt;&gt;/&lt;TRADEABLE&gt;50&lt;&gt;&#xA;Откройте инвентарь с помощью &lt;IMG&gt;INVENTORY&lt;&gt;&#xA;Создайте объект в пустой ячейке с помощью &lt;IMG&gt;PRODMENU&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TUT_REPAIR_SHIP_MSG0A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Закрепите &lt;COMMODITY&gt;металлическую обшивку&lt;&gt; на &lt;TECHNOLOGY&gt;импульсном двигателе&lt;&gt;.&#xA;Найдите в инвентаре звездолета (&lt;IMG&gt;INVENTORY&lt;&gt;) &lt;TECHNOLOGY&gt;импульсный двигатель&lt;&gt;.&#xA;Нажмите &lt;IMG&gt;REPAIR&lt;&gt;, чтобы приступить к ремонту.
                                -- Patch &lt;COMMODITY&gt;Metal Plating&lt;&gt; onto the &lt;TECHNOLOGY&gt;Pulse Engine&lt;&gt;&#xA;In the starship inventory (&lt;IMG&gt;INVENTORY&lt;&gt;), find the &lt;TECHNOLOGY&gt;Pulse Engine&lt;&gt;&#xA;Then begin repair with &lt;IMG&gt;REPAIR&lt;&gt;
                                { "Russian", "Закрепите &lt;COMMODITY&gt;металлическую обшивку&lt;&gt; на &lt;TECHNOLOGY&gt;импульсном двигателе&lt;&gt;&#xA;Найдите в инвентаре звездолёта (&lt;IMG&gt;INVENTORY&lt;&gt;) &lt;TECHNOLOGY&gt;импульсный двигатель&lt;&gt;&#xA;Нажмите &lt;IMG&gt;REPAIR&lt;&gt;, чтобы приступить к ремонту" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TUT_REPAIR_SHIP_MSG0B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Отремонтируйте &lt;TECHNOLOGY&gt;импульсный двигатель&lt;&gt;.&#xA;Вернитесь к звездолету для проведения ремонта.
                                { "Russian", "Отремонтируйте &lt;TECHNOLOGY&gt;импульсный двигатель&lt;&gt;&#xA;Вернитесь к звездолёту для проведения ремонта" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TUT_REPAIR_SHIP_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Ремонт звездолета: &lt;STELLAR&gt;частично завершен&lt;&gt;&#xA;Поднимитесь на борт и &lt;TECHNOLOGY&gt;проведите диагностику корабля&lt;&gt;
                                { "Russian", "Ремонт звездолёта &lt;STELLAR&gt;частично завершен&lt;&gt;&#xA;Поднимитесь на борт и &lt;TECHNOLOGY&gt;проведите диагностику&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TUT_REPAIR_SHIP_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Отремонтируйте &lt;TECHNOLOGY&gt;импульсный двигатель&lt;&gt;&#xA;Чтобы получить более точные указания, откройте журнал заданий (&lt;IMG&gt;OPTIONS&lt;&gt;)
                                { "Russian", "Отремонтируйте &lt;TECHNOLOGY&gt;импульсный двигатель&lt;&gt;&#xA;Чтобы получить более точные указания, откройте журнал заданий (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TUT_REPAIR_SHIP_MSG2A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Отремонтируйте &lt;TECHNOLOGY&gt;импульсный двигатель&lt;&gt;.&#xA;Откройте инвентарь звездолета (&lt;IMG&gt;INVENTORY&lt;&gt;) и отремонтируйте предметы с помощью &lt;IMG&gt;REPAIR&lt;&gt;.
                                { "Russian", "Отремонтируйте &lt;TECHNOLOGY&gt;импульсный двигатель&lt;&gt;&#xA;Найдите двигатель в инвентаре звездолёта (&lt;IMG&gt;INVENTORY&lt;&gt;),&#xA;а затем отремонтируйте его с помощью &lt;IMG&gt;REPAIR&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TUT_REPAIR_SHIP_MSG2B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Отремонтируйте &lt;TECHNOLOGY&gt;импульсный двигатель&lt;&gt;&#xA;Найдите на месте падения другой источник &lt;COMMODITY&gt;герметика&lt;&gt;
                                { "Russian", "Отремонтируйте &lt;TECHNOLOGY&gt;импульсный двигатель&lt;&gt;&#xA;Найдите на месте падения другой источник &lt;COMMODITY&gt;герметика&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TUT_REPAIR_SHIP_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Отремонтируйте &lt;TECHNOLOGY&gt;взлетные ускорители&lt;&gt;&#xA;Получен продвинутый материал: &lt;EARTH&gt;чистый феррит&lt;&gt;&#xA;Более подробная информация содержится в журнале заданий (&lt;IMG&gt;OPTIONS&lt;&gt;).
                                { "Russian", "Отремонтируйте &lt;TECHNOLOGY&gt;взлетные ускорители&lt;&gt;&#xA;Получен продвинутый материал: &lt;EARTH&gt;чистый феррит&lt;&gt;&#xA;Более подробная информация содержится в журнале заданий (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TUT_REPAIR_SHIP_MSG3B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Отремонтируйте &lt;TECHNOLOGY&gt;взлетные ускорители&lt;&gt;.&#xA;Используйте &lt;IMG&gt;INVENTORY&lt;&gt;, чтобы открыть инвентарь. Для ремонта предметов используйте &lt;IMG&gt;REPAIR&lt;&gt;.
                                -- Repair the &lt;TECHNOLOGY&gt;Launch Thrusters&lt;&gt;&#xA;Access the Inventory using &lt;IMG&gt;INVENTORY&lt;&gt;. Repair items using &lt;IMG&gt;REPAIR&lt;&gt;
                                { "Russian", "Отремонтируйте &lt;TECHNOLOGY&gt;взлетные ускорители&lt;&gt;&#xA;Откройте инвентарь с помощью &lt;IMG&gt;INVENTORY&lt;&gt;, а для ремонта — &lt;IMG&gt;REPAIR&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region TUT_BASEBUILD_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TUT_BASEBUILD_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Изучите &lt;COMMODITY&gt;космическую станцию&lt;&gt;.&#xA;Пройдите по следам предыдущего владельца компьютера базы.
                                -- Investigate the &lt;COMMODITY&gt;Space Station&lt;&gt;&#xA;Follow in the footsteps of the Base Computer's previous owner...
                                { "Russian", "Изучите &lt;COMMODITY&gt;космическую станцию&lt;&gt;&#xA;Следуйте по следам предыдущего владельца компьютера базы..." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TUT_BASEBUILD_MSG1A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Изучите &lt;COMMODITY&gt;космическую станцию&lt;&gt;&#xA;Направьте корабль к метке станции и нажмите &lt;IMG&gt;PULSEJUMP&lt;&gt;, чтобы включить &lt;TECHNOLOGY&gt;импульсный привод&lt;&gt;&#xA;Импульсный привод позволяет &lt;STELLAR&gt;на автопилоте&lt;&gt; долететь до меток координат
                                { "Russian", "Изучите &lt;COMMODITY&gt;космическую станцию&lt;&gt;&#xA;Направьте корабль к метке станции и нажмите &lt;IMG&gt;PULSEJUMP&lt;&gt;&#xA;Импульсный двигатель позволяет &lt;STELLAR&gt;на автопилоте&lt;&gt; долетать до отметок" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TUT_BASEBUILD_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Осмотрите космическую станцию&#xA;Найдите формы жизни, которые можно расспросить о &lt;FUEL&gt;таинственном сигнале&lt;&gt;
                                { "Russian", "Осмотрите космическую станцию&#xA;Найдите формы жизни и расспросите их о &lt;FUEL&gt;таинственном сигнале&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TUT_BASEBUILD_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Отправьтесь к полученным координатам и найдите &lt;COMMODITY&gt;источник сигнала&lt;&gt;&#xA;Направьте корабль к метке координат и нажмите &lt;IMG&gt;PULSEJUMP&lt;&gt;, чтобы включить &lt;TECHNOLOGY&gt;импульсный привод&lt;&gt;&#xA;Импульсный привод позволяет &lt;STELLAR&gt;на автопилоте&lt;&gt; долететь до меток координат
                                -- Follow the coordinates and find the &lt;COMMODITY&gt;signal source&lt;&gt;&#xA;Pilot towards coordinate marker and engage &lt;TECHNOLOGY&gt;Pulse Drive&lt;&gt; with &lt;IMG&gt;PULSEJUMP&lt;&gt;&#xA;Pulse Drive will &lt;STELLAR&gt;autopilot&lt;&gt; to coordinate markers
                                { "Russian", "Найдите &lt;COMMODITY&gt;источник сигнала&lt;&gt;, следуя по координатам&#xA;Направьте корабль к метке координат и нажмите &lt;IMG&gt;PULSEJUMP&lt;&gt;&#xA;Импульсный двигатель позволяет &lt;STELLAR&gt;на автопилоте&lt;&gt; долетать до отметок" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TUT_BASEBUILD_MSG3A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Отправьтесь к полученным координатам и найдите &lt;COMMODITY&gt;источник сигнала&lt;&gt;.&#xA;Приблизьтесь к источнику и снизьте скорость (&lt;IMG&gt;BRAKE&lt;&gt;).&#xA;Приземлитесь, используя &lt;IMG&gt;LANDSHIP&lt;&gt;.
                                { "Russian", "Найдите &lt;COMMODITY&gt;источник сигнала&lt;&gt;, следуя по координатам&#xA;Приблизьтесь к источнику и снизьте скорость (&lt;IMG&gt;BRAKE&lt;&gt;)&#xA;Приземлитесь, используя &lt;IMG&gt;LANDSHIP&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TUT_BASEBUILD_MSG3B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Отправьтесь к полученным координатам и найдите &lt;COMMODITY&gt;источник сигнала&lt;&gt;.&#xA;Сигнал еще далеко. Вернитесь на свой корабль.
                                -- Follow the coordinates and find the &lt;COMMODITY&gt;signal source&lt;&gt;&#xA;Signal is still distant. Return to your ship.
                                { "Russian", "Найдите &lt;COMMODITY&gt;источник сигнала&lt;&gt;, следуя по координатам&#xA;Сигнал еще далеко: вернитесь на свой корабль" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TUT_BASEBUILD_MSG3C" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Отправьтесь к полученным координатам и найдите &lt;COMMODITY&gt;источник сигнала&lt;&gt;.
                                { "Russian", "Найдите &lt;COMMODITY&gt;источник сигнала&lt;&gt;, следуя по координатам" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TUT_BASEBUILD_MSG3_SURVEY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Следуйте по &lt;STELLAR&gt;направляющим&lt;&gt;, чтобы найти &lt;COMMODITY&gt;источник сигнала&lt;&gt;&lt;TECHNOLOGY&gt;Разведка цели&lt;&gt; укажет точные координаты задания
                                -- Follow the &lt;STELLAR&gt;directional indicators&lt;&gt; to locate the &lt;COMMODITY&gt;signal source&lt;&gt;&#xA;This &lt;TECHNOLOGY&gt;Target Sweep&lt;&gt; will pinpoint mission locations
                                { "Russian", "Следуйте по &lt;STELLAR&gt;направляющим&lt;&gt;, чтобы найти &lt;COMMODITY&gt;источник сигнала&lt;&gt;&#xA;&lt;TECHNOLOGY&gt;Разведка цели&lt;&gt; укажет точные координаты задания" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TUT_BASEBUILD_MSG3_SURVEY_SWAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найти &lt;COMMODITY&gt;источник сигнала&lt;&gt;&#xA;Активировать &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;
                                { "Russian", "Найдите &lt;COMMODITY&gt;источник сигнала&lt;&gt;&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TUT_BASEBUILD_MSG3_SURVEY_OFF" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найти &lt;COMMODITY&gt;источник сигнала&lt;&gt;&#xA;Активировать &lt;STELLAR&gt;разведку цели&lt;&gt; в анализирующем визоре &lt;IMG&gt;AIM&lt;&gt;
                                -- Find the &lt;COMMODITY&gt;signal source&lt;&gt;&#xA;Activate a &lt;STELLAR&gt;Target Sweep&lt;&gt; from the Analysis Visor &lt;IMG&gt;AIM&lt;&gt;
                                { "Russian", "Найдите &lt;COMMODITY&gt;источник сигнала&lt;&gt;&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; в анализирующем визоре &lt;IMG&gt;AIM&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TUT_BASEBUILD_MSG4A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Переработайте &lt;STELLAR&gt;медь&lt;&gt; на &lt;SPECIAL&gt;хроматический металл&lt;&gt;&#xA;Создать &lt;TECHNOLOGY&gt;очиститель&lt;&gt; можно в меню созидания (&lt;IMG&gt;BUILD_MENU&lt;&gt;)
                                -- Process &lt;STELLAR&gt;Copper&lt;&gt; to create &lt;SPECIAL&gt;Chromatic Metal&lt;&gt;&#xA;Deploy &lt;TECHNOLOGY&gt;Refiner&lt;&gt; from the Build Menu (&lt;IMG&gt;BUILD_MENU&lt;&gt;)
                                { "Russian", "Переработайте &lt;STELLAR&gt;медь&lt;&gt; в &lt;SPECIAL&gt;хроматический металл&lt;&gt;&#xA;Разместите &lt;TECHNOLOGY&gt;очиститель&lt;&gt; из меню строительства (&lt;IMG&gt;BUILD_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TUT_BASEBUILD_MSG4A_SWAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Изготовьте &lt;TECHNOLOGY&gt;портативный очиститель&lt;&gt;&#xA;Соберите: %ITEM%%CURRENT%/%AMOUNT%&#xA;Чтобы перезапустить &lt;TECHNOLOGY&gt;расщепитель&lt;&gt;, нажмите &lt;IMG&gt;CYCLEWEAPON&lt;&gt;
                                -- Construct a &lt;TECHNOLOGY&gt;Portable Refiner&lt;&gt;&#xA;Gather %ITEM%: %CURRENT%/%AMOUNT%&#xA;Re-activate &lt;TECHNOLOGY&gt;Mining Beam&lt;&gt; with &lt;IMG&gt;CYCLEWEAPON&lt;&gt;
                                { "Russian", "Постройте &lt;TECHNOLOGY&gt;портативный очиститель&lt;&gt;&#xA;Соберите: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;Чтобы ре-активировать &lt;TECHNOLOGY&gt;расщепитель&lt;&gt;, нажмите &lt;IMG&gt;CYCLEWEAPON&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TUT_BASEBUILD_MSG4A_SWAP_VR1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Изготовьте &lt;TECHNOLOGY&gt;портативный очиститель&lt;&gt;.&#xA;Соберите %ITEM% с помощью &lt;TECHNOLOGY&gt;расщепителя&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Заведите руку за плечо и нажмите &lt;IMG&gt;VR_HOLSTER&lt;&gt;, чтобы взять в руки мультитул.
                                { "Russian", "Постройте &lt;TECHNOLOGY&gt;портативный очиститель&lt;&gt;&#xA;Соберите %ITEM% с помощью &lt;TECHNOLOGY&gt;расщепителя&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Заведите руку за плечо и нажмите &lt;IMG&gt;VR_HOLSTER&lt;&gt;, чтобы взять в руки мультитул" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TUT_BASEBUILD_MSG4A_SWAP_VR2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Изготовьте &lt;TECHNOLOGY&gt;портативный очиститель&lt;&gt;.&#xA;Соберите %ITEM% с помощью &lt;TECHNOLOGY&gt;расщепителя&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Укажите &lt;STELLAR&gt;%SECONDARY_HAND%&lt;&gt; на заднюю сторону своего &lt;TECHNOLOGY&gt;мультитула&lt;&gt;.
                                { "Russian", "Постройте &lt;TECHNOLOGY&gt;портативный очиститель&lt;&gt;&#xA;Соберите %ITEM% с помощью &lt;TECHNOLOGY&gt;расщепителя&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Укажите &lt;STELLAR&gt;%SECONDARY_HAND%&lt;&gt; на заднюю сторону своего &lt;TECHNOLOGY&gt;мультитула&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TUT_BASEBUILD_MSG4A_SWAP_VR3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Изготовьте &lt;TECHNOLOGY&gt;портативный очиститель&lt;&gt;.&#xA;Соберите %ITEM% с помощью &lt;TECHNOLOGY&gt;расщепителя&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Укажите на слово «Режим» и выберите то, что вам нужно, при помощи &lt;IMG&gt;FE_ALTSELECT&lt;&gt;.
                                { "Russian", "Постройте &lt;TECHNOLOGY&gt;портативный очиститель&lt;&gt;&#xA;Соберите %ITEM% с помощью &lt;TECHNOLOGY&gt;расщепителя&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Укажите на слово «Режим» и выберите то, что вам нужно, при помощи &lt;IMG&gt;FE_ALTSELECT&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TUT_BASEBUILD_MSG4A_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Изготовьте &lt;TECHNOLOGY&gt;портативный очиститель&lt;&gt;&#xA;Соберите: %ITEM%%CURRENT%/%AMOUNT%
                                { "Russian", "Постройте &lt;TECHNOLOGY&gt;портативный очиститель&lt;&gt;&#xA;Соберите: %ITEM% (%CURRENT%/%AMOUNT%)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TUT_BASEBUILD_MSG4A_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Изготовьте &lt;TECHNOLOGY&gt;портативный очиститель&lt;&gt;&#xA;Создайте: %ITEM%%CURRENT%/%AMOUNT%
                                { "Russian", "Постройте &lt;TECHNOLOGY&gt;портативный очиститель&lt;&gt;&#xA;Создайте: %ITEM% (%CURRENT%/%AMOUNT%)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TUT_BASEBUILD_MSG4A_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Изготовьте &lt;TECHNOLOGY&gt;портативный очиститель&lt;&gt;&#xA;Соберите: %ITEM%%CURRENT%/%AMOUNT%&#xA;Найдите %ITEM% с помощью &lt;TECHNOLOGY&gt;сканера&lt;&gt;: (&lt;IMG&gt;SCAN&lt;&gt;)
                                { "Russian", "Постройте &lt;TECHNOLOGY&gt;портативный очиститель&lt;&gt;&#xA;Соберите: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;Найдите %ITEM% с помощью &lt;TECHNOLOGY&gt;сканера&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TUT_BASEBUILD_MSG4A_3_VRA" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Изготовьте &lt;TECHNOLOGY&gt;портативный очиститель&lt;&gt;&#xA;Соберите: %ITEM%%CURRENT%/%AMOUNT%&#xA;Используйте &lt;STELLAR&gt;сканер&lt;&gt;, чтобы найти %ITEM%&#xA;Заведите руку за плечо и нажмите &lt;IMG&gt;VR_HOLSTER&lt;&gt;, чтобы взять мультитул
                                { "Russian", "Постройте &lt;TECHNOLOGY&gt;портативный очиститель&lt;&gt;&#xA;Соберите: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;Используйте &lt;STELLAR&gt;сканер&lt;&gt;, чтобы найти %ITEM%&#xA;Заведите руку за плечо и нажмите &lt;IMG&gt;VR_HOLSTER&lt;&gt;, чтобы взять мультитул" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TUT_BASEBUILD_MSG4A_3_VRB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Изготовьте &lt;TECHNOLOGY&gt;портативный очиститель&lt;&gt;.&#xA;Соберите: %ITEM%%CURRENT%/%AMOUNT%&#xA;Используйте &lt;STELLAR&gt;сканер&lt;&gt;, чтобы найти %ITEM%.&#xA;Укажите &lt;STELLAR&gt;%SECONDARY_HAND%&lt;&gt; на заднюю сторону своего &lt;TECHNOLOGY&gt;мультитула&lt;&gt;.
                                { "Russian", "Постройте &lt;TECHNOLOGY&gt;портативный очиститель&lt;&gt;&#xA;Соберите: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;Используйте &lt;STELLAR&gt;сканер&lt;&gt;, чтобы найти %ITEM%&#xA;Укажите &lt;STELLAR&gt;%SECONDARY_HAND%&lt;&gt; на заднюю сторону своего &lt;TECHNOLOGY&gt;мультитула&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TUT_BASEBUILD_MSG4A_3_VRC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Изготовьте &lt;TECHNOLOGY&gt;портативный очиститель&lt;&gt;&#xA;Соберите: %ITEM%%CURRENT%/%AMOUNT%&#xA;Используйте &lt;STELLAR&gt;сканер&lt;&gt;, чтобы найти %ITEM%&#xA;Укажите на слово «Сканирование» и выберите то, что вам нужно, при помощи &lt;IMG&gt;FE_ALTSELECT&lt;&gt;
                                { "Russian", "Постройте &lt;TECHNOLOGY&gt;портативный очиститель&lt;&gt;&#xA;Соберите: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;Используйте &lt;STELLAR&gt;сканер&lt;&gt;, чтобы найти %ITEM%&#xA;Укажите на слово «Сканирование» и выберите то, что вам нужно, при помощи &lt;IMG&gt;FE_ALTSELECT&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TUT_BASEBUILD_MSG4A_3_VRD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Изготовьте &lt;TECHNOLOGY&gt;портативный очиститель&lt;&gt;&#xA;Найдите: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;Удерживайте &lt;IMG&gt;VR_TELEPORT&lt;&gt;, чтобы перейти в режим телепортации&#xA;Отпустите &lt;IMG&gt;VR_TELEPORT&lt;&gt;, чтобы телепортироваться в новое место
                                { "Russian", "Постройте &lt;TECHNOLOGY&gt;портативный очиститель&lt;&gt;&#xA;Найдите: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;Удерживайте &lt;IMG&gt;VR_TELEPORT&lt;&gt;, чтобы перейти в режим телепортации&#xA;Отпустите &lt;IMG&gt;VR_TELEPORT&lt;&gt;, чтобы телепортироваться в новое место" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TUT_BASEBUILD_MSG4A_3_VRE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Изготовьте &lt;TECHNOLOGY&gt;портативный очиститель&lt;&gt;.&#xA;Найти: %ITEM% — %CURRENT%/%AMOUNT%&#xA;Удерживайте &lt;IMG&gt;VR_TELEPORT&lt;&gt;, чтобы перейти в режим телепортации.&#xA;Отпустите &lt;IMG&gt;VR_TELEPORT&lt;&gt;, чтобы телепортироваться в новое место.
                                { "Russian", "Постройте &lt;TECHNOLOGY&gt;портативный очиститель&lt;&gt;&#xA;Найдите: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;Удерживайте &lt;IMG&gt;VR_TELEPORT&lt;&gt;, чтобы перейти в режим телепортации&#xA;Отпустите &lt;IMG&gt;VR_TELEPORT&lt;&gt;, чтобы телепортироваться в новое место" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TUT_BASEBUILD_MSG4B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;Компьютеру базы&lt;&gt; требуются очищенные материалы&#xA;Создайте &lt;SPECIAL&gt;хроматический металл&lt;&gt;: %CURRENT% / %AMOUNT%&#xA;Чтобы создать хроматический металл, используйте &lt;STELLAR&gt;медь&lt;&gt; в &lt;TECHNOLOGY&gt;портативном очистителе&lt;&gt;
                                -- Refined materials required for &lt;TECHNOLOGY&gt;Base Computer&lt;&gt;&#xA;Create &lt;SPECIAL&gt;Chromatic Metal&lt;&gt;: %CURRENT% / %AMOUNT%&#xA;Use &lt;STELLAR&gt;Copper&lt;&gt; in a &lt;TECHNOLOGY&gt;Portable Refiner&lt;&gt; to create Chromatic Metal
                                { "Russian", "&lt;TECHNOLOGY&gt;Компьютеру базы&lt;&gt; требуются очищенные материалы&#xA;Создайте &lt;SPECIAL&gt;хроматический металл&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Положите &lt;STELLAR&gt;медь&lt;&gt; в &lt;TECHNOLOGY&gt;портативный очиститель&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TUT_BASEBUILD_MSG4C" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;Компьютеру базы&lt;&gt; требуются очищенные материалы&#xA;Заберите %ITEM% из очистителя: %CURRENT% / %AMOUNT%
                                { "Russian", "&lt;TECHNOLOGY&gt;Компьютеру базы&lt;&gt; требуются очищенные материалы&#xA;Заберите %ITEM% из очистителя: %CURRENT%/%AMOUNT%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TUT_BASEBUILD_MSG5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;Компьютер базы&lt;&gt; позволяет занять место под строительство.&#xA;Найдите подходящий участок и разместите на нем компьютер&#xA;Чтобы открыть меню созидания, нажмите &lt;IMG&gt;BUILD_MENU&lt;&gt;.
                                -- The &lt;TECHNOLOGY&gt;Base Computer&lt;&gt; claims a site for construction&#xA;Find a suitable area and deploy the Base Computer&#xA;Access the Build Menu with &lt;IMG&gt;BUILD_MENU&lt;&gt;
                                { "Russian", "&lt;TECHNOLOGY&gt;Компьютер базы&lt;&gt; займет местность под строительство&#xA;Найдите подходящий участок и разместите на нем компьютер&#xA;Откройте меню строительства с помощью &lt;IMG&gt;BUILD_MENU&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TUT_BASEBUILD_MSG5_VR1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите подходящий участок и разместите на нем компьютер базы.&#xA;Чтобы открыть меню, укажите на свою &lt;STELLAR&gt;%SECONDARY_HAND%&lt;&gt;.&#xA;Укажите на меню созидания и выберите его при помощи &lt;IMG&gt;QUICK_ACTION&lt;&gt;.
                                { "Russian", "Найдите подходящий участок и разместите на нем компьютер базы&#xA;Чтобы открыть меню, укажите на &lt;STELLAR&gt;%SECONDARY_HAND%&lt;&gt;&#xA;Укажите на меню строительства и выберите его при помощи &lt;IMG&gt;QUICK_ACTION&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TUT_BASEBUILD_MSG5_VR2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите подходящий участок и разместите на нем компьютер базы&#xA;Укажите на меню созидания и выберите его при помощи &lt;IMG&gt;QUICK_ACTION&lt;&gt;&#xA;Используйте &lt;IMG&gt;QUICK_ACTION&lt;&gt;, чтобы выбирать детали и подкатегории
                                { "Russian", "Найдите подходящий участок и разместите на нем компьютер базы&#xA;Укажите на меню строительства и выберите его при помощи &lt;IMG&gt;QUICK_ACTION&lt;&gt;&#xA;Используйте &lt;IMG&gt;QUICK_ACTION&lt;&gt;, чтобы выбирать детали и подкатегории" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TUT_BASEBUILD_MSG6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Оформите землю на себя&#xA;Используйте &lt;TECHNOLOGY&gt;компьютер базы&lt;&gt; при помощи &lt;IMG&gt;INTERACT&lt;&gt;&#xA;Передвиньте терминал с помощью &lt;IMG&gt;DECONSTRUCT&lt;&gt;, чтобы выбрать другую площадку
                                -- Register the land as your own&#xA;Use the &lt;TECHNOLOGY&gt;Base Computer&lt;&gt; with &lt;IMG&gt;INTERACT&lt;&gt;&#xA;Move the terminal with &lt;IMG&gt;DECONSTRUCT&lt;&gt; to choose a new site
                                { "Russian", "Оформите землю на себя&#xA;Взаимодействуйте с &lt;TECHNOLOGY&gt;компьютером базы&lt;&gt; при помощи &lt;IMG&gt;INTERACT&lt;&gt;&#xA;Передвиньте терминал с помощью &lt;IMG&gt;DECONSTRUCT&lt;&gt;, чтобы выбрать другую площадку" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TUT_BASEBUILD_MSG7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Создайте убежище. Построено элементов: %CURRENT% / %AMOUNT%. &#xA;Соедините &lt;TECHNOLOGY&gt;стены&lt;&gt; &lt;TECHNOLOGY&gt;связующими пунктами&lt;&gt;&#xA;Чтобы открыть меню созидания, нажмите &lt;IMG&gt;BUILD_MENU&lt;&gt;.
                                -- Construct a shelter: %CURRENT% / %AMOUNT% parts built &#xA;Connect &lt;TECHNOLOGY&gt;Walls&lt;&gt; with &lt;TECHNOLOGY&gt;Linking Posts&lt;&gt;&#xA;Access the Build Menu with &lt;IMG&gt;BUILD_MENU&lt;&gt;
                                { "Russian", "Создайте части убежища: %CURRENT%/%AMOUNT%&#xA;Соедините &lt;TECHNOLOGY&gt;стены&lt;&gt; &lt;TECHNOLOGY&gt;связующими пунктами&lt;&gt;&#xA;Откройте меню строительства с помощью &lt;IMG&gt;BUILD_MENU&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TUT_BASEBUILD_MSG8A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Выберите задание «&lt;STELLAR&gt;Изменение ландшафта&lt;&gt;» в журнале (&lt;IMG&gt;OPTIONS&lt;&gt;)&#xA;Добудьте &lt;STELLAR&gt;медь&lt;&gt;, чтобы создать &lt;TECHNOLOGY&gt;компьютер базы&lt;&gt;&#xA;Для добычи &lt;STELLAR&gt;меди&lt;&gt; требуется &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt;
                                { "Russian", "Выберите задание &lt;STELLAR&gt;Изменение ландшафта&lt;&gt; в журнале (&lt;IMG&gt;OPTIONS&lt;&gt;)&#xA;Добудьте &lt;STELLAR&gt;медь&lt;&gt;, чтобы создать &lt;TECHNOLOGY&gt;компьютер базы&lt;&gt;&#xA;Для добычи &lt;STELLAR&gt;меди&lt;&gt; требуется &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TUT_BASEBUILD_MSG8B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Исследуйте планету и найдите &lt;TECHNOLOGY&gt;засыпанную технологию&lt;&gt;: 0 / 1&#xA;Благодаря добытой технологии можно получить новые детали для строительства&#xA;Используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;) для поиска засыпанной технологии&#xA;Используйте &lt;IMG&gt;CYCLEWEAPON&lt;&gt;, чтобы переключать &lt;COMMODITY&gt;режимы мультитула&lt;&gt;
                                -- Explore the planet and locate &lt;TECHNOLOGY&gt;Buried Technology&lt;&gt;: 0 / 1&#xA;Recovered technology can be spent on new construction parts&#xA;Use the &lt;TECHNOLOGY&gt;Analysis Visor&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;) to locate buried technology&#xA;Cycle &lt;COMMODITY&gt;Multi-Tool Modes&lt;&gt; with &lt;IMG&gt;CYCLEWEAPON&lt;&gt;
                                { "Russian", "Исследуйте планету и найдите &lt;TECHNOLOGY&gt;засыпанную технологию&lt;&gt;&#xA;С её помощью можно изучить новые строительные чертежи&#xA;Используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;) для поисков&#xA;Переключайте &lt;COMMODITY&gt;режимы мультитула&lt;&gt; с помощью &lt;IMG&gt;CYCLEWEAPON&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TUT_BASEBUILD_MSG8B_VR1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Исследуйте планету и найдите &lt;TECHNOLOGY&gt;засыпанную технологию&lt;&gt;: 0 / 1&#xA;Активируйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt;&#xA;Заведите руку за плечо и нажмите &lt;IMG&gt;VR_HOLSTER&lt;&gt;, чтобы взять в руки мультитул
                                { "Russian", "Исследуйте планету и найдите &lt;TECHNOLOGY&gt;засыпанную технологию&lt;&gt;&#xA;Активируйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt;&#xA;Заведите руку за плечо и нажмите &lt;IMG&gt;VR_HOLSTER&lt;&gt;, чтобы взять в руки мультитул" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TUT_BASEBUILD_MSG8B_VR2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Исследуйте планету и найдите &lt;TECHNOLOGY&gt;засыпанную технологию&lt;&gt;: 0 / 1&#xA;Активируйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt;.&#xA;Укажите &lt;STELLAR&gt;%SECONDARY_HAND%&lt;&gt; на заднюю сторону своего &lt;TECHNOLOGY&gt;мультитула&lt;&gt;.
                                { "Russian", "Исследуйте планету и найдите &lt;TECHNOLOGY&gt;засыпанную технологию&lt;&gt;&#xA;Активируйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt;&#xA;Укажите &lt;STELLAR&gt;%SECONDARY_HAND%&lt;&gt; на заднюю сторону своего &lt;TECHNOLOGY&gt;мультитула&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TUT_BASEBUILD_MSG8B_VR3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Исследуйте планету и найдите &lt;TECHNOLOGY&gt;засыпанную технологию&lt;&gt;: 0 / 1&#xA;Активируйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt;&#xA;Укажите на слово «Режим» и выберите то, что вам нужно, при помощи &lt;IMG&gt;FE_ALTSELECT&lt;&gt;
                                { "Russian", "Исследуйте планету и найдите &lt;TECHNOLOGY&gt;засыпанную технологию&lt;&gt;&#xA;Активируйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt;&#xA;Укажите на слово «Режим» и выберите то, что вам нужно, при помощи &lt;IMG&gt;FE_ALTSELECT&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TUT_BASEBUILD_MSG8B_VR4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Исследуйте планету и найдите &lt;TECHNOLOGY&gt;засыпанную технологию&lt;&gt;: 0 / 1&#xA;Используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; для поиска засыпанной технологии.&#xA;Поднимите &lt;STELLAR&gt;%SECONDARY_HAND%&lt;&gt;, отведите ее за голову и нажмите &lt;IMG&gt;AIM&lt;&gt;, чтобы его включить.
                                { "Russian", "Исследуйте планету и найдите &lt;TECHNOLOGY&gt;засыпанную технологию&lt;&gt;&#xA;Используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; для поиска&#xA;Поднимите &lt;STELLAR&gt;%SECONDARY_HAND%&lt;&gt;, отведите ее за голову и нажмите &lt;IMG&gt;AIM&lt;&gt;, чтобы его включить" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TUT_BASEBUILD_MSG8C" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Для поиска засыпанной технологии требуется &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt;.&#xA;Выберите пустую ячейку инвентаря в &lt;IMG&gt;PRODMENU&lt;&gt; и нажмите «&lt;STELLAR&gt;Закрепить&lt;&gt;» (&lt;IMG&gt;PIN&lt;&gt;).&#xA;Используйте закрепленные схемы из журнала (&lt;IMG&gt;OPTIONS&lt;&gt;)
                                -- Finding Buried Technology requires an &lt;TECHNOLOGY&gt;Analysis Visor&lt;&gt;&#xA;Choose an empty Inventory slot with &lt;IMG&gt;PRODMENU&lt;&gt; and select &lt;STELLAR&gt;Pin&lt;&gt; (&lt;IMG&gt;PIN&lt;&gt;)&#xA;Follow pinned recipes in the Log (&lt;IMG&gt;OPTIONS&lt;&gt;)
                                { "Russian", "Для поиска засыпанной технологии нужен &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt;&#xA;Выберите пустую ячейку в инвентаре с помощью &lt;IMG&gt;PRODMENU&lt;&gt; и выберите &lt;STELLAR&gt;Закрепить&lt;&gt; (&lt;IMG&gt;PIN&lt;&gt;)&#xA;Следуйте закрепленной инструкции в журнале (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TUT_BASEBUILD_MSGC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Разместите &lt;TECHNOLOGY&gt;модуль строительных исследований&lt;&gt;: 0 / 1&#xA;Чтобы открыть меню созидания, нажмите &lt;IMG&gt;BUILD_MENU&lt;&gt;
                                { "Russian", "Разместите &lt;TECHNOLOGY&gt;модуль строительных исследований&lt;&gt;&#xA;Откройте меню строительства с помощью &lt;IMG&gt;BUILD_MENU&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TUT_BASEBUILD_MSGC1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Для &lt;TECHNOLOGY&gt;модуля строительных исследований&lt;&gt; требуется &lt;EARTH&gt;намагниченный феррит&lt;&gt;&#xA;Создайте &lt;EARTH&gt;намагниченный феррит&lt;&gt; в &lt;TECHNOLOGY&gt;очистителе&lt;&gt;&#xA;Соберите %ITEM%: %CURRENT%/%AMOUNT%
                                { "Russian", "Для &lt;TECHNOLOGY&gt;модуля строительных исследований&lt;&gt; требуется &lt;EARTH&gt;намагниченный феррит&lt;&gt;&#xA;Создайте &lt;EARTH&gt;намагниченный феррит&lt;&gt; в &lt;TECHNOLOGY&gt;очистителе&lt;&gt;&#xA;Соберите: %ITEM% (%CURRENT%/%AMOUNT%)" },
                            }
                        },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "TUT_BASEBUILD_MSGC2" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Для &lt;TECHNOLOGY&gt;модуля строительных исследований&lt;&gt; требуется &lt;EARTH&gt;намагниченный феррит&lt;&gt;&#xA;Создайте &lt;EARTH&gt;намагниченный феррит&lt;&gt; в &lt;TECHNOLOGY&gt;очистителе&lt;&gt;&#xA;Поместите &lt;EARTH&gt;ферритную пыль&lt;&gt; в &lt;TECHNOLOGY&gt;портативный очиститель&lt;&gt;
                        --         { "Russian", "Для &lt;TECHNOLOGY&gt;модуля строительных исследований&lt;&gt; требуется &lt;EARTH&gt;намагниченный феррит&lt;&gt;&#xA;Создайте &lt;EARTH&gt;намагниченный феррит&lt;&gt; в &lt;TECHNOLOGY&gt;очистителе&lt;&gt;&#xA;Поместите &lt;EARTH&gt;ферритную пыль&lt;&gt; в &lt;TECHNOLOGY&gt;портативный очиститель&lt;&gt;" },
                        --     }
                        -- },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TUT_BASEBUILD_MSGC3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Для &lt;TECHNOLOGY&gt;модуля строительных исследований&lt;&gt; требуется &lt;EARTH&gt;намагниченный феррит&lt;&gt;&#xA;Процесс обработки &lt;EARTH&gt;чистого феррита&lt;&gt;: %CURRENT% / %AMOUNT%
                                { "Russian", "Для &lt;TECHNOLOGY&gt;модуля строительных исследований&lt;&gt; требуется &lt;EARTH&gt;намагниченный феррит&lt;&gt;&#xA;Процесс обработки &lt;EARTH&gt;чистого феррита&lt;&gt;: %CURRENT%/%AMOUNT%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TUT_BASEBUILD_MSGC4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Для &lt;TECHNOLOGY&gt;модуля строительных исследований&lt;&gt; требуется &lt;EARTH&gt;намагниченный феррит&lt;&gt;&#xA;Заберите %ITEM% из &lt;TECHNOLOGY&gt;очистителя&lt;&gt;: %CURRENT% / %AMOUNT%
                                { "Russian", "Для &lt;TECHNOLOGY&gt;модуля строительных исследований&lt;&gt; требуется &lt;EARTH&gt;намагниченный феррит&lt;&gt;&#xA;Заберите %ITEM% из &lt;TECHNOLOGY&gt;очистителя&lt;&gt;: %CURRENT%/%AMOUNT%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TUT_BASEBUILD_MSGC5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Для &lt;TECHNOLOGY&gt;модуля строительных исследований&lt;&gt; требуется &lt;EARTH&gt;намагниченный феррит&lt;&gt;.&#xA;Поместите &lt;EARTH&gt;чистый феррит&lt;&gt; в приемник &lt;TECHNOLOGY&gt;портативного очистителя&lt;&gt;.
                                { "Russian", "Для &lt;TECHNOLOGY&gt;модуля строительных исследований&lt;&gt; требуется &lt;EARTH&gt;намагниченный феррит&lt;&gt;&#xA;Поместите &lt;EARTH&gt;чистый феррит&lt;&gt; в приемник &lt;TECHNOLOGY&gt;портативного очистителя&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TUT_BASEBUILD_MSGC6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Для &lt;TECHNOLOGY&gt;модуля строительных исследований&lt;&gt; требуется &lt;EARTH&gt;намагниченный феррит&lt;&gt;&#xA;Процесс обработки &lt;EARTH&gt;намагниченного феррита&lt;&gt;: %CURRENT% / %AMOUNT%
                                { "Russian", "Для &lt;TECHNOLOGY&gt;модуля строительных исследований&lt;&gt; требуется &lt;EARTH&gt;намагниченный феррит&lt;&gt;&#xA;Процесс обработки &lt;EARTH&gt;намагниченного феррита&lt;&gt;: %CURRENT%/%AMOUNT%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TUT_BASEBUILD_MSGC7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Для &lt;TECHNOLOGY&gt;модуля строительных исследований&lt;&gt; требуется &lt;EARTH&gt;намагниченный феррит&lt;&gt;&#xA;Заберите %ITEM% из &lt;TECHNOLOGY&gt;очистителя&lt;&gt;: %CURRENT% / %AMOUNT%
                                { "Russian", "Для &lt;TECHNOLOGY&gt;модуля строительных исследований&lt;&gt; требуется &lt;EARTH&gt;намагниченный феррит&lt;&gt;&#xA;Заберите %ITEM% из &lt;TECHNOLOGY&gt;очистителя&lt;&gt;: %CURRENT%/%AMOUNT%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TUT_BASEBUILD_MSGC8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Создать: %ITEM% — %CURRENT%/%AMOUNT%&#xA;Для &lt;TECHNOLOGY&gt;модуля строительных исследований&lt;&gt; требуются &lt;COMMODITY&gt;углеродные нанотрубки&lt;&gt;.&#xA;Соберите &lt;FUEL&gt;углерод&lt;&gt; из &lt;STELLAR&gt;растений и деревьев&lt;&gt;.
                                { "Russian", "Создайте: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;Для &lt;TECHNOLOGY&gt;модуля строительных исследований&lt;&gt; требуются &lt;COMMODITY&gt;углеродные нанотрубки&lt;&gt;&#xA;Соберите &lt;FUEL&gt;углерод&lt;&gt; из &lt;STELLAR&gt;растений и деревьев&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TUT_BASEBUILD_MSGD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Испытайте &lt;TECHNOLOGY&gt;модуль строительных исследований&lt;&gt;&#xA;Чтобы взаимодействовать, нажмите &lt;IMG&gt;INTERACT&lt;&gt;
                                { "Russian", "Испытайте &lt;TECHNOLOGY&gt;модуль строительных исследований&lt;&gt;&#xA;Чтобы взаимодействовать с ним, нажмите &lt;IMG&gt;INTERACT&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TUT_BASEBUILD_MSG9" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Потратьте &lt;TECHNOLOGY&gt;извлеченные данные&lt;&gt; в &lt;TECHNOLOGY&gt;модуле строительных исследований&lt;&gt;.&#xA;Потратьте данные, чтобы изучить новый &lt;STELLAR&gt;строительный чертеж&lt;&gt;.&#xA;Вернитесь к своему &lt;TECHNOLOGY&gt;модулю строительных исследований&lt;&gt;.&#xA;Можно построить новый в меню созидания (&lt;IMG&gt;BUILD_MENU&lt;&gt;).
                                -- Spend the &lt;TECHNOLOGY&gt;Salvaged Data&lt;&gt; at your &lt;TECHNOLOGY&gt;Construction Research Unit&lt;&gt;&#xA;Spend the data to learn new &lt;STELLAR&gt;Construction Blueprints&lt;&gt;&#xA;Return to your &lt;TECHNOLOGY&gt;Construction Research Unit&lt;&gt;&#xA;Or construct a new one from the Build Menu (&lt;IMG&gt;BUILD_MENU&lt;&gt;)
                                { "Russian", "Потратьте &lt;TECHNOLOGY&gt;извлеченные данные&lt;&gt; в &lt;TECHNOLOGY&gt;модуле строительных исследований&lt;&gt;&#xA;Потратьте данные, чтобы изучить новый &lt;STELLAR&gt;строительный чертеж&lt;&gt;&#xA;Вернитесь к своему &lt;TECHNOLOGY&gt;модулю строительных исследований&lt;&gt;&#xA;Или постройте новый из меню строительства (&lt;IMG&gt;BUILD_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TUT_BASEBUILD_MSG9A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Потратьте &lt;TECHNOLOGY&gt;извлеченные данные&lt;&gt; в &lt;TECHNOLOGY&gt;модуле строительных исследований&lt;&gt;.&#xA;Используйте данные, чтобы изучить новые &lt;STELLAR&gt;строительные чертежи&lt;&gt;.
                                { "Russian", "Потратьте &lt;TECHNOLOGY&gt;извлеченные данные&lt;&gt; в &lt;TECHNOLOGY&gt;модуле строительных исследований&lt;&gt;&#xA;Используйте данные, чтобы изучить новые &lt;STELLAR&gt;строительные чертежи&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TUT_BASEBUILD_MSG10" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Исследуйте планету и найдите &lt;TECHNOLOGY&gt;улучшения базы&lt;&gt;: 1 / 3&#xA;Чтобы обнаружить засыпанные чертежи, используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)&#xA;Используйте &lt;IMG&gt;CYCLEWEAPON&lt;&gt;, чтобы переключать &lt;COMMODITY&gt;режимы мультитула&lt;&gt;
                                -- Explore the planet and locate &lt;TECHNOLOGY&gt;Base Upgrades&lt;&gt;: 1 / 3&#xA;Use the &lt;TECHNOLOGY&gt;Analysis Visor&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;) to locate buried blueprints&#xA;Cycle &lt;COMMODITY&gt;Multi-Tool Modes&lt;&gt; with &lt;IMG&gt;CYCLEWEAPON&lt;&gt;
                                { "Russian", "Исследуйте планету и найдите &lt;TECHNOLOGY&gt;улучшения базы&lt;&gt;: 1/3&#xA;Чтобы обнаружить засыпанные чертежи, используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)&#xA;Переключайте &lt;COMMODITY&gt;режимы мультитула&lt;&gt; с помощью &lt;IMG&gt;CYCLEWEAPON&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TUT_BASEBUILD_MSG10B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Исследуйте планету и найдите &lt;TECHNOLOGY&gt;улучшения базы&lt;&gt;: 0 / 3&#xA;Получен &lt;TECHNOLOGY&gt;модуль строительных исследований&lt;&gt;&#xA;Чтобы обнаружить засыпанные чертежи, используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)
                                -- Explore the planet and locate &lt;TECHNOLOGY&gt;Base Upgrades&lt;&gt;: 0 / 3&#xA;&lt;TECHNOLOGY&gt;Construction Research Unit&lt;&gt; Acquired&#xA;Use the &lt;TECHNOLOGY&gt;Analysis Visor&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;) to locate buried blueprints
                                { "Russian", "Исследуйте планету и найдите &lt;TECHNOLOGY&gt;улучшения базы&lt;&gt;: 0/3&#xA;Получен &lt;TECHNOLOGY&gt;модуль строительных исследований&lt;&gt;&#xA;Чтобы обнаружить засыпанные чертежи, используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TUT_BASEBUILD_MSG10C" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Исследуйте планету и найдите &lt;TECHNOLOGY&gt;засыпанную технологию&lt;&gt;: 2 / 3&#xA;Чтобы обнаружить засыпанные чертежи, используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)&#xA;Используйте &lt;IMG&gt;CYCLEWEAPON&lt;&gt;, чтобы переключать &lt;COMMODITY&gt;режимы мультитула&lt;&gt;
                                { "Russian", "Исследуйте планету и найдите &lt;TECHNOLOGY&gt;засыпанную технологию&lt;&gt;: 2/3&#xA;Чтобы обнаружить засыпанные чертежи, используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)&#xA;Переключайте &lt;COMMODITY&gt;режимы мультитула&lt;&gt; с помощью &lt;IMG&gt;CYCLEWEAPON&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TUT_BASEBUILD_MSG11" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Получены координаты &lt;TECHNOLOGY&gt;улучшения экзокостюма&lt;&gt;&#xA;Активируйте задание «Улучшение костюма» в своем журнале (&lt;IMG&gt;OPTIONS&lt;&gt;) &#xA;Улучшайте экзокостюм, чтобы расширять &lt;COMMODITY&gt;инвентарь&lt;&gt;
                                -- &lt;TECHNOLOGY&gt;Exosuit Upgrade&lt;&gt; Coordinates received&#xA;Activate the Exosuit Upgrade mission in the Log (&lt;IMG&gt;OPTIONS&lt;&gt;) &#xA;Upgrade the Exosuit for additional &lt;COMMODITY&gt;inventory space&lt;&gt;
                                { "Russian", "Получены координаты &lt;TECHNOLOGY&gt;улучшения экзокостюма&lt;&gt;&#xA;Выберите задание &lt;STELLAR&gt;Улучшение костюма&lt;&gt; в журнале (&lt;IMG&gt;OPTIONS&lt;&gt;)&#xA;Улучшайте экзокостюм, чтобы расширять &lt;COMMODITY&gt;инвентарь&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TUT_BASEBUILD_MSG_FAFF1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Разместите новый элемент базы: %CURRENT% / %AMOUNT%&#xA;Чтобы открыть меню созидания, нажмите &lt;IMG&gt;BUILD_MENU&lt;&gt;
                                -- Place your new base component: %CURRENT% / %AMOUNT%&#xA;Access the Build Menu with &lt;IMG&gt;BUILD_MENU&lt;&gt;
                                { "Russian", "Разместите новый элемент базы: %CURRENT%/%AMOUNT%&#xA;Откройте меню строительства с помощью &lt;IMG&gt;BUILD_MENU&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TUT_BASEBUILD_MSG_FAFF1_VR" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Разместите новый элемент базы: %CURRENT% / %AMOUNT%&#xA;Чтобы открыть меню, укажите на &lt;STELLAR&gt;%SECONDARY_HAND%&lt;&gt;.&#xA;Укажите на меню созидания и выберите его при помощи &lt;IMG&gt;QUICK_ACTION&lt;&gt;.
                                { "Russian", "Разместите новый элемент базы: %CURRENT%/%AMOUNT%&#xA;Чтобы открыть меню, укажите на &lt;STELLAR&gt;%SECONDARY_HAND%&lt;&gt;&#xA;Укажите на меню строительства и выберите его при помощи &lt;IMG&gt;QUICK_ACTION&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TUT_BASEBUILD_MSG_FAFF2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Исследуйте планету и найдите другие &lt;TECHNOLOGY&gt;засыпанные технологии&lt;&gt;: 0 / 1&#xA;Используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;) для поиска засыпанной технологии&#xA;Используйте &lt;IMG&gt;CYCLEWEAPON&lt;&gt;, чтобы переключать &lt;COMMODITY&gt;режимы мультитула&lt;&gt;
                                { "Russian", "Исследуйте планету и найдите другие &lt;TECHNOLOGY&gt;засыпанные технологии&lt;&gt;&#xA;Используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;) для поиска&#xA;Переключайте &lt;COMMODITY&gt;режимы мультитула&lt;&gt; с помощью &lt;IMG&gt;CYCLEWEAPON&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TUT_BASEBUILD_MSG_FAFF2_VRA" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Исследуйте планету и найдите другие &lt;TECHNOLOGY&gt;засыпанные технологии&lt;&gt;: 0 / 1&#xA;Активируйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt;&#xA;Заведите руку за плечо и нажмите &lt;IMG&gt;VR_HOLSTER&lt;&gt;, чтобы взять в руки мультитул
                                { "Russian", "Исследуйте планету и найдите другие &lt;TECHNOLOGY&gt;засыпанные технологии&lt;&gt;&#xA;Активируйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt;&#xA;Заведите руку за плечо и нажмите &lt;IMG&gt;VR_HOLSTER&lt;&gt;, чтобы взять в руки мультитул" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TUT_BASEBUILD_MSG_FAFF2_VRB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Исследуйте планету и найдите другие &lt;TECHNOLOGY&gt;засыпанные технологии&lt;&gt;: 0 / 1&#xA;Активируйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt;.&#xA;Укажите &lt;STELLAR&gt;%SECONDARY_HAND%&lt;&gt; на заднюю сторону своего &lt;TECHNOLOGY&gt;мультитула&lt;&gt;.
                                { "Russian", "Исследуйте планету и найдите другие &lt;TECHNOLOGY&gt;засыпанные технологии&lt;&gt;&#xA;Активируйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt;&#xA;Укажите &lt;STELLAR&gt;%SECONDARY_HAND%&lt;&gt; на заднюю сторону своего &lt;TECHNOLOGY&gt;мультитула&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TUT_BASEBUILD_MSG_FAFF2_VRC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Исследуйте планету и найдите другие &lt;TECHNOLOGY&gt;засыпанные технологии&lt;&gt;: 0 / 1&#xA;Активируйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt;.&#xA;Укажите на слово «Режим» и выберите то, что вам нужно, при помощи &lt;IMG&gt;FE_ALTSELECT&lt;&gt;
                                { "Russian", "Исследуйте планету и найдите другие &lt;TECHNOLOGY&gt;засыпанные технологии&lt;&gt;&#xA;Активируйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt;&#xA;Укажите на слово «Режим» и выберите то, что вам нужно, при помощи &lt;IMG&gt;FE_ALTSELECT&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TUT_BASEBUILD_MSG_FAFF2_VRD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Исследуйте планету и найдите другие &lt;TECHNOLOGY&gt;засыпанные технологии&lt;&gt;: 0 / 1&#xA;Используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; для поиска засыпанной технологии.&#xA;Поднимите &lt;STELLAR&gt;%SECONDARY_HAND%&lt;&gt;, отведите ее за голову и нажмите &lt;IMG&gt;AIM&lt;&gt;, чтобы его включить.
                                { "Russian", "Исследуйте планету и найдите другие &lt;TECHNOLOGY&gt;засыпанные технологии&lt;&gt;&#xA;Используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; для поиска&#xA;Поднимите &lt;STELLAR&gt;%SECONDARY_HAND%&lt;&gt;, отведите ее за голову и нажмите &lt;IMG&gt;AIM&lt;&gt;, чтобы его включить" },
                            }
                        },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "TUT_BASEBUILD_MSG_FAFF_RENAME" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Вашу базу можно &lt;STELLAR&gt;переименовать&lt;&gt;&#xA;Воспользуйтесь &lt;TECHNOLOGY&gt;компьютером базы&lt;&gt;, чтобы дать своей базе название
                        --         { "Russian", "Вашу базу можно &lt;STELLAR&gt;переименовать&lt;&gt;&#xA;Воспользуйтесь &lt;TECHNOLOGY&gt;компьютером базы&lt;&gt;, чтобы дать своей базе название" },
                        --     }
                        -- },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TUT_BASEBUILD_MSG_FAFF3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Научитесь строить &lt;TECHNOLOGY&gt;телепорт базы&lt;&gt;: 0 / 1&#xA;Потратьте &lt;STELLAR&gt;извлеченные данные&lt;&gt;, чтобы изучить новый &lt;STELLAR&gt;строительный чертеж&lt;&gt;.
                                -- Learn the &lt;TECHNOLOGY&gt;Base Teleporter&lt;&gt;: 0 / 1&#xA;Spend &lt;STELLAR&gt;Salvaged Data&lt;&gt; to learn new &lt;STELLAR&gt;Construction Blueprints&lt;&gt;
                                { "Russian", "Изучите чертеж &lt;TECHNOLOGY&gt;телепорта базы&lt;&gt;&#xA;Потратьте &lt;STELLAR&gt;извлеченные данные&lt;&gt; на его изучение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TUT_BASEBUILD_MSG_FAFF4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добыть: %ITEM% — %CURRENT% / %AMOUNT%&#xA;Для строительства &lt;TECHNOLOGY&gt;модуля телепортации между базами&lt;&gt; требуется &lt;COMMODITY&gt;металлическая обшивка&lt;&gt;.
                                -- Gather %ITEM%: %CURRENT% / %AMOUNT%&#xA;&lt;TECHNOLOGY&gt;Base Teleport Module&lt;&gt; requires &lt;COMMODITY&gt;Metal Plating&lt;&gt;
                                { "Russian", "Добудьте: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;Для &lt;TECHNOLOGY&gt;телепорта базы&lt;&gt; нужна &lt;COMMODITY&gt;металлическая обшивка&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TUT_BASEBUILD_MSG_FAFF5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Создать: %ITEM% — %CURRENT% / 4&#xA;Для строительства &lt;TECHNOLOGY&gt;модуля телепортации между базами&lt;&gt; требуется &lt;COMMODITY&gt;металлическая обшивка&lt;&gt;.
                                { "Russian", "Создать: %ITEM% (%CURRENT%/4)&#xA;Для &lt;TECHNOLOGY&gt;телепорта базы&lt;&gt; нужна &lt;COMMODITY&gt;металлическая обшивка&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TUT_BASEBUILD_MSG_FAFF6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Создать: %ITEM% — %CURRENT% / 4&#xA;Для строительства &lt;TECHNOLOGY&gt;модуля телепортации между базами&lt;&gt; требуется &lt;COMMODITY&gt;металлическая обшивка&lt;&gt;.
                                { "Russian", "Создать: %ITEM% (%CURRENT%/4)&#xA;Для &lt;TECHNOLOGY&gt;телепорта базы&lt;&gt; нужна &lt;COMMODITY&gt;металлическая обшивка&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TUT_BASEBUILD_MSG_FAFF7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Создать: %ITEM% — %CURRENT% / 4&#xA;Для строительства &lt;TECHNOLOGY&gt;модуля телепортации между базами&lt;&gt; требуется &lt;COMMODITY&gt;металлическая обшивка&lt;&gt;.
                                { "Russian", "Создать: %ITEM% (%CURRENT%/4)&#xA;Для &lt;TECHNOLOGY&gt;телепорта базы&lt;&gt; нужна &lt;COMMODITY&gt;металлическая обшивка&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TUT_BASEBUILD_MSG_FAFF8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Создать: %ITEM% — %CURRENT%/%AMOUNT%&#xA;Для строительства &lt;TECHNOLOGY&gt;модуля телепортации между базами&lt;&gt; требуется &lt;COMMODITY&gt;металлическая обшивка&lt;&gt;.
                                { "Russian", "Создать: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;Для &lt;TECHNOLOGY&gt;телепорта базы&lt;&gt; нужна &lt;COMMODITY&gt;металлическая обшивка&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TUT_BASEBUILD_MSG_FAFF11" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Заведите руку за плечо и нажмите &lt;IMG&gt;VR_HOLSTER&lt;&gt;, чтобы взять мультитул.&#xA;Для &lt;TECHNOLOGY&gt;телепорта базы&lt;&gt; требуются &lt;COMMODITY&gt;продукты на базе углерода&lt;&gt;.
                                { "Russian", "Заведите руку за плечо и нажмите &lt;IMG&gt;VR_HOLSTER&lt;&gt;, чтобы взять мультитул&#xA;Для &lt;TECHNOLOGY&gt;телепорта базы&lt;&gt; нужны &lt;COMMODITY&gt;продукты на базе углерода&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TUT_BASEBUILD_MSG_FAFF12" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добыть: %ITEM% — %CURRENT%/%AMOUNT%&#xA;Для строительства &lt;TECHNOLOGY&gt;модуля телепортации между базами&lt;&gt; требуются &lt;COMMODITY&gt;углеродные нанотрубки&lt;&gt;.
                                { "Russian", "Добудьте: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;Для &lt;TECHNOLOGY&gt;телепорта базы&lt;&gt; нужны &lt;COMMODITY&gt;углеродные нанотрубки&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TUT_BASEBUILD_MSG_FAFF13" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Создайте: %ITEM%%CURRENT%/%AMOUNT%&#xA;Для &lt;TECHNOLOGY&gt;телепорта базы&lt;&gt; требуется: %ITEM%.
                                -- Craft %ITEM%: %CURRENT%/%AMOUNT%&#xA;&lt;TECHNOLOGY&gt;Base Teleport Module&lt;&gt; requires %ITEM%
                                { "Russian", "Создайте: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;Для &lt;TECHNOLOGY&gt;телепорта базы&lt;&gt; требуется: %ITEM%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TUT_BASEBUILD_MSG_FAFF14" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите: %ITEM%%CURRENT%/%AMOUNT%&#xA;Для &lt;TECHNOLOGY&gt;телепорта базы&lt;&gt; требуются &lt;COMMODITY&gt;продукты на базе углерода&lt;&gt;.
                                -- Gather %ITEM%: %CURRENT%/%AMOUNT%&#xA;&lt;TECHNOLOGY&gt;Base Teleport Module&lt;&gt; requires &lt;COMMODITY&gt;Carbon-Based Products&lt;&gt;
                                { "Russian", "Соберите: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;Для &lt;TECHNOLOGY&gt;телепорта базы&lt;&gt; нужны &lt;COMMODITY&gt;продукты на базе углерода&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TUT_BASEBUILD_MSG_FAFF15" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Разместите &lt;TECHNOLOGY&gt;портативный очиститель&lt;&gt;: 0 / 1&#xA;Для &lt;TECHNOLOGY&gt;телепорта базы&lt;&gt; требуются &lt;EARTH&gt;очищенные материалы&lt;&gt;.&#xA;Чтобы открыть меню созидания, нажмите &lt;IMG&gt;BUILD_MENU&lt;&gt;
                                { "Russian", "Разместите &lt;TECHNOLOGY&gt;портативный очиститель&lt;&gt;&#xA;Для &lt;TECHNOLOGY&gt;телепорта базы&lt;&gt; нужны &lt;EARTH&gt;очищенные материалы&lt;&gt;&#xA;Откройте меню строительства с помощью &lt;IMG&gt;BUILD_MENU&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TUT_BASEBUILD_MSG_FAFF16" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Разместите &lt;TECHNOLOGY&gt;портативный очиститель&lt;&gt;: 0 / 1&#xA;Для &lt;TECHNOLOGY&gt;телепорта базы&lt;&gt; требуются &lt;EARTH&gt;очищенные материалы&lt;&gt;.&#xA;Чтобы открыть меню, укажите на &lt;STELLAR&gt;%SECONDARY_HAND%&lt;&gt;.&#xA;Укажите на меню созидания и выберите его при помощи &lt;IMG&gt;QUICK_ACTION&lt;&gt;.
                                { "Russian", "Разместите &lt;TECHNOLOGY&gt;портативный очиститель&lt;&gt;&#xA;Для &lt;TECHNOLOGY&gt;телепорта базы&lt;&gt; нужны &lt;EARTH&gt;очищенные материалы&lt;&gt;&#xA;Чтобы открыть меню, укажите на &lt;STELLAR&gt;%SECONDARY_HAND%&lt;&gt;&#xA;Укажите на меню строительства и выберите его при помощи &lt;IMG&gt;QUICK_ACTION&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TUT_BASEBUILD_MSG_FAFF17" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обработайте &lt;FUEL&gt;углерод&lt;&gt; в &lt;TECHNOLOGY&gt;портативном очистителе&lt;&gt;.&#xA;Для &lt;TECHNOLOGY&gt;телепорта базы&lt;&gt; требуются &lt;COMMODITY&gt;продукты на базе углерода&lt;&gt;.
                                { "Russian", "Обработайте &lt;FUEL&gt;углерод&lt;&gt; в &lt;TECHNOLOGY&gt;портативном очистителе&lt;&gt;&#xA;Для &lt;TECHNOLOGY&gt;телепорта базы&lt;&gt; нужны &lt;COMMODITY&gt;продукты на базе углерода&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TUT_BASEBUILD_MSG_FAFF18" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Очиститель обрабатывает &lt;FUEL&gt;углерод&lt;&gt;: %CURRENT% / %AMOUNT%&#xA;Для &lt;TECHNOLOGY&gt;телепорта базы&lt;&gt; требуются &lt;COMMODITY&gt;продукты на базе углерода&lt;&gt;.
                                { "Russian", "Очиститель обрабатывает &lt;FUEL&gt;углерод&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Для &lt;TECHNOLOGY&gt;телепорта базы&lt;&gt; нужны &lt;COMMODITY&gt;продукты на базе углерода&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TUT_BASEBUILD_MSG_FAFF19" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Заберите %ITEM% из очистителя: %CURRENT% / %AMOUNT%&#xA;Для &lt;TECHNOLOGY&gt;телепорта базы&lt;&gt; требуются &lt;COMMODITY&gt;продукты на базе углерода&lt;&gt;.
                                { "Russian", "Заберите %ITEM% из очистителя: %CURRENT%/%AMOUNT%&#xA;Для &lt;TECHNOLOGY&gt;телепорта базы&lt;&gt; нужны &lt;COMMODITY&gt;продукты на базе углерода&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TUT_BASEBUILD_MSG_FAFF20" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Создайте: %ITEM%%CURRENT%/%AMOUNT%&#xA;Для &lt;TECHNOLOGY&gt;телепорта базы&lt;&gt; требуется: %ITEM%.
                                -- Craft %ITEM%: %CURRENT%/%AMOUNT%&#xA;&lt;TECHNOLOGY&gt;Base Teleport Module&lt;&gt; requires %ITEM%
                                { "Russian", "Создайте: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;Для &lt;TECHNOLOGY&gt;телепорта базы&lt;&gt; требуется: %ITEM%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TUT_BASEBUILD_MSG_FAFF21" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Постройте &lt;TECHNOLOGY&gt;телепорт базы&lt;&gt;: 0 / 1&#xA;Чтобы открыть меню созидания, нажмите &lt;IMG&gt;BUILD_MENU&lt;&gt;
                                { "Russian", "Постройте &lt;TECHNOLOGY&gt;телепорт базы&lt;&gt;&#xA;Откройте меню строительства с помощью &lt;IMG&gt;BUILD_MENU&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TUT_BASEBUILD_MSG_FAFF22" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Постройте &lt;TECHNOLOGY&gt;телепорт базы&lt;&gt;: 0 / 1&#xA;Чтобы открыть меню, укажите на &lt;STELLAR&gt;%SECONDARY_HAND%&lt;&gt;.&#xA;Укажите на меню созидания и выберите его при помощи &lt;IMG&gt;QUICK_ACTION&lt;&gt;.
                                { "Russian", "Постройте &lt;TECHNOLOGY&gt;телепорт базы&lt;&gt;&#xA;Чтобы открыть меню, укажите на &lt;STELLAR&gt;%SECONDARY_HAND%&lt;&gt;&#xA;Укажите на меню строительства и выберите его при помощи &lt;IMG&gt;QUICK_ACTION&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TUT_BASEBUILD_MSG_FAFF23" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Подайте питание на &lt;TECHNOLOGY&gt;телепорт базы&lt;&gt;.&#xA;Выберите &lt;STELLAR&gt;«Питание базы»&lt;&gt; в журнале заданий (&lt;IMG&gt;OPTIONS&lt;&gt;).
                                { "Russian", "Подайте питание на &lt;TECHNOLOGY&gt;телепорт базы&lt;&gt;&#xA;Выберите &lt;STELLAR&gt;Питание базы&lt;&gt; в журнале заданий (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TUT_BASEBUILD_MSG_FAFF24" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добыть: &lt;COMMODITY&gt;%ITEM%&lt;&gt; — %CURRENT%/%AMOUNT%&#xA;Начните сканирование (&lt;IMG&gt;SCAN&lt;&gt;), чтобы найти &lt;COMMODITY&gt;богатые натрием растения&lt;&gt;.
                                -- Gather &lt;COMMODITY&gt;%ITEM%&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Scan (&lt;IMG&gt;SCAN&lt;&gt;) to locate &lt;COMMODITY&gt;Sodium rich plants&lt;&gt;
                                { "Russian", "Добудьте: &lt;COMMODITY&gt;%ITEM%&lt;&gt; (%CURRENT%/%AMOUNT%)&#xA;Найдите &lt;COMMODITY&gt;богатые натрием растения&lt;&gt; с помощью сканера (&lt;IMG&gt;SCAN&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TUT_BASEBUILD_MSG_FAFF24_VRA" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добыть: &lt;COMMODITY&gt;%ITEM%&lt;&gt; — %CURRENT%/%AMOUNT%&#xA;Начните сканирование (&lt;IMG&gt;SCAN&lt;&gt;), чтобы найти &lt;COMMODITY&gt;богатые натрием растения&lt;&gt;.&#xA;Заведите руку за плечо и нажмите &lt;IMG&gt;VR_HOLSTER&lt;&gt;, чтобы взять мультитул.
                                { "Russian", "Добудьте: &lt;COMMODITY&gt;%ITEM%&lt;&gt; (%CURRENT%/%AMOUNT%)&#xA;Найдите &lt;COMMODITY&gt;богатые натрием растения&lt;&gt; с помощью сканера (&lt;IMG&gt;SCAN&lt;&gt;)&#xA;Заведите руку за плечо и нажмите &lt;IMG&gt;VR_HOLSTER&lt;&gt;, чтобы взять мультитул" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TUT_BASEBUILD_MSG_FAFF24_VRB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добыть: &lt;COMMODITY&gt;%ITEM%&lt;&gt; — %CURRENT%/%AMOUNT%&#xA;Начните сканирование (&lt;IMG&gt;SCAN&lt;&gt;), чтобы найти &lt;COMMODITY&gt;богатые натрием растения&lt;&gt;.&#xA;Укажите &lt;STELLAR&gt;%SECONDARY_HAND%&lt;&gt; на заднюю сторону своего &lt;COMMODITY&gt;мультитула&lt;&gt;.
                                { "Russian", "Добудьте: &lt;COMMODITY&gt;%ITEM%&lt;&gt; (%CURRENT%/%AMOUNT%)&#xA;Найдите &lt;COMMODITY&gt;богатые натрием растения&lt;&gt; с помощью сканера (&lt;IMG&gt;SCAN&lt;&gt;)&#xA;Укажите &lt;STELLAR&gt;%SECONDARY_HAND%&lt;&gt; на заднюю сторону своего &lt;COMMODITY&gt;мультитула&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TUT_BASEBUILD_MSG_FAFF24_VRC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добыть: &lt;COMMODITY&gt;%ITEM%&lt;&gt; — %CURRENT%/%AMOUNT%&#xA;Начните сканирование (&lt;IMG&gt;SCAN&lt;&gt;), чтобы найти &lt;COMMODITY&gt;богатые натрием растения&lt;&gt;.&#xA;Укажите на слово «Сканирование» и выберите то, что вам нужно, при помощи &lt;IMG&gt;FE_ALTSELECT&lt;&gt;.
                                { "Russian", "Добудьте: &lt;COMMODITY&gt;%ITEM%&lt;&gt; (%CURRENT%/%AMOUNT%)&#xA;Найдите &lt;COMMODITY&gt;богатые натрием растения&lt;&gt; с помощью сканера (&lt;IMG&gt;SCAN&lt;&gt;)&#xA;Укажите на слово «Сканирование» и выберите то, что вам нужно, при помощи &lt;IMG&gt;FE_ALTSELECT&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TUT_BASEBUILD_MSG_FAFF24_VRD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найти: &lt;COMMODITY&gt;%ITEM%&lt;&gt; — %CURRENT%/%AMOUNT%&#xA;Удерживайте &lt;IMG&gt;VR_TELEPORT&lt;&gt;, чтобы перейти в режим телепортации.&#xA;Отпустите &lt;IMG&gt;VR_TELEPORT&lt;&gt;, чтобы телепортироваться.
                                { "Russian", "Найдите: &lt;COMMODITY&gt;%ITEM%&lt;&gt; (%CURRENT%/%AMOUNT%)&#xA;Удерживайте &lt;IMG&gt;VR_TELEPORT&lt;&gt;, чтобы перейти в режим телепортации&#xA;Отпустите &lt;IMG&gt;VR_TELEPORT&lt;&gt;, чтобы телепортироваться" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TUT_BASEBUILD_MSG_FAFF24_VRE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найти: &lt;COMMODITY&gt;%ITEM%&lt;&gt; — %CURRENT%/%AMOUNT%&#xA;Используйте &lt;IMG&gt;VR_SNAPLEFT&lt;&gt;/&lt;IMG&gt;VR_SNAPRIGHT&lt;&gt; для смены направления.&#xA;Удерживайте &lt;IMG&gt;VR_TELEPORT&lt;&gt;, чтобы перейти в режим телепортации.
                                { "Russian", "Найдите: &lt;COMMODITY&gt;%ITEM%&lt;&gt; (%CURRENT%/%AMOUNT%)&#xA;Используйте &lt;IMG&gt;VR_SNAPLEFT&lt;&gt;/&lt;IMG&gt;VR_SNAPRIGHT&lt;&gt; для смены направления&#xA;Удерживайте &lt;IMG&gt;VR_TELEPORT&lt;&gt;, чтобы перейти в режим телепортации" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TUT_BASEBUILD_MSG_FAFF25" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Подайте &lt;STELLAR&gt;питание&lt;&gt; на базу.&#xA;Выберите &lt;STELLAR&gt;«Питание базы»&lt;&gt; в журнале заданий (&lt;IMG&gt;OPTIONS&lt;&gt;).
                                { "Russian", "Подайте &lt;STELLAR&gt;питание&lt;&gt; на базу&#xA;Выберите &lt;STELLAR&gt;Питание базы&lt;&gt; в журнале заданий (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                            }
                        },
                        --#endregion

                        --#region TUT_BASEBUILD_GUIDE_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TUT_BASEBUILD_GUIDE_MSG1A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Создайте &lt;TECHNOLOGY&gt;убежище&lt;&gt; для защиты от &lt;COMMODITY&gt;внешних угроз&lt;&gt;.&#xA;Постройте фундамент из &lt;TECHNOLOGY&gt;бревенчатых напольных панелей&lt;&gt;: %CURRENT% / %AMOUNT%.&#xA;Чтобы открыть меню созидания, нажмите &lt;IMG&gt;BUILD_MENU&lt;&gt;.
                                { "Russian", "Создайте &lt;TECHNOLOGY&gt;убежище&lt;&gt; для защиты от &lt;COMMODITY&gt;внешних угроз&lt;&gt;&#xA;Постройте фундамент из &lt;TECHNOLOGY&gt;бревенчатых напольных панелей&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Чтобы открыть меню строительства, нажмите &lt;IMG&gt;BUILD_MENU&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TUT_BASEBUILD_GUIDE_MSG1A_VR" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Создайте &lt;TECHNOLOGY&gt;убежище&lt;&gt; для защиты от &lt;COMMODITY&gt;внешних угроз&lt;&gt;.&#xA;Постройте фундамент из &lt;TECHNOLOGY&gt;бревенчатых напольных панелей&lt;&gt;: %CURRENT% / %AMOUNT%&#xA;Чтобы открыть &lt;STELLAR&gt;меню созидания&lt;&gt;, укажите на &lt;STELLAR&gt;%SECONDARY_HAND%&lt;&gt;.
                                { "Russian", "Создайте &lt;TECHNOLOGY&gt;убежище&lt;&gt; для защиты от &lt;COMMODITY&gt;внешних угроз&lt;&gt;&#xA;Постройте фундамент из &lt;TECHNOLOGY&gt;бревенчатых напольных панелей&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Чтобы открыть &lt;STELLAR&gt;меню строительства&lt;&gt;, укажите на &lt;STELLAR&gt;%SECONDARY_HAND%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TUT_BASEBUILD_GUIDE_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Создайте &lt;TECHNOLOGY&gt;убежище&lt;&gt; для защиты от &lt;COMMODITY&gt;внешних угроз&lt;&gt;.&#xA;Постройте &lt;TECHNOLOGY&gt;бревенчатые стены&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Чтобы открыть меню созидания, нажмите &lt;IMG&gt;BUILD_MENU&lt;&gt;.
                                { "Russian", "Создайте &lt;TECHNOLOGY&gt;убежище&lt;&gt; для защиты от &lt;COMMODITY&gt;внешних угроз&lt;&gt;&#xA;Постройте &lt;TECHNOLOGY&gt;бревенчатые стены&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Чтобы открыть меню строительства, нажмите &lt;IMG&gt;BUILD_MENU&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TUT_BASEBUILD_GUIDE_MSG1_VR" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Создайте &lt;TECHNOLOGY&gt;убежище&lt;&gt; для защиты от &lt;COMMODITY&gt;внешних угроз&lt;&gt;.&#xA;Постройте &lt;TECHNOLOGY&gt;бревенчатые стены&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Чтобы открыть &lt;STELLAR&gt;меню созидания&lt;&gt;, укажите на &lt;STELLAR&gt;%SECONDARY_HAND%&lt;&gt;.
                                { "Russian", "Создайте &lt;TECHNOLOGY&gt;убежище&lt;&gt; для защиты от &lt;COMMODITY&gt;внешних угроз&lt;&gt;&#xA;Постройте &lt;TECHNOLOGY&gt;бревенчатые стены&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Чтобы открыть &lt;STELLAR&gt;меню строительства&lt;&gt;, укажите на &lt;STELLAR&gt;%SECONDARY_HAND%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TUT_BASEBUILD_GUIDE_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Создайте &lt;TECHNOLOGY&gt;убежище&lt;&gt; для защиты от &lt;COMMODITY&gt;внешних угроз&lt;&gt;.&#xA;Сделайте &lt;TECHNOLOGY&gt;бревенчатую дверь&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Чтобы открыть меню созидания, нажмите &lt;IMG&gt;BUILD_MENU&lt;&gt;.
                                { "Russian", "Создайте &lt;TECHNOLOGY&gt;убежище&lt;&gt; для защиты от &lt;COMMODITY&gt;внешних угроз&lt;&gt;&#xA;Постройте &lt;TECHNOLOGY&gt;бревенчатую дверь&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Чтобы открыть меню строительства, нажмите &lt;IMG&gt;BUILD_MENU&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TUT_BASEBUILD_GUIDE_MSG2_VR" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Создайте &lt;TECHNOLOGY&gt;убежище&lt;&gt; для защиты от &lt;COMMODITY&gt;внешних угроз&lt;&gt;.&#xA;Постройте &lt;TECHNOLOGY&gt;бревенчатую дверь&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Чтобы открыть &lt;STELLAR&gt;меню созидания&lt;&gt;, укажите на &lt;STELLAR&gt;%SECONDARY_HAND%&lt;&gt;.
                                { "Russian", "Создайте &lt;TECHNOLOGY&gt;убежище&lt;&gt; для защиты от &lt;COMMODITY&gt;внешних угроз&lt;&gt;&#xA;Постройте &lt;TECHNOLOGY&gt;бревенчатую дверь&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Чтобы открыть &lt;STELLAR&gt;меню строительства&lt;&gt;, укажите на &lt;STELLAR&gt;%SECONDARY_HAND%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TUT_BASEBUILD_GUIDE_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Создайте &lt;TECHNOLOGY&gt;убежище&lt;&gt; для защиты от &lt;COMMODITY&gt;внешних угроз&lt;&gt;.&#xA;Постройте &lt;TECHNOLOGY&gt;бревенчатую крышу&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Чтобы открыть меню созидания, нажмите &lt;IMG&gt;BUILD_MENU&lt;&gt;.
                                { "Russian", "Создайте &lt;TECHNOLOGY&gt;убежище&lt;&gt; для защиты от &lt;COMMODITY&gt;внешних угроз&lt;&gt;&#xA;Постройте &lt;TECHNOLOGY&gt;бревенчатую крышу&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Чтобы открыть меню строительства, нажмите &lt;IMG&gt;BUILD_MENU&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TUT_BASEBUILD_GUIDE_MSG3_ALT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Создайте &lt;TECHNOLOGY&gt;убежище&lt;&gt; для защиты от &lt;COMMODITY&gt;внешних угроз&lt;&gt;.&#xA;Создайте &lt;TECHNOLOGY&gt;крышу&lt;&gt;: %CURRENT% / %AMOUNT%.&#xA;Чтобы открыть меню созидания, нажмите &lt;IMG&gt;BUILD_MENU&lt;&gt;.
                                { "Russian", "Создайте &lt;TECHNOLOGY&gt;убежище&lt;&gt; для защиты от &lt;COMMODITY&gt;внешних угроз&lt;&gt;&#xA;Постройте &lt;TECHNOLOGY&gt;крышу&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Чтобы открыть меню строительства, нажмите &lt;IMG&gt;BUILD_MENU&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TUT_BASEBUILD_GUIDE_MSG3_ALT_VR" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Создайте &lt;TECHNOLOGY&gt;убежище&lt;&gt; для защиты от &lt;COMMODITY&gt;внешних угроз&lt;&gt;.&#xA;Постройте &lt;TECHNOLOGY&gt;крышу&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Чтобы открыть &lt;STELLAR&gt;меню созидания&lt;&gt;, укажите на &lt;STELLAR&gt;%SECONDARY_HAND%&lt;&gt;.
                                { "Russian", "Создайте &lt;TECHNOLOGY&gt;убежище&lt;&gt; для защиты от &lt;COMMODITY&gt;внешних угроз&lt;&gt;.&#xA;Постройте &lt;TECHNOLOGY&gt;крышу&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Чтобы открыть &lt;STELLAR&gt;меню строительства&lt;&gt;, укажите на &lt;STELLAR&gt;%SECONDARY_HAND%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TUT_BASEBUILD_GUIDE_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Создайте &lt;TECHNOLOGY&gt;убежище&lt;&gt; для защиты от &lt;COMMODITY&gt;внешних угроз&lt;&gt;&#xA;Создайте &lt;TECHNOLOGY&gt;контейнер&lt;&gt;: %CURRENT% / %AMOUNT%&#xA;Чтобы открыть меню созидания, нажмите &lt;IMG&gt;BUILD_MENU&lt;&gt;.
                                { "Russian", "Создайте &lt;TECHNOLOGY&gt;убежище&lt;&gt; для защиты от &lt;COMMODITY&gt;внешних угроз&lt;&gt;&#xA;Постройте &lt;TECHNOLOGY&gt;контейнер&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Чтобы открыть меню строительства, нажмите &lt;IMG&gt;BUILD_MENU&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TUT_BASEBUILD_GUIDE_MSG5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Создайте &lt;TECHNOLOGY&gt;убежище&lt;&gt; для защиты от &lt;COMMODITY&gt;внешних угроз&lt;&gt;&#xA;Создайте &lt;TECHNOLOGY&gt;точку сохранения&lt;&gt;: 0 / 1&#xA;Чтобы открыть меню созидания, нажмите &lt;IMG&gt;BUILD_MENU&lt;&gt;.
                                { "Russian", "Создайте &lt;TECHNOLOGY&gt;убежище&lt;&gt; для защиты от &lt;COMMODITY&gt;внешних угроз&lt;&gt;&#xA;Постройте &lt;TECHNOLOGY&gt;точку сохранения&lt;&gt;: 0/1&#xA;Чтобы открыть меню строительства, нажмите &lt;IMG&gt;BUILD_MENU&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region UI_MYSTERY_OVER_WAIT_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MYSTERY_OVER_WAIT_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Зашифрованное сообщение&lt;&gt; сохранено для дальнейшего использования.&#xA;Улучшите свой инвентарь с помощью &lt;TECHNOLOGY&gt;торговца технологиями для экзокостюма&lt;&gt;.&#xA;Когда будете готовы уйти, воспользуйтесь &lt;TECHNOLOGY&gt;терминалом телепорта&lt;&gt;, чтобы вернуться на свою базу.
                                -- The &lt;STELLAR&gt;encoded message&lt;&gt; has been stored for later use&#xA;Upgrade your inventory at the &lt;TECHNOLOGY&gt;Exosuit Technology Merchant&lt;&gt;&#xA;When ready to leave, use the &lt;TECHNOLOGY&gt;Teleport Terminus&lt;&gt; to return to your base
                                { "Russian", "&lt;STELLAR&gt;Зашифрованное сообщение&lt;&gt; сохранено на потом&#xA;Улучшите свой инвентарь у &lt;TECHNOLOGY&gt;торговца технологиями для экзокостюма&lt;&gt;&#xA;Когда будете готовы, используйте &lt;TECHNOLOGY&gt;телепорт&lt;&gt;, чтобы вернуться на свою базу" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MYSTERY_OVER_WAIT_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Зашифрованное сообщение&lt;&gt; сохранено для дальнейшего использования.&#xA;Когда будете готовы уйти, воспользуйтесь &lt;TECHNOLOGY&gt;терминалом телепорта&lt;&gt;, чтобы вернуться на свою базу.
                                -- The &lt;STELLAR&gt;encoded message&lt;&gt; has been stored for later use&#xA;When ready to leave, use the &lt;TECHNOLOGY&gt;Teleport Terminus&lt;&gt; to return to your base
                                { "Russian", "&lt;STELLAR&gt;Зашифрованное сообщение&lt;&gt; сохранено на потом&#xA;Когда будете готовы, используйте &lt;TECHNOLOGY&gt;телепорт&lt;&gt;,&#xA;чтобы вернуться на свою базу" },
                            }
                        },
                        --#endregion

                        --#region UI_BASEFLAG_.*MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BASEFLAG_INTERACT_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Архивы &lt;TECHNOLOGY&gt;компьютера базы&lt;&gt; частично восстановлены.&#xA;Воспользуйтесь компьютером базы, чтобы узнать больше.
                                { "Russian", "Архивы &lt;TECHNOLOGY&gt;компьютера базы&lt;&gt; частично восстановлены&#xA;Воспользуйтесь компьютером базы, чтобы узнать больше" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BASEFLAG_COOLDOWN_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Выполняется восстановление архива: &lt;STELLAR&gt;%TIME%&lt;&gt;.&#xA;По окончании процедуры пользователь получит уведомление.&#xA;Чтобы выбрать другую задачу, посмотрите журнал (&lt;IMG&gt;OPTIONS&lt;&gt;).
                                -- Archive recovery in progress: &lt;STELLAR&gt;%TIME%&lt;&gt;&#xA;User will be advised when recovery is complete&#xA;Consult the Log (&lt;IMG&gt;OPTIONS&lt;&gt;) to select another task
                                { "Russian", "Выполняется восстановление архива: &lt;STELLAR&gt;%TIME%&lt;&gt;&#xA;По завершению пользователь получит уведомление&#xA;Выберите другое задание в журнале (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BASEFLAG_BUILD_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Постройте: &lt;TECHNOLOGY&gt;%ITEM%&lt;&gt;&#xA;Чтобы открыть меню созидания, нажмите &lt;IMG&gt;BUILD_MENU&lt;&gt;.&#xA;Чтобы следить за списком компонентов, воспользуйтесь &lt;IMG&gt;PIN_BUILD&lt;&gt;.
                                -- Construct the &lt;TECHNOLOGY&gt;%ITEM%&lt;&gt;&#xA;Access the Build Menu with &lt;IMG&gt;BUILD_MENU&lt;&gt;&#xA;Track component list with &lt;IMG&gt;PIN_BUILD&lt;&gt;
                                { "Russian", "Постройте: &lt;TECHNOLOGY&gt;%ITEM%&lt;&gt;&#xA;Откройте меню строительства с помощью &lt;IMG&gt;BUILD_MENU&lt;&gt;&#xA;Отслеживайте список компонентов с помощью &lt;IMG&gt;PIN_BUILD&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BASEFLAG_TECH_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Постройте: &lt;TECHNOLOGY&gt;%ITEM%&lt;&gt;&#xA;Установите в пустую ячейку &lt;STELLAR&gt;инвентаря&lt;&gt; или &lt;TECHNOLOGY&gt;технологии&lt;&gt;&lt;IMG&gt;INVENTORY&lt;&gt;.&#xA;Чтобы следить за списком компонентов во время установки, воспользуйтесь &lt;IMG&gt;PIN&lt;&gt;.
                                -- Construct the &lt;TECHNOLOGY&gt;%ITEM%&lt;&gt;&#xA;Install in an empty &lt;STELLAR&gt;Inventory&lt;&gt; or &lt;TECHNOLOGY&gt;Technology&lt;&gt; Slot &lt;IMG&gt;INVENTORY&lt;&gt;&#xA;When installing, track component list with &lt;IMG&gt;PIN&lt;&gt;
                                { "Russian", "Создайте: &lt;TECHNOLOGY&gt;%ITEM%&lt;&gt;&#xA;Установите в пустую ячейку &lt;STELLAR&gt;инвентаря&lt;&gt; или &lt;TECHNOLOGY&gt;технологии&lt;&gt; &lt;IMG&gt;INVENTORY&lt;&gt;&#xA;Во время установки, отслеживайте список компонентов&#xA;с помощью &lt;IMG&gt;PIN_BUILD&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BASEFLAG_PROC_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Установите &lt;TECHNOLOGY&gt;модуль улучшения&lt;&gt;.&#xA;Чтобы начать, найдите модуль в инвентаре и используйте &lt;IMG&gt;FE_ALT1&lt;&gt;.&#xA;Разместите модуль в любой ячейке &lt;STELLAR&gt;инвентаря&lt;&gt; или &lt;TECHNOLOGY&gt;технологии&lt;&gt;.
                                -- Install the &lt;TECHNOLOGY&gt;Upgrade Module&lt;&gt;&#xA;Find module in Inventory and use &lt;IMG&gt;FE_ALT1&lt;&gt; to begin&#xA;Deploy the module into any &lt;STELLAR&gt;Inventory&lt;&gt; or &lt;TECHNOLOGY&gt;Technology&lt;&gt; Slot
                                { "Russian", "Установите &lt;TECHNOLOGY&gt;модуль улучшения&lt;&gt;&#xA;Найдите модуль в инвентаре и используйте &lt;IMG&gt;FE_ALT1&lt;&gt;&#xA;Разместите модуль в любой ячейке &lt;STELLAR&gt;инвентаря&lt;&gt; или &lt;TECHNOLOGY&gt;технологии&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BASEFLAG_LORE_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;Компьютер базы&lt;&gt; обнаружил архив на другой планете.&#xA;Доберитесь до отмеченных координат и изучите находку.
                                -- The &lt;TECHNOLOGY&gt;Base Computer&lt;&gt; has located an off-world archive&#xA;Reach the marked coordinates and investigate
                                { "Russian", "&lt;TECHNOLOGY&gt;Компьютер базы&lt;&gt; обнаружил архив на другой планете&#xA;Доберитесь до отмеченных координат" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BASEFLAG_LORE_INTERSTELLAR" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;Компьютер базы&lt;&gt; обнаружил архив на другой планете.&#xA;Откройте &lt;STELLAR&gt;галактическую карту&lt;&gt; и узнайте, где находится архив.
                                -- The &lt;TECHNOLOGY&gt;Base Computer&lt;&gt; has located an off-world archive&#xA;Locate the archive on the &lt;STELLAR&gt;Galaxy Map&lt;&gt;
                                { "Russian", "&lt;TECHNOLOGY&gt;Компьютер базы&lt;&gt; обнаружил архив на другой планете&#xA;Найдите архив на &lt;STELLAR&gt;галактической карте&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region UI_BASEFLAG_OBJ_TIP
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BASEFLAG_OBJ_TIP_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Улучшите свою базу, создав &lt;TECHNOLOGY&gt;контейнер&lt;&gt;.&#xA;Откройте меню созидания (&lt;IMG&gt;BUILD_MENU&lt;&gt;) и закрепите нужные планы при помощи &lt;IMG&gt;PIN_BUILD&lt;&gt;.
                                -- Upgrade your base by building a &lt;TECHNOLOGY&gt;Storage Container&lt;&gt;.&#xA;Access the Build Menu with &lt;IMG&gt;BUILD_MENU&lt;&gt; and pin plans with &lt;IMG&gt;PIN_BUILD&lt;&gt;.
                                { "Russian", "Улучшите свою базу, создав &lt;TECHNOLOGY&gt;контейнер&lt;&gt;.&#xA;Откройте меню строительства с помощью &lt;IMG&gt;BUILD_MENU&lt;&gt; и закрепите инструкцию при помощи &lt;IMG&gt;PIN_BUILD&lt;&gt;." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BASEFLAG_OBJ_TIP_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Улучшите базу, создав &lt;TECHNOLOGY&gt;солнечную панель&lt;&gt;.&#xA;Откройте меню созидания (&lt;IMG&gt;BUILD_MENU&lt;&gt;) и закрепите нужные планы при помощи &lt;IMG&gt;PIN_BUILD&lt;&gt;.
                                { "Russian", "Улучшите базу, создав &lt;TECHNOLOGY&gt;солнечную панель&lt;&gt;.&#xA;Откройте меню строительства с помощью &lt;IMG&gt;BUILD_MENU&lt;&gt; и закрепите инструкцию при помощи &lt;IMG&gt;PIN_BUILD&lt;&gt;." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BASEFLAG_OBJ_TIP_7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Улучшите базу, создав &lt;TECHNOLOGY&gt;настенный светильник&lt;&gt;.&#xA;Откройте меню созидания (&lt;IMG&gt;BUILD_MENU&lt;&gt;) и закрепите нужные планы при помощи &lt;IMG&gt;PIN_BUILD&lt;&gt;.
                                { "Russian", "Улучшите базу, создав &lt;TECHNOLOGY&gt;настенный светильник&lt;&gt;.&#xA;Откройте меню строительства с помощью &lt;IMG&gt;BUILD_MENU&lt;&gt; и закрепите инструкцию при помощи &lt;IMG&gt;PIN_BUILD&lt;&gt;." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BASEFLAG_OBJ_TIP_8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Улучшите свою базу, создав &lt;TECHNOLOGY&gt;модификатор внешности&lt;&gt;.&#xA;Откройте меню созидания (&lt;IMG&gt;BUILD_MENU&lt;&gt;) и закрепите нужные планы при помощи &lt;IMG&gt;PIN_BUILD&lt;&gt;.&#xA;Крупногабаритные технологии нужно размещать на устойчивом основании или внутри помещений.
                                { "Russian", "Улучшите свою базу, создав &lt;TECHNOLOGY&gt;модификатор внешности&lt;&gt;.&#xA;Откройте меню строительства с помощью &lt;IMG&gt;BUILD_MENU&lt;&gt; и закрепите инструкцию при помощи &lt;IMG&gt;PIN_BUILD&lt;&gt;.&#xA;Крупногабаритные технологии нужно размещать на устойчивом основании или внутри помещений." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BASEFLAG_OBJ_TIP_9" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Улучшите свою базу, создав &lt;TECHNOLOGY&gt;геостанцию «Скитальца»&lt;&gt;.&#xA;Откройте меню созидания (&lt;IMG&gt;BUILD_MENU&lt;&gt;) и закрепите нужные планы при помощи &lt;IMG&gt;PIN_BUILD&lt;&gt;.&#xA;В комплекте с геостанцией вы получите быстрый &lt;TECHNOLOGY&gt;вездеход&lt;&gt;.
                                { "Russian", "Улучшите свою базу, создав &lt;TECHNOLOGY&gt;геостанцию «Скитальца»&lt;&gt;.&#xA;Откройте меню строительства с помощью &lt;IMG&gt;BUILD_MENU&lt;&gt; и закрепите инструкцию при помощи &lt;IMG&gt;PIN_BUILD&lt;&gt;.&#xA;В комплекте с геостанцией вы получите быстрый &lt;TECHNOLOGY&gt;вездеход&lt;&gt;." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BASEFLAG_OBJ_TIP_10" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Улучшите свою базу, построив &lt;TECHNOLOGY&gt;посадочную панель&lt;&gt;.&#xA;Откройте меню созидания (&lt;IMG&gt;BUILD_MENU&lt;&gt;) и закрепите нужные планы при помощи &lt;IMG&gt;PIN_BUILD&lt;&gt;.
                                { "Russian", "Улучшите свою базу, построив &lt;TECHNOLOGY&gt;посадочную панель&lt;&gt;.&#xA;Откройте меню строительства с помощью &lt;IMG&gt;BUILD_MENU&lt;&gt; и закрепите инструкцию при помощи &lt;IMG&gt;PIN_BUILD&lt;&gt;." },
                            }
                        },
                        --#endregion

                        --#region UI_NADAPOLO_SUMMON_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NADAPOLO_SUMMON_MSG1A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружен след: &lt;STELLAR&gt;АНОМАЛИЯ&lt;&gt;.&#xA;В этой системе сигнал слишком слаб.&#xA;Выберите новую систему на галактической карте (&lt;IMG&gt;QUICK_MENU&lt;&gt;), находясь в космосе.
                                -- Signal Trace Detected: &lt;STELLAR&gt;ANOMALY&lt;&gt;&#xA;Signal too weak in current system.&#xA;Select a new system by opening the Galaxy Map (&lt;IMG&gt;QUICK_MENU&lt;&gt;) while in space
                                { "Russian", "Определен источник сигнала: &lt;STELLAR&gt;АНОМАЛИЯ&lt;&gt;&#xA;В этой системе сигнал слишком слаб&#xA;Находясь в космосе, выберите иную систему&#xA;на галактической карте (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NADAPOLO_SUMMON_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Пойман сигнал: &lt;STELLAR&gt;АНОМАЛИЯ&lt;&gt;.&#xA;Выйдите в космос и найдите сигнал.
                                -- Signal Detected: &lt;STELLAR&gt;ANOMALY&lt;&gt;&#xA;Return to space and search for signals
                                { "Russian", "Источник сигнала: &lt;STELLAR&gt;АНОМАЛИЯ&lt;&gt;&#xA;Выйдите в космос и найдите сигнал" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NADAPOLO_SUMMON_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Пойман сигнал: &lt;STELLAR&gt;АНОМАЛИЯ&lt;&gt;.&#xA;Просканируйте частоты с помощью &lt;TECHNOLOGY&gt;сканера звездолета&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;).
                                -- Signal Detected: &lt;STELLAR&gt;ANOMALY&lt;&gt;&#xA;Scan frequencies with &lt;TECHNOLOGY&gt;Starship Scanner&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;)
                                { "Russian", "Источник сигнала: &lt;STELLAR&gt;АНОМАЛИЯ&lt;&gt;&#xA;Просканируйте частоты с помощью &lt;TECHNOLOGY&gt;сканера звездолёта&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NADAPOLO_SUMMON_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Пойман сигнал: &lt;STELLAR&gt;АНОМАЛИЯ&lt;&gt;.&#xA;Доложите о результате Поло.
                                { "Russian", "Источник сигнала: &lt;STELLAR&gt;АНОМАЛИЯ&lt;&gt;&#xA;Доложите о результате Поло" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NADAPOLO_SUMMON_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Пойман сигнал: &lt;STELLAR&gt;АНОМАЛИЯ&lt;&gt;.&#xA;Посетите аномальную космическую станцию.
                                { "Russian", "Источник сигнала: &lt;STELLAR&gt;АНОМАЛИЯ&lt;&gt;&#xA;Посетите аномальную космическую станцию" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NADAPOLO_SUMMON_MSG4A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Пойман сигнал: &lt;STELLAR&gt;АНОМАЛИЯ&lt;&gt;.&#xA;Поговорите с обитателями станции.
                                { "Russian", "Источник сигнала: &lt;STELLAR&gt;АНОМАЛИЯ&lt;&gt;&#xA;Поговорите с обитателями станции" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NADAPOLO_SUMMON_MSG4D" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найден сигнал: &lt;STELLAR&gt;АНОМАЛИЯ&lt;&gt;.&#xA;Высадитесь на аномалии, чтобы поговорить с Нада и Поло.
                                -- Signal Detected: &lt;STELLAR&gt;ANOMALY&lt;&gt;&#xA;Board the Anomaly to speak to Nada or Polo
                                { "Russian", "Источник сигнала: &lt;STELLAR&gt;АНОМАЛИЯ&lt;&gt;&#xA;Посетите Аномалию и поговорите с Нада и Поло" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NADAPOLO_SUMMON_MSG4B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Пойман сигнал: &lt;STELLAR&gt;АНОМАЛИЯ&lt;&gt;.&#xA;Поговорите со специалистом Поло.
                                { "Russian", "Источник сигнала: &lt;STELLAR&gt;АНОМАЛИЯ&lt;&gt;&#xA;Поговорите со специалистом Поло" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NADAPOLO_SUMMON_MSG4C" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Пойман сигнал: &lt;STELLAR&gt;АНОМАЛИЯ&lt;&gt;.&#xA;Поговорите с сущностью-священником Нада.
                                { "Russian", "Источник сигнала: &lt;STELLAR&gt;АНОМАЛИЯ&lt;&gt;&#xA;Поговорите с сущностью-священником Нада" },
                            }
                        },
                        --#endregion

                        --#region UI_BASEFLAG_LORE_SURVEY
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BASEFLAG_LORE_SURVEY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Проверьте &lt;TECHNOLOGY&gt;координаты компьютера базы&lt;&gt;.&#xA;Используйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt;, чтобы обнаружить скрытый архив.
                                -- Investigate &lt;TECHNOLOGY&gt;Base Computer Coordinates&lt;&gt;&#xA;Use the &lt;TECHNOLOGY&gt;Target Sweep&lt;&gt; to locate the hidden archive
                                { "Russian", "Проверьте &lt;TECHNOLOGY&gt;координаты компьютера базы&lt;&gt;&#xA;Используйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt;, чтобы найти архив" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BASEFLAG_LORE_SURVEY_SWAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Проверьте &lt;TECHNOLOGY&gt;координаты компьютера базы&lt;&gt;.&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;
                                { "Russian", "Проверьте &lt;TECHNOLOGY&gt;координаты компьютера базы&lt;&gt;&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BASEFLAG_LORE_SURVEY_OFF" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Проверьте &lt;TECHNOLOGY&gt;координаты компьютера базы&lt;&gt;.&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы обнаружить скрытый архив.
                                { "Russian", "Проверьте &lt;TECHNOLOGY&gt;координаты компьютера базы&lt;&gt;&#xA;Найдите архив с помощью &lt;STELLAR&gt;разведки цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)" },
                            }
                        },
                        --#endregion

                        --#region UI_FINDBASE_.*_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FINDBASE_NEW_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- У вас есть &lt;TECHNOLOGY&gt;компьютер базы&lt;&gt;&#xA;Найдите планету, подходящую для строительства
                                -- &lt;TECHNOLOGY&gt;Base Computer&lt;&gt; acquired&#xA;Locate a suitable planet for construction
                                { "Russian", "У вас есть &lt;TECHNOLOGY&gt;компьютер базы&lt;&gt;&#xA;Найдите подходящую планету для строительства" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FINDBASE_NEW_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вернитесь на &lt;STELLAR&gt;свою базу&lt;&gt;.&#xA;Используйте &lt;TECHNOLOGY&gt;телепорт космической станции&lt;&gt; для мгновенного перемещения.
                                -- Return to &lt;STELLAR&gt;Your Base&lt;&gt;&#xA;Use the &lt;TECHNOLOGY&gt;Space Station Teleporter&lt;&gt; to travel instantly
                                { "Russian", "Вернитесь на &lt;STELLAR&gt;свою базу&lt;&gt;&#xA;Используйте &lt;TECHNOLOGY&gt;телепорт&lt;&gt; на &lt;COMMODITY&gt;космической станции&lt;&gt;&#xA;для мгновенного перемещения" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FINDBASE_NEW_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Постройте на базе &lt;COMMODITY&gt;цилиндрическую комнату&lt;&gt;.&#xA;Чтобы открыть меню созидания, нажмите &lt;IMG&gt;BUILD_MENU&lt;&gt;.&#xA;На любую базу можно вернуться, воспользовавшись &lt;TECHNOLOGY&gt;телепортом космической станции&lt;&gt;.
                                -- Construct a &lt;COMMODITY&gt;Cylindrical Room&lt;&gt; for your base&#xA;Access the Build Menu with &lt;IMG&gt;BUILD_MENU&lt;&gt;&#xA;You can return to any base from the &lt;TECHNOLOGY&gt;Space Station Teleporter&lt;&gt;
                                { "Russian", "Постройте на базе &lt;COMMODITY&gt;цилиндрическую комнату&lt;&gt;&#xA;Чтобы открыть меню строительства, нажмите &lt;IMG&gt;BUILD_MENU&lt;&gt;&#xA;&lt;TECHNOLOGY&gt;Телепорт&lt;&gt; &lt;COMMODITY&gt;космической станции&lt;&gt; переместит вас&#xA;на любую базу" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FINDBASE_NEW_MSG3A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поставьте &lt;COMMODITY&gt;дверь&lt;&gt; для входа на базу.&#xA;Чтобы открыть меню созидания, нажмите &lt;IMG&gt;BUILD_MENU&lt;&gt;.&#xA;На любую базу можно вернуться, воспользовавшись &lt;TECHNOLOGY&gt;телепортом космической станции&lt;&gt;.
                                -- Construct a &lt;COMMODITY&gt;Door&lt;&gt; for access to your base&#xA;Access the Build Menu with &lt;IMG&gt;BUILD_MENU&lt;&gt;&#xA;You can return to any base from the &lt;TECHNOLOGY&gt;Space Station Teleporter&lt;&gt;
                                { "Russian", "Поставьте &lt;COMMODITY&gt;дверь&lt;&gt; для входа на базу&#xA;Чтобы открыть меню строительства, нажмите &lt;IMG&gt;BUILD_MENU&lt;&gt;&#xA;&lt;TECHNOLOGY&gt;Телепорт&lt;&gt; &lt;COMMODITY&gt;космической станции&lt;&gt; переместит вас&#xA;на любую базу" },
                            }
                        },
                        --#endregion

                        --#region UI_COMM_WEEK_.*_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COMM_WEEK_01_OBJ_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt;%MISSIONTIME%&lt;&gt;&#xA;Специалист Поло транслирует запрос для всех исследователей.&#xA;Отправляйтесь в космос и установите связь с &lt;SPECIAL&gt;Космической Аномалией&lt;&gt;.
                                -- Research time remaining: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Specialist Polo is broadcasting a request for explorers&#xA;Launch into space to make contact with the &lt;SPECIAL&gt;Space Anomaly&lt;&gt;
                                { "Russian", "Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Специалист Поло транслирует запрос для всех исследователей&#xA;Отправляйтесь в космос и свяжитесь с &lt;SPECIAL&gt;Космической Аномалией&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COMM_WEEK_01_OBJ2_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt;%MISSIONTIME%&lt;&gt;&#xA;Посетите отмеченную планету.&#xA;Используйте координаты портала Поло для помощи с межзвездным путешествием.
                                -- Research time remaining: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Visit the marked planet&#xA;Use Polo's portal coordinates to aid interstellar travel
                                { "Russian", "Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Посетите отмеченную планету&#xA;Используйте координаты портала Поло в межзвёздном путешествии" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COMM_WEEK_01_OBJ3_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt;%MISSIONTIME%&lt;&gt;&#xA;Ведите раскопки: %ITEM%&#xA;Текущая коллекция: %CURRENT%/%AMOUNT%
                                -- Research time remaining: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Dig for %ITEM%&#xA;Current collection: %CURRENT%/%AMOUNT%
                                { "Russian", "Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Откопайте: %ITEM% (%CURRENT%/%AMOUNT%)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COMM_WEEK_01_OBJ3_MSG_ALT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt;%MISSIONTIME%&lt;&gt;&#xA;Копайте в поисках странных объектов.&#xA;Собрано: %CURRENT%
                                { "Russian", "Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Ведите раскопки в поисках странных объектов&#xA;Собрано: %CURRENT%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COMM_WEEK_01_OBJ4_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt;%MISSIONTIME%&lt;&gt;&#xA;Отправляйтесь в космос и встретьтесь с Поло.
                                { "Russian", "Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Отправляйтесь в космос и встретьтесь с Поло" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COMM_WEEK_01_OBJ5_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt;%MISSIONTIME%&lt;&gt;&#xA;Поищите новые образцы (%ITEM%) в любом месте галактики.&#xA;Собрано: %CURRENT%&#xA;Отправляйтесь в космос и встретьтесь с Поло.
                                -- Research time remaining: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Dig anywhere in the galaxy for more %ITEM%&#xA;Current collection: %CURRENT%&#xA;Launch into space to make contact with Polo
                                { "Russian", "Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Копайте в любом месте галактики, чтобы найти %ITEM%&#xA;Собрано: %CURRENT%&#xA;Отправляйтесь в космос и встретьтесь с Поло" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COMM_WEEK_01_OBJ5_MSG_ALT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt;%MISSIONTIME%&lt;&gt;&#xA;Поищите новые странные объекты в любом месте галактики.&#xA;Войдите в контакт с Аномалией и обменяйтесь данными с помощью &lt;IMG&gt;SCAN&lt;&gt;.
                                -- Research time remaining: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Dig anywhere in the galaxy for more strange objects&#xA;Make contact with the Anomaly and exchange data by using &lt;IMG&gt;SCAN&lt;&gt;
                                { "Russian", "Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Откапывайте странные объекты в любом месте галактики&#xA;Свяжитесь с Аномалией и обменяйтесь данными с помощью &lt;IMG&gt;SCAN&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COMM_WEEK_01_OBJ5_MSG_ALT2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt;%MISSIONTIME%&lt;&gt;&#xA;Поищите новые странные объекты в любом месте галактики.&#xA;Или используйте &lt;TECHNOLOGY&gt;сканер звездолета&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;), чтобы связаться с Поло.
                                -- Research time remaining: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Dig anywhere in the galaxy for more strange objects&#xA;Or use the &lt;TECHNOLOGY&gt;Starship Scanner&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;) in space to make contact with Polo
                                { "Russian", "Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Откапывайте странные объекты в любом месте галактики&#xA;Или используйте &lt;TECHNOLOGY&gt;сканер звездолёта&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;), чтобы связаться с Поло" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COMM_WEEK_01_OBJ6_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt;%MISSIONTIME%&lt;&gt;&#xA;Отправляйтесь в космос и встретьтесь с Поло.
                                { "Russian", "Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Отправляйтесь в космос и встретьтесь с Поло" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COMM_WEEK_02_OBJ_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt;%MISSIONTIME%&lt;&gt;&#xA;Специалист Поло транслирует запрос для всех исследователей.&#xA;Отправляйтесь в космос и установите связь с &lt;SPECIAL&gt;Космической Аномалией&lt;&gt;.
                                { "Russian", "Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Специалист Поло транслирует запрос для всех исследователей&#xA;Отправляйтесь в космос и свяжитесь с &lt;SPECIAL&gt;Космической Аномалией&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COMM_WEEK_02_OBJ2_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt;%MISSIONTIME%&lt;&gt;&#xA;Посетите отмеченную планету.&#xA;Используйте координаты портала Поло для помощи с межзвездным путешествием.
                                { "Russian", "Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Посетите отмеченную планету&#xA;Используйте координаты портала Поло в межзвёздном путешествии" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COMM_WEEK_02_OBJ3_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt;%MISSIONTIME%&lt;&gt;&#xA;Накормите животных: %CURRENT%/%AMOUNT%
                                { "Russian", "Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Накормите животных: %CURRENT%/%AMOUNT%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COMM_WEEK_02_OBJ4_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt;%MISSIONTIME%&lt;&gt;&#xA;Отправляйтесь в космос и встретьтесь с Поло.
                                { "Russian", "Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Отправляйтесь в космос и встретьтесь с Поло" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COMM_WEEK_02_OBJ5_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt;%MISSIONTIME%&lt;&gt;&#xA;Накормите еще больше существ в любом месте галактики.&#xA;Всего: %CURRENT%&#xA;Отправляйтесь в космос и встретьтесь с Поло.
                                { "Russian", "Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Накормите еще больше существ в любом месте галактики&#xA;Всего накормлено: %CURRENT%&#xA;Отправляйтесь в космос и встретьтесь с Поло" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COMM_WEEK_02_OBJ5_MSG_ALT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt;%MISSIONTIME%&lt;&gt;&#xA;Накормите еще больше существ в любом месте галактики.&#xA;Войдите в контакт с Аномалией и обменяйтесь данными с помощью &lt;IMG&gt;SCAN&lt;&gt;.
                                { "Russian", "Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Накормите еще больше существ в любом месте галактики&#xA;Свяжитесь с Аномалией и обменяйтесь данными с помощью &lt;IMG&gt;SCAN&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COMM_WEEK_02_OBJ5_MSG_ALT2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt;%MISSIONTIME%&lt;&gt;&#xA;Накормите еще больше существ в любом месте галактики.&#xA;Или используйте &lt;TECHNOLOGY&gt;сканер звездолета&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;), чтобы связаться с Поло.
                                { "Russian", "Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Накормите еще больше существ в любом месте галактики&#xA;Или используйте &lt;TECHNOLOGY&gt;сканер звездолёта&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;), чтобы связаться с Поло" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COMM_WEEK_02_OBJ6_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt;%MISSIONTIME%&lt;&gt;&#xA;Отправляйтесь в космос и встретьтесь с Поло.
                                { "Russian", "Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Отправляйтесь в космос и встретьтесь с Поло" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COMM_WEEK_03_OBJ_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt;%MISSIONTIME%&lt;&gt;&#xA;Специалист Поло транслирует запрос для всех исследователей.&#xA;Отправляйтесь в космос и установите связь с &lt;SPECIAL&gt;Космической Аномалией&lt;&gt;.
                                { "Russian", "Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Специалист Поло транслирует запрос для всех исследователей&#xA;Отправляйтесь в космос и свяжитесь с &lt;SPECIAL&gt;Космической Аномалией&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COMM_WEEK_03_OBJ2_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt;%MISSIONTIME%&lt;&gt;&#xA;Посетите отмеченную планету.&#xA;Используйте координаты портала Поло для помощи с межзвездным путешествием.
                                { "Russian", "Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Посетите отмеченную планету&#xA;Используйте координаты портала Поло в межзвёздном путешествии" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COMM_WEEK_03_OBJ3_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добраться до отмеченного комплекса
                                { "Russian", "Доберитесь до отмеченного комплекса" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COMM_WEEK_03_OBJ4_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt;%MISSIONTIME%&lt;&gt;&#xA;Уничтожьте четвероногих стражей: %CURRENT%/%AMOUNT%
                                { "Russian", "Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Уничтожьте четвероногих стражей: %CURRENT%/%AMOUNT%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COMM_WEEK_03_OBJ5_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt;%MISSIONTIME%&lt;&gt;&#xA;Отправляйтесь в космос и встретьтесь с Поло.
                                { "Russian", "Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Отправляйтесь в космос и встретьтесь с Поло" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COMM_WEEK_03_OBJ6_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt;%MISSIONTIME%&lt;&gt;&#xA;Уничтожьте еще больше стражей в любом месте галактики.&#xA;Всего: %CURRENT%&#xA;Отправляйтесь в космос и встретьтесь с Поло.
                                { "Russian", "Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Уничтожьте еще больше стражей в любом месте галактики&#xA;Всего уничтожено: %CURRENT%&#xA;Отправляйтесь в космос и встретьтесь с Поло" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COMM_WEEK_03_OBJ6_MSG_ALT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt;%MISSIONTIME%&lt;&gt;&#xA;Уничтожьте еще больше стражей в любом месте галактики.&#xA;Войдите в контакт с Аномалией и обменяйтесь данными с помощью &lt;IMG&gt;SCAN&lt;&gt;.
                                { "Russian", "Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Уничтожьте еще больше стражей в любом месте галактики&#xA;Свяжитесь с Аномалией и обменяйтесь данными с помощью &lt;IMG&gt;SCAN&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COMM_WEEK_03_OBJ6_MSG_ALT2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt;%MISSIONTIME%&lt;&gt;&#xA;Уничтожьте еще больше стражей в любом месте галактики.&#xA;Или используйте &lt;TECHNOLOGY&gt;сканер звездолета&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;), чтобы связаться с Поло.
                                { "Russian", "Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Уничтожьте еще больше стражей в любом месте галактики&#xA;Или используйте &lt;TECHNOLOGY&gt;сканер звездолёта&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;), чтобы связаться с Поло" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COMM_WEEK_03_OBJ7_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt;%MISSIONTIME%&lt;&gt;&#xA;Отправляйтесь в космос и встретьтесь с Поло.
                                { "Russian", "Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Отправляйтесь в космос и встретьтесь с Поло" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COMM_WEEK_04_OBJ3_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Обнаружьте &lt;STELLAR&gt;аномальную трансляцию&lt;&gt;.&#xA;Настройте станции трансляции, чтобы проследить сигнал.
                                -- Research time remaining: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Locate the &lt;STELLAR&gt;Anomalous Transmission&lt;&gt;&#xA;Align the transmitter stations to follow the signal
                                { "Russian", "Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Обнаружьте &lt;STELLAR&gt;аномальную трансляцию&lt;&gt;&#xA;Настройте станции трансляции, чтобы проследить сигнал" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COMM_WEEK_04_OBJ4_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Соберите сохраненные данные.
                                -- Research time remaining: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Collect the cached data
                                { "Russian", "Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Соберите сохраненные данные" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COMM_WEEK_04_OBJ6_MSG_ALT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Найдите пограничные сбои.&#xA;Войдите в контакт с аномалией и обменяйтесь данными с помощью &lt;IMG&gt;SCAN&lt;&gt;.
                                { "Russian", "Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Найдите пограничные сбои&#xA;Свяжитесь с Аномалией и обменяйтесь данными с помощью &lt;IMG&gt;SCAN&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COMM_WEEK_05_OBJ_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Оставшееся время поиска: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Специалист Поло транслирует запрос для всех исследователей.&#xA;Отправляйтесь в космос и установите связь с &lt;SPECIAL&gt;космической аномалией&lt;&gt;.
                                -- Search time remaining: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Specialist Polo is broadcasting a request for explorers&#xA;Launch into space to make contact with the &lt;SPECIAL&gt;Space Anomaly&lt;&gt;
                                { "Russian", "Оставшееся время поиска: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Специалист Поло транслирует запрос для всех исследователей&#xA;Отправляйтесь в космос и свяжитесь с &lt;SPECIAL&gt;Космической Аномалией&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COMM_WEEK_05_OBJ2_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Оставшееся время поиска: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Посетите отмеченную планету.&#xA;Используйте координаты портала Поло для помощи с межзвездным путешествием.
                                { "Russian", "Оставшееся время поиска: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Посетите отмеченную планету&#xA;Используйте координаты портала Поло в межзвёздном путешествии" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COMM_WEEK_05_OBJ3_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Оставшееся время поиска: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Используйте любой &lt;TECHNOLOGY&gt;вездеход&lt;&gt;, чтобы найти сигнал контакта Поло.&#xA;Определите и осмотрите источник сигнала.
                                -- Search time remaining: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Use any &lt;TECHNOLOGY&gt;Exocraft&lt;&gt; to track the signal from Polo's contact&#xA;Identify and investigate the source of the signal
                                { "Russian", "Оставшееся время поиска: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Используйте любой &lt;TECHNOLOGY&gt;вездеход&lt;&gt;, чтобы найти сигнал контакта Поло&#xA;Определите и осмотрите источник сигнала" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COMM_WEEK_05_OBJ4_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Отправляйтесь в космос и встретьтесь с Поло.
                                { "Russian", "&lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Отправляйтесь в космос и встретьтесь с Поло" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COMM_WEEK_05_OBJ5_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Оставшееся время поиска: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Ищите сигналы бедствия с помощью &lt;TECHNOLOGY&gt;усилителя сигнала&lt;&gt; и &lt;VAL_ON&gt;навигационных данных&lt;&gt;.&#xA;Всего: %CURRENT%&#xA;Отправляйтесь в космос и встретьтесь с Поло.
                                { "Russian", "Оставшееся время поиска: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Ищите сигналы бедствия с помощью &lt;TECHNOLOGY&gt;усилителя сигнала&lt;&gt; и &lt;VAL_ON&gt;навигационных данных&lt;&gt;&#xA;Всего: %CURRENT%&#xA;Отправляйтесь в космос и встретьтесь с Поло" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COMM_WEEK_05_OBJ5_MSG_ALT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Оставшееся время поиска: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt;%MISSIONTIME%&lt;&gt;&#xA;Ищите сигналы бедствия с помощью &lt;TECHNOLOGY&gt;усилителя сигнала&lt;&gt; и &lt;VAL_ON&gt;навигационных данных&lt;&gt;.&#xA;Отправляйтесь в космос и встретьтесь с Поло.
                                -- Search time remaining: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Locate Distress Signals using a &lt;TECHNOLOGY&gt;Signal Booster&lt;&gt; and &lt;VAL_ON&gt;Navigation Data&lt;&gt;&#xA;Launch into space to make contact with Polo
                                { "Russian", "Оставшееся время поиска: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Ищите сигналы бедствия с помощью &lt;TECHNOLOGY&gt;усилителя сигнала&lt;&gt; и &lt;VAL_ON&gt;навигационных данных&lt;&gt;&#xA;Отправляйтесь в космос и встретьтесь с Поло" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COMM_WEEK_05_OBJ5_MSG_ALT2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Оставшееся время поиска: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Ищите сигналы бедствия с помощью &lt;TECHNOLOGY&gt;усилителя сигнала&lt;&gt; и &lt;VAL_ON&gt;навигационных данных&lt;&gt;.&#xA;Войдите в контакт с аномалией и обменяйтесь данными с помощью &lt;IMG&gt;SCAN&lt;&gt;.
                                { "Russian", "Оставшееся время поиска: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Ищите сигналы бедствия с помощью &lt;TECHNOLOGY&gt;усилителя сигнала&lt;&gt; и &lt;VAL_ON&gt;навигационных данных&lt;&gt;&#xA;Свяжитесь с Аномалией и обменяйтесь данными с помощью &lt;IMG&gt;SCAN&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COMM_WEEK_05_OBJ6_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Оставшееся время поиска: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Отправляйтесь в космос и встретьтесь с Поло.
                                { "Russian", "Оставшееся время поиска: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Отправляйтесь в космос и встретьтесь с Поло" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COMM_WEEK_05_WAIT_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Остались тайны, требующие вашего внимания.&#xA;Откройте журнал (&lt;IMG&gt;OPTIONS&lt;&gt;) и выберите .
                                { "Russian", "Остались тайны, требующие вашего внимания&#xA;Выберите задание &lt;STELLAR&gt;Пробуждения&lt;&gt; в журнале (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COMM_WEEK_05_OBJ7_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Оставшееся время поиска: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Высадитесь на &lt;SPECIAL&gt;космическую аномалию&lt;&gt;, чтобы встретиться с роботом Поло для синтеза ртути.&#xA;Обменивайте &lt;TRADE_SPECIALS&gt;ртуть&lt;&gt; на уникальные, единственные в своем роде предметы.
                                -- Search time remaining: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Board the &lt;SPECIAL&gt;Space Anomaly&lt;&gt; to visit Polo's Quicksilver synthesis robot&#xA;&lt;TRADE_SPECIALS&gt;Quicksilver&lt;&gt; can be exchanged for unique, one-off items
                                { "Russian", "Оставшееся время поиска: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Посетите &lt;SPECIAL&gt;Космическую Аномалию&lt;&gt;, чтобы встретиться с роботом Поло для синтеза ртути&#xA;Обменивайте &lt;TRADE_SPECIALS&gt;ртуть&lt;&gt; на уникальные, единственные в своем роде предметы" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COMM_WEEK_06_OBJ3_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt;%MISSIONTIME%&lt;&gt;&#xA;Используйте устройство Поло для отслеживания сигнала.
                                -- Research time remaining: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Use Polo's device to trace the signal"
                                { "Russian", "Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Используйте устройство Поло для отслеживания сигнала" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COMM_WEEK_06_OBJ3_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt;%MISSIONTIME%&lt;&gt;&#xA;Используйте устройство Поло, чтобы проследить источник сигнала бедствия.
                                -- Research time remaining: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Use Polo's device to follow the distress signal
                                { "Russian", "Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Используйте устройство Поло, чтобы проследить источник сигнала бедствия" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COMM_WEEK_06_OBJ3_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt;%MISSIONTIME%&lt;&gt;&#xA;Используйте устройство Поло, чтобы найти выживших в крушении.
                                { "Russian", "Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Используйте устройство Поло, чтобы найти выживших в крушении" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COMM_WEEK_06_OBJ3_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt;%MISSIONTIME%&lt;&gt;&#xA;Используйте устройство Поло, чтобы проследить путь выжившего.
                                { "Russian", "Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Используйте устройство Поло, чтобы проследить путь выжившего" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COMM_WEEK_06_OBJ3_MSG5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt;%MISSIONTIME%&lt;&gt;&#xA;Используйте устройство Поло, чтобы найти последние следы выживших.
                                { "Russian", "Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Используйте устройство Поло, чтобы найти последние следы выживших" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COMM_WEEK_06_OBJ3_MSG1A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Используйте устройство Поло (&lt;IMG&gt;SCAN&lt;&gt;) для отслеживания сигнала.
                                { "Russian", "Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Используйте устройство Поло (&lt;IMG&gt;SCAN&lt;&gt;) для отслеживания сигнала" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COMM_WEEK_06_OBJ3_MSG2A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Используйте устройство Поло (&lt;IMG&gt;SCAN&lt;&gt;) для обнаружения сигнала бедствия.
                                { "Russian", "Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Используйте устройство Поло (&lt;IMG&gt;SCAN&lt;&gt;) для обнаружения сигнала бедствия" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COMM_WEEK_06_OBJ3_MSG3A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Используйте устройство Поло (&lt;IMG&gt;SCAN&lt;&gt;) для поиска переживших крушение.
                                { "Russian", "Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Используйте устройство Поло (&lt;IMG&gt;SCAN&lt;&gt;), чтобы найти выживших в крушении" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COMM_WEEK_06_OBJ3_MSG4A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Используйте устройство Поло (&lt;IMG&gt;SCAN&lt;&gt;) для отслеживания маршрута выжившего.
                                { "Russian", "Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Используйте устройство Поло (&lt;IMG&gt;SCAN&lt;&gt;) для отслеживания маршрута выжившего" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COMM_WEEK_06_OBJ3_MSG5A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Используйте устройство Поло (&lt;IMG&gt;SCAN&lt;&gt;), чтобы найти последние следы выживших.
                                { "Russian", "Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Используйте устройство Поло (&lt;IMG&gt;SCAN&lt;&gt;), чтобы найти последние следы выживших" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COMM_WEEK_06_OBJ6_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt;%MISSIONTIME%&lt;&gt;&#xA;Сделайте снимок: %BUILDING%&#xA;Активируйте фоторежим с помощью &lt;IMG&gt;QUICK_MENU&lt;&gt;.
                                { "Russian", "Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Сделайте снимок: %BUILDING%&#xA;Активируйте фоторежим с помощью &lt;IMG&gt;QUICK_MENU&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COMM_WEEK_06_OBJ6_MSG_ALT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt;%MISSIONTIME%&lt;&gt;&#xA;Сделайте фотографии зданий для Поло.&#xA;Войдите в контакт с аномалией и обменяйтесь данными с помощью &lt;IMG&gt;SCAN&lt;&gt;.
                                { "Russian", "Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Сделайте фотографии зданий для Поло&#xA;Свяжитесь с Аномалией и обменяйтесь данными с помощью &lt;IMG&gt;SCAN&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COMM_WEEK_06_OBJ6_MSG_FINAL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt;%MISSIONTIME%&lt;&gt;&#xA;Войдите в контакт с аномалией и обменяйтесь данными с помощью &lt;IMG&gt;SCAN&lt;&gt;.
                                { "Russian", "Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Свяжитесь с Аномалией и обменяйтесь данными с помощью &lt;IMG&gt;SCAN&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COMM_WEEK_07_OBJ_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt;%MISSIONTIME%&lt;&gt;&#xA;Сущность-священник Нада транслирует запрос для всех исследователей.&#xA;Отправляйтесь в космос и установите связь с &lt;SPECIAL&gt;космической аномалией&lt;&gt;.
                                { "Russian", "Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Сущность-священник Нада транслирует запрос для всех исследователей&#xA;Отправляйтесь в космос и свяжитесь с &lt;SPECIAL&gt;Космической Аномалией&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COMM_WEEK_07_OBJ2_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt;%MISSIONTIME%&lt;&gt;&#xA;Посетите отмеченную планету.&#xA;Используйте координаты портала Нада для помощи с межзвездным путешествием.
                                { "Russian", "Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Посетите отмеченную планету&#xA;Используйте координаты портала Нада в межзвёздном путешествии" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COMM_WEEK_07_OBJ3_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt;%MISSIONTIME%&lt;&gt;&#xA;Сфотографируйте скопление из 10 морских обитателей.&#xA;Чтобы обнаружить их, используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;) рядом с координатами &lt;STELLAR&gt;-10,53, -28,39&lt;&gt;.&#xA;Активируйте фоторежим с помощью &lt;IMG&gt;QUICK_MENU&lt;&gt;.
                                -- Research time remaining: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Photograph a swarm of 10 underwater creatures.&#xA;Use the &lt;TECHNOLOGY&gt;Analysis Visor&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;) near &lt;STELLAR&gt;-10.53, -28.39&lt;&gt; to locate creatures.&#xA;Activate photo mode with &lt;IMG&gt;QUICK_MENU&lt;&gt;.
                                { "Russian", "Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Сфотографируйте скопление из 10 морских обитателей&#xA;Обнаружьте их, используя &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;) рядом с координатами &lt;STELLAR&gt;-10,53, -28,39&lt;&gt;&#xA;Активируйте фоторежим с помощью &lt;IMG&gt;QUICK_MENU&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COMM_WEEK_07_OBJ4_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;HIGHLIGHT&gt;&lt;IMG&gt;ЧАСЫ&lt;&gt;%MISSIONTIME%&lt;&gt;&#xA;Отправляйтесь в космос и встретьтесь с Нада.
                                -- &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Launch into space to make contact with Nada
                                { "Russian", "&lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Отправляйтесь в космос и свяжитесь с Нада" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COMM_WEEK_07_OBJ5_MSG_PROMPT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt;%MISSIONTIME%&lt;&gt;&#xA;Нада просит другие фотографии морских обитателей.&#xA;Чтобы начать съемку, отправляйтесь в другую звездную систему.
                                -- Research time remaining: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Nada has requested further photography of underwater creatures.&#xA;Travel to a different star system to begin your photography.
                                { "Russian", "Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Нада просит другие фотографии морских обитателей&#xA;Чтобы начать съемку, отправляйтесь в другую звездную систему" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COMM_WEEK_07_OBJ5_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Нада просит сделать новые фотографии &lt;TECHNOLOGY&gt;морских обитателей&lt;&gt; в биоме «&lt;STELLAR&gt;%BIOME%&lt;&gt;».&#xA;Активируйте фоторежим с помощью &lt;IMG&gt;QUICK_MENU&lt;&gt;.&#xA;Всего: 0/10&#xA;Отправляйтесь в космос и встретьтесь с Нада.
                                -- Research time remaining: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Nada has requested further photography of &lt;TECHNOLOGY&gt;underwater creatures&lt;&gt; on &lt;STELLAR&gt;%BIOME%&lt;&gt;.&#xA;Activate photo mode with &lt;IMG&gt;QUICK_MENU&lt;&gt;.&#xA;Current total: 0/10&#xA;Launch into space to make contact with Nada
                                { "Russian", "Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Нада просит сделать новые фотографии &lt;TECHNOLOGY&gt;морских обитателей&lt;&gt; в биоме &lt;STELLAR&gt;%BIOME%&lt;&gt;&#xA;Активируйте фоторежим с помощью &lt;IMG&gt;QUICK_MENU&lt;&gt;&#xA;Всего: 0/10&#xA;Отправляйтесь в космос и свяжитесь с Нада" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COMM_WEEK_07_OBJ5_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Нада просит сделать новые фотографии &lt;TECHNOLOGY&gt;морских обитателей&lt;&gt; в биоме «&lt;STELLAR&gt;%BIOME%&lt;&gt;».&#xA;Активируйте фоторежим с помощью &lt;IMG&gt;QUICK_MENU&lt;&gt;.&#xA;Всего: 1/10&#xA;Отправляйтесь в космос и встретьтесь с Нада.
                                { "Russian", "Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Нада просит сделать новые фотографии &lt;TECHNOLOGY&gt;морских обитателей&lt;&gt; в биоме &lt;STELLAR&gt;%BIOME%&lt;&gt;&#xA;Активируйте фоторежим с помощью &lt;IMG&gt;QUICK_MENU&lt;&gt;&#xA;Всего: 1/10&#xA;Отправляйтесь в космос и свяжитесь с Нада" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COMM_WEEK_07_OBJ5_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Нада просит сделать новые фотографии &lt;TECHNOLOGY&gt;морских обитателей&lt;&gt; в биоме «&lt;STELLAR&gt;%BIOME%&lt;&gt;».&#xA;Активируйте фоторежим с помощью &lt;IMG&gt;QUICK_MENU&lt;&gt;.&#xA;Всего: 2/10&#xA;Отправляйтесь в космос и встретьтесь с Нада.
                                { "Russian", "Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Нада просит сделать новые фотографии &lt;TECHNOLOGY&gt;морских обитателей&lt;&gt; в биоме &lt;STELLAR&gt;%BIOME%&lt;&gt;&#xA;Активируйте фоторежим с помощью &lt;IMG&gt;QUICK_MENU&lt;&gt;&#xA;Всего: 2/10&#xA;Отправляйтесь в космос и свяжитесь с Нада" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COMM_WEEK_07_OBJ5_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Нада просит сделать новые фотографии &lt;TECHNOLOGY&gt;морских обитателей&lt;&gt; в биоме «&lt;STELLAR&gt;%BIOME%&lt;&gt;».&#xA;Активируйте фоторежим с помощью &lt;IMG&gt;QUICK_MENU&lt;&gt;.&#xA;Всего: 3/10&#xA;Отправляйтесь в космос и встретьтесь с Нада.
                                { "Russian", "Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Нада просит сделать новые фотографии &lt;TECHNOLOGY&gt;морских обитателей&lt;&gt; в биоме &lt;STELLAR&gt;%BIOME%&lt;&gt;&#xA;Активируйте фоторежим с помощью &lt;IMG&gt;QUICK_MENU&lt;&gt;&#xA;Всего: 3/10&#xA;Отправляйтесь в космос и свяжитесь с Нада" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COMM_WEEK_07_OBJ5_MSG5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Нада просит сделать новые фотографии &lt;TECHNOLOGY&gt;морских обитателей&lt;&gt; в биоме «&lt;STELLAR&gt;%BIOME%&lt;&gt;».&#xA;Активируйте фоторежим с помощью &lt;IMG&gt;QUICK_MENU&lt;&gt;.&#xA;Всего: 4/10&#xA;Отправляйтесь в космос и встретьтесь с Нада.
                                { "Russian", "Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Нада просит сделать новые фотографии &lt;TECHNOLOGY&gt;морских обитателей&lt;&gt; в биоме &lt;STELLAR&gt;%BIOME%&lt;&gt;&#xA;Активируйте фоторежим с помощью &lt;IMG&gt;QUICK_MENU&lt;&gt;&#xA;Всего: 4/10&#xA;Отправляйтесь в космос и свяжитесь с Нада" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COMM_WEEK_07_OBJ5_MSG6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Нада просит сделать новые фотографии &lt;TECHNOLOGY&gt;морских обитателей&lt;&gt; в биоме «&lt;STELLAR&gt;%BIOME%&lt;&gt;».&#xA;Активируйте фоторежим с помощью &lt;IMG&gt;QUICK_MENU&lt;&gt;.&#xA;Всего: 5/10&#xA;Отправляйтесь в космос и встретьтесь с Нада.
                                { "Russian", "Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Нада просит сделать новые фотографии &lt;TECHNOLOGY&gt;морских обитателей&lt;&gt; в биоме &lt;STELLAR&gt;%BIOME%&lt;&gt;&#xA;Активируйте фоторежим с помощью &lt;IMG&gt;QUICK_MENU&lt;&gt;&#xA;Всего: 5/10&#xA;Отправляйтесь в космос и свяжитесь с Нада" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COMM_WEEK_07_OBJ5_MSG7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Нада просит сделать новые фотографии &lt;TECHNOLOGY&gt;морских обитателей&lt;&gt; в биоме «&lt;STELLAR&gt;%BIOME%&lt;&gt;».&#xA;Активируйте фоторежим с помощью &lt;IMG&gt;QUICK_MENU&lt;&gt;.&#xA;Всего: 6/10&#xA;Отправляйтесь в космос и встретьтесь с Нада.
                                { "Russian", "Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Нада просит сделать новые фотографии &lt;TECHNOLOGY&gt;морских обитателей&lt;&gt; в биоме &lt;STELLAR&gt;%BIOME%&lt;&gt;&#xA;Активируйте фоторежим с помощью &lt;IMG&gt;QUICK_MENU&lt;&gt;&#xA;Всего: 6/10&#xA;Отправляйтесь в космос и свяжитесь с Нада" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COMM_WEEK_07_OBJ5_MSG8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Нада просит сделать новые фотографии &lt;TECHNOLOGY&gt;морских обитателей&lt;&gt; в биоме «&lt;STELLAR&gt;%BIOME%&lt;&gt;».&#xA;Активируйте фоторежим с помощью &lt;IMG&gt;QUICK_MENU&lt;&gt;.&#xA;Всего: 7/10&#xA;Отправляйтесь в космос и встретьтесь с Нада.
                                { "Russian", "Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Нада просит сделать новые фотографии &lt;TECHNOLOGY&gt;морских обитателей&lt;&gt; в биоме &lt;STELLAR&gt;%BIOME%&lt;&gt;&#xA;Активируйте фоторежим с помощью &lt;IMG&gt;QUICK_MENU&lt;&gt;&#xA;Всего: 7/10&#xA;Отправляйтесь в космос и свяжитесь с Нада" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COMM_WEEK_07_OBJ5_MSG9" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Нада просит сделать новые фотографии &lt;TECHNOLOGY&gt;морских обитателей&lt;&gt; в биоме «&lt;STELLAR&gt;%BIOME%&lt;&gt;».&#xA;Активируйте фоторежим с помощью &lt;IMG&gt;QUICK_MENU&lt;&gt;.&#xA;Всего: 8/10&#xA;Отправляйтесь в космос и встретьтесь с Нада.
                                { "Russian", "Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Нада просит сделать новые фотографии &lt;TECHNOLOGY&gt;морских обитателей&lt;&gt; в биоме &lt;STELLAR&gt;%BIOME%&lt;&gt;&#xA;Активируйте фоторежим с помощью &lt;IMG&gt;QUICK_MENU&lt;&gt;&#xA;Всего: 8/10&#xA;Отправляйтесь в космос и свяжитесь с Нада" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COMM_WEEK_07_OBJ5_MSG10" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Нада просит сделать новые фотографии &lt;TECHNOLOGY&gt;морских обитателей&lt;&gt; в биоме «&lt;STELLAR&gt;%BIOME%&lt;&gt;».&#xA;Активируйте фоторежим с помощью &lt;IMG&gt;QUICK_MENU&lt;&gt;.&#xA;Всего: 9/10&#xA;Отправляйтесь в космос и встретьтесь с Нада.
                                { "Russian", "Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Нада просит сделать новые фотографии &lt;TECHNOLOGY&gt;морских обитателей&lt;&gt; в биоме &lt;STELLAR&gt;%BIOME%&lt;&gt;&#xA;Активируйте фоторежим с помощью &lt;IMG&gt;QUICK_MENU&lt;&gt;&#xA;Всего: 9/10&#xA;Отправляйтесь в космос и свяжитесь с Нада" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COMM_WEEK_07_OBJ5_MSG_ALT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt;%MISSIONTIME%&lt;&gt;&#xA;Нада просит сделать новые фотографии морских обитателей.&#xA;Приземляйтесь на различных планетах и делайте снимки.&#xA;Войдите в контакт с «Аномалией» и передайте данные с помощью &lt;IMG&gt;SCAN&lt;&gt;.
                                { "Russian", "Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Нада просит сделать новые фотографии морских обитателей.&#xA;Приземляйтесь на различных планетах и делайте снимки&#xA;Свяжитесь с Аномалией и передайте данные с помощью &lt;IMG&gt;SCAN&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COMM_WEEK_07_OBJ6_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt;%MISSIONTIME%&lt;&gt;&#xA;Отправляйтесь в космос и встретьтесь с Нада.
                                { "Russian", "Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Отправляйтесь в космос и свяжитесь с Нада" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COMM_WEEK_07_OBJ7_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt;%MISSIONTIME%&lt;&gt;&#xA;Высадитесь на &lt;SPECIAL&gt;космическую аномалию&lt;&gt;, чтобы встретиться с роботом Поло для синтеза ртути.&#xA;Обменивайте &lt;TRADE_SPECIALS&gt;ртуть&lt;&gt; на уникальные, единственные в своем роде предметы.
                                { "Russian", "Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Посетите &lt;SPECIAL&gt;Космическую Аномалию&lt;&gt;, чтобы встретиться с роботом Поло для синтеза ртути&#xA;Обменивайте &lt;TRADE_SPECIALS&gt;ртуть&lt;&gt; на уникальные, единственные в своем роде предметы" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COMM_WEEK_08_OBJ_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Специалист Поло транслирует запрос для всех исследователей.&#xA;Отправляйтесь в космос и установите связь с &lt;SPECIAL&gt;космической аномалией&lt;&gt;.
                                { "Russian", "Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Специалист Поло транслирует запрос для всех исследователей&#xA;Отправляйтесь в космос и свяжитесь с &lt;SPECIAL&gt;Космической Аномалией&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COMM_WEEK_08_OBJ2_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Посетите отмеченную планету.&#xA;Используйте координаты портала Поло для помощи с межзвездным путешествием.
                                { "Russian", "Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Посетите отмеченную планету&#xA;Используйте координаты портала Поло в межзвёздном путешествии" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COMM_WEEK_08_OBJ3_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Прогресс обнаружения флоры: %CURRENT%/%AMOUNT%
                                { "Russian", "Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Прогресс обнаружения флоры: %CURRENT%/%AMOUNT%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COMM_WEEK_08_OBJ3_MSG_EXTRA" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Прогресс обнаружения фауны: %CURRENT%/%AMOUNT%
                                { "Russian", "Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Прогресс обнаружения фауны: %CURRENT%/%AMOUNT%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COMM_WEEK_08_OBJ4_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Отправляйтесь в космос и встретьтесь с Поло.
                                -- &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Launch into space to make contact with Polo
                                { "Russian", "&lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Отправляйтесь в космос и встретьтесь с Поло" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COMM_WEEK_08_OBJ5_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Сканируйте растения с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt; и собирайте данные.&#xA;Общий прогресс: &lt;HIGHLIGHT&gt;%CMTOTALPERCENT%&lt;&gt; (осталось до уровня: %CMNEXTTIER%)&#xA;Вернитесь в космос, чтобы обменяться находками с Поло.
                                -- Research time remaining: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Scan plants with the &lt;TECHNOLOGY&gt;Analysis Visor&lt;&gt; to collect more data&#xA;Universal progress: &lt;HIGHLIGHT&gt;%CMTOTALPERCENT%&lt;&gt; (Remaining for tier: %CMNEXTTIER%)&#xA;Return to space to exchange data with Polo
                                { "Russian", "Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Сканируйте растения с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;&#xA;Общий прогресс: &lt;HIGHLIGHT&gt;%CMTOTALPERCENT%&lt;&gt; (осталось до уровня: %CMNEXTTIER%)&#xA;Вернитесь в космос, чтобы обменяться находками с Поло" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COMM_WEEK_08_OBJ5_MSG_ALT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Сканируйте растения с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt; и собирайте данные.&#xA;Общий прогресс: &lt;HIGHLIGHT&gt;%CMTOTALPERCENT%&lt;&gt; (осталось до уровня: %CMNEXTTIER%)&#xA;Войдите в контакт с Аномалией и обменяйтесь данными с помощью &lt;IMG&gt;SCAN&lt;&gt;.
                                { "Russian", "Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Сканируйте растения с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;&#xA;Общий прогресс: &lt;HIGHLIGHT&gt;%CMTOTALPERCENT%&lt;&gt; (осталось до уровня: %CMNEXTTIER%)&#xA;Свяжитесь с Аномалией и обменяйтесь данными с помощью &lt;IMG&gt;SCAN&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COMM_WEEK_08_OBJ5_MSG_EXTRA" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите дополнительные зоологические данные, сканируя животных с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;.
                                -- Collect more zoological data by scanning creatures with the &lt;TECHNOLOGY&gt;Analysis Visor&lt;&gt;.
                                { "Russian", "Соберите дополнительные зоологические данные, сканируя животных с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COMM_WEEK_08_OBJ5_MSG_EXTRA2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Данные аномальных биомов могут быть особенно ценными.
                                { "Russian", "Данные аномальных биомов могут быть особенно ценными" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COMM_WEEK_08_OBJ6_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Отправляйтесь в космос и встретьтесь с Поло.
                                { "Russian", "Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Отправляйтесь в космос и встретьтесь с Поло" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COMM_WEEK_08_OBJ7_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Высадитесь на &lt;SPECIAL&gt;«Космическую аномалию»&lt;&gt;, чтобы встретиться с роботом Поло для синтеза ртути.&#xA;Обменивайте &lt;TRADE_SPECIALS&gt;ртуть&lt;&gt; на уникальные, единственные в своем роде предметы.
                                { "Russian", "Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Посетите &lt;SPECIAL&gt;Космическую Аномалию&lt;&gt;, чтобы встретиться с роботом Поло для синтеза ртути&#xA;Обменивайте &lt;TRADE_SPECIALS&gt;ртуть&lt;&gt; на уникальные, единственные в своем роде предметы" },
                            }
                        },
                        --#endregion

                        --#region UI_FIRST_WALK_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FIRST_WALK_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Получен &lt;STELLAR&gt;сигнал звездолета&lt;&gt;&#xA;Используйте &lt;TECHNOLOGY&gt;компас&lt;&gt; для определения интересных мест&#xA;Компас расположен в верхней части интерфейса экзокостюма
                                -- &lt;STELLAR&gt;Starship Signal&lt;&gt; received&#xA;Use the &lt;TECHNOLOGY&gt;Compass&lt;&gt; to identity points of interest&#xA;The Compass is at the top of the Exosuit HUD
                                { "Russian", "Пойман &lt;STELLAR&gt;сигнал звездолёта&lt;&gt;&#xA;Находите интересные места с помощью &lt;TECHNOLOGY&gt;компаса&lt;&gt;&#xA;Компас расположен в верхней части интерфейса экзокостюма" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FIRST_WALK_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Доберитесь до отмеченного сигнала: 0 / 1&#xA;Используйте &lt;TECHNOLOGY&gt;реактивный ранец&lt;&gt; (&lt;IMG&gt;JUMP&lt;&gt;) для полета на небольшие расстояния&#xA;Или &lt;TECHNOLOGY&gt;ускоритель экзокостюма&lt;&gt; (&lt;IMG&gt;RUN&lt;&gt;), чтобы двигаться быстрее
                                { "Russian", "Доберитесь до отмеченного сигнала&#xA;Используйте &lt;TECHNOLOGY&gt;реактивный ранец&lt;&gt; (&lt;IMG&gt;JUMP&lt;&gt;) для полета&#xA;Для бега — &lt;TECHNOLOGY&gt;ускоритель экзокостюма&lt;&gt; (&lt;IMG&gt;RUN&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FIRST_WALK_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Доберитесь до отмеченного сигнала: 0 / 1&#xA;Экзокостюм обнаружил &lt;STELLAR&gt;сигнал автоматического передатчика&lt;&gt;&#xA;Используйте &lt;TECHNOLOGY&gt;сканер&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;), чтобы подсвечивать &lt;COMMODITY&gt;ключевые ресурсы&lt;&gt;
                                -- Reach the marked signal: 0 / 1&#xA;Exosuit detected &lt;STELLAR&gt;automated signal broadcast&lt;&gt;&#xA;Use the &lt;TECHNOLOGY&gt;Scanner&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;) to highlight &lt;COMMODITY&gt;key resources&lt;&gt;
                                { "Russian", "Доберитесь до отмеченного сигнала&#xA;Экзокостюм поймал &lt;STELLAR&gt;сигнал автоматизированной системы&lt;&gt;&#xA;Подсветите &lt;COMMODITY&gt;ключевые ресурсы&lt;&gt; с помощью &lt;TECHNOLOGY&gt;сканера&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;)" },
                            }
                        },
                        --#endregion

                    }
                },
                { -- LANGUAGE/NMS_LOC5_RUSSIAN.MBIN
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_LOC5_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        --#region Разное
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NPC_NADA_MINDARC_OPT1_B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Показать дугу сознания
                                -- Reveal the Mind Ark
                                { "Russian", "Показать ковчег сознания" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_POWER_TUT_OBJ1_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Для работы продвинутых технологий требуются &lt;TECHNOLOGY&gt;энергетические модули&lt;&gt;.&#xA;Обработайте &lt;TECHNOLOGY&gt;извлеченные данные&lt;&gt; с помощью &lt;TECHNOLOGY&gt;модуля строительных исследований&lt;&gt;.&#xA;Настройте модуль строительных исследований на &lt;STELLAR&gt;технологию для строительства&lt;&gt;.
                                -- Advanced technology requires &lt;TECHNOLOGY&gt;Power Modules&lt;&gt; to run&#xA;Process &lt;TECHNOLOGY&gt;Salvaged Data&lt;&gt; with a &lt;TECHNOLOGY&gt;Construction Research Unit&lt;&gt;&#xA;Direct the Construction Research Unit towards &lt;STELLAR&gt;Buildable Technology&lt;&gt;
                                { "Russian", "Для работы продвинутых технологий требуются &lt;TECHNOLOGY&gt;энергетические модули﻿.&lt;&gt;&#xA;Обменяйте &lt;TECHNOLOGY&gt;извлеченные данные&lt;&gt; в &lt;TECHNOLOGY&gt;модуле строительных исследований﻿.&lt;&gt;&#xA;В меню модуля строительных исследований выберите &lt;STELLAR&gt;технологию для строительства﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COMM_WEEK_09B2_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Совершите варп-прыжок на звездолете или грузовом судне в &lt;STELLAR&gt;новую систему&lt;&gt;, чтобы объявить о ее открытии.
                                -- Warp your starship or freighter to &lt;STELLAR&gt;undiscovered systems&lt;&gt; to claim them as new discoveries.
                                { "Russian", "Совершите прыжок в &lt;STELLAR&gt;неизведанную систему&lt;&gt; на звездолёте или грузовом судне, чтобы заявить об ее открытии." },
                            }
                        },
                        --#endregion

                        --#region Сообщение системы экзокостюма
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SCANNER_DETAIL_TITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Система экзокостюма &lt;IMG&gt;SLASH&lt;&gt; Сканер поврежден
                                -- Exosuit Guidance Alert &lt;IMG&gt;SLASH&lt;&gt; Scanner Damaged
                                { "Russian", "Гид экзокостюма&lt;IMG&gt;SLASH&lt;&gt;Сканер поврежден" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_VISOR_DETAIL_TITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Система экзокостюма &lt;IMG&gt;SLASH&lt;&gt; Анализирующий визор
                                -- Exosuit Guidance Alert &lt;IMG&gt;SLASH&lt;&gt; Analysis Visor
                                { "Russian", "Гид экзокостюма&lt;IMG&gt;SLASH&lt;&gt;Анализирующий визор" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXOSUIT_ALERT_TITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сообщение системы экзокостюма
                                { "Russian", "Гид экзокостюма" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FIRSTSCAN_DETAIL_TITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сообщение системы экзокостюма &lt;IMG&gt;SLASH&lt;&gt; Сканирование
                                -- Exosuit Guidance Alert &lt;IMG&gt;SLASH&lt;&gt; Scanning
                                { "Russian", "Гид экзокостюма&lt;IMG&gt;SLASH&lt;&gt;Сканирование" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SHIP_DETAIL_TITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сообщение системы экзокостюма &lt;IMG&gt;SLASH&lt;&gt; Ремонт корабля
                                { "Russian", "Гид экзокостюма&lt;IMG&gt;SLASH&lt;&gt;Ремонт корабля" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BASE_DETAIL_TITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сообщение системы экзокостюма &lt;IMG&gt;SLASH&lt;&gt; Строительство баз
                                { "Russian", "Гид экзокостюма&lt;IMG&gt;SLASH&lt;&gt;Строительство баз" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BASE_EXTRA_DETAIL_TITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сообщение системы экзокостюма &lt;IMG&gt;SLASH&lt;&gt; Расширение базы
                                { "Russian", "Гид экзокостюма&lt;IMG&gt;SLASH&lt;&gt;Расширение базы" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TERRAINEDIT_DETAIL_TITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сообщение системы экзокостюма &lt;IMG&gt;SLASH&lt;&gt; Изменение ландшафта
                                { "Russian", "Гид экзокостюма&lt;IMG&gt;SLASH&lt;&gt;Изменение ландшафта" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ANTIMATTER_DETAIL_TITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сообщение системы экзокостюма &lt;IMG&gt;SLASH&lt;&gt; Варп-ячейки
                                { "Russian", "Гид экзокостюма&lt;IMG&gt;SLASH&lt;&gt;Варп-ячейки" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WARPDRIVE_DETAIL_TITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сообщение системы экзокостюма &lt;IMG&gt;SLASH&lt;&gt; Межзвездные перелеты
                                { "Russian", "Гид экзокостюма&lt;IMG&gt;SLASH&lt;&gt;Межзвёздные перелеты" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_REFINER_DETAIL_TITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сообщение системы экзокостюма &lt;IMG&gt;SLASH&lt;&gt; Очистка
                                { "Russian", "Гид экзокостюма&lt;IMG&gt;SLASH&lt;&gt;Очистка" },
                            }
                        },
                        --#endregion

                        --#region UI_SCANNER_DETAIL_LINE
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SCANNER_DETAIL_LINE2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите &lt;EARTH&gt;ферритную пыль&lt;&gt;, чтобы выполнить ремонт
                                { "Russian", "Соберите &lt;EARTH&gt;ферритную пыль&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SCANNER_DETAIL_LINE3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Устраните повреждения сканера
                                { "Russian", "Выполните ремонт сканера" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SCANNER_DETAIL_LINE4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Начните сканирование (&lt;IMG&gt;SCAN&lt;&gt;), чтобы найти натрий
                                { "Russian", "Найдите натрий с помощью сканера (&lt;IMG&gt;SCAN&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SCANNER_DETAIL_LINE4_VR" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Начните сканирование, чтобы найти натрий
                                { "Russian", "Найдите натрий с помощью сканера" },
                            }
                        },
                        --#endregion

                        --#region UI_SHIP_DETAIL_LINE
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SHIP_DETAIL_LINE1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Почините импульсный двигатель: &lt;COMMODITY&gt;металлическая обшивка&lt;&gt;.
                                -- Repair Pulse Engine: &lt;COMMODITY&gt;Metal Plating&lt;&gt;
                                { "Russian", "Найдите &lt;COMMODITY&gt;металлическую обшивку&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SHIP_DETAIL_LINE2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Почините импульсный двигатель: &lt;STELLAR&gt;герметик&lt;&gt;.
                                { "Russian", "Найдите &lt;STELLAR&gt;герметик&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SHIP_DETAIL_LINE3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Почините взлетные ускорители: &lt;TECHNOLOGY&gt;дигидрогенный гель&lt;&gt;.
                                { "Russian", "Найдите &lt;TECHNOLOGY&gt;дигидрогенный гель&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SHIP_DETAIL_LINE4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Почините взлетные ускорители: &lt;EARTH&gt;чистый феррит&lt;&gt;.
                                { "Russian", "Найдите &lt;EARTH&gt;чистый феррит&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region UI_VISOR_DETAIL_LINE
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_VISOR_DETAIL_LINE1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите &lt;FUEL&gt;углерод&lt;&gt;.
                                { "Russian", "Соберите &lt;FUEL&gt;углерод&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_VISOR_DETAIL_LINE2A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите и создайте &lt;COMMODITY&gt;компоненты визора&lt;&gt;
                                { "Russian", "Соберите и создайте &lt;COMMODITY&gt;компоненты визора&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_VISOR_DETAIL_LINE2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Создайте &lt;COMMODITY&gt;углеродные нанотрубки&lt;&gt;.
                                { "Russian", "Создайте &lt;COMMODITY&gt;углеродные нанотрубки&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_VISOR_DETAIL_LINE3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Завершите установку.
                                { "Russian", "Завершите установку" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_VISOR_DETAIL_LINE4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Проанализируйте&lt;&gt; объекты на предмет возможности получения &lt;STELLAR&gt;наград&lt;&gt;.
                                { "Russian", "&lt;STELLAR&gt;Проанализируйте&lt;&gt; объекты для получения &lt;STELLAR&gt;наград&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region UI_REFINER_DETAIL_LINE
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_REFINER_DETAIL_LINE1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Очистители &lt;TECHNOLOGY&gt;преобразуют&lt;&gt; простые материалы.
                                -- Refiners &lt;TECHNOLOGY&gt;transform&lt;&gt; simple materials
                                { "Russian", "Очистители &lt;TECHNOLOGY&gt;преобразуют&lt;&gt; простые материалы" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_REFINER_DETAIL_LINE2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Больший &lt;COMMODITY&gt;заряд&lt;&gt; после обработки.
                                -- Refined materials hold more &lt;COMMODITY&gt;charge&lt;&gt;
                                { "Russian", "Очищенные материалы имеют больше &lt;COMMODITY&gt;заряда&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_REFINER_DETAIL_LINE3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;Продвинутым технологиям&lt;&gt; требуются обработанные материалы.
                                -- &lt;TECHNOLOGY&gt;Advanced technologies&lt;&gt; require refined materials
                                { "Russian", "Очищенные материалы нужны для &lt;TECHNOLOGY&gt;продвинутых технологий&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region UI_TERRAINEDIT_DETAIL_LINE
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TERRAINEDIT_DETAIL_LINE1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Ландшафтный манипулятор — это улучшение &lt;TECHNOLOGY&gt;мультитула&lt;&gt;.
                                -- The Terrain Manipulator is a &lt;TECHNOLOGY&gt;Multi-Tool&lt;&gt; upgrade
                                { "Russian", "Ландшафтный манипулятор — это улучшение &lt;TECHNOLOGY&gt;мультитула&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TERRAINEDIT_DETAIL_LINE2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Он позволяет добывать &lt;COMMODITY&gt;ценную руду&lt;&gt;, извлекая ее непосредственно из-под земли.
                                { "Russian", "Он позволяет добывать &lt;COMMODITY&gt;ценную руду&lt;&gt;, извлекая ее непосредственно из-под земли" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TERRAINEDIT_DETAIL_LINE3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Ландшафтный манипулятор &lt;STELLAR&gt;способен изменять облик планет&lt;&gt;, прорывая туннели или создавая новые участки суши.
                                { "Russian", "Ландшафтный манипулятор &lt;STELLAR&gt;способен изменять облик планет&lt;&gt;, прорывая туннели или создавая новые участки суши" },
                            }
                        },
                        --#endregion

                        --#region UI_BASE_DETAIL
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BASE_DETAIL_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Базы обеспечивают защиту от суровых условий на поверхности планет, позволяя вам перезарядить &lt;COMMODITY&gt;систему защиты от вредных факторов&lt;&gt;. По мере того как ваша база растет и развивается, вы сможете получить доступ ко многим &lt;TECHNOLOGY&gt;продвинутым технологиям&lt;&gt;.
                                { "Russian", "Базы обеспечивают защиту от суровых условий на поверхности планет, позволяя вам перезарядить &lt;COMMODITY&gt;систему защиты от вредных факторов&lt;&gt;. По мере того как ваша база растет и развивается, вы сможете получить доступ ко многим &lt;TECHNOLOGY&gt;продвинутым технологиям﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BASE_DETAIL_LINE1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Стройте базы для &lt;TRADEABLE&gt;защиты&lt;&gt; от неблагоприятных погодных условий.
                                { "Russian", "Стройте базы для &lt;TRADEABLE&gt;защиты&lt;&gt; от неблагоприятных погодных условий" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BASE_DETAIL_LINE2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Развивайте базу, получая новые &lt;STELLAR&gt;строительные чертежи&lt;&gt;.
                                -- Expand your base by earning new &lt;STELLAR&gt;construction blueprints&lt;&gt;
                                { "Russian", "Развивайте базу с помощью новых &lt;STELLAR&gt;строительных чертежей&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BASE_DETAIL_LINE3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;Возвращайтесь на базу&lt;&gt;, чтобы оставить или переработать найденные ресурсы и предметы.
                                -- &lt;TECHNOLOGY&gt;Return to your base&lt;&gt; to store and process items as you explore
                                { "Russian", "&lt;TECHNOLOGY&gt;Возвращайтесь на базу&lt;&gt;, чтобы оставить или переработать найденные ресурсы и предметы" },
                            }
                        },
                        --#endregion

                        --#region UI_BASE_EXTRA_DETAIL_LINE
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BASE_EXTRA_DETAIL_LINE1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Развивайте базу, получая новые &lt;STELLAR&gt;строительные чертежи&lt;&gt;.
                                -- Expand your base by earning new &lt;STELLAR&gt;construction blueprints&lt;&gt;
                                { "Russian", "Развивайте базу с помощью новых &lt;STELLAR&gt;строительных чертежей&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BASE_EXTRA_DETAIL_LINE2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Извлекайте &lt;TECHNOLOGY&gt;засыпанные технологии&lt;&gt;, чтобы получить новые чертежи.
                                { "Russian", "Находите &lt;TECHNOLOGY&gt;засыпанные технологии&lt;&gt;, чтобы получать новые чертежи" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BASE_EXTRA_DETAIL_LINE3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;FUEL&gt;Обеспечьте&lt;&gt; свою базу энергией, чтобы использовать продвинутые технологии.
                                { "Russian", "&lt;FUEL&gt;Обеспечьте&lt;&gt; свою базу энергией, чтобы использовать продвинутые технологии" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BASE_EXTRA_DETAIL_LINE4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Во время странствий используйте &lt;TECHNOLOGY&gt;телепорт&lt;&gt;, чтобы мгновенно вернуться на свою базу.
                                { "Russian", "Во время странствий используйте &lt;TECHNOLOGY&gt;телепорт&lt;&gt;, чтобы вернуться на свою базу" },
                            }
                        },
                        --#endregion

                        --#region UI_POWER_TUT_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_POWER_TUT_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Изучите &lt;TECHNOLOGY&gt;биотопливный реактор&lt;&gt;.&#xA;Изучите модули базы в &lt;TECHNOLOGY&gt;модуле строительных исследований&lt;&gt;.&#xA;Выберите раздел &lt;STELLAR&gt;Технология для строительства&lt;&gt;, чтобы просмотреть доступные чертежи.
                                -- Learn the &lt;TECHNOLOGY&gt;Biofuel Reactor&lt;&gt;&#xA;Learn base modules at the &lt;TECHNOLOGY&gt;Construction Research Unit&lt;&gt;&#xA;Select &lt;STELLAR&gt;Buildable Technology&lt;&gt; to browse available plans
                                { "Russian", "Изучите &lt;TECHNOLOGY&gt;биотопливный реактор&lt;&gt;&#xA;Изучите модули базы в &lt;TECHNOLOGY&gt;модуле строительных исследований&lt;&gt;&#xA;Выберите раздел &lt;STELLAR&gt;Технология для строительства&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_POWER_TUT_MSG1A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Изучите &lt;TECHNOLOGY&gt;биотопливный реактор&lt;&gt;.&#xA;Изучите модули базы в &lt;TECHNOLOGY&gt;модуле строительных исследований&lt;&gt;.&#xA;Разместите &lt;TECHNOLOGY&gt;модуль строительных исследований&lt;&gt; на своей базе.
                                { "Russian", "Изучите &lt;TECHNOLOGY&gt;биотопливный реактор&lt;&gt;&#xA;Изучите модули базы в &lt;TECHNOLOGY&gt;модуле строительных исследований&lt;&gt;&#xA;Разместите &lt;TECHNOLOGY&gt;модуль строительных исследований&lt;&gt; на своей базе" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_POWER_TUT_MSG1B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Изучите &lt;TECHNOLOGY&gt;биотопливный реактор&lt;&gt;.&#xA;Исследуйте планету и найдите &lt;TECHNOLOGY&gt;засыпанную технологию&lt;&gt;: 0 / 1
                                { "Russian", "Изучите &lt;TECHNOLOGY&gt;биотопливный реактор&lt;&gt;&#xA;Исследуйте планету и найдите &lt;TECHNOLOGY&gt;засыпанную технологию&lt;&gt;: 0/1" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_POWER_TUT_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Постройте &lt;TECHNOLOGY&gt;биотопливный реактор&lt;&gt;&#xA;Чтобы открыть меню созидания, нажмите &lt;IMG&gt;BUILD_MENU&lt;&gt;&#xA;Во время строительства активируйте &lt;COMMODITY&gt;камеру строительства&lt;&gt; с помощью &lt;IMG&gt;BASE_CAM&lt;&gt;
                                { "Russian", "Постройте &lt;TECHNOLOGY&gt;биотопливный реактор&lt;&gt;&#xA;Чтобы открыть меню строительства, нажмите &lt;IMG&gt;BUILD_MENU&lt;&gt;&#xA;Во время строительства включите &lt;COMMODITY&gt;камеру строительства&lt;&gt; (&lt;IMG&gt;BASE_CAM&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_POWER_TUT_MSG2_VR" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Постройте &lt;TECHNOLOGY&gt;биотопливный реактор&lt;&gt;&#xA;Чтобы открыть меню созидания, нажмите &lt;IMG&gt;BUILD_MENU&lt;&gt;
                                { "Russian", "Постройте &lt;TECHNOLOGY&gt;биотопливный реактор&lt;&gt;&#xA;Чтобы открыть меню строительства, нажмите &lt;IMG&gt;BUILD_MENU&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_POWER_TUT_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Исследуйте &lt;TECHNOLOGY&gt;электропроводку&lt;&gt;: 0 / 1&#xA;Выберите &lt;STELLAR&gt;технологию для строительства&lt;&gt; в настройках &lt;TECHNOLOGY&gt;модуля строительных исследований&lt;&gt;.&#xA;Исследовать &lt;TECHNOLOGY&gt;электропроводку&lt;&gt; можно &lt;STELLAR&gt;бесплатно&lt;&gt;.
                                { "Russian", "Исследуйте &lt;TECHNOLOGY&gt;электропроводку&lt;&gt;&#xA;В меню &lt;TECHNOLOGY&gt;модуля строительных исследований&lt;&gt;&#xA;выберите &lt;STELLAR&gt;технологию для строительства&lt;&gt;&#xA;Чертеж &lt;TECHNOLOGY&gt;электропроводки&lt;&gt; &lt;STELLAR&gt;бесплатный&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_POWER_TUT_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Чтобы создать &lt;STELLAR&gt;энергосеть&lt;&gt;, выберите электропроводку в меню созидания (&lt;IMG&gt;BUILD_MENU&lt;&gt;).&#xA;Проложите провода к &lt;TECHNOLOGY&gt;биотопливному реактору&lt;&gt; с помощью &lt;IMG&gt;BUILD_PLACE&lt;&gt;&#xA;Подключите провода напрямую к узлам или разведите их по земле.
                                { "Russian", "Создайте &lt;STELLAR&gt;энергосеть&lt;&gt;&#xA;Выберите электропроводку в меню строительства (&lt;IMG&gt;BUILD_MENU&lt;&gt;)&#xA;Проложите провода к &lt;TECHNOLOGY&gt;биотопливному реактору&lt;&gt; с помощью &lt;IMG&gt;BUILD_PLACE&lt;&gt;&#xA;Подключите провода напрямую к узлам или разведите их по земле" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_POWER_TUT_MSG5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Заправьте &lt;TECHNOLOGY&gt;биотопливный реактор&lt;&gt;&#xA;Включите генератор и выберите &lt;TECHNOLOGY&gt;камеру печи&lt;&gt;&#xA;Продвинутые генераторы не требуют заправки вручную
                                -- Fuel the &lt;TECHNOLOGY&gt;Biofuel Reactor&lt;&gt;&#xA;Interact with the generator and select the &lt;TECHNOLOGY&gt;Furnace Tank&lt;&gt;&#xA;Advanced generators do not require manual fuelling
                                { "Russian", "Заправьте &lt;TECHNOLOGY&gt;биотопливный реактор&lt;&gt;&#xA;Включите генератор и выберите &lt;TECHNOLOGY&gt;камера печи&lt;&gt;&#xA;Продвинутые генераторы не требуют ручной заправки" },
                            }
                        },
                        --#endregion

                        --#region UI_STATION_DETAIL_LINE
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_STATION_DETAIL_LINE1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Чтобы &lt;TECHNOLOGY&gt;улучшить корабль и снаряжение&lt;&gt;, посетите торговцев технологиями.
                                -- Visit Technology Merchants to &lt;TECHNOLOGY&gt;upgrade your ship and equipment&lt;&gt;
                                { "Russian", "Посетите торговцев технологиями для &lt;TECHNOLOGY&gt;улучшения корабля и снаряжения&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_STATION_DETAIL_LINE2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Чтобы узнать &lt;TRADEABLE&gt;местоположение&lt;&gt; аванпостов и других сооружений, посетите &lt;TRADEABLE&gt;картографа&lt;&gt;.
                                { "Russian", "Посетите &lt;TRADEABLE&gt;картографа&lt;&gt;, чтобы узнать &lt;TRADEABLE&gt;местоположение&lt;&gt; аванпостов и других сооружений" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_STATION_DETAIL_LINE3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Чтобы заработать &lt;STELLAR&gt;ценные награды&lt;&gt;, берите задания у &lt;STELLAR&gt;диспетчера заданий&lt;&gt;.
                                { "Russian", "Возьмите задание у &lt;STELLAR&gt;диспетчера заданий&lt;&gt;, чтобы заработать &lt;STELLAR&gt;ценные награды&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_STATION_DETAIL_LINE4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Чтобы мгновенно &lt;TECHNOLOGY&gt;вернуться на свою базу&lt;&gt;, используйте &lt;TECHNOLOGY&gt;телепорт&lt;&gt;.
                                { "Russian", "Используйте &lt;TECHNOLOGY&gt;телепорт&lt;&gt;, чтобы &lt;TECHNOLOGY&gt;вернуться на свою базу&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region UI_WARPDRIVE_DETAIL
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WARPDRIVE_DETAIL_LINE1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Начните установку &lt;TECHNOLOGY&gt;гипердвигателя&lt;&gt;.
                                -- Begin &lt;TECHNOLOGY&gt;Hyperdrive&lt;&gt; installation
                                { "Russian", "Начните установку &lt;TECHNOLOGY&gt;гипердвигателя&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WARPDRIVE_DETAIL_LINE2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добудьте компоненты: &lt;STELLAR&gt;купите микропроцессоры&lt;&gt;.
                                -- Acquire components: &lt;STELLAR&gt;purchase Microprocessors&lt;&gt;
                                { "Russian", "Добудьте компоненты: &lt;STELLAR&gt;купите микропроцессоры&lt;&gt;" },
                            }
                        },
                        -- точный перевод refine - рафинировать
                        -- это специальный технический термин, см. "Рафинирование металлов"
                        -- означает дословно "обработкой превращать (превратить) в <конечный продукт>"
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WARPDRIVE_DETAIL_LINE3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добудьте компоненты: очистите &lt;SPECIAL&gt;хроматический металл&lt;&gt;.
                                -- Acquire components: refine &lt;SPECIAL&gt;Chromatic Metal&lt;&gt;
                                { "Russian", "Добудьте компоненты: рафинировать &lt;SPECIAL&gt;хроматический металл&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WARPDRIVE_DETAIL_LINE4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Завершите установку.
                                -- Finalise Installation
                                { "Russian", "Завершите установку" },
                            }
                        },
                        --#endregion

                        --#region UI_ANTIMATTER_DETAIL
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ANTIMATTER_DETAIL_LINE1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите компоненты: &lt;FUEL&gt;кислород&lt;&gt;.
                                { "Russian", "Соберите компоненты: &lt;FUEL&gt;кислород&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ANTIMATTER_DETAIL_LINE2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите компоненты: &lt;COMMODITY&gt;ферритная пыль&lt;&gt;.
                                { "Russian", "Соберите компоненты: &lt;COMMODITY&gt;ферритная пыль&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ANTIMATTER_DETAIL_LINE1A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите компоненты антиматерии: &lt;FUEL&gt;сжатый углерод&lt;&gt;.
                                { "Russian", "Соберите компоненты антиматерии: &lt;FUEL&gt;сжатый углерод&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ANTIMATTER_DETAIL_LINE2A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите компоненты антиматерии: &lt;STELLAR&gt;хроматический металл&lt;&gt;.
                                { "Russian", "Соберите компоненты антиматерии: &lt;STELLAR&gt;хроматический металл&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ANTIMATTER_DETAIL_LINE2C" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите компоненты антиматерии.
                                { "Russian", "Соберите компоненты антиматерии" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ANTIMATTER_DETAIL_LINE2D" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Создайте &lt;SPECIAL&gt;антиматерию&lt;&gt;.
                                { "Russian", "Создайте &lt;SPECIAL&gt;антиматерию&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ANTIMATTER_DETAIL_LINE3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите &lt;COMMODITY&gt;антиматериальный контейнер&lt;&gt;.
                                { "Russian", "Создайте &lt;COMMODITY&gt;антиматериальный контейнер&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ANTIMATTER_DETAIL_LINE4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Создайте &lt;FUEL&gt;варп-ячейку&lt;&gt;.
                                { "Russian", "Создайте &lt;FUEL&gt;варп-ячейку&lt;&gt;" },
                            }
                        },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ANTIMATTER_DETAIL_LINE3A" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Соберите компоненты антиматериального контейнера: &lt;FUEL&gt;кислород&lt;&gt;
                        --         { "Russian", "Соберите компоненты антиматериального контейнера: &lt;FUEL&gt;кислород&lt;&gt;" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ANTIMATTER_DETAIL_LINE4A" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Соберите компоненты антиматериального контейнера: &lt;COMMODITY&gt;ферритная пыль&lt;&gt;
                        --         { "Russian", "Соберите компоненты антиматериального контейнера: &lt;COMMODITY&gt;ферритная пыль&lt;&gt;" },
                        --     }
                        -- },
                        --#endregion

                        --#region UI_WARPING_DETAIL
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WARPING_DETAIL_TITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Межзвездные перелеты
                                -- Interstellar Travel
                                { "Russian", "Межзвёздные перелеты" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WARPING_DETAIL_LINE1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Чтобы открыть &lt;TECHNOLOGY&gt;галактическую карту&lt;&gt;, окажитесь в космосе и используйте быстрое меню.
                                -- In space, access the &lt;TECHNOLOGY&gt;Galaxy Map&lt;&gt; from the Quick Menu
                                { "Russian", "Находясь в космосе, откройте &lt;TECHNOLOGY&gt;галактическую карту&lt;&gt; из быстрого меню" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WARPING_DETAIL_LINE2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вы можете передвигаться по &lt;STELLAR&gt;определенным путям&lt;&gt; или выбрать собственный маршрут.
                                -- Move along &lt;STELLAR&gt;specific paths&lt;&gt; or browse and choose your own route
                                { "Russian", "Вы можете передвигаться по &lt;STELLAR&gt;определенным путям&lt;&gt; или выбрать собственный маршрут" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WARPING_DETAIL_LINE3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Для совершения варп-прыжка вашему гипердвигателю требуется &lt;FUEL&gt;варп-топливо&lt;&gt;.
                                { "Russian", "Для совершения варп-прыжка вашему гипердвигателю требуется &lt;FUEL&gt;варп-топливо&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WARPING_DETAIL_LINE4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- В некоторые системы не попасть без &lt;TECHNOLOGY&gt;улучшенного гипердвигателя&lt;&gt;.
                                -- Some systems require &lt;TECHNOLOGY&gt;hyperdrive upgrades&lt;&gt; to access
                                { "Russian", "В некоторые системы не попасть без &lt;TECHNOLOGY&gt;улучшений гипердвигателя&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region UI_NEXUS_DETAIL_LINE
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NEXUS_DETAIL_LINE1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Говорите с другими Странниками, чтобы зарабатывать &lt;SPECIAL&gt;наниты&lt;&gt;.
                                -- Speak to other Travellers to earn &lt;SPECIAL&gt;nanites&lt;&gt;
                                { "Russian", "Поговорите с другими Странниками и заработайте &lt;SPECIAL&gt;наниты&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NEXUS_DETAIL_LINE2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Изучайте &lt;TECHNOLOGY&gt;чертежи новых технологий&lt;&gt;.
                                { "Russian", "Изучите &lt;TECHNOLOGY&gt;новые чертежи технологий&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NEXUS_DETAIL_LINE3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Ознакомьтесь с огромным выбором &lt;STELLAR&gt;элементов базы&lt;&gt;.
                                { "Russian", "Ознакомьтесь с огромным выбором &lt;STELLAR&gt;элементов базы&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NEXUS_DETAIL_LINE4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поговорите с Нада об &lt;TECHNOLOGY&gt;Артемиде&lt;&gt;.
                                { "Russian", "Поговорите с Нада об &lt;TECHNOLOGY&gt;Артемиде&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region UI_NEXUS.*_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NEXUS_SALVAGE_SUMMON_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вы накопили достаточно &lt;TECHNOLOGY&gt;извлеченных данных&lt;&gt;.&#xA;Используйте &lt;TECHNOLOGY&gt;извлеченные данные&lt;&gt; для исследования новых строительных элементов базы.&#xA;Используйте станцию исследования базы на борту Космической Аномалии.&#xA;Вызовите Космическую Аномалию через быстрое меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                { "Russian", "Вы накопили достаточно &lt;TECHNOLOGY&gt;извлеченных данных&lt;&gt;&#xA;Потратьте их на исследование новых элементов базы&#xA;Используйте станцию исследования базы на Космической Аномалии&#xA;Вызовите Космическую Аномалию из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NEXUS_SALVAGE_BOARD_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вы накопили достаточно &lt;TECHNOLOGY&gt;извлеченных данных&lt;&gt;.&#xA;Используйте &lt;TECHNOLOGY&gt;извлеченные данные&lt;&gt; для исследования новых строительных элементов базы.&#xA;Используйте станцию исследования базы на борту Космической Аномалии.
                                { "Russian", "Вы накопили достаточно &lt;TECHNOLOGY&gt;извлеченных данных&lt;&gt;&#xA;Потратьте их на исследование новых элементов базы&#xA;Используйте станцию исследования базы на Космической Аномалии" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NEXUS_SALVAGE_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вы накопили достаточно &lt;TECHNOLOGY&gt;извлеченных данных&lt;&gt;.&#xA;Используйте &lt;TECHNOLOGY&gt;извлеченные данные&lt;&gt; для исследования новых строительных элементов базы.&#xA;Просмотреть доступные чертежи можно на &lt;STELLAR&gt;станции исследования базы&lt;&gt;.
                                { "Russian", "Вы накопили достаточно &lt;TECHNOLOGY&gt;извлеченных данных&lt;&gt;&#xA;Потратьте их на исследование новых элементов базы&#xA;Изучите доступные чертежи на &lt;STELLAR&gt;станции исследования базы&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NEXUS_TECHFRAG_SUMMON_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вы накопили достаточно &lt;TECHNOLOGY&gt;нанитов&lt;&gt;.&#xA;Отправьте их &lt;STELLAR&gt;помощникам-исследователям&lt;&gt; на борту Космической Аномалии.&#xA;Вызовите Космическую Аномалию через быстрое меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                -- Substantial &lt;TECHNOLOGY&gt;Nanites &lt;&gt; accumulated&#xA;Spend them at &lt;STELLAR&gt;Research Assistants&lt;&gt; on the Space Anomaly&#xA;Summon the Space Anomaly from the Quick Menu (&lt;IMG&gt;QUICK_MENU&lt;&gt;)
                                { "Russian", "Вы накопили достаточно &lt;TECHNOLOGY&gt;нанитов&lt;&gt;&#xA;Потратьте их у &lt;STELLAR&gt;помощников-исследователей&lt;&gt; на Космической Аномалии&#xA;Вызовите Аномалию из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NEXUS_TECHFRAG_BOARD_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вы накопили достаточно &lt;TECHNOLOGY&gt;нанитов&lt;&gt;.&#xA;Используйте &lt;TECHNOLOGY&gt;наниты&lt;&gt;, чтобы исследовать новые чертежи.&#xA;Посетите &lt;STELLAR&gt;помощников-исследователей&lt;&gt; на борту Космической Аномалии.
                                { "Russian", "Вы накопили достаточно &lt;TECHNOLOGY&gt;нанитов&lt;&gt;&#xA;Потратьте &lt;TECHNOLOGY&gt;наниты&lt;&gt; на новые чертежи&#xA;Посетите &lt;STELLAR&gt;помощников-исследователей&lt;&gt; на Космической Аномалии" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NEXUS_TECHFRAG_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вы накопили достаточно &lt;TECHNOLOGY&gt;нанитов&lt;&gt;.&#xA;Используйте &lt;TECHNOLOGY&gt;наниты&lt;&gt;, чтобы исследовать новые чертежи.&#xA;Посетите &lt;STELLAR&gt;помощника-исследователя&lt;&gt;.&#xA;Исследователи специализируются на улучшениях экзокостюма, звездолета, мультитула и вездехода.
                                -- Substantial &lt;TECHNOLOGY&gt;Nanites &lt;&gt; accumulated&#xA;Use &lt;TECHNOLOGY&gt;Nanites&lt;&gt; to research new blueprints&#xA;Visit a &lt;STELLAR&gt;Research Assistant&lt;&gt;&#xA;Researchers specialise in Exosuit, Starship, Multi-Tool and Exocraft upgrades
                                { "Russian", "Вы накопили достаточно &lt;TECHNOLOGY&gt;нанитов&lt;&gt;&#xA;Потратьте &lt;TECHNOLOGY&gt;наниты&lt;&gt; на новые чертежи у &lt;STELLAR&gt;помощника-исследователя&lt;&gt;&#xA;Исследователи специализируются на улучшениях экзокостюма,&#xA;звездолёта, мультитула и вездехода" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NEXUS_TECHFRAG_MSG_ALT1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вы накопили достаточно &lt;TECHNOLOGY&gt;нанитов&lt;&gt;.&#xA;Используйте &lt;TECHNOLOGY&gt;наниты&lt;&gt;, чтобы приобретать &lt;SPECIAL&gt;готовые улучшения&lt;&gt;.&#xA;Приобрести улучшения можно на &lt;COMMODITY&gt;космической станции&lt;&gt;.
                                { "Russian", "Вы накопили достаточно &lt;TECHNOLOGY&gt;нанитов&lt;&gt;&#xA;Потратьте &lt;TECHNOLOGY&gt;наниты&lt;&gt; на &lt;SPECIAL&gt;готовые улучшения&lt;&gt;&#xA;Покупайте улучшения на &lt;COMMODITY&gt;космической станции&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NEXUS_TECHFRAG_MSG_ALT2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вы накопили достаточно &lt;TECHNOLOGY&gt;нанитов&lt;&gt;.&#xA;Используйте &lt;TECHNOLOGY&gt;наниты&lt;&gt;, чтобы приобретать &lt;SPECIAL&gt;готовые улучшения&lt;&gt;.&#xA;Посетите &lt;TECHNOLOGY&gt;торговца технологиями&lt;&gt;.&#xA;Исследователи специализируются на улучшениях экзокостюма, звездолета, мультитула и вездехода.
                                -- Substantial &lt;TECHNOLOGY&gt;Nanites &lt;&gt; accumulated&#xA;Use &lt;TECHNOLOGY&gt;Nanites&lt;&gt; to purchase &lt;SPECIAL&gt;Pre-Built Upgrades&lt;&gt;&#xA;Visit a &lt;TECHNOLOGY&gt;Technology Merchant&lt;&gt;&#xA;Researchers specialise in Exosuit, Starship, Multi-Tool and Exocraft upgrades
                                { "Russian", "Вы накопили достаточно &lt;TECHNOLOGY&gt;нанитов&lt;&gt;&#xA;Потратьте &lt;TECHNOLOGY&gt;наниты&lt;&gt; на &lt;SPECIAL&gt;готовые улучшения&lt;&gt;&#xA;Посетите &lt;TECHNOLOGY&gt;торговца технологиями&lt;&gt; на &lt;COMMODITY&gt;космической станции&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NEXUS1_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Исследуйте &lt;SPECIAL&gt;Космическую Аномалию&lt;&gt;.&#xA;Посетите великого аналитика &lt;STELLAR&gt;Гелиоса&lt;&gt;.&#xA;Каждый день Гелиос будет просить вас достать данные нового типа.
                                -- Explore the &lt;SPECIAL&gt;Space Anomaly&lt;&gt;&#xA;Visit &lt;STELLAR&gt;Helios&lt;&gt;, the grand analyst&#xA;Helios will request new data types each day
                                { "Russian", "Исследуйте &lt;SPECIAL&gt;Космическую Аномалию&lt;&gt;&#xA;Посетите великого аналитика &lt;STELLAR&gt;Гелиоса&lt;&gt;&#xA;Каждый день Гелиос будет просить найти что-то новое" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NEXUS1_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Посетите &lt;TECHNOLOGY&gt;исследователя технологий&lt;&gt;, например, &lt;STELLAR&gt;Селену&lt;&gt;.&#xA;Исследователи умеют создавать новые чертежи из &lt;TECHNOLOGY&gt;нанитов&lt;&gt;.
                                -- Visit a &lt;TECHNOLOGY&gt;Technology Researcher&lt;&gt;, such as &lt;STELLAR&gt;Selene&lt;&gt;&#xA;Researchers will create new blueprints from &lt;TECHNOLOGY&gt;Nanites&lt;&gt;
                                { "Russian", "Посетите &lt;TECHNOLOGY&gt;исследователя технологий&lt;&gt;, например, &lt;STELLAR&gt;Селену&lt;&gt;&#xA;Исследователи умеют создавать новые чертежи из &lt;TECHNOLOGY&gt;нанитов&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NEXUS1_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Посетите &lt;STELLAR&gt;станцию строительных исследований&lt;&gt;.&#xA;Откройте множество новых чертежей для базы.&#xA;Покупайте новые чертежи для базы, расплачиваясь за них &lt;TECHNOLOGY&gt;извлеченными технологиями&lt;&gt;.
                                -- Visit the &lt;STELLAR&gt;Construction Research Station&lt;&gt;&#xA;Unlock a much wider range of base blueprints&#xA;Purchase new base blueprints with &lt;TECHNOLOGY&gt;Salvaged Technology&lt;&gt;
                                { "Russian", "Посетите &lt;STELLAR&gt;станцию строительных исследований&lt;&gt;&#xA;Изучите всевозможные чертежи для базы&#xA;Покупайте чертежи для базы за &lt;TECHNOLOGY&gt;извлеченные данные&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NEXUS1_MSG3A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Исследуйте &lt;SPECIAL&gt;Космическую Аномалию&lt;&gt;.&#xA;Вернитесь к &lt;STELLAR&gt;Нада&lt;&gt;.
                                { "Russian", "Исследуйте &lt;SPECIAL&gt;Космическую Аномалию&lt;&gt;&#xA;Вернитесь к &lt;STELLAR&gt;Нада&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NEXUS1_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Продолжайте поиски &lt;STELLAR&gt;Артемиды&lt;&gt;.&#xA;Нада и Поло встретятся с вами и поделятся всем, что им удалось выяснить.&#xA;Выберите пункт «Одна среди звезд» в журнале заданий (&lt;IMG&gt;OPTIONS&lt;&gt;).
                                { "Russian", "Продолжайте поиски &lt;STELLAR&gt;Артемиды&lt;&gt;&#xA;Нада и Поло встретятся с вами и поделятся всем, что им удалось выяснить&#xA;Выберите задание &lt;STELLAR&gt;Одна среди звёзд&lt;&gt; в журнале (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NEXUS_DEFAULT_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Исследуйте галактику так, как вы того пожелаете.&#xA;Нада, Поло и другие странники на борту &lt;SPECIAL&gt;Космической Аномалии&lt;&gt; могут вам помочь.&#xA;Находясь в космосе, вызовите &lt;SPECIAL&gt;Аномалию&lt;&gt; через быстрое меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                { "Russian", "Исследуйте галактику так, как вы того пожелаете&#xA;Нада, Поло и другие странники на &lt;SPECIAL&gt;Космической Аномалии&lt;&gt; помогут вам&#xA;Находясь в космосе, вызовите &lt;SPECIAL&gt;Аномалию&lt;&gt;&#xA;из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NEXUS_DEFAULT_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поговорите с Поло и другими существами на борту Аномалии.&#xA;Поло владеет координатами &lt;SPECIAL&gt;черных дыр&lt;&gt; и &lt;FUEL&gt;станций Атласа&lt;&gt;.&#xA;Странники &lt;STELLAR&gt;Гелиос&lt;&gt; и &lt;STELLAR&gt;Арес&lt;&gt; готовы поделиться с вами своими &lt;TECHNOLOGY&gt;нанитами&lt;&gt;.
                                { "Russian", "Поговорите с Поло и другими существами на Аномалии&#xA;Поло владеет координатами &lt;SPECIAL&gt;черных дыр&lt;&gt; и &lt;FUEL&gt;станций Атласа&lt;&gt;.&#xA;Странники &lt;STELLAR&gt;Гелиос&lt;&gt; и &lt;STELLAR&gt;Арес&lt;&gt; готовы поделиться с вами своими &lt;TECHNOLOGY&gt;нанитами&lt;&gt;." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NEXUS_DEFAULT_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поговорите с &lt;STELLAR&gt;Нада&lt;&gt; и &lt;STELLAR&gt;Поло&lt;&gt;.
                                { "Russian", "Поговорите с &lt;STELLAR&gt;Нада&lt;&gt; и &lt;STELLAR&gt;Поло&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NEXUS2_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Расскажите Нада новости об Артемиде.&#xA;Находясь в космосе, вызовите &lt;SPECIAL&gt;Аномалию&lt;&gt; через быстрое меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                { "Russian", "Расскажите Нада новости об Артемиде&#xA;Находясь в космосе, вызовите &lt;SPECIAL&gt;Аномалию&lt;&gt;&#xA;из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NEXUS2_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Продолжайте помогать Артемиде&lt;&gt;.&#xA;Поло владеет координатами &lt;SPECIAL&gt;черных дыр&lt;&gt; и &lt;FUEL&gt;станций Атласа&lt;&gt;.&#xA;Странники &lt;STELLAR&gt;Гелиос&lt;&gt; и &lt;STELLAR&gt;Арес&lt;&gt; снабжают вас &lt;TECHNOLOGY&gt;нанитами&lt;&gt;.&#xA;Смените активное задание в журнале (&lt;IMG&gt;OPTIONS&lt;&gt;).
                                -- &lt;STELLAR&gt;Continue to help Artemis&lt;&gt;&#xA;Polo holds coordinates for &lt;SPECIAL&gt;Black Holes&lt;&gt; and &lt;FUEL&gt;Atlas Stations&lt;&gt;&#xA;Travellers &lt;STELLAR&gt;Helios&lt;&gt; and &lt;STELLAR&gt;Ares&lt;&gt; supply &lt;TECHNOLOGY&gt;Nanites&lt;&gt;&#xA;Change active mission in the Log (&lt;IMG&gt;OPTIONS&lt;&gt;)
                                { "Russian", "&lt;STELLAR&gt;Продолжайте помогать Артемиде&lt;&gt;&#xA;Поло владеет координатами &lt;SPECIAL&gt;черных дыр&lt;&gt; и &lt;FUEL&gt;станций Атласа&lt;&gt;&#xA;Странники &lt;STELLAR&gt;Гелиос&lt;&gt; и &lt;STELLAR&gt;Арес&lt;&gt; дают &lt;TECHNOLOGY&gt;наниты&lt;&gt;&#xA;Смените активное задание в журнале (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NEXUS3_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Расскажите Нада о том, что сигнал Артемиды пропал.&#xA;Находясь в космосе, вызовите &lt;SPECIAL&gt;Аномалию&lt;&gt; через быстрое меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                { "Russian", "Расскажите Нада о том, что сигнал Артемиды пропал&#xA;Находясь в космосе, вызовите &lt;SPECIAL&gt;Аномалию&lt;&gt;&#xA;из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NEXUS3_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Ищите Артемиду и Аполлона&lt;&gt;.&#xA;Поло владеет координатами &lt;SPECIAL&gt;черных дыр&lt;&gt; и &lt;FUEL&gt;станций Атласа&lt;&gt;.&#xA;Странники &lt;STELLAR&gt;Гелиос&lt;&gt; и &lt;STELLAR&gt;Арес&lt;&gt; снабжают вас &lt;TECHNOLOGY&gt;нанитами&lt;&gt;.&#xA;Смените активное задание в журнале (&lt;IMG&gt;OPTIONS&lt;&gt;).
                                -- &lt;STELLAR&gt;Search for Artemis &amp; Apollo&lt;&gt;&#xA;Polo holds coordinates for &lt;SPECIAL&gt;Black Holes&lt;&gt; and &lt;FUEL&gt;Atlas Stations&lt;&gt;&#xA;Travellers &lt;STELLAR&gt;Helios&lt;&gt; and &lt;STELLAR&gt;Ares&lt;&gt; supply &lt;TECHNOLOGY&gt;Nanites&lt;&gt;&#xA;Change active mission in the Log (&lt;IMG&gt;OPTIONS&lt;&gt;)
                                { "Russian", "&lt;STELLAR&gt;Найдите Артемиду и Аполлона&lt;&gt;&#xA;Поло владеет координатами &lt;SPECIAL&gt;черных дыр&lt;&gt; и &lt;FUEL&gt;станций Атласа&lt;&gt;&#xA;Странники &lt;STELLAR&gt;Гелиос&lt;&gt; и &lt;STELLAR&gt;Арес&lt;&gt; дают &lt;TECHNOLOGY&gt;наниты&lt;&gt;&#xA;Смените активное задание в журнале (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NEXUS4_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Расскажите Нада о плане Аполлона.&#xA;Находясь в космосе, вызовите &lt;SPECIAL&gt;Аномалию&lt;&gt; через быстрое меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                { "Russian", "Расскажите Нада о плане Аполлона&#xA;Находясь в космосе, вызовите &lt;SPECIAL&gt;Аномалию&lt;&gt;&#xA;из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NEXUS4_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Продолжайте следовать плану Аполлона&lt;&gt;.&#xA;Поло владеет координатами &lt;SPECIAL&gt;черных дыр&lt;&gt; и &lt;FUEL&gt;станций Атласа&lt;&gt;.&#xA;Странники &lt;STELLAR&gt;Гелиос&lt;&gt; и &lt;STELLAR&gt;Арес&lt;&gt; снабжают вас &lt;TECHNOLOGY&gt;нанитами&lt;&gt;.&#xA;Смените активное задание в журнале (&lt;IMG&gt;OPTIONS&lt;&gt;).
                                { "Russian", "&lt;STELLAR&gt;Продолжайте следовать плану Аполлона&lt;&gt;&#xA;Поло владеет координатами &lt;SPECIAL&gt;черных дыр&lt;&gt; и &lt;FUEL&gt;станций Атласа&lt;&gt;&#xA;Странники &lt;STELLAR&gt;Гелиос&lt;&gt; и &lt;STELLAR&gt;Арес&lt;&gt; дают &lt;TECHNOLOGY&gt;наниты&lt;&gt;&#xA;Смените активное задание в журнале (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NEXUS5_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Расскажите Нада о порталах.&#xA;Находясь в космосе, вызовите &lt;SPECIAL&gt;Аномалию&lt;&gt; через быстрое меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                { "Russian", "Расскажите Нада о порталах&#xA;Находясь в космосе, вызовите &lt;SPECIAL&gt;Аномалию&lt;&gt;&#xA;из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NEXUS5_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Найдите способ помочь Артемиде&lt;&gt;.&#xA;Поло владеет координатами &lt;SPECIAL&gt;черных дыр&lt;&gt; и &lt;FUEL&gt;станций Атласа&lt;&gt;.&#xA;Странники &lt;STELLAR&gt;Гелиос&lt;&gt; и &lt;STELLAR&gt;Арес&lt;&gt; снабжают вас &lt;TECHNOLOGY&gt;нанитами&lt;&gt;.&#xA;Смените активное задание в журнале (&lt;IMG&gt;OPTIONS&lt;&gt;).
                                { "Russian", "&lt;STELLAR&gt;Найдите способ помочь Артемиде&lt;&gt;&#xA;Поло владеет координатами &lt;SPECIAL&gt;черных дыр&lt;&gt; и &lt;FUEL&gt;станций Атласа&lt;&gt;&#xA;Странники &lt;STELLAR&gt;Гелиос&lt;&gt; и &lt;STELLAR&gt;Арес&lt;&gt; дают &lt;TECHNOLOGY&gt;наниты&lt;&gt;&#xA;Смените активное задание в журнале (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NEXUS6_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Расскажите Нада, что -пусто- здесь.&#xA;Находясь в космосе, вызовите &lt;SPECIAL&gt;Аномалию&lt;&gt; через быстрое меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                -- Report the appearance of -null- to Nada&#xA;In space, summon the &lt;SPECIAL&gt;Anomaly&lt;&gt; from the Quick Menu (&lt;IMG&gt;QUICK_MENU&lt;&gt;)
                                { "Russian", "Расскажите Нада о появлении -пусто-&#xA;Находясь в космосе, вызовите &lt;SPECIAL&gt;Аномалию&lt;&gt;&#xA;из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NEXUS6_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Продолжайте следовать плану существа&lt;&gt;.&#xA;Поло владеет координатами &lt;SPECIAL&gt;черных дыр&lt;&gt; и &lt;FUEL&gt;станций Атласа&lt;&gt;.&#xA;Странники &lt;STELLAR&gt;Гелиос&lt;&gt; и &lt;STELLAR&gt;Арес&lt;&gt; снабжают вас &lt;TECHNOLOGY&gt;нанитами&lt;&gt;.&#xA;Смените активное задание в журнале (&lt;IMG&gt;OPTIONS&lt;&gt;).
                                -- &lt;STELLAR&gt;Continue with null's plan&lt;&gt;&#xA;Polo holds coordinates for &lt;SPECIAL&gt;Black Holes&lt;&gt; and &lt;FUEL&gt;Atlas Stations&lt;&gt;&#xA;Travellers &lt;STELLAR&gt;Helios&lt;&gt; and &lt;STELLAR&gt;Ares&lt;&gt; supply &lt;TECHNOLOGY&gt;Nanites&lt;&gt;&#xA;Change active mission in the Log (&lt;IMG&gt;OPTIONS&lt;&gt;)
                                { "Russian", "&lt;STELLAR&gt;Продолжайте следовать плану -пусто-&lt;&gt;&#xA;Поло владеет координатами &lt;SPECIAL&gt;черных дыр&lt;&gt; и &lt;FUEL&gt;станций Атласа&lt;&gt;&#xA;Странники &lt;STELLAR&gt;Гелиос&lt;&gt; и &lt;STELLAR&gt;Арес&lt;&gt; дают &lt;TECHNOLOGY&gt;наниты&lt;&gt;&#xA;Смените активное задание в журнале (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NEXUS6_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поговорите с Нада и Поло, если пожелаете.&#xA;Вернитесь в космос, чтобы продолжить.&#xA;Смените активное задание в журнале (&lt;IMG&gt;OPTIONS&lt;&gt;).
                                { "Russian", "Поговорите с Нада и Поло, если пожелаете&#xA;Вернитесь в космос, чтобы продолжить&#xA;Смените активное задание в журнале (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NEXUS7_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Расскажите Нада новости об Аполлоне.&#xA;Находясь в космосе, вызовите &lt;SPECIAL&gt;Аномалию&lt;&gt; через быстрое меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                { "Russian", "Расскажите Нада новости об Аполлоне&#xA;Находясь в космосе, вызовите &lt;SPECIAL&gt;Аномалию&lt;&gt;&#xA;из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NEXUS7_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Продолжайте собирать данные с существом -пусто-&lt;&gt;.&#xA;Поло владеет координатами &lt;SPECIAL&gt;черных дыр&lt;&gt; и &lt;FUEL&gt;станций Атласа&lt;&gt;.&#xA;Странники &lt;STELLAR&gt;Гелиос&lt;&gt; и &lt;STELLAR&gt;Арес&lt;&gt; снабжают вас &lt;TECHNOLOGY&gt;нанитами&lt;&gt;.&#xA;Смените активное задание в журнале (&lt;IMG&gt;OPTIONS&lt;&gt;).
                                -- &lt;STELLAR&gt;Continue investigating with -null-&lt;&gt;&#xA;Polo holds coordinates for &lt;SPECIAL&gt;Black Holes&lt;&gt; and &lt;FUEL&gt;Atlas Stations&lt;&gt;&#xA;Travellers &lt;STELLAR&gt;Helios&lt;&gt; and &lt;STELLAR&gt;Ares&lt;&gt; supply &lt;TECHNOLOGY&gt;Nanites&lt;&gt;&#xA;Change active mission in the Log (&lt;IMG&gt;OPTIONS&lt;&gt;)
                                { "Russian", "&lt;STELLAR&gt;Продолжайте расследование вместе с -пусто-&lt;&gt;&#xA;Поло владеет координатами &lt;SPECIAL&gt;черных дыр&lt;&gt; и &lt;FUEL&gt;станций Атласа&lt;&gt;&#xA;Странники &lt;STELLAR&gt;Гелиос&lt;&gt; и &lt;STELLAR&gt;Арес&lt;&gt; дают &lt;TECHNOLOGY&gt;наниты&lt;&gt;&#xA;Смените активное задание в журнале (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NEXUS8_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Расскажите Нада о печальной судьбе Артемиды.&#xA;Находясь в космосе, вызовите &lt;SPECIAL&gt;Аномалию&lt;&gt; через быстрое меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                { "Russian", "Расскажите Нада о печальной судьбе Артемиды&#xA;Находясь в космосе, вызовите &lt;SPECIAL&gt;Аномалию&lt;&gt;&#xA;из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NEXUS8_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Продолжайте собирать данные с существом -пусто-&lt;&gt;.&#xA;Поло владеет координатами &lt;SPECIAL&gt;черных дыр&lt;&gt; и &lt;FUEL&gt;станций Атласа&lt;&gt;.&#xA;Странники &lt;STELLAR&gt;Гелиос&lt;&gt; и &lt;STELLAR&gt;Арес&lt;&gt; снабжают вас &lt;TECHNOLOGY&gt;нанитами&lt;&gt;.&#xA;Смените активное задание в журнале (&lt;IMG&gt;OPTIONS&lt;&gt;).
                                { "Russian", "&lt;STELLAR&gt;Продолжайте расследование вместе с -пусто-&lt;&gt;&#xA;Поло владеет координатами &lt;SPECIAL&gt;черных дыр&lt;&gt; и &lt;FUEL&gt;станций Атласа&lt;&gt;&#xA;Странники &lt;STELLAR&gt;Гелиос&lt;&gt; и &lt;STELLAR&gt;Арес&lt;&gt; дают &lt;TECHNOLOGY&gt;наниты&lt;&gt;&#xA;Смените активное задание в журнале (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NEXUS9_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Расскажите Нада о плане существа.&#xA;Находясь в космосе, вызовите &lt;SPECIAL&gt;Аномалию&lt;&gt; через быстрое меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                -- Share news of null's plan with Nada&#xA;In space, summon the &lt;SPECIAL&gt;Anomaly&lt;&gt; from the Quick Menu (&lt;IMG&gt;QUICK_MENU&lt;&gt;)
                                { "Russian", "Поделитесь новостями о плане -пусто- с Нада&#xA;Находясь в космосе, вызовите &lt;SPECIAL&gt;Аномалию&lt;&gt;&#xA;из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NEXUS9_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Вы и -пусто- должны изучить вай’кинов&lt;&gt;.&#xA;Поло владеет координатами &lt;SPECIAL&gt;черных дыр&lt;&gt; и &lt;FUEL&gt;станций Атласа&lt;&gt;.&#xA;Странники &lt;STELLAR&gt;Гелиос&lt;&gt; и &lt;STELLAR&gt;Арес&lt;&gt; снабжают вас &lt;TECHNOLOGY&gt;нанитами&lt;&gt;.&#xA;Смените активное задание в журнале (&lt;IMG&gt;OPTIONS&lt;&gt;).
                                -- &lt;STELLAR&gt;Investigate the Vy'keen with -null-&lt;&gt;&#xA;Polo holds coordinates for &lt;SPECIAL&gt;Black Holes&lt;&gt; and &lt;FUEL&gt;Atlas Stations&lt;&gt;&#xA;Travellers &lt;STELLAR&gt;Helios&lt;&gt; and &lt;STELLAR&gt;Ares&lt;&gt; supply &lt;TECHNOLOGY&gt;Nanites&lt;&gt;&#xA;Change active mission in the Log (&lt;IMG&gt;OPTIONS&lt;&gt;)
                                { "Russian", "&lt;STELLAR&gt;Изучите вай’кинов вместе с -пусто-&lt;&gt;&#xA;Поло владеет координатами &lt;SPECIAL&gt;черных дыр&lt;&gt; и &lt;FUEL&gt;станций Атласа&lt;&gt;&#xA;Странники &lt;STELLAR&gt;Гелиос&lt;&gt; и &lt;STELLAR&gt;Арес&lt;&gt; дают &lt;TECHNOLOGY&gt;наниты&lt;&gt;&#xA;Смените активное задание в журнале (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NEXUS10_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поделитесь с Нада открытием о вай’кинах.&#xA;Находясь в космосе, вызовите &lt;SPECIAL&gt;Аномалию&lt;&gt; через быстрое меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                { "Russian", "Поделитесь с Нада открытием о вай’кинах&#xA;Находясь в космосе, вызовите &lt;SPECIAL&gt;Аномалию&lt;&gt;&#xA;из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NEXUS10_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Вы и -пусто- должны изучить корваксов&lt;&gt;.&#xA;Поло владеет координатами &lt;SPECIAL&gt;черных дыр&lt;&gt; и &lt;FUEL&gt;станций Атласа&lt;&gt;.&#xA;Странники &lt;STELLAR&gt;Гелиос&lt;&gt; и &lt;STELLAR&gt;Арес&lt;&gt; снабжают вас &lt;TECHNOLOGY&gt;нанитами&lt;&gt;.&#xA;Смените активное задание в журнале (&lt;IMG&gt;OPTIONS&lt;&gt;).
                                { "Russian", "&lt;STELLAR&gt;Изучите корваксов вместе с -пусто-&lt;&gt;&#xA;Поло владеет координатами &lt;SPECIAL&gt;черных дыр&lt;&gt; и &lt;FUEL&gt;станций Атласа&lt;&gt;&#xA;Странники &lt;STELLAR&gt;Гелиос&lt;&gt; и &lt;STELLAR&gt;Арес&lt;&gt; дают &lt;TECHNOLOGY&gt;наниты&lt;&gt;&#xA;Смените активное задание в журнале (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NEXUS11_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поделитесь с Нада открытием о корваксах.&#xA;Находясь в космосе, вызовите &lt;SPECIAL&gt;Аномалию&lt;&gt; через быстрое меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                { "Russian", "Поделитесь с Нада открытием о корваксах&#xA;Находясь в космосе, вызовите &lt;SPECIAL&gt;Аномалию&lt;&gt;&#xA;из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NEXUS11_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Вы и -пусто- должны изучить геков&lt;&gt;.&#xA;Поло владеет координатами &lt;SPECIAL&gt;черных дыр&lt;&gt; и &lt;FUEL&gt;станций Атласа&lt;&gt;.&#xA;Странники &lt;STELLAR&gt;Гелиос&lt;&gt; и &lt;STELLAR&gt;Арес&lt;&gt; снабжают вас &lt;TECHNOLOGY&gt;нанитами&lt;&gt;.&#xA;Смените активное задание в журнале (&lt;IMG&gt;OPTIONS&lt;&gt;).
                                { "Russian", "&lt;STELLAR&gt;Изучите геков вместе с -пусто-&lt;&gt;&#xA;Поло владеет координатами &lt;SPECIAL&gt;черных дыр&lt;&gt; и &lt;FUEL&gt;станций Атласа&lt;&gt;&#xA;Странники &lt;STELLAR&gt;Гелиос&lt;&gt; и &lt;STELLAR&gt;Арес&lt;&gt; дают &lt;TECHNOLOGY&gt;наниты&lt;&gt;&#xA;Смените активное задание в журнале (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NEXUS12_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Расскажите Нада о том, что хочет сделать -пусто-.&#xA;Находясь в космосе, вызовите &lt;SPECIAL&gt;Аномалию&lt;&gt; через быстрое меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                -- Inform Nada of null's plans&#xA;In space, summon the &lt;SPECIAL&gt;Anomaly&lt;&gt; from the Quick Menu (&lt;IMG&gt;QUICK_MENU&lt;&gt;)
                                { "Russian", "Сообщите Нада о плане -пусто-&#xA;Находясь в космосе, вызовите &lt;SPECIAL&gt;Аномалию&lt;&gt;&#xA;из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NEXUS12_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Ищите Атлас&lt;&gt;.&#xA;Поло владеет координатами &lt;SPECIAL&gt;черных дыр&lt;&gt; и &lt;FUEL&gt;станций Атласа&lt;&gt;.&#xA;Странники &lt;STELLAR&gt;Гелиос&lt;&gt; и &lt;STELLAR&gt;Арес&lt;&gt; снабжают вас &lt;TECHNOLOGY&gt;нанитами&lt;&gt;.&#xA;Смените активное задание в журнале (&lt;IMG&gt;OPTIONS&lt;&gt;).
                                -- &lt;STELLAR&gt;Seek the Atlas&lt;&gt;&#xA;Polo holds coordinates for &lt;SPECIAL&gt;Black Holes&lt;&gt; and &lt;FUEL&gt;Atlas Stations&lt;&gt;&#xA;Travellers &lt;STELLAR&gt;Helios&lt;&gt; and &lt;STELLAR&gt;Ares&lt;&gt; supply &lt;TECHNOLOGY&gt;Nanites&lt;&gt;&#xA;Change active mission in the Log (&lt;IMG&gt;OPTIONS&lt;&gt;)
                                { "Russian", "&lt;STELLAR&gt;Ищите Атлас&lt;&gt;&#xA;Поло владеет координатами &lt;SPECIAL&gt;черных дыр&lt;&gt; и &lt;FUEL&gt;станций Атласа&lt;&gt;&#xA;Странники &lt;STELLAR&gt;Гелиос&lt;&gt; и &lt;STELLAR&gt;Арес&lt;&gt; дают &lt;TECHNOLOGY&gt;наниты&lt;&gt;&#xA;Смените активное задание в журнале (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NEXUS13_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Расскажите Нада о судьбе Атласа.&#xA;Находясь в космосе, вызовите &lt;SPECIAL&gt;Аномалию&lt;&gt; через быстрое меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                { "Russian", "Расскажите Нада о судьбе Атласа&#xA;Находясь в космосе, вызовите &lt;SPECIAL&gt;Аномалию&lt;&gt;&#xA;из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NEXUS13_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Перезагрузите симуляцию&lt;&gt;.&#xA;Поло владеет координатами &lt;SPECIAL&gt;черных дыр&lt;&gt; и &lt;FUEL&gt;станций Атласа&lt;&gt;.&#xA;Странники &lt;STELLAR&gt;Гелиос&lt;&gt; и &lt;STELLAR&gt;Арес&lt;&gt; снабжают вас &lt;TECHNOLOGY&gt;нанитами&lt;&gt;.&#xA;Смените активное задание в журнале (&lt;IMG&gt;OPTIONS&lt;&gt;).
                                { "Russian", "&lt;STELLAR&gt;Перезагрузите симуляцию&lt;&gt;&#xA;Поло владеет координатами &lt;SPECIAL&gt;черных дыр&lt;&gt; и &lt;FUEL&gt;станций Атласа&lt;&gt;&#xA;Странники &lt;STELLAR&gt;Гелиос&lt;&gt; и &lt;STELLAR&gt;Арес&lt;&gt; дают &lt;TECHNOLOGY&gt;наниты&lt;&gt;&#xA;Смените активное задание в журнале (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NEXUS14_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Навестите старых друзей.&#xA;Находясь в космосе, вызовите &lt;SPECIAL&gt;Аномалию&lt;&gt; через быстрое меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                { "Russian", "Навестите старых друзей&#xA;Находясь в космосе, вызовите &lt;SPECIAL&gt;Аномалию&lt;&gt;&#xA;из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NEXUS_SEASON_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Попадите на &lt;SPECIAL&gt;Космическую Аномалию&lt;&gt;, чтобы получить доступ к улучшениям и чертежам.&#xA;Отправьтесь в космос и вызовите &lt;SPECIAL&gt;Аномалию&lt;&gt;.
                                -- Board the &lt;SPECIAL&gt;Space Anomaly&lt;&gt; to access upgrades and blueprints&#xA;Fly to space to summon the &lt;SPECIAL&gt;Anomaly&lt;&gt;
                                { "Russian", "Посетите &lt;SPECIAL&gt;Космическую Аномалию&lt;&gt; ради улучшений и чертежей&#xA;Отправьтесь в космос и вызовите &lt;SPECIAL&gt;Аномалию&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NEXUS_SEASON_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Высадитесь на &lt;SPECIAL&gt;Космическую Аномалию&lt;&gt;, чтобы получить доступ к улучшениям и чертежам.&#xA;Находясь в космосе, вызовите &lt;SPECIAL&gt;Аномалию&lt;&gt; через быстрое меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                { "Russian", "Посетите &lt;SPECIAL&gt;Космическую Аномалию&lt;&gt; ради улучшений и чертежей&#xA;Находясь в космосе, вызовите &lt;SPECIAL&gt;Аномалию&lt;&gt;&#xA;из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NEXUS14_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Исследуйте бесчисленные реальности&lt;&gt;.&#xA;Поло владеет координатами &lt;SPECIAL&gt;черных дыр&lt;&gt; и &lt;FUEL&gt;станций Атласа&lt;&gt;.&#xA;Странники &lt;STELLAR&gt;Гелиос&lt;&gt; и &lt;STELLAR&gt;Арес&lt;&gt; снабжают вас &lt;TECHNOLOGY&gt;нанитами&lt;&gt;.&#xA;Смените активное задание в журнале (&lt;IMG&gt;OPTIONS&lt;&gt;).
                                -- &lt;STELLAR&gt;Explore countless realities&lt;&gt;&#xA;Polo holds coordinates for &lt;SPECIAL&gt;Black Holes&lt;&gt; and &lt;FUEL&gt;Atlas Stations&lt;&gt;&#xA;Travellers &lt;STELLAR&gt;Helios&lt;&gt; and &lt;STELLAR&gt;Ares&lt;&gt; supply &lt;TECHNOLOGY&gt;Nanites&lt;&gt;&#xA;Change active mission in the Log (&lt;IMG&gt;OPTIONS&lt;&gt;)
                                { "Russian", "&lt;STELLAR&gt;Исследуйте бесчисленные реальности&lt;&gt;&#xA;Поло владеет координатами &lt;SPECIAL&gt;черных дыр&lt;&gt; и &lt;FUEL&gt;станций Атласа&lt;&gt;&#xA;Странники &lt;STELLAR&gt;Гелиос&lt;&gt; и &lt;STELLAR&gt;Арес&lt;&gt; дают &lt;TECHNOLOGY&gt;наниты&lt;&gt;&#xA;Смените активное задание в журнале (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NEXUS15_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Навестите старых друзей.&#xA;Находясь в космосе, вызовите &lt;SPECIAL&gt;Аномалию&lt;&gt; через быстрое меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                { "Russian", "Навестите старых друзей&#xA;Находясь в космосе, вызовите &lt;SPECIAL&gt;Аномалию&lt;&gt;&#xA;из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NEXUS15_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Наслаждайтесь реальностью, пока есть время&lt;&gt;.&#xA;Поло владеет координатами &lt;SPECIAL&gt;черных дыр&lt;&gt; и &lt;FUEL&gt;станций Атласа&lt;&gt;.&#xA;Странники &lt;STELLAR&gt;Гелиос&lt;&gt; и &lt;STELLAR&gt;Арес&lt;&gt; снабжают вас &lt;TECHNOLOGY&gt;нанитами&lt;&gt;.&#xA;Смените активное задание в журнале (&lt;IMG&gt;OPTIONS&lt;&gt;).
                                { "Russian", "&lt;STELLAR&gt;Наслаждайтесь реальностью, пока есть время&lt;&gt;&#xA;Поло владеет координатами &lt;SPECIAL&gt;черных дыр&lt;&gt; и &lt;FUEL&gt;станций Атласа&lt;&gt;&#xA;Странники &lt;STELLAR&gt;Гелиос&lt;&gt; и &lt;STELLAR&gt;Арес&lt;&gt; дают &lt;TECHNOLOGY&gt;наниты&lt;&gt;&#xA;Смените активное задание в журнале (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                            }
                        },
                        --#endregion

                        --#region UI_VR_MOVEMENT_DETAIL_LINE
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_VR_MOVEMENT_DETAIL_LINE1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Продолжайте&lt;&gt; осваивать перемещение телепортацией.
                                { "Russian", "&lt;STELLAR&gt;Продолжайте&lt;&gt; осваивать перемещение телепортацией" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_VR_MOVEMENT_DETAIL_LINE2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Или выберите вариант &lt;STELLAR&gt;плавного&lt;&gt; передвижения в меню настроек (&lt;IMG&gt;OPTIONS&lt;&gt;).
                                { "Russian", "Или используйте &lt;STELLAR&gt;плавное&lt;&gt; передвижение в меню настроек (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_VR_MOVEMENT_DETAIL_LINE3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Чтобы в любой момент центрировать положение в VR, удерживайте &lt;IMG&gt;HMD_CENTRE1&lt;&gt;
                                -- Recentre VR position at any time by holding &lt;IMG&gt;HMD_CENTRE1&lt;&gt;
                                { "Russian", "Удерживайте &lt;IMG&gt;HMD_CENTRE1&lt;&gt;, чтобы центрировать положение в VR" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_VR_MOVEMENT_DETAIL_LINE3_ALT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Чтобы в любой момент центрировать положение в VR, удерживайте &lt;IMG&gt;HMD_CENTRE1&lt;&gt; и &lt;IMG&gt;HMD_CENTRE2&lt;&gt;
                                -- Recentre VR position at any time by holding &lt;IMG&gt;HMD_CENTRE1&lt;&gt; and &lt;IMG&gt;HMD_CENTRE2&lt;&gt;
                                { "Russian", "Удерживайте &lt;IMG&gt;HMD_CENTRE1&lt;&gt; и &lt;IMG&gt;HMD_CENTRE2&lt;&gt;, чтобы центрировать положение в VR" },
                            }
                        },
                        --#endregion

                        --#region UI_FREIGHTER_DETAIL_LINE
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FREIGHTER_DETAIL_LINE1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Грузовые суда увеличивают &lt;STELLAR&gt;размер вашего инвентаря&lt;&gt;.
                                -- Freighters offer extra &lt;STELLAR&gt;Inventory Storage&lt;&gt;
                                { "Russian", "Грузовые суда имеют собственный &lt;STELLAR&gt;инвентарь&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FREIGHTER_DETAIL_LINE2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- В ангаре грузового судна можно содержать &lt;STELLAR&gt;дополнительные звездолеты&lt;&gt;.
                                -- &lt;STELLAR&gt;Additional Starships&lt;&gt; can be docked in the freighter's hangar
                                { "Russian", "В ангаре грузового судна могут быть &lt;STELLAR&gt;другие звездолёты&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FREIGHTER_DETAIL_LINE3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Можно отправлять &lt;STELLAR&gt;экспедиции&lt;&gt; и управлять ими с мостика.
                                -- Command &lt;STELLAR&gt;Expeditions&lt;&gt; from the bridge
                                { "Russian", "Управляйте &lt;STELLAR&gt;экспедициями&lt;&gt; с мостика" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FREIGHTER_DETAIL_LINE4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Постройте &lt;STELLAR&gt;базу&lt;&gt; на борту грузового судна.
                                -- Construct a &lt;STELLAR&gt;base&lt;&gt; aboard the freighter
                                { "Russian", "Постройте &lt;STELLAR&gt;базу&lt;&gt; на борту грузового судна" },
                            }
                        },
                        --#endregion

                        --#region UI_WORDS_DETAIL_LINE
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WORDS_DETAIL_LINE1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Общайтесь с &lt;COMMODITY&gt;инопланетными существами&lt;&gt; на планетах и космических станциях, чтобы научиться понимать их речь.
                                -- Speak with &lt;COMMODITY&gt;aliens&lt;&gt; on planets and Space Stations to learn their dialect
                                { "Russian", "Общайтесь с &lt;COMMODITY&gt;инопланетянами&lt;&gt; на планетах и космических станциях, чтобы изучить их язык" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WORDS_DETAIL_LINE2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Осваивайте новые слова, изучая &lt;SPECIAL&gt;древние руины&lt;&gt; и исторические объекты.
                                -- Learn words from &lt;SPECIAL&gt;ancient ruins&lt;&gt; and historical sites
                                { "Russian", "Осваивайте новые слова, изучая &lt;SPECIAL&gt;древние руины&lt;&gt; и исторические объекты" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WORDS_DETAIL_LINE3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Чтобы переводить разговоры с инопланетными формами жизни, установите &lt;TECHNOLOGY&gt;автоматический переводчик&lt;&gt; в своей экзокостюм.
                                -- Install an &lt;TECHNOLOGY&gt;Auto-Translator&lt;&gt; in the Exosuit to translate conversations
                                { "Russian", "Установите &lt;TECHNOLOGY&gt;автоматический переводчик&lt;&gt; в экзокостюм, чтобы переводить разговоры" },
                            }
                        },
                        --#endregion

                        --#region UI_FACTIONS_DETAIL_LINE
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FACTIONS_DETAIL_LINE1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Чтобы улучшить отношения:
                                { "Russian", "Чтобы улучшить отношения:" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FACTIONS_DETAIL_LINE2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Выполняйте задания с &lt;COMMODITY&gt;доски заданий&lt;&gt;.
                                -- Completing missions at the &lt;COMMODITY&gt;Mission Board&lt;&gt;
                                { "Russian", "Выполняйте задания с &lt;COMMODITY&gt;доски заданий&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FACTIONS_DETAIL_LINE3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Уничтожайте &lt;FUEL&gt;пиратов&lt;&gt; и &lt;TECHNOLOGY&gt;спасайте грузовые суда&lt;&gt;.
                                { "Russian", "Уничтожайте &lt;FUEL&gt;пиратов&lt;&gt; и &lt;TECHNOLOGY&gt;спасайте грузовые суда&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FACTIONS_DETAIL_LINE4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вручайте &lt;TRADEABLE&gt;подарки&lt;&gt; инопланетным формам жизни.
                                { "Russian", "Вручайте &lt;TRADEABLE&gt;подарки&lt;&gt; инопланетным формам жизни" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FACTIONS_DETAIL_LINE5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обыскивайте &lt;TECHNOLOGY&gt;здания на поверхности планет&lt;&gt; и другие интересные места.
                                -- Exploring &lt;TECHNOLOGY&gt;planetary buildings&lt;&gt; and other sites of interest...
                                { "Russian", "Обыскивайте &lt;TECHNOLOGY&gt;здания на планетах&lt;&gt; и другие интересные места" },
                            }
                        },
                        --#endregion

                        --#region UI_TECH_DETAIL_LINE
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TECH_DETAIL_LINE1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Чертежи — это всего лишь &lt;TECHNOLOGY&gt;схемы&lt;&gt;. Для завершения установки потребуются добыть определенные материалы.
                                -- Blueprints are &lt;TECHNOLOGY&gt;plans&lt;&gt;: the materials need to be gathered to complete installation
                                { "Russian", "Чертежи — это &lt;TECHNOLOGY&gt;схемы&lt;&gt;: для завершения установки потребуются всего лишь добыть материалы" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TECH_DETAIL_LINE2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Установите технологию, чтобы &lt;COMMODITY&gt;закрепить&lt;&gt; указатели местоположения ее компонентов.
                                -- Install a technology to &lt;COMMODITY&gt;pin&lt;&gt; directions to its components
                                { "Russian", "Установите технологию, чтобы &lt;COMMODITY&gt;прикрепить&lt;&gt; указатели к компонентам" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TECH_DETAIL_LINE3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Большинство чертежей — это &lt;STELLAR&gt;базовые технологии&lt;&gt;, открывающие доступ к новым возможностям.
                                -- Most blueprints are &lt;STELLAR&gt;core technologies&lt;&gt; that open up new abilities
                                { "Russian", "Большинство чертежей — это &lt;STELLAR&gt;базовые технологии&lt;&gt;, открывающие доступ к новым возможностям" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TECH_DETAIL_LINE4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Некоторые чертежи представляют собой &lt;TECHNOLOGY&gt;улучшения&lt;&gt; существующих технологий.
                                -- Some blueprints are &lt;TECHNOLOGY&gt;upgrades&lt;&gt; that improve existing tech
                                { "Russian", "Некоторые чертежи представляют собой &lt;TECHNOLOGY&gt;улучшения&lt;&gt; существующих технологий" },
                            }
                        },
                        --#endregion

                        --#region UI_UPGRADES_DETAIL_LINE
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_UPGRADES_DETAIL_LINE1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Модули улучшения сразу &lt;STELLAR&gt;готовы к использованию&lt;&gt;. Создавать такие улучшения не требуется.
                                -- Upgrade modules are &lt;STELLAR&gt;ready made&lt;&gt; and require no crafting
                                { "Russian", "Модули улучшения сразу &lt;STELLAR&gt;готовы к использованию﻿,&lt;&gt; их не требуется создавать" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_UPGRADES_DETAIL_LINE2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Используйте &lt;STELLAR&gt;наниты&lt;&gt; для покупки улучшений у &lt;TECHNOLOGY&gt;торговцев технологиями&lt;&gt; на космических станциях.
                                -- Use &lt;STELLAR&gt;nanites&lt;&gt; to buy upgrades from Space Station &lt;TECHNOLOGY&gt;Technology Merchants&lt;&gt;
                                { "Russian", "Покупайте улучшения у &lt;TECHNOLOGY&gt;торговцев технологиями&lt;&gt; на космических станциях за &lt;STELLAR&gt;наниты&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_UPGRADES_DETAIL_LINE3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Каждое улучшение уникально: заглядывайте на все станции, чтобы найти действительно &lt;SPECIAL&gt;редкие улучшения&lt;&gt;.
                                -- Each upgrade is unique: check every Space Station for &lt;SPECIAL&gt;rare upgrades&lt;&gt;
                                { "Russian", "Каждое улучшение уникально: заглядывайте на все станции, чтобы найти &lt;SPECIAL&gt;редкие улучшения&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_UPGRADES_DETAIL_LINE4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Каждая базовая технология может поддерживать &lt;TECHNOLOGY&gt;три&lt;&gt; модуля улучшения.
                                -- Every core technology can support &lt;TECHNOLOGY&gt;three&lt;&gt; upgrade modules
                                { "Russian", "Каждая базовая технология может поддерживать &lt;TECHNOLOGY&gt;три&lt;&gt; модуля улучшения" },
                            }
                        },
                        --#endregion

                        --#region UI_NEXUS_MP_DETAIL_LINE
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NEXUS_MP_DETAIL_LINE1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TRADEABLE&gt;Объединяйтесь&lt;&gt; с другими Странниками и получайте&lt;STELLAR&gt;большие награды&lt;&gt;.
                                -- &lt;TRADEABLE&gt;Cooperate&lt;&gt; with other Travellers to earn &lt;STELLAR&gt;large rewards&lt;&gt;
                                { "Russian", "&lt;TRADEABLE&gt;Объединяйтесь&lt;&gt; с другими Странниками и получайте &lt;STELLAR&gt;большие награды&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NEXUS_MP_DETAIL_LINE1_ALT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Выполняйте &lt;FUEL&gt;сложные задания&lt;&gt; ради &lt;STELLAR&gt;крупных наград&lt;&gt;.
                                -- Undertake &lt;FUEL&gt;challenging missions&lt;&gt; to earn &lt;STELLAR&gt;large rewards&lt;&gt;
                                { "Russian", "Выполняйте &lt;FUEL&gt;сложные задания&lt;&gt; ради &lt;STELLAR&gt;больших наград&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NEXUS_MP_DETAIL_LINE2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Для выполнения задания Аномалия будет периодически переносить вас в &lt;SPECIAL&gt;новые системы&lt;&gt;.
                                -- The Anomaly will often warp you to a &lt;SPECIAL&gt;new system&lt;&gt; for missions
                                { "Russian", "Аномалия будет часто переносить вас в &lt;SPECIAL&gt;новые системы&lt;&gt; при выполнении заданий" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NEXUS_MP_DETAIL_LINE3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Выполнив задание, вы &lt;STELLAR&gt;вернетесь в свою исходную систему&lt;&gt;.
                                -- You will be &lt;STELLAR&gt;returned to your previous system&lt;&gt; on mission completed
                                { "Russian", "Выполнив задание, вы &lt;STELLAR&gt;вернетесь в свою исходную систему&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NEXUS_MP_DETAIL_LINE4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Прогресс заданий &lt;STELLAR&gt;не сохраняется&lt;&gt;; их нужно выполнять за один заход.
                                -- Mission progress &lt;STELLAR&gt;is not saved&lt;&gt;; they must be completed in one session
                                { "Russian", "Прогресс заданий &lt;STELLAR&gt;не сохраняется&lt;&gt;; их нужно выполнять за один заход" },
                            }
                        },
                        --#endregion

                    }
                },
                { -- LANGUAGE/NMS_LOC6_RUSSIAN.MBIN
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_LOC6_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        --#region Разное
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ATLAS_BEACON_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Зафиксирован ретранслятор связи: &lt;FUEL&gt;А Т Л А С&lt;&gt;&#xA;Чтобы ответить, нажмите &lt;IMG&gt;QUICK_MENU&lt;&gt;.
                                -- Communication relay locked: &lt;FUEL&gt;A T L A S&lt;&gt;&#xA;Answer the Communicator by pressing &lt;IMG&gt;QUICK_MENU&lt;&gt;
                                { "Russian", "&lt;FUEL&gt;А Т Л А С&lt;&gt; на связи&#xA;Ответьте по коммуникатору из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        -- речь про слова Атласа
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ATLAS_WORD_KNOWN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Передачи Атласа полностью изучены
                                -- Atlas communications fully mapped
                                { "Russian", "Изучены все слова Атласа" },
                            }
                        },
                        --#endregion

                        --#region UI_.*_DETAIL_LINE
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PETFOOD_DETAIL_LINE1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Существ можно кормить напрямую или через &lt;TECHNOLOGY&gt;раздел «Существа» в быстром меню&lt;&gt; (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                -- Creatures can be fed directly, or via the &lt;TECHNOLOGY&gt;Creatures&lt;&gt; section of the Quick Menu (&lt;IMG&gt;QUICK_MENU&lt;&gt;)
                                { "Russian", "Существ можно кормить напрямую или из раздела &lt;TECHNOLOGY&gt;Существа&lt;&gt; в быстром меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PETFOOD_DETAIL_LINE2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Приманка, брошенная через быстрое меню, успокаивает &lt;FUEL&gt;хищников&lt;&gt; или других злых существ.
                                -- Bait thrown from the Quick Menu will calm &lt;FUEL&gt;predators&lt;&gt; or other angry creatures
                                { "Russian", "Приманка, брошенная из быстрого меню, успокаивает &lt;FUEL&gt;хищников&lt;&gt; или других злых существ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PETFOOD_DETAIL_LINE3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Накормите существо, чтобы заслужить его доверие. Это позволит &lt;STELLAR&gt;оседлать&lt;&gt; его или &lt;TRADEABLE&gt;собрать его ресурсы&lt;&gt;.
                                -- Feeding a creature gains their trust and allows them to be &lt;STELLAR&gt;mounted&lt;&gt; or &lt;TRADEABLE&gt;farmed&lt;&gt;
                                { "Russian", "Покормленое существо можно &lt;STELLAR&gt;оседлать&lt;&gt; или собрать у него &lt;TRADEABLE&gt;ресурсы&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PETFOOD_DETAIL_LINE4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Приютите&lt;&gt; существо, чтобы получить постоянного &lt;STELLAR&gt;питомца&lt;&gt;.
                                -- &lt;STELLAR&gt;Adopt&lt;&gt; a creature to gain a constant &lt;STELLAR&gt;animal companion&lt;&gt;
                                { "Russian", "&lt;STELLAR&gt;Приютите&lt;&gt; существо в качестве постоянного &lt;STELLAR&gt;питомца&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PETCARE_DETAIL_LINE1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Управлять питомцами можно через быстрое меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                -- Manage companions from the Quick Menu (&lt;IMG&gt;QUICK_MENU&lt;&gt;)
                                { "Russian", "Управляйте питомцами из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PETCARE_DETAIL_LINE2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Питомцев можно вызывать на планетах, где они помогут вам искать и собирать ресурсы.
                                -- Companions can be summoned to accompany you on planets, where they can help find and collect resources
                                { "Russian", "Питомцев можно вызывать на планетах, где они помогут найти и собрать ресурсы" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PETCARE_DETAIL_LINE3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вы сможете кормить, ласкать и настраивать существо, взаимодействуя с ним.
                                -- Feed, pet and customise your friend by interacting with them
                                { "Russian", "Кормите, ласкайте и настраивайте вашего друга при взаимодействии с ним" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PETCARE_DETAIL_LINE4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Ухоженные существа могут даже принести потомство!
                                -- Well nurtured companions may even lay eggs!
                                { "Russian", "Ухоженные существа могут даже принести потомство!" },
                            }
                        },
                        -- {
                        -- ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EGGCARE_DETAIL_LINE1" },
                        -- ["VALUE_CHANGE_TABLE"] = {
                        -- -- Взаимодействуйте с питомцем, чтобы тот отложил яйцо
                        -- -- Interact with your companion to induce laying
                        -- { "Russian", "Взаимодействуйте с питомцем, чтобы тот отложил яйцо" },
                        -- }
                        -- },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EGGCARE_DETAIL_LINE2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Когда зародыш сформируется, из яйца вылупится &lt;TRADEABLE&gt;новый питомец&lt;&gt;, который будет точно таким же, как его родитель...
                                -- When the egg is ready, it will hatch into a &lt;TRADEABLE&gt;new companion&lt;&gt; just like its parent...
                                { "Russian", "Когда из яйца вылупится &lt;TRADEABLE&gt;новый питомец&lt;&gt;, он будет похож на своего родителя..." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EGGCARE_DETAIL_LINE3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вы также можете воспользоваться &lt;TECHNOLOGY&gt;секвенсором яиц&lt;&gt; на борту &lt;SPECIAL&gt;Космической Аномалии&lt;&gt;, чтобы генетически модифицировать яйцо!
                                -- ...or you can visit the &lt;SPECIAL&gt;Space Anomaly&lt;&gt;'s &lt;TECHNOLOGY&gt;Egg Sequencer&lt;&gt; to genetically modify the egg!
                                { "Russian", "...или вы можете генетически модифицировать яйцо на &lt;SPECIAL&gt;Космической Аномалии&lt;&gt; в &lt;TECHNOLOGY&gt;секвенсоре яиц&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EGGCARE_DETAIL_LINE4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Экспериментируйте с &lt;TECHNOLOGY&gt;секвенсором яиц&lt;&gt; и выводите новых уникальных существ
                                -- Experiment with the &lt;TECHNOLOGY&gt;Egg Sequencer&lt;&gt; to breed unique new creatures
                                { "Russian", "Экспериментируйте с &lt;TECHNOLOGY&gt;секвенсором яиц&lt;&gt; и выводите новых уникальных существ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ABAND_DETAIL_LINE1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите &lt;STELLAR&gt;терминалы&lt;&gt; с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;.
                                -- Locate &lt;STELLAR&gt;Terminals&lt;&gt; with the &lt;TECHNOLOGY&gt;Analysis Visor&lt;&gt;
                                { "Russian", "Найдите &lt;STELLAR&gt;терминалы&lt;&gt; с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ABAND_DETAIL_LINE2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите данные с терминалов, чтобы узнать &lt;SPECIAL&gt;судьбу экипажа&lt;&gt;.
                                -- Collect data from Terminals to learn the &lt;SPECIAL&gt;fate of the crew&lt;&gt;
                                { "Russian", "Соберите данные с терминалов, чтобы узнать &lt;SPECIAL&gt;судьбу экипажа&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ABAND_DETAIL_LINE3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Используйте &lt;TECHNOLOGY&gt;сканер&lt;&gt;, чтобы выделить добычу в текущей комнате.
                                -- Use the &lt;TECHNOLOGY&gt;Scanner&lt;&gt; to highlight loot within the current room
                                { "Russian", "Используйте &lt;TECHNOLOGY&gt;сканер&lt;&gt;, чтобы выделить предметы" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ABAND_DETAIL_LINE4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Заберите ценную &lt;TECHNOLOGY&gt;технологию&lt;&gt; из &lt;STELLAR&gt;инженерной группы&lt;&gt;.
                                -- Claim highly-valuable &lt;TECHNOLOGY&gt;technology&lt;&gt; from the &lt;STELLAR&gt;Engineering Core&lt;&gt;
                                { "Russian", "Заберите ценную &lt;TECHNOLOGY&gt;технологию&lt;&gt; из &lt;STELLAR&gt;инженерной группы&lt;&gt;" },
                            }
                        },
                        --#endregion

                    }
                },
                { -- LANGUAGE/NMS_LOC7_RUSSIAN.MBIN
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_LOC7_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        --#region Разное
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_INVENTORY_TUT_OBJ2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Repair the drop pod to acquire a new inventory slot
                                -- Отремонтируйте капсулу, чтобы получить новую ячейку инвентаря.
                                { "Russian", "Выполните ремонт для получения ячейки инвентаря" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_INVENTORY_TUT_OBJ1_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Улучшите экзокостюм с помощью &lt;TECHNOLOGY&gt;капсулы&lt;&gt;, чтобы добавить ячейки инвентаря. Улучшения с помощью капсулы &lt;STELLAR&gt;бесплатны&lt;&gt;.&#xA;&#xA;Воспользуйтесь &lt;STELLAR&gt;картой улучшения экзокостюма&lt;&gt;, чтобы найти капсулу. Дополнительные карты улучшения можно приобрести у &lt;COMMODITY&gt;картографа космической станции&lt;&gt;.
                                -- Upgrade the Exosuit at a &lt;TECHNOLOGY&gt;Drop Pod&lt;&gt; to add inventory slots. Upgrades from a drop pod are &lt;STELLAR&gt;free&lt;&gt;&#xA;&#xA;Use your &lt;STELLAR&gt;Exosuit Upgrade Chart&lt;&gt; to locate a drop pod. Additional upgrade charts can be purchased from the &lt;COMMODITY&gt;Space Station Cartographer&lt;&gt;.
                                { "Russian", "Улучшите экзокостюм с помощью &lt;TECHNOLOGY&gt;капсулы&lt;&gt;, чтобы добавить ячейки инвентаря. Улучшения с помощью капсулы &lt;STELLAR&gt;бесплатны&lt;&gt;.&#xA;&#xA;Воспользуйтесь &lt;STELLAR&gt;картой улучшения экзокостюма&lt;&gt;, чтобы найти капсулу. Дополнительные карты можно приобрести у &lt;TRADEABLE&gt;картографа&lt;&gt; на &lt;COMMODITY&gt;космических станциях﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BASECOMP_SE_MAP_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Компьютерный архив базы &lt;STELLAR&gt;частично восстановлен&lt;&gt;.&#xA;Мгновенно вернуться на базу можно через &lt;TECHNOLOGY&gt;телепорт космической станции&lt;&gt;.&#xA;Как вариант, постройте новую базу с помощью &lt;TECHNOLOGY&gt;компьютера базы&lt;&gt;.
                                -- Base Computer archives partially &lt;STELLAR&gt;restored&lt;&gt;&#xA;Teleport back instantly using the &lt;TECHNOLOGY&gt;Space Station Teleporter&lt;&gt;&#xA;Or construct a new base using the &lt;TECHNOLOGY&gt;Base Computer&lt;&gt;
                                { "Russian", "Архивы компьютера базы частично &lt;STELLAR&gt;восстановлены&lt;&gt;&#xA;Вернитесь на базу с помощью &lt;TECHNOLOGY&gt;телепорта&lt;&gt; на космической станции&#xA;Как вариант, постройте новую базу с помощью &lt;TECHNOLOGY&gt;компьютера базы&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BASELOG_WORDS_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Архивы компьютера базы &lt;FUEL&gt;зашифрованы&lt;&gt;.&#xA;Для расшифровки введите слова &lt;STELLAR&gt;инопланетного языка&lt;&gt;.&#xA;Выучено новых инопланетных слов: %CURRENT%/%AMOUNT%
                                -- Base Computer archives &lt;FUEL&gt;encrypted&lt;&gt;&#xA;Decrypt records by inputting &lt;STELLAR&gt;alien language&lt;&gt;&#xA;Learn new alien words: %CURRENT%/%AMOUNT%
                                { "Russian", "Архивы компьютера базы &lt;FUEL&gt;зашифрованы&lt;&gt;&#xA;Для расшифровки введите &lt;STELLAR&gt;инопланетное слово&lt;&gt;&#xA;Выучите новые инопланетные слова: %CURRENT%/%AMOUNT%" },
                            }
                        },
                        --#endregion

                        --#region UI_CREATIVE.*MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CREATIVE_MSG1A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Собирайте ресурсы с помощью &lt;TECHNOLOGY&gt;расщепителя&lt;&gt;.&#xA;Удерживайте &lt;IMG&gt;ATTACK&lt;&gt;, чтобы добывать ресурсы.
                                { "Russian", "Собирайте ресурсы с помощью &lt;TECHNOLOGY&gt;расщепителя&lt;&gt;&#xA;Удерживайте &lt;IMG&gt;ATTACK&lt;&gt;, чтобы добывать ресурсы" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CREATIVE_MSG1B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt;, чтобы исследовать окружающую среду.&#xA;Удерживайте &lt;IMG&gt;AIM&lt;&gt;, чтобы его включить.
                                { "Russian", "Используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt;, чтобы исследовать окружающую среду&#xA;Удерживайте &lt;IMG&gt;AIM&lt;&gt;, чтобы его включить" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CREATIVE_MSG1C" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt;, чтобы исследовать окружающую среду.&#xA;Удерживайте &lt;IMG&gt;BINOCSCAN&lt;&gt;, чтобы проанализировать цель.&#xA;После сканирования вы сможете дать &lt;SPECIAL&gt;название&lt;&gt; своему открытию.
                                { "Russian", "Используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt;, чтобы исследовать окружающую среду&#xA;Удерживайте &lt;IMG&gt;BINOCSCAN&lt;&gt;, чтобы проанализировать цель&#xA;После сканирования вы сможете дать &lt;SPECIAL&gt;название&lt;&gt; своему открытию" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CREATIVE_MSG2A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt;, чтобы изменять ландшафт планеты.&#xA;Выберите его с помощью &lt;IMG&gt;CYCLEWEAPON&lt;&gt;.
                                { "Russian", "Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt;, чтобы изменять ландшафт планеты&#xA;Выберите его с помощью &lt;IMG&gt;CYCLEWEAPON&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CREATIVE_MSG2B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt;, чтобы изменять ландшафт планеты.&#xA;Активируйте его с помощью &lt;IMG&gt;ATTACK&lt;&gt;.&#xA;Воспользуйтесь &lt;IMG&gt;CYCLEWEAPON&lt;&gt;, чтобы снова переключиться на расщепитель.
                                { "Russian", "Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt;, чтобы изменять ландшафт планеты&#xA;Активируйте его с помощью &lt;IMG&gt;ATTACK&lt;&gt;&#xA;Воспользуйтесь &lt;IMG&gt;CYCLEWEAPON&lt;&gt;, чтобы снова переключиться на расщепитель" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CREATIVE_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;Звездолет&lt;&gt; позволяет быстро перемещаться в космосе.&#xA;Доберитесь до своего корабля и сядьте в кабину с помощью &lt;IMG&gt;INTERACT&lt;&gt;.
                                { "Russian", "&lt;TECHNOLOGY&gt;Звездолёт&lt;&gt; позволяет быстро перемещаться в космосе&#xA;Доберитесь до своего корабля и сядьте в кабину с помощью &lt;IMG&gt;INTERACT&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CREATIVE_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Галактика огромна и полна чудес.&#xA;&lt;SPECIAL&gt;Переместитесь&lt;&gt; в новую систему с помощью галактической карты.&#xA;Чтобы открыть ее, используйте &lt;STELLAR&gt;быстрое меню&lt;&gt; (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                -- The galaxy is wide and full of wonder&#xA;&lt;SPECIAL&gt;Warp&lt;&gt; to a new system from the Galaxy Map&#xA;Access the Galaxy Map from the &lt;STELLAR&gt;Quick Menu&lt;&gt; (&lt;IMG&gt;QUICK_MENU&lt;&gt;)
                                { "Russian", "Галактика огромна и полна чудес&#xA;&lt;SPECIAL&gt;Переместитесь&lt;&gt; в новую систему с помощью галактической карты&#xA;Чтобы открыть ее, используйте &lt;STELLAR&gt;быстрое меню&lt;&gt; (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CREATIVE_MSG5A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Базы&lt;&gt; можно строить на любой планете.&#xA;Доберитесь до устраивающей вас планеты, чтобы начать строительство.
                                { "Russian", "&lt;STELLAR&gt;Базы&lt;&gt; можно строить на любой планете&#xA;Доберитесь до устраивающей вас планеты, чтобы начать строительство" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CREATIVE_MSG5B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Базы&lt;&gt; можно строить на любой планете.&#xA;Приземлитесь на планете (&lt;IMG&gt;LANDSHIP&lt;&gt;), чтобы начать строительство.
                                { "Russian", "&lt;STELLAR&gt;Базы&lt;&gt; можно строить на любой планете&#xA;Приземлитесь на планете (&lt;IMG&gt;LANDSHIP&lt;&gt;), чтобы начать строительство" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CREATIVE_MSG5C" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Базы&lt;&gt; можно строить на любой планете.&#xA;Чтобы начать, разместите &lt;TECHNOLOGY&gt;компьютер базы&lt;&gt; с помощью меню созидания (&lt;IMG&gt;BUILD_MENU&lt;&gt;).
                                { "Russian", "&lt;STELLAR&gt;Базы&lt;&gt; можно строить на любой планете&#xA;Чтобы начать, разместите &lt;TECHNOLOGY&gt;компьютер базы&lt;&gt; с помощью меню созидания (&lt;IMG&gt;BUILD_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CREATIVE_MSG5D" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Базы&lt;&gt; можно строить на любой планете.&#xA;Используйте &lt;TECHNOLOGY&gt;компьютер базы&lt;&gt; при помощи &lt;IMG&gt;INTERACT&lt;&gt;.&#xA;Передвиньте терминал с помощью &lt;IMG&gt;DECONSTRUCT&lt;&gt;, чтобы выбрать другую площадку.
                                { "Russian", "&lt;STELLAR&gt;Базы&lt;&gt; можно строить на любой планете&#xA;Используйте &lt;TECHNOLOGY&gt;компьютер базы&lt;&gt; при помощи &lt;IMG&gt;INTERACT&lt;&gt;&#xA;Передвиньте терминал с помощью &lt;IMG&gt;DECONSTRUCT&lt;&gt;, чтобы выбрать другую площадку" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CREATIVE_MSG6A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- На борту &lt;SPECIAL&gt;Космической Аномалии&lt;&gt; собираются исследователи со всех уголков галактики.&#xA;Вернитесь на свой корабль, чтобы посетить ее.
                                { "Russian", "На борту &lt;SPECIAL&gt;Космической Аномалии&lt;&gt; собираются исследователи со всех уголков галактики&#xA;Вернитесь на свой корабль, чтобы посетить ее" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CREATIVE_MSG6B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- На борту &lt;SPECIAL&gt;Космической Аномалии&lt;&gt; собираются исследователи со всех уголков галактики.&#xA;Выйдите в космос, чтобы вызвать ее.
                                { "Russian", "На борту &lt;SPECIAL&gt;Космической Аномалии&lt;&gt; собираются исследователи со всех уголков галактики&#xA;Выйдите в космос, чтобы вызвать ее" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CREATIVE_MSG6C" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- На борту &lt;SPECIAL&gt;Космической Аномалии&lt;&gt; собираются исследователи со всех уголков галактики.&#xA;Вызвать ее можно с помощью быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                { "Russian", "На борту &lt;SPECIAL&gt;Космической Аномалии&lt;&gt; собираются исследователи со всех уголков галактики&#xA;Вызвать ее можно с помощью быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CREATIVE_MSG6D" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- На борту &lt;SPECIAL&gt;Космической Аномалии&lt;&gt; собираются исследователи со всех уголков галактики.&#xA;Вы можете исследовать ее, когда пожелаете.
                                { "Russian", "На борту &lt;SPECIAL&gt;Космической Аномалии&lt;&gt; собираются исследователи со всех уголков галактики&#xA;Вы можете исследовать ее, когда пожелаете" },
                            }
                        },
                        --#endregion

                    }
                },
                { -- LANGUAGE/NMS_LOC8_RUSSIAN.MBIN
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_LOC8_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        --#region Разное
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TUTORIAL_SKIPPED_TITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Одна среди звезд
                                -- Alone Amidst the Stars
                                { "Russian", "Одна среди звёзд" },
                            }
                        },
                        -- квест Вечный Атлас, описание задачи "Найти чудо и показать Атласу"
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ATLAS_LOOP_OBJ1A_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Атлас создал бесконечные звезды, бескрайние миры и вечную жизнь. Но даже в бесконечности важен каждый момент. Любой атом может положить начало целой новой вселенной.&#xA;&#xA;Найдите &lt;FUEL&gt;Интерфейс Атласа&lt;&gt; и покажите ему &lt;TECHNOLOGY&gt;чудо&lt;&gt;. К чудесам относятся записи ваших открытий, их можно найти в&lt;STELLAR&gt;каталоге&lt;&gt;.
                                -- The Atlas has created infinite stars, infinite worlds, infinite life. But even among infinity, each moment still has meaning. Any atom may seed a new universe.&#xA;&#xA;Find an &lt;FUEL&gt;Atlas Interface&lt;&gt; and present a &lt;TECHNOLOGY&gt;wonder&lt;&gt;. Wonders are a record of your discoveries and can be found in the &lt;STELLAR&gt;Catalogue&lt;&gt;.
                                { "Russian", "Атлас создал бесконечные звезды, бескрайние миры и вечную жизнь. Но даже в бесконечности важен каждый момент. Любой атом может положить начало целой новой вселенной.&#xA;&#xA;Найдите &lt;FUEL&gt;Интерфейс Атласа&lt;&gt; и покажите ему &lt;TECHNOLOGY&gt;чудо&lt;&gt;. К чудесам относятся записи ваших открытий, их можно найти в &lt;STELLAR&gt;каталоге&lt;&gt;." },
                            }
                        },
                        --#endregion

                        --#region UI_NEXUS.*_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NEXUS1_SEASON_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Продолжите &lt;EXPED&gt;экспедицию&lt;&gt;.&#xA;Выберите новые этапы на странице экспедиции (&lt;IMG&gt;OPTIONS&lt;&gt;).&#xA;Также вы всегда можете посетить Космическую Аномалию.
                                -- Continue with the &lt;EXPED&gt;Expedition&lt;&gt;&#xA;Select new milestones from the Expedition Page (&lt;IMG&gt;OPTIONS&lt;&gt;)&#xA;The Space Anomaly remains open to you
                                { "Russian", "Продолжите &lt;EXPED&gt;экспедицию&lt;&gt;&#xA;Выберите новые этапы на странице экспедиции (&lt;IMG&gt;OPTIONS&lt;&gt;)&#xA;Космическая Аномалия всегда открыта для вас" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NEXUS1_POST_SEASON_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Галактика огромна, полна чудес и ждет своих исследователей.&#xA;Выберите задание &lt;TECHNOLOGY&gt;«Одна среди звезд»&lt;&gt; в журнале заданий (&lt;IMG&gt;OPTIONS&lt;&gt;)&#xA;Также вы всегда можете посетить Космическую Аномалию.
                                -- The galaxy is wide and full of wonder, and it is yours to explore&#xA;Select &lt;TECHNOLOGY&gt;'Alone Amidst the Stars'&lt;&gt; in your Mission Log (&lt;IMG&gt;OPTIONS&lt;&gt;)&#xA;The Space Anomaly remains open to you
                                { "Russian", "Галактика огромна, полна чудес и ждет своих исследователей&#xA;Выберите задание &lt;TECHNOLOGY&gt;Одна среди звёзд&lt;&gt; в журнале (&lt;IMG&gt;OPTIONS&lt;&gt;)&#xA;Космическая Аномалия всегда открыта для вас" },
                            }
                        },
                        --#endregion

                        --#region UI_TUTORIAL_SKIPPED_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TUTORIAL_SKIPPED_MSG0" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Галактика огромна, полна чудес и ждет своих исследователей.&#xA;Выберите задание &lt;STELLAR&gt;творческого режима&lt;&gt; в журнале (&lt;IMG&gt;OPTIONS&lt;&gt;).
                                { "Russian", "Галактика огромна, полна чудес и ждет своих исследователей&#xA;Выберите задание &lt;STELLAR&gt;творческого режима&lt;&gt; в журнале (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TUTORIAL_SKIPPED_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Аварийное сообщение системы экзокостюма &lt;IMG&gt;SLASH&lt;&gt; Отремонтируйте &lt;TECHNOLOGY&gt;сканер&lt;&gt;&#xA;Откройте инвентарь (&lt;IMG&gt;INVENTORY&lt;&gt;) и &lt;COMMODITY&gt;закрепите&lt;&gt; (&lt;IMG&gt;PIN&lt;&gt;) поврежденные технологии.
                                { "Russian", "Аварийное сообщение системы экзокостюма &lt;IMG&gt;SLASH&lt;&gt; Отремонтируйте &lt;TECHNOLOGY&gt;сканер&lt;&gt;&#xA;Откройте инвентарь (&lt;IMG&gt;INVENTORY&lt;&gt;) и &lt;COMMODITY&gt;закрепите&lt;&gt; (&lt;IMG&gt;PIN&lt;&gt;) поврежденные технологии" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TUTORIAL_SKIPPED_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Аварийное сообщение системы экзокостюма &lt;IMG&gt;SLASH&lt;&gt; Установите &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt;&#xA;Откройте инвентарь (&lt;IMG&gt;INVENTORY&lt;&gt;) и начните установку с помощью &lt;IMG&gt;TECHMENU&lt;&gt;.
                                { "Russian", "Аварийное сообщение системы экзокостюма &lt;IMG&gt;SLASH&lt;&gt; Установите &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt;&#xA;Откройте инвентарь (&lt;IMG&gt;INVENTORY&lt;&gt;) и начните установку с помощью &lt;IMG&gt;TECHMENU&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TUTORIAL_SKIPPED_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Неподалеку обнаружен сигнал &lt;STELLAR&gt;звездолета&lt;&gt;.&#xA;Найдите звездолет (&lt;IMG&gt;AIM&lt;&gt;).
                                { "Russian", "Неподалеку обнаружен сигнал &lt;STELLAR&gt;звездолёта&lt;&gt;&#xA;Найдите звездолёт (&lt;IMG&gt;AIM&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TUTORIAL_SKIPPED_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Отремонтируйте&lt;&gt; важнейшие системы звездолета.&#xA;%REPAIR%&#xA;Чтобы получить указания, &lt;COMMODITY&gt;закрепите&lt;&gt; (&lt;IMG&gt;PIN&lt;&gt;) компоненты.
                                { "Russian", "&lt;STELLAR&gt;Отремонтируйте&lt;&gt; важнейшие системы звездолёта&#xA;%REPAIR%&#xA;Чтобы получить указания, &lt;COMMODITY&gt;закрепите&lt;&gt; (&lt;IMG&gt;PIN&lt;&gt;) компоненты" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TUTORIAL_SKIPPED_MSG5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;Звездолет&lt;&gt; позволяет быстро перемещаться в космосе.&#xA;Доберитесь до своего корабля и сядьте в кабину с помощью &lt;IMG&gt;INTERACT&lt;&gt;.
                                { "Russian", "&lt;TECHNOLOGY&gt;Звездолёт&lt;&gt; позволяет быстро перемещаться в космосе&#xA;Доберитесь до своего корабля и сядьте в кабину с помощью &lt;IMG&gt;INTERACT&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TUTORIAL_SKIPPED_MSG6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Установите &lt;TECHNOLOGY&gt;гипердвигатель&lt;&gt;, чтобы исследовать новые системы.&#xA;Откройте инвентарь звездолета (&lt;IMG&gt;INVENTORY&lt;&gt;) и начните установку с помощью &lt;IMG&gt;TECHMENU&lt;&gt;.
                                { "Russian", "Установите &lt;TECHNOLOGY&gt;гипердвигатель&lt;&gt;, чтобы исследовать новые системы&#xA;Откройте инвентарь звездолёта (&lt;IMG&gt;INVENTORY&lt;&gt;) и начните установку с помощью &lt;IMG&gt;TECHMENU&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TUTORIAL_SKIPPED_MSG7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Исследуйте планеты, чтобы находить подсказки и редкие предметы, совершать открытия.&#xA;Используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы находить важные объекты.&#xA;Чтобы исследовать новый мир, сначала вернитесь на звездолет.
                                { "Russian", "Исследуйте планету, ищите подсказки и редкие предметы&#xA;Находите объекты, используя &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)&#xA;Вернитесь на звездолёт, чтобы исследовать новый мир" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TUTORIAL_SKIPPED_MSG8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Исследуйте планеты, чтобы находить подсказки, редкие предметы и совершать новые открытия.&#xA;Или вернитесь в космос, чтобы найти &lt;STELLAR&gt;новую планету&lt;&gt;.
                                { "Russian", "Исследуйте планету, ищите подсказки и редкие предметы&#xA;Совершайте новые открытия!&#xA;Или вернитесь в космос, чтобы найти &lt;STELLAR&gt;новую планету&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TUTORIAL_SKIPPED_MSG9" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Исследуйте окружающие планеты или отправьтесь в &lt;STELLAR&gt;новую систему&lt;&gt;.&#xA;Установите &lt;TECHNOLOGY&gt;гипердвигатель&lt;&gt;, чтобы добраться в новые системы.&#xA;Откройте инвентарь звездолета (&lt;IMG&gt;INVENTORY&lt;&gt;) и начните установку с помощью &lt;IMG&gt;TECHMENU&lt;&gt;.
                                { "Russian", "Исследуйте окружающие планеты или отправьтесь в &lt;STELLAR&gt;другую систему&lt;&gt;&#xA;Установите &lt;TECHNOLOGY&gt;гипердвигатель&lt;&gt;, чтобы добраться в новые системы&#xA;Откройте инвентарь звездолёта (&lt;IMG&gt;INVENTORY&lt;&gt;) и начните установку с помощью &lt;IMG&gt;TECHMENU&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TUTORIAL_SKIPPED_MSG10" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Исследуйте ближайшие планеты или изучите &lt;STELLAR&gt;новую систему&lt;&gt;.&#xA;Откройте галактическую карту с помощью &lt;IMG&gt;QUICK_MENU&lt;&gt;&#xA;Откройте журнал (&lt;IMG&gt;OPTIONS&lt;&gt;), чтобы посмотреть другие задания.
                                { "Russian", "Исследуйте ближайшие планеты или изучите &lt;STELLAR&gt;новую систему&lt;&gt;&#xA;Откройте галактическую карту с помощью &lt;IMG&gt;QUICK_MENU&lt;&gt;&#xA;Откройте журнал (&lt;IMG&gt;OPTIONS&lt;&gt;), чтобы посмотреть другие задания" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TUTORIAL_SKIPPED_MSG11" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Исследуйте ближайшие планеты или изучите &lt;STELLAR&gt;новую систему&lt;&gt;.&#xA;Откройте журнал (&lt;IMG&gt;OPTIONS&lt;&gt;), чтобы посмотреть другие задания.
                                { "Russian", "Исследуйте ближайшие планеты или изучите &lt;STELLAR&gt;новую систему&lt;&gt;&#xA;Откройте журнал (&lt;IMG&gt;OPTIONS&lt;&gt;), чтобы посмотреть другие задания" },
                            }
                        },
                        --#endregion

                        --#region UI_TRACK_BLACKHOLE
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TRACK_BLACKHOLE_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Чтобы открыть &lt;TECHNOLOGY&gt;галактическую карту&lt;&gt;, окажитесь в космосе и используйте быстрое меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;). Системы с &lt;SPECIAL&gt;гравитационными аномалиями&lt;&gt; помечены особым значком. Используйте &lt;IMG&gt;GALAXY_NAV_L&lt;&gt; и &lt;IMG&gt;GALAXY_NAV_R&lt;&gt;, чтобы сменить текущий курс на галактической карте на тот, который приведет вас к ближайшей системе с активной черной дырой.&#xA;&#xA;Пройдя сквозь центр черной дыры, вы сможете преодолеть большие пространства, но при этом &lt;TECHNOLOGY&gt;технологии звездолета&lt;&gt; могут быть повреждены.&#xA;&#xA;Используйте &lt;COMMODITY&gt;телепорт космической станции&lt;&gt;, чтобы вернуться в исходную точку, если в результате гравитационного путешествия окажетесь в неожиданном месте.
                                -- While in space, access the &lt;TECHNOLOGY&gt;Galaxy Map&lt;&gt; from the Quick Menu (&lt;IMG&gt;QUICK_MENU&lt;&gt;). Systems with &lt;SPECIAL&gt;gravitational anomalies&lt;&gt; are marked with a special icon. Use &lt;IMG&gt;GALAXY_NAV_L&lt;&gt; and &lt;IMG&gt;GALAXY_NAV_R&lt;&gt; to change the current galaxy map path to lead you towards the nearest system with an active black hole.&#xA;&#xA;Travelling through the heart of the black hole allows for rapid progress across the universe, though may cause damage to &lt;TECHNOLOGY&gt;starship technologies&lt;&gt;.&#xA;&#xA;A &lt;COMMODITY&gt;Space Station Teleporter&lt;&gt; can be used to return to local space if gravitational travel provides an unexpected destination...
                                { "Russian", "Находясь в космосе, откройте &lt;TECHNOLOGY&gt;галактическую карту&lt;&gt; из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;). Системы с &lt;SPECIAL&gt;гравитационными аномалиями&lt;&gt; помечены особым значком. Используйте &lt;IMG&gt;GALAXY_NAV_L&lt;&gt; и &lt;IMG&gt;GALAXY_NAV_R&lt;&gt;, чтобы сменить текущий курс на галактической карте на тот, который приведет вас к ближайшей системе с активной черной дырой.&#xA;&#xA;Пройдя сквозь центр черной дыры, вы сможете преодолеть большие пространства, но при этом &lt;TECHNOLOGY&gt;технологии звездолёта&lt;&gt; могут быть повреждены.&#xA;&#xA;Вернитесь в исходную точку через &lt;COMMODITY&gt;телепорт&lt;&gt; на космической станции, если гравитационное путешествие занесет в неожиданное место..." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TRACK_BLACKHOLE_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите &lt;SPECIAL&gt;черную дыру&lt;&gt;.&#xA;Вернитесь в космос и откройте &lt;TECHNOLOGY&gt;галактическую карту&lt;&gt;.
                                { "Russian", "Найдите &lt;SPECIAL&gt;черную дыру&lt;&gt;&#xA;Вернитесь в космос и откройте &lt;TECHNOLOGY&gt;галактическую карту&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TRACK_BLACKHOLE_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите &lt;SPECIAL&gt;черную дыру&lt;&gt;.&#xA;Откройте &lt;TECHNOLOGY&gt;галактическую карту&lt;&gt; с помощью быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;).&#xA;Изменить курс на галактической карте можно, используя &lt;IMG&gt;GALAXY_NAV_L&lt;&gt;&lt;IMG&gt;GALAXY_NAV_R&lt;&gt;.
                                -- Locate a &lt;SPECIAL&gt;Black Hole&lt;&gt;&#xA;Access the &lt;TECHNOLOGY&gt;Galaxy Map&lt;&gt; from the Quick Menu (&lt;IMG&gt;QUICK_MENU&lt;&gt;)&#xA;Change galaxy map paths with &lt;IMG&gt;GALAXY_NAV_L&lt;&gt;&lt;IMG&gt;GALAXY_NAV_R&lt;&gt;
                                { "Russian", "Найдите &lt;SPECIAL&gt;черную дыру&lt;&gt;&#xA;Откройте &lt;TECHNOLOGY&gt;галактическую карту&lt;&gt; из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)&#xA;Меняйте курс на галактической карте с помощью &lt;IMG&gt;GALAXY_NAV_L&lt;&gt;&lt;IMG&gt;GALAXY_NAV_R&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TRACK_BLACKHOLE_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Подлетите к &lt;SPECIAL&gt;черной дыре&lt;&gt;.&#xA;&lt;FUEL&gt;ВНИМАНИЕ&lt;&gt;: путешествие через гравитационную аномалию ведет к непредсказуемым результатам.
                                -- Approach the &lt;SPECIAL&gt;Black Hole&lt;&gt;&#xA;&lt;FUEL&gt;CAUTION&lt;&gt;: Travel via gravitational anomaly is highly unpredictable
                                { "Russian", "Направляйтесь к &lt;SPECIAL&gt;черной дыре&lt;&gt;&#xA;Путешествие может быть &lt;FUEL&gt;непредсказуемым&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region UI_ATLAS_MISSION_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ATLAS_MISSION_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите &lt;FUEL&gt;Интерфейс Атласа&lt;&gt;.&#xA;Откройте &lt;TECHNOLOGY&gt;галактическую карту&lt;&gt; с помощью быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)&#xA;Изменить курс на галактической карте можно, используя &lt;IMG&gt;GALAXY_NAV_L&lt;&gt;&lt;IMG&gt;GALAXY_NAV_R&lt;&gt;
                                { "Russian", "Найдите &lt;FUEL&gt;Интерфейс Атласа&lt;&gt;&#xA;Откройте &lt;TECHNOLOGY&gt;галактическую карту&lt;&gt; из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)&#xA;Меняйте курс на галактической карте с помощью &lt;IMG&gt;GALAXY_NAV_L&lt;&gt;&lt;IMG&gt;GALAXY_NAV_R&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ATLAS_MISSION_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите &lt;FUEL&gt;Интерфейс Атласа&lt;&gt;.&#xA;Вернитесь в космос и откройте &lt;TECHNOLOGY&gt;галактическую карту&lt;&gt;.
                                { "Russian", "Найдите &lt;FUEL&gt;Интерфейс Атласа&lt;&gt;&#xA;Вернитесь в космос и откройте &lt;TECHNOLOGY&gt;галактическую карту&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ATLAS_MISSION_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Подойдите к &lt;FUEL&gt;станции Атласа&lt;&gt;.&#xA;Найдите Интерфейс внутри этого алого пространства.
                                -- Approach the &lt;FUEL&gt;Atlas Station&lt;&gt;&#xA;Locate the interface within its crimson geometry
                                { "Russian", "Выполните сближение со &lt;FUEL&gt;станцией Атласа&lt;&gt;&#xA;Найдите интерфейс внутри этого алого пространства" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ATLAS_MISSION_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Подойдите к &lt;FUEL&gt;станции Атласа&lt;&gt;.&#xA;Выслушайте слова Атласа.
                                -- Approach the &lt;FUEL&gt;Atlas Interface&lt;&gt;&#xA;Hear the words of the Atlas
                                { "Russian", "Подойдите к &lt;FUEL&gt;Интерфейсу Атласа&lt;&gt;&#xA;Услышьте слова Атласа" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ATLAS_MISSION_MSG5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Атлас призывал Странников исследовать мир, изучить всю реальность.&#xA;Выполните важный этап путешествия &lt;COMMODITY&gt;%COST%&lt;&gt;.&#xA;Просматривать прогресс путешествия можно в &lt;TECHNOLOGY&gt;каталоге и руководстве&lt;&gt; (&lt;IMG&gt;OPTIONS&lt;&gt;).
                                -- The Atlas called for exploration, for Travellers to sample all of reality&#xA;Complete the &lt;COMMODITY&gt;%COST%&lt;&gt; Journey Milestone&#xA;View journey progress in the &lt;TECHNOLOGY&gt;Catalogue and Guide&lt;&gt; (&lt;IMG&gt;OPTIONS&lt;&gt;)
                                { "Russian", "Атлас призывал Странников исследовать мир, изучить всю реальность&#xA;Завершите важный этап путешествия &lt;COMMODITY&gt;%COST%&lt;&gt;&#xA;Изучите прогресс путешествия в &lt;TECHNOLOGY&gt;каталоге и руководстве&lt;&gt; (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ATLAS_MISSION_MSG6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Достигнут важный этап путешествия: &lt;COMMODITY&gt;%COST%&lt;&gt;&#xA;Вернитесь к &lt;FUEL&gt;Интерфейсу Атласа&lt;&gt;.&#xA;Откройте &lt;TECHNOLOGY&gt;галактическую карту&lt;&gt; с помощью быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;).&#xA;Изменить курс на галактической карте можно, используя &lt;IMG&gt;GALAXY_NAV_L&lt;&gt;&lt;IMG&gt;GALAXY_NAV_R&lt;&gt;.
                                -- Journey milestone reached: &lt;COMMODITY&gt;%COST%&lt;&gt;&#xA;Return to the &lt;FUEL&gt;Atlas Interface&lt;&gt;&#xA;Access the &lt;TECHNOLOGY&gt;Galaxy Map&lt;&gt; from the Quick Menu (&lt;IMG&gt;QUICK_MENU&lt;&gt;)&#xA;Change galaxy map paths with &lt;IMG&gt;GALAXY_NAV_L&lt;&gt;&lt;IMG&gt;GALAXY_NAV_R&lt;&gt;
                                { "Russian", "Достигнут важный этап путешествия: &lt;COMMODITY&gt;%COST%&lt;&gt;&#xA;Вернитесь к &lt;FUEL&gt;Интерфейсу Атласа&lt;&gt;&#xA;Откройте &lt;TECHNOLOGY&gt;галактическую карту&lt;&gt; из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)&#xA;Меняйте курс на галактической карте с помощью &lt;IMG&gt;GALAXY_NAV_L&lt;&gt;&lt;IMG&gt;GALAXY_NAV_R&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ATLAS_MISSION_MSG7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Достигнут важный этап путешествия: &lt;COMMODITY&gt;%COST%&lt;&gt;&#xA;Вернитесь к &lt;FUEL&gt;Интерфейсу Атласа&lt;&gt;.&#xA;Вернитесь в космос и откройте &lt;TECHNOLOGY&gt;галактическую карту&lt;&gt;.
                                -- Journey milestone reached: &lt;COMMODITY&gt;%COST%&lt;&gt;&#xA;Return to the &lt;FUEL&gt;Atlas Interface&lt;&gt;&#xA;Return to space to access the &lt;TECHNOLOGY&gt;Galaxy Map&lt;&gt;
                                { "Russian", "Достигнут важный этап путешествия: &lt;COMMODITY&gt;%COST%&lt;&gt;&#xA;Вернитесь к &lt;FUEL&gt;Интерфейсу Атласа&lt;&gt;&#xA;Вернитесь в космос, чтобы открыть &lt;TECHNOLOGY&gt;галактическую карту&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ATLAS_MISSION_MSG8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Достигнут важный этап путешествия: &lt;COMMODITY&gt;%COST%&lt;&gt;&#xA;Зайдите на &lt;FUEL&gt;станцию Атласа&lt;&gt;.
                                -- Journey milestone reached: &lt;COMMODITY&gt;%COST%&lt;&gt;&#xA;Board the &lt;FUEL&gt;Atlas Station&lt;&gt;
                                { "Russian", "Достигнут важный этап путешествия: &lt;COMMODITY&gt;%COST%&lt;&gt;&#xA;Посетите &lt;FUEL&gt;станцию Атласа&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ATLAS_MISSION_MSG9" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Достигнут важный этап путешествия: &lt;COMMODITY&gt;%COST%&lt;&gt;&#xA;Подойдите к &lt;FUEL&gt;Интерфейсу Атласа&lt;&gt;.
                                -- Journey milestone reached: &lt;COMMODITY&gt;%COST%&lt;&gt;&#xA;Approach the &lt;FUEL&gt;Atlas Interface&lt;&gt;
                                { "Russian", "Достигнут важный этап путешествия: &lt;COMMODITY&gt;%COST%&lt;&gt;&#xA;Подойдите к &lt;FUEL&gt;Интерфейсу Атласа&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region UI_ATLAS_FINAL_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ATLAS_FINAL_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите последний &lt;FUEL&gt;Интерфейс Атласа&lt;&gt;.&#xA;Откройте &lt;TECHNOLOGY&gt;галактическую карту&lt;&gt; с помощью быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;).&#xA;Изменить курс на галактической карте можно, используя &lt;IMG&gt;GALAXY_NAV_L&lt;&gt;&lt;IMG&gt;GALAXY_NAV_R&lt;&gt;.
                                { "Russian", "Найдите последний &lt;FUEL&gt;Интерфейс Атласа&lt;&gt;&#xA;Откройте &lt;TECHNOLOGY&gt;галактическую карту&lt;&gt; из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)&#xA;Меняйте курс на галактической карте с помощью &lt;IMG&gt;GALAXY_NAV_L&lt;&gt;&lt;IMG&gt;GALAXY_NAV_R&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ATLAS_FINAL_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите последний &lt;FUEL&gt;Интерфейс Атласа&lt;&gt;.&#xA;Вернитесь в космос и откройте &lt;TECHNOLOGY&gt;галактическую карту&lt;&gt;.
                                { "Russian", "Найдите последний &lt;FUEL&gt;Интерфейс Атласа&lt;&gt;&#xA;Вернитесь в космос, чтобы открыть &lt;TECHNOLOGY&gt;галактическую карту&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ATLAS_FINAL_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Подойдите к последней &lt;FUEL&gt;станции Атласа&lt;&gt;.&#xA;Найдите Интерфейс внутри этого алого пространства.
                                { "Russian", "Выполните сближение с последней &lt;FUEL&gt;станцией Атласа&lt;&gt;&#xA;Найдите интерфейс внутри этого алого пространства" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ATLAS_FINAL_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Подойдите к первому &lt;SPECIAL&gt;хранилищу семян&lt;&gt;.&#xA;Получено знание о &lt;COMMODITY&gt;захваченном наноузле&lt;&gt;: &lt;TRADEABLE&gt;1&lt;&gt;/&lt;TRADEABLE&gt;1&lt;&gt;
                                -- Approach the first &lt;SPECIAL&gt;Seed Chamber&lt;&gt;&#xA;&lt;COMMODITY&gt;Captured Nanode&lt;&gt; knowledge gained: &lt;TRADEABLE&gt;1&lt;&gt;/&lt;TRADEABLE&gt;1&lt;&gt;
                                { "Russian", "Подойдите к первому &lt;SPECIAL&gt;хранилищу семян&lt;&gt;&#xA;Получено знание о &lt;COMMODITY&gt;захваченном наноузле&lt;&gt;: &lt;TRADEABLE&gt;1&lt;&gt;/&lt;TRADEABLE&gt;1&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ATLAS_FINAL_MSG5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Подойдите ко второму &lt;SPECIAL&gt;хранилищу семян&lt;&gt;.&#xA;Получено знание о &lt;COMMODITY&gt;сферической тени&lt;&gt;: &lt;TRADEABLE&gt;1&lt;&gt;/&lt;TRADEABLE&gt;1&lt;&gt;
                                { "Russian", "Подойдите ко второму &lt;SPECIAL&gt;хранилищу семян&lt;&gt;&#xA;Получено знание о &lt;COMMODITY&gt;сферической тени&lt;&gt;: &lt;TRADEABLE&gt;1&lt;&gt;/&lt;TRADEABLE&gt;1&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ATLAS_FINAL_MSG6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Подойдите к третьему &lt;SPECIAL&gt;хранилищу семян&lt;&gt;.&#xA;Получено знание о &lt;COMMODITY&gt;ноосферном шаре&lt;&gt;: &lt;TRADEABLE&gt;1&lt;&gt;/&lt;TRADEABLE&gt;1&lt;&gt;
                                { "Russian", "Подойдите к третьему &lt;SPECIAL&gt;хранилищу семян&lt;&gt;&#xA;Получено знание о &lt;COMMODITY&gt;ноосферном шаре&lt;&gt;: &lt;TRADEABLE&gt;1&lt;&gt;/&lt;TRADEABLE&gt;1&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ATLAS_FINAL_MSG7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Подойдите к четвертому &lt;SPECIAL&gt;хранилищу семян&lt;&gt;.&#xA;Получено знание о &lt;COMMODITY&gt;темной материи&lt;&gt;: &lt;TRADEABLE&gt;1&lt;&gt;/&lt;TRADEABLE&gt;1&lt;&gt;
                                { "Russian", "Подойдите к четвертому &lt;SPECIAL&gt;хранилищу семян&lt;&gt;&#xA;Получено знание о &lt;COMMODITY&gt;темной материи&lt;&gt;: &lt;TRADEABLE&gt;1&lt;&gt;/&lt;TRADEABLE&gt;1&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ATLAS_FINAL_MSG8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Подойдите к пятому &lt;SPECIAL&gt;хранилищу семян&lt;&gt;.&#xA;Получено знание о &lt;COMMODITY&gt;конце рассвета&lt;&gt;: &lt;TRADEABLE&gt;1&lt;&gt;/&lt;TRADEABLE&gt;1&lt;&gt;
                                { "Russian", "Подойдите к пятому &lt;SPECIAL&gt;хранилищу семян&lt;&gt;&#xA;Получено знание о &lt;COMMODITY&gt;конце рассвета&lt;&gt;: &lt;TRADEABLE&gt;1&lt;&gt;/&lt;TRADEABLE&gt;1&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ATLAS_FINAL_MSG9" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Подойдите к шестому &lt;SPECIAL&gt;хранилищу семян&lt;&gt;.&#xA;Получено знание о &lt;COMMODITY&gt;световом нефрите&lt;&gt;: &lt;TRADEABLE&gt;1&lt;&gt;/&lt;TRADEABLE&gt;1&lt;&gt;
                                { "Russian", "Подойдите к шестому &lt;SPECIAL&gt;хранилищу семян&lt;&gt;&#xA;Получено знание о &lt;COMMODITY&gt;световом нефрите&lt;&gt;: &lt;TRADEABLE&gt;1&lt;&gt;/&lt;TRADEABLE&gt;1&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ATLAS_FINAL_MSG10" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Подойдите к седьмому &lt;SPECIAL&gt;хранилищу семян&lt;&gt;.&#xA;Получено знание о &lt;COMMODITY&gt;фазуре состояния&lt;&gt;: &lt;TRADEABLE&gt;1&lt;&gt;/&lt;TRADEABLE&gt;1&lt;&gt;
                                { "Russian", "Подойдите к седьмому &lt;SPECIAL&gt;хранилищу семян&lt;&gt;&#xA;Получено знание о &lt;COMMODITY&gt;фазуре состояния&lt;&gt;: &lt;TRADEABLE&gt;1&lt;&gt;/&lt;TRADEABLE&gt;1&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ATLAS_FINAL_MSG11" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Подойдите к восьмому &lt;SPECIAL&gt;хранилищу семян&lt;&gt;.&#xA;Получено знание об &lt;COMMODITY&gt;остатке сверхновой&lt;&gt;: &lt;TRADEABLE&gt;1&lt;&gt;/&lt;TRADEABLE&gt;1&lt;&gt;
                                { "Russian", "Подойдите к восьмому &lt;SPECIAL&gt;хранилищу семян&lt;&gt;.&#xA;Получено знание об &lt;COMMODITY&gt;остатке сверхновой&lt;&gt;: &lt;TRADEABLE&gt;1&lt;&gt;/&lt;TRADEABLE&gt;1&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ATLAS_FINAL_MSG12" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Подойдите к девятому &lt;SPECIAL&gt;хранилищу семян&lt;&gt;.&#xA;Получено знание о &lt;COMMODITY&gt;модифицированном кванте&lt;&gt;: &lt;TRADEABLE&gt;1&lt;&gt;/&lt;TRADEABLE&gt;1&lt;&gt;
                                { "Russian", "Подойдите к девятому &lt;SPECIAL&gt;хранилищу семян&lt;&gt;&#xA;Получено знание о &lt;COMMODITY&gt;модифицированном кванте&lt;&gt;: &lt;TRADEABLE&gt;1&lt;&gt;/&lt;TRADEABLE&gt;1&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ATLAS_FINAL_MSG13" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Подойдите к последнему &lt;FUEL&gt;Интерфейсу Атласа&lt;&gt;.&#xA;Выслушайте слова Атласа.
                                -- Approach the final &lt;FUEL&gt;Atlas Interface&lt;&gt;&#xA;Hear the words of the Atlas
                                { "Russian", "Подойдите к последнему &lt;FUEL&gt;Интерфейсу Атласа&lt;&gt;&#xA;Услышьте слова Атласа" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ATLAS_FINAL_MSG14" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите &lt;SPECIAL&gt;семена Атласа&lt;&gt;: 0/10&#xA;Изготовьте семя &lt;COMMODITY&gt;захваченного наноузла&lt;&gt;.
                                -- Assemble the &lt;SPECIAL&gt;Atlas Seeds&lt;&gt;: 0/10&#xA;Craft the &lt;COMMODITY&gt;Captured Nanode&lt;&gt; seed
                                { "Russian", "Соберите &lt;SPECIAL&gt;семена Атласа&lt;&gt;: 0/10&#xA;Изготовьте семя &lt;COMMODITY&gt;захваченного наноузла&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ATLAS_FINAL_MSG15" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите &lt;SPECIAL&gt;семена Атласа&lt;&gt;: 1/10&#xA;Изготовьте семя &lt;COMMODITY&gt;сферической тени&lt;&gt;.
                                { "Russian", "Соберите &lt;SPECIAL&gt;семена Атласа&lt;&gt;: 1/10&#xA;Изготовьте семя &lt;COMMODITY&gt;сферической тени&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ATLAS_FINAL_MSG16" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите &lt;SPECIAL&gt;семена Атласа&lt;&gt;: 2/10&#xA;Изготовьте семя &lt;COMMODITY&gt;ноосферного шара&lt;&gt;.
                                { "Russian", "Соберите &lt;SPECIAL&gt;семена Атласа&lt;&gt;: 2/10&#xA;Изготовьте семя &lt;COMMODITY&gt;ноосферного шара&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ATLAS_FINAL_MSG17" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите &lt;SPECIAL&gt;семена Атласа&lt;&gt;: 3/10&#xA;Изготовьте семя &lt;COMMODITY&gt;темной материи&lt;&gt;.
                                { "Russian", "Соберите &lt;SPECIAL&gt;семена Атласа&lt;&gt;: 3/10&#xA;Изготовьте семя &lt;COMMODITY&gt;темной материи&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ATLAS_FINAL_MSG18" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите &lt;SPECIAL&gt;семена Атласа&lt;&gt;: 4/10&#xA;Изготовьте семя &lt;COMMODITY&gt;конца рассвета&lt;&gt;.
                                { "Russian", "Соберите &lt;SPECIAL&gt;семена Атласа&lt;&gt;: 4/10&#xA;Изготовьте семя &lt;COMMODITY&gt;конца рассвета&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ATLAS_FINAL_MSG19" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите &lt;SPECIAL&gt;семена Атласа&lt;&gt;: 5/10&#xA;Изготовьте семя &lt;COMMODITY&gt;светового нефрита&lt;&gt;.
                                { "Russian", "Соберите &lt;SPECIAL&gt;семена Атласа&lt;&gt;: 5/10&#xA;Изготовьте семя &lt;COMMODITY&gt;светового нефрита&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ATLAS_FINAL_MSG20" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите &lt;SPECIAL&gt;семена Атласа&lt;&gt;: 6/10&#xA;Изготовьте семя &lt;COMMODITY&gt;фазуры состояния&lt;&gt;.
                                { "Russian", "Соберите &lt;SPECIAL&gt;семена Атласа&lt;&gt;: 6/10&#xA;Изготовьте семя &lt;COMMODITY&gt;фазуры состояния&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ATLAS_FINAL_MSG21" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите &lt;SPECIAL&gt;семена Атласа&lt;&gt;: 7/10&#xA;Изготовьте семя &lt;COMMODITY&gt;остатка сверхновой&lt;&gt;.
                                { "Russian", "Соберите &lt;SPECIAL&gt;семена Атласа&lt;&gt;: 7/10&#xA;Изготовьте семя &lt;COMMODITY&gt;остатка сверхновой&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ATLAS_FINAL_MSG22" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите &lt;SPECIAL&gt;семена Атласа&lt;&gt;: 8/10&#xA;Изготовьте семя &lt;COMMODITY&gt;модифицированного кванта&lt;&gt;.
                                { "Russian", "Соберите &lt;SPECIAL&gt;семена Атласа&lt;&gt;: 8/10&#xA;Изготовьте семя &lt;COMMODITY&gt;модифицированного кванта&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ATLAS_FINAL_MSG23" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите &lt;SPECIAL&gt;семена Атласа&lt;&gt;: 9/10&#xA;Изготовьте семя &lt;COMMODITY&gt;сердца Солнца&lt;&gt;.
                                { "Russian", "Соберите &lt;SPECIAL&gt;семена Атласа&lt;&gt;: 9/10&#xA;Изготовьте семя &lt;COMMODITY&gt;сердца Солнца&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region UI_ATLAS_LOOP_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ATLAS_LOOP_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Покажите одно из ваших &lt;STELLAR&gt;открытий&lt;&gt; Атласу.&#xA;Найдите другой &lt;FUEL&gt;Интерфейс Атласа&lt;&gt;.&#xA;Откройте &lt;TECHNOLOGY&gt;галактическую карту&lt;&gt; с помощью быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)&#xA;Изменить курс на галактической карте можно, используя &lt;IMG&gt;GALAXY_NAV_L&lt;&gt;&lt;IMG&gt;GALAXY_NAV_R&lt;&gt;
                                -- Present one of your &lt;STELLAR&gt;discoveries&lt;&gt; to the Atlas&#xA;Locate another &lt;FUEL&gt;Atlas Interface&lt;&gt;&#xA;Access the &lt;TECHNOLOGY&gt;Galaxy Map&lt;&gt; from the Quick Menu (&lt;IMG&gt;QUICK_MENU&lt;&gt;)&#xA;Change galaxy map paths with &lt;IMG&gt;GALAXY_NAV_L&lt;&gt;&lt;IMG&gt;GALAXY_NAV_R&lt;&gt;
                                { "Russian", "Покажите одно из ваших &lt;STELLAR&gt;открытий&lt;&gt; Атласу&#xA;Найдите другой &lt;FUEL&gt;Интерфейс Атласа&lt;&gt;&#xA;Откройте &lt;TECHNOLOGY&gt;галактическую карту&lt;&gt; из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)&#xA;Меняйте курс на галактической карте с помощью &lt;IMG&gt;GALAXY_NAV_L&lt;&gt;&lt;IMG&gt;GALAXY_NAV_R&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ATLAS_LOOP_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Бесконечное количество возможных миров простирается в &lt;STELLAR&gt;вечность&lt;&gt;...&#xA;Найдите другой &lt;FUEL&gt;Интерфейс Атласа&lt;&gt;.&#xA;Вернитесь в космос и откройте &lt;TECHNOLOGY&gt;галактическую карту&lt;&gt;.
                                -- An infinity of possible worlds stretches out &lt;STELLAR&gt;forever&lt;&gt;...&#xA;Locate another &lt;FUEL&gt;Atlas Interface&lt;&gt;&#xA;Return to space to access the &lt;TECHNOLOGY&gt;Galaxy Map&lt;&gt;
                                { "Russian", "Бесконечное множество миров простирается в &lt;STELLAR&gt;вечность&lt;&gt;...&#xA;Найдите другой &lt;FUEL&gt;Интерфейс Атласа&lt;&gt;&#xA;Вернитесь в космос" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ATLAS_LOOP_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Покажите одно из ваших &lt;STELLAR&gt;открытий&lt;&gt; Атласу.&#xA;Приблизьтесь к &lt;FUEL&gt;станции Атласа&lt;&gt;&#xA; Найдите Интерфейс Атласа в ядре станции.
                                -- Present one of your &lt;STELLAR&gt;discoveries&lt;&gt; to the Atlas&#xA;Approach the &lt;FUEL&gt;Atlas Station&lt;&gt;&#xA;Locate the Atlas interface within the station's core
                                { "Russian", "Покажите одно из ваших &lt;STELLAR&gt;открытий&lt;&gt; Атласу&#xA;Выполните сближение со &lt;FUEL&gt;станцией Атласа&lt;&gt;&#xA;Найдите интерфейс Атласа в ядре станции" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ATLAS_LOOP_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Покажите одно из ваших &lt;STELLAR&gt;открытий&lt;&gt; Атласу.&#xA;Подойдите к &lt;FUEL&gt;Интерфейсу Атласа&lt;&gt;.
                                { "Russian", "Покажите одно из ваших &lt;STELLAR&gt;открытий&lt;&gt; Атласу&#xA;Подойдите к &lt;FUEL&gt;Интерфейсу Атласа&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ATLAS_LOOP_MSG1B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Покажите &lt;SPECIAL&gt;усиленный знак&lt;&gt; Атласу.&#xA;Найдите другой &lt;FUEL&gt;Интерфейс Атласа&lt;&gt;.&#xA;Откройте &lt;TECHNOLOGY&gt;галактическую карту&lt;&gt; с помощью быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)&#xA;Изменить курс на галактической карте можно, используя &lt;IMG&gt;GALAXY_NAV_L&lt;&gt;&lt;IMG&gt;GALAXY_NAV_R&lt;&gt;
                                -- Show the &lt;SPECIAL&gt;Empowered Mark&lt;&gt; to the Atlas&#xA;Locate another &lt;FUEL&gt;Atlas Interface&lt;&gt;&#xA;Access the &lt;TECHNOLOGY&gt;Galaxy Map&lt;&gt; from the Quick Menu (&lt;IMG&gt;QUICK_MENU&lt;&gt;)&#xA;Change galaxy map paths with &lt;IMG&gt;GALAXY_NAV_L&lt;&gt;&lt;IMG&gt;GALAXY_NAV_R&lt;&gt;
                                { "Russian", "Покажите &lt;SPECIAL&gt;усиленный знак&lt;&gt; Атласу&#xA;Найдите другой &lt;FUEL&gt;Интерфейс Атласа&lt;&gt;&#xA;Откройте &lt;TECHNOLOGY&gt;галактическую карту&lt;&gt; из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)&#xA;Меняйте курс на галактической карте с помощью &lt;IMG&gt;GALAXY_NAV_L&lt;&gt;&lt;IMG&gt;GALAXY_NAV_R&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ATLAS_LOOP_MSG2B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Покажите &lt;SPECIAL&gt;усиленный знак&lt;&gt; Атласу.&#xA;Найдите другой &lt;FUEL&gt;Интерфейс Атласа&lt;&gt;.&#xA;Вернитесь в космос и откройте &lt;TECHNOLOGY&gt;галактическую карту&lt;&gt;.
                                -- Show the &lt;SPECIAL&gt;Empowered Mark&lt;&gt; to the Atlas&#xA;Locate another &lt;FUEL&gt;Atlas Interface&lt;&gt;&#xA;Return to space to access the &lt;TECHNOLOGY&gt;Galaxy Map&lt;&gt;
                                { "Russian", "Покажите &lt;SPECIAL&gt;усиленный знак&lt;&gt; Атласу&#xA;Найдите другой &lt;FUEL&gt;Интерфейс Атласа&lt;&gt;&#xA;Вернитесь в космос, чтобы открыть &lt;TECHNOLOGY&gt;галактическую карту&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ATLAS_LOOP_MSG3B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Покажите &lt;SPECIAL&gt;усиленный знак&lt;&gt; Атласу.&#xA;Приблизьтесь к &lt;FUEL&gt;станции Атласа&lt;&gt;&#xA; Найдите Интерфейс Атласа в ядре станции.
                                { "Russian", "Покажите &lt;SPECIAL&gt;усиленный знак&lt;&gt; Атласу&#xA;Выполните сближение со &lt;FUEL&gt;станцией Атласа&lt;&gt;&#xA;Найдите интерфейс Атласа в ядре станции" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ATLAS_LOOP_MSG4B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Покажите &lt;SPECIAL&gt;усиленный знак&lt;&gt; Атласу.&#xA;Подойдите к &lt;FUEL&gt;Интерфейсу Атласа&lt;&gt;.
                                { "Russian", "Покажите &lt;SPECIAL&gt;усиленный знак&lt;&gt; Атласу&#xA;Подойдите к &lt;FUEL&gt;Интерфейсу Атласа&lt;&gt;" },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TUTORIAL_SKIPPED_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вселенная ждет
                                -- A universe awaits
                                { "Russian", "Вселенная ждёт" },
                            }
                        },
                    }
                },
                { -- LANGUAGE/NMS_UPDATE3_RUSSIAN.MBIN
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_UPDATE3_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        --#region Разное
                        { -- !!! Новые начала
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_EPILOGUE_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Я принимаю предложение Атласа. А разве у меня есть выбор? Я есть часть Атласа. Без него меня не существует.&#xA;Не знаю, сколько я проживу, пока машина не будет уничтожена, пока симуляция не оборвется.&#xA;Но я знаю, что мне открыт путь к бесконечным миллионам планет и галактик. Я могу посетить их все. Что ж, мне остается только наслаждаться своими странствиями.
                                -- I accepted the guidance of the Atlas. What choice did I have? I am part of the Atlas, I am nothing without it.&#xA;I do not know how long I have before the machine is destroyed, before the simulation ends.&#xA;But I do know I have the freedom of infinite worlds, infinite galaxies. It is mine to explore as I will. There is nothing to do but enjoy the journey.
                                { "Russian", "Я принял предложение Атласа. Какой у меня был выбор? Я есть часть Атласа. Без него меня не существует.&#xA;Не знаю, сколько я проживу, пока машина не будет уничтожена, пока симуляция не оборвется.&#xA;Но я знаю, что мне открыт путь к бесконечным миллионам планет и галактик." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL1C_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Ремонт. сканер мультитула
                                -- Repair the damaged Multi-Tool Scanner
                                { "Russian", "Почините сканер мультитула" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SCANNER_REPAIR_TITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                --Требуется сканер :: Срочно требуется ремонт!
                                -- Scanner Required :: Repair Immediately!
                                { "Russian", "Требуется срочный ремонт сканера!" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL1_DESCD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Я нахожусь на неизвестной планете, без снаряжения, в полном одиночестве и в серьезной опасности. Я не могу вспомнить, какие обстоятельства привели меня сюда. Собственно, я вообще ничего не помню.&#xA;&#xA;По крайней мере, этот корабль, кажется, меня узнает. Панель управления реагирует на мои прикосновения... или на мой экзокостюм?&lt;DELAY&gt;1&lt;&gt;Я еще не на том свете, и этот корабль — мой спасательный круг, мой билет к звездам...
                                { "Russian", "Я нахожусь на неизвестной планете, без снаряжения, в полном одиночестве и в серьезной опасности. Я не могу вспомнить, какие обстоятельства привели меня сюда. Собственно, я вообще ничего не помню.&#xA;&#xA;По крайней мере, этот корабль, кажется, меня узнает. Панель управления реагирует на мои прикосновения... или на мой экзокостюм?&lt;DELAY&gt;1&lt;&gt; Я еще не на том свете, и этот корабль — мой спасательный круг, мой билет к звездам..." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL1D_OBJ2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Испытайте анализирующий визор.
                                -- Test the Analysis Visor
                                { "Russian", "Испытайте анализирующий визор" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL1_OSD3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КОРАБЛЬ ОТРЕМОНТИРОВАН &lt;IMG&gt;SLASH&lt;&gt; ПУСКОВЫЕ СИСТЕМЫ ЗАПУЩЕНЫ
                                -- STARSHIP REPAIRED &lt;IMG&gt;SLASH&lt;&gt; LAUNCH SYSTEMS ONLINE
                                { "Russian", "ЗВЕЗДОЛЁТ ОТРЕМОНТИРОВАН &lt;IMG&gt;SLASH&lt;&gt; ПУСКОВЫЕ СИСТЕМЫ РАБОТАЮТ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL2_OBJ2_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите повторитель, чтобы узнать больше.
                                -- Follow the mysterious signal to learn more.
                                { "Russian", "Следуйте за таинственным сигналом, чтобы узнать больше." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TERRAINEDIT_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Создайте ландшафтный манипулятор и научитесь им пользоваться.
                                -- Construct and Master the Terrain Manipulator
                                { "Russian", "Создайте ландшафтный манипулятор" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TERRAINEDIT_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Ландшафтный манипулятор — это продвинутый модуль мультитула, позволяющий рыть тоннели в земле.&#xA;Ландшафтный манипулятор заряжается от металлов. Более продвинутые металлы дают более мощный заряд.&#xA;По умолчанию, ландшафтный манипулятор в момент выстрела уничтожает почву. Используйте быстрое меню, чтобы перейти в режим продвинутого моделирования и включить возможности создания конструкций.
                                -- The Terrain Manipulator is an advanced Multi-Tool attachment that allows the user to tunnel through the ground.&#xA;&#xA;The Terrain Manipulator is charged with metallic elements. More advanced metals give greater charge.&#xA;&#xA;By default, the Terrain Manipulator will destroy the ground when fired. Use the Quick Menu to change to Advanced Editing Mode and enable construction options.
                                { "Russian", "Ландшафтный манипулятор — модуль мультитула, позволяющий рыть тоннели в земле. Заряжается от металлов. По умолчанию, включен режим уничтожения почвы. Используйте быстрое меню, чтобы перейти в режим моделирования и вкдючить режим создания почвы." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT2_STEP8_OSD1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МЕСТО АВАРИИ ГРУЗОВОГО КОРАБЛЯ ОБНАРУЖЕНО
                                { "Russian", "ОБНАРУЖЕНО МЕСТО КОРАБЛЕКРУШЕНИЯ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL3_OSD2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ОБНАРУЖЕН СЛЕД АНТИМАТЕРИИ &lt;IMG&gt;SLASH&lt;&gt; ЦЕЛЬ ЗАХВАЧЕНА
                                -- ANTIMATTER TRACE DETECTED &lt;IMG&gt;SLASH&lt;&gt; TARGET LOCKED
                                { "Russian", "ОБНАРУЖЕН СЛЕД АНТИМАТЕРИИ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TUTORIAL_ANTIMATTER_RES_A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;SLASH&lt;&gt; ТЫ НАЙДЕШЬ НАС, КОГДА ПРИДЕТ ВРЕМЯ &lt;IMG&gt;SLASH&lt;&gt;&lt;IMG&gt;SLASH&lt;&gt; 16 16&lt;AUDIO&gt;UI_Nanites_Received&lt;&gt; 16 16&lt;AUDIO&gt;UI_Nanites_Received&lt;&gt; 16 16 &lt;AUDIO&gt;UI_Nanites_Received&lt;&gt;16 &lt;IMG&gt;SLASH&lt;&gt;
                                -- &lt;IMG&gt;SLASH&lt;&gt; YOU WILL FIND US, WHEN THE TIME IS RIGHT &lt;IMG&gt;SLASH&lt;&gt;&#xA;&lt;IMG&gt;SLASH&lt;&gt; 16 16&lt;AUDIO&gt;UI_Nanites_Received&lt;&gt; 16 16&lt;AUDIO&gt;UI_Nanites_Received&lt;&gt; 16 16 &lt;AUDIO&gt;UI_Nanites_Received&lt;&gt;16 &lt;IMG&gt;SLASH&lt;&gt;
                                { "Russian", "&lt;IMG&gt;SLASH&lt;&gt; ТЫ НАЙДЕШЬ НАС, КОГДА ПРИДЕТ ВРЕМЯ &lt;IMG&gt;SLASH&lt;&gt;&#xA;&lt;IMG&gt;SLASH&lt;&gt; 16 16&lt;AUDIO&gt;UI_Nanites_Received&lt;&gt; 16 16&lt;AUDIO&gt;UI_Nanites_Received&lt;&gt; 16 16 &lt;AUDIO&gt;UI_Nanites_Received&lt;&gt;16 &lt;IMG&gt;SLASH&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TUTORIAL_NOFUEL_LANG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Отчет службы мониторинга: ГИПЕРДВИГАТЕЛЬ &lt;AUDIO&gt;UI_NoWhereToLand&lt;&gt;&lt;FUEL&gt;НЕИСПРАВЕН&lt;&gt;&lt;IMG&gt;SLASH&lt;&gt; ОТСУТСТВУЕТ ВАРП-ТОПЛИВО&#xA;Поиск источника топлива... Поиск... Поиск... &#xA;.&lt;AUDIO&gt;UI_Destination_Reached&lt;&gt;.. ИСТОЧНИК НАЙДЕН&#xA;До источника варп-топлива: &lt;STELLAR&gt;&lt;AUDIO&gt;UI_Nanites_Received&lt;&gt;16 16 16&lt;&gt;... &lt;STELLAR&gt;&lt;AUDIO&gt;UI_Nanites_Received&lt;&gt;16&lt;&gt;... &lt;STELLAR&gt;1&lt;AUDIO&gt;UI_Nanites_Received&lt;&gt;&lt;&gt;..&lt;STELLAR&gt;6&lt;&gt;... &lt;STELLAR&gt;&lt;AUDIO&gt;UI_Nanites_Received&lt;&gt;16&lt;&gt; кЛс&#xA;Принять ориентир?
                                -- Starship Monitoring System reports: HYPERDRIVE &lt;AUDIO&gt;UI_NoWhereToLand&lt;&gt;&lt;FUEL&gt;ERROR&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt; WARP FUEL DEPLETED&#xA;Searching for fuel source... searching... searching... &#xA;.&lt;AUDIO&gt;UI_Destination_Reached&lt;&gt;.. OBTAINED&#xA;Warp Fuel Source in: &lt;STELLAR&gt;&lt;AUDIO&gt;UI_Nanites_Received&lt;&gt;16 16 16&lt;&gt;... &lt;STELLAR&gt;&lt;AUDIO&gt;UI_Nanites_Received&lt;&gt;16&lt;&gt;... &lt;STELLAR&gt;1&lt;AUDIO&gt;UI_Nanites_Received&lt;&gt;&lt;&gt;..&lt;STELLAR&gt;6&lt;&gt;... &lt;STELLAR&gt;&lt;AUDIO&gt;UI_Nanites_Received&lt;&gt;16&lt;&gt; kLs&#xA;Accept Guidance to Fuel Source?
                                { "Russian", "Отчёт службы мониторинга: ГИПЕРДВИГАТЕЛЬ &lt;AUDIO&gt;UI_NoWhereToLand&lt;&gt;&lt;FUEL&gt;НЕИСПРАВЕН&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt; ОТСУТСТВУЕТ ВАРП-ТОПЛИВО&#xA;Поиск источника топлива... Поиск... Поиск... &#xA;.&lt;AUDIO&gt;UI_Destination_Reached&lt;&gt;.. ИСТОЧНИК НАЙДЕН&#xA;До источника варп-топлива: &lt;STELLAR&gt;&lt;AUDIO&gt;UI_Nanites_Received&lt;&gt;16 16 16&lt;&gt;... &lt;STELLAR&gt;&lt;AUDIO&gt;UI_Nanites_Received&lt;&gt;16&lt;&gt;... &lt;STELLAR&gt;1&lt;AUDIO&gt;UI_Nanites_Received&lt;&gt;&lt;&gt;..&lt;STELLAR&gt;6&lt;&gt;... &lt;STELLAR&gt;&lt;AUDIO&gt;UI_Nanites_Received&lt;&gt;16&lt;&gt; кЛс&#xA;Принять ориентир?" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TUTORIAL_NOFUEL_LANG_ALT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Отчет системы мониторинга корабля: &lt;AUDIO&gt;UI_NoWhereToLand&lt;&gt;&lt;FUEL&gt;ОШИБКА&lt;&gt;&lt;IMG&gt;SLASH&lt;&gt; СБОЙ СИСТЕМЫ ОРИЕНТИРОВАНИЯ&#xA;Поиск других маршрутов... Поиск... Поиск... &#xA;.&lt;AUDIO&gt;UI_Destination_Reached&lt;&gt;.. МАРШРУТ НАЙДЕН&#xA;Пункт назначения: &lt;AUDIO&gt;&lt;&gt;UI_Nanites_Received&lt;STELLAR&gt;16 16 16&lt;&gt;... &lt;AUDIO&gt;UI_Nanites_Received&lt;&gt;&lt;STELLAR&gt;16&lt;&gt;... &lt;AUDIO&gt;UI_Nanites_Received&lt;&gt;&lt;STELLAR&gt;1&lt;&gt;..&lt;STELLAR&gt;6&lt;&gt;... &lt;AUDIO&gt;UI_Nanites_Received&lt;&gt;&lt;STELLAR&gt;16&lt;&gt; кЛс&#xA;Принять новый ориентир?
                                -- Starship Monitoring System reports: &lt;AUDIO&gt;UI_NoWhereToLand&lt;&gt;&lt;FUEL&gt;ERROR&lt;&gt;&lt;IMG&gt;SLASH&lt;&gt; GUIDANCE SYSTEM MALFUNCTION&#xA;Searching for other routes... searching... searching... &#xA;.&lt;AUDIO&gt;UI_Destination_Reached&lt;&gt;.. OBTAINED&#xA;Destination in: &lt;AUDIO&gt;UI_Nanites_Received&lt;&gt;&lt;STELLAR&gt;16 16 16&lt;&gt;... &lt;AUDIO&gt;UI_Nanites_Received&lt;&gt;&lt;STELLAR&gt;16&lt;&gt;... &lt;AUDIO&gt;UI_Nanites_Received&lt;&gt;&lt;STELLAR&gt;1&lt;&gt;..&lt;STELLAR&gt;6&lt;&gt;... &lt;AUDIO&gt;UI_Nanites_Received&lt;&gt;&lt;STELLAR&gt;16&lt;&gt; kLs&#xA;Accept New Guidance?
                                { "Russian", "Отчёт системы мониторинга корабля: &lt;AUDIO&gt;UI_NoWhereToLand&lt;&gt;&lt;FUEL&gt;ОШИБКА&lt;&gt;&lt;IMG&gt;SLASH&lt;&gt; СБОЙ СИСТЕМЫ ОРИЕНТИРОВАНИЯ&#xA;Поиск других маршрутов... Поиск... Поиск... &#xA;.&lt;AUDIO&gt;UI_Destination_Reached&lt;&gt;.. МАРШРУТ НАЙДЕН&#xA;Пункт назначения: &lt;AUDIO&gt;UI_Nanites_Received&lt;&gt;&lt;STELLAR&gt;16 16 16&lt;&gt;... &lt;AUDIO&gt;UI_Nanites_Received&lt;&gt;&lt;STELLAR&gt;16&lt;&gt;... &lt;AUDIO&gt;UI_Nanites_Received&lt;&gt;&lt;STELLAR&gt;1&lt;&gt;..&lt;STELLAR&gt;6&lt;&gt;... &lt;AUDIO&gt;UI_Nanites_Received&lt;&gt;&lt;STELLAR&gt;16&lt;&gt; кЛс&#xA;Принять новый ориентир?" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL5_OBJ1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Следовать маршрутом системы автоматического наведения
                                -- Follow Starship Automatic Guidance
                                { "Russian", "Следовать по маршруту системы навигации" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_HOLOHUB_OSD1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ГОЛО-ТЕРМИНАЛ ОБНАРУЖЕН
                                -- HOLO-TERMINUS DETECTED
                                { "Russian", "ОБНАРУЖЕН ГОЛО-ТЕРМИНАЛ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_HOLOHUB_OSD2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружено совпадение сигналов.
                                -- Signal Match Detected
                                { "Russian", "ОБНАРУЖЕНО СОВПАДЕНИЕ СИГНАЛОВ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT1_ARTEMIS_TITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Одна среди звезд
                                -- Alone Amidst the Stars
                                { "Russian", "Одна среди звёзд" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT1_STEP4_OSD1A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Перезарядить передатчик, чтобы усилить сигнал
                                -- Recharge the transmitter to boost the signal
                                { "Russian", "Перезарядите передатчик, чтобы усилить сигнал" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NPC_CORE_ACT1_4_HOLOHUB_LANG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;AUDIO&gt;Communicator_Open&lt;&gt;ГОЛОГРАФИЧЕСКАЯ ТОЧКА АКТИВИРОВАНА... ДОСТУПНО НЕСКОЛЬКО ИСТОЧНИКОВ СИГНАЛА
                                -- &lt;AUDIO&gt;Communicator_Open&lt;&gt;HOLOTERMINUS ACTIVATED... MULTIPLE SIGNAL SOURCES AVAILABLE
                                { "Russian", "&lt;AUDIO&gt;Communicator_Open&lt;&gt;ГОЛО-ТЕРМИНАЛ АКТИВИРОВАН...&lt;NEWLINE&gt;ДОСТУПНО НЕСКОЛЬКО ИСТОЧНИКОВ СИГНАЛА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "HOLOHUB_ACTIVATION_LANG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ГОЛОГРАФИЧЕСКАЯ ТОЧКА АКТИВИРОВАНА&lt;AUDIO&gt;UI_Destination_Reached&lt;&gt;... ДОСТУПНО НЕСКОЛЬКО ИСТОЧНИКОВ СИГНАЛА
                                -- HOLOTERMINUS ACTIVATED&lt;AUDIO&gt;UI_Destination_Reached&lt;&gt;... MULTIPLE SIGNAL SOURCES AVAILABLE
                                { "Russian", "ГОЛО-ТЕРМИНАЛ АКТИВИРОВАН&lt;AUDIO&gt;UI_Destination_Reached&lt;&gt;...&lt;NEWLINE&gt;ДОСТУПНО НЕСКОЛЬКО ИСТОЧНИКОВ СИГНАЛА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT1_STEP5_TRIANGULATE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Точка триангуляции
                                -- Triangulate Position
                                { "Russian", "Триангулировать позицию" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT1_STEP5_OSD1B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ТОЧКА ЗАПИСАНА &lt;IMG&gt;SLASH&lt;&gt; МОЖНО ЗАПИСЫВАТЬ НОВУЮ
                                -- POSITION LOGGED &lt;IMG&gt;SLASH&lt;&gt; READY FOR NEXT POSITION
                                { "Russian", "ПОЗИЦИЯ ЗАФИКСИРОВАНА &lt;IMG&gt;SLASH&lt;&gt; МОЖНО ДВИГАТЬСЯ ДАЛЬШЕ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT1_STEP5_MARKER1B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружено подходящее место.
                                -- Suitable Site Located
                                { "Russian", "Найдено подходящее место" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT1_STEP2_MARKER" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Исследовать источник сигнала
                                -- Stranger's Coordinates?
                                { "Russian", "Координаты незнакомца?" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_A1S6_SURVEY_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружено иноплан. поселение
                                -- Alien Settlement Located
                                { "Russian", "Найдено инопланетное поселение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT1_STEP6_OBJ1_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Чтобы учить слова, &lt;STELLAR&gt;говорите с разумными формами жизни&lt;&gt;, исследуйте развалины и другие святыни.&#xA;Формы жизни можно найти на космических станциях или в зданиях на поверхности планеты.&#xA;Чтобы найти развалины и другие древние памятники, исследуйте планету.
                                -- Words can be learned by &lt;STELLAR&gt;speaking to alien lifeforms&lt;&gt;, or by investigating their ruins and other sacred places.&#xA;Find alien lifeforms aboard Space Stations or in various planetary buildings.&#xA;Explore to locate ruins and other ancient monuments.
                                { "Russian", "Учите слова, &lt;STELLAR&gt;поговорив с разумными формами жизни&lt;&gt;, исследуя развалины и другие святыни.&#xA;Формы жизни можно найти на космических станциях или в зданиях на планетах.&#xA;Находите развалины и другие древние памятники, исследуя планету." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_A1S6_WORD_OSD1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;SLASH&lt;&gt; Обнаружен обитаемый аванпост &lt;IMG&gt;SLASH&lt;&gt;
                                -- &lt;IMG&gt;SLASH&lt;&gt; Inhabited Outpost Detected &lt;IMG&gt;SLASH&lt;&gt;
                                { "Russian", "ОБНАРУЖЕН ОБИТАЕМЫЙ АВАНПОСТ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT1_STEP6_OSD3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;SLASH&lt;&gt; Обнаружен крупный аванпост &lt;IMG&gt;SLASH&lt;&gt;
                                -- &lt;IMG&gt;SLASH&lt;&gt; Large Outpost Detected &lt;IMG&gt;SLASH&lt;&gt;
                                { "Russian", "ОБНАРУЖЕН КРУПНЫЙ АВАНПОСТ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SCANEVENT_APOLLO_INTERSTELLAR" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- СВЯЗНОЙ АПОЛЛОНА ЗА ПРЕДЕЛАМИ ТЕКУЩЕЙ СИСТЕМЫ &lt;IMG&gt;SLASH&lt;&gt; СМ. ГАЛАКТИЧЕСКУЮ КАРТУ
                                -- APOLLO'S CONTACT IS OUTSIDE LOCAL SYSTEM &lt;IMG&gt;SLASH&lt;&gt; CONSULT GALAXY MAP
                                { "Russian", "СВЯЗНОЙ АПОЛЛОНА НАХОДИТСЯ В ДРУГОЙ ЗВЁЗДНОЙ СИСТЕМЕ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SCANEVENT_SCI_INTERSTELLAR" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- НОВОБРАНЕЦ ЗА ПРЕДЕЛАМИ ДАННОЙ МЕСТНОСТИ &lt;IMG&gt;SLASH&lt;&gt; СМ. ГАЛАКТИЧЕСКУЮ КАРТУ
                                -- RECRUIT IS OUTSIDE LOCAL AREA &lt;IMG&gt;SLASH&lt;&gt; CONSULT GALAXY MAP
                                { "Russian", "НОВОБРАНЕЦ НАХОДИТСЯ В ДРУГОЙ ЗВЁЗДНОЙ СИСТЕМЕ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_OVERSEER_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Наймите персонал и расширьте свою базу
                                -- Staff and expand your Base
                                { "Russian", "Наймите персонал" },
                            }
                        },
                        { -- используется и в описании задания и как уведомление
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_EPILOGUE_OBJ3_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вселенная ваша, чтобы исследовать. Наслаждайтесь путешествием.
                                -- The universe is yours to explore. Enjoy the journey
                                { "Russian", "Вселенная ждёт ваших открытий&#xA;Наслаждайтесь путешествием..." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT1_STEP11_OSD1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;SLASH&lt;&gt; ПОЛУЧЕНЫ КООРДИНАТЫ СТАНЦИИ КОРВАКСОВ &lt;IMG&gt;SLASH&lt;&gt;
                                -- &lt;IMG&gt;SLASH&lt;&gt; KORVAX FACILITY COORDINATES RECEIVED &lt;IMG&gt;SLASH&lt;&gt;
                                { "Russian", "ПОЛУЧЕНЫ КООРДИНАТЫ СТАНЦИИ КОРВАКСОВ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT1_STEP13_OSD1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ОТСЛЕЖИВАНИЕ ЗАВЕРШЕНО &lt;IMG&gt;SLASH&lt;&gt; ОБНАРУЖЕНА СИЛОВАЯ ЛИНИЯ
                                -- TRACE SUCCESSFUL &lt;IMG&gt;SLASH&lt;&gt; LEYLINE LINK DETECTED
                                { "Russian", "ОБНАРУЖЕНА СИЛОВАЯ ЛИНИЯ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT2_STEP2_OSD1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вы отследили отраженный сигнал
                                -- Signal Echo Traced
                                { "Russian", "ЭХОСИГНАЛ ОТСЛЕЖЕН" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT2_STEP7_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найден потенциально древний инопланетный монолит
                                -- Potential Ancient Monolith Detected
                                { "Russian", "ОБНАРУЖЕН ПОТЕНЦИАЛЬНЫЙ ДРЕВНИЙ МОНОЛИТ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT2_STEP15_OSD1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ОБНАРУЖЕН ВСПЛЕСК ЭНЕРГИИ &lt;IMG&gt;SLASH&lt;&gt; СИЛОВАЯ ЛИНИЯ ПОРТАЛА
                                -- ENERGY SURGE DETECTED &lt;IMG&gt;SLASH&lt;&gt; PORTAL LEYLINE LOCATED
                                { "Russian", "НАЙДЕНА СИЛОВАЯ ЛИНИЯ ПОРТАЛА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SCIENTIST8_MARKER" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Единый монолит
                                -- Convergent Monolith
                                { "Russian", "Монолит Единства" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT1_PORTAL_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ОБНАРУЖЕНА СИЛОВАЯ ЛИНИЯ &lt;IMG&gt;SLASH&lt;&gt; ПОИСК ИСТОЧНИКА
                                -- LEYLINE LINK DETECTED &lt;IMG&gt;SLASH&lt;&gt; TRACING TO SOURCE
                                { "Russian", "ОБНАРУЖЕНА СИЛОВАЯ ЛИНИЯ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT1_STEP13_OBJ3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найти последний набор знаков
                                -- Locate the final glyph set
                                { "Russian", "Найти последнюю последовательность знаков" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT2_STEP2_LABEL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Отраженный сигнал
                                -- Signal Echo
                                { "Russian", "Эхосигнал" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_A2S14_MSG1_LABEL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Отраженный сигнал бедствия
                                -- Distress Signal Echo
                                { "Russian", "Эхосигнал бедствия" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT2_STEP4_OBJ1E" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сделать двигатель души
                                -- Craft the Soul Engine
                                { "Russian", "Создать двигатель души" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT2_MINDARC_TITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Построить дугу сознания &lt;IMG&gt;SLASH&lt;&gt; Соберите компоненты
                                -- Construct the Mind Ark &lt;IMG&gt;SLASH&lt;&gt; Gather Components
                                { "Russian", "Добыть компоненты ковчега сознания" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT2_STEP4_OBJ1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Собрать компоненты дуги сознания
                                { "Russian", "Собрать компоненты ковчега сознания" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT2_STEP4_OBJ1_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Артемиду можно спасти с помощью дуги сознания.&#xA;Для более продвинутых компонентов может потребоваться &lt;TECHNOLOGY&gt;улучшение гипердвигателя&lt;&gt;.
                                { "Russian", "Артемиду можно спасти с помощью ковчега сознания.&#xA;Для более продвинутых компонентов может потребоваться &lt;TECHNOLOGY&gt;улучшение гипердвигателя﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT2_STEP4_OBJ1_TIPE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Двигатель души является настоящим сердцем дуги сознания.
                                { "Russian", "Двигатель души является настоящим сердцем ковчега сознания." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT2_STEP4_OBJ2_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Артемиду можно спасти с помощью дуги сознания.&#xA;Для более продвинутых компонентов может потребоваться &lt;TECHNOLOGY&gt;улучшение гипердвигателя&lt;&gt;.
                                { "Russian", "Артемиду можно спасти с помощью ковчега сознания.&#xA;Для более продвинутых компонентов может потребоваться &lt;TECHNOLOGY&gt;улучшение гипердвигателя﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NPC_CORE_ACT2_3B_LANG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Кровь Артемиды — это данные, помехи — ее сердце. Я помогу тебе все это вернуть.&#xA;Нам нужна &lt;TECHNOLOGY&gt;дуга сознания&lt;&gt; — вместилище для души. Ты сможешь ее достать?&#xA;Я восстановлю частоту Артемиды. Поговори со своим другом, когда подготовишься.
                                -- The blood of Artemis is data, the heart its glitch. I can help you retrieve them both.&#xA;We require a &lt;TECHNOLOGY&gt;Mind Ark&lt;&gt;, a receptacle for their soul. Can you do that for me?&#xA;I am reactivating Artemis' frequency. Speak with them when you are ready.
                                { "Russian", "Кровь Артемиды — данные, сердце — это сбой. Я помогу тебе всё это вернуть.&#xA;Нам нужен &lt;TECHNOLOGY&gt;ковчег сознания&lt;&gt; — вместилище для души. Ты сможешь его достать?&#xA;Я восстановлю частоту Артемиды. Поговори со своим другом, когда подготовишься." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NPC_CORE_ACT2_3B_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Незнакомец предлагает чертежи устройства под названием &lt;TECHNOLOGY&gt;дуга сознания&lt;&gt; — устройства, которое, как он уверяет, сможет вернуть Артемиду к жизни.
                                { "Russian", "Незнакомец предлагает чертежи устройства под названием &lt;TECHNOLOGY&gt;ковчег сознания&lt;&gt; — устройства, которое, как он уверяет, сможет вернуть Артемиду к жизни." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NADA_CORE_ACT2_7B_RES_A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Я рассказываю Нада о судьбе Артемиды.&#xA;Я собираюсь рассказать ему, что такое &lt;TECHNOLOGY&gt;дуга сознания&lt;&gt;, но когда Нада касается ее, огни на его маске загораются ярче звезд.
                                { "Russian", "Я рассказываю Нада о судьбе Артемиды.&#xA;Я собираюсь рассказать ему, что такое &lt;TECHNOLOGY&gt;ковчег сознания﻿,&lt;&gt; но когда Нада касается его, огни на его маске загораются ярче звёзд." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT2_STEP4_OBJ1A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Купить изоляцию проводов
                                -- Purchase Wiring Looms
                                { "Russian", "Купить проводной станок" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_HOLOHUB_OPT_APL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Настройтесь на частоту Аполлона.
                                -- Tune to Apollo
                                { "Russian", "Настройтесь на частоту Аполлона" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_HOLOHUB_OPT_ART" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Настройтесь на частоту Артемиды.
                                -- Tune to Artemis
                                { "Russian", "Настройтесь на частоту Артемиды" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_HOLOHUB_OPT_NLL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Настройтесь на частоту -пусто-.
                                -- Tune to -null-
                                { "Russian", "Настройтесь на частоту -пусто-" },
                            }
                        },
                        -- речь про Артемиду... наверное
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NPC_CORE_ACT2_9D_LANG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Будет ли он счастлив?
                                -- Will they be happy?
                                { "Russian", "Будет ли она счастлива?" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT2_STEP11_OBJ1A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поговорите с корваксом-картографом.
                                -- Speak to a Korvax Cartographer
                                { "Russian", "Поговорите с корваксом-картографом" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NPC_CORE_ACT2_27F_OPT_A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вселенная — это симуляция.
                                -- The universe is a simulation.
                                { "Russian", "Вселенная — это симуляция" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT2_STEP1_OBJ1_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Портал отбросил вас от корабля.&#xA;Чтобы найти его, идите на маркер корабля.
                                -- The portal has placed you some distance from your ship.&#xA;Head towards the ship's marker to locate it.
                                { "Russian", "Портал отбросил вас от корабля.&#xA;Чтобы найти его, идите к маркеру корабля." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NPC_CORE_ACT3_1A_LANG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ОТВРАЩЕНИЕ | СТРАХ| ПАНИКА [&lt;TRADABLE&gt;ОБНАРУЖЕНО&lt;&gt;]&#xA;&#xA;ОТВЕТНАЯ РЕАКЦИЯ [&lt;STELLAR&gt;ПРИМЕНЕНО&lt;&gt;] &lt;IMG&gt;SLASH&lt;&gt; ОЧИЩЕНИЕ [&lt;TECHNOLOGY&gt;НЕЙТРАЛИЗОВАНО&lt;&gt;]
                                -- DISGUST | FEAR | PANIC RESPONSE [&lt;TRADABLE&gt;DETECTED&lt;&gt;]&#xA;&#xA;COUNTERMEASURE [&lt;STELLAR&gt;DEPLOYED&lt;&gt;] &lt;IMG&gt;SLASH&lt;&gt; PURGE [&lt;TECHNOLOGY&gt;NEUTRALISED&lt;&gt;]
                                { "Russian", "ОТВРАЩЕНИЕ | СТРАХ| ПАНИКА [&lt;TRADABLE&gt;ОБНАРУЖЕНО&lt;&gt;]&#xA;&#xA;ОТВЕТНАЯ РЕАКЦИЯ [&lt;STELLAR&gt;ПРИМЕНЕНО&lt;&gt;]&#xA;&#xA;ОЧИЩЕНИЕ [&lt;TECHNOLOGY&gt;НЕЙТРАЛИЗОВАНО&lt;&gt;]" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT3_STEP1_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПЕРЕДАЮ &lt;IMG&gt;SLASH&lt;&gt; ОШИБКА СЕТИ &lt;IMG&gt;SLASH&lt;&gt; НЕТ ОТВЕТА
                                -- BROADCASTING &lt;IMG&gt;SLASH&lt;&gt; NETWORK COMPROMISED &lt;IMG&gt;SLASH&lt;&gt; NO RESPONSE DETECTED
                                { "Russian", "ОШИБКА СЕТИ &lt;IMG&gt;SLASH&lt;&gt; НЕТ ОТВЕТА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT2_STEP5_OBJ2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Высадитесь на космическую аномалию
                                -- Board the Space Anomaly
                                { "Russian", "Посетить Космическую Аномалию" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NADAPOLO_MISSION_OBJ1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Высадитесь на космическую аномалию
                                -- Board the Space Anomaly
                                { "Russian", "Посетить Космическую Аномалию" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ACT2_STEP3_SHIP_OPT_A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите последний интерфейс
                                -- Seek the Final Interface
                                { "Russian", "Найти последний интерфейс" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ACT2_STEP3_SHIP_OPT_B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Пройдите путь Атласа.
                                -- Complete the Atlas Path
                                { "Russian", "Пройти путь Атласа" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ACT2_STEP3_SHIP_OPT_C" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Исследуйте галактику.
                                -- Explore the galaxy
                                { "Russian", "Исследовать галактику" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ACT3_GLYPH_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ВВОД ДАННЫХ &lt;IMG&gt;SLASH&lt;&gt; ПОЛУЧЕНА КОМБИНАЦИЯ &lt;IMG&gt;SLASH&lt;&gt; ИСТОЧНИК НЕИЗВЕСТЕН
                                -- DATA INJECTION &lt;IMG&gt;SLASH&lt;&gt; SEQUENCE RECEIVED &lt;IMG&gt;SLASH&lt;&gt; SOURCE UNKNOWN
                                { "Russian", "ВВОД ПОСЛЕДОВАТЕЛЬНОСТИ ОТ НЕИЗВЕСТНОГО ИСТОЧНИКА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT3_STEP4_OBJ" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите и войдите в Последний портал
                                -- Locate and Enter the Final Portal
                                { "Russian", "Найдите и войдите в последний портал" },
                            }
                        },
                        -- обрезается на "фрагменты его Интерфейса — камни"
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ALL_U3ATLAS_NEWLORE_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- С самого рождения у меня было все необходимое для исследования этих миров. Мой экзокостюм, мой корабль, все мое снаряжение и каждый мой импульс вели меня вперед, побуждая сканировать и называть все, что мне удавалось найти.&#xA;Но это? Я не могу дать имя тому, что вижу сейчас. Внутри сферы я вижу миры, которых никогда не существовало. Они пробуждают что-то первобытное и неоспоримое. Я вижу предсмертный крик бога, вижу, как что-то приближается к нему...&#xA;Он хочет, чтобы мое путешествие продолжалось, ждет, что я и дальше буду искать фрагменты его Интерфейса — камни Атласа. Я нахожусь в плену вечного цикла, подчинения и незнания — он ликует...
                                -- I was born with everything I needed to explore these worlds. My exosuit, my ship, every tool and every impulse led me to scan and give name to whatever I could find.&#xA;&#xA;But this? I can give no name to what I see. Within the orb I see worlds that never were. I see the stirring of something primal and undeniable. I see the death cry of a God, or something approaching it...&#xA;&#xA;It wants me to persist in this journey, seeking fragments of its interface, the stones of the Atlas. It rejoices in my repetition, my compliance, my cloud of unknowing...
                                { "Russian", "С самого рождения у меня было всё для исследования этих миров. Мой экзокостюм, корабль, снаряжение и каждый мой импульс вели меня вперед, побуждая сканировать и именовать все подряд.&#xA;Но это? Я не могу дать имя увиденному. Внутри сферы я вижу никогда не существовавшие миры. Они пробуждают что-то первобытное и неоспоримое. Я вижу предсмертный крик бога, вижу, как что-то приближается к нему...&#xA;Он хочет, чтобы я продолжал путешествие и искал фрагменты его Интерфейса — камни Атласа. Он ликует от моей зацикленности, моего подчинения и незнания..." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT3_STEP3_OBJ1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Любуйтесь галактикой
                                -- Enjoy the galaxy
                                { "Russian", "Наслаждаться галактикой" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL2_OBJ4B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добудьте компоненты гипердвигателя: хроматический металл
                                -- Acquire Hyperdrive Components: Chromatic Metal
                                { "Russian", "Добыть компоненты гипердвигателя: хроматический металл" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL2_OBJ4B_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Для гипердвигателя необходим &lt;STELLAR&gt;хроматический металл&lt;&gt;. Для поиска и обработки &lt;STELLAR&gt;хроматического металла&lt;&gt; может потребоваться и &lt;TECHNOLOGY&gt;усилитель сигнала&lt;&gt;, и &lt;TECHNOLOGY&gt;портативный очиститель&lt;&gt;.
                                -- The Hyperdrive requires &lt;STELLAR&gt;Chromatic Metal&lt;&gt;. Locating and processing &lt;STELLAR&gt;Chromatic Metal&lt;&gt; may require use of both a &lt;TECHNOLOGY&gt;Signal Booster&lt;&gt; and a &lt;TECHNOLOGY&gt;Portable Refiner&lt;&gt;.
                                { "Russian", "Для гипердвигателя необходим &lt;STELLAR&gt;хроматический металл﻿.&lt;&gt; Для поиска и обработки &lt;STELLAR&gt;хроматического металла&lt;&gt; может потребоваться и &lt;TECHNOLOGY&gt;усилитель сигнала&lt;&gt; и &lt;TECHNOLOGY&gt;портативный очиститель﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL3_OBJ1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Создание топлива для варпа: найти схему для антиматерии
                                -- Craft Warp Fuel: Find Antimatter Recipe
                                { "Russian", "Создать варп-топливо: найти чертеж антиматерии" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL3_OBJ1_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Чтобы выполнить межзвездный перелет, гипердвигатель необходимо заправить &lt;FUEL&gt;топливом для варпа&lt;&gt;.&#xA;Следуйте за сигналом и найдите источник &lt;FUEL&gt;антиматерии&lt;&gt;, чтобы создать топливо для варпа.
                                -- Interstellar flight requires &lt;FUEL&gt;Warp Fuel&lt;&gt; to power the hyperdrive.&#xA;Follow the signal and locate a source of &lt;FUEL&gt;Antimatter&lt;&gt; to create warp fuel.
                                { "Russian", "Чтобы выполнить межзвёздный перелет, гипердвигатель необходимо заправить &lt;FUEL&gt;варп-топливом﻿.&lt;&gt;&#xA;Следуйте за сигналом и найдите источник &lt;FUEL&gt;антиматерии&lt;&gt;, чтобы создать топливо." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL4_OBJ6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Совершите варп-прыжок в другую систему
                                -- Warp to Another System
                                { "Russian", "Совершите прыжок в другую систему" },
                            }
                        },
                        --#endregion

                        --#region UI_CORE_LAUNCHFUEL_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_LAUNCHFUEL_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите: &lt;TECHNOLOGY&gt;%ITEM%&lt;&gt; (%CURRENT%/%AMOUNT%)&#xA;&lt;TECHNOLOGY&gt;%ITEM%&lt;&gt; представляет собой синие кристаллы&#xA;Используйте сканер (&lt;IMG&gt;SCAN&lt;&gt;), чтобы найти залежи ресурса &lt;TECHNOLOGY&gt;%ITEM%&lt;&gt;
                                -- Gather &lt;TECHNOLOGY&gt;%ITEM%&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;&lt;TECHNOLOGY&gt;%ITEM%&lt;&gt; is found as blue crystals&#xA;Scan (&lt;IMG&gt;SCAN&lt;&gt;) to locate &lt;TECHNOLOGY&gt;%ITEM%&lt;&gt; deposits
                                { "Russian", "Соберите: &lt;TECHNOLOGY&gt;%ITEM%&lt;&gt; (%CURRENT%/%AMOUNT%)&#xA;&lt;TECHNOLOGY&gt;%ITEM%&lt;&gt; представляет собой синие кристаллы&#xA;Используйте сканер (&lt;IMG&gt;SCAN&lt;&gt;), чтобы найти их" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_LAUNCHFUEL_MSG1_VRA" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите: &lt;TECHNOLOGY&gt;%ITEM%&lt;&gt; (%CURRENT%/%AMOUNT%)&#xA;&lt;TECHNOLOGY&gt;%ITEM%&lt;&gt; представляет собой синие кристаллы.&#xA;Используйте &lt;STELLAR&gt;сканер&lt;&gt;, чтобы найти залежи ресурса &lt;TECHNOLOGY&gt;%ITEM%&lt;&gt;.&#xA;Заведите руку за плечо и нажмите &lt;IMG&gt;VR_HOLSTER&lt;&gt;, чтобы взять мультитул.
                                { "Russian", "Соберите: &lt;TECHNOLOGY&gt;%ITEM%&lt;&gt; (%CURRENT%/%AMOUNT%)&#xA;&lt;TECHNOLOGY&gt;%ITEM%&lt;&gt; представляет собой синие кристаллы&#xA;Используйте сканер (&lt;IMG&gt;SCAN&lt;&gt;), чтобы найти их&#xA;Заведите руку за плечо и нажмите &lt;IMG&gt;VR_HOLSTER&lt;&gt;, чтобы взять мультитул" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_LAUNCHFUEL_MSG1_VRB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите: &lt;TECHNOLOGY&gt;%ITEM%&lt;&gt; (%CURRENT%/%AMOUNT%)&#xA;&lt;TECHNOLOGY&gt;%ITEM%&lt;&gt; представляет собой синие кристаллы.&#xA;Используйте &lt;STELLAR&gt;сканер&lt;&gt;, чтобы найти залежи ресурса &lt;TECHNOLOGY&gt;%ITEM%&lt;&gt;.&#xA;Укажите &lt;STELLAR&gt;%SECONDARY_HAND%&lt;&gt; на заднюю сторону своего &lt;TECHNOLOGY&gt;мультитула&lt;&gt;.
                                { "Russian", "Соберите: &lt;TECHNOLOGY&gt;%ITEM%&lt;&gt; (%CURRENT%/%AMOUNT%)&#xA;&lt;TECHNOLOGY&gt;%ITEM%&lt;&gt; представляет собой синие кристаллы&#xA;Используйте сканер (&lt;IMG&gt;SCAN&lt;&gt;), чтобы найти их&#xA;Укажите &lt;STELLAR&gt;%SECONDARY_HAND%&lt;&gt; на заднюю сторону своего &lt;TECHNOLOGY&gt;мультитула&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_LAUNCHFUEL_MSG1_VRC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите: &lt;TECHNOLOGY&gt;%ITEM%&lt;&gt; (%CURRENT%/%AMOUNT%)&#xA;&lt;TECHNOLOGY&gt;%ITEM%&lt;&gt; представляет собой синие кристаллы.&#xA;Используйте &lt;STELLAR&gt;сканер&lt;&gt;, чтобы найти залежи ресурса &lt;TECHNOLOGY&gt;%ITEM%&lt;&gt;.&#xA;Укажите на слово «Сканирование» и выберите то, что вам нужно, при помощи &lt;IMG&gt;FE_ALTSELECT&lt;&gt;.
                                { "Russian", "Соберите: &lt;TECHNOLOGY&gt;%ITEM%&lt;&gt; (%CURRENT%/%AMOUNT%)&#xA;&lt;TECHNOLOGY&gt;%ITEM%&lt;&gt; представляет собой синие кристаллы&#xA;Используйте сканер (&lt;IMG&gt;SCAN&lt;&gt;), чтобы найти их&#xA;Укажите на слово «Сканирование» и выберите то, что вам нужно, при помощи &lt;IMG&gt;FE_ALTSELECT&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_LAUNCHFUEL_MSG1_VRD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найти: &lt;TECHNOLOGY&gt;%ITEM%&lt;&gt; — %CURRENT%/%AMOUNT%&#xA;&lt;TECHNOLOGY&gt;%ITEM%&lt;&gt; представляет собой синие кристаллы.&#xA;Удерживайте &lt;IMG&gt;VR_TELEPORT&lt;&gt;, чтобы перейти в режим телепортации.&#xA;Отпустите &lt;IMG&gt;VR_TELEPORT&lt;&gt;, чтобы телепортироваться.
                                { "Russian", "Найдите: &lt;TECHNOLOGY&gt;%ITEM%&lt;&gt; (%CURRENT%/%AMOUNT%)&#xA;&lt;TECHNOLOGY&gt;%ITEM%&lt;&gt; представляет собой синие кристаллы&#xA;Удерживайте &lt;IMG&gt;VR_TELEPORT&lt;&gt;, чтобы перейти в режим телепортации&#xA;Отпустите &lt;IMG&gt;VR_TELEPORT&lt;&gt;, чтобы телепортироваться" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_LAUNCHFUEL_MSG1_VRE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найти: &lt;TECHNOLOGY&gt;%ITEM%&lt;&gt; — %CURRENT%/%AMOUNT%&#xA;&lt;TECHNOLOGY&gt;%ITEM%&lt;&gt; представляет собой синие кристаллы.&#xA;Используйте &lt;IMG&gt;VR_SNAPLEFT&lt;&gt;/&lt;IMG&gt;VR_SNAPRIGHT&lt;&gt; для смены направления.&#xA;Удерживайте &lt;IMG&gt;VR_TELEPORT&lt;&gt;, чтобы перейти в режим телепортации.
                                { "Russian", "Найдите: &lt;TECHNOLOGY&gt;%ITEM%&lt;&gt; (%CURRENT%/%AMOUNT%)&#xA;&lt;TECHNOLOGY&gt;%ITEM%&lt;&gt; представляет собой синие кристаллы&#xA;Используйте &lt;IMG&gt;VR_SNAPLEFT&lt;&gt;/&lt;IMG&gt;VR_SNAPRIGHT&lt;&gt; для смены направления&#xA;Удерживайте &lt;IMG&gt;VR_TELEPORT&lt;&gt;, чтобы перейти в режим телепортации" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_LAUNCHFUEL_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добыть: %ITEM% — %CURRENT%/%AMOUNT%&#xA;Создайте &lt;COMMODITY&gt;металлическую обшивку&lt;&gt;.
                                { "Russian", "Добудьте: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;Создайте &lt;COMMODITY&gt;металлическую обшивку&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_LAUNCHFUEL_MSG2A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Создайте: %ITEM%%CURRENT%/%AMOUNT%&#xA;Добыто ферритной пыли: &lt;TRADEABLE&gt;50&lt;&gt;/&lt;TRADEABLE&gt;50&lt;&gt;&#xA;Нажмите &lt;IMG&gt;INVENTORY&lt;&gt;, чтобы открыть инвентарь.&#xA;Чтобы создать объект в пустой ячейке, используйте &lt;IMG&gt;PRODMENU&lt;&gt;
                                -- Craft %ITEM%: %CURRENT%/%AMOUNT%&#xA;Ferrite Dust acquired: &lt;TRADEABLE&gt;50&lt;&gt;/&lt;TRADEABLE&gt;50&lt;&gt;&#xA;Use &lt;IMG&gt;INVENTORY&lt;&gt; to access your inventory&#xA;Use &lt;IMG&gt;PRODMENU&lt;&gt; to craft in empty slots
                                { "Russian", "Создайте: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;Добыто ферритной пыли: &lt;TRADEABLE&gt;50&lt;&gt;/&lt;TRADEABLE&gt;50&lt;&gt;&#xA;Нажмите &lt;IMG&gt;INVENTORY&lt;&gt;, чтобы открыть инвентарь&#xA;Создайте объект в пустой ячейке, нажав &lt;IMG&gt;PRODMENU&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_LAUNCHFUEL_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Создайте &lt;COMMODITY&gt;металлическую обшивку&lt;&gt;&#xA;Создайте &lt;TECHNOLOGY&gt;портативный очиститель&lt;&gt; для обработки &lt;EARTH&gt;ферритной пыли&lt;&gt;.&#xA;Чтобы открыть меню созидания, нажмите &lt;IMG&gt;BUILD_MENU&lt;&gt;.
                                { "Russian", "Создайте &lt;COMMODITY&gt;металлическую обшивку&lt;&gt;&#xA;Создайте &lt;TECHNOLOGY&gt;портативный очиститель&lt;&gt; для обработки &lt;EARTH&gt;ферритной пыли&lt;&gt;&#xA;Чтобы открыть меню строительства, нажмите &lt;IMG&gt;BUILD_MENU&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_LAUNCHFUEL_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Создайте &lt;COMMODITY&gt;металлическую обшивку&lt;&gt;.&#xA;Очистите: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;Обработайте с помощью &lt;TECHNOLOGY&gt;портативного очистителя&lt;&gt;.
                                { "Russian", "Создайте &lt;COMMODITY&gt;металлическую обшивку&lt;&gt;&#xA;Очистите: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;Используйте для этого &lt;TECHNOLOGY&gt;портативный очиститель&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_LAUNCHFUEL_MSG5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сконструировать: %ITEM% — %CURRENT%/%AMOUNT%
                                { "Russian", "Создайте: %ITEM% (%CURRENT%/%AMOUNT%)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_LAUNCHFUEL_MSG6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Накоплено достаточно &lt;TECHNOLOGY&gt;дигидрогена&lt;&gt;&#xA;Создать: %ITEM% — %CURRENT%/%AMOUNT%
                                { "Russian", "Накоплено достаточно &lt;TECHNOLOGY&gt;дигидрогена&lt;&gt;&#xA;Создайте: %ITEM% (%CURRENT%/%AMOUNT%)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_LAUNCHFUEL_MSG7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Заправьте &lt;TECHNOLOGY&gt;взлетные ускорители&lt;&gt;&#xA;Выполните заправку в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;)&#xA;или в быстром меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;). Для этого надо быть на борту корабля.
                                -- Fuel the &lt;TECHNOLOGY&gt;Launch Thrusters&lt;&gt;&#xA;Refuel in Inventory (&lt;IMG&gt;INVENTORY&lt;&gt;)&#xA;Or in the Quick Menu (&lt;IMG&gt;QUICK_MENU&lt;&gt;) when onboard the ship
                                { "Russian", "Заправьте &lt;TECHNOLOGY&gt;взлетные ускорители&lt;&gt; на борту корабля&#xA;Выполните заправку в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;) или из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        --#endregion

                        --#region UI_CORE_COMMS_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_COMMS_MSG1_ART" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Возвращайтесь в космос и свяжитесь с Артемидой.
                                { "Russian", "Возвращайтесь в космос и свяжитесь с Артемидой" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_COMMS_MSG1_APL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Возвращайтесь в космос и свяжитесь с Аполлоном.
                                { "Russian", "Возвращайтесь в космос и свяжитесь с Аполлоном" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_COMMS_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Чтобы ответить, нажмите &lt;IMG&gt;QUICK_MENU&lt;&gt;.
                                -- Answer the Communicator by pressing &lt;IMG&gt;QUICK_MENU&lt;&gt;
                                { "Russian", "Ответьте по коммуникатору из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_COMMS_MSG2_VR1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Ответьте на &lt;TECHNOLOGY&gt;входящий вызов&lt;&gt;.&#xA;Чтобы открыть &lt;TECHNOLOGY&gt;быстрое меню&lt;&gt;, укажите на свою &lt;STELLAR&gt;%SECONDARY_HAND%&lt;&gt;.&#xA;Чтобы ответить, выберите &lt;STELLAR&gt;коммуникатор звездолета&lt;&gt;.
                                { "Russian", "Ответьте на &lt;TECHNOLOGY&gt;входящий вызов&lt;&gt;&#xA;Чтобы открыть &lt;TECHNOLOGY&gt;быстрое меню&lt;&gt;, укажите на свою &lt;STELLAR&gt;%SECONDARY_HAND%&lt;&gt;&#xA;Чтобы ответить, выберите &lt;STELLAR&gt;коммуникатор звездолёта&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_COMMS_MSG2_VR2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Ответьте на вызов с помощью &lt;STELLAR&gt;коммуникатора звездолета&lt;&gt;.&#xA;Укажите на &lt;TECHNOLOGY&gt;экран коммуникатора&lt;&gt;.&#xA;Выберите «Ответ» с помощью &lt;IMG&gt;QUICK_ACTION&lt;&gt;.
                                { "Russian", "Ответьте на вызов с помощью &lt;STELLAR&gt;коммуникатора звездолёта&lt;&gt;&#xA;Укажите на &lt;TECHNOLOGY&gt;экран коммуникатора&lt;&gt;&#xA;Выберите «Ответ» с помощью &lt;IMG&gt;QUICK_ACTION&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region UI_CORE_TUTORIAL.*MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL1_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Доберитесь до отмеченного сигнала: 0 / 1&#xA;Экзокостюм обнаружил &lt;STELLAR&gt;сигнал автоматического передатчика&lt;&gt;.
                                -- Reach the marked signal: 0 / 1&#xA;Exosuit detected &lt;STELLAR&gt;automated signal broadcast&lt;&gt;
                                { "Russian", "Экзокостюм поймал &lt;STELLAR&gt;сигнал автоматизированной системы&lt;&gt;&#xA;Доберитесь до отмеченного сигнала" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL1_MSG1A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Исследуйте разбившийся корабль.
                                { "Russian", "Исследуйте разбившийся корабль" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL1_MSG1A_VR2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Исследуйте разбившийся корабль.&#xA;Используйте &lt;IMG&gt;VR_SNAPLEFT&lt;&gt;/&lt;IMG&gt;VR_SNAPRIGHT&lt;&gt; для смены направления.
                                { "Russian", "Исследуйте разбившийся корабль&#xA;Используйте &lt;IMG&gt;VR_SNAPLEFT&lt;&gt;/&lt;IMG&gt;VR_SNAPRIGHT&lt;&gt; для смены направления" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL1_MSG1B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поднимитесь на борт разбившегося корабля.
                                { "Russian", "Поднимитесь на борт разбившегося корабля" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL1_MSG1C" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вернитесь к разбившемуся кораблю.
                                { "Russian", "Вернитесь к разбившемуся кораблю" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL1_MSG1A_VR" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Исследуйте разбившийся корабль.&#xA;Удерживайте &lt;IMG&gt;INTERACT&lt;&gt;, стоя рядом с кораблем. &#xA;Появится линия, ведущая от вас к этому объекту.&#xA;Чтобы взаимодействовать с объектом, потяните линию к себе.
                                { "Russian", "Исследуйте разбившийся корабль&#xA;Удерживайте &lt;IMG&gt;INTERACT&lt;&gt;, стоя рядом с кораблем&#xA;Появится линия, ведущая от вас к этому объекту&#xA;Чтобы взаимодействовать с объектом, потяните линию к себе" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL1_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Отремонтировать основное оборудование&#xA;Выберите подсистему для ремонта в журнале&#xA;Открыть журнал &lt;IMG&gt;OPTIONS&lt;&gt;
                                -- Repair critical equipment&#xA;Select a subsystem to repair in the Log&#xA;Access the Log with &lt;IMG&gt;OPTIONS&lt;&gt;
                                { "Russian", "Отремонтируйте основное оборудование&#xA;Выберите с чего начать в журнале&#xA;Откройте журнал с помощью &lt;IMG&gt;OPTIONS&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL1_MSG3A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Все системы исправны.&#xA;Вернитесь на свой корабль.
                                { "Russian", "Все системы исправны&#xA;Вернитесь на свой корабль" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL1_MSG3B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Все системы исправны&#xA;Возьмите &lt;TECHNOLOGY&gt;портативный очиститель&lt;&gt; c помощью &lt;IMG&gt;DECONSTRUCT&lt;&gt;
                                { "Russian", "Все системы исправны&#xA;Поднимите &lt;TECHNOLOGY&gt;портативный очиститель&lt;&gt; c помощью &lt;IMG&gt;DECONSTRUCT&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL1_MSG3B_ALT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Покиньте корабль (&lt;IMG&gt;EXITSHIP&lt;&gt;) и заберите &lt;TECHNOLOGY&gt;портативный очиститель&lt;&gt;.&#xA;Возьмите &lt;TECHNOLOGY&gt;портативный очиститель&lt;&gt; с помощью &lt;IMG&gt;DECONSTRUCT&lt;&gt;
                                { "Russian", "Покиньте корабль (&lt;IMG&gt;EXITSHIP&lt;&gt;) и заберите &lt;TECHNOLOGY&gt;портативный очиститель&lt;&gt;&#xA;Поднимите &lt;TECHNOLOGY&gt;портативный очиститель&lt;&gt; с помощью &lt;IMG&gt;DECONSTRUCT&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL1_MSG3B_ALT_VR" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Покиньте корабль и заберите &lt;TECHNOLOGY&gt;портативный очиститель&lt;&gt;.&#xA;Удерживайте &lt;IMG&gt;INTERACT_LEFT&lt;&gt; или &lt;IMG&gt;INTERACT&lt;&gt; и возьмитесь за &lt;TRADEABLE&gt;ручку в кабине&lt;&gt;.&#xA;Чтобы выйти, поднимите ручку.
                                { "Russian", "Покиньте корабль и заберите &lt;TECHNOLOGY&gt;портативный очиститель&lt;&gt;&#xA;Удерживайте &lt;IMG&gt;INTERACT_LEFT&lt;&gt; или &lt;IMG&gt;INTERACT&lt;&gt; и возьмитесь за &lt;TRADEABLE&gt;ручку в кабине&lt;&gt;&#xA;Чтобы выйти, поднимите ручку" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL1_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Все системы исправны.&#xA;Ищите ответы среди звезд.&#xA;Нажмите &lt;IMG&gt;THRUST&lt;&gt;, чтобы взлететь.
                                { "Russian", "Все системы исправны&#xA;Ищите ответы среди звезд&#xA;Нажмите &lt;IMG&gt;THRUST&lt;&gt;, чтобы взлететь" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL1_MSG3_VR" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Используйте &lt;IMG&gt;THROTTLEGRAB&lt;&gt;, чтобы взяться за &lt;STELLAR&gt;рычаг управления двигателем&lt;&gt;.&#xA;Чтобы подняться в воздух, отклоните рычаг управления двигателем вперед.&#xA;Удерживайте &lt;IMG&gt;INTERACT&lt;&gt; и поднимите &lt;TRADEABLE&gt;ручку в кабине&lt;&gt;, чтобы выйти.
                                { "Russian", "Используйте &lt;IMG&gt;THROTTLEGRAB&lt;&gt;, чтобы взяться за &lt;STELLAR&gt;рычаг управления двигателем&lt;&gt;&#xA;Чтобы подняться в воздух, отклоните рычаг управления двигателем вперед&#xA;Удерживайте &lt;IMG&gt;INTERACT&lt;&gt; и поднимите &lt;TRADEABLE&gt;ручку в кабине&lt;&gt;, чтобы выйти" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL1_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Все системы исправны&lt;&gt;.&#xA;Ищите ответы среди звезд.
                                { "Russian", "&lt;STELLAR&gt;Все системы исправны&lt;&gt;&#xA;Ищите ответы среди звёзд" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL1_MSG4A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Все системы исправны&lt;&gt;.&#xA;Взлетите в &lt;SPECIAL&gt;космос&lt;&gt;&#xA;Удерживайте &lt;IMG&gt;THRUST&lt;&gt;, чтобы ускориться
                                { "Russian", "&lt;STELLAR&gt;Все системы исправны&lt;&gt;&#xA;Взлетите в &lt;SPECIAL&gt;космос&lt;&gt;&#xA;Удерживайте &lt;IMG&gt;THRUST&lt;&gt;, чтобы ускориться" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL1_MSG4_VR" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Все системы исправны&lt;&gt;.&#xA;Взлетите в &lt;SPECIAL&gt;космос&lt;&gt;
                                { "Russian", "&lt;STELLAR&gt;Все системы исправны&lt;&gt;&#xA;Взлетите в &lt;SPECIAL&gt;космос&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL1_MSG_STARS1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Совершен выход на орбиту&lt;&gt;&#xA;Проверьте системы звездолета: 0 / 3&#xA;Проверьте системы управления полетом и реактивной тяги (&lt;IMG&gt;THRUST&lt;&gt;).
                                { "Russian", "&lt;STELLAR&gt;Совершен выход на орбиту&lt;&gt;&#xA;Проверьте системы звездолёта: 0/3&#xA;Проверьте системы управления полетом и реактивной тяги (&lt;IMG&gt;THRUST&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL1_MSG_STARS2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Совершен выход на орбиту&lt;&gt;&#xA;Проверьте системы звездолета: 1 / 3&#xA;Проверьте &lt;STELLAR&gt;ускорение&lt;&gt; с помощью &lt;IMG&gt;BOOST&lt;&gt;
                                { "Russian", "&lt;STELLAR&gt;Совершен выход на орбиту&lt;&gt;&#xA;Проверьте системы звездолёта: 1/3&#xA;Проверьте &lt;STELLAR&gt;ускорение&lt;&gt; с помощью &lt;IMG&gt;BOOST&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL1_MSG_STARS3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Совершен выход на орбиту&lt;&gt;&#xA;Проверьте системы звездолета: 2 / 3&#xA;Удерживайте &lt;IMG&gt;PULSEJUMP&lt;&gt;, чтобы проверить работу &lt;STELLAR&gt;импульсного двигателя&lt;&gt;.
                                { "Russian", "&lt;STELLAR&gt;Совершен выход на орбиту&lt;&gt;&#xA;Проверьте системы звездолёта: 2/3&#xA;Удерживайте &lt;IMG&gt;PULSEJUMP&lt;&gt;, чтобы проверить работу &lt;STELLAR&gt;импульсного двигателя&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL1_MSG_STARS4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Совершен выход на орбиту&lt;&gt;&#xA;Проверьте системы звездолета: &lt;TRADEABLE&gt;3 / 3&lt;&gt;
                                { "Russian", "&lt;STELLAR&gt;Совершен выход на орбиту&lt;&gt;&#xA;Проверьте системы звездолёта: &lt;TRADEABLE&gt;3/3&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL1_MSG_STARS1_VR" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Удерживайте &lt;IMG&gt;STICKGRAB&lt;&gt; и наклоняйте &lt;STELLAR&gt;джойстик&lt;&gt;, чтобы управлять кораблем.&#xA;Используйте &lt;IMG&gt;THROTTLEGRAB&lt;&gt;, чтобы взяться за &lt;STELLAR&gt;рычаг управления двигателем&lt;&gt;.&#xA;Используйте рычаг управления двигателем для &lt;STELLAR&gt;изменения скорости&lt;&gt;.
                                { "Russian", "Удерживайте &lt;IMG&gt;STICKGRAB&lt;&gt; и наклоняйте &lt;STELLAR&gt;джойстик&lt;&gt;, чтобы управлять кораблем&#xA;Используйте &lt;IMG&gt;THROTTLEGRAB&lt;&gt;, чтобы взяться за &lt;STELLAR&gt;рычаг управления двигателем&lt;&gt;&#xA;Используйте рычаг управления двигателем для &lt;STELLAR&gt;изменения скорости&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL1_MSG_STARS2_VR" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Совершен выход на орбиту&lt;&gt;&#xA;Проверьте системы звездолета: 1 / 3&#xA;Проверьте &lt;STELLAR&gt;ускорение&lt;&gt; с помощью &lt;IMG&gt;BOOST&lt;&gt;
                                { "Russian", "&lt;STELLAR&gt;Совершен выход на орбиту&lt;&gt;&#xA;Проверьте системы звездолёта: 1/3&#xA;Проверьте &lt;STELLAR&gt;ускорение&lt;&gt; с помощью &lt;IMG&gt;BOOST&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL1_MSG_STARS3_VR" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Совершен выход на орбиту&lt;&gt;&#xA;Проверьте системы звездолета: 2 / 3&#xA;Удерживайте &lt;IMG&gt;PULSEJUMP&lt;&gt;, чтобы проверить работу &lt;STELLAR&gt;импульсного двигателя&lt;&gt;.
                                { "Russian", "&lt;STELLAR&gt;Совершен выход на орбиту&lt;&gt;&#xA;Проверьте системы звездолёта: 2/3&#xA;Удерживайте &lt;IMG&gt;PULSEJUMP&lt;&gt;, чтобы проверить работу &lt;STELLAR&gt;импульсного двигателя&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL1_MSG_STARS4_VR" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Совершен выход на орбиту&lt;&gt;&#xA;Проверьте системы звездолета: &lt;TRADEABLE&gt;3 / 3&lt;&gt;
                                { "Russian", "&lt;STELLAR&gt;Совершен выход на орбиту&lt;&gt;&#xA;Проверьте системы звездолёта: &lt;TRADEABLE&gt;3&lt;&gt;/&lt;TRADEABLE&gt;3&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL1_MSG5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Заправить взлетные ускорители&#xA;Используйте &lt;IMG&gt;SCAN&lt;&gt;, чтобы найти планетарные ресурсы&#xA;Соберите &lt;FUEL&gt;плутоний&lt;&gt;: %CURRENT%/%AMOUNT%
                                { "Russian", "Заправьте взлетные ускорители&#xA;Используйте &lt;IMG&gt;SCAN&lt;&gt;, чтобы найти ресурсы&#xA;Соберите &lt;FUEL&gt;плутоний&lt;&gt;: %CURRENT%/%AMOUNT%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL1X_MSG5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Заправить взлетные ускорители&#xA;Найдите ресурсы с помощью &lt;IMG&gt;SCAN&lt;&gt;&#xA;Соберите &lt;FUEL&gt;взлетное топливо для звездолета&lt;&gt;: %CURRENT%/%AMOUNT%
                                -- Fuel Launch Thrusters&#xA;Use &lt;IMG&gt;SCAN&lt;&gt; to locate resources&#xA;Gather &lt;FUEL&gt;Starship Launch Fuel&lt;&gt;: %CURRENT%/%AMOUNT%
                                { "Russian", "Заправьте взлетные ускорители&#xA;Найдите ресурсы с помощью &lt;IMG&gt;SCAN&lt;&gt;&#xA;Добудьте &lt;FUEL&gt;взлетное топливо для звездолёта&lt;&gt;: %CURRENT%/%AMOUNT%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL1_MSG6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Заправка из инвентаря (&lt;IMG&gt;INVENTORY&lt;&gt;)
                                -- Refuel from the inventory (&lt;IMG&gt;INVENTORY&lt;&gt;)
                                { "Russian", "Заправьтесь, используя инвентарь (&lt;IMG&gt;INVENTORY&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL1_MSG6A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Перезаправиться из инвентаря (&lt;IMG&gt;INVENTORY&lt;&gt;) или через быстрое меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                { "Russian", "Заправьтесь из инвентаря (&lt;IMG&gt;INVENTORY&lt;&gt;) или быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL1_MSG7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Заправить взлетные ускорители&#xA;Используйте &lt;IMG&gt;SCAN&lt;&gt;, чтобы найти планетарные ресурсы&#xA;Сканер поврежден. Чтобы открыть журнал заданий, нажмите (&lt;IMG&gt;OPTIONS&lt;&gt;)
                                -- Fuel Launch Thrusters&#xA;Use &lt;IMG&gt;SCAN&lt;&gt; to locate resources&#xA;Scanner damaged. Consult the Log (&lt;IMG&gt;OPTIONS&lt;&gt;)
                                { "Russian", "Заправьте взлетные ускорители&#xA;Используйте &lt;IMG&gt;SCAN&lt;&gt;, чтобы найти ресурсы&#xA;Узнайте как починить сканер, открыв журнал (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL1A_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите &lt;COMMODITY&gt;железо&lt;&gt;, чтобы создать &lt;COMMODITY&gt;лист карита&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Добудьте &lt;COMMODITY&gt;железо&lt;&gt; из камней с помощью &lt;IMG&gt;ATTACK&lt;&gt;
                                { "Russian", "Соберите &lt;COMMODITY&gt;железо&lt;&gt;, чтобы создать &lt;COMMODITY&gt;лист карита&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Добудьте &lt;COMMODITY&gt;железо&lt;&gt; из камней с помощью &lt;IMG&gt;ATTACK&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL1A_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Создайте &lt;COMMODITY&gt;лист карита&lt;&gt;: %CURRENT%/4&#xA;Откройте инвентарь с помощью &lt;IMG&gt;INVENTORY&lt;&gt;.&#xA;Для создания пустых ячейек ипольз. &lt;IMG&gt;PRODBUTTON&lt;&gt;
                                -- Build a &lt;COMMODITY&gt;Carite Sheet&lt;&gt;: %CURRENT%/4&#xA;Use &lt;IMG&gt;INVENTORY&lt;&gt; to access your inventory&#xA;Use &lt;IMG&gt;PRODMENU&lt;&gt; to craft in empty slots
                                { "Russian", "Создайте &lt;COMMODITY&gt;лист карита&lt;&gt;: %CURRENT%/4&#xA;Откройте инвентарь с помощью &lt;IMG&gt;INVENTORY&lt;&gt;&#xA;Чтобы создать объект в пустой ячейке, используйте &lt;IMG&gt;PRODMENU&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL1A_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найти &lt;FUEL&gt;тамий-9&lt;&gt; для перезарядки&#xA;Сканер поврежден - почините, чтобы найти Тамий-9&#xA;Починить с &lt;IMG&gt;INVENTORY&lt;&gt; или &lt;IMG&gt;QUICK_MENU&lt;&gt;
                                -- Locate &lt;FUEL&gt;Thamium9&lt;&gt; to recharge&#xA;Scanner is damaged - repair to find Thamium9&#xA;Repair with &lt;IMG&gt;INVENTORY&lt;&gt; or &lt;IMG&gt;QUICK_MENU&lt;&gt;
                                { "Russian", "Найдите &lt;FUEL&gt;тамий-9&lt;&gt; для перезарядки&#xA;Необходимо отремонтировать сканер&#xA;Починить с помощью &lt;IMG&gt;INVENTORY&lt;&gt; или &lt;IMG&gt;QUICK_MENU&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL1X_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;VAL_ON&gt;Требуются продвинутые материалы&lt;&gt;.&#xA;Постройте &lt;TECHNOLOGY&gt;портативный очиститель&lt;&gt;.&#xA;Добыть: %ITEM% — %CURRENT%/%AMOUNT%
                                -- &lt;VAL_ON&gt;Advanced Materials Required&lt;&gt;&#xA;Build a &lt;TECHNOLOGY&gt;Portable Refiner&lt;&gt;&#xA;Gather %ITEM%: %CURRENT%/%AMOUNT%
                                { "Russian", "&lt;VAL_ON&gt;Требуются прогрессивные материалы&lt;&gt;&#xA;Постройте &lt;TECHNOLOGY&gt;портативный очиститель&lt;&gt;&#xA;Добудьте: %ITEM% (%CURRENT%/%AMOUNT%)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL1X_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;VAL_ON&gt;Требуются продвинутые материалы&lt;&gt;.&#xA;Постройте &lt;TECHNOLOGY&gt;портативный очиститель&lt;&gt;.&#xA;Добыть: %ITEM% — %CURRENT%/%AMOUNT%
                                -- &lt;VAL_ON&gt;Advanced Materials Required&lt;&gt;&#xA;Build a &lt;TECHNOLOGY&gt;Portable Refiner&lt;&gt;&#xA;Gather %ITEM%: %CURRENT%/%AMOUNT%
                                { "Russian", "&lt;VAL_ON&gt;Требуются прогрессивные материалы&lt;&gt;&#xA;Постройте &lt;TECHNOLOGY&gt;портативный очиститель&lt;&gt;&#xA;Добудьте: %ITEM% (%CURRENT%/%AMOUNT%)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL1X_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;VAL_ON&gt;Требуются продвинутые материалы&lt;&gt;&#xA;Постройте &lt;TECHNOLOGY&gt;портативный очиститель&lt;&gt;&#xA;Чтобы открыть меню созидания, нажмите &lt;IMG&gt;BUILD_MENU&lt;&gt;
                                { "Russian", "&lt;VAL_ON&gt;Требуются прогрессивные материалы&lt;&gt;&#xA;Постройте &lt;TECHNOLOGY&gt;портативный очиститель&lt;&gt;&#xA;Откройте меню строительства, нажав &lt;IMG&gt;BUILD_MENU&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL1X_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Создайте &lt;COMMODITY&gt;герметик&lt;&gt; из &lt;FUEL&gt;сжатого углерода&lt;&gt;.&#xA;Добыть для обработки в очистителе: %ITEM% — %CURRENT%/%AMOUNT%
                                -- Create &lt;COMMODITY&gt;Hermetic Seal&lt;&gt; from &lt;FUEL&gt;Condensed Carbon&lt;&gt;&#xA;Gather %ITEM% for processing in the refiner: %CURRENT%/%AMOUNT%
                                { "Russian", "Создайте &lt;COMMODITY&gt;герметик&lt;&gt; из &lt;FUEL&gt;сжатого углерода&lt;&gt;&#xA;Для обработки в очистителе требуется: %ITEM% (%CURRENT%/%AMOUNT%)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL1AX_MSG5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Создайте &lt;COMMODITY&gt;герметик&lt;&gt;.&#xA;Используйте &lt;TECHNOLOGY&gt;портативный очиститель&lt;&gt;, чтобы получить из &lt;FUEL&gt;углерода&lt;&gt; &lt;FUEL&gt;сжатый углерод&lt;&gt;.
                                { "Russian", "Создайте &lt;COMMODITY&gt;герметик&lt;&gt;&#xA;Используйте &lt;TECHNOLOGY&gt;портативный очиститель&lt;&gt;, чтобы получить из &lt;FUEL&gt;углерода&lt;&gt; &lt;FUEL&gt;сжатый углерод&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL1X_MSG6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Используйте &lt;IMG&gt;SCAN&lt;&gt;, чтобы найти &lt;CATALYST&gt;натрий&lt;&gt;&#xA;Сканер поврежден. За указаниями обратитесь к журналу (&lt;IMG&gt;OPTIONS&lt;&gt;).
                                { "Russian", "Используйте &lt;IMG&gt;SCAN&lt;&gt;, чтобы найти &lt;CATALYST&gt;натрий&lt;&gt;&#xA;Узнайте как починить сканер, открыв журнал (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL1X_MSG8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Создайте &lt;CATALYST&gt;нитрат натрия&lt;&gt;&#xA;Соберите %ITEM% для обработки: %CURRENT%/%AMOUNT%&#xA;Используйте сканер (&lt;IMG&gt;SCAN&lt;&gt;), чтобы найти &lt;CATALYST&gt;натрий&lt;&gt;.
                                { "Russian", "Создайте &lt;CATALYST&gt;нитрат натрия&lt;&gt;&#xA;Для обработки требуется: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;Найдите &lt;CATALYST&gt;натрий&lt;&gt; с помощью сканера (&lt;IMG&gt;SCAN&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL1X_MSG9" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Используйте &lt;TECHNOLOGY&gt;портативный очиститель&lt;&gt;, чтобы получить из &lt;CATALYST&gt;натрия&lt;&gt; &lt;CATALYST&gt;нитрат натрия&lt;&gt;
                                { "Russian", "Используйте &lt;TECHNOLOGY&gt;портативный очиститель&lt;&gt;, чтобы получить из &lt;CATALYST&gt;натрия&lt;&gt; &lt;CATALYST&gt;нитрат натрия&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL1X_MSG10" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Забрать из очистителя: %ITEM% — %CURRENT%/%AMOUNT%.
                                -- Collect the %ITEM% from the refiner: %CURRENT%/%AMOUNT%
                                { "Russian", "Заберите из очистителя: %ITEM% (%CURRENT%/%AMOUNT%)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL1X_MSG11" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Забрать из очистителя: %ITEM% — %CURRENT%/%AMOUNT%.
                                -- Collect the %ITEM% from the refiner: %CURRENT%/%AMOUNT%
                                { "Russian", "Заберите из очистителя: %ITEM% (%CURRENT%/%AMOUNT%)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL1B_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Создайте лист карита&lt;&gt;: %CURRENT%/2&#xA;Откройте инвентарь с помощью &lt;IMG&gt;INVENTORY&lt;&gt;.&#xA;Чтобы создать объект в пустой ячейке, используйте &lt;IMG&gt;PRODMENU&lt;&gt;.
                                -- Build a Carite Sheet&lt;&gt;: %CURRENT%/2&#xA;Use &lt;IMG&gt;INVENTORY&lt;&gt; to access your inventory&#xA;Use &lt;IMG&gt;PRODMENU&lt;&gt; to craft in empty slots
                                { "Russian", "Создайте лист карита&lt;&gt;: %CURRENT%/2&#xA;Откройте инвентарь с помощью &lt;IMG&gt;INVENTORY&lt;&gt;.&#xA;Чтобы создать объект в пустой ячейке, используйте &lt;IMG&gt;PRODMENU&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL1B_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Используйте &lt;IMG&gt;SCAN&lt;&gt;, чтобы найти планетарные ресурсы&#xA;Сканер поврежден. Чтобы открыть журнал заданий, нажмите (&lt;IMG&gt;OPTIONS&lt;&gt;)
                                -- Use &lt;IMG&gt;SCAN&lt;&gt; to locate resources&#xA;Scanner damaged. Consult the Log (&lt;IMG&gt;OPTIONS&lt;&gt;)
                                { "Russian", "Используйте &lt;IMG&gt;SCAN&lt;&gt;, чтобы найти ресурсы&#xA;Узнайте как починить сканер, открыв журнал (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL1B_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Используйте &lt;IMG&gt;SCAN&lt;&gt;, чтобы найти планетарные ресурсы&#xA;Соберите &lt;COMMODITY&gt;цинк&lt;&gt;: %CURRENT%/%AMOUNT%
                                -- Use &lt;IMG&gt;SCAN&lt;&gt; to locate resources&#xA;Gather &lt;COMMODITY&gt;Zinc&lt;&gt;: %CURRENT%/%AMOUNT%
                                { "Russian", "Используйте &lt;IMG&gt;SCAN&lt;&gt;, чтобы найти ресурсы&#xA;Соберите &lt;COMMODITY&gt;цинк&lt;&gt;: %CURRENT%/%AMOUNT%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL1B_MSG7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите геридий с помощью &lt;TECHNOLOGY&gt;усилителя сигнала&lt;&gt;.&#xA;Создайте усилитель сигнала, используя &lt;COMMODITY&gt;железо&lt;&gt; и &lt;FUEL&gt;плутоний&lt;&gt;.&#xA;Чтобы открыть меню созидания, нажмите &lt;IMG&gt;BUILD_MENU&lt;&gt;.
                                { "Russian", "Найдите геридий с помощью &lt;TECHNOLOGY&gt;усилителя сигнала&lt;&gt;&#xA;Создайте усилитель сигнала, используя &lt;COMMODITY&gt;железо&lt;&gt; и &lt;FUEL&gt;плутоний&lt;&gt;&#xA;Чтобы открыть меню строительства, нажмите &lt;IMG&gt;BUILD_MENU&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL1Y_MSG0" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите &lt;STELLAR&gt;хроматические металлы&lt;&gt; с помощью &lt;TECHNOLOGY&gt;усилителя сигнала&lt;&gt;.&#xA;Добыть, чтобы собрать &lt;TECHNOLOGY&gt;усилитель сигнала&lt;&gt;: %ITEM% — %CURRENT%/%AMOUNT%.&#xA;Найдите &lt;EARTH&gt;кобальт&lt;&gt; под землей или в пещерах.
                                -- Locate &lt;STELLAR&gt;Chromatic Metals&lt;&gt; with a &lt;TECHNOLOGY&gt;Signal Booster&lt;&gt;&#xA;Gather %ITEM% to construct &lt;TECHNOLOGY&gt;Signal Booster&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Find &lt;EARTH&gt;Cobalt&lt;&gt; underground or in caves.
                                { "Russian", "Найдите &lt;STELLAR&gt;хроматические металлы&lt;&gt; с помощью &lt;TECHNOLOGY&gt;усилителя сигнала&lt;&gt;&#xA;Для создания &lt;TECHNOLOGY&gt;усилителя сигнала&lt;&gt; требуется: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;Найдите &lt;EARTH&gt;кобальт&lt;&gt; под землей или в пещерах" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL1Y_MSG0A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите &lt;STELLAR&gt;хроматические металлы&lt;&gt; с помощью &lt;TECHNOLOGY&gt;усилителя сигнала&lt;&gt;.&#xA;Добыть, чтобы собрать &lt;TECHNOLOGY&gt;усилитель сигнала&lt;&gt;: %ITEM% — %CURRENT%/%AMOUNT%.&#xA;Найдите &lt;EARTH&gt;кобальт&lt;&gt; под землей или в пещерах.&#xA;Загляните в журнал (&lt;IMG&gt;OPTIONS&lt;&gt;), чтобы узнать об &lt;TECHNOLOGY&gt;изменении ландшафта&lt;&gt;.
                                { "Russian", "Найдите &lt;STELLAR&gt;хроматические металлы&lt;&gt; с помощью &lt;TECHNOLOGY&gt;усилителя сигнала&lt;&gt;&#xA;Для создания &lt;TECHNOLOGY&gt;усилителя сигнала&lt;&gt; требуется: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;Найдите &lt;EARTH&gt;кобальт&lt;&gt; под землей или в пещерах&#xA;Узнайте как &lt;TECHNOLOGY&gt;изменять ландшафт&lt;&gt; в журнале (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL1Y_MSG1A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите &lt;STELLAR&gt;хроматические металлы&lt;&gt; с помощью &lt;TECHNOLOGY&gt;усилителя сигнала&lt;&gt;.&#xA;Добыть, чтобы собрать &lt;TECHNOLOGY&gt;усилитель сигнала&lt;&gt;: %ITEM% — %CURRENT%/%AMOUNT%.&#xA;Добудьте %ITEM% из маленьких камней с помощью &lt;IMG&gt;ATTACK&lt;&gt;.
                                { "Russian", "Найдите &lt;STELLAR&gt;хроматические металлы&lt;&gt; с помощью &lt;TECHNOLOGY&gt;усилителя сигнала&lt;&gt;&#xA;Для создания &lt;TECHNOLOGY&gt;усилителя сигнала&lt;&gt; требуется: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;Используйте &lt;IMG&gt;ATTACK&lt;&gt; на маленьких камнях" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL1Y_MSG1B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите &lt;STELLAR&gt;хроматические металлы&lt;&gt; с помощью &lt;TECHNOLOGY&gt;усилителя сигнала&lt;&gt;.&#xA;Добудьте для &lt;TECHNOLOGY&gt;усилителя сигнала&lt;&gt;: %ITEM% — %CURRENT%/%AMOUNT%&#xA;Используйте &lt;TECHNOLOGY&gt;портативный очиститель&lt;&gt;, чтобы получить &lt;EARTH&gt;чистый феррит&lt;&gt;.
                                { "Russian", "Найдите &lt;STELLAR&gt;хроматические металлы&lt;&gt; с помощью &lt;TECHNOLOGY&gt;усилителя сигнала&lt;&gt;&#xA;Для создания &lt;TECHNOLOGY&gt;усилителя сигнала&lt;&gt; требуется: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;Используйте &lt;TECHNOLOGY&gt;портативный очиститель&lt;&gt;, чтобы получить &lt;EARTH&gt;чистый феррит&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL1Y_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите &lt;STELLAR&gt;хроматические металлы&lt;&gt; с помощью &lt;TECHNOLOGY&gt;усилителя сигнала&lt;&gt;.&#xA;Создать для &lt;TECHNOLOGY&gt;усилителя сигнала&lt;&gt;: %ITEM% — %CURRENT%/%AMOUNT%.&#xA;Чтобы создать объект в пустой ячейке, используйте &lt;IMG&gt;PRODMENU&lt;&gt;.
                                { "Russian", "Найдите &lt;STELLAR&gt;хроматические металлы&lt;&gt; с помощью &lt;TECHNOLOGY&gt;усилителя сигнала&lt;&gt;&#xA;Для создания &lt;TECHNOLOGY&gt;усилителя сигнала&lt;&gt; требуется: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;Чтобы создать объект в пустой ячейке, используйте &lt;IMG&gt;PRODMENU&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL1Y_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите &lt;STELLAR&gt;хроматические металлы&lt;&gt; с помощью &lt;TECHNOLOGY&gt;усилителя сигнала&lt;&gt;.&#xA;Добыть для &lt;TECHNOLOGY&gt;усилителя сигнала&lt;&gt;: %ITEM% — %CURRENT%/%AMOUNT%.
                                { "Russian", "Найдите &lt;STELLAR&gt;хроматические металлы&lt;&gt; с помощью &lt;TECHNOLOGY&gt;усилителя сигнала&lt;&gt;&#xA;Для создания &lt;TECHNOLOGY&gt;усилителя сигнала&lt;&gt; требуется: %ITEM% (%CURRENT%/%AMOUNT%)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL1Y_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите &lt;STELLAR&gt;хроматические металлы&lt;&gt; с помощью &lt;TECHNOLOGY&gt;усилителя сигнала&lt;&gt;.&#xA;Создать для &lt;TECHNOLOGY&gt;усилителя сигнала&lt;&gt;: %ITEM% — %CURRENT%/%AMOUNT%.&#xA;Чтобы создать объект в пустой ячейке, используйте &lt;IMG&gt;PRODMENU&lt;&gt;.
                                -- Locate &lt;STELLAR&gt;Chromatic Metals&lt;&gt; with a &lt;TECHNOLOGY&gt;Signal Booster&lt;&gt;&#xA;Construct %ITEM% for use in &lt;TECHNOLOGY&gt;Signal Booster&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Use &lt;IMG&gt;PRODMENU&lt;&gt; to craft in empty slots
                                { "Russian", "Найдите &lt;STELLAR&gt;хроматические металлы&lt;&gt; с помощью &lt;TECHNOLOGY&gt;усилителя сигнала&lt;&gt;&#xA;Для создания &lt;TECHNOLOGY&gt;усилителя сигнала&lt;&gt; требуется: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;Чтобы создать объект в пустой ячейке, используйте &lt;IMG&gt;PRODMENU&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL1Y_MSG6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Воспользуйтесь &lt;TECHNOLOGY&gt;усилителем сигнала&lt;&gt;, чтобы найти &lt;STELLAR&gt;медь&lt;&gt;&#xA;&lt;STELLAR&gt;Медь&lt;&gt; встречается в больших месторождениях.&#xA;Просканируйте на предмет &lt;VAL_ON&gt;месторождений ресурсов&lt;&gt;.
                                { "Russian", "Воспользуйтесь &lt;TECHNOLOGY&gt;усилителем сигнала&lt;&gt;, чтобы найти &lt;STELLAR&gt;медь&lt;&gt;&#xA;&lt;STELLAR&gt;Медь&lt;&gt; встречается в больших месторождениях&#xA;Просканируйте на предмет &lt;VAL_ON&gt;месторождений ресурсов&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL1Y_MSG7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добыть: %ITEM% — %CURRENT%/%AMOUNT%&#xA;%ITEM% и другие крупные залежи ресурсов требуют наличия &lt;TECHNOLOGY&gt;ландшафтного манипулятора&lt;&gt;.&#xA;Загляните в журнал (&lt;IMG&gt;OPTIONS&lt;&gt;), чтобы узнать об &lt;TECHNOLOGY&gt;изменении ландшафта&lt;&gt;.
                                -- Gather %ITEM%: %CURRENT%/%AMOUNT%&#xA;%ITEM% and other large resource deposits require a &lt;TECHNOLOGY&gt;Terrain Manipulator&lt;&gt;&#xA;Consult the Log (&lt;IMG&gt;OPTIONS&lt;&gt;) to learn about &lt;TECHNOLOGY&gt;Terrain Manipulation&lt;&gt;
                                { "Russian", "Соберите: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt; для добычи ресурсов из крупных месторождений&#xA;Узнайте как &lt;TECHNOLOGY&gt;изменять ландшафт&lt;&gt; в журнале (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL1Y_MSG7A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;Нажмите &lt;IMG&gt;CYCLEWEAPON&lt;&gt;, чтобы активировать &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt;.&#xA;Чтобы обнаружить места скоплений, используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;).
                                { "Russian", "Соберите: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;Нажмите &lt;IMG&gt;CYCLEWEAPON&lt;&gt;, чтобы активировать &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt;&#xA;&lt;TECHNOLOGY&gt;Анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;) поможет найти месторождения" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL1Y_MSG7C" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;Используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы найти залежи ископаемых.&#xA;Добывайте ископаемые с помощью &lt;IMG&gt;ATTACK&lt;&gt;.
                                { "Russian", "Соберите: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;Находите месторождения, используя &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)&#xA;Добывайте ископаемые с помощью &lt;IMG&gt;ATTACK&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL1Y_MSG7A_VR" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;Активируйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt;.&#xA;Укажите на заднюю сторону &lt;TECHNOLOGY&gt;мультитула&lt;&gt; с помощью &lt;STELLAR&gt;%SECONDARY_HAND%&lt;&gt;
                                { "Russian", "Соберите: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;Активируйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt;&#xA;Укажите на заднюю сторону &lt;TECHNOLOGY&gt;мультитула&lt;&gt; с помощью &lt;STELLAR&gt;%SECONDARY_HAND%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL1Y_MSG7A_VR2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите: %ITEM%%CURRENT%/%AMOUNT%&#xA;Активируйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt;.&#xA;Укажите на слово «Режим» и выберите то, что вам нужно, при помощи &lt;IMG&gt;FE_ALTSELECT&lt;&gt;
                                { "Russian", "Соберите: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;Активируйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt;&#xA;Укажите на слово «Режим» и выберите то, что вам нужно, при помощи &lt;IMG&gt;FE_ALTSELECT&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL1Y_MSG7A_VR3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;Чтобы обнаружить места скоплений, используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt;.&#xA;Поднимите &lt;STELLAR&gt;%SECONDARY_HAND%&lt;&gt; вверх, отведите ее за голову и нажмите &lt;IMG&gt;AIM&lt;&gt;, чтобы его включить.
                                { "Russian", "Соберите: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;Находите месторождения, используя &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt;&#xA;Поднимите &lt;STELLAR&gt;%SECONDARY_HAND%&lt;&gt; вверх, отведите ее за голову и нажмите &lt;IMG&gt;AIM&lt;&gt;, чтобы его включить" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL1Y_MSG7B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;Вам требуется %ITEM%. Найдите большие месторождения на планетах.&#xA;Просканируйте планеты из космоса (&lt;IMG&gt;SCAN&lt;&gt;), чтобы увидеть &lt;STELLAR&gt;доступные ресурсы&lt;&gt;.
                                -- Gather %ITEM%: %CURRENT%/%AMOUNT%&#xA;Locate large %ITEM% deposits on planets&#xA;Scan planets from space (&lt;IMG&gt;SCAN&lt;&gt;) to see &lt;STELLAR&gt;available resources&lt;&gt;
                                { "Russian", "Соберите: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;Ищите большие месторождения на планетах&#xA;Изучите &lt;STELLAR&gt;доступные ресурсы&lt;&gt; на планете&#xA;с помощью сканера звездолёта (&lt;IMG&gt;SCAN&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL1Y_MSG8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Очистить: %ITEM% — %CURRENT%/%AMOUNT%.
                                -- Refine %ITEM%: %CURRENT%/%AMOUNT%
                                { "Russian", "Рафинировать: %ITEM% (%CURRENT%/%AMOUNT%)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL1Y_MSG9" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Получить из &lt;STELLAR&gt;меди&lt;&gt;: %ITEM% — %CURRENT%/%AMOUNT%.
                                -- Refine %ITEM% from &lt;STELLAR&gt;Copper&lt;&gt;: %CURRENT%/%AMOUNT%
                                { "Russian", "Рафинировать %ITEM% из &lt;STELLAR&gt;меди&lt;&gt;: %CURRENT%/%AMOUNT%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL1Y_MSG9A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Очистите &lt;STELLAR&gt;хроматический металл&lt;&gt;.&#xA;Постройте или разместите &lt;TECHNOLOGY&gt;портативный очиститель&lt;&gt;.
                                -- Refine &lt;STELLAR&gt;Chromatic Metal&lt;&gt;&#xA;Build or deploy a &lt;TECHNOLOGY&gt;Portable Refiner&lt;&gt;
                                { "Russian", "Рафинировать &lt;STELLAR&gt;хроматический металл&lt;&gt;&#xA;Постройте или разместите &lt;TECHNOLOGY&gt;портативный очиститель&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL1Y_MSG10" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добудьте &lt;FUEL&gt;кислород&lt;&gt;.&#xA;Используйте &lt;TECHNOLOGY&gt;сканер&lt;&gt;, чтобы найти &lt;FUEL&gt;кислород&lt;&gt;.&#xA;Сканер поврежден. Чтобы узнать варианты, обратитесь к журналу (&lt;IMG&gt;OPTIONS&lt;&gt;).
                                { "Russian", "Добудьте &lt;FUEL&gt;кислород&lt;&gt;&#xA;Используйте &lt;TECHNOLOGY&gt;сканер&lt;&gt;, чтобы найти &lt;FUEL&gt;кислород&lt;&gt;&#xA;Узнайте как починить сканер, открыв журнал (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL1Y_MSG10A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;Собрать с &lt;FUEL&gt;богатых энергией растений&lt;&gt;: %ITEM%&#xA;Используйте &lt;TECHNOLOGY&gt;сканер&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;), чтобы найти подходящие растения
                                -- Gather %ITEM%: %CURRENT%/%AMOUNT%&#xA;Harvest %ITEM% from &lt;FUEL&gt;Energy Rich Plants&lt;&gt;&#xA;Use the &lt;TECHNOLOGY&gt;Scanner&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;) to locate suitable plants
                                { "Russian", "Соберите: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;Ищите &lt;FUEL&gt;богатые энергией растения&lt;&gt;&#xA;с помощью &lt;TECHNOLOGY&gt;сканера&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL1Y_MSG11" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обработайте &lt;EARTH&gt;чистый феррит&lt;&gt;.&#xA;Соберите %ITEM%: %CURRENT%/%AMOUNT%
                                -- Refine &lt;EARTH&gt;Pure Ferrite&lt;&gt;&#xA;Gather %ITEM%: %CURRENT%/%AMOUNT%
                                { "Russian", "Рафинировать &lt;EARTH&gt;чистый феррит&lt;&gt;&#xA;Соберите: %ITEM% (%CURRENT%/%AMOUNT%)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL1Y_MSG12" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Очистите %ITEM% в &lt;TECHNOLOGY&gt;портативном очистителе&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Утерянный &lt;TECHNOLOGY&gt;очиститель&lt;&gt; можно найти с помощью &lt;IMG&gt;AIM&lt;&gt;&lt;TECHNOLOGY&gt;Портативные очистители&lt;&gt; можно подбирать с помощью &lt;IMG&gt;DECONSTRUCT&lt;&gt; и повторно устанавливать.
                                -- Refine %ITEM% in &lt;TECHNOLOGY&gt;Portable Refiner&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;If misplaced, &lt;TECHNOLOGY&gt;refiner&lt;&gt; can be located with &lt;IMG&gt;AIM&lt;&gt;&#xA;&lt;TECHNOLOGY&gt;Portable Refiners&lt;&gt; can be picked up with &lt;IMG&gt;DECONSTRUCT&lt;&gt; and redeployed
                                { "Russian", "Рафинировать %ITEM% в &lt;TECHNOLOGY&gt;портативном очистителе&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Утерянный &lt;TECHNOLOGY&gt;очиститель&lt;&gt; можно найти с помощью &lt;IMG&gt;AIM&lt;&gt;&#xA;&lt;TECHNOLOGY&gt;Портативные очистители&lt;&gt; можно подбирать с помощью &lt;IMG&gt;DECONSTRUCT&lt;&gt; и повторно устанавливать" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL1Y_MSG13" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обработать в &lt;TECHNOLOGY&gt;портативном очистителе&lt;&gt;: %ITEM% — %CURRENT%/%AMOUNT%.
                                -- Process %ITEM% in &lt;TECHNOLOGY&gt;Portable Refiner&lt;&gt;: %CURRENT%/%AMOUNT%
                                { "Russian", "Обработать в &lt;TECHNOLOGY&gt;портативном очистителе&lt;&gt;: %ITEM% (%CURRENT%/%AMOUNT%)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL1C_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Создайте &lt;COMMODITY&gt;углеродные нанотрубки&lt;&gt; для &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;.&#xA;Добыть: %ITEM% — %CURRENT%/%AMOUNT%&#xA;Добудьте %ITEM%, расстреляв &lt;STELLAR&gt;растения и деревья&lt;&gt; с помощью &lt;IMG&gt;ATTACK&lt;&gt;.
                                -- Craft &lt;COMMODITY&gt;Carbon Nanotubes&lt;&gt; for &lt;TECHNOLOGY&gt;Analysis Visor&lt;&gt;&#xA;Gather %ITEM%: %CURRENT%/%AMOUNT%&#xA;Extract %ITEM% by shooting &lt;STELLAR&gt;plants and trees&lt;&gt; with &lt;IMG&gt;ATTACK&lt;&gt;
                                { "Russian", "Создайте &lt;COMMODITY&gt;углеродные нанотрубки&lt;&gt; для &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;&#xA;Добудьте: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;Стреляйте в &lt;STELLAR&gt;растения и деревья&lt;&gt; с помощью &lt;IMG&gt;ATTACK&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL1C_MSG1_VR" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Создайте &lt;COMMODITY&gt;углеродные нанотрубки&lt;&gt; для &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;.&#xA;Добудьте %ITEM% из &lt;STELLAR&gt;растений и деревьев&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Заведите руку за плечо и нажмите &lt;IMG&gt;VR_HOLSTER&lt;&gt;, чтобы взять мультитул.
                                { "Russian", "Создайте &lt;COMMODITY&gt;углеродные нанотрубки&lt;&gt; для &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;&#xA;Добудьте из &lt;STELLAR&gt;растений и деревьев&lt;&gt;: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;Заведите руку за плечо и нажмите &lt;IMG&gt;VR_HOLSTER&lt;&gt;, чтобы взять мультитул" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL1C_MSGX" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Изготовьте %ITEM% для &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Добыто углерода: &lt;TRADEABLE&gt;50&lt;&gt;/&lt;TRADEABLE&gt;50&lt;&gt;&#xA;Откройте инвентарь с помощью &lt;IMG&gt;INVENTORY&lt;&gt;&#xA;Чтобы создать объект в пустой ячейке, используйте &lt;IMG&gt;PRODMENU&lt;&gt;
                                -- Craft %ITEM% for &lt;TECHNOLOGY&gt;Analysis Visor&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Carbon acquired: &lt;TRADEABLE&gt;50&lt;&gt;/&lt;TRADEABLE&gt;50&lt;&gt;&#xA;Use &lt;IMG&gt;INVENTORY&lt;&gt; to access your Inventory&#xA;Use &lt;IMG&gt;PRODMENU&lt;&gt; to craft in empty slots
                                { "Russian", "Создайте: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;Добыто углерода: &lt;TRADEABLE&gt;50&lt;&gt;/&lt;TRADEABLE&gt;50&lt;&gt;&#xA;Откройте инвентарь с помощью &lt;IMG&gt;INVENTORY&lt;&gt;&#xA;Чтобы создать объект в пустой ячейке, используйте &lt;IMG&gt;PRODMENU&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL1C_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Почините &lt;TECHNOLOGY&gt;сканер&lt;&gt;: 0 / 1&#xA;Получено феррита: &lt;TRADEABLE&gt;75&lt;&gt;/&lt;TRADEABLE&gt;75&lt;&gt;&#xA;Откройте инвентарь мультитула с помощью &lt;IMG&gt;INVENTORY&lt;&gt;&#xA;Отремонтируйте снаряжение с помощью &lt;IMG&gt;REPAIR&lt;&gt;
                                -- Repair the &lt;TECHNOLOGY&gt;Scanner&lt;&gt;: 0 / 1&#xA;Ferrite acquired: &lt;TRADEABLE&gt;75&lt;&gt;/&lt;TRADEABLE&gt;75&lt;&gt;&#xA;Use &lt;IMG&gt;INVENTORY&lt;&gt; to access Multi-Tool Inventory&#xA;Repair equipment with &lt;IMG&gt;REPAIR&lt;&gt;
                                { "Russian", "Почините &lt;TECHNOLOGY&gt;сканер&lt;&gt;&#xA;Добыто ферритной пыли: &lt;TRADEABLE&gt;75&lt;&gt;/&lt;TRADEABLE&gt;75&lt;&gt;&#xA;Откройте инвентарь мультитула с помощью &lt;IMG&gt;INVENTORY&lt;&gt;&#xA;Отремонтируйте снаряжение с помощью &lt;IMG&gt;REPAIR&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL1C_MSG2_VR1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Почините &lt;TECHNOLOGY&gt;сканер&lt;&gt;: 0 / 1&#xA;Чтобы открыть меню, укажите на свою &lt;STELLAR&gt;%SECONDARY_HAND%&lt;&gt;.
                                { "Russian", "Почините &lt;TECHNOLOGY&gt;сканер&lt;&gt;&#xA;Чтобы открыть меню, укажите на &lt;STELLAR&gt;%SECONDARY_HAND%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL1C_MSG2_VR2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Почините &lt;TECHNOLOGY&gt;сканер&lt;&gt;: 0 / 1&#xA;Нажмите &lt;IMG&gt;FE_SELECT&lt;&gt;, чтобы выбрать &lt;TECHNOLOGY&gt;инвентарь&lt;&gt;.&#xA;Откройте &lt;STELLAR&gt;инвентарь&lt;&gt; и нажмите &lt;IMG&gt;REPAIR&lt;&gt;, чтобы починить оборудование.
                                { "Russian", "Почините &lt;TECHNOLOGY&gt;сканер&lt;&gt;&#xA;Нажмите &lt;IMG&gt;FE_SELECT&lt;&gt;, чтобы выбрать &lt;TECHNOLOGY&gt;инвентарь&lt;&gt;&#xA;Откройте &lt;STELLAR&gt;инвентарь&lt;&gt; и нажмите &lt;IMG&gt;REPAIR&lt;&gt;, чтобы починить оборудование" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL1C_MSG2_VR3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Почините &lt;TECHNOLOGY&gt;сканер&lt;&gt;: 0 / 1&#xA;Откройте &lt;STELLAR&gt;инвентарь&lt;&gt; и нажмите &lt;IMG&gt;REPAIR&lt;&gt;, чтобы починить оборудование.
                                { "Russian", "Почините &lt;TECHNOLOGY&gt;сканер&lt;&gt;&#xA;Откройте &lt;STELLAR&gt;инвентарь&lt;&gt; и нажмите &lt;IMG&gt;REPAIR&lt;&gt;, чтобы починить оборудование" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL1C_MSG2_ALT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Завершите создание &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;: 0 / 1&#xA;Откройте инвентарь мультитула с помощью &lt;IMG&gt;INVENTORY&lt;&gt;&#xA;Нажмите &lt;IMG&gt;REPAIR&lt;&gt;, чтобы продолжить установку.
                                { "Russian", "Завершите установку &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;&#xA;Откройте инвентарь мультитула с помощью &lt;IMG&gt;INVENTORY&lt;&gt;&#xA;Нажмите &lt;IMG&gt;REPAIR&lt;&gt;, чтобы продолжить установку" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL1C_MSG2_ALTB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Нажмите &lt;IMG&gt;INVENTORY&lt;&gt;, чтобы открыть инвентарь и установить &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt;.&#xA;Нажмите &lt;IMG&gt;TECHMENU&lt;&gt;, чтобы выбрать пустую ячейку мультитула и установить технологию.&#xA;Анализирующий визор необходим для того, чтобы &lt;FUEL&gt;найти звездолет&lt;&gt;.
                                { "Russian", "Нажмите &lt;IMG&gt;INVENTORY&lt;&gt;, чтобы открыть инвентарь и установить &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt;&#xA;Нажмите &lt;IMG&gt;TECHMENU&lt;&gt;, чтобы выбрать пустую ячейку мультитула и установить технологию&#xA;Анализирующий визор необходим для того, чтобы &lt;FUEL&gt;найти звездолёт&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL1C_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сканирование выделяет &lt;FUEL&gt;важные ресурсы&lt;&gt;.&#xA;Используйте &lt;IMG&gt;SCAN&lt;&gt;, чтобы испытать сканер.
                                { "Russian", "Сканирование выделяет &lt;FUEL&gt;важные ресурсы&lt;&gt;&#xA;Используйте &lt;IMG&gt;SCAN&lt;&gt;, чтобы испытать сканер" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL1C_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите &lt;TECHNOLOGY&gt;отсканированные ресурсы&lt;&gt;: 0 / 1&#xA;&lt;FUEL&gt;Кислород&lt;&gt; питает &lt;VAL_ON&gt;систему жизнеобеспечения&lt;&gt;&#xA;&lt;CATALYST&gt;Натрий&lt;&gt; питает систему &lt;VAL_ON&gt;защиты от вредных факторов&lt;&gt;
                                -- Collect &lt;TECHNOLOGY&gt;scanned resources&lt;&gt;: 0 / 1&#xA;&lt;FUEL&gt;Oxygen&lt;&gt; powers &lt;VAL_ON&gt;Life Support&lt;&gt;&#xA;&lt;CATALYST&gt;Sodium&lt;&gt; powers &lt;VAL_ON&gt;Hazard Protection&lt;&gt;
                                { "Russian", "Соберите &lt;TECHNOLOGY&gt;отсканированные ресурсы&lt;&gt;: 0/1&#xA;&lt;FUEL&gt;Кислород&lt;&gt; питает &lt;VAL_ON&gt;систему жизнеобеспечения&lt;&gt;&#xA;&lt;CATALYST&gt;Натрий&lt;&gt; питает систему &lt;VAL_ON&gt;защиты от вредных факторов&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL1D_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите &lt;COMMODITY&gt;железо&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Добудьте &lt;COMMODITY&gt;железо&lt;&gt; из камней с помощью &lt;IMG&gt;ATTACK&lt;&gt;.
                                { "Russian", "Соберите &lt;COMMODITY&gt;железо&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Добудьте &lt;COMMODITY&gt;железо&lt;&gt; из камней с помощью &lt;IMG&gt;ATTACK&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL1Z_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добыть: %ITEM% — %CURRENT%/%AMOUNT%&#xA;Чтобы добыть ферритную пыль, попробуйте расстрелять &lt;STELLAR&gt;небольшие камни&lt;&gt;.&#xA;Чтобы выстрелить из &lt;TECHNOLOGY&gt;расщепителя&lt;&gt;, нажмите &lt;IMG&gt;ATTACK&lt;&gt;
                                -- Gather %ITEM%: %CURRENT%/%AMOUNT%&#xA;Extract Ferrite Dust by shooting &lt;STELLAR&gt;small rocks&lt;&gt;&#xA;Use &lt;IMG&gt;ATTACK&lt;&gt; to fire the Multi-Tool's &lt;TECHNOLOGY&gt;Mining Beam&lt;&gt;
                                { "Russian", "Добудьте: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;Попробуйте расстрелять &lt;STELLAR&gt;небольшие камни&lt;&gt;&#xA;Чтобы выстрелить из &lt;TECHNOLOGY&gt;расщепителя&lt;&gt;, нажмите &lt;IMG&gt;ATTACK&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL1Z_MSG1_VR" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добыть: %ITEM% — %CURRENT%/%AMOUNT%&#xA;Чтобы добыть ферритную пыль, попробуйте расстрелять &lt;STELLAR&gt;небольшие камни&lt;&gt;.&#xA;Заведите руку за плечо и нажмите &lt;IMG&gt;VR_HOLSTER&lt;&gt;, чтобы взять мультитул.
                                { "Russian", "Добудьте: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;Попробуйте расстрелять &lt;STELLAR&gt;небольшие камни&lt;&gt;&#xA;Заведите руку за плечо и нажмите &lt;IMG&gt;VR_HOLSTER&lt;&gt;, чтобы взять мультитул" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL1Z_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Испытайте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;): 0 / 1&#xA;&lt;TECHNOLOGY&gt;Анализирующий визор&lt;&gt; указывает на интересные места&#xA;Анализируйте &lt;TRADEABLE&gt;флору&lt;&gt;, &lt;COMMODITY&gt;фауну&lt;&gt; и &lt;EARTH&gt;минералы&lt;&gt;, чтобы зарабатывать юниты
                                -- Test the &lt;TECHNOLOGY&gt;Analysis Visor&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;): 0 / 1&#xA;The &lt;TECHNOLOGY&gt;Analysis Visor&lt;&gt; highlights points of interest&#xA;Analyse &lt;TRADEABLE&gt;Flora&lt;&gt;, &lt;COMMODITY&gt;Fauna&lt;&gt; or &lt;EARTH&gt;Minerals&lt;&gt; to earn units
                                { "Russian", "Испытайте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)&#xA;&lt;TECHNOLOGY&gt;Анализирующий визор&lt;&gt; подсвечивает интересные места&#xA;Анализируйте &lt;TRADEABLE&gt;флору&lt;&gt;, &lt;COMMODITY&gt;фауну&lt;&gt; и &lt;EARTH&gt;минералы&lt;&gt;, чтобы зарабатывать юниты" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL1Z_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Испытайте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;): 0 / 1&#xA;Активируйте визор и удерживайте &lt;IMG&gt;BINOCSCAN&lt;&gt;, чтобы проанализировать цель.&#xA;&lt;TECHNOLOGY&gt;Анализирующий визор&lt;&gt; указывает на интересные места.
                                -- Test the &lt;TECHNOLOGY&gt;Analysis Visor&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;): 0 / 1&#xA;With the Visor active, hold &lt;IMG&gt;BINOCSCAN&lt;&gt; to analyse target&#xA;The &lt;TECHNOLOGY&gt;Analysis Visor&lt;&gt; highlights points of interest
                                { "Russian", "Испытайте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)&#xA;Активируйте визор и удерживайте &lt;IMG&gt;BINOCSCAN&lt;&gt;, чтобы проанализировать цель&#xA;&lt;TECHNOLOGY&gt;Анализирующий визор&lt;&gt; подсвечивает интересные места" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL1Z_MSG2_VR" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Испытайте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;): 0 / 1&#xA;Поднимите &lt;STELLAR&gt;%SECONDARY_HAND%&lt;&gt; вверх, отведите ее за голову и нажмите &lt;IMG&gt;AIM&lt;&gt;, чтобы его включить.&#xA;Наведитесь на &lt;TRADEABLE&gt;растения&lt;&gt;, &lt;COMMODITY&gt;животных&lt;&gt; или &lt;EARTH&gt;минералы&lt;&gt;.&#xA;Чтобы анализировать цель, нажмите &lt;IMG&gt;BINOCSCAN&lt;&gt;
                                { "Russian", "Испытайте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)&#xA;Поднимите &lt;STELLAR&gt;%SECONDARY_HAND%&lt;&gt; вверх, отведите ее за голову и нажмите &lt;IMG&gt;AIM&lt;&gt;, чтобы его включить&#xA;Наведитесь на &lt;TRADEABLE&gt;растения&lt;&gt;, &lt;COMMODITY&gt;животных&lt;&gt; или &lt;EARTH&gt;минералы&lt;&gt;&#xA;Чтобы анализировать цель, нажмите &lt;IMG&gt;BINOCSCAN&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL2_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Получен необычный сигнал&#xA;Начните сканирование (&lt;IMG&gt;SCAN&lt;&gt;), чтобы обнаружить его источник
                                -- Unusual Signal Received&#xA;Scan (&lt;IMG&gt;SCAN&lt;&gt;) to pinpoint the source
                                { "Russian", "Пойман необычный сигнал&#xA;Найдите источник, используя сканер (&lt;IMG&gt;SCAN&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL2_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Пойман необычный сигнал.&#xA;Найдите радиопередатчик, чтобы узнать больше.
                                -- Unusual Signal Detected&#xA;Locate the radio transmitter to find out more
                                { "Russian", "Пойман необычный сигнал&#xA;Найдите радиопередатчик, чтобы узнать больше" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL2_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Получен &lt;COMMODITY&gt;закодированный сигнал&lt;&gt;&#xA;Координаты записаны. Доберитесь до источника сигнала
                                -- &lt;COMMODITY&gt;Encoded Signal&lt;&gt; received&#xA;Coordinates logged. Reach the signal
                                { "Russian", "Пойман &lt;COMMODITY&gt;закодированный сигнал&lt;&gt;&#xA;Доберитесь до его источника" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL2_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Создайте &lt;TECHNOLOGY&gt;гипердвигатель&lt;&gt;.&#xA;Достаньте &lt;COMMODITY&gt;динамический резонатор&lt;&gt; на космической станции.&#xA;Требуется юнитов: %CURRENT%/%AMOUNT%&#xA;Откройте путеводитель (&lt;IMG&gt;OPTIONS&lt;&gt;), чтобы узнать, как зарабатывать деньги.
                                -- Construct the &lt;TECHNOLOGY&gt;Hyperdrive&lt;&gt;&#xA;Buy a &lt;COMMODITY&gt;Dynamic Resonator&lt;&gt; from a Space Station&#xA;Units required: %CURRENT%/%AMOUNT%&#xA;Open the Guide (&lt;IMG&gt;OPTIONS&lt;&gt;) to learn how to make money
                                { "Russian", "Создайте &lt;TECHNOLOGY&gt;гипердвигатель&lt;&gt;&#xA;Купите &lt;COMMODITY&gt;динамический резонатор&lt;&gt; на космической станции&#xA;Требуется юнитов: %CURRENT%/%AMOUNT%&#xA;Узнайте как зарабатывать в Путеводителе (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL2_MSG5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Создайте &lt;TECHNOLOGY&gt;гипердвигатель&lt;&gt;.&#xA;Достаньте &lt;COMMODITY&gt;динамический резонатор&lt;&gt; на космической станции.
                                { "Russian", "Создайте &lt;TECHNOLOGY&gt;гипердвигатель&lt;&gt;&#xA;Купите &lt;COMMODITY&gt;динамический резонатор&lt;&gt; на космической станции" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL2X_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Требуется юнитов: &lt;STELLAR&gt;%CURRENT%&lt;&gt;/&lt;STELLAR&gt;%AMOUNT%&lt;&gt;&#xA;Продайте предметы в &lt;TECHNOLOGY&gt;торговом терминале&lt;&gt; на космической станции.&#xA;При торговле переключайтесь между инвентарями &lt;STELLAR&gt;экзокостюма&lt;&gt; и &lt;TECHNOLOGY&gt;звездолета&lt;&gt; с помощью &lt;IMG&gt;TRADETOGGLEINV&lt;&gt;&#xA;Откройте путеводитель (&lt;IMG&gt;OPTIONS&lt;&gt;), чтобы узнать, как зарабатывать деньги.
                                -- Units required: &lt;STELLAR&gt;%CURRENT%&lt;&gt;/&lt;STELLAR&gt;%AMOUNT%&lt;&gt;&#xA;Sell items at a Space Station &lt;TECHNOLOGY&gt;Trade Terminal&lt;&gt;&#xA;When selling, toggle &lt;STELLAR&gt;Exosuit&lt;&gt; and &lt;TECHNOLOGY&gt;Starship&lt;&gt; inventories with &lt;IMG&gt;TRADETOGGLEINV&lt;&gt;&#xA;Open the Guide (&lt;IMG&gt;OPTIONS&lt;&gt;) to learn how to make money
                                { "Russian", "Требуется юнитов: &lt;STELLAR&gt;%CURRENT%&lt;&gt;/&lt;STELLAR&gt;%AMOUNT%&lt;&gt;&#xA;Продайте предметы в &lt;TECHNOLOGY&gt;торговом терминале&lt;&gt; на космической станции&#xA;Используйте &lt;IMG&gt;TRADETOGGLEINV&lt;&gt; для переключения между инвентарями&#xA;Узнайте как зарабатывать в Путеводителе (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL2_MSG6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Создайте &lt;TECHNOLOGY&gt;гипердвигатель&lt;&gt;.&#xA;&lt;COMMODITY&gt;Динамический резонатор&lt;&gt;: 1/1&#xA;&lt;TECHNOLOGY&gt;Геридий&lt;&gt;: %CURRENT%/%AMOUNT%
                                { "Russian", "Создайте &lt;TECHNOLOGY&gt;гипердвигатель&lt;&gt;&#xA;&lt;COMMODITY&gt;Динамический резонатор&lt;&gt;: 1/1&#xA;&lt;TECHNOLOGY&gt;Геридий&lt;&gt;: %CURRENT%/%AMOUNT%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL2_MSG7A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Установите &lt;TECHNOLOGY&gt;гипердвигатель&lt;&gt;.&#xA;Откройте инвентарь корабля и установите его с помощью &lt;IMG&gt;TECHMENU&lt;&gt;
                                -- Install the &lt;TECHNOLOGY&gt;Hyperdrive&lt;&gt;&#xA;Access the ship inventory and install with &lt;IMG&gt;TECHMENU&lt;&gt;
                                { "Russian", "Установите &lt;TECHNOLOGY&gt;гипердвигатель&lt;&gt;&#xA;Откройте инвентарь корабля и установите компоненты&#xA;с помощью &lt;IMG&gt;TECHMENU&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL2_MSG7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Завершите установку &lt;TECHNOLOGY&gt;гипердвигателя&lt;&gt;.&#xA;Откройте инвентарь корабля и установите компоненты с помощью &lt;IMG&gt;TECHMENU&lt;&gt;
                                -- Complete the &lt;TECHNOLOGY&gt;Hyperdrive&lt;&gt;&#xA;Access the ship inventory and install components with &lt;IMG&gt;TECHMENU&lt;&gt;
                                { "Russian", "Завершите установку &lt;TECHNOLOGY&gt;гипердвигателя&lt;&gt;&#xA;Откройте инвентарь корабля и установите компоненты&#xA;с помощью &lt;IMG&gt;TECHMENU&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL3_MSG0" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;Гипердвигатель&lt;&gt; установлен.&#xA;Вернитесь к кораблю.
                                -- &lt;TECHNOLOGY&gt;Hyperdrive&lt;&gt; successfully installed&#xA;Return to the ship
                                { "Russian", "&lt;TECHNOLOGY&gt;Гипердвигатель&lt;&gt; установлен&#xA;Вернитесь в корабль" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL3_MSG0A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Ищите следы антиматерии с помощью &lt;TECHNOLOGY&gt;сканера звездолета&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;).&#xA;Сканер настроен на &lt;FUEL&gt;антиматерию&lt;&gt;.
                                -- Search for antimatter traces with the &lt;TECHNOLOGY&gt;Starship Scanner&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;)&#xA;Scanner attuned to &lt;FUEL&gt;Antimatter&lt;&gt;
                                { "Russian", "Найдите следы антиматерии с помощью &lt;TECHNOLOGY&gt;сканера звездолёта&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;)&#xA;Сканер настроен на поиск &lt;FUEL&gt;антиматерии&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL3_MSG0B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Ищите следы антиматерии с помощью &lt;TECHNOLOGY&gt;сканера звездолета&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;).&#xA;Обнаружены атмосферные помехи... Проведите &lt;STELLAR&gt;сканирование планеты&lt;&gt; с &lt;STELLAR&gt;орбиты&lt;&gt;.
                                -- Search for antimatter traces with the &lt;TECHNOLOGY&gt;Starship Scanner&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;)&#xA;Atmospheric interference detected... perform &lt;STELLAR&gt;Planetary Scan&lt;&gt; from &lt;STELLAR&gt;Orbit&lt;&gt;
                                { "Russian", "Найдите следы антиматерии с помощью &lt;TECHNOLOGY&gt;сканера звездолёта&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;)&#xA;Обнаружены &lt;FUEL&gt;атмосферные помехи&lt;&gt;...&#xA;Проведите &lt;STELLAR&gt;сканирование планеты&lt;&gt; с &lt;STELLAR&gt;орбиты&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL3_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Ищите следы антиматерии с помощью &lt;TECHNOLOGY&gt;сканера звездолета&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;).&#xA;Сканер настроен на &lt;FUEL&gt;антиматерию&lt;&gt;.
                                { "Russian", "Найдите следы антиматерии с помощью &lt;TECHNOLOGY&gt;сканера звездолёта&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;)&#xA;Сканер настроен на поиск &lt;FUEL&gt;антиматерии&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL3_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сканер обнаружил &lt;FUEL&gt;след антиматерии&lt;&gt;.&#xA;Доберитесь до отмеченной точки.
                                { "Russian", "Сканер обнаружил &lt;FUEL&gt;след антиматерии&lt;&gt;&#xA;Доберитесь до отмеченной точки" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL3_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Создайте &lt;FUEL&gt;варп-ячейку&lt;&gt;.&#xA;Соберите &lt;FUEL&gt;тамий-9&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Используйте &lt;IMG&gt;SCAN&lt;&gt;, чтобы найти планетарные ресурсы
                                { "Russian", "Создайте &lt;FUEL&gt;варп-ячейку&lt;&gt;&#xA;Соберите &lt;FUEL&gt;тамий-9&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Используйте &lt;IMG&gt;SCAN&lt;&gt;, чтобы найти ресурсы" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL3X_MSG3A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите %ITEM% для получения &lt;COMMODITY&gt;антиматериального контейнера&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Используйте &lt;IMG&gt;SCAN&lt;&gt;, чтобы найти &lt;FUEL&gt;богатые кислородом растения&lt;&gt;.
                                -- Gather %ITEM% for &lt;COMMODITY&gt;Antimatter Housing&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Use &lt;IMG&gt;SCAN&lt;&gt; to locate &lt;FUEL&gt;oxygen-rich plants&lt;&gt;
                                { "Russian", "Добудьте: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;Используйте &lt;IMG&gt;SCAN&lt;&gt;, чтобы найти &lt;FUEL&gt;богатые кислородом растения&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL3X_MSG3B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите %ITEM% для получения &lt;COMMODITY&gt;антиматериального контейнера&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Добывайте %ITEM% из малых камней.
                                { "Russian", "Добудьте: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;Добывайте ресурсы из малых камней" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL3X_MSG3C" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Создать: %ITEM% — %CURRENT%/%AMOUNT%
                                -- Craft %ITEM%: %CURRENT%/%AMOUNT%
                                { "Russian", "Создайте: %ITEM% (%CURRENT%/%AMOUNT%)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL3_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Создать: %ITEM% — %CURRENT%/%AMOUNT%&#xA;Используйте &lt;FUEL&gt;антиматерию&lt;&gt; и &lt;COMMODITY&gt;антиматериальный контейнер&lt;&gt;, чтобы создать варп-ячейку.
                                -- Craft %ITEM%: %CURRENT%/%AMOUNT%&#xA;Use &lt;FUEL&gt;Antimatter&lt;&gt; and &lt;COMMODITY&gt;Antimatter Housing&lt;&gt; to create a Warp Cell
                                { "Russian", "Создайте: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;Создайте варп-ячейку, используя &lt;FUEL&gt;антиматерию&lt;&gt;&#xA;и &lt;COMMODITY&gt;антиматериальный контейнер&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL3_MSG5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Заправьте &lt;TECHNOLOGY&gt;гипердвигатель&lt;&gt;.&#xA;Используйте инвентарь (&lt;IMG&gt;INVENTORY&lt;&gt;) или быстрое меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                { "Russian", "Заправьте &lt;TECHNOLOGY&gt;гипердвигатель&lt;&gt;&#xA;Используйте инвентарь (&lt;IMG&gt;INVENTORY&lt;&gt;) или быстрое меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL3_MSG6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Доберитесь до открытого космоса.
                                { "Russian", "Выйдите в открытый космос" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL3_MSG6A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Гипердвигатель &lt;TRADEABLE&gt;заправлен&lt;&gt;.&#xA;Отправьтесь в космос, чтобы испытать системы межзвездного перелета.
                                { "Russian", "Гипердвигатель &lt;TRADEABLE&gt;заправлен&lt;&gt;&#xA;Испытайте системы межзвёздного перелета в космосе" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL3_MSG7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Совершите &lt;STELLAR&gt;варп-прыжок&lt;&gt; в другую систему.&#xA;В космосе галактическую карту можно открыть с помощью &lt;IMG&gt;QUICK_MENU&lt;&gt;
                                -- &lt;STELLAR&gt;Warp&lt;&gt; to another system&#xA;In space, access the Galaxy Map with &lt;IMG&gt;QUICK_MENU&lt;&gt;
                                { "Russian", "Совершите &lt;STELLAR&gt;варп-прыжок&lt;&gt; в другую систему&#xA;Находясь в космосе, откройте галактическую карту (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL3_MSG7A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Совершите &lt;STELLAR&gt;варп-прыжок&lt;&gt; в другую систему.&#xA;Откройте галактическую карту с помощью &lt;IMG&gt;QUICK_MENU&lt;&gt;
                                -- &lt;STELLAR&gt;Warp&lt;&gt; to another system&#xA;Access the Galaxy Map with &lt;IMG&gt;QUICK_MENU&lt;&gt;
                                { "Russian", "Совершите &lt;STELLAR&gt;варп-прыжок&lt;&gt; в другую систему&#xA;Откройте галактическую карту с помощью &lt;IMG&gt;QUICK_MENU&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL4_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Пойман аномальный сигнал.&#xA;Начните сканирование (&lt;IMG&gt;SCAN&lt;&gt;), чтобы обнаружить его источник.
                                { "Russian", "Пойман аномальный сигнал&#xA;Найдите источник, используя сканер (&lt;IMG&gt;SCAN&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL4_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Пойман аномальный сигнал. &lt;IMG&gt;SLASH&lt;&gt; Координаты записаны.&#xA;Сигнал совпадает с предыдущим следом грузового судна.
                                -- Anomalous Signal Detected &lt;IMG&gt;SLASH&lt;&gt; Coordinates Logged&#xA;Signal Matches Previous Freighter Trace
                                { "Russian", "Пойман аномальный сигнал &lt;IMG&gt;SLASH&lt;&gt; Координаты записаны&#xA;Сигнал совпадает с предыдущим следом грузового судна" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL4_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Для создания антиматерии сперва потребуется &lt;COMMODITY&gt;электронный пар&lt;&gt;.&#xA;Соберите &lt;FUEL&gt;углерод&lt;&gt;: %CURRENT%/%AMOUNT%
                                -- To make Antimatter, first make &lt;COMMODITY&gt;Electron Vapour&lt;&gt;&#xA;Gather &lt;FUEL&gt;Carbon&lt;&gt;: %CURRENT%/%AMOUNT%
                                { "Russian", "Для создания антиматерии сперва потребуется &lt;COMMODITY&gt;электронный пар&lt;&gt;&#xA;Соберите &lt;FUEL&gt;углерод&lt;&gt;: %CURRENT%/%AMOUNT%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL4_MSG3A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Для создания антиматерии сперва потребуется &lt;COMMODITY&gt;электронный пар&lt;&gt;.&#xA;Для создания электронного пара требуется &lt;COMMODITY&gt;удерживающая жидкость&lt;&gt;.&#xA;Удерживающую жидкость можно купить на космической станции.
                                { "Russian", "Для создания антиматерии сперва потребуется &lt;COMMODITY&gt;электронный пар&lt;&gt;&#xA;Для создания электронного пара требуется &lt;COMMODITY&gt;удерживающая жидкость&lt;&gt;&#xA;Удерживающую жидкость можно купить на космической станции" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL4_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Создание антиматерии: добыть электронный пар&#xA;Для создания электронного пара требуется &lt;COMMODITY&gt;удерживающая жидкость&lt;&gt;.&#xA;Создайте удерживающую жидкость в &lt;VAL_ON&gt;инвентаре&lt;&gt; (&lt;IMG&gt;INVENTORY&lt;&gt;).
                                -- Create Antimatter: Acquire Electron Vapour&#xA;Electron Vapour requires &lt;COMMODITY&gt;Suspension Fluid&lt;&gt;&#xA;Craft Suspension Fluid in the &lt;VAL_ON&gt;Inventory&lt;&gt; (&lt;IMG&gt;INVENTORY&lt;&gt;)
                                { "Russian", "Создание антиматерии: добыть электронный пар&#xA;Для создания электронного пара требуется &lt;COMMODITY&gt;удерживающая жидкость&lt;&gt;&#xA;Создайте удерживающую жидкость в &lt;VAL_ON&gt;инвентаре&lt;&gt; (&lt;IMG&gt;INVENTORY&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL4_MSG5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Для создания антиматерии сперва потребуется &lt;COMMODITY&gt;электронный пар&lt;&gt;.&#xA;Соберите компоненты для электронного пара.&#xA;Соберите &lt;FUEL&gt;плутоний&lt;&gt;: %CURRENT%/%AMOUNT%
                                { "Russian", "Для создания антиматерии сперва потребуется &lt;COMMODITY&gt;электронный пар&lt;&gt;&#xA;Соберите компоненты для электронного пара&#xA;Соберите &lt;FUEL&gt;плутоний&lt;&gt;: %CURRENT%/%AMOUNT%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL4_MSG6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Создание антиматерии: добыть электронный пар&#xA;Создайте электронный пар в &lt;VAL_ON&gt;инвентаре&lt;&gt; (&lt;IMG&gt;INVENTORY&lt;&gt;).
                                { "Russian", "Создание антиматерии: добыть электронный пар&#xA;Создайте электронный пар в &lt;VAL_ON&gt;инвентаре&lt;&gt; (&lt;IMG&gt;INVENTORY&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL4_MSG7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Создание антиматерии: собрать компоненты&#xA;Соберите &lt;COMMODITY&gt;цинк&lt;&gt;: %CURRENT%/%AMOUNT%
                                { "Russian", "Создание антиматерии: собрать компоненты&#xA;Соберите &lt;COMMODITY&gt;цинк&lt;&gt;: %CURRENT%/%AMOUNT%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL4_MSG9" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Создайте антиматерию.&#xA;Откройте инвентарь с помощью &lt;IMG&gt;INVENTORY&lt;&gt;.&#xA;Чтобы создать объект в пустой ячейке, используйте &lt;IMG&gt;PRODMENU&lt;&gt;.
                                { "Russian", "Создайте антиматерию&#xA;Откройте инвентарь с помощью &lt;IMG&gt;INVENTORY&lt;&gt;&#xA;Чтобы создать объект в пустой ячейке, используйте &lt;IMG&gt;PRODMENU&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL4X_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Создайте антиматерию: соберите ингредиенты&#xA;Добыть: %ITEM% — %CURRENT%/%AMOUNT%
                                { "Russian", "Создайте антиматерию: соберите ингредиенты&#xA;Добудьте: %ITEM% (%CURRENT%/%AMOUNT%)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL4X_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Очистите %ITEM% для получения &lt;SPECIAL&gt;антиматерии&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Обработайте с помощью &lt;TECHNOLOGY&gt;портативного очистителя&lt;&gt;.
                                -- Refine %ITEM% for &lt;SPECIAL&gt;Antimatter&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Process using a &lt;TECHNOLOGY&gt;Portable Refiner&lt;&gt;
                                { "Russian", "Рафинировать %ITEM% для &lt;SPECIAL&gt;антиматерии&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Используйте &lt;TECHNOLOGY&gt;портативный очиститель&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL4X_MSG4A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добыть: %ITEM% — %CURRENT%/%AMOUNT%&#xA;Для получения &lt;SPECIAL&gt;антиматерии&lt;&gt; требуется &lt;FUEL&gt;сжатый углерод&lt;&gt;.
                                -- Gather %ITEM%: %CURRENT%/%AMOUNT%&#xA;&lt;FUEL&gt;Condensed Carbon&lt;&gt; required for &lt;SPECIAL&gt;Antimatter&lt;&gt;
                                { "Russian", "Соберите: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;Для получения &lt;SPECIAL&gt;антиматерии&lt;&gt; требуется &lt;FUEL&gt;сжатый углерод&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL4X_MSG5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Очистите %ITEM% для получения &lt;SPECIAL&gt;антиматерии&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Добудьте из &lt;STELLAR&gt;меди&lt;&gt; с помощью &lt;TECHNOLOGY&gt;портативного очистителя&lt;&gt;.&#xA;Найдите медь с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;.
                                -- Refine %ITEM% for &lt;SPECIAL&gt;Antimatter&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Process from &lt;STELLAR&gt;Copper&lt;&gt; using a &lt;TECHNOLOGY&gt;Portable Refiner&lt;&gt;&#xA;Locate Copper with the &lt;TECHNOLOGY&gt;Analysis Visor&lt;&gt;
                                { "Russian", "Рафинировать %ITEM% для &lt;SPECIAL&gt;антиматерии&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Обработайте &lt;STELLAR&gt;медь&lt;&gt; в &lt;TECHNOLOGY&gt;портативном очистителе&lt;&gt;&#xA;Найдите медь с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL4X_MSG6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Создать: %ITEM% — %CURRENT%/%AMOUNT%
                                -- Create %ITEM%: %CURRENT%/%AMOUNT%
                                { "Russian", "Создайте: %ITEM% (%CURRENT%/%AMOUNT%)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL5_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Следуйте по маршруту системы автоматического наведения.&#xA;Найдите &lt;FUEL&gt;топливо для варпа&lt;&gt;.
                                -- Follow Starship Automatic Guidance&#xA;Locate &lt;FUEL&gt;Warp Fuel&lt;&gt;
                                { "Russian", "Следуйте по маршруту системы навигации&#xA;Найдите &lt;FUEL&gt;топливо для варпа&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL5_MSG1_ALT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Следуйте по маршруту системы автоматического наведения.
                                -- Follow Starship Automatic Guidance
                                { "Russian", "Следуйте по маршруту системы навигации" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL5_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите таинственного посланника.&#xA;Доберитесь до открытого космоса.
                                -- Find the mysterious messenger&#xA;Make your way into space
                                { "Russian", "Найдите таинственного посланника&#xA;Выйдите в открытый космос" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL5_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Исследуйте ближайшие планеты или изучите &lt;STELLAR&gt;новую систему&lt;&gt;.&#xA;Откройте галактическую карту с помощью &lt;IMG&gt;QUICK_MENU&lt;&gt;&#xA;Откройте журнал (&lt;IMG&gt;OPTIONS&lt;&gt;), чтобы посмотреть другие задания.
                                -- Explore nearby planets or search in a &lt;STELLAR&gt;new system&lt;&gt;&#xA;Access the Galaxy Map with &lt;IMG&gt;QUICK_MENU&lt;&gt;&#xA;Access the Log (&lt;IMG&gt;OPTIONS&lt;&gt;) to browse other missions
                                { "Russian", "Исследуйте ближайшие планеты или изучите &lt;STELLAR&gt;новую систему&lt;&gt;&#xA;Откройте галактическую карту с помощью &lt;IMG&gt;QUICK_MENU&lt;&gt;&#xA;Посмотрите другие задания в журнале (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL5_MSG3A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Исследуйте планеты, чтобы находить подсказки, редкие предметы и совершать новые открытия.&#xA;Или вернитесь в космос, чтобы найти &lt;STELLAR&gt;новую планету&lt;&gt;.
                                -- Explore this planet for clues, rare items, or new discoveries&#xA;Or return to space to search a &lt;STELLAR&gt;new planet&lt;&gt;
                                { "Russian", "Изучите планету, найдите подсказки, редкие предметы или открытия&#xA;Или вернитесь в космос, чтобы найти &lt;STELLAR&gt;новую планету&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL5_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите таинственного посланника.
                                { "Russian", "Найдите таинственного посланника" },
                            }
                        },
                        --#endregion

                        --#region UI_CORE_TUT[0-9].*MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUT2_MSG3_SURVEY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Двигайтесь по &lt;STELLAR&gt;направляющим&lt;&gt;, чтобы найти &lt;COMMODITY&gt;источник закодированного сигнала&lt;&gt;&lt;TECHNOLOGY&gt;Разведка цели&lt;&gt; укажет точные координаты задания
                                -- Follow the &lt;STELLAR&gt;directional indicators&lt;&gt; to locate the &lt;COMMODITY&gt;encoded signal&lt;&gt;&#xA;This &lt;TECHNOLOGY&gt;Target Sweep&lt;&gt; will pinpoint mission locations
                                { "Russian", "Двигайтесь по &lt;STELLAR&gt;направляющим&lt;&gt;, чтобы найти &lt;COMMODITY&gt;источник сигнала&lt;&gt;&#xA;&lt;TECHNOLOGY&gt;Разведка цели&lt;&gt; укажет точные координаты задания" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUT2_MSG3_SURVEY_SWAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Получен &lt;COMMODITY&gt;закодированный сигнал&lt;&gt;&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;
                                { "Russian", "Пойман &lt;COMMODITY&gt;закодированный сигнал&lt;&gt;&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUT2_MSG3_SURVEY_OFF" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Получен &lt;COMMODITY&gt;закодированный сигнал&lt;&gt;&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; в анализирующем визоре &lt;IMG&gt;AIM&lt;&gt;
                                { "Russian", "Пойман &lt;COMMODITY&gt;закодированный сигнал&lt;&gt;&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; в анализирующем визоре &lt;IMG&gt;AIM&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUT3_MSG2_SURVEY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Двигайтесь по &lt;STELLAR&gt;направляющим&lt;&gt;, чтобы найти &lt;FUEL&gt;след антиматерии&lt;&gt;&lt;TECHNOLOGY&gt;Разведка цели&lt;&gt; укажет точные координаты задания
                                { "Russian", "Двигайтесь по &lt;STELLAR&gt;направляющим&lt;&gt;, чтобы найти &lt;FUEL&gt;след антиматерии&lt;&gt;&#xA;&lt;TECHNOLOGY&gt;Разведка цели&lt;&gt; укажет точные координаты задания" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUT3_MSG2_SURVEY_SWAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сканер обнаружил &lt;FUEL&gt;след антиматерии&lt;&gt;.&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;
                                { "Russian", "Сканер обнаружил &lt;FUEL&gt;след антиматерии&lt;&gt;&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUT3_MSG2_SURVEY_OFF" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сканер обнаружил &lt;FUEL&gt;след антиматерии&lt;&gt;.&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; в анализирующем визоре &lt;IMG&gt;AIM&lt;&gt;
                                { "Russian", "Сканер обнаружил &lt;FUEL&gt;след антиматерии&lt;&gt;&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; в анализирующем визоре &lt;IMG&gt;AIM&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUT4_MSG2_SURVEY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружен аномальный сигнал &lt;IMG&gt;SLASH&lt;&gt; Координаты записаны&#xA;Двигайтесь по &lt;STELLAR&gt;направляющим&lt;&gt;, чтобы точно установить местоположение
                                { "Russian", "Пойман аномальный сигнал &lt;IMG&gt;SLASH&lt;&gt; координаты записаны&#xA;Двигайтесь по &lt;STELLAR&gt;направляющим&lt;&gt;, чтобы точно установить местоположение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUT4_MSG2_SURVEY_SWAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружен аномальный сигнал &lt;IMG&gt;SLASH&lt;&gt; Координаты записаны&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;
                                { "Russian", "Пойман аномальный сигнал &lt;IMG&gt;SLASH&lt;&gt; координаты записаны&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUT4_MSG2_SURVEY_OFF" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружен аномальный сигнал &lt;IMG&gt;SLASH&lt;&gt; Координаты записаны&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; в анализирующем визоре &lt;IMG&gt;AIM&lt;&gt;
                                { "Russian", "Пойман аномальный сигнал &lt;IMG&gt;SLASH&lt;&gt; координаты записаны&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; в анализирующем визоре &lt;IMG&gt;AIM&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUT5_MSG1_SURVEY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Система автоматического наведения звездолета обнаружила мощный &lt;FUEL&gt;источник топлива&lt;&gt;.&#xA;&lt;STELLAR&gt;Направляющие&lt;&gt; помогут найти точные местоположения.
                                -- Starship Automatic Guidance has located a powerful &lt;FUEL&gt;fuel source&lt;&gt;&#xA;The &lt;STELLAR&gt;directional indicators&lt;&gt; will pinpoint precise locations
                                { "Russian", "Система наведения звездолёта обнаружила мощный &lt;FUEL&gt;источник топлива&lt;&gt;&#xA;&lt;STELLAR&gt;Направляющие&lt;&gt; помогут найти точные местоположения" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUT5_MSG1_SURVEY_SWAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Система автоматического наведения звездолета обнаружила мощный &lt;FUEL&gt;источник топлива&lt;&gt;.&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;
                                { "Russian", "Система наведения звездолёта обнаружила мощный &lt;FUEL&gt;источник топлива&lt;&gt;&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUT5_MSG1_SURVEY_OFF" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Система автоматического наведения звездолета обнаружила мощный &lt;FUEL&gt;источник топлива&lt;&gt;.&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; в анализирующем визоре &lt;IMG&gt;AIM&lt;&gt;
                                { "Russian", "Система наведения звездолёта обнаружила мощный &lt;FUEL&gt;источник топлива&lt;&gt;&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; в анализирующем визоре &lt;IMG&gt;AIM&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region UI_CORE_TERRAINEDIT.*MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TERRAINEDIT_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Очистите &lt;EARTH&gt;намагниченный феррит&lt;&gt;.&#xA;Соберите %ITEM%: %CURRENT%/%AMOUNT%
                                -- Refine &lt;EARTH&gt;Magnetised Ferrite&lt;&gt;&#xA;Gather %ITEM%: %CURRENT%/%AMOUNT%
                                { "Russian", "Рафинировать &lt;EARTH&gt;намагниченный феррит&lt;&gt;&#xA;Соберите: %ITEM% (%CURRENT%/%AMOUNT%)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TERRAINEDIT_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Очистите &lt;EARTH&gt;намагниченный феррит&lt;&gt;.&#xA;Создайте или разместите &lt;TECHNOLOGY&gt;портативный очиститель&lt;&gt;.
                                { "Russian", "Рафинировать &lt;EARTH&gt;намагниченный феррит&lt;&gt;&#xA;Создайте или разместите &lt;TECHNOLOGY&gt;портативный очиститель&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TERRAINEDIT_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Очистите &lt;EARTH&gt;намагниченный феррит&lt;&gt;.&#xA;Очистите: %ITEM% (%CURRENT%/%AMOUNT%)
                                -- Refine &lt;EARTH&gt;Magnetised Ferrite&lt;&gt;&#xA;Refine %ITEM%: %CURRENT%/%AMOUNT%
                                { "Russian", "Рафинировать &lt;EARTH&gt;намагниченный феррит&lt;&gt;&#xA;Рафинировать %ITEM%: %CURRENT%/%AMOUNT%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TERRAINEDIT_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Очистить: %ITEM% — %CURRENT%/%AMOUNT%.
                                -- Refine %ITEM%: %CURRENT%/%AMOUNT%
                                { "Russian", "Рафинировать %ITEM%: %CURRENT%/%AMOUNT%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TERRAINEDIT_MSG5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Получить: %ITEM% — %CURRENT%/%AMOUNT%&#xA;Используйте сканер (&lt;IMG&gt;SCAN&lt;&gt;), чтобы найти %ITEM%.
                                -- Collect %ITEM%: %CURRENT%/%AMOUNT%&#xA;Scan (&lt;IMG&gt;SCAN&lt;&gt;) to locate %ITEM%
                                { "Russian", "Соберите: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;Используйте сканер (&lt;IMG&gt;SCAN&lt;&gt;), чтобы найти %ITEM%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TERRAINEDIT_MSG6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Создайте &lt;COMMODITY&gt;углеродные нанотрубки&lt;&gt;.&#xA;Добыть: %ITEM% — %CURRENT%/%AMOUNT%
                                -- Craft &lt;COMMODITY&gt;Carbon Nanotubes&lt;&gt;&#xA;Gather %ITEM%: %CURRENT%/%AMOUNT%
                                { "Russian", "Создайте &lt;COMMODITY&gt;углеродные нанотрубки&lt;&gt;&#xA;Соберите: %ITEM% (%CURRENT%/%AMOUNT%)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TERRAINEDIT_MSG7A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Создать: %ITEM% — %CURRENT%/%AMOUNT%&#xA;Накоплено дигидрогена: &lt;TRADEABLE&gt;40&lt;&gt;/&lt;TRADEABLE&gt;40&lt;&gt;&#xA;Нажмите &lt;IMG&gt;INVENTORY&lt;&gt;, чтобы открыть инвентарь.&#xA;Чтобы создать объект в пустой ячейке, используйте &lt;IMG&gt;PRODMENU&lt;&gt;
                                -- Craft %ITEM%: %CURRENT%/%AMOUNT%&#xA;Di-hydrogen acquired: &lt;TRADEABLE&gt;40&lt;&gt;/&lt;TRADEABLE&gt;40&lt;&gt;&#xA;Use &lt;IMG&gt;INVENTORY&lt;&gt; to access your inventory&#xA;Use &lt;IMG&gt;PRODMENU&lt;&gt; to craft in empty slots
                                { "Russian", "Создайте: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;Собрано дигидрогена: &lt;TRADEABLE&gt;40&lt;&gt;/&lt;TRADEABLE&gt;40&lt;&gt;&#xA;Нажмите &lt;IMG&gt;INVENTORY&lt;&gt;, чтобы открыть инвентарь&#xA;Чтобы создать объект в пустой ячейке, используйте &lt;IMG&gt;PRODMENU&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TERRAINEDIT_MSG7A1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите %ITEM%,чтобы создать &lt;TECHNOLOGY&gt;гель&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Найдите &lt;TECHNOLOGY&gt;дигидроген&lt;&gt; с помощью &lt;TECHNOLOGY&gt;сканера&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;).
                                -- Gather %ITEM% to make &lt;TECHNOLOGY&gt;Jelly&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Locate &lt;TECHNOLOGY&gt;Di-hydrogen&lt;&gt; with the &lt;TECHNOLOGY&gt;Scanner&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;)
                                { "Russian", "Для создания &lt;TECHNOLOGY&gt;геля&lt;&gt; соберите: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;Найдите &lt;TECHNOLOGY&gt;дигидроген&lt;&gt; с помощью &lt;TECHNOLOGY&gt;сканера&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TERRAINEDIT_MSG7A_VRA" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите %ITEM%,чтобы создать &lt;TECHNOLOGY&gt;гель&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Используйте &lt;STELLAR&gt;сканер&lt;&gt;, чтобы найти %ITEM%.&#xA;Заведите руку за плечо и нажмите &lt;IMG&gt;VR_HOLSTER&lt;&gt;, чтобы взять мультитул.
                                { "Russian", "Для создания &lt;TECHNOLOGY&gt;геля&lt;&gt; соберите: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;Используйте &lt;STELLAR&gt;сканер&lt;&gt;, чтобы найти %ITEM%&#xA;Заведите руку за плечо и нажмите &lt;IMG&gt;VR_HOLSTER&lt;&gt;, чтобы взять мультитул" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TERRAINEDIT_MSG7A_VRB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите %ITEM%, чтобы создать &lt;TECHNOLOGY&gt;гель&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Используйте &lt;STELLAR&gt;сканер&lt;&gt;, чтобы найти %ITEM%.&#xA;Укажите &lt;STELLAR&gt;%SECONDARY_HAND%&lt;&gt; на заднюю сторону своего &lt;TECHNOLOGY&gt;мультитула&lt;&gt;.
                                { "Russian", "Для создания &lt;TECHNOLOGY&gt;геля&lt;&gt; соберите: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;Используйте &lt;STELLAR&gt;сканер&lt;&gt;, чтобы найти %ITEM%&#xA;Укажите &lt;STELLAR&gt;%SECONDARY_HAND%&lt;&gt; на заднюю сторону своего &lt;TECHNOLOGY&gt;мультитула&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TERRAINEDIT_MSG7A_VRC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите %ITEM%,чтобы создать &lt;TECHNOLOGY&gt;гель&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Используйте &lt;STELLAR&gt;сканер&lt;&gt;, чтобы найти %ITEM%.&#xA;Укажите на слово «Сканирование» и выберите то, что вам нужно, при помощи &lt;IMG&gt;FE_ALTSELECT&lt;&gt;
                                { "Russian", "Для создания &lt;TECHNOLOGY&gt;геля&lt;&gt; соберите: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;Используйте &lt;STELLAR&gt;сканер&lt;&gt;, чтобы найти %ITEM%&#xA;Укажите на слово «Сканирование» и выберите то, что вам нужно, при помощи &lt;IMG&gt;FE_ALTSELECT&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TERRAINEDIT_MSG7A_VRD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите %ITEM%, чтобы создать &lt;TECHNOLOGY&gt;гель&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Удерживайте &lt;IMG&gt;VR_TELEPORT&lt;&gt;, чтобы перейти в режим телепортации&#xA;Отпустите &lt;IMG&gt;VR_TELEPORT&lt;&gt;, чтобы телепортироваться в новое место
                                { "Russian", "Для создания &lt;TECHNOLOGY&gt;геля&lt;&gt; соберите: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;Удерживайте &lt;IMG&gt;VR_TELEPORT&lt;&gt;, чтобы перейти в режим телепортации&#xA;Отпустите &lt;IMG&gt;VR_TELEPORT&lt;&gt;, чтобы телепортироваться в новое место" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TERRAINEDIT_MSG7A_VRE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите %ITEM%, чтобы изготовить &lt;TECHNOLOGY&gt;гель&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Используйте &lt;IMG&gt;VR_SNAPLEFT&lt;&gt;/&lt;IMG&gt;VR_SNAPRIGHT&lt;&gt; для смены направления.&#xA;Удерживайте &lt;IMG&gt;VR_TELEPORT&lt;&gt;, чтобы перейти в режим телепортации.&#xA;Отпустите &lt;IMG&gt;VR_TELEPORT&lt;&gt;, чтобы телепортироваться.
                                { "Russian", "Для создания &lt;TECHNOLOGY&gt;геля&lt;&gt; соберите: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;Используйте &lt;IMG&gt;VR_SNAPLEFT&lt;&gt;/&lt;IMG&gt;VR_SNAPRIGHT&lt;&gt; для смены направления&#xA;Удерживайте &lt;IMG&gt;VR_TELEPORT&lt;&gt;, чтобы перейти в режим телепортации&#xA;Отпустите &lt;IMG&gt;VR_TELEPORT&lt;&gt;, чтобы телепортироваться" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TERRAINEDIT_MSG7B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Установите &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt;.&#xA;Создать: %ITEM% — %CURRENT%/%AMOUNT%&#xA;Добудьте &lt;FUEL&gt;углерод&lt;&gt;, стреляя по растениям из &lt;TECHNOLOGY&gt;расщепителя&lt;&gt;.
                                -- Install a &lt;TECHNOLOGY&gt;Terrain Manipulator&lt;&gt;&#xA;Craft %ITEM%: %CURRENT%/%AMOUNT%&#xA;Gather &lt;FUEL&gt;Carbon&lt;&gt; by shooting plants with the &lt;TECHNOLOGY&gt;Mining Beam&lt;&gt;
                                { "Russian", "Установите &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt;&#xA;Создайте: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;Добудьте &lt;FUEL&gt;углерод&lt;&gt; из растений с помощью &lt;TECHNOLOGY&gt;расщепителя&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TERRAINEDIT_MSG8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Установите компоненты &lt;TECHNOLOGY&gt;ландшафтного манипулятора&lt;&gt;: 0 / 2&#xA;Выполните установку в &lt;TECHNOLOGY&gt;инвентаре мультитула&lt;&gt;
                                -- Install &lt;TECHNOLOGY&gt;Terrain Manipulator&lt;&gt; components: 0 / 2&#xA;Install in the &lt;TECHNOLOGY&gt;Multi-Tool Inventory&lt;&gt;
                                { "Russian", "Установите компоненты &lt;TECHNOLOGY&gt;ландшафтного манипулятора&lt;&gt;: 0/2&#xA;Выполните установку в &lt;TECHNOLOGY&gt;инвентаре мультитула&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TERRAINEDIT_MSG8A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Установите компоненты &lt;TECHNOLOGY&gt;ландшафтного манипулятора&lt;&gt;: 1 / 2&#xA;Выполните установку в &lt;TECHNOLOGY&gt;инвентаре мультитула&lt;&gt;
                                { "Russian", "Установите компоненты &lt;TECHNOLOGY&gt;ландшафтного манипулятора&lt;&gt;: 1/2&#xA;Выполните установку в &lt;TECHNOLOGY&gt;инвентаре мультитула&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TERRAINEDIT_MSG8B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Установите &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt;: 0 / 1&#xA;Нажмите &lt;IMG&gt;INVENTORY&lt;&gt;, чтобы открыть инвентарь&#xA;Нажмите &lt;IMG&gt;TECHMENU&lt;&gt;, чтобы выбрать пустую ячейку мультитула и начать
                                -- Install the &lt;TECHNOLOGY&gt;Terrain Manipulator&lt;&gt;: 0 / 1&#xA;Open the Inventory with &lt;IMG&gt;INVENTORY&lt;&gt;&#xA;Select empty Multi-Tool slot with &lt;IMG&gt;TECHMENU&lt;&gt; to begin
                                { "Russian", "Установите &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt;&#xA;Нажмите &lt;IMG&gt;INVENTORY&lt;&gt;, чтобы открыть инвентарь&#xA;Выберите пустую ячейку мультитула и нажмите &lt;IMG&gt;TECHMENU&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TERRAINEDIT_MSG9" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Используйте &lt;IMG&gt;ATTACK&lt;&gt;, чтобы прорыть в почве тоннель с помощью &lt;TECHNOLOGY&gt;ландшафтного манипулятора&lt;&gt;.&#xA;Ищите пещеры, в которых могут встречаться &lt;EARTH&gt;кобальт&lt;&gt; и другие &lt;VAL_ON&gt;ценные сокровища&lt;&gt;.&#xA;Прорывайте пещеры и укрывайтесь в них от &lt;FUEL&gt;опасных условий&lt;&gt;.
                                -- Use &lt;IMG&gt;ATTACK&lt;&gt; to tunnel through the ground with the &lt;TECHNOLOGY&gt;Terrain Manipulator&lt;&gt;&#xA;Search for caves to find &lt;EARTH&gt;Cobalt&lt;&gt; and other &lt;VAL_ON&gt;valuable treasures&lt;&gt;&#xA;Dig caves to take shelter from &lt;FUEL&gt;hazardous conditions&lt;&gt;
                                { "Russian", "Используйте &lt;IMG&gt;ATTACK&lt;&gt;, чтобы рыть в почве тоннели с помощью &lt;TECHNOLOGY&gt;ландшафтного манипулятора&lt;&gt;&#xA;Ищите пещеры, в которых могут встречаться &lt;EARTH&gt;кобальт&lt;&gt; и другие &lt;VAL_ON&gt;ценные сокровища&lt;&gt;&#xA;Прорывайте пещеры и укрывайтесь в них от &lt;FUEL&gt;опасных условий&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region UI_CORE_ACT1

                        --#region UI_CORE_ACT1_STEP1_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT1_STEP1_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Настройте &lt;STELLAR&gt;коммуникатор звездолета&lt;&gt; на таинственный сигнал.&#xA;Откройте коммуникатор с помощью &lt;IMG&gt;QUICK_MENU&lt;&gt;.
                                -- Tune your &lt;STELLAR&gt;Starship Communicator&lt;&gt; to the mystery signal&#xA;Access the Communicator with &lt;IMG&gt;QUICK_MENU&lt;&gt;
                                { "Russian", "Настройте &lt;STELLAR&gt;коммуникатор звездолёта&lt;&gt; на таинственный сигнал&#xA;Ответьте по коммуникатору из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT1_STEP1_MSG_VR1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Настройте &lt;STELLAR&gt;коммуникатор звездолета&lt;&gt; на таинственный сигнал&#xA;Чтобы открыть меню, укажите на свою &lt;STELLAR&gt;%SECONDARY_HAND%&lt;&gt;.&#xA;Откройте &lt;STELLAR&gt;коммуникатор&lt;&gt; в &lt;TECHNOLOGY&gt;быстром меню&lt;&gt; и ответьте на вызов.
                                { "Russian", "Настройте &lt;STELLAR&gt;коммуникатор звездолёта&lt;&gt; на таинственный сигнал&#xA;Чтобы открыть меню, укажите на &lt;STELLAR&gt;%SECONDARY_HAND%&lt;&gt;&#xA;Используйте &lt;STELLAR&gt;коммуникатор&lt;&gt; из &lt;TECHNOLOGY&gt;быстрого меню&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT1_STEP1_MSG_VR2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Настройте &lt;STELLAR&gt;коммуникатор звездолета&lt;&gt; на таинственный сигнал.&#xA;Укажите на &lt;TECHNOLOGY&gt;экран коммуникатора&lt;&gt;.&#xA;Выберите «Ответ» с помощью &lt;IMG&gt;QUICK_ACTION&lt;&gt;.
                                { "Russian", "Настройте &lt;STELLAR&gt;коммуникатор звездолёта&lt;&gt; на таинственный сигнал&#xA;Укажите на &lt;TECHNOLOGY&gt;экран коммуникатора&lt;&gt;&#xA;Выберите «Ответ» с помощью &lt;IMG&gt;QUICK_ACTION&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region UI_CORE_ACT1_STEP2_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT1_STEP2_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Расшифруйте сигнал незнакомца.&#xA;Похоже, сигнал идет от &lt;TECHNOLOGY&gt;аварийного маяка&lt;&gt;.
                                { "Russian", "Расшифруйте сигнал незнакомца&#xA;Похоже, сигнал идет от &lt;TECHNOLOGY&gt;аварийного маяка&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT1_STEP2_MSG_PRE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Отправляйтесь по координатам &lt;STELLAR&gt;незнакомца&lt;&gt;.&#xA;Данные координат частично повреждены.
                                { "Russian", "Отправляйтесь по координатам &lt;STELLAR&gt;незнакомца&lt;&gt;&#xA;Данные частично повреждены" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT1_STEP2_MSGA" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Отремонтируйте &lt;TECHNOLOGY&gt;аварийный маяк&lt;&gt; незнакомца&#xA;Получить из &lt;STELLAR&gt;меди&lt;&gt;: %ITEM% — %CURRENT%/%AMOUNT%.
                                -- Repair the stranger's &lt;TECHNOLOGY&gt;Distress Beacon&lt;&gt;&#xA;Refine %ITEM% from &lt;STELLAR&gt;Copper&lt;&gt;: %CURRENT%/%AMOUNT%
                                { "Russian", "Отремонтируйте &lt;TECHNOLOGY&gt;аварийный маяк&lt;&gt; незнакомца&#xA;Рафинировать %ITEM% из &lt;STELLAR&gt;меди&lt;&gt;: %CURRENT%/%AMOUNT%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT1_STEP2_MSGB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Отремонтируйте &lt;TECHNOLOGY&gt;аварийный маяк&lt;&gt; незнакомца с помощью предмета %ITEM%: %CURRENT%/%AMOUNT%&#xA;Воспользуйтесь &lt;TECHNOLOGY&gt;сканером&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;), чтобы найти &lt;CATALYST&gt;богатые натрием растения&lt;&gt;.
                                -- Repair the stranger's &lt;TECHNOLOGY&gt;Distress Beacon&lt;&gt; with %ITEM%: %CURRENT%/%AMOUNT%&#xA;Use the &lt;TECHNOLOGY&gt;Scanner&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;) to find &lt;CATALYST&gt;Sodium-rich plants&lt;&gt;
                                { "Russian", "Отремонтируйте &lt;TECHNOLOGY&gt;аварийный маяк&lt;&gt; незнакомца&#xA;Найдите: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;&lt;CATALYST&gt;Богатые натрием растения&lt;&gt; можно с помощью сканера (&lt;IMG&gt;SCAN&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT1_STEP2_MSGC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Отремонтируйте &lt;TECHNOLOGY&gt;аварийный маяк&lt;&gt; незнакомца&#xA;Получены все материалы. Чтобы начать ремонт, вернитесь к маяку.
                                -- Repair the stranger's &lt;TECHNOLOGY&gt;Distress Beacon&lt;&gt;&#xA;All materials acquired. Return to the Beacon to begin repair.
                                { "Russian", "Отремонтируйте &lt;TECHNOLOGY&gt;аварийный маяк&lt;&gt; незнакомца&#xA;Все материалы для ремонта найдены&#xA;Вернитесь к маяку" },
                            }
                        },
                        --#endregion

                        --#region UI_CORE_ACT1_STEP3_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT1_STEP3_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Ищите подсказки об &lt;STELLAR&gt;«Артемиде»&lt;&gt; на этой и других планетах.&#xA;Чтобы открыть Путеводитель, нажмите &lt;IMG&gt;OPTIONS&lt;&gt;.
                                -- Search for clues about &lt;STELLAR&gt;'Artemis'&lt;&gt; on this and other worlds&#xA;Press &lt;IMG&gt;OPTIONS&lt;&gt; to access the Guide
                                { "Russian", "Найдите подсказки об &lt;STELLAR&gt;«Артемиде»&lt;&gt; на этой и других планетах&#xA;Нажмите &lt;IMG&gt;OPTIONS&lt;&gt;, чтобы открыть Путеводитель" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT1_STEP3_MSG1A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Ищите подсказки об &lt;STELLAR&gt;«Артемиде»&lt;&gt; на этой и других планетах.&#xA;&lt;STELLAR&gt;Закрепленные схемы улучшения&lt;&gt; можно просмотреть в журнале (&lt;IMG&gt;OPTIONS&lt;&gt;).
                                -- Search for clues about &lt;STELLAR&gt;'Artemis'&lt;&gt; on this and other worlds&#xA;View the &lt;STELLAR&gt;Pinned Upgrade Recipe&lt;&gt; in the Log (&lt;IMG&gt;OPTIONS&lt;&gt;)
                                { "Russian", "Найдите подсказки об &lt;STELLAR&gt;«Артемиде»&lt;&gt; на этой и других планетах&#xA;Ознакомьтесь с &lt;STELLAR&gt;закрепленным чертежем улучшения&lt;&gt; в журнале (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT1_STEP3_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Следуйте за &lt;SPECIAL&gt;аномальным сигналом&lt;&gt;.&#xA;Нажмите &lt;IMG&gt;OPTIONS&lt;&gt;, чтобы открыть журнал заданий.
                                { "Russian", "Следуйте за &lt;SPECIAL&gt;аномальным сигналом&lt;&gt;&#xA;Нажмите &lt;IMG&gt;OPTIONS&lt;&gt;, чтобы открыть журнал заданий" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT1_STEP3_MSG2A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Ищите подсказки об &lt;STELLAR&gt;Артемиде&lt;&gt; на Космической Аномалии.&#xA;Выберите задание «&lt;SPECIAL&gt;Космическая Аномалия&lt;&gt;» в журнале (&lt;IMG&gt;OPTIONS&lt;&gt;).
                                { "Russian", "Ищите подсказки об &lt;STELLAR&gt;Артемиде&lt;&gt; на Космической Аномалии&#xA;Выберите задание &lt;SPECIAL&gt;Космическая Аномалия&lt;&gt; в журнале (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT1_STEP3_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вернитесь в &lt;STELLAR&gt;космос&lt;&gt;.&#xA;Ищите подсказки об &lt;STELLAR&gt;«Артемиде»&lt;&gt; среди звезд.
                                { "Russian", "Вернитесь в &lt;STELLAR&gt;космос&lt;&gt;&#xA;Ищите подсказки об &lt;STELLAR&gt;«Артемиде»&lt;&gt; среди звезд" },
                            }
                        },
                        --#endregion

                        --#region UI_CORE_ACT1_STEP4_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT1_STEP4_MSG1A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите &lt;TECHNOLOGY&gt;передатчик на дальние дистанции&lt;&gt;.&#xA;Используйте сканирование (&lt;IMG&gt;SCAN&lt;&gt;), чтобы определить его возможное местоположение.&#xA;Чтобы связаться с Артемидой, требуется мощный передатчик.
                                -- Locate a &lt;TECHNOLOGY&gt;long-distance transmitter&lt;&gt;&#xA;Scan (&lt;IMG&gt;SCAN&lt;&gt;) for potential sites&#xA;A powerful transmitter is required to contact Artemis
                                { "Russian", "Найдите &lt;TECHNOLOGY&gt;передатчик на дальние дистанции&lt;&gt;&#xA;Определите его возможное местоположение с помощью сканера (&lt;IMG&gt;SCAN&lt;&gt;)&#xA;Для связи с Артемидой потребуется мощный передатчик" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT1_STEP4_MSG0" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите &lt;TECHNOLOGY&gt;передатчик на дальние дистанции&lt;&gt;.&#xA;Чтобы связаться с Артемидой, требуется мощный передатчик.
                                { "Russian", "Найдите &lt;TECHNOLOGY&gt;передатчик на дальние дистанции&lt;&gt;&#xA;Для связи с Артемидой потребуется мощный передатчик" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT1_STEP4_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Активируйте &lt;TECHNOLOGY&gt;передатчик на дальние дистанции&lt;&gt;.&#xA;Чтобы связаться с Артемидой, требуется мощный передатчик.
                                { "Russian", "Активируйте &lt;TECHNOLOGY&gt;передатчик на дальние дистанции&lt;&gt;&#xA;Для связи с Артемидой потребуется мощный передатчик" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT1_STEP4_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Получите %ITEM%, чтобы зарядить передатчик: %CURRENT%/%AMOUNT%&#xA;Чтобы связаться с Артемидой, требуется мощный передатчик.&#xA;Используйте &lt;TECHNOLOGY&gt;сканер&lt;&gt;&lt;IMG&gt;SCAN&lt;&gt;, чтобы найти %ITEM%
                                -- Collect %ITEM% to recharge the transmitter: %CURRENT%/%AMOUNT%&#xA;A powerful transmitter is required to contact Artemis&#xA;Find %ITEM% with a &lt;TECHNOLOGY&gt;Scan&lt;&gt; &lt;IMG&gt;SCAN&lt;&gt;
                                { "Russian", "Соберите: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;Начните поиски с помощью &lt;TECHNOLOGY&gt;сканера&lt;&gt; &lt;IMG&gt;SCAN&lt;&gt;&#xA;Для связи с Артемидой потребуется мощный передатчик" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT1_STEP4_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;COMMODITY&gt;Зарядите&lt;&gt; передатчик, чтобы усилить сигнал.&#xA;Чтобы связаться с Артемидой, требуется мощный передатчик.
                                -- &lt;COMMODITY&gt;Recharge&lt;&gt; the transmitter to boost the signal&#xA;A powerful transmitter is required to contact Artemis
                                { "Russian", "&lt;COMMODITY&gt;Зарядите&lt;&gt; передатчик, чтобы усилить сигнал&#xA;Для связи с Артемидой потребуется мощный передатчик" },
                            }
                        },
                        --#endregion

                        --#region UI_CORE_ACT1_STEP5_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT1_STEP5_MSG1A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Постройте усилитель сигнала.&#xA;Чтобы открыть меню созидания, нажмите &lt;IMG&gt;BUILD_MENU&lt;&gt;&#xA;Прогресс триангуляции: &lt;STELLAR&gt;0%&lt;&gt;
                                { "Russian", "Постройте усилитель сигнала&#xA;Нажмите &lt;IMG&gt;BUILD_MENU&lt;&gt;, чтобы открыть меню строительства&#xA;Прогресс триангуляции: &lt;STELLAR&gt;0%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT1_STEP5_MSG1A2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Проведите триангуляцию своего местоположения с помощью &lt;TECHNOLOGY&gt;усилителя сигнала&lt;&gt;.&#xA;Прогресс триангуляции: &lt;STELLAR&gt;0%&lt;&gt;
                                -- Use the &lt;TECHNOLOGY&gt;Signal Booster&lt;&gt; to triangulate your position&#xA;Triangulation Progress: &lt;STELLAR&gt;0%&lt;&gt;
                                { "Russian", "Проведите триангуляцию своего местоположения&#xA;с помощью &lt;TECHNOLOGY&gt;усилителя сигнала&lt;&gt;&#xA;Прогресс триангуляции: &lt;STELLAR&gt;0%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT1_STEP5_MSG1B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружена подходящая &lt;TECHNOLOGY&gt;точка для триангуляции&lt;&gt;.&#xA;Доберитесь до точки триангуляции.&#xA;Прогресс триангуляции: &lt;STELLAR&gt;33%&lt;&gt;
                                { "Russian", "Обнаружено подходящее &lt;TECHNOLOGY&gt;место для триангуляции&lt;&gt;&#xA;Доберитесь до него&#xA;Прогресс триангуляции: &lt;STELLAR&gt;33%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT1_STEP5_MSG1B_PU" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружена подходящая &lt;TECHNOLOGY&gt;точка для триангуляции&lt;&gt;.&#xA;Подберите &lt;TECHNOLOGY&gt;усилитель сигнала&lt;&gt; с помощью &lt;IMG&gt;DECONSTRUCT&lt;&gt;.&#xA;Доберитесь до точки триангуляции.&#xA;Прогресс триангуляции: &lt;STELLAR&gt;33%&lt;&gt;
                                { "Russian", "Обнаружено подходящее &lt;TECHNOLOGY&gt;место для триангуляции&lt;&gt;&#xA;Подберите &lt;TECHNOLOGY&gt;усилитель сигнала&lt;&gt; с помощью &lt;IMG&gt;DECONSTRUCT&lt;&gt;&#xA;Доберитесь до точки триангуляции&#xA;Прогресс триангуляции: &lt;STELLAR&gt;33%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT1_STEP5_MSG1A_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Постройте &lt;TECHNOLOGY&gt;усилитель сигнала&lt;&gt;.&#xA;Чтобы открыть меню созидания, нажмите &lt;IMG&gt;BUILD_MENU&lt;&gt;&#xA;Прогресс триангуляции: &lt;STELLAR&gt;33%&lt;&gt;
                                { "Russian", "Постройте &lt;TECHNOLOGY&gt;усилитель сигнала&lt;&gt;&#xA;Нажмите &lt;IMG&gt;BUILD_MENU&lt;&gt;, чтобы открыть меню строительства&#xA;Прогресс триангуляции: &lt;STELLAR&gt;33%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT1_STEP5_MSG1A2_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Проведите триангуляцию своего местоположения с помощью &lt;TECHNOLOGY&gt;усилителя сигнала&lt;&gt;.&#xA;Прогресс триангуляции: &lt;STELLAR&gt;33%&lt;&gt;
                                { "Russian", "Проведите триангуляцию своего местоположения&#xA;с помощью &lt;TECHNOLOGY&gt;усилителя сигнала&lt;&gt;&#xA;Прогресс триангуляции: &lt;STELLAR&gt;33%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT1_STEP5_MSG1B_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружена подходящая &lt;TECHNOLOGY&gt;точка для триангуляции&lt;&gt;.&#xA;Доберитесь до точки триангуляции.&#xA;Прогресс триангуляции: &lt;STELLAR&gt;66%&lt;&gt;
                                { "Russian", "Обнаружено подходящее &lt;TECHNOLOGY&gt;место для триангуляции&lt;&gt;&#xA;Доберитесь до него&#xA;Прогресс триангуляции: &lt;STELLAR&gt;66%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT1_STEP5_MSG1B_2_PU" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружена подходящая &lt;TECHNOLOGY&gt;точка для триангуляции&lt;&gt;.&#xA;Подберите &lt;TECHNOLOGY&gt;усилитель сигнала&lt;&gt; с помощью &lt;IMG&gt;DECONSTRUCT&lt;&gt;.&#xA;Доберитесь до точки триангуляции.&#xA;Прогресс триангуляции: &lt;STELLAR&gt;66%&lt;&gt;
                                { "Russian", "Обнаружено подходящее &lt;TECHNOLOGY&gt;место для триангуляции&lt;&gt;&#xA;Подберите &lt;TECHNOLOGY&gt;усилитель сигнала&lt;&gt; с помощью &lt;IMG&gt;DECONSTRUCT&lt;&gt;&#xA;Доберитесь до точки триангуляции&#xA;Прогресс триангуляции: &lt;STELLAR&gt;66%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT1_STEP5_MSG1A_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Постройте &lt;TECHNOLOGY&gt;усилитель сигнала&lt;&gt;.&#xA;Чтобы открыть меню созидания, нажмите &lt;IMG&gt;BUILD_MENU&lt;&gt;&#xA;Прогресс триангуляции: &lt;STELLAR&gt;66%&lt;&gt;
                                { "Russian", "Постройте &lt;TECHNOLOGY&gt;усилитель сигнала&lt;&gt;&#xA;Нажмите &lt;IMG&gt;BUILD_MENU&lt;&gt;, чтобы открыть меню строительства&#xA;Прогресс триангуляции: &lt;STELLAR&gt;66%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT1_STEP5_MSG1A2_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Проведите триангуляцию своего местоположения с помощью &lt;TECHNOLOGY&gt;усилителя сигнала&lt;&gt;.&#xA;Прогресс триангуляции: &lt;STELLAR&gt;66%&lt;&gt;
                                { "Russian", "Проведите триангуляцию своего местоположения&#xA;с помощью &lt;TECHNOLOGY&gt;усилителя сигнала&lt;&gt;&#xA;Прогресс триангуляции: &lt;STELLAR&gt;66%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT1_STEP5_MSG1B_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Возвращайтесь в космос, чтобы связаться с Артемидой.&#xA;Прогресс триангуляции: &lt;TRADEABLE&gt;100%&lt;&gt;
                                { "Russian", "Возвращайтесь в космос, чтобы связаться с Артемидой&#xA;Прогресс триангуляции: &lt;TRADEABLE&gt;100%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT1_STEP5_MSG1B_3_PU" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Возвращайтесь в космос, чтобы связаться с Артемидой.&#xA;Подберите &lt;TECHNOLOGY&gt;усилитель сигнала&lt;&gt; с помощью &lt;IMG&gt;DECONSTRUCT&lt;&gt;.&#xA;Прогресс триангуляции: &lt;TRADEABLE&gt;100%&lt;&gt;
                                { "Russian", "Возвращайтесь в космос, чтобы связаться с Артемидой&#xA;Подберите &lt;TECHNOLOGY&gt;усилитель сигнала&lt;&gt; с помощью &lt;IMG&gt;DECONSTRUCT&lt;&gt;&#xA;Прогресс триангуляции: &lt;TRADEABLE&gt;100%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT1_STEP5_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите &lt;STELLAR&gt;голо-терминал&lt;&gt;, чтобы отправить данные Артемиде.&#xA;Используйте &lt;IMG&gt;SCAN&lt;&gt; для сканирования местности.
                                -- Locate a &lt;STELLAR&gt;Holo-Terminus&lt;&gt; to send data to Artemis&#xA;Use &lt;IMG&gt;SCAN&lt;&gt; to scan your surroundings
                                { "Russian", "Найдите &lt;STELLAR&gt;голо-терминал&lt;&gt;, чтобы отправить данные Артемиде&#xA;Используйте &lt;IMG&gt;SCAN&lt;&gt; для сканирования местности" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT1_STEP5_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Активируйте &lt;STELLAR&gt;голо-терминал&lt;&gt;.&#xA;Отправьте &lt;TECHNOLOGY&gt;данные триангуляции&lt;&gt; Артемиде.
                                { "Russian", "Активируйте &lt;STELLAR&gt;голо-терминал&lt;&gt;&#xA;Отправьте &lt;TECHNOLOGY&gt;данные триангуляции&lt;&gt; Артемиде" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT1_STEP5_MSG5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поговорите с Артемидой.&#xA;&lt;TECHNOLOGY&gt;Данные триангуляции&lt;&gt; готовы к отправке.
                                { "Russian", "Поговорите с Артемидой&#xA;&lt;TECHNOLOGY&gt;Данные триангуляции&lt;&gt; готовы к отправке" },
                            }
                        },
                        --#endregion

                        --#region UI_CORE_ACT1_STEP6_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT1_STEP6_MSG0" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите &lt;TECHNOLOGY&gt;переводчик Артемиды&lt;&gt;: 0/1&#xA;Создайте его в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;).
                                -- Construct &lt;TECHNOLOGY&gt;Artemis' Translator&lt;&gt;: 0/1&#xA;Construct in the Inventory (&lt;IMG&gt;INVENTORY&lt;&gt;)
                                { "Russian", "Создайте &lt;TECHNOLOGY&gt;переводчик Артемиды&lt;&gt; в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT1_STEP6_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Настройте переводчик Артемиды.&#xA;Учите слова: %CURRENT%/%AMOUNT%&#xA;Нажмите &lt;IMG&gt;OPTIONS&lt;&gt;, чтобы узнать больше, о изучении слов.
                                -- Calibrate Artemis' translator&#xA;Learn words: %CURRENT%/%AMOUNT%&#xA;Press &lt;IMG&gt;OPTIONS&lt;&gt; to see more about learning words
                                { "Russian", "Откалибруйте переводчик Артемиды&#xA;Выучите слова: %CURRENT%/%AMOUNT%&#xA;Нажмите &lt;IMG&gt;OPTIONS&lt;&gt;, чтобы узнать больше об изучении слов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT1_STEP6_MSG1A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Калибровка переводчика: &lt;STELLAR&gt;0%&lt;&gt;&#xA;&lt;STELLAR&gt;Учите слова&lt;&gt;, разговаривая с &lt;STELLAR&gt;инопланетными формами жизни&lt;&gt;.&#xA;Нажмите &lt;IMG&gt;OPTIONS&lt;&gt;, чтобы узнать об изучении слов.
                                -- Translator calibration:&lt;STELLAR&gt; 0%&lt;&gt;&#xA;&lt;STELLAR&gt;Learn words&lt;&gt; from an &lt;STELLAR&gt;alien lifeform&lt;&gt;&#xA;Press &lt;IMG&gt;OPTIONS&lt;&gt; to see more about learning words
                                { "Russian", "Калибровка переводчика: &lt;STELLAR&gt;0%&lt;&gt;&#xA;&lt;STELLAR&gt;Учите слова&lt;&gt;, разговаривая с &lt;STELLAR&gt;инопланетными формами жизни&lt;&gt;&#xA;Нажмите &lt;IMG&gt;OPTIONS&lt;&gt;, чтобы узнать больше об изучении слов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT1_STEP6_MSG1B1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Калибровка переводчика: &lt;STELLAR&gt;33%&lt;&gt;&#xA;Используйте &lt;STELLAR&gt;планетарную карту&lt;&gt;, чтобы находить &lt;SPECIAL&gt;древние реликвии&lt;&gt;.&#xA;&lt;STELLAR&gt;Учите слова&lt;&gt;, исследуя древние реликвии.
                                -- Translator calibration:&lt;STELLAR&gt; 33%&lt;&gt;&#xA;Use the &lt;STELLAR&gt;Planetary Chart&lt;&gt; to locate an &lt;SPECIAL&gt;ancient relic&lt;&gt;&#xA;&lt;STELLAR&gt;Learn words&lt;&gt; at the ancient relic
                                { "Russian", "Калибровка переводчика: &lt;STELLAR&gt;33%&lt;&gt;&#xA;Используйте &lt;STELLAR&gt;планетарную карту&lt;&gt;, чтобы найти &lt;SPECIAL&gt;древние реликвии&lt;&gt;&#xA;&lt;STELLAR&gt;Выучите слова&lt;&gt;, исследуя древние реликвии" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT1_STEP6_MSG1B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Калибровка переводчика: &lt;STELLAR&gt;33%&lt;&gt;&#xA;&lt;STELLAR&gt;Учите слова&lt;&gt;, исследуя &lt;SPECIAL&gt;древние реликвии&lt;&gt;.&#xA;Нажмите &lt;IMG&gt;OPTIONS&lt;&gt;, чтобы узнать об изучении слов.
                                { "Russian", "Калибровка переводчика: &lt;STELLAR&gt;33%&lt;&gt;&#xA;&lt;STELLAR&gt;Выучите слова&lt;&gt;, исследуя &lt;SPECIAL&gt;древние реликвии&lt;&gt;&#xA;Нажмите &lt;IMG&gt;OPTIONS&lt;&gt;, чтобы узнать больше об изучении слов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT1_STEP6_MSG1C" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Калибровка переводчика: &lt;STELLAR&gt;66%&lt;&gt;&#xA;&lt;STELLAR&gt;Учите слова&lt;&gt; с помощью &lt;SPECIAL&gt;камня знаний&lt;&gt;.&#xA;Ищите камни знаний, используя &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;).
                                { "Russian", "Калибровка переводчика: &lt;STELLAR&gt;66%&lt;&gt;&#xA;&lt;STELLAR&gt;Выучите слова&lt;&gt; у &lt;SPECIAL&gt;камней знаний&lt;&gt;&#xA;Найдите камни знаний с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT1_STEP6_MSG2A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите инопланетный аванпост с помощью &lt;STELLAR&gt;сканирования&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;).&#xA;Калибровка переводчика: &lt;TRADEABLE&gt;100%&lt;&gt;&#xA;Найдите форму жизни и &lt;STELLAR&gt;узнайте, где вы находитесь&lt;&gt;.
                                { "Russian", "Найдите инопланетный аванпост с помощью &lt;STELLAR&gt;сканирования&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;)&#xA;Калибровка переводчика: &lt;TRADEABLE&gt;100%&lt;&gt;&#xA;Найдите форму жизни и &lt;STELLAR&gt;спросите, где вы находитесь&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT1_STEP6_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Калибровка переводчика: &lt;TRADEABLE&gt;100%&lt;&gt;&#xA;Найдите форму жизни и &lt;STELLAR&gt;узнайте, где вы находитесь&lt;&gt;.
                                { "Russian", "Калибровка переводчика: &lt;TRADEABLE&gt;100%&lt;&gt;&#xA;Найдите форму жизни и &lt;STELLAR&gt;спросите, где вы находитесь&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT1_STEP6_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вернитесь к инопланетной форме жизни и &lt;STELLAR&gt;узнайте местоположение Артемиды&lt;&gt;.&#xA;Отношения: &lt;TRADEABLE&gt;улучшены&lt;&gt;&#xA;Калибровка переводчика: &lt;TRADEABLE&gt;100%&lt;&gt;
                                -- Return to the alien lifeform and &lt;STELLAR&gt;ask about Artemis' location&lt;&gt;&#xA;Standing: &lt;TRADEABLE&gt;Improved&lt;&gt;&#xA;Translator calibration: &lt;TRADEABLE&gt;100%&lt;&gt;
                                { "Russian", "Вернитесь к инопланетной форме жизни&#xA;Узнайте &lt;STELLAR&gt;местоположение Артемиды&lt;&gt;&#xA;Отношения: &lt;TRADEABLE&gt;улучшены&lt;&gt;&#xA;Калибровка переводчика: &lt;TRADEABLE&gt;100%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT1_STEP6_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Повысьте отношения с расой %RACE% на: %CURRENT%/%AMOUNT%&#xD;&#xA;Повышайте отношение к вам с помощью &lt;STELLAR&gt;досок заданий&lt;&gt;, расположенных на космических станциях.&#xD;&#xA;&lt;STELLAR&gt;Любые задания&lt;&gt;, взятые на доске заданий, улучшают ваши отношения.&#xD;&#xA;Подробнее узнать об отношениях с фракциями можно в Путеводителе (&lt;IMG&gt;OPTIONS&lt;&gt;).
                                { "Russian", "Повысьте отношения с %RACE%ами: %CURRENT%/%AMOUNT%&#xA;Выполняйте &lt;STELLAR&gt;любые задания&lt;&gt; на космических станциях&#xA;Узнайте больше об отношениях с фракциями в Путеводителе (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                            }
                        },
                        --#endregion

                        --#region UI_CORE_ACT1_STEP7_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT1_STEP7_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вернитесь в космос, чтобы рассказать Артемиде новости.&#xA;Местные формы жизни не смогли подтвердить местонахождение Артемиды.
                                -- Return to space to bring the news to Artemis&#xA;Local lifeforms were unable to verify Artemis' location
                                { "Russian", "Вернитесь в космос, чтобы рассказать Артемиде новости&#xA;Местные формы жизни не смогли подтвердить&#xA;местонахождение Артемиды" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT1_STEP7_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Ответьте на сообщение Артемиды (&lt;IMG&gt;QUICK_MENU&lt;&gt;)&#xA;Местные формы жизни не смогли сообщить место пребывания Артемиды.
                                -- Answer Artemis' communicator message (&lt;IMG&gt;QUICK_MENU&lt;&gt;)&#xA;Local lifeforms were unable to verify Artemis' location
                                { "Russian", "Ответьте Артемиде с помощью коммуникатора (&lt;IMG&gt;QUICK_MENU&lt;&gt;)&#xA;Местные формы жизни не смогли подтвердить&#xA;местонахождение Артемиды" },
                            }
                        },
                        --#endregion

                        --#region UI_CORE_ACT1_STEP8_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT1_STEP8_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вернитесь в космос, чтобы найти &lt;TECHNOLOGY&gt;«АПОЛЛОНА»&lt;&gt;.&#xA;«Аполлон» — на этой частоте Артемида вела свою последнюю передачу.
                                -- Return to space to search for &lt;TECHNOLOGY&gt;'APOLLO'&lt;&gt;&#xA;Frequency 'Apollo' was the final transmission from Artemis
                                { "Russian", "Вернитесь в космос, чтобы найти &lt;TECHNOLOGY&gt;АПОЛЛОНА&lt;&gt;&#xA;Артемида вела свою последнюю передачу на частоте Аполлона" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT1_STEP8_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Свяжитесь с &lt;TECHNOLOGY&gt;«АПОЛЛОНОМ»&lt;&gt; через голо-терминал.&#xA;Используйте &lt;IMG&gt;SCAN&lt;&gt;, чтобы начать сканирование в поисках голо-терминала.&#xA;«Аполлон» — на этой частоте Артемида вела свою последнюю передачу.
                                -- Contact &lt;TECHNOLOGY&gt;'APOLLO'&lt;&gt; from a Holo-Terminus&#xA;Use &lt;IMG&gt;SCAN&lt;&gt; to scan for a Holo-Terminus&#xA;Frequency 'Apollo' was the final transmission from Artemis
                                { "Russian", "Свяжитесь с &lt;TECHNOLOGY&gt;АПОЛЛОНОМ&lt;&gt; через голо-терминал&#xA;Найдите терминал с помощью сканера &lt;IMG&gt;SCAN&lt;&gt;&#xA;Артемида вела свою последнюю передачу на частоте Аполлона" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT1_STEP8_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Свяжитесь с &lt;TECHNOLOGY&gt;«АПОЛЛОНОМ»&lt;&gt; через голо-терминал.&#xA;«Аполлон» — на этой частоте Артемида вела свою последнюю передачу.
                                -- Contact &lt;TECHNOLOGY&gt;'APOLLO'&lt;&gt; from a Holo-Terminus&#xA;Frequency 'Apollo' was the final transmission from Artemis
                                { "Russian", "Свяжитесь с &lt;TECHNOLOGY&gt;АПОЛЛОНОМ&lt;&gt; через голо-терминал&#xA;Артемида вела свою последнюю передачу на частоте Аполлона" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT1_STEP8_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поговорите с &lt;TECHNOLOGY&gt;Аполлоном&lt;&gt;.&#xA;«Аполлон» — на этой частоте Артемида вела свою последнюю передачу.
                                { "Russian", "Поговорите с &lt;TECHNOLOGY&gt;Аполлоном&lt;&gt;&#xA;Артемида вела свою последнюю передачу на частоте Аполлона" },
                            }
                        },
                        --#endregion

                        --#region UI_CORE_ACT1_STEP9_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT1_STEP9_MSG0" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Связной Аполлона поможет вам расширить базу.&#xA;&lt;STELLAR&gt;Телепортируйтесь&lt;&gt; на свою базу с любого терминала телепорта.
                                -- Apollo's contact will help expand your base&#xA;&lt;STELLAR&gt;Teleport&lt;&gt; to your base from any teleport terminus
                                { "Russian", "Связной Аполлона поможет расширить вашу базу&#xA;&lt;STELLAR&gt;Переместитесь&lt;&gt; на свою базу с помощью телепорта" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT1_STEP9_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Связной Аполлона организовал базу.&#xA;Найдите его на галактической карте (&lt;IMG&gt;QUICK_MENU&lt;&gt;) находясь в открытом космосе.
                                -- Apollo's contact has arranged a base&#xA;Locate them on the Galaxy Map (&lt;IMG&gt;QUICK_MENU&lt;&gt;) when in space
                                { "Russian", "Связной Аполлона поможет расширить вашу базу&#xA;Находясь в космосе, найдите его на галактической карте (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT1_STEP9_MSG1A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Связной Аполлона подготовил базу.&#xA;Найдите контакты Аполлона на борту &lt;COMMODITY&gt;космической станции&lt;&gt;.
                                -- "Apollo's contact has arranged a base&#xA;Find Apollo's contact aboard the &lt;COMMODITY&gt;Space Station&lt;&gt;
                                { "Russian", "Связной Аполлона поможет расширить вашу базу&#xA;Найдите его на борту &lt;COMMODITY&gt;космической станции&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT1_STEP9_MSG1B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Связной Аполлона поможет вам расширить базу.&#xA;Найдите его на галактической карте, нажав (&lt;IMG&gt;QUICK_MENU&lt;&gt;) в космосе.
                                -- Apollo's contact will help expand your base&#xA;Locate them on the Galaxy Map (&lt;IMG&gt;QUICK_MENU&lt;&gt;) when in space
                                { "Russian", "Связной Аполлона поможет вам расширить базу&#xA;Находясь в космосе, найдите его на галактической карте (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT1_STEP9_MSG1C" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Связной Аполлона поможет вам расширить базу.&#xA;Найдите контакты Аполлона на борту &lt;COMMODITY&gt;космической станции&lt;&gt;.
                                { "Russian", "Связной Аполлона поможет вам расширить базу&#xA;Найдите его на борту &lt;COMMODITY&gt;космической станции&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT1_STEP9_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите и займите базу.
                                { "Russian", "Найдите и займите базу" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT1_STEP9_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Расширяйте и заселяйте ваш новый дом.&#xA;Откройте журнал заданий с помощью &lt;IMG&gt;OPTIONS&lt;&gt; и выберите &lt;STELLAR&gt;Расширение базы&lt;&gt;.
                                { "Russian", "Расширяйте и заселяйте ваш новый дом&#xA;Выберите задание &lt;STELLAR&gt;Расширение базы&lt;&gt; в журнале (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT1_STEP9_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Наймите &lt;TECHNOLOGY&gt;ученого-корвакса&lt;&gt; для вашей базы.&#xA;Откройте журнал заданий с помощью &lt;IMG&gt;OPTIONS&lt;&gt; и выберите &lt;STELLAR&gt;Научное исследование&lt;&gt;.
                                { "Russian", "Наймите &lt;TECHNOLOGY&gt;ученого-корвакса&lt;&gt; для вашей базы&#xA;Выберите задание &lt;STELLAR&gt;Научное исследование&lt;&gt; в журнале (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT1_STEP9_MSG5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сообщите Аполлону новости о вашей &lt;STELLAR&gt;базе&lt;&gt; и ее &lt;STELLAR&gt;персонале&lt;&gt;.&#xA;&lt;TECHNOLOGY&gt;Возвращайтесь в космос&lt;&gt; и свяжитесь с ним.
                                { "Russian", "Сообщите Аполлону новости о вашей &lt;STELLAR&gt;базе&lt;&gt; и ее &lt;STELLAR&gt;персонале&lt;&gt;&#xA;&lt;TECHNOLOGY&gt;Возвращайтесь в космос&lt;&gt; и свяжитесь с ним" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT1_STEP9_MSG6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Нажмите &lt;IMG&gt;QUICK_MENU&lt;&gt;, чтобы ответить.&#xA;Сообщите Аполлону новости о вашей &lt;STELLAR&gt;базе&lt;&gt; и ее &lt;STELLAR&gt;персонале&lt;&gt;.
                                -- Answer the Communicator by pressing &lt;IMG&gt;QUICK_MENU&lt;&gt;&#xA;Report in to Apollo with news of your &lt;STELLAR&gt;base&lt;&gt; and &lt;STELLAR&gt;staff&lt;&gt;
                                { "Russian", "Ответьте по коммуникатору с помощью &lt;IMG&gt;QUICK_MENU&lt;&gt;&#xA;Сообщите Аполлону новости о вашей &lt;STELLAR&gt;базе&lt;&gt; и ее &lt;STELLAR&gt;персонале&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region UI_CORE_ACT1_STEP10_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT1_STEP10_MSG0" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Установите &lt;TECHNOLOGY&gt;личное силовое поле&lt;&gt; Аполлона в &lt;TECHNOLOGY&gt;мультитул&lt;&gt;.&#xA;Установка новой технологии автоматически &lt;COMMODITY&gt;закрепляет&lt;&gt; подробности в вашем журнале.&#xA;Приобретайте &lt;STELLAR&gt;новые, более крупные мультитулы&lt;&gt; на борту космических станций.
                                -- Install Apollo's &lt;TECHNOLOGY&gt;Personal Forcefield&lt;&gt; in the &lt;TECHNOLOGY&gt;Multi-Tool&lt;&gt;&#xA;Installing new technology automatically &lt;COMMODITY&gt;pins&lt;&gt; details to your Log&#xA;Purchase &lt;STELLAR&gt;new, larger Multi-Tools&lt;&gt; aboard Space Stations
                                { "Russian", "Установите &lt;TECHNOLOGY&gt;личное силовое поле&lt;&gt; Аполлона в &lt;TECHNOLOGY&gt;мультитул&lt;&gt;&#xA;Инструкция по установке новой технологии автоматически &lt;COMMODITY&gt;закрепляется&lt;&gt; в журнале&#xA;Приобретайте &lt;STELLAR&gt;новые, большие мультитулы&lt;&gt; на борту космических станций" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT1_STEP10_MSG0A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Завершите установку &lt;TECHNOLOGY&gt;личного силового поля&lt;&gt; Аполлона.
                                { "Russian", "Завершите установку &lt;TECHNOLOGY&gt;личного силового поля&lt;&gt; Аполлона" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT1_STEP10_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Собирайте наниты: %CURRENT%/%AMOUNT%&#xA;Используйте наниты для покупки &lt;TECHNOLOGY&gt;новых технологий&lt;&gt;.
                                { "Russian", "Соберите наниты: %CURRENT%/%AMOUNT%&#xA;Покупайте &lt;TECHNOLOGY&gt;новые технологии&lt;&gt; за наниты" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT1_STEP10_MSG1A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обыщите &lt;STELLAR&gt;заброшенное здание&lt;&gt; и найдите &lt;TECHNOLOGY&gt;наниты&lt;&gt;.&#xA;Используйте наниты для покупки &lt;TECHNOLOGY&gt;новых технологий&lt;&gt;.
                                { "Russian", "Обыщите &lt;STELLAR&gt;заброшенное здание&lt;&gt; и найдите &lt;TECHNOLOGY&gt;наниты&lt;&gt;&#xA;Покупайте &lt;TECHNOLOGY&gt;новые технологии&lt;&gt; за наниты" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT1_STEP10_MSG1B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обыщите &lt;STELLAR&gt;заброшенные здания&lt;&gt; и найдите &lt;TECHNOLOGY&gt;наниты&lt;&gt;.&#xA;Вернитесь в космос, чтобы найти заброшенное здание.
                                { "Russian", "Обыщите &lt;STELLAR&gt;заброшенные здания&lt;&gt; и найдите &lt;TECHNOLOGY&gt;наниты&lt;&gt;&#xA;Вернитесь в космос, чтобы найти заброшенное здание" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT1_STEP10_MSG1C" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обыщите &lt;STELLAR&gt;заброшенные здания&lt;&gt; и найдите &lt;TECHNOLOGY&gt;наниты&lt;&gt;.&#xA;Используйте сканер (&lt;IMG&gt;SCAN&lt;&gt;), чтобы найти заброшенное здание.
                                { "Russian", "Обыщите &lt;STELLAR&gt;заброшенные здания&lt;&gt; и найдите &lt;TECHNOLOGY&gt;наниты&lt;&gt;&#xA;Найдите здание с помощью сканера (&lt;IMG&gt;SCAN&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT1_STEP10_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите вай’кина-торговца мультитулами.&#xA;Возвращайтесь в космос и найдите вай’кинскую систему.
                                { "Russian", "Найдите вай’кина-торговца мультитулами&#xA;Возвращайтесь в космос и найдите вай’кинскую систему" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT1_STEP10_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите вай’кина-торговца мультитулами.&#xA;Используйте &lt;IMG&gt;QUICK_MENU&lt;&gt;, чтобы открыть галактическую карту.
                                { "Russian", "Найдите вай’кина-торговца мультитулами&#xA;Используйте &lt;IMG&gt;QUICK_MENU&lt;&gt;, чтобы открыть галактическую карту" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT1_STEP10_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите &lt;TECHNOLOGY&gt;торговца технологиями мультитула&lt;&gt;.&#xA;Посетите торговца технологиями на &lt;STELLAR&gt;космической станции&lt;&gt;.
                                { "Russian", "Найдите &lt;TECHNOLOGY&gt;торговца технологиями мультитула&lt;&gt;&#xA;Посетите торговца технологиями на &lt;STELLAR&gt;космической станции&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT1_STEP10_MSG5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Установите свой &lt;TECHNOLOGY&gt;модуль улучшения&lt;&gt;.&#xA;&lt;TECHNOLOGY&gt;Торговцы технологиями&lt;&gt; на космических станциях продают различные улучшения.&#xA;Как будете готовы, &lt;TECHNOLOGY&gt;вернитесь в космос&lt;&gt; и свяжитесь с Аполлоном.
                                { "Russian", "Установите свой &lt;TECHNOLOGY&gt;модуль улучшения&lt;&gt;&#xA;Как будете готовы, &lt;TECHNOLOGY&gt;вернитесь в космос&lt;&gt; и свяжитесь с Аполлоном&#xA;&lt;TECHNOLOGY&gt;Торговцы технологиями&lt;&gt; на космических станциях&#xA;продают различные улучшения" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT1_STEP10_MSG5A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Как будете готовы, &lt;TECHNOLOGY&gt;вернитесь в космос&lt;&gt; и свяжитесь с Аполлоном.&#xA;&lt;TECHNOLOGY&gt;Торговцы технологиями&lt;&gt; на космических станциях продают различные улучшения.
                                { "Russian", "Как будете готовы, &lt;TECHNOLOGY&gt;вернитесь в космос&lt;&gt; и свяжитесь с Аполлоном&#xA;&lt;TECHNOLOGY&gt;Торговцы технологиями&lt;&gt; на космических станциях&#xA;продают различные улучшения" },
                            }
                        },
                        --#endregion

                        --#region UI_CORE_ACT1_STEP11_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT1_STEP11_MSG0A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Нажмите &lt;IMG&gt;QUICK_MENU&lt;&gt;, чтобы ответить.&#xA;&lt;SPECIAL&gt;Обнаружена неизвестная частота&lt;&gt;
                                -- Answer the Communicator by pressing &lt;IMG&gt;QUICK_MENU&lt;&gt;&#xA;&lt;SPECIAL&gt;Unknown frequency detected&lt;&gt;
                                { "Russian", "Ответьте по коммуникатору с помощью &lt;IMG&gt;QUICK_MENU&lt;&gt;&#xA;&lt;SPECIAL&gt;Обнаружена неизвестная частота&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT1_STEP11_MSG0" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Нажмите &lt;IMG&gt;QUICK_MENU&lt;&gt;, чтобы ответить.&#xA;Сообщите Аполлону о результатах.
                                { "Russian", "Ответьте по коммуникатору с помощью &lt;IMG&gt;QUICK_MENU&lt;&gt;&#xA;Сообщите Аполлону о результатах" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT1_STEP11_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Проникните в &lt;TECHNOLOGY&gt;тайную постройку корваксов&lt;&gt;.&#xA;Аполлон обнаружил координаты &lt;STELLAR&gt;подозрительной станции корваксов&lt;&gt;.
                                { "Russian", "Проникните в &lt;TECHNOLOGY&gt;тайную постройку корваксов&lt;&gt;&#xA;Аполлон обнаружил координаты &lt;STELLAR&gt;подозрительной станции корваксов&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT1_STEP11_MSG1A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Проникните в &lt;TECHNOLOGY&gt;тайную постройку корваксов&lt;&gt;.&#xA;Используйте &lt;TECHNOLOGY&gt;плазмомет&lt;&gt;, чтобы попасть в постройку.&#xA;Подготовьте &lt;STELLAR&gt;боеприпасы&lt;&gt; перед началом боя.
                                { "Russian", "Проникните в &lt;TECHNOLOGY&gt;тайную постройку корваксов&lt;&gt;&#xA;Используйте &lt;TECHNOLOGY&gt;плазмомет&lt;&gt;, чтобы попасть в постройку&#xA;Подготовьте &lt;STELLAR&gt;боеприпасы&lt;&gt; перед началом боя" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT1_STEP11_MSG1B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Проникните в &lt;TECHNOLOGY&gt;тайную постройку корваксов&lt;&gt;.&#xA;Найдите подходящие материалы для ремонта поврежденного терминала.&#xA;Аполлон обнаружил координаты &lt;STELLAR&gt;подозрительной постройки корваксов&lt;&gt;.
                                { "Russian", "Проникните в &lt;TECHNOLOGY&gt;тайную постройку корваксов&lt;&gt;&#xA;Найдите подходящие материалы для ремонта терминала&#xA;Аполлон обнаружил координаты &lt;STELLAR&gt;подозрительной постройки корваксов&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT1_STEP11_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Уничтожьте &lt;FUEL&gt;дверь станции&lt;&gt;.&#xA;Создайте &lt;TECHNOLOGY&gt;плазмомет&lt;&gt; в мультитуле.&#xA;Активируйте плазмомет, используя &lt;IMG&gt;CYCLEWEAPON&lt;&gt;.
                                -- Destroy the &lt;FUEL&gt;Facility Door&lt;&gt;&#xA;Construct a &lt;TECHNOLOGY&gt;Boltcaster&lt;&gt; in your Multi-Tool&#xA;Activate Boltcaster with &lt;IMG&gt;CYCLEWEAPON&lt;&gt;
                                { "Russian", "Уничтожьте &lt;FUEL&gt;дверь здания&lt;&gt;&#xA;Создайте &lt;TECHNOLOGY&gt;плазмомет&lt;&gt; в мультитуле&#xA;Активируйте плазмомет с помощью &lt;IMG&gt;CYCLEWEAPON&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT1_STEP11_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сообщите Аполлону о &lt;STELLAR&gt;заброшенной станции&lt;&gt;.&#xA;&lt;TECHNOLOGY&gt;Возвращайтесь в космос&lt;&gt; и свяжитесь с ним.
                                { "Russian", "Сообщите Аполлону о &lt;STELLAR&gt;заброшенном здании&lt;&gt;&#xA;&lt;TECHNOLOGY&gt;Возвращайтесь в космос&lt;&gt; и свяжитесь с ним" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT1_STEP11_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Нажмите &lt;IMG&gt;QUICK_MENU&lt;&gt;, чтобы ответить.&#xA;Сообщите Аполлону о &lt;STELLAR&gt;заброшенной постройке&lt;&gt;.
                                { "Russian", "Ответьте по коммуникатору с помощью &lt;IMG&gt;QUICK_MENU&lt;&gt;&#xA;Сообщите Аполлону о &lt;STELLAR&gt;заброшенном здании&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region UI_CORE_ACT1_STEP13_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT1_STEP13_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- План Аполлона помог обнаружить скрытые силовые линии стражей.&#xA;Пройдите по энергетическому следу стражей до &lt;SPECIAL&gt;источника&lt;&gt;.
                                -- Apollo's plan has revealed hidden Sentinel leylines&#xA;Follow the Sentinel energy trace to its &lt;SPECIAL&gt;source&lt;&gt;
                                { "Russian", "План Аполлона помог найти скрытые силовые линии стражей&#xA;Следуйте по энергетическому следу стражей до &lt;SPECIAL&gt;источника&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT1_STEP13_MSG1A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Выполните &lt;STELLAR&gt;сканирование&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;), чтобы найти &lt;SPECIAL&gt;силовые линии портала&lt;&gt;.&#xA;Сканер настроен на данные сигнала стражей.
                                -- Perform a &lt;STELLAR&gt;Scan&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;) to uncover &lt;SPECIAL&gt;portal leylines&lt;&gt;&#xA;Scanner has been attuned to Sentinel signal data
                                { "Russian", "Найдите &lt;SPECIAL&gt;силовые линии портала&lt;&gt;&#xA;с помощью &lt;STELLAR&gt;сканирования&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;)&#xA;Сканер настроен на сигнал стражей" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT1_STEP13_MSG1B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Продолжайте следовать плану Аполлона.&#xA;Найдите источник следа энергии стражей.&#xA;Вернитесь в космос, чтобы начать поиск.
                                -- Continue with Apollo's plan&#xA;Search for the source of the Sentinel energy trace&#xA;Return to space to begin the search
                                { "Russian", "Продолжайте следовать плану Аполлона&#xA;Найдите источник энергетического следа стражей&#xA;Вернитесь в космос, чтобы начать поиски" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT1_STEP13_MSG2A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сбегите или уничтожьте стражей.&#xA;Собрано &lt;SPECIAL&gt;наборов знаков&lt;&gt;: &lt;STELLAR&gt;1&lt;&gt; / &lt;STELLAR&gt;3&lt;&gt;.
                                -- Escape or destroy the Sentinels&#xA;&lt;SPECIAL&gt;Glyph Sets&lt;&gt; Recovered: &lt;STELLAR&gt;1&lt;&gt; / &lt;STELLAR&gt;3&lt;&gt;
                                { "Russian", "Уничтожьте стражей или убегите от них&#xA;Собрано &lt;SPECIAL&gt;знаков&lt;&gt;: &lt;STELLAR&gt;1&lt;&gt;/&lt;STELLAR&gt;3&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT1_STEP13_MSG2B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Выполните &lt;STELLAR&gt;сканирование&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;), чтобы найти &lt;SPECIAL&gt;силовые линии портала&lt;&gt;.&#xA;Сканер &lt;TRADEABLE&gt;настроен&lt;&gt; на волну силовых линий.&#xA;Собрано &lt;SPECIAL&gt;наборов знаков&lt;&gt;: &lt;STELLAR&gt;1&lt;&gt; / &lt;STELLAR&gt;3&lt;&gt;.
                                { "Russian", "Найдите &lt;SPECIAL&gt;силовые линии портала&lt;&gt;&#xA;с помощью &lt;STELLAR&gt;сканирования&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;)&#xA;Сканер &lt;TRADEABLE&gt;настроен&lt;&gt; на волну силовых линий&#xA;Собрано &lt;SPECIAL&gt;знаков&lt;&gt;: &lt;STELLAR&gt;1&lt;&gt;/&lt;STELLAR&gt;3&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT1_STEP13_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Пройдите по &lt;SPECIAL&gt;энергетическому следу&lt;&gt; стражей до следующего артефакта.&#xA;Сканер &lt;TRADEABLE&gt;настроен&lt;&gt; на волну силовых линий.&#xA;Собрано &lt;SPECIAL&gt;наборов знаков&lt;&gt;: &lt;STELLAR&gt;1&lt;&gt; / &lt;STELLAR&gt;3&lt;&gt;.
                                -- Follow the Sentinel &lt;SPECIAL&gt;energy trace&lt;&gt; to the next artifact&#xA;Scanner now &lt;TRADEABLE&gt;accurately attuned&lt;&gt; to leyline wavelength&#xA;&lt;SPECIAL&gt;Glyph Sets&lt;&gt; Recovered: &lt;STELLAR&gt;1&lt;&gt; / &lt;STELLAR&gt;3&lt;&gt;
                                { "Russian", "Следуйте по &lt;SPECIAL&gt;энергетическому следу&lt;&gt; стражей&#xA;к следующему артефакту&#xA;Сканер &lt;TRADEABLE&gt;настроен&lt;&gt; на волну силовых линий&#xA;Собрано &lt;SPECIAL&gt;знаков&lt;&gt;: &lt;STELLAR&gt;1&lt;&gt;/&lt;STELLAR&gt;3&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT1_STEP13_MSG3A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Выполните &lt;STELLAR&gt;сканирование&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;), чтобы найти &lt;SPECIAL&gt;силовые линии портала&lt;&gt;.&#xA;Собрано &lt;SPECIAL&gt;наборов знаков&lt;&gt;:&lt;STELLAR&gt;2&lt;&gt; / &lt;STELLAR&gt;3&lt;&gt;
                                { "Russian", "Найдите &lt;SPECIAL&gt;силовые линии портала&lt;&gt;&#xA;с помощью &lt;STELLAR&gt;сканирования&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;)&#xA;Собрано &lt;SPECIAL&gt;знаков&lt;&gt;: &lt;STELLAR&gt;2&lt;&gt;/&lt;STELLAR&gt;3&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT1_STEP13_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Пройдите по следу энергии стражей до следующего артефакта.&#xA;Собрано &lt;SPECIAL&gt;наборов знаков&lt;&gt;:&lt;STELLAR&gt;2&lt;&gt; / &lt;STELLAR&gt;3&lt;&gt;
                                { "Russian", "Следуйте по энергетическому следу стражей&#xA;к следующему артефакту&#xA;Собрано &lt;SPECIAL&gt;знаков&lt;&gt;: &lt;STELLAR&gt;2&lt;&gt;/&lt;STELLAR&gt;3&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT1_STEP13_MSG4A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Выполните &lt;STELLAR&gt;сканирование&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;), чтобы найти &lt;SPECIAL&gt;силовые линии портала&lt;&gt;.&#xA;Собрано &lt;SPECIAL&gt;наборов знаков&lt;&gt;: &lt;TRADEABLE&gt;3&lt;&gt; / &lt;TRADEABLE&gt;3&lt;&gt;
                                { "Russian", "Найдите &lt;SPECIAL&gt;силовые линии портала&lt;&gt;&#xA;с помощью &lt;STELLAR&gt;сканирования&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;)&#xA;Собрано &lt;SPECIAL&gt;знаков&lt;&gt;: &lt;TRADEABLE&gt;3&lt;&gt;/&lt;TRADEABLE&gt;3&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT1_STEP13_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Пройдите по следу энергии стражей до &lt;SPECIAL&gt;портала&lt;&gt;.&#xA;Собрано &lt;SPECIAL&gt;наборов знаков&lt;&gt;: &lt;TRADEABLE&gt;3&lt;&gt; / &lt;TRADEABLE&gt;3&lt;&gt;
                                { "Russian", "Следуйте по энергетическому следу стражей к &lt;SPECIAL&gt;порталу&lt;&gt;&#xA;Собрано &lt;SPECIAL&gt;знаков&lt;&gt;: &lt;TRADEABLE&gt;3&lt;&gt;/&lt;TRADEABLE&gt;3&lt;&gt;" },
                            }
                        },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT1_STEP13_MSG4_TITLE" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Прыжок во тьме &lt;IMG&gt;SLASH&lt;&gt; &lt;SPECIAL&gt;ОБНАРУЖЕНЫ ВРАТА&lt;&gt;
                        --         { "Russian", "Прыжок во тьме &lt;IMG&gt;SLASH&lt;&gt; &lt;SPECIAL&gt;ОБНАРУЖЕНЫ ВРАТА&lt;&gt;" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT1_STEP13_MSG6_TITLE" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- &lt;FUEL&gt;ВНИМАНИЕ&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt; &lt;FUEL&gt;ОБНАРУЖЕНА ПРОБОИНА ВО ВРАТАХ&lt;&gt;
                        --         { "Russian", "&lt;FUEL&gt;ВНИМАНИЕ&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt; &lt;FUEL&gt;ОБНАРУЖЕНА ПРОБОИНА ВО ВРАТАХ&lt;&gt;" },
                        --     }
                        -- },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT1_STEP13_MSG5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Войдите в портал.
                                { "Russian", "Войдите в портал" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT1_STEP13_MSG6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;RED&gt;НАРУШЕНИЕ&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt; &lt;RED&gt;НАРУШЕНИЕ&lt;&gt;&lt;IMG&gt;SLASH&lt;&gt; &lt;RED&gt;НАРУШЕНИЕ&lt;&gt;&lt;IMG&gt;SLASH&lt;&gt;&#xD;&#xA;ВНИМАНИЕ: ПОЙМАН АНОМАЛЬНЫЙ СИГНАЛ
                                -- &lt;RED&gt;BREACH&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt; &lt;RED&gt;BREACH&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt; &lt;RED&gt;BREACH&lt;&gt;&#xA;WARNING: ANOMALOUS SIGNAL DETECTED
                                { "Russian", "&lt;RED&gt;НАРУШЕНИЕ&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt; &lt;RED&gt;НАРУШЕНИЕ&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt; &lt;RED&gt;НАРУШЕНИЕ&lt;&gt;&#xA;ВНИМАНИЕ! ПОЙМАН АНОМАЛЬНЫЙ СИГНАЛ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT1_STEP13_MSG7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Разговаривать с Атласом
                                { "Russian", "Поговорите с Атласом" },
                            }
                        },
                        -- обрезается на "ДА/"
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NPC_CORE_ACT1_17E_LANG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- С момента последней диагностики прошел &lt;AUDIO&gt;UI_Destination_Reached&lt;&gt;&lt;TECHNOLOGY&gt;1 946 218 921 221&lt;&gt; год. &lt;STELLAR&gt;64%&lt;&gt; миров функционируют с ожидаемыми показателями.&#xA;&lt;TECHNOLOGY&gt;2 611 384&lt;&gt; наблюдения ожидают анализа. Подпрограмма: &lt;SPECIAL&gt;СТРАЖ&lt;&gt;. Статус: ОШИБКА [&lt;TITLE&gt;значение отсутствует&lt;&gt;]&#xA;Подпрограмма: &lt;SPECIAL&gt;СТЕКЛО&lt;&gt;. Статус: &lt;AUDIO&gt;UI_Nanites_Received&lt;&gt;РАБОТАЕТ [&lt;TECHNOLOGY&gt;4.182 попытки прорыва&lt;&gt;]&#xA;Подпрограмма: &lt;STELLAR&gt;СТРАННИК&lt;&gt;. Статус: РАБОТАЕТ. &lt;TECHNOLOGY&gt;458&lt;&gt; предупреждений о критических ошибках. Структурная целостность Внешнего разума нарушена. Требуется немедленный ремонт.&#xA;Запустить личностный интерфейс? &lt;TRADEABLE&gt;ДА&lt;&gt;/&lt;FUEL&gt;НЕТ&lt;&gt;
                                -- It has been &lt;AUDIO&gt;UI_Destination_Reached&lt;&gt;&lt;TECHNOLOGY&gt;1,946,218,921,221&lt;&gt; years since last diagnostic. &lt;STELLAR&gt;64%&lt;&gt; of worlds operating within expected parameters.&#xA;&lt;TECHNOLOGY&gt;2,611,384&lt;&gt; actionable observations awaiting analysis. Sub–routine: &lt;SPECIAL&gt;SENTINEL&lt;&gt;. Status: ERROR [&lt;TITLE&gt;null value&lt;&gt;]&#xA;Subroutine: &lt;SPECIAL&gt;GLASS&lt;&gt;. Status: &lt;AUDIO&gt;UI_Nanites_Received&lt;&gt;OPERATIONAL [&lt;TECHNOLOGY&gt;4,182 breach attempts&lt;&gt;]&#xA;Subroutine: &lt;STELLAR&gt;TRAVELLER&lt;&gt;. Status: OPERATIONAL. &lt;TECHNOLOGY&gt;458&lt;&gt; critical error warnings. Exo–Mind structural integrity compromised. Immediate repairs required&#xA;Initiate personality interface? &lt;TRADEABLE&gt;Y&lt;&gt;/&lt;FUEL&gt;N&lt;&gt;
                                { "Russian", "Последняя диагностика проведена &lt;AUDIO&gt;UI_Destination_Reached&lt;&gt;&lt;TECHNOLOGY&gt;1.946.218.921.221&lt;&gt; год назад. &lt;STELLAR&gt;64%&lt;&gt; миров функционируют с ожидаемыми показателями.&#xA;&lt;TECHNOLOGY&gt;2.611.384&lt;&gt; наблюдения ожидают анализа. Программа: &lt;SPECIAL&gt;СТРАЖ&lt;&gt;. Статус: ОШИБКА [&lt;TITLE&gt;нет значения&lt;&gt;]&#xA;Программа: &lt;SPECIAL&gt;СТЕКЛО&lt;&gt;. Статус: &lt;AUDIO&gt;UI_Nanites_Received&lt;&gt;РАБОТАЕТ [&lt;TECHNOLOGY&gt;4.182 попытки взлома&lt;&gt;]&#xA;Программа: &lt;STELLAR&gt;СТРАННИК&lt;&gt;. Статус: РАБОТАЕТ. &lt;TECHNOLOGY&gt;458&lt;&gt; предупреждений о критических ошибках. Структурная целостность Экзо-разума нарушена. Требуется немедленный ремонт.&#xA;Запустить личностный интерфейс? &lt;TRADEABLE&gt;ДА&lt;&gt;/&lt;FUEL&gt;НЕТ&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT2_STEP1_HUD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Начат самостоятельный ремонт
                                -- Self-Guided Repair Initialised
                                { "Russian", "ИНИЦИАЛИЗИРОВАН САМОСТОЯТЕЛЬНЫЙ РЕМОНТ" },
                            }
                        },
                        --#endregion

                        --#endregion

                        --#region UI_CORE_ACT2

                        --#region UI_CORE_ACT2_STEP1_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT2_STEP1_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите свой звездолет и поднимитесь на борт.
                                { "Russian", "Найдите свой звездолёт и поднимитесь на борт" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT2_STEP1_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Пойман аномальный сигнал&lt;&gt;&#xA;Нажмите &lt;IMG&gt;QUICK_MENU&lt;&gt;, чтобы ответить.
                                { "Russian", "&lt;SPECIAL&gt;Пойман аномальный сигнал&lt;&gt;&#xA;Ответьте по коммуникатору с помощью &lt;IMG&gt;QUICK_MENU&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region UI_CORE_ACT2_STEP2_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT2_STEP2_MSG1A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;FUEL&gt;Критическое повреждение&lt;&gt; звездолета. Рекомендуется провести ремонт.&#xA;Таинственный &lt;SPECIAL&gt;отраженный сигнал&lt;&gt; занесен в навигационную систему.
                                -- Starship is &lt;FUEL&gt;critically damaged&lt;&gt;. Repairs advised&#xA;Mysterious &lt;SPECIAL&gt;signal echo&lt;&gt; logged to navigation systems
                                { "Russian", "Звездолёт &lt;FUEL&gt;сильно поврежден&lt;&gt; — рекомендуется ремонт&#xA;Таинственный &lt;SPECIAL&gt;эхосигнал&lt;&gt; добавлен в навигационную систему" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT2_STEP2_MSG1B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Звездолет принял таинственный &lt;SPECIAL&gt;отраженный сигнал&lt;&gt;.&#xA;Найдите источник таинственного отраженного сигнала.
                                -- Starship received mysterious &lt;SPECIAL&gt;signal echo&lt;&gt;&#xA;Locate the source of the mysterious distress signal
                                { "Russian", "Звездолёт поймал таинственный &lt;SPECIAL&gt;эхосигнал&lt;&gt;&#xA;Найдите источник таинственного сигнала бедствия" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT2_STEP2_MSG1_ALT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Судя по всему, сигнал исходит из-под земли.&#xA;Найдите пещеру и используйте &lt;IMG&gt;SCAN&lt;&gt;, чтобы отыскать источник сигнала.
                                -- The distress signal appears to be underground&#xA;Find a cave and use &lt;IMG&gt;SCAN&lt;&gt; to track the signal
                                { "Russian", "Кажется, сигнал бедствия исходит из-под земли&#xA;Найдите пещеру и используйте сканер (&lt;IMG&gt;SCAN&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT2_STEP2_MSG1_ALT2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Источник сигнала не установлен.&#xA;Продолжайте искать и сканировать &lt;IMG&gt;SCAN&lt;&gt;.
                                { "Russian", "Источник сигнала не установлен&#xA;Продолжайте поиски и сканирование (&lt;IMG&gt;SCAN&lt;&gt;)" },
                            }
                        },
                        --#endregion

                        --#region UI_CORE_ACT2_STEP3_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT2_STEP3_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Расскажите Аполлону о &lt;SPECIAL&gt;портале&lt;&gt; и &lt;STELLAR&gt;Артемиде&lt;&gt;.&#xA;Используйте &lt;IMG&gt;SCAN&lt;&gt;, чтобы начать сканирование в поисках голо-терминала.
                                { "Russian", "Расскажите Аполлону о &lt;SPECIAL&gt;портале&lt;&gt; и &lt;STELLAR&gt;Артемиде&lt;&gt;&#xA;Найдите голо-терминал с помощью сканера (&lt;IMG&gt;SCAN&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT2_STEP3_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Расскажите Аполлону о &lt;SPECIAL&gt;портале&lt;&gt; и &lt;STELLAR&gt;Артемиде&lt;&gt;.&#xA;Используйте голо-терминал, чтобы связаться с Аполлоном.
                                { "Russian", "Расскажите Аполлону о &lt;SPECIAL&gt;портале&lt;&gt; и &lt;STELLAR&gt;Артемиде&lt;&gt;&#xA;Используйте голо-терминал, чтобы связаться с Аполлоном" },
                            }
                        },
                        --#endregion

                        --#region UI_CORE_ACT2_STEP4_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT2_STEP4_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Создайте для Артемиды &lt;TECHNOLOGY&gt;дугу сознания&lt;&gt;: %CURRENT%/%AMOUNT%.
                                { "Russian", "Создайте для Артемиды &lt;TECHNOLOGY&gt;ковчег сознания&lt;&gt;: %CURRENT%/%AMOUNT%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT2_STEP4_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Доставьте &lt;TECHNOLOGY&gt;дугу сознания&lt;&gt; Артемиде.
                                -- Bring the &lt;TECHNOLOGY&gt;Mind Ark&lt;&gt; to Artemis
                                { "Russian", "Принесите &lt;TECHNOLOGY&gt;ковчег сознания&lt;&gt; Артемиде" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT2_STEP4_MSG2A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Доставьте &lt;TECHNOLOGY&gt;дугу сознания&lt;&gt; Артемиде.&#xA;Вернитесь к &lt;TECHNOLOGY&gt;голо-терминалу&lt;&gt; и поговорите с Артемидой.
                                { "Russian", "Принесите &lt;TECHNOLOGY&gt;ковчег сознания&lt;&gt; Артемиде&#xA;Вернитесь к &lt;TECHNOLOGY&gt;голо-терминалу&lt;&gt; и поговорите с Артемидой" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT2_STEP4_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Создайте дугу сознания, чтобы спасти Артемиду&#xA;Чтобы создавать улучшенные компоненты, на базе потребуется &lt;TECHNOLOGY&gt;ученый&lt;&gt; &lt;TECHNOLOGY&gt;Космический телепорт&lt;&gt; поможет быстро вернуться на базу.
                                -- Build a Mind Ark to rescue Artemis&#xA;Advanced components require a base &lt;TECHNOLOGY&gt;Scientist&lt;&gt;&#xA;Use the &lt;TECHNOLOGY&gt;Space Station Teleport&lt;&gt; to quickly return to your base.
                                { "Russian", "Создайте ковчег сознания, чтобы спасти Артемиду&#xA;&lt;TECHNOLOGY&gt;Ученый&lt;&gt; на базе поможет в создании продвинутых компонентов&#xA;Используйте &lt;TECHNOLOGY&gt;телепорт&lt;&gt; на космической станции, чтобы быстро вернуться на базу" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT2_STEP4_MSG5A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Доставьте &lt;TECHNOLOGY&gt;дугу сознания&lt;&gt; Артемиде.&#xA;Используйте &lt;COMMODITY&gt;телепорт станции&lt;&gt;, чтобы вернуться к Артемиде.
                                -- Bring the &lt;TECHNOLOGY&gt;Mind Ark&lt;&gt; to Artemis&#xA;Use the &lt;COMMODITY&gt;Station Teleport&lt;&gt; to return to Artemis
                                { "Russian", "Принесите &lt;TECHNOLOGY&gt;ковчег сознания&lt;&gt; Артемиде&#xA;Используйте &lt;COMMODITY&gt;телепорт&lt;&gt;, чтобы вернуться к Артемиде" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT2_STEP4_MSG5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Доставьте &lt;TECHNOLOGY&gt;дугу сознания&lt;&gt; Артемиде.&#xA;Чтобы найти Артемиду, откройте галактическую карту в космосе (&lt;IMG&gt;QUICK_MENU&lt;&gt;).&#xA;Текущая система &lt;FUEL&gt;не населена&lt;&gt;&lt;IMG&gt;SLASH&lt;&gt; Нет доступных телепортов космических станций.
                                -- Bring the &lt;TECHNOLOGY&gt;Mind Ark&lt;&gt; to Artemis&#xA;In space, consult the Galaxy Map (&lt;IMG&gt;QUICK_MENU&lt;&gt;) to locate Artemis&#xA;Current system is &lt;FUEL&gt;unpopulated&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt; No Space Station teleport available
                                { "Russian", "Принесите &lt;TECHNOLOGY&gt;ковчег сознания&lt;&gt; Артемиде&#xA;Находясь в космосе, откройте галактическую карту (&lt;IMG&gt;QUICK_MENU&lt;&gt;), чтобы найти Артемиду&#xA;Текущая система &lt;FUEL&gt;не населена&lt;&gt;&lt;IMG&gt;SLASH&lt;&gt;Телепорт на космической станции не обнаружен" },
                            }
                        },
                        --#endregion

                        --#region UI_CORE_ACT2_STEP5_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT2_STEP5_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Доставьте &lt;STELLAR&gt;Артемиду&lt;&gt; к Нада.&#xA;Копия Артемиды хранится в &lt;TECHNOLOGY&gt;дуге сознания&lt;&gt;.&#xA;Отправьтесь в космос и вызовите &lt;SPECIAL&gt;Аномалию&lt;&gt;.
                                -- Bring &lt;STELLAR&gt;Artemis&lt;&gt; to Nada&#xA;A copy of Artemis has been stored in the &lt;TECHNOLOGY&gt;Mind Ark&lt;&gt;&#xA;Fly into space and summon the &lt;SPECIAL&gt;Anomaly&lt;&gt;
                                { "Russian", "Доставьте &lt;STELLAR&gt;Артемиду&lt;&gt; к Нада&#xA;Копия Артемиды хранится в &lt;TECHNOLOGY&gt;ковчеге сознания&lt;&gt;&#xA;Отправьтесь в космос и вызовите &lt;SPECIAL&gt;Аномалию&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT2_STEP5_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Доставьте &lt;STELLAR&gt;Артемиду&lt;&gt; к Нада.&#xA;Копия Артемиды хранится в &lt;TECHNOLOGY&gt;дуге сознания&lt;&gt;.&#xA;Вызовите &lt;SPECIAL&gt;Аномалию&lt;&gt; через быстрое меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                { "Russian", "Доставьте &lt;STELLAR&gt;Артемиду&lt;&gt; к Нада&#xA;Копия Артемиды хранится в &lt;TECHNOLOGY&gt;ковчеге сознания&lt;&gt;&#xA;Вызовите &lt;SPECIAL&gt;Аномалию&lt;&gt; из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT2_STEP5_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Доставьте &lt;STELLAR&gt;Артемиду&lt;&gt; к Нада.&#xA;Копия Артемиды хранится в &lt;TECHNOLOGY&gt;дуге сознания&lt;&gt;.
                                { "Russian", "Доставьте &lt;STELLAR&gt;Артемиду&lt;&gt; к Нада&#xA;Копия Артемиды хранится в &lt;TECHNOLOGY&gt;ковчеге сознания&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT2_STEP5_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Решите судьбу Артемиды.&#xA;Поговорите с Поло, когда будете готовы.
                                { "Russian", "Решите судьбу Артемиды&#xA;Поговорите с Поло, когда будете готовы" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT2_STEP5_MSG4A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Решите судьбу Артемиды на личном терминале Нада.
                                -- Decide Artemis' fate at Nada's private terminal
                                { "Russian", "Решите судьбу Артемиды на личном терминале Нада" },
                            }
                        },
                        --#endregion

                        --#region UI_CORE_ACT2_STEP6_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT2_STEP6_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Расскажите Аполлону о судьбе Артемиды.&#xA;Возвращайтесь в космос и свяжитесь с ним.
                                { "Russian", "Расскажите Аполлону о судьбе Артемиды&#xA;Возвращайтесь в космос и свяжитесь с ним" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT2_STEP6_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Нажмите &lt;IMG&gt;QUICK_MENU&lt;&gt;, чтобы ответить.&#xA;Расскажите Аполлону о судьбе Артемиды.
                                { "Russian", "Ответьте по коммуникатору с помощью &lt;IMG&gt;QUICK_MENU&lt;&gt;&#xA;Расскажите Аполлону о судьбе Артемиды" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT2_STEP6_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Используйте &lt;SPECIAL&gt;монолит&lt;&gt;, чтобы найти портал для Аполлона.&#xA;Используйте &lt;IMG&gt;SCAN&lt;&gt;, чтобы найти &lt;SPECIAL&gt;силовые линии портала&lt;&gt;.
                                -- Use a &lt;SPECIAL&gt;Monolith&lt;&gt; to locate a Portal for Apollo&#xA;Use &lt;IMG&gt;SCAN&lt;&gt; to search for &lt;SPECIAL&gt;portal leylines&lt;&gt;
                                { "Russian", "Используйте &lt;SPECIAL&gt;монолит&lt;&gt;, чтобы найти портал для Аполлона&#xA;Найдите &lt;SPECIAL&gt;силовые линии портала&lt;&gt; с помощью &lt;IMG&gt;SCAN&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region UI_CORE_ACT2_STEP7_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT2_STEP7_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите портал для Аполлона.&#xA;Активируйте силовую линию портала через &lt;SPECIAL&gt;монолит&lt;&gt;.
                                { "Russian", "Найдите портал для Аполлона&#xA;Активируйте силовую линию портала с помощью &lt;SPECIAL&gt;монолита&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT2_STEP7_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;SLASH&lt;&gt;&lt;SPECIAL&gt;Силовая линия портала активирована&lt;&gt;&lt;IMG&gt;SLASH&lt;&gt;.&#xA;Найдите портал для Аполлона.
                                -- &lt;IMG&gt;SLASH&lt;&gt; &lt;SPECIAL&gt;Portal leyline activated&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt;&#xA;Locate the Portal for Apollo
                                { "Russian", "Силовая линия портала активирована&#xA;Найдите портал для Аполлона" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT2_STEP7_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Зарядите портал.&#xA;Активируйте портал, чтобы узнать его &lt;SPECIAL&gt;знаки&lt;&gt; для Аполлона.
                                { "Russian", "Зарядите портал&#xA;Активируйте портал, чтобы узнать его &lt;SPECIAL&gt;знаки&lt;&gt; для Аполлона" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT2_STEP7_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Выучите &lt;SPECIAL&gt;последовательность знаков&lt;&gt;.&#xA;Знаки порталов позволяют Странникам установить связь с планетой прибытия.
                                { "Russian", "Выучите &lt;SPECIAL&gt;последовательность знаков&lt;&gt;&#xA;Знаки порталов позволяют Странникам установить связь с планетой прибытия" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT2_STEP7_MSG5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Передайте &lt;SPECIAL&gt;знаки портала&lt;&gt;&lt;STELLAR&gt;Аполлону&lt;&gt; на голо-терминале.&#xA;Используйте &lt;IMG&gt;SCAN&lt;&gt;, чтобы начать сканирование в поисках голо-терминала.
                                -- Relay the &lt;SPECIAL&gt;Portal Glyphs&lt;&gt; to &lt;STELLAR&gt;Apollo&lt;&gt; at a Holo-Terminus&#xA;Use &lt;IMG&gt;SCAN&lt;&gt; to Scan for a Holo-Terminus
                                { "Russian", "Передайте &lt;SPECIAL&gt;знаки портала&lt;&gt; &lt;STELLAR&gt;Аполлону&lt;&gt; на голо-терминале&#xA;Найдите голо-терминал с помощью сканера (&lt;IMG&gt;SCAN&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT2_STEP7_MSG6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Доберитесь до голо-терминала.&#xA;Передайте &lt;SPECIAL&gt;знаки портала&lt;&gt; &lt;STELLAR&gt;Аполлону&lt;&gt;.
                                { "Russian", "Доберитесь до голо-терминала&#xA;Передайте &lt;SPECIAL&gt;знаки портала&lt;&gt; &lt;STELLAR&gt;Аполлону&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT2_STEP7_MSG7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Передайте &lt;SPECIAL&gt;знаки портала&lt;&gt; &lt;STELLAR&gt;Аполлону&lt;&gt;.
                                { "Russian", "Передайте &lt;SPECIAL&gt;знаки портала&lt;&gt; &lt;STELLAR&gt;Аполлону&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region UI_CORE_ACT2_STEP8_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT2_STEP8_MSGA" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Свяжитесь с Аполлоном через голо-терминал.&#xA;Передайте комбинацию знаков для доступа к этой планете.&#xA;Используйте &lt;IMG&gt;SCAN&lt;&gt;, чтобы найти голо-терминал.
                                -- Contact Apollo at a Holo-Terminus&#xA;Broadcast the glyph address for this planet&#xA;Use &lt;IMG&gt;SCAN&lt;&gt; to locate a Holo-Terminus
                                { "Russian", "Свяжитесь с Аполлоном через голо-терминал&#xA;Передайте последовательность знаков этой планеты&#xA;Найдите голо-терминал с помощью &lt;IMG&gt;SCAN&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT2_STEP8_MSGB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Свяжитесь с Аполлоном через голо-терминал.&#xA;Передайте адрес в глифах для этой планеты.
                                -- Contact Apollo at a Holo-Terminus&#xA;Broadcast the glyph address for this planet
                                { "Russian", "Свяжитесь с Аполлоном через голо-терминал&#xA;Передайте последовательность знаков этой планеты" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT2_STEP8_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Посетите &lt;TECHNOLOGY&gt;обсерваторию&lt;&gt;, которую выбрал -пусто-.
                                { "Russian", "Посетите &lt;TECHNOLOGY&gt;обсерваторию&lt;&gt;, которую выбрал -пусто-" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT2_STEP8_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите обломки &lt;STELLAR&gt;разбившегося грузового судна&lt;&gt; Нада.&#xA;Координаты изначально записаны геком-специалистом Поло.
                                -- Find the wreck of Nada's &lt;STELLAR&gt;crashed freighter&lt;&gt;&#xA;Coordinates originally logged by Gek Specialist Polo
                                { "Russian", "Найдите обломки &lt;STELLAR&gt;разбившегося грузового судна&lt;&gt; Нада&#xA;Координаты изначально записаны геком-специалистом Поло" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT2_STEP8_MSG2A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Прочитайте данные черного ящика с &lt;STELLAR&gt;разбившегося грузового судна&lt;&gt;.
                                -- Read the log of the &lt;STELLAR&gt;crashed freighter&lt;&gt;
                                { "Russian", "Прочитайте журнал &lt;STELLAR&gt;разбившегося грузового судна&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT2_STEP8_MSG2A1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Прочитайте данные черного ящика с &lt;STELLAR&gt;разбившегося грузового судна&lt;&gt;: 0 / &lt;STELLAR&gt;3&lt;&gt;
                                { "Russian", "Прочитайте журнал &lt;STELLAR&gt;разбившегося грузового судна&lt;&gt;: 0/&lt;STELLAR&gt;3&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT2_STEP8_MSG2A2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Прочитайте данные черного ящика с &lt;STELLAR&gt;разбившегося грузового судна&lt;&gt;: 1 / &lt;STELLAR&gt;3&lt;&gt;
                                { "Russian", "Прочитайте журнал &lt;STELLAR&gt;разбившегося грузового судна&lt;&gt;: 1/&lt;STELLAR&gt;3&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT2_STEP8_MSG2A3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Прочитайте данные черного ящика с &lt;STELLAR&gt;разбившегося грузового судна&lt;&gt;: 2 / &lt;STELLAR&gt;3&lt;&gt;
                                { "Russian", "Прочитайте журнал &lt;STELLAR&gt;разбившегося грузового судна&lt;&gt;: 2/&lt;STELLAR&gt;3&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT2_STEP8_MSG_RET" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Требуется &lt;STELLAR&gt;ключ шифрования журнала&lt;&gt;.&#xA;Вернитесь к обломкам грузового судна.&#xA;Найдите &lt;SPECIAL&gt;защищенные контейнеры&lt;&gt; на месте падения.
                                -- &lt;STELLAR&gt;Log Encryption Key&lt;&gt; required&#xA;Return to the freighter crash site&#xA;Search the crash site for &lt;SPECIAL&gt;Secure Containers&lt;&gt;
                                { "Russian", "Требуется &lt;STELLAR&gt;ключ шифрования журнала&lt;&gt;&#xA;Вернитесь к обломкам грузового судна&#xA;Найдите &lt;SPECIAL&gt;защищенные контейнеры&lt;&gt; на месте крушения" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT2_STEP8_MSG2B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Требуется &lt;STELLAR&gt;ключ шифрования журнала&lt;&gt;: 0 / 1&#xA;Найдите &lt;SPECIAL&gt;защищенные контейнеры&lt;&gt; на месте падения.&#xA;Используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; и &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt;, чтобы искать под землей.
                                { "Russian", "Требуется &lt;STELLAR&gt;ключ шифрования журнала&lt;&gt;: 0/1&#xA;Найдите &lt;SPECIAL&gt;защищенные контейнеры&lt;&gt; на месте крушения&#xA;Используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; и &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT2_STEP8_MSG3A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Передайте журнал грузового судна &lt;STELLAR&gt;-пусто-&lt;&gt;.&#xA;Или вызовите &lt;SPECIAL&gt;Космическую Аномалию&lt;&gt; и расскажите Нада об Артемиде.
                                { "Russian", "Передайте журнал грузового судна &lt;STELLAR&gt;-пусто-&lt;&gt;&#xA;Или вызовите &lt;SPECIAL&gt;Космическую Аномалию&lt;&gt; и расскажите Нада об Артемиде" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT2_STEP8_MSG3B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Покиньте Аномалию, когда будете готовы.&#xA;Передайте журнал грузового судна &lt;STELLAR&gt;-пусто-&lt;&gt;.
                                { "Russian", "Покиньте Аномалию, когда будете готовы&#xA;Передайте журнал грузового судна &lt;STELLAR&gt;-пусто-&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT2_STEP8_MSG3C" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Передайте журнал грузового судна &lt;STELLAR&gt;-пусто-&lt;&gt;.&#xA;Используйте &lt;IMG&gt;SCAN&lt;&gt;, чтобы найти голо-терминал.
                                { "Russian", "Передайте журнал грузового судна &lt;STELLAR&gt;-пусто-&lt;&gt;&#xA;Найдите голо-терминал с помощью &lt;IMG&gt;SCAN&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT2_STEP8_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Передайте журнал грузового судна &lt;STELLAR&gt;-пусто-&lt;&gt;.&#xA;Поговорите с &lt;STELLAR&gt;-пусто-&lt;&gt; по голо-терминалу.
                                { "Russian", "Передайте журнал грузового судна &lt;STELLAR&gt;-пусто-&lt;&gt;&#xA;Поговорите с &lt;STELLAR&gt;-пусто-&lt;&gt; по голо-терминалу" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT2_STEP8_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Получен сигнал: ?? &lt;STELLAR&gt;АРТЕМИДА&lt;&gt; ??&#xA;Чтобы ответить, нажмите &lt;IMG&gt;QUICK_MENU&lt;&gt;.
                                { "Russian", "Получен сигнал: ?? &lt;STELLAR&gt;АРТЕМИДА&lt;&gt; ??&#xA;Ответьте по коммуникатору с помощью &lt;IMG&gt;QUICK_MENU&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region UI_CORE_ACT2_STEP10_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT2_STEP10_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поговорите с &lt;TRANS_WAR&gt;вай'кинским&lt;&gt; картографом.&#xA;Картографов можно найти на борту &lt;COMMODITY&gt;космических станций&lt;&gt;.
                                { "Russian", "Поговорите с &lt;TRANS_WAR&gt;вай'кинским&lt;&gt; картографом&#xA;Картографов можно найти на &lt;COMMODITY&gt;космических станциях&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT2_STEP10_MSG1A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поговорите с вай'кинским картографом.&#xA;Найдите &lt;TRANS_WAR&gt;вай'кинскую систему&lt;&gt; на галактической карте.
                                { "Russian", "Поговорите с вай'кинским картографом&#xA;Найдите &lt;TRANS_WAR&gt;вай'кинскую систему&lt;&gt; на галактической карте" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT2_STEP10_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Выполнено контрактов для гильдии наемников: %CURRENT%/%AMOUNT%&#xA;Узнать о доске заданий больше можно в Путеводителе (&lt;IMG&gt;OPTIONS&lt;&gt;).
                                { "Russian", "Выполните задания гильдии наемников: %CURRENT%/%AMOUNT%&#xA;Узнайте больше о заданиях в Путеводителе (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT2_STEP10_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добудьте &lt;TRANS_WAR&gt;вай'кинский артефакт&lt;&gt; в древних руинах.&#xA;Картограф отметил примерные координаты.&#xA;Добудьте артефакт, чтобы доказать свою честь.
                                { "Russian", "Добудьте &lt;TRANS_WAR&gt;вай'кинский артефакт&lt;&gt; в древних руинах&#xA;Картограф отметил примерные координаты&#xA;Добудьте артефакт, чтобы доказать свою честь" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT2_STEP10_MSG3A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добудьте &lt;TRANS_WAR&gt;вай'кинский артефакт&lt;&gt; в древних руинах.&#xA;Вернитесь с артефактом к картографу, чтобы доказать свою честь.
                                { "Russian", "Добудьте &lt;TRANS_WAR&gt;вай'кинский артефакт&lt;&gt; в древних руинах&#xA;Вернитесь с артефактом к картографу, чтобы доказать свою честь" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT2_STEP10_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Получить: %ITEM% — %CURRENT%/%AMOUNT%&#xA;Используйте %ITEM%, чтобы провести жертвоприношение перед вай'кинским алтарем.
                                -- Collect %ITEM%: %CURRENT%/%AMOUNT%&#xA;Use the %ITEM% to perform a sacrifice upon the Vy'keen altar
                                { "Russian", "Добудьте: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;Используйте %ITEM% в качестве жертвоприношения на вай'кинском алтаре" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT2_STEP10_MSG4_ALT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Изучите &lt;FUEL&gt;вай'кинские слова&lt;&gt;, чтобы общаться с руинами: %CURRENT% / %AMOUNT%&#xA;Учите слова, разговаривая с формами жизни на космической станции.
                                -- Learn &lt;FUEL&gt;Vy'keen Words&lt;&gt; to commune with the ruin: %CURRENT% / %AMOUNT%&#xA;Learn words by speaking with lifeforms on the Space Station
                                { "Russian", "Выучите &lt;FUEL&gt;вай'кинские слова&lt;&gt; для общения с руинами: %CURRENT%/%AMOUNT%&#xA;Изучайте слова, разговаривая с формами жизни на космической станции" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT2_STEP10_MSG4_ALTB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вернитесь в древние руины и заберите &lt;TRANS_WAR&gt;вай'кинский артефакт&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Принесите артефакт картографу, чтобы доказать свою честь.
                                -- Return to the ancient ruin and retrieve the &lt;TRANS_WAR&gt;Vy'keen artifact&lt;&gt;: %CURRENT% / %AMOUNT%&#xA;Bring the artifact to the Cartographer to prove your honour
                                { "Russian", "Вернитесь в древние руины и заберите &lt;TRANS_WAR&gt;вай'кинский артефакт&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Принесите артефакт картографу, чтобы доказать свою честь" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT2_STEP10_MSG5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Верните &lt;TRANS_WAR&gt;вай'кинский артефакт&lt;&gt; картографу.
                                { "Russian", "Верните &lt;TRANS_WAR&gt;вай'кинский артефакт&lt;&gt; картографу" },
                            }
                        },
                        --#endregion

                        --#region UI_CORE_ACT2_STEP11_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT2_STEP11_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поговорите с &lt;TRANS_EXP&gt;корваксом-картографом&lt;&gt;.&#xA;Картографов можно найти на борту &lt;COMMODITY&gt;космических станций&lt;&gt;.
                                { "Russian", "Поговорите с &lt;TRANS_EXP&gt;корваксом-картографом&lt;&gt;&#xA;Картографов можно найти на &lt;COMMODITY&gt;космических станциях&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT2_STEP11_MSG1A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поговорите с корваксом-картографом.&#xA;Найдите &lt;TRANS_EXP&gt;корвакскую систему&lt;&gt; на галактической карте.
                                { "Russian", "Поговорите с корваксом-картографом&#xA;Найдите &lt;TRANS_EXP&gt;корвакскую систему&lt;&gt; на галактической карте" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT2_STEP11_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Выполнено контрактов для гильдии исследователей: %CURRENT%/%AMOUNT%&#xA;Узнать о доске заданий больше можно в Путеводителе (&lt;IMG&gt;OPTIONS&lt;&gt;).
                                { "Russian", "Выполните задания гильдии исследователей: %CURRENT%/%AMOUNT%&#xA;Узнайте больше о заданиях в Путеводителе (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT2_STEP11_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добудьте &lt;TRANS_EXP&gt;несуществующие данные&lt;&gt; в &lt;SPECIAL&gt;аномальном строении&lt;&gt;.&#xA;Картограф отметил примерные координаты.&#xA;Верните данные, чтобы заслужить доверие корвакса.
                                -- Retrieve &lt;TRANS_EXP&gt;non-existent data&lt;&gt; from an &lt;SPECIAL&gt;anomalous structure&lt;&gt;&#xA;The Cartographer has marked its approximate location&#xA;Return the data to earn the trust of the Korvax
                                { "Russian", "Добудьте &lt;TRANS_EXP&gt;несуществующие данные&lt;&gt;&#xA;в &lt;SPECIAL&gt;аномальном строении&lt;&gt;&#xA;Картограф отметил примерные координаты&#xA;Верните данные, чтобы заслужить доверие корвакса" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT2_STEP11_MSG3B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добудьте &lt;TRANS_EXP&gt;несуществующие данные&lt;&gt; в &lt;SPECIAL&gt;аномальном строении&lt;&gt;.&#xA;Принесите данные картографу, чтобы заслужить его доверие.
                                { "Russian", "Добудьте &lt;TRANS_EXP&gt;несуществующие данные&lt;&gt;&#xA;в &lt;SPECIAL&gt;аномальном строении&lt;&gt;&#xA;Принесите данные картографу, чтобы заслужить его доверие" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT2_STEP11_MSG3A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добудьте &lt;TRANS_EXP&gt;несуществующие данные&lt;&gt; в &lt;SPECIAL&gt;аномальном строении&lt;&gt;.&#xA;Найдите системы с &lt;TECHNOLOGY&gt;водой&lt;&gt; на галактической карте.
                                { "Russian", "Добудьте &lt;TRANS_EXP&gt;несуществующие данные&lt;&gt;&#xA;в &lt;SPECIAL&gt;аномальном строении&lt;&gt;&#xA;Найдите системы с &lt;TECHNOLOGY&gt;водой&lt;&gt; на галактической карте" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT2_STEP11_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Верните &lt;TRANS_EXP&gt;Куб Дивергенции&lt;&gt; картографу.
                                { "Russian", "Верните &lt;TRANS_EXP&gt;Куб Дивергенции&lt;&gt; картографу" },
                            }
                        },
                        --#endregion

                        --#region UI_CORE_ACT2_STEP12_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT2_STEP12_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поговорите с &lt;TRANS_TRA&gt;геком-картографом&lt;&gt;.
                                { "Russian", "Поговорите с &lt;TRANS_TRA&gt;геком-картографом&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT2_STEP12_MSG1A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поговорите с геком-картографом.&#xA;Найдите &lt;TRANS_TRA&gt;гекскую систему&lt;&gt; на галактической карте.
                                { "Russian", "Поговорите с геком-картографом&#xA;Найдите &lt;TRANS_TRA&gt;гекскую систему&lt;&gt; на галактической карте" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT2_STEP12_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Выполняйте задания для гека: %CURRENT%/%AMOUNT%&#xA;Узнать о доске заданий больше можно в Путеводителе (&lt;IMG&gt;OPTIONS&lt;&gt;).
                                { "Russian", "Выполните задания для геков: %CURRENT%/%AMOUNT%&#xA;Узнайте больше о заданиях в Путеводителе (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT2_STEP12_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вернитесь к геку-картографу.
                                { "Russian", "Вернитесь к геку-картографу" },
                            }
                        },
                        --#endregion

                        --#region UI_CORE_ACT2_STEP13_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT2_STEP13_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поговорите с Аполлоном.
                                { "Russian", "Поговорите с Аполлоном" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT2_STEP13_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поговорите с &lt;TECHNOLOGY&gt;-пусто-&lt;&gt; о тайнах прошлого.&#xA;Вернитесь в космос, чтобы найти &lt;TECHNOLOGY&gt;голо-терминал&lt;&gt;.
                                { "Russian", "Поговорите с &lt;TECHNOLOGY&gt;-пусто-&lt;&gt; о тайнах прошлого&#xA;Вернитесь в космос, чтобы найти &lt;TECHNOLOGY&gt;голо-терминал&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT2_STEP13_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поговорите с &lt;TECHNOLOGY&gt;-пусто-&lt;&gt; о тайнах прошлого.&#xA;Используйте сканер (&lt;IMG&gt;SCAN&lt;&gt;), чтобы найти &lt;TECHNOLOGY&gt;голо-терминал&lt;&gt;.
                                { "Russian", "Поговорите с &lt;TECHNOLOGY&gt;-пусто-&lt;&gt; о тайнах прошлого&#xA;Найдите голо-терминал с помощью сканера (&lt;IMG&gt;SCAN&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT2_STEP13_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поговорите с &lt;TECHNOLOGY&gt;-пусто-&lt;&gt; о тайнах прошлого.&#xA;Найдите и включите &lt;TECHNOLOGY&gt;голо-терминал&lt;&gt;.
                                { "Russian", "Поговорите с &lt;TECHNOLOGY&gt;-пусто-&lt;&gt; о тайнах прошлого&#xA;Найдите и включите &lt;TECHNOLOGY&gt;голо-терминал&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT2_STEP13_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поговорите с &lt;TECHNOLOGY&gt;-пусто-&lt;&gt; о тайнах прошлого.
                                { "Russian", "Поговорите с &lt;TECHNOLOGY&gt;-пусто-&lt;&gt; о тайнах прошлого" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT2_STEP13_MSG5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поговорите с &lt;STELLAR&gt;Аполлоном&lt;&gt; о том, что вы узнали.
                                { "Russian", "Поговорите с &lt;STELLAR&gt;Аполлоном&lt;&gt; о том, что вы узнали" },
                            }
                        },
                        --#endregion

                        --#region UI_CORE_ACT2_STEP14_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT2_STEP14_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружено эхо силовых линий портала...&#xA;&lt;IMG&gt;SLASH&lt;&gt;&lt;FUEL&gt;НАЙДИ АТЛАСА&lt;&gt;&lt;IMG&gt;SLASH&lt;&gt;
                                -- Portal Leyline Echo Detected...&#xA;&lt;IMG&gt;SLASH&lt;&gt; &lt;FUEL&gt;SEEK THE ATLAS&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt;
                                { "Russian", "Обнаружено эхо силовой линии портала...&#xA;&lt;IMG&gt;SLASH&lt;&gt; &lt;FUEL&gt;НАЙДИ АТЛАСА&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT2_STEP14_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Голо-терминал поймал сигнал &lt;STELLAR&gt;аварийного маяка&lt;&gt;.&#xA;Найдите источник сигнала.
                                -- A &lt;STELLAR&gt;Distress Beacon&lt;&gt; signal was heard at the Holo-Terminus&#xA;Find the source of the signal
                                { "Russian", "Голо-терминал поймал сигнал &lt;STELLAR&gt;аварийного маяка&lt;&gt;&#xA;Найдите источник сигнала" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT2_STEP14_MSG1A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Голо-терминал поймал сигнал &lt;STELLAR&gt;аварийного маяка&lt;&gt;.&#xA;Откройте маяк, чтобы получить доступ к передаче данных.
                                -- A &lt;STELLAR&gt;Distress Beacon&lt;&gt; signal was heard at the Holo-Terminus&#xA;Open the beacon to access the broadcast
                                { "Russian", "Голо-терминал поймал сигнал &lt;STELLAR&gt;аварийного маяка&lt;&gt;&#xA;Откройте маяк, чтобы подключиться к передаче" },
                            }
                        },
                        --#endregion

                        --#region UI_CORE_ACT2_STEP15_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT2_STEP15_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поговорите с Атласом.
                                { "Russian", "Поговорите с Атласом" },
                            }
                        },
                        --#endregion

                        --#region UI_CORE_ACT2_MINDARC_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT2_MINDARC_MSG0" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поговорите с &lt;STELLAR&gt;Артемидой&lt;&gt;.
                                { "Russian", "Поговорите с &lt;STELLAR&gt;Артемидой&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT2_MINDARC_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Купить: %ITEM% — %CURRENT%/%AMOUNT%&#xA;Совершите покупку в &lt;STELLAR&gt;торговом терминале&lt;&gt; на &lt;STELLAR&gt;космической станции&lt;&gt;.
                                { "Russian", "Купите: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;Найдите &lt;STELLAR&gt;торговый терминал&lt;&gt; на &lt;STELLAR&gt;космической станции&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT2_MINDARC_MSG2A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Для переработки &lt;TECHNOLOGY&gt;стекла&lt;&gt; требуется &lt;STELLAR&gt;силикатный порошок&lt;&gt;.&#xA;Приземлитесь на планету, чтобы начать добывать силикатный порошок.
                                { "Russian", "Для изготовления &lt;TECHNOLOGY&gt;стекла&lt;&gt; требуется &lt;STELLAR&gt;силикатный порошок&lt;&gt;&#xA;Приземлитесь на планету, чтобы начать добывать силикатный порошок" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT2_MINDARC_MSG2B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Для переработки &lt;TECHNOLOGY&gt;стекла&lt;&gt; требуется &lt;STELLAR&gt;силикатный порошок&lt;&gt;.&#xA;Установите &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt;, чтобы добывать силикат.
                                { "Russian", "Для изготовления &lt;TECHNOLOGY&gt;стекла&lt;&gt; требуется &lt;STELLAR&gt;силикатный порошок&lt;&gt;&#xA;Установите &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt;, чтобы добывать силикат" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT2_MINDARC_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Для переработки &lt;TECHNOLOGY&gt;стекла&lt;&gt; требуется &lt;STELLAR&gt;силикатный порошок&lt;&gt;.&#xA;Активируйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt;, чтобы добывать силикат.&#xA;Переключайте режимы оружия, используя &lt;IMG&gt;CYCLEWEAPON&lt;&gt;
                                { "Russian", "Для изготовления &lt;TECHNOLOGY&gt;стекла&lt;&gt; требуется &lt;STELLAR&gt;силикатный порошок&lt;&gt;&#xA;Добывайте силикат, используя &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt;&#xA;Переключайте режимы оружия с помощью &lt;IMG&gt;CYCLEWEAPON&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT2_MINDARC_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добывайте ресурсы напрямую из земли, чтобы получить: %ITEM% — %CURRENT%/%AMOUNT%&#xA;Для переработки &lt;TECHNOLOGY&gt;стекла&lt;&gt; требуется &lt;STELLAR&gt;силикатный порошок&lt;&gt;.
                                -- Mine the earth directly to acquire %ITEM%: %CURRENT%/%AMOUNT%&#xA;&lt;STELLAR&gt;Silicate Powder&lt;&gt; required to refine &lt;TECHNOLOGY&gt;Glass&lt;&gt;
                                { "Russian", "Добудьте из земли: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;Для изготовления &lt;TECHNOLOGY&gt;стекла&lt;&gt; требуется &lt;STELLAR&gt;силикатный порошок&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT2_MINDARC_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Изготовьте &lt;TECHNOLOGY&gt;стекло&lt;&gt; из &lt;STELLAR&gt;силикатного порошка&lt;&gt;.&#xA;Вернитесь к &lt;TECHNOLOGY&gt;очистителю&lt;&gt; или запустите процесс из меню созидания (&lt;IMG&gt;BUILD_MENU&lt;&gt;).
                                { "Russian", "Изготовьте &lt;TECHNOLOGY&gt;стекло&lt;&gt; из &lt;STELLAR&gt;силикатного порошка&lt;&gt;&#xA;Вернитесь к &lt;TECHNOLOGY&gt;очистителю&lt;&gt; или разместите его&#xA;из меню строительства (&lt;IMG&gt;BUILD_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT2_MINDARC_MSG5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Изготовьте &lt;TECHNOLOGY&gt;стекло&lt;&gt;: %CURRENT% / %AMOUNT%&#xA;Поместите &lt;STELLAR&gt;силикатный порошок&lt;&gt; в очиститель.
                                { "Russian", "Изготовьте &lt;TECHNOLOGY&gt;стекло&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Поместите &lt;STELLAR&gt;силикатный порошок&lt;&gt; в очиститель" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT2_MINDARC_MSG6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Заберите из очистителя: %ITEM% — %CURRENT%/%AMOUNT%
                                { "Russian", "Заберите из очистителя %ITEM%: %CURRENT%/%AMOUNT%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT2_MINDARC_MSG7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Для обнаружения &lt;FUEL&gt;кадмия&lt;&gt; требуется &lt;TECHNOLOGY&gt;улучшить гипердвигатель&lt;&gt;.&#xA;Соберите &lt;TECHNOLOGY&gt;наниты&lt;&gt;, чтобы купить улучшение: %CURRENT%/%AMOUNT%&#xA;Подробнее узнать о нанитах можно в Путеводителе (&lt;IMG&gt;OPTIONS&lt;&gt;).
                                -- &lt;TECHNOLOGY&gt;Hyperdrive upgrade&lt;&gt; required to locate &lt;FUEL&gt;Cadmium&lt;&gt;&#xA;Collect &lt;TECHNOLOGY&gt;Nanites&lt;&gt; to purchase upgrade: %CURRENT%/%AMOUNT%&#xA;Access the Guide (&lt;IMG&gt;OPTIONS&lt;&gt;) to learn more about Nanites
                                { "Russian", "&lt;TECHNOLOGY&gt;Улучшите гипердвигатель&lt;&gt;, чтобы найти &lt;FUEL&gt;кадмий&lt;&gt;&#xA;Соберите &lt;TECHNOLOGY&gt;наниты&lt;&gt;, чтобы купить улучшение: %CURRENT%/%AMOUNT%&#xA;Узнайте больше о нанитах в Путеводителе (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT2_MINDARC_MSG8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Для обнаружения &lt;FUEL&gt;кадмия&lt;&gt; требуется &lt;TECHNOLOGY&gt;улучшить гипердвигатель&lt;&gt;.&#xA;Приобретайте улучшения звездолета на &lt;SPECIAL&gt;Космической Аномалии&lt;&gt;.&#xA;Находясь в космосе, вызовите Аномалию через быстрое меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                { "Russian", "&lt;TECHNOLOGY&gt;Улучшите гипердвигатель&lt;&gt;, чтобы найти &lt;FUEL&gt;кадмий&lt;&gt;&#xA;Купите улучшения для звездолёта на &lt;SPECIAL&gt;Космической Аномалии&lt;&gt;&#xA;Находясь в космосе, вызовите Аномалию&#xA;из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT2_MINDARC_MSG9" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Посетите &lt;STELLAR&gt;Гиперион&lt;&gt;, чтобы купить чертежи &lt;TECHNOLOGY&gt;кадмиевого привода&lt;&gt;.
                                -- Visit &lt;STELLAR&gt;Hyperion&lt;&gt; to purchase plans for a &lt;TECHNOLOGY&gt;Cadmium Drive&lt;&gt;
                                { "Russian", "Купите чертежи &lt;TECHNOLOGY&gt;кадмиевого привода&lt;&gt; у &lt;STELLAR&gt;Гипериона&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT2_MINDARC_MSG10" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Для обнаружения &lt;FUEL&gt;кадмия&lt;&gt; требуется &lt;TECHNOLOGY&gt;улучшить гипердвигатель&lt;&gt;.&#xA;Установите &lt;TECHNOLOGY&gt;кадмиевый привод&lt;&gt; на свой звездолет.
                                { "Russian", "&lt;TECHNOLOGY&gt;Улучшите гипердвигатель&lt;&gt;, чтобы найти &lt;FUEL&gt;кадмий&lt;&gt;&#xA;&#xA;Установите &lt;TECHNOLOGY&gt;кадмиевый привод&lt;&gt; на свой звездолёт" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT2_MINDARC_MSG11" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите системы с &lt;FUEL&gt;красной&lt;&gt; звездой на &lt;TECHNOLOGY&gt;галактической карте&lt;&gt;.&#xA;Находясь на звездолете, откройте галактическую карту (&lt;IMG&gt;QUICK_MENU&lt;&gt;).&#xA;Для варп-прыжка в &lt;FUEL&gt;красную&lt;&gt; систему необходим &lt;TECHNOLOGY&gt;кадмиевый привод&lt;&gt;.
                                { "Russian", "Найдите систему с &lt;FUEL&gt;красной&lt;&gt; звездой на &lt;TECHNOLOGY&gt;галактической карте&lt;&gt;&#xA;Находясь в космосе, откройте галактическую карту (&lt;IMG&gt;QUICK_MENU&lt;&gt;)&#xA;Для варп-прыжка в &lt;FUEL&gt;красную&lt;&gt; систему нужен &lt;TECHNOLOGY&gt;кадмиевый привод&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT2_MINDARC_MSG12" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Приземлитесь на планете с залежами &lt;FUEL&gt;кадмия&lt;&gt;.&#xA;Все стандартные планеты в &lt;FUEL&gt;красных&lt;&gt; системах обладают богатыми залежами кадмия.&#xA;Чтобы обнаруживать ресурсы, сканируйте планеты из космоса (&lt;IMG&gt;SCAN&lt;&gt;).
                                -- Land on a planet with available &lt;FUEL&gt;Cadmium&lt;&gt;&#xA;All standard planets in &lt;FUEL&gt;red&lt;&gt; systems have large Cadmium deposits&#xA;Scan planets from space with &lt;IMG&gt;SCAN&lt;&gt; to reveal resources
                                { "Russian", "Приземлитесь на планете с залежами &lt;FUEL&gt;кадмия&lt;&gt;&#xA;Богатые залежи кадмия есть на всех стандартных планетах в &lt;FUEL&gt;красных&lt;&gt; системах&#xA;Сканирование планет из космоса (&lt;IMG&gt;SCAN&lt;&gt;) поможет найти ресурсы" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT2_MINDARC_MSG13" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Получить: %ITEM% — %CURRENT%/%AMOUNT%&#xA;Найдите крупные залежи &lt;STELLAR&gt;кадмия&lt;&gt; с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;.&#xA;Добывайте ресурсы из крупных залежей с помощью &lt;TECHNOLOGY&gt;ландшафтного манипулятора&lt;&gt;.
                                -- Collect %ITEM%: %CURRENT%/%AMOUNT%&#xA;Locate large &lt;STELLAR&gt;Cadmium&lt;&gt; deposits with the &lt;TECHNOLOGY&gt;Analysis Visor&lt;&gt;&#xA;Mine large deposits with the &lt;TECHNOLOGY&gt;Terrain Manipulator&lt;&gt;
                                { "Russian", "Соберите: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;Найдите месторождения &lt;STELLAR&gt;кадмия&lt;&gt; с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;&#xA;Добывайте ресурсы из месторождений с помощью &lt;TECHNOLOGY&gt;ландшафтного манипулятора&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT2_MINDARC_MSG14" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Создайте &lt;TECHNOLOGY&gt;двигатель души&lt;&gt;: %CURRENT% / %AMOUNT%&#xA;Двигатель души является важнейшей частью &lt;TECHNOLOGY&gt;дуги сознания&lt;&gt;.
                                -- Construct the &lt;TECHNOLOGY&gt;Soul Engine&lt;&gt;: %CURRENT% / %AMOUNT%&#xA;The Soul Engine forms the heart of the &lt;TECHNOLOGY&gt;Mind Ark&lt;&gt;
                                { "Russian", "Создайте &lt;TECHNOLOGY&gt;двигатель души&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Двигатель души — это сердце &lt;TECHNOLOGY&gt;ковчега сознания&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT2_MINDARC_MSG15A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите урожай: %ITEM%%CURRENT%/%AMOUNT%&#xA;Соберите %ITEM% с &lt;STELLAR&gt;глубоководных панцирных устриц&lt;&gt;.&#xA;Используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; во время плавания, чтобы найти устриц.
                                -- Harvest %ITEM%: %CURRENT%/%AMOUNT%&#xA;Harvest %ITEM% from armoured &lt;STELLAR&gt;deep-water clams&lt;&gt;&#xA;Use the &lt;TECHNOLOGY&gt;Analysis Visor&lt;&gt; to find clams while swimming
                                { "Russian", "Соберите: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;Найдите &lt;STELLAR&gt;глубоководных панцирных устриц&lt;&gt;&#xA;с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT2_MINDARC_MSG15B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Собрать: %ITEM% — %CURRENT%/%AMOUNT%&#xA;Найдите системы с &lt;TECHNOLOGY&gt;водой&lt;&gt; на &lt;TECHNOLOGY&gt;галактической карте&lt;&gt;.&#xA;Находясь на звездолете, откройте галактическую карту (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                { "Russian", "Соберите: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;Найдите систему с &lt;TECHNOLOGY&gt;водой&lt;&gt; на &lt;TECHNOLOGY&gt;галактической карте&lt;&gt;&#xA;Находясь в космосе, откройте галактическую карту (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT2_MINDARC_MSG15C" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Собрать: %ITEM% — %CURRENT%/%AMOUNT%&#xA;В системе обнаружена &lt;TECHNOLOGY&gt;водная планета&lt;&gt;.&#xA;Океаны на поверхности планеты видны из космоса.
                                { "Russian", "Соберите: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;В системе обнаружена планета с &lt;TECHNOLOGY&gt;водой&lt;&gt;&#xA;Океаны на поверхности планеты видны из космоса" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT2_MINDARC_MSG15D" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Собрать: %ITEM% — %CURRENT%/%AMOUNT%&#xA;В системе обнаружена &lt;TECHNOLOGY&gt;водная планета&lt;&gt;.&#xA;Отправляйтесь в космос, чтобы найти водную планету.
                                { "Russian", "Соберите: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;В системе обнаружена планета с &lt;TECHNOLOGY&gt;водой&lt;&gt;&#xA;Отправляйтесь в космос и найдите эту планету" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT2_MINDARC_MSG16" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Создать: %ITEM% — %CURRENT%/%AMOUNT%&#xA;Чтобы получить компоненты &lt;TECHNOLOGY&gt;двигателя души&lt;&gt; требуется %ITEM%.
                                -- Craft %ITEM%: %CURRENT%/%AMOUNT%&#xA;%ITEM% required to secure &lt;TECHNOLOGY&gt;Soul Engine&lt;&gt; components
                                { "Russian", "Создайте: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;Чтобы получить компоненты &lt;TECHNOLOGY&gt;двигателя души&lt;&gt; требуется %ITEM%" },
                            }
                        },
                        --#endregion

                        --#endregion

                        --#region UI_CORE_ACT3
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT3_STEP4_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;RED&gt;НАРУШЕНИЕ&lt;&gt;&lt;IMG&gt;SLASH&lt;&gt;&lt;RED&gt;НАРУШЕНИЕ&lt;&gt;&lt;IMG&gt;SLASH&lt;&gt;&lt;RED&gt;НАРУШЕНИЕ&lt;&gt;&#xD;&#xA;ВНИМАНИЕ: ПОЙМАН АНОМАЛЬНЫЙ СИГНАЛ
                                -- &lt;RED&gt;BREACH&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt; &lt;RED&gt;BREACH&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt; &lt;RED&gt;BREACH&lt;&gt;&#xA;WARNING: ANOMALOUS SIGNAL DETECTED
                                { "Russian", "&lt;RED&gt;НАРУШЕНИЕ&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt; &lt;RED&gt;НАРУШЕНИЕ&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt; &lt;RED&gt;НАРУШЕНИЕ&lt;&gt;&#xA;ВНИМАНИЕ! ПОЙМАН АНОМАЛЬНЫЙ СИГНАЛ" },
                            }
                        },

                        --#region UI_CORE_ACT3_STEP1_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT3_STEP1_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Предупредите других Странников о судьбе Атласа.&#xA;Используйте &lt;IMG&gt;SCAN&lt;&gt;, чтобы найти голо-терминал.
                                -- Alert other Travellers to the fate of the Atlas&#xA;Locate a Holo-Terminus with &lt;IMG&gt;SCAN&lt;&gt;
                                { "Russian", "Предупредите других Странников о судьбе Атласа&#xA;Найдите голо-терминал с помощью &lt;IMG&gt;SCAN&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT3_STEP1_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Предупредите других Странников о судьбе Атласа.&#xA;Используйте голо-терминал для передачи сообщения.
                                -- Alert the other Travellers to the fate of the Atlas&#xA;Use a Holo-Terminus to make your broadcast
                                { "Russian", "Предупредите других Странников о судьбе Атласа&#xA;Используйте голо-терминал для передачи сообщения" },
                            }
                        },
                        --#endregion

                        --#region UI_CORE_ACT3_STEP2_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT3_STEP2_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Расскажите Нада и Поло о судьбе Атласа.&#xA;Находясь в космосе, вызовите &lt;SPECIAL&gt;Аномалию&lt;&gt; через быстрое меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;).&#xA;Смените активное задание в журнале (&lt;IMG&gt;OPTIONS&lt;&gt;).
                                { "Russian", "Расскажите Нада и Поло о судьбе Атласа&#xA;Находясь в космосе, вызовите &lt;SPECIAL&gt;Аномалию&lt;&gt; из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)&#xA;Смените активное задание в журнале (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                            }
                        },
                        --#endregion

                        --#region UI_CORE_ACT3_STEP3_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT3_STEP3_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Исследуйте галактику.
                                { "Russian", "Исследуйте галактику" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT3_STEP3_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вернитесь к Атласу и перезагрузите галактику.
                                -- Revisit the Atlas and reset the galaxy
                                { "Russian", "Вернитесь к Атласу и перезагрузите галактику" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT3_STEP3_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Атлас умирает, но в инопланетном темпе.&#xA;До перезагрузки галактики ее можно исследовать еще долгие годы, обнаруживая все новые планеты.
                                -- The Atlas is dying, but on an alien timescale.&#xA;There are years left to explore, countless planets to discover.
                                { "Russian", "Атлас умирает, но в инопланетном темпе&#xA;В распоряжении годы на исследование&#xA;бесчисленных планет" },
                            }
                        },
                        --#endregion

                        --#region UI_CORE_ACT3_STEP4_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ACT3_STEP4_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;SLASH&lt;&gt;&lt;SPECIAL&gt;Силовая линия портала активирована&lt;&gt;&lt;IMG&gt;SLASH&lt;&gt;.&#xA;Найдите портал.
                                -- &lt;IMG&gt;SLASH&lt;&gt; &lt;SPECIAL&gt;Portal leyline activated&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt;&#xA;Locate the Portal
                                { "Russian", "Силовая линия портала активирована&#xA;Найдите портал" },
                            }
                        },
                        --#endregion

                        --#endregion

                        --#region UI_CORE_A1S.*MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_A1S2_MSG_SURVEY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Отправляйтесь по координатам &lt;STELLAR&gt;незнакомца&lt;&gt;.&#xA;Используйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt;, чтобы точно установить источник сигнала.
                                { "Russian", "Отправляйтесь по координатам &lt;STELLAR&gt;незнакомца&lt;&gt;&#xA;Используйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt;, чтобы найти источник сигнала" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_A1S2_MSG_SURVEY_SWAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Установите точные &lt;STELLAR&gt;координаты&lt;&gt; незнакомца.&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;
                                { "Russian", "Установите точные &lt;STELLAR&gt;координаты&lt;&gt; незнакомца&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_A1S2_MSG_SURVEY_OFF" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Отправляйтесь по координатам &lt;STELLAR&gt;незнакомца&lt;&gt;.&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы точно установить источник сигнала.
                                { "Russian", "Отправляйтесь по координатам &lt;STELLAR&gt;незнакомца&lt;&gt;&#xA;Найдите источник сигнала с помощью &lt;STELLAR&gt;разведки цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_A1S4_MSG_SURVEY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите &lt;TECHNOLOGY&gt;передатчик на дальние дистанции&lt;&gt;.&#xA;Используйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt;, чтобы определить местоположение передатчика.
                                { "Russian", "Найдите &lt;TECHNOLOGY&gt;передатчик на дальние дистанции&lt;&gt;&#xA;Используйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt;, чтобы найти передатчик" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_A1S4_MSG_SURVEY_SWAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите &lt;TECHNOLOGY&gt;передатчик на дальние дистанции&lt;&gt;.&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;
                                { "Russian", "Найдите &lt;TECHNOLOGY&gt;передатчик на дальние дистанции&lt;&gt;&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_A1S4_MSG_SURVEY_OFF" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите &lt;TECHNOLOGY&gt;передатчик на дальние дистанции&lt;&gt;.&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы определить местоположение передатчика.
                                { "Russian", "Найдите &lt;TECHNOLOGY&gt;передатчик на дальние дистанции&lt;&gt;&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_A1S6_MSG0" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите инопланетный аванпост с помощью &lt;STELLAR&gt;сканирования&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;).&#xA;Калибровка переводчика: &lt;STELLAR&gt;0%&lt;&gt;&#xA;Нажмите &lt;IMG&gt;OPTIONS&lt;&gt;, чтобы узнать больше об изучении слов.
                                { "Russian", "Найдите инопланетный аванпост с помощью &lt;STELLAR&gt;сканера&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;)&#xA;Калибровка переводчика: &lt;STELLAR&gt;0%&lt;&gt;&#xA;Нажмите &lt;IMG&gt;OPTIONS&lt;&gt;, чтобы узнать больше об изучении слов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_A1S6_MSG1A_SURVEY_PRE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите &lt;STELLAR&gt;населенный аванпост&lt;&gt; и поговорите с инопланетными формами жизни.&#xA;Калибровка переводчика: &lt;STELLAR&gt;0%&lt;&gt;&#xA;Нажмите &lt;IMG&gt;OPTIONS&lt;&gt;, чтобы узнать больше об изучении слов.
                                { "Russian", "Найдите &lt;STELLAR&gt;населенный аванпост&lt;&gt; и поговорите с инопланетянами&#xA;Калибровка переводчика: &lt;STELLAR&gt;0%&lt;&gt;&#xA;Нажмите &lt;IMG&gt;OPTIONS&lt;&gt;, чтобы узнать больше об изучении слов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_A1S6_MSG1A_SURVEY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите &lt;STELLAR&gt;населенный аванпост&lt;&gt; и поговорите с инопланетными формами жизни.&#xA;Калибровка переводчика: &lt;STELLAR&gt;0%&lt;&gt;&#xA;Используйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt;, чтобы точно установить местоположение аванпоста.
                                { "Russian", "Найдите &lt;STELLAR&gt;населенный аванпост&lt;&gt; и поговорите с инопланетянами&#xA;Калибровка переводчика: &lt;STELLAR&gt;0%&lt;&gt;&#xA;Используйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt;, чтобы найти аванпост" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_A1S6_MSG1A_SURVEY_OFF" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите &lt;STELLAR&gt;населенный аванпост&lt;&gt; и поговорите с инопланетными формами жизни.&#xA;Калибровка переводчика: &lt;STELLAR&gt;0%&lt;&gt;&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы найти аванпост.
                                { "Russian", "Найдите &lt;STELLAR&gt;населенный аванпост&lt;&gt; и поговорите с инопланетянами&#xA;Калибровка переводчика: &lt;STELLAR&gt;0%&lt;&gt;&#xA;Найдите аванпост с помощью &lt;STELLAR&gt;разведки цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_A1S6_MSG1A_SURVEY_SWAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите &lt;STELLAR&gt;населенный аванпост&lt;&gt; и поговорите с инопланетными формами жизни.&#xA;Калибровка переводчика: &lt;STELLAR&gt;0%&lt;&gt;&#xA;Активировать &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;
                                { "Russian", "Найдите &lt;STELLAR&gt;населенный аванпост&lt;&gt; и поговорите с инопланетянами&#xA;Калибровка переводчика: &lt;STELLAR&gt;0%&lt;&gt;&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_A1S6_MSG2_SURVEY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Калибровка переводчика: &lt;TRADEABLE&gt;100%&lt;&gt;&#xA;Найти форму жизни и &lt;STELLAR&gt;узнать, где вы находитесь&lt;&gt;&#xA;Используйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt;, чтобы обнаружить инопланетное поселение.
                                { "Russian", "Калибровка переводчика: &lt;TRADEABLE&gt;100%&lt;&gt;&#xA;Найдите форму жизни и &lt;STELLAR&gt;спросите, где вы находитесь&lt;&gt;&#xA;Используйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt;, чтобы обнаружить инопланетное поселение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_A1S6_MSG2_SURVEY_OFF" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Калибровка переводчика: &lt;TRADEABLE&gt;100%&lt;&gt;&#xA;Найти форму жизни и &lt;STELLAR&gt;узнать, где вы находитесь&lt;&gt;&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы обнаружить инопланетное поселение.
                                { "Russian", "Калибровка переводчика: &lt;TRADEABLE&gt;100%&lt;&gt;&#xA;Найдите форму жизни и &lt;STELLAR&gt;спросите, где вы находитесь&lt;&gt;&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы обнаружить инопланетное поселение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_A1S6_MSG2_SURVEY_SWAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Калибровка переводчика: &lt;TRADEABLE&gt;100%&lt;&gt;&#xA;Найти форму жизни и &lt;STELLAR&gt;узнать, где вы находитесь&lt;&gt;&#xA;Активировать &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;
                                { "Russian", "Калибровка переводчика: &lt;TRADEABLE&gt;100%&lt;&gt;&#xA;Найдите форму жизни и &lt;STELLAR&gt;спросите, где вы находитесь&lt;&gt;&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_A1S8_MSG3_SURVEY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Свяжитесь с &lt;TECHNOLOGY&gt;«АПОЛЛОНОМ»&lt;&gt;.&#xA;Используйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt;, чтобы обнаружить голо-терминал.&#xA;«Аполлон» — на этой частоте Артемида вела свою последнюю передачу.
                                { "Russian", "Свяжитесь с &lt;TECHNOLOGY&gt;АПОЛЛОНОМ&lt;&gt;&#xA;Найдите голо-терминал, используя &lt;TECHNOLOGY&gt;разведку цели&lt;&gt;&#xA;Артемида вела свою последнюю передачу на частоте Аполлона" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_A1S8_MSG3_SURVEY_OFF" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Свяжитесь с &lt;TECHNOLOGY&gt;«АПОЛЛОНОМ»&lt;&gt; через голо-терминал.&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы обнаружить голо-терминал.&#xA;«Аполлон» — на этой частоте Артемида вела свою последнюю передачу.
                                { "Russian", "Свяжитесь с &lt;TECHNOLOGY&gt;АПОЛЛОНОМ&lt;&gt; через голо-терминал&#xA;Найдите голо-терминал с помощью &lt;TECHNOLOGY&gt;разведки цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)&#xA;Артемида вела свою последнюю передачу на частоте Аполлона" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_A1S8_MSG3_SURVEY_SWAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Свяжитесь с &lt;TECHNOLOGY&gt;«АПОЛЛОНОМ»&lt;&gt; через голо-терминал.&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;&#xA;«Аполлон» — на этой частоте Артемида вела свою последнюю передачу.
                                { "Russian", "Свяжитесь с &lt;TECHNOLOGY&gt;АПОЛЛОНОМ&lt;&gt; через голо-терминал&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;&#xA;Артемида вела свою последнюю передачу на частоте Аполлона" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_A1S10_MSG1C_SURVEY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обыщите &lt;STELLAR&gt;заброшенное здание&lt;&gt; и найдите &lt;TECHNOLOGY&gt;наниты&lt;&gt;.&#xA;Используйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt;, чтобы точно установить местоположение заброшенного строения.
                                { "Russian", "Найдите &lt;TECHNOLOGY&gt;наниты&lt;&gt; в &lt;STELLAR&gt;заброшенном здании&lt;&gt;&#xA;Используйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt;, чтобы найти здание" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_A1S10_MSG1C_SURVEY_SWAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обыщите &lt;STELLAR&gt;заброшенное здание&lt;&gt; и найдите &lt;TECHNOLOGY&gt;наниты&lt;&gt;.&#xA;Активировать &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;
                                { "Russian", "Найдите &lt;TECHNOLOGY&gt;наниты&lt;&gt; в &lt;STELLAR&gt;заброшенном здании&lt;&gt;&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_A1S10_MSG1C_SURVEY_OFF" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обыщите &lt;STELLAR&gt;заброшенное здание&lt;&gt; и найдите &lt;TECHNOLOGY&gt;наниты&lt;&gt;.&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы точно установить местоположение заброшенного строения.
                                { "Russian", "Найдите &lt;TECHNOLOGY&gt;наниты&lt;&gt; в &lt;STELLAR&gt;заброшенном здании&lt;&gt;&#xA;Найдите здание с помощью &lt;STELLAR&gt;разведки цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_A1S11_MSG1_SURVEY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Проникните в &lt;TECHNOLOGY&gt;тайную постройку корваксов&lt;&gt; по просьбе Аполлона.&#xA;Используйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt;, чтобы обнаружить тайную фабрику.
                                -- Infiltrate the &lt;TECHNOLOGY&gt;secret Korvax facility&lt;&gt; for Apollo&#xA;Use the &lt;TECHNOLOGY&gt;Target Sweep&lt;&gt; to reveal the hidden factory
                                { "Russian", "Проникните на &lt;TECHNOLOGY&gt;тайный завод корваксов&lt;&gt; по просьбе Аполлона&#xA;Используйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt;, чтобы найти завод" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_A1S11_MSG1_SURVEY_SWAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Проникните в &lt;TECHNOLOGY&gt;тайную постройку корваксов&lt;&gt; по просьбе Аполлона.&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;
                                { "Russian", "Проникните на &lt;TECHNOLOGY&gt;тайный завод корваксов&lt;&gt; по просьбе Аполлона&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_A1S11_MSG1_SURVEY_OFF" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Проникните в &lt;TECHNOLOGY&gt;тайную постройку корваксов&lt;&gt; по просьбе Аполлона.&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы обнаружить тайную фабрику.
                                { "Russian", "Проникните на &lt;TECHNOLOGY&gt;тайный завод корваксов&lt;&gt; по просьбе Аполлона&#xA;Найдите завод с помощью &lt;STELLAR&gt;разведки цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_A1S13_MSG1_SURVEY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Пройдите по энергетическому следу стражей до источника.&#xA;Используйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt;, чтобы обнаружить &lt;SPECIAL&gt;источник энергии&lt;&gt;.
                                { "Russian", "Следуйте по энергетическому следу стражей до источника&#xA;Используйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt;, чтобы найти &lt;SPECIAL&gt;источник энергии&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_A1S13_MSG1_SURVEY_SWAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Пройдите по энергетическому следу стражей до источника.&#xA;Активировать &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;
                                { "Russian", "Следуйте по энергетическому следу стражей до источника&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_A1S13_MSG1_SURVEY_OFF" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Пройдите по энергетическому следу стражей до источника.&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы обнаружить &lt;SPECIAL&gt;источник энергии&lt;&gt;.
                                { "Russian", "Следуйте по энергетическому следу стражей до источника&#xA;Найдите &lt;SPECIAL&gt;источник энергии&lt;&gt; с помощью &lt;STELLAR&gt;разведки цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)" },
                            }
                        },
                        --#endregion

                        --#region UI_CORE_A2S.*MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_A2S2_MSG1A_SURVEY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите источник загадочного &lt;SPECIAL&gt;сигнала бедствия&lt;&gt;.&#xA;Используйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt;, чтобы точно установить источник сигнала.&#xA;&lt;FUEL&gt;Критическое повреждение&lt;&gt; звездолета. Рекомендуется провести ремонт.
                                { "Russian", "Найдите источник загадочного &lt;SPECIAL&gt;сигнала бедствия&lt;&gt;&#xA;Используйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt;, чтобы найти источник сигнала&#xA;&lt;FUEL&gt;Звездолёт &lt;FUEL&gt;сильно поврежден&lt;&gt; — рекомендуется ремонт" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_A2S2_MSG1A_SURVEY_SWAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите источник загадочного &lt;SPECIAL&gt;сигнала бедствия&lt;&gt;.&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;&lt;FUEL&gt;Критическое повреждение&lt;&gt; звездолета. Рекомендуется провести ремонт.
                                -- Locate the mysterious &lt;SPECIAL&gt;distress signal&lt;&gt;&#xA;Activate a &lt;TECHNOLOGY&gt;Target Sweep&lt;&gt; with &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;&#xA;Starship is &lt;FUEL&gt;critically damaged&lt;&gt;. Repairs advised
                                { "Russian", "Найдите источник загадочного &lt;SPECIAL&gt;сигнала бедствия&lt;&gt;&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;&#xA;Звездолёт &lt;FUEL&gt;сильно поврежден&lt;&gt; — рекомендуется ремонт" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_A2S2_MSG1A_SURVEY_OFF" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите источник загадочного &lt;SPECIAL&gt;сигнала бедствия&lt;&gt;.&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы точно установить источник сигнала.&#xA;&lt;FUEL&gt;Критическое повреждение&lt;&gt; звездолета. Рекомендуется провести ремонт.
                                { "Russian", "Найдите источник загадочного &lt;SPECIAL&gt;сигнала бедствия&lt;&gt;&#xA;Найдите источник сигнала с помощью &lt;STELLAR&gt;разведки цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)&#xA;Звездолёт &lt;FUEL&gt;сильно поврежден&lt;&gt; — рекомендуется ремонт" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_A2S2_MSG1B_SURVEY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Звездолет принял таинственный &lt;SPECIAL&gt;отраженный сигнал&lt;&gt;.&#xA;Найдите источник странного отраженного сигнала.&#xA;Используйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt;, чтобы точно установить источник сигнала.
                                { "Russian", "Звездолёт поймал таинственный &lt;SPECIAL&gt;эхосигнал&lt;&gt;&#xA;Найдите источник сигнала с помощью &lt;TECHNOLOGY&gt;разведки цели&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_A2S2_MSG1B_SURVEY_SWAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Звездолет принял таинственный &lt;SPECIAL&gt;отраженный сигнал&lt;&gt;.&#xA;Найдите источник странного отраженного сигнала.&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;
                                { "Russian", "Звездолёт поймал таинственный &lt;SPECIAL&gt;эхосигнал&lt;&gt;&#xA;Найдите источник сигнала&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_A2S2_MSG1B_SURVEY_OFF" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Звездолет принял таинственный &lt;SPECIAL&gt;отраженный сигнал&lt;&gt;.&#xA;Найдите источник странного отраженного сигнала.&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы точно установить источник сигнала.
                                { "Russian", "Звездолёт поймал таинственный &lt;SPECIAL&gt;эхосигнал&lt;&gt;&#xA;Найдите источник сигнала с помощью &lt;STELLAR&gt;разведки цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_A2S3_MSG3_SURVEY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Расскажите Аполлону о &lt;SPECIAL&gt;портале&lt;&gt; и &lt;STELLAR&gt;Артемиде&lt;&gt;.&#xA;Используйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt;, чтобы обнаружить голо-терминал.
                                { "Russian", "Расскажите Аполлону о &lt;SPECIAL&gt;портале&lt;&gt; и &lt;STELLAR&gt;Артемиде&lt;&gt;&#xA;Найдите голо-терминал с помощью &lt;TECHNOLOGY&gt;разведки цели&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_A2S3_MSG3_SURVEY_OFF" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Расскажите Аполлону о &lt;SPECIAL&gt;портале&lt;&gt; и &lt;STELLAR&gt;Артемиде&lt;&gt;.&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы обнаружить голо-терминал.
                                { "Russian", "Расскажите Аполлону о &lt;SPECIAL&gt;портале&lt;&gt; и &lt;STELLAR&gt;Артемиде&lt;&gt;&#xA;Найдите голо-терминал с помощью &lt;STELLAR&gt;разведки цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_A2S3_MSG3_SURVEY_SWAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Расскажите Аполлону о &lt;SPECIAL&gt;портале&lt;&gt; и &lt;STELLAR&gt;Артемиде&lt;&gt;.&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;
                                { "Russian", "Расскажите Аполлону о &lt;SPECIAL&gt;портале&lt;&gt; и &lt;STELLAR&gt;Артемиде&lt;&gt;&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_A2S7_MSG1_SURVEY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите местоположение портала для Аполлона при помощи &lt;SPECIAL&gt;монолита&lt;&gt;.&#xA;Используйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt;, чтобы точно установить местоположение монолита.
                                -- Trace a Portal for Apollo via a &lt;SPECIAL&gt;Monolith&lt;&gt;&#xA;Use the &lt;TECHNOLOGY&gt;Target Sweep&lt;&gt; to pinpoint a Monolith
                                { "Russian", "Найдите портал для Аполлона при помощи &lt;SPECIAL&gt;монолита&lt;&gt;&#xA;Используйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt;, чтобы найти монолит" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_A2S7_MSG1_SURVEY_SWAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите местоположение портала для Аполлона при помощи &lt;SPECIAL&gt;монолита&lt;&gt;.&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;
                                { "Russian", "Найдите портал для Аполлона при помощи &lt;SPECIAL&gt;монолита&lt;&gt;&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_A2S7_MSG1_SURVEY_OFF" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите местоположение портала для Аполлона при помощи &lt;SPECIAL&gt;монолита&lt;&gt;.&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы точно установить местоположение монолита.
                                { "Russian", "Найдите портал для Аполлона при помощи &lt;SPECIAL&gt;монолита&lt;&gt;&#xA;Найдите монолит с помощью &lt;STELLAR&gt;разведки цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_A2S7_MSG6_SURVEY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Передайте &lt;SPECIAL&gt;знаки портала&lt;&gt;&lt;STELLAR&gt; Аполлону&lt;&gt;.&#xA;Используйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt;, чтобы точно установить положение голо-терминала.
                                -- Relay the &lt;SPECIAL&gt;Portal Glyphs&lt;&gt; to &lt;STELLAR&gt;Apollo&lt;&gt;&#xA;Use the &lt;TECHNOLOGY&gt;Target Sweep&lt;&gt; to pinpoint a Holo-Terminus
                                { "Russian", "Передайте &lt;SPECIAL&gt;знаки портала&lt;&gt; &lt;STELLAR&gt;Аполлону&lt;&gt;&#xA;Найдите голо-терминал с помощью &lt;TECHNOLOGY&gt;разведки цели&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_A2S7_MSG6_SURVEY_SWAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Передайте &lt;SPECIAL&gt;знаки портала&lt;&gt;&lt;STELLAR&gt; Аполлону&lt;&gt;.&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;
                                -- Relay the &lt;SPECIAL&gt;Portal Glyphs&lt;&gt; to &lt;STELLAR&gt;Apollo&lt;&gt;&#xA;Activate a &lt;TECHNOLOGY&gt;Target Sweep&lt;&gt; with &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;
                                { "Russian", "Передайте &lt;SPECIAL&gt;знаки портала&lt;&gt; &lt;STELLAR&gt;Аполлону&lt;&gt;&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_A2S7_MSG6_SURVEY_OFF" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Передайте &lt;SPECIAL&gt;знаки портала&lt;&gt;&lt;STELLAR&gt; Аполлону&lt;&gt;.&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы точно установить положение голо-терминала.
                                -- Relay the &lt;SPECIAL&gt;Portal Glyphs&lt;&gt; to &lt;STELLAR&gt;Apollo&lt;&gt;&#xA;Activate a &lt;STELLAR&gt;Target Sweep&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;) to pinpoint a Holo-Terminus
                                { "Russian", "Передайте &lt;SPECIAL&gt;знаки портала&lt;&gt; &lt;STELLAR&gt;Аполлону&lt;&gt;&#xA;Найдите голо-терминал с помощью &lt;STELLAR&gt;разведки цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_A2S8_MSG1_SURVEY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Посетите &lt;TECHNOLOGY&gt;обсерваторию&lt;&gt;, которую выбрал -пусто-.&#xA;Используйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt;, чтобы точно установить местоположение обсерватории.
                                { "Russian", "Посетите &lt;TECHNOLOGY&gt;обсерваторию&lt;&gt;, которую выбрал -пусто-&#xA;Используйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt;, чтобы найти обсерваторию" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_A2S8_MSG1_SURVEY_SWAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Посетите &lt;TECHNOLOGY&gt;обсерваторию&lt;&gt;, которую выбрал -пусто-.&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;
                                { "Russian", "Посетите &lt;TECHNOLOGY&gt;обсерваторию&lt;&gt;, которую выбрал -пусто-&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_A2S8_MSG1_SURVEY_OFF" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Посетите &lt;TECHNOLOGY&gt;обсерваторию&lt;&gt;, которую выбрал -пусто-.&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы точно установить местоположение обсерватории.
                                { "Russian", "Посетите &lt;TECHNOLOGY&gt;обсерваторию&lt;&gt;, которую выбрал -пусто-&#xA;Найдите её с помощью &lt;STELLAR&gt;разведки цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_A2S8_MSG1_SURVEY_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружена обсерватория, которую выбрал -пусто-.
                                { "Russian", "Обнаружена обсерватория -пусто-" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_A2S8_MSG2_SURVEY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите обломки &lt;STELLAR&gt;разбившегося грузового судна&lt;&gt; Нада.&#xA;Используйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt;, чтобы точно установить место крушения.
                                { "Russian", "Найдите обломки &lt;STELLAR&gt;разбившегося грузового судна&lt;&gt; Нада&#xA;Используйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt;, чтобы найти место крушения" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_A2S8_MSG2_SURVEY_SWAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите обломки &lt;STELLAR&gt;разбившегося грузового судна&lt;&gt; Нада.&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;
                                { "Russian", "Найдите обломки &lt;STELLAR&gt;разбившегося грузового судна&lt;&gt; Нада&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_A2S8_MSG2_SURVEY_OFF" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите обломки &lt;STELLAR&gt;разбившегося грузового судна&lt;&gt; Нада.&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы точно установить место крушения.
                                { "Russian", "Найдите обломки &lt;STELLAR&gt;разбившегося грузового судна&lt;&gt; Нада&#xA;Найдите место крушения с помощью &lt;STELLAR&gt;разведки цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_A2S8_MSG3_SURVEY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Передайте журнал грузового судна &lt;STELLAR&gt;-пусто-&lt;&gt;.&#xA;Используйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt;, чтобы обнаружить голо-терминал.
                                { "Russian", "Передайте журнал грузового судна &lt;STELLAR&gt;-пусто-&lt;&gt;&#xA;Используйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt;, чтобы найти голо-терминал" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_A2S8_MSG3_SURVEY_SWAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Передайте журнал грузового судна &lt;STELLAR&gt;-пусто-&lt;&gt;.&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;
                                { "Russian", "Передайте журнал грузового судна &lt;STELLAR&gt;-пусто-&lt;&gt;&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_A2S8_MSG3_SURVEY_OFF" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Передайте журнал грузового судна &lt;STELLAR&gt;-пусто-&lt;&gt;.&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы обнаружить голо-терминал.
                                { "Russian", "Передайте журнал грузового судна &lt;STELLAR&gt;-пусто-&lt;&gt;&#xA;Найдите голо-терминал с помощью &lt;STELLAR&gt;разведки цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_A2S8_MSG3A_SURVEY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Передайте журнал грузового судна &lt;STELLAR&gt;-пусто-&lt;&gt;.&#xA;Используйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt;, чтобы обнаружить голо-терминал.&#xA;Или вызвать &lt;SPECIAL&gt;Космическую Аномалию&lt;&gt; и рассказать Нада об Артемиде
                                { "Russian", "Передайте журнал грузового судна &lt;STELLAR&gt;-пусто-&lt;&gt;&#xA;Найдите голо-терминал с помощью &lt;TECHNOLOGY&gt;разведки цели&lt;&gt;&#xA;Или расскажите на &lt;SPECIAL&gt;Космической Аномалии&lt;&gt; Нада об Артемиде" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_A2S8_MSG3A_SURVEY_SWAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Передайте журнал грузового судна &lt;STELLAR&gt;-пусто-&lt;&gt;.&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;&#xA;Или вызвать &lt;SPECIAL&gt;Космическую Аномалию&lt;&gt; и рассказать Нада об Артемиде
                                { "Russian", "Передайте журнал грузового судна &lt;STELLAR&gt;-пусто-&lt;&gt;&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;&#xA;Или расскажите на &lt;SPECIAL&gt;Космической Аномалии&lt;&gt; Нада об Артемиде" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_A2S8_MSG3A_SURVEY_OFF" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Передайте журнал грузового судна &lt;STELLAR&gt;-пусто-&lt;&gt;.&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы обнаружить голо-терминал.&#xA;Или вызвать &lt;SPECIAL&gt;Космическую Аномалию&lt;&gt; и рассказать Нада об Артемиде
                                { "Russian", "Передайте журнал грузового судна &lt;STELLAR&gt;-пусто-&lt;&gt;&#xA;Найдите голо-терминал с помощью &lt;STELLAR&gt;разведки цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)&#xA;Или расскажите на &lt;SPECIAL&gt;Космической Аномалии&lt;&gt; Нада об Артемиде" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_A2S10_MSG3_SURVEY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добудьте &lt;TRANS_WAR&gt;вай'кинский артефакт&lt;&gt; в древних руинах.&#xA;Используйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt;, чтобы обнаружить руины.
                                { "Russian", "Добудьте &lt;TRANS_WAR&gt;вай'кинский артефакт&lt;&gt; в древних руинах&#xA;Найдите руины с помощью &lt;TECHNOLOGY&gt;разведки цели&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_A2S10_MSG3_SURVEY_SWAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добудьте &lt;TRANS_WAR&gt;вай'кинский артефакт&lt;&gt; в древних руинах.&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;
                                { "Russian", "Добудьте &lt;TRANS_WAR&gt;вай'кинский артефакт&lt;&gt; в древних руинах&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_A2S10_MSG3_SURVEY_OFF" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добудьте &lt;TRANS_WAR&gt;вай'кинский артефакт&lt;&gt; в древних руинах.&#xA;Вернитесь с артефактом к картографу, чтобы доказать свою честь.&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы найти руины.
                                { "Russian", "Добудьте &lt;TRANS_WAR&gt;вай'кинский артефакт&lt;&gt; в древних руинах&#xA;Вернитесь с артефактом к картографу, чтобы доказать свою честь&#xA;Найдите руины с помощью &lt;STELLAR&gt;разведки цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_A2S11_MSG3_SURVEY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добудьте &lt;TRANS_EXP&gt;несуществующие данные&lt;&gt; в &lt;SPECIAL&gt;аномальном строении&lt;&gt;.&#xA;Используйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt;, чтобы обнаружить строение.
                                { "Russian", "Добудьте &lt;TRANS_EXP&gt;несуществующие данные&lt;&gt;&#xA;в &lt;SPECIAL&gt;аномальном строении&lt;&gt;&#xA;Используйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt;, чтобы найти здание" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_A2S11_MSG3_SURVEY_SWAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добудьте &lt;TRANS_EXP&gt;несуществующие данные&lt;&gt; в &lt;SPECIAL&gt;аномальном строении&lt;&gt;.&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;
                                { "Russian", "Добудьте &lt;TRANS_EXP&gt;несуществующие данные&lt;&gt;&#xA;в &lt;SPECIAL&gt;аномальном строении&lt;&gt;&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_A2S11_MSG3_SURVEY_OFF" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добудьте &lt;SPECIAL&gt;несуществующие данные&lt;&gt; в &lt;SPECIAL&gt;аномальном строении&lt;&gt;.&#xA;Принесите данные картографу, чтобы заслужить его доверие.&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы найти строение.
                                { "Russian", "Добудьте &lt;SPECIAL&gt;несуществующие данные&lt;&gt;&#xA;в &lt;SPECIAL&gt;аномальном строении&lt;&gt;&#xA;Принесите данные картографу, чтобы заслужить его доверие&#xA;Найдите строение с помощью &lt;STELLAR&gt;разведки цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_A2S13_MSG3_SURVEY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поговорите с &lt;TECHNOLOGY&gt;-пусто-&lt;&gt; о тайнах прошлого.&#xA;Используйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt;, чтобы обнаружить голо-терминал.
                                { "Russian", "Поговорите с &lt;TECHNOLOGY&gt;-пусто-&lt;&gt; о тайнах прошлого&#xA;Найдите голо-терминал с помощью &lt;TECHNOLOGY&gt;разведки цели&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_A2S13_MSG3_SURVEY_SWAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поговорите с &lt;TECHNOLOGY&gt;-пусто-&lt;&gt; о тайнах прошлого.&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;
                                { "Russian", "Поговорите с &lt;TECHNOLOGY&gt;-пусто-&lt;&gt; о тайнах прошлого&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_A2S13_MSG3_SURVEY_OFF" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поговорите с &lt;TECHNOLOGY&gt;-пусто-&lt;&gt; о тайнах прошлого.&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы обнаружить голо-терминал.
                                { "Russian", "Поговорите с &lt;TECHNOLOGY&gt;-пусто-&lt;&gt; о тайнах прошлого&#xA;Найдите голо-терминал с помощью &lt;STELLAR&gt;разведки цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_A2S14_MSG1_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Получены координаты сигнала
                                { "Russian", "Получены координаты источника сигнала" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_A2S14_MSG1_SURVEY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Голо-терминал поймал сигнал &lt;STELLAR&gt;аварийного маяка&lt;&gt;.&#xA;Используйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt;, чтобы обнаружить источник сигнала.
                                { "Russian", "Голо-терминал поймал сигнал &lt;STELLAR&gt;аварийного маяка&lt;&gt;&#xA;Найдите источник сигнала с помощью &lt;TECHNOLOGY&gt;разведки цели&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_A2S14_MSG1_SURVEY_SWAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Голо-терминал поймал сигнал &lt;STELLAR&gt;аварийного маяка&lt;&gt;.&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;
                                { "Russian", "Голо-терминал поймал сигнал &lt;STELLAR&gt;аварийного маяка&lt;&gt;&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_A2S14_MSG1_SURVEY_OFF" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Голо-терминал поймал сигнал &lt;STELLAR&gt;аварийного маяка&lt;&gt;.&#xA;Активируйте &lt;&gt;разведку цели&lt;IMG&gt;AIM&lt;&gt; (&lt;STELLAR&gt;), чтобы найти источник сигнала.
                                -- A &lt;STELLAR&gt;Distress Beacon&lt;&gt; signal was heard at the Holo-Terminus&#xA;Activate a &lt;STELLAR&gt;Target Sweep&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;) to locate the signal
                                { "Russian", "Голо-терминал поймал сигнал &lt;STELLAR&gt;аварийного маяка&lt;&gt;&#xA;Найдите источник сигнала с помощью &lt;STELLAR&gt;разведки цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_A2S15_MSG1_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружена силовая линия портала
                                { "Russian", "Обнаружена силовая линия портала" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_A2S15_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;SLASH&lt;&gt;&lt;FUEL&gt;НАЙДИТЕ АТЛАСА&lt;&gt;&lt;IMG&gt;SLASH&lt;&gt;&#xA;Активируйте портал.
                                -- &lt;IMG&gt;SLASH&lt;&gt; &lt;FUEL&gt;SEEK THE ATLAS&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt;&#xA;Activate the Portal
                                { "Russian", "Активируйте портал&#xA;&lt;IMG&gt;SLASH&lt;&gt; &lt;FUEL&gt;НАЙДИ АТЛАСА&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_A2S15_MSG1_SURVEY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Отследите расположение &lt;SPECIAL&gt;портала&lt;&gt; по силовой линии.&#xA;Используйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt;, чтобы точно установить местоположение портала.
                                -- Trace the leyline to the &lt;SPECIAL&gt;Portal&lt;&gt;&#xA;Use the &lt;TECHNOLOGY&gt;Target Sweep&lt;&gt; to pinpoint the Portal
                                { "Russian", "Определите местоположение &lt;SPECIAL&gt;портала&lt;&gt; по силовой линии&#xA;Найдите портал с помощью &lt;TECHNOLOGY&gt;разведки цели&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_A2S15_MSG1_SURVEY_SWAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Отследите расположение &lt;SPECIAL&gt;портала&lt;&gt; по силовой линии.&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;
                                { "Russian", "Определите местоположение &lt;SPECIAL&gt;портала&lt;&gt; по силовой линии&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_A2S15_MSG1_SURVEY_OFF" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Отследите расположение &lt;SPECIAL&gt;портала&lt;&gt; по силовой линии.&#xA;Активируйте &lt;&gt;разведку цели&lt;IMG&gt;AIM&lt;&gt; (&lt;STELLAR&gt;), чтобы точно установить местоположение портала.
                                -- Trace the leyline to the &lt;SPECIAL&gt;Portal&lt;&gt;&#xA;Activate a &lt;STELLAR&gt;Target Sweep&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;) to pinpoint the Portal
                                { "Russian", "Определите местоположение &lt;SPECIAL&gt;портала&lt;&gt; по силовой линии&#xA;Найдите портал с помощью &lt;STELLAR&gt;разведки цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)" },
                            }
                        },
                        --#endregion

                        --#region UI_CORE_A3S.*MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_A3S1_MSG3_SURVEY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Предупредите других Странников о судьбе Атласа.&#xA;Используйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt;, чтобы обнаружить голо-терминал.
                                { "Russian", "Предупредите других Странников о судьбе Атласа&#xA;Найдите голо-терминал с помощью &lt;TECHNOLOGY&gt;разведки цели&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_A3S1_MSG3_SURVEY_SWAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Предупредите других Странников о судьбе Атласа.&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;
                                { "Russian", "Предупредите других Странников о судьбе Атласа&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_A3S1_MSG3_SURVEY_OFF" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Предупредите других Странников о судьбе Атласа.&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы обнаружить голо-терминал.
                                { "Russian", "Предупредите других Странников о судьбе Атласа&#xA;Найдите голо-терминал с помощью &lt;STELLAR&gt;разведки цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_A3S4_MSG1_SURVEY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;SLASH&lt;&gt;&lt;SPECIAL&gt;Силовая линия портала активирована&lt;&gt;&lt;IMG&gt;SLASH&lt;&gt;&#xA;Используйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt;, чтобы обнаружить портал.
                                -- &lt;IMG&gt;SLASH&lt;&gt; &lt;SPECIAL&gt;Portal leyline activated&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt;&#xA;Use the &lt;TECHNOLOGY&gt;Target Sweep&lt;&gt; to locate the final Portal
                                { "Russian", "Силовая линия портала активирована&#xA;Найдите последний портал с помощью &lt;TECHNOLOGY&gt;разведки цели&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_A3S4_MSG1_SURVEY_SWAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;SLASH&lt;&gt;&lt;SPECIAL&gt;Силовая линия портала активирована&lt;&gt;&lt;IMG&gt;SLASH&lt;&gt;&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;
                                -- &lt;IMG&gt;SLASH&lt;&gt; &lt;SPECIAL&gt;Portal leyline activated&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt;&#xA;Activate a &lt;TECHNOLOGY&gt;Target Sweep&lt;&gt; with &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;
                                { "Russian", "Силовая линия портала активирована&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_A3S4_MSG1_SURVEY_OFF" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;SLASH&lt;&gt;&lt;SPECIAL&gt;Силовая линия портала активирована&lt;&gt;&lt;IMG&gt;SLASH&lt;&gt;&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы обнаружить портал.
                                -- &lt;IMG&gt;SLASH&lt;&gt; &lt;SPECIAL&gt;Portal leyline activated&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt;&#xA;Activate a &lt;STELLAR&gt;Target Sweep&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;) to locate the final Portal
                                { "Russian", "Силовая линия портала активирована&#xA;Найдите последний портал с помощью &lt;STELLAR&gt;разведки цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)" },
                            }
                        },
                        --#endregion

                        --#region UI_CORE_TUTORIAL2_OSD
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL2_OSD1" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- ВХОДЯЩИЙ СИГНАЛ &lt;IMG&gt;SLASH&lt;&gt; СКАНИРОВАНИЕ ИСТОЧНИКА
                        --         -- INCOMING SIGNAL &lt;IMG&gt;SLASH&lt;&gt; SCAN TO LOCATE
                        --         { "Russian", "ВХОДЯЩИЙ СИГНАЛ &lt;IMG&gt;SLASH&lt;&gt; ТРЕБУЕТСЯ СКАНИРОВАНИЕ" },
                        --     }
                        -- },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL2_OSD2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ЗАФИКСИРОВАНЫ КООРДИНАТЫ СИГНАЛЬНОГО МАЯКА
                                -- SIGNAL BEACON TRIANGULATED
                                { "Russian", "СИГНАЛ МАЯКА ТРИАНГУЛИРОВАН" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL2_OSD3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- СИГНАЛ ПОЛУЧЕН &lt;IMG&gt;SLASH&lt;&gt; ОБНАРУЖЕНЫ ПРИЗНАКИ ЖИЗНИ
                                -- SIGNAL ACQUIRED &lt;IMG&gt;SLASH&lt;&gt; LIFESIGNS DETECTED
                                { "Russian", "ОБНАРУЖЕНЫ ПРИЗНАКИ ЖИЗНИ" },
                            }
                        },
                        -- TODO: ссылается на "Установить гипердвигатель"...
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL2_OSD4" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- UI_CORE_TUTORIAL2_OBJ4
                        --         { "Russian", "УСТАНОВИТЕ ГИПЕРДВИГАТЕЛЬ" },
                        --     }
                        -- },
                        --#endregion

                        --#region UI_CORE_HOLOHUB_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_HOLOHUB_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите голо-терминал.&#xA;Используйте &lt;IMG&gt;SCAN&lt;&gt;, чтобы просканировать окрестности.
                                { "Russian", "Найдите голо-терминал&#xA;Просканируйте окрестности с помощью &lt;IMG&gt;SCAN&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_HOLOHUB_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Активируйте голо-терминал.
                                { "Russian", "Активируйте голо-терминал" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_HOLOHUB_MSG3_ART" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поговорите с Артемидой.
                                { "Russian", "Поговорите с Артемидой" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_HOLOHUB_MSG3_NLL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поговорите с -пусто-.
                                { "Russian", "Поговорите с -пусто-" },
                            }
                        },
                        --#endregion

                        --#region UI_CORE_ANTIM_WATCH_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_ANTIM_WATCH_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите новый источник &lt;FUEL&gt;антиматерии&lt;&gt;.
                                -- Locate a new source of &lt;FUEL&gt;Antimatter&lt;&gt;
                                { "Russian", "Найдите новый источник &lt;FUEL&gt;антиматерии&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region UI_CORE_EPILOGUE_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_EPILOGUE_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Чтобы подключиться к Атласу и пересмотреть свой выбор, найдите портал.
                                -- Find a Portal to connect to Atlas and revisit your choice
                                { "Russian", "Найдите портал, чтобы подключиться к Атласу&#xA;и пересмотреть свой выбор" },
                            }
                        },
                        --#endregion

                        --#region UI_CORE_MONOLITH_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_MONOLITH_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найти Монолит&#xA;Чтобы просканировать окрестности, используйте &lt;IMG&gt;SCAN&lt;&gt;.
                                -- Locate a Monolith&#xA;Use &lt;IMG&gt;SCAN&lt;&gt; to scan your surroundings.
                                { "Russian", "Найдите монолит&#xA;Просканируйте окрестности с помощью &lt;IMG&gt;SCAN&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region UI_NOTIFY_LASER_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NOTIFY_LASER_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Для перезарядки собирайте &lt;FUEL&gt;углерод&lt;&gt; с &lt;STELLAR&gt;растений и деревьев&lt;&gt;.&#xA;Если энергия на нуле, &lt;STELLAR&gt;атаковать&lt;&gt; можно ударами (&lt;IMG&gt;MELEE&lt;&gt;).
                                { "Russian", "&lt;COMMODITY&gt;Перезарядите&lt;&gt; &lt;TECHNOLOGY&gt;расщепитель&lt;&gt;&#xA;Собирайте &lt;FUEL&gt;углерод&lt;&gt; с &lt;STELLAR&gt;растений и деревьев&lt;&gt;&#xA;Если энергия на нуле, &lt;STELLAR&gt;атаковать&lt;&gt; можно ударами (&lt;IMG&gt;MELEE&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NOTIFY_LASER_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите &lt;FUEL&gt;углерод&lt;&gt; для перезарядки.&#xA;Если энергия на нуле, уничтожать &lt;STELLAR&gt;растения и деревья&lt;&gt; можно ударами (&lt;IMG&gt;MELEE&lt;&gt;).
                                { "Russian", "Соберите &lt;FUEL&gt;углерод&lt;&gt; для перезарядки&#xA;Если энергия на нуле, уничтожать &lt;STELLAR&gt;растения и деревья&lt;&gt;&#xA;можно ударами (&lt;IMG&gt;MELEE&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NOTIFY_LASER_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Перезарядите в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;) или быстром меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                { "Russian", "&lt;COMMODITY&gt;Перезарядите&lt;&gt; &lt;TECHNOLOGY&gt;расщепитель&lt;&gt;&#xA;в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;)&#xA;или из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NOTIFY_LASER_MSG3_VR1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Подзарядитесь через &lt;STELLAR&gt;быстрое меню&lt;&gt; или &lt;STELLAR&gt;инвентарь&lt;&gt;.&#xA;Чтобы открыть меню, укажите на свою &lt;STELLAR&gt;%SECONDARY_HAND%&lt;&gt;
                                { "Russian", "Перезарядите расщепитель из &lt;STELLAR&gt;быстрого меню&lt;&gt;&#xA;или в &lt;STELLAR&gt;инвентаре&lt;&gt;&#xA;Чтобы открыть меню, укажите на &lt;STELLAR&gt;%SECONDARY_HAND%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NOTIFY_LASER_MSG3_VR2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Выполните перезарядку в &lt;STELLAR&gt;быстром меню&lt;&gt; или &lt;STELLAR&gt;инвентаре&lt;&gt;.&#xA;Для выбора меню используйте &lt;IMG&gt;QUICK_ACTION&lt;&gt;
                                { "Russian", "Перезарядите расщепитель из &lt;STELLAR&gt;быстрого меню&lt;&gt;&#xA;или в &lt;STELLAR&gt;инвентаре&lt;&gt;&#xA;Для выбора меню используйте &lt;IMG&gt;QUICK_ACTION&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NOTIFY_LASER_MSG3A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TITLE&gt;Зарядите расщепитель&lt;&gt;&#xA;Перезарядите в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;) или быстром меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;).&#xA;С помощью &lt;TECHNOLOGY&gt;портативного очистителя&lt;&gt; вы можете создавать &lt;FUEL&gt;сжатый углерод&lt;&gt;, обладающий большим энергетическим потенциалом.
                                { "Russian", "&lt;COMMODITY&gt;Перезарядите&lt;&gt; &lt;TECHNOLOGY&gt;расщепитель&lt;&gt;&#xA;Перезарядите в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;) или быстром меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)&#xA;В &lt;TECHNOLOGY&gt;портативном очистителе&lt;&gt; можно создать &lt;FUEL&gt;сжатый углерод&lt;&gt;,&#xA;обладающий большим энергетическим потенциалом" },
                            }
                        },
                        --#endregion

                        --#region UI_CORE_TUTORIAL2_HYPERTITLE
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL2_HYPERTITLE1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Установить гипердвигатель &lt;IMG&gt;SLASH&lt;&gt; Купите микропроцессоры
                                { "Russian", "Установить гипердвигатель &lt;IMG&gt;SLASH&lt;&gt; Микропроцессоры" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_TUTORIAL2_HYPERTITLE2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Установить гипердвигатель &lt;IMG&gt;SLASH&lt;&gt; Получите хроматический металл
                                { "Russian", "Установить гипердвигатель &lt;IMG&gt;SLASH&lt;&gt; Хроматический металл" },
                            }
                        },
                        --#endregion

                    }
                },
                { -- LANGUAGE/NMS_LOC9_RUSSIAN.MBIN
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_LOC9_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        --#region Разное
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TUT_ADV_MATS_MSG4C_ALT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Доберитесь до отмеченных координат: 0/1&#xA;Используйте &lt;TECHNOLOGY&gt;реактивный ранец&lt;&gt; (&lt;IMG&gt;JUMP&lt;&gt;) для полетов на небольшие расстояния.&#xA;Во время бега вы будете бежать автоматически, пока не закончится &lt;TECHNOLOGY&gt;выносливость&lt;&gt;.
                                -- Reach the marked coordinates&#xA;Use the &lt;TECHNOLOGY&gt;Jetpack&lt;&gt; (&lt;IMG&gt;JUMP&lt;&gt;) to fly short distances&#xA;While running, you will sprint automatically if you have available &lt;TECHNOLOGY&gt;stamina&lt;&gt;
                                { "Russian", "Доберитесь до отмеченных координат&#xA;Используйте &lt;TECHNOLOGY&gt;реактивный ранец&lt;&gt; (&lt;IMG&gt;JUMP&lt;&gt;) для полетов на небольшие расстояния&#xA;Во время бега вы будете бежать автоматически, пока не закончится &lt;TECHNOLOGY&gt;выносливость&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TUTORIAL_ABAND_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Галактика огромна и полна чудес, и вы можете исследовать ее &lt;FUEL&gt;в одиночку&lt;&gt;.&#xA;&#xA;В каждой системе можно исследовать несколько планет, но эта &lt;FUEL&gt;заброшенная вселенная&lt;&gt; лишена разумной жизни. Вам придется выживать самостоятельно посреди руин прошлого.&#xA;&#xA;Размещайте &lt;TECHNOLOGY&gt;исследовательские терминалы&lt;&gt; на своей &lt;TECHNOLOGY&gt;базе&lt;&gt;, чтобы получать доступ к новым технологиям.&#xA;&#xA;Находясь на поверхности планеты, вы можете открывать и переименовывать минералы, растения и животных с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;) и строить &lt;STELLAR&gt;базу&lt;&gt; с помощью меню созидания (&lt;IMG&gt;BUILD_MENU&lt;&gt;).
                                -- The galaxy is wide and full of wonder, and it is yours &lt;FUEL&gt;alone&lt;&gt; to explore.&#xA;&#xA;Each system has several planets to explore, but this &lt;FUEL&gt;abandoned universe&lt;&gt; is devoid of sentient life. You will have to survive alone amidst the wreckage of what came before.&#xA;&#xA;Deploy &lt;TECHNOLOGY&gt;Research Terminals&lt;&gt; within your &lt;TECHNOLOGY&gt;base&lt;&gt; to access new technologies.&#xA;&#xA;While on a planet, you can discover and rename mineral, flora and fauna using the &lt;TECHNOLOGY&gt;Analysis Visor&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), construct a &lt;STELLAR&gt;Base&lt;&gt; using the Build Menu (&lt;IMG&gt;BUILD_MENU&lt;&gt;).
                                { "Russian", "Галактика огромна и полна чудес, и вы можете исследовать её &lt;FUEL&gt;в одиночку﻿.&lt;&gt;&#xA;&#xA;В каждой системе можно исследовать несколько планет, но эта &lt;FUEL&gt;заброшенная вселенная&lt;&gt; лишена разумной жизни. Вам придётся выживать самостоятельно посреди руин прошлого.&#xA;&#xA;Размещайте &lt;TECHNOLOGY&gt;исследовательские терминалы&lt;&gt; на своей &lt;TECHNOLOGY&gt;базе﻿,&lt;&gt; чтобы получить доступ к новым технологиям.&#xA;&#xA;Находясь на поверхности планеты, вы можете открывать и переименовывать минералы, растения и животных с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;) и строить &lt;STELLAR&gt;базы&lt;&gt; с помощью меню строительства (&lt;IMG&gt;BUILD_MENU&lt;&gt;)." },
                            }
                        },
                        --#endregion

                    }
                },
            }
        }
    }
}
