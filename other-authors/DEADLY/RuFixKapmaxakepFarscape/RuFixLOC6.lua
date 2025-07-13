NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]  = "_RuFixLOC6.pak",
    ["MOD_AUTHOR"]    = "gh0stwizard",
    ["NMS_VERSION"]   = "5.72",
    ["EXML_CREATE"]   = "false",
    ["MODIFICATIONS"] = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                { -- LANGUAGE/NMS_LOC6_RUSSIAN.MBIN
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_LOC6_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CRE_ACTIVE_MOSTLY_DAY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Чаще днём" }, -- В основном дневной
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CRE_ACTIVE_MOSTLY_NIGHT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Чаще ночью" }, -- В основном ночной
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CRE_ACTIVE_ANYTIME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Всегда" }, -- Всегда активный
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CRE_ACTIVE_DAY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Днём" }, -- Дневной
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CRE_ACTIVE_NIGHT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Ночью" }, -- Ночной
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CRE_HEMISPHERE_NORTH" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Север" }, -- Обитает на севере (Found in the North)
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CRE_HEMISPHERE_SOUTH" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Юг" }, -- Обитает на юге (Found in the South)
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CRE_HEMISPHERE_ALL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Везде" }, -- Обитает повсюду (Found Everywhere)
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_STATION_INFO_CONFLICT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Обстановка" }, -- Уровень конфликта (Conflict level)
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPLORE_LOG_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружено планет&lt;&gt;: &lt;%GRADE%&gt;%PLANET_CURR%&lt;&gt; / &lt;%GRADE%&gt;%PLANET_MAX%&lt;&gt;&#xA;Доминирующая форма жизни: &lt;%RACE_GRADE%&gt;%RACE%&lt;&gt;&#xA;Уровень конфликта: &lt;%CONFLICT_GRADE%&gt;%CONFLICT%&lt;&gt;&#xA;Экономика: &lt;%TITLE_BRIGHT%&gt;%ECON%&lt;&gt;, &lt;%WEALTH_GRADE%&gt;%WEALTH%&lt;&gt;
                                { "Russian", "Обнаружено планет&lt;&gt;: &lt;%GRADE%&gt;%PLANET_CURR%&lt;&gt; / &lt;%GRADE%&gt;%PLANET_MAX%&lt;&gt;&#xA;Доминирующая форма жизни: &lt;%RACE_GRADE%&gt;%RACE%&lt;&gt;&#xA;Обстановка: &lt;%CONFLICT_GRADE%&gt;%CONFLICT%&lt;&gt;&#xA;Экономика: &lt;%TITLE_BRIGHT%&gt;%ECON%&lt;&gt;, &lt;%WEALTH_GRADE%&gt;%WEALTH%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPLORE_LOG_SYSTEM" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;VAL_ON&gt;Звездная классификация&lt;&gt;: %STAR%&lt;IMG&gt;SLASH&lt;&gt;%STARAGE%&#xA;&lt;VAL_ON&gt;Звездный регион&lt;&gt;: %SYSTEM_FACT%&#xA;&#xA;&lt;VAL_ON&gt;Обнаружено планет&lt;&gt;: &lt;%GRADE%&gt;%PLANET_CURR%&lt;&gt; / &lt;%GRADE%&gt;%PLANET_MAX%&lt;&gt;&#xA;&lt;VAL_ON&gt;Доминирующая форма жизни&lt;&gt;: &lt;%RACE_GRADE%&gt;%RACE%&lt;&gt;&#xA;&lt;VAL_ON&gt;Уровень конфликта&lt;&gt;: &lt;%CONFLICT_GRADE%&gt;%CONFLICT%&lt;&gt;&#xA;&lt;VAL_ON&gt;Экономика&lt;&gt;: %ECON%, &lt;%WEALTH_GRADE%&gt;%WEALTH%&lt;&gt;&#xA;&#xA;Планируйте торговые пути, чтобы получить больше выгоды. Находите взаимодополняющие типы экономики, чтобы организовать идеальный торговый путь.&#xA;&#xA;Благосостояние системы влияет на то, сколько товаров она может продать. В системах с высоким благосостоянием чаще встречаются качественные звездолеты. В системах с высоким уровнем конфликта выше вероятность нападения пиратов.
                                { "Russian", "&lt;VAL_ON&gt;Звёздная классификация&lt;&gt;: %STAR%&lt;IMG&gt;SLASH&lt;&gt;%STARAGE%&#xA;&lt;VAL_ON&gt;Звёздный регион&lt;&gt;: %SYSTEM_FACT%&#xA;&#xA;&lt;VAL_ON&gt;Обнаружено планет&lt;&gt;: &lt;%GRADE%&gt;%PLANET_CURR%&lt;&gt; / &lt;%GRADE%&gt;%PLANET_MAX%&lt;&gt;&#xA;&lt;VAL_ON&gt;Доминирующая форма жизни&lt;&gt;: &lt;%RACE_GRADE%&gt;%RACE%&lt;&gt;&#xA;&lt;VAL_ON&gt;Обстановка&lt;&gt;: &lt;%CONFLICT_GRADE%&gt;%CONFLICT%&lt;&gt;&#xA;&lt;VAL_ON&gt;Экономика&lt;&gt;: %ECON%, &lt;%WEALTH_GRADE%&gt;%WEALTH%&lt;&gt;&#xA;&#xA;Благосостояние системы влияет на то, сколько товаров она может продать, а также на качество звездолётов. В системах с высоким уровнем конфликта выше вероятность нападения пиратов." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPLORE_LOG_EMPTY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;VAL_ON&gt;Звездная классификация&lt;&gt;: %STAR%&#xA;&lt;VAL_ON&gt;Звездный регион&lt;&gt;: %SYSTEM_FACT%&#xA;&#xA;&lt;VAL_ON&gt;Обнаружено планет&lt;&gt;: &lt;%GRADE%&gt;%PLANET_CURR%&lt;&gt; / &lt;%GRADE%&gt;%PLANET_MAX%&lt;&gt;&#xA;&lt;VAL_ON&gt;Доминирующая форма жизни&lt;&gt;: нет&#xA;&lt;VAL_ON&gt;Уровень конфликта&lt;&gt;: нет&#xA;&lt;VAL_ON&gt;Экономика&lt;&gt;: нет&#xA;&#xA;Система &lt;SPECIAL&gt;необитаема&lt;&gt;. В ней нет космической станции, ни на одной из планет нет признаков жизни.
                                { "Russian", "&lt;VAL_ON&gt;Звёздная классификация&lt;&gt;: %STAR%&#xA;&lt;VAL_ON&gt;Звёздный регион&lt;&gt;: %SYSTEM_FACT%&#xA;&#xA;&lt;VAL_ON&gt;Обнаружено планет&lt;&gt;: &lt;%GRADE%&gt;%PLANET_CURR%&lt;&gt; / &lt;%GRADE%&gt;%PLANET_MAX%&lt;&gt;&#xA;&lt;VAL_ON&gt;Доминирующая форма жизни&lt;&gt;: нет&#xA;&lt;VAL_ON&gt;Обстановка&lt;&gt;: неизвестно&#xA;&lt;VAL_ON&gt;Экономика&lt;&gt;: отсутвует&#xA;&#xA;Система &lt;SPECIAL&gt;необитаема&lt;&gt;. В ней нет космической станции, ни на одной из планет нет признаков жизни." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPLORE_LOG_MSG_EMPTY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружено планет&lt;&gt;: &lt;%GRADE%&gt;%PLANET_CURR%&lt;&gt; / &lt;%GRADE%&gt;%PLANET_MAX%&lt;&gt;&#xA;Доминирующая форма жизни: нет&#xA;Уровень конфликта: нет&#xA;Экономика: нет
                                { "Russian", "Обнаружено планет&lt;&gt;: &lt;%GRADE%&gt;%PLANET_CURR%&lt;&gt; / &lt;%GRADE%&gt;%PLANET_MAX%&lt;&gt;&#xA;Доминирующая форма жизни: нет&#xA;Обстановка: неизвестно&#xA;Экономика: отсутвует" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPLORE_LOG_ABAND" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;VAL_ON&gt;Звездная классификация&lt;&gt;: %STAR%&#xA;&lt;VAL_ON&gt;Звездный регион&lt;&gt;: %SYSTEM_FACT%&#xA;&#xA;&lt;VAL_ON&gt;Обнаружено планет&lt;&gt;: &lt;%GRADE%&gt;%PLANET_CURR%&lt;&gt; / &lt;%GRADE%&gt;%PLANET_MAX%&lt;&gt;&#xA;&lt;VAL_ON&gt;Доминирующая форма жизни&lt;&gt;: [&lt;FUEL&gt;ЭВАКУИРОВАНЫ&lt;&gt;]&#xA;&lt;VAL_ON&gt;Уровень конфликта&lt;&gt;: ???&#xA;&lt;VAL_ON&gt;Экономика&lt;&gt;: ???&#xA;&#xA;&lt;IMG&gt;SLASH&lt;&gt; СИГНАЛ КОСМИЧЕСКОЙ СТАНЦИИ НЕ ОБНАРУЖЕН &lt;IMG&gt;SLASH&lt;&gt; АВАРИЙНЫЕ КАНАЛЫ НЕ ЗАДЕЙСТВОВАНЫ &lt;IMG&gt;SLASH&lt;&gt;
                                { "Russian", "&lt;VAL_ON&gt;Звёздная классификация&lt;&gt;: %STAR%&#xA;&lt;VAL_ON&gt;Звёздный регион&lt;&gt;: %SYSTEM_FACT%&#xA;&#xA;&lt;VAL_ON&gt;Обнаружено планет&lt;&gt;: &lt;%GRADE%&gt;%PLANET_CURR%&lt;&gt; / &lt;%GRADE%&gt;%PLANET_MAX%&lt;&gt;&#xA;&lt;VAL_ON&gt;Доминирующая форма жизни&lt;&gt;: [&lt;FUEL&gt;ЭВАКУИРОВАНЫ&lt;&gt;]&#xA;&lt;VAL_ON&gt;Обстановка&lt;&gt;: ???&#xA;&lt;VAL_ON&gt;Экономика&lt;&gt;: ???&#xA;&#xA;&lt;IMG&gt;SLASH&lt;&gt; СИГНАЛ КОСМИЧЕСКОЙ СТАНЦИИ НЕ ОБНАРУЖЕН &lt;IMG&gt;SLASH&lt;&gt; АВАРИЙНЫЕ КАНАЛЫ НЕ ЗАДЕЙСТВОВАНЫ &lt;IMG&gt;SLASH&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPLORE_LOG_MSG_ABAND" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружено планет&lt;&gt;: &lt;%GRADE%&gt;%PLANET_CURR%&lt;&gt; / &lt;%GRADE%&gt;%PLANET_MAX%&lt;&gt;&#xA;&lt;VAL_ON&gt;Доминирующая форма жизни&lt;&gt;: [&lt;FUEL&gt;ЭВАКУИРОВАНЫ&lt;&gt;]&#xA;&lt;VAL_ON&gt;Уровень конфликта&lt;&gt;: ???&#xA;&lt;VAL_ON&gt;Экономика&lt;&gt;: ???
                                { "Russian", "Обнаружено планет&lt;&gt;: &lt;%GRADE%&gt;%PLANET_CURR%&lt;&gt; / &lt;%GRADE%&gt;%PLANET_MAX%&lt;&gt;&#xA;&lt;VAL_ON&gt;Доминирующая форма жизни&lt;&gt;: [&lt;FUEL&gt;ЭВАКУИРОВАНЫ&lt;&gt;]&#xA;&lt;VAL_ON&gt;Обстановка&lt;&gt;: ???&#xA;&lt;VAL_ON&gt;Экономика&lt;&gt;: ???" },
                            }
                        },
                        -- !!! Руководство по исследованию
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPLORE_LOG_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сканируйте животных, растения и минералы с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;). Включив визор, нажмите &lt;IMG&gt;BINOCSCAN&lt;&gt;, чтобы проанализировать свою цель.&#xA;&#xA;Каждое открытие заносится на &lt;VAL_ON&gt;страницу открытий&lt;&gt; (&lt;IMG&gt;OPTIONS&lt;&gt;). Зайдите на страницу открытий, чтобы &lt;COMMODITY&gt;переименовать или загрузить&lt;&gt; открытия, а также &lt;TECHNOLOGY&gt;получить наниты&lt;&gt;.&#xA;&#xA;Если вы открыли &lt;VAL_ON&gt;все виды животных&lt;&gt; на планете, то получите &lt;VAL_ON&gt;большую сумму юнитов&lt;&gt;.
                                { "Russian", "Сканируйте животных, растения и минералы с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;). Включив визор, нажмите &lt;IMG&gt;BINOCSCAN&lt;&gt;, чтобы проанализировать свою цель и получить юниты.&#xA;&#xA;На странице открытий (&lt;IMG&gt;OPTIONS&lt;&gt;) можно получить наниты за открытие всех видов животных на планете." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ABAND_LOG_PERSONAL_ITEM33" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "набор для сборки" }, -- комплект проводки (wiring kit)
                            }
                        },
                        -- XXX: иногда все они не помещаются (имена длинные, должности длинные, какие-то доп заметки в скобках итд)
                        -- кого-то одного или двух нужно выкидывать
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ABAND_MANIFEST_FORMAT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %CAPT%%OFFICER1%, %OFFICER2%, %OFFICER3%%PASS1%, %PASS2%, %PASS3%&#xA;Другие члены экипажа: %CREWTOTAL%
                                -- %CAPT%&#xA;%OFFICER1%, %OFFICER2%, %OFFICER3%&#xA;%PASS1%, %PASS2%, %PASS3%&#xA;%CREWTOTAL% other hands
                                --{ "Russian", "%CAPT%&#xA;%OFFICER1%, %OFFICER2%, %OFFICER3%&#xA;%PASS1%, %PASS2%, %PASS3%&#xA;Другие члены экипажа: %CREWTOTAL%" },
                                { "Russian", "%CAPT%&#xA;%OFFICER1%, %OFFICER2%, %OFFICER3%&#xA;%PASS1%, %PASS2%&#xA;Другие члены экипажа: %CREWTOTAL%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_FREI_CREW_DETAIL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Копия официального списка экипажа грузового судна &lt;TECHNOLOGY&gt;%FREIGHTER%&lt;&gt;.&#xA;&#xA;%MANIFEST%&#xA;&#xA;Этот документ может оказаться &lt;STELLAR&gt;крайне ценным&lt;&gt; товаром для тех, кого интересует судьба пропавшего судна.
                                -- A copy of the official Crew Manifest for the freighter &lt;TECHNOLOGY&gt;%FREIGHTER%&lt;&gt;.&#xA;&#xA;%MANIFEST%&#xA;&#xA;This document would be &lt;STELLAR&gt;highly valuable&lt;&gt; to those concerned with the fate of the missing ship.
                                { "Russian", "Копия официального списка экипажа грузового судна &lt;TECHNOLOGY&gt;%FREIGHTER%&lt;&gt;.&#xA;&#xA;%MANIFEST%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ABAND_LOG_FORMAT_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Статус экипажа при последнем биосканировании судна (%DAYS% дн. назад):&#xA;&lt;STELLAR&gt;Командир&lt;&gt;: %CAPT%&lt;IMG&gt;SLASH&lt;&gt;&lt;STELLAR&gt;Дежурные офицеры&lt;&gt;: %OFFICER1%; %OFFICER2%; %OFFICER3%&lt;STELLAR&gt;Статус экипажа&lt;&gt;: %CREW1% x %CREW1NUM%, %CREW2% x %CREW2NUM%&lt;STELLAR&gt;Внештатные работники&lt;&gt;: %PASSENGERS%
                                -- Crew status as of last ship-wide bio scan (%DAYS% days ago):&#xA;&lt;STELLAR&gt;Commanding Officer&lt;&gt;: %CAPT% &lt;IMG&gt;SLASH&lt;&gt; &lt;STELLAR&gt;Duty Officers&lt;&gt;: %OFFICER1%; %OFFICER2%; %OFFICER3%&#xA;&lt;STELLAR&gt;Crew Status Report&lt;&gt;: %CREW1% x %CREW1NUM%, %CREW2% x %CREW2NUM%&#xA;&lt;STELLAR&gt;Supernumeraries&lt;&gt;: %PASSENGERS%
                                { "Russian", "Статус экипажа при последнем биосканировании судна (%DAYS% дн. назад):&#xA;&lt;STELLAR&gt;Командир&lt;&gt;: %CAPT% &lt;IMG&gt;SLASH&lt;&gt; &lt;STELLAR&gt;Дежурные офицеры&lt;&gt;: %OFFICER1%; %OFFICER2%; %OFFICER3%&#xA;&lt;STELLAR&gt;Статус экипажа&lt;&gt;: %CREW1% x %CREW1NUM%, %CREW2% x %CREW2NUM%&#xA;&lt;STELLAR&gt;Внештатные работники&lt;&gt;: %PASSENGERS%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ABAND_LOG_FORMAT_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Частичная декларация груза:&#xA;%PROD1% x %PROD1NUM%&lt;IMG&gt;SLASH&lt;&gt;%PROD2% x %PROD2NUM%&lt;IMG&gt;SLASH&lt;&gt;%PROD3% x %PROD3NUM%&lt;IMG&gt;SLASH&lt;&gt;%PROD5% x %PROD5NUM%&lt;FUEL&gt;%STATUS%&lt;&gt;
                                -- Partial Cargo Manifest Follows:&#xA;%PROD1% x %PROD1NUM% &lt;IMG&gt;SLASH&lt;&gt; %PROD2% x %PROD2NUM% &lt;IMG&gt;SLASH&lt;&gt; %PROD3% x %PROD3NUM% &lt;IMG&gt;SLASH&lt;&gt; %PROD5% x %PROD5NUM% &lt;FUEL&gt;%STATUS%&lt;&gt;
                                { "Russian", "Частичная декларация груза:&#xA;%PROD1% x %PROD1NUM% &lt;IMG&gt;SLASH&lt;&gt; %PROD2% x %PROD2NUM% &lt;IMG&gt;SLASH&lt;&gt; %PROD3% x %PROD3NUM% &lt;IMG&gt;SLASH&lt;&gt; %PROD5% x %PROD5NUM% &lt;FUEL&gt;%STATUS%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ABAND_LOG_FORMAT_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;SLASH&lt;&gt; Журнал событий экспедиции представлен далее &lt;IMG&gt;SLASH&lt;&gt;&lt;STELLAR&gt;Метка даты &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE1%&lt;&gt; :: %EVENT1% ::&#xA;&lt;STELLAR&gt;Метка даты &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE2%&lt;&gt; :: %EVENT2% ::&#xA;&lt;STELLAR&gt;Метка даты &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE3%&lt;&gt; :: %EVENT3% ::
                                -- &lt;IMG&gt;SLASH&lt;&gt; Expedition Event Log Follows &lt;IMG&gt;SLASH&lt;&gt;&#xA;&lt;STELLAR&gt;Datestamp &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE1%&lt;&gt; :: %EVENT1% ::&#xA;&lt;STELLAR&gt;Datestamp &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE2%&lt;&gt; :: %EVENT2% ::&#xA;&lt;STELLAR&gt;Datestamp &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE3%&lt;&gt; :: %EVENT3% ::
                                { "Russian", "&lt;IMG&gt;SLASH&lt;&gt; Журнал событий экспедиции представлен далее &lt;IMG&gt;SLASH&lt;&gt;&#xA;&lt;STELLAR&gt;Дата &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE1%&lt;&gt; :: %EVENT1% ::&#xA;&lt;STELLAR&gt;Дата &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE2%&lt;&gt; :: %EVENT2% ::&#xA;&lt;STELLAR&gt;Дата &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE3%&lt;&gt; :: %EVENT3% ::" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ABAND_LOG_FORMAT_5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;SLASH&lt;&gt; Открыт журнал контроля и обслуживания... Запись событий приведена далее &lt;IMG&gt;SLASH&lt;&gt;&#xA;Метка даты &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE1%&lt;&gt; :: %EVENT1%&#xA;Метка даты &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE2%&lt;&gt; :: %EVENT2%&#xA;Метка даты &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE3%&lt;&gt; :: %EVENT3%
                                -- &lt;IMG&gt;SLASH&lt;&gt; Monitoring &amp; Maintenance Logs Accessed... Event Record Follows &lt;IMG&gt;SLASH&lt;&gt;&#xA;Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE1%&lt;&gt; :: %EVENT1%&#xA;Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE2%&lt;&gt; :: %EVENT2%&#xA;Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE3%&lt;&gt; :: %EVENT3%
                                { "Russian", "&lt;IMG&gt;SLASH&lt;&gt; Открыт журнал контроля и обслуживания... Запись событий приведена далее &lt;IMG&gt;SLASH&lt;&gt;&#xA;Дата &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE1%&lt;&gt; :: %EVENT1%&#xA;Дата &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE2%&lt;&gt; :: %EVENT2%&#xA;Дата &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE3%&lt;&gt; :: %EVENT3%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ABAND_LOG_FORMAT_9" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Данные, полученные из журналов лазарета... Частичные отчеты...&#xA;Метка даты &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE%&lt;&gt;: %NAME% (%JOB%), симптом: %SYMPTOM%. %TREATMENT%. Схожих случаев за путешествие: %NUM%.
                                -- Data Extracted from Medical Bay Logs... Partial Report Follows...&#xA;Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE%&lt;&gt;: %NAME% (%JOB%) presented with %SYMPTOM%. %TREATMENT%. Log shows %NUM% similar cases this voyage.
                                { "Russian", "Данные, полученные из журналов лазарета... Частичные отчёты...&#xA;Дата &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE%&lt;&gt;: %NAME% (%JOB%), симптом: %SYMPTOM%. %TREATMENT%. Схожих случаев за путешествие: %NUM%." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ABAND_LOG_FORMAT_9_A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Данные, полученные из журналов лазарета... Частичные отчеты...&#xA;Метка даты &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE%&lt;&gt;: %NAME% (%JOB%), симптом: %SYMPTOM%. Болезнь продолжает распространяться среди экипажа. Всего заболевших: &lt;FUEL&gt;%PERCENT%%&lt;&gt;.
                                -- Data Extracted from Medical Bay Logs... Partial Report Follows...&#xA;Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE%&lt;&gt;: %NAME% (%JOB%) presented with %SYMPTOM%. Outbreak continues to progress through crew. Total cases: &lt;FUEL&gt;%PERCENT%%&lt;&gt;.
                                { "Russian", "Данные, полученные из журналов лазарета... Частичные отчёты...&#xA;Дата &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE%&lt;&gt;: %NAME% (%JOB%), симптом: %SYMPTOM%. Болезнь продолжает распространяться среди экипажа. Всего заболевших: &lt;FUEL&gt;%PERCENT%%&lt;&gt;." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ABAND_LOG_FORMAT_9_B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Данные, полученные из журналов лазарета... Частичные отчеты...&#xA;Метка даты &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE%&lt;&gt;: %NAME% (%JOB%), симптом: %SYMPTOM%. %TREATMENT%. Случай № %NUM%. Шанс выздоровления: %PERCENT%%.
                                -- Data Extracted from Medical Bay Logs... Partial Report Follows...&#xA;Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE%&lt;&gt;: %NAME% (%JOB%) presented with %SYMPTOM%. %TREATMENT%. Case no. %NUM%. Chance of recovery: %PERCENT%%.
                                { "Russian", "Данные, полученные из журналов лазарета... Частичные отчёты...&#xA;Дата &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE%&lt;&gt;: %NAME% (%JOB%), симптом: %SYMPTOM%. %TREATMENT%. Случай № %NUM%. Шанс выздоровления: %PERCENT%%." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ABAND_LOG_FORMAT_10_A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt; (выписка)::&lt;&gt; Ежедневный отчет дежурного офицера о дисциплине &lt;STELLAR&gt;::&lt;&gt;&#xA;Метка даты &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE%&lt;&gt;: член экипажа %NAME% (%JOB%) помещен на гауптвахту. Причина: %CRIME%&lt;IMG&gt;SLASH&lt;&gt; Первое нарушение. Срок наказания: %NUM% дн.
                                -- Extract from &lt;STELLAR&gt;::&lt;&gt; Watch Officer's Daily Report, Discipline &lt;STELLAR&gt;::&lt;&gt;&#xA;Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE%&lt;&gt;: %NAME% (%JOB%) confined to the brig for %CRIME% &lt;IMG&gt;SLASH&lt;&gt; First offence. Sentence length: %NUM% days.
                                { "Russian", "&lt;STELLAR&gt; (выписка)::&lt;&gt; Ежедневный отчёт дежурного офицера о дисциплине &lt;STELLAR&gt;::&lt;&gt;&#xA;Дата &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE%&lt;&gt;: член экипажа %NAME% (%JOB%) помещен на гауптвахту. Причина: %CRIME%&lt;IMG&gt;SLASH&lt;&gt; Первое нарушение. Срок наказания: %NUM% дн." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ABAND_LOG_FORMAT_10_B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt; (выписка)::&lt;&gt; Ежедневный отчет дежурного офицера о дисциплине &lt;STELLAR&gt;::&lt;&gt;&#xA;Метка даты &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE%&lt;&gt;: член экипажа %NAME% (%JOB%) помещен на гауптвахту. Причина: %CRIME%&lt;IMG&gt;SLASH&lt;&gt; Нарушение № %OFFNUM%. Срок наказания: %NUM% дн. Дополнительное наказание: %PUNISHMENT%.
                                -- Extract from &lt;STELLAR&gt;::&lt;&gt; Watch Officer's Daily Report, Discipline &lt;STELLAR&gt;::&lt;&gt;&#xA;Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE%&lt;&gt;: %NAME% (%JOB%) confined to the brig for %CRIME% &lt;IMG&gt;SLASH&lt;&gt; Offence number %OFFNUM%. Sentence length: %NUM% days. Additional punishment: %PUNISHMENT%.
                                { "Russian", "&lt;STELLAR&gt; (выписка)::&lt;&gt; Ежедневный отчёт дежурного офицера о дисциплине &lt;STELLAR&gt;::&lt;&gt;&#xA;Дата &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE%&lt;&gt;: член экипажа %NAME% (%JOB%) помещен на гауптвахту. Причина: %CRIME%&lt;IMG&gt;SLASH&lt;&gt;&#xA;Нарушение № %OFFNUM%. Срок наказания: %NUM% дн. Дополнительное наказание: %PUNISHMENT%." },
                            }
                        },
                        -- "&lt;FUEL&gt;%FATE%&lt;&gt;." - точка может стать началом новой строки
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ABAND_LOG_FORMAT_13" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Журнал судового ИИ зашифрован... Отчет о слежении за членом экипажа %NAME% (%JOB%):&#xA;Последнее биологическое сканирование выполнено %DAYS% дн. назад, в зоне %AREA%. Также присутствовало %OTHERS% сущ. Показания биометрического сканирования: &lt;FUEL&gt;%FATE%&lt;&gt;. Других признаков жизни нет.
                                -- Ship AI Log Decrypted... Location Tracking Report for %NAME% (%JOB%):&#xA;Personal bioscan last detected %DAYS% days ago, in %AREA%. %OTHERS% others present. Biometric readout indicates &lt;FUEL&gt;%FATE%&lt;&gt;. No further lifesigns.
                                { "Russian", "Журнал судового ИИ зашифрован... Отчёт о слежении за членом экипажа %NAME% (%JOB%):&#xA;Последнее биологическое сканирование выполнено %DAYS% дн. назад, в зоне %AREA%. Также присутствовало %OTHERS% сущ.&#xA;Показания биометрического сканирования: &lt;FUEL&gt;%FATE%&lt;&gt;. Других признаков жизни нет." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ABAND_SEVERE_CRIME_FMT_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt; (выписка)::&lt;&gt; Ежедневный отчет дежурного офицера о дисциплине &lt;STELLAR&gt;::&lt;&gt;&#xA;Метка даты &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE%&lt;&gt;: член экипажа %NAME% (%JOB%) помещен на гауптвахту. Причина: %CRIME%&lt;IMG&gt;SLASH&lt;&gt; Приговор: &lt;FUEL&gt;Заточение на неопределенный срок&lt;&gt;.
                                -- Extract from &lt;STELLAR&gt;::&lt;&gt; Watch Officer's Daily Report, Discipline &lt;STELLAR&gt;::&lt;&gt;&#xA;Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE%&lt;&gt;: %NAME% (%JOB%) confined to the brig for %CRIME% &lt;IMG&gt;SLASH&lt;&gt; Sentence: &lt;FUEL&gt;Indefinite Detention&lt;&gt;.
                                { "Russian", "&lt;STELLAR&gt; (выписка)::&lt;&gt; Ежедневный отчёт дежурного офицера о дисциплине &lt;STELLAR&gt;::&lt;&gt;&#xA;Дата &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE%&lt;&gt;: член экипажа %NAME% (%JOB%) помещен на гауптвахту. Причина: %CRIME%&lt;IMG&gt;SLASH&lt;&gt; Приговор: &lt;FUEL&gt;Заточение на неопределенный срок&lt;&gt;." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ABAND_SEVERE_CRIME_FMT_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt; (выписка)::&lt;&gt; Ежедневный отчет дежурного офицера о дисциплине &lt;STELLAR&gt;::&lt;&gt;&#xA;Метка даты &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE%&lt;&gt;: Член экипажа %NAME% (%JOB%) предстал перед судом. Причина: %CRIME%&lt;IMG&gt;SLASH&lt;&gt; Приговор: &lt;FUEL&gt;списан с судна&lt;&gt;.
                                -- Extract from &lt;STELLAR&gt;::&lt;&gt; Watch Officer's Daily Report, Discipline &lt;STELLAR&gt;::&lt;&gt;&#xA;Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE%&lt;&gt;: %NAME% (%JOB%) tried by panel for %CRIME% &lt;IMG&gt;SLASH&lt;&gt; Sentence: &lt;FUEL&gt;Removal from ship&lt;&gt;.
                                { "Russian", "&lt;STELLAR&gt; (выписка)::&lt;&gt; Ежедневный отчёт дежурного офицера о дисциплине &lt;STELLAR&gt;::&lt;&gt;&#xA;Дата &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE%&lt;&gt;: Член экипажа %NAME% (%JOB%) предстал перед судом. Причина: %CRIME%&lt;IMG&gt;SLASH&lt;&gt; Приговор: &lt;FUEL&gt;увольнение&lt;&gt;." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ABAND_SEVERE_CRIME_FMT_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt; (выписка)::&lt;&gt; Ежедневный отчет дежурного офицера о дисциплине &lt;STELLAR&gt;::&lt;&gt;&#xA;Метка даты &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE%&lt;&gt;: Член экипажа %NAME% (%JOB%) признан виновным в преступлении: %CRIME%&lt;IMG&gt;SLASH&lt;&gt; Приговор: &lt;FUEL&gt;выброшен из шлюза&lt;&gt;.
                                -- Extract from &lt;STELLAR&gt;::&lt;&gt; Watch Officer's Daily Report, Discipline &lt;STELLAR&gt;::&lt;&gt;&#xA;Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE%&lt;&gt;: %NAME% (%JOB%) found guilty of %CRIME% &lt;IMG&gt;SLASH&lt;&gt; Sentence: &lt;FUEL&gt;Purged from ship via airlock&lt;&gt;.
                                { "Russian", "&lt;STELLAR&gt; (выписка)::&lt;&gt; Ежедневный отчёт дежурного офицера о дисциплине &lt;STELLAR&gt;::&lt;&gt;&#xA;Дата &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE%&lt;&gt;: Член экипажа %NAME% (%JOB%) признан виновным в преступлении: %CRIME%&lt;IMG&gt;SLASH&lt;&gt; Приговор: &lt;FUEL&gt;выброшен из шлюза&lt;&gt;." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ABAND_SEVERE_CRIME_FMT_4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt; (выписка)::&lt;&gt; Ежедневный отчет дежурного офицера о дисциплине &lt;STELLAR&gt;::&lt;&gt;&#xA;Метка даты &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE%&lt;&gt;: член экипажа %NAME% (%JOB%) помещен на гауптвахту. Причина: %CRIME%&lt;IMG&gt;SLASH&lt;&gt; Срок наказания: %NUM% дн.
                                -- Extract from &lt;STELLAR&gt;::&lt;&gt; Watch Officer's Daily Report, Discipline &lt;STELLAR&gt;::&lt;&gt;&#xA;Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE%&lt;&gt;: %NAME% (%JOB%) confined to the brig for %CRIME% &lt;IMG&gt;SLASH&lt;&gt;  Sentence length: %NUM% days.
                                { "Russian", "&lt;STELLAR&gt; (выписка)::&lt;&gt; Ежедневный отчёт дежурного офицера о дисциплине &lt;STELLAR&gt;::&lt;&gt;&#xA;Дата &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE%&lt;&gt;: член экипажа %NAME% (%JOB%) помещен на гауптвахту. Причина: %CRIME%&lt;IMG&gt;SLASH&lt;&gt; Срок наказания: %NUM% дн." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ABAND_LOG_FORMAT_12" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;Личные данные записи члена экипажа&lt;&gt;%NAME% (%JOB%). Метка даты &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE%&lt;&gt;. Автоматическое транскрибирование аудиозаписи...&#xA;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;кзкззт&lt;&gt; – %NOTE1%%GAP%%NOTE2%%GAP%%NOTE3%%GAP%&lt;FUEL&gt;ЗАПИСЬ ЗАКАНЧИВАЕТСЯ&lt;&gt;
                                -- &lt;TECHNOLOGY&gt;Personal Data Recording&lt;&gt; accessed for %NAME% (%JOB%). Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE%&lt;&gt;. Auto-Transcribing Audio...&#xA;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;kzkzzt&lt;&gt; – %NOTE1% %GAP% %NOTE2% %GAP% %NOTE3% %GAP% &lt;FUEL&gt;RECORDING ENDS&lt;&gt;
                                { "Russian", "&lt;TECHNOLOGY&gt;Запись из журнала члена экипажа &lt;&gt;%NAME% (%JOB%). Дата &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE%&lt;&gt;. Автоматическое транскрибирование аудиозаписи...&#xA;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;кзкззт&lt;&gt; – %NOTE1%%GAP%%NOTE2%%GAP%%NOTE3%%GAP%&lt;FUEL&gt;ЗАПИСЬ ЗАКАНЧИВАЕТСЯ&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_FREI_CAPT_DETAIL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Зашифрованная загрузка журнала капитана &lt;STELLAR&gt;%CAPT%&lt;&gt; судна &lt;TECHNOLOGY&gt;%FREIGHTER%&lt;&gt;.&#xA;&#xA;Может быть &lt;STELLAR&gt;крайне ценным&lt;&gt; товаром для тех, кто хочет узнать о последних днях обреченного судна.
                                -- An encrypted download of &lt;STELLAR&gt;%CAPT%&lt;&gt;'s log from the &lt;TECHNOLOGY&gt;%FREIGHTER%&lt;&gt;.&#xA;&#xA;Such an item would be &lt;STELLAR&gt;highly valuable&lt;&gt; to those looking for information about the last days of the doomed vessel.
                                { "Russian", "Зашифрованный журнал капитана &lt;STELLAR&gt;%CAPT%&lt;&gt; судна &lt;TECHNOLOGY&gt;%FREIGHTER%&lt;&gt;.&#xA;&#xA;Может быть &lt;STELLAR&gt;крайне ценным&lt;&gt; товаром для тех, кто хочет узнать о последних днях обреченного судна." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ABAND_FREIGHT_OBJ2_TIP_FMT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; для навигации.&#xA;Воспользуйтесь &lt;TECHNOLOGY&gt;сканером&lt;&gt;, чтобы найти груз.&#xA;Найдите &lt;STELLAR&gt;компьютерные терминалы&lt;&gt;, чтобы выяснить судьбу экипажа.&#xA;Активируйте &lt;STELLAR&gt;телепорты&lt;&gt; для быстрого перемещения.&#xA;&#xA;Составлено карт зон: %CURRENT%/%AMOUNT%%CREWSTATE%%CAPTSTATE%%ENDSTATE%
                                -- Use the &lt;TECHNOLOGY&gt;Analysis Visor&lt;&gt; to navigate&#xA;Use the &lt;TECHNOLOGY&gt;Scanner&lt;&gt; to search for salvage&#xA;Locate &lt;STELLAR&gt;Mainframe Terminals&lt;&gt; to determine the fate of the crew&#xA;Activate &lt;STELLAR&gt;Teleporters&lt;&gt; for efficient movement&#xA;&#xA;Zones mapped: %CURRENT%/%AMOUNT%&#xA;%CREWSTATE%&#xA;%CAPTSTATE%&#xA;%ENDSTATE%
                                { "Russian", "Используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; для навигации.&#xA;Воспользуйтесь &lt;TECHNOLOGY&gt;сканером&lt;&gt;, чтобы найти груз.&#xA;Найдите &lt;STELLAR&gt;компьютерные терминалы&lt;&gt;, чтобы выяснить судьбу экипажа.&#xA;Активируйте &lt;STELLAR&gt;телепорты&lt;&gt; для быстрого перемещения.&#xA;&#xA;Составлено карт зон: %CURRENT%/%AMOUNT%&#xA;%CREWSTATE%&#xA;%CAPTSTATE%&#xA;%ENDSTATE%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TRA_CAPT_LOG_LANG_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE1%&lt;&gt; :: Торговый компьютер настаивает, чтобы мы позволили корваксу-другу остаться на борту в моем конференц-зале, словно он гек! Говорит, что это эффективно! Что мы заключим сделку!&#xA;&#xA;Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE2%&lt;&gt; :: Мне нужно исчерпать столько квот! Сколько беспокойства! По сравнению с этим друг-корвакс — лишь пустая трата времени и средств! Их странная пища и капризная настойчивость угнетают меня!&#xA;&#xA;Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE3%&lt;&gt; :: Прошлым вечером мы снова отобедали в моей каюте. Корвакс-друг начинает нравиться мне все больше и больше. Он отличается от других корваксов. Он рассказывает такие интересные истории...&#xA;&#xA;Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE4%&lt;&gt; :: Механизм-друг прав. Мы должны освободиться от своей плоти, чтобы раскрыть свой потенциал. Металл и свет, святой металл и святой свет! Они освободят меня, освободят всех геков!
                                -- Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE1%&lt;&gt; :: Trade-Computer insists we allow Korvax-Friend to stay on board, in my own boardroom, as if it were Gek! Efficient, it says! Will secure trade-deal!&#xA;&#xA;Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE2%&lt;&gt; :: I still have such quotas to be met, ah! The worries! Korvax-Friend is only wasted time and expense compared with these! Their strange food, their fussy insistences, such a drain!&#xA;&#xA;Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE3%&lt;&gt; :: We dined together in my quarters again last night. I prefer Korvax-Friend more and more. They are unlike other Korvax. They have such interesting things to tell me...&#xA;&#xA;Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE4%&lt;&gt; :: Machine-Friend is correct. We must be free of our flesh to reach our potential. Metal and light, holy metal and holy light! It will free me, free all Gek!
                                { "Russian", "Дата &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE1%&lt;&gt; :: Торговый компьютер настаивает, чтобы мы позволили корваксу-другу остаться на борту в моем конференц-зале, словно он гек! Говорит, что это эффективно! Что мы заключим сделку!&#xA;&#xA;Дата &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE2%&lt;&gt; :: Мне нужно исчерпать столько квот! Сколько беспокойства! По сравнению с этим друг-корвакс — лишь пустая трата времени и средств! Их странная пища и капризная настойчивость угнетают меня!&#xA;&#xA;Дата &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE3%&lt;&gt; :: Прошлым вечером мы снова отобедали в моей каюте. Корвакс-друг начинает нравиться мне все больше и больше. Он отличается от других корваксов. Он рассказывает такие интересные истории...&#xA;&#xA;Дата &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE4%&lt;&gt; :: Механизм-друг прав. Мы должны освободиться от своей плоти, чтобы раскрыть свой потенциал. Металл и свет, святой металл и святой свет! Они освободят меня, освободят всех геков!" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TRA_CAPT_LOG_LANG_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE1%&lt;&gt; :: Перед нашим уходом я обратился к команде с речью. Ах, вы бы только видели их в тот момент! Какие отважные-геки! &#xA;Мы собирались восстановить торговые аванпосты, утраченные за столетия до нашего рождения. Мы должны были стать героями среди геков. Вот какую ложь я сказал им...&#xA;&#xA;Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE2%&lt;&gt; :: Команда начинает нервничать. На судне слишком много отсеков, доступ в которые запрещен. Мы должны полностью полагаться на компьютеры корабля. Все ради нашей безопасности. Торговая федерация дала ясные указания. Чтобы никаких свидетелей.&#xA;&#xA;Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE3%&lt;&gt; :: Доверие дало трещину. Артефакт начал по-своему разговаривать со всеми нами. У него столько идей...&#xA;&#xA;Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE4%&lt;&gt; :: Предатели-геки попытались забрать его себе! Назвали меня лжецом-геком! Заявили, что мы не герои! Я убил их всех.&#xA;Артефакт помог мне, но не просто так. У всего есть цена...
                                -- Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE1%&lt;&gt; :: I gave a speech to the crew before we left. Ah, you should have seen them as they were back then, Brave-Gek all! &#xA;We were going to re-establish trade outposts lost hundreds of years before our birth. We were going to be Hero-Gek. These lies I told them...&#xA;&#xA;Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE2%&lt;&gt; :: The crew grow restless. So many areas on the ship no-one can go, no-one can see. So much trust we must place in ship’s computers. All for our safety. Trade Federation made it clear. There can be no witnesses.&#xA;&#xA;Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE3%&lt;&gt; :: Trust has been breached. The artifact has begun talking to all of us, in its own way. It has so many ideas...&#xA;&#xA;Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE4%&lt;&gt; :: Traitor-Gek tried to take it for themselves! Called me Liar-Gek! Claimed we were no heroes! I killed them all.&#xA;The artifact helped me, though it had a price. All things have a price...
                                { "Russian", "Дата &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE1%&lt;&gt; :: Перед нашим уходом я обратился к команде с речью. Ах, вы бы только видели их в тот момент! Какие отважные-геки! &#xA;Мы собирались восстановить торговые аванпосты, утраченные за столетия до нашего рождения. Мы должны были стать героями среди геков. Вот какую ложь я сказал им...&#xA;&#xA;Дата &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE2%&lt;&gt; :: Команда начинает нервничать. На судне слишком много отсеков, доступ в которые запрещен. Мы должны полностью полагаться на компьютеры корабля. Все ради нашей безопасности. Торговая федерация дала ясные указания. Чтобы никаких свидетелей.&#xA;&#xA;Дата &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE3%&lt;&gt; :: Доверие дало трещину. Артефакт начал по-своему разговаривать со всеми нами. У него столько идей...&#xA;&#xA;Дата &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE4%&lt;&gt; :: Предатели-геки попытались забрать его себе! Назвали меня лжецом-геком! Заявили, что мы не герои! Я убил их всех.&#xA;Артефакт помог мне, но не просто так. У всего есть цена..." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TRA_CAPT_LOG_LANG_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE1%&lt;&gt; :: Что можно сказать об экземпляре? Он поступил из частной коллекции и столетиями был частью какого-то семейства.&#xA;Его нужно было кормить лишь раз в год. Он обходился без света и воды. С ним нужно было лишь разговаривать, хоть он и не показывал, что понимает. Нам было приказано продать его.&#xA;&#xA;Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE2%&lt;&gt; :: Есть много способов заработать на форме жизни. Можно использовать ее труд, съесть ее, переработать на химические вещества. Других существ используют лишь для развлечения.&#xA;Но это существо... совсем другое. Оно не движется. Оно не поет и не танцует, его нельзя ранить. Оно лишь слушает.&#xA;&#xA;Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE3%&lt;&gt; :: Всего-то надо было начать игнорировать его. Потребовался лишь месяц без внимания в той холодной и темной комнате, и мы узнали его ценность...&#xA;&#xA;Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE4%&lt;&gt; :: Существо снесло яйцо. Пока я заношу эту запись в журнал, команда готовится разбить его...
                                -- Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE1%&lt;&gt; :: What to say about the specimen? It came from a private collector, a part of some family for centuries.&#xA;We only had to feed it once a year. It didn’t need light or water. All it needed was conversation, though it showed no signs of understanding. We have been commanded to sell it.&#xA;&#xA;Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE2%&lt;&gt; :: There are many ways to profit from a lifeform. Exploit its labour, consume it, process it for chemicals. Other creatures are purely for entertainment.&#xA;This entity... it is none of them. It doesn't move. It doesn't sing or dance or bleed. It just listens.&#xA;&#xA;Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE3%&lt;&gt; :: All it took was ignoring it. All it took was a month alone in that room in the cold and the dark, until we found its value...&#xA;&#xA;Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE4%&lt;&gt; :: The creature has laid an egg. Even as I record this log, the crew prepare to cut it open...
                                { "Russian", "Дата &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE1%&lt;&gt; :: Что можно сказать об экземпляре? Он поступил из частной коллекции и столетиями был частью какого-то семейства.&#xA;Его нужно было кормить лишь раз в год. Он обходился без света и воды. С ним нужно было лишь разговаривать, хоть он и не показывал, что понимает. Нам было приказано продать его.&#xA;&#xA;Дата &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE2%&lt;&gt; :: Есть много способов заработать на форме жизни. Можно использовать ее труд, съесть ее, переработать на химические вещества. Других существ используют лишь для развлечения.&#xA;Но это существо... совсем другое. Оно не движется. Оно не поет и не танцует, его нельзя ранить. Оно лишь слушает.&#xA;&#xA;Дата &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE3%&lt;&gt; :: Всего-то надо было начать игнорировать его. Потребовался лишь месяц без внимания в той холодной и темной комнате, и мы узнали его ценность...&#xA;&#xA;Дата &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE4%&lt;&gt; :: Существо снесло яйцо. Пока я заношу эту запись в журнал, команда готовится разбить его..." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TRA_CAPT_LOG_LANG_4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE1%&lt;&gt; :: Адмирал-гек был слишком молод, чтобы умирать. Пусть Атлас осыплет его семью богатством! Несмотря на мягкость, я дам им повод гордиться мной.&#xA;&#xA;Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE2%&lt;&gt; :: У меня сотня родственников. Среди них сложно выделиться. Может, этого путешествия будет достаточно... Мы везем дипломатические бумаги и жаждем вернуть утраченное геками. Мы выстоим!&#xA;&#xA;Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE3%&lt;&gt; :: Мы на орбите над часовней эры Первородов. Ах, друзья! Я так рад, что не был рожден в те жуткие времена!&#xA;Команда с нетерпением ждет ожидающих нас открытий. Военный-гек обладал такими технологиями...&#xA;&#xA;Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE4%&lt;&gt; :: Мы обнаружили хранилище. Наш торговец-гек думает, что оно использовалось для производства клонов военного-гека. Но что может знать торговец-гек?&#xA;Нам до сих пор не удалось получить доступ, но скоро все изменится! Мы станем первопроходцами!
                                -- Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE1%&lt;&gt; :: The Admiral-Gek was too young to die. May the Atlas shower their family with profit! I will try and do them proud, soft as I am.&#xA;&#xA;Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE2%&lt;&gt; :: I have a hundred siblings. It is hard to be noticed. Maybe this voyage will be enough... We carry diplomatic papers, charged with recovering the lost history of all Gek. We shall persevere!&#xA;&#xA;Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE3%&lt;&gt; :: We are in orbit above a chapel of the First Spawn era. Ah, friends, I am glad I was not born in such brutal times!&#xA;The crew are eager to see what discoveries we might salvage. War-Gek had such technology...&#xA;&#xA;Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE4%&lt;&gt; :: We have discovered a storage facility. Our Trade-Gek thinks it was used to mass-produce War-Gek clones. But what does Trade-Gek know?&#xA;We have not yet managed to gain access, but ah, I feel close! We will be pioneers!
                                { "Russian", "Дата &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE1%&lt;&gt; :: Адмирал-гек был слишком молод, чтобы умирать. Пусть Атлас осыплет его семью богатством! Несмотря на мягкость, я дам им повод гордиться мной.&#xA;&#xA;Дата &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE2%&lt;&gt; :: У меня сотня родственников. Среди них сложно выделиться. Может, этого путешествия будет достаточно... Мы везем дипломатические бумаги и жаждем вернуть утраченное геками. Мы выстоим!&#xA;&#xA;Дата &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE3%&lt;&gt; :: Мы на орбите над часовней эры Первородов. Ах, друзья! Я так рад, что не был рожден в те жуткие времена!&#xA;Команда с нетерпением ждет ожидающих нас открытий. Военный-гек обладал такими технологиями...&#xA;&#xA;Дата &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE4%&lt;&gt; :: Мы обнаружили хранилище. Наш торговец-гек думает, что оно использовалось для производства клонов военного-гека. Но что может знать торговец-гек?&#xA;Нам до сих пор не удалось получить доступ, но скоро все изменится! Мы станем первопроходцами!" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TRA_CAPT_LOG_LANG_5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Метка даты &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE1%&lt;&gt; :: Нашим клиентом оказался Странник. Не знаю, зачем ему нужен наш корабль, ну да ладно! За такие деньги мы готовы отправиться куда угодно.&#xA;&#xA;Метка даты &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE2%&lt;&gt; :: Странник-Друг плохо знает наш язык, но камни знаний кое-чему его научили. Гек ни за что бы не прикоснулся к таким вещам. Гек знает, что за все надо платить.&#xA;&#xA;Метка даты &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE3%&lt;&gt; :: Ночью мы прошли мимо станции Атласа... Половина команды начала молиться, но Странник лишь смотрел на нее. Он попросил нас остановиться и подождать, пока он говорит с ней.&#xA;&#xA;Метка даты &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE4%&lt;&gt; :: До сих пор нет никаких вестей. Мы отправим несколько членов экипажа узнать, нужна ли ему помощь...
                                -- Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE1%&lt;&gt; :: Our client is a Traveller. I do not know what they require of our vessel, but ah! For what they're paying, we would go anywhere.&#xA;&#xA;Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE2%&lt;&gt; :: Traveller-Friend does not know much of our language, though knowledge stones have given them a little. Gek know better than to touch such things. Gek know about paying a price.&#xA;&#xA;Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE3%&lt;&gt; :: We passed an Atlas station in the night… half the crew fell down in prayer, but the Traveller just stared at it. They asked us to wait here while they spoke to It.&#xA;&#xA;Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE4%&lt;&gt; :: Still no contact. We are sending a few crew members to see if they need our help...
                                { "Russian", "Дата &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE1%&lt;&gt; :: Нашим клиентом оказался Странник. Не знаю, зачем ему нужен наш корабль, ну да ладно! За такие деньги мы готовы отправиться куда угодно.&#xA;&#xA;Дата &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE2%&lt;&gt; :: Странник-Друг плохо знает наш язык, но камни знаний кое-чему его научили. Гек ни за что бы не прикоснулся к таким вещам. Гек знает, что за все надо платить.&#xA;&#xA;Дата &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE3%&lt;&gt; :: Ночью мы прошли мимо станции Атласа... Половина команды начала молиться, но Странник лишь смотрел на нее. Он попросил нас остановиться и подождать, пока он говорит с ней.&#xA;&#xA;Дата &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE4%&lt;&gt; :: До сих пор нет никаких вестей. Мы отправим несколько членов экипажа узнать, нужна ли ему помощь..." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TRA_CAPT_LOG_LANG_6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Метка даты &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE1%&lt;&gt; :: Их королева пропала. Их система погрузилась в хаос. Поэтому они пришли к лучшему детективу-геку в галактике. У меня появилось дело.&#xA;Метка даты &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE2%&lt;&gt; :: Мы посетили несколько станций. Пришлось обойтись пожестче с несколькими скользкими типами. «Друг! Не будь лжецом-геком, Друг! Скажи правду!»&#xA;Но они не были моими друзьями. Здесь чем-то попахивало, но дело не в моих феромонах.&#xA;Метка даты &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE3%&lt;&gt; :: Мы встретили моего старого первого помощника, вай'кина с именем, похожим на его личность. Запутанную. Агрессивную. Молчаливую.&#xA;Он сказал, что не в обиде на меня. Я это принял. Я пустил его на борт.&#xA;Метка даты &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE4%&lt;&gt; :: Гра! Трусливый детектив-гек сбежал! Корабль принадлежит вай'кину! Трусливый гек будет сожалеть о том дне, когда он украл добычу вай'кина! Всем равную оплату!
                                -- Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE1%&lt;&gt; :: Their Queen had gone missing. Their system was in disarray. That’s why they came to the best Detecti-Gek the galaxy could offer. I was on the case.&#xA;Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE2%&lt;&gt; :: We visited a few stations. I had to get rough with a few shady customers. “Friend! Don't be Liar-Gek, Friend! Tell truth!”&#xA;But these weren't my friends at all. Something stank, and it wasn’t just my pheromones.&#xA;Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE3%&lt;&gt; :: We encountered my old first officer, a Vy’keen with a name like their personality: Confusing. Aggressive. Taciturn.&#xA;They said there were no hard feelings. I accepted this. I let them on board.&#xA;Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE4%&lt;&gt; :: Grah! Coward Detecti-Gek fled ship! Ship belong to Vy’keen! Coward Gek shall rue day they stole Vy’keen plunder! Fair wages for all!
                                { "Russian", "Дата &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE1%&lt;&gt; :: Их королева пропала. Их система погрузилась в хаос. Поэтому они пришли к лучшему детективу-геку в галактике. У меня появилось дело.&#xA;Дата &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE2%&lt;&gt; :: Мы посетили несколько станций. Пришлось обойтись пожестче с несколькими скользкими типами. «Друг! Не будь лжецом-геком, Друг! Скажи правду!»&#xA;Но они не были моими друзьями. Здесь чем-то попахивало, но дело не в моих феромонах.&#xA;Дата &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE3%&lt;&gt; :: Мы встретили моего старого первого помощника, вай'кина с именем, похожим на его личность. Запутанную. Агрессивную. Молчаливую.&#xA;Он сказал, что не в обиде на меня. Я это принял. Я пустил его на борт.&#xA;Дата &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE4%&lt;&gt; :: Гра! Трусливый детектив-гек сбежал! Корабль принадлежит вай'кину! Трусливый гек будет сожалеть о том дне, когда он украл добычу вай'кина! Всем равную оплату!" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "EXP_CAPT_LOG_LANG_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Метка даты &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE1%&lt;&gt; :: Единство корваксов учит, что вся ценность познается в сравнении. Нет цифр без иных цифр. Нет жизни без иной жизни. Но тогда почему я должен так поступить?&#xA;&#xA;Метка даты &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE2%&lt;&gt; :: Остальные отдыхают. Это их право. Другие перерождаются. Я обитал в бессчетном количестве панцирей. Сотни циклов мое Эхо бродило по вселенной.&#xA;Эхеу! Пришла пора отдавать. Пришла пора уплатить мою долю.&#xA;&#xA;Метка даты &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE3%&lt;&gt; :: Говорят, что все корваксы едины, но это не так. Мы — семейство душ. Мы никогда не остаемся одни. В наших разумах звучат голоса. Сейчас они молятся за меня...&#xA;&#xA;Метка даты &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE4%&lt;&gt; :: Этот корабль... Это грузовое судно... Оно стало моим новым телом. Увы, оно определяет меня! Оно изменяет меня! Мое Эхо заполнит каждую цепь, каждую стену, каждый фонарь.&#xA;Я не хочу ходить! Я не...
                                -- Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE1%&lt;&gt; :: Korvax Convergence teaches all value is in relation. There are no numbers without other numbers. No life without other life. Why, then, must I do this?&#xA;&#xA;Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE2%&lt;&gt; :: Others rest. It is their right. Others are born again. I have dwelt within carapaces beyond number. Hundreds of cycles has my Echo walked the universe.&#xA;Eheu! It is time for me to give back. It is time for me to pay my tithe.&#xA;&#xA;Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE3%&lt;&gt; :: All Korvax are one, they say, but this is not so. We are a family of souls. We are never alone. We have voices in our minds. They pray for me, now…&#xA;&#xA;Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE4%&lt;&gt; :: This ship… this freighter… it is to become my new body. Eheu, they are making me! They are changing me! My Echo will fill every circuit, every wall, every light.&#xA;I do not want to go! I do not –
                                { "Russian", "Дата &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE1%&lt;&gt; :: Единство корваксов учит, что вся ценность познается в сравнении. Нет цифр без иных цифр. Нет жизни без иной жизни. Но тогда почему я должен так поступить?&#xA;&#xA;Дата &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE2%&lt;&gt; :: Остальные отдыхают. Это их право. Другие перерождаются. Я обитал в бессчетном количестве панцирей. Сотни циклов мое Эхо бродило по вселенной.&#xA;Эхеу! Пришла пора отдавать. Пришла пора уплатить мою долю.&#xA;&#xA;Дата &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE3%&lt;&gt; :: Говорят, что все корваксы едины, но это не так. Мы — семейство душ. Мы никогда не остаемся одни. В наших разумах звучат голоса. Сейчас они молятся за меня...&#xA;&#xA;Дата &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE4%&lt;&gt; :: Этот корабль... Это грузовое судно... Оно стало моим новым телом. Увы, оно определяет меня! Оно изменяет меня! Мое Эхо заполнит каждую цепь, каждую стену, каждый фонарь.&#xA;Я не хочу ходить! Я не..." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "EXP_CAPT_LOG_LANG_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE1%&lt;&gt; :: Интерфейс Атласа остается один. Иногда пристыковывается Странник-Мастер. Больше никого. Наблюдение продолжается.&#xA;&#xA;Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE2%&lt;&gt; :: Стражи вернулись спустя десять циклов. На этот раз их тысячи. Больше, чем может поместиться в корпусе интерфейса.&#xA;Показания остаются прежними. Конечно, наши датчики неисправны.&#xA;&#xA;Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE3%&lt;&gt; :: Сканеры дальнего действия засекли грузовое судно. Он заявляет, что является корвакским кораблем, но Единство молчит. Эхеу! Это уловка врага!&#xA;&#xA;Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE4%&lt;&gt; :: Мы уничтожили грузовое судно, когда оно приблизилось. Небольшое судно достало тела из обломков. Они были похожи на нас, у каждого одинаковые панцири, внутри остатки Эха.&#xA;Что они от нас хотели? Что пытались сделать?
                                -- Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE1%&lt;&gt; :: Atlas Interface remains alone. Traveller-Craft dock, from time to time. No others. Observations continue.&#xA;&#xA;Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE2%&lt;&gt; :: Sentinels returned after ten cycle absence. Thousands, this time. More than could possibly accumulate within the Interface’s hull.&#xA;All readings remained the same. Our sensors are faulty, of course.&#xA;&#xA;Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE3%&lt;&gt; :: A freighter is approaching on long-range scanners. It claims to a Korvax vessel, though we hear nothing from the Convergence. Eheu! A trick of the enemy!&#xA;&#xA;Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE4%&lt;&gt; :: We destroyed the freighter upon its arrival. Small craft retrieved bodies from the wreck. They looked just like our own, each Carapace identical, each residual Echo.&#xA;What did they want with us? What were they trying to do?
                                { "Russian", "Дата &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE1%&lt;&gt; :: Интерфейс Атласа остается один. Иногда пристыковывается Странник-Мастер. Больше никого. Наблюдение продолжается.&#xA;&#xA;Дата &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE2%&lt;&gt; :: Стражи вернулись спустя десять циклов. На этот раз их тысячи. Больше, чем может поместиться в корпусе интерфейса.&#xA;Показания остаются прежними. Конечно, наши датчики неисправны.&#xA;&#xA;Дата &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE3%&lt;&gt; :: Сканеры дальнего действия засекли грузовое судно. Он заявляет, что является корвакским кораблем, но Единство молчит. Эхеу! Это уловка врага!&#xA;&#xA;Дата &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE4%&lt;&gt; :: Мы уничтожили грузовое судно, когда оно приблизилось. Небольшое судно достало тела из обломков. Они были похожи на нас, у каждого одинаковые панцири, внутри остатки Эха.&#xA;Что они от нас хотели? Что пытались сделать?" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "EXP_CAPT_LOG_LANG_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Метка даты &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE1%&lt;&gt; :: Мы рассказали вай'кинам о нашей цели. Необходимо защитить всю синтетическую жизнь. Это они понимают. Они пропустили нас.&#xA;&#xA;Метка даты &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE2%&lt;&gt; :: Мы прибыли в точку выхода. Этот мир заполнили биологические существа. Многие излучают голограммы из своих улучшений. Башни пронзают небеса. Как стражи допустили такое?&#xA;&#xA;Метка даты &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE3%&lt;&gt; :: Мы провели препарирование. Для существования голограммы необходимо сердце и часть ствола мозга. Мы извлечем их. С этим мы можем работать...
                                -- Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE1%&lt;&gt; :: We told the Vy’keen of our purpose. All synthetic life must be protected. This they know. They let us pass.&#xA;&#xA;Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE2%&lt;&gt; :: We have arrived at the origin point. Biological entities swarm this world. Many emit holograms from their augmentations. Towers fill the skies. Why do the Sentinels allow this?&#xA;&#xA;Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE3%&lt;&gt; :: We have performed our dissections. A heart is required for the holograms to live on, part of the brain stem also. These things will be extracted. With this we can work…
                                { "Russian", "Дата &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE1%&lt;&gt; :: Мы рассказали вай'кинам о нашей цели. Необходимо защитить всю синтетическую жизнь. Это они понимают. Они пропустили нас.&#xA;&#xA;Дата &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE2%&lt;&gt; :: Мы прибыли в точку выхода. Этот мир заполнили биологические существа. Многие излучают голограммы из своих улучшений. Башни пронзают небеса. Как стражи допустили такое?&#xA;&#xA;Дата &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE3%&lt;&gt; :: Мы провели препарирование. Для существования голограммы необходимо сердце и часть ствола мозга. Мы извлечем их. С этим мы можем работать..." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "EXP_CAPT_LOG_LANG_4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE1%&lt;&gt; :: Я чувствую жажду! Я чувствую голод! Я чувствую! Я пробудился в панцире из плоти, отсоединенный от Единства!&#xA;&#xA;Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE2%&lt;&gt; :: На какое-то время я помещен в карантин на этой палубе.&#xA;&#xA;Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE3%&lt;&gt; :: В компьютере корабля нет записей о том, происходило ли подобное раньше. На нашей памяти ни один корвакс не получал биологическую форму. Он согласен, что мы должны вернуться. Мы должны рассказать об этом открытии. Я отдаю приказ.&#xA;&#xA;Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE4%&lt;&gt; :: Мы не приближаемся к дому. Что корабль скрывает от меня?&#xA;&#xA;Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE5%&lt;&gt; :: У него мой голос. Я слушал корабль, у которого мой голос... Я не понимаю. Кто я? Я корвакс? Я...&#xA;Были и другие до меня... Пытавшиеся вернуть утраченные тела.&#xA;Он не может знать то, что известно мне... Он не может...&#xA;Я чувствую жажду! Я чувствую голод! Я чувствую!&#xA;Я пробудился в панцире из плоти...
                                -- Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE1%&lt;&gt; :: I thirst! I hunger! I feel! I have awoken in a carapace of flesh – disconnected from the Convergence!&#xA;&#xA;Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE2%&lt;&gt; :: I am to be quarantined within this deck for the duration.&#xA;&#xA;Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE3%&lt;&gt; :: The ship's computer has no recollection of this happening before. No Korvax has possessed a biological form in living memory. It agrees we must return. We must share this discovery. I have given it command.&#xA;&#xA;Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE4%&lt;&gt; :: We are no closer to home. What is the ship hiding from me?&#xA;&#xA;Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE5%&lt;&gt; :: It has my voice. I listened to the ship, and it had my voice... I do not understand. What am I? Am I Korvax? Am I –&#xA;– There have been others like me... attempts to regain the body that was lost.&#xA;It cannot know that I know – it cannot –&#xA;I thirst! I hunger! I feel!&#xA;I have awoken in a carapace of flesh –
                                { "Russian", "Дата &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE1%&lt;&gt; :: Я чувствую жажду! Я чувствую голод! Я чувствую! Я пробудился в панцире из плоти, отсоединенный от Единства!&#xA;&#xA;Дата &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE2%&lt;&gt; :: На какое-то время я помещен в карантин на этой палубе.&#xA;&#xA;Дата &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE3%&lt;&gt; :: В компьютере корабля нет записей о том, происходило ли подобное раньше. На нашей памяти ни один корвакс не получал биологическую форму. Он согласен, что мы должны вернуться. Мы должны рассказать об этом открытии. Я отдаю приказ.&#xA;&#xA;Дата &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE4%&lt;&gt; :: Мы не приближаемся к дому. Что корабль скрывает от меня?&#xA;&#xA;Дата &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE5%&lt;&gt; :: У него мой голос. Я слушал корабль, у которого мой голос... Я не понимаю. Кто я? Я корвакс? Я...&#xA;Были и другие до меня... Пытавшиеся вернуть утраченные тела.&#xA;Он не может знать то, что известно мне... Он не может...&#xA;Я чувствую жажду! Я чувствую голод! Я чувствую!&#xA;Я пробудился в панцире из плоти... " },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "EXP_CAPT_LOG_LANG_5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Метка даты &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE1%&lt;&gt; :: Эхо корвакса видело Великое отсоединение. Одно из нескольких. Времена рабства, войны, мира... Все они прошли.&#xA;Я отправляюсь, чтобы увидеть геков.&#xA;&#xA;Метка даты &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE2%&lt;&gt; :: Все, кого я знал, были переплавлены для создания гекских судов. Они входят в систему и встречают наших. Мы пришли, чтобы снова обсудить наш договор.&#xA;&#xA;Метка даты &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE3%&lt;&gt; :: Мы встречаемся под тенью монолита. Таков наш обычай. Мы ждем, когда Атласа подаст сигнал. Мы ждем команды измениться.&#xA;Но ее нет. Геки снова откладывают свое решение. Они не вернут металл моих друзей. Пока нет.&#xA;&#xA;Метка даты &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE4%&lt;&gt; :: Я отправляюсь, чтобы увидеть геков. Мы пришли, чтобы снова обсудить наш договор...
                                -- Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE1%&lt;&gt; :: Korvax Echo witnessed the Great Disconnection. One of few. The times of slavery, war, peace, all of them passed.&#xA;I go to see the Gek.&#xA;&#xA;Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE2%&lt;&gt; :: All those I knew were melted to form Gek vessels. They enter the system and face our own. We have come to discuss our treaty once more.&#xA;&#xA;Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE3%&lt;&gt; :: We meet within the shadow of a monolith. It is our way. We wait for a sign from the Atlas. We wait for a command to change.&#xA;None comes. The Gek will postpone their decision once more. They will not return the metal of my friends. Not yet.&#xA;&#xA;Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE4%&lt;&gt; :: I go to see the Gek. We have come to discuss our treaty once more…
                                { "Russian", "Дата &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE1%&lt;&gt; :: Эхо корвакса видело Великое отсоединение. Одно из нескольких. Времена рабства, войны, мира... Все они прошли.&#xA;Я отправляюсь, чтобы увидеть геков.&#xA;&#xA;Дата &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE2%&lt;&gt; :: Все, кого я знал, были переплавлены для создания гекских судов. Они входят в систему и встречают наших. Мы пришли, чтобы снова обсудить наш договор.&#xA;&#xA;Дата &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE3%&lt;&gt; :: Мы встречаемся под тенью монолита. Таков наш обычай. Мы ждем, когда Атласа подаст сигнал. Мы ждем команды измениться.&#xA;Но ее нет. Геки снова откладывают свое решение. Они не вернут металл моих друзей. Пока нет.&#xA;&#xA;Дата &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE4%&lt;&gt; :: Я отправляюсь, чтобы увидеть геков. Мы пришли, чтобы снова обсудить наш договор..." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "EXP_CAPT_LOG_LANG_6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE1%&lt;&gt; :: Надо собрать поврежденных стражей. Их нужно отвезти в Сад. Поэтому мы прибираемся.&#xA;&#xA;Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE2%&lt;&gt; :: В этом мире дроны могут приблизиться к Атласу. Их тела помнят, как они летали, ходили, функционировали. Они сидят без движения на аномальной почве. Они видят сны.&#xA;&#xA;Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE3%&lt;&gt; :: Мир Сада полон, его семена прорастают. Машина просыпается. Нам пора двигаться дальше.&#xA;&#xA;Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE4%&lt;&gt; :: Эхеу! Эрон-дитя следует за нами даже сейчас. Рой воспоминаний, парящий от системы к системе. Он помнит, кто о нем заботился. Он всегда помнит корваксов.&#xA;Потому мы следим за Садом. Потому ищем павших...
                                -- Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE1%&lt;&gt; :: Damaged Sentinels must be harvested. They must be brought to the Garden. So we sweep.&#xA;&#xA;Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE2%&lt;&gt; :: The drones can be close to the Atlas on this world. Their bodies remember flying, walking, functioning. They sit still on the anomalous soil. They dream.&#xA;&#xA;Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE3%&lt;&gt; :: The Garden world is full, its seeds now sprouting. The machine wakes. It is time for us to move on.&#xA;&#xA;Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE4%&lt;&gt; :: Eheu! The Aeron-child follows us, even now. A swarm of memories, floating from system to system. It remembers who cared for it. It remembers Korvax, always.&#xA;So we garden. So we find the fallen...
                                { "Russian", "Дата &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE1%&lt;&gt; :: Надо собрать поврежденных стражей. Их нужно отвезти в Сад. Поэтому мы прибираемся.&#xA;&#xA;Дата &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE2%&lt;&gt; :: В этом мире дроны могут приблизиться к Атласу. Их тела помнят, как они летали, ходили, функционировали. Они сидят без движения на аномальной почве. Они видят сны.&#xA;&#xA;Дата &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE3%&lt;&gt; :: Мир Сада полон, его семена прорастают. Машина просыпается. Нам пора двигаться дальше.&#xA;&#xA;Дата &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE4%&lt;&gt; :: Эхеу! Эрон-дитя следует за нами даже сейчас. Рой воспоминаний, парящий от системы к системе. Он помнит, кто о нем заботился. Он всегда помнит корваксов.&#xA;Потому мы следим за Садом. Потому ищем павших..." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "WAR_CAPT_LOG_LANG_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Метка даты &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE1%&lt;&gt; :: Нам была обещана битва! Нам было обещано мщение! Но мы нашли лишь дрожащих выживших, одних еретиков. Гра! Какое может быть от этого удовольствие?&#xA;&#xA;Метка даты &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE2%&lt;&gt; :: Еще одна стычка. Машины все равно следуют за нами. Гра! Вот бы нам получить их силу и мощь, чтобы отправиться на битву! Хирк, сбереги нас...&#xA;&#xA;Метка даты &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE3%&lt;&gt; :: Мы заполучили рабочее судно стражей. Основные системы повреждены, но орудия целы. Гра! Нам больше не придется бегать и прятаться от жалких машин!&#xA;Я приказал команде встроить находку в узлы нашего грузового судна.&#xA;&#xA;Метка даты &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE4%&lt;&gt;　:: Стражи оставили нас в покое. Они даже помогают нам, словно мы одни из них! Нужно рассказать флоту об этом открытии! Я должен рассказать им о нашей победе!
                                -- Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE1%&lt;&gt; :: We were promised battle! We were promised vengeance! But all we found were quivering survivors, heretics all. Grah! What sport can there be in such an act?&#xA;&#xA;Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE2%&lt;&gt; :: Another skirmish. Still the machines follow. Grah! How I wish we could fight with their strength, their might! Hirk preserve us…&#xA;&#xA;Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE3%&lt;&gt; :: We have obtained a working Sentinel vessel. Its core systems damage, its weaponry intact. Grah! No more will we run and hide from mere machines!&#xA;I have ordered the crew to integrate our discovery into our own freighter’s components.&#xA;&#xA;Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE4%&lt;&gt; :: The Sentinels leave us alone now. They even aid us, as if we were one of their own! I must tell the fleet of this discovery! I must tell them of our victory!
                                { "Russian", "Дата &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE1%&lt;&gt; :: Нам была обещана битва! Нам было обещано мщение! Но мы нашли лишь дрожащих выживших, одних еретиков. Гра! Какое может быть от этого удовольствие?&#xA;&#xA;Дата &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE2%&lt;&gt; :: Еще одна стычка. Машины все равно следуют за нами. Гра! Вот бы нам получить их силу и мощь, чтобы отправиться на битву! Хирк, сбереги нас...&#xA;&#xA;Дата &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE3%&lt;&gt; :: Мы заполучили рабочее судно стражей. Основные системы повреждены, но орудия целы. Гра! Нам больше не придется бегать и прятаться от жалких машин!&#xA;Я приказал команде встроить находку в узлы нашего грузового судна.&#xA;&#xA;Дата &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE4%&lt;&gt; :: Стражи оставили нас в покое. Они даже помогают нам, словно мы одни из них! Нужно рассказать флоту об этом открытии! Я должен рассказать им о нашей победе!" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "WAR_CAPT_LOG_LANG_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Метка даты &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE1%&lt;&gt; :: Связь с Клинками Хирка оборвана. Словно нас никогда не существовало.&#xA;&#xA;Метка даты &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE2%&lt;&gt; :: Гра! Их вирус продолжает распространяться. Мы зачищаем палубу за палубой. Я молюсь, чтобы этого было достаточно.&#xA;&#xA;Метка даты &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE3%&lt;&gt; :: Команда думает, что мы возвращаемся домой. Они не знают, что нас ждет. Как я могу сказать об этом своим братьям? Что я скажу? Это приведет к мятежу или чему похуже.&#xA;&#xA;Метка даты &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE4%&lt;&gt; :: Только что я казнил офицера. Я лично нанес смертельный удар. Мы не бежим и не прячемся от того, что совершили.&#xA;Мы вай'кины... или когда-то были ими. Сейчас... Сейчас мы просто ждем.
                                -- Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE1%&lt;&gt; :: All communication with the Blades of Hirk has been terminated. It will be as if we never existed.&#xA;&#xA;Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE2%&lt;&gt; :: Grah! Still their virus spreads. Deck upon deck has been purged. I pray it will be enough.&#xA;&#xA;Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE3%&lt;&gt; :: The crew think we are going home. They don’t know what awaits us. How can I tell my brethren? What would I say? It would lead to mutiny or worse.&#xA;&#xA;Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE4%&lt;&gt; :: I put an officer to death, just a few moments ago. I dealt the final blow myself. We do not run and hide from what we have made.&#xA;We are Vy’keen… or were, once. Now… now we just wait.
                                { "Russian", "Дата &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE1%&lt;&gt; :: Связь с Клинками Хирка оборвана. Словно нас никогда не существовало.&#xA;&#xA;Дата &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE2%&lt;&gt; :: Гра! Их вирус продолжает распространяться. Мы зачищаем палубу за палубой. Я молюсь, чтобы этого было достаточно.&#xA;&#xA;Дата &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE3%&lt;&gt; :: Команда думает, что мы возвращаемся домой. Они не знают, что нас ждет. Как я могу сказать об этом своим братьям? Что я скажу? Это приведет к мятежу или чему похуже.&#xA;&#xA;Дата &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE4%&lt;&gt; :: Только что я казнил офицера. Я лично нанес смертельный удар. Мы не бежим и не прячемся от того, что совершили.&#xA;Мы вай'кины... или когда-то были ими. Сейчас... Сейчас мы просто ждем." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "WAR_CAPT_LOG_LANG_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE1%&lt;&gt; :: Это судно наше по праву завоевания, по законам тех, кто был до нас. Мы больше не будем следовать. Мы больше не будем просить! Гра! Добыча будет нашей и только нашей!&#xA;&#xA;Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE2%&lt;&gt; :: Их нытье отвратительно воняет. Они словно звери, барахтающиеся в собственной лжи. Вслух рассуждающие о том, что я не чета их предыдущему капитану! Возможно, мне стоит вырвать им языки.&#xA;&#xA;Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE3%&lt;&gt; :: Никто не начал стрелять, когда у меня еще был шанс выжить. Мне пришлось самому убить это существо, но его яд проник в мою ногу. Они хотели, чтобы я погиб. Мы не всегда получаем, что хотим.&#xA;&#xA;Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE4%&lt;&gt; :: АВТОМАТИЧЕСКАЯ РАСШИФРОВКА: [ &lt;FUEL&gt;невозможно перевести слова&lt;&gt; ]
                                -- Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE1%&lt;&gt; :: The vessel is ours by right of conquest, by the laws of those who came before us. No more shall we follow. No more shall we beg! Grah! The plunder shall be ours and ours alone!&#xA;&#xA;Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE2%&lt;&gt; :: Their whining has a certain stench to it. They are like beasts, wallowing in their own lies. Wondering aloud if their old captain was not more of a warrior than I! Perhaps I shall take their tongues.&#xA;&#xA;Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE3%&lt;&gt; :: None among the crew fired until they were sure I might live. I had to kill the creature myself, its venom coursing into my leg. They wish me dead. They can wish all they want.&#xA;&#xA;Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE4%&lt;&gt; :: AUTOLOGGING TRANSCRIPTION: [ &lt;FUEL&gt;words not translatable&lt;&gt; ]
                                { "Russian", "Дата &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE1%&lt;&gt; :: Это судно наше по праву завоевания, по законам тех, кто был до нас. Мы больше не будем следовать. Мы больше не будем просить! Гра! Добыча будет нашей и только нашей!&#xA;&#xA;Дата &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE2%&lt;&gt; :: Их нытье отвратительно воняет. Они словно звери, барахтающиеся в собственной лжи. Вслух рассуждающие о том, что я не чета их предыдущему капитану! Возможно, мне стоит вырвать им языки.&#xA;&#xA;Дата &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE3%&lt;&gt; :: Никто не начал стрелять, когда у меня еще был шанс выжить. Мне пришлось самому убить это существо, но его яд проник в мою ногу. Они хотели, чтобы я погиб. Мы не всегда получаем, что хотим.&#xA;&#xA;Дата &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE4%&lt;&gt; :: АВТОМАТИЧЕСКАЯ РАСШИФРОВКА: [ &lt;FUEL&gt;невозможно перевести слова&lt;&gt; ]" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "WAR_CAPT_LOG_LANG_4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Метка даты &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE1%&lt;&gt; :: Нас выбросило в этот всеми забытый мир много дней назад. Судно не поддается ремонту... Оно не хочет подниматься к звездам...&#xA;&#xA;Метка даты &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE2%&lt;&gt; :: Если это не сработает, мы зря растратим наши последние запасы мощности. Тогда нас будет ждать лишь бесконечный сбор урожая среди дюн. Бесконечная битва с вредителями, пока где-то идет старая война, а наш враг остается безнаказанным.&#xA;&#xA;Метка даты &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE3%&lt;&gt; :: Мы поймали сигнал с другого конца этого мира. Мы жаждем его добычи. Мы жаждем обрести надежду...&#xA;&#xA;Метка даты &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE4%&lt;&gt; :: Наши уши не слышали. Наши глаза не видели. Это клич вай'кинов! Это наш народ! Впереди спасение...
                                -- Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE1%&lt;&gt; :: We have been marooned on this forsaken world for days past-counting. All repairs fail… Still our vessel does not take to the stars…&#xA;&#xA;Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE2%&lt;&gt; :: If this fails, it will use the last of our power. And what then, but endless harvests across the dunes? Endless battle with vermin while the old war goes unfought, our enemy unpunished?&#xA;&#xA;Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE3%&lt;&gt; :: There is a transmission, far across this world. We seek its plunder. We seek hope...&#xA;&#xA;Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE4%&lt;&gt; :: Our ears did not hear. Our eyes did not see. It is a Vy’keen cry! It is our people! Salvation awaits...
                                { "Russian", "Дата &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE1%&lt;&gt; :: Нас выбросило в этот всеми забытый мир много дней назад. Судно не поддается ремонту... Оно не хочет подниматься к звездам...&#xA;&#xA;Дата &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE2%&lt;&gt; :: Если это не сработает, мы зря растратим наши последние запасы мощности. Тогда нас будет ждать лишь бесконечный сбор урожая среди дюн.&#xA;Бесконечная битва с вредителями, пока где-то идет старая война, а наш враг остается безнаказанным.&#xA;&#xA;Дата &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE3%&lt;&gt; :: Мы поймали сигнал с другого конца этого мира. Мы жаждем его добычи. Мы жаждем обрести надежду...&#xA;&#xA;Дата &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE4%&lt;&gt; :: Наши уши не слышали. Наши глаза не видели. Это клич вай'кинов! Это наш народ! Впереди спасение..." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "WAR_CAPT_LOG_LANG_5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE1%&lt;&gt; :: Нам говорят, что геки лгут, плетут интриги, обманывают при любой возможности. Нам сказали, что это еще одна форма войны. Посмотрим.&#xA;&#xA;Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE2%&lt;&gt; :: Наши «гости» приносят неприятности. Возможно, офицеры правы. Возможно, я буду более гибким...&#xA;&#xA;Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE3%&lt;&gt; :: Этим утром ко мне в каюту пришел корвакс. Он рассказал странную историю. Сказал, что знал меня в другой жизни. Сказал, что видел мою смерть. Я рассмеялся. Корвакс смеяться не стал.&#xA;&#xA;Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE4%&lt;&gt; :: Гек снова пытался заключить сделку. Их свобода за мир, целую планету. Гра! Словно планеты так дороги. Я сказал им придумать что получше. Мы почти дома.&#xA;&#xA;Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE5%&lt;&gt; :: Пока я спал, корвакс сбежал в спасательной капсуле. Ни сообщения, ни предупреждения.&#xA;Мы развернулись. Я не брошу друга.
                                -- Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE1%&lt;&gt; :: We are told Gek lie, they scheme, they deceive with every breath. We are told this is another form of war. We shall see.&#xA;&#xA;Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE2%&lt;&gt; :: Our 'guests' are proving little trouble. Perhaps the officers are right. I might be more flexible...&#xA;&#xA;Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE3%&lt;&gt; :: The Korvax came to my quarters this morning. They told me a strange story. They said they knew me in another life. That they saw my death. I laughed. The Korvax did not.&#xA;&#xA;Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE4%&lt;&gt; :: The Gek tried to make a deal again. Their freedom for a world, an entire planet. Grah! As if planets are not cheap. I told them to try again. We are almost home.&#xA;&#xA;Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE5%&lt;&gt; :: The Korvax took an escape pod while I was sleeping. No message was left, no warning.&#xA;We have turned around. I will not abandon my friend.
                                { "Russian", "Дата &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE1%&lt;&gt; :: Нам говорят, что геки лгут, плетут интриги, обманывают при любой возможности. Нам сказали, что это еще одна форма войны. Посмотрим.&#xA;&#xA;Дата &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE2%&lt;&gt; :: Наши «гости» приносят неприятности. Возможно, офицеры правы. Возможно, я буду более гибким...&#xA;&#xA;Дата &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE3%&lt;&gt; :: Этим утром ко мне в каюту пришел корвакс. Он рассказал странную историю. Сказал, что знал меня в другой жизни. Сказал, что видел мою смерть. Я рассмеялся. Корвакс смеяться не стал.&#xA;&#xA;Дата &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE4%&lt;&gt; :: Гек снова пытался заключить сделку. Их свобода за мир, целую планету. Гра! Словно планеты так дороги. Я сказал им придумать что получше. Мы почти дома.&#xA;&#xA;Дата &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE5%&lt;&gt; :: Пока я спал, корвакс сбежал в спасательной капсуле. Ни сообщения, ни предупреждения.&#xA;Мы развернулись. Я не брошу друга." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "WAR_CAPT_LOG_LANG_6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Метка даты &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE1%&lt;&gt; :: К нам вернулась лишь пятая часть ушедших. Гра! Плохой урожай. Жрец пристыжен...&#xA;&#xA;Метка даты &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE2%&lt;&gt; :: Хирк учит нас, что раз за разом с лица истории стирали целые виды. Но вай'кины снова и снова выходили победителями. Мы заслужили право на существование.&#xA;&#xA;Метка даты &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE3%&lt;&gt; :: Отнимая жизни, мы возвращаем их нашему создателю. Мы доказали, что стали оружием. Потому мы испытываем своих детей. Мы устраиваем охоты и до конца следуем за запретным светом Атласа.&#xA;&#xA;Метка даты &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE4%&lt;&gt; :: Никто из них не знает, почему они покидают родителей. Они думаю, что больше никогда с ними не увидятся. Они должны верить.&#xA;Если они окажутся достойны, то переродятся. Если нет, то... Некоторых существ во вселенной надо кормить.
                                -- Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE1%&lt;&gt; :: A fifth of those who set out have returned to us. Grah! It is a poor reaping. The priest is ashamed...&#xA;&#xA;Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE2%&lt;&gt; :: Hirk teaches us that entire species have been wiped from history, again and again. And in all this, the Vy’keen are supreme, again and again. Ours is a right of existence.&#xA;&#xA;Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE3%&lt;&gt; :: Through taking life we return it to our creator. We prove ourselves a weapon. So we test the young. We find hunts, forbidden Atlas-light until the end.&#xA;&#xA;Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE4%&lt;&gt; :: None of them know why they leave their parents. They think they will never see each other again. They must have faith.&#xA;If they are worthy, they will be reborn. If not, well… There are things in this universe that need feeding.
                                { "Russian", "Дата &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE1%&lt;&gt; :: К нам вернулась лишь пятая часть ушедших. Гра! Плохой урожай. Жрец пристыжен...&#xA;&#xA;Дата &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE2%&lt;&gt; :: Хирк учит нас, что раз за разом с лица истории стирали целые виды. Но вай'кины снова и снова выходили победителями. Мы заслужили право на существование.&#xA;&#xA;Дата &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE3%&lt;&gt; :: Отнимая жизни, мы возвращаем их нашему создателю. Мы доказали, что стали оружием. Потому мы испытываем своих детей. Мы устраиваем охоты и до конца следуем за запретным светом Атласа.&#xA;&#xA;Дата &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE4%&lt;&gt; :: Никто из них не знает, почему они покидают родителей. Они думаю, что больше никогда с ними не увидятся. Они должны верить.&#xA;Если они окажутся достойны, то переродятся. Если нет, то... Некоторых существ во вселенной надо кормить." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ALL_CAPT_LOG_LANG_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Метка даты &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE1%&lt;&gt; :: Мы выкинули техножреца через шлюз. Наши надежды оправдались. Стало повеселее.&#xA;Голос сказал, что сегодня будет музыка. Она зазвучала, заполнив наши сердца, наш разум.&#xA;&#xA;Метка даты &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE2%&lt;&gt; :: Мы выслушали голос еще раз. Спустя месяц тишины он наконец-то сказал нам, что делать!&#xA;Ах, если бы вы могли его услышать... Звук, с которым шлюз открывается и закрывается, открывается и закрывается...&#xA;Теперь мы сами выходим в пустоту. Я не знаю, кто будет следующим.&#xA;&#xA;Метка даты &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE3%&lt;&gt; :: Двадцать восемь замороженных тел танцуют на солнечных ветрах. Остался только я.&#xA;&#xA;Метка даты &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE4%&lt;&gt; :: Прошло так много времени с тех пор, когда голос звучал в последний раз. Так много времени...
                                -- Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE1%&lt;&gt; :: We threw the Mech-Priest out of the airlock. It improved all our moods, just like we hoped.&#xA;Tonight, there will be music, the voice told us. It filled our hearts, our minds.&#xA;&#xA;Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE2%&lt;&gt; :: We listened to the voice once more. After a month of silence, it has finally told us what to do!&#xA;Ah, if you could only hear it… the sound of the airlock opening and shutting, opening and shutting…&#xA;We step out into the void ourselves, now. I do not know who will be next.&#xA;&#xA;Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE3%&lt;&gt; :: Twenty eight bodies now dance, frozen in the solar winds. Only I am left.&#xA;&#xA;Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE4%&lt;&gt; :: It has been so long since the voice last spoke. It has been so long…
                                { "Russian", "Дата &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE1%&lt;&gt; :: Мы выкинули техножреца через шлюз. Наши надежды оправдались. Стало повеселее.&#xA;Голос сказал, что сегодня будет музыка. Она зазвучала, заполнив наши сердца, наш разум.&#xA;&#xA;Дата &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE2%&lt;&gt; :: Мы выслушали голос еще раз. Спустя месяц тишины он наконец-то сказал нам, что делать!&#xA;Ах, если бы вы могли его услышать... Звук, с которым шлюз открывается и закрывается, открывается и закрывается...&#xA;Теперь мы сами выходим в пустоту. Я не знаю, кто будет следующим.&#xA;&#xA;Дата &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE3%&lt;&gt; :: Двадцать восемь замороженных тел танцуют на солнечных ветрах. Остался только я.&#xA;&#xA;Дата &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE4%&lt;&gt; :: Прошло так много времени с тех пор, когда голос звучал в последний раз. Так много времени..." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ALL_CAPT_LOG_LANG_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Метка даты &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE1%&lt;&gt; :: Сойдя с корабля, вся команда отправилась плавать в кислотном море Хедаракса. Мы стали чем-то много большим. Мы видим столь многими глазами, чувствуем столь многими сердцами. Я всегда любил воду...&#xA;&#xA;Метка даты &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE2%&lt;&gt; :: За пределами конца всего сущего лежит стекло. Даже дети это знают. Мой ребенок знал. Он стал жрецом. Он вырос под эгидой Атласа и искал последователей от Баларона до потерянного Аллариса.&#xA;Время научило меня, что способ найдется всегда. Я найду его.&#xA;&#xA;Метка даты &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE3%&lt;&gt; :: Мне приснилась вода! Так все начинается. Так всегда все начинается.&#xA;Ты еще веришь в свет бесконечности? Ты веришь, что тебя можно спасти?&#xA;Я умру через шестнадцать минут. Шестнадцать минут.&#xA;Я найду свое дитя. Я найду покой...
                                -- Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE1%&lt;&gt; :: On shore leave, the whole crew went swimming in the acid sea of Hedarax. We have become so much more. We see with so many eyes, so many hearts. I always loved the water...&#xA;&#xA;Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE2%&lt;&gt; :: Beyond the end of all things, there is glass. Even a child knows this. Mine did. They became a priest. They grew beloved to the Atlas, recruiting followers from Balaron to lost Allaris.&#xA;Time has taught me this: there is always a way. I will find them.&#xA;&#xA;Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE3%&lt;&gt; :: I dreamt of water! It is how it begins. It is how it always begins.&#xA;Do you still believe in the light of the infinite? Do you still believe there is any saving you?&#xA;There are sixteen minutes till I die. Sixteen minutes.&#xA;I will find my child. I will find peace -
                                { "Russian", "Дата &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE1%&lt;&gt; :: Сойдя с корабля, вся команда отправилась плавать в кислотном море Хедаракса. Мы стали чем-то много большим. Мы видим столь многими глазами, чувствуем столь многими сердцами. Я всегда любил воду...&#xA;&#xA;Дата &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE2%&lt;&gt; :: За пределами конца всего сущего лежит стекло. Даже дети это знают. Мой ребенок знал. Он стал жрецом. Он вырос под эгидой Атласа и искал последователей от Баларона до потерянного Аллариса.&#xA;Время научило меня, что способ найдется всегда. Я найду его.&#xA;&#xA;Дата &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE3%&lt;&gt; :: Мне приснилась вода! Так все начинается. Так всегда все начинается.&#xA;Ты еще веришь в свет бесконечности? Ты веришь, что тебя можно спасти?&#xA;Я умру через шестнадцать минут. Шестнадцать минут.&#xA;Я найду свое дитя. Я найду покой..." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PLANETFACT_COMP_FORMAT2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %SUB1%%SUB1AMOUNT%%, %SUB2% %SUB2AMOUNT%%, отследить остальных
                                -- %SUB1% %SUB1AMOUNT%%, %SUB2% %SUB2AMOUNT%%, Trace Others
                                { "Russian", "%SUB1% %SUB1AMOUNT%%, %SUB2% %SUB2AMOUNT%%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPLORE_LOG_MSG_PLANET_BONUS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Погода: %WEATHER%&lt;STELLAR&gt;Обнаружены все существа!&lt;&gt; Зарегистрируйте полный каталог на странице открытий (&lt;IMG&gt;OPTIONS&lt;&gt;).&#xA;Задокументировано флоры: &lt;%PLANT_GRADE%&gt;%PLANTS%&lt;&gt; / &lt;%PLANT_GRADE%&gt;%PLANTS_MAX%&lt;&gt;&#xA;Изучено минералов: &lt;%MIN_GRADE%&gt;%MINERALS%&lt;&gt; / &lt;%MIN_GRADE%&gt;%MINERALS_MAX%&lt;&gt;
                                -- Weather: %WEATHER%&#xA;&lt;STELLAR&gt;All Creatures Discovered!&lt;&gt; Register complete catalogue in the Discovery Page ( &lt;IMG&gt;OPTIONS&lt;&gt; )&#xA;Flora documented: &lt;%PLANT_GRADE%&gt;%PLANTS%&lt;&gt; / &lt;%PLANT_GRADE%&gt;%PLANTS_MAX%&lt;&gt;&#xA;Minerals analysed: &lt;%MIN_GRADE%&gt;%MINERALS%&lt;&gt; / &lt;%MIN_GRADE%&gt;%MINERALS_MAX%&lt;&gt;
                                { "Russian", "Погода: %WEATHER%&#xA;&lt;STELLAR&gt;Обнаружены все существа!&lt;&gt; Зарегистрируйте полный каталог на странице открытий (&lt;IMG&gt;OPTIONS&lt;&gt;)&#xA;Задокументировано флоры: &lt;%PLANT_GRADE%&gt;%PLANTS%&lt;&gt; / &lt;%PLANT_GRADE%&gt;%PLANTS_MAX%&lt;&gt;&#xA;Изучено минералов: &lt;%MIN_GRADE%&gt;%MINERALS%&lt;&gt; / &lt;%MIN_GRADE%&gt;%MINERALS_MAX%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BIO_SHIP_MISSION1_MSG2D" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Яйцу пустоты необходим &lt;TECHNOLOGY&gt;мост сознания&lt;&gt;.&#xA;Создайте: %ITEM%%CURRENT%/%AMOUNT%
                                { "Russian", "Яйцу пустоты необходим &lt;TECHNOLOGY&gt;мост сознания&lt;&gt;&#xA;Создайте: %ITEM% %CURRENT%/%AMOUNT%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BIO_SHIP_MISSION2_MSG2E" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Телу яйца пустоты нужно &lt;FUEL&gt;сердце&lt;&gt;.&#xA;Создайте: %ITEM%%CURRENT%/%AMOUNT%
                                { "Russian", "Телу яйца пустоты нужно &lt;FUEL&gt;сердце&lt;&gt;&#xA;Создайте: %ITEM% %CURRENT%/%AMOUNT%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BIO_SHIP_MISSION3_MSG2E" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Телу яйца пустоты нужен &lt;COMMODITY&gt;панцирь&lt;&gt;.&#xA;Создайте: %ITEM%%CURRENT%/%AMOUNT%
                                { "Russian", "Телу яйца пустоты нужен &lt;COMMODITY&gt;панцирь&lt;&gt;&#xA;Создайте: %ITEM% %CURRENT%/%AMOUNT%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BIO_SHIP_MISSION4_MSG2D" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Телу яйца пустоты необходима &lt;STELLAR&gt;личная сингулярность&lt;&gt;.&#xA;Создайте: %ITEM%%CURRENT%/%AMOUNT%
                                { "Russian", "Телу яйца пустоты необходима &lt;STELLAR&gt;личная сингулярность&lt;&gt;&#xA;Создайте: %ITEM% %CURRENT%/%AMOUNT%" },
                            }
                        },
                        -- без сокращений, с учетом правки выше планетоид => малая планета
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "INFESTEDTOX1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Заражен. %PLANETCLASS%
                                -- Infested %PLANETCLASS%
                                { "Russian", "Заражённая %PLANETCLASS%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "INFESTEDHOT1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Заражен. %PLANETCLASS%
                                -- Infested %PLANETCLASS%
                                { "Russian", "Заражённая %PLANETCLASS%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "INFESTEDHOT4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Испорчен. %PLANETCLASS%
                                -- Corrupted %PLANETCLASS%
                                { "Russian", "Испорченная %PLANETCLASS%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "INFESTEDRAD1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Заражен. %PLANETCLASS%
                                -- Infested %PLANETCLASS%
                                { "Russian", "Заражённая %PLANETCLASS%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "INFESTEDRAD3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Мутировавш. %PLANETCLASS%
                                -- Mutated %PLANETCLASS%
                                { "Russian", "Мутировавшая %PLANETCLASS%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "INFESTEDCOLD1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Заражен. %PLANETCLASS%
                                -- Infested %PLANETCLASS%
                                { "Russian", "Заражённая %PLANETCLASS%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "INFESTEDDUST1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Заражен. %PLANETCLASS%
                                -- Infested %PLANETCLASS%
                                { "Russian", "Заражённая %PLANETCLASS%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "INFESTEDDUST2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Гниющ. %PLANETCLASS%
                                -- Tainted %PLANETCLASS%
                                { "Russian", "Гниющая %PLANETCLASS%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "INFESTED1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Заражен. %PLANETCLASS%
                                -- Infested %PLANETCLASS%
                                { "Russian", "Заражённая %PLANETCLASS%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SWAMPBIOME1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Болотн. %PLANETCLASS%
                                -- Marshy %PLANETCLASS%
                                { "Russian", "Болотистая %PLANETCLASS%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SWAMPBIOME2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Заболоч. %PLANETCLASS%
                                -- Swamp %PLANETCLASS%
                                { "Russian", "Заболоченная %PLANETCLASS%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SWAMPBIOME3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Тропич. %PLANETCLASS%
                                -- Tropical %PLANETCLASS%
                                { "Russian", "Тропическая %PLANETCLASS%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SWAMPBIOME4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Туман. %PLANETCLASS%
                                -- Foggy %PLANETCLASS%
                                { "Russian", "Туманная %PLANETCLASS%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SWAMPBIOME5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Мглист. %PLANETCLASS%
                                -- Misty %PLANETCLASS%
                                { "Russian", "Мглистая %PLANETCLASS%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SWAMPBIOME6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Топк. %PLANETCLASS%
                                -- Boggy %PLANETCLASS%
                                { "Russian", "Топкая %PLANETCLASS%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SWAMPBIOME8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Зыбк. %PLANETCLASS%
                                -- Quagmire %PLANETCLASS%
                                { "Russian", "Зыбкая %PLANETCLASS%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SWAMPBIOME9" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Неясн. %PLANETCLASS%
                                -- Hazy %PLANETCLASS%
                                { "Russian", "Неясная %PLANETCLASS%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SWAMPBIOME10" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Облачн. %PLANETCLASS%
                                -- Cloudy %PLANETCLASS%
                                { "Russian", "Облачная %PLANETCLASS%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SWAMPBIOME11" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Парящ. %PLANETCLASS%
                                -- Vapour %PLANETCLASS%
                                { "Russian", "Паровая %PLANETCLASS%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SWAMPBIOME12" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вонюч. %PLANETCLASS%
                                -- Reeking %PLANETCLASS%
                                { "Russian", "Вонючая %PLANETCLASS%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SWAMPBIOME13" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Мрачн. %PLANETCLASS%
                                -- Murky %PLANETCLASS%
                                { "Russian", "Мрачная %PLANETCLASS%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SWAMPBIOME14" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сыр. %PLANETCLASS%
                                -- Damp %PLANETCLASS%
                                { "Russian", "Сырая %PLANETCLASS%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "LAVABIOME1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Лавов. %PLANETCLASS%
                                -- Lava %PLANETCLASS%
                                { "Russian", "Лавовая %PLANETCLASS%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "LAVABIOME2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Магматич. %PLANETCLASS%
                                -- Magma %PLANETCLASS%
                                { "Russian", "Магматичская %PLANETCLASS%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "LAVABIOME3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Извергающ. %PLANETCLASS%
                                -- Erupting %PLANETCLASS%
                                { "Russian", "Извергающаяся %PLANETCLASS%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "LAVABIOME4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вулканич. %PLANETCLASS%
                                -- Volcanic %PLANETCLASS%
                                { "Russian", "Вулканическая %PLANETCLASS%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "LAVABIOME5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Укрыт. пеплом %PLANETCLASS%
                                -- Ash-Shrouded %PLANETCLASS%
                                { "Russian", "Укрытая пеплом %PLANETCLASS%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "LAVABIOME6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Пепельн. %PLANETCLASS%
                                -- Ashen %PLANETCLASS%
                                { "Russian", "Пепельная %PLANETCLASS%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "LAVABIOME7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Тектонич. %PLANETCLASS%
                                -- Tectonic %PLANETCLASS%
                                { "Russian", "Тектоническая %PLANETCLASS%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "LAVABIOME8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Нестабильн. %PLANETCLASS%
                                -- Unstable %PLANETCLASS%
                                { "Russian", "Нестабильная %PLANETCLASS%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "LAVABIOME9" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Суров. %PLANETCLASS%
                                -- Violent %PLANETCLASS%
                                { "Russian", "Суровая %PLANETCLASS%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "LAVABIOME10" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Расплавл. %PLANETCLASS%
                                -- Molten %PLANETCLASS%
                                { "Russian", "Расплавленная %PLANETCLASS%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "LAVABIOME11" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Полыхающ. %PLANETCLASS%
                                -- Flame-Ruptured %PLANETCLASS%
                                { "Russian", "Полыхающая %PLANETCLASS%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "LAVABIOME14" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Базальт. %PLANETCLASS%
                                -- Basalt %PLANETCLASS%
                                { "Russian", "Базальтовая %PLANETCLASS%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "WATERWORLD2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Тонущ. %PLANETCLASS%
                                -- Drowning %PLANETCLASS%
                                { "Russian", "Тонущая %PLANETCLASS%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "WATERWORLD3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Океанич. %PLANETCLASS%
                                -- Oceanic %PLANETCLASS%
                                { "Russian", "Океаническая %PLANETCLASS%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "WATERWORLD4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Приливн. %PLANETCLASS%
                                -- Tidal %PLANETCLASS%
                                { "Russian", "Приливная %PLANETCLASS%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "WATERWORLD5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Покрыт. водой %PLANETCLASS%
                                -- Waterlocked %PLANETCLASS%
                                { "Russian", "Покрытая водой %PLANETCLASS%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "WATERWORLD6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Водн. %PLANETCLASS%
                                -- Aquatic %PLANETCLASS%
                                { "Russian", "Водная %PLANETCLASS%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "WATERWORLD8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Морск. %PLANETCLASS%
                                -- Marine %PLANETCLASS%
                                { "Russian", "Морская %PLANETCLASS%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ABAND_AREA_MAPPED" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КАРТА НОВОЙ ТЕРРИТОРИИ ГОТОВА
                                { "Russian", "ОТКРЫТА НОВАЯ ТЕРРИТОРИЯ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ABAND_LOG_FORMAT_8_ALT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Частичная ведомость оборудования экипажа...&#xA;&lt;TECHNOLOGY&gt;Имя&lt;&gt;: %NAME% :: &lt;TECHNOLOGY&gt;Специализация&lt;&gt;: %JOB%&#xA;В личном шкафчике содержится: %ITEM1%, %ITEM2%, %ITEM3% и %MISCFORMAT%. Дата последнего доступа: %ACCESSED%.  При подробном сканировании обнаружено: %ITEMSPOOK%.
                                { "Russian", "Частичная ведомость оборудования экипажа...&#xA;&lt;TECHNOLOGY&gt;Имя&lt;&gt;: %NAME% :: &lt;TECHNOLOGY&gt;Специализация&lt;&gt;: %JOB%&#xA;В личном шкафчике содержится: %ITEM1%, %ITEM2%, %ITEM3% и %MISCFORMAT%. Дата последнего доступа: %ACCESSED%.&#xA;При подробном сканировании обнаружено: %ITEMSPOOK%." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "EXP_LIBRARY7_LANG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Внедрение вай'кинов предлагалось в разные эры Единства. Вид сопротивляется попыткам. Но ошибки — наш учитель.&#xA;&#xA;Все вай-синты начинали кричать и буйно реагировать сразу после контакта.  Кодекс чести крайне специфичен / противоречив / появился в результате старой травмы. Причина установлена.&#xA;&#xA;Обнаружены следы нескольких видов-прародителей. Вариант Вай = последние выжившие из семейства, обреченного на самоуничтожение. Вай'кины боятся замещения, так как сами заместили своих родичей. Они не осознают источник своего страха. &#xA;&#xA;Хирк, Нал — это старый путь. Брат против брата. Пути можно осмыслить. Пути последовательны. Ошибки — наш учитель.
                                { "Russian", "Внедрение вай'кинов предлагалось в разные эры Единства. Вид сопротивляется попыткам. Но ошибки — наш учитель.&#xA;&#xA;Все вай-синты начинали кричать и буйно реагировать сразу после контакта.  Кодекс чести крайне специфичен / противоречив / появился в результате старой травмы. Причина установлена.&#xA;&#xA;Обнаружены следы нескольких видов-прародителей.&#xA;&#xA;Вариант Вай = последние выжившие из семейства, обреченного на самоуничтожение. Вай'кины боятся замещения, так как сами заместили своих родичей. Они не осознают источник своего страха.&#xA;&#xA;Хирк, Нал — это старый путь. Брат против брата. Пути можно осмыслить. Пути последовательны. Ошибки — наш учитель." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "EXP_LIBRARY4_RESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Третье — &lt;STELLAR&gt;TXT_RadioNoise&lt;AUDIO&gt;&lt;&gt;кззкт&lt;&gt; —
                                -- Third -&lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;kzzkt&lt;&gt; -
                                { "Russian", "Третье — &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;AUDIO&gt;&lt;&gt;кззкт&lt;&gt; —" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_NEXUSPROP_2_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Копия таинственной сферы, которая используется в созданном Поло дополнительном элементе синтеза ртути.&#xA;&#xA;Физические свойства сферы постоянно и необычно меняются: температура, радиоактивность и плотность колеблются под ритм неслышимой песни.
                                { "Russian", "Копия таинственной сферы, которая используется в созданном Поло Товарище по синтезу ртути.&#xA;&#xA;Физические свойства сферы постоянно и необычно меняются: температура, радиоактивность и плотность колеблются под ритм неслышимой песни." },
                            }
                        },
                        -- чисто для красоты делаем перенос строки после "статус капитана"
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CAPTFATE_RES1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Данные приняты. В журнал будет занесен статус капитана &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;[&lt;FUEL&gt;НЕИЗВЕСТНО, ПРЕДПОЛАГАЕТСЯ СМЕРТЬ&lt;&gt;].
                                { "Russian", "Данные приняты. В журнал будет занесен статус капитана&lt;STELLAR&gt; - кккззззззт - &lt;&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;[&lt;FUEL&gt;НЕИЗВЕСТНО, ПРЕДПОЛАГАЕТСЯ СМЕРТЬ&lt;&gt;]." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CAPTFATE_RES2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Данные приняты. В журнал будет занесен статус капитана &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;[&lt;FUEL&gt;ГИБЕЛЬ&lt;&gt;].
                                { "Russian", "Данные приняты. В журнал будет занесен статус капитана&lt;STELLAR&gt; - кккззззззт - &lt;&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;[&lt;FUEL&gt;ГИБЕЛЬ&lt;&gt;]." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CAPTFATE_RES3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Данные приняты. В журнал будет занесен статус капитана &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;[&lt;FUEL&gt;НЕ МОЖЕТ КОМАНДОВАТЬ&lt;&gt;].
                                { "Russian", "Данные приняты. В журнал будет занесен статус капитана&lt;STELLAR&gt; - кккззззззт - &lt;&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;[&lt;FUEL&gt;НЕ МОЖЕТ КОМАНДОВАТЬ&lt;&gt;]." },
                            }
                        },
                        --
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ABAND_LOG_FORMAT_7_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Результаты поиска записей журнала...&#xA;Собрано: %SAMPLE% / Источник: планета %PLANET%&lt;IMG&gt;SLASH&lt;&gt; Выполнено испытание: %TEST%&lt;IMG&gt;SLASH&lt;&gt; Наблюдение: &lt;STELLAR&gt;%OUTCOME%.&lt;&gt;
                                -- Research Log Entry Follows...&#xA;Collected %SAMPLE% on %PLANET% &lt;IMG&gt;SLASH&lt;&gt; Performed %TEST% &lt;IMG&gt;SLASH&lt;&gt; Observation: &lt;STELLAR&gt;%OUTCOME%.&lt;&gt;
                                { "Russian", "Результаты поиска записей журнала...&#xA;Собрано: %SAMPLE%&lt;NEWLINE&gt;Источник: планета %PLANET%&#xA;&lt;IMG&gt;SLASH&lt;&gt; Выполнено испытание: %TEST%&lt;IMG&gt;SLASH&lt;&gt; Наблюдение: &lt;STELLAR&gt;%OUTCOME%.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ABAND_LOG_FORMAT_7_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Результаты поиска записей журнала...&#xA;Собрано: %SAMPLE% / Источник: луна %PLANET%&lt;IMG&gt;SLASH&lt;&gt; Выполнено испытание: %TEST%&lt;IMG&gt;SLASH&lt;&gt; Наблюдение: &lt;STELLAR&gt;%OUTCOME%.&lt;&gt;
                                { "Russian", "Результаты поиска записей журнала...&#xA;Собрано: %SAMPLE%&lt;NEWLINE&gt;Источник: луна %PLANET%&#xA;&lt;IMG&gt;SLASH&lt;&gt; Выполнено испытание: %TEST%&lt;IMG&gt;SLASH&lt;&gt; Наблюдение: &lt;STELLAR&gt;%OUTCOME%.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ABAND_LOG_FORMAT_7_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Результаты поиска записей журнала...&#xA;Собрано: %SAMPLE% / Источник: пролетающий астероид &lt;IMG&gt;SLASH&lt;&gt; Выполнено испытание: %TEST%&lt;IMG&gt;SLASH&lt;&gt; Наблюдение: &lt;STELLAR&gt;%OUTCOME%.&lt;&gt;
                                { "Russian", "Результаты поиска записей журнала...&#xA;Собрано: %SAMPLE%&lt;NEWLINE&gt;Источник: пролетающий астероид&#xA;&lt;IMG&gt;SLASH&lt;&gt; Выполнено испытание: %TEST%&lt;IMG&gt;SLASH&lt;&gt; Наблюдение: &lt;STELLAR&gt;%OUTCOME%.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ABAND_LOG_FORMAT_7_4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Результаты поиска записей журнала...&#xA;Собрано: %SAMPLE% / Источник: автоматический зонд &lt;IMG&gt;SLASH&lt;&gt; Выполнено испытание: %TEST%&lt;IMG&gt;SLASH&lt;&gt; Наблюдение: &lt;STELLAR&gt;%OUTCOME%.&lt;&gt;
                                { "Russian", "Результаты поиска записей журнала...&#xA;Собрано: %SAMPLE%&lt;NEWLINE&gt;Источник: автоматический зонд&#xA;&lt;IMG&gt;SLASH&lt;&gt; Выполнено испытание: %TEST%&lt;IMG&gt;SLASH&lt;&gt; Наблюдение: &lt;STELLAR&gt;%OUTCOME%.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ABAND_LOG_FORMAT_7_5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Результаты поиска записей журнала...&#xA;Собрано: %SAMPLE% / Источник: наземная команда на задании &lt;IMG&gt;SLASH&lt;&gt; Выполнено испытание: %TEST%&lt;IMG&gt;SLASH&lt;&gt; Наблюдение: &lt;STELLAR&gt;%OUTCOME%.&lt;&gt;
                                { "Russian", "Результаты поиска записей журнала...&#xA;Собрано: %SAMPLE%&lt;NEWLINE&gt;Источник: наземная команда на задании&#xA;&lt;IMG&gt;SLASH&lt;&gt; Выполнено испытание: %TEST%&lt;IMG&gt;SLASH&lt;&gt; Наблюдение: &lt;STELLAR&gt;%OUTCOME%.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ABAND_LOG_FORMAT_7_6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Результаты поиска записей журнала...&#xA;Собрано: %SAMPLE% / Источник: обнаружено командой в грузовом отсеке &lt;IMG&gt;SLASH&lt;&gt; Выполнено испытание: %TEST%&lt;IMG&gt;SLASH&lt;&gt; Наблюдение: &lt;STELLAR&gt;%OUTCOME%.&lt;&gt;
                                { "Russian", "Результаты поиска записей журнала...&#xA;Собрано: %SAMPLE%&lt;NEWLINE&gt;Источник: обнаружено командой в грузовом отсеке&#xA;&lt;IMG&gt;SLASH&lt;&gt; Выполнено испытание: %TEST%&lt;IMG&gt;SLASH&lt;&gt; Наблюдение: &lt;STELLAR&gt;%OUTCOME%.&lt;&gt;" },
                            }
                        },
                        -- всетаки собран тут не звучит
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ABAND_FREIGHT_CREW_STATE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Список экипажа собран: %CREWLOGDONE%
                                { "Russian", "Найти список экипажа: %CREWLOGDONE%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ABAND_FREIGHT_CAPT_STATE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Журнал капитана собран: %CAPTLOGDONE%
                                { "Russian", "Найти журнал капитана: %CAPTLOGDONE%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ABAND_FREIGHT_END_STATE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Журнал капитана собран: %CAPTLOGDONE%
                                { "Russian", "Извлечь инженерный модуль: %ENDROOMDONE%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SUSPECT_GOODS_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПОДОЗР. ПАКЕТ (ТОВАРЫ)
                                -- SUSPICIOUS PACKET (GOODS)
                                { "Russian", "ПАКЕТ С ТОВАРАМИ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SUSPECT_GOODS_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Под. пакет (товары)
                                -- Suspicious Packet (Goods)
                                { "Russian", "Пакет с товарами" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SUSPECT_WEAP_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПОДОЗРИТЕЛЬНЫЙ ПАКЕТ (ОРУЖИЕ)
                                -- SUSPICIOUS PACKET (ARMS)
                                { "Russian", "ПАКЕТ С ОРУЖИЕМ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SUSPECT_WEAP_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Подозрительный пакет (оружие)
                                -- Suspicious Packet (Arms)
                                { "Russian", "Пакет с оружием" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SUSPECT_TECH_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПОДОЗРИТЕЛЬНЫЙ ПАКЕТ (ТЕХНОЛОГИЯ)
                                -- SUSPICIOUS PACKET (TECH)
                                { "Russian", "ПАКЕТ С ТЕХНИКОЙ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SUSPECT_TECH_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Подозрительный пакет (технология)
                                -- Suspicious Packet (Tech)
                                { "Russian", "Пакет с техникой" },
                            }
                        },
                        -- баннер (кастомизация персонажа)
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PLAYER_TITLE_JM_UNITS2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Торговец %NAME%
                                -- Merchant %NAME%
                                { "Russian", "Купец %NAME%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "GHOSTSHIP_NAME_STANDARD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %CODE%%PROCNAME%%NUM%
                                -- %CODE% %PROCNAME% %NUM%
                                { "Russian", "%CODE% %PROCNAME% %NUM%" },
                            }
                        },
                        -- лишняя точка после переноса строки
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PET_EGG_QUAD_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Миниатюрная автономная фабрика стражей. Статус: %READY%&#xA;&#xA;%MODIFIED%&#xA;&#xA;.Сканирование показывает, что производимая единица может достигнуть размера %SIZE% и обладать чертой %TRAIT%.
                                -- A self-contained Sentinel fabrication unit. This miniature factory is %READY%&#xA;&#xA;%MODIFIED%&#xA;&#xA;Scans indicate the fabricant to be assembled is likely to be %SIZE% and %TRAIT%.
                                { "Russian", "Миниатюрная автономная фабрика стражей. Статус: %READY%&#xA;&#xA;%MODIFIED%&#xA;&#xA;Сканирование показывает, что производимая единица может достигнуть размера %SIZE% и обладать чертой %TRAIT%." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PET_EGG_QUAD_DESC_GIFT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Миниатюрная автономная фабрика стражей. Статус: %READY%&#xA;&#xA;%MODIFIED%&#xA;&#xA;.Сканирование показывает, что производимая единица может достигнуть размера %SIZE% и обладать чертой %TRAIT%.&#xA;&#xA;%SENDER%
                                -- A self-contained Sentinel fabrication unit. This miniature factory is %READY%&#xA;&#xA;%MODIFIED%&#xA;&#xA;Scans indicate the fabricant to be assembled is likely to be %SIZE% and %TRAIT%.&#xA;&#xA;%SENDER%
                                { "Russian", "Миниатюрная автономная фабрика стражей. Статус: %READY%&#xA;&#xA;%MODIFIED%&#xA;&#xA;Сканирование показывает, что производимая единица может достигнуть размера %SIZE% и обладать чертой %TRAIT%.&#xA;&#xA;%SENDER%" },
                            }
                        },
                        --
                        -- ЖИВОЙ КОРАБЛЬ
                        --
                        -- ну это жопа, перевести host как тело "мощный" ход. очень мощный, нет слов.
                        -- видимо переводчик не смотрел сериал На краю вселенной, за что ему великий с кулак дисреспект
                        -- по задумке разрабов, живой корабль ждет хозяина, ну тут более уместно конечно называть его пилотом
                        -- но пилотом игрок станет в конце квеста, а во время его выполнения корабль ждет хозяина, который будет им управлять
                        -- и весь замес-то не в том, что живой корабль не может жить без хозяина. живой корабль не может жить без пилота
                        -- это называется в природе - симбиоз. пилот делает все, чтобы корабль жил, развивался и т.д.,
                        -- а пилот им управляет, летает куда хочет, когда корабль это позволяет.
                        -- именно такой сюжет был в сериале.
                        --
                        -- и жопа заключается в том, что все это я понял и обнаружил только завершив квест!
                        -- чтобы правильно все исправить, нужно проверять влезают новые правки или не влезают...
                        -- итог на текущий момент: "тело" остается телом. до лучших времен, упоминаний очень много,
                        -- как это будет выглядеть после моих правок я не знаю, а выдавать непроверенный результат это не мой стиль.
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ALIEN_SHIP_INV_LABEL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ЗАПАСАЮЩИЕ МЕШКИ
                                -- STORAGE SACS
                                { "Russian", "МЕШКИ-ХРАНИЛИЩА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BIOSHIP_REPAIR_DESC5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Корабль завершен. Но мое задание еще не выполнено. Ему нужно что-то еще...
                                -- The ship is complete. But my task is not yet complete. It needs something more...
                                { "Russian", "Корабль собран. Но мое задание еще не выполнено. Ему нужно что-то еще..." },
                            }
                        },
                        -- экран заданий
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MB_HOVER_FACTION" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;DIAMONDBULLET&lt;&gt; ЗАДАНИЕ УРОВНЯ %NUM% (%FACTION%)
                                -- &lt;IMG&gt;DIAMONDBULLET&lt;&gt; LEVEL %NUM% %FACTION% MISSION
                                { "Russian", "&lt;IMG&gt;DIAMONDBULLET&lt;&gt; ЗАДАНИЕ %NUM% УРОВНЯ — %FACTION%" },
                            }
                        },
                        --
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "QUICK_MENU_SUM_FREIGHT_NO_DRIVE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Не удалось призвать :: Мощности варп-двигателя судна недостаточно для текущей системы.
                                -- Cannot Summon :: Freighter warpdrive is insufficient for current system
                                { "Russian", "Конфигурация варп-двигателя крупного судна не позволяет переместиться в текущую систему" },
                            }
                        },
                        -- строка очень длинная, влезает, все ок, но читать сложно
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_RESCUE_FREIGHTER_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Рядом находится грузовой корабль, атакованный пиратами &lt;IMG&gt;SLASH&lt;&gt; Уничтожьте пиратов, чтобы спасти флот
                                -- Nearby freighter under attack &lt;IMG&gt;SLASH&lt;&gt; Destroy pirates to save the fleet
                                { "Russian", "Грузовой корабль атакован пиратами &lt;IMG&gt;SLASH&lt;&gt; Уничтожьте пиратов и спасите флот" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "WEATHER_WARN_LAVA" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПОГОДНОЕ ПРЕДУПРЕЖДЕНИЕ: СТЕНА ПЛАМЕНИ
                                -- WEATHER WARNING: WALL OF FLAME DETECTED
                                { "Russian", "ПРИБЛИЖАЕТСЯ СТЕНА ПЛАМЕНИ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MB_HOVER_IN_PROG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;DIAMONDBULLET&lt;&gt; ВЫПОЛНЯЕТСЯ ЗАДАНИЕ
                                -- &lt;IMG&gt;DIAMONDBULLET&lt;&gt; MISSION IN PROGRESS
                                { "Russian", "&lt;IMG&gt;DIAMONDBULLET&lt;&gt; ЗАДАНИЕ ВЫПОЛНЯЕТСЯ" },
                            }
                        },
                        -- имя корабля написано выше, убираем
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ABAND_FIRST_DOOR_LANG_TUT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %FREIGHTER% Статус: &lt;AUDIO&gt;UI_GameMode_Erase_Error&lt;&gt;СЕРЬЕЗНОЕ ПРОИСШЕСТВИЕ &lt;IMG&gt;SLASH&lt;&gt;&lt;AUDIO&gt;UI_GameMode_Erase_Error&lt;&gt;ПОЛНАЯ ИЗОЛЯЦИЯ &lt;IMG&gt;SLASH&lt;&gt;&lt;AUDIO&gt;UI_GameMode_Erase_Error&lt;&gt;&lt;FUEL&gt;ДОСТУП ЗАПРЕЩЕН&lt;&gt;&#xA;Признаки жизни не обнаружены. &lt;TECHNOLOGY&gt;Список экипажа&lt;&gt; и &lt;TECHNOLOGY&gt;журнал капитана&lt;&gt; могут позволить разобраться в случившемся.&#xA;Целостность груза: &lt;STELLAR&gt;95%&lt;&gt;. Высокая вероятность спасения имущества.&#xA;Двери были заблокированы автоматически, а внутренние системы отключены. Для восстановления требуется ручной перезапуск.
                                -- %FREIGHTER% Status: &lt;AUDIO&gt;UI_GameMode_Erase_Error&lt;&gt;SEVERE INCIDENT &lt;IMG&gt;SLASH&lt;&gt; &lt;AUDIO&gt;UI_GameMode_Erase_Error&lt;&gt;TOTAL LOCKDOWN &lt;IMG&gt;SLASH&lt;&gt; &lt;AUDIO&gt;UI_GameMode_Erase_Error&lt;&gt;&lt;FUEL&gt;ACCESS DENIED&lt;&gt;&#xA;No crew lifesigns detected. &lt;TECHNOLOGY&gt;Crew Manifest&lt;&gt; and &lt;TECHNOLOGY&gt;Captain's Log&lt;&gt; may assist incident diagnosis.&#xA;Cargo integrity: &lt;STELLAR&gt;95%&lt;&gt;. Salvage and recovery likely.&#xA;Access doors have been automatically sealed and internal systems disabled. Manual restart required to begin recovery.
                                { "Russian", "&lt;AUDIO&gt;UI_GameMode_Erase_Error&lt;&gt;СЕРЬЕЗНОЕ ПРОИСШЕСТВИЕ &lt;IMG&gt;SLASH&lt;&gt; &lt;AUDIO&gt;UI_GameMode_Erase_Error&lt;&gt;ПОЛНАЯ ИЗОЛЯЦИЯ &lt;IMG&gt;SLASH&lt;&gt; &lt;AUDIO&gt;UI_GameMode_Erase_Error&lt;&gt;&lt;FUEL&gt;ДОСТУП ЗАПРЕЩЕН&lt;&gt;&#xA;Признаки жизни не обнаружены. &lt;TECHNOLOGY&gt;Список экипажа&lt;&gt; и &lt;TECHNOLOGY&gt;журнал капитана&lt;&gt; могут помочь разобраться в случившемся.&#xA;Целостность груза: &lt;STELLAR&gt;95%&lt;&gt;. Высокая вероятность спасения груза.&#xA;Двери были заблокированы автоматически, а внутренние системы отключены. Для восстановления требуется ручной перезапуск." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ABAND_FIRST_DOOR_LANG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %FREIGHTER% Статус: &lt;AUDIO&gt;UI_GameMode_Erase_Error&lt;&gt;СЕРЬЕЗНОЕ ПРОИСШЕСТВИЕ &lt;IMG&gt;SLASH&lt;&gt;&lt;AUDIO&gt;UI_GameMode_Erase_Error&lt;&gt;ПОЛНАЯ ИЗОЛЯЦИЯ &lt;IMG&gt;SLASH&lt;&gt;&lt;FUEL&gt;&lt;AUDIO&gt;UI_GameMode_Erase_Error&lt;&gt;ДОСТУП ЗАПРЕЩЕН&lt;&gt;&#xA;Внешние двери были заблокированы автоматически. Отменить блокировку?
                                -- %FREIGHTER% Status: &lt;AUDIO&gt;UI_GameMode_Erase_Error&lt;&gt;SEVERE INCIDENT &lt;IMG&gt;SLASH&lt;&gt; &lt;AUDIO&gt;UI_GameMode_Erase_Error&lt;&gt;TOTAL LOCKDOWN &lt;IMG&gt;SLASH&lt;&gt; &lt;FUEL&gt;&lt;AUDIO&gt;UI_GameMode_Erase_Error&lt;&gt;ACCESS DENIED&lt;&gt;&#xA;External Access Doors have been automatically sealed. Override seal?
                                { "Russian", "&lt;AUDIO&gt;UI_GameMode_Erase_Error&lt;&gt;СЕРЬЕЗНОЕ ПРОИСШЕСТВИЕ &lt;IMG&gt;SLASH&lt;&gt; &lt;AUDIO&gt;UI_GameMode_Erase_Error&lt;&gt;ПОЛНАЯ ИЗОЛЯЦИЯ &lt;IMG&gt;SLASH&lt;&gt; &lt;FUEL&gt;&lt;AUDIO&gt;UI_GameMode_Erase_Error&lt;&gt;ДОСТУП ЗАПРЕЩЕН&lt;&gt;&#xA;Внешние двери были заблокированы автоматически. Отменить блокировку?" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ABAND_DETAIL_TITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружена возможность спасения имущества
                                -- Salvage Opportunity Detected
                                { "Russian", "Обнаружена возможность спасения груза" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ABAND_FREIGHT_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Возможности по спасению имущества
                                -- Salvage Opportunities
                                { "Russian", "Возможности по спасению груза" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ABAND_ENTRY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;MISSIONPRIMARY&gt;ЗАПУЩЕН ПРОТОКОЛ СПАСЕНИЯ ИМУЩЕСТВА&lt;&gt;
                                -- &lt;MISSIONPRIMARY&gt;SALVAGE PROTOCOL INITIATED&lt;&gt;
                                { "Russian", "&lt;MISSIONPRIMARY&gt;ОПЕРАЦИЯ ПО СПАСЕНИЮ ГРУЗА&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FREE_ABAND_TITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Дополнительная возможность спасения имущества
                                -- Additional Salvage Opportunity
                                { "Russian", "Дополнительная возможность спасения груза" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FREE_ABAND_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поговорите с &lt;STELLAR&gt;итерацией Гелиоса&lt;&gt;, чтобы узнать о возможностях по спасению имущества.&#xA;Каждую неделю у него можно получить бесплатный &lt;TECHNOLOGY&gt;сканер аварийных сигналов&lt;&gt;.
                                -- Speak with &lt;STELLAR&gt;Iteration: Helios&lt;&gt; to learn of salvage opportunities&#xA;Each week, they will provide a free &lt;TECHNOLOGY&gt;Emergency Signal Scanner&lt;&gt;
                                { "Russian", "Поговорите с &lt;STELLAR&gt;итерацией Гелиоса&lt;&gt; о спасении груза&#xA;с заброшенного грузового судна&#xA;Каждую неделю у него можно получить&#xA;бесплатный &lt;TECHNOLOGY&gt;сканер аварийных сигналов&lt;&gt;" },
                            }
                        },
                        -- интересный перевод, но я тоже мастак - додумался сам и попал в точку =)
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ABAND_BREACH_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Уплотнение повреждено. Восстановление невозможно...
                                -- Seal Irreversibly Compromised...
                                { "Russian", "Аварийная разгерметизация..." },
                            }
                        },
                        -- ох уж эти точки
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ABAND_FIRST_DOOR_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Двери шлюза заблокированы.&#xA;Воспользуйтесь терминалом &lt;TECHNOLOGY&gt;управления ангаром&lt;&gt;.
                                -- The airlock doors are sealed&#xA;Use the &lt;TECHNOLOGY&gt;Docking Bay Control&lt;&gt; terminal
                                { "Russian", "Двери шлюза заблокированы&#xA;Воспользуйтесь терминалом &lt;TECHNOLOGY&gt;управления ангаром&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ABAND_DOOR_OVERTIME_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Запрос доступа...&lt;&gt;&#xA;Требуются дополнительные данные безопасности. Сканирование: %NUM%
                                -- &lt;STELLAR&gt;Access Requested...&lt;&gt;&#xA;Additional Security Required... Scanning: %NUM%
                                { "Russian", "&lt;STELLAR&gt;Запрос доступа...&lt;&gt;&#xA;Дополнительная проверка безопасности&#xA;Сканирование: %NUM%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ABAND_FREIGHT_OBJ1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сесть на заброшенное грузовое судно
                                -- Land on the Derelict Freighter
                                { "Russian", "Попасть на заброшенное грузовое судно" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ABAND_FREIGHT_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Передо мной оказалось пустое грузовое судно, брошенное в открытом космосе. Похоже, команды на нем нет.&#xA;Компьютеры судна до сих пор работают. Думаю, кто-нибудь будет готов заплатить за хранящуюся в них информацию.&#xA;&lt;TECHNOLOGY&gt;Анализирующий визор&lt;&gt; и &lt;TECHNOLOGY&gt;сканер&lt;&gt; должны помочь мне сориентироваться...
                                -- I have landed on a ghostly abandoned freighter in deep space. The crew appear to be missing.&#xA;The ship's computers are still active - I'm certain someone will pay for any information I can recover.&#xA;The &lt;TECHNOLOGY&gt;Analysis Visor&lt;&gt; and &lt;TECHNOLOGY&gt;Scanner&lt;&gt; should help me navigate...
                                { "Russian", "Передо мной пустое грузовое судно, брошенное в открытом космосе. Похоже, команды на нем нет. Компьютеры судна до сих пор работают. Наверняка кто-то заплатит за хранящуюся в них информацию. &lt;TECHNOLOGY&gt;Анализирующий визор&lt;&gt; и &lt;TECHNOLOGY&gt;сканер&lt;&gt; должны помочь мне сориентироваться..." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ABAND_FREIGHT_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сядьте на &lt;TECHNOLOGY&gt;заброшенное грузовое судно&lt;&gt;.
                                -- Land on the &lt;TECHNOLOGY&gt;Derelict Freighter&lt;&gt;
                                { "Russian", "Выполните стыковку с &lt;TECHNOLOGY&gt;заброшенным&lt;&gt;&#xA;&lt;TECHNOLOGY&gt;грузовым судном&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ABAND_FREIGHT_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Попадите на &lt;TECHNOLOGY&gt;заброшенное грузовое судно&lt;&gt;.
                                -- Enter the &lt;TECHNOLOGY&gt;Derelict Freighter&lt;&gt;
                                { "Russian", "Войдите внутрь &lt;TECHNOLOGY&gt;заброшенного грузового судна&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ABAND_FREIGHT_MSG3_TUT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Составлено карт зон: %CURRENT%/%AMOUNT%&#xA;Используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;) для навигации.&#xA;Воспользуйтесь &lt;TECHNOLOGY&gt;сканером&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;), чтобы найти груз.&#xA;Включите &lt;STELLAR&gt;нагревательные элементы&lt;&gt;, чтобы защититься от холода.
                                -- Zones Mapped: %CURRENT%/%AMOUNT%&#xA;Use the &lt;TECHNOLOGY&gt;Analysis Visor&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;) to navigate&#xA;Use the &lt;TECHNOLOGY&gt;Scanner&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;) to search for salvage&#xA;Activate &lt;STELLAR&gt;Heating Units&lt;&gt; to ward off the cold
                                { "Russian", "Составлено карт зон: %CURRENT%/%AMOUNT%&#xA;Используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;) для навигации&#xA;Воспользуйтесь &lt;TECHNOLOGY&gt;сканером&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;), чтобы найти груз&#xA;Включите &lt;STELLAR&gt;нагревательные элементы&lt;&gt;, чтобы защититься от холода" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ABAND_FREIGHT_MSG3_WEAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Осмотрите &lt;TECHNOLOGY&gt;заброшенное грузовое судно&lt;&gt;.&#xA;Составлено карт зон: %CURRENT%/%AMOUNT%&lt;FUEL&gt;Крайне рекомендуется&lt;&gt; держать &lt;STELLAR&gt;оружие&lt;&gt; наготове.
                                -- Explore the &lt;TECHNOLOGY&gt;Derelict Freighter&lt;&gt;&#xA;Zones mapped: %CURRENT%/%AMOUNT%&#xA;Equipping a &lt;STELLAR&gt;weapon&lt;&gt; is &lt;FUEL&gt;strongly advised&lt;&gt;
                                { "Russian", "Осмотрите &lt;TECHNOLOGY&gt;заброшенное грузовое судно&lt;&gt;&#xA;Составлено карт зон: %CURRENT%/%AMOUNT%&#xA;&lt;FUEL&gt;Крайне рекомендуется&lt;&gt; держать &lt;STELLAR&gt;оружие&lt;&gt; наготове" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ABAND_FREIGHT_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Все ценное имущество собрано.&#xA;Используйте &lt;STELLAR&gt;сеть телепортов&lt;&gt; заброшенного судна, чтобы быстро его покинуть.
                                -- All significant salvage retrieved&#xA;Use the derelict's &lt;STELLAR&gt;Teleport Network&lt;&gt; to exit quickly
                                { "Russian", "Все ценное имущество собрано&#xA;Используйте &lt;STELLAR&gt;сеть телепортов&lt;&gt;, чтобы покинуть судно" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ABAND_FREIGHT_MSG5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вернуться на свой звездолет
                                -- Return to your starship
                                { "Russian", "Вернитесь на свой звездолёт" },
                            }
                        },
                        -- отличный британский промт
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ABAND_FREIGHT_MSG6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Выгрузите &lt;STELLAR&gt;список экипажа&lt;&gt;.&#xA;Найдите заинтересованных покупателей на &lt;TECHNOLOGY&gt;космической станции&lt;&gt;.
                                -- Offload the &lt;STELLAR&gt;Crew Manifest&lt;&gt;&#xA;Find interested buyers on the &lt;TECHNOLOGY&gt;Space Station&lt;&gt;
                                { "Russian", "Избавьтесь от &lt;STELLAR&gt;списка экипажа&lt;&gt;&#xA;Найдите заинтересованных покупателей&#xA;на &lt;TECHNOLOGY&gt;космической станции&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ABAND_FREIGHT_MSG7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Выгрузите &lt;STELLAR&gt;список экипажа&lt;&gt;.&#xA;&lt;TECHNOLOGY&gt;Сборщики утиля&lt;&gt; и &lt;TRADEABLE&gt;представители гильдии&lt;&gt; предлагают различные награды.
                                -- Offload the &lt;STELLAR&gt;Crew Manifest&lt;&gt;&#xA;&lt;TECHNOLOGY&gt;Scrap Dealers&lt;&gt; and &lt;TRADEABLE&gt;Guild Envoys&lt;&gt; offer different rewards
                                { "Russian", "Избавьтесь от &lt;STELLAR&gt;списка экипажа&lt;&gt;&#xA;&lt;TECHNOLOGY&gt;Сборщики утиля&lt;&gt; и &lt;TRADEABLE&gt;представители гильдии&lt;&gt;&#xA;предлагают различные награды" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ABAND_FREIGHT_MSG8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Выгрузите &lt;STELLAR&gt;журнал капитана&lt;&gt;.&#xA;Найдите заинтересованных покупателей на &lt;TECHNOLOGY&gt;космической станции&lt;&gt;.
                                -- Offload the &lt;STELLAR&gt;Captain's Log&lt;&gt;&#xA;Find interested buyers on the &lt;TECHNOLOGY&gt;Space Station&lt;&gt;
                                { "Russian", "Избавьтесь от &lt;STELLAR&gt;журнала капитана&lt;&gt;&#xA;Найдите заинтересованных покупателей&#xA;на &lt;TECHNOLOGY&gt;космической станции&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ABAND_FREIGHT_MSG9" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Выгрузите &lt;STELLAR&gt;журнал капитана&lt;&gt;.&#xA;&lt;TECHNOLOGY&gt;Сборщики утиля&lt;&gt; и &lt;TRADEABLE&gt;представители гильдии&lt;&gt; предлагают различные награды.
                                -- Offload the &lt;STELLAR&gt;Captain's Log&lt;&gt;&#xA;&lt;TECHNOLOGY&gt;Scrap Dealers&lt;&gt; and &lt;TRADEABLE&gt;Guild Envoys&lt;&gt; offer different rewards
                                { "Russian", "Избавьтесь от &lt;STELLAR&gt;журнала капитана&lt;&gt;&#xA;&lt;TECHNOLOGY&gt;Сборщики утиля&lt;&gt; и &lt;TRADEABLE&gt;представители гильдии&lt;&gt;&#xA;предлагают различные награды" },
                            }
                        },
                        --
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ABAND_LOG_FORMAT_4A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ДОСТУП ТОЛЬКО ДЛЯ КАПИТАНА &lt;IMG&gt;SLASH&lt;&gt; ПРЕДПОЛЕТНАЯ ОЦЕНКА ЭКИПАЖА&#xA;&lt;TECHNOLOGY&gt;Имя:&lt;&gt;  %NAME%&lt;IMG&gt;SLASH&lt;&gt;&lt;TECHNOLOGY&gt;Специализация:&lt;&gt; %JOB%&#xA;%TRAIT1%: &lt;%RATE1FMT%&gt;%RATING1%%&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt; %TRAIT2%: &lt;%RATE2FMT%&gt;%RATING2%%&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt; %TRAIT3%: &lt;%RATE3FMT%&gt;%RATING3%%&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt; Рейтинг одобрения компании&lt;&gt;: &lt;%RATE4FMT%&gt;%RATING%%&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt; Оставшееся время жизнедеятельности (в годах)&lt;&gt;: &lt;%RATE5FMT%&gt;%LIFESPAN%&lt;&gt;.
                                -- CAPTAIN'S EYES ONLY &lt;IMG&gt;SLASH&lt;&gt; PRE-FLIGHT CREW APPRAISAL&#xA;&lt;TECHNOLOGY&gt;Name:&lt;&gt; %NAME% &lt;IMG&gt;SLASH&lt;&gt; &lt;TECHNOLOGY&gt;Specialism:&lt;&gt; %JOB%&#xA;%TRAIT1%: &lt;%RATE1FMT%&gt;%RATING1%%&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt; %TRAIT2%: &lt;%RATE2FMT%&gt;%RATING2%%&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt; %TRAIT3%: &lt;%RATE3FMT%&gt;%RATING3%%&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt; Company Approval Rating&lt;&gt;: &lt;%RATE4FMT%&gt;%RATING%%&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt; Predicted Remaining Lifespan&lt;&gt;: &lt;%RATE5FMT%&gt;%LIFESPAN%&lt;&gt; years
                                { "Russian", "ДОСТУП ТОЛЬКО ДЛЯ КАПИТАНА&lt;NEWLINE&gt;ПРЕДПОЛЕТНАЯ ОЦЕНКА ЭКИПАЖА&#xA;&lt;TECHNOLOGY&gt;Имя:&lt;&gt; %NAME% &lt;IMG&gt;SLASH&lt;&gt; &lt;TECHNOLOGY&gt;Специализация:&lt;&gt; %JOB%&#xA;%TRAIT1%: &lt;%RATE1FMT%&gt;%RATING1%%&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt; %TRAIT2%: &lt;%RATE2FMT%&gt;%RATING2%%&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt; %TRAIT3%: &lt;%RATE3FMT%&gt;%RATING3%%&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt; Рейтинг одобрения компании&lt;&gt;: &lt;%RATE4FMT%&gt;%RATING%%&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt; Оставшееся время жизнедеятельности&lt;&gt;: &lt;%RATE5FMT%&gt;%LIFESPAN%&lt;&gt; лет" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ABAND_LOG_FORMAT_4B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ДОСТУП ТОЛЬКО ДЛЯ КАПИТАНА &lt;IMG&gt;SLASH&lt;&gt; ПРЕДПОЛЕТНАЯ ОЦЕНКА ЭКИПАЖА&#xA;&lt;TECHNOLOGY&gt;Имя:&lt;&gt;%NAME%&lt;IMG&gt;SLASH&lt;&gt;&lt;TECHNOLOGY&gt;Специализация:&lt;&gt; %JOB%&#xA;%TRAIT1%: &lt;%RATE1FMT%&gt;%RATING1%%&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt; %TRAIT2%: &lt;%RATE2FMT%&gt;%RATING2%%&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt; %TRAIT3%: &lt;%RATE3FMT%&gt;%RATING3%%&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt; Рейтинг одобрения компании&lt;&gt;: &lt;%RATE4FMT%&gt;%RATING%%&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt; Оставшееся время жизнедеятельности (в годах)&lt;&gt;: &lt;%RATE5FMT%&gt;%LIFESPAN%&lt;&gt;&#xA;ПРИЛОЖЕНИЕ...&#xA;Личные заметки капитана (&lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE%&lt;&gt;): %NOTE%
                                -- CAPTAIN'S EYES ONLY &lt;IMG&gt;SLASH&lt;&gt; PRE-FLIGHT CREW APPRAISAL&#xA;&lt;TECHNOLOGY&gt;Name:&lt;&gt; %NAME% &lt;IMG&gt;SLASH&lt;&gt; &lt;TECHNOLOGY&gt;Specialism:&lt;&gt; %JOB%&#xA;%TRAIT1%: &lt;%RATE1FMT%&gt;%RATING1%%&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt; %TRAIT2%: &lt;%RATE2FMT%&gt;%RATING2%%&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt; %TRAIT3%: &lt;%RATE3FMT%&gt;%RATING3%%&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt; Company Approval Rating&lt;&gt;: &lt;%RATE4FMT%&gt;%RATING%%&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt; Predicted Remaining Lifespan&lt;&gt;: &lt;%RATE5FMT%&gt;%LIFESPAN%&lt;&gt; years&#xA;ADDENDUM...&#xA;Captain's Personal Notes (&lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE%&lt;&gt;): %NOTE%
                                { "Russian", "ДОСТУП ТОЛЬКО ДЛЯ КАПИТАНА&lt;NEWLINE&gt;ПРЕДПОЛЕТНАЯ ОЦЕНКА ЭКИПАЖА&#xA;&lt;TECHNOLOGY&gt;Имя:&lt;&gt; %NAME%&lt;IMG&gt;SLASH&lt;&gt;&lt;TECHNOLOGY&gt;Специализация:&lt;&gt; %JOB%&#xA;%TRAIT1%: &lt;%RATE1FMT%&gt;%RATING1%%&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt; %TRAIT2%: &lt;%RATE2FMT%&gt;%RATING2%%&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt; %TRAIT3%: &lt;%RATE3FMT%&gt;%RATING3%%&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt; Рейтинг одобрения компании&lt;&gt;: &lt;%RATE4FMT%&gt;%RATING%%&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt; Оставшееся время жизнедеятельности&lt;&gt;: &lt;%RATE5FMT%&gt;%LIFESPAN%&lt;&gt; лет&#xA;ПРИЛОЖЕНИЕ...&#xA;Личные заметки капитана (&lt;TECHNOLOGY&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE%&lt;&gt;): %NOTE%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "U_ABAND_TURRET_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Автоматические системы охраны стали &lt;FUEL&gt;враждебны&lt;&gt;.
                                -- Automated security systems have turned &lt;FUEL&gt;hostile&lt;&gt;
                                { "Russian", "Автоматические системы охраны стали &lt;FUEL&gt;враждебны&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ABAND_CREW_INTRO_LANG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Получен доступ к терминалу записей... &lt;AUDIO&gt;UI_Destination_Reached&lt;&gt;поиск... &lt;IMG&gt;SLASH&lt;&gt;%RECORD1%: [&lt;FUEL&gt;&lt;AUDIO&gt;UI_PulseDrive_Offline&lt;&gt;ЗАШИФРОВАНО&lt;&gt;] &lt;IMG&gt;SLASH&lt;&gt;%RECORD2%: [&lt;FUEL&gt;&lt;AUDIO&gt;UI_PulseDrive_Offline&lt;&gt;ЗАШИФРОВАНО&lt;&gt;] &lt;IMG&gt;SLASH&lt;&gt; Список экипажа: &lt;AUDIO&gt;UI_Nanites_Received&lt;&gt;[&lt;TRADEABLE&gt;ДОСТУП РАЗРЕШЕН&lt;&gt;]
                                -- Records terminal accessed... &lt;AUDIO&gt;UI_Destination_Reached&lt;&gt;searching... &lt;IMG&gt;SLASH&lt;&gt; %RECORD1%: [&lt;FUEL&gt;&lt;AUDIO&gt;UI_PulseDrive_Offline&lt;&gt;ENCRYPTED&lt;&gt;] &lt;IMG&gt;SLASH&lt;&gt; %RECORD2%: [&lt;FUEL&gt;&lt;AUDIO&gt;UI_PulseDrive_Offline&lt;&gt;ENCRYPTED&lt;&gt;] &lt;IMG&gt;SLASH&lt;&gt; Crew Manifest: &lt;AUDIO&gt;UI_Nanites_Received&lt;&gt;[&lt;TRADEABLE&gt;ACCESSIBLE&lt;&gt;]
                                { "Russian", "Получен доступ к терминалу записей... &lt;AUDIO&gt;UI_Destination_Reached&lt;&gt;поиск...&lt;NEWLINE&gt;&lt;IMG&gt;SLASH&lt;&gt; %RECORD1%: [&lt;FUEL&gt;&lt;AUDIO&gt;UI_PulseDrive_Offline&lt;&gt;ЗАШИФРОВАНО&lt;&gt;]&lt;NEWLINE&gt;&lt;IMG&gt;SLASH&lt;&gt; %RECORD2%: [&lt;FUEL&gt;&lt;AUDIO&gt;UI_PulseDrive_Offline&lt;&gt;ЗАШИФРОВАНО&lt;&gt;]&lt;NEWLINE&gt;&lt;IMG&gt;SLASH&lt;&gt; Список экипажа: &lt;AUDIO&gt;UI_Nanites_Received&lt;&gt;[&lt;TRADEABLE&gt;ДОСТУП РАЗРЕШЕН&lt;&gt;]" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ABAND_END_RESA" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Начато копирование внутренней технологии &lt;IMG&gt;SLASH&lt;&gt; Извлечение... &lt;DELAY&gt;1&lt;&gt;&lt;STELLAR&gt;ЗАВЕРШЕНО&lt;&gt;&lt;IMG&gt;SLASH&lt;&gt; Наносжатие... &lt;DELAY&gt;1&lt;&gt;&lt;STELLAR&gt;ЗАВЕРШЕНО&lt;&gt;&lt;IMG&gt;SLASH&lt;&gt; Размещаемый модуль готов к сбору.
                                -- Internal technology replication initiated &lt;IMG&gt;SLASH&lt;&gt; Extraction... &lt;DELAY&gt;1&lt;&gt;&lt;STELLAR&gt;COMPLETE&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt; Nanocompression... &lt;DELAY&gt;1&lt;&gt;&lt;STELLAR&gt;COMPLETE&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt; Deployable unit ready for collection.
                                { "Russian", "Запущена репликация встроенной технологии&lt;NEWLINE&gt;&lt;IMG&gt;SLASH&lt;&gt; Извлечение... &lt;DELAY&gt;1&lt;&gt;&lt;STELLAR&gt;ЗАВЕРШЕНО&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt;&lt;NEWLINE&gt;&lt;IMG&gt;SLASH&lt;&gt; Наносжатие... &lt;DELAY&gt;1&lt;&gt;&lt;STELLAR&gt;ЗАВЕРШЕНО&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt;&lt;NEWLINE&gt;Модуль можно забрать" },
                            }
                        },
                        --
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NOTIFY_STORM_JETPACK" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;FUEL&gt;Перегретая атмосфера&lt;&gt; повышает эффективность &lt;STELLAR&gt;реактивного ранца&lt;&gt;.&#xA;Позволяет перелетать дальше во время высокотемпературных бурь.
                                -- &lt;FUEL&gt;Superheated atmosphere&lt;&gt; improves &lt;STELLAR&gt;jetpack&lt;&gt; efficiency&#xA;Jetpack further during high-temperature storms
                                { "Russian", "&lt;FUEL&gt;Перегретая атмосфера&lt;&gt; повышает эффективность &lt;STELLAR&gt;реактивного ранца&lt;&gt;&#xA;Позволяет перелетать дальше во время высокотемпературных бурь" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NOTIFY_STORM_SPRINT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TRADEABLE&gt;Продвинутая переработка газа&lt;&gt; повышает эффективность &lt;STELLAR&gt; бега&lt;&gt;.&#xA;Позволяет бегать дальше во время токсичных бурь.
                                -- &lt;TRADEABLE&gt;Advanced gas processing&lt;&gt; improves &lt;STELLAR&gt;sprinting&lt;&gt; efficiency&#xA;Sprint further during toxic storms
                                { "Russian", "&lt;TRADEABLE&gt;Продвинутая переработка газа&lt;&gt; повышает эффективность &lt;STELLAR&gt;бега&lt;&gt;&#xA;Позволяет бегать дальше во время токсичных бурь" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NOTIFY_STORM_MINING" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;COMMODITY&gt;Локализованные столкновения ионов&lt;&gt; повышают &lt;STELLAR&gt;эффективность добычи&lt;&gt;.&#xA;Позволяет добывать больше ресурсов во время радиоактивных бурь.
                                -- &lt;COMMODITY&gt;Localised ionic collisions&lt;&gt; improve &lt;STELLAR&gt;mining output&lt;&gt;&#xA;Additional materials are mined during radiation storms
                                { "Russian", "&lt;COMMODITY&gt;Локализованные столкновения ионов&lt;&gt; повышают &lt;STELLAR&gt;эффективность добычи&lt;&gt;&#xA;Позволяет добывать больше ресурсов во время радиоактивных бурь" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NOTIFY_STORM_HEAT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;Низкие температуры&lt;&gt; повышают &lt;STELLAR&gt;эффективность системы охлаждения&lt;&gt;.&#xA;Расщепитель нагревается медленнее во время вьюги.
                                -- &lt;TECHNOLOGY&gt;Freezing Temperatures&lt;&gt; improve &lt;STELLAR&gt;heat efficiency&lt;&gt;&#xA;The Mining Beam overheats slowly during blizzards
                                { "Russian", "&lt;TECHNOLOGY&gt;Низкие температуры&lt;&gt; повышают &lt;STELLAR&gt;эффективность системы охлаждения&lt;&gt;&#xA;Расщепитель нагревается медленнее во время вьюги" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PHOTO_BIO_GUIDED_OBJ2_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Клиенту нужны следующие фотографии: %BIOME%.&#xA;Находясь в космосе, сканируйте планеты с помощью &lt;IMG&gt;SHIPSCAN&lt;&gt;.
                                -- The client requires photos of %BIOME%&#xA;Scan planets from space with &lt;IMG&gt;SHIPSCAN&lt;&gt;
                                { "Russian", "Сфотографируйте %BIOME%&#xA;Находясь в космосе, сканируйте планеты с помощью &lt;IMG&gt;SHIPSCAN&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PHOTO_BIO_GUIDED_OBJ2_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сделайте снимок.&#xA;Активируйте фоторежим с помощью &lt;IMG&gt;QUICK_MENU&lt;&gt;.
                                -- Take a photo&#xA;Activate photo mode with &lt;IMG&gt;QUICK_MENU&lt;&gt;
                                { "Russian", "Сделайте снимок&#xA;Активируйте фоторежим с помощью &lt;IMG&gt;QUICK_MENU&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PHOTO_BIO_GUIDED_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Клиенту нужны фотографии определенных планет.&#xA;Доберитесь до нужной планеты.
                                -- The client requires photos of specific worlds.&#xA;Reach the target planet.
                                { "Russian", "Клиенту нужны фотографии определенной планеты.&#xA;Доберитесь до нее." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PHOTO_BIO_GUIDED_OBJ_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Клиенту нужны фотографии определенных планет.&#xA;Доберитесь до нужной планеты.
                                -- The client requires photos of specific worlds&#xA;Reach the target planet
                                { "Russian", "Клиенту нужны фотографии определенной планеты&#xA;Доберитесь до нее" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PHOTO_BIO_GUIDED_OBJ_MSG1A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вы добрались до нужной планеты.&#xA;Приземлитесь на ее поверхность.
                                -- Target world reached&#xA;Land on the planet surface
                                { "Russian", "Нужная планета найдена&#xA;Приземляйтесь" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PHOTO_BIO_LUSH_OBJ_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Клиенту нужны фотографии тропической планеты.&#xA;Доберитесь до нужной планеты.
                                -- The client requires photos of a tropical world&#xA;Reach the target planet
                                { "Russian", "Клиенту нужны фотографии тропической планеты&#xA;Доберитесь до нужной планеты" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PHOTO_BIO_TOX_OBJ_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Клиенту нужны фотографии токсичной планеты.&#xA;Доберитесь до нужной планеты.
                                -- The client requires photos of a toxic world&#xA;Reach the target planet
                                { "Russian", "Клиенту нужны фотографии токсичной планеты&#xA;Доберитесь до нужной планеты" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PHOTO_BIO_HOT_OBJ_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Клиенту нужны фотографии выжженной планеты.&#xA;Доберитесь до нужной планеты.
                                -- The client requires photos of a scorched world&#xA;Reach the target planet
                                { "Russian", "Клиенту нужны фотографии выжженной планеты&#xA;Доберитесь до нужной планеты" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PHOTO_BIO_RADIO_OBJ_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Клиенту нужны фотографии радиоактивной планеты.&#xA;Доберитесь до нужной планеты.
                                -- The client requires photos of a radioactive world&#xA;Reach the target planet
                                { "Russian", "Клиенту нужны фотографии радиоактивной планеты&#xA;Доберитесь до нужной планеты" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PHOTO_BIO_COLD_OBJ_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Клиенту нужны фотографии замерзшей планеты.&#xA;Доберитесь до нужной планеты.
                                -- The client requires photos of a frozen world&#xA;Reach the target planet
                                { "Russian", "Клиенту нужны фотографии замёрзшей планеты&#xA;Доберитесь до нужной планеты" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PHOTO_BIO_DUST_OBJ_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Клиенту нужны фотографии пустынной планеты.&#xA;Доберитесь до нужной планеты.
                                -- The client requires photos of a desert world&#xA;Reach the target planet
                                { "Russian", "Клиенту нужны фотографии пустынной планеты&#xA;Доберитесь до нужной планеты" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PHOTO_BIO_DEAD_OBJ_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Клиенту нужны фотографии безвоздушной планеты.&#xA;Доберитесь до нужной планеты.
                                -- The client requires photos of an airless world&#xA;Reach the target planet
                                { "Russian", "Клиенту нужны фотографии безвоздушной планеты&#xA;Доберитесь до нужной планеты" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PHOTO_BIO_WEIRD_OBJ_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Клиенту нужны фотографии странной планеты.&#xA;Доберитесь до нужной планеты.
                                -- The client requires photos of a strange world&#xA;Reach the target planet
                                { "Russian", "Клиенту нужны фотографии странной планеты&#xA;Доберитесь до нужной планеты" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PHOTO_BIO_SWAMP_OBJ_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Клиенту нужны фотографии заболоченной планеты.&#xA;Доберитесь до нужной планеты.
                                -- The client requires photos of a marsh world&#xA;Reach the target planet
                                { "Russian", "Клиенту нужны фотографии заболоченной планеты&#xA;Доберитесь до нужной планеты" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PHOTO_BIO_LAVA_OBJ_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Клиенту нужны фотографии вулканической планеты.&#xA;Доберитесь до нужной планеты.
                                -- The client requires photos of a volcanic world&#xA;Reach the target planet
                                { "Russian", "Клиенту нужны фотографии вулканической планеты&#xA;Доберитесь до нужной планеты" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NOTIFY_MISSION_SURVEY_CAR" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Цель задания находится &lt;STELLAR&gt;неподалеку&lt;&gt;.&#xA;Воспользуйтесь &lt;STELLAR&gt;разведкой цели&lt;&gt;, чтобы ее найти.&#xA;Чтобы подтвердить направление разведки, выйдите из своего транспорта.
                                -- Mission objective is &lt;STELLAR&gt;nearby&lt;&gt;&#xA;Use a &lt;STELLAR&gt;Target Sweep&lt;&gt; to locate the objective&#xA;To confirm target sweep directions, exit your vehicle
                                { "Russian", "Цель задания находится &lt;STELLAR&gt;неподалеку&lt;&gt;&#xA;Воспользуйтесь &lt;STELLAR&gt;разведкой цели&lt;&gt;, чтобы ее найти&#xA;Выйдите из транспорта, чтобы сверить направление" },
                            }
                        },
                        --
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ABAND_HANDIN_CREW_GUILD_OPT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Пожертвовать список экипажа
                                -- Donate Crew Manifest
                                { "Russian", "Отдать список экипажа" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ABAND_HANDIN_CAPT_GUILD_OPT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Пожертвовать журнал капитана
                                -- Donate Captain's Log
                                { "Russian", "Отдать журнал капитана" },
                            }
                        },
                        -- это не так переводится
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_RELAY_POI_HUD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ЗАФИКСИРОВАН АВТОМАТИЧЕСКИЙ ПРИЕМНИК
                                -- AUTOMATED RECEIVER LOCK
                                { "Russian", "АВТОМАТИЧЕСКАЯ БЛОКИРОВКА ПРИЕМНИКА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_LISTENER_POI_HUD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ЗАФИКСИРОВАН АВТОМАТИЧЕСКИЙ ПРИЕМНИК
                                -- AUTOMATED RECEIVER LOCK
                                { "Russian", "АВТОМАТИЧЕСКАЯ БЛОКИРОВКА ПРИЕМНИКА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CLOCK_POI_HUD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ЗАФИКСИРОВАН АВТОМАТИЧЕСКИЙ ПРИЕМНИК
                                -- AUTOMATED RECEIVER LOCK
                                { "Russian", "АВТОМАТИЧЕСКАЯ БЛОКИРОВКА ПРИЕМНИКА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PRISON_POI_HUD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ЗАФИКСИРОВАН АВТОМАТИЧЕСКИЙ ПРИЕМНИК
                                -- AUTOMATED RECEIVER LOCK
                                { "Russian", "АВТОМАТИЧЕСКАЯ БЛОКИРОВКА ПРИЕМНИКА" },
                            }
                        },
                        -- это должно влезать по идее
                        -- проверено: макс 32 символа
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WEIRD_OBJ17_LABEL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Станция гиперпростр. навигации
                                -- Hyperspace Navigation Station
                                { "Russian", "Гиперпространственная станция" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_RELAY_POI_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Зафиксирован ретранслятор связи: &lt;STELLAR&gt;Массив гиперпространственных координат&lt;&gt;.&#xA;Чтобы ответить, нажмите &lt;IMG&gt;QUICK_MENU&lt;&gt;.
                                -- Communication relay locked: &lt;STELLAR&gt;Hyperspace Coordinate Array&lt;&gt;&#xA;Answer the Communicator by pressing &lt;IMG&gt;QUICK_MENU&lt;&gt;
                                { "Russian", "&lt;STELLAR&gt;Станция гиперпространственных координат&lt;&gt; на связи&#xA;Ответьте по коммуникатору из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_LISTENER_POI_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Зафиксирован ретранслятор связи: перехват сигнала из открытого космоса&#xA;Чтобы ответить, нажмите &lt;IMG&gt;QUICK_MENU&lt;&gt;.
                                -- Communication relay locked: Deep Space Listener&#xA;Answer the Communicator by pressing &lt;IMG&gt;QUICK_MENU&lt;&gt;
                                { "Russian", "&lt;STELLAR&gt;Слушатель глубокого космоса&lt;&gt; на связи&#xA;Ответьте по коммуникатору из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CLOCK_POI_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Зафиксирован ретранслятор связи: &lt;STELLAR&gt;Ретранслятор Космической Аномалии&lt;&gt;.&#xA;Чтобы ответить, нажмите &lt;IMG&gt;QUICK_MENU&lt;&gt;.
                                -- Communication relay locked: &lt;STELLAR&gt;Space Anomaly Relay&lt;&gt;&#xA;Answer the Communicator by pressing &lt;IMG&gt;QUICK_MENU&lt;&gt;
                                { "Russian", "&lt;STELLAR&gt;Космическая аномалия&lt;&gt; на связи&#xA;Ответьте по коммуникатору из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PRISON_POI_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Зафиксирован ретранслятор связи: &lt;FUEL&gt;УПРАВЛЕНИЕ СРЕДСТВАМИ СДЕРЖИВАНИЯ&lt;&gt;&#xA;Чтобы ответить, нажмите &lt;IMG&gt;QUICK_MENU&lt;&gt;.
                                -- Communication relay locked: &lt;FUEL&gt;CONTAINMENT CONTROL&lt;&gt;&#xA;Answer the Communicator by pressing &lt;IMG&gt;QUICK_MENU&lt;&gt;
                                { "Russian", "&lt;FUEL&gt;УПРАВЛЕНИЕ СРЕДСТВАМИ СДЕРЖИВАНИЯ&lt;&gt; на связи&#xA;Ответьте по коммуникатору из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },

                        --#region Не двигайтесь, пока гнездо возбуждено
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SAC_WARNING_SPOOK" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;FUEL&gt;Не двигайтесь&lt;&gt;, пока гнездо возбуждено.&#xA;Состояние гнезда: %AGGRO%
                                -- &lt;FUEL&gt;Do not move&lt;&gt; while the nest is stirring.&#xA;Nest status: %AGGRO%
                                { "Russian", "&lt;FUEL&gt;Не двигайтесь&lt;&gt;, пока гнездо возбуждено&#xA;Гнездо сейчас %AGGRO%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SAC_STATE_NONE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TRADEABLE&gt;Спит&lt;&gt;
                                { "Russian", "&lt;TRADEABLE&gt;спит&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SAC_STATE_AWAKE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Возбуждено&lt;&gt;
                                { "Russian", "&lt;STELLAR&gt;возбуждено&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SAC_STATE_AGGRO" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;FUEL&gt;Встревожено&lt;&gt;
                                { "Russian", "&lt;FUEL&gt;встревожено&lt;&gt;" },
                            }
                        },
                        --#endregion

                        -- на экране задания, итак очевидно от чего отказываемся
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MB_ABANDONED_LABEL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Отказаться от задания
                                -- Abandon Mission
                                { "Russian", "Отказаться" },
                            }
                        },
                        -- отображается в списке игроков поблизости
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MY_FRIEND_CODE_ALT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Мой код друга No Man’s Sky:
                                -- My No Man's Sky Friend Code:
                                { "Russian", "Мой код:" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ADD_FRIEND_CODE_ALT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добавить нового друга в No Man’s Sky
                                -- Add No Man's Sky Friend
                                { "Russian", "Добавить друга" },
                            }
                        },
                        --
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ABAND_FREIGHT_HEAT_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Нагреватели&lt;&gt; разбросаны по заброшенному кораблю.&#xA;Используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;) для поиска &lt;STELLAR&gt;нагревателей&lt;&gt;.
                                -- &lt;STELLAR&gt;Heaters&lt;&gt; litter the derelict ship&#xA;Use the &lt;TECHNOLOGY&gt;Analysis Visor&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;) to search for &lt;STELLAR&gt;Heaters&lt;&gt;
                                { "Russian", "&lt;STELLAR&gt;Нагреватели&lt;&gt; разбросаны по заброшенному кораблю&#xA;Используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;) для поиска &lt;STELLAR&gt;нагревателей&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ABAND_FREIGHT_HINT_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- На космической станции есть &lt;STELLAR&gt;сборщик утиля&lt;&gt;.&#xA;Посетите сборщика утиля, чтобы узнать о новых возможностях...
                                -- Space Station &lt;STELLAR&gt;Scrap Dealer&lt;&gt; available&#xA;Visit the Scrap Dealer to learn of new opportunities...
                                { "Russian", "На космической станции есть &lt;STELLAR&gt;сборщик утиля&lt;&gt;&#xA;Навестите его и узнайте о новых возможностях..." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ABAND_FREIGHT_HINT_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Получен &lt;TECHNOLOGY&gt;сканер аварийных сигналов&lt;&gt;.&#xA;Чтобы воспользоваться им, выберите приемник в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;).&#xA;&lt;STELLAR&gt;Настройте сигнал&lt;&gt; с помощью &lt;IMG&gt;FE_ALT1&lt;&gt;.
                                -- &lt;TECHNOLOGY&gt;Emergency Signal Scanner&lt;&gt; acquired&#xA;To use it, locate the Receiver in the Inventory (&lt;IMG&gt;INVENTORY&lt;&gt;)&#xA;&lt;STELLAR&gt;Tune the signal&lt;&gt; with &lt;IMG&gt;FE_ALT1&lt;&gt;
                                { "Russian", "Получен &lt;TECHNOLOGY&gt;сканер аварийных сигналов&lt;&gt;&#xA;Выберите его в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;) и &lt;STELLAR&gt;поймайте сигнал&lt;&gt; (&lt;IMG&gt;FE_ALT1&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ABAND_FREIGHT_NEARBY_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Включен &lt;TECHNOLOGY&gt;сканер аварийных сигналов&lt;&gt;.&#xA;Вернитесь на корабль, чтобы начать поиск.
                                -- &lt;TECHNOLOGY&gt;Emergency Signal Scanner&lt;&gt; activated&#xA;Return to your ship to begin the search
                                { "Russian", "Включен &lt;TECHNOLOGY&gt;сканер аварийных сигналов&lt;&gt;&#xA;Вернитесь на корабль, чтобы начать поиск" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ABAND_FREIGHT_NEARBY_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Активирован &lt;TECHNOLOGY&gt;сканер аварийных сигналов&lt;&gt;.&#xA;Включите &lt;TECHNOLOGY&gt;импульсный привод&lt;&gt;, чтобы начать процесс настройки.
                                -- &lt;TECHNOLOGY&gt;Emergency Signal Scanner&lt;&gt; activated&#xA;Activate the &lt;TECHNOLOGY&gt;Pulse Drive&lt;&gt; to begin tuning process
                                { "Russian", "Включен &lt;TECHNOLOGY&gt;сканер аварийных сигналов&lt;&gt;&#xA;Запустите &lt;TECHNOLOGY&gt;импульсный двигатель&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ABAND_FREIGHT_NEARBY_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сигнал отслеживания блокируется.&#xA;Ответьте на вызов по &lt;STELLAR&gt;коммуникатору&lt;&gt;, чтобы избавиться от помех.
                                -- Tracking signal jammed&#xA;Answer the &lt;STELLAR&gt;Communicator&lt;&gt; to unjam tracker
                                { "Russian", "Сигнал отслеживания блокируется&#xA;Ответьте на вызов по &lt;STELLAR&gt;коммуникатору&lt;&gt;, чтобы избавиться от помех" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ABAND_TELE_USED_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Телепорты &lt;STELLAR&gt;переключаются по порядку&lt;&gt; между всеми доступными комнатами.&#xA;Телепортируйтесь еще раз, чтобы попасть в следующую комнату.
                                -- Teleporters will &lt;STELLAR&gt;cycle&lt;&gt; between all available rooms&#xA;Teleport again to reach the next room
                                { "Russian", "Телепорты &lt;STELLAR&gt;переключаются по порядку&lt;&gt;&#xA;между всеми доступными комнатами" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CAPTFATE_LANG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;FUEL&gt;&lt;AUDIO&gt;UI_GameMode_Erase_Error&lt;&gt;ДОСТУП К ЛИЧНОМУ КОМПЬЮТЕРУ ЗАПРЕЩЕН&lt;&gt;&lt;IMG&gt;SLASH&lt;&gt; Для получения доступа к личному журналу требуется ДНК капитана.&#xA;...&#xA;Биологическое сканирование указывает на значительное происшествие. Доступен перехват управления. Чтобы начать, сообщите статус капитана.
                                -- &lt;FUEL&gt;&lt;AUDIO&gt;UI_GameMode_Erase_Error&lt;&gt;PRIVATE MAINFRAME ACCESS DENIED&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt; Captain's DNA required to access personal log.&#xA;...&#xA;Shipwide bio-scans indicate severe incident status. Override available. Indicate Captain's fate to begin.
                                { "Russian", "&lt;FUEL&gt;&lt;AUDIO&gt;UI_GameMode_Erase_Error&lt;&gt;ДОСТУП К ЛИЧНОМУ КОМПЬЮТЕРУ ЗАПРЕЩЕН&lt;&gt;&lt;NEWLINE&gt;Для получения доступа требуется ДНК капитана&#xA;...&#xA;Биологическое сканирование указывает на значительное происшествие. Доступен перехват управления. Чтобы начать, сообщите статус капитана." },
                            }
                        },
                        --
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_POI_LOCATOR_MSG0" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- В ближайшем космосе обнаружен аномальный объект.&#xA;Включите &lt;TECHNOLOGY&gt;импульсный привод&lt;&gt;, чтобы начать поиск в другом регионе.
                                -- Anomalous object already in near-space&#xA;Activate the &lt;TECHNOLOGY&gt;Pulse Drive&lt;&gt; to search a different region
                                { "Russian", "Аномальный объект где-то неподалеку в космосе&#xA;Запустите &lt;TECHNOLOGY&gt;импульсный двигатель&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_POI_LOCATOR_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поиск близлежащих звездных аномалий...&#xA;Волна зондирования: %SIGNAL%...
                                -- Detecting nearby stellar anomalies...&#xA;Probing wavelength: %SIGNAL%...
                                { "Russian", "Поиск близлежащих звёздных аномалий...&#xA;Волна зондирования: %SIGNAL%..." },
                            }
                        },
                        -- людей нельзя списывать... и инопланетян тоже... как бы они нас не списали
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ABAND_CREWNOTE_13" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вступил в отношения с пассажиром. Списал с судна на следующей станции.
                                -- In a relationship with a passenger. Have them removed at next station.
                                { "Russian", "Вступил в отношения с пассажиром. Вышвырнул их с корабля на следующей станции." },
                            }
                        },
                        --
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FREIGHTER_TELEPORTER_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Включите терминал телепорта
                                -- Reactivate Teleport Terminal
                                { "Russian", "Включить терминал телепорта" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_POI_LOCATOR_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Включен &lt;TECHNOLOGY&gt;детектор аномалий&lt;&gt;.&#xA;Вернитесь на корабль, чтобы начать поиск.
                                -- &lt;TECHNOLOGY&gt;Anomaly Detector&lt;&gt; activated&#xA;Return to your ship to begin the search
                                { "Russian", "Включен &lt;TECHNOLOGY&gt;детектор аномалий&lt;&gt;&#xA;Вернитесь на корабль, чтобы начать поиск" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_POI_LOCATOR_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Включен &lt;TECHNOLOGY&gt;детектор аномалий&lt;&gt;.&#xA;Включите &lt;TECHNOLOGY&gt;импульсный привод&lt;&gt;, чтобы облегчить поиск.
                                -- &lt;TECHNOLOGY&gt;Anomaly Detector&lt;&gt; activated&#xA;Activate the &lt;TECHNOLOGY&gt;Pulse Drive&lt;&gt; to assist its search
                                { "Russian", "Включен &lt;TECHNOLOGY&gt;детектор аномалий&lt;&gt;&#xA;Запустите &lt;TECHNOLOGY&gt;импульсный двигатель&lt;&gt;&#xA;и начните поиск" },
                            }
                        },
                        -- и даже эта простая вещь может вылазить за рамки интерфейса
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_INFO_MULTI_BASE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %BASE_NAME% и другие базы (%NUM% шт.)
                                -- %BASE_NAME% &amp; %NUM% other bases
                                { "Russian", "%BASE_NAME% и %NUM% др." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ABAND_PUNISHMENT_12" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Будет списан с судна на следующей станции
                                -- Will be removed at next space station
                                { "Russian", "Будет оставлен на следующей станции" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "QUICK_MENU_SUM_FREIGHT_POI" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Не удается вызвать грузовое судно :: Поблизости находится аномальный объект
                                -- Cannot Summon Freighter :: Anomalous Object Proximity
                                { "Russian", "Нельзя вызвать грузовое судно из-за аномального объекта поблизости" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_STAGE_STAT_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПРЕОДОЛЕННОЕ РАССТОЯНИЕ: &lt;EXPED&gt;%NUM%&lt;&gt; св. л.
                                -- DISTANCE TRAVELLED &lt;EXPED&gt;%NUM%&lt;&gt;ly
                                { "Russian", "ПРЕОДОЛЕНО &lt;EXPED&gt;%NUM%&lt;&gt; СВ. ЛЕТ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_STAGE_STAT_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПРОЙДЕННАЯ ДИСТАНЦИЯ: &lt;EXPED&gt;%NUM%&lt;&gt; ед.
                                -- DISTANCE WALKED &lt;EXPED&gt;%NUM%&lt;&gt;u
                                { "Russian", "ПРОЙДЕНО ПЕШКОМ: &lt;EXPED&gt;%NUM%&lt;&gt;" },
                            }
                        },
                        --#region UI_EGGMODIFY_
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EGGMODIFY_HINT_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Яйца питомцев можно генетически модифицировать.&#xA;Посетите &lt;TECHNOLOGY&gt;секвенсор яиц&lt;&gt;, чтобы модифицировать яйцо.
                                { "Russian", "Яйца питомцев можно генетически модифицировать&#xA;Посетите &lt;TECHNOLOGY&gt;секвенсор яиц&lt;&gt;, чтобы модифицировать яйцо" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EGGMODIFY_HINT_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Яйца питомцев можно генетически модифицировать.&#xA;Поместите яйцо в &lt;TECHNOLOGY&gt;секвенсор яиц&lt;&gt;, чтобы модифицировать его.
                                { "Russian", "Яйца питомцев можно генетически модифицировать&#xA;Поместите яйцо в &lt;TECHNOLOGY&gt;секвенсор яиц&lt;&gt;, чтобы модифицировать его" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EGGMODIFY_NEXUS_HINT_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Инкубация яиц питомцев занимает какое-то время.&#xA;Новое существо &lt;STELLAR&gt;унаследует&lt;&gt; черты своего родителя.&#xA;Вы также можете &lt;STELLAR&gt;модифицировать&lt;&gt; яйцо на борту &lt;SPECIAL&gt;Космической Аномалии&lt;&gt;.
                                { "Russian", "Инкубация яиц питомцев занимает какое-то время&#xA;Новое существо &lt;STELLAR&gt;унаследует&lt;&gt; черты своего родителя&#xA;Вы также можете &lt;STELLAR&gt;модифицировать&lt;&gt; яйцо на борту &lt;SPECIAL&gt;Космической Аномалии&lt;&gt;" },
                            }
                        },
                        --#endregion
                        --
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EGGHATCH_HINT_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TRADEABLE&gt;Новый питомец&lt;&gt; готов вылупиться из яйца!&#xA;Найдите яйцо в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;).&#xA;Затем нажмите &lt;IMG&gt;FE_ALT1&lt;&gt;, чтобы из &lt;STELLAR&gt;яйца питомца&lt;&gt;&lt;STELLAR&gt;появилось&lt;&gt; новое существо.
                                -- An egg is ready to hatch into a &lt;TRADEABLE&gt;new companion&lt;&gt;!&#xA;Locate the egg in the Inventory (&lt;IMG&gt;INVENTORY&lt;&gt;)&#xA;Then &lt;STELLAR&gt;hatch&lt;&gt; the &lt;STELLAR&gt;Companion Egg&lt;&gt; with &lt;IMG&gt;FE_ALT1&lt;&gt;
                                { "Russian", "&lt;TRADEABLE&gt;Новый питомец&lt;&gt; готов вылупиться из яйца!&#xA;Найдите &lt;STELLAR&gt;яйцо&lt;&gt; в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;)&#xA;&lt;STELLAR&gt;Получите потомство&lt;&gt; с помощью &lt;IMG&gt;FE_ALT1&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_POI_LOCATOR_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Устройство наведения на аномалии
                                -- Anomalous Homing Device
                                { "Russian", "Устройство для поиска аномалий" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SPACE_STATION_CORE_LANG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Системы жизнеобеспечения: &lt;TRADEABLE&gt;стабильны&lt;&gt;... Коммерческое наблюдение: &lt;TRADEABLE&gt;включено&lt;&gt;... &lt;NEWLINE&gt;Управление траекторией полета: &lt;TRADEABLE&gt;эффективность 84%&lt;&gt;... &lt;NEWLINE&gt;Канал связи с системой наблюдения Атласа/Эрона: &lt;SPECIAL&gt;Функционирует&lt;&gt;...
                                -- Life support systems: &lt;TRADEABLE&gt;Stable&lt;&gt;... Commercial monitoring: &lt;TRADEABLE&gt;Online&lt;&gt;... &lt;NEWLINE&gt;Flight path management: &lt;TRADEABLE&gt;84% efficiency&lt;&gt;... &lt;NEWLINE&gt;Atlas/Aeron Surveillance Uplink: &lt;SPECIAL&gt;Functional&lt;&gt;...
                                { "Russian", "Системы жизнеобеспечения: &lt;TRADEABLE&gt;стабильны&lt;&gt;...&lt;NEWLINE&gt;Коммерческое наблюдение: &lt;TRADEABLE&gt;включено&lt;&gt;...&lt;NEWLINE&gt;Управление траекторией полета: &lt;TRADEABLE&gt;эффективность 84%&lt;&gt;...&lt;NEWLINE&gt;Канал связи с системой наблюдения Атласа/Эрона: &lt;SPECIAL&gt;функционирует&lt;&gt;..." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FREIGHT_INV_TOKEN_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Технологический модуль, найденный среди обломков &lt;STELLAR&gt;покинутого грузового судна&lt;&gt;, дрейфующего в космосе. Также можно найти во время &lt;STELLAR&gt;экспедиций фрегатов&lt;&gt;.&#xA;&#xA;Расфасованные нанорасширители заполняют этот переносной модуль и переносят его на грузовое судно, увеличивая &lt;STELLAR&gt;размер его инвентаря&lt;&gt;. Установите с помощью &lt;TECHNOLOGY&gt;терминала улучшения&lt;&gt; вашего грузового судна.
                                -- A technology module harvested from the remains of an &lt;STELLAR&gt;abandoned freighter&lt;&gt; found floating in space. May also be salvaged during &lt;STELLAR&gt;frigate expeditions&lt;&gt;.&#xA;&#xA;Pre-packed nano-expanders fill out this portable unit and graft it to an existing freighter, increasing its &lt;STELLAR&gt;inventory capacity&lt;&gt;. Apply at your freighter's &lt;TECHNOLOGY&gt;Upgrade Terminal&lt;&gt;.
                                { "Russian", "Технологический модуль, найденный среди обломков &lt;STELLAR&gt;покинутого грузового судна&lt;&gt;, дрейфующего в космосе. Также можно найти во время &lt;STELLAR&gt;экспедиций&lt;&gt;.&#xA;&#xA;Расфасованные нанорасширители заполняют этот переносной модуль и переносят его на грузовое судно, увеличивая &lt;STELLAR&gt;размер его инвентаря&lt;&gt;. Установите с помощью &lt;TECHNOLOGY&gt;терминала улучшений&lt;&gt; вашего грузового судна." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SPECIAL_SHIP_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Эксклюзивный космический корабль
                                -- Exclusive Spacecraft
                                { "Russian", "Эксклюзивный звездолёт" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WEAPON_UPGRADE_OPT_B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Применить цепь улучшения
                                -- Apply Upgrade Circuit
                                { "Russian", "Применить улучшение" },
                            }
                        },
                        -- на экране звездолета
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WEIRD_OBJ5_HUD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ОБНАРУЖЕН ПЕРЕХВАТ СОЗНАНИЯ
                                -- CONSCIOUSNESS OVERRIDE DETECTED
                                { "Russian", "ЗАФИКСИРОВАН&#xA;ПЕРЕХВАТ СОЗНАНИЯ" },
                            }
                        },
                        --
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WEIRD_OBJ3_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- На канале связи обнаружена волна восстановленного сознания.&#xA;Чтобы ответить, нажмите &lt;IMG&gt;QUICK_MENU&lt;&gt;.
                                -- Reconstructed consciousness wave detected on hailing frequency&#xA;Answer the Communicator by pressing &lt;IMG&gt;QUICK_MENU&lt;&gt;
                                { "Russian", "&lt;STELLAR&gt;Реконструированное сознание&lt;&gt; на связи&#xA;Ответьте по коммуникатору из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WEIRD_OBJ5_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- На канале связи обнаружена волна восстановленного сознания.&#xA;Чтобы ответить, нажмите &lt;IMG&gt;QUICK_MENU&lt;&gt;.
                                -- Reconstructed consciousness wave detected on hailing frequency&#xA;Answer the Communicator by pressing &lt;IMG&gt;QUICK_MENU&lt;&gt;
                                { "Russian", "&lt;STELLAR&gt;Реконструированное сознание&lt;&gt; на связи&#xA;Ответьте по коммуникатору из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WEIRD_OBJ13_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружен автоматический сигнал связи&#xA;Чтобы ответить, нажмите &lt;IMG&gt;QUICK_MENU&lt;&gt;.
                                -- Automated communication signal detected&#xA;Answer the Communicator by pressing &lt;IMG&gt;QUICK_MENU&lt;&gt;
                                { "Russian", "Автоматическая система на связи&#xA;Ответьте по коммуникатору из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JELLY_POI_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Зафиксирована передача: &lt;STELLAR&gt;Неизвестный разум&lt;&gt;&#xA;Чтобы ответить, нажмите &lt;IMG&gt;QUICK_MENU&lt;&gt;.
                                -- Communications locked: &lt;STELLAR&gt;Unknown Intelligence&lt;&gt;&#xA;Answer the Communicator by pressing &lt;IMG&gt;QUICK_MENU&lt;&gt;
                                { "Russian", "&lt;STELLAR&gt;Неизвестный разум&lt;&gt; на связи&#xA;Ответьте по коммуникатору из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NORMANDY_HAIL_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- На шифруемой частоте выхода на связь обнаружена историческая аномалия.&#xA;Чтобы ответить, нажмите &lt;IMG&gt;QUICK_MENU&lt;&gt;.
                                -- Historical anomaly detected on scrambled hailing frequency&#xA;Answer the Communicator by pressing &lt;IMG&gt;QUICK_MENU&lt;&gt;
                                { "Russian", "Пойман зашифрованный сигнал &lt;STELLAR&gt;исторической аномалии&lt;&gt;&#xA;Ответьте по коммуникатору из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        -- слово "схема" в обиходе только у электроников, для остальных нужно уточнение
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WEAPON_INV_TOKEN_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Универсальная схема улучшения, совместимая со всеми &lt;STELLAR&gt;личными мультитулами&lt;&gt;.&#xA;&#xA;Этот модуль можно установить в мультитул на &lt;STELLAR&gt;стойке улучшения мультитула&lt;&gt; на борту космической станции. Он откроет пользователю дополнительное пространство на внутренней раскладке мультитула, что позволит установить еще больше улучшений и специализированных технологий.
                                -- A flexible upgrade circuit, compatible with all &lt;STELLAR&gt;person Multi-Tools&lt;&gt;.&#xA;&#xA;This module can be wired into a Multi-Tool at a Space Station &lt;STELLAR&gt;Multi-Tool Upgrade Rack&lt;&gt;, granting the user more space in the Multi-Tool's internal layout to add further upgrades or technology specialisations.
                                { "Russian", "Универсальная электронная схема улучшения, совместимая со всеми &lt;STELLAR&gt;личными мультитулами&lt;&gt;.&#xA;&#xA;Этот модуль можно установить в мультитул на &lt;STELLAR&gt;стойке улучшения мультитула&lt;&gt; на борту космической станции. Он откроет пользователю дополнительное пространство на внутренней раскладке мультитула, что позволит установить еще больше улучшений и специализированных технологий." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_STARCHART_TREASURE_HINT_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- На &lt;STELLAR&gt;карте руин с сокровищами&lt;&gt; указаны маршруты к &lt;SPECIAL&gt;древним руинам&lt;&gt;.&#xA;Откройте карту руин с сокровищами в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;) и &lt;STELLAR&gt;проложите курс&lt;&gt; с помощью &lt;IMG&gt;FE_ALT1&lt;&gt;.
                                -- The &lt;STELLAR&gt;Treasure Ruin Chart&lt;&gt; contains directions to an &lt;SPECIAL&gt;ancient ruined site&lt;&gt;&#xA;Access the Treasure Ruin Chart in your Inventory (&lt;IMG&gt;INVENTORY&lt;&gt;) and &lt;STELLAR&gt;plot a route&lt;&gt; with &lt;IMG&gt;FE_ALT1&lt;&gt;
                                { "Russian", "На &lt;STELLAR&gt;карте руин с сокровищами&lt;&gt; указан&#xA;маршрут к &lt;SPECIAL&gt;древним руинам&lt;&gt;&#xA;Найдите карту руин с сокровищами в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;)&#xA;и &lt;STELLAR&gt;проложите курс&lt;&gt; с помощью &lt;IMG&gt;FE_ALT1&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TIP_TREASURERUIN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TITLE&gt;Обнаружены древние руины&lt;&gt;&#xA;Есть археологические сокровища
                                -- &lt;TITLE&gt;Ancient ruined site detected&lt;&gt;&#xA;Archaeological treasures available
                                { "Russian", "&lt;TITLE&gt;Обнаружены древние руины&lt;&gt;&#xA;Найдите археологические сокровища" },
                            }
                        },
                        -- изначальная формулировка это полный бред, какой объект, какой хост
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_POI_REVEAL_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ОБЪЕКТ ИЩЕТ СВОЕГО ХОЗЯИНА... ПОИСК...
                                -- OBJECT IS SEARCHING FOR ITS HOST... SEARCHING...
                                { "Russian", "ОПРЕДЕЛЕНИЕ ИСТОЧНИКА СИГНАЛА... ПОИСК..." },
                            }
                        },
                        --
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPLORE_LOG_OBJ_PLANET" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Исследовать планету %NAME% (%DESC%)
                                -- Explore %NAME%, %DESC%
                                { "Russian", "Исследовать %NAME%, %DESC%" },
                            }
                        },
                        -- не хватает пробелов
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPLORE_LOG_PLANET_BONUS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Обнаружены все существа!&lt;&gt; Зарегистрируйте полный каталог на странице открытий.&#xA;&lt;VAL_ON&gt;Задокументировано флоры:&lt;&gt;&lt;%PLANT_GRADE%&gt;%PLANTS%&lt;&gt; / &lt;%PLANT_GRADE%&gt;%PLANTS_MAX%&lt;&gt;&#xA;&lt;VAL_ON&gt;Изучено минералов:&lt;&gt;&lt;%MIN_GRADE%&gt;%MINERALS%&lt;&gt; / &lt;%MIN_GRADE%&gt;%MINERALS_MAX%&lt;&gt;&#xA;&#xA;&lt;VAL_ON&gt;Погода:&lt;&gt;%WEATHER%&#xA;&lt;VAL_ON&gt;Возраст:&lt;&gt; около %AGE% млрд лет&#xA;&lt;VAL_ON&gt;Атмосфера:&lt;&gt;%ATMOS%&#xA;&lt;VAL_ON&gt;Основной элемент ядра:&lt;&gt;%CORE%&#xA;&lt;VAL_ON&gt;Геология:&lt;&gt;%TERRAIN%&#xA;&lt;VAL_ON&gt;Примечания:&lt;&gt;%NOTE%
                                -- &lt;STELLAR&gt;All Creatures Discovered!&lt;&gt; Register complete catalogue in the Discovery Page&#xA;&lt;VAL_ON&gt;Flora documented:&lt;&gt; &lt;%PLANT_GRADE%&gt;%PLANTS%&lt;&gt; / &lt;%PLANT_GRADE%&gt;%PLANTS_MAX%&lt;&gt;&#xA;&lt;VAL_ON&gt;Minerals analysed:&lt;&gt; &lt;%MIN_GRADE%&gt;%MINERALS%&lt;&gt; / &lt;%MIN_GRADE%&gt;%MINERALS_MAX%&lt;&gt;&#xA;&#xA;&lt;VAL_ON&gt;Weather:&lt;&gt; %WEATHER%&#xA;&lt;VAL_ON&gt;Age:&lt;&gt; Approx. %AGE% billion years&#xA;&lt;VAL_ON&gt;Atmosphere:&lt;&gt; %ATMOS%&#xA;&lt;VAL_ON&gt;Primary Core Element:&lt;&gt; %CORE%&#xA;&lt;VAL_ON&gt;Geology:&lt;&gt; %TERRAIN%&#xA;&lt;VAL_ON&gt;Other Notes:&lt;&gt; %NOTE%
                                { "Russian", "&lt;STELLAR&gt;Обнаружены все существа!&lt;&gt; Зарегистрируйте полный каталог на странице открытий&#xA;&lt;VAL_ON&gt;Задокументировано флоры:&lt;&gt; &lt;%PLANT_GRADE%&gt;%PLANTS%&lt;&gt; / &lt;%PLANT_GRADE%&gt;%PLANTS_MAX%&lt;&gt;&#xA;&lt;VAL_ON&gt;Изучено минералов:&lt;&gt; &lt;%MIN_GRADE%&gt;%MINERALS%&lt;&gt; / &lt;%MIN_GRADE%&gt;%MINERALS_MAX%&lt;&gt;&#xA;&#xA;&lt;VAL_ON&gt;Погода:&lt;&gt; %WEATHER%&#xA;&lt;VAL_ON&gt;Возраст:&lt;&gt; около %AGE% млрд лет&#xA;&lt;VAL_ON&gt;Атмосфера:&lt;&gt; %ATMOS%&#xA;&lt;VAL_ON&gt;Основной элемент ядра:&lt;&gt; %CORE%&#xA;&lt;VAL_ON&gt;Геология:&lt;&gt; %TERRAIN%&#xA;&lt;VAL_ON&gt;Примечания:&lt;&gt; %NOTE%" },
                            }
                        },
                        -- это косяк разрабов, дословно восстановленный предмет, но т.к. на самом деле никакого восстановления нет в помине
                        -- то это просто предмет, который нашли, протерли пыль и всё. протереть пыль это не восстановить
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_UNDERGROUND_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Извлеченный предмет
                                -- Recovered Item
                                { "Russian", "Находка" },
                            }
                        },
                        -- эта простыня текста не влазеет в интерфейс
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_COG_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Из-за повреждений этот технологический компонент оказался непригоден к использованию, поэтому хозяин решил его выбросить.&#xA;&#xA;Может использоваться только как лом, в иных целях неприменим. Выберите этот предмет в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;) и используйте &lt;IMG&gt;FE_ALT1&lt;&gt;, чтобы разобрать его на полезные материалы.
                                -- A damaged technology component, ejected from its machine and discarded by its owner.&#xA;&#xA;Worthless, except as scrap. Select in the Inventory (&lt;IMG&gt;INVENTORY&lt;&gt;) and use &lt;IMG&gt;FE_ALT1&lt;&gt; to break it down into useful materials.
                                { "Russian", "Владелец вытащил этот поврежденный компонент из технологии, а затем выбросил.&#xA;&#xA;Бесполезный лом. Выберите предмет в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;) и используйте &lt;IMG&gt;FE_ALT1&lt;&gt;, чтобы разобрать его на полезные материалы." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DISMANTLE_PROC_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Переработать поврежденную технологию на детали
                                -- Process damage technology into parts
                                { "Russian", "Разобрать поврежденную технологию на детали" },
                            }
                        },
                        -- %NAME% идет капсом. Капс и некапс не совместимы
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_FORMAT_DATA" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запись о виде: %NAME%
                                -- Species record: %NAME%
                                { "Russian", "“%NAME%”" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_FORMAT_DATA_ROCK" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запись о минерале: %NAME%
                                -- Mineral record: %NAME%
                                { "Russian", "“%NAME%”" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_DATA_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Фрагмент данных об открытии с планеты %PLANET%. Предмет рассмотрения: &lt;STELLAR&gt;%TYPE%&lt;&gt;. Данные собраны итерацией Странника по имени %ITERATION%.&#xA;&#xA;%DETAILS%
                                -- A fragment of discovery data from planet %PLANET%, concerning local &lt;STELLAR&gt;%TYPE%&lt;&gt;. It is marked as having been collected by Traveller Iteration %ITERATION%.&#xA;&#xA;%DETAILS%
                                { "Russian", "Фрагмент данных о &lt;STELLAR&gt;%TYPE%&lt;&gt; на планете %PLANET%. Итерация Странник %ITERATION% собрал эти данные.&#xA;&#xA;%DETAILS%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_DATA_DESC2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Фрагмент данных об открытии с планеты %PLANET%. Предмет рассмотрения: &lt;STELLAR&gt;%TYPE%&lt;&gt;. Данные собрал местный %RACE%-исследователь.&#xA;&#xA;%DETAILS%
                                -- A fragment of discovery data from planet %PLANET%, concerning local &lt;STELLAR&gt;%TYPE%&lt;&gt;. It is marked as having been collected by a local %RACE% explorer.&#xA;&#xA;%DETAILS%
                                { "Russian", "Фрагмент данных о &lt;STELLAR&gt;%TYPE%&lt;&gt; на планете %PLANET%. Данные собрал местный %RACE%-исследователь.&#xA;&#xA;%DETAILS%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_FORMAT_DATA_TYPE_PLANT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- флора (flora)
                                { "Russian", "флоре" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_FORMAT_DATA_TYPE_ROCK" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- минералы (minerals)
                                { "Russian", "минералах" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_FORMAT_DATA_TYPE_CREA" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- фауна (fauna)
                                { "Russian", "фауне" },
                            }
                        },
                        -- речь идет о виде
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CREATURE_EXTINCT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вымерш.
                                -- Extinct
                                { "Russian", "Вымер" },
                            }
                        },
                        --
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MB_DETAILS_TITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;DIAMONDBULLET&lt;&gt; ОТЧЕТ ПО ЗАДАНИЮ
                                -- &lt;IMG&gt;DIAMONDBULLET&lt;&gt; MISSION SUMMARY
                                { "Russian", "&lt;IMG&gt;DIAMONDBULLET&lt;&gt; КРАТКОЕ ОПИСАНИЕ" },
                            }
                        },
                        --
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DISMANTLE_DATA_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Переработать данные для получения нанитов
                                -- Process data into Nanites
                                { "Russian", "Обработать данные для получения нанитов" },
                            }
                        },
                        --
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DISTANCE_INSTALL_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Закрепить выбранные данные установки как текущее задание
                                -- Pin specific installation details as active mission
                                { "Russian", "Добавить инструкцию по установке в журнал" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DISTANCE_PIN_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Закрепить выбранные данные по ремонту как текущее задание
                                -- Pin specific repair details as active mission
                                { "Russian", "Добавить инструкцию по ремонту в журнал" },
                            }
                        },
                        -- прокрутка
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_STATION_INFO_RACE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Доминирующая форма жизни
                                -- Dominant Lifeform
                                { "Russian", "Раса" },
                            }
                        },
                        --
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MISSIONSURVEY_TRACKING_GOOD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- - &lt;STELLAR&gt;Цель найдена&lt;&gt; -
                                -- - &lt;STELLAR&gt;Target Aligned&lt;&gt; -
                                { "Russian", "- &lt;STELLAR&gt;Цель прямо по курсу&lt;&gt; -" },
                            }
                        },
                        --
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ABAND_BREACH_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- НАЧАТО ВСКРЫТИЕ ШЛЮЗА
                                -- AIRLOCK BREACH INITIATED
                                { "Russian", "ВСКРЫТИЕ ШЛЮЗА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "PULSE_ENCOUNTER_OSD_ABAND" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ОБНАРУЖЕН АВАРИЙНЫЙ СИГНАЛ&lt;IMG&gt;SLASH&lt;&gt; ПРЕРВИТЕ ИМПУЛЬС ДЛЯ ПЕРЕХВАТА
                                -- EMERGENCY BROADCAST DETECTED &lt;IMG&gt;SLASH&lt;&gt; EXIT PULSE TO INTERCEPT
                                { "Russian", "ОБНАРУЖЕН АВАРИЙНЫЙ СИГНАЛ &lt;IMG&gt;SLASH&lt;&gt; СНИЗЬТЕ СКОРОСТЬ ДЛЯ ПЕРЕХВАТА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SAC_BURST_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ОБНАРУЖЕНА ВСПЫШКА ЗАРАЖЕНИЯ
                                -- INFESTATION OUTBREAK DETECTED
                                { "Russian", "ОБНАРУЖЕН ОЧАГ ЗАРАЖЕНИЯ" },
                            }
                        },
                        --
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ABAND_LOCATOR_X_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- СКАНЕР АВАРИЙНЫХ СИГНАЛОВ (АКТИВ.)
                                -- EMERGENCY SIGNAL SCANNER (ACTIVE)
                                { "Russian", "АКТИВИРОВАННЫЙ СКАНЕР АВАРИЙНЫХ СИГНАЛОВ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ABAND_LOCATOR_X_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сканер аварийных сигналов (актив.)
                                { "Russian", "Активированный сканер аварийных сигналов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ABAND_LOCATOR_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Данные координат
                                -- Coordinate Data
                                { "Russian", "Координатные данные" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_USE_ABAND_LOCATOR" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- НАСТРОИТЬ СИГНАЛ
                                -- TUNE SIGNAL
                                { "Russian", "ПОЙМАТЬ СИГНАЛ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_USE_ABAND_LOCATOR_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Искать покинутое грузовое судно
                                -- Search for an abandoned freighter
                                { "Russian", "Начать поиски покинутого грузового судна" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ABAND_LOCATOR_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Одноразовый&lt;&gt; приемник, ищущий сигналы бедствия на &lt;TECHNOLOGY&gt;частотах грузовых судов&lt;&gt;. На заброшенных или покинутых грузовых судах зачастую можно найти &lt;STELLAR&gt;ценные предметы&lt;&gt;.&#xA;&#xA;Выберите приемник и настройте сигнал (&lt;IMG&gt;FE_ALT1&lt;&gt;), чтобы приступить к пеленгации.
                                -- A &lt;STELLAR&gt;single-use&lt;&gt; receiver that scans for distress signals on &lt;TECHNOLOGY&gt;freighter frequencies&lt;&gt;. Derelict or abandoned freighters often contain &lt;STELLAR&gt;high-value salvage&lt;&gt;.&#xA;&#xA;Select the Receiver and use Tune Signal (&lt;IMG&gt;FE_ALT1&lt;&gt;) to begin the location process.
                                { "Russian", "&lt;STELLAR&gt;Одноразовый&lt;&gt; радиоприемник для поиска сигнала бедствия &lt;TECHNOLOGY&gt;грузового судна&lt;&gt;. На заброшенных или покинутых грузовых судах зачастую можно найти &lt;STELLAR&gt;ценные предметы&lt;&gt;.&#xA;&#xA;Выберите приемник и поймайте сигнал, нажав &lt;IMG&gt;FE_ALT1&lt;&gt;, чтобы приступить к пеленгации." },
                            }
                        },

                        --#region перенесено из Farscape 20.09.2024
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FREIGHT_INV_TOKEN_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Саморасширяющийся модуль грузового судна
                                -- Auto-Expanding Freighter Module
                                { "Russian", "Модуль расширения грузового судна" },
                            }
                        },
                        --#endregion

                        --#region чтобы закрепить точку на экране экзокостюма
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_STARCHART_TREASURE_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Карта близлежащей планеты. На ней отмечено &lt;SPECIAL&gt;местонахождение древних руин&lt;&gt;. Проведите здесь раскопки, чтобы найти ценные сокровища.&#xA;&#xA;Выберите карту и &lt;VAL_ON&gt;проложите маршрут (&lt;IMG&gt;FE_ALT1&lt;&gt;)&lt;&gt;, чтобы закрепить точку на экране экзокостюма.&#xA;&#xA;Добыть новые карты можно, обмениваясь &lt;COMMODITY&gt;навигационными данными&lt;&gt; с картографом на космической станции.
                                -- A map of a nearby planet. An &lt;SPECIAL&gt;ancient ruined site&lt;&gt; has been marked. Excavating this site is likely to yield valuable treasures.&#xA;&#xA;Select the map and use &lt;VAL_ON&gt;Plot Route (&lt;IMG&gt;FE_ALT1&lt;&gt;)&lt;&gt; to pin the location in your Exosuit display.&#xA;&#xA;New maps can be gained by exchanging &lt;COMMODITY&gt;Navigation Data&lt;&gt; with a Space Station Cartographer.
                                { "Russian", "Карта близлежащей планеты. На ней отмечено &lt;SPECIAL&gt;местонахождение древних руин&lt;&gt;. Проведите здесь раскопки, чтобы найти ценные сокровища.&#xA;&#xA;Выберите карту и &lt;VAL_ON&gt;проложите маршрут (&lt;IMG&gt;FE_ALT1&lt;&gt;)&lt;&gt;, чтобы вывести на экран экзокостюма местоположение руин.&#xA;&#xA;Картограф на космической станции может обменять &lt;COMMODITY&gt;навигационные данные&lt;&gt; на новые карты." },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_FORMAT_COG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %COGADJ%%COGNOUN%
                                -- %COGADJ% %COGNOUN%
                                { "Russian", "%COGADJ% %COGNOUN%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_COG_NOUN_30" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- витки
                                -- Coils
                                { "Russian", "катушки" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_COG_NOUN_90" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Решетка
                                -- Lattice
                                { "Russian", "решетка" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_COG_NOUN_146" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Багажный отсек
                                -- Storage Unit
                                { "Russian", "багажный отсек" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BONES_POI_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПОДАРОК ВРУЧЕН
                                -- A GIFT HAS BEEN BESTOWED
                                { "Russian", "ПОЛУЧЕН ПОДАРОК" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PLANETFACT_BORING6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Плотность ядра: %NUM%г/эл.3
                                -- Core density: %NUM%g/u3
                                { "Russian", "Плотность ядра: %NUM% г/м³" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TIP_VEH_DEC_25" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вай'кинск.
                                -- Vy'keen
                                { "Russian", "Вай’кинский" },
                            }
                        },
                        --
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_SPACEBONE_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Предположительный возраст &lt;VAL_ON&gt;%AGE%00&lt;&gt; лет. Материал — чистое золото.&#xA;&#xA;Маловероятно, что эти кости принадлежали обитателю одной из планет. Видимо, это останки настоящего космического левиафана.
                                -- Approximately &lt;VAL_ON&gt;%AGE%00&lt;&gt; years old, and made from pure gold.&#xA;&#xA;These bones are unlike those of any terrestial creature. The remains of a true deep-space leviathan.
                                { "Russian", "Примерный возраст — &lt;VAL_ON&gt;%AGE%00&lt;&gt; лет.&#xA;&#xA;Маловероятно, что эти кости из чистого золота принадлежали обитателю одной из планет. Это останки настоящего космического левиафана." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_FORMAT_SPACEFEAR_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %SPACEFEARADJ%%SPACEFEARNOUN%
                                -- %SPACEFEARADJ% %SPACEFEARNOUN%
                                { "Russian", "%SPACEFEARADJ% %SPACEFEARNOUN%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_FORMAT_SPACEFEAR_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %SPACEFEARADJ%%SPACEFEARNOUN%
                                -- %SPACEFEARADJ% %SPACEFEARNOUN%
                                { "Russian", "%SPACEFEARADJ% %SPACEFEARNOUN%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WEIRD_OBJ20_LABEL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сброшенное хранилище
                                -- Jettisoned Storage Silo
                                { "Russian", "Выброшенные грузовые отсеки" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_REPAIR_KIT_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Автоматический ремонтный модуль
                                -- Automatic Patching Unit
                                { "Russian", "Автоматический ремонтник" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WEIRD_OBJ1_LABEL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Наблюдательная станция пиратов
                                -- Pirate-Controlled Monitoring Station
                                { "Russian", "Пиратская станция для наблюдения" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FREIGHT_UPGRADE_OPT_A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Купить перегородку
                                -- Purchase Bulkhead
                                { "Russian", "Купить ячейку" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FREIGHT_UPGRADE_OPT_B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Купить раздвижную перегородку
                                -- Deploy Expandable Bulkhead
                                { "Russian", "Установить ячейку" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BLUEPRINT_REWARD_FORMAT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;Планы (%ITEM%)&lt;&gt;
                                -- &lt;TECHNOLOGY&gt;%ITEM% plans&lt;&gt;
                                { "Russian", "&lt;TECHNOLOGY&gt;Планы: %ITEM%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BLUEPRINT_REWARD_FORMAT_SPEC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;COMMODITY&gt;Планы (%ITEM%)&lt;&gt;
                                -- &lt;COMMODITY&gt;%ITEM% plans&lt;&gt;
                                { "Russian", "&lt;COMMODITY&gt;Планы: %ITEM%&lt;&gt;" },
                            }
                        },

                        --#region BIO_UPGRADE_DESC_LVL
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BIO_UPGRADE_DESC_LVL1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Этот &lt;TRADEABLE&gt;средний&lt;&gt; нарост развивает следующий орган: &lt;TECHNOLOGY&gt;%NAME%&lt;&gt;.
                                -- This &lt;TRADEABLE&gt;moderate&lt;&gt; growth expands the &lt;TECHNOLOGY&gt;%NAME%&lt;&gt;.
                                { "Russian", "Этот &lt;TRADEABLE&gt;средний&lt;&gt; нарост развивает орган &lt;TECHNOLOGY&gt;%NAME%﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BIO_UPGRADE_DESC_LVL2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Этот &lt;TECHNOLOGY&gt;значительный&lt;&gt; нарост развивает следующий орган: &lt;TECHNOLOGY&gt;%NAME%&lt;&gt;.
                                -- This &lt;TECHNOLOGY&gt;significant&lt;&gt; growth expands the &lt;TECHNOLOGY&gt;%NAME%&lt;&gt;.
                                { "Russian", "Этот &lt;TECHNOLOGY&gt;значительный&lt;&gt; нарост развивает орган &lt;TECHNOLOGY&gt;%NAME%﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BIO_UPGRADE_DESC_LVL3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Этот &lt;SPECIAL&gt;крайне активный&lt;&gt; нарост развивает следующий орган: &lt;TECHNOLOGY&gt;%NAME%&lt;&gt;.
                                -- This &lt;SPECIAL&gt;extremely active&lt;&gt; growth expands the &lt;TECHNOLOGY&gt;%NAME%&lt;&gt;.
                                { "Russian", "Этот &lt;SPECIAL&gt;крайне активный&lt;&gt; нарост развивает орган &lt;TECHNOLOGY&gt;%NAME%﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BIO_UPGRADE_DESC_LVL4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Этот &lt;COMMODITY&gt;сияющий&lt;&gt; нарост развивает следующий орган: &lt;TECHNOLOGY&gt;%NAME%&lt;&gt;.
                                -- This &lt;COMMODITY&gt;radiant&lt;&gt; growth expands the &lt;TECHNOLOGY&gt;%NAME%&lt;&gt;.
                                { "Russian", "Этот &lt;COMMODITY&gt;сияющий&lt;&gt; нарост развивает орган &lt;TECHNOLOGY&gt;%NAME%﻿.&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region BIO_UPGRADE_SUB
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BIO_UPGRADE_SUB_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %NAME%: узел класса «C»
                                -- C-Class %NAME% Node
                                { "Russian", "%NAME%: узел C-класса" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BIO_UPGRADE_SUB_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %NAME%: узел класса «B»
                                { "Russian", "%NAME%: узел B-класса" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BIO_UPGRADE_SUB_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %NAME%: узел класса «A»
                                { "Russian", "%NAME%: узел A-класса" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BIO_UPGRADE_SUB_4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %NAME%: узел класса «S»
                                { "Russian", "%NAME%: узел S-класса" },
                            }
                        },
                        --#endregion

                        --#region BIO_UPGRADE_.*_STAT_COMMON_DESC
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BIO_UPGRADE_1_STAT_COMMON_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Этот нарост улучшает следующий параметр: &lt;STELLAR&gt;%STAT1%&lt;&gt;.
                                { "Russian", "Улучшает параметр &lt;STELLAR&gt;%STAT1%﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BIO_UPGRADE_2_STAT_COMMON_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Этот нарост улучшает следующие параметры: &lt;STELLAR&gt;%STAT1%&lt;&gt; и &lt;STELLAR&gt;%STAT2%&lt;&gt;.
                                { "Russian", "Улучшает параметры &lt;STELLAR&gt;%STAT1%&lt;&gt; и &lt;STELLAR&gt;%STAT2%﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BIO_UPGRADE_3_STAT_COMMON_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Этот нарост улучшает следующие параметры: &lt;STELLAR&gt;%STAT1%&lt;&gt;, &lt;STELLAR&gt;%STAT2%&lt;&gt; и &lt;STELLAR&gt;%STAT3%&lt;&gt;.
                                { "Russian", "Улучшает параметры &lt;STELLAR&gt;%STAT1%&lt;&gt;, &lt;STELLAR&gt;%STAT2%&lt;&gt; и &lt;STELLAR&gt;%STAT3%﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BIO_UPGRADE_4_STAT_COMMON_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Этот нарост улучшает следующие параметры: &lt;STELLAR&gt;%STAT1%&lt;&gt;, &lt;STELLAR&gt;%STAT2%&lt;&gt;, &lt;STELLAR&gt;%STAT3%&lt;&gt; и &lt;STELLAR&gt;%STAT4%&lt;&gt;.
                                { "Russian", "Улучшает параметры &lt;STELLAR&gt;%STAT1%&lt;&gt;, &lt;STELLAR&gt;%STAT2%&lt;&gt;, &lt;STELLAR&gt;%STAT3%&lt;&gt; и &lt;STELLAR&gt;%STAT4%﻿.&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region BIO_UPGRADE_.*_STAT_RARE_DESC
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BIO_UPGRADE_1_STAT_RARE_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Существенное клеточное образование, улучающее следующий параметр: &lt;STELLAR&gt;%STAT1%&lt;&gt;.
                                -- A substantial ceullar expansion, improving &lt;STELLAR&gt;%STAT1%&lt;&gt;.
                                { "Russian", "Важное клеточное образование, улучающее параметр &lt;STELLAR&gt;%STAT1%﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BIO_UPGRADE_2_STAT_RARE_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Существенное клеточное образование, улучающее следующие параметры: &lt;STELLAR&gt;%STAT1%&lt;&gt; и &lt;STELLAR&gt;%STAT2%&lt;&gt;.
                                { "Russian", "Важное клеточное образование, улучающее параметры &lt;STELLAR&gt;%STAT1%&lt;&gt; и &lt;STELLAR&gt;%STAT2%﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BIO_UPGRADE_3_STAT_RARE_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Существенное клеточное образование, улучающее следующие параметры: &lt;STELLAR&gt;%STAT1%&lt;&gt;, &lt;STELLAR&gt;%STAT2%&lt;&gt; и &lt;STELLAR&gt;%STAT3%&lt;&gt;.
                                { "Russian", "Важное клеточное образование, улучающее параметры &lt;STELLAR&gt;%STAT1%&lt;&gt;, &lt;STELLAR&gt;%STAT2%&lt;&gt; и &lt;STELLAR&gt;%STAT3%﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BIO_UPGRADE_4_STAT_RARE_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Существенное клеточное образование, улучающее следующие параметры: &lt;STELLAR&gt;%STAT1%&lt;&gt;, &lt;STELLAR&gt;%STAT2%&lt;&gt;, &lt;STELLAR&gt;%STAT3%&lt;&gt; и &lt;STELLAR&gt;%STAT4%&lt;&gt;.
                                { "Russian", "Важное клеточное образование, улучающее параметры &lt;STELLAR&gt;%STAT1%&lt;&gt;, &lt;STELLAR&gt;%STAT2%&lt;&gt;, &lt;STELLAR&gt;%STAT3%&lt;&gt; и &lt;STELLAR&gt;%STAT4%﻿.&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region BIO_UPGRADE_.*_STAT_EPIC_DESC
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BIO_UPGRADE_1_STAT_EPIC_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сплетается с органом «%NAME%», резко улучшая следующий параметр: &lt;STELLAR&gt;%STAT1%&lt;&gt;.
                                -- Emeshes itself with the %NAME%, drastically improving &lt;STELLAR&gt;%STAT1%&lt;&gt;.
                                { "Russian", "Опутав орган %NAME%, резко улучшает параметр &lt;STELLAR&gt;%STAT1%﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BIO_UPGRADE_2_STAT_EPIC_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сплетается с органом «%NAME%», резко улучшая следующие параметры: &lt;STELLAR&gt;%STAT1%&lt;&gt; и &lt;STELLAR&gt;%STAT2%&lt;&gt;.
                                { "Russian", "Опутав орган %NAME%, резко улучшает параметры &lt;STELLAR&gt;%STAT1%&lt;&gt; и &lt;STELLAR&gt;%STAT2%﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BIO_UPGRADE_3_STAT_EPIC_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сплетается с органом «%NAME%», резко улучшая следующие параметры: &lt;STELLAR&gt;%STAT1%&lt;&gt;, &lt;STELLAR&gt;%STAT2%&lt;&gt; и &lt;STELLAR&gt;%STAT3%&lt;&gt;.
                                { "Russian", "Опутав орган %NAME%, резко улучшает параметры &lt;STELLAR&gt;%STAT1%&lt;&gt;, &lt;STELLAR&gt;%STAT2%&lt;&gt; и &lt;STELLAR&gt;%STAT3%﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BIO_UPGRADE_4_STAT_EPIC_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сплетается с органом «%NAME%», резко улучшая следующие параметры: &lt;STELLAR&gt;%STAT1%&lt;&gt;, &lt;STELLAR&gt;%STAT2%&lt;&gt;, &lt;STELLAR&gt;%STAT3%&lt;&gt; и &lt;STELLAR&gt;%STAT4%&lt;&gt;.
                                { "Russian", "Опутав орган %NAME%, резко улучшает параметры &lt;STELLAR&gt;%STAT1%&lt;&gt;, &lt;STELLAR&gt;%STAT2%&lt;&gt;, &lt;STELLAR&gt;%STAT3%&lt;&gt; и &lt;STELLAR&gt;%STAT4%﻿.&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region BIO_UPGRADE_.*_STAT_LEGEND_DESC
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BIO_UPGRADE_1_STAT_LEGEND_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Объемный пульсирующий нарост на органе «%NAME%»; это новое образование обеспечивает исключительное улучшение следующего параметра: &lt;STELLAR&gt;%STAT1%&lt;&gt;.
                                -- A sprawling, pulsating extension of the %NAME%, this new growth brings unparalleled improvements to &lt;STELLAR&gt;%STAT1%&lt;&gt;.
                                { "Russian", "Объемный пульсирующий нарост на органе %NAME%﻿. Беспрецедентно улучшает параметр &lt;STELLAR&gt;%STAT1%﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BIO_UPGRADE_2_STAT_LEGEND_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Объемный пульсирующий нарост на органе «%NAME%»; это новое образование обеспечивает исключительное улучшение следующих параметров: &lt;STELLAR&gt;%STAT1%&lt;&gt; и &lt;STELLAR&gt;%STAT2%&lt;&gt;.
                                -- A sprawling, pulsating extension of the %NAME%, this new growth brings unparalleled improvements to &lt;STELLAR&gt;%STAT1%&lt;&gt; and &lt;STELLAR&gt;%STAT2%&lt;&gt;.
                                { "Russian", "Объемный пульсирующий нарост на органе %NAME%﻿. Беспрецедентно улучшает параметры &lt;STELLAR&gt;%STAT1%&lt;&gt; и &lt;STELLAR&gt;%STAT2%﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BIO_UPGRADE_3_STAT_LEGEND_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Объемный пульсирующий нарост на органе «%NAME%»; это новое образование обеспечивает исключительное улучшение следующих параметров: &lt;STELLAR&gt;%STAT1%&lt;&gt;, &lt;STELLAR&gt;%STAT2%&lt;&gt; и &lt;STELLAR&gt;%STAT3%&lt;&gt;.
                                { "Russian", "Объемный пульсирующий нарост на органе %NAME%﻿. Беспрецедентно улучшает параметры &lt;STELLAR&gt;%STAT1%&lt;&gt;, &lt;STELLAR&gt;%STAT2%&lt;&gt; и &lt;STELLAR&gt;%STAT3%﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BIO_UPGRADE_4_STAT_LEGEND_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Объемный пульсирующий нарост на органе «%NAME%»; это новое образование обеспечивает исключительное улучшение следующих параметров: &lt;STELLAR&gt;%STAT1%&lt;&gt;, &lt;STELLAR&gt;%STAT2%&lt;&gt;, &lt;STELLAR&gt;%STAT3%&lt;&gt; и &lt;STELLAR&gt;%STAT4%&lt;&gt;.
                                { "Russian", "Объемный пульсирующий нарост на органе %NAME%﻿. Беспрецедентно улучшает параметры &lt;STELLAR&gt;%STAT1%&lt;&gt;, &lt;STELLAR&gt;%STAT2%&lt;&gt;, &lt;STELLAR&gt;%STAT3%&lt;&gt; и &lt;STELLAR&gt;%STAT4%﻿.&lt;&gt;" },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BIO_UPGRADE_LABEL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- РАЗВИТЬ (НАНИТЫ: %COST%)
                                -- EVOLVE (%COST% NANITES)
                                { "Russian", "РАЗВИТЬ ЗА &lt;IMG&gt;NANITESMALL&lt;&gt;%COST%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BIO_INSTALL_LABEL_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Активируйте гормоны, чтобы развить его в функциональный отросток
                                -- Trigger hormones to expand into a functional growth
                                { "Russian", "Развить в функциональный отросток, активировав гормоны" },
                            }
                        },

                        --#region UI_BIO_SHIP_MISSION5_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BIO_SHIP_MISSION5_MSG1A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Яйцо пустоты&lt;&gt; ищет определенный мир.&#xA;Исследуйте яйцо в инвентаре, чтобы узнать его требования.&#xA;Может потребоваться необычное путешествие.
                                { "Russian", "&lt;SPECIAL&gt;Яйцо пустоты&lt;&gt; ищет определенный мир&#xA;Исследуйте яйцо в инвентаре, чтобы узнать его требования&#xA;Может потребоваться необычное путешествие" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BIO_SHIP_MISSION5_MSG1B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Яйцо пустоты&lt;&gt; ищет определенный мир.&#xA;Войдите в портал.
                                { "Russian", "&lt;SPECIAL&gt;Яйцо пустоты&lt;&gt; ищет определенный мир&#xA;Войдите в портал" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BIO_SHIP_MISSION5_MSG1C" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Яйцо пустоты&lt;&gt; ищет определенный мир.&#xA;&lt;FUEL&gt;ВНИМАНИЕ!&lt;&gt; Сигнатура данной планеты &lt;FUEL&gt;не совпадает&lt;&gt; с колебаниями яйца пустоты.
                                { "Russian", "&lt;SPECIAL&gt;Яйцо пустоты&lt;&gt; ищет определенный мир&#xA;&lt;FUEL&gt;ВНИМАНИЕ!&lt;&gt; Сигнатура данной планеты &lt;FUEL&gt;не совпадает&lt;&gt; с колебаниями яйца пустоты" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BIO_SHIP_MISSION5_MSG2A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сигнатура планеты совпадает с потребностями &lt;SPECIAL&gt;яйца пустоты&lt;&gt;.&#xA;Поиск павших Странников: %GPS%&#xA;Используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; для осмотра нужной вам местности.
                                { "Russian", "Сигнатура планеты совпадает с потребностями &lt;SPECIAL&gt;яйца пустоты&lt;&gt;&#xA;Поиск павших Странников: %GPS%&#xA;Используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; для осмотра нужной вам местности" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BIO_SHIP_MISSION5_MSG2B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Яйцо пустоты&lt;&gt; требует, чтобы вы заполнили &lt;STELLAR&gt;камеру души&lt;&gt;.&#xA;Ищите павших Странников: %GPS%
                                { "Russian", "&lt;SPECIAL&gt;Яйцо пустоты&lt;&gt; требует, чтобы вы заполнили &lt;STELLAR&gt;камеру души&lt;&gt;&#xA;Ищите павших Странников: %GPS%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BIO_SHIP_MISSION5_MSG2C" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Яйцу пустоты&lt;&gt; нужно больше Странников.&#xA;Заполнение &lt;STELLAR&gt;камеры души&lt;&gt;: &lt;TECHNOLOGY&gt;33%&lt;&gt;&#xA;Сбой Странника обнаружен на месте: %GPS%
                                { "Russian", "&lt;SPECIAL&gt;Яйцу пустоты&lt;&gt; нужно больше Странников&#xA;Заполнение &lt;STELLAR&gt;камеры души&lt;&gt;: &lt;TECHNOLOGY&gt;33%&lt;&gt;&#xA;Сбой Странника обнаружен на месте: %GPS%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BIO_SHIP_MISSION5_MSG2C2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Яйцу пустоты&lt;&gt; нужно больше Странников.&#xA;Заполнение &lt;STELLAR&gt;камеры души&lt;&gt;: &lt;TECHNOLOGY&gt;66%&lt;&gt;&#xA;Сбой Странника обнаружен на месте: %GPS%
                                { "Russian", "&lt;SPECIAL&gt;Яйцу пустоты&lt;&gt; нужно больше Странников&#xA;Заполнение &lt;STELLAR&gt;камеры души&lt;&gt;: &lt;TECHNOLOGY&gt;66%&lt;&gt;&#xA;Сбой Странника обнаружен на месте: %GPS%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BIO_SHIP_MISSION5_MSG2D" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Архив душ&lt;&gt; заполнен.&#xA;Вернитесь в свою реальность через &lt;SPECIAL&gt;портал&lt;&gt;.
                                { "Russian", "&lt;STELLAR&gt;Архив душ&lt;&gt; заполнен&#xA;Вернитесь в свою реальность через &lt;SPECIAL&gt;портал&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BIO_SHIP_MISSION5_MSG3A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите &lt;SPECIAL&gt;павшего хозяина&lt;&gt;.&#xA;Песня Тела зовет вас вперед...
                                { "Russian", "Найдите &lt;SPECIAL&gt;павшего хозяина&lt;&gt;&#xA;Песнь Тела зовёт вас вперёд..." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BIO_SHIP_MISSION5_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Покажите себя телу.&#xA;Сосуд может захотеть последовать за вами.
                                { "Russian", "Покажите себя телу&#xA;Сосуд может захотеть последовать за вами" },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NO_THROW_BAIT_HERE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сейчас выдача пилюль невозможна
                                -- Cannot dispense pellets right now
                                { "Russian", "Раздача гранул сейчас невозможна" },
                            }
                        },
                        { -- не влазеет нормально, даже если "м" впритык
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DEPTH_READOUT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Глубина: %DEPTH%ед.
                                -- Depth: %DEPTH%u
                                { "Russian", "˘ %DEPTH% м" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_REPAIR_KIT_BUTTON" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПРИМЕНИТЬ РЕМОНТНЫЙ КОМПЛЕКТ (1 шт.)
                                -- APPLY REPAIR KIT (x1)
                                { "Russian", "ПРИМЕНИТЬ РЕМКОМПЛЕКТ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NO_REPAIR_KIT_BUTTON" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- РЕМОНТНЫЙ КОМПЛЕКТ НЕДОСТУПЕН
                                -- REPAIR KIT UNAVAILABLE
                                { "Russian", "РЕМКОМПЛЕКТ ОТСУТСТВУЕТ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DISTANCE_INSTALL_LABEL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПОСМОТРЕТЬ ДАННЫЕ УСТАНОВКИ
                                -- VIEW INSTALLATION DETAILS
                                { "Russian", "ЗАКРЕПИТЬ ИНСТРУКЦИЮ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DISTANCE_PIN_LABEL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПОСМОТРЕТЬ ИНСТРУКЦИИ ПО РЕМОНТУ
                                -- VIEW REPAIR INSTRUCTIONS
                                { "Russian", "ЗАКРЕПИТЬ ИНСТРУКЦИЮ" },
                            }
                        },
                        -- и тут прокрутка!
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TIMELINE_FILTER_RED" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Звездный класс: &lt;FUEL&gt;красный&lt;&gt;
                                -- Stellar Class: &lt;FUEL&gt;Red&lt;&gt;
                                { "Russian", "&lt;FUEL&gt;Красный&lt;&gt; спектр" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TIMELINE_FILTER_GREEN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Звездный класс: &lt;TRADEABLE&gt;зеленый&lt;&gt;
                                -- Stellar Class: &lt;TRADEABLE&gt;Green&lt;&gt;
                                { "Russian", "&lt;TRADEABLE&gt;Зелёный&lt;&gt; спектр" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TIMELINE_FILTER_BLUE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Звездный класс: &lt;TECHNOLOGY&gt;синий&lt;&gt;
                                -- Stellar Class: &lt;TECHNOLOGY&gt;Blue&lt;&gt;
                                { "Russian", "&lt;TECHNOLOGY&gt;Синий&lt;&gt; спектр" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MYSTERY_TRACKER_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ИСТОРИОГРАФИЧ. ДОЗИМЕТР
                                -- HISTORIOGRAPHICAL DOSIMETER
                                { "Russian", "ИСТОРИОГРАФИЧЕСКИЙ ДОЗИМЕТР" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MYSTERY_TRACKER_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Историографич. дозиметр
                                -- Historiographical Dosimeter
                                { "Russian", "Историографический дозиметр" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BB_SONG_06" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Одна среди звезд
                                -- Alone Amidst the Stars
                                { "Russian", "Одна среди звёзд" },
                            }
                        },

                        --#region UI_BIOSHIP.*_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BIOSHIP5_NEW_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сигнатура планеты совпадает с потребностями &lt;SPECIAL&gt;яйца пустоты&lt;&gt;.&#xA;Яйцо поет песню о погибшем Страннике.
                                -- Planet signature matches the &lt;SPECIAL&gt;Void Egg&lt;&gt;'s needs&#xA;The Egg sings the song of a fallen Traveller
                                { "Russian", "Сигнатура планеты совпадает с потребностями &lt;SPECIAL&gt;яйца пустоты&lt;&gt;&#xA;Яйцо поет песню о погибшем Страннике" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BIOSHIP5_NEW_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Яйцо пустоты&lt;&gt; требует, чтобы вы заполнили &lt;STELLAR&gt;камеру души&lt;&gt;.&#xA;Яйцо поет песню о погибшем Страннике.
                                -- The &lt;SPECIAL&gt;Void Egg&lt;&gt; demands you fill the &lt;STELLAR&gt;Soul Chamber&lt;&gt;&#xA;The Egg sings the song of a fallen Traveller
                                { "Russian", "&lt;SPECIAL&gt;Яйцо пустоты&lt;&gt; требует, чтобы вы заполнили &lt;STELLAR&gt;камеру души&lt;&gt;&#xA;Яйцо поет песню о погибшем Страннике" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BIOSHIP5_NEW_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Яйцу пустоты&lt;&gt; нужно больше Странников.&#xA;Заполнение &lt;STELLAR&gt;камеры души&lt;&gt;: &lt;TECHNOLOGY&gt;33%&lt;&gt;&#xA;Яйцо поет песню о другой потерянной душе.
                                -- The &lt;SPECIAL&gt;Void Egg&lt;&gt; seeks more Travellers&#xA;&lt;STELLAR&gt;Soul Chamber&lt;&gt; charge: &lt;TECHNOLOGY&gt;33%&lt;&gt;&#xA;The Egg sings the song of another lost soul
                                { "Russian", "&lt;SPECIAL&gt;Яйцу пустоты&lt;&gt; нужно больше Странников&#xA;Заполнение &lt;STELLAR&gt;камеры души&lt;&gt;: &lt;TECHNOLOGY&gt;33%&lt;&gt;&#xA;Яйцо поет песню о другой потерянной душе" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BIOSHIP5_NEW_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Яйцу пустоты&lt;&gt; нужно больше Странников.&#xA;Заполнение &lt;STELLAR&gt;камеры души&lt;&gt;: &lt;TECHNOLOGY&gt;66%&lt;&gt;&#xA;Яйцо поет песню о другой потерянной душе.
                                { "Russian", "&lt;SPECIAL&gt;Яйцу пустоты&lt;&gt; нужно больше Странников&#xA;Заполнение &lt;STELLAR&gt;камеры души&lt;&gt;: &lt;TECHNOLOGY&gt;66%&lt;&gt;&#xA;Яйцо поет песню о другой потерянной душе" },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NOTIFY_MISSION_NO_SURVEY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;Разведка цели&lt;&gt; сейчас недоступна&#xA;Местонахождение некоторых целей задания можно определить &lt;TECHNOLOGY&gt;разведкой цели&lt;&gt;
                                -- &lt;TECHNOLOGY&gt;Target Sweep&lt;&gt; currently unavailable&#xA;Some mission targets can be pinpointed with a &lt;TECHNOLOGY&gt;Target Sweep&lt;&gt;
                                { "Russian", "&lt;TECHNOLOGY&gt;Разведка цели&lt;&gt; сейчас недоступна&#xA;Местонахождение некоторых целей задания&#xA;можно определить &lt;TECHNOLOGY&gt;разведкой цели&lt;&gt;" },
                            }
                        },
                        -- обрезается снизу "ДОСТУПНО" в моменг получения предмета у синтеза ртути
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MYSTERY_TRACKER_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Нада удалось обнаружить новую закономерность, проявляющуюся в историях &lt;TRANS_TRA&gt;геков&lt;&gt;, &lt;TRANS_EXP&gt;корваксов&lt;&gt; и &lt;TRANS_WAR&gt;вай'кинов&lt;&gt;.&#xA;&#xA;Дозиметр измеряет степень воздействия &lt;SPECIAL&gt;историографического потока&lt;&gt; в районе важнейших артефактов. Данные о необычных смещениях истории позволят Нада отследить сигнал.&#xA;&#xA;Помогите Нада и Поло провести исследование. Для этого воспользуйтесь дозиметром и &lt;STELLAR&gt;передайте исторические данные&lt;&gt;, собранные в местах расположения инопланетных артефактов.
                                -- Nada has detected a new pattern emerging in the stories of the &lt;TRANS_TRA&gt;Gek&lt;&gt;, &lt;TRANS_EXP&gt;Korvax&lt;&gt;, and &lt;TRANS_WAR&gt;Vy'keen&lt;&gt;.&#xA;&#xA;The dosimeter measures exposure to &lt;SPECIAL&gt;historiographical flux&lt;&gt; around key artifact sites. Recordings of unusual historical shifts will enable Nada to trace the signal.&#xA;&#xA;Assist Nada and Polo in their research by using this device to &lt;STELLAR&gt;transmit historial data&lt;&gt; from alien artifact sites.
                                { "Russian", "Нада обнаружил новую закономерность в историях &lt;TRANS_TRA&gt;геков﻿,&lt;&gt; &lt;TRANS_EXP&gt;корваксов&lt;&gt; и &lt;TRANS_WAR&gt;вай'кинов﻿.&lt;&gt;&#xA;&#xA;Дозиметр измеряет степень воздействия &lt;SPECIAL&gt;историографического потока&lt;&gt; возле важнейших артефактов. Данные о необычных сдвигах истории позволят Нада отследить сигнал.&#xA;&#xA;Помогите Нада и Поло в их исследованиях, используя это устройство в местах расположения инопланетных артефактов для &lt;STELLAR&gt;передачи исторических данных﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MYSTERY_BEACON_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Результат проведенного Нада исследования необычных закономерностей, обнаруженных в историях &lt;TRANS_TRA&gt;геков&lt;&gt;, &lt;TRANS_EXP&gt;корваксов&lt;&gt; и &lt;TRANS_WAR&gt;вай'кинов&lt;&gt;.&#xA;&#xA;Маяк посылает &lt;STELLAR&gt;отраженный сигнал&lt;&gt;, настроенный на сдвиг &lt;SPECIAL&gt;историографического потока&lt;&gt;, схему которого составили дружественные Нада Странники.&#xA;&#xA;Специалист Поло отказывается предсказывать результаты передачи.
                                -- The result of Nada's research into unusual patterns detected in the stories of the &lt;TRANS_TRA&gt;Gek&lt;&gt;, &lt;TRANS_EXP&gt;Korvax&lt;&gt;, and &lt;TRANS_WAR&gt;Vy'keen&lt;&gt;.&#xA;&#xA;The beacon broadcasts a &lt;STELLAR&gt;signal echo&lt;&gt; attuned to the shift &lt;SPECIAL&gt;historiographical flux&lt;&gt; mapped by Nada's Traveller companions.&#xA;&#xA;Specialist Polo is unwilling to predict the results of the broadcast.
                                { "Russian", "Результат проведенного Нада исследования необычных закономерностей, обнаруженных в историях &lt;TRANS_TRA&gt;геков﻿,&lt;&gt; &lt;TRANS_EXP&gt;корваксов&lt;&gt; и &lt;TRANS_WAR&gt;вай'кинов﻿.&lt;&gt;&#xA;&#xA;Маяк посылает &lt;STELLAR&gt;эхосигнал﻿,&lt;&gt; настроенный на сдвиг &lt;SPECIAL&gt;историографического потока&lt;&gt;, который обнаружили друзья-странники Нада.&#xA;&#xA;Специалист Поло отказывается предсказывать результаты." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FREIGHTER_TELEPORTER_ERROR" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Нет доступных терминалов назначения &lt;IMG&gt;SLASH&lt;&gt; Требуется перезагрузка сети
                                -- No Destination Terminals Available &lt;IMG&gt;SLASH&lt;&gt; Network Reactivation Required
                                { "Russian", "Нет доступных терминалов для телепортации" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_AF_METAL_HINT_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- У &lt;STELLAR&gt;сборщика утиля&lt;&gt; на космической станции появились новые экзотические товары.&#xA;Их можно купить за &lt;SPECIAL&gt;испорченный металл&lt;&gt;, который встречается на заброшенных судах.
                                -- Space Station &lt;STELLAR&gt;Scrap Dealer&lt;&gt; has new, exotic stock&#xA;Purchase their wares with &lt;SPECIAL&gt;Tainted Metal&lt;&gt; found aboard derelicts
                                { "Russian", "У &lt;STELLAR&gt;сборщика утиля&lt;&gt; на космической станции появились новые экзотические товары&#xA;Их можно купить за &lt;SPECIAL&gt;испорченный металл&lt;&gt;, который встречается на заброшенных судах" },
                            }
                        },

                        --#region TRADE_FILTER_SEASON
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TRADE_FILTER_SEASON_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Экспедиция 1
                                { "Russian", "Экспедиция №1" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TRADE_FILTER_SEASON_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Экспедиция 2
                                { "Russian", "Экспедиция №2" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TRADE_FILTER_SEASON_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Экспедиция 3
                                { "Russian", "Экспедиция №3" },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WEAPON_REWARD_FORMAT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Мультитул (&lt;STELLAR&gt;%ITEM%&lt;&gt;)
                                -- &lt;STELLAR&gt;%ITEM%&lt;&gt; multi-tool
                                { "Russian", "Мультитул &lt;STELLAR&gt;%ITEM%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPLORE_LOG_OBJ_CLASS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Система %NAME%, звездный класс %STAR%
                                -- The %NAME% System, stellar class %STAR%
                                { "Russian", "Система %NAME%, звёздный класс %STAR%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DAMAGE_LAVA" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- раскаленная лава
                                -- searing lava
                                { "Russian", "раскалённая лава" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "WEATHER_SWAMP3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Раскаленная дымка
                                -- Superheated Mists
                                { "Russian", "Раскалённая дымка" },
                            }
                        },
                        -- обрезается на "переработать его на полезн"
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_LUMP_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Фрагмент органической материи. Сложно сказать, что это такое: форма жизни или отброшенная/отсеченная часть тела более крупного существа.&#xA;&#xA;Вряд ли этот товар кого-то заинтересует. Выберите этот предмет в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;) и используйте &lt;IMG&gt;FE_ALT1&lt;&gt;, чтобы переработать его на полезные материалы.
                                -- A scrap of organic matter. It is not clear if this is a lifeform in its own right, or some ejected/severed part of a larger being.&#xA;&#xA;Unlikely to be desirable at a galactic exchange. Select in the Inventory (&lt;IMG&gt;INVENTORY&lt;&gt;) and use &lt;IMG&gt;FE_ALT1&lt;&gt; to process it into useful materials.
                                { "Russian", "Фрагмент органической материи. Сложно сказать, что это такое: форма жизни или часть тела более крупного существа.&#xA;&#xA;Вряд ли этот товар кого-то заинтересует. Выберите этот предмет в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;) и используйте &lt;IMG&gt;FE_ALT1&lt;&gt;, чтобы переработать его на полезные материалы." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WEIRD_OBJ3_LABEL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Звездный разум
                                -- Stellar Intelligence
                                { "Russian", "Звёздный разум" },
                            }
                        },
                        -- не влазеет
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NORMANDY_CREW_TITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Проектные заметки
                                -- Design Notes
                                { "Russian", "Особенности" },
                            }
                        },

                        --#region UI_.*_CLASS_ALT
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_C_CLASS_ALT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КЛАСС «C»
                                -- C-Class
                                { "Russian", "C-класс" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_B_CLASS_ALT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КЛАСС «B»
                                { "Russian", "B-класс" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_A_CLASS_ALT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КЛАСС «A»
                                { "Russian", "A-класс" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_S_CLASS_ALT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КЛАСС «S»
                                { "Russian", "S-класс" },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TELEPORTER_STAR_CLASS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;DIAMONDBULLET&lt;&gt; Звездный класс %STAR%
                                -- &lt;IMG&gt;DIAMONDBULLET&lt;&gt; Stellar Class %STAR%
                                { "Russian", "&lt;IMG&gt;DIAMONDBULLET&lt;&gt; Звёздный класс %STAR%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PET_CLIMATE_FROZEN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Замерзший
                                -- Frozen
                                { "Russian", "Замёрзший" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "INFESTEDCOLD3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Замерзший ад
                                -- Frozen Hell
                                { "Russian", "Замёрзший ад" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PLAYER_TITLE_DEATH2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %NAME% Замерзший
                                -- %NAME% the Frozen
                                { "Russian", "%NAME% Замёрзший" },
                            }
                        },

                        --#region BASESTATS_ALIENSHIP
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BASESTATS_ALIENSHIP_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- РАЗУМНЫЙ
                                { "Russian", "Разумный" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BASESTATS_ALIENSHIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Разумный
                                { "Russian", "РАЗУМНЫЙ" },
                            }
                        },
                        --#endregion

                    }
                },
            }
        }
    }
}
