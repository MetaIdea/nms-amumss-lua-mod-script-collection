NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]  = "_RuFixLOC8.pak",
    ["MOD_AUTHOR"]    = "gh0stwizard",
    ["NMS_VERSION"]   = "5.72",
    ["EXML_CREATE"]   = "false",
    ["MODIFICATIONS"] = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                { -- LANGUAGE/NMS_LOC8_RUSSIAN.MBIN
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_LOC8_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        -- класс мультитула
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BASESTATS_ROBOGUN_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Противостраж. (Sentinel)
                                { "Russian", "Страж" },
                            }
                        },
                        -- в CIV_STATUS запихнута подсказка, которая при нынешних лимитах никогда не влезит
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIRATE_FREI_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;FUEL&gt;Обнаружены противотранспортные торпеды: %TORPEDOES% &lt;&gt;&#xA;Перехватите торпеды врага!&#xA;%CIV_STATUS%
                                -- &lt;FUEL&gt;Anti-Freighter torpedoes detected: %TORPEDOES% &lt;&gt;&#xA;Scramble to intercept hostile torpedoes!&#xA;%CIV_STATUS%
                                { "Russian", "&lt;FUEL&gt;Запущено торпед: %TORPEDOES% &lt;&gt;&#xA;Перехватите торпеды!" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIRATE_FREI_MSG5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Пуск противотранспортных торпед через: &lt;FUEL&gt;%COUNTDOWN%&lt;&gt; сек.&#xA; Перехватите торпеды врага!&#xA;%CIV_STATUS%
                                { "Russian", "Запуск торпед через &lt;FUEL&gt;%COUNTDOWN%&lt;&gt; сек.&#xA;Перехватите торпеды врага!" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_HOSTILE_FREIGHTER_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Пролетите под щитами, чтобы уничтожить &lt;STELLAR&gt;генераторы щитов&lt;&gt;.&#xA;Прочность щитов &lt;FUEL&gt;враждебного&lt;&gt; крупного корабля: %SHIELD%%
                                { "Russian", "Пролетите под щитами, чтобы уничтожить &lt;STELLAR&gt;генераторы щитов&lt;&gt;&#xA;Щиты &lt;FUEL&gt;враждебного&lt;&gt; крупного корабля: %SHIELD%%" },
                            }
                        },
                        -- аналогично выше, в CIV_STATUS слишком много всего
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIRATE_FREI_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Пролетите под щитами, чтобы уничтожить &lt;STELLAR&gt;генераторы щитов&lt;&gt;.&#xA;Прочность щитов &lt;FUEL&gt;пиратского дредноута&lt;&gt;: %SHIELD%%&#xA;%CIV_STATUS%
                                { "Russian", "Пролетите под щитами, чтобы уничтожить &lt;STELLAR&gt;генераторы щитов&lt;&gt;&#xA;Щиты &lt;FUEL&gt;пиратского дредноута&lt;&gt;: %SHIELD%%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_CORRUPT1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Испорченные" }, -- Испорчен (Corrupted)
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_CORRUPT2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Покинутые" }, -- Покинут (Forsaken)
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_CORRUPT3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Мятежные" }, -- Мятежный
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_CORRUPT4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Никому не подчиняются" }, -- Не подчиняйся никому (Answer To None)
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_CORRUPT5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Отколовшиеся от Атласа" }, -- Отколовшийся от Атласа (Sharded from the Atlas)
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_CORRUPT6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Диссонирующие" }, -- Диссонант
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_CORRUPT7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Дисгармоничные" }, -- Дисгармоничный
                            }
                        },
                        -- не влезает после "Уклоняйтесь"
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NOTIFY_POLICE_FREIGHTER_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Целостность корпуса крупного корабля стражей: &lt;STELLAR&gt;%AMOUNT%%&lt;&gt;.&#xA;Перехватчики &lt;STELLAR&gt;отступят&lt;&gt;, если крупный корабль будет уничтожен.&#xA;Уклоняйтесь от огня или уничтожьте &lt;FUEL&gt;защитные турели&lt;&gt;, прежде чем вступать в бой.
                                { "Russian", "Корпус фригата стражей: &lt;STELLAR&gt;%AMOUNT%%&lt;&gt;&#xA;Перехватчики &lt;STELLAR&gt;отступят&lt;&gt;, если крупный корабль будет уничтожен" },
                            }
                        },
                        -- убираем обучение как заряжать щит, раньше надо было учиться; тяжело в учебе - легко на экзамене, хехе
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIRATE_FREI_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;FUEL&gt;ЗАРЯД ЩИТА %SHIELD%%&lt;&gt; Перезарядите его с помощью быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;).&#xA;Прочность корпуса &lt;FUEL&gt;дредноута&lt;&gt;: %HULL%%&#xA;%CIV_STATUS%
                                { "Russian", "&lt;FUEL&gt;ЩИТ ЗВЕЗДОЛЁТА: %SHIELD%%&lt;&gt;&#xA;%CIV_STATUS%" },
                            }
                        },
                        -- опять CIV_STATUS не влазиет
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIRATE_FREI_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поражайте &lt;STELLAR&gt;топливные стержни&lt;&gt; дредноута, чтобы повредить корпус.&#xA;Целостность корпуса &lt;FUEL&gt;дредноута&lt;&gt;: %HULL%%&#xA;%CIV_STATUS%
                                { "Russian", "Поражайте &lt;STELLAR&gt;топливные стержни&lt;&gt; дредноута, чтобы повредить корпус&#xA;Целостность корпуса &lt;FUEL&gt;дредноута&lt;&gt;: %HULL%%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_HOVERPET_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПарящийДроид
                                -- HoverDroid
                                { "Russian", "Парящий Дроид" },
                            }
                        },
                        -- иногда все не влазиет, добавил переносы строк
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ROBOMISS_3_NADA_MSG1A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Покажите &lt;SPECIAL&gt;атлантидий&lt;&gt; «электронному сердцу» и понаблюдайте за его реакцией.&#xA;Находите чувствительные к атлантидию вычислительные устройства, сканируя планеты &lt;STELLAR&gt;из космоса&lt;&gt; или с их &lt;STELLAR&gt;поверхности&lt;&gt;.
                                { "Russian", "Покажите &lt;SPECIAL&gt;атлантидий&lt;&gt; «электронному сердцу» и понаблюдайте за его реакцией.&#xA;Находите чувствительные к атлантидию вычислительные устройства,&#xA;сканируя планеты &lt;STELLAR&gt;из космоса&lt;&gt; или с их &lt;STELLAR&gt;поверхности&lt;&gt;." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ROBOMISS_3_NADA_MSG1A_NEXUS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Покажите &lt;SPECIAL&gt;атлантидий&lt;&gt; «электронному сердцу» и понаблюдайте за его реакцией.&#xA;Вызовите &lt;SPECIAL&gt;Космическую Аномалию&lt;&gt; и просканируйте ее на предмет чувствительных к атлантидию вычислительных устройств.
                                { "Russian", "Покажите &lt;SPECIAL&gt;атлантидий&lt;&gt; «электронному сердцу» и понаблюдайте за его реакцией.&#xA;Вызовите &lt;SPECIAL&gt;Космическую Аномалию&lt;&gt; и просканируйте ее&#xA;на предмет чувствительных к атлантидию вычислительных устройств." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ROBOMISS_3_NADA_MSG1B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Покажите &lt;SPECIAL&gt;атлантидий&lt;&gt; «электронному сердцу» и понаблюдайте за его реакцией.&#xA;Проведите &lt;STELLAR&gt;сканирование&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;), чтобы найти чувствительные к атлантидию вычислительные устройства.
                                { "Russian", "Покажите &lt;SPECIAL&gt;атлантидий&lt;&gt; «электронному сердцу» и понаблюдайте за его реакцией.&#xA;Проведите &lt;STELLAR&gt;сканирование&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;),&#xA;чтобы найти чувствительные к атлантидию вычислительные устройства." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ROBOMISS_3_NADA_MSG1B_NEXUS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Покажите &lt;SPECIAL&gt;атлантидий&lt;&gt; «электронному сердцу» и понаблюдайте за его реакцией.&#xA;&lt;STELLAR&gt;Просканируйте&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;) &lt;SPECIAL&gt;Космическую Аномалию&lt;&gt;, чтобы найти чувствительные к атлантидию вычислительные устройства.
                                { "Russian", "Покажите &lt;SPECIAL&gt;атлантидий&lt;&gt; «электронному сердцу» и понаблюдайте за его реакцией.&#xA;&lt;STELLAR&gt;Просканируйте&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;) &lt;SPECIAL&gt;Космическую Аномалию&lt;&gt;,&#xA;чтобы найти чувствительные к атлантидию вычислительные устройства." },
                            }
                        },
                        -- первая строка не влазиет
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ROBOMISS_3_NADA_MSG1C_FACT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Чувствительное к атлантидию вычислительное устройство обнаружено в &lt;STELLAR&gt;операционном терминале фабрики&lt;&gt;.&#xA;Доберитесь до него, чтобы опробовать атлантидий.
                                { "Russian", "Чувствительное к атлантидию вычислительное устройство&#xA;обнаружено в &lt;STELLAR&gt;операционном терминале фабрики&lt;&gt;.&#xA;Доберитесь до него, чтобы опробовать атлантидий." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ROBOMISS_3_NADA_MSG1C_FACTA" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Чувствительное к атлантидию вычислительное устройство обнаружено в &lt;STELLAR&gt;операционном терминале фабрики&lt;&gt;.&#xA;Доберитесь до него, чтобы опробовать атлантидий.&#xA;Поставьте &lt;TECHNOLOGY&gt;плазмомет&lt;&gt; в свой мультитул.
                                { "Russian", "Чувствительное к атлантидию вычислительное устройство&#xA;обнаружено в &lt;STELLAR&gt;операционном терминале фабрики&lt;&gt;.&#xA;Доберитесь до него, чтобы опробовать атлантидий.&#xA;Поставьте &lt;TECHNOLOGY&gt;плазмомет&lt;&gt; в свой мультитул." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ROBOMISS_3_NADA_MSG1C_FACTB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Чувствительное к атлантидию вычислительное устройство обнаружено в &lt;STELLAR&gt;операционном терминале фабрики&lt;&gt;.&#xA;Доберитесь до него, чтобы опробовать атлантидий.&#xA;Меняйте режимы оружия с помощью &lt;IMG&gt;CYCLEWEAPON&lt;&gt;
                                { "Russian", "Чувствительное к атлантидию вычислительное устройство&#xA;обнаружено в &lt;STELLAR&gt;операционном терминале фабрики&lt;&gt;.&#xA;Доберитесь до него, чтобы опробовать атлантидий.&#xA;Меняйте режимы оружия с помощью &lt;IMG&gt;CYCLEWEAPON&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ROBOMISS_3_NADA_MSG1C_FACTC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Чувствительное к атлантидию вычислительное устройство обнаружено в &lt;STELLAR&gt;операционном терминале фабрики&lt;&gt;.&#xA;Доберитесь до него, чтобы опробовать атлантидий.&#xA;Укрепленные двери можно &lt;FUEL&gt;уничтожить&lt;&gt; (&lt;IMG&gt;ATTACK&lt;&gt;).
                                { "Russian", "Чувствительное к атлантидию вычислительное устройство&#xA;обнаружено в &lt;STELLAR&gt;операционном терминале фабрики&lt;&gt;.&#xA;Доберитесь до него, чтобы опробовать атлантидий.&#xA;Укрепленные двери можно &lt;FUEL&gt;уничтожить&lt;&gt; (&lt;IMG&gt;ATTACK&lt;&gt;)." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ROBOMISS_3_NADA_MSG1D_FACT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Чувствительное к атлантидию вычислительное устройство обнаружено в &lt;STELLAR&gt;операционном терминале фабрики&lt;&gt;.&#xA;Покажите атлантидий, чтобы опробовать его влияние на компьютер.
                                { "Russian", "Чувствительное к атлантидию вычислительное устройство&#xA;обнаружено в &lt;STELLAR&gt;операционном терминале фабрики&lt;&gt;.&#xA;Покажите атлантидий, чтобы опробовать его влияние на компьютер." },
                            }
                        },
                        -- первое предложение есть в loc 7, UI_SPACE_FOLLOW_HOLD_TIP
                        -- второе предложение не влазиет если включено в loc 1, NOTIFY_SPACE_POLICE
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SPACE_FOLLOW_HOLD_TIP_ALT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Удерживайте &lt;IMG&gt;AUTOFOLLOW&lt;&gt;, чтобы захватить цель и преследовать ее.&#xA;Изменяйте &lt;TECHNOLOGY&gt;настройки мощности&lt;&gt; корабля с помощью &lt;IMG&gt;CYCLE_POWER&lt;&gt;
                                { "Russian", "&lt;TECHNOLOGY&gt;Настройки мощности&lt;&gt; корабля: &lt;IMG&gt;CYCLE_POWER&lt;&gt;" },
                            }
                        },
                        -- в каталоге, описание персональных достижений
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DRONE_SHARDS_TITLE_9" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Светящ. (Radiant)
                                { "Russian", "Сияющий" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "PIRATE_PLAYER_RANK_NORMAL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Неизвестно (Unknown)
                                { "Russian", "Неизвестный" },
                            }
                        },
                        -- не вмещается подсказка из экспедиции на "и другую инфор" (400 символов)
                        -- и какой чудак делал перевод и точки расставил после переноса строки????
                        -- если вы, господин переводчик, читаете это, то зарубите на носу не ставить точки, если их нет в оригинале!!!
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_OPTIONS_HINT_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;Быстрое меню&lt;&gt; (&lt;IMG&gt;QUICK_MENU&lt;&gt;) дает доступ к различным настройкам&#xA;.В разделе &lt;TECHNOLOGY&gt;«Инструменты»&lt;&gt; можно &lt;STELLAR&gt;менять обзор камеры&lt;&gt;.&#xA;Дополнительные настройки сложности и особых возможностей есть в &lt;TECHNOLOGY&gt;главном меню&lt;&gt; (&lt;IMG&gt;OPTIONS&lt;&gt;).&#xA;Переключайте подсказки для задания и другую информацию с помощью &lt;IMG&gt;SHOWHUD&lt;&gt;.
                                -- The &lt;TECHNOLOGY&gt;Quick Menu&lt;&gt; (&lt;IMG&gt;QUICK_MENU&lt;&gt;) allows fast access to many options&#xA;The &lt;TECHNOLOGY&gt;Utilities&lt;&gt; section of the quick menu can &lt;STELLAR&gt;change camera views&lt;&gt;&#xA;Find more accessibility and difficulty settings in the &lt;TECHNOLOGY&gt;Main Menu&lt;&gt; (&lt;IMG&gt;OPTIONS&lt;&gt;)&#xA;Cycle active mission tips and other information with &lt;IMG&gt;SHOWHUD&lt;&gt;
                                { "Russian", "Используйте &lt;TECHNOLOGY&gt;Быстрое меню&lt;&gt; (&lt;IMG&gt;QUICK_MENU&lt;&gt;)&#xA;В разделе &lt;TECHNOLOGY&gt;«Инструменты»&lt;&gt; &lt;STELLAR&gt;меняйте обзор камеры&lt;&gt;&#xA;Дополнительные настройки сложности находятся в &lt;TECHNOLOGY&gt;главном меню&lt;&gt; (&lt;IMG&gt;OPTIONS&lt;&gt;)&#xA;Переключение подсказок для задания и другой информации (&lt;IMG&gt;SHOWHUD&lt;&gt;)" },
                            }
                        },
                        -- Orbital + Worlds Part I
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TRADE_DISCOUNT_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Скидка %SAVING% на &lt;TRADEABLE&gt;&lt;IMG&gt;НАНИТЫ&lt;&gt;&lt;&gt;
                                -- &lt;TRADEABLE&gt;&lt;IMG&gt;NANITE&lt;&gt;%SAVING% discount&lt;&gt;
                                { "Russian", "&lt;TRADEABLE&gt;Скидка &lt;IMG&gt;NANITE&lt;&gt; %SAVING%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BUGS_HINT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружен мерзкая стая
                                { "Russian", "Обнаружена мерзкая стая" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_QUEEN_NOTIFY_TITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружен мерзкая стая
                                { "Russian", "Обнаружена мерзкая стая" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TRADE_SURGE_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сканер экономики на моем корабле обнаружил событие &lt;TECHNOLOGY&gt;роста торговли&lt;&gt; в ближайшей &lt;STELLAR&gt;%SYSTEM% системе&lt;&gt;. Если мне удастся найти востребованные на рынке материалы, я смогу неплохо заработать...
                                -- My ship's economy scanner detected a &lt;TECHNOLOGY&gt;trade surge&lt;&gt; event in the nearby &lt;STELLAR&gt;%SYSTEM% system&lt;&gt;. If I can locate the materials currently in demand, there could be substantial profits to be made...
                                { "Russian", "Сканер экономики на моем корабле обнаружил &lt;TECHNOLOGY&gt;рост торговли&lt;&gt; в ближайшей &lt;STELLAR&gt;системе %SYSTEM%&lt;&gt;. Если мне удастся найти востребованные на рынке товары, я смогу неплохо заработать..." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TRADE_SURGE_OBJ1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найти экономику товара &lt;STELLAR&gt;%ECON_SOURCE%&lt;&gt;
                                -- Locate a &lt;STELLAR&gt;%ECON_SOURCE%&lt;&gt; economy
                                { "Russian", "Найти экономику &lt;STELLAR&gt;%ECON_SOURCE%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TRADE_SURGE_OBJ1_ALT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Собрать востребованные товары
                                -- Collect in-demand goods
                                { "Russian", "Приобрести востребованные товары" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TRADE_SURGE_OBJ1_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- В &lt;STELLAR&gt;системе %SYSTEM% &lt;&gt; обнаружен рост торговли. Найдите экономику товара &lt;TECHNOLOGY&gt;%ECON_SOURCE%&lt;&gt;, чтобы приобрести требуемые продукты.&#xA;&#xA;Выберите любую систему на &lt;TECHNOLOGY&gt;галактической карте&lt;&gt; и используйте &lt;IMG&gt;GALAXYEXPAND&lt;&gt; для просмотра ее экономического класса.&#xA;&#xA;Текущая прибыль от этого роста торговли: &lt;TRADEABLE&gt;%AMOUNT%&lt;IMG&gt;ШТ.&lt;&gt;&lt;&gt;.&#xA;&#xA;Рост рынка завершится через: &lt;STELLAR&gt;%TIME%&lt;&gt;.
                                -- A surge in trading activity has been detected in the &lt;STELLAR&gt;%SYSTEM% system&lt;&gt;. Locate a &lt;TECHNOLOGY&gt;%ECON_SOURCE%&lt;&gt; economy to purchase the required goods.&#xA;&#xA;In the &lt;TECHNOLOGY&gt;Galaxy Map&lt;&gt;, select any system and use &lt;IMG&gt;GALAXYEXPAND&lt;&gt; to view its economic class.&#xA;&#xA;Current profits from this trading surge: &lt;TRADEABLE&gt;%AMOUNT%&lt;IMG&gt;UNITS&lt;&gt;&lt;&gt;.&#xA;&#xA;Market surge ending in: &lt;STELLAR&gt;%TIME%&lt;&gt;.
                                { "Russian", "Обнаружен экономический бум в &lt;STELLAR&gt;системе %SYSTEM%&lt;&gt;. Находите системы с экономическим классом &lt;TECHNOLOGY&gt;%ECON_SOURCE%&lt;&gt; и приобретайте в них востребованные товары.&#xA;&#xA;Выберите любую систему на &lt;TECHNOLOGY&gt;галактической карте&lt;&gt; и используйте &lt;IMG&gt;GALAXYEXPAND&lt;&gt; для просмотра ее экономического класса.&#xA;&#xA;Текущая прибыль от этого роста торговли: &lt;TRADEABLE&gt;&lt;IMG&gt;UNITSMALL&lt;&gt;%AMOUNT%&lt;&gt;&#xA;&#xA;Экономический бум завершится через &lt;STELLAR&gt;%TIME%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TRADE_SURGE_OBJ2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Продать товары в &lt;STELLAR&gt;системе %SYSTEM%&lt;&gt;
                                -- Sell goods in the &lt;STELLAR&gt;%SYSTEM%&lt;&gt; system
                                { "Russian", "Продать товары в системе &lt;STELLAR&gt;%SYSTEM%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TRADE_SURGE_OBJ2_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- В &lt;STELLAR&gt;системе %SYSTEM% &lt;&gt; обнаружен рост торговли. Продавайте продукты, производимые экономикой товара &lt;TECHNOLOGY&gt;%ECON_SOURCE%&lt;&gt;, и получайте повышенную прибыль.&#xA;&#xA;Находясь в космосе, откройте галактическую карту (&lt;IMG&gt;QUICK_MENU&lt;&gt;) и следуйте по &lt;TRADEABLE&gt;пути задания&lt;&gt; (&lt;IMG&gt;GALAXY_NAV_L&lt;&gt;&lt;IMG&gt;GALAXY_NAV_R&lt;&gt;), чтобы вернуться в систему %SYSTEM%.&#xA;&#xA;Текущая прибыль от этого роста торговли: &lt;TRADEABLE&gt;%AMOUNT%&lt;IMG&gt;ШТ.&lt;&gt;&lt;&gt;.&#xA;&#xA;Рост рынка завершится через: &lt;STELLAR&gt;%TIME%&lt;&gt;.
                                -- A surge in trading activity has been detected in the &lt;STELLAR&gt;%SYSTEM% system&lt;&gt;. Sell goods generated by a &lt;TECHNOLOGY&gt;%ECON_SOURCE%&lt;&gt; economy for an increased profit.&#xA;&#xA;While in space, access the Galaxy Map (&lt;IMG&gt;QUICK_MENU&lt;&gt;) and follow the &lt;TRADEABLE&gt;Mission Path&lt;&gt; (&lt;IMG&gt;GALAXY_NAV_L&lt;&gt;&lt;IMG&gt;GALAXY_NAV_R&lt;&gt;) to return to the %SYSTEM% system.&#xA;&#xA;Current profits from this trading surge: &lt;TRADEABLE&gt;%AMOUNT%&lt;IMG&gt;UNITS&lt;&gt;&lt;&gt;.&#xA;&#xA;Market surge ending in: &lt;STELLAR&gt;%TIME%&lt;&gt;.
                                { "Russian", "В &lt;STELLAR&gt;системе %SYSTEM%&lt;&gt; обнаружен рост торговли. Продавайте товары, производимые в системах экономического класса &lt;TECHNOLOGY&gt;%ECON_SOURCE%&lt;&gt;, и получайте повышенную прибыль.&#xA;&#xA;Находясь в космосе, откройте &lt;TECHNOLOGY&gt;галактическую карту&lt;&gt; (&lt;IMG&gt;QUICK_MENU&lt;&gt;).&#xA;Следуйте по &lt;TRADEABLE&gt;пути задания&lt;&gt; (&lt;IMG&gt;GALAXY_NAV_L&lt;&gt;&lt;IMG&gt;GALAXY_NAV_R&lt;&gt;), чтобы вернуться в &lt;STELLAR&gt;систему %SYSTEM%&lt;&gt;.&#xA;&#xA;Текущая прибыль: &lt;TRADEABLE&gt;&lt;IMG&gt;UNITSMALL&lt;&gt;%AMOUNT%&lt;&gt;&#xA;&#xA;Рост рынка завершится через &lt;STELLAR&gt;%TIME%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TRADE_SURGE_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- В ближайшей системе подскочила цена продажи некоторых товаров.&#xA; Найдите экономику, где продаются товары &lt;STELLAR&gt;%ECON_SOURCE%&lt;&gt;и приобрести их.&#xA;Выберите любую систему на &lt;TECHNOLOGY&gt;галактической карте&lt;&gt; и используйте &lt;IMG&gt;GALAXYEXPAND&lt;&gt; для просмотра данных о ее экономике&#xA;Рост рынка завершится через: &lt;STELLAR&gt;%TIME%&lt;&gt;
                                -- Sell prices spiking in nearby system&#xA;Locate a &lt;STELLAR&gt;%ECON_SOURCE%&lt;&gt; economy to purchase in-demand goods&#xA;Select any system in the &lt;TECHNOLOGY&gt;Galaxy Map&lt;&gt; and use &lt;IMG&gt;GALAXYEXPAND&lt;&gt; to view economy data&#xA;Market surge ending in: &lt;STELLAR&gt;%TIME%&lt;&gt;
                                { "Russian", "В ближайшей системе произошел скачок цен&#xA;Покупайте товары, которые производят в системах&#xA;экономического класса «&lt;STELLAR&gt;%ECON_SOURCE%&lt;&gt;»&#xA;Рост рынка завершится через &lt;STELLAR&gt;%TIME%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TRADE_SURGE_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Отправляйтесь в систему &lt;STELLAR&gt;%SYSTEM%&lt;&gt;, чтобы извлечь выгоду из &lt;TECHNOLOGY&gt;роста торговли&lt;&gt;Доступно &#xA;%CURRENT%&lt;IMG&gt;ШТ.&lt;&gt; востребованных товаров на продажу&#xA;Прибыль от этого роста торговли: &lt;TRADEABLE&gt;%AMOUNT%&lt;IMG&gt;ШТ.&lt;&gt;&lt;&gt;&#xA;Рост рынка завершится через: &lt;STELLAR&gt;%TIME%&lt;&gt;
                                -- Visit the &lt;STELLAR&gt;%SYSTEM%&lt;&gt; system to take advantage of a &lt;TECHNOLOGY&gt;trading surge&lt;&gt;&#xA;%CURRENT%&lt;IMG&gt;UNITS&lt;&gt; of in-demand goods available to sell&#xA;Profits from this trading surge: &lt;TRADEABLE&gt;%AMOUNT%&lt;IMG&gt;UNITS&lt;&gt;&lt;&gt;&#xA;Market surge ending in: &lt;STELLAR&gt;%TIME%&lt;&gt;
                                { "Russian", "Отправляйтесь в систему &lt;STELLAR&gt;%SYSTEM%&lt;&gt;, чтобы &lt;TECHNOLOGY&gt;извлечь выгоду&lt;&gt;&#xA;Имеется товаров для продажи на сумму &lt;IMG&gt;UNITSMALL&lt;&gt;%CURRENT%&#xA;Текущая прибыль: &lt;TRADEABLE&gt;&lt;IMG&gt;UNITSMALL&lt;&gt;%AMOUNT%&lt;&gt;&#xA;Рост рынка завершится через &lt;STELLAR&gt;%TIME%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TRADE_SURGE_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружена местная экономика товара &lt;TECHNOLOGY&gt;%ECON_SOURCE%&lt;&gt;!&#xA;Отправляйтесь на &lt;COMMODITY&gt;космическую станцию&lt;&gt;, чтобы приобрести востребованные товары.&#xA;Рост рынка завершится через: &lt;STELLAR&gt;%TIME%&lt;&gt;
                                -- Local &lt;TECHNOLOGY&gt;%ECON_SOURCE%&lt;&gt; economy detected!&#xA;Visit the &lt;COMMODITY&gt;Space Station&lt;&gt; to purchase in-demand goods&#xA;Market surge ending in: &lt;STELLAR&gt;%TIME%&lt;&gt;
                                { "Russian", "Местная экономика, &lt;TECHNOLOGY&gt;%ECON_SOURCE%&lt;&gt;, &lt;COMMODITY&gt;подходит для покупок&lt;&gt;!&#xA;Купите востребованные товары на &lt;COMMODITY&gt;космической станции&lt;&gt;.&#xA;Рост рынка завершится через &lt;STELLAR&gt;%TIME%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TRADE_SURGE_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Местная экономика &lt;COMMODITY&gt;растет&lt;&gt;!&#xA;Доступно %CURRENT%&lt;IMG&gt;ШТ.&lt;&gt; востребованных товаров на продажу&#xA;Прибыль от этого роста торговли:: &lt;TRADEABLE&gt;%AMOUNT%&lt;IMG&gt;ШТ.&lt;&gt;&lt;&gt;&#xA;Рост рынка завершится через: &lt;STELLAR&gt;%TIME%&lt;&gt;
                                -- Local economy &lt;COMMODITY&gt;surging&lt;&gt;!&#xA;%CURRENT%&lt;IMG&gt;UNITS&lt;&gt; of in-demand goods available to sell&#xA;Profits from this trading surge: &lt;TRADEABLE&gt;%AMOUNT%&lt;IMG&gt;UNITS&lt;&gt;&lt;&gt;&#xA;Market surge ending in: &lt;STELLAR&gt;%TIME%&lt;&gt;
                                { "Russian", "Местная экономика &lt;COMMODITY&gt;растет&lt;&gt;!&#xA;Стоимость товаров для продажи в вашем распоряжении: &lt;IMG&gt;UNITSMALL&lt;&gt;%CURRENT%&#xA;Прибыль от этого роста торговли: &lt;TRADEABLE&gt;&lt;IMG&gt;UNITSMALL&lt;&gt;%AMOUNT%&lt;&gt;&#xA;Рост рынка завершится через &lt;STELLAR&gt;%TIME%&lt;&gt;" },
                            }
                        },
                        -- пункт в меню сканера торговли
                        -- по факту находит ближайшую систему, у которой много близких соседних систем, где можно скупать товары
                        -- дословный перевод: найти пики (бумы, всплески) торговли
                        -- в русском языке дословные варианты не прижились (кроме всплеска)
                        -- а если говорить простым языком, то игра ищет рынок для спекуляций
                        -- лол, начать спекуляции - самое точное определение того, чем будет заниматься игрок (не одобряю)
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ECON_SCANNER_OPT_B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поиск роста торговли
                                -- Search for trade surges
                                { "Russian", "Найти всплеск торговли" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TRADE_SURGE_ACTIVE_ERR" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сканирование не удалось &lt;IMG&gt;SLASH&lt;&gt; Рост торговли уже обнаружен
                                -- Scan Failed &lt;IMG&gt;SLASH&lt;&gt; Existing Trade Surge Detected
                                { "Russian", "Сканирование не удалось &lt;IMG&gt;SLASH&lt;&gt; Всплеск торговли уже найден" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TRADE_SURGE_TITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Рост торговли: система %SYSTEM%
                                -- Trade Surge: %SYSTEM% System
                                { "Russian", "Всплеск торговли в системе %SYSTEM%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TRADE_SURGE_LABEL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружен рост торговли
                                -- Trade Surge Detected
                                { "Russian", "Всплеск торговли" },
                            }
                        },
                        -- на центральном экране в кабине
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ECON_SCANNER_HUD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Торговый компьютер включен
                                -- Trade Computer Active
                                --{ "Russian", "ТОРГОВЫЙ КОМПЬЮТЕР ВКЛЮЧЕН" },
                                { "Russian", "НМС: ТОРГОВЛЯ 65452.7&#xA;ГОТОВА К РАБОТЕ" },
                            }
                        },
                        -- какой нафиг "согласованный з-т"???
                        -- кто его с кем согласовывал, а главное в чем был смысл согласования?
                        -- товарищъ переводчик, высыпайтесь, читайте, что перевели
                        -- далее, "Согласованный звездолет" не влазеет, разраб не переделал UI
                        -- другие варианты: зарегистрированный, утвержденный
                        -- самый прикол в том, что эта надпись используется и в режиме сканера =\
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NATURAL_SHIP_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Согласованный звездолет
                                -- Authenticated Starship
                                { "Russian", "Звездолёт®" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NATURAL_SHIP_PRICE_BONUS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;Согласованный&lt;&gt; звездолет: бонус для встречной продажи
                                -- &lt;TECHNOLOGY&gt;Authenticated&lt;&gt; Starship - Trade-in Bonus
                                { "Russian", "&lt;TECHNOLOGY&gt;Бонус&lt;&gt; встречной продажи" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "COMPARE_TRADE_IN_NATURAL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Согласованная встречная продажа: &lt;STAT&gt;%TOTAL%&lt;&gt;
                                -- Authenticated Trade-In: &lt;STAT&gt;%TOTAL%&lt;&gt;
                                { "Russian", "Аттестованная встречная продажа: &lt;STAT&gt;%TOTAL%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BUILT_SHIP_TITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ИЗГОТОВЛЕННЫЙ ЗВЕЗДОЛЕТ
                                -- FABRICATED STARSHIP
                                { "Russian", "САМОСБОРНЫЙ ЗВЕЗДОЛЁТ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ECON_SCANNER_LANG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Загружается местная &lt;TECHNOLOGY&gt;торговая база данных&lt;&gt;[ &lt;STELLAR&gt;%TIME_PERCENT%%&lt;&gt; ]&lt;NEWLINE&gt;Выберите нужное действие:
                                -- Local &lt;TECHNOLOGY&gt;trade database&lt;&gt; loading [ &lt;STELLAR&gt;%TIME_PERCENT%%&lt;&gt; ]&lt;NEWLINE&gt;Select desired operation:
                                { "Russian", "Загрузка местной &lt;TECHNOLOGY&gt;торговой базы данных&lt;&gt; [ &lt;STELLAR&gt;%TIME_PERCENT%%&lt;&gt; ]&lt;NEWLINE&gt;Выберите действие:" },
                            }
                        },
                        -- в описании модулей стражей (мультитул)
                        -- обрезается на "улучшение технологии"
                        -- и этот случай фееричен, т.к. текста в описании этих модулей значительно меньше, чем у остальных
                        -- вернуть взад когда исправят UI
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UPGRADE_1_STAT_ROBO_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Импровизированная и грубоватая, эта технология все равно обеспечивает значительное улучшение технологии &lt;STELLAR&gt;«%STAT1%»&lt;&gt;.
                                -- Improvised and rough around the edges, it nonetheless offers a significant upgrade to &lt;STELLAR&gt;%STAT1%&lt;&gt;.
                                { "Russian", "Импровизированная и грубоватая, эта технология значительно повышает параметры." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UPGRADE_2_STAT_ROBO_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Импровизированная и грубоватая, эта технология все равно обеспечивает значительное улучшение технологий &lt;STELLAR&gt;«%STAT1%»&lt;&gt; и &lt;STELLAR&gt;«%STAT2%»&lt;&gt;.
                                -- Improvised and rough around the edges, it nonetheless offers a significant upgrade to &lt;STELLAR&gt;%STAT1%&lt;&gt; and &lt;STELLAR&gt;%STAT2%&lt;&gt;.
                                { "Russian", "Импровизированная и грубоватая, эта технология значительно повышает параметры." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UPGRADE_3_STAT_ROBO_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Импровизированная и грубоватая, эта технология все равно обеспечивает значительное улучшение технологий &lt;STELLAR&gt;«%STAT1%»&lt;&gt;, &lt;STELLAR&gt;«%STAT2%»&lt;&gt; и &lt;STELLAR&gt;«%STAT3%»&lt;&gt;.
                                -- Improvised and rough around the edges, it nonetheless offers a significant upgrade to &lt;STELLAR&gt;%STAT1%&lt;&gt;, &lt;STELLAR&gt;%STAT2%&lt;&gt; and &lt;STELLAR&gt;%STAT3%&lt;&gt;.
                                { "Russian", "Импровизированная и грубоватая, эта технология значительно повышает параметры." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UPGRADE_4_STAT_ROBO_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Импровизированная и грубоватая, эта технология все равно обеспечивает значительное улучшение технологий &lt;STELLAR&gt;«%STAT1%»&lt;&gt;, &lt;STELLAR&gt;«%STAT2%»&lt;&gt;, &lt;STELLAR&gt;«%STAT3%»&lt;&gt; и &lt;STELLAR&gt;«%STAT4%»&lt;&gt;.
                                -- Improvised and rough around the edges, it nonetheless offers a significant upgrade to &lt;STELLAR&gt;%STAT1%&lt;&gt;, &lt;STELLAR&gt;%STAT2%&lt;&gt;, &lt;STELLAR&gt;%STAT3%&lt;&gt; and &lt;STELLAR&gt;%STAT4%&lt;&gt;.
                                { "Russian", "Импровизированная и грубоватая, эта технология значительно повышает параметры." },
                            }
                        },
                        -- ох уж эти любители включений
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_LAUNCH_STARTED_UI" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ЗАЖИГАНИЕ ГЛАВНОГО ДВИГАТЕЛЯ ВКЛЮЧЕНО
                                -- MAIN ENGINE IGNITION STARTED
                                { "Russian", "ЗАЖИГАНИЕ&#xA;ГЛАВНОГО ДВИГАТЕЛЯ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_LAUNCH_FAIL_FUEL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ЗАЖИГАНИЕ НЕ ВЫПОЛНЕНО: НЕДОСТАТОЧНО ТОПЛИВА
                                -- IGNITION FAILED: FUEL LOW
                                { "Russian", "ЗАЖИГАНИЕ НЕ ВЫПОЛНЕНО&#xA;МАЛО ТОПЛИВА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_LAUNCH_FAIL_DAMAGE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ЗАЖИГАНИЕ НЕ ВЫПОЛНЕНО: КРИТИЧЕСКИЕ ПОВРЕЖДЕНИЯ
                                -- IGNITION FAILED: CRITICAL DAMAGE
                                { "Russian", "ЗАЖИГАНИЕ НЕ ВЫПОЛНЕНО&#xA;КРИТИЧЕСКИЕ ПОВРЕЖДЕНИЯ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WATER_LANDING_HUD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ВКЛЮЧЕНЫ ДВИГАТЕЛИ ПОСАДКИ НА ВОДУ
                                -- AQUATIC LANDING JETS ACTIVE
                                { "Russian", "ДВИГАТЕЛИ РАБОТАЮТ В РЕЖИМЕ ПРИВОДНЕНИЯ" },
                            }
                        },
                        -- лишние точки
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EVENT_FAILURE_ROBOCAMP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Локация не принесла результатов. &lt;IMG&gt;SLASH&lt;&gt; В данной системе гармонии не обнаружены.
                                -- Locator failed &lt;IMG&gt;SLASH&lt;&gt; No harmonies detected in current system
                                { "Russian", "Локация не принесла результатов &lt;IMG&gt;SLASH&lt;&gt; В данной системе гармонии не обнаружены" },
                            }
                        },
                        -- на экране установки ячейки. сокращаем чтобы не было прокрутки
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SLOT_PURCHASE_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Выберите любое пустое место с помощью &lt;IMG&gt;FE_SELECT&lt;&gt;, чтобы установить новую ячейку.
                                -- Select any empty space with &lt;IMG&gt;FE_SELECT&lt;&gt; to install new slot
                                { "Russian", "Выберите любое пустое место (&lt;IMG&gt;FE_SELECT&lt;&gt;) для установки ячейки" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SLOT_PURCHASE_SUB_NUM" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Выберите любое пустое место с помощью &lt;IMG&gt;FE_SELECT&lt;&gt;, чтобы установить новую ячейку (доступно: %NUM%).
                                -- Select any empty space with &lt;IMG&gt;FE_SELECT&lt;&gt; to install new slot (%NUM% available)
                                { "Russian", "Выберите любое пустое место (&lt;IMG&gt;FE_SELECT&lt;&gt;) для установки ячейки (доступно %NUM%)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DISC_ADD_CUSTOM_WONDER_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добавить открытие в личные записи.
                                -- Add Discovery to Personal Records
                                { "Russian", "Добавить открытие в личные записи" },
                            }
                        },
                        -- боссы и их полоски
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WALKER_BAR_SHIELD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОЗГОВАЯ КЛЕТКА
                                -- BRAIN CAGE
                                { "Russian", "МОЗГ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WALKER_BAR_HULL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ВНУТРЕННЕЕ ЯДРО
                                -- INNER CORE
                                { "Russian", "ЯДРО" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WALKER_BAR_LEGS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- БРОНЯ НОГИ
                                -- LEG ARMOUR
                                { "Russian", "НОГИ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BUG_QUEEN_BAR_SHIELD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ДО РОЖДЕНИЯ
                                -- SPAWNING IN
                                { "Russian", "НЕРЕСТ" },
                            }
                        },
                        -- указывается под водой
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TOX_READOUT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Токс: %NUM%
                                -- %NUM% Tox
                                { "Russian", "%NUM% Токс" },
                            }
                        },
                        -- а это на земле
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_RAD_READOUT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Рад: %NUM%
                                -- %NUM% Rad
                                { "Russian", "%NUM% Рад" },
                            }
                        },
                        -- точка лишняя, на экране ввода кода для разблокировки терминала олдфагов
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ROBOT_CAMP_SEAL_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Просканируйте регистры памяти на предмет гармонических знаков.
                                -- Scan memory registers for harmonic glyphs
                                { "Russian", "Просканируйте регистры памяти на предмет гармонических знаков" },
                            }
                        },
                        -- последнее предложение не влазеет, заканчивается на "чтобы найти аутофаг"
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BUILDER_SE_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;Полифоническое ядро&lt;&gt; обнаружило сигнал аутофага.&#xA;Доберитесь до его источника и проведите сканирование (&lt;IMG&gt;SCAN&lt;&gt;), чтобы найти аутофага.
                                -- &lt;TECHNOLOGY&gt;Polyphonic Core&lt;&gt; detected nearby Autophage signal&#xA;Reach the signal location and use &lt;IMG&gt;SCAN&lt;&gt; to reveal the Autophage
                                { "Russian", "&lt;TECHNOLOGY&gt;Полифоническое ядро&lt;&gt; обнаружило сигнал аутофага&#xA;Доберитесь до места и выполните сканирование (&lt;IMG&gt;SCAN&lt;&gt;)" },
                            }
                        },
                        -- отображается при наведении на ресурс на планете, но терраформера в руке нет
                        -- скобка и кнопка не отображаются, не влезают как обычно
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TM_CYCLE_TO_MINE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Выберите ландшафтный манипулятор (&lt;IMG&gt;CYCLEWEAPON&lt;&gt;)
                                -- Equip Terrain Manipulator (&lt;IMG&gt;CYCLEWEAPON&lt;&gt;)
                                { "Russian", "Взять терраформер (&lt;IMG&gt;CYCLEWEAPON&lt;&gt;)" },
                            }
                        },
                        -- то что рой приближается написано в заголовке сверху
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "CORRUPT_SENTINEL_ESCAPE_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Испорченный рой приближается к вам!&#xA;Покиньте местность или спрячьтесь, чтобы очистить себя от их диссонанса.&#xA;Осталось: &lt;FUEL&gt;%TIME% сек.&lt;&gt;
                                -- The corrupted swarm is drawn to your position!&#xA;Leave the area or hide to purge yourself of their dissonance&#xA;Time Remaining: &lt;FUEL&gt;%TIME%s&lt;&gt;
                                { "Russian", "Испорченный рой приближается к вам&#xA;Покиньте местность или спрячьтесь&#xA;Осталось времени: &lt;FUEL&gt;%TIME% сек.&lt;&gt;" },
                            }
                        },
                        -- убираем лишние точки
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_VIEW_WONDER_DISC_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Открыть подробности открытия в этой записи.
                                -- Open Discovery details for this record
                                { "Russian", "Узнать подробнее об открытии в этой записи" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_RENAME_CUSTOM_WONDER_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сменить название этой записи.
                                -- Set a new name for this record
                                { "Russian", "Сменить название этой записи" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DELETE_CUSTOM_WONDER_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Удалить запись из каталога чудес.
                                -- Remove this record from the Wonders Catalogue
                                { "Russian", "Удалить запись из Каталога Чудес" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_STARCHART_ROBOT_HINT_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Используйте &lt;STELLAR&gt;эхолокатор&lt;&gt;, чтобы найти его гармонический источник.&#xA;Найдите устройство в своем инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;) и выберите &lt;STELLAR&gt;резонанс&lt;&gt; (&lt;IMG&gt;FE_ALT1&lt;&gt;).
                                -- Use the &lt;STELLAR&gt;Echo Locator&lt;&gt; to trace its harmonic origin&#xA;Locate the device within your inventory (&lt;IMG&gt;INVENTORY&lt;&gt;) and select &lt;STELLAR&gt;Resonate&lt;&gt; (&lt;IMG&gt;FE_ALT1&lt;&gt;)
                                { "Russian", "Отследите &lt;SPECIAL&gt;гармонический источник&lt;&gt;&#xA;Найдите &lt;STELLAR&gt;эхолокатор&lt;&gt; в своем инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;)&#xA;Затем выберите &lt;STELLAR&gt;резонанс&lt;&gt; (&lt;IMG&gt;FE_ALT1&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CAMP_REVEAL_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Обнаружен гармонический след&lt;&gt;.&#xA;Изучите эхо, чтобы узнать о его создателе.
                                -- &lt;SPECIAL&gt;Harmonic trace detected&lt;&gt;&#xA;Investigate the echo to learn about its creator
                                { "Russian", "&lt;SPECIAL&gt;Обнаружен гармонический след&lt;&gt;&#xA;Изучите эхо, чтобы узнать о его создателе" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIRATE_FREI_MSG0_ALT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Ваше грузовое судно &lt;FUEL&gt;атаковано&lt;&gt;!&#xA;Доберитесь до своего корабля и &lt;STELLAR&gt;возглавьте оборону&lt;&gt;.
                                -- Your freighter is &lt;FUEL&gt;under attack&lt;&gt;!&#xA;Reach your ship and take off to &lt;STELLAR&gt;lead the defense&lt;&gt;
                                { "Russian", "Ваше грузовое судно &lt;FUEL&gt;атаковано&lt;&gt;!&#xA;Доберитесь до своего корабля и &lt;STELLAR&gt;возглавьте оборону&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIRATE_FREI_MSG1_ALT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Пролетите под щитами, чтобы уничтожить &lt;STELLAR&gt;генераторы щитов&lt;&gt;.&#xA;Прочность щитов &lt;FUEL&gt;пиратского дредноута&lt;&gt;: %SHIELD%%&#xA;Прочность корпуса &lt;TRADEABLE&gt;личного&lt;&gt; грузового судна: %CIV_HULL%%
                                { "Russian", "Уничтожьте &lt;STELLAR&gt;генераторы щитов&lt;&gt;&#xA;Щиты &lt;FUEL&gt;пиратского дредноута&lt;&gt;: %SHIELD%%&#xA;Корпус &lt;TRADEABLE&gt;личного&lt;&gt; грузового судна: %CIV_HULL%%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIRATE_FREI_MSG1_ALT2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Пролетите под щитами, чтобы уничтожить &lt;STELLAR&gt;генераторы щитов&lt;&gt;.&#xA;Прочность щитов &lt;FUEL&gt;пиратского дредноута&lt;&gt;: %SHIELD%%&#xA;Прочность корпуса корабля &lt;TRADEABLE&gt;%NAME%&lt;&gt;: %CIV_HULL%%
                                { "Russian", "Уничтожьте &lt;STELLAR&gt;генераторы щитов&lt;&gt;&#xA;Щиты &lt;FUEL&gt;пиратского дредноута&lt;&gt;: %SHIELD%%&#xA;Корпус &lt;TRADEABLE&gt;%NAME%&lt;&gt;: %CIV_HULL%%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIRATE_FREI_MSG2_ALT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поражайте &lt;STELLAR&gt;топливные стержни&lt;&gt; дредноута, чтобы повредить корпус.&#xA;Целостность корпуса &lt;FUEL&gt;дредноута&lt;&gt;: %HULL%%&#xA;Прочность корпуса &lt;TRADEABLE&gt;личного&lt;&gt; грузового судна: %CIV_HULL%%
                                { "Russian", "Поражайте &lt;STELLAR&gt;топливные стержни&lt;&gt; дредноута, чтобы повредить корпус&#xA;Целостность корпуса &lt;FUEL&gt;дредноута&lt;&gt;: %HULL%%&#xA;Корпус &lt;TRADEABLE&gt;личного&lt;&gt; грузового судна: %CIV_HULL%%" },
                            }
                        },
                        -- имя судна может быть на русском и все не влезит
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIRATE_FREI_MSG2_ALT2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поражайте &lt;STELLAR&gt;топливные стержни&lt;&gt; дредноута, чтобы повредить корпус.&#xA;Целостность корпуса &lt;FUEL&gt;дредноута&lt;&gt;: %HULL%%&#xA;Прочность корпуса судна &lt;TRADEABLE&gt;«%NAME%»&lt;&gt;: %CIV_HULL%%
                                { "Russian", "Целостность корпуса &lt;FUEL&gt;дредноута&lt;&gt;: %HULL%%&#xA;Корпус &lt;TRADEABLE&gt;%NAME%&lt;&gt;: %CIV_HULL%%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIRATE_FREI_MSG3_ALT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;FUEL&gt;ЗАРЯД ЩИТА %SHIELD%%&lt;&gt; Перезарядите его с помощью быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;).&#xA;Прочность корпуса &lt;FUEL&gt;дредноута&lt;&gt;: %HULL%%&#xA;Прочность корпуса &lt;TRADEABLE&gt;личного&lt;&gt; грузового судна: %CIV_HULL%%
                                { "Russian", "&lt;FUEL&gt;ЩИТ ЗВЕЗДОЛЁТА: %SHIELD%%&lt;&gt;&#xA;Корпус &lt;FUEL&gt;дредноута&lt;&gt;: %HULL%%&#xA;Корпус &lt;TRADEABLE&gt;личного&lt;&gt; грузового судна: %CIV_HULL%%" },
                            }
                        },
                        -- имя корабля может быть на русском, что еще сильнее режит строку
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIRATE_FREI_MSG3_ALT2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;FUEL&gt;ЗАРЯД ЩИТА %SHIELD%%&lt;&gt; Перезарядите его с помощью быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;).&#xA;Прочность корпуса &lt;FUEL&gt;дредноута&lt;&gt;: %HULL%%&#xA;Прочность корпуса судна &lt;TRADEABLE&gt;%NAME%&lt;&gt;: %CIV_HULL%%
                                { "Russian", "&lt;FUEL&gt;ЩИТ ЗВЕЗДОЛЁТА: %SHIELD%%&lt;&gt;&#xA;Корпус &lt;TRADEABLE&gt;%NAME%&lt;&gt;: %CIV_HULL%%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIRATE_FREI_MSG4_ALT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;FUEL&gt;Обнаружены противотранспортные торпеды: %TORPEDOES% &lt;&gt;&#xA;Перехватите торпеды врага!&#xA;Прочность корпуса личного грузового судна: &lt;STELLAR&gt;%CIV_HULL%%&lt;&gt;
                                { "Russian", "&lt;FUEL&gt;Запущены торпеды: %TORPEDOES% &lt;&gt;&#xA;Перехватите их!&#xA;Корпус личного грузового судна: &lt;STELLAR&gt;%CIV_HULL%%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIRATE_FREI_MSG4_ALT2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;FUEL&gt;Обнаружены противотранспортные торпеды: %TORPEDOES% &lt;&gt;&#xA;Перехватите торпеды врага!&#xA;Прочность корпуса судна &lt;TRADEABLE&gt;%NAME%&lt;&gt;: &lt;STELLAR&gt;%CIV_HULL%%&lt;&gt;
                                { "Russian", "&lt;FUEL&gt;Запущены торпеды: %TORPEDOES% &lt;&gt;&#xA;Корпус &lt;TRADEABLE&gt;%NAME%&lt;&gt;: &lt;STELLAR&gt;%CIV_HULL%%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIRATE_FREI_MSG5_ALT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Противотранспортные торпеды будут запущены через &lt;FUEL&gt;%COUNTDOWN%&lt;&gt; сек.&#xA;Перехватите торпеды врага!&#xA;Прочность корпуса личного грузового судна: &lt;STELLAR&gt;%CIV_HULL%%&lt;&gt;
                                { "Russian", "Торпеды будут запущены через &lt;FUEL&gt;%COUNTDOWN%&lt;&gt; сек.&#xA;Перехватите их!&#xA;Корпус личного грузового судна: &lt;STELLAR&gt;%CIV_HULL%%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIRATE_FREI_MSG5_ALT2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Противотранспортные торпеды будут запущены через &lt;FUEL&gt;%COUNTDOWN%&lt;&gt; сек.&#xA;Перехватите торпеды врага!&#xA;Прочность корпуса судна &lt;TRADEABLE&gt;%NAME%&lt;&gt;: &lt;STELLAR&gt;%CIV_HULL%%&lt;&gt;
                                { "Russian", "Пуск торпед через &lt;FUEL&gt;%COUNTDOWN%&lt;&gt; сек.&#xA;Корпус &lt;TRADEABLE&gt;%NAME%&lt;&gt;: &lt;STELLAR&gt;%CIV_HULL%%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIRATE_FREI_MSG6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Пиратский крупный корабль заряжает &lt;STELLAR&gt;варп-двигатели&lt;&gt;.&#xA;Пиратский дредноут прыгнет в безопасное место через &lt;FUEL&gt;%COUNTDOWN%&lt;&gt; сек.&#xA;Уничтожьте его двигатели, чтобы не дать ему сбежать.
                                { "Russian", "Пиратский дредноут запускает &lt;STELLAR&gt;варп-двигатели&lt;&gt;!&#xA;Он прыгнет в безопасное место через &lt;FUEL&gt;%COUNTDOWN%&lt;&gt; сек.&#xA;Уничтожьте его двигатели, чтобы не дать ему сбежать." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIRATE_FREI_MSG7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Дредноут &lt;TRADEABLE&gt;сдался&lt;&gt;.&#xA;Взойдите на борт корабля, чтобы обговорить условия сдачи.&#xA;Уничтожьте корабль, чтобы получить &lt;STELLAR&gt;значительную награду.&lt;&gt;&#xA;Подлетите к &lt;TECHNOLOGY&gt;пиратским фрегатам&lt;&gt;, чтобы нанять выживших.
                                { "Russian", "Дредноут &lt;TRADEABLE&gt;сдался&lt;&gt;&#xA;Поднимитесь на борт корабля, чтобы обговорить условия сдачи&#xA;Уничтожьте корабль, чтобы получить &lt;STELLAR&gt;награду&lt;&gt;&#xA;Подлетите к &lt;TECHNOLOGY&gt;пиратским фрегатам&lt;&gt;, чтобы нанять выживших" },
                            }
                        },
                        -- тут возможно лучше подойдет "уничтожили"...
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIRATE_FREI_MSG8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Гражданский флот &lt;FUEL&gt;уничтожен&lt;&gt;.&#xA;Пиратский дредноут прыгнет в безопасное место через %COUNTDOWN% сек.
                                { "Russian", "Гражданский флот &lt;FUEL&gt;уничтожен&lt;&gt;&#xA;Пиратский дредноут прыгнет в безопасное место через %COUNTDOWN% сек." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIRATE_FREI_MSG9" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Пиратский дредноут &lt;FUEL&gt;уничтожен&lt;&gt;.&#xA;Подлетите к &lt;TECHNOLOGY&gt;пиратским фрегатам&lt;&gt;, чтобы нанять выживших.&#xA;Гражданский флот &lt;TRADEABLE&gt;спасен&lt;&gt; от пиратов: вы получили значительную &lt;STELLAR&gt;награду&lt;&gt;.
                                { "Russian", "Пиратский дредноут &lt;FUEL&gt;уничтожен&lt;&gt;&#xA;Подлетите к &lt;TECHNOLOGY&gt;пиратским фрегатам&lt;&gt;, чтобы нанять выживших&#xA;Гражданский флот &lt;TRADEABLE&gt;спасен&lt;&gt; от пиратов&#xA;Вы получили значительную &lt;STELLAR&gt;награду&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIRATE_FREI_MSG10" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Пиратский дредноут &lt;FUEL&gt;уничтожен&lt;&gt;.&#xA;Подлетите к &lt;TECHNOLOGY&gt;пиратским фрегатам&lt;&gt;, чтобы нанять выживших.&#xA;Гражданский флот &lt;FUEL&gt;уничтожен&lt;&gt;: собран &lt;TECHNOLOGY&gt;лом&lt;&gt; дредноута.
                                -- Pirate Dreadnought &lt;FUEL&gt;destroyed&lt;&gt;&#xA;Approach &lt;TECHNOLOGY&gt;pirate frigates&lt;&gt; to recruit survivors&#xA;Civilian fleet &lt;FUEL&gt;vanquished&lt;&gt;: Dreadnought &lt;TECHNOLOGY&gt;scrap&lt;&gt; collected
                                { "Russian", "Пиратский дредноут &lt;FUEL&gt;уничтожен&lt;&gt;&#xA;Гражданский флот &lt;FUEL&gt;побежден&lt;&gt;&#xA;Собран &lt;TECHNOLOGY&gt;лом&lt;&gt; дредноута&#xA;Подлетите к &lt;TECHNOLOGY&gt;пиратским фрегатам&lt;&gt;, чтобы нанять выживших" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIRATE_FREI_MSG11" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Пиратский дредноут &lt;FUEL&gt;отступил&lt;&gt;.&#xA;Гражданский флот &lt;TRADEABLE&gt;спасен&lt;&gt; от пиратов: получена умеренная &lt;STELLAR&gt;награда&lt;&gt;.
                                { "Russian", "Пиратский дредноут &lt;FUEL&gt;отступил&lt;&gt;&#xA;Гражданский флот &lt;TRADEABLE&gt;спасен&lt;&gt;&#xA;Получена умеренная &lt;STELLAR&gt;награда&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIRATE_FREI_MSG12" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Пиратский дредноут &lt;FUEL&gt;сбежал&lt;&gt;.&#xA;Гражданский флот &lt;FUEL&gt;уничтожен&lt;&gt;.&#xA;«%NAME%» сможет вновь нападать на суда.
                                { "Russian", "Пиратский дредноут &lt;FUEL&gt;сбежал&lt;&gt;&#xA;Гражданский флот &lt;FUEL&gt;уничтожен&lt;&gt;&#xA;«%NAME%» сможет вновь нападать на суда" },
                            }
                        },
                        -- отображается наверху под "ДРЕДНОУТ ПОБЕЖДЕН"
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BATTLE_BAR_DEFEAT_HINT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Взойдите на борт корабля, чтобы обговорить условия. &lt;IMG&gt;SLASH&lt;&gt; Уничтожьте корабль, чтобы получить значительную награду.
                                { "Russian", "Поднимитесь на борт, чтобы обговорить условия сдачи &lt;IMG&gt;SLASH&lt;&gt; Уничтожьте корабль, чтобы получить значительную награду" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIRATE_FREIGHTER_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружен пиратский крупный корабль! &lt;IMG&gt;SLASH&lt;&gt; Дредноут атакует гражданский флот!
                                -- Pirate capital ship detected &lt;IMG&gt;SLASH&lt;&gt; Dreadnought attacking civilian fleet!
                                { "Russian", "Обнаружен пиратский крупный корабль &lt;IMG&gt;SLASH&lt;&gt; Дредноут атакует гражданский флот!" },
                            }
                        },
                        -- точки ...
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENTINEL_GALMAP_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружен след сигнала &lt;STELLAR&gt;стража-перехватчика&lt;&gt;.&#xA;Доберитесь до его местоположения, чтобы забрать разбитого стража.
                                -- &lt;STELLAR&gt;Sentinel Interceptor&lt;&gt; signal trace detected&#xA;Reach its final position to acquire Sentinel salvage
                                { "Russian", "Обнаружен след сигнала &lt;STELLAR&gt;стража-перехватчика&lt;&gt;&#xA;Доберитесь до его местоположения, чтобы забрать разбитого стража" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENTINEL_GALMAP_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- След сигнала &lt;STELLAR&gt;стража-перехватчика&lt;&gt; обнаружен в &lt;TECHNOLOGY&gt;близлежащей системе&lt;&gt;.&#xA;Доберитесь до его местоположения, чтобы забрать разбитого стража.
                                -- &lt;STELLAR&gt;Sentinel Interceptor&lt;&gt; signal trace detected in &lt;TECHNOLOGY&gt;nearby system&lt;&gt;&#xA;Track the ship to its final position to acquire Sentinel salvage
                                { "Russian", "След сигнала &lt;STELLAR&gt;стража-перехватчика&lt;&gt; обнаружен в &lt;TECHNOLOGY&gt;близлежащей системе&lt;&gt;&#xA;Доберитесь до его местоположения, чтобы забрать разбитого стража" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CRASH_REVEAL_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Обнаружен скачок испорченной энергии&lt;&gt;.&#xA;Проверьте поле диссонанса, чтобы добыть продвинутые технологии стражей.
                                -- &lt;SPECIAL&gt;Corrupted energy spike located&lt;&gt;&#xA;Investigate the dissonance field to salvage advanced Sentinel technology
                                { "Russian", "&lt;SPECIAL&gt;Обнаружен скачок испорченной энергии&lt;&gt;&#xA;Проверьте поле диссонанса и добудьте&#xA;продвинутые технологии стражей" },
                            }
                        },
                        -- экран главного гильдейца на станции
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_GUILD_SHOP_SELL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Пожертвовать
                                -- Donate
                                { "Russian", "Подарить" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_GUILD_SHOP_FREE_PRICE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;SELECT&lt;&gt; Забрать бесплатные припасы
                                -- &lt;IMG&gt;SELECT&lt;&gt; Collect free supplies
                                { "Russian", "&lt;IMG&gt;SELECT&lt;&gt; Взять бесплатно" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_GUILD_SHOP_SELL_HEADER" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Можно пожертвовать
                                -- Donatable Items
                                { "Russian", "Подарки для гильдии" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_GUILD_SHOP_COLLECTED" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вы забрали припасы
                                -- Supplies collected
                                { "Russian", "Припасы получены" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_GUILD_SHOP_DONATE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;SELECT&lt;&gt; Пожертвовать предмет
                                -- &lt;IMG&gt;SELECT&lt;&gt; Donate item
                                { "Russian", "&lt;IMG&gt;SELECT&lt;&gt; Подарить" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_GUILD_SHOP_DONATE_MAX_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Достигнут максимум пожертвований
                                -- Maximum donations reached
                                { "Russian", "Больше не принимается" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_GUILD_SHOP_DONATE_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;Пожертвовать в архив гильдии&lt;&gt;
                                -- &lt;TECHNOLOGY&gt;Donate to Guild Archive&lt;&gt;
                                { "Russian", "&lt;TECHNOLOGY&gt;Подарить в Архив Гильдии&lt;&gt;" },
                            }
                        },
                        -- прокрутка
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BOOT_NEWS_U" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- НОВОСТИ И ОПИСАНИЕ ОБНОВЛЕНИЯ
                                -- NEWS &amp; PATCH NOTES
                                { "Russian", "НОВОСТИ И ОБНОВЛЕНИЯ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BOOT_NEWS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Новости и описание обновления
                                -- News &amp; Patch Notes
                                { "Russian", "Новости и обновления" },
                            }
                        },
                        -- это хорошо смотрится когда влезает и не прокручивается
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CATA_SYSTEM_MILESTONE_HINT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Посмотрите данные об отношениях...
                                -- View standing details...
                                { "Russian", "Подробнее об отношениях" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CATA_JOURNEY_MILESTONE_HINT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Посмотрите данные о путешествии...
                                -- View journey details...
                                { "Russian", "Подробнее о путешествии" },
                            }
                        },
                        --
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FLEET_COMMS_DAM_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;%EXPED_NAME%&lt;&gt; шлет срочный отчет о полученном ущербе.&#xA;Откройте коммуникатор в быстром меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;) и ответьте на вызов.
                                -- Urgent damage report incoming from &lt;STELLAR&gt;%EXPED_NAME%&lt;&gt;&#xA;Answer the Communicator from the Quick Menu (&lt;IMG&gt;QUICK_MENU&lt;&gt;)
                                { "Russian", "Экспедиция &lt;STELLAR&gt;%EXPED_NAME%&lt;&gt; докладывает&#xA;о полученных повреждениях&#xA;Ответьте по коммуникатору из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FLEET_COMMS_INT_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;%EXPED_NAME%&lt;&gt; шлет срочный отчет.&#xA;Откройте коммуникатор в быстром меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;) и ответьте на вызов.
                                --Urgent report incoming from &lt;STELLAR&gt;%EXPED_NAME%&lt;&gt;&#xA;Answer the Communicator from the Quick Menu (&lt;IMG&gt;QUICK_MENU&lt;&gt;)
                                { "Russian", "Экспедиция &lt;STELLAR&gt;%EXPED_NAME%&lt;&gt; на связи&#xA;Ответьте по коммуникатору из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FLEET_COMMS_BUY_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Фрегат &lt;STELLAR&gt;%FRIG_NAME%&lt;&gt; хочет присоединиться к вашему флоту.&#xA;Откройте коммуникатор в быстром меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;) и ответьте на вызов.
                                --The frigate &lt;STELLAR&gt;%FRIG_NAME%&lt;&gt; seeks to join your fleet&#xA;Answer the Communicator from the Quick Menu (&lt;IMG&gt;QUICK_MENU&lt;&gt;)
                                { "Russian", "Фрегат &lt;STELLAR&gt;%FRIG_NAME%&lt;&gt; хочет присоединиться&#xA;к вашему флоту&#xA;Ответьте по коммуникатору из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BUILD_MENU_TIP_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Чтобы открыть &lt;STELLAR&gt;меню созидания&lt;&gt;, нажмите &lt;IMG&gt;BUILD_MENU&lt;&gt;.
                                -- Access the &lt;STELLAR&gt;Build Menu&lt;&gt; with &lt;IMG&gt;BUILD_MENU&lt;&gt;
                                { "Russian", "Откройте &lt;STELLAR&gt;меню строительства&lt;&gt;, нажав &lt;IMG&gt;BUILD_MENU&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BUILD_MENU_TIP_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Выберите новые детали с помощью&lt;IMG&gt; BUILD_MENU&lt;&gt; или отредактируйте/удалите установленные детали с помощью &lt;IMG&gt;BUILD_SELECT&lt;&gt;.
                                -- Select new parts with &lt;IMG&gt;BUILD_MENU&lt;&gt; or edit/delete placed parts with &lt;IMG&gt;BUILD_SELECT&lt;&gt;
                                { "Russian", "Выбирайте новые детали (&lt;IMG&gt;BUILD_MENU&lt;&gt;) или редактируйте/удаляйте установленные (&lt;IMG&gt;BUILD_SELECT&lt;&gt;)" },
                            }
                        },
                        --
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PULSE_ENCOUNTER_OSD_SENT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ОБНАРУЖЕН СИГНАЛ БЕДСТВИЯ &lt;IMG&gt;SLASH&lt;&gt; ПРЕРВИТЕ ИМПУЛЬС ДЛЯ ПЕРЕХВАТА
                                -- DISTRESS SIGNAL DETECTED &lt;IMG&gt;SLASH&lt;&gt; EXIT PULSE TO INTERCEPT
                                { "Russian", "ОБНАРУЖЕН СИГНАЛ БЕДСТВИЯ &lt;IMG&gt;SLASH&lt;&gt; СНИЗЬТЕ СКОРОСТЬ ДЛЯ ПЕРЕХВАТА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "HUD_INC_SENTINEL_DISTRESS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Аварийное сообщение: %NAME%
                                -- Distress Comms: %NAME%
                                { "Russian", "На аварийном канале&#xA;%NAME%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENTINEL_DISTRESS_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сигнатура корабля зарегистрирована.&#xA;Судя по всему, корабль стражей &lt;FUEL&gt;терпел бедствие&lt;&gt;.&#xA;Доберитесь до метки сигнала, чтобы продолжить исследование.
                                -- Interceptor signature recorded&#xA;The Sentinel ship appeared to be &lt;FUEL&gt;in distress&lt;&gt;&#xA;Reach the signal marker to investigate further
                                { "Russian", "Сигнатура корабля зарегистрирована&#xA;Судя по всему, корабль стражей &lt;FUEL&gt;терпел бедствие&lt;&gt;&#xA;Доберитесь до метки сигнала, чтобы продолжить исследование" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENTINEL_DISTRESS_MSG_MAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сигнатура стража-перехватчика зарегистрирована.&#xA;Судя по всему, корабль стражей &lt;FUEL&gt;терпел бедствие&lt;&gt;.&#xA;Откройте галактическую карту с помощью &lt;IMG&gt;QUICK_MENU&lt;&gt;.
                                -- Sentinel Interceptor signature recorded&#xA;Ship appeared to be &lt;FUEL&gt;in distress&lt;&gt;&#xA;Consult the Galaxy Map with &lt;IMG&gt;QUICK_MENU&lt;&gt;
                                { "Russian", "Сигнатура стража-перехватчика зарегистрирована&#xA;Судя по всему, корабль стражей &lt;FUEL&gt;терпел бедствие&lt;&gt;&#xA;Откройте галактическую карту с помощью &lt;IMG&gt;QUICK_MENU&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENTINEL_DISTRESS_SURVEY_OFF" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Источник сигнала перехватчика расположен &lt;STELLAR&gt;неподалеку&lt;&gt;.&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; в анализирующем визоре (&lt;IMG&gt;AIM&lt;&gt;).
                                -- Interceptor signal source is &lt;STELLAR&gt;nearby&lt;&gt;&#xA;Activate a &lt;STELLAR&gt;Target Sweep&lt;&gt; from the Analysis Visor &lt;IMG&gt;AIM&lt;&gt;
                                { "Russian", "Источник сигнала перехватчика расположен &lt;STELLAR&gt;неподалеку&lt;&gt;&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; в анализирующем визоре (&lt;IMG&gt;AIM&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENTINEL_DISTRESS_SURVEY_SWP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Источник сигнала перехватчика расположен &lt;STELLAR&gt;неподалеку&lt;&gt;.&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;.
                                -- Interceptor signal source is &lt;STELLAR&gt;nearby&lt;&gt;&#xA;Activate a &lt;TECHNOLOGY&gt;Target Sweep&lt;&gt; with &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;
                                { "Russian", "Источник сигнала перехватчика расположен &lt;STELLAR&gt;неподалеку&lt;&gt;&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENTINEL_DISTRESS_SURVEY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Следуйте по &lt;STELLAR&gt;направляющим&lt;&gt;, чтобы найти стража-перехватчика.&#xA;&lt;TECHNOLOGY&gt;Разведка цели&lt;&gt; укажет точные координаты задания.
                                -- Follow the &lt;STELLAR&gt;directional indicators&lt;&gt; to locate the Sentinel Interceptor&#xA;This &lt;TECHNOLOGY&gt;Target Sweep&lt;&gt; will pinpoint mission locations
                                { "Russian", "Следуйте по &lt;STELLAR&gt;направляющим&lt;&gt;, чтобы найти стража-перехватчика&#xA;&lt;TECHNOLOGY&gt;Разведка цели&lt;&gt; укажет точные координаты задания" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENTINEL_DISTRESS_SURVEY_CAR" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Источник сигнала перехватчика расположен &lt;STELLAR&gt;неподалеку&lt;&gt;.&#xA;Воспользуйтесь &lt;STELLAR&gt;разведкой цели&lt;&gt;, чтобы его найти.&#xA;Чтобы подтвердить направление разведки, выйдите из своего транспорта.
                                -- Interceptor signal source is &lt;STELLAR&gt;nearby&lt;&gt;&#xA;Use a &lt;STELLAR&gt;Target Sweep&lt;&gt; to locate the Sentinel Interceptor&#xA;To confirm target sweep directions, exit your vehicle
                                { "Russian", "Источник сигнала перехватчика расположен &lt;STELLAR&gt;неподалеку&lt;&gt;&#xA;Воспользуйтесь &lt;STELLAR&gt;разведкой цели&lt;&gt;, чтобы его найти&#xA;Выйдите из транспорта, чтобы сверить направление" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TRADE_BUY_BUI_SCRAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;ВЫБРАТЬ&lt;&gt; пыль пустоты: %AMOUNT%
                                -- &lt;IMG&gt;SELECT&lt;&gt; %AMOUNT% Void Motes
                                { "Russian", "&lt;IMG&gt;SELECT&lt;&gt; Пыль пустоты × %AMOUNT%" },
                            }
                        },
                        -- u может быть все что угодно, если это unit, то получается, что ppu это мольная доля
                        -- а может и нет, и тогда не надо гадать
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "WONDER_CREAT_COLD_NUM" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Концентрация антифризного белка:&lt;&gt; %NUM%част. на ед. об.
                                -- &lt;STELLAR&gt;Antifreeze protein concentration:&lt;&gt; %NUM%ppu
                                { "Russian", "&lt;STELLAR&gt;Концентрация антифризного белка:&lt;&gt; %NUM% ppu" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "WONDER_CREAT_WEIRD_NUM" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Концентрация дельта-волн:&lt;&gt; %NUM%герц/ед
                                -- &lt;STELLAR&gt;Delta Wave Concentration:&lt;&gt; %NUM%hertz/u
                                { "Russian", "&lt;STELLAR&gt;Концентрация дельта-волн:&lt;&gt; %NUM% герц/ед" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WONDER_CLEVER" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Оценка интеллекта:&lt;&gt; %NUM%иед.
                                -- &lt;STELLAR&gt;Intelligence Estimate:&lt;&gt; %NUM%iep
                                { "Russian", "&lt;STELLAR&gt;Оценка интеллекта:&lt;&gt; %NUM% iep" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "WONDER_CREAT_CAVE_NUM" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Среднее внутреннее давление:&lt;&gt; %NUM%бар
                                -- &lt;STELLAR&gt;Mean Internal Pressure:&lt;&gt; %NUM%bar
                                { "Russian", "&lt;STELLAR&gt;Среднее внутреннее давление:&lt;&gt; %NUM% бар" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "WONDER_CREAT_ROBOT_NUM" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Коэффициент единой разумности:&lt;&gt; %NUM% ои
                                -- &lt;STELLAR&gt;Convergent Sentience Quotient:&lt;&gt; %NUM%ieq
                                { "Russian", "&lt;STELLAR&gt;Коэффициент единой разумности:&lt;&gt; %NUM% ieq" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "WONDER_CREAT_RAD_NUM" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Оценка сопротивления ионизации:&lt;&gt; %NUM%ед/об
                                -- &lt;STELLAR&gt;Ionisation Resistance Estimate:&lt;&gt; %NUM%uav
                                { "Russian", "&lt;STELLAR&gt;Оценка сопротивления ионизации:&lt;&gt; %NUM% uav" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WONDER_ANOMALY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Сила границы:&lt;&gt; %NUM%рК
                                -- &lt;STELLAR&gt;Boundary Strength:&lt;&gt; %NUM%rQ
                                { "Russian", "&lt;STELLAR&gt;Сила границы:&lt;&gt; %NUM% rQ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WONDER_WEIGHT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Вес:&lt;&gt; %NUM%кг
                                -- &lt;STELLAR&gt;Weight:&lt;&gt; %NUM%kg
                                { "Russian", "&lt;STELLAR&gt;Вес:&lt;&gt; %NUM% кг" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "WONDER_CREAT_WATER_NUM" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Вес:&lt;&gt; %NUM%кг
                                -- &lt;STELLAR&gt;Weight:&lt;&gt; %NUM%kg
                                { "Russian", "&lt;STELLAR&gt;Вес:&lt;&gt; %NUM% кг" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "WONDER_CREAT_FLY_NUM" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Вес:&lt;&gt; %NUM%кг
                                -- &lt;STELLAR&gt;Weight:&lt;&gt; %NUM%kg
                                { "Russian", "&lt;STELLAR&gt;Вес:&lt;&gt; %NUM% кг" },
                            }
                        },
                        --
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SHIELD_GENERATOR_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Генератор щитов грузового судна
                                -- Freighter Shield Generator
                                { "Russian", "Генератор щита грузового судна" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FREI_TRAIL_RED_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Эксклюзивное &lt;STELLAR&gt;изменение факела двигателя грузового судна&lt;&gt;.&#xA;&#xA;Устройство создания гармоник придает выхлопу двигателей грузового судна частоты &lt;FUEL&gt;А Т Л А С А&lt;&gt;, что делает его след болезненно багряным.&#xA;&#xA;Поменяйте внешний вид вашего грузового судна в &lt;TECHNOLOGY&gt;терминале управления улучшениями&lt;&gt; на &lt;VAL_ON&gt;мостике&lt;&gt;.
                                -- An exclusive &lt;STELLAR&gt;Freighter Engine Flare Modifier&lt;&gt;.&#xA;&#xA;A harmonic generation device converts the output of the freighter engines to &lt;FUEL&gt;A T L A S&lt;&gt; frequencies, radiating a painfully crimson trail.&#xA;&#xA;Transform the appearance of your freighter at the &lt;TECHNOLOGY&gt;Upgrade Control Terminal&lt;&gt; on the &lt;VAL_ON&gt;bridge&lt;&gt;.
                                { "Russian", "Эксклюзивное &lt;STELLAR&gt;пламя двигателей грузового судна&lt;&gt;.&#xA;&#xA;Устройство создания гармоник придает выхлопу двигателей грузового судна частоты &lt;FUEL&gt;А Т Л А С А&lt;&gt;, что делает его след болезненно багряным.&#xA;&#xA;Поменяйте внешний вид вашего грузового судна в &lt;TECHNOLOGY&gt;терминале улучшений&lt;&gt; на &lt;VAL_ON&gt;мостике&lt;&gt;." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPD_TITLE_11_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Звание «Отважный»
                                { "Russian", "Звание: «Отважный»" },
                            }
                        },

                        --#region UI_SENTINEL_CRASH_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENTINEL_CRASH_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Необходимо &lt;SPECIAL&gt;разорвать&lt;&gt; связь корабля с ульем стражей.&#xA;%ITEM% нужно убрать из разбившегося судна.
                                -- The ship's connection to the Sentinel hive must be &lt;SPECIAL&gt;severed&lt;&gt;&#xA;Purge the %ITEM% from the crashed vessel
                                { "Russian", "Необходимо &lt;SPECIAL&gt;разорвать&lt;&gt; связь корабля с ульем стражей&#xA;Удалите %ITEM% из разбившегося судна" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENTINEL_CRASH_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Доберитесь до мира &lt;SPECIAL&gt;испорченных&lt;&gt; стражей.&#xA;Вернитесь на место крушения, чтобы отремонтировать разбившееся судно.
                                -- Reach a &lt;SPECIAL&gt;corrupted&lt;&gt; Sentinel world&#xA;Return to the salvage site to repair the crashed vessel
                                { "Russian", "Доберитесь до мира &lt;SPECIAL&gt;испорченных&lt;&gt; стражей&#xA;Вернитесь на место крушения, чтобы отремонтировать разбившееся судно" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENTINEL_CRASH_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Для установки &lt;TECHNOLOGY&gt;интерфейса пилота&lt;&gt; требуется: %ITEM% (%CURRENT%/%AMOUNT%).&#xA;Интерфейс позволит безопасно находиться внутри стража-перехватчика.
                                -- Harvest a %ITEM% to complete the &lt;TECHNOLOGY&gt;Pilot Interface&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;The Interface will allow safe occupation of the Sentinel Interceptor
                                { "Russian", "Добудьте предмет: %ITEM% — %CURRENT%/%AMOUNT%&#xA;&lt;TECHNOLOGY&gt;Интерфейс пилота&lt;&gt; позволит безопасно находиться внутри стража-перехватчика" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENTINEL_CRASH_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Для установки &lt;TECHNOLOGY&gt;интерфейса пилота&lt;&gt; требуется найти: %ITEM% (%CURRENT%/%AMOUNT%).&#xA;Добудьте предмет %ITEM% из &lt;SPECIAL&gt;резонаторов диссонанса&lt;&gt; испорченного роя.&#xA;Уничтожьте эти мерзкие механизмы, чтобы заполучить ценный лом.
                                -- Locate an %ITEM% to complete the &lt;TECHNOLOGY&gt;Pilot Interface&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Harvest %ITEM%s from the corrupted swarm's &lt;SPECIAL&gt;Dissonance Resonators&lt;&gt;&#xA;Destroy this foul machinery for valuable salvage
                                { "Russian", "Найдите предмет: %ITEM% — %CURRENT%/%AMOUNT%&#xA;%ITEM% добывается из &lt;SPECIAL&gt;резонаторов диссонанса&lt;&gt; испорченного роя&#xA;Уничтожьте эти мерзкие механизмы, чтобы заполучить ценный лом" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENTINEL_CRASH_MSG5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Заберите &lt;SPECIAL&gt;зеркальный мозг&lt;&gt; из стража-перехватчика.&#xA;Находясь в космосе, повысьте свой &lt;FUEL&gt;уровень розыска&lt;&gt;, чтобы сразиться с представителями властей системы.
                                { "Russian", "Заберите &lt;SPECIAL&gt;зеркальный мозг&lt;&gt; из стража-перехватчика&#xA;Находясь в космосе, повысьте свой &lt;FUEL&gt;уровень розыска&lt;&gt;,&#xA;чтобы сразиться с представителями властей системы" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENTINEL_CRASH_MSG6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Мозг корабля &lt;FUEL&gt;отторгает&lt;&gt; внешнее управление.&#xA;Для завершения процесса добавления пилота необходим &lt;TECHNOLOGY&gt;гармонический мозг&lt;&gt;.&#xA;Найдите мозг в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;) и проверьте его подсознание с помощью &lt;IMG&gt;FE_ALT1&lt;&gt;.
                                -- The ship's brain &lt;FUEL&gt;rejects&lt;&gt; the control of an outside entity&#xA;A &lt;TECHNOLOGY&gt;Harmonic Brain&lt;&gt; is required to complete pilot override process&#xA;Locate the brain in the Inventory (&lt;IMG&gt;INVENTORY&lt;&gt;) and probe its subconscious with &lt;IMG&gt;FE_ALT1&lt;&gt;
                                { "Russian", "Мозг корабля &lt;FUEL&gt;отторгает&lt;&gt; внешнее управление&#xA;Для завершения подмены пилота необходим &lt;TECHNOLOGY&gt;гармонический мозг&lt;&gt;&#xA;Найдите мозг в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;) и проверьте его подсознание (&lt;IMG&gt;FE_ALT1&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENTINEL_CRASH_MSG7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- В мозгу обнаружилось &lt;SPECIAL&gt;воспоминание %GPS%&lt;&gt; о его древней личности.&#xA;Восстановите этот архив, чтобы привнести гармонию в мозг.&#xA;&lt;TECHNOLOGY&gt;Гармонический мозг&lt;&gt; необходим для взлома &lt;TECHNOLOGY&gt;интерфейса пилота&lt;&gt;.
                                -- The brain has yielded a &lt;SPECIAL&gt;memory %GPS%&lt;&gt; of its ancient self&#xA;Restore this archive to harmonise with the brain&#xA;A &lt;TECHNOLOGY&gt;Harmonic Brain&lt;&gt; is required for the &lt;TECHNOLOGY&gt;Pilot Interface&lt;&gt; override
                                { "Russian", "В мозгу обнаружилось &lt;SPECIAL&gt;воспоминание %GPS%&lt;&gt;&#xA;о его древней личности&#xA;Восстановите этот архив, чтобы привнести гармонию в мозг&#xA;&lt;TECHNOLOGY&gt;Гармонический мозг&lt;&gt; необходим для взлома &lt;TECHNOLOGY&gt;интерфейса пилота&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENTINEL_CRASH_MSG7_MAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- В мозгу обнаружилось &lt;SPECIAL&gt;воспоминание&lt;&gt; о его древней личности.&#xA;Восстановите этот архив, чтобы привнести гармонию в мозг.&#xA;&lt;TECHNOLOGY&gt;Гармонический мозг&lt;&gt; необходим для взлома &lt;TECHNOLOGY&gt;интерфейса пилота&lt;&gt;.&#xA;В космосе откройте галактическую карту с помощью &lt;IMG&gt;QUICK_MENU&lt;&gt;.
                                -- The brain has yielded a &lt;SPECIAL&gt;memory&lt;&gt; of its ancient self&#xA;Restore this archive to harmonise with the brain&#xA;A &lt;TECHNOLOGY&gt;Harmonic Brain&lt;&gt; is required for the &lt;TECHNOLOGY&gt;Pilot Interface&lt;&gt; override&#xA;In space, consult the Galaxy Map with &lt;IMG&gt;QUICK_MENU&lt;&gt;
                                { "Russian", "В мозгу обнаружилось &lt;SPECIAL&gt;воспоминание&lt;&gt; о его древней личности&#xA;Восстановите этот архив, чтобы привнести гармонию в мозг&#xA;&lt;TECHNOLOGY&gt;Гармонический мозг&lt;&gt; необходим для взлома &lt;TECHNOLOGY&gt;интерфейса пилота&lt;&gt;&#xA;Находясь в космосе, откройте галактическую карту (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENTINEL_CRASH_MSG8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вернитесь на место крушения, чтобы установить &lt;TECHNOLOGY&gt;интерфейс пилота&lt;&gt;.&#xA;Установка необходима, чтобы предотвратить &lt;FUEL&gt;отторжение пилота&lt;&gt;.
                                -- Return to the salvage site to complete the &lt;TECHNOLOGY&gt;Pilot Interface&lt;&gt;&#xA;Installation is required to prevent &lt;FUEL&gt;pilot rejection&lt;&gt;
                                { "Russian", "Вернитесь на место крушения&#xA;Предотвратите &lt;FUEL&gt;отторжение пилота&lt;&gt;,&#xA;установив &lt;TECHNOLOGY&gt;интерфейс пилота&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENTINEL_CRASH_MSG8_ALT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Доберитесь до &lt;TECHNOLOGY&gt;места крушения стража&lt;&gt;, чтобы завершить захват.&#xA;В космосе откройте галактическую карту (&lt;IMG&gt;QUICK_MENU&lt;&gt;), чтобы найти нужную систему.
                                -- Reach the &lt;TECHNOLOGY&gt;Sentinel crash site&lt;&gt; to complete salvage operations&#xA;In space, consult the Galaxy Map (&lt;IMG&gt;QUICK_MENU&lt;&gt;) to locate the correct system
                                { "Russian", "Доберитесь до &lt;TECHNOLOGY&gt;места крушения стража&lt;&gt;&#xA;Место крушения находится в другой системе&#xA;Находясь в космосе, откройте галактическую карту (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        --#endregion

                        --#region UI_SENT_CRASH_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_CRASH_MSG3_SURVEY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Для установки &lt;TECHNOLOGY&gt;интерфейса пилота&lt;&gt; требуется: %ITEM% (%CURRENT%/%AMOUNT%).&#xA;Используйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt;, чтобы обнаружить цель (%ITEM%).&#xA;Интерфейс позволит безопасно находиться внутри стража-перехватчика.
                                -- Harvest a %ITEM% to complete the &lt;TECHNOLOGY&gt;Pilot Interface&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Use the &lt;TECHNOLOGY&gt;Target Sweep&lt;&gt; to locate a %ITEM%&#xA;The Interface will allow safe occupation of the Sentinel Interceptor
                                { "Russian", "Добудьте предмет: %ITEM% — %CURRENT%/%AMOUNT%&#xA;Используйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt;, чтобы найти его&#xA;&lt;TECHNOLOGY&gt;Интерфейса пилота&lt;&gt; позволит находиться внутри стража-перехватчика" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_CRASH_MSG3_SURVEY_OFF" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Для установки &lt;TECHNOLOGY&gt;интерфейса пилота&lt;&gt; требуется: %ITEM% (%CURRENT%/%AMOUNT%).&#xA;Интерфейс позволит безопасно находиться внутри стража-перехватчика.&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; в анализирующем визоре (&lt;IMG&gt;AIM&lt;&gt;).
                                -- Harvest a %ITEM% to complete the &lt;TECHNOLOGY&gt;Pilot Interface&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;The Interface will allow safe occupation of the Sentinel Interceptor&#xA;Activate a &lt;STELLAR&gt;Target Sweep&lt;&gt; from the Analysis Visor &lt;IMG&gt;AIM&lt;&gt;
                                { "Russian", "Добудьте предмет: %ITEM% — %CURRENT%/%AMOUNT%&#xA;&lt;TECHNOLOGY&gt;Интерфейса пилота&lt;&gt; позволит находиться внутри стража-перехватчика&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; в анализирующем визоре &lt;IMG&gt;AIM&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_CRASH_MSG3_SURVEY_SWAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Для установки &lt;TECHNOLOGY&gt;интерфейса пилота&lt;&gt; требуется: %ITEM% (%CURRENT%/%AMOUNT%).&#xA;Интерфейс позволит безопасно находиться внутри стража-перехватчика.&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;.
                                -- Harvest a %ITEM% to complete the &lt;TECHNOLOGY&gt;Pilot Interface&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;The Interface will allow safe occupation of the Sentinel Interceptor&#xA;Activate a &lt;TECHNOLOGY&gt;Target Sweep&lt;&gt; with &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;
                                { "Russian", "Добудьте предмет: %ITEM% — %CURRENT%/%AMOUNT%&#xA;&lt;TECHNOLOGY&gt;Интерфейса пилота&lt;&gt; позволит находиться внутри стража-перехватчика&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_CRASH_MSG3_SURVEY_CAR" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Для установки &lt;TECHNOLOGY&gt;интерфейса пилота&lt;&gt; требуется собрать: %ITEM% (%CURRENT%/%AMOUNT%).&#xA;Интерфейс позволит безопасно находиться внутри стража-перехватчика.&#xA;Используйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt;, чтобы обнаружить цель (%ITEM%).&#xA;Чтобы подтвердить направление разведки, покиньте свой транспорт.
                                { "Russian", "Добудьте предмет: %ITEM% — %CURRENT%/%AMOUNT%&#xA;&lt;TECHNOLOGY&gt;Интерфейса пилота&lt;&gt; позволит находиться внутри стража-перехватчика&#xA;Используйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt;, чтобы обнаружить цель&#xA;Выйдите из транспорта, чтобы сверить направление" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_CRASH_MSG4_SURVEY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Для установки &lt;TECHNOLOGY&gt;интерфейса пилота&lt;&gt; требуется собрать: %ITEM% (%CURRENT%/%AMOUNT%).&#xA;Используйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt;, чтобы найти &lt;SPECIAL&gt;резонатор диссонанса&lt;&gt;.&#xA;Уничтожьте эти испорченные механизмы, чтобы получить ценный лом.
                                { "Russian", "Найдите предмет: %ITEM% — %CURRENT%/%AMOUNT%&#xA;Используйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt;, чтобы найти &lt;SPECIAL&gt;резонатор диссонанса&lt;&gt;&#xA;Уничтожьте эти испорченные механизмы, чтобы получить ценный лом" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_CRASH_MSG4_SURVEY_OFF" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Для установки &lt;TECHNOLOGY&gt;интерфейса пилота&lt;&gt; требуется найти: %ITEM% (%CURRENT%/%AMOUNT%).&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы найти &lt;SPECIAL&gt;резонатор диссонанса&lt;&gt;.&#xA;Уничтожьте эти мерзкие механизмы, чтобы получить ценный лом.
                                { "Russian", "Найдите предмет: %ITEM% — %CURRENT%/%AMOUNT%&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы найти &lt;SPECIAL&gt;резонатор диссонанса&lt;&gt;&#xA;Уничтожьте эти мерзкие механизмы, чтобы получить ценный лом" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_CRASH_MSG4_SURVEY_SWAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Для установки &lt;TECHNOLOGY&gt;интерфейса пилота&lt;&gt; требуется собрать: %ITEM% (%CURRENT%/%AMOUNT%).&#xA;Найдите и уничтожьте &lt;SPECIAL&gt;резонатор диссонанса&lt;&gt;, чтобы получить ценный лом.&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;.
                                { "Russian", "Найдите предмет: %ITEM% — %CURRENT%/%AMOUNT%&#xA;Найдите и уничтожьте &lt;SPECIAL&gt;резонатор диссонанса&lt;&gt;, чтобы получить ценный лом&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_CRASH_MSG4_SURVEY_CAR" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Для установки &lt;TECHNOLOGY&gt;интерфейса пилота&lt;&gt; требуется собрать: %ITEM% (%CURRENT%/%AMOUNT%).&#xA;Используйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt;, чтобы найти &lt;SPECIAL&gt;резонатор диссонанса&lt;&gt;.&#xA;Чтобы подтвердить направление разведки, покиньте свой транспорт.
                                { "Russian", "Найдите предмет: %ITEM% — %CURRENT%/%AMOUNT%&#xA;Используйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt;, чтобы найти &lt;SPECIAL&gt;резонатор диссонанса&lt;&gt;&#xA;Выйдите из транспорта, чтобы сверить направление" },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PULSE_ENCOUNTER_MSG_SENT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- В квадранте обнаружен &lt;FUEL&gt;аварийный сигнал стража&lt;&gt;.&#xA;Сбросьте скорость, чтобы перехватить отправителя.
                                -- &lt;FUEL&gt;Sentinel Distress Signal&lt;&gt; detected in local space&#xA;Slow down to intercept the sender
                                { "Russian", "В квадранте обнаружен &lt;FUEL&gt;аварийный сигнал стража&lt;&gt;&#xA;Сбросьте скорость и изучите источник сигнала" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MEMORY_BOAT_MSG_COMMS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Ретранслятор связи содержит &lt;SPECIAL&gt;лишенное гармонии эхо&lt;&gt;.&#xA;Чтобы ответить, нажмите &lt;IMG&gt;QUICK_MENU&lt;&gt;.
                                -- &lt;SPECIAL&gt;Dissonant echo&lt;&gt; detected on communications relay&#xA;Answer the Communicator by pressing &lt;IMG&gt;QUICK_MENU&lt;&gt;
                                { "Russian", "&lt;SPECIAL&gt;Лишенное гармонии эхо&lt;&gt; исходит от ретранслятора связи&#xA;Ответьте по коммуникатору из быстрого меню &lt;IMG&gt;QUICK_MENU&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MEMORY_BOAT_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- В квадранте обнаружено &lt;SPECIAL&gt;лишенное гармонии эхо&lt;&gt;.&#xA;Сбросьте скорость, чтобы перехватить сигнал.
                                -- &lt;SPECIAL&gt;Dissonant echo&lt;&gt; detected in local space&#xA;Slow down to intercept signal
                                { "Russian", "В квадранте обнаружено &lt;SPECIAL&gt;лишенное гармонии эхо&lt;&gt;&#xA;Сбросьте скорость, чтобы перехватить сигнал" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_GHOST_SHIP_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ... &lt;SPECIAL&gt;кззткзззкт...&lt;&gt; &#xA;Чтобы ответить, нажмите &lt;IMG&gt;QUICK_MENU&lt;&gt;.
                                -- ... &lt;SPECIAL&gt;kzztkzzzkt...&lt;&gt; &#xA;Answer the Communicator by pressing &lt;IMG&gt;QUICK_MENU&lt;&gt;
                                { "Russian", "... &lt;SPECIAL&gt;кззткзззкт...&lt;&gt; &#xA;Ответьте по коммуникатору из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ROBOT_LOCKED_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Извлеченный мультитул &lt;STELLAR&gt;гармонически запечатан&lt;&gt;.&#xA;Осмотрите лагерь, чтобы найти способ сломать пломбу.
                                -- Salvaged Multi-Tool is &lt;STELLAR&gt;harmonically sealed&lt;&gt;&#xA;Investigate the camp for a means of breaking the seal
                                { "Russian", "Мультитул &lt;STELLAR&gt;гармонически запечатан&lt;&gt;&#xA;Осмотрите лагерь, чтобы найти способ сломать пломбу" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ROBOT_LOCKED_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Пломба извлеченного мультитула &lt;STELLAR&gt;сломана&lt;&gt;.&#xA;Вернитесь к устройству сборки утиля, чтобы его осмотреть.
                                -- Salvaged Multi-Tool has been &lt;STELLAR&gt;unsealed&lt;&gt;&#xA;Return to the salvage assembly unit to inspect it
                                { "Russian", "Пломба мультитула &lt;STELLAR&gt;сломана&lt;&gt;&#xA;Вернитесь к стенду, чтобы его осмотреть" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ROBOT_LOCKED_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Выполнена гармоническая блокировка. &lt;IMG&gt;SLASH&lt;&gt; Найдите интерфейс, чтобы ее снять.
                                -- Harmonic lockdown in progress &lt;IMG&gt;SLASH&lt;&gt; Locate interface to break seal
                                { "Russian", "Действует гармоническая блокировка &lt;IMG&gt;SLASH&lt;&gt; Найдите интерфейс, чтобы ее снять" },
                            }
                        },
                        -- между "меню созидания" и "(" нет пробела
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FIREWORK_PROD_TITAN_R_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Экзотический фейерверк, содержащий соли &lt;FUEL&gt;кадмия&lt;&gt;. Вдохновлен подвижными формами титанических песчаных червей. Зажгите его, чтобы озарить небо мерцающими огнями.&#xA;&#xA;Разместите пусковую трубку с помощью &lt;VAL_ON&gt;меню созидания&lt;&gt;(&lt;IMG&gt;BUILD_MENU&lt;&gt;). &lt;FUEL&gt;Внимание&lt;&gt;: не нацеливайте на живых существ. Не рекомендуется использовать в помещениях.
                                { "Russian", "Экзотический фейерверк, содержащий соли &lt;FUEL&gt;кадмия&lt;&gt;. Вдохновлен подвижными формами титанических песчаных червей. Зажгите его, чтобы озарить небо мерцающими огнями.&#xA;&#xA;Разместите пусковую трубку с помощью &lt;VAL_ON&gt;меню созидания&lt;&gt; (&lt;IMG&gt;BUILD_MENU&lt;&gt;). &lt;FUEL&gt;Внимание&lt;&gt;: не нацеливайте на живых существ. Не рекомендуется использовать в помещениях." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FIREWORK_PROD_TITAN_Y_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Экзотический фейерверк, содержащий соли &lt;COMMODITY&gt;натрия&lt;&gt;. Вдохновлен подвижными формами титанических песчаных червей. Зажгите его, чтобы озарить небо мерцающими огнями.&#xA;&#xA;Разместите пусковую трубку с помощью &lt;VAL_ON&gt;меню созидания&lt;&gt;(&lt;IMG&gt;BUILD_MENU&lt;&gt;). &lt;FUEL&gt;Внимание&lt;&gt;: не нацеливайте на живых существ. Не рекомендуется использовать в помещениях.
                                { "Russian", "Экзотический фейерверк, содержащий соли &lt;COMMODITY&gt;натрия&lt;&gt;. Вдохновлен подвижными формами титанических песчаных червей. Зажгите его, чтобы озарить небо мерцающими огнями.&#xA;&#xA;Разместите пусковую трубку с помощью &lt;VAL_ON&gt;меню созидания&lt;&gt; (&lt;IMG&gt;BUILD_MENU&lt;&gt;). &lt;FUEL&gt;Внимание&lt;&gt;: не нацеливайте на живых существ. Не рекомендуется использовать в помещениях." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FIREWORK_PROD_TITAN_G_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Экзотический фейерверк, содержащий соли &lt;TRADEABLE&gt;эмерила&lt;&gt;. Вдохновлен подвижными формами титанических песчаных червей. Зажгите его, чтобы озарить небо мерцающими огнями.&#xA;&#xA;Разместите пусковую трубку с помощью &lt;VAL_ON&gt;меню созидания&lt;&gt;(&lt;IMG&gt;BUILD_MENU&lt;&gt;). &lt;FUEL&gt;Внимание&lt;&gt;: не нацеливайте на живых существ. Не рекомендуется использовать в помещениях.
                                { "Russian", "Экзотический фейерверк, содержащий соли &lt;TRADEABLE&gt;эмерила&lt;&gt;. Вдохновлен подвижными формами титанических песчаных червей. Зажгите его, чтобы озарить небо мерцающими огнями.&#xA;&#xA;Разместите пусковую трубку с помощью &lt;VAL_ON&gt;меню созидания&lt;&gt; (&lt;IMG&gt;BUILD_MENU&lt;&gt;). &lt;FUEL&gt;Внимание&lt;&gt;: не нацеливайте на живых существ. Не рекомендуется использовать в помещениях." },
                            }
                        },
                        -- на экране подарков от гильдии
                        -- вообще так не должно быть, но т.к. эта строчка используется (пока) в одном месте,
                        -- то оставляем в таком виде
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_GUILD_SHOP_FREE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Бесплатно для ранга %RANK% и выше
                                -- Free for %RANK% and above
                                { "Russian", "Бесплатно для ранга&#xA;%RANK% и выше" },
                            }
                        },
                        --
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PP_BUI_CRAFTING_OBJ_HEADER" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Создать: %ITEM% (%COUNT%)
                                -- Craft %COUNT% x %ITEM%
                                { "Russian", "Создать %COUNT% × %ITEM%" },
                            }
                        },

                        --#region Новая репутация преступника
                        -- какая нафиг репутация? даже сами разрабы запутались, толи это репутация, толи ранги
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "OSD_PIRATE_PLAYER_RANK_BAD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Новая репутация преступника: Предатель
                                -- New Outlaw Reputation: Traitor
                                { "Russian", "Новый ранг: Предатель Пиратов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "OSD_PIRATE_PLAYER_RANK_LOW" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Новая репутация преступника: Перебежчик
                                -- New Outlaw Reputation: Turncoat
                                { "Russian", "Новый ранг у пиратов: Перебежчик" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "OSD_PIRATE_PLAYER_RANK_NORMAL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Новая репутация преступника: Неизвестный
                                -- New Outlaw Reputation: Unknown
                                { "Russian", "Новый ранг: Неизвестный Пират" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "OSD_PIRATE_PLAYER_RANK_IMPROVED" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Новая репутация преступника: Трюмная крыса
                                -- New Outlaw Reputation: Bilge Rat
                                { "Russian", "Новый ранг: Трюмная крыса Пиратов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "OSD_PIRATE_PLAYER_RANK_MEDIUM" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Новая репутация преступника: Капер
                                -- New Outlaw Reputation: Privateer
                                { "Russian", "Новый ранг: Капер Пиратов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "OSD_PIRATE_PLAYER_RANK_GOOD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Новая репутация преступника: Корсар
                                -- New Outlaw Reputation: Corsair
                                { "Russian", "Новый ранг: Корсар Пиратов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "OSD_PIRATE_PLAYER_RANK_HIGH" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Новая репутация преступника: Буканьер
                                -- New Outlaw Reputation: Buccaneer
                                { "Russian", "Новый ранг: Буканьер Пиратов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "OSD_PIRATE_PLAYER_RANK_HIGHEST" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Новая репутация преступника: Гроза
                                -- New Outlaw Reputation: Scourge
                                { "Russian", "Новый ранг: Гроза Пиратов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "OSD_PIRATE_PLAYER_RANK_HIGHEST1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Новая репутация преступника: Легенда
                                -- New Outlaw Reputation: Legend
                                { "Russian", "Новый ранг: Легенда Пиратов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "OSD_PIRATE_PLAYER_RANK_HIGHEST2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Новая репутация преступника: Жуткий пират
                                -- New Outlaw Reputation: Dread-Pirate
                                { "Russian", "Новый ранг: Жуткий пират" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "OSD_PIRATE_PLAYER_RANK_HIGHEST3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Новая репутация преступника: Черный адмирал
                                -- New Outlaw Reputation: Admiral of the Black
                                { "Russian", "Новый ранг: Чёрный адмирал Пиратов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "PIRATE_PLAYER_RANK_HIGHEST3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Черный адмирал
                                { "Russian", "Чёрный адмирал" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PLAYER_TITLE_PIR4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Черный адмирал %NAME%
                                { "Russian", "Чёрный адмирал %NAME%" },
                            }
                        },
                        --
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BOUNTIES_TITLE_10" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Звездный волк
                                -- Star Wolf
                                { "Russian", "Звёздный волк" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PLAYER_TITLE_BOUNTY2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Звездный волк %NAME%
                                { "Russian", "Звёздный волк %NAME%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TRADERS_KILLED_TITLE_7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Звездный пират
                                -- Star Pirate
                                { "Russian", "Звёздный пират" },
                            }
                        },
                        --
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED11_GOT_NANITES_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Зерна реальности
                                { "Russian", "Зёрна реальности" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED11_GOT_NANITES_NAME_U" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ЗЕРНА РЕАЛЬНОСТИ
                                -- REALITY GRAINS
                                { "Russian", "ЗЁРНА РЕАЛЬНОСТИ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_S12_POI1_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Зерна реальности
                                { "Russian", "Зёрна реальности" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_S12_POI1_NAME_U" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ЗЕРНА РЕАЛЬНОСТИ
                                -- REALITY GRAINS
                                { "Russian", "ЗЁРНА РЕАЛЬНОСТИ" },
                            }
                        },
                        --
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_TREASURE_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Все, что блестит
                                -- All that Glitters
                                { "Russian", "Всё, что блестит" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_TREASURE_NAME_U" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ВСЕ, ЧТО БЛЕСТИТ
                                -- ALL THAT GLITTERS
                                { "Russian", "ВСЁ, ЧТО БЛЕСТИТ" },
                            }
                        },
                        --
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PLAYER_TITLE_PIR3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Страшный пират %NAME%
                                -- Dread-Pirate %NAME%
                                { "Russian", "Жуткий пират %NAME%" },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ROBOMISS_1_HEAD_OSD_MAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- НАВИГАЦИОННАЯ ЦЕЛЬ ЗАХВАЧЕНА &lt;IMG&gt;SLASH&lt;&gt; ОТКРОЙТЕ ГАЛАКТИЧЕСКУЮ КАРТУ
                                -- NAVIGATIONAL TARGET ACQUIRED &lt;IMG&gt;SLASH&lt;&gt; CONSULT GALAXY MAP
                                { "Russian", "ПОЛУЧЕНЫ КООРДИНАТЫ ЦЕЛИ &lt;IMG&gt;SLASH&lt;&gt; ОТКРОЙТЕ ГАЛАКТИЧЕСКУЮ КАРТУ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_INSTALL_TECH_LABEL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Установить Технологию
                                -- Install technology subcomponent
                                { "Russian", "Установить подкомпонент технологии" },
                            }
                        },

                        --#region Новая запись
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NEW_WONDER_TREASURE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Новая запись (сокровища):
                                -- New Treasure Record:
                                { "Russian", "Новое сокровище: " },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NEW_WONDER_WEIRD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Зарегистрирована новая аномалия:
                                -- New Anomaly Recorded:
                                { "Russian", "Новая аномалия: " },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NEW_WONDER_PLANET" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Новая запись (планета):
                                -- New Planetary Record:
                                { "Russian", "Рекорд планеты: " },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NEW_WONDER_CREATURE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Новая запись о существе:
                                -- New Creature Record:
                                { "Russian", "Рекорд фауны: " },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NEW_WONDER_FLORA" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Новая запись (флора):
                                -- New Flora Record:
                                { "Russian", "Рекорд флоры: " },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NEW_WONDER_MINERAL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Новая запись (минерал):
                                -- New Mineral Record:
                                { "Russian", "Рекорд минерала: " },
                            }
                        },
                        --#endregion

                        -- тип фауны
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RARITY_ROBOT1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Синтетическ.
                                -- Synthetic
                                { "Russian", "Синтетическая" },
                            }
                        },
                        --
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ROBOT_MONO_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Монолит был &lt;SPECIAL&gt;насыщен&lt;&gt; атлантидием.&#xA;Узрите результат на центральном постаменте.
                                -- The monolith has been &lt;SPECIAL&gt;infused&lt;&gt; with Atlantideum&#xA;Witness before the central plinth
                                { "Russian", "Монолит &lt;SPECIAL&gt;насытился&lt;&gt; атлантидием&#xA;Узрите результат на центральном постаменте" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ROBOT_MONO_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Монолит завершил свое откровение.&#xA;Еще раз осмотрите атлантидиевый &lt;SPECIAL&gt;интерфейс&lt;&gt;.
                                { "Russian", "Монолит закончил свое откровение&#xA;Еще раз осмотрите атлантидиевый &lt;SPECIAL&gt;интерфейс&lt;&gt;" },
                            }
                        },
                        --
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SHIP_BUY_NANITES" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Купить (%COST% нанит.)
                                -- Buy (%COST% nanites)
                                { "Russian", "Купить &lt;IMG&gt;NANITESMALL&lt;&gt;%COST%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SHIP_EXCHANGE_NANITES" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обмен (%COST% нанит.)
                                -- Exchange (%COST% nanites)
                                { "Russian", "Обменять &lt;IMG&gt;NANITESMALL&lt;&gt;%COST%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BUY_ACCEPT_PRICE_NANITES" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Согласиться (%COST% нанит.)
                                -- Accept (%COST% nanites)
                                { "Russian", "Принять &lt;IMG&gt;NANITESMALL&lt;&gt;%COST%" },
                            }
                        },
                        --
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MAINTAIN_MONO_NUB_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Позволить атлантидию течь сквозь знаки
                                -- Allow Atlantideum to flow through the glyphs
                                { "Russian", "Позвольте атлантидию течь сквозь знаки" },
                            }
                        },
                        -- консоль улучшения звездолета
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COST_SALVAGE_PRODS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Извлечь модуль вида
                                -- Extract customisation module
                                { "Russian", "Разобрать на части" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SHIP_BUILDER_INPUT_SAIL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПЛЫТЬ
                                -- SAIL
                                { "Russian", "ПАРУС" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SHIP_BUILDER_PREVIEW_HEADER" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Настройка фабрикатора:
                                -- Fabrication setting:
                                { "Russian", "Настройка:" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BUILT_SHIP_ACCEPT_SWAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Заменить на текущий корабль
                                -- Swap with current ship
                                { "Russian", "Заменить" },
                            }
                        },
                        { -- синоним "аутофаг"
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BUILDER_NAME_ALT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Атлантида
                                -- Atlantid
                                { "Russian", "Атлантид" },
                            }
                        },
                        { -- класс мультитула
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BASESTATS_ATLASGUN_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Атлантида
                                -- Atlantid
                                { "Russian", "Атлантидский" },
                            }
                        },
                        -- точки в конце лишние
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TITLE_OWNED_BOUNTY1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вы достигли 8-го ранга по заказам на звездолеты.
                                { "Russian", "Вы достигли 8-го ранга по заказам на звездолёты" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TITLE_OWNED_BOUNTY2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вы достигли максимального ранга по заказам на звездолеты.
                                { "Russian", "Вы достигли максимального ранга по заказам на звездолёты" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TITLE_OWNED_RAID1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вы достигли 2-го ранга за грабеж торговцев.
                                { "Russian", "Вы достигли 2-го ранга за грабеж торговцев" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TITLE_OWNED_RAID2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вы достигли 7-го ранга за грабеж торговцев.
                                { "Russian", "Вы достигли 7-го ранга за грабеж торговцев" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TITLE_OWNED_RAID3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вы достигли 8-го ранга за грабеж торговцев.
                                { "Russian", "Вы достигли 8-го ранга за грабеж торговцев" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TITLE_OWNED_RAID4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вы достигли максимального ранга за грабеж торговцев.
                                { "Russian", "Вы достигли максимального ранга за грабеж торговцев" },
                            }
                        },
                        --
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ADD_CUSTOM_WONDER_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Создать новую запись для %DISC_NEW%.
                                -- Create new record for %DISC_NEW%
                                { "Russian", "Создать новую запись для %DISC_NEW%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "WONDER_MINERAL_0_UNIT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Удельная плотность: &lt;STELLAR&gt;%NUM% кг/м3&lt;&gt;
                                -- Specific Gravity: &lt;STELLAR&gt;%NUM% kg/u3&lt;&gt;
                                { "Russian", "Удельный вес: &lt;STELLAR&gt;%NUM% кг/м³&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FIND_WONDER_BUTTON_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Перейдите на страницу открытий, чтобы выбрать чудо.
                                -- Go to the Discovery Page to choose a wonder
                                { "Russian", "Перейти на страницу открытий, чтобы выбрать чудо" },
                            }
                        },

                        --#region РЕАКТОР КЛАССА
                        -- увы, русские кавычки в капсе для данного шрифта не смотрятся
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SHIP_CORE_C_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- РЕАКТОР КЛАССА «C»
                                -- C-CLASS REACTOR
                                { "Russian", "РЕАКТОР C-КЛАССА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SHIP_CORE_B_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- РЕАКТОР КЛАССА «B»
                                { "Russian", "РЕАКТОР B-КЛАССА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SHIP_CORE_A_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- РЕАКТОР КЛАССА «A»
                                { "Russian", "РЕАКТОР A-КЛАССА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SHIP_CORE_S_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- РЕАКТОР КЛАССА «S»
                                { "Russian", "РЕАКТОР S-КЛАССА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SHIP_CORE_C_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Реактор класса «C»
                                { "Russian", "Реактор C-класса" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SHIP_CORE_B_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Реактор класса «B»
                                { "Russian", "Реактор B-класса" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SHIP_CORE_A_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Реактор класса «A»
                                { "Russian", "Реактор A-класса" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SHIP_CORE_S_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Реактор класса «S»
                                { "Russian", "Реактор S-класса" },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ADD_CUSTOM_WONDER" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПРИПИСАТЬ ОТКРЫТИЕ
                                -- ASSIGN DISCOVERY
                                { "Russian", "ДОБАВИТЬ ОТКРЫТИЕ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_REASSIGN_CUSTOM_WONDER" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПРИПИСАТЬ ОТКРЫТИЕ
                                -- ASSIGN DISCOVERY
                                { "Russian", "ПЕРЕПИСАТЬ ОТКРЫТИЕ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_REASSIGN_CUSTOM_WONDER_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Заменить %DISC_OLD% на %DISC_NEW%.
                                -- Replace %DISC_OLD% with %DISC_NEW%
                                { "Russian", "Заменить %DISC_OLD% на %DISC_NEW%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_REPLACE_CUSTOM_WONDER_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Убрать «%WONDER%» и создать новую запись.
                                -- Remove '%WONDER%' and create new record
                                { "Russian", "Удалить '%WONDER%' и создать новую запись" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WEAPSENT_DMG_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Частичный утиль стража
                                -- Incomplete Sentinel Salvage
                                { "Russian", "Часть технологии стражей" },
                            }
                        },
                        -- перенос запятой на начало строки
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BUILDER_CUSTOM_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Эксклюзивное &lt;STELLAR&gt;изменение внешнего вида экзокостюма&lt;&gt;, дарованное &lt;TRANS_BUI&gt;аутофагом&lt;&gt; тем, кто хочет собрать собственную оболочку.&#xA;&#xA;Поменяйте внешний вид экзокостюма в &lt;TECHNOLOGY&gt;модификаторе внешности&lt;&gt;.
                                -- An exclusive &lt;STELLAR&gt;Exosuit Appearance Override&lt;&gt;, granted by the &lt;TRANS_BUI&gt;Autophage&lt;&gt; to those who seek to build their own shell.&#xA;&#xA;Transform the appearance of your Exosuit at an &lt;TECHNOLOGY&gt;Appearance Modifier&lt;&gt;.
                                { "Russian", "Эксклюзивное &lt;STELLAR&gt;изменение внешнего вида экзокостюма﻿,&lt;&gt; дарованное &lt;TRANS_BUI&gt;аутофагом&lt;&gt; тем, кто хочет собрать собственную оболочку.&#xA;&#xA;Изменяйте внешний вид экзокостюма в &lt;TECHNOLOGY&gt;модификаторе внешности&lt;&gt;." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BUILDER_CUSTOM_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Изменение внешнего вида аутофага
                                -- Autophage Appearance Modification
                                { "Russian", "Изменение облика аутофага" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BUI_SCRAP_HINT_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Изменение внешнего вида аутофага
                                -- Autophage Appearance Modification
                                { "Russian", "Изменение облика аутофага" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BUILDSHIP_OSD_OCCUPIED" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Чтобы начать производство, нужно отправить только что построенный звездолет в полет со стартовой площадки.
                                -- Newly built starship must be flown from the pad to begin fabrication
                                { "Russian", "Освободите платформу для сборки звездолёта" },
                            }
                        },

                        --#region UI_GET_TECHITEM_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_GET_TECHITEM_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Изучите чертеж технологии «&lt;TECHNOLOGY&gt;%ITEM%&lt;&gt;».&#xA;Чтобы получить чертеж, пройдите этап «&lt;EXPED&gt;%MILESTONE%&lt;&gt;».&#xA;Выбрать этап можно на вкладке &lt;STELLAR&gt;экспедиции&lt;&gt; (&lt;IMG&gt;OPTIONS&lt;&gt;).
                                { "Russian", "Изучите чертеж &lt;TECHNOLOGY&gt;%ITEM%&lt;&gt;&#xA;Завершите этап “&lt;EXPED&gt;%MILESTONE%&lt;&gt;” для получения чертежа&#xA;Выбрать этап можно на вкладке &lt;STELLAR&gt;экспедиции&lt;&gt; (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_GET_TECHITEM_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Установите: &lt;TECHNOLOGY&gt;%ITEM%&lt;&gt;.&#xA;Откройте инвентарь с помощью &lt;IMG&gt;INVENTORY&lt;&gt;.&#xA;Выберите пустую ячейку и начните установку с помощью &lt;IMG&gt;TECHMENU&lt;&gt;.
                                { "Russian", "Установите: &lt;TECHNOLOGY&gt;%ITEM%&lt;&gt;&#xA;Откройте инвентарь с помощью &lt;IMG&gt;INVENTORY&lt;&gt;&#xA;Выберите пустую ячейку и начните установку с помощью &lt;IMG&gt;TECHMENU&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_GET_TECHITEM_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Завершите установку: &lt;TECHNOLOGY&gt;%ITEM%&lt;&gt;.&#xA;Используйте &lt;IMG&gt;TECHMENU&lt;&gt;, чтобы осмотреть частично установленную технологию.&#xA;Добавьте собранные компоненты, чтобы завершить установку.
                                { "Russian", "Завершите установку: &lt;TECHNOLOGY&gt;%ITEM%&lt;&gt;&#xA;Используйте &lt;IMG&gt;TECHMENU&lt;&gt;, чтобы осмотреть частично установленную технологию&#xA;Примените собранные компоненты, чтобы завершить установку" },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_GUILD_SHOP_RANK_REQ" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Требуется статус: %RANK%
                                -- Status Required: %RANK%
                                { "Russian", "Требуется ранг&#xA;%RANK% или выше" },
                            }
                        },

                        --#region UI_PP_KILL_WRM_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PP_KILL_WRM_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Уничтожьте &lt;FUEL&gt;алчущие отростки&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Их пасти во множестве наблюдаются возле &lt;FUEL&gt;нор титанических червей&lt;&gt;.&#xA;Чтобы найти норы червей, используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;).
                                { "Russian", "Уничтожьте &lt;FUEL&gt;алчущие отростки&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Возле &lt;FUEL&gt;нор титанических червей&lt;&gt; располагаются их пасти&#xA;Находите норы с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PP_KILL_WRM_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Уничтожьте &lt;FUEL&gt;алчущие отростки&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;На данной планете норы червей не обнаружены.&#xA;Находите зараженные миры, сканируя планеты из космоса (&lt;IMG&gt;SCAN&lt;&gt;).
                                { "Russian", "Уничтожьте &lt;FUEL&gt;алчущие отростки&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;На данной планете норы червей не обнаружены&#xA;Находите зараженные миры, сканируя планеты из космоса (&lt;IMG&gt;SCAN&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PP_KILL_WRM_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Уничтожьте &lt;FUEL&gt;алчущие отростки&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;В данной системе норы червей не обнаружены.&#xA;Вернитесь в систему &lt;STELLAR&gt;%SYSTEM%&lt;&gt;
                                { "Russian", "Уничтожьте &lt;FUEL&gt;алчущие отростки&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;В данной системе норы червей не обнаружены&#xA;Вернитесь в систему &lt;STELLAR&gt;%SYSTEM%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PP_KILL_WRM_MSG5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Уничтожьте &lt;FUEL&gt;алчущие отростки&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Чтобы найти зараженные миры, сканируйте планеты с борта звездолета (&lt;IMG&gt;SCAN&lt;&gt;).
                                { "Russian", "Уничтожьте &lt;FUEL&gt;алчущие отростки&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Чтобы найти зараженные миры, сканируйте планеты из звездолёта (&lt;IMG&gt;SCAN&lt;&gt;)" },
                            }
                        },
                        --#endregion

                        --#region UI_GROUNDWORMS_BAR
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_GROUNDWORMS_BAR_BASE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- СУДНО
                                -- VESSEL
                                { "Russian", "РОСТОК" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_GROUNDWORMS_BAR_HULL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- СУДНО I
                                -- VESSEL I
                                { "Russian", "РОСТОК А" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_GROUNDWORMS_BAR_SHIELD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- СУДНО II
                                { "Russian", "РОСТОК Б" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_GROUNDWORMS_BAR_EXTRA" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- СУДНО III
                                { "Russian", "РОСТОК В" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_GROUNDWORMS_BAR_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Уничтожьте алчущие отростки.
                                -- Exterminate the hungering tendrils
                                { "Russian", "УНИЧТОЖЬТЕ АЛЧУЩИЕ ОТРОСТКИ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_GROUNDWORMS_BAR_TIP_SPAWN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Уклоняйтесь от дождя голодной кислоты!
                                -- Evade the rain of hungering acid!
                                { "Russian", "УКЛОНЯЙТЕСЬ ОТ ДОЖДЯ ГОЛОДНОЙ КИСЛОТЫ!" },
                            }
                        },
                        --#endregion

                        --#region UI_PP_BUI_KILL_C
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PP_BUI_KILL_C_TITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Уничтожение стражей: планета %PLANET%
                                { "Russian", "Уничтожение стражей на планете %PLANET%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PP_BUI_KILL_C_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Испорченные дроны&lt;&gt; патрулируют лишенные гармонии миры. Их оболочки искажены силой, излучаемой тканью планеты. Найдите &lt;STELLAR&gt;лишенные гармонии&lt;&gt; системы на галактической карте. Находясь в космосе, просканируйте отдельные планеты с помощью &lt;TECHNOLOGY&gt;сканера&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;) звездолета, чтобы найти миры, где скопились отряды испорченных стражей.&#xA;&#xA;Подробнее смотрите в разделе &lt;STELLAR&gt;«Бой»&lt;&gt; соответствующего руководства.
                                { "Russian", "&lt;SPECIAL&gt;Испорченные дроны&lt;&gt; патрулируют лишенные гармонии миры. Их оболочки искажены силой, излучаемой тканью планеты. Найдите &lt;STELLAR&gt;лишенные гармонии&lt;&gt; системы на галактической карте. Находясь в космосе, просканируйте каждую планету с помощью &lt;TECHNOLOGY&gt;сканера&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;) звездолёта, чтобы найти миры, где скопились отряды испорченных стражей.&#xA;&#xA;Подробнее смотрите в разделе &lt;STELLAR&gt;«Бой»&lt;&gt; соответствующего руководства." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PP_BUI_KILL_C_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сотрите испорченных стражей: %CURRENT%/%AMOUNT%&#xA;Находясь в космосе, воспользуйтесь галактической картой (&lt;IMG&gt;QUICK_MENU&lt;&gt;), чтобы найти &lt;SPECIAL&gt;лишенные гармонии&lt;&gt; миры.
                                { "Russian", "Сотрите испорченных стражей: %CURRENT%/%AMOUNT%&#xA;Находясь в космосе, воспользуйтесь галактической картой (&lt;IMG&gt;QUICK_MENU&lt;&gt;),&#xA;чтобы найти &lt;SPECIAL&gt;лишенные гармонии&lt;&gt; миры" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PP_BUI_KILL_C_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сотрите испорченных стражей: %CURRENT%/%AMOUNT%&#xA;Неподалеку обнаружена &lt;SPECIAL&gt;лишенная гармонии&lt;&gt; планета.&#xA;&lt;TECHNOLOGY&gt;Сканер&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;) звездолета способен находить планеты испорченных дронов.
                                { "Russian", "Сотрите испорченных стражей: %CURRENT%/%AMOUNT%&#xA;Неподалеку обнаружена &lt;SPECIAL&gt;лишенная гармонии&lt;&gt; планета&#xA;Ищите планеты испорченных дронов, используя &lt;TECHNOLOGY&gt;сканер&lt;&gt; звездолёта (&lt;IMG&gt;SCAN&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PP_BUI_KILL_C_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сотрите испорченных стражей: %CURRENT%/%AMOUNT%&#xA;&lt;SPECIAL&gt;Испорченные дроны&lt;&gt; роятся в этом лишенном гармонии мире.
                                { "Russian", "Сотрите испорченных стражей: %CURRENT%/%AMOUNT%&#xA;&lt;SPECIAL&gt;Испорченные дроны&lt;&gt; роятся в этом лишенном гармонии мире" },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SHIPJUMP1_DAMAGED_S13" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обеспечивает реактивную тягу в космосе и атмосферах планет.&#xA;&#xA;Система сильно повреждена. Для ремонта требуются &lt;COMMODITY&gt;металлическая обшивка&lt;&gt; и &lt;FUEL&gt;герметик&lt;&gt;.&#xA;&#xA;Закрепите подробные инструкции по ремонту с помощью &lt;IMG&gt;PIN&lt;&gt;.
                                -- Provides space and atmospheric flight propulsion.&#xA;&#xA;System is highly damaged and requires &lt;COMMODITY&gt;Metal Plating&lt;&gt; and &lt;FUEL&gt;Hermetic Seal&lt;&gt; to repair.&#xA;&#xA;Use &lt;IMG&gt;PIN&lt;&gt; to pin detailed repair instructions.
                                { "Russian", "Обеспечивает реактивную тягу в космосе и атмосфере планет.&#xA;&#xA;Система сильно повреждена. Для ремонта требуются &lt;COMMODITY&gt;металлическая обшивка&lt;&gt; и &lt;FUEL&gt;герметик&lt;&gt;.&#xA;&#xA;Закрепите подробные инструкции по ремонту с помощью &lt;IMG&gt;PIN&lt;&gt;." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXCLUSIVE_STAT_TECH_WARNING" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Удалите «%ITEM%», чтобы продолжить установку
                                -- Uninstall %ITEM% to proceed with installation
                                { "Russian", "Сначала нужно удалить “%ITEM%”" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SIGNAL_BATTERY_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Энергетический пакет высокого напряжения
                                -- High Voltage Energy Pack
                                { "Russian", "Высоковольтный аккумулятор" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DEMAND_SUFFIX_WEIRD1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Данные об экономике недоступны&lt;&gt;
                                -- &lt;SPECIAL&gt;Economy Data Unavailable&lt;&gt;
                                { "Russian", "&lt;SPECIAL&gt;Нет данных об экономике&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_REPAIR_TECH_NO_PIN_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;%TECH%&lt;&gt;. Статус: &lt;FUEL&gt;критическое повреждение&lt;&gt;. Чтобы восстановить работу, отремонтируйте все подкомпоненты.&#xA;&#xA;Для ремонта этого подкомпонента требуется: &lt;TECHNOLOGY&gt;%NUM% х %ITEM%&lt;&gt;. Подробные &lt;STELLAR&gt;инструкции для ремонта&lt;&gt; можно найти в журнале заданий, включая информацию о том, где можно найти требуемые предметы.
                                -- &lt;TECHNOLOGY&gt;%TECH%&lt;&gt; status: &lt;FUEL&gt;critically damaged&lt;&gt;. Each subcomponent must be repaired to restore functionality.&#xA;&#xA;Repair this subcomponent with &lt;TECHNOLOGY&gt;%NUM% x %ITEM%&lt;&gt;. Find detailed &lt;STELLAR&gt;repair instructions&lt;&gt; in  your mission log, including information about where to find the required items.
                                { "Russian", "Технология &lt;FUEL&gt;критически повреждена&lt;&gt;. Почините все подкомпоненты для восстановления полной работоспособности.&#xA;&#xA;Для ремонта данного подкомпонента потребуется:&#xA;&lt;TECHNOLOGY&gt;%ITEM%&lt;&gt;, %NUM% шт." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_REPAIRED_TECH_NO_PIN_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Подкомпонент &lt;TECHNOLOGY&gt;%TECH%&lt;&gt;. Статус: &lt;TRADEABLE&gt;полностью отремонтирован&lt;&gt;. Чтобы закончить ремонт, восстановите дополнительные подкомпоненты.&#xA;&#xA;Вернитесь в игру (&lt;IMG&gt;FE_BACK&lt;&gt;) или найдите подробные &lt;STELLAR&gt;инструкции для ремонта&lt;&gt; других компонентов в журнале заданий (&lt;IMG&gt;OPTIONS&lt;&gt;), включая информацию о поиске предметов.
                                -- &lt;TECHNOLOGY&gt;%TECH%&lt;&gt; subcomponent status: &lt;TRADEABLE&gt;fully repaired&lt;&gt;. Restore additional subcomponents to complete the repair.&#xA;&#xA;Return to game (&lt;IMG&gt;FE_BACK&lt;&gt;) or find detailed &lt;STELLAR&gt;repair instructions&lt;&gt; for other components in your mission log (&lt;IMG&gt;OPTIONS&lt;&gt;), including information about where to find the required items.
                                { "Russian", "Подкомпонент &lt;TRADEABLE&gt;полностью отремонтирован&lt;&gt;. Чтобы закончить ремонт, почините другие подкомпоненты.&#xA;&#xA;Вернитесь в игру (&lt;IMG&gt;FE_BACK&lt;&gt;) или найдите подробные &lt;STELLAR&gt;инструкции для ремонта&lt;&gt; других компонентов в журнале заданий (&lt;IMG&gt;OPTIONS&lt;&gt;)." },
                            }
                        },

                        --#region UI_ROBOMISS_1_HEAD_SUR
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ROBOMISS_1_HEAD_SUR" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Следуйте по &lt;STELLAR&gt;направляющим&lt;&gt;, чтобы найти источник взлома&#xA;.&lt;TECHNOLOGY&gt;Разведка цели&lt;&gt; укажет точные координаты задания.
                                { "Russian", "Следуйте по &lt;STELLAR&gt;направляющим&lt;&gt;, чтобы найти источник взлома&#xA;&lt;TECHNOLOGY&gt;Разведка цели&lt;&gt; укажет точные координаты задания" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ROBOMISS_1_HEAD_SUR_OFF" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Источник взлома системы навигации расположен &lt;STELLAR&gt;неподалеку&lt;&gt;.&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; в анализирующем визоре (&lt;IMG&gt;AIM&lt;&gt;).
                                { "Russian", "Источник взлома системы навигации расположен &lt;STELLAR&gt;неподалеку&lt;&gt;&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; в анализирующем визоре (&lt;IMG&gt;AIM&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ROBOMISS_1_HEAD_SUR_SWAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Источник взлома системы навигации расположен &lt;STELLAR&gt;неподалеку&lt;&gt;.&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;.
                                { "Russian", "Источник взлома системы навигации расположен &lt;STELLAR&gt;неподалеку&lt;&gt;&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ROBOMISS_1_HEAD_SUR_CAR" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Источник взлома системы навигации расположен &lt;STELLAR&gt;неподалеку&lt;&gt;.&#xA;Воспользуйтесь &lt;STELLAR&gt;разведкой цели&lt;&gt;, чтобы его найти.&#xA;Чтобы подтвердить направление разведки, выйдите из своего транспорта.
                                { "Russian", "Источник взлома системы навигации расположен &lt;STELLAR&gt;неподалеку&lt;&gt;&#xA;Воспользуйтесь &lt;STELLAR&gt;разведкой цели&lt;&gt;, чтобы найти его&#xA;Выйдите из транспорта, чтобы сверить направление" },
                            }
                        },
                        --#endregion

                        --#region UI_ROBOMISS_3_NADA_MSG1_SUR
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ROBOMISS_3_NADA_MSG1_SUR" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Двигайтесь по &lt;STELLAR&gt;направляющим&lt;&gt;, чтобы найти чувствительное к атлантидию устройство.&#xA;&lt;TECHNOLOGY&gt;Разведка цели&lt;&gt; укажет точные координаты задания.
                                { "Russian", "Двигайтесь по &lt;STELLAR&gt;направляющим&lt;&gt;, чтобы найти чувствительное к атлантидию устройство&#xA;&lt;TECHNOLOGY&gt;Разведка цели&lt;&gt; укажет точные координаты задания" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ROBOMISS_3_NADA_MSG1_SUR_OFF" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Чувствительное к атлантидию вычислительное устройство расположено &lt;STELLAR&gt;неподалеку&lt;&gt;.&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; в анализирующем визоре (&lt;IMG&gt;AIM&lt;&gt;).
                                { "Russian", "Чувствительное к атлантидию устройство расположено &lt;STELLAR&gt;неподалеку&lt;&gt;&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; в анализирующем визоре (&lt;IMG&gt;AIM&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ROBOMISS_3_NADA_MSG1_SUR_SWP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Чувствительное к атлантидию вычислительное устройство расположено &lt;STELLAR&gt;неподалеку&lt;&gt;.&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;
                                { "Russian", "Чувствительное к атлантидию устройство расположено &lt;STELLAR&gt;неподалеку&lt;&gt;&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ROBOMISS_3_NADA_MSG1_SUR_CAR" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Чувствительное к атлантидию вычислительное устройство расположено &lt;STELLAR&gt;неподалеку&lt;&gt;.&#xA;Воспользуйтесь &lt;STELLAR&gt;разведкой цели&lt;&gt;, чтобы его найти.&#xA;Чтобы подтвердить направление разведки, выйдите из своего транспорта.
                                { "Russian", "Чувствительное к атлантидию устройство расположено &lt;STELLAR&gt;неподалеку&lt;&gt;&#xA;Воспользуйтесь &lt;STELLAR&gt;разведкой цели&lt;&gt;, чтобы найти его&#xA;Выйдите из транспорта, чтобы сверить направление" },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_AMMO_NOTIFY_S9" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Для стрельбы из кинетического оружия, такого как &lt;TECHNOLOGY&gt;плазмомет&lt;&gt;, требуется амуниция.&#xA;Вернитесь на базу, чтобы изготовить &lt;STELLAR&gt;боеприпасы&lt;&gt;.
                                -- Projectile weapons like the &lt;TECHNOLOGY&gt;Boltcaster&lt;&gt; require ammunition&#xA;Return to a base to craft &lt;STELLAR&gt;ammunition&lt;&gt;
                                { "Russian", "Для стрелкового оружия, такого как &lt;TECHNOLOGY&gt;плазмомет&lt;&gt;, нужна амуниция&#xA;Вернитесь на базу, чтобы изготовить &lt;STELLAR&gt;боеприпасы&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PP_BUI_STELLAR_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Хроматический металл&lt;&gt; создается в &lt;TECHNOLOGY&gt;очистителе&lt;&gt; из &lt;STELLAR&gt;звездных металлов&lt;&gt;: &lt;COMMODITY&gt;меди&lt;&gt;, &lt;FUEL&gt;кадмия&lt;&gt;, &lt;TRADEABLE&gt;эмерила&lt;&gt; и &lt;TECHNOLOGY&gt;индия&lt;&gt;.&#xA;&#xA;Чем более &lt;SPECIAL&gt;редким&lt;&gt; является звездный металл, тем больше хроматического металла из него получается. Ищите залежи звездных металлов на поверхности планет с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;.
                                -- &lt;SPECIAL&gt;Chromatic Metal&lt;&gt; is created in a &lt;TECHNOLOGY&gt;Refiner&lt;&gt; from the &lt;STELLAR&gt;stellar metals&lt;&gt;: &lt;COMMODITY&gt;Copper&lt;&gt;, &lt;FUEL&gt;Cadmium&lt;&gt;, &lt;TRADEABLE&gt;Emeril&lt;&gt; and &lt;TECHNOLOGY&gt;Indium&lt;&gt;.&#xA;&#xA;The &lt;SPECIAL&gt;rarer&lt;&gt; the stellar metal, the more Chromatic Metal it will produce. Find stellar metal deposits on planets using the &lt;TECHNOLOGY&gt;Analysis Visor&lt;&gt;.
                                { "Russian", "&lt;SPECIAL&gt;Хроматический металл&lt;&gt; создается в &lt;TECHNOLOGY&gt;очистителе&lt;&gt; из &lt;STELLAR&gt;звёздных металлов﻿:&lt;&gt; &lt;COMMODITY&gt;меди﻿,&lt;&gt; &lt;FUEL&gt;кадмия﻿,&lt;&gt; &lt;TRADEABLE&gt;эмерила&lt;&gt; и &lt;TECHNOLOGY&gt;индия﻿.&lt;&gt;&#xA;&#xA;Чем более &lt;SPECIAL&gt;редким&lt;&gt; является звёздный металл, тем больше хроматического металла из него получается. Ищите залежи звёздных металлов на поверхности планет с помощью &lt;TECHNOLOGY&gt;анализирующего визора﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SCANEVENT_NEEDS_RESTART" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Цель задания слишком далека&#xA;Вернитесь к расположенной неподалеку точке с помощью журнала (&lt;IMG&gt;OPTIONS&lt;&gt;)
                                -- Mission target is very distant&#xA;Reset to a nearby location from the Log (&lt;IMG&gt;OPTIONS&lt;&gt;)
                                { "Russian", "Цель задания слишком далека&#xA;Перезапустите задание в журнале (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                            }
                        },

                        --#region Режим энергосистемы звездолета
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_POWER_SETTING_SCREEN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Силовые установки: &lt;TRADEABLE&gt;%SETTING%&lt;&gt;
                                -- Power Systems: &lt;TRADEABLE&gt;%SETTING%&lt;&gt;
                                { "Russian", "&lt;TRADEABLE&gt;%SETTING%&lt;&gt; ВСЕХ ЭНЕРГОСИСТЕМ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_POWER_SETTING_SCREEN_ALT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Мощность перенаправлена ​​на: &lt;STELLAR&gt;%SETTING%&lt;&gt;
                                { "Russian", "&lt;STELLAR&gt;%SETTING%&lt;&gt;&#xA;НА МАКСИМУМ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_POWER_SETTING_BALANCED" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Баланс
                                { "Russian", "БАЛАНС" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_POWER_SETTING_ENGINE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- моторы
                                { "Russian", "ДВИГАТЕЛИ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_POWER_SETTING_SHIELD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Щиты
                                { "Russian", "ЩИТЫ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_POWER_SETTING_GUNS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вооружение
                                { "Russian", "ВООРУЖЕНИЕ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_POWER_SETTING_CHANGED" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Новая настройка энергии: %SETTING%
                                { "Russian", "%SETTING% ВСЕХ ЭНЕРГОСИСТЕМ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_POWER_SETTING_CHANGED_ALT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Перевод мощности на: %SETTING%
                                { "Russian", "%SETTING% НА МАКСИМУМ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_POWER_SETTING_TITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- УПРАВЛЕНИЕ МОЩНОСТЬЮ
                                -- POWER CONTROL
                                { "Russian", "ЭНЕРГОПИТАНИЕ" },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PHOTO_PLANETS_LINE_SINGLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сфотографируйте планету типа «%BIOME%»: %CURRENT%/%AMOUNT%
                                -- Photograph %BIOME% planet: %CURRENT%/%AMOUNT%
                                { "Russian", "Сделайте фото: %BIOME% планета (%CURRENT%/%AMOUNT%)" },
                            }
                        },
                        -- не влазеет, перекрывается
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_GHOSTSHIP_CAPT_TITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Признаки жизни внутри
                                -- Internal Lifesigns
                                { "Russian", "Формы жизни" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_GHOSTSHIP_NOTES_TITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Компания корабля
                                -- Ship's Company
                                { "Russian", "Компания" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_GHOSTSHIP_NOTES_DATA" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Утонул в з в е з д а х
                                -- Drowned in the   s t a r s
                                { "Russian", "Утонул в з в ё з д а х" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_GHOSTSHIP_TRAIT1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обречен скитаться
                                -- Cursed to Roam
                                { "Russian", "Обречён скитаться" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_UI_STAT_PROGRESS_GHOST" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- НЕПОЗНАВАЕМОЕ ПРОШЛОЕ
                                -- THE UNKNOWABLE PAST
                                { "Russian", "ПРОШЛОЕ НЕИЗВЕСТНО" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_UI_STAT_VICTORY_GHOST" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Дальние странствия
                                -- Voyages Beyond
                                { "Russian", "дальних странствий" },
                            }
                        },

                        --#region TRADE_FILTER_SEASON
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TRADE_FILTER_SEASON_9" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Экспедиция 9
                                { "Russian", "Экспедиция №9" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TRADE_FILTER_SEASON_11" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Экспедиция 11
                                { "Russian", "Экспедиция №11" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TRADE_FILTER_SEASON_12" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Экспедиция 12
                                { "Russian", "Экспедиция №12" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TRADE_FILTER_SEASON_13" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Экспедиция 13
                                { "Russian", "Экспедиция №13" },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BUG_QUEEN_BAR_TIP_SPAWN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;FUEL&gt;Появляется стая!&lt;&gt;
                                -- &lt;FUEL&gt;The brood is spawning!&lt;&gt;
                                { "Russian", "&lt;FUEL&gt;ПОЯВЛЯЕТСЯ СТАЯ!&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENTFREI_PROD_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Фрагмент Ии Корабля-Носителя
                                -- Carrier AI Fragment
                                { "Russian", "Фрагмент ИИ корабля-носителя" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WONDERS_PLANET_FORMAT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;VAL_ON&gt;Погода:&lt;&gt; %WEATHER%&#xA;&lt;VAL_ON&gt;Возраст:&lt;&gt; прим. %AGE% млрд лет&#xA;&lt;VAL_ON&gt;Атмосфера:&lt;&gt; %ATMOS%&#xA;&lt;VAL_ON&gt;Основной элемент ядра:&lt;&gt; %CORE%&#xA;&lt;VAL_ON&gt;Примечания:&lt;&gt; %NOTE%
                                -- &lt;VAL_ON&gt;Weather:&lt;&gt; %WEATHER%&#xA;&lt;VAL_ON&gt;Age:&lt;&gt; Approx. %AGE% billion years&#xA;&lt;VAL_ON&gt;Atmosphere:&lt;&gt; %ATMOS%&#xA;&lt;VAL_ON&gt;Primary Core Element:&lt;&gt; %CORE%&#xA;&lt;VAL_ON&gt;Other Notes:&lt;&gt; %NOTE%
                                { "Russian", "&lt;VAL_ON&gt;Погода:&lt;&gt; %WEATHER%&#xA;&lt;VAL_ON&gt;Возраст:&lt;&gt; Примерно %AGE% млрд лет&#xA;&lt;VAL_ON&gt;Атмосфера:&lt;&gt; %ATMOS%&#xA;&lt;VAL_ON&gt;Основной элемент ядра:&lt;&gt; %CORE%&#xA;&lt;VAL_ON&gt;Примечания:&lt;&gt; %NOTE%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BUILDSHIP_LABEL_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Создать звездолет
                                -- Construct New Starship
                                { "Russian", "Создать звездолёт" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SHIP_BUILDER_HEADER" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Фабрикатор звездолетов
                                -- Starship Fabricator
                                { "Russian", "Фабрикатор звездолётов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BUILDSHIP_LABEL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ФАБРИКАТОР ЗВЕЗДОЛЕТОВ
                                -- STARSHIP FABRICATOR
                                { "Russian", "ФАБРИКАТОР ЗВЕЗДОЛЁТОВ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BUILDSHIP_LABEL_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Фабрикатор звездолетов
                                -- Starship Fabricator
                                { "Russian", "Фабрикатор звездолётов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NEW_SHIP_SLOT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Улучшить инвентарь звездолета
                                -- Upgrade Starship Inventory
                                { "Russian", "Улучшить инвентарь звездолёта" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_GALMAP_CORRUPTION" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- // Диссонант
                                -- // Dissonant
                                { "Russian", " // Диссонант" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "GYRO_DEADZONE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Мертвая зона
                                -- Dead Zone
                                { "Russian", "Мёртвая зона" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DROPSHIP_PART_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Компонент звездолета-тягача
                                -- Hauler Starship Component
                                { "Russian", "Компонент звездолёта-тягача" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SCIENTIFIC_PART_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Компонент звездолета-исследователя
                                -- Explorer Starship Component
                                { "Russian", "Компонент звездолёта-исследователя" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SHUTTLE_PART_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Компонент звездолета-челнока
                                -- Shuttle Starship Component
                                { "Russian", "Компонент звездолёта-челнока" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BUILT_SHIP_ACCEPT_SWAP_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Удалить существующий звездолет
                                -- Remove existing starship
                                { "Russian", "Удалить существующий звездолёт" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SHIP_BUILDER_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- СПРОЕКТИРУЙТЕ ЗВЕЗДОЛЕТ
                                -- DESIGN NEW STARSHIP
                                { "Russian", "СПРОЕКТИРУЙТЕ ЗВЕЗДОЛЁТ" },
                            }
                        },

                        --#region UI_PP_BUI_STELLAR_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PP_BUI_STELLAR_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Для добычи звездных металлов необходим &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt;.&#xA;Откройте инвентарь мультитула (&lt;IMG&gt;INVENTORY&lt;&gt;) и создайте компонент с помощью &lt;IMG&gt;TECHMENU&lt;&gt;.&#xA;Чтобы получить подробные указания, закрепите схему-чертеж с помощью &lt;IMG&gt;PIN&lt;&gt;.
                                { "Russian", "Для добычи звёздных металлов необходим &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt;&#xA;Откройте инвентарь мультитула (&lt;IMG&gt;INVENTORY&lt;&gt;) и создайте его с помощью &lt;IMG&gt;TECHMENU&lt;&gt;&#xA;Получите подробные указания, закрепив чертеж с помощью &lt;IMG&gt;PIN&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PP_BUI_STELLAR_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите: %ITEM% (&lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;)&#xA;Приземлитесь на ближайшей планете, чтобы найти крупные залежи минерала %ITEM%&#xA;Переработайте минерал %ITEM% в &lt;SPECIAL&gt;хроматический металл&lt;&gt;.
                                { "Russian", "Соберите: %ITEM% (&lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;)&#xA;Приземлитесь на ближайшей планете, чтобы найти крупные залежи&#xA;Переработайте %ITEM% в &lt;SPECIAL&gt;хроматический металл&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PP_BUI_STELLAR_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите: %ITEM% (&lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;)&#xA;Используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы найти залежи ископаемых на планете.&#xA;Переработайте минерал %ITEM% в &lt;SPECIAL&gt;хроматический металл&lt;&gt;.
                                { "Russian", "Соберите: %ITEM% (&lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;)&#xA;Найдите залежи на планете, используя &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)&#xA;Переработайте %ITEM% в &lt;SPECIAL&gt;хроматический металл&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PP_BUI_STELLAR_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите: %ITEM% (&lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;)&#xA;Используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы найти залежи ископаемых на планете.&#xA;Выберите &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt; (&lt;IMG&gt;CYCLEWEAPON&lt;&gt;), чтобы добыть ископаемые.
                                { "Russian", "Соберите: %ITEM% (&lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;)&#xA;Найдите залежи на планете, используя &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)&#xA;Выберите &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt; (&lt;IMG&gt;CYCLEWEAPON&lt;&gt;), чтобы добыть ископаемые" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PP_BUI_STELLAR_MSG5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Переработайте хроматический металл: &lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;&#xA;Установите &lt;TECHNOLOGY&gt;портативный очиститель&lt;&gt; с помощью меню созидания (&lt;IMG&gt;BUILD_MENU&lt;&gt;).&#xA;Или создайте &lt;TECHNOLOGY&gt;личный очиститель&lt;&gt; в инвентаре экзокостюма (&lt;IMG&gt;INVENTORY&lt;&gt;).
                                { "Russian", "Переработайте хроматический металл: &lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;&#xA;Установите &lt;TECHNOLOGY&gt;портативный очиститель&lt;&gt; из меню строительства (&lt;IMG&gt;BUILD_MENU&lt;&gt;)&#xA;Или создайте &lt;TECHNOLOGY&gt;личный очиститель&lt;&gt; в инвентаре экзокостюма (&lt;IMG&gt;INVENTORY&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PP_BUI_STELLAR_MSG6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Переработайте хроматический металл: &lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;&#xA;Чтобы начать, поместите любой звездный металл в очиститель.
                                { "Russian", "Переработайте хроматический металл: &lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;&#xA;Чтобы начать, поместите любой звёздный металл в очиститель" },
                            }
                        },
                        --#endregion

                        --#region UI_PP_BUI_LOCAL_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PP_BUI_LOCAL_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Для добычи ресурсов из планетарных месторождений необходим &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt;.&#xA;Откройте инвентарь мультитула (&lt;IMG&gt;INVENTORY&lt;&gt;) и создайте компонент с помощью &lt;IMG&gt;TECHMENU&lt;&gt;.&#xA;Чтобы получить подробные указания, закрепите схему-чертеж с помощью &lt;IMG&gt;PIN&lt;&gt;.
                                { "Russian", "Для добычи ресурсов из месторождений необходим &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt;&#xA;Откройте инвентарь мультитула (&lt;IMG&gt;INVENTORY&lt;&gt;) и создайте его с помощью &lt;IMG&gt;TECHMENU&lt;&gt;&#xA;Получите подробные указания, закрепив чертеж с помощью &lt;IMG&gt;PIN&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PP_BUI_LOCAL_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добудьте: %ITEM% (&lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;)&#xA;Используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы найти месторождения неподалеку.&#xA;Добудьте из них ресурс %ITEM% с помощью &lt;TECHNOLOGY&gt;ландшафтного манипулятора&lt;&gt;.
                                { "Russian", "Добудьте: %ITEM% (&lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;)&#xA;Находите месторождения, используя &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)&#xA;Добудьте ресурсы с помощью &lt;TECHNOLOGY&gt;ландшафтного манипулятора&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PP_BUI_LOCAL_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добудьте: %ITEM% (&lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;)&#xA;Ресурс %ITEM% не обнаружен на данной планете.&#xA;Вернитесь на планету %PLANET%, чтобы найти месторождения.
                                { "Russian", "Добудьте: %ITEM% (&lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;)&#xA;На данной планете %ITEM% отсутствует&#xA;Вернитесь на планету %PLANET%, чтобы продолжить поиски" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PP_BUI_LOCAL_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добудьте: %ITEM% (&lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;)&#xA;Ресурс %ITEM% не обнаружен в данной системе.&#xA;Вернитесь в систему &lt;STELLAR&gt;%SYSTEM%&lt;&gt;, чтобы найти месторождения.
                                { "Russian", "Добудьте: %ITEM% (&lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;)&#xA;На данной планете %ITEM% отсутствует&#xA;Вернитесь в систему &lt;STELLAR&gt;%SYSTEM%&lt;&gt;, чтобы продолжить поиски" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PP_BUI_LOCAL_MSG5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добудьте: %ITEM% (&lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;)&#xA;Сканируйте планеты с борта звездолета (&lt;IMG&gt;SCAN&lt;&gt;), чтобы просматривать ресурсы для добычи.
                                { "Russian", "Добудьте: %ITEM% (&lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;)&#xA;Изучите доступные ресурсы на планетах с помощью сканера (&lt;IMG&gt;SCAN&lt;&gt;)" },
                            }
                        },
                        --#endregion

                        --#region UI_PP_BUI_KILL_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PP_BUI_KILL_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Уничтожьте стражей: %CURRENT%/%AMOUNT%&#xA;&lt;SPECIAL&gt;Дроны стражей&lt;&gt; патрулируют большинство миров.
                                { "Russian", "Уничтожьте стражей: %CURRENT%/%AMOUNT%&#xA;&lt;SPECIAL&gt;Дроны стражей&lt;&gt; патрулируют большинство миров" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PP_BUI_KILL_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Уничтожьте стражей: %CURRENT%/%AMOUNT%&#xA;На данной планете стражи не обнаружены.&#xA;Вернитесь в космос, чтобы найти другую планету.
                                { "Russian", "Уничтожьте стражей: %CURRENT%/%AMOUNT%&#xA;На данной планете стражи не обнаружены&#xA;Вернитесь в космос, чтобы найти другую планету" },
                            }
                        },
                        --#endregion

                        --#region UI_PP_BUI_SHARD_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PP_BUI_SHARD_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите лучистые осколки: %CURRENT%/%AMOUNT%&#xA;Находясь в космосе, воспользуйтесь галактической картой (&lt;IMG&gt;QUICK_MENU&lt;&gt;), чтобы найти &lt;SPECIAL&gt;лишенные гармонии&lt;&gt; миры.
                                { "Russian", "Соберите лучистые осколки: %CURRENT%/%AMOUNT%&#xA;Находясь в космосе, откройте галактическую карту (&lt;IMG&gt;QUICK_MENU&lt;&gt;)&#xA;и найдите миры &lt;SPECIAL&gt;лишенные гармонии&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PP_BUI_SHARD_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите лучистые осколки: %CURRENT%/%AMOUNT%&#xA;Неподалеку обнаружена &lt;SPECIAL&gt;лишенная гармонии&lt;&gt; планета&#xA;Чтобы проверять данные планеты, сканируйте (&lt;IMG&gt;SCAN&lt;&gt;) их из космоса.
                                { "Russian", "Соберите лучистые осколки: %CURRENT%/%AMOUNT%&#xA;Неподалеку обнаружена &lt;SPECIAL&gt;лишенная гармонии&lt;&gt; планета&#xA;Изучайте планеты из космоса с помощью сканера (&lt;IMG&gt;SCAN&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PP_BUI_SHARD_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите лучистые осколки: %CURRENT%/%AMOUNT%&#xA;Используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;) для поиска осколков.
                                { "Russian", "Соберите лучистые осколки: %CURRENT%/%AMOUNT%&#xA;Используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;) для поиска" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PP_BUI_SHARD_MSG3_SURVEY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите лучистые осколки: %CURRENT%/%AMOUNT%.&#xA;&lt;TECHNOLOGY&gt;Разведка цели&lt;&gt; укажет на осколки поблизости.
                                { "Russian", "Соберите лучистые осколки: %CURRENT%/%AMOUNT%&#xA;&lt;TECHNOLOGY&gt;Разведка цели&lt;&gt; укажет на осколки поблизости" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PP_BUI_SHARD_MSG3_SURVEY_SWA" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите лучистые осколки: %CURRENT%/%AMOUNT%.&#xA;Выберите &lt;STELLAR&gt;разведку цели&lt;&gt; (&lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;), чтобы найти осколки поблизости.
                                { "Russian", "Соберите лучистые осколки: %CURRENT%/%AMOUNT%&#xA;Найдите их с помощью &lt;STELLAR&gt;разведки цели&lt;&gt; (&lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PP_BUI_SHARD_MSG3_SURVEY_OFF" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите лучистые осколки: %CURRENT%/%AMOUNT%.&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы найти осколки поблизости.
                                { "Russian", "Соберите лучистые осколки: %CURRENT%/%AMOUNT%&#xA;Найдите их с помощью &lt;STELLAR&gt;разведки цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)" },
                            }
                        },
                        --#endregion

                        --#region UI_PP_BUI_RUST_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PP_BUI_RUST_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Собрать ржавый металл: &lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;&#xA;Извлеките ржавый металл из поврежденных механизмов на поверхности планет.&#xA;Получите ржавый металл из &lt;FUEL&gt;кислорода&lt;&gt; и &lt;EARTH&gt;феррита&lt;&gt; в &lt;TECHNOLOGY&gt;очистителе&lt;&gt;.
                                { "Russian", "Соберите ржавчину: &lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;&#xA;Извлеките ржавчину из поврежденных механизмов на планете&#xA;Получите ржавчину из &lt;FUEL&gt;кислорода&lt;&gt; и &lt;EARTH&gt;феррита&lt;&gt; в &lt;TECHNOLOGY&gt;очистителе&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region UI_PP_BUI_CRAFTING_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PP_BUI_CRAFTING_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Изготовьте: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;Создавайте предметы в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;) с помощью &lt;IMG&gt;PRODMENU&lt;&gt;.&#xA;&lt;STELLAR&gt;Закрепите&lt;&gt; чертеж «%ITEM%», чтобы получить подробные указания.
                                { "Russian", "Изготовьте: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;Создавайте предметы в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;) с помощью &lt;IMG&gt;PRODMENU&lt;&gt;&#xA;&lt;STELLAR&gt;Закрепите&lt;&gt; чертеж «%ITEM%», чтобы получить подробные указания" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PP_BUI_CRAFTING_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Изготовьте %ITEM%: %CURRENT%/%AMOUNT%&#xA;Примечание: &lt;FUEL&gt;схема неизвестна&lt;&gt;.&#xA;Изучите новые схемы на борту &lt;SPECIAL&gt;Космической Аномалии&lt;&gt;.
                                { "Russian", "Изготовьте %ITEM%: %CURRENT%/%AMOUNT%&#xA;&lt;FUEL&gt;Чертеж неизвестен&lt;&gt;&#xA;Изучите новые чертежи на &lt;SPECIAL&gt;Космической Аномалии&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region UI_PP_BUI_SCRAPPROD_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PP_BUI_SCRAPPROD_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Выкопайте ценный лом: &lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;&#xA;В местной системе не обнаружены планеты с &lt;TECHNOLOGY&gt;собираемым ломом&lt;&gt;.
                                { "Russian", "Выкопайте ценный лом: &lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;&#xA;В этой системе не обнаружены планеты с &lt;TECHNOLOGY&gt;собираемым ломом&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PP_BUI_SCRAPPROD_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Выкопайте ценный лом: &lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;&#xA;В местной системе обнаружен &lt;TECHNOLOGY&gt;собираемый лом&lt;&gt;.&#xA;Сканируйте миры из космоса (&lt;IMG&gt;SCAN&lt;&gt;), чтобы увидеть планетарные данные.
                                { "Russian", "Выкопайте ценный лом: &lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;&#xA;В этой системе обнаружен &lt;TECHNOLOGY&gt;собираемый лом&lt;&gt;&#xA;Изучайте планеты из космоса с помощью сканера (&lt;IMG&gt;SCAN&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PP_BUI_SCRAPPROD_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Выкопайте ценный лом: &lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;&#xA;Используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt;, чтобы найти &lt;STELLAR&gt;оставленную технологию&lt;&gt;.&#xA;Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt;, чтобы выкопать ее.
                                { "Russian", "Выкопайте ценный лом: &lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;&#xA;Используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt;, чтобы найти &lt;STELLAR&gt;оставленную технологию&lt;&gt;&#xA;Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt;, чтобы выкопать ее" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PP_BUI_SCRAPPROD_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Выкопайте ценный лом: &lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;&#xA;Для проведения раскопок необходим &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt;.&#xA;Откройте инвентарь мультитула (&lt;IMG&gt;INVENTORY&lt;&gt;) и создайте компонент с помощью &lt;IMG&gt;TECHMENU&lt;&gt;.&#xA;Чтобы получить подробные указания, закрепите схему-чертеж с помощью &lt;IMG&gt;PIN&lt;&gt;.
                                { "Russian", "Выкопайте ценный лом: &lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;&#xA;Для раскопок необходим &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt;&#xA;Откройте инвентарь мультитула (&lt;IMG&gt;INVENTORY&lt;&gt;) и создайте его с помощью &lt;IMG&gt;TECHMENU&lt;&gt;&#xA;Получите подробные указания, закрепив чертеж с помощью &lt;IMG&gt;PIN&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region UI_PP_BUI_SCRAPPING_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PP_BUI_SCRAPPING_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите компоненты звездолета стоимостью &lt;STELLAR&gt;%COUNT% юн.&lt;&gt;&#xA;%NAME% отмечает звездолет, готовый к переработке на лом.
                                -- Salvage starship components worth &lt;STELLAR&gt;%COUNT%u&lt;&gt;&#xA;%NAME% has marked a starship ready for scrap processing
                                { "Russian", "Соберите компоненты звездолёта стоимостью &lt;STELLAR&gt;%COUNT%&lt;&gt; юн.&#xA;%NAME% отметил звездолёт, готовый к переработке на лом" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PP_BUI_SCRAPPING_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите компоненты звездолета стоимостью &lt;STELLAR&gt;%COUNT% юн.&lt;&gt;&#xA;%NAME% отмечает звездолет, готовый к переработке на лом.&#xA;Вернитесь в систему %SYSTEM%, чтобы найти разбившийся корабль.
                                { "Russian", "Соберите компоненты звездолёта стоимостью &lt;STELLAR&gt;%COUNT%&lt;&gt; юн.&#xA;%NAME% отметил звездолёт, готовый к переработке на лом&#xA;Вернитесь в систему %SYSTEM%, чтобы найти разбившийся корабль" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PP_BUI_SCRAPPING_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите компоненты звездолета стоимостью &lt;STELLAR&gt;%COUNT% юн.&lt;&gt;&#xA;%NAME% отмечает звездолет, готовый к переработке на лом.&#xA;Вернитесь на планету %PLANET%, чтобы найти разбившийся корабль.
                                { "Russian", "Соберите компоненты звездолёта стоимостью &lt;STELLAR&gt;%COUNT%&lt;&gt; юн.&#xA;%NAME% отметил звездолёт, готовый к переработке на лом&#xA;Вернитесь на планету %PLANET%, чтобы найти разбившийся корабль" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PP_BUI_SCRAPPING_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите компоненты звездолета стоимостью &lt;STELLAR&gt;%COUNT% юн.&lt;&gt;&#xA;%REPAIR%&#xA;Чтобы получить подробные указания, &lt;COMMODITY&gt;закрепите&lt;&gt; (&lt;IMG&gt;PIN&lt;&gt;) компоненты.
                                { "Russian", "Соберите компоненты звездолёта стоимостью &lt;STELLAR&gt;%COUNT%&lt;&gt; юн.&#xA;%REPAIR%&#xA;Получите подробные указания, &lt;COMMODITY&gt;закрепив&lt;&gt; (&lt;IMG&gt;PIN&lt;&gt;) компоненты" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PP_BUI_SCRAPPING_MSG5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите компоненты звездолета: &lt;STELLAR&gt;%CURRENT%/%AMOUNT% юн.&lt;&gt;&#xA;Приведите отремонтированный корабль на &lt;COMMODITY&gt;космическую станцию&lt;&gt;.
                                -- Salvage starship components: &lt;STELLAR&gt;%CURRENT%/%AMOUNT%u&lt;&gt; value&#xA;Pilot the repaired ship to the &lt;COMMODITY&gt;Space Station&lt;&gt;
                                { "Russian", "Получите компоненты звездолёта: &lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt; юн.&#xA;Привезите отремонтированный корабль на &lt;COMMODITY&gt;космическую станцию&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PP_BUI_SCRAPPING_MSG6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите компоненты звездолета: &lt;STELLAR&gt;%CURRENT%/%AMOUNT% юн.&lt;&gt;&#xA;Переработайте свой корабль в утиль с помощью терминала &lt;TECHNOLOGY&gt;оснащения звездолета&lt;&gt;.
                                { "Russian", "Получите компоненты звездолёта: &lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt; юн.&#xA;Переработайте корабль в утиль с помощью терминала &lt;TECHNOLOGY&gt;оснащения звездолёта&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region UI_PP_BUI_REPAIR_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PP_BUI_REPAIR_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите &lt;TECHNOLOGY&gt;потерянного аутофага&lt;&gt;.&#xA;Затем помогите ему с &lt;SPECIAL&gt;ремонтом&lt;&gt;.
                                { "Russian", "Найдите &lt;TECHNOLOGY&gt;потерянного аутофага&lt;&gt;&#xA;Затем помогите ему с &lt;SPECIAL&gt;ремонтом&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PP_BUI_REPAIR_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Помогите &lt;TECHNOLOGY&gt;потерянному аутофагу&lt;&gt; &lt;SPECIAL&gt;отремонтировать&lt;&gt; себя.&#xA;Добудьте деталь %ITEM1% для существа %TARGET1%: %CURRENT1%/%AMOUNT1%&#xA;Добудьте деталь %ITEM2% для существа %TARGET2%: %CURRENT2%/%AMOUNT2%&#xA;Добудьте деталь %ITEM3% для существа %TARGET3%: %CURRENT3%/%AMOUNT3%
                                { "Russian", "Помогите &lt;TECHNOLOGY&gt;потерянному аутофагу&lt;&gt; с &lt;SPECIAL&gt;ремонтом&lt;&gt;&#xA;Добудьте %ITEM1% для %TARGET1%: %CURRENT1%/%AMOUNT1%&#xA;Добудьте %ITEM2% для %TARGET2%: %CURRENT2%/%AMOUNT2%&#xA;Добудьте %ITEM3% для %TARGET3%: %CURRENT3%/%AMOUNT3%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PP_BUI_REPAIR_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Помогите &lt;TECHNOLOGY&gt;потерянному аутофагу&lt;&gt; &lt;SPECIAL&gt;отремонтировать&lt;&gt; себя.&#xA;Вернитесь к существу с собранными компонентами.
                                { "Russian", "Помогите &lt;TECHNOLOGY&gt;потерянному аутофагу&lt;&gt; с &lt;SPECIAL&gt;ремонтом&lt;&gt;&#xA;Вернитесь к нему с собранными компонентами" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PP_BUI_REPAIR_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Помогите &lt;TECHNOLOGY&gt;потерянному аутофагу&lt;&gt; &lt;SPECIAL&gt;отремонтировать&lt;&gt; себя.&#xA;Вернитесь в систему &lt;STELLAR&gt;%SYSTEM%&lt;&gt; с собранными компонентами.
                                { "Russian", "Помогите &lt;TECHNOLOGY&gt;потерянному аутофагу&lt;&gt; с &lt;SPECIAL&gt;ремонтом&lt;&gt;&#xA;Вернитесь в систему &lt;STELLAR&gt;%SYSTEM%&lt;&gt; с собранными компонентами" },
                            }
                        },
                        --#endregion

                        --#region UI_PP_BUI_MIRROR_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PP_BUI_MIRROR_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите инвертированные зеркала: %CURRENT%/%AMOUNT%&#xA;Находясь в космосе, воспользуйтесь галактической картой (&lt;IMG&gt;QUICK_MENU&lt;&gt;), чтобы найти &lt;SPECIAL&gt;лишенные гармонии&lt;&gt; миры.
                                { "Russian", "Соберите инвертированные зеркала: %CURRENT%/%AMOUNT%&#xA;Находясь в космосе, откройте галактическую карту (&lt;IMG&gt;QUICK_MENU&lt;&gt;)&#xA;и найдите миры &lt;SPECIAL&gt;лишенные гармонии&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PP_BUI_MIRROR_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добудьте инвертированные зеркала: %CURRENT%/%AMOUNT%&#xA;Неподалеку обнаружена &lt;SPECIAL&gt;лишенная гармонии&lt;&gt; планета&#xA;Чтобы проверять данные планеты, сканируйте (&lt;IMG&gt;SCAN&lt;&gt;) их из космоса.
                                { "Russian", "Добудьте инвертированные зеркала: %CURRENT%/%AMOUNT%&#xA;Неподалеку обнаружена &lt;SPECIAL&gt;лишенная гармонии&lt;&gt; планета&#xA;Изучайте планеты из космоса с помощью сканера (&lt;IMG&gt;SCAN&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PP_BUI_MIRROR_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добудьте инвертированные зеркала: %CURRENT%/%AMOUNT%&#xA;Используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы найти &lt;SPECIAL&gt;резонатор диссонанса&lt;&gt;.
                                { "Russian", "Добудьте инвертированные зеркала: %CURRENT%/%AMOUNT%&#xA;Найдите &lt;SPECIAL&gt;резонатор диссонанса&lt;&gt; с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PP_BUI_MIRROR_MSG3_SURVEY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добудьте инвертированные зеркала: %CURRENT%/%AMOUNT%&#xA;&lt;TECHNOLOGY&gt;Разведка цели&lt;&gt; поможет найти &lt;SPECIAL&gt;резонаторы диссонанса&lt;&gt; неподалеку.
                                { "Russian", "Добудьте инвертированные зеркала: %CURRENT%/%AMOUNT%&#xA;&lt;TECHNOLOGY&gt;Разведка цели&lt;&gt; поможет найти &lt;SPECIAL&gt;резонаторы диссонанса&lt;&gt; неподалеку" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PP_BUI_MIRROR_MSG3_SURVEY_SW" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добудьте инвертированные зеркала: %CURRENT%/%AMOUNT%&#xA;Выберите &lt;STELLAR&gt;разведку цели&lt;&gt; (&lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;), чтобы найти &lt;SPECIAL&gt;резонаторы диссонанса&lt;&gt; поблизости.
                                { "Russian", "Добудьте инвертированные зеркала: %CURRENT%/%AMOUNT%&#xA;Найдите &lt;SPECIAL&gt;резонаторы диссонанса&lt;&gt; с помощью &lt;STELLAR&gt;разведки цели&lt;&gt; (&lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PP_BUI_MIRROR_MSG3_SURVEY_OF" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добудьте инвертированные зеркала: %CURRENT%/%AMOUNT%&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы найти &lt;SPECIAL&gt;резонаторы диссонанса&lt;&gt; неподалеку.
                                { "Russian", "Добудьте инвертированные зеркала: %CURRENT%/%AMOUNT%&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы найти &lt;SPECIAL&gt;резонаторы диссонанса&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region UI_PP_BUI_HEART_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PP_BUI_HEART_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добудьте кристаллические сердца: %CURRENT%/%AMOUNT%&#xA;Добудьте сердца из останков испорченных четвероногих стражей.&#xA;Находясь в космосе, откройте галактическую карту (&lt;IMG&gt;QUICK_MENU&lt;&gt;), чтобы найти &lt;SPECIAL&gt;лишенные гармонии&lt;&gt; миры.
                                { "Russian", "Добудьте кристаллические сердца: %CURRENT%/%AMOUNT%&#xA;Добудьте сердца из останков испорченных четвероногих стражей&#xA;Находясь в космосе, откройте галактическую карту (&lt;IMG&gt;QUICK_MENU&lt;&gt;)&#xA;и найдите миры &lt;SPECIAL&gt;лишенные гармонии&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PP_BUI_HEART_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добудьте кристаллические сердца: %CURRENT%/%AMOUNT%&#xA;Добудьте сердца из останков испорченных четвероногих стражей.&#xA;Неподалеку обнаружены &lt;SPECIAL&gt;лишенные гармонии&lt;&gt; миры&#xA;Находясь в космосе, сканируйте миры (&lt;IMG&gt;SCAN&lt;&gt;), чтобы увидеть планетарные данные.
                                { "Russian", "Добудьте кристаллические сердца: %CURRENT%/%AMOUNT%&#xA;Добудьте сердца из останков испорченных четвероногих стражей&#xA;Неподалеку обнаружены &lt;SPECIAL&gt;лишенные гармонии&lt;&gt; миры&#xA;Находясь в космосе, изучайте планеты с помощью сканера (&lt;IMG&gt;SCAN&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PP_BUI_HEART_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добудьте кристаллические сердца: %CURRENT%/%AMOUNT%&#xA;Спровоцируйте рой испорченных стражей, чтобы призвать продвинутые боевые машины.&#xA;Соберите материал из тел поверженных стражей, разрушая &lt;VAL_ON&gt;баки с боевыми припасами&lt;&gt;.
                                -- Harvest Crystalline Hearts: %CURRENT%/%AMOUNT%&#xA;Provoke the corrupted Sentinel swarm to summon advanced combat units&#xA;Collect material from defeated Sentinels by destroying &lt;VAL_ON&gt;Combat Supply Barrels&lt;&gt;.
                                { "Russian", "Добудьте кристаллические сердца: %CURRENT%/%AMOUNT%&#xA;Спровоцируйте рой стражей, чтобы призвать продвинутых дронов&#xA;Соберите материал из поверженных стражей&#xA;Разрушайте &lt;VAL_ON&gt;баки с боеприпасами&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region UI_PP_BUI_RETURN_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PP_BUI_RETURN_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вернитесь к существу &lt;TECHNOLOGY&gt;%NAME%&lt;&gt; и расскажите о своем успехе.&#xA;%NAME% находится на планете %PLANET%.
                                { "Russian", "Вернитесь к аутофагу и расскажите об успехе&#xA;&lt;TECHNOLOGY&gt;%NAME%&lt;&gt; находится на планете %PLANET%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PP_BUI_RETURN_MSG_MAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вернитесь к существу &lt;TECHNOLOGY&gt;%NAME%&lt;&gt; и сообщите о своем успехе.&#xA;%NAME% находится в системе %SYSTEM%.&#xA;Находясь в космосе, откройте галактическую карту с помощью &lt;IMG&gt;QUICK_MENU&lt;&gt;
                                { "Russian", "Вернитесь к аутофагу и сообщите об успехе&#xA;&lt;TECHNOLOGY&gt;%NAME%&lt;&gt; находится в системе %SYSTEM%&#xA;Находясь в космосе, откройте галактическую карту с помощью &lt;IMG&gt;QUICK_MENU&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region UI_PP_RETURN_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PP_RETURN_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вернитесь к существу &lt;TECHNOLOGY&gt;%NAME%&lt;&gt; и расскажите о своем успехе.&#xA;%NAME% находится на планете %PLANET%.
                                { "Russian", "Вернитесь к существу и расскажите об успехе&#xA;&lt;TECHNOLOGY&gt;%NAME%&lt;&gt; находится на планете %PLANET%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PP_RETURN_MSG_MAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вернитесь к существу &lt;TECHNOLOGY&gt;%NAME%&lt;&gt; и сообщите о своем успехе.&#xA;%NAME% находится в системе %SYSTEM%.&#xA;Находясь в космосе, откройте галактическую карту с помощью &lt;IMG&gt;QUICK_MENU&lt;&gt;
                                { "Russian", "Вернитесь к существу и сообщите об успехе&#xA;&lt;TECHNOLOGY&gt;%NAME%&lt;&gt; находится в системе %SYSTEM%&#xA;Находясь в космосе, откройте галактическую карту с помощью &lt;IMG&gt;QUICK_MENU&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region UI_PP_BUI_.*_SURVEY
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PP_BUI_SCRAPPROD_SURVEY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Выкопайте ценный лом: &lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;&#xA;Используйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt;, чтобы найти &lt;STELLAR&gt;оставленную технологию&lt;&gt;.&#xA;Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt;, чтобы выкопать ее.
                                { "Russian", "Выкопайте ценный лом: &lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;&#xA;Используйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt;, чтобы найти &lt;STELLAR&gt;оставленную технологию&lt;&gt;&#xA;Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt;, чтобы выкопать ее" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PP_BUI_SCRAPPROD_SURVEY_SWAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Выкопайте ценный лом: &lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;&#xA;Выберите &lt;STELLAR&gt;разведку цели&lt;&gt; (&lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;), чтобы найти &lt;STELLAR&gt;оставленную технологию&lt;&gt;.&#xA;Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt;, чтобы выкопать ее.
                                { "Russian", "Выкопайте ценный лом: &lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;&#xA;Выберите &lt;STELLAR&gt;разведку цели&lt;&gt; (&lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;), чтобы найти &lt;STELLAR&gt;оставленную технологию&lt;&gt;&#xA;Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt;, чтобы выкопать ее" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PP_BUI_SCRAPPROD_SURVEY_OFF" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Выкопайте ценный лом: &lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; с помощью (&lt;IMG&gt;AIM&lt;&gt;), чтобы найти &lt;STELLAR&gt;оставленную технологию&lt;&gt;.&#xA;Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt;, чтобы выкопать ее.
                                { "Russian", "Выкопайте ценный лом: &lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; с помощью (&lt;IMG&gt;AIM&lt;&gt;), чтобы найти &lt;STELLAR&gt;оставленную технологию&lt;&gt;&#xA;Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt;, чтобы выкопать ее" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PP_BUI_SCRAPPING_SURVEY_OFF" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите компоненты звездолета стоимостью &lt;STELLAR&gt;%COUNT% юн.&lt;&gt;&#xA;%NAME% отмечает звездолет, готовый к переработке на лом.&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы найти разбившийся корабль.
                                { "Russian", "Соберите компоненты звездолёта стоимостью &lt;STELLAR&gt;%COUNT%&lt;&gt; юн.&#xA;%NAME% отметил звездолёт, готовый к переработке на лом&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы найти разбившийся корабль" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PP_BUI_SCRAPPING_SURVEY_SWAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите компоненты звездолета стоимостью &lt;STELLAR&gt;%COUNT% юн.&lt;&gt;&#xA;%NAME% отмечает звездолет, готовый к переработке на лом.&#xA;Выберите &lt;STELLAR&gt;разведку цели&lt;&gt; (&lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;), чтобы найти разбившийся корабль.
                                { "Russian", "Соберите компоненты звездолёта стоимостью &lt;STELLAR&gt;%COUNT%&lt;&gt; юн.&#xA;%NAME% отметил звездолёт, готовый к переработке на лом&#xA;Выберите &lt;STELLAR&gt;разведку цели&lt;&gt; (&lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;), чтобы найти разбившийся корабль" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PP_BUI_SCRAPPING_SURVEY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите компоненты звездолета стоимостью &lt;STELLAR&gt;%COUNT% юн.&lt;&gt;&#xA;%NAME% отмечает звездолет, готовый к переработке на лом.&#xA;&lt;TECHNOLOGY&gt;Разведка цели&lt;&gt; поможет найти разбившийся корабль.
                                { "Russian", "Соберите компоненты звездолёта стоимостью &lt;STELLAR&gt;%COUNT%&lt;&gt; юн.&#xA;%NAME% отметил звездолёт, готовый к переработке на лом&#xA;&lt;TECHNOLOGY&gt;Разведка цели&lt;&gt; поможет найти разбившийся корабль" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PP_BUI_REPAIR_SURVEY_OFF" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Помогите &lt;TECHNOLOGY&gt;потерянному аутофагу&lt;&gt; &lt;SPECIAL&gt;отремонтировать&lt;&gt; себя.&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы найти аутофага.
                                { "Russian", "Помогите &lt;TECHNOLOGY&gt;потерянному аутофагу&lt;&gt; с &lt;SPECIAL&gt;ремонтом&lt;&gt;&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы найти его" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PP_BUI_REPAIR_SURVEY_SWAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Помогите &lt;TECHNOLOGY&gt;потерянному аутофагу&lt;&gt; &lt;SPECIAL&gt;отремонтировать&lt;&gt; себя.&#xA;Выберите &lt;STELLAR&gt;разведку цели&lt;&gt; (&lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;), чтобы найти аутофага.
                                { "Russian", "Помогите &lt;TECHNOLOGY&gt;потерянному аутофагу&lt;&gt; с &lt;SPECIAL&gt;ремонтом&lt;&gt;&#xA;Выберите &lt;STELLAR&gt;разведку цели&lt;&gt; (&lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;), чтобы найти его" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PP_BUI_REPAIR_SURVEY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Помогите &lt;TECHNOLOGY&gt;потерянному аутофагу&lt;&gt; &lt;SPECIAL&gt;отремонтировать&lt;&gt; себя.&#xA;&lt;TECHNOLOGY&gt;Разведка цели&lt;&gt; поможет найти аутофага.
                                { "Russian", "Помогите &lt;TECHNOLOGY&gt;потерянному аутофагу&lt;&gt; с &lt;SPECIAL&gt;ремонтом&lt;&gt;&#xA;&lt;TECHNOLOGY&gt;Разведка цели&lt;&gt; поможет найти его" },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PP_BUI_LOCAL_OBJ_HEADER" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добыть: %ITEM% (%COUNT%)
                                -- Mine %COUNT% %ITEM%
                                { "Russian", "Добыть %COUNT% × %ITEM%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PP_BUI_STELLAR_OBJ_HEADER" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Очистить хроматический металл: %COUNT%
                                -- Refine %COUNT% Chromatic Metal
                                { "Russian", "Очистить %COUNT% ед. хроматического металла" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SALVAGE_PROD_RES" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Процесс утилизации &lt;TRADEABLE&gt;подтвержден&lt;&gt;.&lt;NEWLINE&gt;Выбранный модуль будет автоматически добавлен в экзокостюм клиента. Воспользуйтесь &lt;TECHNOLOGY&gt;фабрикатором&lt;&gt;, чтобы собрать новые звездолеты.
                                { "Russian", "Процесс утилизации &lt;TRADEABLE&gt;подтвержден&lt;&gt;.&lt;NEWLINE&gt;Выбранный модуль будет автоматически добавлен в экзокостюм клиента. Воспользуйтесь &lt;TECHNOLOGY&gt;фабрикатором&lt;&gt;, чтобы собрать новые звездолёты." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SALVAGE_PROD_CONFIRM_LANG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;FUEL&gt;ВНИМАНИЕ!&lt;&gt; Звездолет «&lt;STELLAR&gt;%SHIPNAME%&lt;&gt;» будет уничтожен вместе с грузом.&lt;NEWLINE&gt;Выберите желаемый &lt;TECHNOLOGY&gt;модуль внешнего вида&lt;&gt;, чтобы подтвердить утилизацию.
                                -- &lt;FUEL&gt;WARNING:&lt;&gt; starship '&lt;STELLAR&gt;%SHIPNAME%&lt;&gt;' will be destroyed along with all cargo.&lt;NEWLINE&gt;Select desired &lt;TECHNOLOGY&gt;customisation module&lt;&gt; to confirm salvage operation...
                                { "Russian", "&lt;FUEL&gt;ВНИМАНИЕ!&lt;&gt; Звездолёт «&lt;STELLAR&gt;%SHIPNAME%&lt;&gt;» будет уничтожен вместе с грузом.&lt;NEWLINE&gt;Выберите желаемый &lt;TECHNOLOGY&gt;модуль&lt;&gt; для утилизации..." },
                            }
                        },

                        --#region UI_PP_BUI_HEART_OBJ
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PP_BUI_HEART_OBJ_HEADER" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Захватить кристаллическое сердце: %COUNT%
                                -- Seize %COUNT% Crystalline Heart
                                { "Russian", "Заполучить %COUNT% × кристаллизованных сердец" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PP_BUI_HEART_OBJ" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Захватить кристаллическое сердце: %CURRENT%/%AMOUNT%
                                { "Russian", "Заполучить кристаллизованные сердца: %CURRENT%/%AMOUNT%" },
                            }
                        },
                        -- XXX: обрезается на "Соберите добычу из поверженных стражей, разрушая"
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PP_BUI_HEART_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добудьте эти испорченные основы двигателей из останков &lt;SPECIAL&gt;испорченных четвероногих стражей&lt;&gt;. Такие продвинутые боевые машины обитают только на лишенных гармонии мирах и появляются, только когда их дроны-защитники побеждены.&#xA;Соберите добычу из поверженных стражей, разрушая &lt;VAL_ON&gt;баки с боевыми припасами&lt;&gt;.&#xA;&#xA;Найти &lt;STELLAR&gt;лишенные гармонии&lt;&gt; системы можно на галактической карте. Находясь в космосе, сканируйте отдельные планеты с помощью &lt;TECHNOLOGY&gt;сканера&lt;&gt; звездолета (&lt;IMG&gt;SCAN&lt;&gt;), чтобы находить миры с испорченными стражами.
                                -- Harvest these warped engine cores from the remains of &lt;SPECIAL&gt;Corrupted Sentinel Quads&lt;&gt;. These advanced units are only found on dissonant worlds, and deploy only after their drone protectors have been defeated.&#xA;Collect loot from defeated Sentinels by destroying &lt;VAL_ON&gt;Combat Supply Barrels&lt;&gt;.&#xA;&#xA;Locate &lt;STELLAR&gt;dissonant&lt;&gt; systems in the Galaxy Map. Scan individual planets in space with the starship's &lt;TECHNOLOGY&gt;scanner&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;) to locate worlds with corrupted Sentinel forces.
                                { "Russian", "Добудьте сердца из останков &lt;SPECIAL&gt;испорченных четвероногих стражей﻿.&lt;&gt; Эти продвинутые боевые машины обитают только на лишенных гармонии мирах и появляются, только когда их дроны-защитники побеждены.&#xA;Соберите добычу из поверженных стражей, разрушая &lt;VAL_ON&gt;баки с боеприпасами﻿.&lt;&gt;&#xA;&#xA;Найти &lt;STELLAR&gt;лишенные гармонии&lt;&gt; системы можно на галактической карте. Находясь в космосе, сканируйте каждую планету с помощью &lt;TECHNOLOGY&gt;сканера&lt;&gt; звездолёта (&lt;IMG&gt;SCAN&lt;&gt;), чтобы найти миры с испорченными стражами." },
                            }
                        },
                        --#endregion

                        --#region %PROC_BUI_SENT%
                        -- XXX: %PROC_BUI_SENT% состоит из двух частей и, естественно, обрезается
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PP_BUI_KILL_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Существо %NAME% с планеты %PLANET% в системе %SYSTEM% просит о помощи в борьбе со &lt;SPECIAL&gt;стражами&lt;&gt;.&#xA;&#xA;%PROC_BUI_SENT%
                                { "Russian", "%NAME% с планеты %PLANET% в системе %SYSTEM% просит о помощи в борьбе со &lt;SPECIAL&gt;стражами&lt;&gt;.&#xA;&#xA;%PROC_BUI_SENT%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PP_BUI_KILL_C_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Существо %NAME% с планеты %PLANET% в системе %SYSTEM% просит помощи в борьбе с &lt;SPECIAL&gt;испорченными&lt;&gt; стражами, которые начали патрулировать его родную планету.&#xA;&#xA;%PROC_BUI_SENT%
                                { "Russian", "%NAME% с планеты %PLANET% в системе %SYSTEM% просит помощи в борьбе с &lt;SPECIAL&gt;испорченными&lt;&gt; стражами, которые начали патрулировать его родную планету.&#xA;&#xA;%PROC_BUI_SENT%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PP_BUI_SHARD_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Существо %NAME% с планеты %PLANET% в системе %SYSTEM% нуждается в &lt;SPECIAL&gt;лучистых осколках&lt;&gt;.&#xA;&#xA;%PROC_BUI_SENT%
                                { "Russian", "%NAME% с планеты %PLANET% в системе %SYSTEM% нуждается в &lt;SPECIAL&gt;лучистых осколках&lt;&gt;.&#xA;&#xA;%PROC_BUI_SENT%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PP_BUI_RUST_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Существо %NAME% с планеты %PLANET% из системы %SYSTEM% нуждается в &lt;SPECIAL&gt;ржавом металле&lt;&gt;, но о цели не сообщает.&#xA;&#xA;%PROC_BUI_SENT%
                                { "Russian", "%NAME% с планеты %PLANET% из системы %SYSTEM% нуждается в &lt;SPECIAL&gt;ржавом металле&lt;&gt;, но о цели не сообщает.&#xA;&#xA;%PROC_BUI_SENT%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PP_BUI_STELLAR_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Существо %NAME% с планеты %PLANET% в системе %SYSTEM% нуждается в &lt;STELLAR&gt;хроматическом металле&lt;&gt;. Это продвинутый сплав, используемый в разных технологиях.&#xA;&#xA;%PROC_BUI_SENT%
                                { "Russian", "%NAME% с планеты %PLANET% в системе %SYSTEM% нуждается в &lt;STELLAR&gt;хроматическом металле&lt;&gt;. Это продвинутый сплав, используемый в разных технологиях.&#xA;&#xA;%PROC_BUI_SENT%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PP_BUI_LOCAL_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Существо %NAME% с планеты %PLANET% из системы %SYSTEM% нуждается в следующем: %ITEM%. О цели оно не сообщает.&#xA;&#xA;%PROC_BUI_SENT%
                                { "Russian", "%NAME% с планеты %PLANET% из системы %SYSTEM% нуждается в следующем: %ITEM%. О цели оно не сообщает.&#xA;&#xA;%PROC_BUI_SENT%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PP_BUI_CRAFTING_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Существо %NAME% с планеты %PLANET% в системе %SYSTEM% нуждается в предмете «%ITEM%», скорее всего, для личного улучшения.&#xA;&#xA;%PROC_BUI_SENT%
                                { "Russian", "%NAME% с планеты %PLANET% в системе %SYSTEM% нуждается в предмете «%ITEM%», скорее всего, для личного улучшения.&#xA;&#xA;%PROC_BUI_SENT%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PP_BUI_SCRAPPROD_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Существо %NAME% с планеты %PLANET% в системе %SYSTEM% нуждается в новых компонентах и просит помочь найти добываемую технологию.&#xA;&#xA;%PROC_BUI_SENT%
                                { "Russian", "%NAME% с планеты %PLANET% в системе %SYSTEM% нуждается в новых компонентах и просит добыть технологию.&#xA;&#xA;%PROC_BUI_SENT%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PP_BUI_SCRAPPING_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Существо %NAME% с планеты %PLANET% в системе %SYSTEM% нуждается в новых компонентах и просит помочь добыть ценный лом из &lt;TECHNOLOGY&gt;упавшего звездолета&lt;&gt;.&#xA;&#xA;%PROC_BUI_SENT%
                                { "Russian", "%NAME% с планеты %PLANET% в системе %SYSTEM% нуждается в новых компонентах и просит добыть ценный лом из &lt;TECHNOLOGY&gt;упавшего звездолёта&lt;&gt;.&#xA;&#xA;%PROC_BUI_SENT%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PP_BUI_MIRROR_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Существо %NAME% с планеты %PLANET% в системе %SYSTEM% нуждается в &lt;SPECIAL&gt;инвертированных зеркалах&lt;&gt;. Они являются основными компонентами &lt;SPECIAL&gt;резонаторов диссонанса&lt;&gt;, позволяющих извлекать атлантидий из испорченных миров.&#xA;&#xA;%PROC_BUI_SENT%
                                { "Russian", "%NAME% с планеты %PLANET% в системе %SYSTEM% нуждается в &lt;SPECIAL&gt;инвертированных зеркалах&lt;&gt;. Они являются основными компонентами &lt;SPECIAL&gt;резонаторов диссонанса&lt;&gt;, позволяющих извлекать атлантидий из испорченных миров.&#xA;&#xA;%PROC_BUI_SENT%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PP_BUI_HEART_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Существо %NAME% с планеты %PLANET% в системе %SYSTEM% показывает, что нуждается в &lt;SPECIAL&gt;кристаллическом сердце&lt;&gt;.&#xA;&#xA;%PROC_BUI_SENT%
                                { "Russian", "%NAME% с планеты %PLANET% в системе %SYSTEM% нуждается в &lt;SPECIAL&gt;кристаллическом сердце&lt;&gt;.&#xA;&#xA;%PROC_BUI_SENT%" },
                            }
                        },
                        --#endregion

                        --#region UI_PP_BUI_SCRAPPING_OBJ
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PP_BUI_SCRAPPING_OBJ_HEADER" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Собрать компоненты звездолета
                                { "Russian", "Собрать компоненты звездолёта" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PP_BUI_SCRAPPING_OBJ" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Собрать компоненты звездолета: %CURRENT%/%AMOUNT% юн.
                                { "Russian", "Собрать компоненты звездолёта: %CURRENT%/%AMOUNT% юн." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PP_BUI_SCRAPPING_OBJ_ALT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Собрать компоненты звездолета стоимостью %COUNT% юн.
                                { "Russian", "Собрать компоненты звездолёта стоимостью %COUNT% юн." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PP_BUI_SCRAPPING_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Достигнув места сбора утиля, станьте владельцем разбившегося звездолета. После завершения необходимого ремонта звездолет сможет долететь до &lt;COMMODITY&gt;космической станции&lt;&gt;. Там его можно будет разобрать на &lt;TECHNOLOGY&gt;ценный лом&lt;&gt;.&#xA;&#xA;%NAME% говорит, что его больше всего интересуют детали %ITEM1%, %ITEM2%, %ITEM3%, %ITEM4% или %ITEM5%.
                                { "Russian", "Достигнув места кораблекрушения, станьте владельцем разбившегося звездолёта. После завершения ремонта, звездолёт сможет долететь до &lt;COMMODITY&gt;космической станции﻿.&lt;&gt; Там его можно будет разобрать на &lt;TECHNOLOGY&gt;ценный лом﻿.&lt;&gt;&#xA;&#xA;%NAME% говорит, что его больше всего интересуют детали %ITEM1%, %ITEM2%, %ITEM3%, %ITEM4% или %ITEM5%." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PP_BUI_SCRAPPING_OBJ_TIP_ALT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Достигнув места сбора утиля, станьте владельцем разбившегося звездолета. После завершения необходимого ремонта звездолет сможет долететь до &lt;COMMODITY&gt;космической станции&lt;&gt;. Там его можно будет разобрать на &lt;TECHNOLOGY&gt;ценный лом&lt;&gt;.
                                { "Russian", "Достигнув места кораблекрушения, станьте владельцем разбившегося звездолёта. После завершения ремонта, звездолёт сможет долететь до &lt;COMMODITY&gt;космической станции﻿.&lt;&gt; Там его можно будет разобрать на &lt;TECHNOLOGY&gt;ценный лом﻿.&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region UI_PP_BUI_SHARD_OBJ
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PP_BUI_SHARD_OBJ_HEADER" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Извлеките лучистые осколки: %COUNT%
                                { "Russian", "Извлечь %COUNT% × лучистых осколков" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PP_BUI_SHARD_OBJ" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Извлеките лучистые осколки: %CURRENT%/%AMOUNT%
                                { "Russian", "Извлечь лучистые осколки: %CURRENT%/%AMOUNT%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PP_BUI_SHARD_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите лучистые осколки из кристаллов, которые можно найти на лишенных гармонии планетах. Эти странные образования можно найти с помощью анализирующего визора (&lt;IMG&gt;AIM&lt;&gt;) на всех мирах, где присутствуют испорченные стражи.&#xA;&#xA;Найдите &lt;STELLAR&gt;лишенные гармонии&lt;&gt; системы на галактической карте. Находясь в космосе, просканируйте отдельные планеты &lt;TECHNOLOGY&gt;сканером&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;) звездолета, чтобы найти миры, где скопились отряды испорченных стражей.
                                { "Russian", "Соберите лучистые осколки из кристаллов, которые можно найти на лишенных гармонии планетах. Эти странные образования можно найти с помощью анализирующего визора (&lt;IMG&gt;AIM&lt;&gt;) на всех мирах, где присутствуют испорченные стражи.&#xA;&#xA;Найдите &lt;STELLAR&gt;лишенные гармонии&lt;&gt; системы на галактической карте. Находясь в космосе, просканируйте отдельные планеты &lt;TECHNOLOGY&gt;сканером&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;) звездолёта, чтобы найти миры, где скопились отряды испорченных стражей." },
                            }
                        },
                        --#endregion

                        --#region UI_PP_BUI_RETURN_OBJ
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PP_BUI_RETURN_OBJ" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вернуться к существу %NAME%
                                { "Russian", "Вернуться к аутофагу %NAME%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PP_BUI_RETURN_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вернитесь на планету %PLANET% в системе %SYSTEM% и сообщите существу %NAME% о своем успехе, чтобы получить награду.&#xA;&#xA;Выполняйте задания, чтобы улучшать свои отношения с &lt;TRANS_BUI&gt;аутофагами&lt;&gt;, узнавать их язык и получать &lt;STELLAR&gt;ценные&lt;&gt; и &lt;SPECIAL&gt;эксклюзивные&lt;&gt; награды.
                                { "Russian", "Вернитесь на планету %PLANET% в системе %SYSTEM% и сообщите аутофагу %NAME% о своем успехе, чтобы получить награду.&#xA;&#xA;Выполняйте задания, чтобы улучшать свои отношения с &lt;TRANS_BUI&gt;аутофагами&lt;&gt;, узнавать их язык и получать &lt;STELLAR&gt;ценные&lt;&gt; и &lt;SPECIAL&gt;эксклюзивные&lt;&gt; награды." },
                            }
                        },
                        --#endregion

                        --#region EMOTE_HOLO_SHIP
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "EMOTE_HOLO_SHIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Голограмма: звездолет
                                { "Russian", "Голограмма: звездолёт" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "EMOTE_HOLO_SHIP_U" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ГОЛОГРАММА: ЗВЕЗДОЛЕТ
                                { "Russian", "ГОЛОГРАММА: ЗВЕЗДОЛЁТ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "EMOTE_HOLO_SHIP_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Эксклюзивный жест.&#xA;&#xA;Его можно выбрать в &lt;VAL_ON&gt;быстром меню&lt;&gt;, чтобы создать небольшую голограмму классического боевого звездолета.
                                { "Russian", "Эксклюзивный жест.&#xA;&#xA;Его можно выбрать в &lt;VAL_ON&gt;быстром меню&lt;&gt;, чтобы создать небольшую голограмму классического боевого звездолёта." },
                            }
                        },
                        --#endregion

                        --#region BLD_EXPD_SHIPBREAK1_NAME
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_EXPD_SHIPBREAK1_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- РАЗРУШЕННЫЙ ЗВЕЗДОЛЕТ
                                { "Russian", "РАЗРУШЕННЫЙ ЗВЕЗДОЛЁТ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_EXPD_SHIPBREAK1_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Разрушенный звездолет
                                { "Russian", "Разрушенный звездолёт" },
                            }
                        },
                        --#endregion

                        --#region BLD_EXPD_SHIPBREAK4_NAME
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_EXPD_SHIPBREAK4_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПОВРЕЖДЕННЫЙ ЗВЕЗДОЛЕТ
                                { "Russian", "ПОВРЕЖДЁННЫЙ ЗВЕЗДОЛЁТ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_EXPD_SHIPBREAK4_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поврежденный звездолет
                                { "Russian", "Повреждённый звездолёт" },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENTINEL_CRASH_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Мне удалось найти поврежденный звездолет стражей, рухнувший на поверхность планеты %PLANET% в системе %SYSTEM%.&#xA;&#xA;Если повезет, я смогу взломать его системы и забрать корабль себе.
                                { "Russian", "Мне удалось найти поврежденный звездолёт стражей, рухнувший на поверхность планеты %PLANET% в системе %SYSTEM%.&#xA;&#xA;Если повезёт, я смогу взломать его системы и забрать корабль себе." },
                            }
                        },

                        --#region UI_SENTINEL_CRASH_OBJ.*_TIP
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENTINEL_CRASH_OBJ1_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Звездолет стражей обладает собственным разумом, собственной жизнью. Его нужно очистить от остатков власти Эрона.&#xA;&#xA;На найденном мною разбившемся перехватчике видны следы вмешательства, словно кто-то или что-то уже пыталось подключиться к рудиментарной кабине звездолета. Если я завершу установку, то смогу пилотировать этот корабль.
                                { "Russian", "Звездолёт стражей обладает собственным разумом, собственной жизнью. Его нужно очистить от остатков власти Эрона.&#xA;&#xA;На найденном мною разбившемся перехватчике видны следы вмешательства, словно кто-то или что-то уже пыталось подключиться к рудиментарной кабине звездолёта. Если я завершу установку, то смогу пилотировать этот корабль." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENTINEL_CRASH_OBJ2_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Звездолет стражей обладает собственным разумом, собственной жизнью. Он не подчинится власти другого существа, пока не будет установлен &lt;TECHNOLOGY&gt;интерфейс пилота&lt;&gt;.&#xA;&#xA;На найденном мною разбившемся перехватчике видны следы вмешательства, словно кто-то или что-то уже пыталось подключиться к рудиментарной кабине звездолета. Если я завершу установку, то смогу пилотировать этот корабль.
                                { "Russian", "Звездолёт стражей обладает собственным разумом, собственной жизнью. Он не подчинится власти другого существа, пока не будет установлен &lt;TECHNOLOGY&gt;интерфейс пилота&lt;&gt;.&#xA;&#xA;На найденном мною разбившемся перехватчике видны следы вмешательства, словно кто-то или что-то уже пыталось подключиться к рудиментарной кабине звездолёта. Если я завершу установку, то смогу пилотировать этот корабль." },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENTINEL_CRASH_BRAIN_MARKER" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Древнее место происшествия
                                -- Ancient Site
                                { "Russian", "Древнее место" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENTINEL_CRASH_BRAIN_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- При моем приближении древнее место происшествия оживает. Камни начинают скрежетать друг о друга. В ответ лежащий в моем рюкзаке &lt;SPECIAL&gt;зеркальный мозг&lt;&gt; излучает тепло.
                                -- The ancient site stirs as I approach, stone scraping against stone. Warmth radiates from the &lt;SPECIAL&gt;Hyaline Brain&lt;&gt; within my pack, as though in response.
                                { "Russian", "При моем приближении древнее место оживает. Камни начинают скрежетать друг о друга. В ответ лежащий в моем рюкзаке &lt;SPECIAL&gt;зеркальный мозг&lt;&gt; излучает тепло." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SHIPBRAIN_LABEL_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите древнее место происшествия в снах этого разума
                                -- Locate the ancient site in the dreams of this mind
                                { "Russian", "Найдите древнее место в снах этого разума" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ROBOT_SHIP_REPAIR_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Завершите сбор утиля, чтобы изгнать стража
                                -- Complete salvage operations to purge Sentinel presence
                                { "Russian", "Соберите утиль, чтобы изгнать стража" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_UI_TYPE_GHOSTSHIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ОБРЕЧЕННЫЙ
                                -- DOOMED
                                { "Russian", "ОБРЕЧЁННЫЙ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_GHOSTSHIP_CREW_DATA" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обречен плыть вечно
                                -- Doomed to sail forever
                                { "Russian", "Обречён плыть вечно" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_INSTALL_RUNE_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ВВЕСТИ ЗНАКИ
                                -- INPUT GLYPH
                                { "Russian", "ВВЕДИТЕ ЗНАК" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_INSTALL_RUNE_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Выберите знак для гармонической последовательности
                                -- Select glyph for harmonic sequence
                                { "Russian", "Выбрать знак гармонической последовательности" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_OPTIONS_REVERTED" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вернуть по умолчанию
                                -- Reverted to Defaults
                                { "Russian", "Настроено по умолчанию" },
                            }
                        },
                    }
                },
            }
        }
    }
}
