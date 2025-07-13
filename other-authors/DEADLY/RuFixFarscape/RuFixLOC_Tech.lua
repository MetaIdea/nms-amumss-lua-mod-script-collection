NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]    = "_RuFixLOC_Tech.pak",
    ["MOD_AUTHOR"]      = "gh0stwizard",
    ["MOD_DESCRIPTION"] = "Fixes for all technologies",
    ["NMS_VERSION"]     = "5.72",
    ["EXML_CREATE"]     = "false",
    ["MODIFICATIONS"]   = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                { -- LANGUAGE/NMS_LOC1_RUSSIAN.MBIN
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_LOC1_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        -- понятно для чего вставили "для", но есть контекст
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "VEHICLEMINER_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- РАСЩЕПИТЕЛЬ ДЛЯ ВЕЗДЕХОДА
                                -- EXOCRAFT MINING LASER
                                { "Russian", "РАСЩЕПИТЕЛЬ ВЕЗДЕХОДА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "VEHICLEMINER_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Расщепитель для вездехода
                                -- Exocraft Mining Laser
                                { "Russian", "Расщепитель вездехода" },
                            }
                        },
                        { -- МОД. УСКОР. ВЕЗДЕХОДА
                            ["SPECIAL_KEY_WORDS"] = { "Id", "VEHICLEBOOST_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. УСКОР. ВЕЗДЕХОДА
                                -- EXOCRAFT BOOST MODULE
                                { "Russian", "УСКОРИТЕЛИ ДЛЯ ВЕЗДЕХОДА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "LAUNCHER_DESCRIPTION" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Необходимое каждому пилоту оборудование для посадки и взлета.&#xA; &#xA;Для зарядки ускорителя лучше использовать топливо дигидрогена. Для активации необходим достаточный запас топлива.&#xA; &#xA;Удерживайте &lt;IMG&gt;THRUST&lt;&gt;, чтобы подняться с поверхности планеты.&#xA;Удерживайте&lt;IMG&gt;BOOST&lt;&gt;, чтобы активировать ускоритель в полете.
                                -- Vital launch and landing gear system.&#xA; &#xA;User is advised that specialised, Deuterium-derived fuel is required to recharge thruster. Launch procedures require sufficient fuel levels before activation.&#xA; &#xA;Hold &lt;IMG&gt;THRUST&lt;&gt; to take off from planet.&#xA;Hold &lt;IMG&gt;BOOST&lt;&gt; to initiate in-flight speed boost.
                                { "Russian", "Необходимое каждому пилоту оборудование для посадки и взлета.&#xA; &#xA;Для зарядки ускорителя лучше использовать топливо дигидрогена. Для активации необходим достаточный запас топлива.&#xA; &#xA;Удерживайте &lt;IMG&gt;THRUST&lt;&gt;, чтобы подняться с поверхности планеты.&#xA;Удерживайте &lt;IMG&gt;BOOST&lt;&gt;, чтобы активировать ускоритель в полете." },
                            }
                        },
                        -- описания настолько гигантские, что нижняя часть урезается
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RAD1_DESCRIPTION" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Пользователь защищен от радиации.&#xA;&#xA;Уровень риска при исследовании радиоактивных миров значительно снижается. Микровибрации усиливают отражение электромагнитных волн, тем самым уменьшая их поглощение.&#xA;&#xA;Устройства заряжаются от &lt;EARTH&gt;минеральных элементов&lt;&gt;, которые встречаются на планетах с повышенным радиационным фоном. После создания в инвентаре экзокостюма пользователя работает автоматически.
                                -- User is shielded from radiation damage.&#xA;&#xA;Greatly reduces user peril during the exploration of irradiated worlds. Micro-vibrations increase electromagnetic wave reflection, thereby reducing absorption.&#xA;&#xA;Device is charged by &lt;EARTH&gt;mineral extracts&lt;&gt; found in radioactive environments. Operates automatically once constructed within user's exosuit inventory.
                                { "Russian", "Пользователь защищен от радиации.&#xA;&#xA;Уровень риска при исследовании радиоактивных миров значительно снижается. Микровибрации усиливают отражение электромагнитных волн, тем самым уменьшая их поглощение.&#xA;&#xA;Устройство заряжается от &lt;EARTH&gt;минеральных элементов﻿,&lt;&gt; которые встречаются на радиоактивных планетах. Работает автоматически." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "COLD1_DESCRIPTION" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Пользователь защищен от переохлаждения в холодных мирах.&#xA;&#xA;Сеть тепловых трубок равномерно распределяет жидкий калидий по костюму пользователя, что позволяет поддерживать комфортную температуру тела.&#xA;&#xA;Устройства заряжаются от &lt;EARTH&gt;минеральных элементов&lt;&gt;, которые встречаются на планетах с холодным климатом. После создания в инвентаре экзокостюма пользователя работает автоматически.
                                -- User is guarded from extreme cold damage on frozen worlds.&#xA;&#xA;Heat capillaries threaded through a user's suit that evenly distributes liquid calidium to maintain a comfortable body temperature.&#xA;&#xA;Device is charged by &lt;EARTH&gt;mineral extracts&lt;&gt; found in frozen environments. Operates automatically once constructed within user's exosuit inventory.
                                { "Russian", "Пользователь защищен от переохлаждения в холодных мирах.&#xA;&#xA;Сеть тепловых трубок равномерно распределяет жидкий калидий по костюму пользователя, что позволяет поддерживать комфортную температуру тела.&#xA;&#xA;Устройство заряжается от &lt;EARTH&gt;минеральных элементов﻿,&lt;&gt; которые встречаются на холодных планетах. Работает автоматически." },
                            }
                        },
                        -- на мини-табло при установке обрезается на "повышая эфф"
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "STRONGLASER_DESCRIPTION" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Заменяет стандартную оптику &lt;TECHNOLOGY&gt;расщепителя&lt;&gt; высококлассным живым стеклом, позволяя разрабатывать &lt;STELLAR&gt;крупные залежи и месторождения редких ресурсов&lt;&gt;.&#xA;&#xA;Линза автоматически подстраивается к мельчайшим колебаниям волны луча, сводя к минимуму рассеивание и &lt;STELLAR&gt;повышая эффективность устройства&lt;&gt;.
                                -- Replaces standard &lt;TECHNOLOGY&gt;Mining Beam&lt;&gt; optics with high-grade Living Glass, allowing the beam to be effective against &lt;STELLAR&gt;large and/or rare resource deposits&lt;&gt;.&#xA;&#xA;The lens adapts automatically to minute fluctuations in the beam waveform, minimising scatter and &lt;STELLAR&gt;increasing device mining potential&lt;&gt;.
                                { "Russian", "Заменяет стандартную оптику &lt;TECHNOLOGY&gt;расщепителя&lt;&gt; высококлассным живым стеклом, позволяя разрабатывать &lt;STELLAR&gt;крупные и редкие месторождения ресурсов﻿.&lt;&gt;&#xA;&#xA;Линза автоматически подстраивается к колебаниям волны луча, минимизируя рассеивание и &lt;STELLAR&gt;повышая эффективность﻿.&lt;&gt;" },
                            }
                        },
                        --
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "GRENADE_DESCRIPTION" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Кинетическое оружие космического корабля высокой мощности. Стреляет плазменными снарядами, которые отскакивают от поверхностей до тех пор, пока внутренний таймер не активирует взрыв.&#xA; &#xA;В качестве заряда используется &lt;FUEL&gt;нестабильная плазма&lt;&gt;. Небрежное обращение может привести к смерти пользователя.&#xA; &#xA;Для активации нажмите &lt;IMG&gt;ALTATTACK&lt;&gt;.
                                -- High-impact projectile weapon. Launched plasma shells bounce off surfaces until their internal timer triggers a large explosion.&#xA; &#xA;Charged with &lt;FUEL&gt;Unstable Plasma&lt;&gt;. Careless use can result in damage to user.&#xA; &#xA;Press &lt;IMG&gt;ALTATTACK&lt;&gt; to activate.
                                { "Russian", "Метательное оружие с высокой ударной силой. Стреляет плазменными снарядами, которые отскакивают от поверхностей до тех пор, пока внутренний таймер не активирует взрыв.&#xA;&#xA;Заряжается &lt;FUEL&gt;нестабильной плазмой﻿.&lt;&gt; Небрежное обращение может привести к смерти пользователя.&#xA;&#xA;Для активации нажмите &lt;IMG&gt;ALTATTACK&lt;&gt;." },
                            }
                        },
                    }
                },
                { -- LANGUAGE/NMS_LOC4_RUSSIAN.MBIN
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_LOC4_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        --#region Разное
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SUBFUEL_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Теплоэнергетическое топливо, содержащееся внутри стандартного топливного блока. Используется для питания &lt;TECHNOLOGY&gt;гумбольдтового двигателя&lt;&gt;, который приводит в движение подводную лодку «Наутилон».&#xA;&#xA;Создается из смеси органических компонентов (&lt;FUEL&gt;углерода&lt;&gt; и &lt;TRADEABLE&gt;цитофосфатов&lt;&gt;) и определенных минеральных &lt;TRADEABLE&gt;солей&lt;&gt;.
                                { "Russian", "Теплоэнергетическое топливо, содержащееся внутри стандартного топливного блока. Используется для питания &lt;TECHNOLOGY&gt;гумбольдтового двигателя&lt;&gt;, который приводит в движение подводную лодку «Наутилон».&#xA;&#xA;Создается из смеси &lt;FUEL&gt;углерода&lt;&gt;, &lt;TRADEABLE&gt;цитофосфата&lt;&gt; и определенных минеральных &lt;TRADEABLE&gt;солей&lt;&gt;." },
                            }
                        },
                        -- в русском языке такое описание не подходит: звучит грубо и не влазеет в UI
                        -- в общем, думал я думал и надумал, что ну его нафиг это название предмета, оно выше дублируется
                        -- вернуть взад когда исправят UI
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UPGRADE_1_STAT_COMMON_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %NAME% улучшается, что повышает параметр &lt;STELLAR&gt;%STAT1%&lt;&gt;.
                                -- Upgrades the %NAME%, improving &lt;STELLAR&gt;%STAT1%&lt;&gt;.
                                { "Russian", "Повышает параметр &lt;STELLAR&gt;%STAT1%﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UPGRADE_1_STAT_RARE_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %NAME% заметно улучшается, что значительно повышает параметр &lt;STELLAR&gt;%STAT1%&lt;&gt;.
                                -- A substantial upgrade to the %NAME%, offering significant improvements to &lt;STELLAR&gt;%STAT1%&lt;&gt;.
                                { "Russian", "Значительно повышает параметр &lt;STELLAR&gt;%STAT1%﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UPGRADE_1_STAT_EPIC_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %NAME% серьезно улучшается, что сильно повышает параметр &lt;STELLAR&gt;%STAT1%&lt;&gt;.
                                -- A powerful upgrade module for the %NAME%, drastically improving &lt;STELLAR&gt;%STAT1%&lt;&gt;.
                                { "Russian", "Сильно повышает параметр &lt;STELLAR&gt;%STAT1%﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UPGRADE_1_STAT_LEGEND_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %NAME% - практически полностью переработано. Резко повышает параметр: &lt;STELLAR&gt;%STAT1%&lt;&gt;.
                                -- An almost total rework of the %NAME%, this upgrade module brings unparalleled improvements to &lt;STELLAR&gt;%STAT1%&lt;&gt;.
                                { "Russian", "Резко повышает параметр &lt;STELLAR&gt;%STAT1%﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UPGRADE_2_STAT_COMMON_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %NAME% улучшается, что повышает параметры &lt;STELLAR&gt;%STAT1%&lt;&gt; и &lt;STELLAR&gt;%STAT2%&lt;&gt;.
                                { "Russian", "Повышает параметры &lt;STELLAR&gt;%STAT1%&lt;&gt; и &lt;STELLAR&gt;%STAT2%﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UPGRADE_2_STAT_RARE_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %NAME% заметно улучшается, что значительно повышает параметры &lt;STELLAR&gt;%STAT1%&lt;&gt; и &lt;STELLAR&gt;%STAT2%&lt;&gt;.
                                { "Russian", "Значительно повышает параметры &lt;STELLAR&gt;%STAT1%&lt;&gt; и &lt;STELLAR&gt;%STAT2%﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UPGRADE_2_STAT_EPIC_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %NAME% серьезно улучшается, что может сильно повысить параметры &lt;STELLAR&gt;%STAT1%&lt;&gt; и &lt;STELLAR&gt;%STAT2%&lt;&gt;.
                                { "Russian", "Сильно повышает параметры &lt;STELLAR&gt;%STAT1%&lt;&gt; и &lt;STELLAR&gt;%STAT2%﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UPGRADE_2_STAT_LEGEND_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %NAME% - практически полностью переработано. Резко повышает параметры: &lt;STELLAR&gt;%STAT1%&lt;&gt; и &lt;STELLAR&gt;%STAT2%&lt;&gt;.
                                { "Russian", "Резко повышает параметры &lt;STELLAR&gt;%STAT1%&lt;&gt; и &lt;STELLAR&gt;%STAT2%﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UPGRADE_3_STAT_COMMON_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %NAME% улучшается, что повышает параметры &lt;STELLAR&gt;%STAT1%&lt;&gt;, &lt;STELLAR&gt;%STAT2%&lt;&gt; и &lt;STELLAR&gt;%STAT3%&lt;&gt;.
                                { "Russian", "Повышает параметры &lt;STELLAR&gt;%STAT1%﻿,&lt;&gt; &lt;STELLAR&gt;%STAT2%&lt;&gt; и &lt;STELLAR&gt;%STAT3%﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UPGRADE_3_STAT_RARE_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %NAME% заметно улучшается, что значительно повышает параметры &lt;STELLAR&gt;%STAT1%&lt;&gt;, &lt;STELLAR&gt;%STAT2%&lt;&gt; и &lt;STELLAR&gt;%STAT3%&lt;&gt;.
                                { "Russian", "Значительно повышает параметры &lt;STELLAR&gt;%STAT1%﻿,&lt;&gt; &lt;STELLAR&gt;%STAT2%&lt;&gt; и &lt;STELLAR&gt;%STAT3%﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UPGRADE_3_STAT_EPIC_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %NAME% серьезно улучшается, что может сильно повысить параметры &lt;STELLAR&gt;%STAT1%&lt;&gt;, &lt;STELLAR&gt;%STAT2%&lt;&gt; и &lt;STELLAR&gt;%STAT3%&lt;&gt;.
                                { "Russian", "Сильно повышает параметры &lt;STELLAR&gt;%STAT1%﻿,&lt;&gt; &lt;STELLAR&gt;%STAT2%&lt;&gt; и &lt;STELLAR&gt;%STAT3%﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UPGRADE_3_STAT_LEGEND_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %NAME% - практически полностью переработано. Резко повышает параметры: &lt;STELLAR&gt;%STAT1%&lt;&gt;, &lt;STELLAR&gt;%STAT2%&lt;&gt; и &lt;STELLAR&gt;%STAT3%&lt;&gt;.
                                { "Russian", "Резко повышает параметры &lt;STELLAR&gt;%STAT1%﻿,&lt;&gt; &lt;STELLAR&gt;%STAT2%&lt;&gt; и &lt;STELLAR&gt;%STAT3%﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UPGRADE_4_STAT_COMMON_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %NAME% улучшается, что повышает параметры &lt;STELLAR&gt;%STAT1%&lt;&gt;, &lt;STELLAR&gt;%STAT2%&lt;&gt;, &lt;STELLAR&gt;%STAT3%&lt;&gt; и &lt;STELLAR&gt;%STAT4%&lt;&gt;.
                                { "Russian", "Повышает параметры &lt;STELLAR&gt;%STAT1%﻿,&lt;&gt; &lt;STELLAR&gt;%STAT2%﻿,&lt;&gt; &lt;STELLAR&gt;%STAT3%&lt;&gt; и &lt;STELLAR&gt;%STAT4%﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UPGRADE_4_STAT_RARE_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %NAME% заметно улучшается, что значительно повышает параметры &lt;STELLAR&gt;%STAT1%&lt;&gt;, &lt;STELLAR&gt;%STAT2%&lt;&gt;, &lt;STELLAR&gt;%STAT3%&lt;&gt; и &lt;STELLAR&gt;%STAT4%&lt;&gt;.
                                { "Russian", "Значительно повышает параметры &lt;STELLAR&gt;%STAT1%﻿,&lt;&gt; &lt;STELLAR&gt;%STAT2%﻿,&lt;&gt; &lt;STELLAR&gt;%STAT3%&lt;&gt; и &lt;STELLAR&gt;%STAT4%﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UPGRADE_4_STAT_EPIC_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %NAME% серьезно улучшается, что может сильно повысить параметры &lt;STELLAR&gt;%STAT1%&lt;&gt;, &lt;STELLAR&gt;%STAT2%&lt;&gt;, &lt;STELLAR&gt;%STAT3%&lt;&gt; и &lt;STELLAR&gt;%STAT4%&lt;&gt;.
                                { "Russian", "Сильно повысить параметры &lt;STELLAR&gt;%STAT1%﻿,&lt;&gt; &lt;STELLAR&gt;%STAT2%﻿,&lt;&gt; &lt;STELLAR&gt;%STAT3%&lt;&gt; и &lt;STELLAR&gt;%STAT4%﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UPGRADE_4_STAT_LEGEND_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %NAME% - практически полностью переработано. Резко повышает параметры: &lt;STELLAR&gt;%STAT1%&lt;&gt;, &lt;STELLAR&gt;%STAT2%&lt;&gt;, &lt;STELLAR&gt;%STAT3%&lt;&gt; и &lt;STELLAR&gt;%STAT4%&lt;&gt;.
                                { "Russian", "Резко повышает параметры &lt;STELLAR&gt;%STAT1%﻿,&lt;&gt; &lt;STELLAR&gt;%STAT2%﻿,&lt;&gt; &lt;STELLAR&gt;%STAT3%&lt;&gt; и &lt;STELLAR&gt;%STAT4%﻿.&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region МУЛЬТИТУЛ

                        --#region Расщепитель
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_LASER1_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. РАСЩЕП.
                                -- MINING BEAM MODULE
                                { "Russian", "МОДУЛЬ РАСЩЕПИТЕЛЯ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_LASER2_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. РАСЩЕП.
                                -- MINING BEAM MODULE
                                { "Russian", "МОДУЛЬ РАСЩЕПИТЕЛЯ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_LASER3_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. РАСЩЕП.
                                -- MINING BEAM MODULE
                                { "Russian", "МОДУЛЬ РАСЩЕПИТЕЛЯ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_LASER4_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. РАСЩЕП.
                                -- MINING BEAM MODULE
                                { "Russian", "МОДУЛЬ РАСЩЕПИТЕЛЯ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_LASER1_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TRADEABLE&gt;Среднее&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;расщепитель&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;мощность луча&lt;&gt;, &lt;STELLAR&gt;устойчивость к высоким температурам&lt;&gt; и &lt;STELLAR&gt;топливную эффективность&lt;&gt;.
                                { "Russian", "&lt;TRADEABLE&gt;Среднее&lt;&gt; улучшение &lt;TECHNOLOGY&gt;расщепителя﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;мощность луча﻿,&lt;&gt; &lt;STELLAR&gt;устойчивость к высоким температурам&lt;&gt; и &lt;STELLAR&gt;топливную эффективность﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_LASER2_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;Значительное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;расщепитель&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;мощность луча&lt;&gt;, &lt;STELLAR&gt;устойчивость к высоким температурам&lt;&gt; и &lt;STELLAR&gt;топливную эффективность&lt;&gt;.
                                { "Russian", "&lt;TECHNOLOGY&gt;Значительное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;расщепителя﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;мощность луча﻿,&lt;&gt; &lt;STELLAR&gt;устойчивость к высоким температурам&lt;&gt; и &lt;STELLAR&gt;топливную эффективность﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_LASER3_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Невероятно мощное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;расщепитель&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;мощность луча&lt;&gt;, &lt;STELLAR&gt;устойчивость к высоким температурам&lt;&gt; и &lt;STELLAR&gt;топливную эффективность&lt;&gt;.
                                { "Russian", "&lt;SPECIAL&gt;Невероятно мощное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;расщепителя﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;мощность луча﻿,&lt;&gt; &lt;STELLAR&gt;устойчивость к высоким температурам&lt;&gt; и &lt;STELLAR&gt;топливную эффективность﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_LASER4_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;COMMODITY&gt;Поразительно мощное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;расщепитель&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;мощность луча&lt;&gt;, &lt;STELLAR&gt;устойчивость к высоким температурам&lt;&gt; и &lt;STELLAR&gt;топливную эффективность&lt;&gt;.
                                { "Russian", "&lt;COMMODITY&gt;Поразительно мощное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;расщепителя﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;мощность луча﻿,&lt;&gt; &lt;STELLAR&gt;устойчивость к высоким температурам&lt;&gt; и &lt;STELLAR&gt;топливную эффективность﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "LASER_XO_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;Значительное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;расщепитель&lt;&gt;.&#xA;&#xA;Устанавливает дополнительные отражающие элементы в камеру основного кристалла, увеличивая базовую &lt;STELLAR&gt;мощность ядра&lt;&gt; и уменьшая нежелательный &lt;STELLAR&gt;выброс тепла&lt;&gt;.
                                { "Russian", "&lt;TECHNOLOGY&gt;Значительное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;расщепителя﻿.&lt;&gt;&#xA;&#xA;Устанавливает дополнительные отражающие элементы в камеру основного кристалла, увеличивая базовую &lt;STELLAR&gt;мощность ядра&lt;&gt; и уменьшая нежелательный &lt;STELLAR&gt;выброс тепла﻿.&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region Плазмомет
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_BOLT1_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. ПЛАЗМОМЕТА
                                -- BOLTCASTER MODULE
                                { "Russian", "МОДУЛЬ ПЛАЗМОМЕТА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_BOLT2_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. ПЛАЗМОМЕТА
                                -- BOLTCASTER MODULE
                                { "Russian", "МОДУЛЬ ПЛАЗМОМЕТА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_BOLT3_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. ПЛАЗМОМЕТА
                                -- BOLTCASTER MODULE
                                { "Russian", "МОДУЛЬ ПЛАЗМОМЕТА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_BOLT4_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. ПЛАЗМОМЕТА
                                -- BOLTCASTER MODULE
                                { "Russian", "МОДУЛЬ ПЛАЗМОМЕТА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_BOLT1_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TRADEABLE&gt;Среднее&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;плазмомет&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон&lt;&gt;, &lt;STELLAR&gt;время перезарядки&lt;&gt;, &lt;STELLAR&gt;размер обоймы&lt;&gt; и &lt;STELLAR&gt;скорострельность&lt;&gt;.
                                { "Russian", "&lt;TRADEABLE&gt;Среднее&lt;&gt; улучшение &lt;TECHNOLOGY&gt;плазмомета﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон﻿,&lt;&gt; &lt;STELLAR&gt;время перезарядки﻿,&lt;&gt; &lt;STELLAR&gt;размер обоймы&lt;&gt; и &lt;STELLAR&gt;скорострельность﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_BOLT2_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;Значительное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;плазмомет&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон&lt;&gt;, &lt;STELLAR&gt;время перезарядки&lt;&gt;, &lt;STELLAR&gt;размер обоймы&lt;&gt; и &lt;STELLAR&gt;скорострельность&lt;&gt;.
                                { "Russian", "&lt;TECHNOLOGY&gt;Значительное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;плазмомета﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон﻿,&lt;&gt; &lt;STELLAR&gt;время перезарядки﻿,&lt;&gt; &lt;STELLAR&gt;размер обоймы&lt;&gt; и &lt;STELLAR&gt;скорострельность﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_BOLT3_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Невероятно мощное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;плазмомет&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить: &lt;STELLAR&gt;урон&lt;&gt;, &lt;STELLAR&gt;время перезарядки&lt;&gt;, &lt;STELLAR&gt;размер обоймы&lt;&gt; и &lt;STELLAR&gt;скорострельность&lt;&gt;.
                                { "Russian", "&lt;SPECIAL&gt;Невероятно мощное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;плазмомета﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон﻿,&lt;&gt; &lt;STELLAR&gt;время перезарядки﻿,&lt;&gt; &lt;STELLAR&gt;размер обоймы&lt;&gt; и &lt;STELLAR&gt;скорострельность﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_BOLT4_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;COMMODITY&gt;Поразительно мощное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;плазмомет&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить: &lt;STELLAR&gt;урон&lt;&gt;, &lt;STELLAR&gt;время перезарядки&lt;&gt;, &lt;STELLAR&gt;размер обоймы&lt;&gt; и &lt;STELLAR&gt;скорострельность&lt;&gt;.
                                { "Russian", "&lt;COMMODITY&gt;Поразительно мощное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;плазмомета﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон﻿,&lt;&gt; &lt;STELLAR&gt;время перезарядки﻿,&lt;&gt; &lt;STELLAR&gt;размер обоймы&lt;&gt; и &lt;STELLAR&gt;скорострельность﻿.&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region Плазмобластер
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_GRENADE1_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. ПЛАЗМОБЛАСТЕРА
                                -- PLASMA LAUNCHER MODULE
                                { "Russian", "МОДУЛЬ ПЛАЗМОБЛАСТЕРА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_GRENADE2_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. ПЛАЗМОБЛАСТЕРА
                                -- PLASMA LAUNCHER MODULE
                                { "Russian", "МОДУЛЬ ПЛАЗМОБЛАСТЕРА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_GRENADE3_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. ПЛАЗМОБЛАСТЕРА
                                -- PLASMA LAUNCHER MODULE
                                { "Russian", "МОДУЛЬ ПЛАЗМОБЛАСТЕРА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_GRENADE4_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. ПЛАЗМОБЛАСТЕРА
                                -- PLASMA LAUNCHER MODULE
                                { "Russian", "МОДУЛЬ ПЛАЗМОБЛАСТЕРА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_GRENADE1_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TRADEABLE&gt;Среднее&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;плазмобластер&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Увеличивает &lt;STELLAR&gt;урон&lt;&gt; и &lt;STELLAR&gt;радиус&lt;&gt; взрыва, а также количество &lt;STELLAR&gt;отскоков&lt;&gt; перед взрывом.
                                { "Russian", "&lt;TRADEABLE&gt;Среднее&lt;&gt; улучшение &lt;TECHNOLOGY&gt;плазмобластера﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Увеличивает &lt;STELLAR&gt;урон&lt;&gt; и &lt;STELLAR&gt;радиус&lt;&gt; взрыва, а также количество &lt;STELLAR&gt;отскоков&lt;&gt; перед взрывом." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_GRENADE2_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;Значительное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;плазмобластер&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон&lt;&gt; и &lt;STELLAR&gt;радиус&lt;&gt; взрыва, а также увеличить количество &lt;STELLAR&gt;отскоков&lt;&gt; перед взрывом.
                                { "Russian", "&lt;TECHNOLOGY&gt;Значительное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;плазмобластера﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон&lt;&gt; и &lt;STELLAR&gt;радиус&lt;&gt; взрыва, а также увеличить количество &lt;STELLAR&gt;отскоков&lt;&gt; перед взрывом." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_GRENADE3_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Невероятно мощное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;плазмобластер&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон&lt;&gt; и &lt;STELLAR&gt;радиус&lt;&gt; взрыва, а также увеличить количество &lt;STELLAR&gt;отскоков&lt;&gt; перед взрывом.
                                { "Russian", "&lt;SPECIAL&gt;Невероятно мощное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;плазмобластера﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон&lt;&gt; и &lt;STELLAR&gt;радиус&lt;&gt; взрыва, а также увеличить количество &lt;STELLAR&gt;отскоков&lt;&gt; перед взрывом." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_GRENADE4_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;COMMODITY&gt;Поразительно мощное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;плазмобластер&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон&lt;&gt; и &lt;STELLAR&gt;радиус&lt;&gt; взрыва, а также увеличить количество &lt;STELLAR&gt;отскоков&lt;&gt; перед взрывом.
                                { "Russian", "&lt;COMMODITY&gt;Поразительно мощное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;плазмобластера﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон&lt;&gt; и &lt;STELLAR&gt;радиус&lt;&gt; взрыва, а также увеличить количество &lt;STELLAR&gt;отскоков&lt;&gt; перед взрывом." },
                            }
                        },
                        --#endregion

                        --#region Сканер мультитула
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SCANNER1_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. СКАНЕРА
                                -- SCANNER MODULE
                                { "Russian", "МОДУЛЬ СКАНЕРА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SCANNER2_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. СКАНЕРА
                                -- SCANNER MODULE
                                { "Russian", "МОДУЛЬ СКАНЕРА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SCANNER3_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. СКАНЕРА
                                -- SCANNER MODULE
                                { "Russian", "МОДУЛЬ СКАНЕРА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SCANNER4_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. СКАНЕРА
                                -- SCANNER MODULE
                                { "Russian", "МОДУЛЬ СКАНЕРА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SCANNER1_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TRADEABLE&gt;Среднее&lt;&gt; улучшение &lt;TECHNOLOGY&gt;сканирующая система мультитула&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;радиус сканирования&lt;&gt; и/или значительно увеличить &lt;STELLAR&gt;ценность&lt;&gt; &lt;TECHNOLOGY&gt;данных открытия&lt;&gt;.
                                { "Russian", "&lt;TRADEABLE&gt;Среднее&lt;&gt; улучшение &lt;TECHNOLOGY&gt;систем сканирования мультитула﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;радиус сканирования&lt;&gt; и значительно увеличить &lt;STELLAR&gt;ценность&lt;&gt; &lt;TECHNOLOGY&gt;данных открытия﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SCANNER1_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Улучшение сканирующей системы
                                { "Russian", "Улучшение систем сканирования" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SCANNER2_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;Значительное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;сканирующая система мультитула&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;радиус сканирования&lt;&gt; и/или значительно увеличить &lt;STELLAR&gt;ценность&lt;&gt; &lt;TECHNOLOGY&gt;данных открытия&lt;&gt;.
                                { "Russian", "&lt;TECHNOLOGY&gt;Значительное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;систем сканирования мультитула﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;радиус сканирования&lt;&gt; и значительно увеличить &lt;STELLAR&gt;ценность&lt;&gt; &lt;TECHNOLOGY&gt;данных открытия﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SCANNER2_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Знач. улучш. сканирующей системы
                                { "Russian", "Знач. улучш. систем сканирования" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SCANNER3_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Невероятно мощное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;сканирующая система мультитула&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;радиус сканирования&lt;&gt; и/или значительно увеличить &lt;STELLAR&gt;ценность&lt;&gt; &lt;TECHNOLOGY&gt;данных открытия&lt;&gt;.
                                { "Russian", "&lt;SPECIAL&gt;Невероятно мощное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;систем сканирования мультитула﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;радиус сканирования&lt;&gt; и значительно увеличить &lt;STELLAR&gt;ценность&lt;&gt; &lt;TECHNOLOGY&gt;данных открытия﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SCANNER3_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Мощное улучшение сканирующей системы
                                { "Russian", "Мощное улучшение системы сканирования" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SCANNER4_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;COMMODITY&gt;Поразительно мощное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;сканирующая система мультитула&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;радиус сканирования&lt;&gt; и/или значительно увеличить &lt;STELLAR&gt;ценность&lt;&gt; &lt;TECHNOLOGY&gt;данных открытия&lt;&gt;.
                                { "Russian", "&lt;COMMODITY&gt;Поразительно мощное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;систем сканирования мультитула﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;радиус сканирования&lt;&gt; и значительно увеличить &lt;STELLAR&gt;ценность&lt;&gt; &lt;TECHNOLOGY&gt;данных открытия﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SCANNER4_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Превосходное улучшение сканирующей системы
                                { "Russian", "Превосходное улучшение системы сканирования" },
                            }
                        },
                        --#endregion

                        --#region Геологическая пушка
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_TGRENADE1_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. ГЕОЛОГИЧ. ПУШКИ
                                -- GEOLOGY CANNON MODULE
                                { "Russian", "МОДУЛЬ ГЕОЛОГИЧ. ПУШКИ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_TGRENADE2_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. ГЕОЛОГИЧ. ПУШКИ
                                -- GEOLOGY CANNON MODULE
                                { "Russian", "МОДУЛЬ ГЕОЛОГИЧ. ПУШКИ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_TGRENADE3_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. ГЕОЛОГИЧ. ПУШКИ
                                -- GEOLOGY CANNON MODULE
                                { "Russian", "МОДУЛЬ ГЕОЛОГИЧ. ПУШКИ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_TGRENADE4_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. ГЕОЛОГИЧ. ПУШКИ
                                -- GEOLOGY CANNON MODULE
                                { "Russian", "МОДУЛЬ ГЕОЛОГИЧ. ПУШКИ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_TGRENADE1_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TRADEABLE&gt;Среднее&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;геологическая пушка&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон от взрыва&lt;&gt; или &lt;STELLAR&gt;радиус кратера&lt;&gt;.
                                { "Russian", "&lt;TRADEABLE&gt;Среднее&lt;&gt; улучшение &lt;TECHNOLOGY&gt;геологической пушки﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон от взрыва&lt;&gt; или &lt;STELLAR&gt;радиус кратера﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_TGRENADE2_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;Значительное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;геологическая пушка&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон от взрыва&lt;&gt; и &lt;STELLAR&gt;радиус кратера&lt;&gt;.
                                { "Russian", "&lt;TECHNOLOGY&gt;Значительное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;геологической пушки﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон от взрыва&lt;&gt; и &lt;STELLAR&gt;радиус кратера﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_TGRENADE3_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Невероятно мощное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;геологическая пушка&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Улучшает &lt;STELLAR&gt;урон от взрыва&lt;&gt; и &lt;STELLAR&gt;радиус кратера&lt;&gt;.
                                { "Russian", "&lt;SPECIAL&gt;Невероятно мощное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;геологической пушки﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Улучшает &lt;STELLAR&gt;урон от взрыва&lt;&gt; и &lt;STELLAR&gt;радиус кратера﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_TGRENADE4_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;COMMODITY&gt;Поразительно мощное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;геологическая пушка&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Улучшает &lt;STELLAR&gt;урон от взрыва&lt;&gt; и &lt;STELLAR&gt;радиус кратера&lt;&gt;.
                                { "Russian", "&lt;COMMODITY&gt;Поразительно мощное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;геологической пушки﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Улучшает &lt;STELLAR&gt;урон от взрыва&lt;&gt; и &lt;STELLAR&gt;радиус кратера﻿.&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region Пламенное копье
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_RAIL1_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TRADEABLE&gt;Среднее&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;пламенное копье&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон от лазера&lt;&gt; и &lt;STELLAR&gt;время перезарядки&lt;&gt;.
                                { "Russian", "&lt;TRADEABLE&gt;Среднее&lt;&gt; улучшение &lt;TECHNOLOGY&gt;пламенного копья﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон от лазера&lt;&gt; и &lt;STELLAR&gt;время перезарядки﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_RAIL2_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;Значительное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;пламенное копье&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон от лазера&lt;&gt; и &lt;STELLAR&gt;время перезарядки&lt;&gt;.
                                { "Russian", "&lt;TECHNOLOGY&gt;Значительное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;пламенного копья﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон от лазера&lt;&gt; и &lt;STELLAR&gt;время перезарядки﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_RAIL3_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Невероятно мощное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;пламенное копье&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон от лазера&lt;&gt; и &lt;STELLAR&gt;время перезарядки&lt;&gt;.
                                { "Russian", "&lt;SPECIAL&gt;Невероятно мощное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;пламенного копья﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон от лазера&lt;&gt; и &lt;STELLAR&gt;время перезарядки﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_RAIL4_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;COMMODITY&gt;Поразительно мощное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;пламенное копье&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон от лазера&lt;&gt; и &lt;STELLAR&gt;время перезарядки&lt;&gt;.
                                { "Russian", "&lt;COMMODITY&gt;Поразительно мощное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;пламенного копья﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон от лазера&lt;&gt; и &lt;STELLAR&gt;время перезарядки﻿.&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region Бластер-рассеиватель
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHOTGUN1_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TRADEABLE&gt;Среднее&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;бластер-рассеиватель&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон&lt;&gt;, &lt;STELLAR&gt;время перезарядки&lt;&gt;, &lt;STELLAR&gt;размер обоймы&lt;&gt; и &lt;STELLAR&gt;скорострельность&lt;&gt;.
                                { "Russian", "&lt;TRADEABLE&gt;Среднее&lt;&gt; улучшение &lt;TECHNOLOGY&gt;бластера-рассеивателя﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон﻿,&lt;&gt; &lt;STELLAR&gt;время перезарядки﻿,&lt;&gt; &lt;STELLAR&gt;размер обоймы&lt;&gt; и &lt;STELLAR&gt;скорострельность﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHOTGUN2_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;Значительное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;бластер-рассеиватель&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон&lt;&gt;, &lt;STELLAR&gt;время перезарядки&lt;&gt;, &lt;STELLAR&gt;размер обоймы&lt;&gt; и &lt;STELLAR&gt;скорострельность&lt;&gt;.
                                { "Russian", "&lt;TECHNOLOGY&gt;Значительное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;бластера-рассеивателя﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон﻿,&lt;&gt; &lt;STELLAR&gt;время перезарядки﻿,&lt;&gt; &lt;STELLAR&gt;размер обоймы&lt;&gt; и &lt;STELLAR&gt;скорострельность﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHOTGUN3_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Невероятно мощное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;бластер-рассеиватель&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон&lt;&gt;, &lt;STELLAR&gt;время перезарядки&lt;&gt;, &lt;STELLAR&gt;размер обоймы&lt;&gt; и &lt;STELLAR&gt;скорострельность&lt;&gt;.
                                { "Russian", "&lt;SPECIAL&gt;Невероятно мощное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;бластера-рассеивателя﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон﻿,&lt;&gt; &lt;STELLAR&gt;время перезарядки﻿,&lt;&gt; &lt;STELLAR&gt;размер обоймы&lt;&gt; и &lt;STELLAR&gt;скорострельность﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHOTGUN4_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;COMMODITY&gt;Поразительно мощное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;бластер-рассеиватель&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон&lt;&gt;, &lt;STELLAR&gt;время перезарядки&lt;&gt;, &lt;STELLAR&gt;размер обоймы&lt;&gt; и &lt;STELLAR&gt;скорострельность&lt;&gt;.
                                { "Russian", "&lt;COMMODITY&gt;Поразительно мощное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;бластера-рассеивателя﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон﻿,&lt;&gt; &lt;STELLAR&gt;время перезарядки﻿,&lt;&gt; &lt;STELLAR&gt;размер обоймы&lt;&gt; и &lt;STELLAR&gt;скорострельность﻿.&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region Импульсный скорострел
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SMG1_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TRADEABLE&gt;Среднее&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;импульсный скорострел&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон&lt;&gt;, &lt;STELLAR&gt;время перезарядки&lt;&gt;, &lt;STELLAR&gt;размер обоймы&lt;&gt; и &lt;STELLAR&gt;скорострельность&lt;&gt;.
                                { "Russian", "&lt;TRADEABLE&gt;Среднее&lt;&gt; улучшение &lt;TECHNOLOGY&gt;импульсного скорострела﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон﻿,&lt;&gt; &lt;STELLAR&gt;время перезарядки﻿,&lt;&gt; &lt;STELLAR&gt;размер обоймы&lt;&gt; и &lt;STELLAR&gt;скорострельность﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SMG2_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;Значительное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;импульсный скорострел&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон&lt;&gt;, &lt;STELLAR&gt;время перезарядки&lt;&gt;, &lt;STELLAR&gt;размер обоймы&lt;&gt; и &lt;STELLAR&gt;скорострельность&lt;&gt;.
                                { "Russian", "&lt;TECHNOLOGY&gt;Значительное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;импульсного скорострела﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон﻿,&lt;&gt; &lt;STELLAR&gt;время перезарядки﻿,&lt;&gt; &lt;STELLAR&gt;размер обоймы&lt;&gt; и &lt;STELLAR&gt;скорострельность﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SMG3_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Невероятно мощное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;импульсный скорострел&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить: &lt;STELLAR&gt;урон&lt;&gt;, &lt;STELLAR&gt;время перезарядки&lt;&gt;, &lt;STELLAR&gt;размер обоймы&lt;&gt; и &lt;STELLAR&gt;скорострельность&lt;&gt;.
                                { "Russian", "&lt;SPECIAL&gt;Невероятно мощное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;импульсного скорострела﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон﻿,&lt;&gt; &lt;STELLAR&gt;время перезарядки﻿,&lt;&gt; &lt;STELLAR&gt;размер обоймы&lt;&gt; и &lt;STELLAR&gt;скорострельность﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SMG4_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;COMMODITY&gt;Поразительно мощное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;импульсный скорострел&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить: &lt;STELLAR&gt;урон&lt;&gt;, &lt;STELLAR&gt;время перезарядки&lt;&gt;, &lt;STELLAR&gt;размер обоймы&lt;&gt; и &lt;STELLAR&gt;скорострельность&lt;&gt;.
                                { "Russian", "&lt;COMMODITY&gt;Поразительно мощное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;импульсного скорострела﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон﻿,&lt;&gt; &lt;STELLAR&gt;время перезарядки﻿,&lt;&gt; &lt;STELLAR&gt;размер обоймы&lt;&gt; и &lt;STELLAR&gt;скорострельность﻿.&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#endregion

                        --#region ЭКЗОКОСТЮМ

                        --#region Двигательная система
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_JETBOOST1_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TRADEABLE&gt;Среднее&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;двигательные системы экзокостюма&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может увеличить &lt;STELLAR&gt;объем бака реактивного ранца&lt;&gt;, &lt;STELLAR&gt;эффективность расхода топлива ранца&lt;&gt; и &lt;STELLAR&gt;продолжительность ускорения&lt;&gt;.
                                { "Russian", "&lt;TRADEABLE&gt;Среднее&lt;&gt; улучшение &lt;TECHNOLOGY&gt;двигательной системы экзокостюма﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может увеличить &lt;STELLAR&gt;объем бака реактивного ранца﻿,&lt;&gt; &lt;STELLAR&gt;эффективность расхода топлива ранца&lt;&gt; и &lt;STELLAR&gt;продолжительность ускорения﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_JETBOOST2_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;Значительное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;двигательные системы экзокостюма&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может увеличить &lt;STELLAR&gt;объем бака реактивного ранца&lt;&gt;, &lt;STELLAR&gt;эффективность расхода топлива ранца&lt;&gt; и &lt;STELLAR&gt;продолжительность ускорения&lt;&gt;.
                                { "Russian", "&lt;TECHNOLOGY&gt;Значительное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;двигательной системы экзокостюма﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может увеличить &lt;STELLAR&gt;объем бака реактивного ранца﻿,&lt;&gt; &lt;STELLAR&gt;эффективность расхода топлива ранца&lt;&gt; и &lt;STELLAR&gt;продолжительность ускорения﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_JETBOOST3_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Невероятно мощное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;двигательные системы экзокостюма&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может увеличить &lt;STELLAR&gt;объем бака реактивного ранца&lt;&gt;, &lt;STELLAR&gt;эффективность расхода топлива ранца&lt;&gt; и &lt;STELLAR&gt;продолжительность ускорения&lt;&gt;.
                                { "Russian", "&lt;SPECIAL&gt;Невероятно мощное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;двигательной системы экзокостюма﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может увеличить &lt;STELLAR&gt;объем бака реактивного ранца﻿,&lt;&gt; &lt;STELLAR&gt;эффективность расхода топлива ранца&lt;&gt; и &lt;STELLAR&gt;продолжительность ускорения﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_JETBOOST4_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;COMMODITY&gt;Поразительно мощное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;двигательные системы экзокостюма&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может увеличить &lt;STELLAR&gt;объем бака реактивного ранца&lt;&gt;, &lt;STELLAR&gt;эффективность расхода топлива ранца&lt;&gt; и &lt;STELLAR&gt;продолжительность ускорения&lt;&gt;.
                                { "Russian", "&lt;COMMODITY&gt;Поразительно мощное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;двигательной системы экзокостюма﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может увеличить &lt;STELLAR&gt;объем бака реактивного ранца﻿,&lt;&gt; &lt;STELLAR&gt;эффективность расхода топлива ранца&lt;&gt; и &lt;STELLAR&gt;продолжительность ускорения﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UT_JET_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Повышает вместимость &lt;STELLAR&gt;баков реактивного ранца&lt;&gt; и &lt;STELLAR&gt;запас адреналина&lt;&gt;, позволяя дольше находиться в воздухе и бежать.
                                -- Increases the capacity of the Exosuit's &lt;STELLAR&gt;Jetpack Tanks&lt;&gt; and &lt;STELLAR&gt;Adrenal Pump Reserves&lt;&gt;, allowing the user to both fly and sprint longer.
                                { "Russian", "Повышает вместимость &lt;STELLAR&gt;баков реактивного ранца&lt;&gt; и &lt;STELLAR&gt;запас адреналина﻿,&lt;&gt; позволяя дольше находиться в воздухе и бежать." },
                            }
                        },
                        --#endregion

                        --#region Щит экзокостюма
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIELDBOOST1_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. ЩИТА
                                -- SHIELD MODULE
                                { "Russian", "МОДУЛЬ ЩИТА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIELDBOOST2_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. ЩИТА
                                -- SHIELD MODULE
                                { "Russian", "МОДУЛЬ ЩИТА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIELDBOOST3_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. ЩИТА
                                -- SHIELD MODULE
                                { "Russian", "МОДУЛЬ ЩИТА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIELDBOOST4_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. ЩИТА
                                -- SHIELD MODULE
                                { "Russian", "МОДУЛЬ ЩИТА" },
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
                                { "Russian", "Значительное улучшние защиты экзокостюма" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIELDBOOST3_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Мощное улучшение защитных систем
                                { "Russian", "Мощное улучшение защиты экзокостюма" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIELDBOOST4_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Превосходное улучшение защитных систем
                                { "Russian", "Превосходное улучшение защиты экзокостюма" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIELDBOOST1_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TRADEABLE&gt;Среднее&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;защитные системы экзокостюма&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может увеличить &lt;STELLAR&gt;емкость щита экзокостюма&lt;&gt;.
                                -- A &lt;TRADEABLE&gt;moderate&lt;&gt; upgrade for the &lt;TECHNOLOGY&gt;Exosuit Defensive Systems&lt;&gt;. Use &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt; to begin upgrade &lt;VAL_ON&gt;installation process&lt;&gt;.&#xA;&#xA;The module is flexible, and exact upgrade statistics are &lt;SPECIAL&gt;unknown&lt;&gt; until installation is complete.&#xA;&#xA;Increases &lt;STELLAR&gt;Exosuit shield strength&lt;&gt;.
                                { "Russian", "&lt;TRADEABLE&gt;Среднее&lt;&gt; улучшение для &lt;TECHNOLOGY&gt;систем защиты экзокостюма﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может увеличить &lt;STELLAR&gt;емкость щита экзокостюма﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIELDBOOST2_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;Значительное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;защитные системы экзокостюма.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может увеличить &lt;STELLAR&gt;емкость щита экзокостюма&lt;&gt; и &lt;STELLAR&gt;основное здоровье&lt;&gt;.
                                { "Russian", "&lt;TECHNOLOGY&gt;Значительное&lt;&gt; улучшение для &lt;TECHNOLOGY&gt;систем защиты экзокостюма﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может увеличить &lt;STELLAR&gt;емкость щита экзокостюма&lt;&gt; и &lt;STELLAR&gt;основное здоровье﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIELDBOOST3_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Невероятно мощное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;защитные системы экзокостюма&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может увеличить &lt;STELLAR&gt;емкость щита экзокостюма&lt;&gt; и &lt;STELLAR&gt;основное здоровье&lt;&gt;.
                                { "Russian", "&lt;SPECIAL&gt;Невероятно мощное&lt;&gt; улучшение для &lt;TECHNOLOGY&gt;систем защиты экзокостюма﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может увеличить &lt;STELLAR&gt;емкость щита экзокостюма&lt;&gt; и &lt;STELLAR&gt;основное здоровье﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIELDBOOST4_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;COMMODITY&gt;Поразительно мощное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;защитные системы экзокостюма&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может увеличить &lt;STELLAR&gt;емкость щита экзокостюма&lt;&gt; и &lt;STELLAR&gt;основное здоровье&lt;&gt;.
                                { "Russian", "&lt;COMMODITY&gt;Поразительно мощное&lt;&gt; улучшение для &lt;TECHNOLOGY&gt;систем защиты экзокостюма﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может увеличить &lt;STELLAR&gt;емкость щита экзокостюма&lt;&gt; и &lt;STELLAR&gt;основное здоровье﻿.&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region Система жизнеобеспечения
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_ENERGY1_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;Значительное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;система жизнеобеспечения&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;мощность системы жизнеобеспечения&lt;&gt;.
                                { "Russian", "&lt;TECHNOLOGY&gt;Значительное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;системы жизнеобеспечения﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;мощность системы жизнеобеспечения﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_ENERGY2_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Невероятно мощное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;система жизнеобеспечения&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;мощность системы жизнеобеспечения&lt;&gt; и обеспечить частичную &lt;STELLAR&gt;подзарядку солнечной энергией&lt;&gt; с меньшим расходом энергии в дневное время.
                                { "Russian", "&lt;SPECIAL&gt;Невероятно мощное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;системы жизнеобеспечения﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;мощность системы жизнеобеспечения&lt;&gt; и обеспечить частичную &lt;STELLAR&gt;подзарядку солнечной энергией&lt;&gt; с меньшим расходом энергии в дневное время." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_ENERGY3_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;COMMODITY&gt;Поразительно мощное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;система жизнеобеспечения&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;мощность системы жизнеобеспечения&lt;&gt; и обеспечить частичную &lt;STELLAR&gt;подзарядку солнечной энергией&lt;&gt; с меньшим расходом энергии в дневное время.
                                { "Russian", "&lt;COMMODITY&gt;Поразительно мощное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;системы жизнеобеспечения﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;мощность системы жизнеобеспечения&lt;&gt; и обеспечить частичную &lt;STELLAR&gt;подзарядку солнечной энергией&lt;&gt; с меньшим расходом энергии в дневное время." },
                            }
                        },
                        --#endregion

                        --#region Аэроционная мембрана / подводная защита
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_UNW1_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. ПОДВОД. ЗАЩИТЫ
                                -- UNDERWATER PROTECTION MODULE
                                { "Russian", "МОД. ПОДВОДНОЙ ЗАЩИТЫ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_UNW2_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. ПОДВОД. ЗАЩИТЫ
                                -- UNDERWATER PROTECTION MODULE
                                { "Russian", "МОД. ПОДВОДНОЙ ЗАЩИТЫ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_UNW3_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. ПОДВОД. ЗАЩИТЫ
                                -- UNDERWATER PROTECTION MODULE
                                { "Russian", "МОД. ПОДВОДНОЙ ЗАЩИТЫ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_UNW1_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;Значительное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;аэрационная мембрана экзокостюма&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Значительно увеличивает время нахождения &lt;TECHNOLOGY&gt;под водой&lt;&gt;.
                                { "Russian", "&lt;TECHNOLOGY&gt;Значительное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;аэрационной мембраны экзокостюма﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Значительно увеличивает время нахождения &lt;TECHNOLOGY&gt;под водой﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_UNW2_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Невероятно мощное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;аэрационная мембрана экзокостюма&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Резко увеличивает время нахождения &lt;TECHNOLOGY&gt;под водой&lt;&gt;.
                                { "Russian", "&lt;SPECIAL&gt;Невероятно мощное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;аэрационной мембраны экзокостюма﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Резко увеличивает время нахождения &lt;TECHNOLOGY&gt;под водой﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_UNW3_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;COMMODITY&gt;Поразительно мощное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;аэрационная мембрана экзокостюма&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Резко увеличивает время нахождения &lt;TECHNOLOGY&gt;под водой&lt;&gt;.
                                { "Russian", "&lt;COMMODITY&gt;Поразительно мощное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;аэрационной мембраны экзокостюма﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Резко увеличивает время нахождения &lt;TECHNOLOGY&gt;под водой﻿.&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region Защита от радиации
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_RAD1_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. ЗАЩ. ОТ РАДИАЦИИ
                                { "Russian", "МОД. ЗАЩИТЫ ОТ РАДИАЦИИ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_RAD2_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. ЗАЩ. ОТ РАДИАЦИИ
                                { "Russian", "МОД. ЗАЩИТЫ ОТ РАДИАЦИИ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_RAD3_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. ЗАЩ. ОТ РАДИАЦИИ
                                { "Russian", "МОД. ЗАЩИТЫ ОТ РАДИАЦИИ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_RAD1_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;Значительное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;система экзокостюма для защиты от радиации&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Значительно увеличивает время нахождения в &lt;COMMODITY&gt;радиоактивной среде&lt;&gt;.
                                { "Russian", "&lt;TECHNOLOGY&gt;Значительное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;защиты от радиации﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Значительно увеличивает время нахождения в &lt;COMMODITY&gt;радиоактивной среде﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_RAD2_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Невероятно мощное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;система экзокостюма для защиты от радиации&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Резко увеличивает время нахождения в &lt;COMMODITY&gt;радиоактивной среде&lt;&gt;.
                                { "Russian", "&lt;SPECIAL&gt;Невероятно мощное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;защиты от радиации﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Резко увеличивает время нахождения в &lt;COMMODITY&gt;радиоактивной среде﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_RAD3_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;COMMODITY&gt;Поразительно мощное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;система экзокостюма для защиты от радиации&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Резко увеличивает время нахождения в &lt;COMMODITY&gt;радиоактивной среде&lt;&gt;.
                                { "Russian", "&lt;COMMODITY&gt;Поразительно мощное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;защиты от радиации﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Резко увеличивает время нахождения в &lt;COMMODITY&gt;радиоактивной среде﻿.&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region Защита от холода
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COLD_NAME_CORE_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Температурная защита
                                -- Thermal Protection
                                { "Russian", "Тепловая защита" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_COLDPROT1_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. ТЕМПЕРАТ. ЗАЩИТЫ
                                -- THERMAL PROTECTION MODULE
                                { "Russian", "МОД. ТЕПЛОВОЙ ЗАЩИТЫ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_COLDPROT1_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Модуль температурной защиты
                                -- Thermal Protection Module
                                { "Russian", "Модуль тепловой защиты" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_COLDPROT2_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. ТЕМПЕРАТ. ЗАЩИТЫ
                                -- THERMAL PROTECTION MODULE
                                { "Russian", "МОД. ТЕПЛОВОЙ ЗАЩИТЫ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_COLDPROT2_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Модуль температурной защиты
                                -- Thermal Protection Module
                                { "Russian", "Модуль тепловой защиты" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_COLDPROT3_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. ТЕМПЕРАТ. ЗАЩИТЫ
                                -- THERMAL PROTECTION MODULE
                                { "Russian", "МОД. ТЕПЛОВОЙ ЗАЩИТЫ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_COLDPROT3_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Модуль температурной защиты
                                -- Thermal Protection Module
                                { "Russian", "Модуль тепловой защиты" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_COLDPROT1_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;Значительное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;система температурной защиты экзокостюма&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Значительно увеличивает время нахождения в &lt;TECHNOLOGY&gt;низкотемпературной среде&lt;&gt;.
                                --
                                { "Russian", "&lt;TECHNOLOGY&gt;Значительное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;тепловой защиты экзокостюма&lt;&gt; в &lt;TECHNOLOGY&gt;низкотемпературной среде﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_COLDPROT2_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Невероятно мощное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;система температурной защиты экзокостюма&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Резко увеличивает время нахождения в &lt;TECHNOLOGY&gt;низкотемпературной среде&lt;&gt;.
                                --
                                { "Russian", "&lt;SPECIAL&gt;Невероятно мощное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;тепловой защиты экзокостюма&lt;&gt; в &lt;TECHNOLOGY&gt;низкотемпературной среде﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_COLDPROT3_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;COMMODITY&gt;Поразительно мощное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;система температурной защиты экзокостюма&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Резко увеличивает время нахождения в &lt;TECHNOLOGY&gt;низкотемпературной среде&lt;&gt;.
                                --
                                { "Russian", "&lt;COMMODITY&gt;Поразительно мощное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;тепловой защиты экзокостюма&lt;&gt; в &lt;TECHNOLOGY&gt;низкотемпературной среде﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки." },
                            }
                        },
                        --#endregion

                        --#region Защита от жары
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_HOT_NAME_CORE_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Температурная защита
                                -- Thermal Protection
                                { "Russian", "Тепловая защита" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_HOTPROT1_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. ТЕМПЕРАТ. ЗАЩИТЫ
                                -- THERMAL PROTECTION MODULE
                                { "Russian", "МОД. ТЕПЛОВОЙ ЗАЩИТЫ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_HOTPROT1_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Модуль температурной защиты
                                -- Thermal Protection Module
                                { "Russian", "Модуль тепловой защиты" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_HOTPROT2_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. ТЕМПЕРАТ. ЗАЩИТЫ
                                -- THERMAL PROTECTION MODULE
                                { "Russian", "МОД. ТЕПЛОВОЙ ЗАЩИТЫ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_HOTPROT2_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Модуль температурной защиты
                                -- Thermal Protection Module
                                { "Russian", "Модуль тепловой защиты" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_HOTPROT3_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. ТЕМПЕРАТ. ЗАЩИТЫ
                                -- THERMAL PROTECTION MODULE
                                { "Russian", "МОД. ТЕПЛОВОЙ ЗАЩИТЫ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_HOTPROT3_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Модуль температурной защиты
                                -- Thermal Protection Module
                                { "Russian", "Модуль тепловой защиты" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_HOTPROT1_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;Значительное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;система температурной защиты экзокостюма&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Значительно увеличивает время нахождения в &lt;FUEL&gt;высокотемпературной среде&lt;&gt;.
                                --
                                { "Russian", "&lt;TECHNOLOGY&gt;Значительное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;тепловой защиты экзокостюма&lt;&gt; в &lt;FUEL&gt;высокотемпературной среде﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_HOTPROT2_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Невероятно мощное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;система температурной защиты экзокостюма&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Резко увеличивает время нахождения в &lt;FUEL&gt;высокотемпературной среде&lt;&gt;.
                                --
                                { "Russian", "&lt;SPECIAL&gt;Невероятно мощное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;тепловой защиты экзокостюма&lt;&gt; в &lt;FUEL&gt;высокотемпературной среде﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_HOTPROT3_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;COMMODITY&gt;Поразительно мощное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;система температурной защиты экзокостюма&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Резко увеличивает время нахождения в &lt;FUEL&gt;высокотемпературной среде&lt;&gt;.
                                --
                                { "Russian", "&lt;COMMODITY&gt;Поразительно мощное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;тепловой защиты экзокостюма&lt;&gt; в &lt;FUEL&gt;высокотемпературной среде﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки." },
                            }
                        },
                        --#endregion

                        --#region Защита от токсинов
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_TOX1_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. ЗАЩ. ОТ ТОКСИНОВ
                                { "Russian", "МОД. ЗАЩИТЫ ОТ ТОКСИНОВ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_TOX2_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. ЗАЩ. ОТ ТОКСИНОВ
                                { "Russian", "МОД. ЗАЩИТЫ ОТ ТОКСИНОВ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_TOX3_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. ЗАЩ. ОТ ТОКСИНОВ
                                { "Russian", "МОД. ЗАЩИТЫ ОТ ТОКСИНОВ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_TOX1_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;Значительное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;система экзокостюма для фильтрации токсинов&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Значительно увеличивает время нахождения в &lt;TRADEABLE&gt;токсичной среде&lt;&gt;.
                                { "Russian", "&lt;TECHNOLOGY&gt;Значительное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;системы фильтрации токсинов﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Значительно увеличивает время нахождения в &lt;TRADEABLE&gt;токсичной среде﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_TOX2_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Невероятно мощное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;система экзокостюма для фильтрации токсинов&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Резко увеличивает время нахождения в &lt;TRADEABLE&gt;токсичной среде&lt;&gt;.
                                { "Russian", "&lt;SPECIAL&gt;Невероятно мощное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;системы фильтрации токсинов﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Резко увеличивает время нахождения в &lt;TRADEABLE&gt;токсичной среде﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_TOX3_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;COMMODITY&gt;Поразительно мощное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;система экзокостюма для фильтрации токсинов&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Резко увеличивает время нахождения в &lt;TRADEABLE&gt;токсичной среде&lt;&gt;.
                                { "Russian", "&lt;COMMODITY&gt;Поразительно мощное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;системы фильтрации токсинов﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Резко увеличивает время нахождения в &lt;TRADEABLE&gt;токсичной среде﻿.&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#endregion

                        --#region ЗВЕЗДОЛЁТ

                        --#region Импульсный двигатель
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_PULSE1_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. ИМП. ДВИГАТ.
                                -- PULSE ENGINE MODULE
                                { "Russian", "МОДУЛЬ ИМП. ДВИГАТЕЛЯ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_PULSE1_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Модуль импульсного двигателя
                                -- Pulse Engine Module
                                { "Russian", "Модуль имп. двигателя" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_PULSE2_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. ИМП. ДВИГАТ.
                                -- PULSE ENGINE MODULE
                                { "Russian", "МОДУЛЬ ИМП. ДВИГАТЕЛЯ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_PULSE2_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Модуль импульсного двигателя
                                -- Pulse Engine Module
                                { "Russian", "Модуль имп. двигателя" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_PULSE3_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. ИМП. ДВИГАТ.
                                -- PULSE ENGINE MODULE
                                { "Russian", "МОДУЛЬ ИМП. ДВИГАТЕЛЯ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_PULSE3_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Модуль импульсного двигателя
                                -- Pulse Engine Module
                                { "Russian", "Модуль имп. двигателя" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_PULSE4_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. ИМП. ДВИГАТ.
                                -- PULSE ENGINE MODULE
                                { "Russian", "МОДУЛЬ ИМП. ДВИГАТЕЛЯ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_PULSE4_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Модуль импульсного двигателя
                                -- Pulse Engine Module
                                { "Russian", "Модуль имп. двигателя" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_PULSE1_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TRADEABLE&gt;Среднее&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;импульсный двигатель звездолета&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;маневренность&lt;&gt; и &lt;STELLAR&gt;скорость&lt;&gt; звездолета.
                                { "Russian", "&lt;TRADEABLE&gt;Среднее&lt;&gt; улучшение &lt;TECHNOLOGY&gt;импульсного двигателя звездолёта﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;маневренность&lt;&gt; и &lt;STELLAR&gt;скорость&lt;&gt; звездолёта." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_PULSE2_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;Значительное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;импульсный двигатель звездолета&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;маневренность&lt;&gt; и &lt;STELLAR&gt;скорость&lt;&gt; звездолета.
                                { "Russian", "&lt;TECHNOLOGY&gt;Значительное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;импульсного двигателя звездолёта﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;маневренность&lt;&gt; и &lt;STELLAR&gt;скорость&lt;&gt; звездолёта." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_PULSE3_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Невероятно мощное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;импульсный двигатель звездолета&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;маневренность&lt;&gt; и &lt;STELLAR&gt;скорость&lt;&gt; звездолета.
                                { "Russian", "&lt;SPECIAL&gt;Невероятно мощное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;импульсного двигателя звездолёта﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;маневренность&lt;&gt; и &lt;STELLAR&gt;скорость&lt;&gt; звездолёта." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_PULSE4_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;COMMODITY&gt;Поразительно мощное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;импульсный двигатель звездолета&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;маневренность&lt;&gt; и &lt;STELLAR&gt;скорость&lt;&gt; звездолета.
                                { "Russian", "&lt;COMMODITY&gt;Поразительно мощное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;импульсного двигателя звездолёта﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;маневренность&lt;&gt; и &lt;STELLAR&gt;скорость&lt;&gt; звездолёта." },
                            }
                        },
                        --#endregion

                        --#region Взлетные ускорители
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_LAUNCH1_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TRADEABLE&gt;Среднее&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;взлетные ускорители звездолета&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;эффективность запуска&lt;&gt; и &lt;STELLAR&gt;скорость&lt;&gt; звездолета.
                                { "Russian", "&lt;TRADEABLE&gt;Среднее&lt;&gt; улучшение &lt;TECHNOLOGY&gt;взлетных ускорителей звездолёта﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;эффективность запуска&lt;&gt; и &lt;STELLAR&gt;скорость&lt;&gt; звездолёта." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_LAUNCH2_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;Значительное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;взлетные ускорители звездолета&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;эффективность запуска&lt;&gt; и &lt;STELLAR&gt;скорость&lt;&gt; звездолета.
                                { "Russian", "&lt;TECHNOLOGY&gt;Значительное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;взлетных ускорителей звездолёта﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;эффективность запуска&lt;&gt; и &lt;STELLAR&gt;скорость&lt;&gt; звездолёта." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_LAUNCH3_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Невероятно мощное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;взлетные ускорители звездолета&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;эффективность запуска&lt;&gt; и &lt;STELLAR&gt;скорость&lt;&gt; звездолета.
                                { "Russian", "&lt;SPECIAL&gt;Невероятно мощное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;взлетных ускорителей звездолёта﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;эффективность запуска&lt;&gt; и &lt;STELLAR&gt;скорость&lt;&gt; звездолёта." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_LAUNCH4_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;COMMODITY&gt;Поразительно мощное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;взлетные ускорители звездолета&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;эффективность запуска&lt;&gt; и &lt;STELLAR&gt;скорость&lt;&gt; звездолета.
                                { "Russian", "&lt;COMMODITY&gt;Поразительно мощное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;взлетных ускорителей звездолёта﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;эффективность запуска&lt;&gt; и &lt;STELLAR&gt;скорость&lt;&gt; звездолёта." },
                            }
                        },
                        --#endregion

                        --#region Реактивная установка / Ракетная установка / Ракетомет
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UT_ROCKETS_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Улучшение ракетной установки
                                { "Russian", "Улучшение ракетомёта" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UT_ROCKETS_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Расширенный диаметр направляющих труб в &lt;TECHNOLOGY&gt;ракетной установке&lt;&gt; ускоряет вывод отработанных газов и &lt;STELLAR&gt;охлаждение&lt;&gt; механизма.
                                { "Russian", "Расширенный диаметр направляющих труб в &lt;TECHNOLOGY&gt;ракетомёте&lt;&gt; ускоряет вывод отработанных газов и &lt;STELLAR&gt;охлаждение&lt;&gt; механизма." },
                            }
                        },
                        --#endregion

                        --#region Щит звездолета
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIPSHIELD1_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TRADEABLE&gt;Среднее&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;защитное покрытие звездолета&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Увеличивает &lt;STELLAR&gt;защищенность корабля&lt;&gt;, позволяя ему дольше выживать в бою.
                                --
                                { "Russian", "&lt;TRADEABLE&gt;Среднее&lt;&gt; улучшение &lt;TECHNOLOGY&gt;защитного покрытия звездолёта﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Увеличивает &lt;STELLAR&gt;защищенность корабля﻿,&lt;&gt; позволяя ему дольше выживать в бою." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIPSHIELD2_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;Значительное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;защитное покрытие звездолета&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Значительно увеличивает &lt;STELLAR&gt;защищенность корабля&lt;&gt;, позволяя ему дольше выживать в бою.
                                --
                                { "Russian", "&lt;TECHNOLOGY&gt;Значительное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;защитного покрытия звездолёта﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Значительно увеличивает &lt;STELLAR&gt;защищенность корабля﻿,&lt;&gt; позволяя ему дольше выживать в бою." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIPSHIELD3_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Невероятно мощное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;защитное покрытие звездолета&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Резко увеличивает &lt;STELLAR&gt;защищенность корабля&lt;&gt;, позволяя ему дольше выживать в бою.
                                --
                                { "Russian", "&lt;SPECIAL&gt;Невероятно мощное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;защитного покрытия звездолёта﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Резко увеличивает &lt;STELLAR&gt;защищенность корабля﻿,&lt;&gt; позволяя ему дольше выживать в бою." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIPSHIELD4_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;COMMODITY&gt;Поразительное мощное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;защитное покрытие звездолета&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Резко увеличивает &lt;STELLAR&gt;защищенность корабля&lt;&gt;, позволяя ему дольше выживать в бою.
                                --
                                { "Russian", "&lt;COMMODITY&gt;Поразительное мощное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;защитного покрытия звездолёта﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Резко увеличивает &lt;STELLAR&gt;защищенность корабля﻿,&lt;&gt; позволяя ему дольше выживать в бою." },
                            }
                        },
                        --#endregion

                        --#region Гипердвигатель
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_HYPER1_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. ГИПЕРДВИГАТ.
                                -- HYPERDRIVE MODULE
                                { "Russian", "МОДУЛЬ ГИПЕРДВИГАТЕЛЯ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_HYPER2_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. ГИПЕРДВИГАТ.
                                -- HYPERDRIVE MODULE
                                { "Russian", "МОДУЛЬ ГИПЕРДВИГАТЕЛЯ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_HYPER3_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. ГИПЕРДВИГАТ.
                                -- HYPERDRIVE MODULE
                                { "Russian", "МОДУЛЬ ГИПЕРДВИГАТЕЛЯ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_HYPER4_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. ГИПЕРДВИГАТ.
                                -- HYPERDRIVE MODULE
                                { "Russian", "МОДУЛЬ ГИПЕРДВИГАТЕЛЯ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_HYPER1_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TRADEABLE&gt;Среднее&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;гипердвигатель&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;эффективность работы гипердвигателя&lt;&gt; и &lt;STELLAR&gt;дальность варп-прыжков&lt;&gt;.
                                { "Russian", "&lt;TRADEABLE&gt;Среднее&lt;&gt; улучшение &lt;TECHNOLOGY&gt;гипердвигателя﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;эффективность работы гипердвигателя&lt;&gt; и &lt;STELLAR&gt;дальность варп-прыжков﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_HYPER2_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;Значительное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;гипердвигатель&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;эффективность работы гипердвигателя&lt;&gt; и &lt;STELLAR&gt;дальность варп-прыжков&lt;&gt;.
                                { "Russian", "&lt;TECHNOLOGY&gt;Значительное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;гипердвигателя﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;эффективность работы гипердвигателя&lt;&gt; и &lt;STELLAR&gt;дальность варп-прыжков﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_HYPER3_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Поразительно мощное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;гипердвигатель&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;эффективность работы гипердвигателя&lt;&gt; и &lt;STELLAR&gt;дальность варп-прыжков&lt;&gt;.
                                { "Russian", "&lt;SPECIAL&gt;Поразительно мощное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;гипердвигателя﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;эффективность работы гипердвигателя&lt;&gt; и &lt;STELLAR&gt;дальность варп-прыжков﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_HYPER4_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;COMMODITY&gt;Невероятно мощное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;гипердвигатель&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;эффективность работы гипердвигателя&lt;&gt; и &lt;STELLAR&gt;дальность варп-прыжков&lt;&gt;.
                                { "Russian", "&lt;COMMODITY&gt;Невероятно мощное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;гипердвигателя﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;эффективность работы гипердвигателя&lt;&gt; и &lt;STELLAR&gt;дальность варп-прыжков﻿.&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region Фотонная пушка
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIPGUN1_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. ФОТОННОЙ ПУШКИ
                                -- PHOTON CANNON MODULE
                                { "Russian", "МОДУЛЬ ФОТОННОЙ ПУШКИ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIPGUN2_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. ФОТОННОЙ ПУШКИ
                                -- PHOTON CANNON MODULE
                                { "Russian", "МОДУЛЬ ФОТОННОЙ ПУШКИ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIPGUN3_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. ФОТОННОЙ ПУШКИ
                                -- PHOTON CANNON MODULE
                                { "Russian", "МОДУЛЬ ФОТОННОЙ ПУШКИ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIPGUN4_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. ФОТОННОЙ ПУШКИ
                                -- PHOTON CANNON MODULE
                                { "Russian", "МОДУЛЬ ФОТОННОЙ ПУШКИ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIPGUN1_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TRADEABLE&gt;Среднее&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;фотонная пушка звездолета&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон&lt;&gt;, &lt;STELLAR&gt;скорострельность&lt;&gt;, сократить &lt;STELLAR&gt;время перегрева&lt;&gt;.
                                { "Russian", "&lt;TRADEABLE&gt;Среднее&lt;&gt; улучшение &lt;TECHNOLOGY&gt;фотонной пушки звездолёта﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон﻿,&lt;&gt; &lt;STELLAR&gt;скорострельность﻿,&lt;&gt; сократить &lt;STELLAR&gt;время перегрева﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIPGUN2_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;Значительное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;фотонная пушка звездолета&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон&lt;&gt;, &lt;STELLAR&gt;скорострельность&lt;&gt;, сократить &lt;STELLAR&gt;время перегрева&lt;&gt;.
                                { "Russian", "&lt;TECHNOLOGY&gt;Значительное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;фотонной пушки звездолёта﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон﻿,&lt;&gt; &lt;STELLAR&gt;скорострельность﻿,&lt;&gt; сократить &lt;STELLAR&gt;время перегрева﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIPGUN3_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Невероятно мощное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;фотонная пушка звездолета&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон&lt;&gt;, &lt;STELLAR&gt;скорострельность&lt;&gt;, сократить &lt;STELLAR&gt;время перегрева&lt;&gt;.
                                { "Russian", "&lt;SPECIAL&gt;Невероятно мощное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;фотонной пушки звездолёта﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон﻿,&lt;&gt; &lt;STELLAR&gt;скорострельность﻿,&lt;&gt; сократить &lt;STELLAR&gt;время перегрева﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIPGUN4_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;COMMODITY&gt;Поразительно мощное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;фотонная пушка звездолета&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон&lt;&gt;, &lt;STELLAR&gt;скорострельность&lt;&gt;, сократить &lt;STELLAR&gt;время перегрева&lt;&gt;.
                                { "Russian", "&lt;COMMODITY&gt;Поразительно мощное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;фотонной пушки звездолёта﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон﻿,&lt;&gt; &lt;STELLAR&gt;скорострельность﻿,&lt;&gt; сократить &lt;STELLAR&gt;время перегрева﻿.&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region Фазовый луч
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIPLAS1_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. ФАЗОВОГО ЛУЧА
                                -- PHASE BEAM MODULE
                                { "Russian", "МОДУЛЬ ФАЗОВОГО ЛУЧА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIPLAS2_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. ФАЗОВОГО ЛУЧА
                                -- PHASE BEAM MODULE
                                { "Russian", "МОДУЛЬ ФАЗОВОГО ЛУЧА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIPLAS3_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. ФАЗОВОГО ЛУЧА
                                -- PHASE BEAM MODULE
                                { "Russian", "МОДУЛЬ ФАЗОВОГО ЛУЧА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIPLAS4_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. ФАЗОВОГО ЛУЧА
                                -- PHASE BEAM MODULE
                                { "Russian", "МОДУЛЬ ФАЗОВОГО ЛУЧА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIPLAS1_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TRADEABLE&gt;Среднее&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;фазовый луч звездолета&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон&lt;&gt; и &lt;STELLAR&gt;устойчивость к перегреву&lt;&gt;.
                                { "Russian", "&lt;TRADEABLE&gt;Среднее&lt;&gt; улучшение &lt;TECHNOLOGY&gt;фазового луча звездолёта﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон&lt;&gt; и &lt;STELLAR&gt;устойчивость к перегреву﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIPLAS2_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;Значительное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;фазовый луч звездолета&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон&lt;&gt; и &lt;STELLAR&gt;устойчивость к перегреву&lt;&gt;.
                                { "Russian", "&lt;TECHNOLOGY&gt;Значительное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;фазового луча звездолёта﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон&lt;&gt; и &lt;STELLAR&gt;устойчивость к перегреву﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIPLAS3_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Невероятно мощное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;фазовый луч звездолета&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон&lt;&gt; и &lt;STELLAR&gt;устойчивость к перегреву&lt;&gt;.
                                { "Russian", "&lt;SPECIAL&gt;Невероятно мощное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;фазового луча звездолёта﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон&lt;&gt; и &lt;STELLAR&gt;устойчивость к перегреву﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIPLAS4_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;COMMODITY&gt;Поразительно мощное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;фазовый луч звездолета.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон&lt;&gt; и &lt;STELLAR&gt;устойчивость к перегреву&lt;&gt;.
                                { "Russian", "&lt;COMMODITY&gt;Поразительно мощное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;фазового луча звездолёта﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон&lt;&gt; и &lt;STELLAR&gt;устойчивость к перегреву﻿.&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region Позитронный эжектор
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIPSHOT1_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TRADEABLE&gt;Среднее&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;позитронный эжектор&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон&lt;&gt;, &lt;STELLAR&gt;скорострельность&lt;&gt;, сократить &lt;STELLAR&gt;время перегрева&lt;&gt;.
                                { "Russian", "&lt;TRADEABLE&gt;Среднее&lt;&gt; улучшение для &lt;TECHNOLOGY&gt;позитронного эжектора﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон﻿,&lt;&gt; &lt;STELLAR&gt;скорострельность﻿,&lt;&gt; сократить &lt;STELLAR&gt;время перегрева﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIPSHOT2_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;Значительное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;позитронный эжектор&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон&lt;&gt;, &lt;STELLAR&gt;скорострельность&lt;&gt;, сократить &lt;STELLAR&gt;время перегрева&lt;&gt;.
                                { "Russian", "&lt;TECHNOLOGY&gt;Значительное&lt;&gt; улучшение для &lt;TECHNOLOGY&gt;позитронного эжектора﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон﻿,&lt;&gt; &lt;STELLAR&gt;скорострельность﻿,&lt;&gt; сократить &lt;STELLAR&gt;время перегрева﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIPSHOT3_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Невероятно мощное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;позитронный эжектор&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон&lt;&gt;, &lt;STELLAR&gt;скорострельность&lt;&gt;, сократить &lt;STELLAR&gt;время перегрева&lt;&gt;.
                                { "Russian", "&lt;SPECIAL&gt;Невероятно мощное&lt;&gt; улучшение для &lt;TECHNOLOGY&gt;позитронного эжектора﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон﻿,&lt;&gt; &lt;STELLAR&gt;скорострельность﻿,&lt;&gt; сократить &lt;STELLAR&gt;время перегрева﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIPSHOT4_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;COMMODITY&gt;Поразительно мощное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;позитронный эжектор&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон&lt;&gt;, &lt;STELLAR&gt;скорострельность&lt;&gt;, сократить &lt;STELLAR&gt;время перегрева&lt;&gt;.
                                { "Russian", "&lt;COMMODITY&gt;Поразительно мощное&lt;&gt; улучшение для &lt;TECHNOLOGY&gt;позитронного эжектора﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон﻿,&lt;&gt; &lt;STELLAR&gt;скорострельность﻿,&lt;&gt; сократить &lt;STELLAR&gt;время перегрева﻿.&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region Инфракрасный ускоритель
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIPMINI1_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TRADEABLE&gt;Среднее&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;инфракрасный ускоритель&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон&lt;&gt;, &lt;STELLAR&gt;скорострельность&lt;&gt;, сократить &lt;STELLAR&gt;время перегрева&lt;&gt;.
                                { "Russian", "&lt;TRADEABLE&gt;Среднее&lt;&gt; улучшение &lt;TECHNOLOGY&gt;инфракрасного ускорителя﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон﻿,&lt;&gt; &lt;STELLAR&gt;скорострельность﻿,&lt;&gt; сократить &lt;STELLAR&gt;время перегрева﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIPMINI2_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;Значительное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;инфракрасный ускоритель&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон&lt;&gt;, &lt;STELLAR&gt;скорострельность&lt;&gt;, сократить &lt;STELLAR&gt;время перегрева&lt;&gt;.
                                { "Russian", "&lt;TECHNOLOGY&gt;Значительное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;инфракрасного ускорителя﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон﻿,&lt;&gt; &lt;STELLAR&gt;скорострельность﻿,&lt;&gt; сократить &lt;STELLAR&gt;время перегрева﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIPMINI3_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Невероятно мощное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;инфракрасный ускоритель.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон&lt;&gt;, &lt;STELLAR&gt;скорострельность&lt;&gt;, сократить &lt;STELLAR&gt;время перегрева&lt;&gt;.
                                { "Russian", "&lt;SPECIAL&gt;Невероятно мощное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;инфракрасного ускорителя﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон﻿,&lt;&gt; &lt;STELLAR&gt;скорострельность﻿,&lt;&gt; сократить &lt;STELLAR&gt;время перегрева﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIPMINI4_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;COMMODITY&gt;Поразительно мощное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;инфракрасный ускоритель&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон&lt;&gt;, &lt;STELLAR&gt;скорострельность&lt;&gt;, сократить &lt;STELLAR&gt;время перегрева&lt;&gt;.
                                { "Russian", "&lt;COMMODITY&gt;Поразительно мощное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;инфракрасного ускорителя﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон﻿,&lt;&gt; &lt;STELLAR&gt;скорострельность﻿,&lt;&gt; сократить &lt;STELLAR&gt;время перегрева﻿.&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region Циклотронная балиста
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIPBLOB1_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TRADEABLE&gt;Среднее&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;циклотронная баллиста&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон&lt;&gt;, &lt;STELLAR&gt;скорострельность&lt;&gt;, сократить &lt;STELLAR&gt;время перегрева&lt;&gt;.
                                { "Russian", "&lt;TRADEABLE&gt;Среднее&lt;&gt; улучшение &lt;TECHNOLOGY&gt;циклотронной баллисты﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон﻿,&lt;&gt; &lt;STELLAR&gt;скорострельность﻿,&lt;&gt; сократить &lt;STELLAR&gt;время перегрева﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIPBLOB2_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;Значительное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;циклотронная баллиста&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон&lt;&gt;, &lt;STELLAR&gt;скорострельность&lt;&gt;, сократить &lt;STELLAR&gt;время перегрева&lt;&gt;.
                                { "Russian", "&lt;TECHNOLOGY&gt;Значительное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;циклотронной баллисты﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон﻿,&lt;&gt; &lt;STELLAR&gt;скорострельность﻿,&lt;&gt; сократить &lt;STELLAR&gt;время перегрева﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIPBLOB3_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Невероятно мощное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;циклотронная баллиста&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон&lt;&gt;, &lt;STELLAR&gt;скорострельность&lt;&gt;, сократить &lt;STELLAR&gt;время перегрева&lt;&gt;.
                                { "Russian", "&lt;SPECIAL&gt;Невероятно мощное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;циклотронной баллисты﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон﻿,&lt;&gt; &lt;STELLAR&gt;скорострельность﻿,&lt;&gt; сократить &lt;STELLAR&gt;время перегрева﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIPBLOB4_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;COMMODITY&gt;Поразительно мощное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;циклотронная баллиста&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон&lt;&gt;, &lt;STELLAR&gt;скорострельность&lt;&gt;, сократить &lt;STELLAR&gt;время перегрева&lt;&gt;.
                                { "Russian", "&lt;COMMODITY&gt;Поразительно мощное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;циклотронной баллисты﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон﻿,&lt;&gt; &lt;STELLAR&gt;скорострельность﻿,&lt;&gt; сократить &lt;STELLAR&gt;время перегрева﻿.&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#endregion

                        --#region ВЕЗДЕХОД

                        --#region Пушка вездехода
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_EXOGUN1_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. ПУШКИ ВЕЗДЕХОДА
                                -- EXOCRAFT CANNON MODULE
                                { "Russian", "МОДУЛЬ ПУШКИ ВЕЗДЕХОДА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_EXOGUN2_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. ПУШКИ ВЕЗДЕХОДА
                                -- EXOCRAFT CANNON MODULE
                                { "Russian", "МОДУЛЬ ПУШКИ ВЕЗДЕХОДА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_EXOGUN3_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. ПУШКИ ВЕЗДЕХОДА
                                -- EXOCRAFT CANNON MODULE
                                { "Russian", "МОДУЛЬ ПУШКИ ВЕЗДЕХОДА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_EXOGUN4_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. ПУШКИ ВЕЗДЕХОДА
                                -- EXOCRAFT CANNON MODULE
                                { "Russian", "МОДУЛЬ ПУШКИ ВЕЗДЕХОДА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_EXOGUN1_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TRADEABLE&gt;Среднее&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;поворотная пушка&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон&lt;&gt;, &lt;STELLAR&gt;скорострельность&lt;&gt; и &lt;STELLAR&gt;топливную эффективность&lt;&gt;.
                                { "Russian", "&lt;TRADEABLE&gt;Среднее&lt;&gt; улучшение &lt;TECHNOLOGY&gt;пушки вездехода﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон﻿,&lt;&gt; &lt;STELLAR&gt;скорострельность&lt;&gt; и &lt;STELLAR&gt;топливную эффективность﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_EXOGUN2_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;Значительное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;поворотная пушка&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон&lt;&gt;, &lt;STELLAR&gt;скорострельность&lt;&gt; и &lt;STELLAR&gt;топливную эффективность&lt;&gt;.
                                { "Russian", "&lt;TECHNOLOGY&gt;Значительное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;пушки вездехода﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон﻿,&lt;&gt; &lt;STELLAR&gt;скорострельность&lt;&gt; и &lt;STELLAR&gt;топливную эффективность﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_EXOGUN3_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Невероятно мощное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;поворотная пушка&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон&lt;&gt;, &lt;STELLAR&gt;скорострельность&lt;&gt; и &lt;STELLAR&gt;топливную эффективность&lt;&gt;.
                                { "Russian", "&lt;SPECIAL&gt;Невероятно мощное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;пушки вездехода﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон﻿,&lt;&gt; &lt;STELLAR&gt;скорострельность&lt;&gt; и &lt;STELLAR&gt;топливную эффективность﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_EXOGUN4_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;COMMODITY&gt;Поразительно мощное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;поворотная пушка&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон&lt;&gt;, &lt;STELLAR&gt;скорострельность&lt;&gt; и &lt;STELLAR&gt;топливную эффективность&lt;&gt;.
                                { "Russian", "&lt;COMMODITY&gt;Поразительно мощное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;пушки вездехода﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон﻿,&lt;&gt; &lt;STELLAR&gt;скорострельность&lt;&gt; и &lt;STELLAR&gt;топливную эффективность﻿.&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region Расщепитель вездехода
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_EXOLAS1_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TRADEABLE&gt;Среднее&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;расщепитель вездехода&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;мощность добычи&lt;&gt; и &lt;STELLAR&gt;топливную эффективность&lt;&gt;.
                                { "Russian", "&lt;TRADEABLE&gt;Среднее&lt;&gt; улучшение &lt;TECHNOLOGY&gt;расщепителя вездехода﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;мощность добычи&lt;&gt; и &lt;STELLAR&gt;топливную эффективность﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_EXOLAS2_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;Значительное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;расщепитель вездехода&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;мощность добычи&lt;&gt; и &lt;STELLAR&gt;топливную эффективность&lt;&gt;.
                                { "Russian", "&lt;TECHNOLOGY&gt;Значительное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;расщепителя вездехода﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;мощность добычи&lt;&gt; и &lt;STELLAR&gt;топливную эффективность﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_EXOLAS3_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Невероятно мощное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;расщепитель вездехода&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;мощность добычи&lt;&gt; и &lt;STELLAR&gt;топливную эффективность&lt;&gt;.
                                { "Russian", "&lt;SPECIAL&gt;Невероятно мощное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;расщепителя вездехода﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;мощность добычи&lt;&gt; и &lt;STELLAR&gt;топливную эффективность﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_EXOLAS4_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;COMMODITY&gt;Поразительно мощное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;расщепитель вездехода&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;мощность добычи&lt;&gt; и &lt;STELLAR&gt;топливную эффективность&lt;&gt;.
                                { "Russian", "&lt;COMMODITY&gt;Поразительно мощное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;расщепителя вездехода﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;мощность добычи&lt;&gt; и &lt;STELLAR&gt;топливную эффективность﻿.&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region Ускорители вездехода
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_EXOBOOST1_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. УСКОР. ВЕЗДЕХОДА
                                -- EXOCRAFT BOOST MODULE
                                { "Russian", "МОД. УСКОРЕНИЯ ВЕЗДЕХОДА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_EXOBOOST2_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. УСКОР. ВЕЗДЕХОДА
                                -- EXOCRAFT BOOST MODULE
                                { "Russian", "МОД. УСКОРЕНИЯ ВЕЗДЕХОДА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_EXOBOOST3_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. УСКОР. ВЕЗДЕХОДА
                                -- EXOCRAFT BOOST MODULE
                                { "Russian", "МОД. УСКОРЕНИЯ ВЕЗДЕХОДА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_EXOBOOST4_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. УСКОР. ВЕЗДЕХОДА
                                -- EXOCRAFT BOOST MODULE
                                { "Russian", "МОД. УСКОРЕНИЯ ВЕЗДЕХОДА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_EXOBOOST1_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TRADEABLE&gt;Среднее&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;ускорители для вездехода&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;емкость резервуара ускорителя&lt;&gt; и/или &lt;STELLAR&gt;мощность ускорения&lt;&gt;.
                                { "Russian", "&lt;TRADEABLE&gt;Среднее&lt;&gt; улучшение &lt;TECHNOLOGY&gt;ускорителей вездехода﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;емкость резервуара ускорителя&lt;&gt; и &lt;STELLAR&gt;мощность ускорения﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_EXOBOOST2_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;Значительное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;ускорители для вездехода&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;емкость резервуара ускорителя&lt;&gt; и/или &lt;STELLAR&gt;мощность ускорения&lt;&gt;.
                                { "Russian", "&lt;TECHNOLOGY&gt;Значительное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;ускорителей вездехода﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;емкость резервуара ускорителя&lt;&gt; и &lt;STELLAR&gt;мощность ускорения﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_EXOBOOST3_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Невероятно мощное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;ускорители для вездехода&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;емкость резервуара ускорителя&lt;&gt; и/или &lt;STELLAR&gt;мощность ускорения&lt;&gt;.
                                { "Russian", "&lt;SPECIAL&gt;Невероятно мощное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;ускорителей вездехода﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;емкость резервуара ускорителя&lt;&gt; и &lt;STELLAR&gt;мощность ускорения﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_EXOBOOST4_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;COMMODITY&gt;Поразительно мощное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;ускорители для вездехода&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;емкость резервуара ускорителя&lt;&gt; и/или &lt;STELLAR&gt;мощность ускорения&lt;&gt;.
                                { "Russian", "&lt;COMMODITY&gt;Поразительно мощное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;ускорителей вездехода﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;емкость резервуара ускорителя&lt;&gt; и &lt;STELLAR&gt;мощность ускорения﻿.&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region Двигатель вездехода
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_EXO_ENG1_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. ДВИГАТ. ВЕЗДЕХОДА
                                -- EXOCRAFT ENGINE MODULE
                                { "Russian", "МОД. ДВИГАТЕЛЯ ВЕЗДЕХОДА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_EXO_ENG2_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. ДВИГАТ. ВЕЗДЕХОДА
                                -- EXOCRAFT ENGINE MODULE
                                { "Russian", "МОД. ДВИГАТЕЛЯ ВЕЗДЕХОДА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_EXO_ENG3_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. ДВИГАТ. ВЕЗДЕХОДА
                                -- EXOCRAFT ENGINE MODULE
                                { "Russian", "МОД. ДВИГАТЕЛЯ ВЕЗДЕХОДА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_EXO_ENG4_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. ДВИГАТ. ВЕЗДЕХОДА
                                -- EXOCRAFT ENGINE MODULE
                                { "Russian", "МОД. ДВИГАТЕЛЯ ВЕЗДЕХОДА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_EXO_ENG1_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TRADEABLE&gt;Среднее&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;двигатель вездехода&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;топливную эффективность&lt;&gt; и/или &lt;STELLAR&gt;максимальную скорость&lt;&gt;.
                                { "Russian", "&lt;TRADEABLE&gt;Среднее&lt;&gt; улучшение &lt;TECHNOLOGY&gt;двигателя вездехода﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;топливную эффективность&lt;&gt; и &lt;STELLAR&gt;максимальную скорость﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_EXO_ENG2_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;Значительное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;двигатель вездехода&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;топливную эффективность&lt;&gt; и/или &lt;STELLAR&gt;максимальную скорость&lt;&gt;.
                                { "Russian", "&lt;TECHNOLOGY&gt;Значительное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;двигателя вездехода﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;топливную эффективность&lt;&gt; и &lt;STELLAR&gt;максимальную скорость﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_EXO_ENG3_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Невероятно мощное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;двигатель вездехода&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;топливную эффективность&lt;&gt; и/или &lt;STELLAR&gt;максимальную скорость&lt;&gt;.
                                { "Russian", "&lt;SPECIAL&gt;Невероятно мощное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;двигателя вездехода﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;топливную эффективность&lt;&gt; и &lt;STELLAR&gt;максимальную скорость﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_EXO_ENG4_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;COMMODITY&gt;Поразительно мощное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;двигатель вездехода&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;топливную эффективность&lt;&gt; и/или &lt;STELLAR&gt;максимальную скорость&lt;&gt;.
                                { "Russian", "&lt;COMMODITY&gt;Поразительно мощное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;двигателя вездехода﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;топливную эффективность&lt;&gt; и &lt;STELLAR&gt;максимальную скорость﻿.&lt;&gt;" },
                            }
                        },
                        --#endregion

                        -- описание слишком большое, нижняя часть окошка не влезает, конкретно, кнопка "РАЗОБРАТЬ"
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "VEHICLE_GRIP2_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Значительно повышает управляемость вездехода с помощью доработки программного обеспечения, регулировки давления и размещения микрогравитационных колодцев в основных компонентах подвески.&#xA;&#xA;Специально настроена, чтобы улучшить способность вездехода делать &lt;STELLAR&gt;резкие повороты&lt;&gt;.
                                { "Russian", "Значительно повышает управляемость вездехода с помощью доработки программного обеспечения, регулировки давления и размещения микрогравитационных колодцев в основных компонентах подвески. Способность вездехода делать &lt;STELLAR&gt;резкие повороты&lt;&gt; улучшена." },
                            }
                        },

                        --#endregion

                        --#region НАУТИЛОН

                        --#region Луч Тефиды
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SUBLASER_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Лазерное орудие, разработанное для &lt;STELLAR&gt;подводной лодки «Наутилон»&lt;&gt;.&#xA;&#xA;Выпускает по цели луч концентрированной плазмы, воспламеняя ее. Подобный механизм позволяет использовать энергооптическое оборудование для добычи ресурсов в жидкой среде.
                                { "Russian", "Лазерное орудие, разработанное для &lt;STELLAR&gt;подводной лодки Наутилон﻿.&lt;&gt;&#xA;&#xA;Выпускает по цели луч концентрированной плазмы, воспламеняя ее. Подобный механизм позволяет использовать энергооптическое оборудование для добычи ресурсов в жидкой среде." },
                            }
                        },
                        --#endregion

                        --#region Гумбольдтовый двигатель
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_EXOSUB1_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. ГУМБ. ДВИГАТ.
                                -- HUMBOLDT DRIVE MODULE
                                { "Russian", "МОД. ГУМБ. ДВИГАТЕЛЬ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_EXOSUB2_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. ГУМБ. ДВИГАТ.
                                -- HUMBOLDT DRIVE MODULE
                                { "Russian", "МОД. ГУМБ. ДВИГАТЕЛЬ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_EXOSUB3_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. ГУМБ. ДВИГАТ.
                                -- HUMBOLDT DRIVE MODULE
                                { "Russian", "МОД. ГУМБ. ДВИГАТЕЛЬ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_EXOSUB4_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. ГУМБ. ДВИГАТ.
                                -- HUMBOLDT DRIVE MODULE
                                { "Russian", "МОД. ГУМБ. ДВИГАТЕЛЬ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_EXOSUB1_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TRADEABLE&gt;Среднее&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;гумбольдтовый двигатель&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;ускорение&lt;&gt;, &lt;STELLAR&gt;повысить топливную эффективность&lt;&gt; и &lt;STELLAR&gt;увеличить максимальную скорость&lt;&gt;.
                                { "Russian", "&lt;TRADEABLE&gt;Среднее&lt;&gt; улучшение &lt;TECHNOLOGY&gt;гумбольдтового двигателя﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;ускорение﻿,&lt;&gt; &lt;STELLAR&gt;повысить топливную эффективность&lt;&gt; и &lt;STELLAR&gt;увеличить максимальную скорость﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_EXOSUB2_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;Значительное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;гумбольдтовый двигатель&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;ускорение&lt;&gt;, &lt;STELLAR&gt;повысить топливную эффективность&lt;&gt; и &lt;STELLAR&gt;увеличить максимальную скорость&lt;&gt;.
                                { "Russian", "&lt;TECHNOLOGY&gt;Значительное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;гумбольдтового двигателя﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;ускорение﻿,&lt;&gt; &lt;STELLAR&gt;повысить топливную эффективность&lt;&gt; и &lt;STELLAR&gt;увеличить максимальную скорость﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_EXOSUB3_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Невероятно мощное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;гумбольдтовый двигатель.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;ускорение&lt;&gt;, &lt;STELLAR&gt;повысить топливную эффективность&lt;&gt; и &lt;STELLAR&gt;увеличить максимальную скорость&lt;&gt;.
                                { "Russian", "&lt;SPECIAL&gt;Невероятно мощное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;гумбольдтового двигателя﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;ускорение﻿,&lt;&gt; &lt;STELLAR&gt;повысить топливную эффективность&lt;&gt; и &lt;STELLAR&gt;увеличить максимальную скорость﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_EXOSUB4_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;COMMODITY&gt;Поразительно мощное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;гумбольдтовый двигатель&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;ускорение&lt;&gt;, &lt;STELLAR&gt;повысить топливную эффективность&lt;&gt; и &lt;STELLAR&gt;увеличить максимальную скорость&lt;&gt;.
                                { "Russian", "&lt;COMMODITY&gt;Поразительно мощное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;гумбольдтового двигателя﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;ускорение﻿,&lt;&gt; &lt;STELLAR&gt;повысить топливную эффективность&lt;&gt; и &lt;STELLAR&gt;увеличить максимальную скорость﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SUBENGINE_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Двигатель с термическим реактором и защитой от инверсий, способный питать «Наутилон» энергией даже на большой глубине.&#xA;&#xA;Работает на &lt;FUEL&gt;гидротермальных топливных блоках&lt;&gt;.
                                { "Russian", "Двигатель с термическим реактором и защитой от инверсий, способный питать Наутилон энергией даже на большой глубине.&#xA;&#xA;Работает на &lt;FUEL&gt;гидротермальных топливных блоках﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SUB_BINOCS_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Высокоточный сонар, способный улучшить бортовой сканер «Наутилона» до уровня анализирующего визора.&#xA;Чтобы активировать мощный сонар, нажмите &lt;IMG&gt;SCAN&lt;&gt;.
                                { "Russian", "Высокоточный сонар, способный улучшить бортовой сканер Наутилона до уровня анализирующего визора.&#xA;Чтобы активировать мощный сонар, нажмите &lt;IMG&gt;SCAN&lt;&gt;." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SUB_RECHARGE_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Устанавливается в двигательную систему &lt;STELLAR&gt;подводной лодки «Наутилон»&lt;&gt;.&#xA;&#xA;Черпает энергию из солей, содержащихся в морской воде, позволяя заряжать &lt;TECHNOLOGY&gt;гумбольдтовый двигатель&lt;&gt; в условиях нехватки топлива.
                                { "Russian", "Устанавливается в двигательную систему &lt;STELLAR&gt;подводной лодки Наутилон﻿.&lt;&gt;&#xA;&#xA;Черпает энергию из солей, содержащихся в морской воде, позволяя заряжать &lt;TECHNOLOGY&gt;гумбольдтовый двигатель&lt;&gt; в условиях нехватки топлива." },
                            }
                        },
                        --#endregion

                        --#region Пушка Наутилона
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SUBGUN_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПУШКА «НАУТИЛОНА»
                                -- NAUTILON CANNON
                                { "Russian", "ПУШКА НАУТИЛОНА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SUBGUN_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Пушка «Наутилона»
                                -- Nautilon Cannon
                                { "Russian", "Пушка Наутилона" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SUBGUN1_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. ПУШКИ «НАУТИЛОНА»
                                -- NAUTILON CANNON MODULE
                                { "Russian", "МОДУЛЬ ПУШКИ НАУТИЛОНА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SUBGUN1_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Модуль пушки «Наутилона»
                                { "Russian", "Модуль пушки Наутилона" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SUBGUN1_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Улучшение пушки «Наутилона»
                                { "Russian", "Улучшение оружия Наутилона" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SUBGUN2_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. ПУШКИ «НАУТИЛОНА»
                                -- NAUTILON CANNON MODULE
                                { "Russian", "МОДУЛЬ ПУШКИ НАУТИЛОНА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SUBGUN2_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Модуль пушки «Наутилона»
                                { "Russian", "Модуль пушки Наутилона" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SUBGUN2_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Знач. улучш. пушки «Наутилона»
                                { "Russian", "Значительное улучшение оружия Наутилона" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SUBGUN3_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. ПУШКИ «НАУТИЛОНА»
                                -- NAUTILON CANNON MODULE
                                { "Russian", "МОДУЛЬ ПУШКИ НАУТИЛОНА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SUBGUN3_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Модуль пушки «Наутилона»
                                { "Russian", "Модуль пушки Наутилона" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SUBGUN3_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Мощное улучшение пушки «Наутилона»
                                { "Russian", "Мощное улучшение оружия Наутилона" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SUBGUN4_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. ПУШКИ «НАУТИЛОНА»
                                -- NAUTILON CANNON MODULE
                                { "Russian", "МОДУЛЬ ПУШКИ НАУТИЛОНА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SUBGUN4_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Модуль пушки «Наутилона»
                                { "Russian", "Модуль пушки Наутилона" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SUBGUN4_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Превосходное улучшение пушки «Наутилона»
                                { "Russian", "Превосходное улучшение оружия Наутилона" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SUBGUN_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Пушка, разработанная для &lt;STELLAR&gt;подводной лодки «Наутилон»&lt;&gt;.&#xA;&#xA;Мощное энергетическое оружие раскаляет воду и направляет ее на большой скорости к цели.&#xA;&#xA;Это оружие разработано для борьбы с живыми организмами и не подходит для добычи ресурсов.
                                { "Russian", "Пушка, разработанная для &lt;STELLAR&gt;подводной лодки Наутилон﻿.&lt;&gt;&#xA;&#xA;Мощное энергетическое оружие раскаляет воду и направляет ее на большой скорости к цели.&#xA;&#xA;Это оружие разработано для борьбы с живыми организмами и не подходит для добычи ресурсов." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SUBGUN1_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TRADEABLE&gt;Среднее&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;пушка «Наутилона»&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон&lt;&gt; и/или &lt;STELLAR&gt;скорострельность&lt;&gt;.
                                { "Russian", "&lt;TRADEABLE&gt;Среднее&lt;&gt; улучшение &lt;TECHNOLOGY&gt;пушки Наутилона﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон&lt;&gt; и &lt;STELLAR&gt;скорострельность﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SUBGUN2_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;Значительное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;пушка «Наутилона»&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон&lt;&gt; и/или &lt;STELLAR&gt;скорострельность&lt;&gt;.
                                { "Russian", "&lt;TECHNOLOGY&gt;Значительное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;пушки Наутилона﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон&lt;&gt; и &lt;STELLAR&gt;скорострельность﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SUBGUN3_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Невероятно мощное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;пушка «Наутилона»&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон&lt;&gt; и/или &lt;STELLAR&gt;скорострельность&lt;&gt;.
                                { "Russian", "&lt;SPECIAL&gt;Невероятно мощное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;пушки Наутилона﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон&lt;&gt; и &lt;STELLAR&gt;скорострельность﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SUBGUN4_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;COMMODITY&gt;Поразительно мощное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;пушка «Наутилона»&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон&lt;&gt; и/или &lt;STELLAR&gt;скорострельность&lt;&gt;.
                                { "Russian", "&lt;COMMODITY&gt;Поразительно мощное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;пушки Наутилона﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон&lt;&gt; и &lt;STELLAR&gt;скорострельность﻿.&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#endregion
                    }
                },
                { -- LANGUAGE/NMS_LOC6_RUSSIAN.MBIN
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_LOC6_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        --#region Разное
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UPGRADE_DESC_LVLX" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Подозрительная &lt;SPECIAL&gt;нелегальная модификация&lt;&gt;: &lt;TECHNOLOGY&gt;%NAME%&lt;&gt;.
                                -- A suspicious &lt;SPECIAL&gt;black-market modification&lt;&gt; for the &lt;TECHNOLOGY&gt;%NAME%&lt;&gt;.
                                { "Russian", "Подозрительная &lt;SPECIAL&gt;нелегальная модификация&lt;&gt; для технологии &lt;TECHNOLOGY&gt;%NAME%﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ION1_ALIEN_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сложный биометаллический стержень, напрямую подключенный к сердцу с антиматерией. Регистрирует повышение активности при межзвездных прыжках. Похоже, ему нравится выполнять сложные математические расчеты, необходимые для перемещения на сверхсветовой скорости.&#xA;&#xA;Чтобы воспользоваться навигационными системами для дальних перелетов, откройте галактическую карту. Не забывайте радовать свой корабль, регулярно совершая прыжки между системами.
                                -- A complex bio-metallic stem plugged directly into an antimatter heart. Registers high activity during interstellar jumps. It appears to delight in the complex calculations required for FTL travel.&#xA;&#xA;Access long-distance navigation systems through Galactic Map. Keep the ship happy by regularly jumping between systems.
                                { "Russian", "Сложный биометаллический стержень, напрямую подключенный к антиматериальному сердцу. Регистрирует повышение активности при межзвёздных прыжках. Похоже, ему нравится выполнять сложные математические расчеты, необходимые для перемещения на сверхсветовой скорости.&#xA;&#xA;Чтобы воспользоваться навигационными системами для дальних перелётов, откройте галактическую карту. Не забывайте радовать свой корабль, регулярно совершая прыжки между системами." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SHIPLAS1_ALIEN_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сложная система мембран и линз, вживленная в лазерную матрицу высокой мощности. Тот, кто окажется в поле их зрения, будет испепелен.&#xA;Нажмите &lt;IMG&gt;SHIPFIRE&lt;&gt;, чтобы попросить глаза посмотреть на ближайшие цели.
                                -- A complex arrangement of membranes and lens, fused atop a high-energy laser array. Incineration awaits those that meet their stare.&#xA;Press &lt;IMG&gt;SHIPFIRE&lt;&gt; request the eyes gaze upon nearby targets.
                                { "Russian", "Сложная система мембран и линз, вживленная в лазерную матрицу высокой мощности. Тот, кто окажется в поле их зрения, будет испепелён.&#xA;Нажмите &lt;IMG&gt;SHIPFIRE&lt;&gt;, чтобы попросить глаза посмотреть на ближайшие цели." },
                            }
                        },
                        --#endregion

                        --#region ГРУЗОВОЕ СУДНО

                        --#region Описание установленного модуля
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UT_FR_SPEED_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Часть оборудования для взаимодействия флота, найденная среди обломков судна &lt;TECHNOLOGY&gt;%NAME%&lt;&gt;. Модуль перекомпонован и установлен в системы связи дальнего действия грузового судна.&#xA;&#xA;Модуль улучшает &lt;STELLAR&gt;скорость экспедиции&lt;&gt;.
                                -- A piece of fleet coordination hardware salvaged from wreck of the &lt;TECHNOLOGY&gt;%NAME%&lt;&gt;. The unit has been repackaged and inserted alongside the freighter's long-range communication systems.&#xA;&#xA;The unit offers improvements to &lt;STELLAR&gt;expedition speed&lt;&gt;.
                                { "Russian", "Часть оборудования для взаимодействия флота, найденная среди обломков судна &lt;TECHNOLOGY&gt;%NAME%﻿.&lt;&gt; Модуль был пересобран и установлен в системы связи дальнего действия грузового судна.&#xA;&#xA;Улучшает &lt;STELLAR&gt;скорость экспедиции﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UT_FR_FUEL_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Часть оборудования для взаимодействия флота, найденная среди обломков судна &lt;TECHNOLOGY&gt;%NAME%&lt;&gt;. Модуль перекомпонован и установлен в системы оснащения грузового судна дальнего действия.&#xA;&#xA;Модуль улучшает &lt;STELLAR&gt;топливную эффективность экспедиции&lt;&gt;.
                                -- A piece of fleet coordination hardware salvaged from wreck of the &lt;TECHNOLOGY&gt;%NAME%&lt;&gt;. The unit has been repackaged and inserted alongside the freighter's long-range outfitting systems.&#xA;&#xA;The unit offers improvements to &lt;STELLAR&gt;expedition fuel efficiency&lt;&gt;.
                                { "Russian", "Часть оборудования для взаимодействия флота, найденная среди обломков судна &lt;TECHNOLOGY&gt;%NAME%﻿.&lt;&gt; Модуль был пересобран и установлен в системы оснащения дальнего действия грузового судна.&#xA;&#xA;Улучшает &lt;STELLAR&gt;топливную эффективность экспедиции﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UT_FR_COM_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Часть оборудования для взаимодействия флота, найденная среди обломков судна &lt;TECHNOLOGY&gt;%NAME%&lt;&gt;. Модуль перекомпонован и установлен в оборонительные системы грузового судна дальнего действия.&#xA;&#xA;Модуль улучшает &lt;STELLAR&gt;боевые и оборонительные возможности&lt;&gt;&lt;STELLAR&gt;всех экспедиций&lt;&gt;.
                                -- A piece of fleet coordination hardware salvaged from wreck of the &lt;TECHNOLOGY&gt;%NAME%&lt;&gt;. The unit has been repackaged and inserted alongside the freighter's long-range defensive systems.&#xA;&#xA;The unit offers improvements to the &lt;STELLAR&gt;combat and defense abilities&lt;&gt; of &lt;STELLAR&gt;all expeditions&lt;&gt;.
                                { "Russian", "Часть оборудования для взаимодействия флота, найденная среди обломков судна &lt;TECHNOLOGY&gt;%NAME%﻿.&lt;&gt; Модуль был пересобран и установлен в оборонительные системы дальнего действия грузового судна.&#xA;&#xA;Улучшает &lt;STELLAR&gt;боевые и оборонительные возможности&lt;&gt; &lt;STELLAR&gt;всех экспедиций﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UT_FR_TRADE_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Часть оборудования для взаимодействия флота, найденная среди обломков судна &lt;TECHNOLOGY&gt;%NAME%&lt;&gt;. Модуль перекомпонован и установлен в системы связи грузового судна дальнего действия.&#xA;&#xA;Модуль улучшает &lt;STELLAR&gt;торговые возможности&lt;&gt;&lt;STELLAR&gt;всех экспедиций&lt;&gt;.
                                { "Russian", "Часть оборудования для взаимодействия флота, найденная среди обломков судна &lt;TECHNOLOGY&gt;%NAME%﻿.&lt;&gt; Модуль был пересобран и установлен в системы связи дальнего действия грузового судна.&#xA;&#xA;Улучшает &lt;STELLAR&gt;торговые возможности&lt;&gt; &lt;STELLAR&gt;всех экспедиций﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UT_FR_EXP_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Часть оборудования для взаимодействия флота, найденная среди обломков судна &lt;TECHNOLOGY&gt;%NAME%&lt;&gt;. Модуль перекомпонован и установлен в системы сканирования грузового судна дальнего действия.&#xA;&#xA;Модуль улучшает &lt;STELLAR&gt;исследовательские и научные возможности&lt;&gt;&lt;STELLAR&gt;всех экспедиций&lt;&gt;.
                                { "Russian", "Часть оборудования для взаимодействия флота, найденная среди обломков судна &lt;TECHNOLOGY&gt;%NAME%﻿.&lt;&gt; Модуль был пересобран и установлен в системы сканирования дальнего действия грузового судна.&#xA;&#xA;Улучшает &lt;STELLAR&gt;исследовательские и научные возможности&lt;&gt; &lt;STELLAR&gt;всех экспедиций﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UT_FR_MINE_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Часть оборудования для взаимодействия флота, найденная среди обломков судна &lt;TECHNOLOGY&gt;%NAME%&lt;&gt;. Модуль перекомпонован и установлен в системы оснащения грузового судна дальнего действия.&#xA;&#xA;Модуль улучшает &lt;STELLAR&gt;промышленные возможности&lt;&gt;&lt;STELLAR&gt;всех экспедиций&lt;&gt;.
                                -- A piece of fleet coordination hardware salvaged from wreck of the &lt;TECHNOLOGY&gt;%NAME%&lt;&gt;. The unit has been repackaged and inserted alongside the freighter's long-range outfitting systems.&#xA;&#xA;The unit offers improvements to the &lt;STELLAR&gt;industrial abilities&lt;&gt; of &lt;STELLAR&gt;all expeditions&lt;&gt;.
                                { "Russian", "Часть оборудования для взаимодействия флота, найденная среди обломков судна &lt;TECHNOLOGY&gt;%NAME%﻿.&lt;&gt; Модуль был пересобран и установлен в системы оснащения дальнего действия грузового судна.&#xA;&#xA;Улучшает &lt;STELLAR&gt;промышленные возможности&lt;&gt; &lt;STELLAR&gt;всех экспедиций﻿.&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#endregion

                        --#region МУЛЬТИТУЛ
                        { -- Запрещенное улучшение сканирующей системы
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SCANNER_X_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрещенное улучшение сканирующей системы
                                -- Banned Scanning System Upgrade
                                { "Russian", "Запрещенное улучшение системы сканирования" },
                            }
                        },
                        { -- Расщепитель
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_LASER_X_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Нелегальная модификация&lt;&gt;: &lt;TECHNOLOGY&gt;расщепитель&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить: &lt;STELLAR&gt;выходную мощность&lt;&gt;, &lt;STELLAR&gt;устойчивость к воздействию тепла&lt;&gt; и &lt;STELLAR&gt;топливную эффективность&lt;&gt;.
                                { "Russian", "&lt;SPECIAL&gt;Нелегальная модификация&lt;&gt; &lt;TECHNOLOGY&gt;расщепителя﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;выходную мощность﻿,&lt;&gt; &lt;STELLAR&gt;устойчивость к воздействию тепла&lt;&gt; и &lt;STELLAR&gt;топливную эффективность﻿.&lt;&gt;" },
                            }
                        },
                        { -- Плазмомет
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_BOLT_X_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Нелегальная модификация&lt;&gt;: &lt;TECHNOLOGY&gt;плазмомет&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить: &lt;STELLAR&gt;урон&lt;&gt;, &lt;STELLAR&gt;время перезарядки&lt;&gt;, &lt;STELLAR&gt;размер обоймы&lt;&gt; и &lt;STELLAR&gt;скорострельность&lt;&gt;.
                                { "Russian", "&lt;SPECIAL&gt;Нелегальная модификация&lt;&gt; &lt;TECHNOLOGY&gt;плазмомета﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон﻿,&lt;&gt; &lt;STELLAR&gt;время перезарядки﻿,&lt;&gt; &lt;STELLAR&gt;размер обоймы&lt;&gt; и &lt;STELLAR&gt;скорострельность﻿.&lt;&gt;" },
                            }
                        },
                        { -- Плазмобластер
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_GRENADE_X_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Нелегальная модификация&lt;&gt;: &lt;TECHNOLOGY&gt;плазмобластер&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить: &lt;STELLAR&gt;урон&lt;&gt; и &lt;STELLAR&gt;радиус&lt;&gt; взрыва, а также количество &lt;STELLAR&gt;отскоков&lt;&gt; перед взрывом.
                                { "Russian", "&lt;SPECIAL&gt;Нелегальная модификация&lt;&gt; &lt;TECHNOLOGY&gt;плазмобластера﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон&lt;&gt; и &lt;STELLAR&gt;радиус&lt;&gt; взрыва, а также количество &lt;STELLAR&gt;отскоков&lt;&gt; перед взрывом." },
                            }
                        },
                        { -- Сканер мультитула
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SCANNER_X_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Нелегальная модификация&lt;&gt;: &lt;TECHNOLOGY&gt;сканирующая система мультитула&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить: &lt;STELLAR&gt;радиус сканирования&lt;&gt; и/или значительно повысить &lt;STELLAR&gt;ценность&lt;&gt;&lt;TECHNOLOGY&gt;данных открытия&lt;&gt;.
                                { "Russian", "&lt;SPECIAL&gt;Нелегальная модификация&lt;&gt; &lt;TECHNOLOGY&gt;систем сканирования мультитула﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;радиус сканирования&lt;&gt; и значительно повысить &lt;STELLAR&gt;ценность&lt;&gt; &lt;TECHNOLOGY&gt;данных открытия﻿.&lt;&gt;" },
                            }
                        },
                        { -- Геологическая пушка
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_TGRENADE_X_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Нелегальная модификация&lt;&gt;: &lt;TECHNOLOGY&gt;геологическая пушка&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Увеличивает &lt;STELLAR&gt;урон от взрыва&lt;&gt; и &lt;STELLAR&gt;радиус кратера&lt;&gt;.
                                { "Russian", "&lt;SPECIAL&gt;Нелегальная модификация&lt;&gt; &lt;TECHNOLOGY&gt;геологической пушки﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Увеличивает &lt;STELLAR&gt;урон от взрыва&lt;&gt; и &lt;STELLAR&gt;радиус кратера﻿.&lt;&gt;" },
                            }
                        },
                        { -- Пламенное копье
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_RAIL_X_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Нелегальная модификация&lt;&gt;: &lt;TECHNOLOGY&gt;плазменное копье&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить: &lt;STELLAR&gt;урон от лазера&lt;&gt; и &lt;STELLAR&gt;время перезарядки&lt;&gt;.
                                { "Russian", "&lt;SPECIAL&gt;Нелегальная модификация&lt;&gt; &lt;TECHNOLOGY&gt;пламенного копья﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон от лазера&lt;&gt; и &lt;STELLAR&gt;время перезарядки﻿.&lt;&gt;" },
                            }
                        },
                        { -- Бластер-рассеиватель
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHOTGUN_X_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Нелегальная модификация&lt;&gt;: &lt;TECHNOLOGY&gt;бластер-рассеиватель&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить: &lt;STELLAR&gt;урон&lt;&gt;, &lt;STELLAR&gt;время перезарядки&lt;&gt;, &lt;STELLAR&gt;размер обоймы&lt;&gt; и &lt;STELLAR&gt;скорострельность&lt;&gt;.
                                { "Russian", "&lt;SPECIAL&gt;Нелегальная модификация&lt;&gt; &lt;TECHNOLOGY&gt;бластера-рассеивателя﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон﻿,&lt;&gt; &lt;STELLAR&gt;время перезарядки﻿,&lt;&gt; &lt;STELLAR&gt;размер обоймы&lt;&gt; и &lt;STELLAR&gt;скорострельность﻿.&lt;&gt;" },
                            }
                        },
                        { -- Импульсный скорострел
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SMG_X_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Нелегальная модификация&lt;&gt;: &lt;TECHNOLOGY&gt;импульсный скорострел&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить: &lt;STELLAR&gt;урон&lt;&gt;, &lt;STELLAR&gt;время перезарядки&lt;&gt;, &lt;STELLAR&gt;размер обоймы&lt;&gt; и &lt;STELLAR&gt;скорострельность&lt;&gt;.
                                { "Russian", "&lt;SPECIAL&gt;Нелегальная модификация&lt;&gt; &lt;TECHNOLOGY&gt;импульсного скорострела﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон﻿,&lt;&gt; &lt;STELLAR&gt;время перезарядки﻿,&lt;&gt; &lt;STELLAR&gt;размер обоймы&lt;&gt; и &lt;STELLAR&gt;скорострельность﻿.&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region ЭКЗОКОСТЮМ
                        { -- Двигательная система
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_JETBOOST_X_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Нелегальная модификация&lt;&gt;: &lt;TECHNOLOGY&gt;двигательные системы экзокостюма&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить: &lt;STELLAR&gt;объем бака реактивного ранца&lt;&gt;, &lt;STELLAR&gt;топливную эффективность реактивного ранца&lt;&gt; и &lt;STELLAR&gt;длительность ускорения&lt;&gt; экзокостюма.
                                { "Russian", "&lt;SPECIAL&gt;Нелегальная модификация&lt;&gt; &lt;TECHNOLOGY&gt;двигательной системы экзокостюма﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;объем бака реактивного ранца﻿,&lt;&gt; &lt;STELLAR&gt;топливную эффективность реактивного ранца&lt;&gt; и &lt;STELLAR&gt;длительность ускорения&lt;&gt; экзокостюма." },
                            }
                        },
                        { -- Щит экзокостюма
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIELDBOOST_X_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Нелегальная модификация&lt;&gt;: &lt;TECHNOLOGY&gt;защитные системы экзокостюма&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить: &lt;STELLAR&gt;прочность щита экзокостюма&lt;&gt; и &lt;STELLAR&gt;основное здоровье&lt;&gt;.
                                { "Russian", "&lt;SPECIAL&gt;Нелегальная модификация&lt;&gt; &lt;TECHNOLOGY&gt;систем защиты экзокостюма﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;прочность щита экзокостюма&lt;&gt; и &lt;STELLAR&gt;основное здоровье﻿.&lt;&gt;" },
                            }
                        },
                        { -- Система жизнеобеспечения
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_ENERGY_X_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Нелегальная модификация&lt;&gt;: &lt;TECHNOLOGY&gt;система жизнеобеспечения экзокостюма&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;эффективность системы жизнеобеспечения экзокостюма&lt;&gt;.
                                { "Russian", "&lt;SPECIAL&gt;Нелегальная модификация&lt;&gt; &lt;TECHNOLOGY&gt;системы жизнеобеспечения﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;эффективность системы жизнеобеспечения экзокостюма﻿.&lt;&gt;" },
                            }
                        },
                        { -- Защита от вредных факторов
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_HAZ_X_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Нелегальная модификация&lt;&gt;: &lt;TECHNOLOGY&gt;защита от вредных факторов экзокостюма&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;эффективность защиты от вредных факторов экзокостюма&lt;&gt;.
                                { "Russian", "&lt;SPECIAL&gt;Нелегальная модификация&lt;&gt; &lt;TECHNOLOGY&gt;защиты от вредных факторов﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;эффективность защиты от вредных факторов экзокостюма﻿.&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region ЗВЕЗДОЛЁТ
                        { -- Щит звездолета
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIPSHIELD_X_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Нелегальная модификация&lt;&gt;: &lt;TECHNOLOGY&gt;защитное покрытие звездолета&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Резко увеличивает &lt;STELLAR&gt;защищенность корабля&lt;&gt;, позволяя ему дольше выживать в бою.
                                -- A &lt;SPECIAL&gt;black-market modification&lt;&gt; for the &lt;TECHNOLOGY&gt;Starship Defensive Shielding&lt;&gt;. Use &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt; to begin upgrade &lt;VAL_ON&gt;installation process&lt;&gt;.&#xA;&#xA;The module is flexible, and exact upgrade statistics are &lt;SPECIAL&gt;unknown&lt;&gt; until installation is complete.&#xA;&#xA;Dramatically improves &lt;STELLAR&gt;ship strength&lt;&gt; for increased combat endurance.
                                { "Russian", "&lt;SPECIAL&gt;Нелегальная модификация&lt;&gt; &lt;TECHNOLOGY&gt;защитного покрытия звездолёта﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Резко увеличивает &lt;STELLAR&gt;защищенность корабля﻿,&lt;&gt; позволяя ему дольше выживать в бою." },
                            }
                        },
                        { -- Импульсный двигатель
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_PULSE_X_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Нелегальная модификация&lt;&gt;: &lt;TECHNOLOGY&gt;импульсный двигатель звездолета&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить: &lt;STELLAR&gt;маневренность&lt;&gt; и &lt;STELLAR&gt;скорость&lt;&gt; звездолета.
                                { "Russian", "&lt;SPECIAL&gt;Нелегальная модификация&lt;&gt; &lt;TECHNOLOGY&gt;импульсного двигателя звездолёта﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;маневренность&lt;&gt; и &lt;STELLAR&gt;скорость&lt;&gt; звездолёта." },
                            }
                        },
                        { -- Взлетные ускорители
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_LAUNCH_X_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Нелегальная модификация&lt;&gt;: &lt;TECHNOLOGY&gt;взлетные ускорители звездолета&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;эффективность запуска&lt;&gt; и &lt;STELLAR&gt;скорость&lt;&gt; звездолета.
                                { "Russian", "&lt;SPECIAL&gt;Нелегальная модификация&lt;&gt; &lt;TECHNOLOGY&gt;взлетных ускорителей звездолёта﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;эффективность запуска&lt;&gt; и &lt;STELLAR&gt;скорость&lt;&gt; звездолёта." },
                            }
                        },
                        { -- Гипердвигатель
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_HYPER_X_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Нелегальная модификация&lt;&gt;: &lt;TECHNOLOGY&gt;гипердвигатель&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить: &lt;STELLAR&gt;эффективность работы гипердвигателя&lt;&gt; и &lt;STELLAR&gt;дальность варп-прыжков&lt;&gt;.
                                { "Russian", "&lt;SPECIAL&gt;Нелегальная модификация&lt;&gt; &lt;TECHNOLOGY&gt;гипердвигателя﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;эффективность работы гипердвигателя&lt;&gt; и &lt;STELLAR&gt;дальность варп-прыжков﻿.&lt;&gt;" },
                            }
                        },
                        { -- Фотонная пушка
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIPGUN_X_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Нелегальная модификация&lt;&gt;: &lt;TECHNOLOGY&gt;фотонная пушка звездолета&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить: &lt;STELLAR&gt;урон&lt;&gt;, &lt;STELLAR&gt;скорострельность&lt;&gt;, сократить &lt;STELLAR&gt;время перегрева&lt;&gt;.
                                { "Russian", "&lt;SPECIAL&gt;Нелегальная модификация&lt;&gt; &lt;TECHNOLOGY&gt;фотонной пушки звездолёта﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон﻿,&lt;&gt; &lt;STELLAR&gt;скорострельность﻿,&lt;&gt; сократить &lt;STELLAR&gt;время перегрева﻿.&lt;&gt;" },
                            }
                        },
                        { -- Фазовый луч
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIPLAS_X_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Нелегальная модификация&lt;&gt;: &lt;TECHNOLOGY&gt;фазовый луч звездолета&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить: &lt;STELLAR&gt;урон&lt;&gt; и &lt;STELLAR&gt;устойчивость к перегреву&lt;&gt;.
                                { "Russian", "&lt;SPECIAL&gt;Нелегальная модификация&lt;&gt; &lt;TECHNOLOGY&gt;фазового луча звездолёта﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон&lt;&gt; и &lt;STELLAR&gt;устойчивость к перегреву&lt;&gt;." },
                            }
                        },
                        { -- Позитронный эжектор
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIPSHOT_X_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Нелегальная модификация&lt;&gt;: &lt;TECHNOLOGY&gt;позитронный эжектор&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить: &lt;STELLAR&gt; наносимый урон&lt;&gt;, &lt;STELLAR&gt;скорострельность&lt;&gt;, сократить &lt;STELLAR&gt;время перегрева&lt;&gt;.
                                { "Russian", "&lt;SPECIAL&gt;Нелегальная модификация&lt;&gt; &lt;TECHNOLOGY&gt;позитронного эжектора﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;наносимый урон﻿,&lt;&gt; &lt;STELLAR&gt;скорострельность﻿,&lt;&gt; сократить &lt;STELLAR&gt;время перегрева﻿.&lt;&gt;" },
                            }
                        },
                        { -- Инфракрасный ускоритель
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIPMINI_X_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Нелегальная модификация&lt;&gt;: &lt;TECHNOLOGY&gt;инфракрасный ускоритель&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить: &lt;STELLAR&gt; наносимый урон&lt;&gt;, &lt;STELLAR&gt;скорострельность&lt;&gt;, сократить &lt;STELLAR&gt;время перегрева&lt;&gt;.
                                { "Russian", "&lt;SPECIAL&gt;Нелегальная модификация&lt;&gt; &lt;TECHNOLOGY&gt;инфракрасного ускорителя﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;наносимый урон﻿,&lt;&gt; &lt;STELLAR&gt;скорострельность﻿,&lt;&gt; сократить &lt;STELLAR&gt;время перегрева﻿.&lt;&gt;" },
                            }
                        },
                        { -- Циклотронная балиста
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_SHIPBLOB_X_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Нелегальная модификация&lt;&gt;: &lt;TECHNOLOGY&gt;циклотронная баллиста&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить: &lt;STELLAR&gt; наносимый урон&lt;&gt;, &lt;STELLAR&gt;скорострельность&lt;&gt;, сократить &lt;STELLAR&gt;время перегрева&lt;&gt;.
                                { "Russian", "&lt;SPECIAL&gt;Нелегальная модификация&lt;&gt; &lt;TECHNOLOGY&gt;циклотронной баллисты﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;наносимый урон﻿,&lt;&gt; &lt;STELLAR&gt;скорострельность﻿,&lt;&gt; сократить &lt;STELLAR&gt;время перегрева﻿.&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region ЖИВОЙ КОРАБЛЬ

                        --#region Узел подавителя криков
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BIO_PROD_SHIELD1_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TRADEABLE&gt;Среднее&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;система обезболивания корабля&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы запустить выращивание узла и начать &lt;VAL_ON&gt;процесс пересадки&lt;&gt;.&#xA;&#xA;Каждый узел генетически уникален, и точные параметры улучшения &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения пересадки.&#xA;&#xA;Значительно увеличивает &lt;STELLAR&gt;защищенность живого корабля&lt;&gt;, позволяя ему дольше продержаться в бою.
                                { "Russian", "&lt;TRADEABLE&gt;Среднее&lt;&gt; улучшение &lt;TECHNOLOGY&gt;системы обезболивания корабля﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы запустить выращивание узла и начать &lt;VAL_ON&gt;процесс пересадки﻿.&lt;&gt;&#xA;&#xA;Каждый узел генетически уникален, и точные параметры улучшения &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения пересадки.&#xA;&#xA;Значительно увеличивает &lt;STELLAR&gt;защищенность живого корабля﻿,&lt;&gt; позволяя ему дольше продержаться в бою." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BIO_PROD_SHIELD2_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;Значительное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;система обезболивания корабля&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы запустить выращивание узла и начать &lt;VAL_ON&gt;процесс пересадки&lt;&gt;.&#xA;&#xA;Каждый узел генетически уникален, и точные параметры улучшения &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения пересадки.&#xA;&#xA;Значительно увеличивает &lt;STELLAR&gt;защищенность живого корабля&lt;&gt;, позволяя ему дольше продержаться в бою.
                                { "Russian", "&lt;TECHNOLOGY&gt;Значительное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;системы обезболивания корабля﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы запустить выращивание узла и начать &lt;VAL_ON&gt;процесс пересадки﻿.&lt;&gt;&#xA;&#xA;Каждый узел генетически уникален, и точные параметры улучшения &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения пересадки.&#xA;&#xA;Значительно увеличивает &lt;STELLAR&gt;защищенность живого корабля﻿,&lt;&gt; позволяя ему дольше продержаться в бою." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BIO_PROD_SHIELD3_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Невероятно мощное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;система обезболивания корабля&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы запустить выращивание узла и начать &lt;VAL_ON&gt;процесс пересадки&lt;&gt;.&#xA;&#xA;Каждый узел генетически уникален, и точные параметры улучшения &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения пересадки.&#xA;&#xA;Резко увеличивает &lt;STELLAR&gt;защищенность живого корабля&lt;&gt;, позволяя ему дольше продержаться в бою.
                                { "Russian", "&lt;SPECIAL&gt;Невероятно мощное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;системы обезболивания корабля﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы запустить выращивание узла и начать &lt;VAL_ON&gt;процесс пересадки﻿.&lt;&gt;&#xA;&#xA;Каждый узел генетически уникален, и точные параметры улучшения &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения пересадки.&#xA;&#xA;Резко увеличивает &lt;STELLAR&gt;защищенность живого корабля﻿,&lt;&gt; позволяя ему дольше продержаться в бою." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BIO_PROD_SHIELD4_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;COMMODITY&gt;Поразительно мощное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;система обезболивания корабля&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы запустить выращивание узла и начать &lt;VAL_ON&gt;процесс пересадки&lt;&gt;.&#xA;&#xA;Каждый узел генетически уникален, и точные параметры улучшения &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения пересадки.&#xA;&#xA;Резко увеличивает &lt;STELLAR&gt;защищенность живого корабля&lt;&gt;, позволяя ему дольше продержаться в бою.
                                { "Russian", "&lt;COMMODITY&gt;Поразительно мощное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;системы обезболивания корабля﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы запустить выращивание узла и начать &lt;VAL_ON&gt;процесс пересадки﻿.&lt;&gt;&#xA;&#xA;Каждый узел генетически уникален, и точные параметры улучшения &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения пересадки.&#xA;&#xA;Резко увеличивает &lt;STELLAR&gt;защищенность живого корабля﻿,&lt;&gt; позволяя ему дольше продержаться в бою." },
                            }
                        },
                        --#endregion

                        --#region Пульсирующий сердечный узел | Узел бьющегося сердца
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BIO_PROD_PULSE_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПУЛЬСИРУЮЩИЙ СЕРДЕЧНЫЙ УЗЕЛ
                                -- PULSING HEART NODE
                                { "Russian", "УЗЕЛ БЬЮЩЕГОСЯ СЕРДЦА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BIO_PROD_PULSE_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Пульсирующий сердечный узел
                                -- Pulsing Heart Node
                                { "Russian", "Узел бьющегося сердца" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BIO_PROD_PULSE1_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TRADEABLE&gt;Среднее&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;бьющееся сердце&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы запустить выращивание узла и начать &lt;VAL_ON&gt;процесс пересадки&lt;&gt;.&#xA;&#xA;Каждый узел генетически уникален, и точные параметры улучшения &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения пересадки.&#xA;&#xA;Может улучшить: &lt;STELLAR&gt;маневренность&lt;&gt; и &lt;STELLAR&gt;скорость&lt;&gt;.
                                { "Russian", "&lt;TRADEABLE&gt;Среднее&lt;&gt; улучшение &lt;TECHNOLOGY&gt;бьющегося сердца﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы запустить выращивание узла и начать &lt;VAL_ON&gt;процесс пересадки﻿.&lt;&gt;&#xA;&#xA;Каждый узел генетически уникален, и точные параметры улучшения &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения пересадки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;маневренность&lt;&gt; и &lt;STELLAR&gt;скорость﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BIO_PROD_PULSE2_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;Значительное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;бьющееся сердце&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы запустить выращивание узла и начать &lt;VAL_ON&gt;процесс пересадки&lt;&gt;.&#xA;&#xA;Каждый узел генетически уникален, и точные параметры улучшения &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения пересадки.&#xA;&#xA;Может улучшить: &lt;STELLAR&gt;маневренность&lt;&gt; и &lt;STELLAR&gt;скорость&lt;&gt;.
                                { "Russian", "&lt;TECHNOLOGY&gt;Значительное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;бьющегося сердца﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы запустить выращивание узла и начать &lt;VAL_ON&gt;процесс пересадки﻿.&lt;&gt;&#xA;&#xA;Каждый узел генетически уникален, и точные параметры улучшения &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения пересадки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;маневренность&lt;&gt; и &lt;STELLAR&gt;скорость﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BIO_PROD_PULSE3_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Невероятно мощное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;бьющееся сердце&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы запустить выращивание узла и начать &lt;VAL_ON&gt;процесс пересадки&lt;&gt;.&#xA;&#xA;Каждый узел генетически уникален, и точные параметры улучшения &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения пересадки.&#xA;&#xA;Может улучшить: &lt;STELLAR&gt;маневренность&lt;&gt; и &lt;STELLAR&gt;скорость&lt;&gt;.
                                { "Russian", "&lt;SPECIAL&gt;Невероятно мощное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;бьющегося сердца﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы запустить выращивание узла и начать &lt;VAL_ON&gt;процесс пересадки﻿.&lt;&gt;&#xA;&#xA;Каждый узел генетически уникален, и точные параметры улучшения &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения пересадки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;маневренность&lt;&gt; и &lt;STELLAR&gt;скорость﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BIO_PROD_PULSE4_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;COMMODITY&gt;Поразительно мощное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;бьющееся сердце&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы запустить выращивание узла и начать &lt;VAL_ON&gt;процесс пересадки&lt;&gt;.&#xA;&#xA;Каждый узел генетически уникален, и точные параметры улучшения &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения пересадки.&#xA;&#xA;Может улучшить: &lt;STELLAR&gt;маневренность&lt;&gt; и &lt;STELLAR&gt;скорость&lt;&gt;.
                                { "Russian", "&lt;COMMODITY&gt;Поразительно мощное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;бьющегося сердца﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы запустить выращивание узла и начать &lt;VAL_ON&gt;процесс пересадки﻿.&lt;&gt;&#xA;&#xA;Каждый узел генетически уникален, и точные параметры улучшения &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения пересадки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;маневренность&lt;&gt; и &lt;STELLAR&gt;скорость﻿.&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region Узел скопления нейронов | Скопление нейронов
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BIO_PROD_LAUNCH_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- УЗЕЛ СКОПЛЕНИЯ НЕЙРОНОВ
                                -- NEURAL ASSEMBLY NODE
                                { "Russian", "УЗЕЛ СКОПЛЕНИЯ НЕЙРОНОВ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BIO_PROD_LAUNCH_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Узел скопления нейронов
                                -- Neural Assembly Node
                                { "Russian", "Узел скопления нейронов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BIO_PROD_LAUNCH1_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TRADEABLE&gt;Среднее&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;скопление нейронов&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы запустить выращивание узла и начать &lt;VAL_ON&gt;процесс пересадки&lt;&gt;.&#xA;&#xA;Каждый узел генетически уникален, и точные параметры улучшения &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения пересадки.&#xA;&#xA;Повышает &lt;STELLAR&gt;эффективность взлета&lt;&gt;.
                                { "Russian", "&lt;TRADEABLE&gt;Среднее&lt;&gt; улучшение &lt;TECHNOLOGY&gt;скопления нейронов﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы запустить выращивание узла и начать &lt;VAL_ON&gt;процесс пересадки﻿.&lt;&gt;&#xA;&#xA;Каждый узел генетически уникален, и точные параметры улучшения &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения пересадки.&#xA;&#xA;Повышает &lt;STELLAR&gt;эффективность взлета﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BIO_PROD_LAUNCH2_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;Значительное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;скопление нейронов&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы запустить выращивание узла и начать &lt;VAL_ON&gt;процесс пересадки&lt;&gt;.&#xA;&#xA;Каждый узел генетически уникален, и точные параметры улучшения &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения пересадки.&#xA;&#xA;Повышает &lt;STELLAR&gt;эффективность взлета&lt;&gt;.
                                { "Russian", "&lt;TECHNOLOGY&gt;Значительное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;скопления нейронов﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы запустить выращивание узла и начать &lt;VAL_ON&gt;процесс пересадки﻿.&lt;&gt;&#xA;&#xA;Каждый узел генетически уникален, и точные параметры улучшения &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения пересадки.&#xA;&#xA;Повышает &lt;STELLAR&gt;эффективность взлета﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BIO_PROD_LAUNCH3_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Невероятно мощное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;скопление нейронов&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы запустить выращивание узла и начать &lt;VAL_ON&gt;процесс пересадки&lt;&gt;.&#xA;&#xA;Каждый узел генетически уникален, и точные параметры улучшения &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения пересадки.&#xA;&#xA;Повышает &lt;STELLAR&gt;эффективность взлета&lt;&gt;.
                                { "Russian", "&lt;SPECIAL&gt;Невероятно мощное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;скопления нейронов﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы запустить выращивание узла и начать &lt;VAL_ON&gt;процесс пересадки﻿.&lt;&gt;&#xA;&#xA;Каждый узел генетически уникален, и точные параметры улучшения &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения пересадки.&#xA;&#xA;Повышает &lt;STELLAR&gt;эффективность взлета﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BIO_PROD_LAUNCH4_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;COMMODITY&gt;Поразительно мощное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;скопление нейронов&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы запустить выращивание узла и начать &lt;VAL_ON&gt;процесс пересадки&lt;&gt;.&#xA;&#xA;Каждый узел генетически уникален, и точные параметры улучшения &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения пересадки.&#xA;&#xA;Повышает &lt;STELLAR&gt;эффективность взлета&lt;&gt; и включает &lt;STELLAR&gt;автоматическую подзарядку&lt;&gt;.
                                { "Russian", "&lt;COMMODITY&gt;Поразительно мощное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;скопления нейронов﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы запустить выращивание узла и начать &lt;VAL_ON&gt;процесс пересадки﻿.&lt;&gt;&#xA;&#xA;Каждый узел генетически уникален, и точные параметры улучшения &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения пересадки.&#xA;&#xA;Повышает &lt;STELLAR&gt;эффективность взлета&lt;&gt; и включает &lt;STELLAR&gt;автоматическую подзарядку﻿.&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region Кортекс сингулярности
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BIO_PROD_HYPER1_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TRADEABLE&gt;Среднее&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;кортекс сингулярности&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы запустить выращивание узла и начать &lt;VAL_ON&gt;процесс пересадки&lt;&gt;.&#xA;&#xA;Каждый узел генетически уникален, и точные параметры улучшения &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения пересадки.&#xA;&#xA;Может улучшить: &lt;STELLAR&gt;эффективность работы гипердвигателя&lt;&gt; и &lt;STELLAR&gt;дальность варп-прыжков&lt;&gt;.
                                { "Russian", "&lt;TRADEABLE&gt;Среднее&lt;&gt; улучшение &lt;TECHNOLOGY&gt;кортекса сингулярности﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы запустить выращивание узла и начать &lt;VAL_ON&gt;процесс пересадки﻿.&lt;&gt;&#xA;&#xA;Каждый узел генетически уникален, и точные параметры улучшения &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения пересадки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;эффективность работы гипердвигателя&lt;&gt; и &lt;STELLAR&gt;дальность варп-прыжков﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BIO_PROD_HYPER2_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;Значительное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;кортекс сингулярности&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы запустить выращивание узла и начать &lt;VAL_ON&gt;процесс пересадки&lt;&gt;.&#xA;&#xA;Каждый узел генетически уникален, и точные параметры улучшения &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения пересадки.&#xA;&#xA;Может улучшить: &lt;STELLAR&gt;эффективность работы гипердвигателя&lt;&gt; и &lt;STELLAR&gt;дальность варп-прыжков&lt;&gt;.
                                { "Russian", "&lt;TECHNOLOGY&gt;Значительное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;кортекса сингулярности﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы запустить выращивание узла и начать &lt;VAL_ON&gt;процесс пересадки﻿.&lt;&gt;&#xA;&#xA;Каждый узел генетически уникален, и точные параметры улучшения &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения пересадки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;эффективность работы гипердвигателя&lt;&gt; и &lt;STELLAR&gt;дальность варп-прыжков﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BIO_PROD_HYPER3_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Невероятно мощное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;кортекс сингулярности&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы запустить выращивание узла и начать &lt;VAL_ON&gt;процесс пересадки&lt;&gt;.&#xA;&#xA;Каждый узел генетически уникален, и точные параметры улучшения &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения пересадки.&#xA;&#xA;Может улучшить: &lt;STELLAR&gt;эффективность работы гипердвигателя&lt;&gt; и &lt;STELLAR&gt;дальность варп-прыжков&lt;&gt;.
                                { "Russian", "&lt;SPECIAL&gt;Невероятно мощное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;кортекса сингулярности﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы запустить выращивание узла и начать &lt;VAL_ON&gt;процесс пересадки﻿.&lt;&gt;&#xA;&#xA;Каждый узел генетически уникален, и точные параметры улучшения &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения пересадки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;эффективность работы гипердвигателя&lt;&gt; и &lt;STELLAR&gt;дальность варп-прыжков﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BIO_PROD_HYPER4_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;COMMODITY&gt;Поразительно мощное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;кортекс сингулярности&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы запустить выращивание узла и начать &lt;VAL_ON&gt;процесс пересадки&lt;&gt;.&#xA;&#xA;Каждый узел генетически уникален, и точные параметры улучшения &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения пересадки.&#xA;&#xA;Может улучшить: &lt;STELLAR&gt;эффективность работы гипердвигателя&lt;&gt; и &lt;STELLAR&gt;дальность варп-прыжков&lt;&gt;.
                                { "Russian", "&lt;COMMODITY&gt;Поразительно мощное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;кортекса сингулярности﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы запустить выращивание узла и начать &lt;VAL_ON&gt;процесс пересадки﻿.&lt;&gt;&#xA;&#xA;Каждый узел генетически уникален, и точные параметры улучшения &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения пересадки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;эффективность работы гипердвигателя&lt;&gt; и &lt;STELLAR&gt;дальность варп-прыжков﻿.&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region Изрыгающие отверстия
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BIO_PROD_GUN1_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TRADEABLE&gt;Среднее&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;изрыгающие отверстия&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы запустить выращивание узла и начать &lt;VAL_ON&gt;процесс пересадки&lt;&gt;.&#xA;&#xA;Каждый узел генетически уникален, и точные параметры улучшения &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения пересадки.&#xA;&#xA;Может улучшить: &lt;STELLAR&gt;урон&lt;&gt;, &lt;STELLAR&gt;скорострельность&lt;&gt;, сократить &lt;STELLAR&gt;время перегрева&lt;&gt;.
                                { "Russian", "&lt;TRADEABLE&gt;Среднее&lt;&gt; улучшение &lt;TECHNOLOGY&gt;изрыгающих отверстий﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы запустить выращивание узла и начать &lt;VAL_ON&gt;процесс пересадки﻿.&lt;&gt;&#xA;&#xA;Каждый узел генетически уникален, и точные параметры улучшения &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения пересадки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон﻿,&lt;&gt; &lt;STELLAR&gt;скорострельность﻿,&lt;&gt; сократить &lt;STELLAR&gt;время перегрева﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BIO_PROD_GUN2_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;Значительное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;изрыгающие отверстия&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы запустить выращивание узла и начать &lt;VAL_ON&gt;процесс пересадки&lt;&gt;.&#xA;&#xA;Каждый узел генетически уникален, и точные параметры улучшения &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения пересадки.&#xA;&#xA;Может улучшить: &lt;STELLAR&gt;урон&lt;&gt;, &lt;STELLAR&gt;скорострельность&lt;&gt;, сократить &lt;STELLAR&gt;время перегрева&lt;&gt;.
                                { "Russian", "&lt;TECHNOLOGY&gt;Значительное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;изрыгающих отверстий﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы запустить выращивание узла и начать &lt;VAL_ON&gt;процесс пересадки﻿.&lt;&gt;&#xA;&#xA;Каждый узел генетически уникален, и точные параметры улучшения &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения пересадки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон﻿,&lt;&gt; &lt;STELLAR&gt;скорострельность﻿,&lt;&gt; сократить &lt;STELLAR&gt;время перегрева﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BIO_PROD_GUN3_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Невероятно мощное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;изрыгающие отверстия&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы запустить выращивание узла и начать &lt;VAL_ON&gt;процесс пересадки&lt;&gt;.&#xA;&#xA;Каждый узел генетически уникален, и точные параметры улучшения &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения пересадки.&#xA;&#xA;Может улучшить: &lt;STELLAR&gt;урон&lt;&gt;, &lt;STELLAR&gt;скорострельность&lt;&gt;, сократить &lt;STELLAR&gt;время перегрева&lt;&gt;.
                                { "Russian", "&lt;SPECIAL&gt;Невероятно мощное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;изрыгающих отверстий﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы запустить выращивание узла и начать &lt;VAL_ON&gt;процесс пересадки﻿.&lt;&gt;&#xA;&#xA;Каждый узел генетически уникален, и точные параметры улучшения &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения пересадки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон﻿,&lt;&gt; &lt;STELLAR&gt;скорострельность﻿,&lt;&gt; сократить &lt;STELLAR&gt;время перегрева﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BIO_PROD_GUN4_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;COMMODITY&gt;Поразительно мощное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;изрыгающие отверстия&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы запустить выращивание узла и начать &lt;VAL_ON&gt;процесс пересадки&lt;&gt;.&#xA;&#xA;Каждый узел генетически уникален, и точные параметры улучшения &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения пересадки.&#xA;&#xA;Может улучшить: &lt;STELLAR&gt;урон&lt;&gt;, &lt;STELLAR&gt;скорострельность&lt;&gt;, сократить &lt;STELLAR&gt;время перегрева&lt;&gt;.
                                { "Russian", "&lt;COMMODITY&gt;Поразительно мощное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;изрыгающих отверстий﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы запустить выращивание узла и начать &lt;VAL_ON&gt;процесс пересадки﻿.&lt;&gt;&#xA;&#xA;Каждый узел генетически уникален, и точные параметры улучшения &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения пересадки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон﻿,&lt;&gt; &lt;STELLAR&gt;скорострельность﻿,&lt;&gt; сократить &lt;STELLAR&gt;время перегрева﻿.&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region Выращенные глаза
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BIO_PROD_LAS1_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TRADEABLE&gt;Среднее&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;выращенные глаза&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы запустить выращивание узла и начать &lt;VAL_ON&gt;процесс пересадки&lt;&gt;.&#xA;&#xA;Каждый узел генетически уникален, и точные параметры улучшения &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения пересадки.&#xA;&#xA;Может улучшить: &lt;STELLAR&gt;урон&lt;&gt; и &lt;STELLAR&gt;устойчивость к перегреву&lt;&gt;.
                                { "Russian", "&lt;TRADEABLE&gt;Среднее&lt;&gt; улучшение &lt;TECHNOLOGY&gt;выращенных глаз﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы запустить выращивание узла и начать &lt;VAL_ON&gt;процесс пересадки﻿.&lt;&gt;&#xA;&#xA;Каждый узел генетически уникален, и точные параметры улучшения &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения пересадки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон&lt;&gt; и &lt;STELLAR&gt;устойчивость к перегреву﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BIO_PROD_LAS2_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;Значительное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;выращенные глаза&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы запустить выращивание узла и начать &lt;VAL_ON&gt;процесс пересадки&lt;&gt;.&#xA;&#xA;Каждый узел генетически уникален, и точные параметры улучшения &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения пересадки.&#xA;&#xA;Может улучшить: &lt;STELLAR&gt;урон&lt;&gt; и &lt;STELLAR&gt;устойчивость к перегреву&lt;&gt;.
                                { "Russian", "&lt;TECHNOLOGY&gt;Значительное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;выращенных глаз﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы запустить выращивание узла и начать &lt;VAL_ON&gt;процесс пересадки﻿.&lt;&gt;&#xA;&#xA;Каждый узел генетически уникален, и точные параметры улучшения &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения пересадки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон&lt;&gt; и &lt;STELLAR&gt;устойчивость к перегреву﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BIO_PROD_LAS3_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Невероятно мощное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;выращенные глаза&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы запустить выращивание узла и начать &lt;VAL_ON&gt;процесс пересадки&lt;&gt;.&#xA;&#xA;Каждый узел генетически уникален, и точные параметры улучшения &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения пересадки.&#xA;&#xA;Может улучшить: &lt;STELLAR&gt;урон&lt;&gt; и &lt;STELLAR&gt;устойчивость к перегреву&lt;&gt;.
                                { "Russian", "&lt;SPECIAL&gt;Невероятно мощное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;выращенных глаз﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы запустить выращивание узла и начать &lt;VAL_ON&gt;процесс пересадки﻿.&lt;&gt;&#xA;&#xA;Каждый узел генетически уникален, и точные параметры улучшения &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения пересадки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон&lt;&gt; и &lt;STELLAR&gt;устойчивость к перегреву﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BIO_PROD_LAS4_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;COMMODITY&gt;Поразительно мощное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;выращенные глаза&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы запустить выращивание узла и начать &lt;VAL_ON&gt;процесс пересадки&lt;&gt;.&#xA;&#xA;Каждый узел генетически уникален, и точные параметры улучшения &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения пересадки.&#xA;&#xA;Может улучшить: &lt;STELLAR&gt;урон&lt;&gt; и &lt;STELLAR&gt;устойчивость к перегреву&lt;&gt;.
                                { "Russian", "&lt;COMMODITY&gt;Поразительно мощное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;выращенных глаз﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы запустить выращивание узла и начать &lt;VAL_ON&gt;процесс пересадки﻿.&lt;&gt;&#xA;&#xA;Каждый узел генетически уникален, и точные параметры улучшения &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения пересадки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон&lt;&gt; и &lt;STELLAR&gt;устойчивость к перегреву﻿.&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#endregion

                        --#region МИНОТАВР

                        --#region ДВИГАТЕЛЬ «ДЕДАЛ»
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MECH_ENGINE_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ДВИГАТЕЛЬ «ДЕДАЛ»
                                -- DAEDALUS ENGINE
                                { "Russian", "ДВИГАТЕЛЬ ДЕДАЛ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MECH_ENGINE_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Двигатель «Дедал»
                                { "Russian", "Двигатель Дедал" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MECH_ENGINE_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Компактный блок реактора, питающий «Минотавра». Он установлен на гироскоп, что предотвращает утечки топлива при быстром движении.&#xA;&#xA;Работает на стандартном &lt;FUEL&gt;углеродном топливе&lt;&gt;.
                                -- A compact reactor unit, this engine is the heart of the Minotaur. It is mounted on a gyroscope to prevent fuel incidents during rapid movement.&#xA;&#xA;Powered by conventional &lt;FUEL&gt;carbon-base fuels&lt;&gt;.
                                { "Russian", "Этот двигатель с компактным реакторным блоком является сердцем Минотавра. Он установлен на гироскоп, что предотвращает утечки топлива при быстром движении.&#xA;&#xA;Работает на стандартном &lt;FUEL&gt;углеродном топливе﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MECH_ENGINE_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Энергоустановка «Минотавра»
                                -- Minotaur Power Unit
                                { "Russian", "Энергоустановка Минотавра" },
                            }
                        },
                        --#endregion

                        --#region САМОСМАЗЫВАЮЩИЕ ПРИВОДЫ
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MECH_FUEL_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- САМОСМАЗЫВАЮЩИЕ ПРИВОДЫ
                                { "Russian", "САМОСМАЗЫВАЮЩИЕСЯ ПРИВОДЫ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MECH_FUEL_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Самосмазывающие приводы
                                { "Russian", "Самосмазывающиеся приводы" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MECH_FUEL_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Раздатчик масла с автоматической регулировкой устанавливается в ножные сочленения «Минотавра», чтобы снижать трение и поддерживать экономящее топливо движение.&#xA;&#xA;Значительно &lt;STELLAR&gt;снижает расход топлива&lt;&gt; двигателем «Дедал».
                                -- An automatically-regulated lubricant dispenser fitted to the leg joints of the Minotaur reduce friction and encourage fuel-efficient motion.&#xA;&#xA;Significantly &lt;STELLAR&gt;reduces fuel burn&lt;&gt; in the Minotaur's Daedalus Engine.
                                { "Russian", "Раздатчик масла с автоматической регулировкой устанавливается в ножные сочленения Минотавра, чтобы снижать трение и поддерживать экономящее топливо движение.&#xA;&#xA;Значительно &lt;STELLAR&gt;снижает расход топлива&lt;&gt; двигателем Дедал." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MECH_FUEL_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Улучшение для экономичности мотора
                                -- Motor Efficiency Upgrade
                                { "Russian", "Улучшение эффективности мотора" },
                            }
                        },
                        --#endregion

                        --#region ПЛАМЯ АРИАДНЫ
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MECH_BOOST_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Несколько подвижных мощных реактивных ускорителей, установленных в задней части «Минотавра». Своевременное использование позволяет «Минотавру» быстро и легко преодолевать любой ландшафт.&#xA;&#xA;Для включения нажмите и удерживайте &lt;IMG&gt;JUMP&lt;&gt;. Возможно ограниченное управление во время полета.
                                -- A series of agile, high-powered jet thrusters mounted to the rear of the rear of the Minotaur. Precise use allows the Minotaur to quickly and powerfully traverse all manner of terrain.&#xA;&#xA;Press and hold &lt;IMG&gt;JUMP&lt;&gt; to activate. Limited in-flight control is possible.
                                { "Russian", "Несколько подвижных мощных реактивных ускорителей, установленных в задней части Минотавра. Своевременное использование позволяет Минотавру быстро и легко преодолевать любой ландшафт.&#xA;&#xA;Для включения нажмите и удерживайте &lt;IMG&gt;JUMP&lt;&gt;. Возможно ограниченное управление во время полета." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MECH_BOOST_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Система ускорителей «Минотавра»
                                -- Minotaur Thruster System
                                { "Russian", "Система ускорителей Минотавра" },
                            }
                        },
                        --#endregion

                        --#region РАДАРНЫЙ БЛОК «МИНОТАВРА»
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MECH_SCAN_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- РАДАРНЫЙ БЛОК «МИНОТАВРА»
                                { "Russian", "РАДАР МИНОТАВРА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MECH_SCAN_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Радарный блок «Минотавра»
                                { "Russian", "Радар Минотавра" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MECH_SCAN_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сканирующий элемент «Минотавра»
                                -- Minotaur Scan Attachment
                                { "Russian", "Сканирующее оборудование Минотавра" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MECH_SCAN_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Высокоточный радар, способный улучшить бортовой сканер «Минотавра» до уровня анализирующего визора.&#xA;&#xA;Нажмите &lt;IMG&gt;SCAN&lt;&gt;, чтобы начать радарное сканирование, открывающее &lt;STELLAR&gt;дополнительные важные объекты&lt;&gt;, которые нельзя обнаружить сканером мультитула.&#xA;&#xA;Используйте быстрое меню, чтобы настроить радар на &lt;TECHNOLOGY&gt;конкретные постройки&lt;&gt;.
                                --
                                { "Russian", "Высокоточный радар, способный улучшить бортовой сканер Минотавра до уровня анализирующего визора.&#xA;&#xA;Нажмите &lt;IMG&gt;SCAN&lt;&gt;, чтобы начать радарное сканирование, открывающее &lt;STELLAR&gt;дополнительные важные объекты﻿,&lt;&gt; которые нельзя обнаружить сканером мультитула.&#xA;&#xA;Используйте быстрое меню, чтобы настроить радар на &lt;TECHNOLOGY&gt;конкретные постройки﻿.&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region ЛАЗЕР «МИНОТАВРА»
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MECH_LASER_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ЛАЗЕР «МИНОТАВРА»
                                -- MINOTAUR LASER
                                { "Russian", "ЛАЗЕР МИНОТАВРА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MECH_LASER_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Лазер «Минотавра»
                                { "Russian", "Лазер Минотавра" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MECH_LASER_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Лазерное орудие, разработанное для &lt;STELLAR&gt;тяжелого гибридного экзокостюма «Минотавр»&lt;&gt;.&#xA;&#xA;Позволяет заниматься обычной добычей ресурсов. Бесполезно в бою.
                                { "Russian", "Лазерное орудие, разработанное для &lt;STELLAR&gt;тяжелого гибридного экзокостюма Минотавр﻿.&lt;&gt;&#xA;&#xA;Позволяет заниматься обычной добычей ресурсов. Бесполезно в бою." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MECH_LASER_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Горнодобывающая установка «Минотавра»
                                { "Russian", "Горнодобывающая установка Минотавра" },
                            }
                        },
                        --#endregion

                        --#region ТОЧНЫЙ ЛАЗЕР «МИНОТАВРА»
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MECH_LASER1_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ТОЧНЫЙ ЛАЗЕР «МИНОТАВРА»
                                { "Russian", "ТОЧНЫЙ ЛАЗЕР МИНОТАВРА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MECH_LASER1_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Точный лазер «Минотавра»
                                { "Russian", "Точный лазер Минотавра" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MECH_LASER1_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Улучшение массива лазеров для &lt;STELLAR&gt;тяжелого гибридного экзокостюма «Минотавр»&lt;&gt;&#xA;&#xA;Увеличивает мощность расщепителя, повышая скорость добычи ресурсов и позволяя обрабатывать сложное в добыче сырье.
                                -- An upgrade for the &lt;STELLAR&gt;Minotaur Heavy Exosuit Hybrid&lt;&gt;'s laser array system.&#xA;&#xA;Amplifies the power deployed by the mining beam, increasing mining speed and enabling the processing of difficult to mine raw materials.
                                { "Russian", "Улучшение лазерной решетки для &lt;STELLAR&gt;тяжелого гибридного экзокостюма Минотавр﻿.&lt;&gt;&#xA;&#xA;Увеличивает мощность расщепителя, повышая скорость добычи ресурсов и позволяя обрабатывать трудноизвлекаемые ископаемые." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MECH_LASER1_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Продвинутый расщепитель «Минотавра»
                                { "Russian", "Продвинутый расщепитель Минотавра" },
                            }
                        },
                        --#endregion

                        --#region БУР «МИНОТАВРА»
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MECH_MINER_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- БУР «МИНОТАВРА»
                                { "Russian", "БУР МИНОТАВРА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MECH_MINER_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Бур «Минотавра»
                                { "Russian", "Бур Минотавра" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MECH_MINER_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добавляет массиву лазеров &lt;STELLAR&gt;тяжелого гибридного экзокостюма «Минотавр»&lt;&gt; возможность &lt;STELLAR&gt;изменять ландшафт&lt;&gt;.&#xA;&#xA;Особый элемент, позволяющий быстро вызывать мощный ландшафтный экскаватор, не подвергая чувствительные сочленения и приводы «Минотавра» риску загрязнения.
                                -- Adds &lt;STELLAR&gt;Terrain Manipulation&lt;&gt; capability to the laser array of the &lt;STELLAR&gt;Minotaur Heavy Exosuit Hybrid&lt;&gt;.&#xA;&#xA;A special mount allows the rapid deployment of a high-energy terrain excavator, without risking clogging the Minotaur's delicate joints and servos with dirt.
                                { "Russian", "Добавляет лазерной решетке &lt;STELLAR&gt;тяжелого гибридного экзокостюма Минотавр&lt;&gt; возможность &lt;STELLAR&gt;изменять ландшафт﻿.&lt;&gt;&#xA;&#xA;Особый элемент, позволяющий быстро вызывать мощный ландшафтный экскаватор, не подвергая чувствительные сочленения и приводы Минотавра риску загрязнения." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MECH_MINER_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Землеройный лазер «Минотавра»
                                -- Minotaur Digging Laser
                                { "Russian", "Землеройный лазер Минотавра" },
                            }
                        },
                        --#endregion

                        --#region Двигатель Минотавра
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_MECH_ENG2_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. ДВИГАТ. «МИНОТАВРА»
                                -- MINOTAUR ENGINE MODULE
                                { "Russian", "МОД. ДВИГАТЕЛЯ МИНОТАВРА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_MECH_ENG2_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Модуль двигателя «Минотавра»
                                -- Minotaur Engine Module
                                { "Russian", "Модуль двигателя Минотавра" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_MECH_ENG3_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. ДВИГАТ. «МИНОТАВРА»
                                -- MINOTAUR ENGINE MODULE
                                { "Russian", "МОД. ДВИГАТЕЛЯ МИНОТАВРА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_MECH_ENG3_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Модуль двигателя «Минотавра»
                                -- Minotaur Engine Module
                                { "Russian", "Модуль двигателя Минотавра" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_MECH_ENG4_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. ДВИГАТ. «МИНОТАВРА»
                                -- MINOTAUR ENGINE MODULE
                                { "Russian", "МОД. ДВИГАТЕЛЯ МИНОТАВРА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_MECH_ENG4_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Модуль двигателя «Минотавра»
                                -- Minotaur Engine Module
                                { "Russian", "Модуль двигателя Минотавра" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_MECH_ENG2_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Знач. улучш. двигателя «Минотавра»
                                { "Russian", "Значительное улучшение двигателя Минотавра" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_MECH_ENG3_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Мощное улучшение двигателя «Минотавра»
                                { "Russian", "Мощное улучшение двигателя Минотавра" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_MECH_ENG4_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поразительно мощное улучшение двигателя «Минотавра»
                                { "Russian", "Поразительно мощное улучшение двигателя Минотавра" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_MECH_ENG2_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;Значительное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;двигатель «Минотавра»&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить: &lt;STELLAR&gt;расход топлива&lt;&gt; или &lt;STELLAR&gt;баки реактивных ускорителей&lt;&gt;.
                                { "Russian", "&lt;TECHNOLOGY&gt;Значительное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;двигателя Минотавра﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;расход топлива&lt;&gt; или &lt;STELLAR&gt;баки реактивных ускорителей﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_MECH_ENG3_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Невероятно мощное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;двигатель «Минотавра»&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить: &lt;STELLAR&gt;расход топлива&lt;&gt; и/или &lt;STELLAR&gt;баки реактивных ускорителей&lt;&gt;.
                                { "Russian", "&lt;SPECIAL&gt;Невероятно мощное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;двигателя Минотавра﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;расход топлива&lt;&gt; и &lt;STELLAR&gt;баки реактивных ускорителей﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_MECH_ENG4_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;COMMODITY&gt;Поразительно мощное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;двигатель «Минотавра»&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить: &lt;STELLAR&gt;расход топлива&lt;&gt; и &lt;STELLAR&gt;баки реактивных ускорителей&lt;&gt;.
                                { "Russian", "&lt;COMMODITY&gt;Поразительно мощное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;двигателя Минотавра﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;расход топлива&lt;&gt; и &lt;STELLAR&gt;баки реактивных ускорителей﻿.&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region Расщепитель Минотавра
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_MECHLAS2_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. РАСЩЕП. «МИНОТАВРА»
                                -- MINOTAUR LASER MODULE
                                { "Russian", "МОДУЛЬ ЛАЗЕРА МИНОТАВРА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_MECHLAS2_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Модуль расщепителя «Минотавра»
                                -- Minotaur Laser Module
                                { "Russian", "Модуль лазера Минотавра" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_MECHLAS3_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. РАСЩЕП. «МИНОТАВРА»
                                -- MINOTAUR LASER MODULE
                                { "Russian", "МОДУЛЬ ЛАЗЕРА МИНОТАВРА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_MECHLAS3_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Модуль расщепителя «Минотавра»
                                -- Minotaur Laser Module
                                { "Russian", "Модуль лазера Минотавра" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_MECHLAS4_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. РАСЩЕП. «МИНОТАВРА»
                                -- MINOTAUR LASER MODULE
                                { "Russian", "МОДУЛЬ ЛАЗЕРА МИНОТАВРА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_MECHLAS4_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Модуль расщепителя «Минотавра»
                                -- Minotaur Laser Module
                                { "Russian", "Модуль лазера Минотавра" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_MECHLAS2_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Знач. улучш. оружия «Минотавра»
                                { "Russian", "Значительное улучшение оружия Минотавра" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_MECHLAS3_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Мощное улучшение оружия «Минотавра»
                                { "Russian", "Мощное улучшение оружия Минотавра" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_MECHLAS4_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поразительно мощное улучшение расщепителя «Минотавра»
                                { "Russian", "Поразительно мощное улучшение оружия Минотавра" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_MECHLAS2_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;Значительное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;расщепитель «Минотавра»&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить: &lt;STELLAR&gt;мощность добычи&lt;&gt; и/или &lt;STELLAR&gt;рассеивание тепла&lt;&gt;.
                                { "Russian", "&lt;TECHNOLOGY&gt;Значительное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;расщепителя Минотавра﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;мощность добычи&lt;&gt; и &lt;STELLAR&gt;рассеивание тепла﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_MECHLAS3_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Невероятно мощное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;расщепитель «Минотавра»&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить: &lt;STELLAR&gt;мощность добычи&lt;&gt; и/или &lt;STELLAR&gt;рассеивание тепла&lt;&gt;.
                                { "Russian", "&lt;SPECIAL&gt;Невероятно мощное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;расщепителя Минотавра﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;мощность добычи&lt;&gt; и &lt;STELLAR&gt;рассеивание тепла﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_MECHLAS4_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;COMMODITY&gt;Поразительно мощное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;расщепитель «Минотавра»&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить: &lt;STELLAR&gt;мощность добычи&lt;&gt; и/или &lt;STELLAR&gt;рассеивание тепла&lt;&gt;.
                                { "Russian", "&lt;COMMODITY&gt;Поразительно мощное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;расщепителя Минотавра﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;мощность добычи&lt;&gt; и &lt;STELLAR&gt;рассеивание тепла﻿.&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region Пушка Минотавра
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MECH_GUN_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПУШКА «МИНОТАВРА»
                                { "Russian", "ПУШКА МИНОТАВРА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MECH_GUN_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Пушка «Минотавра»
                                { "Russian", "Пушка Минотавра" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MECH_GUN_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Пушка, разработанная для &lt;STELLAR&gt;тяжелого гибридного экзокостюма «Минотавр»&lt;&gt;.&#xA;&#xA;Это оружие предназначено для борьбы с живыми организмами и не подходит для добычи ресурсов.
                                { "Russian", "Пушка, разработанная для &lt;STELLAR&gt;тяжелого гибридного экзокостюма Минотавр﻿.&lt;&gt;&#xA;&#xA;Это оружие предназначено для борьбы с живыми организмами и не подходит для добычи ресурсов." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_MECHGUN2_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. ПУШКИ «МИНОТАВРА»
                                -- MINOTAUR CANNON MODULE
                                { "Russian", "МОДУЛЬ ПУШКИ МИНОТАВРА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_MECHGUN2_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Модуль пушки «Минотавра»
                                -- Minotaur Cannon Module
                                { "Russian", "Модуль пушки Минотавра" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_MECHGUN3_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. ПУШКИ «МИНОТАВРА»
                                -- MINOTAUR CANNON MODULE
                                { "Russian", "МОДУЛЬ ПУШКИ МИНОТАВРА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_MECHGUN3_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Модуль пушки «Минотавра»
                                -- Minotaur Cannon Module
                                { "Russian", "Модуль пушки Минотавра" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_MECHGUN4_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. ПУШКИ «МИНОТАВРА»
                                -- MINOTAUR CANNON MODULE
                                { "Russian", "МОДУЛЬ ПУШКИ МИНОТАВРА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_MECHGUN4_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Модуль пушки «Минотавра»
                                -- Minotaur Cannon Module
                                { "Russian", "Модуль пушки Минотавра" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_MECHGUN2_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Знач. улучш. оружия «Минотавра»
                                { "Russian", "Значительное улучшение оружия Минотавра" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_MECHGUN3_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Мощное улучшение оружия «Минотавра»
                                { "Russian", "Мощное улучшение оружия Минотавра" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_MECHGUN4_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поразительно мощное улучшение оружия «Минотавра»
                                { "Russian", "Превосходное улучшение оружия Минотавра" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_MECHGUN2_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;Значительное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;пушка «Минотавра»&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить: &lt;STELLAR&gt;урон&lt;&gt;, &lt;STELLAR&gt;скорострельность&lt;&gt; и &lt;STELLAR&gt;рассеивание тепла&lt;&gt;.
                                { "Russian", "&lt;TECHNOLOGY&gt;Значительное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;пушки Минотавра﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон﻿,&lt;&gt; &lt;STELLAR&gt;скорострельность&lt;&gt; и &lt;STELLAR&gt;рассеивание тепла﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_MECHGUN3_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Невероятно мощное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;пушка «Минотавра»&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить: &lt;STELLAR&gt;урон&lt;&gt;, &lt;STELLAR&gt;скорострельность&lt;&gt; и &lt;STELLAR&gt;рассеивание тепла&lt;&gt;.
                                { "Russian", "&lt;SPECIAL&gt;Невероятно мощное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;пушки Минотавра﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон﻿,&lt;&gt; &lt;STELLAR&gt;скорострельность&lt;&gt; и &lt;STELLAR&gt;рассеивание тепла﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_MECHGUN4_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;COMMODITY&gt;Поразительно мощное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;пушка «Минотавра»&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить: &lt;STELLAR&gt;урон&lt;&gt;, &lt;STELLAR&gt;скорострельность&lt;&gt; и &lt;STELLAR&gt;рассеивание тепла&lt;&gt;.
                                { "Russian", "&lt;COMMODITY&gt;Поразительно мощное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;пушки Минотавра﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон﻿,&lt;&gt; &lt;STELLAR&gt;скорострельность&lt;&gt; и &lt;STELLAR&gt;рассеивание тепла﻿.&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region БЛОК УПРАВЛЕНИЯ СРЕДОЙ
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXOHAZ_ALL_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Эта мощная система нейтрализации окружающей среды подключается напрямую к пилоту, как только тот оказывается в кабине. Система питается от главного привода «Минотавра» и не требует дополнительного источника питания. В зоне подключения может отмечаться небольшая боль.&#xA;&#xA;Делает пилота «Минотавра» неуязвимым к &lt;STELLAR&gt;вредным факторам окружающей среды&lt;&gt;.
                                -- This powerful environmental neutralising system is plugged directly into the pilot as they enter the cockpit. The system is powered via the Minotaur's main engine and requires no additional input. Some minor pain may be noticed around the insertion site.&#xA;&#xA;Renders the Minotaur pilot impervious to &lt;STELLAR&gt;all environmental hazards&lt;&gt;.
                                { "Russian", "Эта мощная система нейтрализации окружающей среды подключается напрямую к пилоту, как только тот оказывается в кабине. Система питается от главного двигателя Минотавра и не требует дополнительного источника питания. В зоне подключения может отмечаться небольшая боль.&#xA;&#xA;Делает пилота Минотавра неуязвимым к &lt;STELLAR&gt;вредным факторам окружающей среды﻿.&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region МЕГАВАТТНЫЙ НАГРЕВАТЕЛЬ
                        -- опечатка вместо TEMPERATURE должно быть TECHNOLOGY
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXOHAZ_COLD_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Устанавливает мощный нагреватель, поддерживающий комфортную температуру в кабине даже в самых холодных условиях.&#xA;&#xA;Полностью предотвращает урон или утечку энергии, когда вездеход находится в &lt;TEMPERATURE&gt;холодной среде&lt;&gt;.
                                -- Installs a powerful heater into the Exocraft, keeping the cabin a habitable temperature even in the most freezing of conditions.&#xA;&#xA;Entirely prevents all damage or energy drain while inside an Exocraft in &lt;TEMPERATURE&gt;freezing environments&lt;&gt;.
                                { "Russian", "Устанавливает мощный нагреватель, поддерживающий комфортную температуру в кабине даже в самых холодных условиях.&#xA;&#xA;Полностью предотвращает урон или утечку энергии, когда вездеход находится в &lt;TECHNOLOGY&gt;холодной среде﻿.&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#endregion
                    }
                },
                { -- LANGUAGE/NMS_LOC7_RUSSIAN.MBIN
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_LOC7_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        --#region Каркасные части Минотавра
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MECH_SENT_L_ARM_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Набор компонентов, снятых с каркасного стража, переделанных для установки в тяжелый гибридный экзокостюм &lt;TECHNOLOGY&gt;«Минотавр»&lt;&gt;.&#xA;&#xA;При установке вместе с &lt;TECHNOLOGY&gt;лазером «Минотавра»&lt;&gt; превращает расщепитель в &lt;STELLAR&gt;мощное боевое улучшение&lt;&gt;, способное наносить большой урон &lt;TECHNOLOGY&gt;оглушенным&lt;&gt; врагам.
                                { "Russian", "Набор компонентов, снятых с каркаса стража, переделанных для установки в тяжелый гибридный экзокостюм &lt;TECHNOLOGY&gt;Минотавр﻿.&lt;&gt;&#xA;&#xA;При установке вместе с &lt;TECHNOLOGY&gt;лазером Минотавра&lt;&gt; превращает расщепитель в &lt;STELLAR&gt;мощное боевое улучшение﻿,&lt;&gt; способное наносить большой урон &lt;TECHNOLOGY&gt;оглушенным&lt;&gt; врагам." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MECH_SENT_R_ARM_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Набор компонентов, снятых с каркасного стража, переделанных для установки в тяжелый гибридный экзокостюм &lt;TECHNOLOGY&gt;«Минотавр»&lt;&gt;.&#xA;&#xA;Эта замена для конечностей также является &lt;STELLAR&gt;отдельной боевой системой&lt;&gt;. Она стреляет высокоскоростными &lt;TECHNOLOGY&gt;оглушающими снарядами&lt;&gt; и прекрасно дополняет основную пушку «Минотавра».&#xA;&#xA;Переключайте режимы оружия, используя &lt;IMG&gt;CYCLEWEAPON&lt;&gt;.
                                { "Russian", "Набор компонентов, снятых с каркаса стража, переделанных для установки в тяжелый гибридный экзокостюм &lt;TECHNOLOGY&gt;Минотавр﻿.&lt;&gt;&#xA;&#xA;Эта замена для конечностей также является &lt;STELLAR&gt;отдельной боевой системой﻿.&lt;&gt; Она стреляет высокоскоростными &lt;TECHNOLOGY&gt;оглушающими снарядами&lt;&gt; и прекрасно дополняет основную пушку Минотавра.&#xA;&#xA;Переключайте режимы оружия, используя &lt;IMG&gt;CYCLEWEAPON&lt;&gt;." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MECH_SENT_LEGS_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Набор компонентов, снятых с каркасного стража, переделанных для установки в тяжелый гибридный экзокостюм &lt;TECHNOLOGY&gt;«Минотавр»&lt;&gt;.&#xA;&#xA;При установке значительно улучшает системы &lt;TECHNOLOGY&gt;двигателя и подвижности&lt;&gt; «Минотавра».
                                { "Russian", "Набор компонентов, снятых с каркаса стража, переделанных для установки в тяжелый гибридный экзокостюм &lt;TECHNOLOGY&gt;Минотавр﻿.&lt;&gt;&#xA;&#xA;При установке значительно &lt;TECHNOLOGY&gt;снижает расход топлива&lt;&gt; и &lt;TECHNOLOGY&gt;улучшает подвижность&lt;&gt; Минотавра." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MECH_SENT_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Замена конечностей «Минотавра»
                                { "Russian", "Замена конечностей Минотавра" },
                            }
                        },
                        --#endregion

                        --#region Нейтронная пушка
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UT_CANNON_DESCRIPTION" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Мощное улучшение для &lt;TECHNOLOGY&gt;нейтронной пушки&lt;&gt;. Дополнительные компрессоры резонанса позволяют значительно повысить объем энергии, направляемой в ядро пушки, что серьезно увеличивает ее мощность.&#xA;&#xA;При установке позволяет полностью заряженной нейтронной пушке выпускать &lt;STELLAR&gt;дополнительные снаряды&lt;&gt; с &lt;STELLAR&gt;большей скоростью&lt;&gt;.
                                { "Russian", "Мощное улучшение &lt;TECHNOLOGY&gt;нейтронной пушки﻿.&lt;&gt; Дополнительные компрессоры резонанса позволяют значительно повысить объем энергии, направляемой в ядро пушки, что серьезно увеличивает ее мощность.&#xA;&#xA;При установке позволяет полностью заряженной нейтронной пушке выпускать &lt;STELLAR&gt;дополнительные снаряды&lt;&gt; с &lt;STELLAR&gt;большей скоростью﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_CANNON1_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TRADEABLE&gt;Среднее&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;нейтронная пушка&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;скорость снарядов&lt;&gt;, &lt;STELLAR&gt;время зарядки&lt;&gt;, &lt;STELLAR&gt;наносимый урон&lt;&gt; и &lt;STELLAR&gt;количество снарядов&lt;&gt;.
                                { "Russian", "&lt;TRADEABLE&gt;Среднее&lt;&gt; улучшение &lt;TECHNOLOGY&gt;нейтронной пушки﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;скорость снарядов﻿,&lt;&gt; &lt;STELLAR&gt;время зарядки﻿,&lt;&gt; &lt;STELLAR&gt;наносимый урон&lt;&gt; и &lt;STELLAR&gt;количество снарядов﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_CANNON2_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;Значительное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;нейтронная пушка&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;скорость снарядов&lt;&gt;, &lt;STELLAR&gt;время зарядки&lt;&gt;, &lt;STELLAR&gt;наносимый урон&lt;&gt; и &lt;STELLAR&gt;количество снарядов&lt;&gt;.
                                { "Russian", "&lt;TECHNOLOGY&gt;Значительное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;нейтронной пушки﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;скорость снарядов﻿,&lt;&gt; &lt;STELLAR&gt;время зарядки﻿,&lt;&gt; &lt;STELLAR&gt;наносимый урон&lt;&gt; и &lt;STELLAR&gt;количество снарядов﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_CANNON3_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Невероятно мощное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;нейтронная пушка&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;скорость снарядов&lt;&gt;, &lt;STELLAR&gt;время зарядки&lt;&gt;, &lt;STELLAR&gt;наносимый урон&lt;&gt; и &lt;STELLAR&gt;количество снарядов&lt;&gt;.
                                { "Russian", "&lt;SPECIAL&gt;Невероятно мощное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;нейтронной пушки﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;скорость снарядов﻿,&lt;&gt; &lt;STELLAR&gt;время зарядки﻿,&lt;&gt; &lt;STELLAR&gt;наносимый урон&lt;&gt; и &lt;STELLAR&gt;количество снарядов﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_CANNON4_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;COMMODITY&gt;Поразительно мощное&lt;&gt; улучшение: &lt;TECHNOLOGY&gt;нейтронная пушка&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;скорость снарядов&lt;&gt;, &lt;STELLAR&gt;время зарядки&lt;&gt;, &lt;STELLAR&gt;наносимый урон&lt;&gt; и &lt;STELLAR&gt;количество снарядов&lt;&gt;.
                                { "Russian", "&lt;COMMODITY&gt;Поразительно мощное&lt;&gt; улучшение &lt;TECHNOLOGY&gt;нейтронной пушки﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;скорость снарядов﻿,&lt;&gt; &lt;STELLAR&gt;время зарядки﻿,&lt;&gt; &lt;STELLAR&gt;наносимый урон&lt;&gt; и &lt;STELLAR&gt;количество снарядов﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_CANNON_X_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Нелегальная модификация&lt;&gt;: &lt;TECHNOLOGY&gt;нейтронная пушка&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;скорость снарядов&lt;&gt;, &lt;STELLAR&gt;время зарядки&lt;&gt;, &lt;STELLAR&gt;наносимый урон&lt;&gt; и &lt;STELLAR&gt;количество снарядов&lt;&gt;.
                                { "Russian", "&lt;SPECIAL&gt;Нелегальная модификация&lt;&gt; &lt;TECHNOLOGY&gt;нейтронной пушки﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;скорость снарядов﻿,&lt;&gt; &lt;STELLAR&gt;время зарядки﻿,&lt;&gt; &lt;STELLAR&gt;наносимый урон&lt;&gt; и &lt;STELLAR&gt;количество снарядов﻿.&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region ИИ-ПИЛОТ «МИНОТАВРА»
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MECH_AUTOPILOT_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ИИ-ПИЛОТ «МИНОТАВРА»
                                { "Russian", "ИИ-ПИЛОТ МИНОТАВРА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MECH_AUTOPILOT_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ИИ-пилот «Минотавра»
                                { "Russian", "ИИ-пилот Минотавра" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MECH_AUTOPILOT_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Полуавтономный &lt;TECHNOLOGY&gt;модуль автопилота&lt;&gt; для тяжелого гибридного экзокостюма «Минотавр». После установки позволяет «Минотавру» &lt;STELLAR&gt;передвигаться по поверхности планет&lt;&gt; и участвовать в &lt;STELLAR&gt;бою&lt;&gt; или операциях &lt;STELLAR&gt;добычи&lt;&gt; для поддержки основного оператора.&#xA;&#xA;ИИ-пилот всегда передает управление основному оператору, когда тот садится в кабину.&#xA;&#xA;Программы пилотирования крайне специализированы. Модуль не способен устанавливать эмоциональные связи и независимо управлять «Минотавром».
                                -- A semi-autonomous &lt;TECHNOLOGY&gt;artificial pilot plugin&lt;&gt; for the Minotaur Heavy Exocraft Hybrid. Installation allows the Minotaur to &lt;STELLAR&gt;traverse planets itself&lt;&gt; and engage in &lt;STELLAR&gt;combat&lt;&gt; or &lt;STELLAR&gt;mining&lt;&gt; activities to support its primary operator.&#xA;&#xA;The AI pilot will always cede control to the primary operator when they enter the cockpit.&#xA;&#xA;Piloting routines are highly localised. It is incapable of developing emotional bonds nor exercising independent control of the Minotaur.
                                { "Russian", "Полуавтономный &lt;TECHNOLOGY&gt;модуль автопилота&lt;&gt; для тяжелого гибридного экзокостюма Минотавр. После установки позволяет Минотавру &lt;STELLAR&gt;передвигаться по поверхности планет&lt;&gt; и участвовать в &lt;STELLAR&gt;боевых&lt;&gt; или &lt;STELLAR&gt;горнодобывающих&lt;&gt; операциях.&#xA;&#xA;ИИ-пилот всегда передает управление основному оператору, когда тот садится в кабину.&#xA;&#xA;Программы пилотирования крайне специализированы. Модуль не способен устанавливать эмоциональные связи и независимо управлять Минотавром." },
                            }
                        },
                        --#endregion

                        --#region КАРКАСНЫЙ КОРПУС
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MECH_SENT_HEAD_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Набор компонентов, снятых с каркасного стража, переделанных для установки в тяжелый гибридный экзокостюм &lt;TECHNOLOGY&gt;«Минотавр»&lt;&gt;.&#xA;&#xA;Работает аналогично полуавтономному &lt;TECHNOLOGY&gt;модулю пилотирования с ИИ&lt;&gt;. После установки позволяет «Минотавру» &lt;STELLAR&gt;передвигаться по поверхности планет&lt;&gt; и участвовать в &lt;STELLAR&gt;бою&lt;&gt; или операциях &lt;STELLAR&gt;добычи&lt;&gt; для поддержки основного оператора.&#xA;&#xA;ИИ-пилот всегда передает управление основному оператору, когда тот садится в кабину.
                                -- A collection of salvaged components from a Sentinel Hardframe, reconditioned to fit the &lt;TECHNOLOGY&gt;Minotaur&lt;&gt; Heavy Exocraft Hybrid.&#xA;&#xA;Will function as a semi-autonomous &lt;TECHNOLOGY&gt;artificial pilot plugin&lt;&gt;. Installation allows the Minotaur to &lt;STELLAR&gt;traverse planets itself&lt;&gt; and engage in &lt;STELLAR&gt;combat&lt;&gt; or &lt;STELLAR&gt;mining&lt;&gt; activities to support its primary operator.&#xA;&#xA;The AI pilot will always cede control to the primary operator when they enter the cockpit.
                                { "Russian", "Набор компонентов, снятых с каркаса стража, переделанных для установки в тяжелый гибридный экзокостюм &lt;TECHNOLOGY&gt;Минотавр﻿.&lt;&gt;&#xA;&#xA;Работает аналогично полуавтономному &lt;TECHNOLOGY&gt;модулю пилотирования с ИИ﻿.&lt;&gt; После установки позволяет Минотавру &lt;STELLAR&gt;передвигаться по поверхности планет&lt;&gt; и участвовать в &lt;STELLAR&gt;боевых&lt;&gt; или &lt;STELLAR&gt;горнодобывающих&lt;&gt; операциях.&#xA;&#xA;ИИ-пилот всегда передает управление основному оператору, когда тот садится в кабину." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MECH_SENT_HEAD_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Замена ядра «Минотавра»
                                { "Russian", "Замена ядра Минотавра" },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ALIEN_INV_TOKEN_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Дополнительный модуль хранения&lt;&gt; для &lt;TECHNOLOGY&gt;разумных&lt;&gt; звездолетов. После вылупления симбионт внутри этого мешочка сращивается с кораблем, позволяя использовать свои обширные внутренности в обмен на питательные вещества хозяина.&#xA;&#xA;Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы спровоцировать рост и начать &lt;VAL_ON&gt;процесс вылупления&lt;&gt;.
                                { "Russian", "&lt;SPECIAL&gt;Дополнительный модуль хранения&lt;&gt; для &lt;TECHNOLOGY&gt;разумных&lt;&gt; звездолётов. После вылупления симбионт внутри этого мешочка сращивается с кораблем, позволяя использовать свои обширные внутренности в обмен на питательные вещества хозяина.&#xA;&#xA;Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы спровоцировать рост и начать &lt;VAL_ON&gt;процесс вылупления&lt;&gt;." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ALIEN_ALLTECHBOX_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Подрагивающий мешок с генетической жидкостью, предназначенный для создания новых &lt;TECHNOLOGY&gt;биологических технологий&lt;&gt; для &lt;TECHNOLOGY&gt;разумного звездолета&lt;&gt;.&#xA;&#xA;Эмбрион вырастет и станет &lt;TECHNOLOGY&gt;биотехнологическим улучшением&lt;&gt;. &lt;STELLAR&gt;Начните биогенез&lt;&gt; с помощью &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;.
                                { "Russian", "Подрагивающий мешок с генетической жидкостью, предназначенный для создания новых &lt;TECHNOLOGY&gt;биологических технологий&lt;&gt; для &lt;TECHNOLOGY&gt;разумного звездолёта&lt;&gt;.&#xA;&#xA;Эмбрион вырастет и станет &lt;TECHNOLOGY&gt;биотехнологическим улучшением&lt;&gt;. &lt;STELLAR&gt;Начните биогенез&lt;&gt; с помощью &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SHIP_WEAPONS_SHIELDLEECH" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Щит перезаряжается при попадании
                                -- Shield recharge on impact
                                { "Russian", "Перезарядка щита при попадании" },
                            }
                        },
                    }
                },
                { -- LANGUAGE/NMS_LOC8_RUSSIAN.MBIN
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_LOC8_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WATER_LANDER_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Система посадки на воду
                                -- Aquatic Landing System
                                { "Russian", "Система приводнения" },
                            }
                        },

                        --#region ПЕРЕСТРОЕННЫЙ МОДУЛЬ ЭКЗОКОСТЮМА
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_ROBOSUIT_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПЕРЕСТРОЕННЫЙ МОДУЛЬ ЭКЗОКОСТЮМА
                                -- REBUILT EXOSUIT MODULE
                                { "Russian", "ВОССТАНОВЛЕННЫЙ МОДУЛЬ ЭКЗОКОСТЮМА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_ROBOSUIT_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Перестроенный модуль экзокостюма
                                -- Rebuilt Exosuit Module
                                { "Russian", "Восстановленный модуль экзокостюма" },
                            }
                        },
                        -- какого еще обновления? =) да, мы все ждем обновлений
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_ROBOSUIT_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Компоненты извлеченного обновления
                                -- Salvaged Upgrade Components
                                { "Russian", "Реконструированное улучшение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_ROBOSUIT_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Извлеченное&lt;&gt; обновление для &lt;TECHNOLOGY&gt;экзокостюма&lt;&gt;. Начните &lt;VAL_ON&gt;процесс установки&lt;&gt; обновления с помощью &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;.&#xA;&#xA;Этот созданный &lt;TRANS_BUI&gt;аутофагами&lt;&gt; пакет технологий является продуктом инженерной импровизации экстра-класса. Эффект, который эта уникальная технология окажет на возможности экзокостюма, сложно предугадать до установки.
                                -- A &lt;STELLAR&gt;salvaged&lt;&gt; upgrade for the &lt;TECHNOLOGY&gt;Exosuit&lt;&gt;. Use &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt; to begin upgrade &lt;VAL_ON&gt;installation process&lt;&gt;.&#xA;&#xA;Constructed by the &lt;TRANS_BUI&gt;Autophage&lt;&gt;, this technology package is the result of a high degree of engineering improvisation. As a one-of-a-kind piece of repurposed technology, its exact effect upon suit performance is hard to determine prior to installation within the Exosuit's systems.
                                { "Russian", "&lt;STELLAR&gt;Восстановленное&lt;&gt; улучшение для &lt;TECHNOLOGY&gt;экзокостюма﻿.&lt;&gt; Начните &lt;VAL_ON&gt;процесс установки&lt;&gt; обновления с помощью &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;.&#xA;&#xA;Этот созданный &lt;TRANS_BUI&gt;аутофагами&lt;&gt; пакет технологий является продуктом инженерной импровизации экстра-класса. Эффект, который эта уникальная технология окажет на возможности экзокостюма, сложно предугадать до установки." },
                            }
                        },
                        --#endregion

                        --#region Минотавр-Ликвидатор
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MECH_ARMY_HEAD_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Улучшение тяжелого гибридного экзокостюма &lt;TECHNOLOGY&gt;«Минотавр»&lt;&gt;. «Ликвидатор» — это новейшая тяжелая боевая единица, созданная для работы в сложнейших условиях.&#xA;&#xA;Работает аналогично полуавтономному &lt;TECHNOLOGY&gt;модулю пилотирования с ИИ&lt;&gt;. После установки позволяет «Минотавру» &lt;STELLAR&gt;передвигаться по поверхности планет&lt;&gt; и участвовать в &lt;STELLAR&gt;бою&lt;&gt; или операциях &lt;STELLAR&gt;добычи&lt;&gt; для поддержки основного оператора.&#xA;&#xA;ИИ-пилот всегда передает управление основному оператору, когда тот садится в кабину.
                                { "Russian", "Улучшение тяжелого гибридного экзокостюма &lt;TECHNOLOGY&gt;Минотавр﻿.&lt;&gt; «Ликвидатор» — это новейшая тяжелая боевая единица, созданная для работы в сложнейших условиях.&#xA;&#xA;Работает аналогично полуавтономному &lt;TECHNOLOGY&gt;модулю пилотирования с ИИ﻿.&lt;&gt; После установки позволяет Минотавру &lt;STELLAR&gt;передвигаться по поверхности планет&lt;&gt; и участвовать в &lt;STELLAR&gt;боевых&lt;&gt; или &lt;STELLAR&gt;горнодобывающих&lt;&gt; операциях.&#xA;&#xA;ИИ-пилот всегда передает управление основному оператору, когда тот садится в кабину." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MECH_ARMY_L_ARM_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Улучшение тяжелого гибридного экзокостюма &lt;TECHNOLOGY&gt;«Минотавр»&lt;&gt;. «Ликвидатор» — это новейшая тяжелая боевая единица, созданная для работы в сложнейших условиях.&#xA;&#xA;Эта замена для конечностей также является &lt;STELLAR&gt;отдельной боевой системой&lt;&gt;. Она стреляет высокоскоростными &lt;TECHNOLOGY&gt;оглушающими снарядами&lt;&gt; и прекрасно подходит, чтобы держать врагов на одном месте и вступать в ближний бой.
                                { "Russian", "Улучшение тяжелого гибридного экзокостюма &lt;TECHNOLOGY&gt;Минотавр﻿.&lt;&gt; «Ликвидатор» — это новейшая тяжелая боевая единица, созданная для работы в сложнейших условиях.&#xA;&#xA;Эта замена для конечностей также является &lt;STELLAR&gt;отдельной боевой системой﻿.&lt;&gt; Она стреляет высокоскоростными &lt;TECHNOLOGY&gt;оглушающими снарядами&lt;&gt; и прекрасно подходит, чтобы держать врагов на одном месте и вступать в ближний бой." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MECH_ARMY_R_ARM_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Улучшение тяжелого гибридного экзокостюма &lt;TECHNOLOGY&gt;«Минотавр»&lt;&gt;. «Ликвидатор» — это новейшая тяжелая боевая единица, созданная для работы в сложнейших условиях.&#xA;&#xA;Эта замена для конечностей также является &lt;STELLAR&gt;отдельной боевой системой&lt;&gt;, а именно &lt;TECHNOLOGY&gt;огнеметом&lt;&gt;, способным наносить огромный урон на малой дистанции.&#xA;&#xA;Переключайте доступные режимы оружия с помощью &lt;IMG&gt;CYCLEWEAPON&lt;&gt;.
                                -- An upgrade to the &lt;TECHNOLOGY&gt;Minotaur&lt;&gt; Heavy Exocraft Hybrid, the Liquidator is a cutting-edge heavy-duty combat unit, designed to operate in the harshest of environments.&#xA;&#xA;This limb override also functions as its own &lt;STELLAR&gt;dedicated combat system&lt;&gt; - a &lt;TECHNOLOGY&gt;flamethrower&lt;&gt; for extreme damage at close range.&#xA;&#xA;Use &lt;IMG&gt;CYCLEWEAPON&lt;&gt; to cycle available weapon modes.
                                { "Russian", "Улучшение тяжелого гибридного экзокостюма &lt;TECHNOLOGY&gt;Минотавр﻿.&lt;&gt; «Ликвидатор» — это новейшая тяжелая боевая единица, созданная для работы в сложнейших условиях.&#xA;&#xA;Эта замена для конечностей также является &lt;STELLAR&gt;отдельной боевой системой﻿,&lt;&gt; а именно &lt;TECHNOLOGY&gt;огнемётом﻿,&lt;&gt; способным наносить огромный урон на малой дистанции.&#xA;&#xA;Переключайте доступные режимы оружия с помощью &lt;IMG&gt;CYCLEWEAPON&lt;&gt;." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MECH_ARMY_LEGS_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Улучшение тяжелого гибридного экзокостюма &lt;TECHNOLOGY&gt;«Минотавр»&lt;&gt;. «Ликвидатор» — это новейшая тяжелая боевая единица, созданная для работы в сложнейших условиях.&#xA;&#xA;Модуль значительно улучшает &lt;TECHNOLOGY&gt;двигатель и мобильность&lt;&gt; «Минотавра».
                                -- An upgrade to the &lt;TECHNOLOGY&gt;Minotaur&lt;&gt; Heavy Exocraft Hybrid, the Liquidator is a cutting-edge heavy-duty combat unit, designed to operate in the harshest of environments.&#xA;&#xA;Installation will significantly improve the Minotaur's &lt;TECHNOLOGY&gt;engine and mobility&lt;&gt; systems.
                                { "Russian", "Улучшение тяжелого гибридного экзокостюма &lt;TECHNOLOGY&gt;Минотавр﻿.&lt;&gt; «Ликвидатор» — это новейшая тяжелая боевая единица, созданная для работы в сложнейших условиях.&#xA;&#xA;Модуль значительно &lt;TECHNOLOGY&gt;снижает расход топлива&lt;&gt; и &lt;TECHNOLOGY&gt;улучшает мобильность&lt;&gt; Минотавра." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MECH_ARMY_HEAD_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Замена ядра «Минотавра»
                                { "Russian", "Замена ядра Минотавра" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MECH_ARMY_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Замена конечностей «Минотавра»
                                { "Russian", "Замена конечностей Минотавра" },
                            }
                        },
                        --#endregion

                        --#region Огнеметы Минотавра
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MECH_FLAME_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Огнемет «Минотавра»
                                { "Russian", "Огнемёт Минотавра" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MECH_FLAME_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Огнемет&lt;&gt;, разработанный для &lt;TECHNOLOGY&gt;тяжелого гибридного экзокостюма «Минотавр»&lt;&gt;. Наносит огромный урон на ближней дистанции.&#xA;&#xA;Переключайте режимы оружия с помощью &lt;IMG&gt;CYCLEWEAPON&lt;&gt;.
                                { "Russian", "&lt;STELLAR&gt;Огнемёт﻿,&lt;&gt; разработанный для &lt;TECHNOLOGY&gt;тяжелого гибридного экзокостюма Минотавр﻿.&lt;&gt; Наносит огромный урон на ближней дистанции.&#xA;&#xA;Переключайте режимы оружия с помощью &lt;IMG&gt;CYCLEWEAPON&lt;&gt;." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MECH_FLAME_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Зажигательное оружие «Минотавра»
                                { "Russian", "Зажигательное оружие Минотавра" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_MECHFLAME2_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ОГНЕМЕТНЫЙ МОДУЛЬ «МИНОТАВРА»
                                -- MINOTAUR FLAMETHROWER MODULE
                                { "Russian", "МОД. ОГНЕМЁТА МИНОТАВРА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_MECHFLAME2_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Огнеметный модуль «Минотавра»
                                -- Minotaur Flamethrower Module
                                { "Russian", "Модуль огнемёта Минотавра" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_MECHFLAME3_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ОГНЕМЕТНЫЙ МОДУЛЬ «МИНОТАВРА»
                                -- MINOTAUR FLAMETHROWER MODULE
                                { "Russian", "МОД. ОГНЕМЁТА МИНОТАВРА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_MECHFLAME3_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Огнеметный модуль «Минотавра»
                                -- Minotaur Flamethrower Module
                                { "Russian", "Модуль огнемёта Минотавра" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_MECHFLAME4_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ОГНЕМЕТНЫЙ МОДУЛЬ «МИНОТАВРА»
                                -- MINOTAUR FLAMETHROWER MODULE
                                { "Russian", "МОД. ОГНЕМЁТА МИНОТАВРА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_MECHFLAME4_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Огнеметный модуль «Минотавра»
                                -- Minotaur Flamethrower Module
                                { "Russian", "Модуль огнемёта Минотавра" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_MECHFLAME2_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Значительное улучшение оружия «Минотавра»
                                { "Russian", "Значительное улучшение оружия Минотавра" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_MECHFLAME3_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Мощное улучшение оружия «Минотавра»
                                { "Russian", "Мощное улучшение оружия Минотавра" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_MECHFLAME4_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поразительно мощное улучшение оружия «Минотавра»
                                { "Russian", "Превосходное улучшение оружия Минотавра" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_MECHFLAME2_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;Значительное&lt;&gt; улучшение: все &lt;TECHNOLOGY&gt;огнеметы «Минотавра»&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон&lt;&gt;, &lt;STELLAR&gt;время горения&lt;&gt; и &lt;STELLAR&gt;топливную эффективность&lt;&gt;.
                                -- A &lt;TECHNOLOGY&gt;significant&lt;&gt; upgrade for all &lt;TECHNOLOGY&gt;Minotaur Flamethrower Units&lt;&gt;. Use &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt; to begin upgrade &lt;VAL_ON&gt;installation process&lt;&gt;.&#xA;&#xA;The module is flexible, and exact upgrade statistics are &lt;SPECIAL&gt;unknown&lt;&gt; until installation is complete.&#xA;&#xA;Potential improvements include: &lt;STELLAR&gt;damage output&lt;&gt;, &lt;STELLAR&gt;burn time&lt;&gt; and &lt;STELLAR&gt;fuel efficiency&lt;&gt;.
                                { "Russian", "&lt;TECHNOLOGY&gt;Значительное&lt;&gt; улучшение всех &lt;TECHNOLOGY&gt;огнемётов Минотавра﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон﻿,&lt;&gt; &lt;STELLAR&gt;время горения&lt;&gt; и &lt;STELLAR&gt;топливную эффективность﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_MECHFLAME3_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Невероятно мощное&lt;&gt; улучшение: все &lt;TECHNOLOGY&gt;огнеметы «Минотавра»&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон&lt;&gt;, &lt;STELLAR&gt;время горения&lt;&gt; и &lt;STELLAR&gt;топливную эффективность&lt;&gt;.
                                -- An &lt;SPECIAL&gt;extremely powerful&lt;&gt; upgrade for all &lt;TECHNOLOGY&gt;Minotaur Flamethrower Units&lt;&gt;. Use &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt; to begin upgrade &lt;VAL_ON&gt;installation process&lt;&gt;.&#xA;&#xA;The module is flexible, and exact upgrade statistics are &lt;SPECIAL&gt;unknown&lt;&gt; until installation is complete.&#xA;&#xA;Potential improvements include: &lt;STELLAR&gt;damage output&lt;&gt;, &lt;STELLAR&gt;burn time&lt;&gt; and &lt;STELLAR&gt;fuel efficiency&lt;&gt;.
                                { "Russian", "&lt;SPECIAL&gt;Невероятно мощное&lt;&gt; улучшение всех &lt;TECHNOLOGY&gt;огнемётов Минотавра﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон﻿,&lt;&gt; &lt;STELLAR&gt;время горения&lt;&gt; и &lt;STELLAR&gt;топливную эффективность﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_MECHFLAME4_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;COMMODITY&gt;Поразительно мощное&lt;&gt; улучшение: все &lt;TECHNOLOGY&gt;огнеметы «Минотавра»&lt;&gt;. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон&lt;&gt;, &lt;STELLAR&gt;время горения&lt;&gt; и &lt;STELLAR&gt;топливную эффективность&lt;&gt;.
                                -- A &lt;COMMODITY&gt;supremely powerful&lt;&gt; upgrade for all &lt;TECHNOLOGY&gt;Minotaur Flamethrower Units&lt;&gt;. Use &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt; to begin upgrade &lt;VAL_ON&gt;installation process&lt;&gt;.&#xA;&#xA;The module is flexible, and exact upgrade statistics are &lt;SPECIAL&gt;unknown&lt;&gt; until installation is complete.&#xA;&#xA;Potential improvements include: &lt;STELLAR&gt;damage output&lt;&gt;, &lt;STELLAR&gt;burn time&lt;&gt; and &lt;STELLAR&gt;fuel efficiency&lt;&gt;.
                                { "Russian", "&lt;COMMODITY&gt;Поразительно мощное&lt;&gt; улучшение всех &lt;TECHNOLOGY&gt;огнемётов Минотавра﻿.&lt;&gt; Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;VAL_ON&gt;установку&lt;&gt; улучшения.&#xA;&#xA;Улучшение модуля выбирается случайно, его конкретные параметры &lt;SPECIAL&gt;нельзя узнать&lt;&gt; до завершения установки.&#xA;&#xA;Может улучшить &lt;STELLAR&gt;урон﻿,&lt;&gt; &lt;STELLAR&gt;время горения&lt;&gt; и &lt;STELLAR&gt;топливную эффективность﻿.&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region Подкомпонент звездолета: ядро реактора
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SHIP_CORE_C_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Подкомпонент звездолета: &lt;STELLAR&gt;ядро реактора&lt;&gt;. Базовая силовая установка, подходящая для обеспечения энергией звездолета &lt;TRADEABLE&gt;класса «C»&lt;&gt;.&#xA;&#xA;Добыть компоненты звездолета можно, разбирая имеющиеся корабли с помощью блока &lt;TECHNOLOGY&gt;оснащения звездолета&lt;&gt; на борту любой космической станции. Воспользуйтесь &lt;TECHNOLOGY&gt;фабрикатором звездолетов&lt;&gt;, чтобы спроектировать и собрать новый звездолет.
                                -- A starship subcomponent - the &lt;STELLAR&gt;reactor core&lt;&gt;. The basic generator unit is capable of powering a &lt;TRADEABLE&gt;C-Class&lt;&gt; starship.&#xA;&#xA;Acquire starship components by breaking down existing ships at the &lt;TECHNOLOGY&gt;Starship Outfitting&lt;&gt; unit aboard any space station. Visit the &lt;TECHNOLOGY&gt;Starship Fabricator&lt;&gt; to design and assemble a new vessel.
                                { "Russian", "&lt;STELLAR&gt;Ядро реактора&lt;&gt; — подкомпонент звездолёта. Базовая силовая установка, подходящая для обеспечения энергией звездолёта &lt;TRADEABLE&gt;C-класса﻿.&lt;&gt;&#xA;&#xA;Добыть компоненты звездолёта можно, разбирая имеющиеся корабли с помощью терминала &lt;TECHNOLOGY&gt;оснащения звездолёта&lt;&gt; на космической станции. Воспользуйтесь &lt;TECHNOLOGY&gt;фабрикатором звездолётов﻿,&lt;&gt; чтобы спроектировать и собрать новый звездолёт." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SHIP_CORE_B_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Подкомпонент звездолета: &lt;STELLAR&gt;ядро реактора&lt;&gt;. Улучшенная силовая установка, подходящая для обеспечения энергией звездолета &lt;TECHNOLOGY&gt;класса «B»&lt;&gt;.&#xA;&#xA;Добыть компоненты звездолета можно, разбирая имеющиеся корабли с помощью блока &lt;TECHNOLOGY&gt;оснащения звездолета&lt;&gt; на борту любой космической станции. Воспользуйтесь &lt;TECHNOLOGY&gt;фабрикатором звездолетов&lt;&gt;, чтобы спроектировать и собрать новый звездолет.
                                { "Russian", "&lt;STELLAR&gt;Ядро реактора&lt;&gt; — подкомпонент звездолёта. Улучшенная силовая установка, подходящая для обеспечения энергией звездолёта &lt;TECHNOLOGY&gt;B-класса﻿.&lt;&gt;&#xA;&#xA;Добыть компоненты звездолёта можно, разбирая имеющиеся корабли с помощью терминала &lt;TECHNOLOGY&gt;оснащения звездолёта&lt;&gt; на космической станции. Воспользуйтесь &lt;TECHNOLOGY&gt;фабрикатором звездолётов﻿,&lt;&gt; чтобы спроектировать и собрать новый звездолёт." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SHIP_CORE_A_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Подкомпонент звездолета: &lt;STELLAR&gt;ядро реактора&lt;&gt;. Продвинутая силовая установка, подходящая для обеспечения энергией звездолета &lt;SPECIAL&gt;класса «A»&lt;&gt;.&#xA;&#xA;Добыть компоненты звездолета можно, разбирая имеющиеся корабли с помощью блока &lt;TECHNOLOGY&gt;оснащения звездолета&lt;&gt; на борту любой космической станции. Воспользуйтесь &lt;TECHNOLOGY&gt;фабрикатором звездолетов&lt;&gt;, чтобы спроектировать и собрать новый звездолет.
                                { "Russian", "&lt;STELLAR&gt;Ядро реактора&lt;&gt; — подкомпонент звездолёта. Продвинутая силовая установка, подходящая для обеспечения энергией звездолёта &lt;SPECIAL&gt;A-класса﻿.&lt;&gt;&#xA;&#xA;Добыть компоненты звездолёта можно, разбирая имеющиеся корабли с помощью терминала &lt;TECHNOLOGY&gt;оснащения звездолёта&lt;&gt; на космической станции. Воспользуйтесь &lt;TECHNOLOGY&gt;фабрикатором звездолётов﻿,&lt;&gt; чтобы спроектировать и собрать новый звездолёт." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SHIP_CORE_S_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Подкомпонент звездолета: &lt;STELLAR&gt;ядро реактора&lt;&gt;. Превосходная силовая установка, подходящая для обеспечения энергией звездолета &lt;COMMODITY&gt;класса «S»&lt;&gt;.&#xA;&#xA;Добыть компоненты звездолета можно, разбирая имеющиеся корабли с помощью блока &lt;TECHNOLOGY&gt;оснащения звездолета&lt;&gt; на борту любой космической станции. Воспользуйтесь &lt;TECHNOLOGY&gt;фабрикатором звездолетов&lt;&gt;, чтобы спроектировать и собрать новый звездолет.
                                { "Russian", "&lt;STELLAR&gt;Ядро реактора&lt;&gt; — подкомпонент звездолёта. Превосходная силовая установка, подходящая для обеспечения энергией звездолёта &lt;COMMODITY&gt;S-класса﻿.&lt;&gt;&#xA;&#xA;Добыть компоненты звездолёта можно, разбирая имеющиеся корабли с помощью терминала &lt;TECHNOLOGY&gt;оснащения звездолёта&lt;&gt; на космической станции. Воспользуйтесь &lt;TECHNOLOGY&gt;фабрикатором звездолётов﻿,&lt;&gt; чтобы спроектировать и собрать новый звездолёт." },
                            }
                        },
                        --#endregion

                        --#region UI_(FIGHTER|DROPSHIP|SCIENTIFIC|SHUTTLE)_(COCK|ENGI|WING|BOX)_DESC
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FIGHTER_COCK_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Подкомпонент &lt;STELLAR&gt;боевого&lt;&gt; звездолета. Этот модуль определяет стиль и расположение &lt;STELLAR&gt;фюзеляжа&lt;&gt; и &lt;STELLAR&gt;кабины экипажа&lt;&gt; корабля.&#xA;&#xA;Добыть компоненты звездолета можно, разбирая имеющиеся корабли с помощью блока &lt;TECHNOLOGY&gt;оснащения звездолета&lt;&gt; на борту любой космической станции. Воспользуйтесь &lt;TECHNOLOGY&gt;фабрикатором звездолетов&lt;&gt;, чтобы спроектировать и собрать новый звездолет.
                                { "Russian", "Подкомпонент &lt;STELLAR&gt;боевого&lt;&gt; звездолёта. Этот модуль определяет стиль и расположение &lt;STELLAR&gt;фюзеляжа&lt;&gt; и &lt;STELLAR&gt;кабины экипажа&lt;&gt; корабля.&#xA;&#xA;Добыть компоненты звездолёта можно, разбирая имеющиеся корабли с помощью блока &lt;TECHNOLOGY&gt;оснащения звездолёта&lt;&gt; на борту любой космической станции. Воспользуйтесь &lt;TECHNOLOGY&gt;фабрикатором звездолётов&lt;&gt;, чтобы спроектировать и собрать новый звездолёт." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FIGHTER_WING_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Подкомпонент &lt;STELLAR&gt;боевого&lt;&gt; звездолета. Этот модуль определяет стиль и расположение &lt;STELLAR&gt;крыльев&lt;&gt; корабля.&#xA;&#xA;Добыть компоненты звездолета можно, разбирая имеющиеся корабли с помощью блока &lt;TECHNOLOGY&gt;оснащения звездолета&lt;&gt; на борту любой космической станции. Воспользуйтесь &lt;TECHNOLOGY&gt;фабрикатором звездолетов&lt;&gt;, чтобы спроектировать и собрать новый звездолет.
                                { "Russian", "Подкомпонент &lt;STELLAR&gt;боевого&lt;&gt; звездолёта. Этот модуль определяет стиль и расположение &lt;STELLAR&gt;крыльев&lt;&gt; корабля.&#xA;&#xA;Добыть компоненты звездолёта можно, разбирая имеющиеся корабли с помощью блока &lt;TECHNOLOGY&gt;оснащения звездолёта&lt;&gt; на борту любой космической станции. Воспользуйтесь &lt;TECHNOLOGY&gt;фабрикатором звездолётов&lt;&gt;, чтобы спроектировать и собрать новый звездолёт." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FIGHTER_ENGI_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Подкомпонент звездолета-&lt;STELLAR&gt;истребителя&lt;&gt;. Этот модуль определяет стиль и расположение &lt;STELLAR&gt;двигателей&lt;&gt; корабля.&#xA;&#xA;Добыть компоненты звездолета можно, разбирая имеющиеся корабли с помощью блока &lt;TECHNOLOGY&gt;оснащения звездолета&lt;&gt; на борту любой космической станции. Воспользуйтесь &lt;TECHNOLOGY&gt;фабрикатором звездолетов&lt;&gt;, чтобы спроектировать и собрать новый звездолет.
                                { "Russian", "Подкомпонент звездолёта-&lt;STELLAR&gt;истребителя&lt;&gt;. Этот модуль определяет стиль и расположение &lt;STELLAR&gt;двигателей&lt;&gt; корабля.&#xA;&#xA;Добыть компоненты звездолёта можно, разбирая имеющиеся корабли с помощью блока &lt;TECHNOLOGY&gt;оснащения звездолёта&lt;&gt; на борту любой космической станции. Воспользуйтесь &lt;TECHNOLOGY&gt;фабрикатором звездолётов&lt;&gt;, чтобы спроектировать и собрать новый звездолёт." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DROPSHIP_COCK_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Подкомпонент звездолета-&lt;STELLAR&gt;тягача&lt;&gt;. Этот модуль определяет стиль и расположение &lt;STELLAR&gt;кабины экипажа&lt;&gt; корабля.&#xA;&#xA;Добыть компоненты звездолета можно, разбирая имеющиеся корабли с помощью блока &lt;TECHNOLOGY&gt;оснащения звездолета&lt;&gt; на борту любой космической станции. Воспользуйтесь &lt;TECHNOLOGY&gt;фабрикатором звездолетов&lt;&gt;, чтобы спроектировать и собрать новый звездолет.
                                { "Russian", "Подкомпонент звездолёта-&lt;STELLAR&gt;тягача&lt;&gt;. Этот модуль определяет стиль и расположение &lt;STELLAR&gt;кабины экипажа&lt;&gt; корабля.&#xA;&#xA;Добыть компоненты звездолёта можно, разбирая имеющиеся корабли с помощью блока &lt;TECHNOLOGY&gt;оснащения звездолёта&lt;&gt; на борту любой космической станции. Воспользуйтесь &lt;TECHNOLOGY&gt;фабрикатором звездолётов&lt;&gt;, чтобы спроектировать и собрать новый звездолёт." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DROPSHIP_ENGI_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Подкомпонент звездолета-&lt;STELLAR&gt;тягача&lt;&gt;. Этот модуль определяет стиль и расположение &lt;STELLAR&gt;двигателей&lt;&gt; корабля.&#xA;&#xA;Добыть компоненты звездолета можно, разбирая имеющиеся корабли с помощью блока &lt;TECHNOLOGY&gt;оснащения звездолета&lt;&gt; на борту любой космической станции. Воспользуйтесь &lt;TECHNOLOGY&gt;фабрикатором звездолетов&lt;&gt;, чтобы спроектировать и собрать новый звездолет.
                                { "Russian", "Подкомпонент звездолёта-&lt;STELLAR&gt;тягача&lt;&gt;. Этот модуль определяет стиль и расположение &lt;STELLAR&gt;двигателей&lt;&gt; корабля.&#xA;&#xA;Добыть компоненты звездолёта можно, разбирая имеющиеся корабли с помощью блока &lt;TECHNOLOGY&gt;оснащения звездолёта&lt;&gt; на борту любой космической станции. Воспользуйтесь &lt;TECHNOLOGY&gt;фабрикатором звездолётов&lt;&gt;, чтобы спроектировать и собрать новый звездолёт." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DROPSHIP_WING_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Подкомпонент звездолета-&lt;STELLAR&gt;тягача&lt;&gt;. Этот модуль определяет стиль и расположение &lt;STELLAR&gt;крыльев&lt;&gt; корабля.&#xA;&#xA;Добыть компоненты звездолета можно, разбирая имеющиеся корабли с помощью блока &lt;TECHNOLOGY&gt;оснащения звездолета&lt;&gt; на борту любой космической станции. Воспользуйтесь &lt;TECHNOLOGY&gt;фабрикатором звездолетов&lt;&gt;, чтобы спроектировать и собрать новый звездолет.
                                { "Russian", "Подкомпонент звездолёта-&lt;STELLAR&gt;тягача&lt;&gt;. Этот модуль определяет стиль и расположение &lt;STELLAR&gt;крыльев&lt;&gt; корабля.&#xA;&#xA;Добыть компоненты звездолёта можно, разбирая имеющиеся корабли с помощью блока &lt;TECHNOLOGY&gt;оснащения звездолёта&lt;&gt; на борту любой космической станции. Воспользуйтесь &lt;TECHNOLOGY&gt;фабрикатором звездолётов&lt;&gt;, чтобы спроектировать и собрать новый звездолёт." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SCIENTIFIC_COCK_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Подкомпонент звездолета-&lt;STELLAR&gt;исследователя&lt;&gt;. Этот модуль определяет стиль и расположение &lt;STELLAR&gt;кабины экипажа&lt;&gt; корабля.&#xA;&#xA;Добыть компоненты звездолета можно, разбирая имеющиеся корабли с помощью блока &lt;TECHNOLOGY&gt;оснащения звездолета&lt;&gt; на борту любой космической станции. Воспользуйтесь &lt;TECHNOLOGY&gt;фабрикатором звездолетов&lt;&gt;, чтобы спроектировать и собрать новый звездолет.
                                { "Russian", "Подкомпонент звездолёта-&lt;STELLAR&gt;исследователя&lt;&gt;. Этот модуль определяет стиль и расположение &lt;STELLAR&gt;кабины экипажа&lt;&gt; корабля.&#xA;&#xA;Добыть компоненты звездолёта можно, разбирая имеющиеся корабли с помощью блока &lt;TECHNOLOGY&gt;оснащения звездолёта&lt;&gt; на борту любой космической станции. Воспользуйтесь &lt;TECHNOLOGY&gt;фабрикатором звездолётов&lt;&gt;, чтобы спроектировать и собрать новый звездолёт." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SCIENTIFIC_WING_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Подкомпонент звездолета-&lt;STELLAR&gt;исследователя&lt;&gt;. Этот модуль определяет стиль и расположение &lt;STELLAR&gt;крыльев&lt;&gt; корабля.&#xA;&#xA;Добыть компоненты звездолета можно, разбирая имеющиеся корабли с помощью блока &lt;TECHNOLOGY&gt;оснащения звездолета&lt;&gt; на борту любой космической станции. Воспользуйтесь &lt;TECHNOLOGY&gt;фабрикатором звездолетов&lt;&gt;, чтобы спроектировать и собрать новый звездолет.
                                { "Russian", "Подкомпонент звездолёта-&lt;STELLAR&gt;исследователя&lt;&gt;. Этот модуль определяет стиль и расположение &lt;STELLAR&gt;крыльев&lt;&gt; корабля.&#xA;&#xA;Добыть компоненты звездолёта можно, разбирая имеющиеся корабли с помощью блока &lt;TECHNOLOGY&gt;оснащения звездолёта&lt;&gt; на борту любой космической станции. Воспользуйтесь &lt;TECHNOLOGY&gt;фабрикатором звездолётов&lt;&gt;, чтобы спроектировать и собрать новый звездолёт." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SHUTTLE_WING_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Подкомпонент звездолета-&lt;STELLAR&gt;челнока&lt;&gt;. Этот модуль определяет стиль и расположение &lt;STELLAR&gt;крыльев&lt;&gt; корабля.&#xA;&#xA;Добыть компоненты звездолета можно, разбирая имеющиеся корабли с помощью блока &lt;TECHNOLOGY&gt;оснащения звездолета&lt;&gt; на борту любой космической станции. Воспользуйтесь &lt;TECHNOLOGY&gt;фабрикатором звездолетов&lt;&gt;, чтобы спроектировать и собрать новый звездолет.
                                { "Russian", "Подкомпонент звездолёта-&lt;STELLAR&gt;челнока&lt;&gt;. Этот модуль определяет стиль и расположение &lt;STELLAR&gt;крыльев&lt;&gt; корабля.&#xA;&#xA;Добыть компоненты звездолёта можно, разбирая имеющиеся корабли с помощью блока &lt;TECHNOLOGY&gt;оснащения звездолёта&lt;&gt; на борту любой космической станции. Воспользуйтесь &lt;TECHNOLOGY&gt;фабрикатором звездолётов&lt;&gt;, чтобы спроектировать и собрать новый звездолёт." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SHUTTLE_COCK_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Подкомпонент звездолета-&lt;STELLAR&gt;челнока&lt;&gt;. Этот модуль определяет стиль и расположение &lt;STELLAR&gt;кабины экипажа&lt;&gt; корабля.&#xA;&#xA;Добыть компоненты звездолета можно, разбирая имеющиеся корабли с помощью блока &lt;TECHNOLOGY&gt;оснащения звездолета&lt;&gt; на борту любой космической станции. Воспользуйтесь &lt;TECHNOLOGY&gt;фабрикатором звездолетов&lt;&gt;, чтобы спроектировать и собрать новый звездолет.
                                { "Russian", "Подкомпонент звездолёта-&lt;STELLAR&gt;челнока&lt;&gt;. Этот модуль определяет стиль и расположение &lt;STELLAR&gt;кабины экипажа&lt;&gt; корабля.&#xA;&#xA;Добыть компоненты звездолёта можно, разбирая имеющиеся корабли с помощью блока &lt;TECHNOLOGY&gt;оснащения звездолёта&lt;&gt; на борту любой космической станции. Воспользуйтесь &lt;TECHNOLOGY&gt;фабрикатором звездолётов&lt;&gt;, чтобы спроектировать и собрать новый звездолёт." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SHUTTLE_BOX_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Подкомпонент звездолета-&lt;STELLAR&gt;челнока&lt;&gt;. Этот модуль определяет стиль и расположение &lt;STELLAR&gt;корпуса&lt;&gt; корабля.&#xA;&#xA;Добыть компоненты звездолета можно, разбирая имеющиеся корабли с помощью блока &lt;TECHNOLOGY&gt;оснащения звездолета&lt;&gt; на борту любой космической станции. Воспользуйтесь &lt;TECHNOLOGY&gt;фабрикатором звездолетов&lt;&gt;, чтобы спроектировать и собрать новый звездолет.
                                { "Russian", "Подкомпонент звездолёта-&lt;STELLAR&gt;челнока&lt;&gt;. Этот модуль определяет стиль и расположение &lt;STELLAR&gt;корпуса&lt;&gt; корабля.&#xA;&#xA;Добыть компоненты звездолёта можно, разбирая имеющиеся корабли с помощью блока &lt;TECHNOLOGY&gt;оснащения звездолёта&lt;&gt; на борту любой космической станции. Воспользуйтесь &lt;TECHNOLOGY&gt;фабрикатором звездолётов&lt;&gt;, чтобы спроектировать и собрать новый звездолёт." },
                            }
                        },
                        --#endregion

                        --#region UI_SAIL_(SAIL|BODY|WINGS)_DESC
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SAIL_SAIL_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Подкомпонент &lt;STELLAR&gt;солнечного&lt;&gt; звездолета. Этот модуль определяет стиль и расположение основных &lt;STELLAR&gt;солнечных парусов&lt;&gt; корабля.&#xA;&#xA;Добыть компоненты звездолета можно, разбирая имеющиеся корабли с помощью блока &lt;TECHNOLOGY&gt;оснащения звездолета&lt;&gt; на борту любой космической станции. Воспользуйтесь &lt;TECHNOLOGY&gt;фабрикатором звездолетов&lt;&gt;, чтобы спроектировать и собрать новый звездолет.
                                { "Russian", "Подкомпонент &lt;STELLAR&gt;солнечного&lt;&gt; звездолёта. Этот модуль определяет стиль и расположение основных &lt;STELLAR&gt;солнечных парусов&lt;&gt; корабля.&#xA;&#xA;Добыть компоненты звездолёта можно, разбирая имеющиеся корабли с помощью блока &lt;TECHNOLOGY&gt;оснащения звездолёта&lt;&gt; на борту любой космической станции. Воспользуйтесь &lt;TECHNOLOGY&gt;фабрикатором звездолётов&lt;&gt;, чтобы спроектировать и собрать новый звездолёт." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SAIL_BODY_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Подкомпонент &lt;STELLAR&gt;солнечного&lt;&gt; звездолета. Этот модуль определяет стиль и расположение &lt;STELLAR&gt;фюзеляжа&lt;&gt; корабля.&#xA;&#xA;Добыть компоненты звездолета можно, разбирая имеющиеся корабли с помощью блока &lt;TECHNOLOGY&gt;оснащения звездолета&lt;&gt; на борту любой космической станции. Воспользуйтесь &lt;TECHNOLOGY&gt;фабрикатором звездолетов&lt;&gt;, чтобы спроектировать и собрать новый звездолет.
                                { "Russian", "Подкомпонент &lt;STELLAR&gt;солнечного&lt;&gt; звездолёта. Этот модуль определяет стиль и расположение &lt;STELLAR&gt;фюзеляжа&lt;&gt; корабля.&#xA;&#xA;Добыть компоненты звездолёта можно, разбирая имеющиеся корабли с помощью блока &lt;TECHNOLOGY&gt;оснащения звездолёта&lt;&gt; на борту любой космической станции. Воспользуйтесь &lt;TECHNOLOGY&gt;фабрикатором звездолётов&lt;&gt;, чтобы спроектировать и собрать новый звездолёт." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SAIL_WINGS_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Подкомпонент &lt;STELLAR&gt;солнечного&lt;&gt; звездолета. Этот модуль определяет стиль и расположение &lt;STELLAR&gt;крыльев&lt;&gt; корабля.&#xA;&#xA;Добыть компоненты звездолета можно, разбирая имеющиеся корабли с помощью блока &lt;TECHNOLOGY&gt;оснащения звездолета&lt;&gt; на борту любой космической станции. Воспользуйтесь &lt;TECHNOLOGY&gt;фабрикатором звездолетов&lt;&gt;, чтобы спроектировать и собрать новый звездолет.
                                { "Russian", "Подкомпонент &lt;STELLAR&gt;солнечного&lt;&gt; звездолёта. Этот модуль определяет стиль и расположение &lt;STELLAR&gt;крыльев&lt;&gt; корабля.&#xA;&#xA;Добыть компоненты звездолёта можно, разбирая имеющиеся корабли с помощью блока &lt;TECHNOLOGY&gt;оснащения звездолёта&lt;&gt; на борту любой космической станции. Воспользуйтесь &lt;TECHNOLOGY&gt;фабрикатором звездолётов&lt;&gt;, чтобы спроектировать и собрать новый звездолёт." },
                            }
                        },
                        --#endregion

                        --#region UI_EXPD_SHIPMAT_(13|CAMO)_DESC
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPD_SHIPMAT_13_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Эксклюзивная настройка внешнего облика звездолета, придающая &lt;STELLAR&gt;истребителям&lt;&gt; и &lt;STELLAR&gt;тягачам&lt;&gt; уникальный потрепанный вид.&#xA;&#xA;Добыть компоненты звездолета можно, разбирая имеющиеся корабли с помощью блока &lt;TECHNOLOGY&gt;оснащения звездолета&lt;&gt; на борту любой космической станции. Воспользуйтесь &lt;TECHNOLOGY&gt;фабрикатором звездолетов&lt;&gt;, чтобы спроектировать и собрать новый звездолет.
                                { "Russian", "Эксклюзивная настройка внешнего облика звездолёта, придающая &lt;STELLAR&gt;истребителям&lt;&gt; и &lt;STELLAR&gt;тягачам&lt;&gt; уникальный потрепанный вид.&#xA;&#xA;Добыть компоненты звездолёта можно, разбирая имеющиеся корабли с помощью блока &lt;TECHNOLOGY&gt;оснащения звездолёта&lt;&gt; на борту любой космической станции. Воспользуйтесь &lt;TECHNOLOGY&gt;фабрикатором звездолётов&lt;&gt;, чтобы спроектировать и собрать новый звездолёт." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPD_SHIPMAT_CAMO_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Эксклюзивная настройка внешнего облика звездолета, придающая &lt;STELLAR&gt;истребителям&lt;&gt; и &lt;STELLAR&gt;тягачам&lt;&gt; уникальный вид за счет маскирующего покрытия.&#xA;&#xA;Добыть компоненты звездолета можно, разбирая имеющиеся корабли с помощью блока &lt;TECHNOLOGY&gt;оснащения звездолета&lt;&gt; на борту любой космической станции. Воспользуйтесь &lt;TECHNOLOGY&gt;фабрикатором звездолетов&lt;&gt;, чтобы спроектировать и собрать новый звездолет.
                                { "Russian", "Эксклюзивная настройка внешнего облика звездолёта, придающая &lt;STELLAR&gt;истребителям&lt;&gt; и &lt;STELLAR&gt;тягачам&lt;&gt; уникальный вид за счет маскирующего покрытия.&#xA;&#xA;Добыть компоненты звездолёта можно, разбирая имеющиеся корабли с помощью блока &lt;TECHNOLOGY&gt;оснащения звездолёта&lt;&gt; на борту любой космической станции. Воспользуйтесь &lt;TECHNOLOGY&gt;фабрикатором звездолётов&lt;&gt;, чтобы спроектировать и собрать новый звездолёт." },
                            }
                        },
                        --#endregion

                    }
                },
                { -- LANGUAGE/NMS_UPDATE3_RUSSIAN.MBIN
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_UPDATE3_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        -- используется в обучении в прямоугольном меню
                        -- обрезается на "обратно на большие расст"
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SHIP_TELEPORT_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Устройство, которое изменяет модуляцию стандартных сигналов связи корабля, чтобы они &lt;TECHNOLOGY&gt;передавали не только данные, но и материю&lt;&gt;.&#xA;&#xA;Звездолет, оснащенный таким устройством, способен передавать продукцию и вещества на экзокостюм пользователя и обратно на &lt;VAL_ON&gt;большие расстояния&lt;&gt;.
                                -- A device that modulates standard starship communication signals to &lt;TECHNOLOGY&gt;enable the transport of matter&lt;&gt; as well as data.&#xA;&#xA;Starships fitted with such a device can send and receive products and substances to a user's exosuit over a &lt;VAL_ON&gt;long distance&lt;&gt;.
                                { "Russian", "Устройство, которое изменяет модуляцию стандартных сигналов связи корабля, чтобы они &lt;TECHNOLOGY&gt;передавали не только данные, но и материю﻿.&lt;&gt;&#xA;&#xA;Звездолёт, оснащенный этим устройством, способен передавать предметы на экзокостюм пользователя и обратно на &lt;VAL_ON&gt;большие расстояния﻿.&lt;&gt;" },
                            }
                        },

                        --#region Реактивная установка / Ракетомет
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SHIP_ROCKETS_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- РЕАКТИВНАЯ УСТАНОВКА
                                { "Russian", "РАКЕТОМЁТ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SHIP_ROCKETS_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Реактивная установка
                                { "Russian", "Ракетомёт" },
                            }
                        },
                        --#endregion

                        --#region СКАНЕР ЭКОНОМИКИ
                        -- куча опечаток, даже в оригинале "Active the scanner's internal &lt;TECHNOLOGY&gt;Trade Computer&lt;&gt;"
                        -- может Activate?
                        -- далее, кнопка не совпадает, люди запутаются
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SHIPSCAN_ECON_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Улучшение &lt;TECHNOLOGY&gt;галактических сканеров&lt;&gt; корабля. Это устройство позволяет просматривать подробные &lt;STELLAR&gt;экономические данные&lt;&gt; системы без ее посещения. Собранная информация автоматически отображается на &lt;TECHNOLOGY&gt;галактической карте&lt;&gt;.&#xA;&#xA;Запустите &lt;TECHNOLOGY&gt;торговый компьютер&lt;&gt; сканера с помощью &lt;IMG&gt;FE_ALT1&lt;&gt; для поиска прибыльных &lt;STELLAR&gt;событий роста торговли&lt;&gt;.
                                -- An upgrade to the starship's &lt;TECHNOLOGY&gt;galactic-scale sensors&lt;&gt;. This device allows the user to access detailed &lt;STELLAR&gt;economic data&lt;&gt; about a system without having to visit. See collected data automatically on the &lt;TECHNOLOGY&gt;Galaxy Map&lt;&gt;.&#xA;&#xA;Active the scanner's internal &lt;TECHNOLOGY&gt;Trade Computer&lt;&gt; with &lt;IMG&gt;FE_ALT1&lt;&gt; to search for highly-profitable &lt;STELLAR&gt;trading surge events&lt;&gt;.
                                { "Russian", "Улучшение &lt;TECHNOLOGY&gt;галактических сенсоров&lt;&gt; корабля. Устройство даёт доступ к подробным &lt;STELLAR&gt;экономическим данным&lt;&gt; системы без её посещения. Собранная информация автоматически отображается на &lt;TECHNOLOGY&gt;галактической карте﻿.&lt;&gt;&#xA;&#xA;Включите &lt;TECHNOLOGY&gt;торговый компьютер&lt;&gt; с помощью &lt;IMG&gt;SHIPFIRE&lt;&gt; для поиска прибыльных &lt;STELLAR&gt;экономических событий﻿.&lt;&gt;" },
                            }
                        },
                        --#endregion
                    }
                },
                { -- LANGUAGE/NMS_LOC9_RUSSIAN.MBIN
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_LOC9_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        --#region UI_EXOCRAFT_FIRE_NAME
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXOCRAFT_FIRE_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПОВОРОТНЫЙ ОГНЕМЕТ
                                -- MOUNTED FLAMETHROWER
                                { "Russian", "ПОВОРОТНЫЙ ОГНЕМЁТ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXOCRAFT_FIRE_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поворотный огнемет
                                { "Russian", "Поворотный огнемёт" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXOCRAFT_FIRE_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Огнемет&lt;&gt;, разработанный для &lt;TECHNOLOGY&gt;вездехода&lt;&gt;. Наносит огромный урон на ближней дистанции.&#xA;&#xA;Переключайте режимы оружия с помощью &lt;IMG&gt;CYCLEWEAPON&lt;&gt;.
                                -- A mounted &lt;STELLAR&gt;flamethrower&lt;&gt; specifically designed for the &lt;TECHNOLOGY&gt;Exocraft&lt;&gt;. Causes extreme damage at close range.&#xA;&#xA;Use &lt;IMG&gt;CYCLEWEAPON&lt;&gt; to cycle available weapon modes.
                                { "Russian", "&lt;STELLAR&gt;Огнемёт&lt;&gt;, разработанный для &lt;TECHNOLOGY&gt;вездехода﻿.&lt;&gt; Наносит огромный урон на ближней дистанции.&#xA;&#xA;Переключайте режимы оружия с помощью &lt;IMG&gt;CYCLEWEAPON&lt;&gt;." },
                            }
                        },
                        --#endregion

                        --#region UI_FISHLASER_NAME
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FISHLASER_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- РЫБОЛОВНАЯ СНАСТЬ
                                { "Russian", "УДА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FISHLASER_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Рыболовная снасть
                                { "Russian", "Уда" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FISHLASER_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Размещаемое рыболовное устройство
                                -- Deployable Angling Device
                                { "Russian", "Удочка" },
                            }
                        },
                        --#endregion

                        --#region Ржавое улучшение
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UPGRADE_SUB_TRASH" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Ржавое улучшение технологии «%NAME%»
                                -- Rusted %NAME% Upgrade
                                { "Russian", "Ржавое улучшение технологии %NAME%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UPGRADE_DESC_TRASH" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Модификация технологии &lt;TECHNOLOGY&gt;«%NAME%»&lt;&gt;, &lt;FUEL&gt;необратимо поврежденная&lt;&gt; долгим нахождением в воде.
                                -- A modification for the &lt;TECHNOLOGY&gt;%NAME%&lt;&gt; that has been &lt;FUEL&gt;permanently damaged&lt;&gt; by prolonged exposure to water.
                                { "Russian", "Модификация для технологии &lt;TECHNOLOGY&gt;%NAME%﻿.&lt;&gt; &lt;FUEL&gt;Необратимо повреждена&lt;&gt; долгим нахождением в воде." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UPGRADE_1_STAT_SALTY_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- До попадания в воду этот модуль был мощным улучшением (&lt;STELLAR&gt;%STAT1%&lt;&gt;).
                                -- Before its destruction in the water, this module was once a powerful upgrade to &lt;STELLAR&gt;%STAT1%&lt;&gt;.
                                { "Russian", "До попадания в воду этот модуль значительно улучшал параметр &lt;STELLAR&gt;%STAT1%﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UPGRADE_2_STAT_SALTY_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- До попадания в воду этот модуль был мощным улучшением (&lt;STELLAR&gt;%STAT1%&lt;&gt; и &lt;STELLAR&gt;%STAT2%&lt;&gt;).
                                { "Russian", "До попадания в воду этот модуль значительно улучшал параметры &lt;STELLAR&gt;%STAT1%&lt;&gt; и &lt;STELLAR&gt;%STAT2%﻿.&lt;&gt;" },
                            }
                        },
                        -- для длинных параметров (баки реактивного ранца и т.п.) эта строка урезается
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UPGRADE_3_STAT_SALTY_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- До попадания в воду этот модуль был мощным улучшением (&lt;STELLAR&gt;%STAT1%&lt;&gt;, &lt;STELLAR&gt;%STAT2%&lt;&gt; и &lt;STELLAR&gt;%STAT3%&lt;&gt;).
                                { "Russian", "Значительно улучшал параметры &lt;STELLAR&gt;%STAT1%﻿,&lt;&gt; &lt;STELLAR&gt;%STAT2%&lt;&gt; и &lt;STELLAR&gt;%STAT3%﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UPGRADE_4_STAT_SALTY_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- До попадания в воду этот модуль был мощным улучшением (&lt;STELLAR&gt;%STAT1%&lt;&gt;, &lt;STELLAR&gt;%STAT2%&lt;&gt;, &lt;STELLAR&gt;%STAT3%&lt;&gt; и &lt;STELLAR&gt;%STAT4%&lt;&gt;).
                                -- Before its destruction in the water, this module was once a powerful upgrade to &lt;STELLAR&gt;%STAT1%&lt;&gt;, &lt;STELLAR&gt;%STAT2%&lt;&gt;, &lt;STELLAR&gt;%STAT3%&lt;&gt; and &lt;STELLAR&gt;%STAT4%&lt;&gt;.
                                { "Russian", "Значительно улучшал параметры &lt;STELLAR&gt;%STAT1%﻿,&lt;&gt; &lt;STELLAR&gt;%STAT2%﻿,&lt;&gt; &lt;STELLAR&gt;%STAT3%&lt;&gt; и &lt;STELLAR&gt;%STAT4%﻿.&lt;&gt;" },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PRESSURE_SUIT_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Укрепленный барометрический стабилизатор
                                -- Reinforced Barometric Stabiliser
                                { "Russian", "Барометрический стабилизатор" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PRESSURE_SUIT_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Нахождение в средах с экстремально высоким давлением, например, на большой глубине, увеличивает нагрузку на системы &lt;TECHNOLOGY&gt;циркуляции кислорода&lt;&gt; и общую систему жизнеобеспечения экзокостюма.&#xA;&#xA;Установите этот укрепленный герметичный панцирь, чтобы повысить &lt;STELLAR&gt;эффективность&lt;&gt; и &lt;STELLAR&gt;защиту&lt;&gt; при нахождении в средах с высоким давлением.
                                -- Extreme pressure environments - such as deep water - cause elevated stress on the Exosuit's &lt;TECHNOLOGY&gt;oxygen circulation&lt;&gt; and general life support systems.&#xA;&#xA;Installation of this reinforced pressurisation shell increases &lt;STELLAR&gt;efficiency&lt;&gt; and &lt;STELLAR&gt;protection&lt;&gt; while operating in high-pressure environments.
                                { "Russian", "Нахождение в средах с экстремально высоким давлением, например, на большой глубине, увеличивает нагрузку на системы &lt;TECHNOLOGY&gt;циркуляции кислорода&lt;&gt; и жизнеобеспечения экзокостюма.&#xA;&#xA;Установите этот модуль, чтобы повысить &lt;STELLAR&gt;эффективность&lt;&gt; и &lt;STELLAR&gt;защиту&lt;&gt; при нахождении в средах с высоким давлением." },
                            }
                        },
                    }
                },
            }
        }
    }
}
