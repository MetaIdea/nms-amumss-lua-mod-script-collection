--[[
    да, не канон, зато читаемо и без мильона сокращений
    когда исправят интерфейс, тогда можно будет вернуть взад
    оставил/добавил сокращения, которые используют максимум места
]] --
NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]    = "_RuFix_Farscape_Tech.pak",
    ["MOD_AUTHOR"]      = "gh0stwizard",
    ["MOD_DESCRIPTION"] = "Fix Technology, Module Names & Descriptions",
    ["NMS_VERSION"]     = "5.72",
    ["EXML_CREATE"]     = "false",
    ["MODIFICATIONS"]   = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                { -- LANGUAGE/NMS_LOC1_RUSSIAN.MBIN
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_LOC1_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        --#region VEHICLEMINER_NAME
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "VEHICLEMINER_NAME" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- РАСЩЕПИТЕЛЬ ДЛЯ ВЕЗДЕХОДА
                        --         -- EXOCRAFT MINING LASER
                        --         { "Russian", "РАСЩЕПИТЕЛЬ ВЕЗДЕХОДА" },
                        --     }
                        -- },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "VEHICLEMINER_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Расщепитель для вездехода
                                -- Exocraft Mining Laser
                                { "Russian", "Расщепитель" },
                            }
                        },
                        --#endregion

                        --#region VEHICLEWEAPON_NAME
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "VEHICLEWEAPON_NAME" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- ПОВОРОТНАЯ ПУШКА
                        --         { "Russian", "ПУШКА" },
                        --     }
                        -- },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "VEHICLEWEAPON_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поворотная пушка
                                { "Russian", "Пушка" },
                            }
                        },
                        --#endregion

                        -- Infra-knife Accelerator, что дословно ускоритель инфра-ножей.
                        -- Описание в игре: starship weapon that launches superheated globes of liquid metal.
                        -- В англ. языке infra- означает "below": ниже, под, внизу.
                        -- В др. греческом hypo- также означает ниже, под. Однако более точно - недостижение предела.
                        -- В итоге появились варианты: шаромёт, иглострел, гипосферный ускоритель,
                        -- гипосферомёт, гипокультромёт, суперножный ускоритель, лавомёт, магмамёт.
                        -- Остановился на иглостреле: коротко, нестандартно, возможно неуместно, но благозвучно.
                        -- Если кто придумает другое короткое и емкое название - велком.
                        --
                        -- В идеале переводчики должны были уточнить что такое "infra-knife" у разрабов. Потому что
                        -- такое слово есть в текстах лора игры (NMS_LOC8_RUSSIAN.MBIN).
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SHIPMINIGUN_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ИНФРАКРАСНЫЙ УСКОРИТЕЛЬ
                                -- INFRA-KNIFE ACCELERATOR
                                { "Russian", "ИГЛОСТРЕЛ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SHIPMINIGUN_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Инфракрасный ускоритель
                                -- Infra-Knife Accelerator
                                { "Russian", "Иглострел" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SHIPMGUNDMG1_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- УРОН ОТ ИНФРАКРАСНОГО УСКОРИТЕЛЯ СИГМА
                                { "Russian", "УРОН ОТ ИГЛОСТРЕЛА СИГМА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SHIPMGUNDMG1_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Урон от инфракрасного ускорителя сигма
                                { "Russian", "Урон от иглострела сигма" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SHIPMGUNDMG1_SUBTITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Дополнительный элемент инфракрасного ускорителя
                                { "Russian", "Дополнительный элемент иглострела" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SHIPMGUNDMG1_DESCRIPTION" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Немного увеличивает урон, который наносит корабельное орудие «Инфракрасный ускоритель».
                                { "Russian", "Немного увеличивает урон, который наносит корабельное орудие Иглострел." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SHIPMGUNDMG2_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- УРОН ОТ ИНФРАКРАСНОГО УСКОРИТЕЛЯ ТАУ
                                { "Russian", "УРОН ОТ ИГЛОСТРЕЛА ТАУ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SHIPMGUNDMG2_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Урон от инфракрасного ускорителя тау
                                { "Russian", "Урон от иглострела тау" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SHIPMGUNDMG2_SUBTITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Дополнительный элемент инфракрасного ускорителя
                                { "Russian", "Дополнительный элемент иглострела" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SHIPMGUNDMG2_DESCRIPTION" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Умеренно увеличивает урон, который наносит корабельное орудие «Инфракрасный ускоритель».
                                { "Russian", "Умеренно увеличивает урон, который наносит корабельное орудие Иглострел." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SHIPMGUNDMG3_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- УРОН ОТ ИНФРАКРАСНОГО УСКОРИТЕЛЯ ТЕТА
                                { "Russian", "УРОН ОТ ИГЛОСТРЕЛА ТЕТА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SHIPMGUNDMG3_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Урон от инфракрасного ускорителя тета
                                { "Russian", "Урон от иглострела тета" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SHIPMGUNDMG3_SUBTITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Дополнительный элемент инфракрасного ускорителя
                                { "Russian", "Дополнительный элемент иглострела" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SHIPMGUNDMG3_DESCRIPTION" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Значительно увеличивает урон, который наносит корабельное орудие «Инфракрасный ускоритель».
                                { "Russian", "Значительно увеличивает урон, который наносит корабельное орудие Иглострел." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SHIPMGUNRATE1_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- СКОРОСТРЕЛЬНОСТЬ ИНФРАКРАСНОГО УСКОРИТЕЛЯ СИГМА
                                { "Russian", "СКОРОСТРЕЛЬНОСТЬ ИГЛОСТРЕЛА СИГМА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SHIPMGUNRATE1_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Скорострельность инфракрасного ускорителя сигма
                                { "Russian", "Скорострельность иглострела сигма" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SHIPMGUNRATE1_SUBTITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Дополнительный элемент инфракрасного ускорителя
                                { "Russian", "Дополнительный элемент иглострела" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SHIPMGUNRATE1_DESCRIPTION" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Немного увеличивает скорострельность корабельного орудия «Инфракрасный ускоритель».
                                { "Russian", "Немного увеличивает скорострельность корабельного орудия Иглострел." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SHIPMGUNRATE2_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- СКОРОСТРЕЛЬНОСТЬ ИНФРАКРАСНОГО УСКОРИТЕЛЯ ТАУ
                                { "Russian", "СКОРОСТРЕЛЬНОСТЬ ИГЛОСТРЕЛА ТАУ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SHIPMGUNRATE2_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Скорострельность инфракрасного ускорителя тау
                                { "Russian", "Скорострельность иглострела тау" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SHIPMGUNRATE2_SUBTITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Дополнительный элемент инфракрасного ускорителя
                                { "Russian", "Дополнительный элемент иглострела" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SHIPMGUNRATE2_DESCRIPTION" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Умеренно увеличивает скорострельность корабельного орудия «Инфракрасный ускоритель».
                                { "Russian", "Умеренно увеличивает скорострельность корабельного орудия Иглострел." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SHIPMGUNRATE3_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- СКОРОСТРЕЛЬНОСТЬ ИНФРАКРАСНОГО УСКОРИТЕЛЯ ТЕТА
                                { "Russian", "СКОРОСТРЕЛЬНОСТЬ ИГЛОСТРЕЛА ТЕТА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SHIPMGUNRATE3_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Скорострельность инфракрасного ускорителя тета
                                { "Russian", "Скорострельность иглострела тета" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SHIPMGUNRATE3_SUBTITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Дополнительный элемент инфракрасного ускорителя
                                { "Russian", "Дополнительный элемент иглострела" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SHIPMGUNRATE3_DESCRIPTION" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Значительно увеличивает скорострельность корабельного орудия «Инфракрасный ускоритель».
                                { "Russian", "Значительно увеличивает скорострельность корабельного орудия Иглострел." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SHIPMGUNCOOL1_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ОХЛАЖДЕНИЕ ИНФРАКРАСНОГО УСКОРИТЕЛЯ СИГМА
                                { "Russian", "ОХЛАЖДЕНИЕ ИГЛОСТРЕЛА СИГМА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SHIPMGUNCOOL1_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Охлаждение инфракрасного ускорителя сигма
                                { "Russian", "Охлаждение иглострела сигма" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SHIPMGUNCOOL1_SUBTITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Дополнительный элемент инфракрасного ускорителя
                                { "Russian", "Дополнительный элемент иглострела" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SHIPMGUNCOOL1_DESCRIPTION" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Немного сокращает время между выстрелами корабельного орудия «Инфракрасный ускоритель».
                                { "Russian", "Немного сокращает время между выстрелами корабельного орудия Иглострел." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SHIPMGUNCOOL2_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ОХЛАЖДЕНИЕ ИНФРАКРАСНОГО УСКОРИТЕЛЯ ТАУ
                                { "Russian", "ОХЛАЖДЕНИЕ ИГЛОСТРЕЛА ТАУ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SHIPMGUNCOOL2_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Охлаждение инфракрасного ускорителя тау
                                { "Russian", "Охлаждение иглострела тау" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SHIPMGUNCOOL2_SUBTITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Дополнительный элемент инфракрасного ускорителя
                                { "Russian", "Дополнительный элемент иглострела" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SHIPMGUNCOOL2_DESCRIPTION" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Умеренно сокращает время между выстрелами корабельного орудия «Инфракрасный ускоритель».
                                { "Russian", "Умеренно сокращает время между выстрелами корабельного орудия Иглострел." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SHIPMGUNCOOL3_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ОХЛАЖДЕНИЕ ИНФРАКРАСНОГО УСКОРИТЕЛЯ ТЕТА
                                { "Russian", "ОХЛАЖДЕНИЕ ИГЛОСТРЕЛА ТЕТА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SHIPMGUNCOOL3_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Охлаждение инфракрасного ускорителя тета
                                { "Russian", "Охлаждение иглострела тета" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SHIPMGUNCOOL3_SUBTITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Дополнительный элемент инфракрасного ускорителя
                                { "Russian", "Дополнительный элемент иглострела" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SHIPMGUNCOOL3_DESCRIPTION" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Значительно сокращает время между выстрелами корабельного орудия «Инфракрасный ускоритель».
                                { "Russian", "Значительно сокращает время между выстрелами корабельного орудия Иглострел." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SHIPSHOTGUN_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Позитронный эжектор
                                { "Russian", "β+ эжектор" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SHIPBLOB_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Циклотронная баллиста
                                { "Russian", "Циклотронитон" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ARMOUR1_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. ЗДОР. СИГМА
                                -- HEALTH MODULE SIGMA
                                { "Russian", "МОДУЛЬ ЗДОРОВЬЯ СИГМА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ARMOUR1_ALT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. ЗДОР. СИГМА
                                -- HEALTH MODULE SIGMA
                                { "Russian", "МОДУЛЬ ЗДОРОВЬЯ СИГМА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ARMOUR2_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. ЗДОР. ТАУ
                                -- HEALTH MODULE TAU
                                { "Russian", "МОДУЛЬ ЗДОРОВЬЯ ТАУ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ARMOUR2_ALT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. ЗДОР. ТАУ
                                -- HEALTH MODULE TAU
                                { "Russian", "МОДУЛЬ ЗДОРОВЬЯ ТАУ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ARMOUR3_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. ЗДОР. ТЕТА
                                -- HEALTH MODULE THETA
                                { "Russian", "МОДУЛЬ ЗДОРОВЬЯ ТЕТА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ARMOUR3_ALT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. ЗДОР. ТЕТА
                                -- HEALTH MODULE THETA
                                { "Russian", "МОДУЛЬ ЗДОРОВЬЯ ТЕТА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ENERGYBOOST1_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. СИСТ. ЖИЗН. СИГМА
                                -- LIFE SUPPORT MODULE SIGMA
                                { "Russian", "МОДУЛЬ ЖИЗНЕОБЕСПЕЧЕНИЯ СИГМА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ENERGYBOOST1_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Модуль системы жизнеобеспечения сигма
                                -- Life Support Module Sigma
                                { "Russian", "Модуль жизнеобеспечения сигма" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ENERGYBOOST2_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. СИСТ. ЖИЗН.ТАУ
                                -- LIFE SUPPORT MODULE TAU
                                { "Russian", "МОДУЛЬ ЖИЗНЕОБЕСПЕЧЕНИЯ ТАУ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ENERGYBOOST2_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Модуль системы жизнеобеспечения тау
                                -- Life Support Module Tau
                                { "Russian", "Модуль жизнеобеспечения тау" },
                            }
                        },
                        -- в общем, Бластер-дробовик прокручивается
                        -- очень долго думал, искал как заменить - очень сложно
                        -- с учетом того, что в звездных войнах бластер это винтовка..
                        -- в итоге выбрал блазер - кто в теме, тот поймет
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BOLTSHOTGUN_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- БЛАСТЕР-РАССЕИВАТЕЛЬ
                                -- SCATTER BLASTER
                                { "Russian", "БЛАЗЕР" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BOLTSHOTGUN_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Бластер-рассеиватель
                                -- Scatter Blaster
                                { "Russian", "Блазер" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BOLTSHOTGUN_DESCRIPTION" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Специализированный модуль &lt;STELLAR&gt;ближнего боя&lt;&gt; для &lt;TECHNOLOGY&gt;мультитула&lt;&gt;. Нажмите &lt;IMG&gt;CYCLEWEAPON&lt;&gt;, чтобы выбрать режим стрельбы. Чтобы выстрелить, нажмите &lt;IMG&gt;ATTACK&lt;&gt;.&#xA;&#xA;&lt;TECHNOLOGY&gt;Бластер-рассеиватель&lt;&gt; изменяет конфигурацию мультитула, позволяя ему нагревать и раскалывать &lt;EARTH&gt;металл&lt;&gt;. Обладает &lt;STELLAR&gt;широкой областью поражения&lt;&gt;. Дальность весьма ограничена, однако вблизи шрапнель крайне эффективна.
                                -- Specialist &lt;STELLAR&gt;close combat&lt;&gt; weapon attachment for the &lt;TECHNOLOGY&gt;Multi-Tool&lt;&gt;. Access fire mode by pressing &lt;IMG&gt;CYCLEWEAPON&lt;&gt; and fire weapon with &lt;IMG&gt;ATTACK&lt;&gt;.&#xA;&#xA;The &lt;TECHNOLOGY&gt;Scatter Blaster&lt;&gt; reconfigures the Multi-Tool to heat and shatter &lt;EARTH&gt;Metallic Elements&lt;&gt;, firing them in a &lt;STELLAR&gt;wide cone of destruction&lt;&gt;. Range is limited, but the shrapnel is highly effective at close range.
                                { "Russian", "Специальный модуль &lt;STELLAR&gt;ближнего боя&lt;&gt; для &lt;TECHNOLOGY&gt;мультитула﻿.&lt;&gt; Нажмите &lt;IMG&gt;CYCLEWEAPON&lt;&gt;, чтобы выбрать режим стрельбы. Чтобы выстрелить, нажмите &lt;IMG&gt;ATTACK&lt;&gt;.&#xA;&#xA;&lt;TECHNOLOGY&gt;Блазер&lt;&gt; изменяет конфигурацию мультитула, позволяя ему нагревать и раскалывать &lt;EARTH&gt;металл﻿.&lt;&gt; Обладает &lt;STELLAR&gt;широкой областью поражения﻿.&lt;&gt; Дальность весьма ограничена, однако вблизи шрапнель крайне эффективна." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SHOTGUNDMG1_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- УРОН ОТ БЛАСТЕРА-РАССЕИВАТЕЛЯ СИГМА
                                -- SCATTER BLASTER DAMAGE SIGMA
                                { "Russian", "УРОН ОТ БЛАЗЕРА СИГМА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SHOTGUNDMG1_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Урон от бластера-рассеивателя сигма
                                -- Scatter Blaster Damage Sigma
                                { "Russian", "Урон от блазера сигма" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SHOTGUNDMG2_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- УРОН ОТ БЛАСТЕРА-РАССЕИВАТЕЛЯ ТАУ
                                -- SCATTER BLASTER DAMAGE TAU
                                { "Russian", "УРОН ОТ БЛАЗЕРА ТАУ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SHOTGUNDMG2_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Урон от бластера-рассеивателя тау
                                -- Scatter Blaster Damage Tau
                                { "Russian", "Урон от блазера тау" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SHOTGUNDMG3_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- УРОН ОТ БЛАСТЕРА-РАССЕИВАТЕЛЯ ТЕТА
                                -- SCATTER BLASTER DAMAGE THETA
                                { "Russian", "УРОН ОТ БЛАЗЕРА ТЕТА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SHOTGUNDMG3_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Урон от бластера-рассеивателя тета
                                -- Scatter Blaster Damage Theta
                                { "Russian", "Урон от блазера тета" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SHOTGUNDMG1_DESCRIPTION" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Немного увеличивает урон, который наносит режим вооружения «Бластер-рассеиватель».
                                -- Increases damage done by the Multi-tool's Scatter Blaster weapon mode by a small amount
                                { "Russian", "Немного увеличивает урон, который наносит режим вооружения Блазер." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SHOTGUNDMG2_DESCRIPTION" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Умеренно увеличивает урон, который наносит режим вооружения «Бластер-рассеиватель».
                                -- Increases damage done by the Multi-tool's Scatter Blaster weapon mode by a moderate amount
                                { "Russian", "Умеренно увеличивает урон, который наносит режим вооружения Блазер." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SHOTGUNDMG3_DESCRIPTION" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Значительно увеличивает урон, который наносит режим вооружения «Бластер-рассеиватель».
                                -- Increases damage done by the Multi-tool's Scatter Blaster weapon mode by a large amount
                                { "Russian", "Значительно увеличивает урон, который наносит режим вооружения Блазер." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SHOTGUNCLIP1_DESCRIPTION" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Немного увеличивает количество снарядов, которое может выпустить бластер-рассеиватель, прежде чем ему потребуется перезарядка.
                                -- Increases amount of ammunition held by the Multi-tool's Scatter Blaster weapon mode before a reload is required by a small amount
                                { "Russian", "Немного увеличивает количество снарядов, которое может выпустить блазер, прежде чем ему потребуется перезарядка." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SHOTGUNCLIP2_DESCRIPTION" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Умеренно увеличивает количество снарядов, которое может выпустить бластер-рассеиватель, прежде чем ему потребуется перезарядка.
                                -- Increases amount of ammunition held by the Multi-tool's Scatter Blaster weapon mode before a reload is required by a moderate amount
                                { "Russian", "Умеренно увеличивает количество снарядов, которое может выпустить блазер, прежде чем ему потребуется перезарядка." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SHOTGUNCLIP3_DESCRIPTION" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Значительно увеличивает количество снарядов, которое может выпустить бластер-рассеиватель, прежде чем ему потребуется перезарядка.
                                -- Increases amount of ammunition held by the Multi-tool's Scatter Blaster weapon mode before a reload is required by a large amount
                                { "Russian", "Значительно увеличивает количество снарядов, которое может выпустить блазер, прежде чем ему потребуется перезарядка." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SHOTGUNREL1_DESCRIPTION" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Немного увеличивает скорость перезарядки режима вооружения «Бластер-рассеиватель».
                                -- Increases reload speed for the Multi-tool's Scatter Blaster weapon mode by a small amount
                                { "Russian", "Немного увеличивает скорость перезарядки режима вооружения Блазер." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SHOTGUNREL2_DESCRIPTION" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Умеренно увеличивает скорость перезарядки режима вооружения «Бластер-рассеиватель».
                                -- Increases reload speed for the Multi-tool's Scatter Blaster weapon mode by a moderate amount
                                { "Russian", "Умеренно увеличивает скорость перезарядки режима вооружения Блазер." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SHOTGUNREL3_DESCRIPTION" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Значительно увеличивает скорость перезарядки режима вооружения «Бластер-рассеиватель».
                                -- Increases reload speed for the Multi-tool's Scatter Blaster weapon mode by a large amount
                                { "Russian", "Значительно увеличивает скорость перезарядки режима вооружения Блазер." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BOLTSMG_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ИМПУЛЬСНЫЙ СКОРОСТРЕЛ
                                -- PULSE SPITTER
                                { "Russian", "ПЛЕВУН" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BOLTSMG_DESCRIPTION" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Специализированный боевой модуль &lt;TECHNOLOGY&gt;мультитула&lt;&gt; с &lt;STELLAR&gt;высокой скоростью стрельбы&lt;&gt;. Нажмите &lt;IMG&gt;CYCLEWEAPON&lt;&gt;, чтобы выбрать режим стрельбы. Чтобы выстрелить, нажмите &lt;IMG&gt;ATTACK&lt;&gt;.&#xA;&#xA;&lt;TECHNOLOGY&gt;Импульсный скорострел&lt;&gt; перестраивает оптику мультитула на ионизацию введенных в него &lt;EARTH&gt;металлов&lt;&gt;. Создаваемые снаряды выстреливаются очередями и с большой скоростью, поражая потенциальные цели &lt;STELLAR&gt;высокоактивной плазмой&lt;&gt;.
                                -- Specialist &lt;STELLAR&gt;rapid fire&lt;&gt; weapon attachment for the &lt;TECHNOLOGY&gt;Multi-Tool&lt;&gt;. Access fire mode by pressing &lt;IMG&gt;CYCLEWEAPON&lt;&gt; and fire weapon with &lt;IMG&gt;ATTACK&lt;&gt;.&#xA;&#xA;The &lt;TECHNOLOGY&gt;Pulse Spitter&lt;&gt; redirects Multi-Tool optics to ionise inserted &lt;EARTH&gt;Metallic Elements&lt;&gt;. These projectiles are launched in a rapid-fire spread, bombarding potential targets with a &lt;STELLAR&gt;wave of high-energy plasma&lt;&gt;.
                                { "Russian", "Специальный боевой модуль &lt;TECHNOLOGY&gt;мультитула&lt;&gt; с &lt;STELLAR&gt;высокой скоростью стрельбы﻿.&lt;&gt; Нажмите &lt;IMG&gt;CYCLEWEAPON&lt;&gt;, чтобы выбрать режим стрельбы. Чтобы выстрелить, нажмите &lt;IMG&gt;ATTACK&lt;&gt;.&#xA;&#xA;&lt;TECHNOLOGY&gt;Плевун&lt;&gt; перестраивает оптику мультитула на ионизацию введенных в него &lt;EARTH&gt;металлов﻿.&lt;&gt; Создаваемые снаряды выстреливаются очередями и с большой скоростью, поражая потенциальные цели &lt;STELLAR&gt;высокоактивной плазмой﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BOLTSMG_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Импульсный скорострел
                                -- Pulse Spitter
                                { "Russian", "Плевун" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SMGDMG1_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- УРОН ОТ ИМПУЛЬСНОГО СКОРОСТРЕЛА СИГМА
                                -- PULSE SPITTER DAMAGE SIGMA
                                { "Russian", "УРОН ОТ ПЛЕВУНА СИГМА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SMGDMG1_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Урон от импульсного скорострела сигма
                                -- Pulse Spitter Damage Sigma
                                { "Russian", "Урон от плевуна сигма" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SMGDMG2_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- УРОН ОТ ИМПУЛЬСНОГО СКОРОСТРЕЛА ТАУ
                                -- PULSE SPITTER DAMAGE TAU
                                { "Russian", "УРОН ОТ ПЛЕВУНА ТАУ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SMGDMG2_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Урон от импульсного скорострела тау
                                -- Pulse Spitter Damage Tau
                                { "Russian", "Урон от плевуна тау" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SMGDMG3_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- УРОН ОТ ИМПУЛЬСНОГО СКОРОСТРЕЛА ТЕТА
                                -- PULSE SPITTER DAMAGE THETA
                                { "Russian", "УРОН ОТ ПЛЕВУНА ТЕТА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SMGDMG3_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Урон от импульсного скорострела тета
                                -- Pulse Spitter Damage Theta
                                { "Russian", "Урон от плевуна тета" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SMGDMG1_SUBTITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Дополнительный элемент импульсного скорострела
                                -- Pulse Spitter Companion Unit
                                { "Russian", "Дополнительный элемент плевуна" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SMGDMG1_DESCRIPTION" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Немного увеличивает урон, который наносит режим вооружения «Импульсный скорострел».
                                -- Increases damage done by the Multi-tool's Pulse Spitter weapon mode by a small amount
                                { "Russian", "Немного увеличивает урон, который наносит режим вооружения Плевун." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SMGDMG2_SUBTITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Дополнительный элемент импульсного скорострела
                                -- Pulse Spitter Companion Unit
                                { "Russian", "Дополнительный элемент плевуна" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SMGDMG2_DESCRIPTION" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Умеренно увеличивает урон, который наносит режим вооружения «Импульсный скорострел».
                                -- Increases damage done by the Multi-tool's Pulse Spitter weapon mode by a moderate amount
                                { "Russian", "Умеренно увеличивает урон, который наносит режим вооружения Плевун." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SMGDMG3_SUBTITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Дополнительный элемент импульсного скорострела
                                -- Pulse Spitter Companion Unit
                                { "Russian", "Дополнительный элемент плевуна" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SMGDMG3_DESCRIPTION" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Значительно увеличивает урон, который наносит режим вооружения «Импульсный скорострел».
                                -- Increases damage done by the Multi-tool's Pulse Spitter weapon mode by a large amount
                                { "Russian", "Значительно увеличивает урон, который наносит режим вооружения Плевун." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SMGACC1_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ТОЧНОСТЬ ИМПУЛЬСНОГО СКОРОСТРЕЛА СИГМА
                                -- PULSE SPITTER ACCURACY SIGMA
                                { "Russian", "ТОЧНОСТЬ ПЛЕВУНА СИГМА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SMGACC1_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Точность импульсного скорострела сигма
                                -- Pulse Spitter Accuracy Sigma
                                { "Russian", "Точность плевуна сигма" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SMGACC1_SUBTITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Дополнительный элемент импульсного скорострела
                                -- Pulse Spitter Companion Unit
                                { "Russian", "Дополнительный элемент плевуна" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SMGACC1_DESCRIPTION" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Немного увеличивает точность импульсного скорострела за счет уменьшения разброса снарядов.
                                -- Increases accuracy of the Multi-tool's Pulse Spitter weapon mode by reducing the spread of the projectile by a small amount
                                { "Russian", "Немного увеличивает точность плевуна за счет уменьшения разброса снарядов." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SMGACC2_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ТОЧНОСТЬ ИМПУЛЬСНОГО СКОРОСТРЕЛА ТАУ
                                -- PULSE SPITTER ACCURACY TAU
                                { "Russian", "ТОЧНОСТЬ ПЛЕВУНА ТАУ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SMGACC2_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Точность импульсного скорострела тау
                                -- Pulse Spitter Accuracy Tau
                                { "Russian", "Точность плевуна тау" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SMGACC2_SUBTITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Дополнительный элемент импульсного скорострела
                                -- Pulse Spitter Companion Unit
                                { "Russian", "Дополнительный элемент плевуна" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SMGACC2_DESCRIPTION" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Умеренно увеличивает точность импульсного скорострела за счет уменьшения разброса снарядов.
                                -- Increases accuracy of the Multi-tool's Pulse Spitter weapon mode by reducing the spread of the projectile by a moderate amount
                                { "Russian", "Умеренно увеличивает точность плевуна за счет уменьшения разброса снарядов." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SMGACC3_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ТОЧНОСТЬ ИМПУЛЬСНОГО СКОРОСТРЕЛА ТЕТА
                                -- PULSE SPITTER ACCURACY THETA
                                { "Russian", "ТОЧНОСТЬ ПЛЕВУНА ТЕТА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SMGACC3_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Точность импульсного скорострела тета
                                -- Pulse Spitter Accuracy Theta
                                { "Russian", "Точность плевуна тета" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SMGACC3_SUBTITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Дополнительный элемент импульсного скорострела
                                -- Pulse Spitter Companion Unit
                                { "Russian", "Дополнительный элемент плевуна" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SMGACC3_DESCRIPTION" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Значительно увеличивает точность импульсного скорострела за счет уменьшения разброса снарядов.
                                -- Increases accuracy of the Multi-tool's Pulse Spitter weapon mode by reducing the spread of the projectile by a large amount
                                { "Russian", "Значительно увеличивает точность плевуна за счет уменьшения разброса снарядов." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SMGREL1_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПЕРЕЗАРЯДКА ИМПУЛЬСНОГО СКОРОСТРЕЛА СИГМА
                                -- PULSE SPITTER RELOAD SIGMA
                                { "Russian", "ПЕРЕЗАРЯДКА ПЛЕВУНА СИГМА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SMGREL1_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Перезарядка импульсного скорострела сигма
                                -- Pulse Spitter Reload Sigma
                                { "Russian", "Перезарядка плевуна сигма" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SMGREL1_SUBTITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Дополнительный элемент импульсного скорострела
                                -- Pulse Spitter Companion Unit
                                { "Russian", "Дополнительный элемент плевуна" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SMGREL1_DESCRIPTION" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Немного увеличивает скорость перезарядки режима вооружения «Импульсный скорострел».
                                -- Increases reload speed for the Multi-tool's Pulse Spitter weapon mode by a small amount
                                { "Russian", "Немного увеличивает скорость перезарядки режима вооружения Плевуна." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SMGREL2_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПЕРЕЗАРЯДКА ИМПУЛЬСНОГО СКОРОСТРЕЛА ТАУ
                                -- PULSE SPITTER RELOAD TAU
                                { "Russian", "ПЕРЕЗАРЯДКА ПЛЕВУНА ТАУ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SMGREL2_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Перезарядка импульсного скорострела тау
                                -- Pulse Spitter Reload Tau
                                { "Russian", "Перезарядка плевуна тау" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SMGREL2_SUBTITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Дополнительный элемент импульсного скорострела
                                -- Pulse Spitter Companion Unit
                                { "Russian", "Дополнительный элемент плевуна" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SMGREL2_DESCRIPTION" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Умеренно увеличивает скорость перезарядки режима вооружения «Импульсный скорострел».
                                -- Increases reload speed for the Multi-tool's Pulse Spitter weapon mode by a moderate amount
                                { "Russian", "Умеренно увеличивает скорость перезарядки режима вооружения Плевуна." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SMGREL3_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПЕРЕЗАРЯДКА ИМПУЛЬСНОГО СКОРОСТРЕЛА ТЕТА
                                -- PULSE SPITTER RELOAD THETA
                                { "Russian", "ПЕРЕЗАРЯДКА ПЛЕВУНА ТЕТА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SMGREL3_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Перезарядка импульсного скорострела тета
                                -- Pulse Spitter Reload Theta
                                { "Russian", "Перезарядка плевуна тета" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SMGREL3_SUBTITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Дополнительный элемент импульсного скорострела
                                -- Pulse Spitter Companion Unit
                                { "Russian", "Дополнительный элемент плевуна" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SMGREL3_DESCRIPTION" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Значительно увеличивает скорость перезарядки режима вооружения «Импульсный скорострел».
                                -- Increases reload speed for the Multi-tool's Pulse Spitter weapon mode by a large amount
                                { "Russian", "Значительно увеличивает скорость перезарядки режима вооружения Плевуна." },
                            }
                        },
                        --
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "VEHICLEMINER_U1_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- УЛУЧШЕННЫЙ РАСЩЕПИТЕЛЬ ДЛЯ ВЕЗДЕХОДА
                                -- ADVANCED EXOCRAFT LASER
                                { "Russian", "ПРОДВИНУТЫЙ ЛАЗЕР ВЕЗДЕХОДА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "VEHICLEMINER_U1_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Улучшенный расщепитель для вездехода
                                -- Advanced Exocraft Laser
                                { "Russian", "Продвинутый лазер вездехода" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "VEHICLEMINER_SUBTITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добывающее приспособление для вездехода
                                -- Exocraft Mining Attachment
                                { "Russian", "Горнодобывающее оборудование" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "VEHICLEAAWEAPON_U1_SUBTITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Улучшение вооружения для вездехода
                                -- Exocraft Weapon Upgrade
                                { "Russian", "Улучшение вооружения вездехода" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "VEHICLEMINER_U1_SUBTITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Улучшение расщепителя для вездехода
                                -- Exocraft Mining Upgrade
                                { "Russian", "Улучшение расщепителя вездехода" },
                            }
                        },
                        --
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "VEHICLESCAN_U2_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- РЕЗОНАТОР МОЩНОСТИ РАДАРА
                                -- RADAR POWER RESONATOR
                                { "Russian", "РЕЗОНАТОР ДЛЯ РАДАРА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "VEHICLESCAN_U2_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Позволяет радару вездехода обнаруживать дополнительные типы построек.
                                -- Allows for additional building types to be acquired by the Exocraft Radar.
                                { "Russian", "&lt;TECHNOLOGY&gt;Резонатор мощности радара&lt;&gt; для вездехода позволяет обнаруживать дополнительные типы построек." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "VEHICLESCAN_U1_SUBTITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Улучшение модуля обнаружения сигналов вездехода
                                -- Exocraft Signal Detection Upgrade
                                { "Russian", "Улучшение радара вездехода" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "VEHICLESCAN_U2_SUBTITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Улучшение модуля обнаружения сигналов вездехода
                                -- Exocraft Signal Detection Upgrade
                                { "Russian", "Улучшение радара вездехода" },
                            }
                        },
                        -- все нужно превращать в системы? матрица в голове, епрст
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ENERGY_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- СИСТЕМА ЖИЗНЕОБЕСПЕЧЕНИЯ
                                -- LIFE SUPPORT
                                { "Russian", "ЖИЗНЕОБЕСПЕЧЕНИЕ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ENERGY_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Система жизнеобеспечения
                                -- Life Support
                                { "Russian", "Жизнеобеспечение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SHIPSHOTGUN_SUBTITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Оружие звездолета ближнего боя
                                -- Close Range Starship Weapon
                                { "Russian", "Оружие звездолёта для ближнего боя" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SHIPBLOB_SUBTITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Оружие звездолета для борьбы с электроникой
                                -- Anti-Electronics Starship Weapon
                                { "Russian", "Электромагнитное оружие звездолёта" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ENERGY_SUBTITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Батарея системы жизнеобеспечения
                                -- Suit Survival Power Pack
                                { "Russian", "Блок питания системы жизнеобеспечения" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SHIPJUMP_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ИМПУЛЬСНЫЙ ДВИГАТЕЛЬ
                                -- PULSE ENGINE
                                { "Russian", "ПЛАЗМОДВИГАТЕЛЬ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SHIPJUMP_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Импульсный двигатель
                                -- Pulse Engine
                                { "Russian", "Плазмодвигатель" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BOLTSHOTGUN_SUBTITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Кинетическое оружие с разбросом снарядов
                                -- Scatter Shot Projectile Weapon
                                { "Russian", "Дробовик" },
                            }
                        },
                    }
                },
                { -- LANGUAGE/NMS_LOC4_RUSSIAN.MBIN
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_LOC4_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        --#region Пушка Наутилона
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SUBGUN_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПУШКА «НАУТИЛОНА»
                                -- NAUTILON CANNON
                                { "Russian", "МОРТИРА НАУТИЛОНА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SUBGUN_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Пушка «Наутилона»
                                -- Nautilon Cannon
                                { "Russian", "Мортира" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SUBGUN1_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. ПУШКИ «НАУТИЛОНА»
                                -- NAUTILON CANNON MODULE
                                { "Russian", "МОД. МОРТИРЫ НАУТИЛОНА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SUBGUN1_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Модуль пушки «Наутилона»
                                { "Russian", "Модуль мортиры Наутилона" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SUBGUN2_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. ПУШКИ «НАУТИЛОНА»
                                -- NAUTILON CANNON MODULE
                                { "Russian", "МОД. МОРТИРЫ НАУТИЛОНА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SUBGUN2_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Модуль пушки «Наутилона»
                                { "Russian", "Модуль мортиры Наутилона" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SUBGUN3_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. ПУШКИ «НАУТИЛОНА»
                                -- NAUTILON CANNON MODULE
                                { "Russian", "МОД. МОРТИРЫ НАУТИЛОНА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SUBGUN3_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Модуль пушки «Наутилона»
                                { "Russian", "Модуль мортиры Наутилона" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SUBGUN4_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. ПУШКИ «НАУТИЛОНА»
                                -- NAUTILON CANNON MODULE
                                { "Russian", "МОД. МОРТИРЫ НАУТИЛОНА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SUBGUN4_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Модуль пушки «Наутилона»
                                { "Russian", "Модуль мортиры Наутилона" },
                            }
                        },
                        --#endregion

                        --#region Первая часть описания модулей
                        -- Перед точкой в самом конце добавлен символ U+feff, чтобы точка не переносилась.
                        -- Пример, где переносится точка: "Превосходное улучшение для технологии Отражающий щит."
                        -- Лучше было бы использовать U+2060 (WORD JOINER), но этого символа почему-то нет в шрифте
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UPGRADE_DESC_LVL1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TRADEABLE&gt;Среднее&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;%NAME%&lt;&gt;.
                                -- A &lt;TRADEABLE&gt;moderate&lt;&gt; upgrade for the &lt;TECHNOLOGY&gt;%NAME%&lt;&gt;.
                                { "Russian", "&lt;TRADEABLE&gt;Среднее&lt;&gt; улучшение для технологии &lt;TECHNOLOGY&gt;%NAME%﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UPGRADE_DESC_LVL2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;Значительное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;%NAME%&lt;&gt;.
                                -- A &lt;TECHNOLOGY&gt;significant&lt;&gt; upgrade for the &lt;TECHNOLOGY&gt;%NAME%&lt;&gt;.
                                { "Russian", "&lt;TECHNOLOGY&gt;Значительное&lt;&gt; улучшение для технологии &lt;TECHNOLOGY&gt;%NAME%﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UPGRADE_DESC_LVL3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Невероятно мощное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;%NAME%&lt;&gt;.
                                -- An &lt;SPECIAL&gt;extremely powerful&lt;&gt; upgrade for the &lt;TECHNOLOGY&gt;%NAME%&lt;&gt;.
                                { "Russian", "&lt;SPECIAL&gt;Невероятно мощное&lt;&gt; улучшение для технологии &lt;TECHNOLOGY&gt;%NAME%﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UPGRADE_DESC_LVL4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;COMMODITY&gt;Превосходное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;%NAME%&lt;&gt;.
                                -- A &lt;COMMODITY&gt;supreme&lt;&gt; upgrade for the &lt;TECHNOLOGY&gt;%NAME%&lt;&gt;.
                                { "Russian", "&lt;COMMODITY&gt;Превосходное&lt;&gt; улучшение для технологии &lt;TECHNOLOGY&gt;%NAME%﻿.&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region Разное
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UT_JUMP_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Улучшение экзокостюма
                                -- Exosuit Upgrade
                                { "Russian", "Улучшение реактивного ранца" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_UNW1_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Улучш. системы подачи кислорода под водой
                                -- Underwater Oxygen Upgrade
                                { "Russian", "Улучшение аэрационной мембраны" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_UNW2_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Знач. улучш. системы подачи кислорода под водой
                                { "Russian", "Значительное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_UNW3_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Мощное улучш. сист. подачи кислорода под водой
                                { "Russian", "Мощное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIELDBOOST1_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Улучшение защитных систем
                                { "Russian", "Улучшение защиты экзокостюма" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIELDBOOST2_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Знач. улучш. защитных систем
                                { "Russian", "Значительное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIELDBOOST3_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Мощное улучшение защитных систем
                                { "Russian", "Мощное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIELDBOOST4_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Превосходное улучшение защитных систем
                                { "Russian", "Превосходное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_ENERGY1_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Значит. улучшение системы жизнеобеспечения
                                { "Russian", "Значительное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_ENERGY2_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Мощное улучшение системы жизнеобеспечения
                                { "Russian", "Мощное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_ENERGY3_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Превосх. улучшение системы жизнеобеспечения
                                { "Russian", "Превосходное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "HAZ_U1_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Улучшение защиты от вредных факторов
                                { "Russian", "Улучшение системы безопасности" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "HAZ_U2_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Знач. улучш. защиты от вредных факторов
                                { "Russian", "Значительное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "HAZ_U3_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Мощное улучшение защиты от вредных факторов
                                { "Russian", "Мощное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "HAZ_U4_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Превосходное улучшение защиты от вредных факторов
                                { "Russian", "Превосходное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UT_SHOT_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Улучшение бластера-рассеивателя
                                -- Scatter Blaster Upgrade
                                { "Russian", "Улучшение блазера" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHOTGUN1_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Улучшение бластера-рассеивателя
                                { "Russian", "Улучшение блазера" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHOTGUN2_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Знач. улучш. бластера-рассеивателя
                                { "Russian", "Значительное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHOTGUN3_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Мощное улучшение бластера-рассеивателя
                                { "Russian", "Мощное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHOTGUN4_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Превосходное улучшение бластера-рассеивателя
                                { "Russian", "Превосходное улучшение" },
                            }
                        },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "UP_RAIL1_SUB" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Улучшение пламенного копья
                        --         { "Russian", "Улучшение пламенного копья" },
                        --     }
                        -- },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_RAIL2_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Знач. улучш. пламенного копья
                                { "Russian", "Значительное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_RAIL3_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Мощное улучшение пламенного копья
                                { "Russian", "Мощное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_RAIL4_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Превосходное улучшение пламенного копья
                                { "Russian", "Превосходное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_EXOSUB1_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Улучшение двигателя подводной лодки
                                { "Russian", "Улучшение двигателя Наутилона" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_EXOSUB2_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Знач. улучш. двигателя подводной лодки
                                { "Russian", "Значительное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_EXOSUB3_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Мощное улучшение двигателя подводной лодки
                                { "Russian", "Мощное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_EXOSUB4_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Превосходное улучшение двигателя подводной лодки
                                { "Russian", "Превосходное улучшение" },
                            }
                        },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "UP_EXOBOOST1_SUB" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Улучшение модуля ускорения вездехода
                        --         { "Russian", "Улучшение модуля ускорения вездехода" },
                        --     }
                        -- },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_EXOBOOST2_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Знач. улучш. модуля ускорения вездехода
                                { "Russian", "Значительное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_EXOBOOST3_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Мощное улучшение модуля ускорения вездехода
                                { "Russian", "Мощное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_EXOBOOST4_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Превосходное улучшение модуля ускорения вездехода
                                { "Russian", "Превосходное улучшение" },
                            }
                        },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "UP_EXO_ENG1_SUB" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Улучшение двигателя вездехода
                        --         { "Russian", "Улучшение двигателя вездехода" },
                        --     }
                        -- },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_EXO_ENG2_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Знач. улучш. двигателя вездехода
                                { "Russian", "Значительное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_EXO_ENG3_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Мощное улучшение двигателя вездехода
                                { "Russian", "Мощное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_EXO_ENG4_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Превосходное улучшение двигателя вездехода
                                { "Russian", "Превосходное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_PULSE1_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Улучшение импульсного двигателя
                                { "Russian", "Улучшение плазмодвигателя" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_PULSE2_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Знач. улучш. импульсного двигателя
                                { "Russian", "Значительное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_PULSE3_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Мощное улучшение импульсного двигателя
                                { "Russian", "Мощное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_PULSE4_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Превосходное улучшение импульсного двигателя
                                { "Russian", "Превосходное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "VEHICLE_GRIP2_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- УЛУЧШАЮЩАЯ СЦЕПЛЕНИЕ ПОДВЕСКА
                                -- GRIP BOOST SUSPENSION
                                { "Russian", "УСИЛИТЕЛЬ СЦЕПЛЕНИЯ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "VEHICLE_GRIP2_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Улучшающая сцепление подвеска
                                -- Grip Boost Suspension
                                { "Russian", "Подвеска с усилением сцепления" },
                            }
                        },
                        --#endregion

                        --#region Улучшение класса
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UPGRADE_SUB_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Улучшение класса С (%NAME%)
                                -- C-Class %NAME% Upgrade
                                { "Russian", "Улучшение класса С" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UPGRADE_SUB_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Улучшение класса В (%NAME%)
                                -- B-Class %NAME% Upgrade
                                { "Russian", "Улучшение класса В" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UPGRADE_SUB_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Улучшение класса А (%NAME%)
                                -- A-Class %NAME% Upgrade
                                { "Russian", "Улучшение класса А" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UPGRADE_SUB_4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Улучшение класса S (%NAME%)
                                -- S-Class %NAME% Upgrade
                                { "Russian", "Улучшение класса S" },
                            }
                        },
                        --#endregion

                        --#region Знач. улучш.
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_LAUNCH2_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Значительное улучшение взлетных ускорителей
                                -- Significant Launch Thrusters Upgrade
                                { "Russian", "Значительное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SUBGUN2_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Знач. улучш. пушки «Наутилона»
                                { "Russian", "Значительное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_LASER2_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Знач. улучш. расщепителя
                                { "Russian", "Значительное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SCANNER2_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Знач. улучш. сканирующей системы
                                { "Russian", "Значительное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_BOLT2_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Знач. улучш. плазмомета
                                { "Russian", "Значительное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_GRENADE2_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Знач. улучш. плазмобластера
                                { "Russian", "Значительное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_TGRENADE2_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Знач. улучш. геологической пушки
                                { "Russian", "Значительное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SMG2_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Знач. улучш. импульсного скорострела
                                { "Russian", "Значительное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_JETBOOST2_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Знач. улучш. двигательных систем
                                { "Russian", "Значительное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "HOT_U2_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Знач. улучш. защиты от вредных факторов
                                { "Russian", "Значительное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "COLD_U2_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Знач. улучш. защиты от вредных факторов
                                { "Russian", "Значительное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RAD_U2_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Знач. улучш. защиты от вредных факторов
                                { "Russian", "Значительное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TOX_U2_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Знач. улучш. защиты от вредных факторов
                                { "Russian", "Значительное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_HYPER2_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Знач. улучш. гипердвигателя
                                { "Russian", "Значительное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIPSHIELD2_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Знач. улучш. защиты звездолета
                                { "Russian", "Значительное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIPGUN2_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Знач. улучш. вооружения звездолета
                                { "Russian", "Значительное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIPLAS2_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Знач. улучш. вооружения звездолета
                                { "Russian", "Значительное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIPSHOT2_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Знач. улучш. вооружения звездолета
                                { "Russian", "Значительное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIPMINI2_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Знач. улучш. вооружения звездолета
                                { "Russian", "Значительное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIPBLOB2_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Знач. улучш. вооружения звездолета
                                { "Russian", "Значительное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_EXOGUN2_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Знач. улучш. вооружения вездехода
                                { "Russian", "Значительное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_EXOLAS2_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Знач. улучш. вооружения вездехода
                                { "Russian", "Значительное улучшение" },
                            }
                        },
                        --#endregion

                        --#region Мощное улучшение
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SUBGUN3_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Мощное улучшение пушки «Наутилона»
                                { "Russian", "Мощное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_LASER3_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Мощное улучшение расщепителя
                                { "Russian", "Мощное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SCANNER3_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Мощное улучшение сканирующей системы
                                { "Russian", "Мощное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_BOLT3_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Мощное улучшение плазмомета
                                { "Russian", "Мощное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_GRENADE3_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Мощное улучшение плазмобластера
                                { "Russian", "Мощное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_TGRENADE3_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Мощное улучшение геологической пушки
                                { "Russian", "Мощное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SMG3_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Мощное улучшение импульсного скорострела
                                { "Russian", "Мощное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_JETBOOST3_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Мощное улучшение двигательных систем
                                { "Russian", "Мощное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "HOT_U3_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Мощное улучшение защиты от вредных факторов
                                { "Russian", "Мощное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "COLD_U3_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Мощное улучшение защиты от вредных факторов
                                { "Russian", "Мощное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RAD_U3_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Мощное улучшение защиты от вредных факторов
                                { "Russian", "Мощное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TOX_U3_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Мощное улучшение защиты от вредных факторов
                                { "Russian", "Мощное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_LAUNCH3_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Мощное улучшение взлетных ускорителей
                                { "Russian", "Мощное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_HYPER3_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Мощное улучшение гипердвигателя
                                { "Russian", "Мощное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIPSHIELD3_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Мощное улучшение защиты звездолета
                                { "Russian", "Мощное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIPGUN3_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Мощное улучшение вооружения звездолета
                                { "Russian", "Мощное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIPLAS3_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Мощное улучшение вооружения звездолета
                                { "Russian", "Мощное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIPSHOT3_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Мощное улучшение вооружения звездолета
                                { "Russian", "Мощное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIPMINI3_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Мощное улучшение вооружения звездолета
                                { "Russian", "Мощное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIPBLOB3_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Мощное улучшение вооружения звездолета
                                { "Russian", "Мощное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_EXOGUN3_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Мощное улучшение вооружения вездехода
                                { "Russian", "Мощное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_EXOLAS3_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Мощное улучшение вооружения вездехода
                                { "Russian", "Мощное улучшение" },
                            }
                        },
                        --#endregion

                        --#region Превосходное улучшение
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SUBGUN4_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Превосходное улучшение пушки «Наутилона»
                                { "Russian", "Превосходное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_LASER4_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Превосходное улучшение расщепителя
                                { "Russian", "Превосходное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SCANNER4_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Превосходное улучшение сканирующей системы
                                { "Russian", "Превосходное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_BOLT4_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Превосходное улучшение плазмомета
                                { "Russian", "Превосходное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_GRENADE4_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Превосходное улучшение плазмобластера
                                { "Russian", "Превосходное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_TGRENADE4_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Превосходное улучшение геологической пушки
                                { "Russian", "Превосходное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SMG4_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Превосходное улучшение импульсного скорострела
                                { "Russian", "Превосходное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_JETBOOST4_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Превосходное улучшение двигательных систем
                                { "Russian", "Превосходное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "HOT_U4_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Превосходное улучшение защиты от вредных факторов
                                { "Russian", "Превосходное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "COLD_U4_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Превосходное улучшение защиты от вредных факторов
                                { "Russian", "Превосходное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RAD_U4_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Превосходное улучшение защиты от вредных факторов
                                { "Russian", "Превосходное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TOX_U4_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Превосходное улучшение защиты от вредных факторов
                                { "Russian", "Превосходное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_LAUNCH4_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Превосходное улучшение взлетных ускорителей
                                { "Russian", "Превосходное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_HYPER4_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Превосходное улучшение гипердвигателя
                                { "Russian", "Превосходное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIPSHIELD4_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Превосходное улучшение защиты звездолета
                                { "Russian", "Превосходное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIPGUN4_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Превосходное улучшение вооружения звездолета
                                { "Russian", "Превосходное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIPLAS4_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Превосходное улучшение вооружения звездолета
                                { "Russian", "Превосходное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIPSHOT4_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Превосходное улучшение вооружения звездолета
                                { "Russian", "Превосходное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIPMINI4_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Превосходное улучшение вооружения звездолета
                                { "Russian", "Превосходное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIPBLOB4_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Превосходное улучшение вооружения звездолета
                                { "Russian", "Превосходное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_EXOGUN4_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Превосходное улучшение вооружения вездехода
                                { "Russian", "Превосходное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_EXOLAS4_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Превосходное улучшение вооружения вездехода
                                { "Russian", "Превосходное улучшение" },
                            }
                        },
                        --#endregion

                        --#region Гипердвигатель
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "HYP_ACCESS1_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Улучшение гипердвигателя: красные системы
                                { "Russian", "Модификация для красных систем" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "HYP_ACCESS2_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Улучшение гипердвигателя: зеленые системы
                                { "Russian", "Модификация для зеленых систем" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "HYP_ACCESS3_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Улучшение гипердвигателя: синие системы
                                { "Russian", "Модификация для синих систем" },
                            }
                        },
                        --#endregion

                        --#region Импульсный двигатель
                        -- в общем думал я думал, смотрел я на этот j-двигатель, смотрел...
                        -- итог: т.к. это фантастика, то двигатель, который работает на тритии
                        -- будет называться скорее всего "ионно-магнитный турбореактивный двигатель"
                        -- это америкосы любят все сокращать до pulse jet, хуюс-джета, епрст...
                        -- русские названия все через сокращения, а видов реактивных двигателей дохера
                        -- более того, все реактивные двигатели дают импульс и pulse jet это общее название,
                        -- типа это фишка любого рактивного двигателя: огромный импульс
                        -- остановился, и это, скорее всего, окончательно, на плазмодвигателе - на эффекте Холла
                        -- двигатель на эффекте Холла говорят лучше ионного, который использовала раса Доминион из Звездного Пути
                        -- если есть идеи получше - пишите
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_PULSE1_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. ИМП. ДВИГАТ.
                                -- PULSE ENGINE MODULE
                                { "Russian", "МОДУЛЬ ПЛАЗМОДВИГАТЕЛЯ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_PULSE1_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Модуль импульсного двигателя
                                -- Pulse Engine Module
                                { "Russian", "Модуль плазмодвигателя" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_PULSE2_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. ИМП. ДВИГАТ.
                                -- PULSE ENGINE MODULE
                                { "Russian", "МОДУЛЬ ПЛАЗМОДВИГАТЕЛЯ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_PULSE2_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Модуль импульсного двигателя
                                -- Pulse Engine Module
                                { "Russian", "Модуль плазмодвигателя" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_PULSE3_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. ИМП. ДВИГАТ.
                                -- PULSE ENGINE MODULE
                                { "Russian", "МОДУЛЬ ПЛАЗМОДВИГАТЕЛЯ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_PULSE3_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Модуль импульсного двигателя
                                -- Pulse Engine Module
                                { "Russian", "Модуль плазмодвигателя" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_PULSE4_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. ИМП. ДВИГАТ.
                                -- PULSE ENGINE MODULE
                                { "Russian", "МОДУЛЬ ПЛАЗМОДВИГАТЕЛЯ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_PULSE4_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Модуль импульсного двигателя
                                -- Pulse Engine Module
                                { "Russian", "Модуль плазмодвигателя" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_PULSE1_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TRADEABLE&gt;Среднее&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;импульсный двигатель звездолета&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;маневренность&lt;&gt; и &lt;STELLAR&gt;скорость&lt;&gt; звездолета.
                                { "Russian", "&lt;TRADEABLE&gt;Среднее&lt;&gt; улучшение для &lt;TECHNOLOGY&gt;импульсного двигателя﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;маневренность&lt;&gt; и &lt;STELLAR&gt;скорость&lt;&gt; звездолёта." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_PULSE2_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;Значительное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;импульсный двигатель звездолета&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;маневренность&lt;&gt; и &lt;STELLAR&gt;скорость&lt;&gt; звездолета.
                                { "Russian", "&lt;TECHNOLOGY&gt;Значительное&lt;&gt; улучшение для &lt;TECHNOLOGY&gt;импульсного двигателя﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;маневренность&lt;&gt; и &lt;STELLAR&gt;скорость&lt;&gt; звездолёта." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_PULSE3_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Невероятно мощное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;импульсный двигатель звездолета&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;маневренность&lt;&gt; и &lt;STELLAR&gt;скорость&lt;&gt; звездолета.
                                { "Russian", "&lt;SPECIAL&gt;Невероятно мощное&lt;&gt; улучшение для &lt;TECHNOLOGY&gt;импульсного двигателя﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;маневренность&lt;&gt; и &lt;STELLAR&gt;скорость&lt;&gt; звездолёта." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_PULSE4_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;COMMODITY&gt;Поразительно мощное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;импульсный двигатель звездолета&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;маневренность&lt;&gt; и &lt;STELLAR&gt;скорость&lt;&gt; звездолета.
                                { "Russian", "&lt;COMMODITY&gt;Поразительно мощное&lt;&gt; улучшение для &lt;TECHNOLOGY&gt;импульсного двигателя﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;маневренность&lt;&gt; и &lt;STELLAR&gt;скорость&lt;&gt; звездолёта." },
                            }
                        },
                        --#endregion

                        --#region Иглострел
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIPMINI1_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. ИНФР. УСКОРИТЕЛЯ
                                -- INFRA-KNIFE MODULE
                                { "Russian", "МОДУЛЬ ИГЛОСТРЕЛА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIPMINI1_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Модуль инфракрасного ускорителя
                                -- Infra-Knife Module
                                { "Russian", "Модуль иглострела" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIPMINI1_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TRADEABLE&gt;Среднее&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;инфракрасный ускоритель&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон&lt;&gt;, &lt;STELLAR&gt;скорострельность&lt;&gt;, сократить &lt;STELLAR&gt;время перегрева&lt;&gt;.
                                { "Russian", "&lt;TRADEABLE&gt;Среднее&lt;&gt; улучшение &lt;TECHNOLOGY&gt;иглострела﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон﻿,&lt;&gt; &lt;STELLAR&gt;скорострельность﻿,&lt;&gt; сократить &lt;STELLAR&gt;время перегрева﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIPMINI2_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. ИНФР. УСКОРИТЕЛЯ
                                { "Russian", "МОДУЛЬ ИГЛОСТРЕЛА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIPMINI2_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;Значительное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;инфракрасный ускоритель&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон&lt;&gt;, &lt;STELLAR&gt;скорострельность&lt;&gt;, сократить &lt;STELLAR&gt;время перегрева&lt;&gt;.
                                { "Russian", "&lt;TECHNOLOGY&gt;Значительное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;иглострела﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон﻿,&lt;&gt; &lt;STELLAR&gt;скорострельность﻿,&lt;&gt; сократить &lt;STELLAR&gt;время перегрева﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIPMINI2_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Модуль инфракрасного ускорителя
                                { "Russian", "Модуль иглострела" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIPMINI3_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. ИНФР. УСКОРИТЕЛЯ
                                { "Russian", "МОДУЛЬ ИГЛОСТРЕЛА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIPMINI3_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Невероятно мощное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;инфракрасный ускоритель.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон&lt;&gt;, &lt;STELLAR&gt;скорострельность&lt;&gt;, сократить &lt;STELLAR&gt;время перегрева&lt;&gt;.
                                { "Russian", "&lt;SPECIAL&gt;Невероятно мощное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;иглострела﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон﻿,&lt;&gt; &lt;STELLAR&gt;скорострельность﻿,&lt;&gt; сократить &lt;STELLAR&gt;время перегрева﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIPMINI3_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Модуль инфракрасного ускорителя
                                { "Russian", "Модуль иглострела" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIPMINI4_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. ИНФР. УСКОРИТЕЛЯ
                                { "Russian", "МОДУЛЬ ИГЛОСТРЕЛА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIPMINI4_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;COMMODITY&gt;Поразительно мощное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;инфракрасный ускоритель&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон&lt;&gt;, &lt;STELLAR&gt;скорострельность&lt;&gt;, сократить &lt;STELLAR&gt;время перегрева&lt;&gt;.
                                { "Russian", "&lt;COMMODITY&gt;Поразительно мощное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;иглострела﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон﻿,&lt;&gt; &lt;STELLAR&gt;скорострельность﻿,&lt;&gt; сократить &lt;STELLAR&gt;время перегрева﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIPMINI4_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Модуль инфракрасного ускорителя
                                { "Russian", "Модуль иглострела" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UT_SHIPMINI_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Улучшение инфракрасного ускорителя
                                { "Russian", "Улучшение иглострела" },
                            }
                        },
                        --#endregion

                        --#region Геологическая пушка
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_TGRENADE1_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. ГЕОЛОГИЧ. ПУШКИ
                                -- GEOLOGY CANNON MODULE
                                { "Russian", "МОДУЛЬ ГЕОПУШКИ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_TGRENADE2_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. ГЕОЛОГИЧ. ПУШКИ
                                -- GEOLOGY CANNON MODULE
                                { "Russian", "МОДУЛЬ ГЕОПУШКИ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_TGRENADE3_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. ГЕОЛОГИЧ. ПУШКИ
                                -- GEOLOGY CANNON MODULE
                                { "Russian", "МОДУЛЬ ГЕОПУШКИ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_TGRENADE4_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. ГЕОЛОГИЧ. ПУШКИ
                                -- GEOLOGY CANNON MODULE
                                { "Russian", "МОДУЛЬ ГЕОПУШКИ" },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UT_SHIPMINI_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Улучшает &lt;TECHNOLOGY&gt;инфракрасный ускоритель&lt;&gt;, сжимая внутренние волны. В стандартный волновой паттерн выстрела вмещается дополнительный заряд.
                                -- Upgrades the &lt;TECHNOLOGY&gt;Infra-Knife Accelerator&lt;&gt;, compressing internal waveforms to allow an extra shot to be weaved in to the conventional fire patterns.
                                { "Russian", "Улучшает &lt;TECHNOLOGY&gt;иглострел﻿,&lt;&gt; сжимая внутренние волны. В стандартный волновой паттерн выстрела вмещается дополнительный заряд." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "CUSTOM_BOOSTER" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. УСКОР.
                                -- BOOST MODULE
                                { "Russian", "УСКОРИТЕЛИ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "CUST_NOMAD_BOOSTER" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. УСКОР.
                                -- BOOST MODULE
                                { "Russian", "УСКОРИТЕЛИ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TEMPLATE_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. УЛУЧШЕНИЯ
                                -- UPGRADE MODULE
                                { "Russian", "МОДУЛЬ УЛУЧШЕНИЯ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIPSHOT1_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. ПОЗИТР. ЭЖЕКТОРА
                                -- POSITRON MODULE
                                { "Russian", "МОДУЛЬ β+ ЭЖЕКТОРА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIPSHOT2_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. ПОЗИТР. ЭЖЕКТОРА
                                -- POSITRON MODULE
                                { "Russian", "МОДУЛЬ β+ ЭЖЕКТОРА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIPSHOT3_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. ПОЗИТР. ЭЖЕКТОРА
                                -- POSITRON MODULE
                                { "Russian", "МОДУЛЬ β+ ЭЖЕКТОРА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIPSHOT4_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. ПОЗИТР. ЭЖЕКТОРА
                                -- POSITRON MODULE
                                { "Russian", "МОДУЛЬ β+ ЭЖЕКТОРА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIPBLOB1_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. ЦИКЛОТР. БАЛЛИСТЫ
                                -- CYCLOTRON MODULE
                                { "Russian", "МОДУЛЬ ЦИКЛОТРОНИТОНА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIPBLOB2_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. ЦИКЛОТР. БАЛЛИСТЫ
                                -- CYCLOTRON MODULE
                                { "Russian", "МОДУЛЬ ЦИКЛОТРОНИТОНА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIPBLOB3_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. ЦИКЛОТР. БАЛЛИСТЫ
                                -- CYCLOTRON MODULE
                                { "Russian", "МОДУЛЬ ЦИКЛОТРОНИТОНА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIPBLOB4_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. ЦИКЛОТР. БАЛЛИСТЫ
                                -- CYCLOTRON MODULE
                                { "Russian", "МОДУЛЬ ЦИКЛОТРОНИТОНА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_JETBOOST1_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. ДВИГ. СИСТЕМЫ
                                -- MOVEMENT MODULE
                                { "Russian", "МОДУЛЬ ДВИЖЕНИЯ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_JETBOOST1_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Улучшение двигательных систем
                                -- Movement System Upgrade
                                { "Russian", "Улучшение реактивного ранца" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UT_JET_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Улучшение двигательных систем экзокостюма
                                -- Exosuit Movement Upgrade
                                { "Russian", "Улучшение реактивного ранца" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_JETBOOST2_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. ДВИГ. СИСТЕМЫ
                                -- MOVEMENT MODULE
                                { "Russian", "МОДУЛЬ ДВИЖЕНИЯ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_JETBOOST3_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. ДВИГ. СИСТЕМЫ
                                -- MOVEMENT MODULE
                                { "Russian", "МОДУЛЬ ДВИЖЕНИЯ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_JETBOOST4_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. ДВИГ. СИСТЕМЫ
                                -- MOVEMENT MODULE
                                { "Russian", "МОДУЛЬ ДВИЖЕНИЯ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_JETBOOST1_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Модуль двигательной системы
                                { "Russian", "Модуль реактивного ранца" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_JETBOOST2_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Модуль двигательной системы
                                { "Russian", "Модуль реактивного ранца" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_JETBOOST3_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Модуль двигательной системы
                                { "Russian", "Модуль реактивного ранца" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_JETBOOST4_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Модуль двигательной системы
                                { "Russian", "Модуль реактивного ранца" },
                            }
                        },

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_ENERGY1_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. СИСТЕМЫ ЖИЗН.
                                -- LIFE SUPPORT MODULE
                                { "Russian", "МОД. ЖИЗНЕОБЕСПЕЧЕНИЯ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_ENERGY1_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Модуль системы жизнеобеспечения
                                -- Life Support Module
                                { "Russian", "Модуль жизнеобеспечения" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_ENERGY2_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. СИСТЕМЫ ЖИЗН.
                                -- LIFE SUPPORT MODULE
                                { "Russian", "МОД. ЖИЗНЕОБЕСПЕЧЕНИЯ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_ENERGY2_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Модуль системы жизнеобеспечения
                                -- Life Support Module
                                { "Russian", "Модуль жизнеобеспечения" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_ENERGY3_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. СИСТЕМЫ ЖИЗН.
                                -- LIFE SUPPORT MODULE
                                { "Russian", "МОД. ЖИЗНЕОБЕСПЕЧЕНИЯ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_ENERGY3_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Модуль системы жизнеобеспечения
                                -- Life Support Module
                                { "Russian", "Модуль жизнеобеспечения" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SMG1_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. ИМП. СКОРОСТРЕЛА
                                -- PULSE SPITTER MODULE
                                { "Russian", "МОДУЛЬ ПЛЕВУНА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SMG1_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Модуль импульсного скорострела
                                -- Pulse Spitter Module
                                { "Russian", "Модуль плевуна" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SMG2_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. ИМП. СКОРОСТРЕЛА
                                -- PULSE SPITTER MODULE
                                { "Russian", "МОДУЛЬ ПЛЕВУНА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SMG2_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Модуль импульсного скорострела
                                -- Pulse Spitter Module
                                { "Russian", "Модуль плевуна" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SMG3_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. ИМП. СКОРОСТРЕЛА
                                -- PULSE SPITTER MODULE
                                { "Russian", "МОДУЛЬ ПЛЕВУНА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SMG3_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Модуль импульсного скорострела
                                -- Pulse Spitter Module
                                { "Russian", "Модуль плевуна" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SMG4_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. ИМП. СКОРОСТРЕЛА
                                -- PULSE SPITTER MODULE
                                { "Russian", "МОДУЛЬ ПЛЕВУНА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SMG4_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Модуль импульсного скорострела
                                -- Pulse Spitter Module
                                { "Russian", "Модуль плевуна" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHOTGUN1_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. БЛАСТ.-РАССЕИВАТЕЛЯ
                                -- SCATTER BLASTER MODULE
                                { "Russian", "МОДУЛЬ БЛАЗЕРА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHOTGUN1_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Модуль бластера-рассеивателя
                                -- Scatter Blaster Module
                                { "Russian", "Модуль блазера" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHOTGUN2_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. БЛАСТ.-РАССЕИВАТЕЛЯ
                                -- SCATTER BLASTER MODULE
                                { "Russian", "МОДУЛЬ БЛАЗЕРА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHOTGUN2_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Модуль бластера-рассеивателя
                                -- Scatter Blaster Module
                                { "Russian", "Модуль блазера" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHOTGUN3_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. БЛАСТ.-РАССЕИВАТЕЛЯ
                                -- SCATTER BLASTER MODULE
                                { "Russian", "МОДУЛЬ БЛАЗЕРА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHOTGUN3_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Модуль бластера-рассеивателя
                                -- Scatter Blaster Module
                                { "Russian", "Модуль блазера" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHOTGUN4_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. БЛАСТ.-РАССЕИВАТЕЛЯ
                                -- SCATTER BLASTER MODULE
                                { "Russian", "МОДУЛЬ БЛАЗЕРА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHOTGUN4_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Модуль бластера-рассеивателя
                                -- Scatter Blaster Module
                                { "Russian", "Модуль блазера" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_GUIDE_BODY_AMMO" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Большинство видов &lt;FUEL&gt;оружия&lt;&gt; мультитула, таких как &lt;TECHNOLOGY&gt;плазмомет&lt;&gt;, использует &lt;VAL_ON&gt;боеприпасы&lt;&gt;. Создавать боеприпасы можно в пустых ячейках вашего инвентаря.&#xA;&#xA;Чтобы &lt;VAL_ON&gt;перезарядить&lt;&gt; оружие во время боя, нажмите &lt;IMG&gt;RELOAD&lt;&gt;. Во время этого действия боеприпасы берутся из вашего инвентаря автоматически. &lt;STELLAR&gt;Прежде чем&lt;&gt; вступить в бой, убедитесь, что у вас достаточно боеприпасов.&#xA;&#xA;Все оружие, стреляющее снарядами (&lt;TECHNOLOGY&gt;плазмомет&lt;&gt;, &lt;TRADEABLE&gt;импульсный скорострел&lt;&gt; и &lt;COMMODITY&gt;бластер-рассеиватель&lt;&gt;) использует одни и те же боеприпасы.&#xA;&#xA;Энергетическое оружие (например, &lt;FUEL&gt;пламенное копье&lt;&gt;) заряжается &lt;FUEL&gt;углеродом&lt;&gt; непосредственно из быстрого меню или инвентаря. Использовать в бою расщепитель не рекомендуется.&#xA;&#xA;Если кончились боеприпасы или заряд, используйте &lt;IMG&gt;MELEE&lt;&gt; для &lt;VAL_ON&gt;ближнего боя&lt;&gt;.
                                -- Most Multi-Tool &lt;FUEL&gt;weapons&lt;&gt;, such as the &lt;TECHNOLOGY&gt;Boltcaster&lt;&gt; require &lt;VAL_ON&gt;ammunition&lt;&gt;. Craft ammunition in empty slots in your Inventory.&#xA;&#xA;While in combat, &lt;VAL_ON&gt;Reload&lt;&gt; your current weapon with &lt;IMG&gt;RELOAD&lt;&gt;. This will automatically draw ammo from your inventory. Ensure you have crafted sufficient ammunition &lt;STELLAR&gt;before&lt;&gt; entering a combat situation.&#xA;&#xA;All projectile-based weapons use the same ammunition: the &lt;TECHNOLOGY&gt;Boltcaster&lt;&gt;, the &lt;TRADEABLE&gt;Pulse Spitter&lt;&gt; and the &lt;COMMODITY&gt;Scatter Blaster&lt;&gt;.&#xA;&#xA;Energy based weapons, such as the &lt;FUEL&gt;Blaze Javelin&lt;&gt;, are charged with &lt;FUEL&gt;carbon&lt;&gt; directly from the Quick Menu or the Inventory. The Mining Beam is not advised for use in combat.&#xA;&#xA;When out of ammo or charge, use &lt;IMG&gt;MELEE&lt;&gt; to &lt;VAL_ON&gt;melee strike&lt;&gt;.
                                { "Russian", "Большинство видов &lt;FUEL&gt;оружия&lt;&gt; мультитула, таких как &lt;TECHNOLOGY&gt;плазмомет﻿,&lt;&gt; использует &lt;VAL_ON&gt;боеприпасы﻿.&lt;&gt; Создавать боеприпасы можно в пустых ячейках вашего инвентаря.&#xA;&#xA;Чтобы &lt;VAL_ON&gt;перезарядить&lt;&gt; оружие во время боя, нажмите &lt;IMG&gt;RELOAD&lt;&gt;. Во время этого действия боеприпасы берутся из вашего инвентаря автоматически. &lt;STELLAR&gt;Прежде чем&lt;&gt; вступить в бой, убедитесь, что у вас достаточно боеприпасов.&#xA;&#xA;Все оружие, стреляющее снарядами (&lt;TECHNOLOGY&gt;плазмомет﻿,&lt;&gt; &lt;TRADEABLE&gt;плевун&lt;&gt; и &lt;COMMODITY&gt;блазер&lt;&gt;) использует одни и те же боеприпасы.&#xA;&#xA;Энергетическое оружие (например, &lt;FUEL&gt;пламенное копье&lt;&gt;) заряжается &lt;FUEL&gt;углеродом&lt;&gt; непосредственно из быстрого меню или инвентаря. Использовать в бою расщепитель не рекомендуется.&#xA;&#xA;Если кончились боеприпасы или заряд, используйте &lt;IMG&gt;MELEE&lt;&gt; для &lt;VAL_ON&gt;ближнего боя﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "AMMO_PROD_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Продвинутые фрагменты боеприпасов, спроектированные специально для универсального мультитула по стандарту 07/FF1.&#xA;&#xA;Легко вставляются в &lt;TECHNOLOGY&gt;плазмомет&lt;&gt;, &lt;TECHNOLOGY&gt;импульсный скорострел&lt;&gt; и &lt;TECHNOLOGY&gt;бластер-рассеиватель&lt;&gt; с помощью системы перезарядки мультитула.
                                -- Advanced munition fragments, constructed to fit Universal Multi-Tool Standard 07/FF1.&#xA;&#xA;Easily inserted into the &lt;TECHNOLOGY&gt;Boltcaster&lt;&gt;, &lt;TECHNOLOGY&gt;Pulse Spitter&lt;&gt; and &lt;TECHNOLOGY&gt;Scatter Blaster&lt;&gt; via the Multi-Tool clip reloading system.
                                { "Russian", "Продвинутые фрагменты боеприпасов, спроектированные специально для универсального мультитула по стандарту 07/FF1.&#xA;&#xA;Легко вставляются в &lt;TECHNOLOGY&gt;плазмомет﻿,&lt;&gt; &lt;TECHNOLOGY&gt;плевун&lt;&gt; и &lt;TECHNOLOGY&gt;блазер&lt;&gt; с помощью системы перезарядки мультитула." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHOTGUN1_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TRADEABLE&gt;Среднее&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;бластер-рассеиватель&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон&lt;&gt;, &lt;STELLAR&gt;время перезарядки&lt;&gt;, &lt;STELLAR&gt;размер обоймы&lt;&gt; и &lt;STELLAR&gt;скорострельность&lt;&gt;.
                                -- A &lt;TRADEABLE&gt;moderate&lt;&gt; upgrade for the &lt;TECHNOLOGY&gt;Scatter Blaster&lt;&gt;. Use &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt; to begin upgrade &lt;VAL_ON&gt;installation process&lt;&gt;.&#xA;&#xA;The module is flexible, and exact upgrade statistics are &lt;SPECIAL&gt;unknown&lt;&gt; until installation is complete.&#xA;&#xA;Potential upgrades include: &lt;STELLAR&gt;damage output&lt;&gt;, &lt;STELLAR&gt;reload times&lt;&gt;, &lt;STELLAR&gt;clip size&lt;&gt; and &lt;STELLAR&gt;firing rate&lt;&gt;.
                                { "Russian", "&lt;TRADEABLE&gt;Среднее&lt;&gt; улучшение для &lt;TECHNOLOGY&gt;блазера﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон&lt;&gt;, &lt;STELLAR&gt;время перезарядки﻿,&lt;&gt; &lt;STELLAR&gt;размер обоймы&lt;&gt; и &lt;STELLAR&gt;скорострельность﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHOTGUN2_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;Значительное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;бластер-рассеиватель&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон&lt;&gt;, &lt;STELLAR&gt;время перезарядки&lt;&gt;, &lt;STELLAR&gt;размер обоймы&lt;&gt; и &lt;STELLAR&gt;скорострельность&lt;&gt;.
                                -- A &lt;TECHNOLOGY&gt;significant&lt;&gt; upgrade for the &lt;TECHNOLOGY&gt;Scatter Blaster&lt;&gt;. Use &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt; to begin upgrade &lt;VAL_ON&gt;installation process&lt;&gt;.&#xA;&#xA;The module is flexible, and exact upgrade statistics are &lt;SPECIAL&gt;unknown&lt;&gt; until installation is complete.&#xA;&#xA;Potential upgrades include: &lt;STELLAR&gt;damage output&lt;&gt;, &lt;STELLAR&gt;reload times&lt;&gt;, &lt;STELLAR&gt;clip size&lt;&gt; and &lt;STELLAR&gt;firing rate&lt;&gt;.
                                { "Russian", "&lt;TECHNOLOGY&gt;Значительное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;блазера﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон﻿,&lt;&gt; &lt;STELLAR&gt;время перезарядки﻿,&lt;&gt; &lt;STELLAR&gt;размер обоймы&lt;&gt; и &lt;STELLAR&gt;скорострельность﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHOTGUN3_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Невероятно мощное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;бластер-рассеиватель&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон&lt;&gt;, &lt;STELLAR&gt;время перезарядки&lt;&gt;, &lt;STELLAR&gt;размер обоймы&lt;&gt; и &lt;STELLAR&gt;скорострельность&lt;&gt;.
                                -- An &lt;SPECIAL&gt;extremely powerful&lt;&gt; upgrade for the &lt;TECHNOLOGY&gt;Scatter Blaster&lt;&gt;. Use &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt; to begin upgrade &lt;VAL_ON&gt;installation process&lt;&gt;.&#xA;&#xA;The module is flexible, and exact upgrade statistics are &lt;SPECIAL&gt;unknown&lt;&gt; until installation is complete.&#xA;&#xA;Potential upgrades include: &lt;STELLAR&gt;damage output&lt;&gt;, &lt;STELLAR&gt;reload times&lt;&gt;, &lt;STELLAR&gt;clip size&lt;&gt; and &lt;STELLAR&gt;firing rate&lt;&gt;.
                                { "Russian", "&lt;SPECIAL&gt;Невероятно мощное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;блазера﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон﻿,&lt;&gt; &lt;STELLAR&gt;время перезарядки﻿,&lt;&gt; &lt;STELLAR&gt;размер обоймы&lt;&gt; и &lt;STELLAR&gt;скорострельность﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHOTGUN4_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;COMMODITY&gt;Поразительно мощное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;бластер-рассеиватель&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон&lt;&gt;, &lt;STELLAR&gt;время перезарядки&lt;&gt;, &lt;STELLAR&gt;размер обоймы&lt;&gt; и &lt;STELLAR&gt;скорострельность&lt;&gt;.
                                -- A &lt;COMMODITY&gt;supremely powerful&lt;&gt; upgrade for the &lt;TECHNOLOGY&gt;Scatter Blaster&lt;&gt;. Use &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt; to begin upgrade &lt;VAL_ON&gt;installation process&lt;&gt;.&#xA;&#xA;The module is flexible, and exact upgrade statistics are &lt;SPECIAL&gt;unknown&lt;&gt; until installation is complete.&#xA;&#xA;Potential upgrades include: &lt;STELLAR&gt;damage output&lt;&gt;, &lt;STELLAR&gt;reload times&lt;&gt;, &lt;STELLAR&gt;clip size&lt;&gt; and &lt;STELLAR&gt;firing rate&lt;&gt;.
                                { "Russian", "&lt;COMMODITY&gt;Поразительно мощное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;блазера﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон﻿,&lt;&gt; &lt;STELLAR&gt;время перезарядки﻿,&lt;&gt; &lt;STELLAR&gt;размер обоймы&lt;&gt; и &lt;STELLAR&gt;скорострельность﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UT_SHOT_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Новейшие самосмазывающиеся детали снижают трение внутри &lt;TECHNOLOGY&gt;бластера-рассеивателя&lt;&gt;, в результате чего значительно повышается &lt;STELLAR&gt;скорость перезарядки&lt;&gt;.
                                -- Advanced self-lubricating components decrease friction within the &lt;TECHNOLOGY&gt;Scatter Blaster&lt;&gt;, offering significant improvements to &lt;STELLAR&gt;reload times&lt;&gt;.
                                { "Russian", "Новейшие самосмазывающиеся детали снижают трение внутри &lt;TECHNOLOGY&gt;блазера﻿,&lt;&gt; в результате чего значительно повышается &lt;STELLAR&gt;скорость перезарядки﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SMG1_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TRADEABLE&gt;Среднее&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;импульсный скорострел&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон&lt;&gt;, &lt;STELLAR&gt;время перезарядки&lt;&gt;, &lt;STELLAR&gt;размер обоймы&lt;&gt; и &lt;STELLAR&gt;скорострельность&lt;&gt;.
                                -- A &lt;TRADEABLE&gt;moderate&lt;&gt; upgrade for the &lt;TECHNOLOGY&gt;Pulse Spitter&lt;&gt;. Use &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt; to begin upgrade &lt;VAL_ON&gt;installation process&lt;&gt;.&#xA;&#xA;The module is flexible, and exact upgrade statistics are &lt;SPECIAL&gt;unknown&lt;&gt; until installation is complete.&#xA;&#xA;Potential upgrades include: &lt;STELLAR&gt;damage output&lt;&gt;, &lt;STELLAR&gt;reload times&lt;&gt;, &lt;STELLAR&gt;clip size&lt;&gt; and &lt;STELLAR&gt;firing rate&lt;&gt;.
                                { "Russian", "&lt;TRADEABLE&gt;Среднее&lt;&gt; улучшение &lt;TECHNOLOGY&gt;плевуна﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон﻿,&lt;&gt; &lt;STELLAR&gt;время перезарядки﻿,&lt;&gt; &lt;STELLAR&gt;размер обоймы&lt;&gt; и &lt;STELLAR&gt;скорострельность﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SMG1_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Улучшение импульсного скорострела
                                -- Pulse Spitter Upgrade
                                { "Russian", "Улучшение плевуна" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SMG2_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;Значительное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;импульсный скорострел&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон&lt;&gt;, &lt;STELLAR&gt;время перезарядки&lt;&gt;, &lt;STELLAR&gt;размер обоймы&lt;&gt; и &lt;STELLAR&gt;скорострельность&lt;&gt;.
                                -- A &lt;TECHNOLOGY&gt;significant&lt;&gt; upgrade for the &lt;TECHNOLOGY&gt;Pulse Spitter&lt;&gt;. Use &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt; to begin upgrade &lt;VAL_ON&gt;installation process&lt;&gt;.&#xA;&#xA;The module is flexible, and exact upgrade statistics are &lt;SPECIAL&gt;unknown&lt;&gt; until installation is complete.&#xA;&#xA;Potential upgrades include: &lt;STELLAR&gt;damage output&lt;&gt;, &lt;STELLAR&gt;reload times&lt;&gt;, &lt;STELLAR&gt;clip size&lt;&gt; and &lt;STELLAR&gt;firing rate&lt;&gt;.
                                { "Russian", "&lt;TECHNOLOGY&gt;Значительное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;плевуна﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон﻿,&lt;&gt; &lt;STELLAR&gt;время перезарядки﻿,&lt;&gt; &lt;STELLAR&gt;размер обоймы&lt;&gt; и &lt;STELLAR&gt;скорострельность﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SMG3_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Невероятно мощное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;импульсный скорострел&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить: &lt;STELLAR&gt;урон&lt;&gt;, &lt;STELLAR&gt;время перезарядки&lt;&gt;, &lt;STELLAR&gt;размер обоймы&lt;&gt; и &lt;STELLAR&gt;скорострельность&lt;&gt;.
                                -- An &lt;SPECIAL&gt;extremely powerful&lt;&gt; upgrade for the &lt;TECHNOLOGY&gt;Pulse Spitter&lt;&gt;. Use &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt; to begin upgrade &lt;VAL_ON&gt;installation process&lt;&gt;.&#xA;&#xA;The module is flexible, and exact upgrade statistics are &lt;SPECIAL&gt;unknown&lt;&gt; until installation is complete.&#xA;&#xA;Potential upgrades include: &lt;STELLAR&gt;damage output&lt;&gt;, &lt;STELLAR&gt;reload times&lt;&gt;, &lt;STELLAR&gt;clip size&lt;&gt; and &lt;STELLAR&gt;firing rate&lt;&gt;.
                                { "Russian", "&lt;SPECIAL&gt;Невероятно мощное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;плевуна﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон﻿,&lt;&gt; &lt;STELLAR&gt;время перезарядки﻿,&lt;&gt; &lt;STELLAR&gt;размер обоймы&lt;&gt; и &lt;STELLAR&gt;скорострельность﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SMG4_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;COMMODITY&gt;Поразительно мощное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;импульсный скорострел&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить: &lt;STELLAR&gt;урон&lt;&gt;, &lt;STELLAR&gt;время перезарядки&lt;&gt;, &lt;STELLAR&gt;размер обоймы&lt;&gt; и &lt;STELLAR&gt;скорострельность&lt;&gt;.
                                -- A &lt;COMMODITY&gt;supremely powerful&lt;&gt; upgrade for the &lt;TECHNOLOGY&gt;Pulse Spitter&lt;&gt;. Use &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt; to begin upgrade &lt;VAL_ON&gt;installation process&lt;&gt;.&#xA;&#xA;The module is flexible, and exact upgrade statistics are &lt;SPECIAL&gt;unknown&lt;&gt; until installation is complete.&#xA;&#xA;Potential upgrades include: &lt;STELLAR&gt;damage output&lt;&gt;, &lt;STELLAR&gt;reload times&lt;&gt;, &lt;STELLAR&gt;clip size&lt;&gt; and &lt;STELLAR&gt;firing rate&lt;&gt;.
                                { "Russian", "&lt;COMMODITY&gt;Поразительно мощное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;плевуна﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон﻿,&lt;&gt; &lt;STELLAR&gt;время перезарядки﻿,&lt;&gt; &lt;STELLAR&gt;размер обоймы&lt;&gt; и &lt;STELLAR&gt;скорострельность﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UT_SMG_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Улучшение импульсного скорострела
                                -- Pulse Spitter Upgrade
                                { "Russian", "Улучшение плевуна" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UT_SMG_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Специальные гармонические резонаторы расщепляют боеприпасы &lt;TECHNOLOGY&gt;импульсного скорострела&lt;&gt;, увеличивая количество снарядов при меньшем расходе материалов.&#xA;&#xA;Увеличивает &lt;STELLAR&gt;размер обоймы&lt;&gt;.
                                -- Specialist harmonic resonators allow the &lt;TECHNOLOGY&gt;Pulse Spitter&lt;&gt; to split inserted ammunition, effective manufacturing more shots from fewer materials.&#xA;&#xA;Increases &lt;STELLAR&gt;weapon clip size&lt;&gt;.
                                { "Russian", "Специальные гармонические резонаторы расщепляют боеприпасы &lt;TECHNOLOGY&gt;плевуна﻿,&lt;&gt; увеличивая количество снарядов при меньшем расходе материалов.&#xA;&#xA;Увеличивает &lt;STELLAR&gt;размер обоймы﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_EXOSUB1_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Модуль гумбольдтового двигателя
                                -- Humboldt Drive Module
                                { "Russian", "Модуль гумб. двигателя" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_EXOSUB2_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Модуль гумбольдтового двигателя
                                -- Humboldt Drive Module
                                { "Russian", "Модуль гумб. двигателя" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_EXOSUB3_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Модуль гумбольдтового двигателя
                                -- Humboldt Drive Module
                                { "Russian", "Модуль гумб. двигателя" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_EXOSUB4_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Модуль гумбольдтового двигателя
                                -- Humboldt Drive Module
                                { "Russian", "Модуль гумб. двигателя" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIPBLOB1_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Модуль циклотронной баллисты
                                -- Cyclotron Module
                                { "Russian", "Модуль циклотронитона" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIPBLOB2_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Модуль циклотронной баллисты
                                -- Cyclotron Module
                                { "Russian", "Модуль циклотронитона" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIPBLOB3_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Модуль циклотронной баллисты
                                -- Cyclotron Module
                                { "Russian", "Модуль циклотронитона" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIPBLOB4_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Модуль циклотронной баллисты
                                -- Cyclotron Module
                                { "Russian", "Модуль циклотронитона" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIPSHOT1_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Модуль позитронного эжектора
                                -- Positron Module
                                { "Russian", "Модуль β+ эжектора" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIPSHOT2_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Модуль позитронного эжектора
                                -- Positron Module
                                { "Russian", "Модуль β+ эжектора" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIPSHOT3_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Модуль позитронного эжектора
                                -- Positron Module
                                { "Russian", "Модуль β+ эжектора" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIPSHOT4_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Модуль позитронного эжектора
                                -- Positron Module
                                { "Russian", "Модуль β+ эжектора" },
                            }
                        },
                        --
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_EXOLAS1_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. РАСЩЕП. ВЕЗДЕХОДА
                                -- EXOCRAFT LASER MODULE
                                { "Russian", "МОДУЛЬ ЛАЗЕРА ВЕЗДЕХОДА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_EXOLAS1_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Модуль расщепителя вездехода
                                -- Exocraft Laser Module
                                { "Russian", "Модуль лазера вездехода" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_EXOLAS2_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. РАСЩЕП. ВЕЗДЕХОДА
                                -- EXOCRAFT LASER MODULE
                                { "Russian", "МОДУЛЬ ЛАЗЕРА ВЕЗДЕХОДА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_EXOLAS2_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Модуль расщепителя вездехода
                                -- Exocraft Laser Module
                                { "Russian", "Модуль лазера вездехода" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_EXOLAS3_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. РАСЩЕП. ВЕЗДЕХОДА
                                -- EXOCRAFT LASER MODULE
                                { "Russian", "МОДУЛЬ ЛАЗЕРА ВЕЗДЕХОДА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_EXOLAS3_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Модуль расщепителя вездехода
                                -- Exocraft Laser Module
                                { "Russian", "Модуль лазера вездехода" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_EXOLAS4_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. РАСЩЕП. ВЕЗДЕХОДА
                                -- EXOCRAFT LASER MODULE
                                { "Russian", "МОДУЛЬ ЛАЗЕРА ВЕЗДЕХОДА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_EXOLAS4_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Модуль расщепителя вездехода
                                -- Exocraft Laser Module
                                { "Russian", "Модуль лазера вездехода" },
                            }
                        },

                        --#region UP_SHIPSHIELD[0-9]_NAME
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIPSHIELD1_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. ЗАЩИТЫ ЗВЕЗДОЛЕТА
                                { "Russian", "МОД. ЗАЩИТЫ ЗВЕЗДОЛЁТА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIPSHIELD1_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Модуль защиты звездолета
                                { "Russian", "Модуль защиты звездолёта" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIPSHIELD2_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. ЗАЩИТЫ ЗВЕЗДОЛЕТА
                                { "Russian", "МОД. ЗАЩИТЫ ЗВЕЗДОЛЁТА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIPSHIELD2_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Модуль защиты звездолета
                                { "Russian", "Модуль защиты звездолёта" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIPSHIELD3_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. ЗАЩИТЫ ЗВЕЗДОЛЕТА
                                { "Russian", "МОД. ЗАЩИТЫ ЗВЕЗДОЛЁТА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIPSHIELD3_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Модуль защиты звездолета
                                { "Russian", "Модуль защиты звездолёта" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIPSHIELD4_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. ЗАЩИТЫ ЗВЕЗДОЛЕТА
                                { "Russian", "МОД. ЗАЩИТЫ ЗВЕЗДОЛЁТА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIPSHIELD4_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Модуль защиты звездолета
                                { "Russian", "Модуль защиты звездолёта" },
                            }
                        },
                        --#endregion

                    }
                },
                { -- LANGUAGE/NMS_LOC5_RUSSIAN.MBIN
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_LOC5_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "WAR_NPC_SHOP_RET_OPT_C_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Предложить улучшение импульсного скорострела
                                -- Suggest pulse spitter upgrade
                                { "Russian", "Предложить улучшение плевуна" },
                            }
                        },
                        -- наиболее точное название воздушно-реактивный двигатель
                        -- так как разрабы решили немного исковеркать оригинал "airbreathing jet engine"
                        -- я последую аналогично ради краткости
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UT_MIDAIR_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ДВИГ. ВОЗД.-УДАРН. ДЕЙСТВИЯ
                                -- AIRBURST ENGINE
                                { "Russian", "ВОЗДУХОЗАБОРНИК" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UT_MIDAIR_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Двигатель воздушно-ударного действия
                                -- Airburst Engine
                                { "Russian", "Воздухозаборник" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UT_PULSEFUEL_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Модификация импульсного двигателя
                                -- Pulse Engine Augmentation
                                { "Russian", "Модификация плазмодвигателя" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UT_PULSESPEED_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Модификация импульсного двигателя
                                -- Pulse Engine Augmentation
                                { "Russian", "Модификация плазмодвигателя" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UT_PULSEFUEL_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Высокотехнологичное улучшение для &lt;TECHNOLOGY&gt;импульсного двигателя&lt;&gt;, значительно повышающее его &lt;STELLAR&gt;топливную эффективность&lt;&gt;.&#xA;&#xA;Запасы трития перенаправляются в цикл миниатюрных черных дыр. Получаемые в результате микрогравитационные колебания затем используются для усиления двигательных систем. Такой подход значительно более эффективен, чем любые традиционные методы, основанные на топливных системах внутреннего сгорания.
                                { "Russian", "Высокотехнологичное улучшение для &lt;TECHNOLOGY&gt;импульсного двигателя﻿,&lt;&gt; значительно повышающее его &lt;STELLAR&gt;топливную эффективность﻿.&lt;&gt;&#xA;&#xA;Запасы трития перенаправляются в цикл миниатюрных черных дыр. Получаемые в результате микрогравитационные колебания затем используются для усиления двигательных систем. Такой подход значительно более эффективен, чем любые традиционные методы, основанные на топливных системах внутреннего сгорания." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UT_PULSESPEED_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Высокотехнологичное улучшение для &lt;TECHNOLOGY&gt;импульсного двигателя&lt;&gt;, значительно повышающее его &lt;STELLAR&gt;скорость в межпланетных перелетах&lt;&gt;.&#xA;&#xA;Эффекты смещения, возникающие в импульсном двигателе естественным образом, усиливаются тритиевыми резонаторами, что в результате увеличивает досветовую скорость корабля.
                                { "Russian", "Высокотехнологичное улучшение для &lt;TECHNOLOGY&gt;импульсного двигателя﻿,&lt;&gt; значительно повышающее его &lt;STELLAR&gt;скорость в межпланетных перелетах﻿.&lt;&gt;&#xA;&#xA;Эффекты смещения, возникающие в импульсном двигателе естественным образом, усиливаются тритиевыми резонаторами, что в результате увеличивает досветовую скорость корабля." },
                            }
                        },
                    }
                },
                { -- LANGUAGE/NMS_LOC6_RUSSIAN.MBIN
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_LOC6_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        --#region ЛАЗЕР «МИНОТАВРА»
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MECH_LASER_NAME" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- ЛАЗЕР «МИНОТАВРА»
                        --         -- MINOTAUR LASER
                        --         { "Russian", "ЛАЗЕР МИНОТАВРА" },
                        --     }
                        -- },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MECH_LASER_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Лазер «Минотавра»
                                { "Russian", "Лазер" },
                            }
                        },
                        --#endregion

                        --#region Пушка Минотавра
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MECH_GUN_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПУШКА «МИНОТАВРА»
                                { "Russian", "БОМБАРДА МИНОТАВРА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MECH_GUN_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Пушка «Минотавра»
                                { "Russian", "Бомбарда" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_MECHGUN2_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. ПУШКИ «МИНОТАВРА»
                                -- MINOTAUR CANNON MODULE
                                { "Russian", "МОД. БОМБАРДЫ МИНОТАВРА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_MECHGUN2_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Модуль пушки «Минотавра»
                                -- Minotaur Cannon Module
                                { "Russian", "Модуль бомбарды Минотавра" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_MECHGUN3_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. ПУШКИ «МИНОТАВРА»
                                -- MINOTAUR CANNON MODULE
                                { "Russian", "МОД. БОМБАРДЫ МИНОТАВРА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_MECHGUN3_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Модуль пушки «Минотавра»
                                -- Minotaur Cannon Module
                                { "Russian", "Модуль бомбарды Минотавра" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_MECHGUN4_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. ПУШКИ «МИНОТАВРА»
                                -- MINOTAUR CANNON MODULE
                                { "Russian", "МОД. БОМБАРДЫ МИНОТАВРА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_MECHGUN4_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Модуль пушки «Минотавра»
                                -- Minotaur Cannon Module
                                { "Russian", "Модуль бомбарды Минотавра" },
                            }
                        },
                        --#endregion

                        --#region Размещаемое улучшение грузового судна
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_FREI_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Извлеченный модуль грузового судна
                                -- Salvaged Freighter Module
                                { "Russian", "Модуль грузового судна" },
                            }
                        },

                        --#region названия модулей
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UT_FR_HYP_NAME_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Варп-ядро, источник: %NAME%
                                { "Russian", "ВАРП-ЯДРО" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UT_FR_HYP_NAME_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Антиматериальный привод, источник: %NAME%
                                { "Russian", "АНТИМАТЕРИАЛЬНЫЙ ПРИВОД" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UT_FR_HYP_NAME_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сингулярный двигатель, источник: %NAME%
                                { "Russian", "СИНГУЛЯРНЫЙ ДВИГАТЕЛЬ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UT_FR_HYP_NAME_4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Нейтронный сердечник, источник: %NAME%
                                { "Russian", "НЕЙТРОННЫЙ СЕРДЕЧНИК" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UT_FR_HYP_NAME_5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Внутренний контур двигателя, источник: %NAME%
                                { "Russian", "ВНУТРЕННИЙ КОНТУР ДВИГАТЕЛЯ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UT_FR_SPEED_NAME_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Маяк флота, источник: %NAME%
                                { "Russian", "МАЯК ФЛОТА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UT_FR_SPEED_NAME_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Передатчик флота, источник: %NAME%
                                -- Fleet Broadcast Unit from %NAME%
                                { "Russian", "СТАНЦИЯ ВЕЩАНИЯ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UT_FR_SPEED_NAME_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Передатчик дальнего действия, источник: %NAME%
                                { "Russian", "ПЕРЕДАТЧИК ДАЛЬНЕГО ДЕЙСТВИЯ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UT_FR_SPEED_NAME_4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Межзвездный передатчик, источник: %NAME%
                                { "Russian", "МЕЖЗВЁЗДНЫЙ ПЕРЕДАТЧИК" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UT_FR_SPEED_NAME_5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Коммуникатор флота, источник: %NAME%
                                { "Russian", "КОММУНИКАТОР" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UT_FR_FUEL_NAME_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Варп-координатор, источник: %NAME%
                                { "Russian", "ВАРП-КООРДИНАТОР" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UT_FR_FUEL_NAME_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Транслятор частиц, источник: %NAME%
                                -- Particle Broadcaster from %NAME%
                                { "Russian", "РАСПЫЛИТЕЛЬ ЧАСТИЦ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UT_FR_FUEL_NAME_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Навигационный модуль ИИ, источник: %NAME%
                                -- Navigation AI Unit from %NAME%
                                { "Russian", "ИИ-НАВИГАТОР" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UT_FR_FUEL_NAME_4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Генератор червоточин, источник: %NAME%
                                { "Russian", "ГЕНЕРАТОР ЧЕРВОТОЧИН" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UT_FR_FUEL_NAME_5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Картографический архив, источник: %NAME%
                                { "Russian", "КАРТОГРАФИЧЕСКИЙ АРХИВ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UT_FR_COM_NAME_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Боевой компьютер, источник: %NAME%
                                { "Russian", "БОЕВОЙ КОМПЬЮТЕР" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UT_FR_COM_NAME_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Боевой радар дальнего действия, источник: %NAME%
                                { "Russian", "БОЕВОЙ РАДАР ДАЛЬНЕГО ДЕЙСТВИЯ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UT_FR_COM_NAME_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Система обнаружения угроз, источник: %NAME%
                                { "Russian", "СИСТЕМА ОБНАРУЖЕНИЯ УГРОЗ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UT_FR_COM_NAME_4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Боевой симулятор, источник: %NAME%
                                { "Russian", "БОЕВОЙ СИМУЛЯТОР" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UT_FR_COM_NAME_5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Контур пилотирования ИИ, источник: %NAME%
                                -- Pilot AI Circuit from %NAME%
                                { "Russian", "КОНТУР ПИЛОТА ИИ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UT_FR_TRADE_NAME_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Торговый компьютер, источник: %NAME%
                                { "Russian", "ТОРГОВЫЙ КОМПЬЮТЕР" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UT_FR_TRADE_NAME_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Дипломатический переводчик, источник: %NAME%
                                { "Russian", "ДИПЛОМАТИЧЕСКИЙ ПЕРЕВОДЧИК" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UT_FR_TRADE_NAME_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Анализатор рынка на базе ИИ, источник: %NAME%
                                -- Market Analysis AI from %NAME%
                                { "Russian", "НЕЙРОСЕТЕВОЙ АНАЛИЗАТОР РЫНКА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UT_FR_TRADE_NAME_4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Статистический модуль ИИ, источник: %NAME%
                                -- Statistical AI Unit from %NAME%
                                { "Russian", "ИИ-СТАТИСТ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UT_FR_TRADE_NAME_5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сканер экономики, источник: %NAME%
                                { "Russian", "СКАНЕР ЭКОНОМИКИ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UT_FR_EXP_NAME_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Модуль машинного обучения, источник: %NAME%
                                { "Russian", "МОДУЛЬ МАШИННОГО ОБУЧЕНИЯ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UT_FR_EXP_NAME_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Биологический зонд, источник: %NAME%
                                { "Russian", "БИОЛОГИЧЕСКИЙ ЗОНД" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UT_FR_EXP_NAME_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Анализатор ДНК на базе ИИ, источник: %NAME%
                                -- DNA Analysis AI from %NAME%
                                { "Russian", "НЕЙРОСЕТЕВОЙ АНАЛИЗАТОР ДНК" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UT_FR_EXP_NAME_4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Географический модуль ИИ, источник: %NAME%
                                -- Geographic AI Unit from %NAME%
                                { "Russian", "ИИ-ГЕОГРАФ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UT_FR_EXP_NAME_5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Планетарный сканер, источник: %NAME%
                                { "Russian", "ПЛАНЕТАРНЫЙ СКАНЕР" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UT_FR_MINE_NAME_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Гео-сканер, источник: %NAME%
                                { "Russian", "ГЕО-СКАНЕР" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UT_FR_MINE_NAME_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добывающие дроны, источник: %NAME%
                                -- Mining Drones from %NAME%
                                { "Russian", "ДРОНЫ-ШАХТЕРЫ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UT_FR_MINE_NAME_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вычислительное устройство минералогического анализа, источник: %NAME%
                                -- Mineral Analysis Computer from %NAME%
                                { "Russian", "КОМПЬЮТЕР ДЛЯ АНАЛИЗА МИНЕРАЛОВ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UT_FR_MINE_NAME_4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ИИ для оценки руды, источник: %NAME%
                                -- Ore Evaluation AI from %NAME%
                                { "Russian", "НЕЙРОСЕТЕВОЙ ОЦЕНЩИК РУДЫ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UT_FR_MINE_NAME_5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Модуль анализа эхо, источник: %NAME%
                                -- Echo Analysis Unit from %NAME%
                                { "Russian", "АНАЛИЗАТОР ЭХОСИГНАЛОВ" },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_FR_HYP_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ИЗВЛЕЧЕННОЕ УЛУЧШЕНИЕ ГИПЕРДВИГАТЕЛЯ
                                -- SALVAGED HYPERDRIVE UPGRADE
                                { "Russian", "МОДУЛЬ ГИПЕРДВИГАТЕЛЯ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_FR_HYP_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Извлеченное улучшение гипердвигателя
                                -- Salvaged Hyperdrive Upgrade
                                { "Russian", "Модуль гипердвигателя" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_FR_SPEED_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ИЗВЛЕЧЕННЫЙ МАЯК ФЛОТА
                                -- SALVAGED FLEET BEACON
                                { "Russian", "МАЯК ФЛОТА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_FR_SPEED_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Извлеченный маяк флота
                                -- Salvaged Fleet Beacon
                                { "Russian", "Маяк флота" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_FR_FUEL_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ИЗВЛ. ТОПЛ. МОД. ФЛОТА
                                -- SALVAGED FLEET FUEL UNIT
                                { "Russian", "ТОПЛИВНЫЙ МОДУЛЬ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_FR_FUEL_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Извлеченный топливный модуль флота
                                { "Russian", "Топливный модуль" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_FR_COM_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ИЗВЛ. БОЕВОЙ МОД. ФЛОТА
                                -- SALVAGED FLEET COMBAT UNIT
                                { "Russian", "БОЕВОЙ МОДУЛЬ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_FR_COM_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Извлеченный боевой модуль флота
                                { "Russian", "Боевой модуль" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_FR_TRADE_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ИЗВЛ. ТОРГ. МОД. ФЛОТА
                                -- SALVAGED FLEET TRADE UNIT
                                { "Russian", "ТОРГОВЫЙ МОДУЛЬ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_FR_TRADE_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Извлеченный торговый модуль флота
                                { "Russian", "Торговый модуль" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_FR_EXP_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ИЗВЛ. ИССЛЕД. МОД. ФЛОТА
                                -- SALVAGED FLEET EXPLORATION UNIT
                                { "Russian", "ИССЛЕДОВАТЕЛЬСКИЙ МОДУЛЬ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_FR_EXP_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Извлеченный исследовательский модуль флота
                                { "Russian", "Исследовательский модуль" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_FR_MINE_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ИЗВЛ. ШАХТ. МОД. ФЛОТА
                                -- SALVAGED FLEET MINING UNIT
                                { "Russian", "ШАХТЕРСКИЙ МОДУЛЬ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_FR_MINE_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Извлеченный шахтерский модуль флота
                                { "Russian", "Шахтерский модуль" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_FR1_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Размещаемый утиль класса «C»
                                -- C-Class Deployable Salvage
                                { "Russian", "Улучшение C-класса для грузового судна" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_FR2_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Размещаемый утиль класса «B»
                                { "Russian", "Улучшение B-класса для грузового судна" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_FR3_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Размещаемый утиль класса «A»
                                { "Russian", "Улучшение A-класса для грузового судна" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_FR4_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Размещаемый утиль класса «S»
                                { "Russian", "Улучшение S-класса для грузового судна" },
                            }
                        },
                        -- вместо Размещаемое должно быть по смыслу Упакованное, Запакованное итп.
                        -- однако, упакованное улучшение не звучит и никакого особого смысла не приносит
                        -- все остальные улучшения в игре назывались просто модулями <чего-то>
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_FR_HYP_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Размещаемое улучшение грузового судна, найденное среди обломков судна &lt;STELLAR&gt;%NAME%&lt;&gt;.&#xA;&#xA;Может быть установлено на ваш крупный корабль для улучшения его &lt;TECHNOLOGY&gt;гипердвигателя&lt;&gt;.
                                -- A deployable freighter upgrade, salvaged from &lt;STELLAR&gt;%NAME%&lt;&gt;.&#xA;&#xA;Can be re-deployed into your own capital ship to improve its &lt;TECHNOLOGY&gt;Hyperdrive&lt;&gt;.
                                { "Russian", "Перепакованное улучшение, забранное с грузового судна &lt;STELLAR&gt;%NAME%﻿.&lt;&gt;&#xA;&#xA;Можно установить на крупный корабль, чтобы повысить характеристики &lt;TECHNOLOGY&gt;гипердвигателя﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_FR_SPEED_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Размещаемое улучшение грузового судна, найденное среди обломков судна &lt;STELLAR&gt;%NAME%&lt;&gt;.&#xA;&#xA;Может быть установлено на ваш крупный корабль для улучшения &lt;TECHNOLOGY&gt;скорости&lt;&gt; вашего флота.
                                -- A deployable freighter upgrade, salvaged from &lt;STELLAR&gt;%NAME%&lt;&gt;.&#xA;&#xA;Can be re-deployed into your own capital ship to improve the &lt;TECHNOLOGY&gt;speed&lt;&gt; of your fleet.
                                { "Russian", "Перепакованное улучшение, забранное с грузового судна &lt;STELLAR&gt;%NAME%﻿.&lt;&gt;&#xA;&#xA;Можно установить на крупный корабль, чтобы повысить &lt;TECHNOLOGY&gt;скорость&lt;&gt; флота." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_FR_FUEL_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Размещаемое улучшение грузового судна, найденное среди обломков судна &lt;STELLAR&gt;%NAME%&lt;&gt;.&#xA;&#xA;Может быть установлено на ваш крупный корабль для повышения &lt;TECHNOLOGY&gt;топливной эффективности&lt;&gt; вашего флота.
                                -- A deployable freighter upgrade, salvaged from &lt;STELLAR&gt;%NAME%&lt;&gt;.&#xA;&#xA;Can be re-deployed into your own capital ship to improve the &lt;TECHNOLOGY&gt;fuel efficiency&lt;&gt; of your fleet.
                                { "Russian", "Перепакованное улучшение, забранное с грузового судна &lt;STELLAR&gt;%NAME%﻿.&lt;&gt;&#xA;&#xA;Можно установить на крупный корабль, чтобы повысить &lt;TECHNOLOGY&gt;топливную эффективность&lt;&gt; флота." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_FR_COM_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Размещаемое улучшение грузового судна, найденное среди обломков судна &lt;STELLAR&gt;%NAME%&lt;&gt;.&#xA;&#xA;Может быть установлено на ваш крупный корабль для улучшения &lt;TECHNOLOGY&gt;боевых возможностей&lt;&gt; вашего флота.
                                -- A deployable freighter upgrade, salvaged from &lt;STELLAR&gt;%NAME%&lt;&gt;.&#xA;&#xA;Can be re-deployed into your own capital ship to improve the &lt;TECHNOLOGY&gt;combat performance&lt;&gt; of your fleet.
                                { "Russian", "Перепакованное улучшение, забранное с грузового судна &lt;STELLAR&gt;%NAME%﻿.&lt;&gt;&#xA;&#xA;Можно установить на крупный корабль, чтобы повысить &lt;TECHNOLOGY&gt;боеспособность&lt;&gt; флота." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_FR_TRADE_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Размещаемое улучшение грузового судна, найденное среди обломков судна &lt;STELLAR&gt;%NAME%&lt;&gt;.&#xA;&#xA;Может быть установлено на ваш крупный корабль для улучшения &lt;TECHNOLOGY&gt;торговых возможностей&lt;&gt; вашего флота.
                                -- A deployable freighter upgrade, salvaged from &lt;STELLAR&gt;%NAME%&lt;&gt;.&#xA;&#xA;Can be re-deployed into your own capital ship to improve the &lt;TECHNOLOGY&gt;trading abilities&lt;&gt; of your fleet.
                                { "Russian", "Перепакованное улучшение, забранное с грузового судна &lt;STELLAR&gt;%NAME%﻿.&lt;&gt;&#xA;&#xA;Можно установить на крупный корабль, чтобы повысить &lt;TECHNOLOGY&gt;торговые возможности&lt;&gt; флота." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_FR_EXP_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Размещаемое улучшение грузового судна, найденное среди обломков судна &lt;STELLAR&gt;%NAME%&lt;&gt;.&#xA;&#xA;Может быть установлено на ваш крупный корабль для улучшения &lt;TECHNOLOGY&gt;исследовательских возможностей&lt;&gt; вашего флота.
                                -- A deployable freighter upgrade, salvaged from &lt;STELLAR&gt;%NAME%&lt;&gt;.&#xA;&#xA;Can be re-deployed into your own capital ship to improve the &lt;TECHNOLOGY&gt;exploration abilities&lt;&gt; of your fleet.
                                { "Russian", "Перепакованное улучшение, забранное с грузового судна &lt;STELLAR&gt;%NAME%﻿.&lt;&gt;&#xA;&#xA;Можно установить на крупный корабль, чтобы повысить &lt;TECHNOLOGY&gt;исследовательские возможности&lt;&gt; флота." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_FR_MINE_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Размещаемое улучшение грузового судна, найденное среди обломков судна &lt;STELLAR&gt;%NAME%&lt;&gt;.&#xA;&#xA;Может быть установлено на ваш крупный корабль для улучшения &lt;TECHNOLOGY&gt;добывающих возможностей&lt;&gt; вашего флота.
                                -- A deployable freighter upgrade, salvaged from &lt;STELLAR&gt;%NAME%&lt;&gt;.&#xA;&#xA;Can be re-deployed into your own capital ship to improve the &lt;TECHNOLOGY&gt;mining capabilities&lt;&gt; of your fleet.
                                { "Russian", "Перепакованное улучшение, забранное с грузового судна &lt;STELLAR&gt;%NAME%﻿.&lt;&gt;&#xA;&#xA;Можно установить на крупный корабль, чтобы повысить &lt;TECHNOLOGY&gt;горнодобывающие возможности&lt;&gt; флота." },
                            }
                        },
                        --#endregion

                        --#region Минотавр
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MECH_SCAN_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сканирующий элемент «Минотавра»
                                -- Minotaur Scan Attachment
                                { "Russian", "Сканирующее оборудование" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MECH_LASER_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Горнодобывающая установка «Минотавра»
                                -- Minotaur Mining Utility
                                { "Russian", "Горнодобывающее оборудование" },
                            }
                        },
                        --#endregion

                        --#region суб-описание модулей
                        -- прокрутка раздражает
                        -- дублировать название технологии еще раз под ее заголовком не вижу смысла
                        -- краткость - сестра таланта... надеюсь и в этот раз :)
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UPGRADE_SUB_X" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Незаконное улучшение (%NAME%)
                                -- Illegal %NAME% Upgrade
                                { "Russian", "Незаконное улучшение" },
                            }
                        },

                        --#region Запрещенное улучшение
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_LASER_X_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрещенное улучшение расщепителя
                                { "Russian", "Запрещенное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SCANNER_X_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрещенное улучшение сканирующей системы
                                { "Russian", "Запрещенное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_BOLT_X_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрещенное улучшение плазмомета
                                { "Russian", "Запрещенное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_GRENADE_X_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрещенное улучшение плазмобластера
                                { "Russian", "Запрещенное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_TGRENADE_X_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрещенное улучшение геологической пушки
                                { "Russian", "Запрещенное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_RAIL_X_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрещенное улучшение пламенного копья
                                { "Russian", "Запрещенное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHOTGUN_X_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрещенное улучшение бластера-рассеивателя
                                { "Russian", "Запрещенное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SMG_X_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрещенное улучшение импульсного скорострела
                                { "Russian", "Запрещенное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_JETBOOST_X_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрещенное улучшение двигательных систем
                                { "Russian", "Запрещенное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIELDBOOST_X_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрещенное улучшение защитных систем
                                { "Russian", "Запрещенное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_ENERGY_X_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрещенное улучшение системы жизнеобеспечения
                                { "Russian", "Запрещенное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_HAZ_X_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрещенное улучшение защиты от вредных факторов
                                { "Russian", "Запрещенное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_PULSE_X_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрещенное улучшение импульсного двигателя
                                { "Russian", "Запрещенное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_LAUNCH_X_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрещенное улучшение взлетных ускорителей
                                { "Russian", "Запрещенное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_HYPER_X_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрещенное улучшение гипердвигателя
                                { "Russian", "Запрещенное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIPSHIELD_X_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрещенное улучшение защиты звездолета
                                { "Russian", "Запрещенное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIPGUN_X_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрещенное улучшение вооружения звездолета
                                { "Russian", "Запрещенное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIPLAS_X_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрещенное улучшение вооружения звездолета
                                { "Russian", "Запрещенное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIPSHOT_X_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрещенное улучшение вооружения звездолета
                                { "Russian", "Запрещенное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIPMINI_X_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрещенное улучшение вооружения звездолета
                                { "Russian", "Запрещенное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIPBLOB_X_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрещенное улучшение вооружения звездолета
                                { "Russian", "Запрещенное улучшение" },
                            }
                        },
                        --#endregion

                        --#region Превосходное улучшение
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BIO_PROD_LAUNCH4_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Превосходное улучшение скопления нейронов
                                { "Russian", "Превосходное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BIO_PROD_HYPER4_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Превосходное улучшение кортекса сингулярности
                                { "Russian", "Превосходное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BIO_PROD_GUN4_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Превосходное улучшение живого оружия
                                { "Russian", "Превосходное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BIO_PROD_LAS4_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Превосходное улучшение живого оружия
                                { "Russian", "Превосходное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_MECH_ENG4_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поразительно мощное улучшение двигателя «Минотавра»
                                -- Supreme Minotaur Engine Upgrade
                                { "Russian", "Превосходное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_MECHLAS4_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поразительно мощное улучшение расщепителя «Минотавра»
                                { "Russian", "Превосходное улучшение" },
                            }
                        },
                        --#endregion

                        --#region Знач. улучш.
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BIO_PROD_PULSE2_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Знач. улучш. бьющегося сердца
                                { "Russian", "Значительное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BIO_PROD_LAUNCH2_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Знач. улучш. скопления нейронов
                                { "Russian", "Значительное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BIO_PROD_HYPER2_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Знач. улучш. кортекса сингулярности
                                { "Russian", "Значительное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BIO_PROD_GUN2_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Знач. улучш. живого оружия
                                { "Russian", "Значительное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BIO_PROD_LAS2_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Знач. улучш. живого оружия
                                { "Russian", "Значительное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_MECH_ENG2_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Знач. улучш. двигателя «Минотавра»
                                { "Russian", "Значительное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_MECHLAS2_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Знач. улучш. оружия «Минотавра»
                                { "Russian", "Значительное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_MECHGUN2_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Знач. улучш. оружия «Минотавра»
                                { "Russian", "Значительное улучшение" },
                            }
                        },
                        --#endregion

                        --#region Мощное улучшение
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BIO_PROD_PULSE3_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Мощное улучшение бьющегося сердца
                                { "Russian", "Мощное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BIO_PROD_LAUNCH3_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Мощное улучшение скопления нейронов
                                { "Russian", "Мощное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BIO_PROD_HYPER3_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Мощное улучшение кортекса сингулярности
                                { "Russian", "Мощное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BIO_PROD_GUN3_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Мощное улучшение живого оружия
                                { "Russian", "Мощное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BIO_PROD_LAS3_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Мощное улучшение живого оружия
                                { "Russian", "Мощное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_MECH_ENG3_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Мощное улучшение двигателя «Минотавра»
                                { "Russian", "Мощное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_MECHLAS3_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Мощное улучшение оружия «Минотавра»
                                { "Russian", "Мощное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_MECHGUN3_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Мощное улучшение оружия «Минотавра»
                                { "Russian", "Мощное улучшение" },
                            }
                        },
                        --#endregion

                        --#endregion

                        --#region ЖИВОЙ КОРАБЛЬ
                        -- и все хорошо с переводом глаз, кроме того, что они не влазят в интерфейс, а я терпеть не могу прокрутку
                        -- получилось как какое-то название заклинания из гарри поттерра =)))
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SHIPLAS1_ALIEN_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ВЫРАЩЕННЫЕ ГЛАЗА
                                -- GRAFTED EYES
                                { "Russian", "ИНСИТУС ОКУЛОС" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SHIPLAS1_ALIEN_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Выращенные глаза
                                -- Grafted Eyes
                                { "Russian", "Инситус Окулос" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BIO_PROD_LAS_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- УЗЕЛ ВЫРАЩЕННЫХ ГЛАЗ
                                -- GRAFTED EYE NODE
                                { "Russian", "ИНСИТУС ОКУЛОС НОДИ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BIO_PROD_LAS_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Узел выращенных глаз
                                -- Grafted Eye Node
                                { "Russian", "Инситус Окулос Ноди" },
                            }
                        },
                        -- аналогично с отверстиями
                        -- в общем, это не переводимая шляпа и только на русском это звучит норм
                        -- кроме французского, болгарского, латыни и еще двух языков есть понятие изрыгать
                        -- в остальных языках его нет вообще
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SHIPGUN1_ALIEN_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ИЗРЫГАЮЩИЕ ОТВЕРСТИЯ
                                -- SPEWING VENTS
                                { "Russian", "ИЗРЫГАТЕЛЬ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SHIPGUN1_ALIEN_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Изрыгающ. отверстия
                                -- Spewing Vents
                                { "Russian", "Изрыгатель" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BIO_PROD_GUN1_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TRADEABLE&gt;Среднее&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;изрыгающие отверстия&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы запустить выращивание узла и начать &lt;VAL_ON&gt;процесс пересадки&lt;&gt;.&#xA;&#xA;Каждый узел генетически уникален, и точные параметры улучшения &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения пересадки.&#xA;&#xA;Может улучшить: &lt;STELLAR&gt;урон&lt;&gt;, &lt;STELLAR&gt;скорострельность&lt;&gt;, сократить &lt;STELLAR&gt;время перегрева&lt;&gt;.
                                { "Russian", "&lt;TRADEABLE&gt;Среднее&lt;&gt; улучшение &lt;TECHNOLOGY&gt;изрыгателя﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы запустить выращивание узла и начать &lt;VAL_ON&gt;процесс пересадки﻿.&lt;&gt;&#xA;&#xA;Каждый узел генетически уникален, и точные параметры улучшения &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения пересадки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон﻿,&lt;&gt; &lt;STELLAR&gt;скорострельность﻿,&lt;&gt; сократить &lt;STELLAR&gt;время перегрева﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BIO_PROD_GUN2_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;Значительное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;изрыгающие отверстия&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы запустить выращивание узла и начать &lt;VAL_ON&gt;процесс пересадки&lt;&gt;.&#xA;&#xA;Каждый узел генетически уникален, и точные параметры улучшения &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения пересадки.&#xA;&#xA;Может улучшить: &lt;STELLAR&gt;урон&lt;&gt;, &lt;STELLAR&gt;скорострельность&lt;&gt;, сократить &lt;STELLAR&gt;время перегрева&lt;&gt;.
                                { "Russian", "&lt;TECHNOLOGY&gt;Значительное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;изрыгателя﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы запустить выращивание узла и начать &lt;VAL_ON&gt;процесс пересадки﻿.&lt;&gt;&#xA;&#xA;Каждый узел генетически уникален, и точные параметры улучшения &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения пересадки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон﻿,&lt;&gt; &lt;STELLAR&gt;скорострельность﻿,&lt;&gt; сократить &lt;STELLAR&gt;время перегрева﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BIO_PROD_GUN3_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Невероятно мощное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;изрыгающие отверстия&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы запустить выращивание узла и начать &lt;VAL_ON&gt;процесс пересадки&lt;&gt;.&#xA;&#xA;Каждый узел генетически уникален, и точные параметры улучшения &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения пересадки.&#xA;&#xA;Может улучшить: &lt;STELLAR&gt;урон&lt;&gt;, &lt;STELLAR&gt;скорострельность&lt;&gt;, сократить &lt;STELLAR&gt;время перегрева&lt;&gt;.
                                { "Russian", "&lt;SPECIAL&gt;Невероятно мощное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;изрыгателя﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы запустить выращивание узла и начать &lt;VAL_ON&gt;процесс пересадки﻿.&lt;&gt;&#xA;&#xA;Каждый узел генетически уникален, и точные параметры улучшения &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения пересадки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон﻿,&lt;&gt; &lt;STELLAR&gt;скорострельность﻿,&lt;&gt; сократить &lt;STELLAR&gt;время перегрева﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BIO_PROD_GUN4_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;COMMODITY&gt;Поразительно мощное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;изрыгающие отверстия&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы запустить выращивание узла и начать &lt;VAL_ON&gt;процесс пересадки&lt;&gt;.&#xA;&#xA;Каждый узел генетически уникален, и точные параметры улучшения &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения пересадки.&#xA;&#xA;Может улучшить: &lt;STELLAR&gt;урон&lt;&gt;, &lt;STELLAR&gt;скорострельность&lt;&gt;, сократить &lt;STELLAR&gt;время перегрева&lt;&gt;.
                                { "Russian", "&lt;COMMODITY&gt;Поразительно мощное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;изрыгателя﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы запустить выращивание узла и начать &lt;VAL_ON&gt;процесс пересадки﻿.&lt;&gt;&#xA;&#xA;Каждый узел генетически уникален, и точные параметры улучшения &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения пересадки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон﻿,&lt;&gt; &lt;STELLAR&gt;скорострельность﻿,&lt;&gt; сократить &lt;STELLAR&gt;время перегрева﻿.&lt;&gt;" },
                            }
                        },
                        --#endregion


                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UT_SMGBOUNCE_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- РИКОШЕТНЫЙ МОД. ИМП. СКОРОСТРЕЛА
                                { "Russian", "РИКОШЕТНЫЙ МОДУЛЬ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UT_SMGBOUNCE_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Рикошетный модуль импульсного скорострела
                                { "Russian", "Рикошетный модуль плевуна" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UT_BOLTBOUNCE_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- РИКОШЕТНЫЙ МОД. ПЛАЗМОМЕТА
                                { "Russian", "РИКОШЕТНЫЙ МОДУЛЬ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_LASER_X_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПОДОЗРИТ. МОД. РАСЩЕП.
                                -- SUSPICIOUS MINING BEAM MODULE
                                { "Russian", "МОДУЛЬ РАСЩЕПИТЕЛЯ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_LASER_X_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Подозрительный модуль расщепителя
                                -- Suspicious Mining Beam Module
                                { "Russian", "Модуль расщепителя" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SCANNER_X_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПОД. МОД. СКАНЕРА
                                -- SUSPICIOUS SCANNER MODULE
                                { "Russian", "МОДУЛЬ СКАНЕРА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SCANNER_X_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Подозрительный модуль сканера
                                -- Suspicious Scanner Module
                                { "Russian", "Модуль сканера" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_BOLT_X_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПОД. МОД. ПЛАЗМОМ.
                                -- SUSPICIOUS BOLTCASTER MODULE
                                { "Russian", "МОДУЛЬ ПЛАЗМОМЕТА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_BOLT_X_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Подозрительный модуль плазмомета
                                -- Suspicious Boltcaster Module
                                { "Russian", "Модуль плазмомета" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_GRENADE_X_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПОДОЗРИТ. МОД. ПЛАЗМОБЛ.
                                -- SUSPICIOUS PLASMA LAUNCHER MODULE
                                { "Russian", "МОДУЛЬ ПЛАЗМОБЛАСТЕРА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_GRENADE_X_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Подозрительный модуль плазмобластера
                                -- Suspicious Plasma Launcher Module
                                { "Russian", "Модуль плазмобластера" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_TGRENADE_X_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПОДОЗР. МОД. ГЕОЛ. ПУШКИ
                                -- SUSPICIOUS GEOLOGY CANNON MODULE
                                { "Russian", "МОДУЛЬ ГЕОПУШКИ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_TGRENADE_X_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Подозрительный модуль геологической пушки
                                -- Suspicious Geology Cannon Module
                                { "Russian", "Модуль геологической пушки" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_RAIL_X_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПОДОЗР. МОД. ПЛАМЕН. КОПЬЯ
                                -- SUSPICIOUS BLAZE JAVELIN MODULE
                                { "Russian", "МОД. ПЛАМЕННОГО КОПЬЯ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_RAIL_X_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Подозрительный модуль пламенного копья
                                -- Suspicious Blaze Javelin Module
                                { "Russian", "Модуль пламенного копья" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHOTGUN_X_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПОД. МОД. БЛАСТЕРА-РАССЕИВ.
                                -- SUSPICIOUS SCATTER BLASTER MODULE
                                { "Russian", "МОДУЛЬ БЛАЗЕРА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHOTGUN_X_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Подозрительный модуль бластера-рассеивателя
                                -- Suspicious Scatter Blaster Module
                                { "Russian", "Модуль блазера" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SMG_X_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПОД. МОД. ИМП. СКОР.
                                -- SUSPICIOUS PULSE SPITTER MODULE
                                { "Russian", "МОДУЛЬ ПЛЕВУНА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SMG_X_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Подозрительный модуль импульсного скорострела
                                -- Suspicious Pulse Spitter Module
                                { "Russian", "Модуль плевуна" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_JETBOOST_X_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПОД. МОД. ДВИГАТ. СИСТЕМЫ
                                -- SUSPICIOUS MOVEMENT MODULE
                                { "Russian", "МОДУЛЬ ДВИЖЕНИЯ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_JETBOOST_X_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Подозрительный модуль двигательной системы
                                -- Suspicious Movement Module
                                { "Russian", "Модуль реактивного ранца" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIELDBOOST_X_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПОД. МОД. ЗАЩИТЫ
                                -- SUSPICIOUS SHIELD MODULE
                                { "Russian", "МОДУЛЬ ЗАЩИТЫ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIELDBOOST_X_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Подозрительный модуль защиты
                                -- Suspicious Shield Module
                                { "Russian", "Модуль защиты" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_ENERGY_X_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПОД. МОД. СИСТ. ЖИЗНЕОБ.
                                -- SUSPICIOUS LIFE SUPPORT MODULE
                                { "Russian", "МОД. ЖИЗНЕОБЕСПЕЧЕНИЯ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_ENERGY_X_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Подозрительный модуль системы жизнеобеспечения
                                -- Suspicious Life Support Module
                                { "Russian", "Модуль жизнеобеспечения" },
                            }
                        },
                        -- тут надо очень хорошо подумать, чтобы найти синоним
                        -- "модуль безопасности" - как-то непривычно звучит...
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_HAZ_X_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПОД. МОД. ЗАЩ. ОТ ВР. ФАКТ.
                                -- SUSPICIOUS HAZARD PROTECTION MODULE
                                { "Russian", "МОДУЛЬ БЕЗОПАСНОСТИ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_HAZ_X_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Подозрительный модуль защиты от вредных факторов
                                -- Suspicious Hazard Protection Module
                                { "Russian", "Модуль безопасности" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_PULSE_X_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПОД. МОД. ИМП. ДВИГ.
                                -- SUSPICIOUS PULSE ENGINE MODULE
                                { "Russian", "МОДУЛЬ ПЛАЗМОДВИГАТЕЛЯ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_PULSE_X_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Подозрительный модуль импульсного двигателя
                                -- Suspicious Pulse Engine Module
                                { "Russian", "Модуль плазмодвигателя" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_PULSE_X_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Нелегальная модификация&lt;&gt;: &lt;TECHNOLOGY&gt;импульсный двигатель звездолета&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить: &lt;STELLAR&gt;маневренность&lt;&gt; и &lt;STELLAR&gt;скорость&lt;&gt; звездолета.
                                { "Russian", "&lt;SPECIAL&gt;Нелегальная модификация&lt;&gt; &lt;TECHNOLOGY&gt;импульсного двигателя﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;маневренность&lt;&gt; и &lt;STELLAR&gt;скорость&lt;&gt; звездолёта." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_LAUNCH_X_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПОДОЗРИТЕЛЬНЫЙ МОДУЛЬ ВЗЛЕТНЫХ УСКОРИТЕЛЕЙ
                                -- SUSPICIOUS LAUNCH THRUSTERS MODULE
                                { "Russian", "МОДУЛЬ ВЗЛ. УСКОРИТЕЛЕЙ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_LAUNCH_X_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Подозрительный модуль взлетных ускорителей
                                -- Suspicious Launch Thrusters Module
                                { "Russian", "Модуль взлетных ускорителей" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_HYPER_X_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПОДОЗР. МОД. ГИПЕРДВИГАТ.
                                -- SUSPICIOUS HYPERDRIVE MODULE
                                { "Russian", "МОДУЛЬ ГИПЕРДВИГАТЕЛЯ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_HYPER_X_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Подозрительный модуль гипердвигателя
                                -- Suspicious Hyperdrive Module
                                { "Russian", "Модуль гипердвигателя" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIPSHIELD_X_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПОД. МОД. ЗАЩИТЫ ЗВЕЗД.
                                -- SUSPICIOUS STARSHIP SHIELD MODULE
                                { "Russian", "МОД. ЗАЩИТЫ ЗВЕЗДОЛЁТА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIPSHIELD_X_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Подозрительный модуль защиты звездолета
                                -- Suspicious Starship Shield Module
                                { "Russian", "Модуль защиты звездолёта" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIPGUN_X_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПОД. МОД. ФОТОННОЙ ПУШКИ
                                -- SUSPICIOUS PHOTON CANNON MODULE
                                { "Russian", "МОДУЛЬ ФОТОННОЙ ПУШКИ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIPGUN_X_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Подозрительный модуль фотонной пушки
                                -- Suspicious Photon Cannon Module
                                { "Russian", "Модуль фотонной пушки" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIPLAS_X_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПОД. МОД. ФАЗОВОГО ЛУЧА
                                -- SUSPICIOUS PHASE BEAM MODULE
                                { "Russian", "МОДУЛЬ ФАЗОВОГО ЛУЧА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIPLAS_X_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Подозрительный модуль фазового луча
                                -- Suspicious Phase Beam Module
                                { "Russian", "Модуль фазового луча" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIPSHOT_X_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПОД. МОД. ПОЗ. ЭЖЕКТ.
                                -- SUSPICIOUS POSITRON MODULE
                                { "Russian", "МОДУЛЬ β+ ЭЖЕКТОРА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIPSHOT_X_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Подозрительный модуль позитронного эжектора
                                -- Suspicious Positron Module
                                { "Russian", "Модуль β+ эжектора" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIPMINI_X_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПОД. МОД. ИНФР. УСКОРИТ.
                                -- SUSPICIOUS INFRA-KNIFE MODULE
                                { "Russian", "МОДУЛЬ ИГЛОСТРЕЛА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIPMINI_X_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Подозрительный модуль инфракрасного ускорителя
                                -- Suspicious Infra-Knife Module
                                { "Russian", "Модуль иглострела" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIPMINI_X_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Нелегальная модификация&lt;&gt;: &lt;TECHNOLOGY&gt;инфракрасный ускоритель&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить: &lt;STELLAR&gt; наносимый урон&lt;&gt;, &lt;STELLAR&gt;скорострельность&lt;&gt;, сократить &lt;STELLAR&gt;время перегрева&lt;&gt;.
                                { "Russian", "&lt;SPECIAL&gt;Нелегальная модификация&lt;&gt; &lt;TECHNOLOGY&gt;иглострела﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;наносимый урон﻿,&lt;&gt; &lt;STELLAR&gt;скорострельность﻿,&lt;&gt; сократить &lt;STELLAR&gt;время перегрева﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TWIT_SHIP_02_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Эксклюзивный &lt;STELLAR&gt;звездолет&lt;&gt;, оснащенный улучшенным &lt;TECHNOLOGY&gt;инфракрасным ускорителем&lt;&gt; для более эффективного уничтожения вражеских кораблей.&#xA;&#xA;&lt;STELLAR&gt;Получите&lt;&gt; этот корабль, чтобы добавить его в коллекцию или использовать &lt;STELLAR&gt;вместо&lt;&gt; своего текущего корабля. Находясь на планете, вы можете призвать корабли с помощью быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                { "Russian", "Эксклюзивный &lt;STELLAR&gt;звездолёт﻿,&lt;&gt; оснащенный улучшенным &lt;TECHNOLOGY&gt;иглострелом&lt;&gt; для более эффективного уничтожения вражеских кораблей.&#xA;&#xA;&lt;STELLAR&gt;Получите&lt;&gt; этот корабль, чтобы добавить его в коллекцию или использовать &lt;STELLAR&gt;вместо&lt;&gt; своего текущего корабля. Находясь на планете, вы можете призвать корабли с помощью быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TWIT_SHIP_08_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Эксклюзивный &lt;STELLAR&gt;звездолет&lt;&gt;, оснащенный улучшенным &lt;TECHNOLOGY&gt;инфракрасным ускорителем&lt;&gt; для более эффективного уничтожения вражеских кораблей.&#xA;&#xA;&lt;STELLAR&gt;Получите&lt;&gt; этот корабль, чтобы добавить его в коллекцию или использовать &lt;STELLAR&gt;вместо&lt;&gt; своего текущего корабля. Находясь на планете, вы можете призвать корабли с помощью быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                { "Russian", "Эксклюзивный &lt;STELLAR&gt;звездолёт﻿,&lt;&gt; оснащенный улучшенным &lt;TECHNOLOGY&gt;иглострелом&lt;&gt; для более эффективного уничтожения вражеских кораблей.&#xA;&#xA;&lt;STELLAR&gt;Получите&lt;&gt; этот корабль, чтобы добавить его в коллекцию или использовать &lt;STELLAR&gt;вместо&lt;&gt; своего текущего корабля. Находясь на планете, вы можете призвать корабли с помощью быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIPBLOB_X_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПОД. МОД. ЦИКЛ. БАЛЛИСТЫ
                                -- SUSPICIOUS CYCLOTRON MODULE
                                { "Russian", "МОДУЛЬ ЦИКЛОТРОНИТОНА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIPBLOB_X_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Подозрительный модуль циклотронной баллисты
                                -- Suspicious Cyclotron Module
                                { "Russian", "Модуль циклотронитона" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHOTGUN_X_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Нелегальная модификация&lt;&gt;: &lt;TECHNOLOGY&gt;бластер-рассеиватель&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить: &lt;STELLAR&gt;урон&lt;&gt;, &lt;STELLAR&gt;время перезарядки&lt;&gt;, &lt;STELLAR&gt;размер обоймы&lt;&gt; и &lt;STELLAR&gt;скорострельность&lt;&gt;.
                                --
                                { "Russian", "&lt;SPECIAL&gt;Нелегальная модификация&lt;&gt; &lt;TECHNOLOGY&gt;блазера﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон﻿,&lt;&gt; &lt;STELLAR&gt;время перезарядки﻿,&lt;&gt; &lt;STELLAR&gt;размер обоймы&lt;&gt; и &lt;STELLAR&gt;скорострельность﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UT_SMGBOUNCE_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Создает поле антиматерии вокруг снарядов &lt;TECHNOLOGY&gt;импульсного скорострела&lt;&gt;, позволяющее им отскакивать от неповрежденных поверхностей.&#xA;&#xA;Позволяет снарядам &lt;STELLAR&gt;рикошетить&lt;&gt; и отскакивать, если они попадают по цели, которую не могут повредить.
                                -- Creates an antimatter field around the shots of the &lt;TECHNOLOGY&gt;Pulse Spitter&lt;&gt;, causing them to be repelled by non-damaged surfaces.&#xA;&#xA;Enables &lt;STELLAR&gt;ricochet&lt;&gt;, causing projectiles to bounce if they hit a target they do not damage.
                                { "Russian", "Создает поле антиматерии вокруг снарядов &lt;TECHNOLOGY&gt;плевуна﻿,&lt;&gt; позволяющее им отскакивать от неповрежденных поверхностей.&#xA;&#xA;Позволяет снарядам &lt;STELLAR&gt;рикошетить&lt;&gt; и отскакивать, если они попадают по цели, которую не могут повредить." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SMG_X_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Нелегальная модификация&lt;&gt;: &lt;TECHNOLOGY&gt;импульсный скорострел&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить: &lt;STELLAR&gt;урон&lt;&gt;, &lt;STELLAR&gt;время перезарядки&lt;&gt;, &lt;STELLAR&gt;размер обоймы&lt;&gt; и &lt;STELLAR&gt;скорострельность&lt;&gt;.
                                -- A &lt;SPECIAL&gt;black-market modification&lt;&gt; for the &lt;TECHNOLOGY&gt;Pulse Spitter&lt;&gt;. Use &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt; to begin upgrade &lt;VAL_ON&gt;installation process&lt;&gt;.&#xA;&#xA;The module is flexible, and exact upgrade statistics are &lt;SPECIAL&gt;unknown&lt;&gt; until installation is complete.&#xA;&#xA;Potential upgrades include: &lt;STELLAR&gt;damage output&lt;&gt;, &lt;STELLAR&gt;reload times&lt;&gt;, &lt;STELLAR&gt;clip size&lt;&gt; and &lt;STELLAR&gt;firing rate&lt;&gt;.
                                { "Russian", "&lt;SPECIAL&gt;Нелегальная модификация&lt;&gt; &lt;TECHNOLOGY&gt;плевуна﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон﻿,&lt;&gt; &lt;STELLAR&gt;время перезарядки﻿,&lt;&gt; &lt;STELLAR&gt;размер обоймы&lt;&gt; и &lt;STELLAR&gt;скорострельность﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TWIT_GUN_05_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Эксклюзивный &lt;STELLAR&gt;мультитул&lt;&gt;. Эта винтовка оснащена смертоносным &lt;TECHNOLOGY&gt;импульсным скорострелом&lt;&gt; и взрывным &lt;TECHNOLOGY&gt;плазмобластером&lt;&gt;.&#xA;&#xA;&lt;STELLAR&gt;Получите этот мультитул&lt;&gt;, чтобы добавить его в коллекцию или использовать &lt;STELLAR&gt;вместо&lt;&gt; своего текущего мультитула. Выберите активный мультитул в разделе «Инструменты» в быстром меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                -- An exclusive &lt;STELLAR&gt;Multi-Tool&lt;&gt;. This rifle comes with the deadly &lt;TECHNOLOGY&gt;Pulse Spitter&lt;&gt; and explosive &lt;TECHNOLOGY&gt;Plasma Launcher&lt;&gt; pre-installed.&#xA;&#xA;&lt;STELLAR&gt;Take&lt;&gt; this Multi-Tool to add it to your collection, or &lt;STELLAR&gt;Exchange&lt;&gt; it with your current Multi-Tool. Swap between active Multi-Tools from the Utilities section of the Quick Menu (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                { "Russian", "Эксклюзивный &lt;STELLAR&gt;мультитул﻿.&lt;&gt; Эта винтовка оснащена смертоносным &lt;TECHNOLOGY&gt;плевуном&lt;&gt; и взрывным &lt;TECHNOLOGY&gt;плазмобластером﻿.&lt;&gt;&#xA;&#xA;&lt;STELLAR&gt;Получите&lt;&gt; этот мультитул, чтобы добавить его в коллекцию или &lt;STELLAR&gt;заменить&lt;&gt; текущий. Мультитул можно выбрать в разделе «Инструменты» из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)." },
                            }
                        },
                        --
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXOHAZ_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Блок защиты вездехода от вредных факторов
                                -- Exocraft Hazard Protection Unit
                                { "Russian", "Блок защиты от вредных факторов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_MECHGUN4_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поразительно мощное улучшение оружия «Минотавра»
                                { "Russian", "Превосходное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BIO_PROD_GUN_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- УЗЕЛ ИЗРЫГАЮЩИХ ОТВЕРСТИЙ
                                { "Russian", "УЗЕЛ ИЗРЫГАТЕЛЯ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BIO_PROD_GUN_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Узел изрыгающих отверстий
                                { "Russian", "Узел изрыгателя" },
                            }
                        },

                        --#region Шлейф звездолета
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SHIPTRAIL_RAINBOW_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ЦВЕТНОЙ ШЛЕЙФ ЗВЕЗДОЛЕТА
                                { "Russian", "ЦВЕТНОЙ ШЛЕЙФ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SHIPTRAIL_DARK_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МАСКИРОВОЧНЫЙ ШЛЕЙФ ЗВЕЗДОЛЕТА
                                { "Russian", "МАСКИРОВОЧНЫЙ ШЛЕЙФ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SHIPTRAIL_RED_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КАДМИЕВЫЙ ШЛЕЙФ ЗВЕЗДОЛЕТА
                                { "Russian", "КАДМИЕВЫЙ ШЛЕЙФ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SHIPTRAIL_GREEN_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ЭМЕРИЛОВЫЙ ШЛЕЙФ ЗВЕЗДОЛЕТА
                                { "Russian", "ЭМЕРИЛОВЫЙ ШЛЕЙФ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SHIPTRAIL_GOLD_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ЗОЛОТОЙ ШЛЕЙФ ЗВЕЗДОЛЕТА
                                { "Russian", "ЗОЛОТОЙ ШЛЕЙФ" },
                            }
                        },
                        --#endregion
                    }
                },
                { -- LANGUAGE/NMS_LOC7_RUSSIAN.MBIN
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_LOC7_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MECH_RIGHT_ARM_GUN_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Stun Cannon
                                -- Оглушающая пушка
                                { "Russian", "Гаусс-пушка" },
                            }
                        },

                        -- не приходит ничего умного в голову
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SCAN_BLOCKER_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ОТРАЖАТЕЛЬ СКАНИРОВАНИЯ ГРУЗА
                                -- CARGO SCAN DEFLECTOR
                                { "Russian", "ОТРАЖАТЕЛЬ СКАНИРОВАНИЯ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SCAN_BLOCKER_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Отражатель сканирования груза
                                -- Cargo Scan Deflector
                                { "Russian", "Отражатель сканирования" },
                            }
                        },

                        --#region Подготовленный модуль
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_TECH_BOX_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПОДГОТОВЛЕННЫЙ МОДУЛЬ (%NAME%)
                                -- PRE-PACKAGED %NAME% UNIT
                                { "Russian", "%NAME%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_TECH_BOX_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Подготовленный модуль (%NAME%)
                                -- Pre-Packaged %NAME% Unit
                                { "Russian", "%NAME%" },
                            }
                        },
                        --#endregion

                        --#region Возможные улучшения / образцы
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_PROC_TECH_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Возможное улучшение (%NAME%)
                                -- Potential %NAME% Upgrade
                                { "Russian", "Возможное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_UPGRADE_DESC_WIKI_LVLX" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Образец подозрительной &lt;SPECIAL&gt;модификации с черного рынка&lt;&gt; (&lt;TECHNOLOGY&gt;%NAME%&lt;&gt;).
                                { "Russian", "Образец подозрительной &lt;SPECIAL&gt;модификации с черного рынка&lt;&gt; для технологии &lt;TECHNOLOGY&gt;%NAME%﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_UPGRADE_DESC_WIKI_LVL1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Образец &lt;TRADEABLE&gt;среднего&lt;&gt; улучшения (&lt;TECHNOLOGY&gt;%NAME%&lt;&gt;). Такие часто можно найти у торговцев технологиями по всей галактике.
                                { "Russian", "Образец &lt;TRADEABLE&gt;среднего&lt;&gt; улучшения технологии &lt;TECHNOLOGY&gt;%NAME%﻿.&lt;&gt; Такие часто можно найти у торговцев технологиями по всей галактике." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_UPGRADE_DESC_WIKI_LVL2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Образец &lt;TECHNOLOGY&gt;значительного&lt;&gt; улучшения (&lt;TECHNOLOGY&gt;%NAME%&lt;&gt;). Такие часто можно найти у торговцев технологиями по всей галактике.
                                { "Russian", "Образец &lt;TECHNOLOGY&gt;значительного&lt;&gt; улучшения технологии &lt;TECHNOLOGY&gt;%NAME%﻿.&lt;&gt; Такие часто можно найти у торговцев технологиями по всей галактике." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_UPGRADE_DESC_WIKI_LVL3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Образец &lt;SPECIAL&gt;невероятно мощного&lt;&gt; улучшения (&lt;TECHNOLOGY&gt;%NAME%&lt;&gt;). Такие часто можно найти у торговцев технологиями по всей галактике.
                                { "Russian", "Образец &lt;SPECIAL&gt;невероятно мощного&lt;&gt; улучшения технологии &lt;TECHNOLOGY&gt;%NAME%﻿.&lt;&gt; Такие часто можно найти у торговцев технологиями по всей галактике." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_UPGRADE_DESC_WIKI_LVL4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Образец &lt;COMMODITY&gt;превосходного&lt;&gt; улучшения (&lt;TECHNOLOGY&gt;%NAME%&lt;&gt;). Такие часто можно найти у торговцев технологиями по всей галактике.
                                { "Russian", "Образец &lt;COMMODITY&gt;превосходного&lt;&gt; улучшения технологии &lt;TECHNOLOGY&gt;%NAME%﻿.&lt;&gt; Такие часто можно найти у торговцев технологиями по всей галактике." },
                            }
                        },
                        --#endregion

                        --#region Нейтронная пушка
                        -- очень хороший был вариант n⁰-ПУШКА, но в режиме игры справа вверху нуль не рисуется, а рисуется квадрат.
                        -- т.е. символа нет. в итоге, пришлось переделать.
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "CANNON_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- НЕЙТРОННАЯ ПУШКА
                                -- NEUTRON CANNON
                                { "Russian", "ПУШКА НЕЙТРОН" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "CANNON_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Нейтронная пушка
                                -- Neutron Cannon
                                { "Russian", "Пушка Нейтрон" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_CANNON_X_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПОДОЗРИТ. МОДУЛЬ НЕЙТРОННОЙ ПУШКИ
                                -- SUSPICIOUS NEUTRON CANNON MODULE
                                { "Russian", "МОДУЛЬ ПУШКИ НЕЙТРОН" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_CANNON_X_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Подозрительный модуль нейтронной пушки
                                -- Suspicious Neutron Cannon Module
                                { "Russian", "Модуль нейтронной пушки" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_CANNON1_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОДУЛЬ НЕЙТРОННОЙ ПУШКИ
                                -- NEUTRON CANNON MODULE
                                { "Russian", "МОДУЛЬ ПУШКИ НЕЙТРОН" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_CANNON2_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОДУЛЬ НЕЙТРОННОЙ ПУШКИ
                                -- NEUTRON CANNON MODULE
                                { "Russian", "МОДУЛЬ ПУШКИ НЕЙТРОН" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_CANNON3_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОДУЛЬ НЕЙТРОННОЙ ПУШКИ
                                -- NEUTRON CANNON MODULE
                                { "Russian", "МОДУЛЬ ПУШКИ НЕЙТРОН" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_CANNON4_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОДУЛЬ НЕЙТРОННОЙ ПУШКИ
                                -- NEUTRON CANNON MODULE
                                { "Russian", "МОДУЛЬ ПУШКИ НЕЙТРОН" },
                            }
                        },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "UP_CANNON1_SUB" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Улучшение нейтронной пушки
                        --         { "Russian", "Улучшение нейтронной пушки" },
                        --     }
                        -- },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_CANNON2_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Значит. улучшение нейтронной пушки
                                { "Russian", "Значительное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_CANNON3_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Мощное улучшение нейтронной пушки
                                { "Russian", "Мощное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_CANNON4_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Прев. улучшение нейтронной пушки
                                { "Russian", "Превосходное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_CANNON_X_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрещенное улучшение нейтронной пушки
                                { "Russian", "Запрещенное улучшение" },
                            }
                        },
                        --#endregion
                        --
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TWIT_SHIP_20_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Эксклюзивный &lt;STELLAR&gt;звездолет&lt;&gt;. Обтекаемая форма, маневренность и продвинутый &lt;TECHNOLOGY&gt;инфракрасный ускоритель&lt;&gt; обеспечивают преимущество в бою.&#xA;&#xA;&lt;STELLAR&gt;Получите&lt;&gt; этот корабль, чтобы добавить его в коллекцию или использовать &lt;STELLAR&gt;вместо&lt;&gt; своего текущего корабля. Находясь на планете, вы можете призывать корабли с помощью быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                { "Russian", "Эксклюзивный &lt;STELLAR&gt;звездолёт﻿.&lt;&gt; Обтекаемая форма, маневренность и продвинутый &lt;TECHNOLOGY&gt;иглострел&lt;&gt; обеспечивают преимущество в бою.&#xA;&#xA;&lt;STELLAR&gt;Получите&lt;&gt; этот корабль, чтобы добавить его в коллекцию или использовать &lt;STELLAR&gt;вместо&lt;&gt; своего текущего корабля. Находясь на планете, вы можете призывать корабли с помощью быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_STEALTH_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ГЕНЕРАТОР НЕВИДИМОСТИ
                                -- CLOAKING DEVICE
                                { "Russian", "НЕВИДИМКА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_STEALTH_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Генератор невидимости
                                -- Cloaking Device
                                { "Russian", "Невидимка" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "STUN_GRENADE_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПАРАЛИЗУЮЩИЙ МИНОМЕТ
                                -- PARALYSIS MORTAR
                                { "Russian", "МИНОМЕТ ГАУССА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "STUN_GRENADE_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Парализующий миномет
                                -- Paralysis Mortar
                                { "Russian", "Миномет Гаусса" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TWIT_GUN_09_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Эксклюзивный &lt;STELLAR&gt;мультитул&lt;&gt;. Инопланетное оружие, оснащенное улучшенным &lt;TECHNOLOGY&gt;импульсным скорострелом&lt;&gt;. Инжекторные снаряды способны &lt;STELLAR&gt;поджечь&lt;&gt; цель после попадания.&#xA;&#xA;&lt;STELLAR&gt;Получите&lt;&gt; этот мультитул, чтобы добавить его в коллекцию или использовать &lt;STELLAR&gt;вместо&lt;&gt; своего текущего мультитула. Выберите активный мультитул в разделе «Инструменты» в быстром меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                -- An exclusive &lt;STELLAR&gt;Multi-Tool&lt;&gt;. This alien weapon is fitted with an upgraded &lt;TECHNOLOGY&gt;Pulse Spitter&lt;&gt;, the fuel-injected projectiles capable of &lt;STELLAR&gt;igniting&lt;&gt; targets after impact.&#xA;&#xA;&lt;STELLAR&gt;Take&lt;&gt; this Multi-Tool to add it to your collection, or &lt;STELLAR&gt;Exchange&lt;&gt; it with your current Multi-Tool. Swap between active Multi-Tools from the Utilities section of the Quick Menu (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                { "Russian", "Эксклюзивный &lt;STELLAR&gt;мультитул﻿.&lt;&gt; Инопланетное оружие, оснащенное улучшенным &lt;TECHNOLOGY&gt;плевуном﻿.&lt;&gt; Инжекторные снаряды способны &lt;STELLAR&gt;поджечь&lt;&gt; цель после попадания.&#xA;&#xA;&lt;STELLAR&gt;Получите&lt;&gt; этот мультитул, чтобы добавить его в коллекцию или &lt;STELLAR&gt;заменить&lt;&gt; текущий. Мультитул можно выбрать в разделе «Инструменты» из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UT_SMG_DOT_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Мощное боевое улучшение для &lt;TECHNOLOGY&gt;импульсного скорострела&lt;&gt;. Этот модуль устанавливает в зарядную камеру несколько точно настроенных форсунок, которые вызывают контролируемый процесс горения внутри зарядов плазмы.&#xA;&#xA;При попадании эти снаряды ненадолго &lt;STELLAR&gt;поджигают&lt;&gt; цель, нанося дополнительный урон.
                                -- A powerful combat upgrade for the &lt;TECHNOLOGY&gt;Pulse Spitter&lt;&gt;. This module installs series of delicately calibrated fuel-injection nozzles within the firing chamber, which are used to initiate a controlled burn within its plasma projectiles.&#xA;&#xA;Causes targets hit by the Pulse Spitter to &lt;STELLAR&gt;burn&lt;&gt; for a short while, causing additional damage.
                                { "Russian", "Мощное боевое улучшение для &lt;TECHNOLOGY&gt;плевуна﻿.&lt;&gt; Этот модуль устанавливает в зарядную камеру несколько точно настроенных форсунок, которые вызывают контролируемый процесс горения внутри зарядов плазмы.&#xA;&#xA;При попадании эти снаряды ненадолго &lt;STELLAR&gt;поджигают&lt;&gt; цель, нанося дополнительный урон." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UT_SHIPDRIFT_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ОБХОД ПОМОЩИ ПРИ ПОЛЕТЕ
                                -- FLIGHT ASSIST OVERRIDE
                                { "Russian", "ОБХОД АВТОПИЛОТА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UT_SHIPDRIFT_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обход помощи при полете
                                -- Flight Assist Override
                                { "Russian", "Обход автопилота" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UT_SHIPDRIFT_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Усовершенствованный модуль пилотирования звездолета
                                -- Advanced Starship Pilot Module
                                { "Russian", "Продвинутый модуль пилотирования" },
                            }
                        },

                        --#region Шлейф звездолета
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SHIPTRAIL_PIRATE_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- БРЫЗГАЮЩИЙ ШЛЕЙФ ЗВЕЗДОЛЕТА
                                { "Russian", "БРЫЗГАЮЩИЙ ШЛЕЙФ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SHIPTRAIL_ROGUE_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ВРЕМЕННОЙ ШЛЕЙФ ЗВЕЗДОЛЕТА
                                -- TEMPORAL STARSHIP TRAIL
                                { "Russian", "ВРЕМЕННОЙ ШЛЕЙФ" },
                            }
                        },
                        --#endregion
                    }
                },
                { -- LANGUAGE/NMS_LOC8_RUSSIAN.MBIN
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_LOC8_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        --#region Огнеметы Минотавра
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MECH_FLAME_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Огнемет «Минотавра»
                                { "Russian", "Огнемёт" },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_ROBOSUIT_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПЕРЕСТРОЕННЫЙ МОДУЛЬ ЭКЗОКОСТЮМА
                                -- REBUILT EXOSUIT MODULE
                                { "Russian", "МОДУЛЬ ЭКЗОКОСТЮМА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_ROBOSUIT_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Перестроенный модуль экзокостюма
                                -- Rebuilt Exosuit Module
                                { "Russian", "Модуль экзокостюма" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MECH_TECHS_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;Чертеж технологий «Минотавра»&lt;&gt;
                                -- &lt;TECHNOLOGY&gt;Minotaur Technology Blueprints&lt;&gt;
                                { "Russian", "&lt;TECHNOLOGY&gt;Чертежи Минотавра&lt;&gt;" },
                            }
                        },

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TWIT_GUN_19_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Эксклюзивный &lt;STELLAR&gt;мультитул&lt;&gt;. Этот пистолет оснащен мощным улучшенным &lt;TECHNOLOGY&gt;импульсным скорострелом&lt;&gt;.&#xA;&#xA;&lt;STELLAR&gt;Получите&lt;&gt; этот мультитул, чтобы добавить его в коллекцию или использовать &lt;STELLAR&gt;вместо&lt;&gt; своего текущего мультитула. Выберите активный мультитул в разделе «Инструменты» в быстром меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                -- An exclusive &lt;STELLAR&gt;Multi-Tool&lt;&gt;. This pistol comes with a powerful, upgraded &lt;TECHNOLOGY&gt;Pulse Spitter&lt;&gt; pre-installed.&#xA;&#xA;&lt;STELLAR&gt;Take&lt;&gt; this Multi-Tool to add it to your collection, or &lt;STELLAR&gt;Exchange&lt;&gt; it with your current Multi-Tool. Swap between active Multi-Tools from the Utilities section of the Quick Menu (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                { "Russian", "Эксклюзивный &lt;STELLAR&gt;мультитул﻿.&lt;&gt; Этот пистолет оснащен мощным улучшенным &lt;TECHNOLOGY&gt;плевуном﻿.&lt;&gt;&#xA;&#xA;&lt;STELLAR&gt;Получите&lt;&gt; этот мультитул, чтобы добавить его в коллекцию или &lt;STELLAR&gt;заменить&lt;&gt; текущий. Мультитул можно выбрать в разделе «Инструменты» из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_FIRE_AMMO_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Все оружие, стреляющее снарядами (&lt;TECHNOLOGY&gt;плазмомет&lt;&gt;, &lt;TRADEABLE&gt;импульсный скорострел&lt;&gt; и &lt;COMMODITY&gt;бластер-рассеиватель&lt;&gt;) использует одни и те же боеприпасы.&#xA;&#xA;Чтобы &lt;VAL_ON&gt;перезарядить&lt;&gt; оружие во время боя, нажмите &lt;IMG&gt;RELOAD&lt;&gt;. Во время этого действия боеприпасы берутся из вашего инвентаря автоматически. &lt;STELLAR&gt;Прежде&lt;&gt; чем вступить в бой, убедитесь, что у вас достаточно боеприпасов.&#xA;&#xA;Изготавливайте боеприпасы в пустых ячейках с помощью &lt;IMG&gt;PRODMENU&lt;&gt; или пополните имеющуюся стопку (&lt;IMG&gt;TECHMENU&lt;&gt;).
                                -- All projectile-based weapons use the same ammunition: the &lt;TECHNOLOGY&gt;Boltcaster&lt;&gt;, the &lt;TRADEABLE&gt;Pulse Spitter&lt;&gt; and the &lt;COMMODITY&gt;Scatter Blaster&lt;&gt;.&#xA;&#xA;While in combat, &lt;VAL_ON&gt;Reload&lt;&gt; your current weapon with &lt;IMG&gt;RELOAD&lt;&gt;. This will automatically draw ammo from your inventory. Ensure you have crafted sufficient ammunition &lt;STELLAR&gt;before&lt;&gt; entering a combat situation.&#xA;&#xA;Craft rounds in empty inventory slots with &lt;IMG&gt;PRODMENU&lt;&gt; or increase an existing stack &lt;IMG&gt;TECHMENU&lt;&gt;.
                                { "Russian", "Всё стрелковое оружие (&lt;TECHNOLOGY&gt;плазмомет﻿,&lt;&gt; &lt;TRADEABLE&gt;плевун&lt;&gt; и &lt;COMMODITY&gt;блазер&lt;&gt;) использует одни и те же боеприпасы.&#xA;&#xA;Чтобы &lt;VAL_ON&gt;перезарядить&lt;&gt; оружие во время боя, нажмите &lt;IMG&gt;RELOAD&lt;&gt;. Во время этого действия боеприпасы берутся из вашего инвентаря автоматически. &lt;STELLAR&gt;Прежде&lt;&gt; чем вступить в бой, убедитесь, что у вас достаточно боеприпасов.&#xA;&#xA;Изготавливайте боеприпасы в пустых ячейках с помощью &lt;IMG&gt;PRODMENU&lt;&gt; или пополните имеющуюся стопку (&lt;IMG&gt;TECHMENU&lt;&gt;)." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_MECHFLAME2_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Значительное улучшение оружия «Минотавра»
                                -- Significant Minotaur Weapon Upgrade
                                { "Russian", "Значительное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_MECHFLAME3_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Мощное улучшение оружия «Минотавра»
                                -- Powerful Minotaur Weapon Upgrade
                                { "Russian", "Мощное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_MECHFLAME4_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поразительно мощное улучшение оружия «Минотавра»
                                -- Supreme Minotaur Weapon Upgrade
                                { "Russian", "Превосходное улучшение" },
                            }
                        },
                        -- это из области фантастики
                        -- вообще не переводимая вещь
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WATER_LANDER_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ВОДНЫЕ РЕАКТИВНЫЕ ДВИГАТЕЛИ
                                -- AQUA-JETS
                                { "Russian", "АКВА ДВИЖИТЕЛИ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WATER_LANDER_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Водные реактивные двигатели
                                -- Aqua-Jets
                                { "Russian", "Аква движители" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SUIT_REFINER2_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ЛИЧНЫЙ ОЧИСТИТЕЛЬ МОД. 2
                                -- PERSONAL REFINER MK 2
                                { "Russian", "ЛИЧНЫЙ ОЧИСТИТЕЛЬ №2" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SUIT_REFINER2_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Личный очиститель мод. 2
                                -- Personal Refiner Mk 2
                                { "Russian", "Личный очиститель №2" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SHIP_CORE_SHOP_LABEL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Компонент фабрикатора звездолета
                                -- Starship Fabricator Component
                                { "Russian", "Деталь звездолёта" },
                            }
                        },
                    }
                },
                { -- LANGUAGE/NMS_UPDATE3_RUSSIAN.MBIN
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_UPDATE3_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FREIGHTER_DRIVE_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ГРУЗОВОЙ КОРАБЛЬ ГИПЕРДВИГАТЕЛЬ
                                -- FREIGHTER HYPERDRIVE
                                { "Russian", "ОГРОМНЫЙ ГИПЕРДВИГАТЕЛЬ" },
                            }
                        },

                        --#region УСИЛЕННОЕ ВАРП-ЭКРАНИРОВАНИЕ
                        -- почитал википедию, ну магнитный трубопровод это конечно смешно звучит
                        -- без негатива, а то фанаты Стартрека какулями забросают
                        -- так что магнитный блок - самое оно
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RGB_WARP_1_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Улучшает магниты поддержки ядра гипердвигателя, защищая его от разрушения при приближении к редким &lt;FUEL&gt;красным космическим телам&lt;&gt;.&#xA;&#xA;Рекомендуется использовать системы гипердвигателя с помощью &lt;VAL_ON&gt;галактической карты&lt;&gt;.
                                -- Upgrades the hyperdrive's core bounding magnets, preventing rapid disassembly when attempting to reach rare-class &lt;FUEL&gt;red stellar bodies&lt;&gt;.&#xA;&#xA;User is advised to access Hyperdrive systems via the &lt;VAL_ON&gt;Galactic Map&lt;&gt;.
                                { "Russian", "Улучшает магнитный блок гипердвигателя, защищая его от разрушения при приближении к редким &lt;FUEL&gt;красным космическим телам﻿.&lt;&gt;&#xA;&#xA;Рекомендуется использовать системы гипердвигателя с помощью &lt;VAL_ON&gt;галактической карты﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RGB_WARP_1_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- УСИЛЕННОЕ ВАРП-ЭКРАНИРОВАНИЕ
                                -- AMPLIFIED WARP SHIELDING
                                { "Russian", "УСИЛЕННОЕ ЭКРАНИРОВАНИЕ" },
                            }
                        },
                        --#endregion

                        --#region ХРОМАТИЧЕСКОЕ ВАРП-ЭКРАНИРОВАНИЕ
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RGB_WARP_2_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ХРОМАТИЧЕСКОЕ ВАРП-ЭКРАНИРОВАНИЕ
                                -- CHROMATIC WARP SHIELDING
                                { "Russian", "ХРОМАТИЧЕСКАЯ ЗАЩИТА" },
                            }
                        },
                        --#endregion

                        --#region ВРЕМЕННЫЙ ВАРП-ВЫЧИСЛИТЕЛЬ
                        -- прямая отсылка к парадоксу путешествия во времени (temporal paradox)
                        -- задачи на эту тему дают в некоторых школах и университетах
                        -- естественно, т.к. Эйнштейн нихера не объяснил, мало кто даже сегодня может правильно решать такие задачи
                        -- отсюда и компьютер для ее решения =))
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RGB_WARP_3_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Улучшает расчетную матрицу гипердвигателя, предотвращая возникновение темпоральных аномалий при приближении к редким &lt;TECHNOLOGY&gt;синим космическим телам&lt;&gt;.&#xA;&#xA;Рекомендуется использовать системы гипердвигателя с помощью &lt;VAL_ON&gt;галактической карты&lt;&gt;.
                                { "Russian", "Улучшает расчетную матрицу гипердвигателя, предотвращая возникновение аномалий во времени при приближении к редким &lt;TECHNOLOGY&gt;синим космическим телам﻿.&lt;&gt;&#xA;&#xA;Рекомендуется использовать системы гипердвигателя с помощью &lt;VAL_ON&gt;галактической карты﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RGB_WARP_3_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ВРЕМЕННЫЙ ВАРП-ВЫЧИСЛИТЕЛЬ
                                -- TEMPORAL WARP COMPUTER
                                { "Russian", "ВРЕМЕННОЙ ВЫЧИСЛИТЕЛЬ" },
                            }
                        },
                        --#endregion

                        --#region ПЛАЗМАТИЧЕСКИЙ ВАРП-ИНЖЕКТОР
                        -- опять же, Стартрек, исправляем!
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FREIGHTER_DRIVE2_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПЛАЗМАТИЧЕСКИЙ ВАРП-ИНЖЕКТОР
                                -- PLASMATIC WARP INJECTOR
                                { "Russian", "ПЛАЗМЕННЫЙ ИНЖЕКТОР" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FREIGHTER_DRIVE2_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Модификация для огромного гипердвигателя &lt;STELLAR&gt;межзвездного грузового судна&lt;&gt;.&#xA;&#xA;Гипердвигатель использует усовершенствованный термоядерный синтез, который позволяет звездолету достичь более высокой варп-скорости и интенсивности. Судно сможет совершать более длинные прыжки в космос и перемещаться в отдаленные планетарные системы.
                                -- An augmentation for the colossal hyperdrive engine of an &lt;STELLAR&gt;interstellar freighter&lt;&gt;.&#xA;&#xA;Hyperdrive benefits from advanced fusion that brings starship to higher warp speed and intensity. User's craft will become able to leap deeper into space, and into more distant planetary systems.
                                { "Russian", "Модификация для огромного гипердвигателя &lt;STELLAR&gt;межзвёздного грузового судна﻿.&lt;&gt;&#xA;&#xA;Гипердвигатель использует усовершенствованный термоядерный синтез, который позволяет звездолёту достичь более высокой сверхсветовой скорости и интенсивности. Судно сможет совершать более длинные прыжки в космос и перемещаться в отдаленные планетарные системы." },
                            }
                        },
                        --#endregion
                    }
                },
                { -- LANGUAGE/NMS_LOC9_RUSSIAN.MBIN
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_LOC9_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        --#region UI_EXOCRAFT_FIRE_NAME
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXOCRAFT_FIRE_NAME" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- ПОВОРОТНЫЙ ОГНЕМЕТ
                        --         -- MOUNTED FLAMETHROWER
                        --         { "Russian", "ПОВОРОТНЫЙ ОГНЕМЁТ" },
                        --     }
                        -- },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXOCRAFT_FIRE_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поворотный огнемет
                                { "Russian", "Огнемёт" },
                            }
                        },
                        --#endregion

                        --#region Гипердвигатель
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "HYP_ACCESS4_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Улучшение гипердвигателя: пурпурные системы
                                { "Russian", "Модификация для пурпурных систем" },
                            }
                        },
                        --#endregion

                        --#region Ржавое улучшение
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UPGRADE_SUB_TRASH" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Ржавое улучшение технологии «%NAME%»
                                -- Rusted %NAME% Upgrade
                                { "Russian", "Проржавевшее улучшение" },
                            }
                        },
                        --#endregion

                        --#region Подавитель аномалий
                        -- во-первых, автоматизированное, а не автоматическое
                        -- во-вторых, сохранения целостности, а не "сохранения границ"
                        -- в-третьих, прокрутка!!!
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SPOOK_PACK_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Автоматическое устройство сохранения границ
                                -- Automated Breach Integrity Device
                                { "Russian", "Устройство сохранения границ" },
                            }
                        },
                        --#endregion

                        --#region UI_SUB_MINER_NAME
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SUB_MINER_NAME" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- ДНОУГЛУБИТЕЛЬНЫЙ ЛАЗЕР
                        --         { "Russian", "ДНОУГЛУБИТЕЛЬ" },
                        --     }
                        -- },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SUB_MINER_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Дноуглубительный лазер
                                { "Russian", "Дноуглубитель" },
                            }
                        },
                        --#endregion

                    }
                },
            }
        }
    }
}
