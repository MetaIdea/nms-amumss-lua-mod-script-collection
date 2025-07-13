NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]  = "_RuFixLOC4.pak",
    ["MOD_AUTHOR"]    = "gh0stwizard",
    ["NMS_VERSION"]   = "5.72",
    ["EXML_CREATE"]   = "false",
    ["MODIFICATIONS"] = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                { -- LANGUAGE/NMS_LOC4_RUSSIAN.MBIN
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_LOC4_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        --#region Окно торговли
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TRADE_TOGGLE_INV" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Переключить &lt;IMG&gt;TRADE_TOGGLE_INV&lt;&gt;
                                { "Russian", "Сменить &lt;IMG&gt;TRADE_TOGGLE_INV&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TRADE_SUIT_INVENTORY_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;INVBACKPACK&lt;&gt; Инв. экзокост.
                                { "Russian", "&lt;IMG&gt;INVBACKPACK&lt;&gt; Экзокостюм" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TRADE_SHIP_INVENTORY_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;INVSHIP&lt;&gt; Инвентарь звездолета
                                { "Russian", "&lt;IMG&gt;INVSHIP&lt;&gt; Звездолёт" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TRADE_FREIGHT_INVENTORY_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;INVFREIGHT&lt;&gt; Инв. грузового кор.
                                { "Russian", "&lt;IMG&gt;INVFREIGHT&lt;&gt; Грузовое судно" },
                            }
                        },
                        -- В общем, ситуация такая, что в оригинале формат такой: ЗНАЧОК _ПРОБЕЛ_ СУММА.
                        -- В русском переводе все через одно место, но для продаж сделано ЗНАЧОК СУММА без пробела.
                        -- Оставляем все как для продажи, отсутствие пробела вроде как не мешает,
                        -- если что потом можно переделать.
                        -- Для ртути: оставляем пробел между знаком и числом.
                        -- Для юнитов: пробела нет, т.к. хренлионные суммы дают прокрутку.
                        -- Для нанитов: пробела нет в всплывающем меню, в списке пробел оставляем.
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TRADE_BUY_NANITES" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;SELECT&lt;&gt; Купить за %PRICE%&lt;IMG&gt;NANITE&lt;&gt;
                                -- &lt;IMG&gt;SELECT&lt;&gt; Buy for &lt;IMG&gt;NANITE&lt;&gt; %PRICE%
                                { "Russian", "&lt;IMG&gt;SELECT&lt;&gt; Купить за &lt;IMG&gt;NANITE&lt;&gt; %PRICE%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SPECIALS_COST" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Купить за ртуть: %PRICE%
                                -- Buy for %PRICE% Quicksilver
                                { "Russian", "КУПИТЬ ЗА &lt;IMG&gt;QUICKSILVER&lt;&gt; %PRICE%" },
                            }
                        },
                        -- эта строчка используется и в списке и в всплывающем меню
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TRADE_SELL_NANITES" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Продать за скоп. нан.: %PRICE%
                                -- Sell for %PRICE% Nanite Clusters
                                { "Russian", "Продать за &lt;IMG&gt;NANITESMALL&lt;&gt; %PRICE%" },
                            }
                        },
                        -- В общем, игрался с разными вариантами и пришел к выводу:
                        -- пусть разделителем будет символ валюты,
                        -- а все остальное додумает человек - слишком уж мало места в текущем интерфейсе.
                        -- Если что, то полный текст крупными буквами отобразится в сплывающем окошке.
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TRADE_BUY_UNITS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;SELECT&lt;&gt; Купить за %PRICE%&lt;IMG&gt;UNITS&lt;&gt;
                                -- &lt;IMG&gt;SELECT&lt;&gt; Buy for &lt;IMG&gt;UNITS&lt;&gt; %PRICE%
                                { "Russian", "&lt;IMG&gt;SELECT&lt;&gt; Купить &lt;IMG&gt;UNITSMALL&lt;&gt;%PRICE%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TRADE_BUY_UNITS_POS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;SELECT&lt;&gt; Купить за &lt;POS_AV&gt;&lt;IMG&gt;UNITS&lt;&gt;%PRICE%&lt;&gt;
                                -- &lt;IMG&gt;SELECT&lt;&gt; Buy for &lt;POS_AV&gt;&lt;IMG&gt;UNITS&lt;&gt; %PRICE%&lt;&gt;
                                { "Russian", "&lt;IMG&gt;SELECT&lt;&gt; Купить &lt;POS_AV&gt;&lt;IMG&gt;UNITSMALL&lt;&gt;%PRICE%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TRADE_BUY_UNITS_NEG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;SELECT&lt;&gt; Купить за &lt;NEG_AV&gt;&lt;IMG&gt;UNITS&lt;&gt;%PRICE%&lt;&gt;
                                -- &lt;IMG&gt;SELECT&lt;&gt; Buy for &lt;NEG_AV&gt;&lt;IMG&gt;UNITS&lt;&gt; %PRICE%&lt;&gt;
                                { "Russian", "&lt;IMG&gt;SELECT&lt;&gt; Купить &lt;NEG_AV&gt;&lt;IMG&gt;UNITSMALL&lt;&gt;%PRICE%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TRADE_SELL_UNITS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;SELECT&lt;&gt; Продать %AMOUNT% за &lt;IMG&gt;UNITS&lt;&gt;%PRICE%
                                -- &lt;IMG&gt;SELECT&lt;&gt; Sell %AMOUNT% for &lt;IMG&gt;UNITS&lt;&gt; %PRICE%
                                { "Russian", "&lt;IMG&gt;SELECT&lt;&gt; Сбыть %AMOUNT% &lt;IMG&gt;UNITSMALL&lt;&gt;%PRICE%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TRADE_SELL_UNITS_POS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;SELECT&lt;&gt; Продать %AMOUNT% за &lt;POS_AVG&gt;&lt;IMG&gt;UNITS&lt;&gt;%PRICE%&lt;&gt;
                                -- &lt;IMG&gt;SELECT&lt;&gt; Sell %AMOUNT% for &lt;POS_AVG&gt;&lt;IMG&gt;UNITS&lt;&gt; %PRICE%&lt;&gt;
                                { "Russian", "&lt;IMG&gt;SELECT&lt;&gt; Сбыть %AMOUNT% &lt;POS_AVG&gt;&lt;IMG&gt;UNITSMALL&lt;&gt;%PRICE%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TRADE_SELL_UNITS_NEG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;SELECT&lt;&gt; Продать %AMOUNT% за &lt;NEG_AV&gt;&lt;IMG&gt;UNITS&lt;&gt;%PRICE%&lt;&gt;
                                -- &lt;IMG&gt;SELECT&lt;&gt; Sell %AMOUNT% for &lt;NEG_AV&gt;&lt;IMG&gt;UNITS&lt;&gt; %PRICE%&lt;&gt;
                                { "Russian", "&lt;IMG&gt;SELECT&lt;&gt; Сбыть %AMOUNT% &lt;NEG_AV&gt;&lt;IMG&gt;UNITSMALL&lt;&gt;%PRICE%&lt;&gt;" },
                            }
                        },
                        -- вот это не активно, внизу списка, типа готовы покупать по таким ценам
                        -- иконка кнопки тут лишняя
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TRADE_SELL_UNITS_WANTED" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;SELECT&lt;&gt; Покупка за &lt;IMG&gt;UNITS&lt;&gt;%PRICE%
                                -- &lt;IMG&gt;SELECT&lt;&gt; Buying for &lt;IMG&gt;UNITS&lt;&gt; %PRICE%
                                { "Russian", "Купят за &lt;IMG&gt;UNITSMALL&lt;&gt;%PRICE%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TRADE_SELL_UNITS_WANTED_POS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;SELECT&lt;&gt; Покупка за &lt;POS_AVG&gt;&lt;IMG&gt;UNITS&lt;&gt;%PRICE%&lt;&gt;
                                -- &lt;IMG&gt;SELECT&lt;&gt; Buying for &lt;POS_AVG&gt;&lt;IMG&gt;UNITS&lt;&gt; %PRICE%&lt;&gt;
                                { "Russian", "Купят за &lt;POS_AVG&gt;&lt;IMG&gt;UNITSMALL&lt;&gt;%PRICE%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TRADE_SELL_UNITS_WANTED_NEG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;SELECT&lt;&gt; Покупка за &lt;NEG_AVG&gt;&lt;IMG&gt;UNITS&lt;&gt;%PRICE%&lt;&gt;
                                -- &lt;IMG&gt;SELECT&lt;&gt; Buying for &lt;NEG_AVG&gt;&lt;IMG&gt;UNITS&lt;&gt; %PRICE%&lt;&gt;
                                { "Russian", "Купят за &lt;NEG_AVG&gt;&lt;IMG&gt;UNITSMALL&lt;&gt;%PRICE%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TRADE_BUY_SPECIALS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TRADE_SPECIALS&gt;&lt;IMG&gt;SELECT&lt;&gt; Купить за &lt;IMG&gt;QUICKSILVER&lt;&gt;%PRICE%&lt;&gt;
                                -- &lt;TRADE_SPECIALS&gt;&lt;IMG&gt;SELECT&lt;&gt; Buy for &lt;IMG&gt;QUICKSILVER&lt;&gt; %PRICE%&lt;&gt;
                                { "Russian", "&lt;TRADE_SPECIALS&gt;&lt;IMG&gt;SELECT&lt;&gt; Купить за &lt;IMG&gt;QUICKSILVER&lt;&gt; %PRICE%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TRADE_BUY_SPECIALS_SIMPLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;SELECT&lt;&gt; Купить за %PRICE% &lt;IMG&gt;QUICKSILVER&lt;&gt;
                                -- &lt;IMG&gt;SELECT&lt;&gt; Buy for &lt;IMG&gt;QUICKSILVER&lt;&gt; %PRICE%
                                { "Russian", "&lt;IMG&gt;SELECT&lt;&gt; Купить за &lt;IMG&gt;QUICKSILVER&lt;&gt; %PRICE%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TRADE_BUY_BUILDING_PRICE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;SELECT&lt;&gt; Изучить (модули сбора: %PRICE%)
                                -- &lt;IMG&gt;SELECT&lt;&gt; Learn for %PRICE% x Salvage Module
                                { "Russian", "&lt;IMG&gt;SELECT&lt;&gt; Изучить за %PRICE% × Извлеченные данные" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TRADE_BUY_PRODUCT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Купить схемы (%ITEM%: %AMOUNT%)
                                -- Buy plans for %AMOUNT% x %ITEM%
                                { "Russian", "Купить чертеж за %AMOUNT% × %ITEM%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TRADE_BUY_BUILDING_NO_ITEMS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Недостаточно модулей сбора
                                -- Insufficient Salvage Modules
                                { "Russian", "Недостаточно извлеченных данных" },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_TRAIT_SUPPORT_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Стоимость топлива экспедиции: %AMOUNT% (%AMOUNT% Expedition Fuel Cost)
                                { "Russian", "Расходы топлива экспедиции: %AMOUNT%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_TRADING_SEC_DAMAGE_4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Получили предложение купить минералы по сниженной цене в системе %SYSTEM%. Купили товар. В одном из контейнеров торговец спрятал устройство слежения. Флот угодил в пиратскую западню, мы понесли огромный урон.
                                -- Offered cut-price minerals in the %SYSTEM% System. Purchased. Merchant hid tracking device in mineral containers. Pirates ambushed fleet, severe damage taken.
                                { "Russian", "Получили предложение купить минералы по сниженной цене в системе %SYSTEM%. Купили товар.&#xA;В одном из контейнеров торговец спрятал устройство слежения. Флот угодил в пиратскую западню, мы понесли огромный урон." },
                            }
                        },
                        -- В Нексусе
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_HANDIN_MP_MISSION" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Выполнить задание" }, -- Выполните задание
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_HANDIN_MP_MISSION_U" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "ВЫПОЛНИТЬ ЗАДАНИЕ" }, -- ВЫПОЛНИТЕ ЗАДАНИЕ
                            }
                        },
                        -- В звездолете на главном экране звездолета, капсим для читаемости
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_HUD_EXTERNAL_HAZARD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Внешн. %CONDITION%:&#xA;%VALUE%
                                { "Russian", "%CONDITION% СНАРУЖИ&#xA;%VALUE%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_HUD_HAZARD_TEMP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Температура
                                { "Russian", "ТЕМПЕРАТУРА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_HUD_HAZARD_RAD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Радиация
                                { "Russian", "РАДИАЦИЯ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_HUD_HAZARD_TOX" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Токсичность
                                { "Russian", "ТОКСИЧНОСТЬ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_HUD_HAZARD_DEAD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружена разреженная атмосфера
                                { "Russian", "РАЗРЕЖЕННАЯ АТМОСФЕРА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_HUD_HAZARD_ANOMALY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сила аномалии: %VALUE%0&#xA;Разрушение границы
                                { "Russian", "СИЛА АНОМАЛИИ %VALUE%0&#xA;РАЗРУШЕНИЕ ГРАНИЦЫ" },
                            }
                        },
                        -- ТРАНСПОРТ
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "CUSTOM_MARKINGS_BACK" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КОЖУХ ДВИГАТЕЛЯ (ENGINE COVER)
                                { "Russian", "КОРПУС" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "CUST_NOMAD_MARKINGS_FRONT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КАБИНА ЭКИПАЖА (COCKPIT)
                                { "Russian", "КАБИНА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "CUST_NOMAD_MARKINGS_BACK" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КОЖУХ ДВИГАТЕЛЯ (ENGINE COVER)
                                { "Russian", "КОРПУС" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "CUST_BIKE_MARKINGS_FRONT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КАБИНА ЭКИПАЖА (COCKPIT)
                                { "Russian", "КАБИНА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "CUST_BIKE_MARKINGS_LEFT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ЛЕВЫЙ ОБТЕКАТЕЛЬ (LEFT SIDEPOD)
                                { "Russian", "ЛЕВЫЙ БОК" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "CUST_BIKE_MARKINGS_RIGHT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПРАВЫЙ ОБТЕКАТЕЛЬ
                                { "Russian", "ПРАВЫЙ БОК" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "CUST_BIKE_BOOSTER" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- УСКОРИТЕЛЬ
                                -- BOOSTER
                                { "Russian", "УСКОРИТЕЛИ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "CUST_BIKE_BOOSTER_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Ускоритель
                                -- Booster
                                { "Russian", "Ускорители" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "CUST_TRUCK_MARKINGS_BACK" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КОРПУС ДВИГАТЕЛЯ (ENGINE HOUSING)
                                { "Russian", "КОРПУС" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "CUST_TRUCK_BOOSTER" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- РАКЕТНЫЙ БЛОК
                                -- ROCKET UNIT
                                { "Russian", "УСКОРИТЕЛИ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "CUST_TRUCK_BOOSTER_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Ракетный блок
                                -- Rocket Unit
                                { "Russian", "Ускорители" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "CUST_HOVER_MARKINGS_FRONT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КАБИНА ЭКИПАЖА (COCKPIT)
                                { "Russian", "КАБИНА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "CUST_HOVER_MARKINGS_LEFT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ЛЕВЫЙ ДВИГАТЕЛЬ (LEFT ENGINE)
                                { "Russian", "ЛЕВЫЙ БОК" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "CUST_HOVER_MARKINGS_RIGHT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПРАВЫЙ ДВИГАТЕЛЬ
                                { "Russian", "ПРАВЫЙ БОК" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "CUST_SUB_MARKINGS_LEFT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ЛЕВЫЙ ДВИГАТЕЛЬ (LEFT ENGINE)
                                { "Russian", "ЛЕВАЯ СТОРОНА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "CUST_SUB_MARKINGS_RIGHT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПРАВЫЙ ДВИГАТЕЛЬ
                                { "Russian", "ПРАВАЯ СТОРОНА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "CUST_SUB_BOOSTER" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КЛАПАНЫ РЕАКТОРА
                                { "Russian", "ТУРБИНЫ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "CUST_SUB_BOOSTER_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Клапаны реактора
                                -- Reactor Vents
                                { "Russian", "Турбины" },
                            }
                        },
                        -- Роли фригатов
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_UI_TYPE_EXPLORE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Исследовательская
                                { "Russian", "Исследов." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_UI_TYPE_MINING" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Промышленная
                                { "Russian", "Промыш." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_UI_TYPE_BALANCED" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сбалансированная
                                { "Russian", "Сбалансир." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_SPECIALTERMINAL_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Дополнительный элемент синтеза ртути
                                -- Quicksilver Synthesis Companion
                                { "Russian", "Товарищ по синтезу ртути" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SPECIALSHOP_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Дополнительный элемент синтеза ртути
                                -- Quicksilver Synthesis Companion
                                { "Russian", "Товарищ по синтезу ртути" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NPC_WATERPLAQUE_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- В последнее время я все чаще бываю на берегу. Мой приход превратился в ежедневный ритуал. Теперь я преодолеваю целые километры, шагая по песку и хрустящим под ногами ракушкам. Я до сих пор пытаюсь найти такой же камешек, как тот, что попался мне в тот раз.&#xA;&#xA;Я продолжаю перебирать камни в поисках одного единственного лучика света, надеясь вновь найти совершенство. Единственная трудность, с которой мне пока не удалось справиться — это приливное течение.&#xA;&#xA;Прошлой ночью мне чудом удалось его заметить.
                                { "Russian", "В последнее время я все чаще бываю на берегу.&#xA;&#xA;Мой приход превратился в ежедневный ритуал. Теперь я преодолеваю целые километры, шагая по песку и хрустящим под ногами ракушкам. Я до сих пор пытаюсь найти такой же камешек, как тот, что попался мне в тот раз.&#xA;&#xA;Я продолжаю перебирать камни в поисках одного единственного лучика света, надеясь вновь найти совершенство. Единственная трудность, с которой мне пока не удалось справиться — это приливное течение.&#xA;&#xA;Прошлой ночью мне чудом удалось его заметить." },
                            }
                        },
                        --
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WATERMISSION_STORY4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ЖУРНАЛ: &lt;STELLAR&gt;0328A&lt;&gt;. &lt;STELLAR&gt;+98 солов&lt;&gt; с момента пробоины&#xA;Опять этот сон.&#xA;Бесконечные фиолетовые волны на километры вокруг. Сначала они дарят избавление от тупой алой боли. Но затем... Меня не покидает ощущение, будто там есть что-то еще. Я оглядываюсь вокруг. Ничего. Совершено ничего.&#xA;Я моргаю и вижу их. Сначала едва различимые очертания. Но ошибки быть не может. Повторяющиеся геометрические фигуры, которыми усеяно все небо. Треугольники ряд за рядом медленно плывут надо мной... Я просыпаюсь, вижу дождь и даже испытываю некоторое облегчение.
                                { "Russian", "ЖУРНАЛ: &lt;STELLAR&gt;0328A&lt;&gt;. &lt;STELLAR&gt;+98 солов&lt;&gt; с момента пробоины&#xA;Опять этот сон.&#xA;Бесконечные фиолетовые волны на километры вокруг. Сначала они дарят избавление от тупой алой боли. Но затем... Меня не покидает ощущение, будто там есть что-то еще. Я оглядываюсь вокруг. Ничего. Совершено ничего.&#xA;Я моргаю и вижу их. Сначала едва различимые очертания. Но ошибки быть не может. Повторяющиеся геометрические фигуры, которыми усеяно все небо. Треугольники ряд за рядом медленно плывут надо мной...&#xA;Я просыпаюсь, вижу дождь и даже испытываю некоторое облегчение." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_TRADING_FAIL_18" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Перевозили оружие из сектора %SYSTEM%. Возникли трудности с прохождением таможенного контроля. Оружие содержит противозаконные модификации, позволяющие ему использовать запрещенные зажигательные снаряды. Местные власти выписали нам серьезный штраф.
                                { "Russian", "Перевозили оружие из сектора %SYSTEM%. Возникли трудности с прохождением таможенного контроля.&#xA;Оружие содержит противозаконные модификации, позволяющие ему использовать запрещенные зажигательные снаряды. Местные власти выписали нам серьезный штраф." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COMM_WEEK_06_OBJ6_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt;%MISSIONTIME%&lt;&gt;&#xA;Сделайте снимок: %BUILDING%&#xA;Активируйте фоторежим с помощью &lt;IMG&gt;QUICK_MENU&lt;&gt;.
                                { "Russian", "Оставшееся время исследования: &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt;%MISSIONTIME%&lt;&gt;&#xA;Сделайте снимок: %BUILDING%&#xA;Активируйте фоторежим с помощью &lt;IMG&gt;QUICK_MENU&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "MARKER_TAG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Удерживайте &lt;IMG&gt;MARKER_TAG&lt;&gt;, чтобы оставить метку.
                                -- Hold &lt;IMG&gt;MARKER_TAG&lt;&gt; to Tag
                                { "Russian", "Удерживайте &lt;IMG&gt;MARKER_TAG&lt;&gt;, чтобы выделить" },
                            }
                        },
                        -- не влазеет для "Анализирующий визор", обрезается на "количеством улучшен"
                        -- ограничение на 100 английских букв (50 русских)?
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "WARN_TECH_GROUP_TEXT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %TYPE% не может справиться с таким количеством улучшений. Снимите лишние улучшения, чтобы устройство снова начало работать.
                                -- Too many upgrades installed in %TYPE%. Remove surplus upgrades to restore device functionality.
                                { "Russian", "Снимите лишние улучшения, чтобы устройство снова начало работать." },
                            }
                        },
                        -- на экране пуска экспедиции
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_UI_COMMENCE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Отправить экспедицию
                                -- Launch Expedition
                                { "Russian", "Начать экспедицию" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_UI_EXPEDITION_COST" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Требуется топлива: %AMOUNT% т
                                -- Fuel required: %AMOUNT% tonnes
                                { "Russian", "Нужно %AMOUNT% тонн топлива" },
                            }
                        },
                        -- в описании фригата
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_UI_STAT_PROGRESS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ДО СЛЕДУЮЩЕГО РАНГА ОСТАЛОСЬ
                                -- PROGRESS TO NEXT RANK
                                { "Russian", "ДО СЛЕДУЮЩЕГО РАНГА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_UI_STAT_DAMAGED" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Число повреж.
                                -- Times Damaged
                                { "Russian", "Был поврежден" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_UI_FUEL_TITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Требуемое топливо
                                -- Fuel Requirements
                                { "Russian", "Расход топлива" },
                            }
                        },
                        -- на экране отчета экспедиции
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_UI_EXPEDITION_END" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Закончить экспедицию
                                -- End Expedition
                                { "Russian", "Принять доклад" },
                            }
                        },
                        -- возле выход какая-то крякозябла вылезает (перенос строки откуда-то)
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "PHOTO_MODE_CONTROLS_NEW" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;PHOTO_HIDE&lt;&gt; Скрыть меню  &lt;IMG&gt;DIAMONDBULLET&lt;&gt;  &lt;IMG&gt;PHOTO_SUN&lt;&gt; Передвинуть солнце к указателю  &lt;IMG&gt;DIAMONDBULLET&lt;&gt;  &lt;IMG&gt;PHOTO_CAM&lt;&gt; Сохранить эффекты  &lt;IMG&gt;DIAMONDBULLET&lt;&gt; &#xA;&lt;IMG&gt;PHOTO_EXIT&lt;&gt; Выход
                                -- &lt;IMG&gt;PHOTO_HIDE&lt;&gt; Hide Menu  &lt;IMG&gt;DIAMONDBULLET&lt;&gt;  &lt;IMG&gt;PHOTO_SUN&lt;&gt; Move Sun to Cursor  &lt;IMG&gt;DIAMONDBULLET&lt;&gt;  &lt;IMG&gt;PHOTO_CAM&lt;&gt; Save Effects  &lt;IMG&gt;DIAMONDBULLET&lt;&gt;  &lt;IMG&gt;PHOTO_EXIT&lt;&gt; Exit
                                { "Russian", "&lt;IMG&gt;PHOTO_HIDE&lt;&gt; Скрыть меню  &lt;IMG&gt;DIAMONDBULLET&lt;&gt;  &lt;IMG&gt;PHOTO_SUN&lt;&gt; Передвинуть солнце к указателю  &lt;IMG&gt;DIAMONDBULLET&lt;&gt;  &lt;IMG&gt;PHOTO_CAM&lt;&gt; Сохранить эффекты  &lt;IMG&gt;DIAMONDBULLET&lt;&gt; &lt;IMG&gt;PHOTO_EXIT&lt;&gt; Выход" },
                            }
                        },
                        -- как бы есть еще HUD_COOLDOWN (RECHARGING), что тоже самое
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "HUD_RELOADING" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Перезагрузка
                                -- RELOADING
                                { "Russian", "ПЕРЕЗАРЯДКА" },
                            }
                        },
                        -- окно управления базой
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BASE_BUILDING_UPLOAD_COOLDOWN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Загрузка недоступна еще %TIME%
                                -- Upload Unavailable for %TIME%
                                { "Russian", "Загрузка недоступна в течении %TIME% сек." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_FIGHT_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Активно стражей: &lt;FUEL&gt;%CURRENT%&lt;&gt;&#xA;Уничтожьте всех активных стражей, чтобы выиграть время для &lt;STELLAR&gt;побега&lt;&gt;.&#xA;Дронов провоцируют попытки сбора ресурсов.
                                -- Active Sentinel units: &lt;FUEL&gt;%CURRENT%&lt;&gt;&#xA;Destroy all active Sentinels to buy time to &lt;STELLAR&gt;escape&lt;&gt;&#xA;Drones are provoked by harvesting resources
                                { "Russian", "Активно стражей: &lt;FUEL&gt;%CURRENT%&lt;&gt;&#xA;Дронов провоцируют попытки сбора ресурсов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_FIGHT_HIDE_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Активно стражей: &lt;FUEL&gt;%CURRENT%&lt;&gt;&#xA;&lt;STELLAR&gt;Покиньте территорию&lt;&gt; или &lt;STELLAR&gt;спрячьтесь&lt;&gt;.&#xA;Дронов провоцируют попытки сбора ресурсов.
                                -- Active Sentinel units: &lt;FUEL&gt;%CURRENT%&lt;&gt;&#xA;&lt;STELLAR&gt;Leave the area&lt;&gt; or &lt;STELLAR&gt;hide&lt;&gt; to escape&#xA;Drones are provoked by harvesting resources
                                { "Russian", "Активно стражей: &lt;FUEL&gt;%CURRENT%&lt;&gt;&#xA;&lt;STELLAR&gt;Покиньте территорию&lt;&gt; или &lt;STELLAR&gt;спрячьтесь&lt;&gt;&#xA;Дронов провоцируют попытки сбора ресурсов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_FIGHT_CYCLE_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Активно стражей: &lt;FUEL&gt;%CURRENT%&lt;&gt;&#xA;Возьмите &lt;STELLAR&gt;оружие&lt;&gt;, нажав &lt;IMG&gt;CYCLEWEAPON&lt;&gt;.&#xA;Уничтожьте всех активных стражей, чтобы выиграть время для &lt;STELLAR&gt;побега&lt;&gt;.
                                -- Active Sentinel units: &lt;FUEL&gt;%CURRENT%&lt;&gt;&#xA;Equip a &lt;STELLAR&gt;weapon&lt;&gt; by pressing &lt;IMG&gt;CYCLEWEAPON&lt;&gt;&#xA;Destroy all active Sentinels to buy time to &lt;STELLAR&gt;escape&lt;&gt;
                                { "Russian", "Активно стражей: &lt;FUEL&gt;%CURRENT%&lt;&gt;&#xA;Возьмите &lt;STELLAR&gt;оружие&lt;&gt;, нажав &lt;IMG&gt;CYCLEWEAPON&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORRUPT_WARNING_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ВНИМАНИЕ &lt;IMG&gt;SLASH&lt;&gt; ДРОНЫ СТРАЖЕЙ ИЗУЧАЮТ МЕСТНОСТЬ
                                -- WARNING &lt;IMG&gt;SLASH&lt;&gt; CORRUPT SWARM ON ALERT
                                { "Russian", "ИСПОРЧЕННЫЙ РОЙ ВСТРЕВОЖЕН!" },
                            }
                        },
                        -- очень сложно читать последнее предложение
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_INVESTIGATE_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Дроны стражей&lt;&gt; изучают местность&#xA;Добыча ресурсов привлекла их внимание&#xA;Если вы продолжите добывать ресурсы у них на виду, дроны на вас &lt;FUEL&gt;нападут&lt;&gt;
                                -- &lt;SPECIAL&gt;Sentinel Drones&lt;&gt; investigating&#xA;Drones are alerted by harvesting resources&#xA;Drones will &lt;FUEL&gt;attack&lt;&gt; if you continue while in sight
                                { "Russian", "&lt;SPECIAL&gt;Дроны стражей&lt;&gt; изучают местность&#xA;Добыча ресурсов привлекла их внимание&#xA;Дроны &lt;FUEL&gt;нападут&lt;&gt;, если продолжить добычу у них на виду" },
                            }
                        },
                        -- во-первых точки, во-вторых не точно
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "QUICK_MENU_SUM_FREIGHT_PLANET" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Варп-прыжок невозможен. Корабль слишком близко к планете.
                                -- Cannot Warp Freighter - Too Close to Planet
                                { "Russian", "Нельзя призвать грузовое судно вблизи планеты" },
                            }
                        },
                        --
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DIGGING_OBJ1_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найти подходящее место раскопок.&#xA;Двигайтесь по &lt;STELLAR&gt;указанным координатам&lt;&gt; и найдите подсказки.
                                -- Search for an appropriate dig site&#xA;Follow the &lt;STELLAR&gt;marked coordinates&lt;&gt; to find clues
                                { "Russian", "Найдите подходящее место для раскопок&#xA;Двигайтесь по &lt;STELLAR&gt;указанным координатам&lt;&gt;&#xA;и найдите подсказки" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DIGGING_SURVEY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите место археологических &lt;SPECIAL&gt;раскопок&lt;&gt;.&#xA;Используйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt;, чтобы найти подсказки.
                                -- Search for an archaeological &lt;SPECIAL&gt;dig site&lt;&gt;&#xA;Use the &lt;TECHNOLOGY&gt;Target Sweep&lt;&gt; to search for clues
                                { "Russian", "Найдите место археологических &lt;SPECIAL&gt;раскопок&lt;&gt;&#xA;Используйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt;, чтобы найти подсказки" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DIGGING_SURVEY_SWAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите место археологических &lt;SPECIAL&gt;раскопок&lt;&gt;.&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;
                                -- Search for an archaeological &lt;SPECIAL&gt;dig site&lt;&gt;&#xA;Activate a &lt;TECHNOLOGY&gt;Target Sweep&lt;&gt; with &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;
                                { "Russian", "Найдите место археологических &lt;SPECIAL&gt;раскопок&lt;&gt;&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DIGGING_SURVEY_OFF" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите место археологических &lt;SPECIAL&gt;раскопок&lt;&gt;.&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы найти подсказки.
                                -- Search for an archaeological &lt;SPECIAL&gt;dig site&lt;&gt;&#xA;Activate a &lt;STELLAR&gt;Target Sweep&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;) to search for clues
                                { "Russian", "Найдите место археологических &lt;SPECIAL&gt;раскопок&lt;&gt;&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы найти подсказки" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DIGGING_OBJ2_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найти подходящее место раскопок.&#xA;Соберите: %ITEM% (%CURRENT%/%AMOUNT%)
                                -- Search for an appropriate dig site&#xA;Collect %ITEM%: %CURRENT%/%AMOUNT%
                                { "Russian", "Найдите подходящее место для раскопок&#xA;Соберите: %ITEM% (%CURRENT%/%AMOUNT%)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DIGGING_OBJ2A_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найти подходящее место раскопок.&#xA;Обыщите руины на предмет &lt;STELLAR&gt;исторических данных&lt;&gt;.
                                -- Search for an appropriate dig site&#xA;Search the ruin for &lt;STELLAR&gt;Historical Data&lt;&gt;
                                { "Russian", "Найдите подходящее место для раскопок&#xA;Обыщите руины на предмет &lt;STELLAR&gt;исторических данных&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DIGGING_OBJ3_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Доберитесь до места раскопок.&#xA;Двигайтесь по &lt;SPECIAL&gt;указанным координатам&lt;&gt;.
                                -- Reach the dig site&#xA;Follow the &lt;SPECIAL&gt;marked coordinates&lt;&gt;
                                { "Russian", "Доберитесь до места раскопок&#xA;Двигайтесь по &lt;SPECIAL&gt;указанным координатам&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DIGGING_OBJ4_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Извлеките артефакт с помощью &lt;TECHNOLOGY&gt;ландшафтного манипулятора&lt;&gt;.&#xA;Соберите %ITEM% из &lt;SPECIAL&gt;фрагментов артефакта&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Используйте %ITEM%, чтобы открыть &lt;SPECIAL&gt;ящик с артефактом&lt;&gt;.
                                -- Unearth the artifact with the &lt;TECHNOLOGY&gt;Terrain Manipulator&lt;&gt;&#xA;Collect %ITEM% from &lt;SPECIAL&gt;Artifact Fragments&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Use the %ITEM%s to open the &lt;SPECIAL&gt;Artifact Crate&lt;&gt;
                                { "Russian", "Извлеките артефакт с помощью &lt;TECHNOLOGY&gt;ландшафтного манипулятора&lt;&gt;&#xA;Соберите %ITEM% из &lt;SPECIAL&gt;фрагментов артефакта&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Используйте %ITEM%, чтобы открыть &lt;SPECIAL&gt;ящик с артефактом&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DIGGING_OBJ5_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Извлеките артефакт с помощью &lt;TECHNOLOGY&gt;ландшафтного манипулятора&lt;&gt;.&#xA;Найдите и откройте &lt;SPECIAL&gt;ящик с артефактом&lt;&gt;.
                                -- Unearth the artifact with the &lt;TECHNOLOGY&gt;Terrain Manipulator&lt;&gt;&#xA;Locate and open the &lt;SPECIAL&gt;Artifact Crate&lt;&gt;
                                { "Russian", "Извлеките артефакт с помощью &lt;TECHNOLOGY&gt;ландшафтного манипулятора&lt;&gt;&#xA;Найдите и откройте &lt;SPECIAL&gt;ящик с артефактом&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DIGGING_OBJ6_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Передайте данные клиенту с &lt;TECHNOLOGY&gt;торгового терминала&lt;&gt;.
                                -- Transmit the data to the client at a &lt;TECHNOLOGY&gt;Trade Terminal&lt;&gt;
                                { "Russian", "Используйте &lt;TECHNOLOGY&gt;торговый терминал&lt;&gt;&#xA;для отправки данных клиенту" },
                            }
                        },
                        -- британский промпт, ты ли это?
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DIGGING_OBJ2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Извлечь сокровище на поверхность
                                -- Dig for the treasure
                                { "Russian", "Выкопайте сокровище" },
                            }
                        },
                        -- ну тут-то точка на конце точно не нужна
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JOINGAME_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Играйте с друзьями и мгновенно посещайте их миры.
                                -- Play with friends and instantly visit their worlds.
                                { "Russian", "Играйте с друзьями и мгновенно посещайте их миры" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PLAYGAME_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- К вашему сеансу могут подключиться другие исследователи.
                                -- Other explorers may join your session.
                                { "Russian", "К вашему сеансу могут подключиться другие исследователи" },
                            }
                        },
                        -- а тут британский промпт вылетел, да?
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_STEAM_PLAYER_PROFILE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Show Steam Profile
                                -- Show Steam Profile
                                { "Russian", "Показать профиль Steam" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WATERMISS1_SURVEY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Осмотрите &lt;TECHNOLOGY&gt;место передачи&lt;&gt;.&#xA;Используйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt;, чтобы точно установить место передачи.
                                -- Investigate the &lt;TECHNOLOGY&gt;broadcast site&lt;&gt;&#xA;Use the &lt;TECHNOLOGY&gt;Target Sweep&lt;&gt; to pinpoint the broadcast site
                                { "Russian", "Осмотрите &lt;TECHNOLOGY&gt;место передачи&lt;&gt;&#xA;Найдите место передачи с помощью &lt;TECHNOLOGY&gt;разведки цели&lt;&gt;" },
                            }
                        },
                        { -- возможно тут косяк с кнопками - не ясно
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WATERMISS1_SURVEY_SWAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Осмотрите &lt;TECHNOLOGY&gt;место передачи&lt;&gt;.&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;
                                -- Investigate the &lt;TECHNOLOGY&gt;broadcast site&lt;&gt;&#xA;Activate a &lt;TECHNOLOGY&gt;Target Sweep&lt;&gt; with &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;
                                { "Russian", "Осмотрите &lt;TECHNOLOGY&gt;место передачи&lt;&gt;&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WATERMISS1_SURVEY_OFF" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Осмотрите &lt;TECHNOLOGY&gt;место передачи&lt;&gt;.&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы точно установить место передачи.
                                -- Investigate the &lt;TECHNOLOGY&gt;broadcast site&lt;&gt;&#xA;Activate a &lt;STELLAR&gt;Target Sweep&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;) to pinpoint the broadcast site
                                { "Russian", "Осмотрите &lt;TECHNOLOGY&gt;место передачи&lt;&gt;&#xA;Найдите место передачи с помощью &lt;TECHNOLOGY&gt;разведки цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)" },
                            }
                        },
                        --
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_UI_NOTIFY_NO_EVENT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Флот прибыл в систему %SYSTEM%.&#xA;Начинается сканирование.
                                -- Fleet arrived in %SYSTEM% System&#xA;Beginning survey.
                                { "Russian", "Флот прибыл в систему %SYSTEM%&#xA;Начинаем сканирование..." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_UI_NOTIFY_EVENT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Флот прибыл в систему %SYSTEM%.&#xA;Капитан докладывает о возможных действиях...
                                -- Fleet arrived in %SYSTEM% System&#xA;Captain reports potential activity...
                                { "Russian", "Флот прибыл в систему %SYSTEM%&#xA;Капитан докладывает о возможных действиях..." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_UI_NOTIFY_RETURN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Задание выполнено.&#xA;Выполняю подготовку к сближению с крупным кораблем %FREIGHTER%.
                                -- Fleet Mission Complete&#xA;Preparing final approach to Capital Ship %FREIGHTER%
                                { "Russian", "Задание выполнено&#xA;Выполняем сближение с %FREIGHTER%" },
                            }
                        },
                        --
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CRE_FEED_OBJ" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Накормить животных
                                -- Feed Creatures
                                { "Russian", "Накормите животных" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CRE_FEED_OBJ1_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Кормите диких существ &lt;TRADEABLE&gt;питательными гранулами&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Чтобы обнаружить их, используйте анализирующий визор (&lt;IMG&gt;AIM&lt;&gt;).&#xA;В визоре ищите &lt;FUEL&gt;красные точки&lt;&gt; или &lt;TRADEABLE&gt;зеленые следы лап&lt;&gt;.
                                -- Feed wildlife with &lt;TRADEABLE&gt;Creature Pellets&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Locate creatures using the Analysis Visor (&lt;IMG&gt;AIM&lt;&gt;)&#xA;In the Visor, look for &lt;FUEL&gt;red dots&lt;&gt; or &lt;TRADEABLE&gt;green pawprints&lt;&gt;
                                { "Russian", "Кормите диких существ &lt;TRADEABLE&gt;питательными гранулами&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Чтобы обнаружить их, используйте анализирующий визор (&lt;IMG&gt;AIM&lt;&gt;)&#xA;В визоре ищите &lt;FUEL&gt;красные точки&lt;&gt; или &lt;TRADEABLE&gt;зеленые следы лап&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "CASING_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Метал. обшивка
                                -- Metal Plating
                                { "Russian", "Металлическая обшивка" },
                            }
                        },
                        -- ни самолетов, ни вертолетов, ничего другого кроме звездолетов в игре нет
                        -- грузовые суда не взлетают как звездолеты
                        -- так что указывать что это топливо для звездолета нет смысла
                        -- хм, "звездолетное топливо" прикольно звучит =)
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "LAUNCHFUEL_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ВЗЛЕТНОЕ ТОПЛИВО ДЛЯ ЗВЕЗДОЛЕТА
                                -- STARSHIP LAUNCH FUEL
                                { "Russian", "ВЗЛЁТНОЕ ТОПЛИВО" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "LAUNCHFUEL_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Взлет. топливо для звездолета
                                -- Starship Launch Fuel
                                { "Russian", "Взлётное топливо" },
                            }
                        },
                        -- речь скорее всего про металлический водород, но это не точно
                        -- 2H сам по себе стабилен
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "LAUNCHFUEL_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Топливо из стабилизированного дигидрогена
                                -- Stabilised Di-hydrogen Fuel
                                { "Russian", "Топливо из металлодигидрогена" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "LAUNCHFUEL_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Химически активное твердое топливо, использующееся во &lt;TECHNOLOGY&gt;взлетных ускорителях звездолетов&lt;&gt;.&#xA;&#xA;Производится из кристаллического &lt;TECHNOLOGY&gt;дигидрогена&lt;&gt;, который встречается в синих залежах на всех планетах.
                                -- Highly reactive solid-state fuel, required to fuel &lt;TECHNOLOGY&gt;Starship Launch Thrusters&lt;&gt;.&#xA;&#xA;Created from crystallised &lt;TECHNOLOGY&gt;Di-hydrogen&lt;&gt;, found in blue deposits on all worlds.
                                { "Russian", "Высокореактивное твердое топливо, используемое для заправки &lt;TECHNOLOGY&gt;взлетных ускорителей звездолётов﻿.&lt;&gt;&#xA;&#xA;Производится из кристаллического &lt;TECHNOLOGY&gt;дигидрогена﻿,&lt;&gt; который встречается в синих залежах на всех планетах." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_LAND3_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Намагнич. феррит
                                -- Magnetised Ferrite
                                { "Russian", "Намагниченный феррит" },
                            }
                        },
                        -- появляется в журнале на заброшенном судне
                        -- этот текст занимает 5 строк, что выходит за рамки интерфейса
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_TRADING_T4_19" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Встали в док на космической станции в системе %SYSTEM%. В ожидании конфликта, которого так и не произошло, станция заказала слишком большую партию оборудования для ремонта звездолетов. Купили оптом. Ожидаемая прибыль: 2%NUM%%.
                                -- Docked at space station in %SYSTEM% System. Station had over-ordered starship repair equipment, anticipating a conflict that never happened. Purchased in bulk. Anticipated profit: 2%NUM%%.
                                { "Russian", "В ожидании конфликта, которого так и не произошло, станция в системе %SYSTEM% заказала слишком большую партию оборудования для ремонта звездолётов. Купили оптом. Ожидаемая прибыль: 2%NUM%%." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_TRADING_FAIL_25" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Разместили заказ на покупку недорогих технологических компонентов в торговом терминале системы %SYSTEM%. Отправили шаттл на фабрику забрать оплаченные компоненты. Фабрика оказалась заброшенной. Данные продавца исчезли из торгового реестра.
                                -- Made order for low-priced technology components at trade terminal in %SYSTEM% System. Dispatched shuttle to collect components from factory. On arrival, factory was abandoned. Seller listing no longer active on galactic exchange.
                                { "Russian", "Заказали дешевые технологические компоненты в торговом терминале системы %SYSTEM%. Отправили шаттл на фабрику забрать их. Фабрика оказалась заброшенной. Данные продавца исчезли из торгового реестра." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "QUICK_MENU_NO_NEXUS_PORTAL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Космическая Аномалия недоступна: помехи портала
                                -- Space Anomaly Unreachable :: Portal Interference
                                { "Russian", "Нельзя призвать Космическую Аномалию из-за помех портала" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NANOTUBES_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Углерод. нанотрубки
                                -- Carbon Nanotubes
                                { "Russian", "Углеродные нанотрубки" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NETWORK_SEND_FAILURE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %PLAYER% не может хранить предмет %ITEM%
                                -- %PLAYER% cannot store %ITEM%
                                { "Russian", "%PLAYER% не может принять %ITEM%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BASE_BUILDING_NO_UPLOAD_SMALL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Загрузка не удалась (база слишком мала)
                                -- Upload Unavailable (Base Too Small)
                                { "Russian", "Загрузка недоступна: база слишком мала" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BASE_BUILDING_NO_UPLOAD_TEXT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Загрузка не удалась (достигнут лимит баз)
                                -- Upload Unavailable (Base Limit Exceeded)
                                { "Russian", "Загрузка недоступна: достигнут лимит баз" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_OVEN_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Чтобы запустить процесс приготовления, положите внутрь сырье.
                                -- Insert ingredients to begin cooking process
                                { "Russian", "Положите ингредиенты для готовки" },
                            }
                        },

                        --#region FLEET_TUT
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FLEET_TUT_MSG0A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Постройте &lt;TECHNOLOGY&gt;помещение на грузовом судне&lt;&gt;&#xA;Чтобы открыть меню созидания, нажмите &lt;IMG&gt;BUILD_MENU&lt;&gt;.
                                { "Russian", "Постройте &lt;TECHNOLOGY&gt;помещение на грузовом судне&lt;&gt;&#xA;Чтобы открыть меню созидания, нажмите &lt;IMG&gt;BUILD_MENU&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FLEET_TUT_MSG0B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Постройте &lt;TECHNOLOGY&gt;зал командования флотом&lt;&gt;&#xA;Чтобы открыть меню созидания, нажмите &lt;IMG&gt;BUILD_MENU&lt;&gt;.
                                { "Russian", "Постройте &lt;TECHNOLOGY&gt;зал командования флотом&lt;&gt;&#xA;Чтобы открыть меню созидания, нажмите &lt;IMG&gt;BUILD_MENU&lt;&gt;" },
                            }
                        },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FLEET_TUT_MSG0C" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Осмотрите &lt;TECHNOLOGY&gt;зал командования флотом&lt;&gt;&#xA;Почитайте о флотах в руководстве (&lt;IMG&gt;OPTIONS&lt;&gt;)
                        --         { "Russian", "Осмотрите &lt;TECHNOLOGY&gt;зал командования флотом&lt;&gt;&#xA;Почитайте о флотах в руководстве (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FLEET_TUT_MSG0D" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Постройте &lt;TECHNOLOGY&gt;базу на борту вашего грузового корабля&lt;&gt;&#xA;Строительный участок расположен между ангаром и мостиком&#xA;Расширить участок можно за счет новых &lt;TECHNOLOGY&gt;модулей грузового корабля&lt;&gt;
                        --         { "Russian", "Постройте &lt;TECHNOLOGY&gt;базу на борту вашего грузового корабля&lt;&gt;&#xA;Строительный участок расположен между ангаром и мостиком&#xA;Расширить участок можно за счет новых &lt;TECHNOLOGY&gt;модулей грузового корабля&lt;&gt;" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FLEET_TUT_MSG1" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Найдите и приобретите &lt;TECHNOLOGY&gt;доступный фрегат&lt;&gt;&#xA;Найдите в этой системе &lt;TECHNOLOGY&gt;группу грузовых судов&lt;&gt;
                        --         { "Russian", "Найдите и приобретите &lt;TECHNOLOGY&gt;доступный фрегат&lt;&gt;&#xA;Найдите в этой системе &lt;TECHNOLOGY&gt;группу грузовых судов&lt;&gt;" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FLEET_TUT_MSG1B" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Найдите и приобретите &lt;TECHNOLOGY&gt;доступный фрегат&lt;&gt;&#xA;Приблизьтесь к доступному фрегату
                        --         { "Russian", "Найдите и приобретите &lt;TECHNOLOGY&gt;доступный фрегат&lt;&gt;&#xA;Приблизьтесь к доступному фрегату" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FLEET_TUT_MSG1C" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Найдите и приобретите &lt;TECHNOLOGY&gt;доступный фрегат&lt;&gt;&#xA;Поговорите с капитаном фрегата по &lt;TECHNOLOGY&gt;коммуникатору звездолета&lt;&gt; (&lt;IMG&gt;QUICK_MENU&lt;&gt;)
                        --         { "Russian", "Найдите и приобретите &lt;TECHNOLOGY&gt;доступный фрегат&lt;&gt;&#xA;Поговорите с капитаном фрегата по &lt;TECHNOLOGY&gt;коммуникатору звездолета&lt;&gt; (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                        --     }
                        -- },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FLEET_TUT_MSG2A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Осмотрите свой флот на терминале &lt;TECHNOLOGY&gt;управления флотом&lt;&gt;.&#xA;Узнайте о текущей специализации своего флота
                                { "Russian", "Осмотрите свой флот на терминале &lt;TECHNOLOGY&gt;управления флотом&lt;&gt;&#xA;Узнайте о текущей специализации своего флота" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FLEET_TUT_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Отправьте в &lt;COMMODITY&gt;экспедицию&lt;&gt; &lt;TECHNOLOGY&gt;фрегат поддержки&lt;&gt;&#xA;Поговорите с &lt;TECHNOLOGY&gt;навигатором&lt;&gt;, чтобы просмотреть доступные маршруты
                                { "Russian", "Отправьте в &lt;COMMODITY&gt;экспедицию&lt;&gt; &lt;TECHNOLOGY&gt;фрегат поддержки&lt;&gt;&#xA;Поговорите с &lt;TECHNOLOGY&gt;навигатором&lt;&gt;, чтобы просмотреть доступные маршруты" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FLEET_TUT_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поговорите с &lt;TECHNOLOGY&gt;навигатором&lt;&gt;, чтобы начать новую &lt;COMMODITY&gt;экспедицию&lt;&gt;.&#xA;Навигатор просчитывает новые маршруты каждый день.&#xA;За информацией по заправке обратитесь к журналу (&lt;IMG&gt;OPTIONS&lt;&gt;).
                                { "Russian", "Поговорите с &lt;TECHNOLOGY&gt;навигатором&lt;&gt;, чтобы начать новую &lt;COMMODITY&gt;экспедицию&lt;&gt;&#xA;Навигатор просчитывает новые маршруты каждый день&#xA;За информацией по заправке обратитесь к журналу (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FLEET_TUT_MSG3B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите &lt;FUEL&gt;топливо для фрегата&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Для более долгих или крупных экспедиций нужно больше топлива&#xA;Корабли поддержки снижают требования к топливу
                                { "Russian", "Соберите &lt;FUEL&gt;топливо для фрегата&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Для более длительных экспедиций нужно больше топлива&#xA;Судна поддержки увеличивают эффективность использования топлива" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FLEET_TUT_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Отправьте экспедицию&#xA;Поговорите с &lt;TECHNOLOGY&gt;навигатором&lt;&gt;, находящимся на мостике вашего грузового судна
                                { "Russian", "Отправьте экспедицию&#xA;Поговорите с &lt;TECHNOLOGY&gt;навигатором&lt;&gt; на мостике" },
                            }
                        },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FLEET_TUT_MSG5" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Поговорите с &lt;STELLAR&gt;командиром флота&lt;&gt;&#xA;Пообщайтесь в &lt;TECHNOLOGY&gt;зале командования флотом&lt;&gt;
                        --         { "Russian", "Поговорите с &lt;STELLAR&gt;командиром флота&lt;&gt;&#xA;Пообщайтесь в &lt;TECHNOLOGY&gt;зале командования флотом&lt;&gt;" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FLEET_TUT_MSG5A" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Идет экспедиция: %TIME%&#xA;Отслеживайте состояние экспедиции в &lt;TECHNOLOGY&gt;зале командования флотом&lt;&gt;&#xA;Пока ваш флот отсутствует, отправляйтесь на поиски новых приключений&#xA;Используйте журнал (&lt;IMG&gt;OPTIONS&lt;&gt;) для просмотра доступных заданий
                        --         { "Russian", "Идет экспедиция: %TIME%&#xA;Отслеживайте состояние экспедиции в &lt;TECHNOLOGY&gt;зале командования флотом&lt;&gt;&#xA;Пока ваш флот отсутствует, отправляйтесь на поиски новых приключений&#xA;Используйте журнал (&lt;IMG&gt;OPTIONS&lt;&gt;) для просмотра доступных заданий" },
                        --     }
                        -- },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FLEET_TUT_MSG6A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Экспедиция завершена!&#xA;Находясь в космосе, &lt;STELLAR&gt;вызовите грузовое судно&lt;&gt; с помощью быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                { "Russian", "Экспедиция завершена!&#xA;Находясь в космосе, &lt;STELLAR&gt;вызовите грузовое судно&lt;&gt; из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FLEET_TUT_MSG6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Примите отчет об экспедиции&#xA;Используйте &lt;TECHNOLOGY&gt;зал командования флотом&lt;&gt;, чтобы поговорить с командиром
                                { "Russian", "Примите доклад экспедиции&#xA;Используйте &lt;TECHNOLOGY&gt;зал командования флотом&lt;&gt;, чтобы поговорить с командиром" },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SUIT_UPGRADE_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Улучшите экзокостюм в &lt;TECHNOLOGY&gt;капсуле&lt;&gt;, чтобы добавить ячейки инвентаря&#xA;. Введите &lt;SPECIAL&gt;координаты капсулы&lt;&gt; в &lt;TECHNOLOGY&gt;усилитель сигнала&lt;&gt;.&#xA;Изготовьте усилитель сигнала с помощью меню созидания &lt;IMG&gt;BUILD_MENU&lt;&gt;.
                                -- Upgrade the Exosuit at a &lt;TECHNOLOGY&gt;Drop Pod&lt;&gt; to add inventory slots&#xA;Enter &lt;SPECIAL&gt;Drop Pod Coordinate Data&lt;&gt; into a &lt;TECHNOLOGY&gt;Signal Booster&lt;&gt;&#xA;Build a Signal Booster with the Build Menu &lt;IMG&gt;BUILD_MENU&lt;&gt;
                                { "Russian", "Улучшите экзокостюм в &lt;TECHNOLOGY&gt;капсуле&lt;&gt;, чтобы добавить ячейки инвентаря&#xA;Введите &lt;SPECIAL&gt;координаты капсулы&lt;&gt; в &lt;TECHNOLOGY&gt;усилитель сигнала&lt;&gt;&#xA;Изготовьте усилитель сигнала с помощью меню созидания &lt;IMG&gt;BUILD_MENU&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SUIT_UPGRADE_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Изготовьте &lt;TECHNOLOGY&gt;усилитель сигнала&lt;&gt;.&#xA;Это устройство поможет вам находить строения на планетах.
                                { "Russian", "Изготовьте &lt;TECHNOLOGY&gt;усилитель сигнала&lt;&gt;&#xA;Это устройство поможет вам находить строения на планетах" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SUIT_UPGRADE_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Введите &lt;SPECIAL&gt;координаты капсулы&lt;&gt; в &lt;TECHNOLOGY&gt;усилитель сигнала&lt;&gt;.&#xA;Улучшите экзокостюм в &lt;TECHNOLOGY&gt;капсуле&lt;&gt;, чтобы добавить ячейки инвентаря.
                                { "Russian", "Введите &lt;SPECIAL&gt;координаты капсулы&lt;&gt; в &lt;TECHNOLOGY&gt;усилитель сигнала&lt;&gt;&#xA;Улучшите экзокостюм в &lt;TECHNOLOGY&gt;капсуле&lt;&gt;, чтобы добавить ячейки инвентаря" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SUIT_UPGRADE_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите &lt;TECHNOLOGY&gt;капсулу&lt;&gt;.&#xA;Улучшите экзокостюм в &lt;TECHNOLOGY&gt;капсуле&lt;&gt;, чтобы добавить ячейки инвентаря.
                                { "Russian", "Найдите &lt;TECHNOLOGY&gt;капсулу&lt;&gt;&#xA;Улучшите экзокостюм в &lt;TECHNOLOGY&gt;капсуле&lt;&gt;, чтобы добавить ячейки инвентаря" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_TRAIT_SEC_TRADING_6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Телепортационное устройство
                                -- Teleportation Device
                                { "Russian", "Устройство телепортации" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UT_WATERENERGY_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Экстренная система жизнеобеспечения
                                -- Emergency Life Support System
                                { "Russian", "Аварийная система жизнеобеспечения" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UT_SCAN_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Улучшения мультитула
                                -- Multi-Tool Upgrade
                                { "Russian", "Улучшения систем сканирования" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FRIG_BOOST_EXP_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ГОЛОГРАФИЧЕСК. АНАЛИЗАТОР
                                -- HOLOGRAPHIC ANALYSER
                                { "Russian", "ГОЛОГРАФИЧЕСКИЙ АНАЛИЗАТОР" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CAVE2_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Иониз. кобальт
                                -- Ionised Cobalt
                                { "Russian", "Ионизированный кобальт" },
                            }
                        },
                        -- какого еще линейного корабля?? =))
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_RETURNED_HOME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вернулись к флоту. Заняли позицию линейного корабля. Ожидаем дальнейшего инструктажа.
                                -- Returned home to the fleet. Assumed formation at capital ship. Awaiting debrief.
                                { "Russian", "Вернулись к флоту. Вступили в строй главного корабля. Ожидаем дальнейших распоряжений." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_RETURNED_HOME_SAVED_TIME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Задание выполнено. Сохраняется построение вокруг крупного корабля %FREIGHTER%.&#xA;Улучшения двигателя сэкономили около %HOURS% ч.
                                -- Mission Complete. Holding formation around Capital Ship %FREIGHTER%.&#xA;Drive upgrades saved approx. %HOURS% hours.
                                { "Russian", "Задание выполнено. Держим строй крупного корабля %FREIGHTER%.&#xA;Улучшения двигателя сэкономили около %HOURS% ч." },
                            }
                        },
                        -- чьей подзарядки? чьей системы?
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_HAZSTATION_DESCRIPTION" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Устанавливаемый на стену модуль подзарядки системы &lt;COMMODITY&gt;защиты от вредных факторов&lt;&gt;.&#xA;&#xA;Систему защиты от вредных факторов необходимо подпитывать с помощью &lt;FUEL&gt;топлива&lt;&gt;.
                                -- A wall mounted module that can be used to recharge the user's &lt;COMMODITY&gt;Hazard Protection&lt;&gt; systems.&#xA;&#xA;The Hazard Protection Unit must be kept charged with a source of &lt;FUEL&gt;fuel&lt;&gt;.
                                { "Russian", "Устанавливаемый на стену модуль, который может подзарядить систему &lt;COMMODITY&gt;защиты от вредных факторов&lt;&gt; пользователя.&#xA;&#xA;Модуль необходимо подпитывать с помощью &lt;FUEL&gt;топлива﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BP_ANALYSER_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Устройство сбора технологий
                                -- Technology Recovery Device
                                { "Russian", "Устройство реконструирования" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMUSE_COOK" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Кулинарный
                                -- Cooking
                                { "Russian", "кулинария" },
                            }
                        },
                        -- слово выбрано хорошее, красивое, спору нет, но далеко от сути
                        -- созидание относится и к строительству, но строительство уже есть
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMUSE_CRAFT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- созидание
                                -- Crafting
                                { "Russian", "ремесло" },
                            }
                        },
                        -- ошибка: производят топливо&lt;COMMODITY&gt;
                        -- должно быть выделено "шахтерские суда"
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_GUIDE_BODY_FLEETS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Встав во главе &lt;COMMODITY&gt;крупного корабля&lt;&gt;, вы получите некоторые привилегии. Одной из важнейших является возможность управлять флотом &lt;SPECIAL&gt;фрегатов&lt;&gt;.&#xA;&#xA;Находите и приобретайте &lt;SPECIAL&gt;фрегаты&lt;&gt;, чтобы добавлять их в свой флот.  Доступные фрегаты в &lt;TECHNOLOGY&gt;группе грузовых кораблей&lt;&gt; будут отмечены значком. Приблизьтесь к &lt;TRADEABLE&gt;доступному фрегату&lt;&gt; и поговорите с экипажем по &lt;TECHNOLOGY&gt;коммуникатору звездолета&lt;&gt;.&#xA;&#xA;Существуют разные типы фрегатов, и все корабли различаются между собой по качеству. Фрегаты, не участвующие в экспедиции, будут выполнять задачи, соответствующие их возможностям. Посадите фрегат, чтобы забрать награду, заработанную им за выполнение таких задач.&#xA;&#xA;&lt;STELLAR&gt;Торговые фрегаты&lt;&gt; накапливают денежные средства, &lt;TECHNOLOGY&gt;научные корабли&lt;&gt; сканируют древние артефакты, &lt;FUEL&gt;корабли снабжения&lt;&gt; производят топливо&lt;COMMODITY&gt;, а &lt;&gt;шахтерские суда собирают минералы. &lt;SPECIAL&gt;Боевые корабли&lt;&gt; придут к вам на помощь, если вы сражаетесь с пиратами неподалеку от них.
                                { "Russian", "Встав во главе &lt;COMMODITY&gt;крупного корабля﻿,&lt;&gt; вы получите некоторые привилегии. Одной из важнейших является возможность управлять флотом &lt;SPECIAL&gt;фрегатов﻿.&lt;&gt;&#xA;&#xA;Находите и приобретайте &lt;SPECIAL&gt;фрегаты﻿,&lt;&gt; чтобы добавлять их в свой флот.  Доступные фрегаты в &lt;TECHNOLOGY&gt;группе грузовых кораблей&lt;&gt; будут отмечены значком. Приблизьтесь к &lt;TRADEABLE&gt;доступному фрегату&lt;&gt; и поговорите с экипажем по &lt;TECHNOLOGY&gt;коммуникатору звездолёта﻿.&lt;&gt;&#xA;&#xA;Существуют разные типы фрегатов, и все корабли различаются между собой по качеству. Фрегаты, не участвующие в экспедиции, будут выполнять задачи, соответствующие их возможностям. Посадите фрегат, чтобы забрать награду, заработанную им за выполнение таких задач.&#xA;&#xA;&lt;STELLAR&gt;Торговые фрегаты&lt;&gt; накапливают денежные средства, &lt;TECHNOLOGY&gt;научные корабли&lt;&gt; сканируют древние артефакты, &lt;FUEL&gt;корабли снабжения&lt;&gt; производят топливо, а &lt;COMMODITY&gt;шахтерские суда&lt;&gt; собирают минералы. &lt;SPECIAL&gt;Боевые корабли&lt;&gt; придут к вам на помощь, если вы сражаетесь с пиратами неподалеку от них." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BP_SALVAGE_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Извлеченная техн.
                                -- Salvaged Technology
                                { "Russian", "Извлеченная технология" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TERRAIN_EDIT_COUNTER" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Изменения в ландшафте:
                                -- Base Terrain Edits:
                                { "Russian", "Изменения ландшафта:" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COMMS_FLEET_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ВХОДЯЩЕЕ СООБЩЕНИЕ &lt;IMG&gt;SLASH&lt;&gt;  ЧАСТОТА: ФЛОТ&#xA;Чтобы ответить, нажмите &lt;IMG&gt;QUICK_MENU&lt;&gt;
                                -- INCOMING MESSAGE &lt;IMG&gt;SLASH&lt;&gt;  FREQUENCY : FLEET&#xA;Answer the Communicator by pressing &lt;IMG&gt;QUICK_MENU&lt;&gt;
                                { "Russian", "ВХОДЯЩЕЕ СООБЩЕНИЕ &lt;IMG&gt;SLASH&lt;&gt; ЧАСТОТА ФЛОТА&#xA;Ответьте по коммуникатору из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_UI_EXPED_SUB_ALT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Навигатор просчитывает новые маршруты каждый день.
                                -- The Navigator calculates new routes every day
                                { "Russian", "Навигатор просчитывает новые маршруты каждый день" },
                            }
                        },
                        --#region FLEET_COMBAT_BOUNTY_
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_COMBAT_BOUNTY_OBJ1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Помогите флоту получить награду.
                                -- Help the fleet claim a bounty
                                { "Russian", "Помогите флоту выполнить заказ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_COMBAT_BOUNTY_OBJ1_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Экспедиция обнаружила знаменитого пирата!&#xA;Чтобы выстрелить из корабельных орудий, нажмите &lt;IMG&gt;SHIPFIRE&lt;&gt; и переключайте режим оружия с помощью &lt;IMG&gt;SHIPCYCLEWEAPON&lt;&gt;.&#xA;Используйте тормоз (&lt;IMG&gt;BRAKE&lt;&gt;), чтобы совершить быстрый маневр и оказаться позади врага.&#xA;Какое-то время избегайте попаданий, чтобы восстановить щит.
                                -- The expedition has located a notorious pirate!&#xA;Fire ship weapons with &lt;IMG&gt;SHIPFIRE&lt;&gt;, and cycle weapon modes with &lt;IMG&gt;SHIPCYCLEWEAPON&lt;&gt;.&#xA;Use brake (&lt;IMG&gt;BRAKE&lt;&gt;) to turn fast and get behind pirate ships.&#xA;Your shield will regenerate if you can avoid enemy fire for long enough.
                                { "Russian", "Экспедиция обнаружила знаменитого пирата!&#xA;Чтобы выстрелить из корабельных орудий, нажмите &lt;IMG&gt;SHIPFIRE&lt;&gt; и переключайте оружия с помощью &lt;IMG&gt;SHIPCYCLEWEAPON&lt;&gt;.&#xA;Используйте тормоз (&lt;IMG&gt;BRAKE&lt;&gt;), чтобы совершить быстрый маневр и оказаться позади врага.&#xA;Какое-то время избегайте попаданий, чтобы восстановить щит." },
                            }
                        },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_COMBAT_BOUNTY_OBJ1_F_TIP" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Экспедиция обнаружила знаменитого пирата в системе %SYSTEM%!&#xA;Найдите местоположение флота на галактической карте (&lt;IMG&gt;QUICK_MENU&lt;&gt;) и отправьтесь к нему.
                        --         -- The expedition has located a notorious pirate in the %SYSTEM% system!&#xA;Use the Galaxy Map (&lt;IMG&gt;QUICK_MENU&lt;&gt;) to locate the fleet and travel to their location.
                        --         { "Russian", "Экспедиция обнаружила знаменитого пирата в системе %SYSTEM%!&#xA;Найдите местоположение флота на галактической карте (&lt;IMG&gt;QUICK_MENU&lt;&gt;) и отправьтесь к нему." },
                        --     }
                        -- },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_COMBAT_BOUNTY_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Экспедиции фрегатов срочно требуется помощь!&#xA;Встретьтесь с флотом: &lt;FUEL&gt;%TIME%&lt;&gt;
                                -- Frigate expedition requires urgent assistance!&#xA;Rendezvous with the fleet: &lt;FUEL&gt;%TIME%&lt;&gt;
                                { "Russian", "Экспедиции фрегатов требуется срочная помощь!&#xA;Встретьтесь с флотом: &lt;FUEL&gt;%TIME%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_COMBAT_BOUNTY_MSG1A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Экспедиции фрегатов срочно требуется помощь!&#xA;Встретьтесь с флотом в системе %SYSTEM%: &lt;FUEL&gt;%TIME%&lt;&gt;&#xA;Находясь в космосе, откройте галактическую карту с помощью &lt;IMG&gt;QUICK_MENU&lt;&gt;
                                -- Frigate expedition requires urgent assistance!&#xA;Rendezvous with the fleet in the %SYSTEM% system: &lt;FUEL&gt;%TIME%&lt;&gt;&#xA;In space, access the Galaxy Map with &lt;IMG&gt;QUICK_MENU&lt;&gt;
                                { "Russian", "Экспедиции фрегатов требуется срочная помощь!&#xA;Встретьтесь с флотом в системе %SYSTEM%&#xA;Осталось времени: &lt;FUEL&gt;%TIME%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_COMBAT_BOUNTY_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Победите цели контрактов: &lt;FUEL&gt;%AMOUNT%&lt;&gt;&#xA;%FLIGHT_TIP%&#xA;Используйте &lt;IMG&gt;PREVTARGET&lt;&gt;/&lt;IMG&gt;NEXTTARGET&lt;&gt;, чтобы сменить цель.
                                -- Defeat the bounty targets: &lt;FUEL&gt;%AMOUNT%&lt;&gt;&#xA;%FLIGHT_TIP%&#xA;Change targets with &lt;IMG&gt;PREVTARGET&lt;&gt; / &lt;IMG&gt;NEXTTARGET&lt;&gt;
                                { "Russian", "Осталось целей: &lt;FUEL&gt;%AMOUNT%&lt;&gt;&#xA;%FLIGHT_TIP%&#xA;Используйте &lt;IMG&gt;PREVTARGET&lt;&gt;/&lt;IMG&gt;NEXTTARGET&lt;&gt;, чтобы сменить цель" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_COMBAT_BOUNTY_MSG2A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Враждебные корабли приближаются!&#xA;Приготовьтесь сражаться с целями контрактов.
                                -- Jamming hostile warp drives...&#xA;Prepare to engage bounty targets
                                { "Russian", "Блокирование вражеских гипердвигателей...&#xA;Приготовьтесь к сражению" },
                            }
                        },
                        --#endregion
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_GENERAL_SCAN_OSD_MAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ОБНАРУЖЕН СИГНАЛ ФЛОТА &lt;IMG&gt;SLASH&lt;&gt; ОТКРОЙТЕ ГАЛАКТИЧЕСКУЮ КАРТУ
                                -- FLEET SIGNAL ACQUIRED &lt;IMG&gt;SLASH&lt;&gt; CONSULT GALAXY MAP
                                { "Russian", "ПОЛУЧЕНЫ КООРДИНАТЫ ФЛОТА &lt;IMG&gt;SLASH&lt;&gt; ОТКРОЙТЕ ГАЛАКТИЧЕСКУЮ КАРТУ" },
                            }
                        },
                        -- швартуются корабли в море, космические корабли стыкуются
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_STATION_ENTRY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;MISSIONPRIMARY&gt;ЗАПУСК ПРОЦЕДУРЫ ШВАРТОВКИ&lt;&gt;
                                -- &lt;MISSIONPRIMARY&gt;INITIATING DOCKING PROCEDURE&lt;&gt;
                                { "Russian", "&lt;MISSIONPRIMARY&gt;ЗАПУСК ПРОЦЕДУРЫ СТЫКОВКИ&lt;&gt;" },
                            }
                        },

                        --#region Поддержать экспедицию / Переведите инопланетное сообщение
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_TRADING_SPECIAL_1_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ЗАХВАТИТЕ ОБНАРУЖЕННЫЙ ТОРГОВЫЙ МОД.
                                -- SECURE TRADE MODULE LOCATED
                                { "Russian", "ОБНАРУЖЕН ЗАЩИЩЕННЫЙ ТОРГОВЫЙ МОДУЛЬ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_TRADING_SPECIAL_1_MARKER" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Захватите торговое сообщение
                                -- Secure Trade Message
                                { "Russian", "Защищенное торговое сообщение" },
                            }
                        },
                        -- эта строчка используется и для квеста ниже и для торгового модуля
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_TRADING_SPECIAL_1_TITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Захватите модуль посланий
                                -- Secure Transfer
                                { "Russian", "Защищенный канал связи" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_TRADING_OBJ" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Переведите торговую информацию для флота.
                                -- Translate trading data for the fleet
                                { "Russian", "Переведите торговую информацию для флота" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_TRADING_SPECIAL_RES_A_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Я соглашаюсь прочитать сообщение. Командир флота посылает координаты безопасного модуля посланий.
                                -- I agree to read the message. The fleet commander pings their coordinates, indicating the fleet will hold position until my arrival.
                                { "Russian", "Я соглашаюсь прочитать сообщение. Флотоводец посылает свои координаты, указывая на то, что флот будет ожидать моего прибытия." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_TRADING_SPECIAL_RES_B_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Я прошу командира флота не использовать эти данные. Даже если мы сможем их точно перевести, план скорее всего окажется незаконным и навлечет на нас неприятности.
                                -- I tell the fleet commander not to take advantage of this data. Even if we could translate it accurately, the scheme is likely to be illegal and leaves us open to further trouble.
                                { "Russian", "Я прошу флотоводца не использовать эти данные. Даже если мы сможем их точно перевести, план скорее всего окажется незаконным и навлечет на нас неприятности." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_TRADING_SPECIAL_RES_A_1C" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Я перевожу сообщение для командира флота. Данные указывают на неминуемый рост рынка углерода. Нужно сделать крупные инвестиции.
                                -- I translate the message for the fleet commander. The data clearly indicates an imminent surge in the carbon market. They should invest heavily now.
                                { "Russian", "Я перевожу сообщение для флотоводца. Данные указывают на неминуемый рост цен на углерод. Они должны сделать крупные инвестиции прямо сейчас." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_TRADING_SPECIAL_RES_B_1C" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Я перевожу сообщение для командира флота. Данные указывают на неминуемый рост рынка металла. Нужно сделать крупные инвестиции.
                                -- I translate the message for the fleet commander. The data clearly indicates an imminent surge in the metals market. They should invest heavily now.
                                { "Russian", "Я перевожу сообщение для флотоводца. Данные указывают на неминуемый рост цен на металлы. Они должны сделать крупные инвестиции прямо сейчас." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_TRADING_SPECIAL_RES_C_1C" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Я перевожу сообщение для командира флота. Данные указывают на неминуемый рост рынка топлива. Нужно сделать крупные инвестиции.
                                -- I translate the message for the fleet commander. The data clearly indicates an imminent surge in the fuel market. They should invest heavily now.
                                { "Russian", "Я перевожу сообщение для флотоводца. Данные указывают на неминуемый рост цен на топливо. Они должны сделать крупные инвестиции прямо сейчас." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_TRADING_SPECIAL_RES_D_1C" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Я перевожу сообщение для командира флота. Данные указывают на неминуемый рост рынка батарей. Нужно сделать крупные инвестиции.
                                -- I translate the message for the fleet commander. The data clearly indicates an imminent surge in the battery market. They should invest heavily now.
                                { "Russian", "Я перевожу сообщение для флотоводца. Данные указывают на неминуемый рост цен на батареи. Они должны сделать крупные инвестиции прямо сейчас." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_TRADING_SPECIAL_RES_E_1C" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Я перевожу сообщение для командира флота. Данные указывают на неминуемый рост рынка технологий. Нужно сделать крупные инвестиции.
                                -- I translate the message for the fleet commander. The data clearly indicates an imminent surge in the technology market. They should invest heavily now.
                                { "Russian", "Я перевожу сообщение для флотоводца. Данные указывают на неминуемый рост цен на технологии. Они должны сделать крупные инвестиции прямо сейчас." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_TRADING_SPECIAL_RES_F_1C" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Я перевожу сообщение для командира флота. Данные указывают на неминуемый рост рынка растений. Нужно сделать крупные инвестиции.
                                -- I translate the message for the fleet commander. The data clearly indicates an imminent surge in the plant market. They should invest heavily now.
                                { "Russian", "Я перевожу сообщение для флотоводца. Данные указывают на неминуемый рост цен на растения. Они должны сделать крупные инвестиции прямо сейчас." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_TRADING_SPECIAL_RES_G_1C" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Я перевожу сообщение для командира флота. Данные указывают на неминуемый рост рынка предметов роскоши. Нужно сделать крупные инвестиции.
                                -- I translate the message for the fleet commander. The data clearly indicates an imminent surge in the luxury goods market. They should invest heavily now.
                                { "Russian", "Я перевожу сообщение для флотоводца. Данные указывают на неминуемый рост цен на предметы роскоши. Они должны сделать крупные инвестиции прямо сейчас." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_TRADING_SPECIAL_RES_J_1C" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Я перевожу сообщение для командира флота. Данные не понятны. Лучше воздержаться от инвестиций.
                                -- I translate the message for the fleet commander. The data is not clear. It would be better not to invest at this time.
                                { "Russian", "Я перевожу сообщение для флотоводца. Данные не понятны. Лучше воздержаться от инвестиций." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_TRADING_SPECIAL_RES_A_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Я успокаиваю командира флота. Сообщаю, что уже в пути. Нужно лишь продержаться еще немного.
                                -- I reassure the fleet commander. I am on my way. All they need do is hold out for a short while longer.
                                { "Russian", "Я заверяю флотоводца, что им нужно немного подождать. Я уже в пути." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_TRADING_SPECIAL_RES_B_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- С сожалением я сообщаю командиру флота, что на этот раз не смогу ему помочь. Ему придется справиться самому.
                                -- With regret, I tell the fleet commander I will be unable to help them in time. They are on their own.
                                { "Russian", "С сожалением я сообщаю флотоводцу, что не смогу помочь им вовремя. Им придется действовать самим." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_TRADING_SPECIAL_RES_A_5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Я прошу командира флота сконцентрироваться на покупке товаров для перепродажи. Инвестиции в неизвестные инопланетные предприятия слишком рискованны.
                                -- I tell the fleet commander to concentrate on purchasing goods for resale. Investing in unknown alien businesses is too much of a risk.
                                { "Russian", "Я прошу флотоводца сконцентрироваться на покупке товаров для перепродажи. Инвестиции в неизвестные инопланетные предприятия слишком рискованны." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_TRADING_SPECIAL_RES_B_5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Я инструктирую командира флота сконцентрироваться на долгосрочных инвестициях. Да, это рискованно, но потенциальная прибыль стоит того.
                                -- I tell the fleet commander to concentrate on long-term investments. It is a risk, but the potential rewards are worth it.
                                { "Russian", "Я прошу флотоводца сконцентрироваться на долгосрочных инвестициях. Да, это рискованно, но потенциальная прибыль стоит того." },
                            }
                        },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_TRADING_SPECIAL_RES_A_6" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Отлично, %CAP_RACE%! Мы будем следить за рынком и готовить сделки!
                        --         -- Excellent, %CAP_RACE%! We shall watch the market and prepare our trades!
                        --         { "Russian", "Отлично, %CAP_RACE%! Мы будем следить за рынком и готовить сделки!" },
                        --     }
                        -- },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_TRADING_SPECIAL_RES_B_6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Я приказываю командиру флота отказаться от этой идеи. Она слишком опасна и совершено незаконна.
                                -- I tell the fleet commander to abandon the idea. It is fraught with risk, and highly illegal.
                                { "Russian", "Я прошу флотоводца отказаться от этой идеи. Она слишком опасна и совершено незаконна." },
                            }
                        },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_TRADING_SPECIAL_RES_A_7" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Я принимаю данные флота, благодарю командира и прекращаю связь. Они обязательно пригодятся мне в моих странствиях.
                        --         -- I accept the data from the fleet, thanking the commander as I end the call. It will surely prove useful during my own journey.
                        --         { "Russian", "Я принимаю данные флота, благодарю командира и прекращаю связь. Они обязательно пригодятся мне в моих странствиях." },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_TRADING_SPECIAL_RES_B_7" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Я отказываюсь от экономических данных, предложенных флотом. Пусть сами занимаются торговлей.
                        --         -- I decline the fleet's economic data. They trade so that I do not have to.
                        --         { "Russian", "Я отказываюсь от экономических данных, предложенных флотом. Пусть сами занимаются торговлей." },
                        --     }
                        -- },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_TRADING_SPECIAL_RES_A_8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Мне было приятно помочь, %CAP_RACE%. Команда попросила меня пожелать тебе удачи в путешествии.
                                -- Glad to have been of service, %CAP_RACE%. The crew ask me to wish you will in your continued travels.
                                { "Russian", "Приятно было услужить, %CAP_RACE%. Команда попросила меня пожелать вам удачи в путешествиях." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_TRADING_SPECIAL_RES_B_8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Я отказываюсь от данных. Мне не нужна рыночная информация, а передача может привлечь пиратов. Кажется, это расстроило командира флота.
                                -- I decline the data. I have little need for market information, and the transfer may alert pirates to my presence. The fleet commander looks disappointed.
                                { "Russian", "Я не принимаю данные. Мне не нужна рыночная информация, а передача может привлечь пиратов. Кажется, это расстроило флотоводца." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_TRADING_SPECIAL_RES_A_9" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Я пересылаю денежные средства командиру флота и предупреждаю его о поспешных инвестициях. Надеюсь, на этот раз он примет верное решение...
                                -- I transmit the funds to the fleet commander, along with a warning about rash investments. I trust they will make sensible decisions this time...
                                { "Russian", "Я пересылаю денежные средства флотоводцу и предупреждаю его о поспешных инвестициях. Надеюсь, на этот раз он примет верное решение..." },
                            }
                        },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_TRADING_SPECIAL_RES_B_9" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Я отказываюсь посылать деньги. Командир несет ответственность за финансы экспедиции, и для этого необходимо научиться полагаться на себя.
                        --         -- I decline to send funds. The commander is responsible for the financial health of the expedition, and they need to learn self-reliance.
                        --         { "Russian", "Я отказываюсь посылать деньги. Командир несет ответственность за финансы экспедиции, и для этого необходимо научиться полагаться на себя." },
                        --     }
                        -- },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_TRADING_SPECIAL_RES_A_10" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Я пересылаю деньги командиру флота. Они явно держат руку на пульсе местных рынков, и для нас обоих будет лучше, если они смогут продолжить торговые операции.
                                -- I transmit the funds to the fleet commander. They clearly have their finger on the pulse of local markets, and it would be better for the both of us if they were able to continue trading.
                                { "Russian", "Я пересылаю деньги флотоводцу. Они явно держат руку на пульсе местных рынков, и для нас обоих будет лучше, если они смогут продолжить торговые операции." },
                            }
                        },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_TRADING_SPECIAL_RES_B_10" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Я отказываюсь посылать деньги. Командир ввязывается в сложные финансовые системы, тем самым подвергая экспедицию серьезному риску. Я прошу, чтобы в дальнейшем он более благоразумно подходил к инвестициям.
                        --         -- I decline to send funds. The commander is getting involved in complex financial systems, exposing the expedition to considerable risk. I request they make more prudent investments in the future.
                        --         { "Russian", "Я отказываюсь посылать деньги. Командир ввязывается в сложные финансовые системы, тем самым подвергая экспедицию серьезному риску. Я прошу, чтобы в дальнейшем он более благоразумно подходил к инвестициям." },
                        --     }
                        -- },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_TRADING_SPECIAL_RES_A_11" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Благодарю, %CAP_RACE%. Ты об этом не пожалеешь. Твои инвестиции обернутся многократными прибылями!
                                -- My thanks, %CAP_RACE%. You will not regret this, I assure you. Your investment will be returned many times over!
                                { "Russian", "Благодарю, %CAP_RACE%. Вы об этом не пожалеете. Ваши инвестиции обернутся многократными прибылями!" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_TRADING_SPECIAL_RES_B_11" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Хорошо, %CAP_RACE%. Видимо, звезды не сошлись. Я передам новость разочарованной команде.
                                -- Very well, %CAP_RACE%. It was not meant to be. I shall find a way to message this disappoint to the crew.
                                { "Russian", "Очень хорошо, %CAP_RACE%. Этого не должно было случиться. Я найду способ передать это печальное известие команде." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_TRADING_SPECIAL_RES_A_12" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Хорошо, %CAP_RACE%. Мы воспользуемся этой возможностью! Не переживай, мы будем крайне осторожны.
                                -- Very well, %CAP_RACE%. We shall seize this opportunity! Do not worry, we will act with utmost caution.
                                { "Russian", "Отлично, %CAP_RACE%. Мы воспользуемся этой возможностью! Не переживайте, мы будем крайне осторожны." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_TRADING_SPECIAL_RES_B_12" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Это разумно, %CAP_RACE%. Мы найдем в этой системе другие возможности. Команда обрадуется. И, возможно, не помешает сообщить властям...
                                -- You are wise, %CAP_RACE%. We shall find other opportunities in this system. The crew will be relieved. And perhaps there is something to be gained by cooperating with the authorities...
                                { "Russian", "Это разумно, %CAP_RACE%. Мы найдем в этой системе другие возможности. Команда обрадуется. И, возможно, не помешает сообщить властям..." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_TRADING_SPECIAL_RES_A_13" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Я отвечаю: «%NAME%, соверши эту сделку». Любая торговля сопряжена с риском. Командир с неуверенным видом соглашается.
                                -- I tell %NAME% to make the trade. Risky, perhaps, but so is all business. They nod, still a little unsure.
                                { "Russian", "Я прошу %NAME% заключить сделку. Любая торговля сопряжена с риском. Он неуверенно кивает." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_TRADING_SPECIAL_RES_B_13" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Я отвечаю: «%NAME%, доверься своим инстинктам. Нет нужды связываться с подозрительными личностями».
                                -- I tell %NAME% to trust their instincts and avoid dealing with suspicious characters.
                                { "Russian", "Я прошу %NAME% довериться своим инстинктам. Нет нужды связываться с подозрительными личностями." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_TRADING_SPECIAL_RES_A_14" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Я прошу командира флота переждать нестабильную ситуацию. Панические продажи приведут только к убыткам.
                                -- I tell the fleet commander to hold on and ride out the volatility. Panic sellers only ever lose money.
                                { "Russian", "Я прошу флотоводца переждать нестабильную ситуацию. Панические продажи приведут только к убыткам." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_TRADING_SPECIAL_RES_B_14" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Я прошу командира совершить продажу. Во время долгого путешествия не стоит вкладываться в неустойчивые рынки. В будущем появятся более подходящие инвестиционные возможности.
                                -- I tell the fleet commander to sell. A volatile market is not one to invest in during a long voyage. There will be other, better, investments to come.
                                { "Russian", "Я прошу флотоводца совершить продажу. Во время долгого путешествия не стоит вкладываться в неустойчивые рынки. В будущем появятся более подходящие инвестиционные возможности." },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_COMBAT_SPECIAL_RES_B_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Шипение и треск в передатчике замолкает. Сейчас я не могу помочь. Ему придется справляться самим.
                                -- The hiss and garble of the communicator falls silent. I cannot help the fleet now. Their fate is in their own hands.
                                { "Russian", "Шипение и треск в передатчике замолкает. Сейчас я не могу помочь. Их судьба в их собственных руках." },
                            }
                        },

                        -- продвинутая переводчица делает продвинутые переводы в продвинутых играх
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FUEL_2_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Продвинутый материал, получаемый из &lt;FUEL&gt;углерода&lt;&gt; с помощью &lt;TECHNOLOGY&gt;очистителя&lt;&gt;.&#xA;&#xA;Благодаря повышенной молекулярной плотности обладает улучшенным соотношением энергии к массе.&#xA;&#xA;Иногда встречается в виде кристаллов. Для сбора крупных кристаллов может потребоваться &lt;TECHNOLOGY&gt;продвинутый расщепитель&lt;&gt;.
                                -- Advanced material, processed from regular &lt;FUEL&gt;carbon&lt;&gt; in a &lt;TECHNOLOGY&gt;Refiner&lt;&gt;.&#xA;&#xA;The increased molecule density offers a substantially improved energy-per-gram ratio.&#xA;&#xA;Occasionally found in crystalline form. Harvesting large crystals may require a &lt;TECHNOLOGY&gt;Advanced Mining Laser&lt;&gt;.
                                { "Russian", "Прогрессивный материал, получаемый из &lt;FUEL&gt;углерода&lt;&gt; с помощью &lt;TECHNOLOGY&gt;очистителя﻿.&lt;&gt;&#xA;&#xA;Благодаря повышенной молекулярной плотности обладает улучшенным соотношением энергии к массе.&#xA;&#xA;Иногда встречается в виде кристаллов. Для сбора крупных кристаллов может потребоваться &lt;TECHNOLOGY&gt;продвинутый расщепитель﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CAVE2_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Разновидность &lt;TECHNOLOGY&gt;кобальта&lt;&gt; с мощным зарядом. Можно использовать для создания &lt;COMMODITY&gt;продвинутых ионных батарей&lt;&gt; — компактного источника питания для &lt;TECHNOLOGY&gt;экзокостюма&lt;&gt;.&#xA;&#xA;Широко используется в &lt;TECHNOLOGY&gt;продвинутых технологиях и постройках&lt;&gt;.
                                -- A highly energised form of &lt;TECHNOLOGY&gt;Cobalt&lt;&gt;, this processed metal can be used to create &lt;COMMODITY&gt;Advanced Ion Batteries&lt;&gt;, a conveniently portable source of energy for the &lt;TECHNOLOGY&gt;Exosuit&lt;&gt;.&#xA;&#xA;In widespread use as a key component in the creation of &lt;TECHNOLOGY&gt;advanced technologies and structures&lt;&gt;.
                                { "Russian", "Разновидность &lt;TECHNOLOGY&gt;кобальта&lt;&gt; с мощным зарядом. Кобальт используется для создания &lt;COMMODITY&gt;ионных батарей&lt;&gt; — компактного источника питания для &lt;TECHNOLOGY&gt;экзокостюма﻿.&lt;&gt;&#xA;&#xA;Широко используется в &lt;TECHNOLOGY&gt;передовых технологиях и постройках﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "POWERCELL_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Удобный и надежный способ хранения энергии. Используется в различных системах &lt;COMMODITY&gt;обороны&lt;&gt; и &lt;COMMODITY&gt;защиты от вредных факторов&lt;&gt;.&#xA; &#xA;Изготавливается объединением &lt;EARTH&gt;ферритной пыли&lt;&gt; и подземного &lt;TECHNOLOGY&gt;углерода&lt;&gt;. Зачастую его можно найти в готовых цилиндрических металлических контейнерах.
                                -- Convenient and optimised power storage unit. Used in a wide variety of &lt;COMMODITY&gt;defensive&lt;&gt; and &lt;COMMODITY&gt;hazard protection&lt;&gt; systems.&#xA; &#xA;Constructed by fusing &lt;EARTH&gt;Ferrite Dust&lt;&gt; with underground &lt;TECHNOLOGY&gt;Cobalt&lt;&gt;. Frequently found ready-made in cylindrical metal containers.
                                { "Russian", "Удобный и надежный способ хранения энергии. Используется в различных системах &lt;COMMODITY&gt;обороны&lt;&gt; и &lt;COMMODITY&gt;защиты от вредных факторов﻿.&lt;&gt;&#xA; &#xA;Изготавливается объединением &lt;EARTH&gt;ферритной пыли&lt;&gt; и &lt;TECHNOLOGY&gt;кобальта﻿.&lt;&gt; Батареи можно найти в металлических контейнерах цилиндрической формы." },
                            }
                        },
                        --
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TRADE_RANK_REQUIRED" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Необходима репутация %NUM% (%RACE%)
                                -- %RACE% Rank %NUM% required
                                { "Russian", "Нужен %NUM% ранг %RACE%ов" },
                            }
                        },

                        --#region Ремонт фрегата
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FRIG_REPAIR_OBJ" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Отремонтировать поврежденные компоненты фрегата
                                { "Russian", "Почините поврежденные компоненты" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FRIG_REPAIR_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите и отремонтируйте все отмеченные компоненты. Вы можете покинуть судно на своем звездолете и найти дополнительные компоненты.&#xA;&#xA;Вы можете мгновенно вернуться на свое грузовое судно в любой момент с помощью &lt;TECHNOLOGY&gt;телепорта фрегата&lt;&gt;.
                                -- Locate and repair all the marked components. You may leave in your ship to acquire additional components.&#xA;&#xA;Instantly return to your freighter at any time via the &lt;TECHNOLOGY&gt;frigate teleporter&lt;&gt;.
                                { "Russian", "Найдите и отремонтируйте все отмеченные компоненты. Вы можете улететь на своем звездолёте и найти необходимое для ремонта.&#xA;&#xA;Вы можете мгновенно вернуться на свое грузовое судно в любой момент с помощью &lt;TECHNOLOGY&gt;телепорта фрегата﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FRIG_REPAIR_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Отремонтируйте поврежденные компоненты фрегата.&#xA;Поврежденные секции: &lt;FUEL&gt;%AMOUNT%&lt;&gt;
                                -- Repair the damaged frigate components&#xA;Damaged stations: &lt;FUEL&gt;%AMOUNT%&lt;&gt;
                                { "Russian", "Повреждено секций: &lt;FUEL&gt;%AMOUNT%&lt;&gt;" },
                            }
                        },
                        -- очень плохо подобрано предложение (даже в англ. варианте)
                        -- дословный перевод -- "почините неисправность: <АБВ>"
                        -- проблема в том, что некоторые описания неисправностей такие, что слово починить к ним неприменимо
                        -- придется делать по-человечески...
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MAINT_FRIGATE_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Починить: %DAMAGE%
                                -- Repair damage: %DAMAGE%
                                { "Russian", "%DAMAGE%" },
                            }
                        },
                        -- TODO: нужно выяснить где это отображается
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FLEET_REPAIR_SUBTITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Оценить урон: %DAMAGE%:
                                -- Investigate Damage: %DAMAGE%:
                                { "Russian", "%DAMAGE%:" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_DAMAGED_PART_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Перегрет сальник
                                { "Russian", "Почините перегретый сальник" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_DAMAGED_PART_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Неполадки в оболочке реактора
                                { "Russian", "Устраните неполадки в оболочке реактора" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_DAMAGED_PART_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Пробоина в корпусе
                                { "Russian", "Залатайте пробоину в корпусе" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_DAMAGED_PART_4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Заражение в резервуаре
                                { "Russian", "Устраните заражение в резервуаре" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_DAMAGED_PART_5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Забит отстойник
                                -- Clogged Sump
                                { "Russian", "Почините засорившийся отстойник" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_DAMAGED_PART_6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Неполадки в изоляции проводов
                                { "Russian", "Почините изоляцию проводов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_DAMAGED_PART_7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Постоянные пожары
                                { "Russian", "Устраните постоянные пожары" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_DAMAGED_PART_8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Утечка радиации
                                { "Russian", "Устраните утечку радиации" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_DAMAGED_PART_9" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Заблокирован кардан
                                { "Russian", "Почините заблокированный кардан" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_DAMAGED_PART_10" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Критическая температура реактора
                                { "Russian", "Понизьте температуру реактора" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_DAMAGED_PART_11" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Турели заклинило
                                { "Russian", "Почините заклинившие турели" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_DAMAGED_PART_12" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вышел из строя генератор кислорода
                                -- Oxygen Generator Offline
                                { "Russian", "Почините генератор кислорода" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_DAMAGED_PART_13" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Разбита антенна
                                { "Russian", "Почините разбитую антенну" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_DAMAGED_PART_14" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Утечка из отсеков
                                -- Leaky Compartments
                                { "Russian", "Остановите протекание в отсеках" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_DAMAGED_PART_15" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Трещина в гермостворках
                                { "Russian", "Залатайте трещину в гермостворках" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_DAMAGED_PART_16" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Бортовой компьютер взбесился
                                { "Russian", "Почините взбесившийся бортовой компьютер" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_DAMAGED_PART_17" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Отказ гравитационного компрессора
                                { "Russian", "Почините гравитационный компрессор" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_DAMAGED_PART_18" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- В шлангах полно крыс
                                -- Tubes Full Of Rats
                                { "Russian", "Избавьтесь от стаи крыс в шлангах" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_DAMAGED_PART_19" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Система прицеливания вышла из строя
                                { "Russian", "Почините систему прицеливания" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_DAMAGED_PART_20" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Короткое замыкание в системе жизнеобеспечения
                                -- Life Support Short Circuit
                                { "Russian", "Почините короткое замыкание в системе жизнеобеспечения" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_DAMAGED_PART_21" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Отказ субсветового двигателя
                                { "Russian", "Почините субсветовой двигатель" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_DAMAGED_PART_22" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вышел из строя генератор щитов
                                { "Russian", "Почините генератор щитов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_DAMAGED_PART_23" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Утечка внутреннего давления
                                { "Russian", "Устраните утечку внутреннего давления" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_DAMAGED_PART_24" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Трещина в трубопроводе
                                { "Russian", "Залатайте трещину в трубопроводе" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_DAMAGED_PART_25" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Неполадки в уплотнении клапана
                                -- Valve Sealant Failure
                                { "Russian", "Восстановите герметичность клапана" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_DAMAGED_PART_26" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Излишнее давление пара
                                { "Russian", "Устраните излишнее давление пара" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_DAMAGED_PART_27" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вентиляционная катастрофа
                                -- Ventilation Catastrophe
                                { "Russian", "Устраните катастрофу в вентиляции" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_DAMAGED_PART_28" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Лучевая коррозия
                                { "Russian", "Избавьтесь от лучевой коррозии" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_DAMAGED_PART_29" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Аварийное сообщение программы 1202
                                -- 1202 Program Alarm
                                { "Russian", "Исправьте ошибку программы с кодом 1202" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_DAMAGED_PART_30" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Утечка из котла
                                -- Boiler Leak
                                { "Russian", "Устраните утечку в бойлере" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_DAMAGED_PART_31" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Попадания микрометеоритов
                                { "Russian", "Залатайте пробоины от микрометеоритов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_DAMAGED_PART_32" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Трещина в корпусе
                                { "Russian", "Залатайте трещину в корпусе" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_DAMAGED_PART_33" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Полный отказ системы пневматики
                                -- Total Pneumatic Failure
                                { "Russian", "Почините систему пневматики" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_DAMAGED_PART_34" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Радар неисправен
                                -- Radar Malfunction
                                { "Russian", "Почините радар" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_DAMAGED_PART_35" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Система связи вышла из строя
                                { "Russian", "Почините систему связи" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_DAMAGED_PART_36" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сверхпроводник перегрет
                                -- Superconductor Overheated
                                { "Russian", "Почините перегревание сверхпроводника" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_DAMAGED_PART_37" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Шестеренки гремят
                                { "Russian", "Почините гремящие шестеренки" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_DAMAGED_PART_38" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Смят коленчатый вал
                                { "Russian", "Почините смятый коленчатый вал" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_DAMAGED_PART_39" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Карданный вал взорвался
                                -- Driveshaft Explosion
                                { "Russian", "Почините разорванный на части карданный вал" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_DAMAGED_PART_40" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Утечка смазки
                                { "Russian", "Устраните утечку смазки" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_DAMAGED_PART_41" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Нестабильные подшипники
                                -- Destabilised Bearings
                                { "Russian", "Почините разболтанные подшипники" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_DAMAGED_PART_42" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Отказ системы лазерного зажигания
                                -- Laser Ignition Failure
                                { "Russian", "Почините лазерное зажигание" },
                            }
                        },
                        -- это звучит смешно в англ. варианте, лол =)
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_DAMAGED_PART_43" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Отключение автопилота
                                -- Autopilot Disengaged
                                { "Russian", "Почините разъединившегося автопилота" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_DAMAGED_PART_44" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Разрыв клапанов
                                { "Russian", "Почините разрыв клапанов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_DAMAGED_PART_45" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Цепное колесо заклинило
                                { "Russian", "Почините заклинившее цепное колесо" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_DAMAGED_PART_46" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Утечка охладителя
                                { "Russian", "Устраните утечку охладителя" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_DAMAGED_PART_47" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Отказ топливного насоса
                                { "Russian", "Почините топливный насос" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_DAMAGED_PART_48" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Повреждение системы подачи боеприпасов
                                -- Ammo Feed Damaged
                                { "Russian", "Почините систему подачи боеприпасов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_DAMAGED_PART_49" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Разгерметизация отсеков команды
                                -- Crew Compartments Depressurised
                                { "Russian", "Устраните причину разгерметизации отсеков экипажа" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_DAMAGED_PART_50" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Заражение атмосферы
                                -- Atmosphere Contaminated
                                { "Russian", "Устраните загрязнение воздуха" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_DAMAGED_PART_51" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Маяк разбит
                                { "Russian", "Почините разбитый маяк" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_DAMAGED_PART_52" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Передатчики вышли из строя
                                { "Russian", "Почините передатчики" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_DAMAGED_PART_53" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сбой сигнала локализации
                                -- Localisation Signal Failure
                                { "Russian", "Почините сигнал локализации" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_DAMAGED_PART_54" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Медленная потеря давления
                                { "Russian", "Устраните медленную потерю давления" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_DAMAGED_PART_55" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Критическое событие
                                -- Criticality Event
                                { "Russian", "Устраните событие критичности" },
                            }
                        },
                        --#endregion

                        --#region Защищайте флот
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_KILL_POLICE_OBJ" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Защищайте флот.
                                -- Protect the fleet
                                { "Russian", "Защитите флот" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_KILL_POLICE_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Защитите флот от стражей: &lt;FUEL&gt;%AMOUNT%&lt;&gt;&#xA;%FLIGHT_TIP%&#xA;Используйте &lt;IMG&gt;PREVTARGET&lt;&gt;/&lt;IMG&gt;NEXTTARGET&lt;&gt;, чтобы сменить цель.
                                { "Russian", "Защитите флот от стражей: &lt;FUEL&gt;%AMOUNT%&lt;&gt;&#xA;%FLIGHT_TIP%&#xA;Используйте &lt;IMG&gt;PREVTARGET&lt;&gt;/&lt;IMG&gt;NEXTTARGET&lt;&gt;, чтобы сменить цель" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_KILL_POLICE_MSG2A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Силы стражей приближаются!&#xA;Приготовьтесь защищать флот.
                                -- Sentinel forces inbound!&#xA;Prepare to protect the fleet
                                { "Russian", "Силы стражей приближаются!&#xA;Приготовьтесь защищать флот" },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_DISTRESS_SCAN_OSD_MAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ОБНАРУЖЕН СИГНАЛ БЕДСТВИЯ ФЛОТА &lt;IMG&gt;SLASH&lt;&gt; ОТКРОЙТЕ ГАЛАКТИЧЕСКУЮ КАРТУ
                                -- FLEET DISTRESS SIGNAL ACQUIRED &lt;IMG&gt;SLASH&lt;&gt; CONSULT GALAXY MAP
                                { "Russian", "ПОЙМАН СИГНАЛ БЕДСТВИЯ ФЛОТА &lt;IMG&gt;SLASH&lt;&gt; ОТКРОЙТЕ ГАЛАКТИЧЕСКУЮ КАРТУ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_BOUNTY_SCAN_OSD_MAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ЦЕЛЬ КОНТРАКТА ЗАХВАЧЕНА &lt;IMG&gt;SLASH&lt;&gt; ОТКРОЙТЕ ГАЛАКТИЧЕСКУЮ КАРТУ
                                -- BOUNTY TARGET ACQUIRED &lt;IMG&gt;SLASH&lt;&gt; CONSULT GALAXY MAP
                                { "Russian", "ПОЛУЧЕНЫ КООРДИНАТЫ ЦЕЛИ &lt;IMG&gt;SLASH&lt;&gt; ОТКРОЙТЕ ГАЛАКТИЧЕСКУЮ КАРТУ" },
                            }
                        },

                        --#region перенесено из Farscape 20.09.2024
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "CUST_SUB_MARKINGS_FRONT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- СФЕРА ОСМОТРА
                                -- VIEW SPHERE
                                { "Russian", "РУБКА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "CUST_SUB_MARKINGS_FRONT_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сфера осмотра
                                { "Russian", "Рулевая рубка" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "CUSTOMISE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ВНЕШНИЙ ВИД
                                { "Russian", "ВИД" },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_MINING_SPECIAL_20" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %CAP_RACE%, надеюсь, это сообщение найдет тебя в добром здравии, и ты посчитаешь наши достижения удовлетворительными. Система %SYSTEM% оказалась очень прибыльной.&#xA;Но возник вопрос. Местные шторма очень сильны, и у нас заканчиваются защитные фильтры. Следует ли нам сосредоточить усилия на добыче хроматического металла или вложиться в команды по сбору утиля? Из-за штормов погибло много кораблей, а поля обломков огромны.
                                -- I hope this message finds you well, %CAP_RACE%, and I trust you find our progress to be satisfactory. The %SYSTEM% System has been particularly profitable for us.&#xA;But I bring you a dilemma. The storms here are ferocious, and we have only so many hazard filters. Should we direct our efforts towards mining valuable chromatic metal, or invest in the salvage teams? The storms have claimed many ships, and the debris fields are extensive...
                                { "Russian", "%CAP_RACE%, надеюсь, это сообщение найдет тебя в добром здравии, и ты посчитаешь наши достижения удовлетворительными. Система %SYSTEM% оказалась очень прибыльной.&#xA;Но возник вопрос. Местные шторма очень сильны, и у нас заканчиваются защитные фильтры. Следует ли нам сосредоточить усилия на добыче хроматического металла или вложиться в команды по сбору утиля?&#xA;Из-за штормов погибло много кораблей, а поля обломков огромны..." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SUB_RADAR_OSD_FREIGHTER" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружены затонувшие обломки
                                -- Sunken Wreck Detected
                                { "Russian", "Обнаружено затонувшее грузовое судно" },
                            }
                        },
                        -- <число> Успешные встречи
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_UI_STAT_VICTORY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Успешные встречи
                                -- Successful Encounters
                                { "Russian", "разрешенных ситуаций" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_UI_MINING_SHIP_TITLE_S" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Орбитальная промышленная платформа
                                -- Orbital Factory Platform
                                { "Russian", "Орбитальный завод" },
                            }
                        },
                        -- чтобы все влезало макс. 26 букв
                        -- в идеале "корабль комплексного снабжения", но не влезет
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_UI_SUPPORT_SHIP_TITLE_S" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Продвинутая платформа для оснастки
                                -- Advanced Outfitting Platform
                                { "Russian", "Судно комплексной оснастки" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_UI_SUPPORT_SHIP_TITLE_A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Мобильная платформа поддержки
                                -- Mobile Supply Platform
                                { "Russian", "Мобильная база" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_UI_COMBAT_SHIP_TITLE_C" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Межзвездный фрегат
                                { "Russian", "Межзвёздный фрегат" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_UI_COMBAT_SHIP_TITLE_B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Межзвездный корвет
                                { "Russian", "Межзвёздный корвет" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_UI_COMBAT_SHIP_TITLE_A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Межзвездный линкор
                                { "Russian", "Межзвёздный линкор" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_UI_COMBAT_SHIP_TITLE_S" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Межзвездный дредноут
                                { "Russian", "Межзвёздный дредноут" },
                            }
                        },

                        --#region Командир флота %FLEET_CAPTAIN%
                        -- "Командир флота" лишее, достаточно %FLEET_CAPTAIN%
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_EXPLORE_MISSION_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Во время исследования глубокого космоса у экспедиции &lt;STELLAR&gt;%EXPED_NAME%&lt;&gt; начались неприятности. Командир флота %FLEET_CAPTAIN% просит моей помощи. Мне нужно при первой же возможности добраться до &lt;STELLAR&gt;системы %SYSTEM% &lt;&gt; и помочь, чтобы экспедиция вернулась к исследованиям.
                                -- My fleet, after embarking on the expedition &lt;STELLAR&gt;%EXPED_NAME%&lt;&gt;, has run into trouble while exploring deep space. %FLEET_CAPTAIN% has called for my assistance. I should reach the &lt;STELLAR&gt;%SYSTEM% system&lt;&gt; and help them as soon as possible, to allow them to return to their mission of discovery.
                                { "Russian", "Во время исследования глубокого космоса у экспедиции &lt;STELLAR&gt;%EXPED_NAME%&lt;&gt; начались неприятности. %FLEET_CAPTAIN% просит моей помощи. Мне нужно при первой же возможности добраться до &lt;STELLAR&gt;системы %SYSTEM% &lt;&gt; и помочь, чтобы экспедиция вернулась к исследованиям." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_COMBAT_MISSION_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Во время патрулирования глубокого космоса у экспедиции &lt;STELLAR&gt;%EXPED_NAME%&lt;&gt; начались неприятности. Командир флота %FLEET_CAPTAIN% просит моей помощи. Мне нужно при первой же возможности добраться до &lt;STELLAR&gt;системы %SYSTEM% &lt;&gt; и помочь, чтобы экспедиция вернулась к путешествиям.
                                { "Russian", "Во время патрулирования глубокого космоса у экспедиции &lt;STELLAR&gt;%EXPED_NAME%&lt;&gt; начались неприятности. %FLEET_CAPTAIN% просит моей помощи. Мне нужно при первой же возможности добраться до &lt;STELLAR&gt;системы %SYSTEM% &lt;&gt; и помочь, чтобы экспедиция вернулась к путешествиям." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_MINING_MISSION_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Во время поиска месторождений и обломков кораблей в системах у экспедиции &lt;STELLAR&gt;%EXPED_NAME%&lt;&gt; начались проблемы. Командир флота %FLEET_CAPTAIN% просит моей помощи. Мне нужно при первой же возможности добраться до &lt;STELLAR&gt;системы %SYSTEM% &lt;&gt; и помочь, чтобы экспедиция вернулась к своей работе.
                                { "Russian", "Во время поиска месторождений и обломков кораблей в системах у экспедиции &lt;STELLAR&gt;%EXPED_NAME%&lt;&gt; начались проблемы. %FLEET_CAPTAIN% просит моей помощи. Мне нужно при первой же возможности добраться до &lt;STELLAR&gt;системы %SYSTEM% &lt;&gt; и помочь, чтобы экспедиция вернулась к своей работе." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_TRADING_MISSION_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Во время поиска выгодных сделок в глубоком космосе у экспедиции &lt;STELLAR&gt;%EXPED_NAME%&lt;&gt; начались неприятности. Командир флота %FLEET_CAPTAIN% просит моей помощи. Мне нужно при первой же возможности добраться до &lt;STELLAR&gt;системы %SYSTEM% &lt;&gt; и помочь, чтобы экспедиция вернулась к зарабатыванию денег.
                                { "Russian", "Во время поиска выгодных сделок в глубоком космосе у экспедиции &lt;STELLAR&gt;%EXPED_NAME%&lt;&gt; начались неприятности. %FLEET_CAPTAIN% просит моей помощи. Мне нужно при первой же возможности добраться до &lt;STELLAR&gt;системы %SYSTEM% &lt;&gt; и помочь, чтобы экспедиция вернулась к зарабатыванию денег." },
                            }
                        },
                        --#endregion

                        --#region Найдите местоположение флота
                        -- в данном описании указывать кнопку бесмысленно, а в друг игрок на планете и что тогда?
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_KILL_POLICE_OBJ_F_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- На экспедицию напали стражи-перехватчики из системы %SYSTEM%!&#xA;Найдите местоположение флота на галактической карте (&lt;IMG&gt;QUICK_MENU&lt;&gt;) и отправьтесь к нему.
                                { "Russian", "На экспедицию напали стражи-перехватчики из системы %SYSTEM%!&#xA;Найдите местоположение флота на галактической карте и отправьтесь к нему." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_SHIP_CLAIM_OBJ_FORMAT_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Экспедиция обнаружила необычный звездолет в системе %SYSTEM%.&#xA;Найдите местоположение флота на галактической карте (&lt;IMG&gt;QUICK_MENU&lt;&gt;) и отправьтесь к нему.
                                { "Russian", "Экспедиция обнаружила необычный звездолёт в системе %SYSTEM%.&#xA;Найдите местоположение флота на галактической карте и отправьтесь к нему." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_COMBAT_OBJ1_FORMAT_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- На экспедицию напали пираты в системе %SYSTEM%!&#xA;Найдите местоположение флота на галактической карте (&lt;IMG&gt;QUICK_MENU&lt;&gt;) и отправьтесь к нему.
                                { "Russian", "На экспедицию напали пираты в системе %SYSTEM%!&#xA;Найдите местоположение флота на галактической карте и отправьтесь к нему." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_COMBAT_BOUNTY_OBJ1_F_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Экспедиция обнаружила знаменитого пирата в системе %SYSTEM%!&#xA;Найдите местоположение флота на галактической карте (&lt;IMG&gt;QUICK_MENU&lt;&gt;) и отправьтесь к нему.
                                { "Russian", "Экспедиция обнаружила знаменитого пирата в системе %SYSTEM%!&#xA;Найдите местоположение флота на галактической карте и отправьтесь к нему." },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FRIG_BOOST_EXP_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;COMMODITY&gt;Временное улучшение для фрегата&lt;&gt;, действующее в течение одной экспедиции. Этот мощный аналитический вычислитель разгоняет системы флота, позволяя выполнять расчеты для путешествий со скоростью выше скорости света. Из-за этого микросхемы быстро выгорают в виду сильного перегрева.
                                -- A &lt;COMMODITY&gt;temporary frigate upgrade&lt;&gt; that lasts for one expedition.&#xA;&#xA;This powerful analytic computer overclocks the existing fleet systems, allowing for faster-than-light calculations. Heat is a problem, and the chips do not last long.
                                { "Russian", "&lt;COMMODITY&gt;Временное улучшение для фрегата﻿,&lt;&gt; действующее в течение одной экспедиции. Этот мощный аналитический вычислитель разгоняет системы флота, позволяя выполнять расчеты для путешествий со скоростью выше скорости света. Микросхемы быстро выгорают из-за сильного перегрева." },
                            }
                        },
                        --
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CUSTOM_MARKER_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Нажмите &lt;IMG&gt;CUSTOMMARK&lt;&gt;, чтобы разместить свою метку
                                -- Press &lt;IMG&gt;CUSTOMMARK&lt;&gt; to place Custom Marker
                                { "Russian", "Нажмите &lt;IMG&gt;CUSTOMMARK&lt;&gt;, чтобы разместить маяк" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXO_MAINT_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Критическое повреждение &lt;TECHNOLOGY&gt;модуля улучшения экзокостюма&lt;&gt;. Отремонтируйте систему для восстановления работоспособности улучшения.&#xA;&#xA;В случае ремонта пользователю &lt;STELLAR&gt;не придется платить&lt;&gt; за улучшения экзокостюма.
                                -- This &lt;TECHNOLOGY&gt;Exosuit Upgrade Module&lt;&gt; is critically damaged. Repair systems to restore upgrade functionality.&#xA;&#xA;If repaired, User &lt;STELLAR&gt;will not be charged&lt;&gt; for any Exosuit Upgrades.
                                { "Russian", "&lt;TECHNOLOGY&gt;Модуль улучшения экзокостюма&lt;&gt; сильно поврежден. Отремонтируйте его, чтобы восстановить работоспособность.&#xA;&#xA;После ремонта любые улучшения экзокостюма станут &lt;STELLAR&gt;бесплатными﻿.&lt;&gt;" },
                            }
                        },
                        --
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UT_ENERGY_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ВОССТАНОВИТЕЛЬ КИСЛОРОДА
                                -- OXYGEN RECYCLER
                                { "Russian", "РЕЦИРКУЛЯТОР КИСЛОРОДА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UT_ENERGY_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Восстановитель кислорода
                                -- Oxygen Recycler
                                { "Russian", "Рециркулятор кислорода" },
                            }
                        },
                        -- на ДУ... можно было и надо было без ДУ
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_MINING_T1_24" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Команда бурения в условиях пониженной гравитации эвакуирована с астероида. При бурении из глубин астероида поднялась нанитовая пена. Отправили дронов-шахтеров на ДУ для завершения операции.
                                -- Low Gravity Mining Crew evacuated from asteroid site. Drilling operation revealed nanite foam bubbling from asteroid interior. Deployed remote mining drones to complete operation.
                                { "Russian", "Команда бурения в условиях пониженной гравитации эвакуирована с астероида. При бурении из глубин астероида поднялась нанитовая пена. Отправили дронов-шахтеров для завершения операции." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_EXPLORE_T1_8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Анализ глубин космоса обнаружил бинарные черные дыры в секторе %SYSTEM%. Отправили дрона на ДУ, который, приблизившись к горизонту событий, позволил нам собрать подробные данные.
                                -- Deep-space discovery survey located binary black holes in %SYSTEM% Sector. Deployed remote probe, gathered detailed observations as it approached the event horizon.
                                { "Russian", "Анализ глубин космоса обнаружил бинарные черные дыры в секторе %SYSTEM%. Отправили дрона к горизонту событий, что позволило нам собрать подробные данные." },
                            }
                        },

                        --#region Трейты фрегатов
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_TRAIT_SEC_TRADING_8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Экономический анализатор на ДУ
                                -- Remote Market Analyser
                                { "Russian", "Дистанционный анализатор рынка" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_TRAIT_SEC_EXPLORE_7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Собиратель планетарной информации
                                -- Planetary Data Scoop
                                { "Russian", "Планетарный сканер" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_TRAIT_SEC_SPEED_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Привод массы
                                -- Mass Driver
                                { "Russian", "Движитель масс" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_TRAIT_SEC_EXPLORE_4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Устройство текущего архивирования
                                -- Realtime Archival Device
                                { "Russian", "Устройство архивирования на лету" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_TRAIT_SEC_FUEL_7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Восстановитель кислорода
                                -- Oxygen Recycler
                                { "Russian", "Рециркулятор кислорода" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_TRAIT_SEC_SPEED_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Расширитель местного времени
                                -- Local Time Dilator
                                { "Russian", "Локальный замедлитель времени" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_TRAIT_SEC_COMBAT_8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Производители боезапаса
                                -- Ammo Fabricators
                                { "Russian", "Производство боеприпасов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_TRAIT_SEC_EXPLORE_12" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Датчики широкого радиуса
                                -- Long-Distance Sensors
                                { "Russian", "Сенсоры дальнего действия" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_TRAIT_SEC_MINING_12" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Модуль добычи ископаемых на ДУ
                                -- Remote Mining Unit
                                { "Russian", "Дистанционная добыча ресурсов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_TRAIT_SEC_MINING_4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Модуль переработки руды
                                -- Ore Processing Unit
                                { "Russian", "Цех переработки руды" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_TRAIT_SEC_TRADING_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Автоматический инвестиционный двигатель
                                -- Automatic Investment Engine
                                { "Russian", "Автоматизированное инвестирование" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_TRAIT_SEC_INVULNERABLE_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Продвинутые дроны обслуживания
                                -- Advanced Maintenance Drones
                                { "Russian", "Дроны для техобслуживания" },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NPC_FLEETCOMMS_CONTINUE_RES" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Зарегистрирована команда: фрегат %FRIGATE_NAME% продолжает выполнение задания.
                                -- Command registered: Frigate %FRIGATE_NAME% continuing with the mission.
                                { "Russian", "Команда принята: фрегат %FRIGATE_NAME% продолжает выполнение задания." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NPC_FLEETCOMMS_COMEHOME_RES" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Зарегистрирована команда: фрегат %FRIGATE_NAME% возвращается в состав флота на проведение ремонтных работ.
                                -- Command registered: Frigate %FRIGATE_NAME% returning to main fleet for maintenance.
                                { "Russian", "Команда принята: фрегат %FRIGATE_NAME% возвращается в состав флота на проведение ремонтных работ." },
                            }
                        },
                        -- из-за длинного имени фрегата, текст может не влезть
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NPC_FLEET_DAMAGED_LANG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Отчет автодиагностики флота для фрегата %FRIGATE_NAME%: при выполнении задания корабль получил критические повреждения. Команда не может произвести ремонт самостоятельно. В случае возникновения новых повреждений катастрофа неизбежна.
                                -- Fleet Autodiagnostics Report for Frigate %FRIGATE_NAME%: Ship has sustained mission critical damage. Crew are incapable of performing maintenance. Further damage risks catastrophic failure.
                                { "Russian", "Отчёт автодиагностики флота для фрегата %FRIGATE_NAME%: при выполнении задания корабль получил критические повреждения.&#xA;Команда не может произвести ремонт самостоятельно. В случае возникновения новых повреждений катастрофа неизбежна." },
                            }
                        },
                        --
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "MSN_CRE_FEED_NOUN_12" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- четвероног.
                                { "Russian", "четвероногие" },
                            }
                        },
                        -- отображается внизу под бонусами экседиции
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_UI_MODULE_FORMAT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;%NAME%:&lt;&gt;%DESC%&lt;COMMODITY&gt;+%STAT%&lt;&gt;
                                -- &lt;TECHNOLOGY&gt;%NAME%:&lt;&gt; %DESC% &lt;COMMODITY&gt;+%STAT%&lt;&gt;
                                { "Russian", "&lt;TECHNOLOGY&gt;%NAME%:&lt;&gt; %DESC% &lt;COMMODITY&gt;+%STAT%&lt;&gt;" },
                            }
                        },
                        -- отображается в списке фрегатов вместо класса фрегата
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_UI_COMM_WAITING" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Ожидание передачи
                                -- Awaiting Communication
                                { "Russian", "Ждёт вашего ответа &lt;IMG&gt;CLOCK&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_UI_AWAIT_DEBRIEF" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Ожидание доклада
                                -- Awaiting Debrief
                                { "Russian", "Готов доложить &lt;IMG&gt;CLOCK&lt;&gt;" },
                            }
                        },
                        -- слеши по бокам лишние
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "INTRCT_NOROOM_SLOT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;SLASH&lt;&gt;%NUM% ТРЕБУЮТСЯ СВОБОДНЫЕ ЯЧЕЙКИ ИНВЕНТАРЯ &lt;IMG&gt;SLASH&lt;&gt;
                                -- &lt;IMG&gt;SLASH&lt;&gt; %NUM% INVENTORY SLOTS REQUIRED &lt;IMG&gt;SLASH&lt;&gt;
                                { "Russian", "ТРЕБУЮТСЯ СВОБОДНЫЕ ЯЧЕЙКИ ИНВЕНТАРЯ: %NUM% ШТ." },
                            }
                        },
                        --
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENTINELS_DEPLOYED_TITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Стражи вылетели! Уклоняйтесь!
                                -- Sentinels Deployed! Evade!
                                { "Russian", "Стражи вылетели! Осторегайтесь!" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_ESCAPE_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Подкрепление прибудет через:&lt;FUEL&gt;%TIME% сек.&lt;&gt;&#xA;&lt;STELLAR&gt; Покиньте территорию&lt;&gt; или&lt;STELLAR&gt; спрячьтесь&lt;&gt;.
                                -- Reinforcements incoming: &lt;FUEL&gt;%TIME%s&lt;&gt;&#xA;&lt;STELLAR&gt;Leave the area&lt;&gt; or &lt;STELLAR&gt;hide&lt;&gt; to escape
                                { "Russian", "Подкрепление прибудет через &lt;FUEL&gt;%TIME% с&lt;&gt;&#xA;&lt;STELLAR&gt;Покиньте территорию&lt;&gt; или &lt;STELLAR&gt;спрячьтесь&lt;&gt;" },
                            }
                        },
                        -- в поле %TIME% зачем-то добавлены секунды на англ.
                        -- вообще без "for you" данная конструкция предложения какая-то кривая на русском
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENTINEL_HUNT_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- СТРАЖИ ПРОДОЛЖАЮТ ПОИСК: %TIME%
                                -- SENTINELS SEARCHING: %TIME%
                                { "Russian", "ВЕДЕТСЯ ПОИСК: %TIME%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORRUPT_HUNT_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- СТРАЖИ ПРОДОЛЖАЮТ ПОИСК: %TIME%
                                -- SWARM IS HUNTING: %TIME%
                                { "Russian", "ПРЕСЛЕДОВАНИЕ: %TIME%" },
                            }
                        },
                        --
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COMM_WEEK_07_OBJ4_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;HIGHLIGHT&gt;&lt;IMG&gt;ЧАСЫ&lt;&gt;%MISSIONTIME%&lt;&gt;&#xA;Отправляйтесь в космос и встретьтесь с Нада.
                                -- &lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;Launch into space to make contact with Nada
                                { "Russian", "&lt;HIGHLIGHT&gt;&lt;IMG&gt;CLOCK&lt;&gt; %MISSIONTIME%&lt;&gt;&#xA;&#xA;Отправляйтесь в космос и встретьтесь с Нада" },
                            }
                        },
                        --
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NPC_DIGGING_TITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Канал загрузки артефакта
                                -- Artifact Upload Link
                                { "Russian", "Канал связи" },
                            }
                        },

                        --#region UI_WATERMISSION.*_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WATERMISSION1_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружен слабый след сигнала.&#xA;Чтобы перехватить сигнал, вернитесь в космос.
                                -- Weak signal trace detected&#xA;Return to space to intercept signal
                                { "Russian", "Обнаружен слабый след сигнала&#xA;Чтобы перехватить сигнал, вернитесь в космос" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WATERMISSION1_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Входящий сигнал: &lt;STELLAR&gt;неизвестный контакт&lt;&gt;&#xA;Откройте коммуникатор с помощью &lt;IMG&gt;QUICK_MENU&lt;&gt;
                                -- Incoming signal: &lt;STELLAR&gt;Unknown contact&lt;&gt;&#xA;Access the Communicator with &lt;IMG&gt;QUICK_MENU&lt;&gt;
                                { "Russian", "На связи &lt;STELLAR&gt;незнакомец&lt;&gt;&#xA;Ответьте по коммуникатору из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WATERMISSION1_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Установлены координаты трансляции.&#xA;Исследуйте место передачи.
                                -- Transmission coordinates validated&#xA;Investigate the broadcast site
                                { "Russian", "Установлены координаты передачи&#xA;Исследуйте место трансляции" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WATERMISSION1_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Получено улучшение &lt;TECHNOLOGY&gt;подводной защиты&lt;&gt;.&#xA;Чтобы начать установку, выберите&#xA;модуль улучшения с помощью &lt;IMG&gt;TECHMENU&lt;&gt;.
                                -- &lt;TECHNOLOGY&gt;Underwater Protection&lt;&gt; upgrade received&#xA;Select the upgrade module in your inventory&#xA;Use &lt;IMG&gt;TECHMENU&lt;&gt; to begin installation
                                { "Russian", "Получено улучшение &lt;TECHNOLOGY&gt;подводной защиты&lt;&gt;&#xA;Установите его в инвентаре с помощью &lt;IMG&gt;TECHMENU&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WATERMISSION2_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Модуль улучшения содержит данные о своем бывшем хозяине.&#xA;&lt;STELLAR&gt;Используйте сканер&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;), чтобы найти предыдущего владельца.
                                -- Upgrade module held an echo of its original user&#xA;&lt;STELLAR&gt;Perform a Scan&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;) to search for previous owner
                                { "Russian", "Модуль улучшения содержит воспоминание&#xA;о своем бывшем хозяине&#xA;Найдите предыдущего владельца&#xA;с помощью &lt;STELLAR&gt;сканера&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WATERMISSION2_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Доберитесь до корабля незнакомца.
                                -- Reach the stranger's starship
                                { "Russian", "Доберитесь до звездолёта незнакомца" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WATERMISSION2_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите &lt;STELLAR&gt;подводную лодку «Наутилон»&lt;&gt;.&#xA;Откройте меню созидания (&lt;IMG&gt;BUILD_MENU&lt;&gt;) и закрепите чертеж с помощью &lt;IMG&gt;PIN_BUILD&lt;&gt;.&#xA;Постройка &lt;TECHNOLOGY&gt;подводной базы&lt;&gt; может облегчить процесс сборки.
                                -- Construct the &lt;STELLAR&gt;Nautilon Submarine&lt;&gt;&#xA;Access the Build Menu (&lt;IMG&gt;BUILD_MENU&lt;&gt;) while underwater and pin the blueprint with &lt;IMG&gt;PIN_BUILD&lt;&gt;&#xA;Establishing an &lt;TECHNOLOGY&gt;underwater base&lt;&gt; may aid construction
                                { "Russian", "Постройте &lt;STELLAR&gt;подводную лодку «Наутилон»&lt;&gt;&#xA;Закрепите чертеж из меню строительства (&lt;IMG&gt;BUILD_MENU&lt;&gt;), нажав &lt;IMG&gt;PIN_BUILD&lt;&gt;&#xA;Постройка &lt;TECHNOLOGY&gt;подводной базы&lt;&gt; может облегчить процесс" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WATERMISSION2_MSG5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Создайте &lt;STELLAR&gt;гидротермальный топливный блок&lt;&gt; для питания «Наутилона».&#xA;Создайте продукты в инвентаре с помощью &lt;IMG&gt;PRODMENU&lt;&gt;.&#xA;Чертежи можно закрепить с помощью &lt;IMG&gt;PIN&lt;&gt; в меню созидания.
                                -- Construct a &lt;STELLAR&gt;Hydrothermal Fuel Cell&lt;&gt; to fuel the Nautilon&#xA;Craft products in the Inventory with &lt;IMG&gt;PRODMENU&lt;&gt;&#xA;Pin blueprints with &lt;IMG&gt;PIN&lt;&gt; while browsing the crafting menu
                                { "Russian", "Создайте &lt;STELLAR&gt;гидротермальный топливный блок&lt;&gt; для «Наутилон»&#xA;Создайте продукты в инвентаре с помощью &lt;IMG&gt;PRODMENU&lt;&gt;&#xA;Чертежи можно закреплять, нажав &lt;IMG&gt;PIN&lt;&gt; в меню изготовления" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WATERMISSION2_MSG6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Заправьте &lt;TECHNOLOGY&gt;гумбольдтовый двигатель&lt;&gt; «Наутилона».&#xA;Используйте &lt;FUEL&gt;гидротермальный топливный блок&lt;&gt; в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;).
                                -- Fuel the Nautilon's &lt;TECHNOLOGY&gt;Humboldt Drive&lt;&gt;&#xA;Apply the &lt;FUEL&gt;Hydrothermal Fuel Cell&lt;&gt; in the Inventory (&lt;IMG&gt;INVENTORY&lt;&gt;)
                                { "Russian", "Заправьте &lt;TECHNOLOGY&gt;гумбольдтовый двигатель&lt;&gt; «Наутилон»&#xA;Используйте &lt;FUEL&gt;гидротермальный топливный блок&lt;&gt; в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WATERMISS2_SURVEY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Доберитесь до звездолета незнакомца.&#xA;Используйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt;, чтобы проследить источник сигнала бедствия.
                                { "Russian", "Доберитесь до звездолёта незнакомца&#xA;Отследите источник бедствия&#xA;с помощью &lt;TECHNOLOGY&gt;разведки цели&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WATERMISS2_SURVEY_SWAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Доберитесь до звездолета незнакомца.&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;
                                { "Russian", "Доберитесь до звездолёта незнакомца&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WATERMISS2_SURVEY_OFF" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Доберитесь до звездолета незнакомца.&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы проследить источник сигнала бедствия.
                                { "Russian", "Доберитесь до звездолёта незнакомца&#xA;Отследите источник бедствия&#xA;с помощью &lt;STELLAR&gt;разведки цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WATERMISSION3_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Испытайте &lt;STELLAR&gt;подводную лодку «Наутилон»&lt;&gt;.&#xA;Спуститесь на глубину и постарайтесь найти следы экспедиции незнакомца.
                                -- Test the &lt;STELLAR&gt;Nautilon Submarine&lt;&gt;&#xA;Explore the depths and search for signs of the stranger's expedition
                                { "Russian", "Испытайте &lt;STELLAR&gt;подводную лодку «Наутилон»&lt;&gt;&#xA;Исследуйте глубины и найдите следы экспедиции незнакомца" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WATERMISSION3_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- «Наутилон» обнаружил вещательное сооружение на дне моря.&#xA;Следуйте за сигналом сонара и найдите здание.
                                -- The Nautilon has detected a broadcast structure on the seabed&#xA;Follow the sonar signal and locate the building
                                { "Russian", "«Наутилон» обнаружил сооружение на дне моря&#xA;Следуйте за сигналом сонара и найдите здание" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WATERMISSION3_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружено вещательное сооружение.&#xA;Исследуйте здание и постарайтесь найти следы пропавшего экипажа.
                                -- Broadcast structure detected&#xA;Explore the building and search for signs of the missing crew
                                { "Russian", "Обнаружено сооружение, из которого идёт вещание&#xA;Исследуйте здание и поищите следы пропавшего экипажа" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WATERMISSION3_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Установите &lt;TECHNOLOGY&gt;мощный сонар&lt;&gt;.&#xA;Откройте инвентарь «Наутилона» и создайте нужный вам компонент в свободной ячейке с помощью &lt;IMG&gt;TECHMENU&lt;&gt;.&#xA;Закрепите схему чертежа с помощью &lt;IMG&gt;PIN&lt;&gt;, чтобы получить подробные указания.
                                -- Install the &lt;TECHNOLOGY&gt;High-Power Sonar&lt;&gt;&#xA;Access the Nautilon's inventory and craft in an empty slot with &lt;IMG&gt;TECHMENU&lt;&gt;&#xA;Pin the blueprint recipe for detailed instructions with &lt;IMG&gt;PIN&lt;&gt;
                                { "Russian", "Установите &lt;TECHNOLOGY&gt;мощный сонар&lt;&gt; для Наутилон&#xA;Создайте его в свободной ячейке инвентаря с помощью &lt;IMG&gt;TECHMENU&lt;&gt;&#xA;Изучите подробную инструкцию, закрепив чертеж с помощью &lt;IMG&gt;PIN&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WATERMISSION4_MSG1A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Находите подводные места крушений с помощью &lt;TECHNOLOGY&gt;мощного сонара&lt;&gt;.&#xA;Включите мощный сонар с помощью быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;).&#xA;В журнале экипажа упоминалось грузовое судно, затонувшее в глубинах океана.
                                -- Use the &lt;TECHNOLOGY&gt;High-Power Sonar&lt;&gt; to detect and explore sunken wrecks&#xA;Access the High-Power Sonar from the Quick Menu (&lt;IMG&gt;QUICK_MENU&lt;&gt;)&#xA;The crew's log mentioned a freighter crashed in the deep ocean
                                { "Russian", "Найдите подводное место крушения с помощью &lt;TECHNOLOGY&gt;мощного сонара&lt;&gt;&#xA;Включите мощный сонар из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)&#xA;В журнале экипажа упоминалось грузовое судно,&#xA;затонувшее в глубинах океана" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WATERMISSION4_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Используйте &lt;TECHNOLOGY&gt;мощный сонар&lt;&gt; для поиска затонувших сооружений.&#xA;Включите мощный сонар с помощью быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                -- Use the &lt;TECHNOLOGY&gt;High-Power Sonar&lt;&gt; to detect and explore sunken structures&#xA;Access the High-Power Sonar from the Quick Menu (&lt;IMG&gt;QUICK_MENU&lt;&gt;)
                                { "Russian", "Находите затонувшие сооружения с помощью &lt;TECHNOLOGY&gt;мощного сонара&lt;&gt;&#xA;Включите мощный сонар из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WATERMISSION4_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- «Наутилон» обнаружил большое сооружение на дне моря.&#xA;Следуйте за сигналом сонара и найдите сооружение.
                                -- The Nautilon has detected a large structure on the seabed&#xA;Follow the sonar signal and locate the structure
                                { "Russian", "«Наутилон» обнаружил большое сооружение на дне моря&#xA;Следуйте за сигналом сонара и найдите сооружение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WATERMISSION4_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружено место крушения грузового корабля.&#xA;Исследуйте обломки и постарайтесь найти следы пропавшего экипажа.
                                -- Freighter wreck located&#xA;Explore the wreck and search for signs of the missing crew
                                { "Russian", "Обнаружено место крушения грузового корабля&#xA;Исследуйте обломки и найдите следы пропавшего экипажа" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WATERMISSION5_MSG1A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вернитесь к &lt;STELLAR&gt;«Наутилону»&lt;&gt;.&#xA;Используйте &lt;TECHNOLOGY&gt;мощный сонар&lt;&gt;, чтобы найти выживших членов экипажа.
                                -- Return to the &lt;STELLAR&gt;Nautilon&lt;&gt;&#xA;Use the &lt;TECHNOLOGY&gt;High-Power Sonar&lt;&gt; to search for the crew
                                { "Russian", "Вернитесь в &lt;STELLAR&gt;«Наутилон»&lt;&gt;&#xA;Найдите выживших членов экипажа&#xA;с помощью &lt;TECHNOLOGY&gt;мощного сонара&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WATERMISSION5_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Используйте &lt;TECHNOLOGY&gt;мощный сонар&lt;&gt; для поиска &lt;STELLAR&gt;заброшенных зданий&lt;&gt;.&#xA;Включите мощный сонар с помощью быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                -- Use the &lt;TECHNOLOGY&gt;High-Power Sonar&lt;&gt; to detect &lt;STELLAR&gt;sunken buildings&lt;&gt;&#xA;Access the High-Power Sonar from the Quick Menu (&lt;IMG&gt;QUICK_MENU&lt;&gt;)
                                { "Russian", "Находите &lt;STELLAR&gt;затонувшие здания&lt;&gt; с помощью &lt;TECHNOLOGY&gt;мощного сонара&lt;&gt;&#xA;Включите мощный сонар из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WATERMISSION5_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружено заброшенное здание.&#xA;Следуйте за сигналом сонара и найдите сооружение.
                                -- Abandoned building detected&#xA;Follow the sonar signal and locate the structure
                                { "Russian", "Обнаружено заброшенное здание&#xA;Следуйте за сигналом сонара и найдите сооружение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WATERMISSION5_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдено заброшенное здание.&#xA;Исследуйте постройку и постарайтесь найти следы пропавшего экипажа.
                                -- Abandoned building located&#xA;Explore the structure and search for signs of the missing crew
                                { "Russian", "Найдено заброшенное здание&#xA;Исследуйте постройку и найдите следы пропавшего экипажа" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WATERMISSION5_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- На суше уцелевшие не найдены.&#xA;Вернитесь под воду.
                                -- No survivors detected on land&#xA;Return to the water
                                { "Russian", "Уцелевшие на суше не обнаружены&#xA;Вернитесь под воду" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WATERMISSION5_MSG4B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вода в системе не обнаружена.&#xA;Найдите на галактической карте звездные системы, в которых есть вода.
                                -- No water detected in system&#xA;Search the Galaxy Map for star systems with water
                                { "Russian", "Вода в системе не обнаружена&#xA;Найдите на галактической карте системы с водой" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WATERMISSION5_MSG5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Воспользуйтесь сканером (&lt;IMG&gt;SCAN&lt;&gt;), чтобы найти членов экипажа.&#xA;Сигнал слишком слабый. Возможно, потребуется несколько сканирований.
                                -- Use the Scanner (&lt;IMG&gt;SCAN&lt;&gt;) to search for the crew&#xA;Signal is weak. Several scans may be required
                                { "Russian", "Найдите членов экипажа с помощью &lt;STELLAR&gt;сканера&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;)&#xA;Сигнал слишком слабый&#xA;Возможно, потребуется несколько сканирований" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WATERMISSION5_MSG5B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Исследуйте глубины с помощью «Наутилона» и найдите новое &lt;STELLAR&gt;место для сканирования&lt;&gt;.&#xA;Пройденное расстояние: %CURRENT%
                                -- Explore in the Nautilon to find a new &lt;STELLAR&gt;scan location&lt;&gt;&#xA;Distance scouted: %CURRENT%
                                { "Russian", "Исследуйте глубины на «Наутилон»&#xA;Найдите новое &lt;STELLAR&gt;место для сканирования&lt;&gt;&#xA;Пройденное расстояние: %CURRENT%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WATERMISSION5_MSG6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сигнал захвачен.&#xA;Найдите место, ставшее последним приютом для членов экипажа.
                                -- Signal lock established&#xA;Locate the crew's final resting place
                                { "Russian", "Сигнал захвачен&#xA;Найдите последний приют членов экипажа" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WATERMISSION5_MSG7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Цель достигнута.&#xA;Исследуйте обломки.
                                -- Location reached&#xA;Explore the wreck
                                { "Russian", "Место назначения достигнуто&#xA;Исследуйте обломки" },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WATERMISSION5_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- :: ОБНАРУЖЕН ПОТЕНЦИАЛЬНЫЙ ОТРАЖЕННЫЙ СИГНАЛ ::
                                -- :: POTENTIAL SIGNAL ECHO DETECTED ::
                                { "Russian", ":: ОБНАРУЖЕН ПОТЕНЦИАЛЬНЫЙ ЭХОСИГНАЛ ::" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "WATERHELMET_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Получен шлем исчезнувшего водолаза.&#xA;Поменяйте внешний вид экзокостюма в &lt;TECHNOLOGY&gt;модификаторе внешности&lt;&gt;.
                                -- Inherited the helmet of the lost diver&#xA;Transform the appearance of your Exosuit at an &lt;TECHNOLOGY&gt;Appearance Modifier&lt;&gt;.
                                { "Russian", "ПОЛУЧЕН ШЛЕМ ИСЧЕЗНУВШЕГО ВОДОЛАЗА&#xA;ИЗМЕНИТЕ ВНЕШНИЙ ВИД В &lt;TECHNOLOGY&gt;МОДИФИКАТОРЕ ВНЕШНОСТИ&lt;&gt;" },
                            }
                        },
                        --
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TEMPERAMENT_PLAYERPREDATOR10" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вершина пищевой цепочки
                                -- Apex predator
                                { "Russian", "Сверххищник" },
                            }
                        },

                        --#region описание диеты животных
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "CARNIVORE1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Хищник
                                -- Carnivorous
                                { "Russian", "Плотоядный" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "CARNIVORE2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Плотоядное
                                -- Meat-eater
                                { "Russian", "Есть мясо" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "CARNIVORE10" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Ест чужое мясо
                                -- Flesh-eater
                                { "Russian", "Ест плоть" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "CARNIVORE11" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Облигатный хищник
                                { "Russian", "Гиперплотоядный" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "CARNIVORE23" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Свежие куски мяса
                                -- Flesh chunks
                                { "Russian", "Куски плоти" },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_WATER_ADJ_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Просолен.
                                -- Salt-encrusted
                                { "Russian", "Покрыт. солью" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIPSHIELD_RARE_ADJ_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Разрядный
                                -- Lightning
                                { "Russian", "Молниеносный" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIELDBOOST_RARE_ADJ_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Разрядный
                                -- Lightning
                                { "Russian", "Молниеносный" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TERRAIN_UNDO_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Ландшафт баз достиг максимального уровня сложности&#xA;Чтобы отменить правки ландшафта, перейдите в &lt;STELLAR&gt;режим восстановления&lt;&gt;
                                -- Bases have a maximum terrain complexity&#xA;Use &lt;STELLAR&gt;Restore Mode&lt;&gt; to undo terrain edits
                                { "Russian", "У баз есть предел количества правок ландшафта&#xA;Используйте &lt;STELLAR&gt;режим восстановления&lt;&gt; для отмены изменений" },
                            }
                        },

                        --#region EXTREME_PLANET_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "EXTREME_PLANET_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;FUEL&gt;ВНИМАНИЕ: ЭКСТРЕМАЛЬНЫЕ ПОГОДНЫЕ УСЛОВИЯ&lt;&gt;&#xA;Для работы в экстремальных условиях может потребоваться &lt;TECHNOLOGY&gt;дополнительная защита&lt;&gt;&#xA;Чтобы приобретать улучшения, посещайте &lt;TECHNOLOGY&gt;торговцев технологиями&lt;&gt; на космических станциях
                                { "Russian", "&lt;FUEL&gt;ВНИМАНИЕ! ЭКСТРЕМАЛЬНЫЕ ПОГОДНЫЕ УСЛОВИЯ&lt;&gt;&#xA;Возможно потребуется &lt;TECHNOLOGY&gt;дополнительная защита&lt;&gt;&#xA;Покупайте улучшения у &lt;TECHNOLOGY&gt;торговцев технологиями&lt;&gt;&#xA;на космических станциях" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "EXTREME_PLANET_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;FUEL&gt;ВНИМАНИЕ: ЭКСТРЕМАЛЬНЫЕ ПОГОДНЫЕ УСЛОВИЯ&lt;&gt;&#xA;Доступны крайне ценные &lt;COMMODITY&gt;месторождения&lt;&gt; редких ресурсов&#xA;Чтобы обнаружить их, используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)
                                { "Russian", "&lt;FUEL&gt;ВНИМАНИЕ! ЭКСТРЕМАЛЬНЫЕ ПОГОДНЫЕ УСЛОВИЯ&lt;&gt;&#xA;Имеются крайне ценные &lt;COMMODITY&gt;месторождения&lt;&gt; ресурсов&#xA;Найдите их, используя &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)" },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "REMOTE_PLAYER_SHIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Звездолет игрока %PLAYER%
                                -- %PLAYER%’s Starship
                                { "Russian", "Звездолёт %PLAYER%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "REMOTE_PLAYER_EXOCRAFT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вездеход игрока %PLAYER%
                                -- %PLAYER%’s Exocraft
                                { "Russian", "Вездеход %PLAYER%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_STELLAR2_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обработанный металлический сплав, созданный в &lt;TECHNOLOGY&gt;очистителе&lt;&gt; из &lt;STELLAR&gt;звездных металлов&lt;&gt;: &lt;COMMODITY&gt;меди&lt;&gt;, &lt;FUEL&gt;кадмия&lt;&gt;, &lt;TRADEABLE&gt;эмерила&lt;&gt; и &lt;TECHNOLOGY&gt;индия&lt;&gt;.&#xA;&#xA;Чем более &lt;SPECIAL&gt;редким&lt;&gt; является звездный металл, тем больше хроматического металла из него получается.&#xA;&#xA;Этот ценный металл используется для создания многих &lt;TECHNOLOGY&gt;продвинутых технологий&lt;&gt;.
                                -- A processed metal alloy, created in a &lt;TECHNOLOGY&gt;Refiner&lt;&gt; from the &lt;STELLAR&gt;stellar metals&lt;&gt;: &lt;COMMODITY&gt;Copper&lt;&gt;, &lt;FUEL&gt;Cadmium&lt;&gt;, &lt;TRADEABLE&gt;Emeril&lt;&gt; and &lt;TECHNOLOGY&gt;Indium&lt;&gt;.&#xA;&#xA;The &lt;SPECIAL&gt;rarer&lt;&gt; the stellar metal, the more Chromatic Metal it will produce.&#xA;&#xA;This valuable metal is used in the creation of many &lt;TECHNOLOGY&gt;advanced technologies&lt;&gt;.
                                { "Russian", "Обработанный металлический сплав, созданный в &lt;TECHNOLOGY&gt;очистителе&lt;&gt; из &lt;STELLAR&gt;звёздных металлов﻿:&lt;&gt; &lt;COMMODITY&gt;меди﻿,&lt;&gt; &lt;FUEL&gt;кадмия﻿,&lt;&gt; &lt;TRADEABLE&gt;эмерила&lt;&gt; и &lt;TECHNOLOGY&gt;индия﻿.&lt;&gt;&#xA;&#xA;Чем более &lt;SPECIAL&gt;редким&lt;&gt; является звёздный металл, тем больше хроматического металла из него получается.&#xA;&#xA;Этот ценный металл используется для создания многих &lt;TECHNOLOGY&gt;продвинутых технологий﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "QUICK_MENU_NO_EXOCRAFT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- У вас нет вездехода
                                -- Exocraft Not Owned
                                { "Russian", "У вас нет этого вездехода" },
                            }
                        },

                        --#region %INPUT%
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TERRAIN_EDIT_MAT_TIP_NEW" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Изменить материал %INPUT%
                                -- Change Material %INPUT%
                                { "Russian", "%INPUT% Изменить материал " },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TERRAIN_EDIT_SHAPE_TIP_NEW" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Изменить форму %INPUT%
                                -- Change Shape %INPUT%
                                { "Russian", "%INPUT% Изменить форму" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TERRAIN_EDIT_ROTATE_TIP_NEW" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Повернуть плоскость %INPUT%
                                { "Russian", "%INPUT% Повернуть плоскость" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TERRAIN_EDIT_SIZE_TIP_NEW" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Изменить размер %INPUT%
                                { "Russian", "%INPUT% Изменить размер " },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TERRAIN_EDIT_MODE_TIP_NEW" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сменить режим %INPUT%
                                { "Russian", "%INPUT% Сменить режим" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TERRAIN_EDIT_ADD_TIP_NEW" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Создать ландшафт %INPUT%
                                { "Russian", "%INPUT% Создать ландшафт " },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TERRAIN_EDIT_SUB_TIP_NEW" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Удалить ландшафт %INPUT%
                                { "Russian", "%INPUT% Удалить ландшафт" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TERRAIN_EDIT_UNDO_TIP_NEW" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Восстановить удаленный ландшафт %INPUT%
                                { "Russian", " %INPUT% Восстановить ландшафт" },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "GAMEMODE_HELP_DELETE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Удерж. &lt;IMG&gt;GMDEL&lt;&gt;, чтобы удалить сохр. данные
                                -- Hold &lt;IMG&gt;GMDEL&lt;&gt; to delete save data
                                { "Russian", "Удерживайте &lt;IMG&gt;GMDEL&lt;&gt;, чтобы удалить данные" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SEARCH_BUILDING_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- В зданиях можно укрыться от &lt;FUEL&gt;опасностей&lt;&gt; внешней среды.&#xA;Обыскивайте здания, чтобы находить ценные &lt;COMMODITY&gt;материалы&lt;&gt; и &lt;TECHNOLOGY&gt;данные&lt;&gt;.
                                -- Buildings offer shelter from &lt;FUEL&gt;hazards&lt;&gt;&#xA;Search buildings for valuable &lt;COMMODITY&gt;materials&lt;&gt; and &lt;TECHNOLOGY&gt;data&lt;&gt;
                                { "Russian", "В зданиях можно укрыться от &lt;FUEL&gt;опасностей&lt;&gt; внешней среды&#xA;Обыскивайте здания, чтобы находить ценные &lt;COMMODITY&gt;материалы&lt;&gt; и &lt;TECHNOLOGY&gt;данные&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_AMMO_NOTIFY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Для стрельбы из кинетического оружия, такого как &lt;TECHNOLOGY&gt;плазмомет&lt;&gt;, требуется амуниция.&#xA;Создайте &lt;STELLAR&gt;амуницию&lt;&gt; в вашем инвентаре и перезарядите оружие (&lt;IMG&gt;RELOAD&lt;&gt;).&#xA;Создайте снаряды в пустой ячейке (&lt;IMG&gt;PRODMENU&lt;&gt;) или увеличьте имеющуюся стопку (&lt;IMG&gt;TECHMENU&lt;&gt;).
                                -- Projectile weapons like the &lt;TECHNOLOGY&gt;Boltcaster&lt;&gt; require ammunition&#xA;Craft &lt;STELLAR&gt;ammunition&lt;&gt; in your Inventory and reload with &lt;IMG&gt;RELOAD&lt;&gt;&#xA;Craft in empty slots with &lt;IMG&gt;PRODMENU&lt;&gt; or increase an existing stack &lt;IMG&gt;TECHMENU&lt;&gt;
                                { "Russian", "Для стрелкового оружия, такого как &lt;TECHNOLOGY&gt;плазмомет&lt;&gt;, нужна амуниция&#xA;Создайте &lt;STELLAR&gt;снаряды&lt;&gt; в пустой ячейке инвентаря, нажав &lt;IMG&gt;PRODMENU&lt;&gt;&#xA;Также можно увеличить имеющуюся стопку (&lt;IMG&gt;TECHMENU&lt;&gt;)&#xA;Перезаряжайте оружие с помощью &lt;IMG&gt;RELOAD&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Коснитесь, чтобы сбежать
                                -- Tap to flee
                                { "Russian", "Нажимайте, чтобы сбежать" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PROT_CAT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ЗАЩИТА ОТ ВРЕД. ФАКТОРОВ
                                -- HAZARD PROTECTION
                                { "Russian", "ЗАЩИТА ОТ ВРЕДНЫХ ФАКТОРОВ" },
                            }
                        },
                        -- обрезается на "дождаться встречи с вами,"
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_U4_TRAVELLER_LOG_10" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Это был Лэйлапс. Источник моих сомнений, ломаемый и чинимый мной Лэйлапс. Он оказался моим спасителем! Он вырвал нас из того ужасного места и перенес обратно во вселенную. В нашу вселенную!&#xA;&#xA;Не верится, но я — первый Странник, вернувшийся из мира стекла, из чертогов самой смерти! Неужто и правда секрет общего спасения кроется в доброте? Лэйлапс все мне рассказал, общаясь со мной с помощью моего же экзокостюма! &#xA;&#xA;Скоро мы встретимся, друг мой. Мы наконец-то будем вместе! О, какие песни они сложат о нас! Сейчас я передаю знаки. Я не могу дождаться встречи с вами, мои новые друзья...
                                -- It was Laylaps - Laylaps who I had doubted, Laylaps who I had harmed and fixed, Laylaps who was my salvation! It tore us both from that awful place, warping us back to the universe, to our universe!&#xA;&#xA;The first Traveller in history to escape the World of Glass, to be reclaimed from death itself! It is kindness that saves us all, don’t you think? Laylaps told me everything, speaking through my very exosuit! &#xA;&#xA;I will see you soon, my friend. Together at last! What tales they will tell of us! I am transmitting the glyphs now. I can’t wait for you to meet my new friends...
                                { "Russian", "Это был Лэйлапс. Источник моих сомнений, ломаемый и чинимый мной Лэйлапс. Он оказался моим спасителем! Он вырвал нас из того ужасного места и перенес обратно во вселенную. В нашу вселенную!&#xA;&#xA;Я — первый Странник, вернувшийся из мира стекла, из чертогов самой смерти! Неужто секрет общего спасения кроется в доброте? Лэйлапс все мне рассказал, общаясь со мной с помощью моего же экзокостюма! &#xA;&#xA;Скоро мы встретимся, друг мой. Мы наконец-то будем вместе! О, какие песни они сложат о нас! Сейчас я передаю знаки. Я не могу дождаться встречи с вами, мои новые друзья..." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "AMOUNT_NANITES" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Наниты: %AMOUNT%
                                -- %AMOUNT% Nanites
                                { "Russian", "Наниты × %AMOUNT%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "AMOUNT_SPECIALS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Ртуть: %AMOUNT%
                                -- %AMOUNT% Quicksilver
                                { "Russian", "Ртуть × %AMOUNT%" },
                            }
                        },
                        -- обрывается на "Ремонт освободит ячейку дл"
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SHIPSLOT_DMG_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Starship subsystem &lt;FUEL&gt;severely damaged&lt;&gt;. Slot cannot be used for &lt;STELLAR&gt;storage&lt;&gt; or &lt;TECHNOLOGY&gt;technology&lt;&gt; until damage is repaired. Use &lt;IMG&gt;REPAIR&lt;&gt; to begin repair process.&#xA;&#xA;Core starship functionality is not affected. Repairing this damage will free slot up for general inventory use.
                                -- &lt;FUEL&gt;Серьезное повреждение&lt;&gt; подсистемы звездолета. До устранения повреждения эту ячейку нельзя использовать в качестве &lt;STELLAR&gt;склада&lt;&gt; или для размещения &lt;TECHNOLOGY&gt;технологии&lt;&gt;. Начните ремонт с помощью &lt;IMG&gt;REPAIR&lt;&gt;.&#xA;&#xA;Базовые возможности звездолета не затронуты. Ремонт освободит ячейку для общего использования.
                                { "Russian", "&lt;FUEL&gt;Серьезное повреждение&lt;&gt; подсистемы звездолёта. До устранения повреждения эту ячейку нельзя использовать. Начните ремонт с помощью &lt;IMG&gt;REPAIR&lt;&gt;.&#xA;&#xA;Базовые возможности звездолёта не затронуты. Ремонт освободит ячейку для общего использования." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TRADE_FILTER_SHIPS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Звездолеты
                                { "Russian", "Звездолёты" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TRADE_BUY_RESEARCH_NO_TOKEN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Недостаточно жетонов исследования
                                -- Insufficient Research Tokens
                                { "Russian", "Недостаточно извлеченных модулей фрегата" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "PLANET_BOUNTY_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вернитесь на свой корабль и поднимайтесь в небо.
                                { "Russian", "Вернитесь на свой корабль и поднимайтесь в небо" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_EXPLORE_WARP_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вернитесь на свой корабль и поднимайтесь в небо.
                                -- Wormhole warp: &lt;COMMODITY&gt;pending&lt;&gt;&#xA;Return to your ship and proceed to space
                                { "Russian", "Прыжок через черную дыру &lt;COMMODITY&gt;в ожидании&lt;&gt;&#xA;Вернитесь на свой корабль и поднимайтесь в космос" },
                            }
                        },

                        --#region FLEET_EXPLORE_TRANSLATE_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_EXPLORE_TRANSLATE_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Встретьтесь с флотом&#xA;Переведите инопланетное сообщение.
                                -- Dock with the fleet commander's frigate&#xA;Translate the alien message
                                { "Russian", "Переведите инопланетное сообщение&#xA;Состыкуйтесь с фригатом флотоводца" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_EXPLORE_TRANSLATE_MSG_MAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Переведите инопланетное сообщение.&#xA;Встретьтесь с флотом в системе %SYSTEM%&#xA;Находясь в космосе, откройте галактическую карту с помощью &lt;IMG&gt;QUICK_MENU&lt;&gt;
                                { "Russian", "Переведите инопланетное сообщение&#xA;Встретьтесь с флотом в системе %SYSTEM%&#xA;Находясь в космосе, откройте галактическую карту с помощью &lt;IMG&gt;QUICK_MENU&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_EXPLORE_TRANSLATE_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вернитесь на свой корабль и поднимайтесь в небо.
                                -- Translation: &lt;TRADEABLE&gt;complete&lt;&gt;&#xA;Fleet ready to resume expedition&#xA;Launch your ship and proceed to space
                                { "Russian", "Перевод &lt;TRADEABLE&gt;выполнен&lt;&gt;&#xA;Флот готов продолжить экспедицию&#xA;Возвращайтесь в космос" },
                            }
                        },
                        --#endregion

                        --#region FLEET_TRADING_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_TRADING_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Встретьтесь с флотом&#xA;Переведите инопланетное сообщение.
                                { "Russian", "Переведите инопланетное сообщение&#xA;Встретьтесь с флотом" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_TRADING_MSG_MAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Переведите инопланетное сообщение.&#xA;Встретьтесь с флотом в системе %SYSTEM%&#xA;Находясь в космосе, откройте галактическую карту с помощью &lt;IMG&gt;QUICK_MENU&lt;&gt;
                                { "Russian", "Переведите инопланетное сообщение&#xA;Встретьтесь с флотом в системе %SYSTEM%&#xA;Находясь в космосе, откройте галактическую карту (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_TRADING_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вернитесь на свой корабль и поднимайтесь в небо.
                                -- Translation: &lt;TRADEABLE&gt;complete&lt;&gt;&#xA;Fleet ready to resume expedition&#xA;Launch your ship and proceed to space
                                { "Russian", "Перевод &lt;TRADEABLE&gt;выполнен&lt;&gt;&#xA;Флот готов продолжить экспедицию&#xA;Возвращайтесь в космос" },
                            }
                        },
                        --#endregion

                        --#region FLEET_MINING_.*_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_MINING_10_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Флот просит собрать дополнительные данные для исследования редкого минерала.&#xA;Высадитесь на поверхность планеты, чтобы собрать данные о минерале.
                                { "Russian", "Флот просит собрать дополнительные данные&#xA;для исследования редкого минерала&#xA;Высадитесь на поверхность планеты&#xA;и соберите данные о минералах" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_MINING_10_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите минералы для флота: %CURRENT%/%AMOUNT%&#xA;Просканируйте цели с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;).
                                -- Discover minerals for the fleet: %CURRENT% / %AMOUNT%&#xA;Scan targets with the &lt;TECHNOLOGY&gt;Analysis Visor&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)
                                { "Russian", "Изучите минералы для флота: %CURRENT%/%AMOUNT%&#xA;Сканируйте их &lt;TECHNOLOGY&gt;анализирующим визором&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_MINING_10_COMMS_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Данные об образцах минералов &lt;TRADEABLE&gt;получены&lt;&gt;.&#xA;Возвращайтесь в космос и свяжитесь с флотоводцем.
                                { "Russian", "Данные о минералов &lt;TRADEABLE&gt;получены&lt;&gt;&#xA;Возвращайтесь в космос и свяжитесь с флотоводцем" },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINEL_BARREL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Боевые ресурсы
                                -- Combat Supplies
                                { "Russian", "Боеприпасы" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NOTIFY_SHIP_TIP_TITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сообщение системы звездолета
                                -- Starship Guidance Message
                                { "Russian", "Сообщение системы звездолёта" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "PREDFISHDIET10" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соленая рыба
                                -- Salinated flesh
                                { "Russian", "Солёная рыба" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FOOD_CK_SCUST_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МЕЖЗВЕЗДНАЯ СДОБА
                                -- INTERSTELLAR FANCY
                                { "Russian", "МЕЖЗВЁЗДНАЯ СДОБА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FOOD_CK_SCUST_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Межзвездная сдоба
                                { "Russian", "Межзвёздная сдоба" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FOOD_CG_SCUST_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МЕЖЗВЕЗДНАЯ ДИКОВИНКА
                                -- INTERSTELLAR CURIOSITY
                                { "Russian", "МЕЖЗВЁЗДНАЯ ДИКОВИНКА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FOOD_CG_SCUST_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Межзвездная диковинка
                                { "Russian", "Межзвёздная диковинка" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_LOCAL_TELEPORT_DISABLED_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Межзвездная волна... не обнаружена.&#xA;Позывной местной станции приема... обнаружен.&#xA;&#xA;Телепорты позволяют мгновенно перемещаться между &lt;STELLAR&gt;космическими станциями&lt;&gt;, которые вы уже посещали, и вашими &lt;TECHNOLOGY&gt;базами&lt;&gt;.&#xA;Чтобы получить очки для своей телепортационной сети, воспользуйтесь терминалом на космической станции.&#xA;&#xA;Доступ к сети временно ограничен. Телепортация доступна только в пределах системы.
                                -- Interstellar detection wavelength... offline.&#xA;Local transmission station callsign... online.&#xA;&#xA;Teleporters allow instantaneous travel between previously visited &lt;STELLAR&gt;Space Stations&lt;&gt; and owned &lt;TECHNOLOGY&gt;Bases&lt;&gt;.&#xA;Visit the terminus aboard the Space Station to add points to your teleport network.&#xA;&#xA;Network temporarily restricted to in-system teleportation.
                                { "Russian", "Межзвёздная волна... не обнаружена.&#xA;Позывной местной станции приема... обнаружен.&#xA;&#xA;Телепорты позволяют мгновенно перемещаться между &lt;STELLAR&gt;космическими станциями&lt;&gt;, которые вы уже посещали, и вашими &lt;TECHNOLOGY&gt;базами&lt;&gt;.&#xA;Чтобы получить очки для своей телепортационной сети, воспользуйтесь терминалом на космической станции.&#xA;&#xA;Доступ к сети временно ограничен. Телепортация доступна только в пределах системы." },
                            }
                        },

                        --#region FLEET_EXPLORE_.*_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_EXPLORE_1_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TRADEABLE&gt;Токсичная планета&lt;&gt; находится в местной системе&#xA;Доберитесь до отмеченной планеты, чтобы собрать данные об антидоте
                                { "Russian", "&lt;TRADEABLE&gt;Токсичная планета&lt;&gt; находится в этой системе&#xA;Доберитесь до отмеченной планеты" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_EXPLORE_1_MSG_MAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TRADEABLE&gt;Токсичная планета&lt;&gt; находится в системе флота&#xA;Доберитесь до системы %SYSTEM%, чтобы собрать данные об антидоте
                                { "Russian", "&lt;TRADEABLE&gt;Токсичная планета&lt;&gt; находится в системе флота&#xA;Соберите данные об антидоте в системе %SYSTEM%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_EXPLORE_1_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружено планет: %CURRENT%/%AMOUNT%&#xA;Просканируйте флору, чтобы собрать данные об антидоте для флота.
                                -- Plants discovered: %CURRENT%/%AMOUNT%&#xA;Scan flora to gather antidote data for the fleet
                                { "Russian", "Обнаружено растений: %CURRENT%/%AMOUNT%&#xA;Сканирование флоры поможет создать антидот для флота" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_EXPLORE_4_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- В местной системе обнаружены &lt;STELLAR&gt;необычные существа&lt;&gt;.&#xA;Доберитесь до отмеченной планеты, чтобы собрать данные о существах для флота.
                                { "Russian", "В этой системе обнаружены &lt;STELLAR&gt;необычные существа&lt;&gt;&#xA;Доберитесь до отмеченной планеты" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_EXPLORE_4_MSG_MAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- На удаленной планете обнаружены &lt;STELLAR&gt;необычные существа&lt;&gt;.&#xA;Находясь в космосе, откройте галактическую карту с помощью быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)
                                -- &lt;STELLAR&gt;Atypical creatures&lt;&gt; located on distant planet&#xA;In space, open the Galaxy Map from the Quick Menu (&lt;IMG&gt;QUICK_MENU&lt;&gt;)
                                { "Russian", "На удаленной планете обнаружены &lt;STELLAR&gt;необычные существа&lt;&gt;&#xA;Находясь в космосе, откройте галактическую карту из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_EXPLORE_4_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружено необычных существ: %CURRENT%/%AMOUNT%&#xA;Сканируйте животных, чтобы собрать данные для флота.
                                { "Russian", "Обнаружено необычных существ: %CURRENT%/%AMOUNT%&#xA;Сканирование животных поможет собрать данные для флота" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_EXPLORE_4_COMMS_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Данные о необычных существах &lt;TRADEABLE&gt;получены&lt;&gt;.&#xA;Возвращайтесь в космос и свяжитесь с флотоводцем.
                                { "Russian", "Данные о необычных существах &lt;TRADEABLE&gt;получены&lt;&gt;&#xA;Возвращайтесь в космос и свяжитесь с флотоводцем" },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_SCAN_FLORA_OBJ1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Собрать данные о флоре для флота.
                                -- Gather flora data for the fleet
                                { "Russian", "Собрать данные о флоре для флота" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_EXPLORE_1_SCAN_LABEL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Токсичная планета &lt;IMG&gt;SLASH&lt;&gt; Доступны данные об антидоте
                                -- Toxic Planet &lt;IMG&gt;SLASH&lt;&gt; Antidote Data Available
                                { "Russian", "Данные об антидоте на токсичной планете" },
                            }
                        },

                        --#region Очищенный звездный металл
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_RED2_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Очищенный звездный металл: красный
                                -- Refined Stellar Metal: Red
                                { "Russian", "Очищенный звёздный металл: красный" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BLUE2_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Очищенный звездный металл: синий
                                { "Russian", "Очищенный звёздный металл: синий" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_YELLOW2_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Очищенный звездный металл: желтый
                                { "Russian", "Очищенный звёздный металл: жёлтый" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_GREEN2_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Очищенный звездный металл: зеленый
                                { "Russian", "Очищенный звёздный металл: зелёный" },
                            }
                        },
                        --#endregion

                        --#region UI_(RED|BLUE|GREEN|YELLOW)2_DESC
                        -- Опечатка разработчиков Индий/Кадмий/итд это "звёздный металл",
                        -- которые можно обработать в цветной металл.
                        -- А из оригинального описания получается цветной металл перерабатывается
                        -- в цветной металл, что вообще нелогично.
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_RED2_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Хроматический металл&lt;&gt;, получаемый в ходе синтеза в центре звезды. Такие звездные материалы в итоге обнаруживаются в виде залежей в коре окружающих планет.&#xA;&#xA;Кадмий можно найти на планетах, обращающихся вокруг &lt;FUEL&gt;красных звезд&lt;&gt;. Его можно обработать в &lt;TECHNOLOGY&gt;очистителе&lt;&gt;, чтобы создать &lt;STELLAR&gt;хроматический металл&lt;&gt;, использующийся в производстве продвинутых технологий.
                                { "Russian", "&lt;STELLAR&gt;Звёздный металл&lt;&gt;, получаемый в ходе синтеза в центре звезды. Такие звёздные материалы в итоге обнаруживаются в виде залежей в коре окружающих планет.&#xA;&#xA;Кадмий можно найти на планетах, обращающихся вокруг &lt;FUEL&gt;красных звёзд﻿.&lt;&gt; Его можно обработать в &lt;TECHNOLOGY&gt;очистителе﻿,&lt;&gt; чтобы создать &lt;STELLAR&gt;хроматический металл﻿,&lt;&gt; использующийся в производстве продвинутых технологий." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BLUE2_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Хроматический металл&lt;&gt;, получаемый в ходе синтеза в центре звезды. Такие звездные материалы в итоге обнаруживаются в виде залежей в коре окружающих планет.&#xA;&#xA;Индий можно найти на планетах, обращающихся вокруг &lt;TECHNOLOGY&gt;синих звезд&lt;&gt;. Его можно обработать в &lt;TECHNOLOGY&gt;очистителе&lt;&gt;, чтобы создать &lt;STELLAR&gt;хроматический металл&lt;&gt;, использующийся в производстве продвинутых технологий.
                                { "Russian", "&lt;STELLAR&gt;Звёздный металл&lt;&gt;, получаемый в ходе синтеза в центре звезды. Такие звёздные материалы в итоге обнаруживаются в виде залежей в коре окружающих планет.&#xA;&#xA;Индий можно найти на планетах, обращающихся вокруг &lt;TECHNOLOGY&gt;синих звёзд﻿.&lt;&gt; Его можно обработать в &lt;TECHNOLOGY&gt;очистителе﻿,&lt;&gt; чтобы создать &lt;STELLAR&gt;хроматический металл﻿,&lt;&gt; использующийся в производстве продвинутых технологий." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_YELLOW2_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Хроматический металл&lt;&gt;, получаемый в ходе синтеза в центре звезды. Такие звездные материалы в итоге обнаруживаются в виде залежей в коре окружающих планет.&#xA;&#xA;Медь можно найти на планетах, обращающихся вокруг &lt;CATALYST&gt;желтых звезд&lt;&gt;. Ее можно обработать в &lt;TECHNOLOGY&gt;очистителе&lt;&gt;, чтобы создать &lt;STELLAR&gt;хроматический металл&lt;&gt;, использующийся в производстве продвинутых технологий.
                                { "Russian", "&lt;STELLAR&gt;Звёздный металл&lt;&gt;, получаемый в ходе синтеза в центре звезды. Такие звёздные материалы в итоге обнаруживаются в виде залежей в коре окружающих планет.&#xA;&#xA;Медь можно найти на планетах, обращающихся вокруг &lt;CATALYST&gt;жёлтых звёзд﻿.&lt;&gt; Её можно обработать в &lt;TECHNOLOGY&gt;очистителе﻿,&lt;&gt; чтобы создать &lt;STELLAR&gt;хроматический металл﻿,&lt;&gt; использующийся в производстве продвинутых технологий." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_GREEN2_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Хроматический металл&lt;&gt;, получаемый в ходе синтеза в центре звезды.&#xA;&#xA;Эмерил можно найти на планетах, обращающихся вокруг &lt;TRADEABLE&gt;зеленых звезд&lt;&gt;. Его можно обработать в &lt;TECHNOLOGY&gt;очистителе&lt;&gt;, чтобы создать &lt;STELLAR&gt;хроматический металл&lt;&gt;, использующийся в производстве продвинутых технологий.
                                { "Russian", "&lt;STELLAR&gt;Звёздный металл&lt;&gt;, получаемый в ходе синтеза в центре звезды.&#xA;&#xA;Эмерил можно найти на планетах, обращающихся вокруг &lt;TRADEABLE&gt;зелёных звёзд﻿.&lt;&gt; Его можно обработать в &lt;TECHNOLOGY&gt;очистителе﻿,&lt;&gt; чтобы создать &lt;STELLAR&gt;хроматический металл﻿,&lt;&gt; использующийся в производстве продвинутых технологий." },
                            }
                        },
                        --#endregion

                        --#region UI_EX_(RED|BLUE|GREEN|YELLOW)_DESC
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EX_RED_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Хроматический металл&lt;&gt;, получаемый в ходе синтеза в центре звезды.&#xA;&#xA;Этот кадмий был сформирован под воздействием экстремальных условий. Имеет высокую ценность.&#xA;&#xA;Кадмий можно найти на планетах, обращающихся вокруг &lt;FUEL&gt;красных звезд&lt;&gt;. Его можно обработать в &lt;TECHNOLOGY&gt;очистителе&lt;&gt;, чтобы создать &lt;STELLAR&gt;хроматический металл&lt;&gt;.
                                { "Russian", "&lt;STELLAR&gt;Звёздный металл&lt;&gt;, получаемый в ходе синтеза в центре звезды.&#xA;&#xA;Этот кадмий был сформирован под воздействием экстремальных условий. Имеет высокую ценность.&#xA;&#xA;Кадмий можно найти на планетах, обращающихся вокруг &lt;FUEL&gt;красных звёзд﻿.&lt;&gt; Его можно обработать в &lt;TECHNOLOGY&gt;очистителе﻿,&lt;&gt; чтобы создать &lt;STELLAR&gt;хроматический металл﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EX_BLUE_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Хроматический металл&lt;&gt;, получаемый в ходе синтеза в центре звезды.&#xA;&#xA;Индий можно найти на планетах, обращающихся вокруг &lt;TECHNOLOGY&gt;синих звезд&lt;&gt;. Его можно обработать в &lt;TECHNOLOGY&gt;очистителе&lt;&gt;, чтобы создать &lt;STELLAR&gt;хроматический металл&lt;&gt;.&#xA;&#xA;Этот индий был сформирован под воздействием экстремальных условий. Имеет высокую ценность.
                                { "Russian", "&lt;STELLAR&gt;Звёздный металл&lt;&gt;, получаемый в ходе синтеза в центре звезды.&#xA;&#xA;Индий можно найти на планетах, обращающихся вокруг &lt;TECHNOLOGY&gt;синих звёзд﻿.&lt;&gt; Его можно обработать в &lt;TECHNOLOGY&gt;очистителе﻿,&lt;&gt; чтобы создать &lt;STELLAR&gt;хроматический металл﻿.&lt;&gt;&#xA;&#xA;Этот индий был сформирован под воздействием экстремальных условий. Имеет высокую ценность." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EX_YELLOW_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Хроматический металл&lt;&gt;, получаемый в ходе синтеза в центре звезды.&#xA;&#xA;Эта медь была сформирована под воздействием экстремальных условий. Имеет высокую ценность.&#xA;&#xA;Медь можно найти на планетах, обращающихся вокруг &lt;CATALYST&gt;желтых звезд&lt;&gt;. Ее можно обработать в &lt;TECHNOLOGY&gt;очистителе&lt;&gt;, чтобы создать &lt;STELLAR&gt;хроматический металл&lt;&gt;.
                                { "Russian", "&lt;STELLAR&gt;Звёздный металл&lt;&gt;, получаемый в ходе синтеза в центре звезды.&#xA;&#xA;Эта медь была сформирована под воздействием экстремальных условий. Имеет высокую ценность.&#xA;&#xA;Медь можно найти на планетах, обращающихся вокруг &lt;CATALYST&gt;жёлтых звёзд﻿.&lt;&gt; Её можно обработать в &lt;TECHNOLOGY&gt;очистителе﻿,&lt;&gt; чтобы создать &lt;STELLAR&gt;хроматический металл﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EX_GREEN_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Хроматический металл&lt;&gt;, получаемый в ходе синтеза в центре звезды.&#xA;&#xA;Этот эмерил был сформирован под воздействием экстремальных условий. Имеет высокую ценность.&#xA;&#xA;Эмерил можно найти на планетах, обращающихся вокруг &lt;TRADEABLE&gt;зеленых звезд&lt;&gt;. Его можно обработать в &lt;TECHNOLOGY&gt;очистителе&lt;&gt;, чтобы создать &lt;STELLAR&gt;хроматический металл&lt;&gt;.
                                { "Russian", "&lt;STELLAR&gt;Звёздный металл&lt;&gt;, получаемый в ходе синтеза в центре звезды.&#xA;&#xA;Этот эмерил был сформирован под воздействием экстремальных условий. Имеет высокую ценность.&#xA;&#xA;Эмерил можно найти на планетах, обращающихся вокруг &lt;TRADEABLE&gt;зелёных звёзд﻿.&lt;&gt; Его можно обработать в &lt;TECHNOLOGY&gt;очистителе﻿,&lt;&gt; чтобы создать &lt;STELLAR&gt;хроматический металл﻿.&lt;&gt;" },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_STELLAR_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Звездный металл высокой очистки
                                -- Highly Refined Stellar Metal
                                { "Russian", "Звёздный металл тщательной очистки" },
                            }
                        },
                        { -- ну что за чушь, если животных на земле надо сканировать...
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_EXPLORE_4_ARRIVE_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- В АТМОСФЕРЕ ОБНАРУЖЕНА НЕОБЫЧНАЯ ФОРМА ЖИЗНИ
                                -- ATYPICAL LIFE DETECTED IN ATMOSPHERE
                                { "Russian", "ОБНАРУЖЕНА НЕОБЫЧНАЯ ФОРМА ЖИЗНИ НА ПЛАНЕТЕ" },
                            }
                        },
                        -- не влазеет нормально
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_TRADING_SPECIAL_9" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %CAP_RACE%, я хочу рассказать тебе об отличной возможности вложить деньги. К сожалению, несколько неудачных сделок привели к проблеме с наличностью. Если ты переведешь нам денежные средства, мы вложим их и наверняка отлично заработаем.
                                -- %CAP_RACE%, we bring you news of an excellent investment opportunity. Sadly, a series of disadvantageous trades have created a cashflow problem. If you were able to transmit funds, we could make the trade and secure you great profit.
                                { "Russian", "%CAP_RACE%, я хочу рассказать тебе об отличной возможности инвестирования. К сожалению, несколько неудачных сделок привели к проблеме с наличностью.&#xA;Если ты переведешь нам денежные средства, мы вложим их и наверняка отлично заработаем." },
                            }
                        },

                        --#region Отправить деньги / Send funds
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_TRADING_SPECIAL_OPT_A_9" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Отправить деньги
                                -- Send funds
                                { "Russian", "Отправить" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_TRADING_SPECIAL_OPT_A_10" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Отправить деньги
                                { "Russian", "Отправить" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_TRADING_SPECIAL_OPT_A_11" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Отправить деньги
                                { "Russian", "Отправить" },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_COMBAT_SPECIAL_OPT_B_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Приказать флоту сделать варп-прыжок
                                -- Direct fleet to warp away
                                { "Russian", "Приказать сделать варп-прыжок" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SUB_SIMPLE_CAT_STELLAR" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- звездный материал
                                -- stellar material
                                { "Russian", "звёздный материал" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CREATURE_NOTE_167" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сверхраскаленный желудок
                                -- Superheated stomach
                                { "Russian", "Сверхраскалённый желудок" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "INTRCT_CUSTOMISE_VEHICLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Изменение внешнего вида вездехода
                                -- Recalibrate Exocraft Visuals
                                { "Russian", "Изменить внешний вид вездехода" },
                            }
                        },
                    }
                },
            }
        }
    }
}
