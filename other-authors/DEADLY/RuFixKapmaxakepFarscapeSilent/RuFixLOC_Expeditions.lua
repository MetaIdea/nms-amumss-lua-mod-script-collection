NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]    = "_RuFixLOC_Expeditions.pak",
    ["MOD_AUTHOR"]      = "gh0stwizard",
    ["MOD_DESCRIPTION"] = "Fixes for community expeditions",
    ["NMS_VERSION"]     = "5.72",
    ["EXML_CREATE"]     = "false",
    ["MODIFICATIONS"]   = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                { -- LANGUAGE/NMS_LOC4_RUSSIAN.MBIN
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_LOC4_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_UNDERGROUND_BONES_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Ископаемый слой
                                -- Fossil Bed
                                { "Russian", "Фоссилии" },
                            }
                        },
                    }
                },
                { -- LANGUAGE/NMS_LOC6_RUSSIAN.MBIN
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_LOC6_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        --#region UI_EXPED_GOT_PETS_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_GOT_PETS_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Приручите существ-питомцев: %CURRENT%/%AMOUNT%&#xA;Находите окружающих животных с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;).&#xA;Разбрасывайте &lt;TRADEABLE&gt;питательные гранулы&lt;&gt; с помощью &lt;STELLAR&gt;быстрого меню&lt;&gt; (&lt;IMG&gt;QUICK_MENU&lt;&gt;).&#xA;Чтобы покормить животных напрямую, используйте &lt;IMG&gt;INTERACT&lt;&gt;.
                                { "Russian", "Приручите существ-питомцев: %CURRENT%/%AMOUNT%&#xA;Находите животных с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)&#xA;Разбрасывайте &lt;TRADEABLE&gt;питательные гранулы&lt;&gt; из &lt;STELLAR&gt;быстрого меню&lt;&gt; (&lt;IMG&gt;QUICK_MENU&lt;&gt;)&#xA;Чтобы покормить животных напрямую, используйте &lt;IMG&gt;INTERACT&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_GOT_PETS_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Приручите существ-питомцев: %CURRENT%/%AMOUNT%&#xA;Откройте новые ячейки питомцев в &lt;TECHNOLOGY&gt;журнале питомцев&lt;&gt; (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                { "Russian", "Приручите существ-питомцев: %CURRENT%/%AMOUNT%&#xA;Откройте новые ячейки питомцев в &lt;TECHNOLOGY&gt;журнале питомцев&lt;&gt; (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_GOT_PETS_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите %ITEM% для изготовления &lt;TRADEABLE&gt;питательных гранул&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Питательные гранулы используются для приручения &lt;STELLAR&gt;животных на планетах&lt;&gt;.
                                { "Russian", "Для изготовления &lt;TRADEABLE&gt;питательных гранул&lt;&gt; требуется %ITEM%: %CURRENT%/%AMOUNT%&#xA;Питательные гранулы используются для приручения &lt;STELLAR&gt;животных на планетах&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_GOT_PETS_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Изготовьте &lt;TRADEABLE&gt;питательные гранулы&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Откройте инвентарь (&lt;IMG&gt;INVENTORY&lt;&gt;) и используйте &lt;IMG&gt;PRODMENU&lt;&gt;, чтобы изготовить их в пустых ячейках.&#xA;Питательные гранулы используются для приручения &lt;STELLAR&gt;животных на планетах&lt;&gt;.
                                { "Russian", "Изготовьте &lt;TRADEABLE&gt;питательные гранулы&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Откройте инвентарь (&lt;IMG&gt;INVENTORY&lt;&gt;) и используйте &lt;IMG&gt;PRODMENU&lt;&gt;, чтобы изготовить их в пустых ячейках&#xA;Питательные гранулы используются для приручения &lt;STELLAR&gt;животных на планетах&lt;&gt;" },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_MILESTONE_LOG_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Открыть инструкции для конкретных этапов
                                -- Access specific milestone instructions
                                { "Russian", "Открыть инструкцию для данного этапа" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SEASONAL_MAIN_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Проходите этапы экспедиции
                                -- Complete expedition milestones
                                { "Russian", "Пройдите этапы экспедиции" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SEASONAL_MAIN_OBJ" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Проходите этапы экспедиции
                                -- Complete Expedition Milestones
                                { "Russian", "Выполните этапы экспедиции" },
                            }
                        },

                        --#region UI_SEASON_[0-9]+_MAIN_TITLE
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SEASON_2_MAIN_TITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Экспедиция вторая: Плацдарм
                                { "Russian", "Экспедиция №2: Плацдарм" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SEASON_3_MAIN_TITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Третья экспедиция: «Картографы»
                                { "Russian", "Экспедиция №3: Картографы" },
                            }
                        },
                        --#endregion

                        --#region UI_EXPED_DETAIL_LINE
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_DETAIL_LINE1" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Следите за ходом путешествия на странице &lt;STELLAR&gt;экспедиции&lt;&gt; (&lt;IMG&gt;OPTIONS&lt;&gt;)
                        --         -- View progress in the &lt;STELLAR&gt;Expedition&lt;&gt; page (&lt;IMG&gt;OPTIONS&lt;&gt;)
                        --         { "Russian", "Следите за ходом путешествия на странице &lt;STELLAR&gt;экспедиции&lt;&gt; (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                        --     }
                        -- },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_DETAIL_LINE2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Получайте &lt;STELLAR&gt;эксклюзивные награды&lt;&gt; за &lt;TECHNOLOGY&gt;этапы&lt;&gt;. Выполнять этапы можно в &lt;TRADEABLE&gt;любом порядке&lt;&gt;.
                                -- Earn &lt;STELLAR&gt;exclusive rewards&lt;&gt; by completing &lt;TECHNOLOGY&gt;Milestones&lt;&gt;. Complete milestones in &lt;TRADEABLE&gt;any order&lt;&gt;.
                                { "Russian", "Получайте &lt;STELLAR&gt;эксклюзивные награды&lt;&gt; за &lt;TECHNOLOGY&gt;этапы&lt;&gt;. Выполняйте этапы в &lt;TRADEABLE&gt;любом порядке&lt;&gt;." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_DETAIL_LINE3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Следуйте по пути, ведущем через галактику. Доберитесь до каждого &lt;SPECIAL&gt;места встречи&lt;&gt;, чтобы получить ценные награды.
                                -- Follow a path through the galaxy to each of the &lt;SPECIAL&gt;Rendezvous Points&lt;&gt; to earn large rewards.
                                { "Russian", "Следуйте по пути через галактику к &lt;SPECIAL&gt;местам встречи﻿,&lt;&gt; чтобы получить ценные награды." },
                            }
                        },
                        -- в текущем виде видно 2.5 строки, нужно уместить в 2
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_DETAIL_LINE4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Эксклюзивные награды за экспедицию доступны в &lt;STELLAR&gt;любом сохранении&lt;&gt;. Это сохранение останется после завершения экспедиции.
                                { "Russian", "Награды за экспедицию доступны в &lt;STELLAR&gt;любом сохранении&lt;&gt;. Это сохранение останется." },
                            }
                        },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED3_DETAIL_LINE1" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Следите за ходом путешествия на странице &lt;STELLAR&gt;экспедиции&lt;&gt; (&lt;IMG&gt;OPTIONS&lt;&gt;)
                        --         { "Russian", "Следите за ходом путешествия на странице &lt;STELLAR&gt;экспедиции&lt;&gt; (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                        --     }
                        -- },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED3_DETAIL_LINE2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Получайте &lt;STELLAR&gt;эксклюзивные награды&lt;&gt; за &lt;TECHNOLOGY&gt;этапы&lt;&gt;. Выполнять этапы можно в &lt;TRADEABLE&gt;любом порядке&lt;&gt;.
                                -- Earn &lt;STELLAR&gt;exclusive rewards&lt;&gt; by completing &lt;TECHNOLOGY&gt;Milestones&lt;&gt;. Complete milestones in &lt;TRADEABLE&gt;any order&lt;&gt;.
                                { "Russian", "Получайте &lt;STELLAR&gt;эксклюзивные награды&lt;&gt; за &lt;TECHNOLOGY&gt;этапы&lt;&gt;. Выполняйте этапы в &lt;TRADEABLE&gt;любом порядке&lt;&gt;." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED3_DETAIL_LINE3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Следуйте &lt;TECHNOLOGY&gt;указаниям по выполнению задания этапа&lt;&gt;, чтобы покинуть планету.
                                -- Follow &lt;TECHNOLOGY&gt;milestone mission guidance &lt;&gt; to escape the planet.
                                { "Russian", "Покиньте планету, следуя &lt;TECHNOLOGY&gt;указаниям в задании этапа&lt;&gt;." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED3_DETAIL_LINE4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Эксклюзивные награды экспедиции доступны в &lt;STELLAR&gt;любом сохранении&lt;&gt;. Все сохранения в экспедиции после ее завершения перейдут в обычный режим.
                                -- Exclusive expedition rewards can be accessed on &lt;STELLAR&gt;any save&lt;&gt;. Expedition saves will be converted to Normal Mode at the end of the expedition.
                                { "Russian", "Эксклюзивные награды экспедиции доступны в &lt;STELLAR&gt;любом сохранении&lt;&gt;. Сохранение экспедиции перейдет в обычный режим по завершению." },
                            }
                        },
                        --#endregion

                        --#region UI_EXPED_LEAVE_SYSTEM_FR_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_LEAVE_SYSTEM_FR_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вернитесь на свой корабль, чтобы вызвать &lt;STELLAR&gt;грузовой корабль&lt;&gt;.
                                -- Return to your ship to summon your &lt;STELLAR&gt;freighter&lt;&gt;
                                { "Russian", "Вернитесь в звездолёт, чтобы вызвать &lt;STELLAR&gt;грузовое судно&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_LEAVE_SYSTEM_FR_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Покиньте орбиту планеты, чтобы вызвать свой &lt;STELLAR&gt;грузовой корабль&lt;&gt;.
                                { "Russian", "Покиньте орбиту планеты, чтобы вызвать &lt;STELLAR&gt;грузовое судно&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_LEAVE_SYSTEM_FR_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вызовите свой &lt;STELLAR&gt;грузовой корабль&lt;&gt; в &lt;TECHNOLOGY&gt;быстром меню&lt;&gt; (&lt;IMG&gt;QUICK_MENU&lt;&gt;).&#xA;Ваш крупный корабль переместится туда, где вы находитесь.
                                { "Russian", "Вызовите &lt;STELLAR&gt;грузовое судно&lt;&gt; из &lt;TECHNOLOGY&gt;быстрого меню&lt;&gt; (&lt;IMG&gt;QUICK_MENU&lt;&gt;)&#xA;Ваш крупный корабль переместится туда, где вы находитесь" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_LEAVE_SYSTEM_FR_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поднимитесь на борт своего &lt;STELLAR&gt;грузового судна&lt;&gt;.&#xA;Ваш звездолет пристыкуется и войдет в ангар.
                                -- Board your &lt;STELLAR&gt;freighter&lt;&gt;&#xA;Your starship will dock and enter the hangar
                                { "Russian", "Поднимитесь на борт своего &lt;STELLAR&gt;грузового судна&lt;&gt;&#xA;Ваш звездолёт пристыкуется в ангаре" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_LEAVE_SYSTEM_FR_MSG5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Доберитесь до &lt;STELLAR&gt;мостика&lt;&gt; грузового судна.&#xA;Попадите на мостик по лестнице в ангаре или с помощью &lt;TECHNOLOGY&gt;телепорта&lt;&gt;.
                                -- Reach the &lt;STELLAR&gt;bridge&lt;&gt; of the freighter&#xA;Access the bridge via the hangar stairs or &lt;TECHNOLOGY&gt;teleporter&lt;&gt;
                                { "Russian", "Подойдите к &lt;STELLAR&gt;мостику&lt;&gt; грузового судна&#xA;Используйте лестницу или &lt;TECHNOLOGY&gt;телепорт&lt;&gt; в ангаре" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_LEAVE_SYSTEM_FR_MSG6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Воспользуйтесь грузовым кораблем, чтобы &lt;STELLAR&gt;отправиться&lt;&gt; в новую систему.&#xA;Центральная панель управления грузового корабля оснащена &lt;STELLAR&gt;галактической картой&lt;&gt;.
                                -- Use the freighter to &lt;STELLAR&gt;warp&lt;&gt; to a new system&#xA;The freighter's central control panel has its own &lt;STELLAR&gt;Galaxy Map&lt;&gt;
                                { "Russian", "&lt;STELLAR&gt;Переместитесь&lt;&gt; в новую систему на грузовом судне&#xA;Центральная панель грузового судна оснащена&#xA;&lt;STELLAR&gt;галактической картой&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region UI_PARTY_PLANET_SURVEY
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PARTY_PLANET_SURVEY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Доберитесь до &lt;STELLAR&gt;места встречи&lt;&gt; экспедиции&#xA;Используйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt;, чтобы обнаружить место встречи
                                { "Russian", "Доберитесь до &lt;STELLAR&gt;места встречи&lt;&gt; экспедиции&#xA;Найдите его с помощью &lt;TECHNOLOGY&gt;разведки цели&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PARTY_PLANET_SURVEY_OFF" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Доберитесь до &lt;STELLAR&gt;места встречи&lt;&gt; экспедиции&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы обнаружить место встречи
                                { "Russian", "Доберитесь до &lt;STELLAR&gt;места встречи&lt;&gt; экспедиции&#xA;Найдите его с помощью &lt;STELLAR&gt;разведки цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PARTY_PLANET_SURVEY_IN_CAR" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Доберитесь до &lt;STELLAR&gt;места встречи&lt;&gt; экспедиции.&#xA;Воспользуйтесь &lt;STELLAR&gt;разведкой цели&lt;&gt;, чтобы его найти.&#xA;Чтобы подтвердить направление разведки, выйдите из своего транспорта.
                                { "Russian", "Доберитесь до &lt;STELLAR&gt;места встречи&lt;&gt; экспедиции&#xA;Найдите его с помощью &lt;TECHNOLOGY&gt;разведки цели&lt;&gt;&#xA;Выйдите из транспорта, чтобы сверить направление" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PARTY_PLANET_SURVEY_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Доберитесь до &lt;STELLAR&gt;места встречи&lt;&gt; экспедиции&#xA;Воспользуйтесь &lt;TECHNOLOGY&gt;разведкой цели&lt;&gt;, чтобы его найти.&#xA;Призовите &lt;TECHNOLOGY&gt;подводную лодку «Наутилон»&lt;&gt; с помощью &lt;STELLAR&gt;быстрого меню&lt;&gt; (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                { "Russian", "Доберитесь до &lt;STELLAR&gt;места встречи&lt;&gt; экспедиции&#xA;Найдите его с помощью &lt;TECHNOLOGY&gt;разведки цели&lt;&gt;&#xA;Вызовите &lt;TECHNOLOGY&gt;Наутилон&lt;&gt; из &lt;STELLAR&gt;быстрого меню&lt;&gt; (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PARTY_PLANET_SURVEY_SUB_SWAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Доберитесь до &lt;STELLAR&gt;места встречи&lt;&gt; экспедиции.&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;.&#xA;Призовите &lt;TECHNOLOGY&gt;подводную лодку «Наутилон»&lt;&gt; с помощью &lt;STELLAR&gt;быстрого меню&lt;&gt; (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                { "Russian", "Доберитесь до &lt;STELLAR&gt;места встречи&lt;&gt; экспедиции&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;&#xA;Вызовите &lt;TECHNOLOGY&gt;Наутилон&lt;&gt; из &lt;STELLAR&gt;быстрого меню&lt;&gt; (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PARTY_PLANET_SURVEY_SUB_OFF" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Доберитесь до &lt;STELLAR&gt;места встречи&lt;&gt; экспедиции&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы его найти.&#xA;Призовите &lt;TECHNOLOGY&gt;подводную лодку «Наутилон»&lt;&gt; с помощью &lt;STELLAR&gt;быстрого меню&lt;&gt; (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                { "Russian", "Доберитесь до &lt;STELLAR&gt;места встречи&lt;&gt; экспедиции&#xA;Найдите его с помощью &lt;STELLAR&gt;разведки цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)&#xA;Вызовите &lt;TECHNOLOGY&gt;Наутилон&lt;&gt; из &lt;STELLAR&gt;быстрого меню&lt;&gt; (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PARTY_PLANET_SURVEY_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружено место встречи
                                -- Rendezvous Point Located
                                { "Russian", "Найдено место встречи" },
                            }
                        },
                        --#endregion

                        --#region UI_EXPED_FLEETMISS_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_FLEETMISS_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Завершите &lt;STELLAR&gt;экспедиции флота&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Для управления флотом требуется флагманский корабль&#xA;Чтобы получить указания о флагманских кораблях, выберите этап &lt;COMMODITY&gt;«Капитан на мостике»&lt;&gt;.
                                -- Complete &lt;STELLAR&gt;fleet expeditions&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;A capital ship is required to manage a fleet&#xA;Select the &lt;COMMODITY&gt;Captain on Deck&lt;&gt; milestone for capital ship guidance
                                { "Russian", "Завершите &lt;STELLAR&gt;экспедиции флота&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Для управления флотом требуется флагманский корабль&#xA;Выберите этап &lt;COMMODITY&gt;Капитан на мостике&lt;&gt;&#xA;для дополнительных указаний" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_FLEETMISS_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Завершите &lt;STELLAR&gt;экспедиции флота&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Выберите задание &lt;COMMODITY&gt;«Командование грузового корабля»&lt;&gt;в журнале, чтобы получить дальнейшие указания&#xA;Вы управляете своим флотом с мостика своего &lt;STELLAR&gt;флагманского корабля&lt;&gt;.
                                -- Complete &lt;STELLAR&gt;fleet expeditions&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Select the &lt;COMMODITY&gt;Freighter Command&lt;&gt; mission in the Log for specific guidance&#xA;Manage your fleet from the bridge of your &lt;STELLAR&gt;capital ship&lt;&gt;
                                { "Russian", "Завершите &lt;STELLAR&gt;экспедиции флота&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Выберите задание &lt;COMMODITY&gt;Командование грузового корабля&lt;&gt;&#xA;в журнале для дальнейших указаний&#xA;Управляйте флотом с мостика на &lt;STELLAR&gt;грузовом судне&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_FLEETMISS_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Проведите &lt;STELLAR&gt;экспедиции флота&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Управляйте флотом с мостика своего флагманского корабля.
                                { "Russian", "Завершите &lt;STELLAR&gt;экспедиции флота&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Управляйте флотом с мостика на грузовом судне" },
                            }
                        },
                        --#endregion

                        --#region UI_EXPED_BURIED_PROP
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_BURIED_PROP_DESC_D" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Выкопаны утерянные предметы: %NUM%
                                -- Recovered %NUM% lost objects
                                { "Russian", "Выкопано утерянных предметов: %NUM%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_BURIED_PROP_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите утерянные предметы: &lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;&#xA;Найдите &lt;STELLAR&gt;закопанные предметы&lt;&gt; с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;.&#xA;Для произведения раскопок используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt;.
                                -- Collect lost objects: &lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;&#xA;Locate &lt;STELLAR&gt;buried items&lt;&gt; using the &lt;TECHNOLOGY&gt;Analysis Visor&lt;&gt;&#xA;Use the &lt;TECHNOLOGY&gt;Terrain Manipulator&lt;&gt; to excavate lost objects
                                { "Russian", "Соберите утерянные предметы: &lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;&#xA;Найдите &lt;STELLAR&gt;закопанные предметы&lt;&gt; с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;&#xA;Для раскопок используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_BURIED_PROP_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите утерянные предметы: &lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;&#xA;Найдите &lt;STELLAR&gt;закопанные предметы&lt;&gt; с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;.&#xA;Для раскопок используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt;.&#xA;Переключайте режимы &lt;COMMODITY&gt;мультитула&lt;&gt; с помощью &lt;IMG&gt;CYCLEWEAPON&lt;&gt;.
                                { "Russian", "Соберите утерянные предметы: &lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;&#xA;Найдите &lt;STELLAR&gt;закопанные предметы&lt;&gt; с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;&#xA;Для раскопок используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt;&#xA;Меняйте режим &lt;COMMODITY&gt;мультитула&lt;&gt; с помощью &lt;IMG&gt;CYCLEWEAPON&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_BURIED_PROP_SURVEY1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите утерянные предметы: &lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;&#xA;Используйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt;, чтобы обнаружить закопанные предметы.&#xA;Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt; для раскопок.
                                { "Russian", "Соберите утерянные предметы: &lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;&#xA;Найдите закопанные предметы с помощью &lt;TECHNOLOGY&gt;разведки цели&lt;&gt;&#xA;Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt; для раскопок" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_BURIED_PROP_SWAP1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите утерянные предметы: &lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;.&#xA;Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt; для раскопок.
                                { "Russian", "Соберите утерянные предметы: &lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;&#xA;Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt; для раскопок" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_BURIED_PROP_OFF1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите утерянные предметы: &lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы найти закопанные предметы.&#xA;Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt; для раскопок.
                                -- Collect lost objects: &lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;&#xA;Activate a &lt;STELLAR&gt;Target Sweep&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;) to locate buried items&#xA;Use the &lt;TECHNOLOGY&gt;Terrain Manipulator&lt;&gt; to excavate lost objects
                                { "Russian", "Соберите утерянные предметы: &lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;&#xA;Найдите закопанные предметы с помощью &lt;STELLAR&gt;разведки цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)&#xA;Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt; для раскопок" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_BURIED_PROP_SURVEY2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите утерянное: &lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;&#xA;Используйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt;, чтобы обнаружить закопанные предметы.&#xA;Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt; для раскопок.&#xA;Переключайте режимы &lt;COMMODITY&gt;мультитула&lt;&gt; с помощью &lt;IMG&gt;CYCLEWEAPON&lt;&gt;.
                                -- Collect lost objects: &lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;&#xA;Use the &lt;TECHNOLOGY&gt;Target Sweep&lt;&gt; to locate buried items&#xA;Use the &lt;TECHNOLOGY&gt;Terrain Manipulator&lt;&gt; to excavate lost objects&#xA;Cycle &lt;COMMODITY&gt;Multi-Tool Modes&lt;&gt; with &lt;IMG&gt;CYCLEWEAPON&lt;&gt;
                                { "Russian", "Соберите утерянные предметы: &lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;&#xA;Найдите закопанные предметы с помощью &lt;TECHNOLOGY&gt;разведки цели&lt;&gt;&#xA;Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt; для раскопок&#xA;Меняйте режим &lt;COMMODITY&gt;мультитула&lt;&gt; с помощью &lt;IMG&gt;CYCLEWEAPON&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_BURIED_PROP_SWAP2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите утерянное: &lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;.&#xA;Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt; для раскопок.&#xA;Переключайте режимы &lt;COMMODITY&gt;мультитула&lt;&gt; с помощью &lt;IMG&gt;CYCLEWEAPON&lt;&gt;.
                                { "Russian", "Соберите утерянные предметы: &lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;&#xA;Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt; для раскопок&#xA;Меняйте режим &lt;COMMODITY&gt;мультитула&lt;&gt; с помощью &lt;IMG&gt;CYCLEWEAPON&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_BURIED_PROP_OFF2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите утерянное: &lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы найти закопанные предметы.&#xA;Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt; для раскопок.&#xA;Переключайте режимы &lt;COMMODITY&gt;мультитула&lt;&gt; с помощью &lt;IMG&gt;CYCLEWEAPON&lt;&gt;.
                                { "Russian", "Соберите утерянные предметы: &lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;&#xA;Найдите закопанные предметы с помощью &lt;STELLAR&gt;разведки цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)&#xA;Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt; для раскопок&#xA;Меняйте режим &lt;COMMODITY&gt;мультитула&lt;&gt; с помощью &lt;IMG&gt;CYCLEWEAPON&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_BURIED_PROP_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите &lt;STELLAR&gt;закопанные предметы&lt;&gt; с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;.&#xA;Для раскопок используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt;.&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы найти потерянные предметы на расстоянии.
                                -- Locate &lt;STELLAR&gt;buried items&lt;&gt; using the &lt;TECHNOLOGY&gt;Analysis Visor&lt;&gt;.&#xA;Use the &lt;TECHNOLOGY&gt;Terrain Manipulator&lt;&gt; to excavate buried items.&#xA;Activate a &lt;STELLAR&gt;Target Sweep&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;) to locate lost objects at a distance.
                                { "Russian", "Найдите &lt;STELLAR&gt;закопанные предметы&lt;&gt; с помощью &lt;TECHNOLOGY&gt;анализирующего визора﻿.&lt;&gt;&#xA;Для раскопок используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор﻿.&lt;&gt;&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы найти потерянные предметы на расстоянии." },
                            }
                        },
                        --#endregion

                        --#region UI_EXPED_COMM_WRAP_.*_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_COMM_WRAP_OBJ1_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Получить историографический дозиметр.&#xA;Выполните &lt;EXPED&gt;этапы&lt;&gt; в &lt;EXPED&gt;режиме экспедиции&lt;&gt;, чтобы получить устройство.
                                -- Acquire a Historiographical Dosimeter&#xA;Complete &lt;EXPED&gt;Milestones&lt;&gt; in &lt;EXPED&gt;Expedition Mode&lt;&gt; to acquire the Dosimeter
                                { "Russian", "Получите историографический дозиметр&#xA;Выполните &lt;EXPED&gt;этапы экспедиции&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_COMM_WRAP_OBJ2_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Передавайте Нада и Поло исторические данные, полученные в местах нахождения инопланетных артефактов, чтобы помочь их исследованию.&#xA;Нада удалось обнаружить новую закономерность, проявляющуюся в историях инопланетных существ.&#xA;Передайте Нада показания дозиметра, чтобы обнаружить ее источник.
                                -- Submit historial data from artifact sites to assist Nada and Polo&#xA;Nada detected a novel pattern in alien stories&#xA;Submit Dosimeter readings to trace the source
                                { "Russian", "Из места нахождения инопланетного артефакта&#xA;передайте Нада и Поло исторические данные&#xA;с помощью дозиметра" },
                            }
                        },
                        --#endregion

                        --#region UI_EXPED_S2_MYSTERY[0-9]_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_S2_MYSTERY1_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Передайте историографические показания Нада: %CURRENT%/%AMOUNT%&#xA;Собирайте данные в &lt;SPECIAL&gt;местах нахождения инопланетных артефактов&lt;&gt;&#xA;Приобрести &lt;SPECIAL&gt;планетарные карты&lt;&gt; можно у &lt;TECHNOLOGY&gt;картографа&lt;&gt; на космической станции.
                                { "Russian", "Передайте историографические показания Нада: %CURRENT%/%AMOUNT%&#xA;Соберите данные в &lt;SPECIAL&gt;местах нахождения инопланетных артефактов&lt;&gt;&#xA;Покупайте &lt;SPECIAL&gt;планетарные карты&lt;&gt; у &lt;TECHNOLOGY&gt;картографа&lt;&gt;&#xA;на космической станции" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_S2_MYSTERY2_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поло изготовил &lt;SPECIAL&gt;маяк мифов&lt;&gt; из собранных историографических данных.&#xA;Вернитесь на Космическую Аномалию, чтобы его забрать.
                                -- Polo has crafted a &lt;SPECIAL&gt;Myth Beacon&lt;&gt; from collected historiographical data&#xA;Return to the Space Anomaly to acquire a Myth Beacon
                                { "Russian", "Поло изготовил &lt;SPECIAL&gt;маяк мифов&lt;&gt; на основе&#xA;собранных историографических данных&#xA;Заберите его на Космической Аномалии" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_S2_MYSTERY2_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поло изготовил &lt;SPECIAL&gt;маяк мифов&lt;&gt; из собранных историографических данных.&#xA;Получите его с помощью &lt;STELLAR&gt;дополнительного элемента синтеза ртути&lt;&gt;.
                                { "Russian", "Поло изготовил &lt;SPECIAL&gt;маяк мифов&lt;&gt; на основе&#xA;собранных историографических данных&#xA;Заберите его у &lt;STELLAR&gt;Товарища по синтезу ртути&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_S2_MYSTERY3_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поло удалось обнаружить подходящее место для установки &lt;SPECIAL&gt;маяка мифов&lt;&gt;.&#xA;Доберитесь до &lt;STELLAR&gt;источника эха&lt;&gt; и воспользуйтесь маяком.
                                -- Polo has located a suitable site for the deployment of the &lt;SPECIAL&gt;Myth Beacon&lt;&gt;&#xA;Reach the &lt;STELLAR&gt;echo source&lt;&gt; and deploy the Myth Beacon
                                { "Russian", "Поло нашел место для установки &lt;SPECIAL&gt;маяка мифов&lt;&gt;&#xA;Доберитесь до &lt;STELLAR&gt;источника эха&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_S2_MYSTERY3_MSG1_MAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поло удалось обнаружить подходящее место для установки &lt;SPECIAL&gt;маяка мифов&lt;&gt;.&#xA;Выйдите в космос и откройте галактическую карту (&lt;IMG&gt;QUICK_MENU&lt;&gt;), чтобы найти &lt;STELLAR&gt;источник эха&lt;&gt;.
                                -- Polo has located a suitable site for the deployment of the &lt;SPECIAL&gt;Myth Beacon&lt;&gt;&#xA;In space, consult the Galaxy Map (&lt;IMG&gt;QUICK_MENU&lt;&gt;) to locate the &lt;STELLAR&gt;echo source&lt;&gt;
                                { "Russian", "Поло нашел место для установки &lt;SPECIAL&gt;маяка мифов&lt;&gt;&#xA;Находясь в космосе, откройте галактическую карту (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_S2_MYSTERY3_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Используйте &lt;SPECIAL&gt;маяк мифов&lt;&gt;.&#xA;Найдите его в инвентаре и активируйте с помощью &lt;IMG&gt;FE_ALT1&lt;&gt;
                                -- Deploy the &lt;SPECIAL&gt;Myth Beacon&lt;&gt;&#xA;Locate the beacon in your Inventory and deploy with &lt;IMG&gt;FE_ALT1&lt;&gt;
                                { "Russian", "Используйте &lt;SPECIAL&gt;маяк мифов&lt;&gt;&#xA;Найдите его в инвентаре и активируйте с помощью &lt;IMG&gt;FE_ALT1&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_S2_MYSTERY4_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Маяк мифов&lt;&gt; призвал таинственный корабль.&#xA;Вернитесь на свой корабль и последуйте за сигналом.
                                -- The &lt;SPECIAL&gt;Myth Beacon&lt;&gt; has summoned a mysterious starship&#xA;Return to your ship and follow the signal
                                { "Russian", "&lt;SPECIAL&gt;Маяк мифов&lt;&gt; вызвал таинственный корабль&#xA;Вернитесь в космос" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_S2_MYSTERY4_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Маяк мифов&lt;&gt; призвал таинственный корабль.&#xA;Последуйте за сигналом дальше в космос.
                                -- The &lt;SPECIAL&gt;Myth Beacon&lt;&gt; has summoned a mysterious starship&#xA;Follow the signal deeper into space
                                { "Russian", "&lt;SPECIAL&gt;Маяк мифов&lt;&gt; вызвал таинственный корабль&#xA;Следуйте за сигналом в глубины космоса" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_S2_MYSTERY4_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Маяк мифов&lt;&gt; призвал таинственный корабль.&#xA;Отслеживание историографического эха: &lt;SPECIAL&gt;%SIGNAL%&lt;&gt;
                                -- The &lt;SPECIAL&gt;Myth Beacon&lt;&gt; has summoned a mysterious starship&#xA;Tracing historiographical echo: &lt;SPECIAL&gt;%SIGNAL%&lt;&gt;
                                { "Russian", "&lt;SPECIAL&gt;Маяк мифов&lt;&gt; вызвал таинственный корабль&#xA;Сигнал историографического эха: &lt;SPECIAL&gt;%SIGNAL%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_S2_MYSTERY4_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Маяк мифов&lt;&gt; призвал таинственный корабль.&#xA;Свяжитесь с кораблем.
                                { "Russian", "&lt;SPECIAL&gt;Маяк мифов&lt;&gt; вызвал таинственный корабль&#xA;Свяжитесь с кораблем" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_S2_MYSTERY4_MSG5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Маяк мифов&lt;&gt; призвал таинственный корабль.&#xA;Ответьте на вызов с помощью быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                -- The &lt;SPECIAL&gt;Myth Beacon&lt;&gt; has summoned a mysterious starship&#xA;Answer the Communicator from the Quick Menu (&lt;IMG&gt;QUICK_MENU&lt;&gt;)
                                { "Russian", "&lt;SPECIAL&gt;Маяк мифов&lt;&gt; вызвал таинственный корабль&#xA;Ответьте по коммуникатору из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        --#endregion

                        --#region UI_EXPED_SALVAGED_SHIP_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_SALVAGED_SHIP_MSG0" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите и заберите &lt;STELLAR&gt;разбившийся звездолет&lt;&gt;.&#xA;Купите &lt;SPECIAL&gt;планетарные карты&lt;&gt; у &lt;TECHNOLOGY&gt;картографа&lt;&gt; на космической станции.
                                { "Russian", "Найдите и заберите &lt;STELLAR&gt;разбившийся звездолёт&lt;&gt;&#xA;Купите &lt;SPECIAL&gt;планетарные карты&lt;&gt; у &lt;TECHNOLOGY&gt;картографа&lt;&gt; на космической станции" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_SALVAGED_SHIP_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Восстановите свой &lt;STELLAR&gt;разбившийся звездолет&lt;&gt;.&#xA;%REPAIR%
                                { "Russian", "Восстановите свой &lt;STELLAR&gt;разбившийся звездолёт&lt;&gt;&#xA;%REPAIR%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_SALVAGED_SHIP_MSG1A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Восстановите &lt;STELLAR&gt;разбившийся звездолет&lt;&gt;.&#xA;Вызовите разбившийся корабль через быстрое меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                { "Russian", "Восстановите &lt;STELLAR&gt;разбившийся звездолёт&lt;&gt;&#xA;Вызовите разбившийся корабль из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        --#endregion

                        --#region UI_EXPED_VISIT_UNFREIGHT_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_VISIT_UNFREIGHT_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите разбившееся грузовое судно &lt;TECHNOLOGY&gt;под водой&lt;&gt;.&#xA;На галактической карте (&lt;IMG&gt;QUICK_MENU&lt;&gt;) найдите системы с &lt;TECHNOLOGY&gt;водой&lt;&gt;.
                                { "Russian", "Найдите разбившееся грузовое судно &lt;TECHNOLOGY&gt;под водой&lt;&gt;&#xA;На галактической карте (&lt;IMG&gt;QUICK_MENU&lt;&gt;) найдите системы с &lt;TECHNOLOGY&gt;водой&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_VISIT_UNFREIGHT_MSG1A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите разбившееся грузовое судно &lt;TECHNOLOGY&gt;под водой&lt;&gt;.&#xA;На &lt;STELLAR&gt;планете неподалеку&lt;&gt; обнаружена вода.&#xA;Чтобы находить крупные водоемы, осматривайте планеты из космоса из своего звездолета.
                                { "Russian", "Найдите разбившееся грузовое судно &lt;TECHNOLOGY&gt;под водой&lt;&gt;&#xA;На &lt;STELLAR&gt;планете неподалеку&lt;&gt; обнаружена вода&#xA;Осматривайте планеты из космоса для поиска крупных водоемов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_VISIT_UNFREIGHT_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите разбившееся грузовое судно &lt;TECHNOLOGY&gt;под водой&lt;&gt;.&#xA;Начните поиски на &lt;TECHNOLOGY&gt;глубине&lt;&gt;.&#xA;Чтобы находить крупные водоемы, осматривайте планеты из космоса из своего звездолета.
                                { "Russian", "Найдите разбившееся грузовое судно &lt;TECHNOLOGY&gt;под водой&lt;&gt;&#xA;Начните поиски на &lt;TECHNOLOGY&gt;глубине&lt;&gt;.&#xA;Осматривайте планеты из космоса для поиска крупных водоемов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_VISIT_UNFREIGHT_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите разбившееся грузовое судно &lt;TECHNOLOGY&gt;под водой&lt;&gt;.&#xA;Постройте &lt;STELLAR&gt;подводную лодку «Наутилон»&lt;&gt;, чтобы продолжить поиск под водой.&#xA;Откройте меню созидания (&lt;IMG&gt;BUILD_MENU&lt;&gt;) и &lt;COMMODITY&gt;закрепите&lt;&gt; чертеж с помощью &lt;IMG&gt;PIN_BUILD&lt;&gt;.&#xA;Чтобы облегчить строительство, создайте &lt;TRADEABLE&gt;морское убежище&lt;&gt; с помощью меню созидания.
                                { "Russian", "Найдите разбившееся грузовое судно &lt;TECHNOLOGY&gt;под водой&lt;&gt;&#xA;Постройте &lt;STELLAR&gt;подводную лодку Наутилон&lt;&gt;, чтобы продолжить поиск под водой&#xA;Откройте меню строительства (&lt;IMG&gt;BUILD_MENU&lt;&gt;) и &lt;COMMODITY&gt;закрепите&lt;&gt; чертеж с помощью &lt;IMG&gt;PIN_BUILD&lt;&gt;&#xA;Создание &lt;TRADEABLE&gt;морского убежища&lt;&gt; может ускорить процесс" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_VISIT_UNFREIGHT_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите разбившееся грузовое судно &lt;TECHNOLOGY&gt;под водой&lt;&gt;.&#xA;Пройдите этап &lt;EXPED&gt;%MILESTONE%&lt;&gt;, чтобы получить чертежи &lt;STELLAR&gt;подводной лодки «Наутилон»&lt;&gt;.&#xA;Выберите этапы на вкладке &lt;STELLAR&gt;«Экспедиция»&lt;&gt; (&lt;IMG&gt;OPTIONS&lt;&gt;).
                                { "Russian", "Найдите разбившееся грузовое судно &lt;TECHNOLOGY&gt;под водой&lt;&gt;&#xA;Пройдите этап &lt;EXPED&gt;%MILESTONE%&lt;&gt;, чтобы получить чертежи &lt;STELLAR&gt;подводной лодки&lt;&gt;&#xA;Выберите этап на вкладке &lt;STELLAR&gt;«Экспедиция»&lt;&gt; (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_VISIT_UNFREIGHT_MSG5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите разбившееся грузовое судно &lt;TECHNOLOGY&gt;под водой&lt;&gt;.&#xA;Установите &lt;TECHNOLOGY&gt;мощный сонар&lt;&gt; на «Наутилон».&#xA;Откройте инвентарь (&lt;IMG&gt;INVENTORY&lt;&gt;) и начните установку с помощью &lt;IMG&gt;TECHMENU&lt;&gt;.&#xA;Чтобы облегчить строительство, создайте &lt;TRADEABLE&gt;морское убежище&lt;&gt; с помощью меню созидания (&lt;IMG&gt;BUILD_MENU&lt;&gt;).
                                { "Russian", "Найдите разбившееся грузовое судно &lt;TECHNOLOGY&gt;под водой&lt;&gt;&#xA;Установите &lt;TECHNOLOGY&gt;мощный сонар&lt;&gt; на Наутилон&#xA;Откройте инвентарь (&lt;IMG&gt;INVENTORY&lt;&gt;) и начните установку с помощью &lt;IMG&gt;TECHMENU&lt;&gt;&#xA;Создание &lt;TRADEABLE&gt;морского убежища&lt;&gt; может ускорить процесс (&lt;IMG&gt;BUILD_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_VISIT_UNFREIGHT_MSG5A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите разбившееся грузовое судно &lt;TECHNOLOGY&gt;под водой&lt;&gt;.&#xA;Изучите чертежи &lt;TECHNOLOGY&gt;мощного сонара&lt;&gt; «Наутилона».&#xA;Пройдите этап &lt;EXPED&gt;%MILESTONE%&lt;&gt;, чтобы получить чертежи сонара.&#xA;Выберите этапы на вкладке &lt;STELLAR&gt;«Экспедиция»&lt;&gt; (&lt;IMG&gt;OPTIONS&lt;&gt;).
                                { "Russian", "Найдите разбившееся грузовое судно &lt;TECHNOLOGY&gt;под водой&lt;&gt;&#xA;Изучите чертежи &lt;TECHNOLOGY&gt;мощного сонара&lt;&gt; для Наутилон&#xA;Пройдите этап &lt;EXPED&gt;%MILESTONE%&lt;&gt;, чтобы получить чертежи сонара&#xA;Выберите этап на вкладке &lt;STELLAR&gt;«Экспедиция»&lt;&gt; (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_VISIT_UNFREIGHT_MSG6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите разбившееся грузовое судно &lt;TECHNOLOGY&gt;под водой&lt;&gt;.&#xA;Используйте &lt;TECHNOLOGY&gt;мощный сонар&lt;&gt; «Наутилона» для поиска подводных объектов.&#xA;Активируйте сонар в &lt;STELLAR&gt;быстром меню&lt;&gt; (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                { "Russian", "Найдите разбившееся грузовое судно &lt;TECHNOLOGY&gt;под водой&lt;&gt;&#xA;Используйте &lt;TECHNOLOGY&gt;мощный сонар&lt;&gt; Наутилона для поиска подводных объектов&#xA;Активируйте сонар из &lt;STELLAR&gt;быстрого меню&lt;&gt; (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_VISIT_UNFREIGHT_MSG7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите разбившееся грузовое судно &lt;TECHNOLOGY&gt;под водой&lt;&gt;.&#xA;Запустите &lt;STELLAR&gt;подводную лодку «Наутилон»&lt;&gt; с помощью быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                { "Russian", "Найдите разбившееся грузовое судно &lt;TECHNOLOGY&gt;под водой&lt;&gt;&#xA;Вызовите &lt;STELLAR&gt;подводную лодку Наутилон&lt;&gt; из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_VISIT_UNFREIGHT_MSG8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите разбившееся грузовое судно &lt;TECHNOLOGY&gt;под водой&lt;&gt;.&#xA;Сядьте в &lt;STELLAR&gt;подводную лодку «Наутилон»&lt;&gt;.
                                { "Russian", "Найдите разбившееся грузовое судно &lt;TECHNOLOGY&gt;под водой&lt;&gt;&#xA;Сядьте в &lt;STELLAR&gt;подводную лодку Наутилон&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_VISIT_UNFREIGHT_MSG9" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите разбившееся грузовое судно &lt;TECHNOLOGY&gt;под водой&lt;&gt;.&#xA;Постройте &lt;TECHNOLOGY&gt;станцию вызова вездехода&lt;&gt;, чтобы быстро запускать &lt;STELLAR&gt;подводную лодку «Наутилон»&lt;&gt;.&#xA;Откройте меню созидания (&lt;IMG&gt;BUILD_MENU&lt;&gt;) и &lt;COMMODITY&gt;закрепите&lt;&gt; чертеж с помощью &lt;IMG&gt;PIN_BUILD&lt;&gt;.
                                { "Russian", "Найдите разбившееся грузовое судно &lt;TECHNOLOGY&gt;под водой&lt;&gt;&#xA;Постройте &lt;TECHNOLOGY&gt;станцию вызова вездехода&lt;&gt;, чтобы вызвать &lt;STELLAR&gt;Наутилон&lt;&gt;&#xA;Откройте меню строительства (&lt;IMG&gt;BUILD_MENU&lt;&gt;) и &lt;COMMODITY&gt;закрепите&lt;&gt; чертеж с помощью &lt;IMG&gt;PIN_BUILD&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_VISIT_UNFREIGHT_MSG10" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите разбившееся грузовое судно &lt;TECHNOLOGY&gt;под водой&lt;&gt;.&#xA;Следуйте за сигналом сонара.&#xA;Улучшения для двигателя «Наутилона» можно приобрести на борту &lt;COMMODITY&gt;космической станции&lt;&gt;.
                                { "Russian", "Найдите разбившееся грузовое судно &lt;TECHNOLOGY&gt;под водой&lt;&gt;&#xA;Следуйте за сигналом сонара&#xA;Улучшения для двигателя Наутилона можно приобрести на &lt;COMMODITY&gt;космической станции&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_VISIT_UNFREIGHT_MSG11" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружено &lt;TECHNOLOGY&gt;затонувшее грузовое судно&lt;&gt;.&#xA;Изучите журнал обреченного судна.
                                -- &lt;TECHNOLOGY&gt;Sunked Freighter&lt;&gt; located&#xA;Inspect the log of the doomed vessel
                                { "Russian", "Обнаружено &lt;TECHNOLOGY&gt;затонувшее грузовое судно&lt;&gt;&#xA;Изучите журнал обречённого судна" },
                            }
                        },
                        --#endregion

                        --#region UI_EXPED_ACROBAT_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_ACROBAT_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вернитесь на свой корабль, чтобы начать &lt;STELLAR&gt;маневры на небольшой высоте&lt;&gt;&#xA;Время маневрирования: %CURRENT%/%AMOUNT% сек.
                                { "Russian", "Вернитесь на корабль, чтобы начать &lt;STELLAR&gt;маневры на небольшой высоте&lt;&gt;&#xA;Время маневрирования: %CURRENT%/%AMOUNT% с" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_ACROBAT_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Выйдите на низкую планетарную орбиту, чтобы начать &lt;STELLAR&gt;маневры на небольшой высоте&lt;&gt;&#xA;Время маневрирования: %CURRENT%/%AMOUNT% сек.
                                { "Russian", "Выйдите на низкую планетарную орбиту, чтобы начать &lt;STELLAR&gt;маневры на небольшой высоте&lt;&gt;&#xA;Время маневрирования: %CURRENT%/%AMOUNT% с" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_ACROBAT_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Чтобы начать, летите на &lt;STELLAR&gt;небольшой высоте&lt;&gt;&#xA;Время маневрирования: %CURRENT%/%AMOUNT% сек.
                                { "Russian", "Выполните маневры на &lt;STELLAR&gt;небольшой высоте&lt;&gt;&#xA;Время маневрирования: %CURRENT%/%AMOUNT% с" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_ACROBAT_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Переверните&lt;&gt; свой звездолет, летя на &lt;STELLAR&gt;небольшой высоте&lt;&gt;&#xA;Время маневрирования: %CURRENT%/%AMOUNT% сек.
                                { "Russian", "&lt;STELLAR&gt;Переверните&lt;&gt; свой звездолёт, летя на &lt;STELLAR&gt;небольшой высоте&lt;&gt;&#xA;Время маневрирования: %CURRENT%/%AMOUNT% с" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_ACROBAT_MSG5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Включите &lt;STELLAR&gt;ускорение&lt;&gt; (&lt;IMG&gt;BOOST&lt;&gt;), летя на &lt;STELLAR&gt;небольшой высоте&lt;&gt;&#xA;Время маневрирования: %CURRENT%/%AMOUNT% сек.
                                { "Russian", "Включите &lt;STELLAR&gt;ускорение&lt;&gt; (&lt;IMG&gt;BOOST&lt;&gt;), летя на &lt;STELLAR&gt;небольшой высоте&lt;&gt;&#xA;Время маневрирования: %CURRENT%/%AMOUNT% с" },
                            }
                        },
                        --#endregion

                        --#region UI_EXPED_FIEND_EGG_
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_FIEND_EGG_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Разоритель гнезд
                                { "Russian", "Разоритель гнёзд" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_FIEND_EGG_NAME_U" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- РАЗОРИТЕЛЬ ГНЕЗД
                                { "Russian", "РАЗОРИТЕЛЬ ГНЁЗД" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_FIEND_EGG_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Извлеките &lt;TRADEABLE&gt;ядра личинок&lt;&gt; из &lt;COMMODITY&gt;шепчущих яиц&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Ищите яйца у заброшенных сооружений на планетах без воздуха.&#xA;&lt;FUEL&gt;ВНИМАНИЕ&lt;&gt;: потревожив яйцо, вы вызовите чудовищную стаю...
                                { "Russian", "Извлеките &lt;TRADEABLE&gt;ядра личинок&lt;&gt; из &lt;COMMODITY&gt;шепчущих яиц&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Ищите яйца у заброшенных сооружений на планетах без воздуха&#xA;&lt;FUEL&gt;Потревожив яйцо&lt;&gt;, вы вызовите чудовищную стаю..." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_FIEND_EGG_SCAN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Извлеките &lt;TRADEABLE&gt;ядра личинок&lt;&gt; из &lt;COMMODITY&gt;шепчущих яиц&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы найти яйца и места кладки.&#xA;&lt;FUEL&gt;ВНИМАНИЕ&lt;&gt;: потревожив яйцо, вы вызовите чудовищную стаю...
                                { "Russian", "Извлеките &lt;TRADEABLE&gt;ядра личинок&lt;&gt; из &lt;COMMODITY&gt;шепчущих яиц&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Найдите яйца и места кладки с помощью &lt;STELLAR&gt;разведки цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)&#xA;&lt;FUEL&gt;Потревожив яйцо&lt;&gt;, вы вызовите чудовищную стаю..." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_FIEND_EGG_SWAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Извлеките &lt;TRADEABLE&gt;ядра личинок&lt;&gt; из &lt;COMMODITY&gt;шепчущих яиц&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;&#xA;Используйте разведку цели, чтобы найти яйца и места кладки.
                                { "Russian", "Извлеките &lt;TRADEABLE&gt;ядра личинок&lt;&gt; из &lt;COMMODITY&gt;шепчущих яиц&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;&#xA;Используйте разведку цели, чтобы найти яйца и места кладки" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_FIEND_EGG_INACTIVE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Извлеките &lt;TRADEABLE&gt;ядра личинок&lt;&gt; из &lt;COMMODITY&gt;шепчущих яиц&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;&lt;TRADEABLE&gt;Найдено&lt;&gt; ужасное место кладки!&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы найти яйца.
                                { "Russian", "Извлеките &lt;TRADEABLE&gt;ядра личинок&lt;&gt; из &lt;COMMODITY&gt;шепчущих яиц&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;&lt;TRADEABLE&gt;Найдено&lt;&gt; ужасное место кладки!&#xA;Найдите яйца с помощью &lt;STELLAR&gt;разведки цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_FIEND_EGG_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;FUEL&gt;Шепчущие яйца&lt;&gt; зачастую можно найти на безвоздушных планетах или у заброшенных строений. Если потревожить яйца, появится &lt;SPECIAL&gt;чудовищная стая&lt;&gt;.&#xA;Чтобы найти &lt;FUEL&gt;шепчущие яйца&lt;&gt;, используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt;.&#xA;&#xA;Подробнее смотрите в разделе &lt;STELLAR&gt;«Бой»&lt;&gt; соответствующего руководства.
                                { "Russian", "&lt;FUEL&gt;Шепчущие яйца&lt;&gt; зачастую можно найти на безвоздушных планетах или у заброшенных строений. Если потревожить яйца, появится &lt;SPECIAL&gt;чудовищная стая﻿.&lt;&gt;&#xA;Чтобы найти &lt;FUEL&gt;шепчущие яйца﻿,&lt;&gt; используйте &lt;TECHNOLOGY&gt;анализирующий визор﻿.&lt;&gt;&#xA;&#xA;Подробнее смотрите в разделе &lt;STELLAR&gt;«Бой»&lt;&gt; соответствующего руководства." },
                            }
                        },
                        --#endregion

                        --#region UI_EXPED_MINER_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_MINER_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добудьте минералы с помощью промышленного оборудования: %CURRENT%/%AMOUNT%&#xA;Используйте &lt;TECHNOLOGY&gt;устройство наблюдения&lt;&gt; для обнаружения скопления минералов.&#xA;Постройте &lt;TECHNOLOGY&gt;извлекатель минералов&lt;&gt;, чтобы начать переработку.
                                { "Russian", "Добудьте минералы с помощью промышленного оборудования: %CURRENT%/%AMOUNT%&#xA;Используйте &lt;TECHNOLOGY&gt;устройство наблюдения&lt;&gt; для обнаружения минералов&#xA;Постройте &lt;TECHNOLOGY&gt;извлекатель минералов&lt;&gt;, чтобы начать переработку" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_MINER_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добудьте минералы с помощью промышленного оборудования: %CURRENT%/%AMOUNT%&#xA;Используйте &lt;TECHNOLOGY&gt;устройство наблюдения&lt;&gt; для обнаружения скопления минералов.&#xA;Пройдите этап &lt;EXPED&gt;«Передача материи»&lt;&gt;, чтобы изучить схемы устройства наблюдения.
                                { "Russian", "Добудьте минералы с помощью промышленного оборудования: %CURRENT%/%AMOUNT%&#xA;Используйте &lt;TECHNOLOGY&gt;устройство наблюдения&lt;&gt; для обнаружения минералов&#xA;Пройдите этап &lt;EXPED&gt;«Передача материи»&lt;&gt;, чтобы изучить чертеж устройства наблюдения" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_MINER_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добудьте минералы с помощью промышленного оборудования: %CURRENT%/%AMOUNT%&#xA;Пройдите этап &lt;EXPED&gt;«Геолог»&lt;&gt;, чтобы изучить схемы &lt;TECHNOLOGY&gt;извлекателя минералов&lt;&gt;.
                                { "Russian", "Добудьте минералы с помощью промышленного оборудования: %CURRENT%/%AMOUNT%&#xA;Пройдите этап &lt;EXPED&gt;«Геолог»&lt;&gt;, чтобы изучить чертеж &lt;TECHNOLOGY&gt;извлекателя минералов&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_MINER_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добудьте минералы с помощью промышленного оборудования: %CURRENT%/%AMOUNT%&#xA;Выберите в журнале задание &lt;STELLAR&gt;«Промышленные изыскания»&lt;&gt;, чтобы получить подробные указания.
                                { "Russian", "Добудьте минералы с помощью промышленного оборудования: %CURRENT%/%AMOUNT%&#xA;Выберите &lt;STELLAR&gt;«Промышленные изыскания»&lt;&gt; в журнале заданий для подробных указаний" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_MINER_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добудьте минералы с помощью промышленного оборудования: %CURRENT%/%AMOUNT%&#xA;Оборудование для добычи продолжит работать без вашего присутствия.&#xA;Время от времени возвращайтесь к извлекателям, чтобы забрать ресурсы.
                                { "Russian", "Добудьте минералы с помощью промышленного оборудования: %CURRENT%/%AMOUNT%&#xA;Оборудование для добычи продолжит работать без вашего присутствия&#xA;Время от времени возвращайтесь к извлекателям, чтобы забрать ресурсы" },
                            }
                        },
                        --#endregion

                        --#region UI_EXPED_DO_ABAND_F_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_DO_ABAND_F_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Спасите имущество&lt;&gt; заброшенного грузового судна.&#xA;Поговорите со &lt;TECHNOLOGY&gt;сборщиком утиля&lt;&gt; на космической станции, чтобы найти обломки.
                                { "Russian", "&lt;SPECIAL&gt;Спасите имущество&lt;&gt; заброшенного грузового судна&#xA;Поговорите со &lt;TECHNOLOGY&gt;сборщиком утиля&lt;&gt; на космической станции" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_DO_ABAND_F_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Спасите имущество&lt;&gt; заброшенного грузового судна.&#xA;Воспользуйтесь &lt;STELLAR&gt;сканером аварийных сигналов&lt;&gt;, чтобы найти обломки.
                                { "Russian", "&lt;SPECIAL&gt;Спасите имущество&lt;&gt; заброшенного грузового судна&#xA;Воспользуйтесь &lt;STELLAR&gt;сканером аварийных сигналов&lt;&gt;" },
                            }
                        },
                        -- наконец-то я разгадал что это за "спасение имущества" - трындец как режет слух
                        -- итак, в русском языке операции по спасению судна делятся на:
                        -- * спасение груза (наш случай, в англ. это salvage)
                        -- * спасение людей (в англ. это rescue)
                        -- * спасение судна (буксировка, подъем и т.д.)
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_DO_ABAND_F_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Завершите текущую &lt;SPECIAL&gt;операцию по спасению имущества&lt;&gt; с заброшенного судна &#xA;Выберите задание &lt;COMMODITY&gt;«Потерянный в космосе»&lt;&gt; в журнале, чтобы получить дальнейшие указания.
                                -- Complete the current derelict &lt;SPECIAL&gt;salvage opportunity&lt;&gt; &#xA;Select the &lt;COMMODITY&gt;Lost in Space&lt;&gt; mission in the Log for specific guidance
                                { "Russian", "Завершите текущую &lt;SPECIAL&gt;операцию спасения груза&lt;&gt; с заброшенного судна &#xA;Выберите задание &lt;COMMODITY&gt;«Потерянный в космосе»&lt;&gt; в журнале для дальнейших указаний" },
                            }
                        },
                        --#endregion

                        --#region Разное
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_WALKER_KILL_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Выследите и уничтожьте шагающих стражей: %CURRENT%/%AMOUNT%&#xA;Приманивайте их, повышая свой &lt;FUEL&gt;уровень розыска&lt;&gt;.
                                -- Hunt and destroy Sentinel Walkers: %CURRENT%/%AMOUNT%&#xA;Summon Walkers by increasing your &lt;FUEL&gt;Wanted Level&lt;&gt;
                                { "Russian", "Выследите и уничтожьте шагающих стражей: %CURRENT%/%AMOUNT%&#xA;Приманивайте их, повышая свой &lt;FUEL&gt;уровень розыска&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_FIEND_KILL_OBJ" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Истребить &lt;SPECIAL&gt;биологические ужасы&lt;&gt;: %CURRENT%/%AMOUNT%
                                -- Exterminate &lt;SPECIAL&gt;biological horrors&lt;&gt;: %CURRENT%/%AMOUNT%
                                { "Russian", "Истребить &lt;SPECIAL&gt;биологические ужасы﻿:&lt;&gt; %CURRENT%/%AMOUNT%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_SALVAGED_SHIP_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Восст. разб. корабль
                                -- Restore a crashed ship
                                { "Russian", "Починить разбившийся корабль" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_SALVAGED_SHIP_DESC_D" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вы восст. разб. корабль
                                -- Restored a crashed ship
                                { "Russian", "Разбившийся корабль отремонтирован" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_VISIT_UNFREIGHT_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Побывайте у затонувшего грузового корабля.
                                -- Visit the site of a sunken freighter
                                { "Russian", "Посетите затонувшее грузовое судно" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_VISIT_UNFREIGHT_DESC_D" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Исследован затонувший грузовой корабль.
                                -- Explored a sunken freighter
                                { "Russian", "Затонувшее грузовое судно исследовано" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_DO_ABAND_F_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Иссл. забр. груз. судно
                                -- Completely explore a derelict freighter
                                { "Russian", "Исследовать заброшенное грузовое судно" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TWITCH_REWARD_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Twitch rewards available&lt;&gt;&#xA;Find earned rewards at the &lt;TECHNOLOGY&gt;Quicksilver Synthesis Companion&lt;&gt;
                                -- &lt;STELLAR&gt;Доступны награды Twitch&lt;&gt;&#xA;Заработанные награды хранятся в &lt;TECHNOLOGY&gt;элементе синтеза ртути&lt;&gt;
                                { "Russian", "&lt;STELLAR&gt;Доступны награды Twitch&lt;&gt;&#xA;Заберите их у &lt;TECHNOLOGY&gt;Товарища по синтезу ртути&lt;&gt;" },
                            }
                        },
                        { -- все не влазеет, ну и раз неведимка, то значит и разведчик
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NORMANDY_CLASS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Разведывательный фрегат-стелс
                                -- Stealth Reconnaissance Frigate
                                { "Russian", "Фрегат-невидимка" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NORMANDY_HAIL_LANG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;SLASH&lt;&gt; &lt;SPECIAL&gt;ОБНАРУЖЕН СКАЧОК ИСТОРИОГРАФИЧЕСКОГО ПОТОКА&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt;&#xA;...&#xA;Было принято решение, согласно которому — &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;кзкззт&lt;&gt; — отвечено.&#xA;Оружие — &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;кззт&lt;&gt; — ваше, используйте его как &lt;STELLAR&gt;герой&lt;&gt; или &lt;FUEL&gt;отступник&lt;&gt;...&#xA;...&#xA;&lt;IMG&gt;SLASH&lt;&gt; &lt;SPECIAL&gt;СКАЧОК ИСТОРИОГРАФИЧЕСКОГО ПОТОКА УМЕНЬШАЕТСЯ&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt;&#xA;...&#xA;....&#xA;командный канал связи корабля «Нормандия» SR1 VI установлен...&lt;AUDIO&gt;UI_Destination_Reached&lt;&gt;
                                -- &lt;IMG&gt;SLASH&lt;&gt; &lt;SPECIAL&gt;HISTORIOGRAPHICAL FLUX SPIKE DETECTED&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt;&#xA;...&#xA;The call was made, the call was – &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;kzkzzt&lt;&gt; – answered.&#xA;The weapon is – &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;kzzt&lt;&gt; – yours, for &lt;STELLAR&gt;paragon&lt;&gt; or &lt;FUEL&gt;renegade&lt;&gt; intent..&#xA;...&#xA;&lt;IMG&gt;SLASH&lt;&gt; &lt;SPECIAL&gt;HISTORIOGRAPHICAL FLUX SPIKE SUBSIDING&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt;&#xA;...&#xA;....&#xA;SSV Normandy SR1 VI Communications Link established...&lt;AUDIO&gt;UI_Destination_Reached&lt;&gt;
                                { "Russian", "&lt;IMG&gt;SLASH&lt;&gt; &lt;SPECIAL&gt;ОБНАРУЖЕН СКАЧОК ИСТОРИОГРАФИЧЕСКОГО ПОТОКА&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt;&#xA;...&#xA;Было принято решение, согласно которому — &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;кзкззт&lt;&gt; — отвечено.&#xA;Оружие — &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;кззт&lt;&gt; — ваше, используйте его как &lt;STELLAR&gt;герой&lt;&gt; или &lt;FUEL&gt;отступник&lt;&gt;...&#xA;...&#xA;&lt;IMG&gt;SLASH&lt;&gt; &lt;SPECIAL&gt;СКАЧОК ИСТОРИОГРАФИЧЕСКОГО ПОТОКА ЗАТИХАЕТ&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt;&#xA;...&#xA;....&#xA;командный канал связи корабля «Нормандия» SR1 VI установлен...&lt;AUDIO&gt;UI_Destination_Reached&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_S2_MYSTERY3_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружен источник историографического эха
                                -- Historiographical Echo Located
                                { "Russian", "Найдено историографическое эхо" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_S2_MYSTERY1_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Нада удалось обнаружить необычную закономерность, проявляющуюся в историях &lt;TRANS_TRA&gt;геков&lt;&gt;, &lt;TRANS_EXP&gt;корваксов&lt;&gt; и &lt;TRANS_WAR&gt;вай'кинов&lt;&gt;.&#xA;&#xA;Он считает, что это историческое эхо является коммуникационным артефактом из аномального источника.&#xA;Используйте &lt;SPECIAL&gt;историографический дозиметр&lt;&gt; для передачи Нада и Поло исторических данных, полученных в местах нахождения инопланетных артефактов, чтобы помочь их исследованию.&#xA;&#xA;Вы можете приобрести &lt;SPECIAL&gt;планетарные карты&lt;&gt; у &lt;TECHNOLOGY&gt;картографа&lt;&gt; на космической станции.
                                -- Nada has detected a renegade pattern emerging in the stories of the &lt;TRANS_TRA&gt;Gek&lt;&gt;, &lt;TRANS_EXP&gt;Korvax&lt;&gt;, and &lt;TRANS_WAR&gt;Vy'keen&lt;&gt;.&#xA;&#xA;They believe this historical echo is a communication artifact from an anomalous source.&#xA;Use the &lt;SPECIAL&gt;Historiographical Dosimeter&lt;&gt; to submit data from alien artifact sites to assist Nada and Polo in their research.&#xA;&#xA;Purchase &lt;SPECIAL&gt;planetary charts&lt;&gt; from a space station &lt;TECHNOLOGY&gt;Cartographer&lt;&gt;.
                                { "Russian", "Нада удалось обнаружить необычную закономерность, проявляющуюся в историях &lt;TRANS_TRA&gt;геков﻿,&lt;&gt; &lt;TRANS_EXP&gt;корваксов&lt;&gt; и &lt;TRANS_WAR&gt;вай'кинов﻿.&lt;&gt;&#xA;&#xA;Он считает, что это историческое эхо является артефактом для связи из аномального источника.&#xA;Из местоположений инопланетных артефактов используйте &lt;SPECIAL&gt;историографический дозиметр&lt;&gt; для передачи Нада и Поло исторических данных, чтобы помочь их исследованию.&#xA;&#xA;Вы можете приобрести &lt;SPECIAL&gt;планетарные карты&lt;&gt; у &lt;TECHNOLOGY&gt;картографа&lt;&gt; на космической станции." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_S2_MYSTERY_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;SLASH&lt;&gt; ОБНАРУЖЕН СИЛЬНЫЙ СКАЧОК ИСТОРИОГРАФИЧЕСКОГО ПОТОКА &lt;IMG&gt;SLASH&lt;&gt;
                                -- &lt;IMG&gt;SLASH&lt;&gt; MAJOR HISTORIOGRAPHICAL FLUX SPIKE DETECTED &lt;IMG&gt;SLASH&lt;&gt;
                                { "Russian", "ОБНАРУЖЕН СИЛЬНЫЙ СКАЧОК ИСТОРИОГРАФИЧЕСКОГО ПОТОКА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_S2_MYSTERY_ALT_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;SLASH&lt;&gt; ОБНАРУЖЕН СЛАБЫЙ СКАЧОК ИСТОРИОГРАФИЧЕСКОГО ПОТОКА &lt;IMG&gt;SLASH&lt;&gt;
                                -- &lt;IMG&gt;SLASH&lt;&gt; MINOR HISTORIOGRAPHICAL FLUX SPIKE DETECTED &lt;IMG&gt;SLASH&lt;&gt;
                                { "Russian", "ОБНАРУЖЕН СЛАБЫЙ СКАЧОК ИСТОРИОГРАФИЧЕСКОГО ПОТОКА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_COMM_WRAP_OBJ2_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Нада удалось обнаружить новую закономерность, проявляющуюся в историях &lt;TRANS_TRA&gt;геков&lt;&gt;, &lt;TRANS_EXP&gt;корваксов&lt;&gt; и &lt;TRANS_WAR&gt;вай'кинов&lt;&gt;.&#xA;&#xA;Он считает, что это историческое эхо представляет собой коммуникационный артефакт, происходящий из аномального источника.&#xA;Передавайте Нада и Поло исторические данные, полученные в местах нахождения инопланетных артефактов, чтобы помочь их исследованию.&#xA;&#xA;Вы можете приобрести &lt;SPECIAL&gt;планетарные карты&lt;&gt; у &lt;TECHNOLOGY&gt;картографа&lt;&gt; на космической станции.
                                -- Nada has detected a new pattern emerging in the stories of the &lt;TRANS_TRA&gt;Gek&lt;&gt;, &lt;TRANS_EXP&gt;Korvax&lt;&gt;, and &lt;TRANS_WAR&gt;Vy'keen&lt;&gt;.&#xA;&#xA;They believe this historical echo is a communication artifact from an anomalous source.&#xA;Submit historial data from alien artifact sites to assist Nada and Polo in their research.&#xA;&#xA;Purchase &lt;SPECIAL&gt;planetary charts&lt;&gt; from a space station &lt;TECHNOLOGY&gt;Cartographer&lt;&gt;.
                                { "Russian", "Нада удалось обнаружить новую закономерность, проявляющуюся в историях &lt;TRANS_TRA&gt;геков﻿,&lt;&gt; &lt;TRANS_EXP&gt;корваксов&lt;&gt; и &lt;TRANS_WAR&gt;вай'кинов﻿.&lt;&gt;&#xA;&#xA;Он считает, что это историческое эхо представляет собой артефакт для связи аномального происхождения.&#xA;Из местоположений инопланетных артефактов передавайте Нада и Поло исторические данные, чтобы помочь их исследованию.&#xA;&#xA;Вы можете приобрести &lt;SPECIAL&gt;планетарные карты&lt;&gt; у &lt;TECHNOLOGY&gt;картографа&lt;&gt; на космической станции." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_DISC_SYSTEM_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружьте звездные системы: %CURRENT%/%AMOUNT%&#xA;Загрузите открытия, чтобы получить &lt;TECHNOLOGY&gt;наниты&lt;&gt;.
                                -- Discover star systems: %CURRENT%/%AMOUNT%&#xA;Upload discoveries to earn &lt;TECHNOLOGY&gt;nanites&lt;&gt;
                                { "Russian", "Обнаружьте звёздные системы: %CURRENT%/%AMOUNT%&#xA;Загрузите открытия, чтобы получить &lt;TECHNOLOGY&gt;наниты&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SEASONAL_PROGRESS_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Ход экспедиции: расстояние %DIST% св. л.
                                -- Expedition Progress: %DIST%ly travelled
                                { "Russian", "Ход экспедиции: %DIST% св. лет преодолено" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_ENCRYPTED_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;ЭТАП ЗАШИФРОВАН — НЕ УДАЛОСЬ РАСШИФРОВАТЬ ЗАДАНИЕ&lt;&gt;&#xA;По?ло фкуззаус к?тк?? подоз?рваттт? с?х Нзда
                                -- &lt;SPECIAL&gt;MILESTONE ENCRYPTED - UNABLE TO DECODE TASK&lt;&gt;&#xA;Po?lo fkuzzaus k?tk?? susp?thzss? s?h Nzda
                                { "Russian", "&lt;SPECIAL&gt;ЭТАП ЗАШИФРОВАН&lt;&gt;&#xA;По?ло фкуззаус к?тк?? подоз?рваттт? с?х Нзда" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_ENCRYPTED_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;ЭТАП ЗАШИФРОВАН — НЕ УДАЛОСЬ РАСШИФРОВАТЬ ЗАДАНИЕ&lt;&gt;
                                -- &lt;SPECIAL&gt;MILESTONE ENCRYPTED - UNABLE TO DECODE TASK&lt;&gt;
                                { "Russian", "&lt;SPECIAL&gt;ЭТАП ЗАШИФРОВАН&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_ENCRYPTED_DESC_FORMAT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;SLASH&lt;&gt; &lt;SPECIAL&gt;ЭТАП ЗАШИФРОВАН&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt;&#xA;&lt;IMG&gt;SLASH&lt;&gt; &lt;SPECIAL&gt;НЕ УДАЛОСЬ РАСШИФРОВАТЬ ЗАДАНИЕ&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt;&#xA;&#xA;%DESC%&#xA;&#xA;Этап &lt;STELLAR&gt;зашифрован&lt;&gt;. Чтобы его пройти, необходимо найти ключ к шифру.
                                -- &lt;IMG&gt;SLASH&lt;&gt; &lt;SPECIAL&gt;MILESTONE ENCRYPTED&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt;&#xA;&lt;IMG&gt;SLASH&lt;&gt; &lt;SPECIAL&gt;UNABLE TO DECODE TASK&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt;&#xA;&#xA;%DESC%&#xA;&#xA;The milestone is &lt;STELLAR&gt;encrypted&lt;&gt; and cannot be advanced without unlocking its key.
                                { "Russian", "&lt;IMG&gt;SLASH&lt;&gt; &lt;SPECIAL&gt;ЭТАП ЗАШИФРОВАН&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt;&#xA;&#xA;%DESC%&#xA;&#xA;Этап &lt;STELLAR&gt;зашифрован&lt;&gt; и не может быть пройден без ключа к шифру." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_WORDS_ALL_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Выучите инопланетные слова: %CURRENT%/%AMOUNT%&#xA;Практикуйтесь в языках, общаясь с &lt;STELLAR&gt;инопланетными формами жизни&lt;&gt;.&#xA;Узнавайте слова у &lt;SPECIAL&gt;камней знаний&lt;&gt;, которые можно найти во время странствий.
                                -- Learn alien words: %CURRENT%/%AMOUNT%&#xA;Practise language skills by talking to &lt;STELLAR&gt;alien lifeforms&lt;&gt;&#xA;Learn additional words from &lt;SPECIAL&gt;Knowledge Stones&lt;&gt; found while exploring
                                { "Russian", "Выучите инопланетные слова: %CURRENT%/%AMOUNT%&#xA;Повысьте знания языков путем общения&#xA;с &lt;STELLAR&gt;инопланетными формами жизни&lt;&gt;&#xA;Изучайте слова у &lt;SPECIAL&gt;камней знаний&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_FLEETMISS_OBJ" },
                            ["VALUE_CHANGE_TABLE"] = {
                                --Провести экспедиции флота: %CURRENT%/%AMOUNT%
                                --Complete fleet expeditions: %CURRENT%/%AMOUNT%
                                { "Russian", "Завершить экспедиции флота: %CURRENT%/%AMOUNT%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_FLEETMISS_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Управляйте флотом с мостика своего &lt;STELLAR&gt;крупного корабля&lt;&gt;.&#xA;Размещение дополнительных &lt;TECHNOLOGY&gt;постов управления флотом&lt;&gt; позволит отправлять в поход несколько крупных флотов одновременно.&#xA;Покупайте &lt;STELLAR&gt;фрегаты&lt;&gt;, приближаясь к другим группам грузовых судов на своем звездолете. Улучшайте флот, проводя экспедиции флота.&#xA;&#xA;Подробнее смотрите в статье &lt;STELLAR&gt;«Грузовые флоты»&lt;&gt; в разделе руководства «Заработок».
                                -- Manage your fleet from the bridge of your &lt;STELLAR&gt;capital ship&lt;&gt;.&#xA;Installing additional &lt;TECHNOLOGY&gt;Fleet Management Stations&lt;&gt; will allow large fleets to undertake several voyages simultaneously.&#xA;Purchase &lt;STELLAR&gt;frigates&lt;&gt; by approaching other freighter groups in your starship. Upgrade your fleet by successfully completing fleet expeditions.&#xA;&#xA;See &lt;STELLAR&gt;Freighter Fleets&lt;&gt; in the 'Making Money' section of the Guide for more information.
                                { "Russian", "Управляйте флотом с мостика своего &lt;STELLAR&gt;крупного корабля﻿.&lt;&gt;&#xA;Каждый дополнительный &lt;TECHNOLOGY&gt;зал управления флотом&lt;&gt; увеличивает количество одновременных экспедиций флота.&#xA;Покупайте &lt;STELLAR&gt;фрегаты&lt;&gt;, приближаясь к другим группам грузовых судов на своем звездолёте. Каждая успешная экспедиция улучшает ваш флот.&#xA;&#xA;Подробнее смотрите в статье &lt;STELLAR&gt;«Грузовые флоты»&lt;&gt; в разделе руководства «Заработок»." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_PARTY_PLANET_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- В каждой экспедиции есть отмеченные места встречи.&#xA;&#xA;Рекомендованный маршрут до места отмечен на &lt;TECHNOLOGY&gt;галактической карте&lt;&gt;. Чтобы добраться до места встречи, иногда надо проделать немалый путь.&#xA;&#xA;Находясь в космосе, вызовите &lt;TECHNOLOGY&gt;быстрое меню&lt;&gt;(&lt;IMG&gt;QUICK_MENU&lt;&gt;) и откройте галактическую карту. Используйте &lt;IMG&gt; GALAXY_NAV_R&lt;&gt; /&lt;IMG&gt; GALAXY_NAV_L&lt;&gt; для просмотра маршрутов. Двигайтесь по выбранному маршруту, чтобы выбрать следующую систему.
                                -- Each expedition has several marked rendezvous points.&#xA;&#xA;A suggested path to the rendezvous is marked on the &lt;TECHNOLOGY&gt;Galaxy Map&lt;&gt;. A significant journey may be required to reach the rendezvous.&#xA;&#xA;In space, access the Galaxy Map via the &lt;TECHNOLOGY&gt;Quick Menu&lt;&gt; (&lt;IMG&gt;QUICK_MENU&lt;&gt;). Use &lt;IMG&gt;GALAXY_NAV_R&lt;&gt; / &lt;IMG&gt;GALAXY_NAV_L&lt;&gt; to browse available routes. Push along your chosen route to select the next system.
                                { "Russian", "В каждой экспедиции есть отмеченные места встречи.&#xA;&#xA;Рекомендованный маршрут до места отмечен на &lt;TECHNOLOGY&gt;галактической карте&lt;&gt;. Чтобы добраться до места встречи, иногда надо проделать немалый путь.&#xA;&#xA;Находясь в космосе, откройте галактическую карту из &lt;TECHNOLOGY&gt;быстрого меню&lt;&gt; (&lt;IMG&gt;QUICK_MENU&lt;&gt;). Используйте &lt;IMG&gt;GALAXY_NAV_R&lt;&gt; / &lt;IMG&gt;GALAXY_NAV_L&lt;&gt; для просмотра маршрутов. Двигайтесь по выбранному маршруту, чтобы выбрать следующую систему." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_REWARD_INVENTORY_SLOTS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;COMMODITY&gt;Ячейка инвентаря&lt;&gt; х %NUM%
                                -- &lt;COMMODITY&gt;Inventory Slot&lt;&gt; x %NUM%
                                { "Russian", "&lt;COMMODITY&gt;Ячейка инвентаря&lt;&gt; × %NUM%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_RESCUE_NPC_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- На окрестных планетах тут и там встречаются места крушений. Многие звездолеты разбилась слишком давно, но в некоторых до сих пор находятся нуждающиеся пилоты.&#xA;Карты, показывающие путь к источнику &lt;FUEL&gt;сигнала бедствия&lt;&gt;, можно приобрести на космической станции у &lt;TECHNOLOGY&gt;картографа&lt;&gt; в обмен на &lt;STELLAR&gt;навигационные данные&lt;&gt;. Получить их можно, прокладывая точки маршрута к планетарным зданиям.
                                -- Various crash sites litter nearby planets. Many are long abandoned, but some are still home to a stranded pilot.&#xA;Charts leading directly to &lt;FUEL&gt;distress signals&lt;&gt; can be purchased from a space station &lt;TECHNOLOGY&gt;Cartographer&lt;&gt; in exchange for &lt;STELLAR&gt;Navigation Data&lt;&gt;. Acquire navigation data by charting waypoints at planetary buildings.
                                { "Russian", "На окрестных планетах тут и там встречаются места крушений. Многие из них произошли давно, но некоторые пилоты до сих пор ждут помощи.&#xA;У &lt;TECHNOLOGY&gt;картографа&lt;&gt; на космической станции можно приобрести карты с указанием источника &lt;FUEL&gt;сигнала бедствия&lt;&gt; в обмен на &lt;STELLAR&gt;навигационные данные﻿.&lt;&gt; Исследуйте точки маршрута возле планетарных зданий, чтобы получить эти данные." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_DISC_WAYPOINT_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Находите &lt;STELLAR&gt;точки маршрута&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Маяки точек маршрута можно найти возле большинства планетарных строений.
                                -- Chart &lt;STELLAR&gt;waypoints&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Find waypoint beacons outside most planetary structures
                                { "Russian", "Отметьте &lt;STELLAR&gt;точки маршрута&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Возле большинства строений на планете&#xA;можно найти маяки точек маршрута" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_LEAVE_SYSTEM_FR_DESC_D" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вы отправились в другую систему на своем крупном корабле
                                -- Warped in your capital ship
                                { "Russian", "Совершен прыжок на своем крупном корабле" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_LEAVE_SYSTEM_FR_OBJ" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Переместитесь в другую систему в вашем крупном корабле
                                -- Warp to a new system aboard your capital ship
                                { "Russian", "Переместитесь в другую систему на крупном корабле" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_BASIC_SCAN_CRE_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите планетарных животных: %CURRENT%/%AMOUNT%&#xA;Используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы сканировать формы жизни.&#xA;Переименовывайте и загружайте свои открытия, чтобы зарабатывать &lt;STELLAR&gt;наниты&lt;&gt;.&#xA;Прогресс можно отслеживать на странице &lt;COMMODITY&gt;«Открытия»&lt;&gt; (&lt;IMG&gt;OPTIONS&lt;&gt;).
                                -- Discover planetary creatures: %CURRENT%/%AMOUNT%&#xA;Use the &lt;TECHNOLOGY&gt;Analysis Visor&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;) to scan lifeforms&#xA;Rename and upload your discoveries to earn &lt;STELLAR&gt;nanites&lt;&gt;&#xA;Use the &lt;COMMODITY&gt;Discoveries&lt;&gt; page to view progress (&lt;IMG&gt;OPTIONS&lt;&gt;)
                                { "Russian", "Изучите животных: %CURRENT%/%AMOUNT%&#xA;Используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;) для сканирования&#xA;Переименовывайте и загружайте открытия, чтобы зарабатывать &lt;STELLAR&gt;наниты&lt;&gt;&#xA;Прогресс можно отслеживать на странице &lt;COMMODITY&gt;Открытий&lt;&gt; (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SEASONAL_START_LABEL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Подготовка экспедиции завершена
                                -- Expedition Initialisation Complete
                                { "Russian", "ПОДГОТОВКА ЭКСПЕДИЦИИ ЗАВЕРШЕНА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COLLECT_REWARD_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вознаграждение за экспедицию получено
                                -- Expedition Reward Received
                                { "Russian", "ПОЛУЧЕНО ВОЗНАГРАЖДЕНИЕ ЗА ЭКСПЕДИЦИЮ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "MILESTONE_COMPLETE_TITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Этап пройден
                                -- Milestone Complete
                                { "Russian", "ЭТАП ПРОЙДЕН" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "STAGE_COMPLETE_TITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Фаза экспедиции завершена
                                -- Expedition Phase Completed
                                { "Russian", "ФАЗА ЭКСПЕДИЦИИ ЗАВЕРШЕНА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_STORM_CRYSTALS_OBJ" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Собрать кристаллы бури: %CURRENT%/%AMOUNT%
                                -- Collect Storm Crystals: %CURRENT%/%AMOUNT%
                                { "Russian", "Собрать %AMOUNT% шт. кристаллов бури" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SEASONAL_PROC_DESC_HERE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Задание: &lt;EXPED&gt;%MISSION%&lt;&gt;.&#xA;Часть экспедиции %EXPED%, фаза %STAGE%.&#xA;&#xA;Награда: %REWARD%&#xA;&#xA;Выберите другие этапы на вкладке экспедиции.
                                -- Objective: &lt;EXPED&gt;%MISSION%&lt;&gt;.&#xA;Part of Expedition %EXPED%, Phase %STAGE%.&#xA;&#xA;Reward: %REWARD%&#xA;&#xA;Select other milestones from the Expedition Tab.
                                { "Russian", "Задание: &lt;EXPED&gt;%MISSION%&lt;&gt;.&#xA;Часть экспедиции %EXPED%, фаза %STAGE%.&#xA;&#xA;Награда: %REWARD%&#xA;&#xA;Выбирайте другие этапы на вкладке экспедиции." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SHIP_REWARD_FORMAT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Звездолет (&lt;STELLAR&gt;%ITEM%&lt;&gt;).
                                -- &lt;STELLAR&gt;%ITEM%&lt;&gt; starship
                                { "Russian", "Звездолёт: &lt;STELLAR&gt;%ITEM%&lt;&gt;" },
                            }
                        },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_OVER_TITLE" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Экспедиция завершена
                        --         -- Expedition Complete
                        --         { "Russian", "ЭКСПЕДИЦИЯ ЗАВЕРШЕНА" },
                        --     }
                        -- },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_PARTY_PLANET2_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружена система с местом встречи экспедиции.&#xA;Доберитесь до второго &lt;STELLAR&gt;места встречи&lt;&gt;.
                                -- Expedition rendezvous system located&#xA;Reach the second &lt;STELLAR&gt;rendezvous point&lt;&gt;
                                { "Russian", "Обнаружена система с местом встречи экспедиции&#xA;Доберитесь до второго &lt;STELLAR&gt;места встречи&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_PARTY_PLANET2_MSG_MAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Доберитесь до второго &lt;STELLAR&gt;места встречи&lt;&gt;.&#xA;Выберите &lt;TRADEABLE&gt;«Маршрут экспедиции»&lt;&gt; на галактической карте.(&lt;IMG&gt;QUICK_MENU&lt;&gt;).&#xA;Чтобы добраться до места встречи, иногда надо проделать немалый путь.
                                -- Reach the second &lt;STELLAR&gt;rendezvous point&lt;&gt;&#xA;Select the &lt;TRADEABLE&gt;Expedition Route&lt;&gt; in the Galaxy Map (&lt;IMG&gt;QUICK_MENU&lt;&gt;)&#xA;A significant journey may be required to reach the rendezvous
                                { "Russian", "Доберитесь до второго &lt;STELLAR&gt;места встречи&lt;&gt;&#xA;Выберите &lt;TRADEABLE&gt;Маршрут экспедиции&lt;&gt; на галактической карте (&lt;IMG&gt;QUICK_MENU&lt;&gt;)&#xA;Чтобы добраться до места встречи, иногда надо проделать немалый путь" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_PARTY_PLANET2_MSG_MAPA" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Доберитесь до второго &lt;STELLAR&gt;места встречи&lt;&gt;.&#xA;Вернитесь в космос, чтобы открыть &lt;TECHNOLOGY&gt;галактическую карту&lt;&gt;.
                                -- Reach the second &lt;STELLAR&gt;rendezvous point&lt;&gt;&#xA;Return to space to access the &lt;TECHNOLOGY&gt;Galaxy Map&lt;&gt;
                                { "Russian", "Доберитесь до второго &lt;STELLAR&gt;места встречи&lt;&gt;&#xA;Вернитесь в космос, чтобы открыть &lt;TECHNOLOGY&gt;галактическую карту&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_PARTY_PLANET3_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружена система с местом встречи экспедиции.&#xA;Доберитесь до третьего &lt;STELLAR&gt;места встречи&lt;&gt;.
                                -- Expedition rendezvous system located&#xA;Reach the third &lt;STELLAR&gt;rendezvous point&lt;&gt;
                                { "Russian", "Обнаружена система с местом встречи экспедиции&#xA;Доберитесь до третьего &lt;STELLAR&gt;места встречи&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_PARTY_PLANET3_MSG_MAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Доберитесь до третьего &lt;STELLAR&gt;места встречи&lt;&gt;.&#xA;Выберите &lt;TRADEABLE&gt;«Маршрут экспедиции»&lt;&gt; на галактической карте.(&lt;IMG&gt;QUICK_MENU&lt;&gt;).&#xA;Чтобы добраться до места встречи, иногда надо проделать немалый путь.
                                -- Reach the third &lt;STELLAR&gt;rendezvous point&lt;&gt;&#xA;Select the &lt;TRADEABLE&gt;Expedition Route&lt;&gt; in the Galaxy Map (&lt;IMG&gt;QUICK_MENU&lt;&gt;)&#xA;A significant journey may be required to reach the rendezvous
                                { "Russian", "Доберитесь до третьего &lt;STELLAR&gt;места встречи&lt;&gt;&#xA;Выберите &lt;TRADEABLE&gt;Маршрут экспедиции&lt;&gt; на галактической карте (&lt;IMG&gt;QUICK_MENU&lt;&gt;)&#xA;Чтобы добраться до места встречи, иногда надо проделать немалый путь" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_PARTY_PLANET3_MSG_MAPA" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Доберитесь до третьего &lt;STELLAR&gt;места встречи&lt;&gt;.&#xA;Вернитесь в космос, чтобы открыть &lt;TECHNOLOGY&gt;галактическую карту&lt;&gt;.
                                -- Reach the third &lt;STELLAR&gt;rendezvous point&lt;&gt;&#xA;Return to space to access the &lt;TECHNOLOGY&gt;Galaxy Map&lt;&gt;
                                { "Russian", "Доберитесь до третьего &lt;STELLAR&gt;места встречи&lt;&gt;&#xA;Вернитесь в космос, чтобы открыть &lt;TECHNOLOGY&gt;галактическую карту&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_PARTY_PLANET4_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружена система с местом встречи экспедиции.&#xA;Доберитесь до четвертого &lt;STELLAR&gt;места встречи&lt;&gt;.
                                -- Expedition rendezvous system located&#xA;Reach the fourth &lt;STELLAR&gt;rendezvous point&lt;&gt;
                                { "Russian", "Обнаружена система с местом встречи экспедиции&#xA;Доберитесь до четвертого &lt;STELLAR&gt;места встречи&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_PARTY_PLANET4_MSG_MAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Доберитесь до четвертого &lt;STELLAR&gt;места встречи&lt;&gt;.&#xA;Выберите &lt;TRADEABLE&gt;«Маршрут экспедиции»&lt;&gt; на галактической карте.(&lt;IMG&gt;QUICK_MENU&lt;&gt;).&#xA;Чтобы добраться до места встречи, иногда надо проделать немалый путь.
                                -- Reach the fourth &lt;STELLAR&gt;rendezvous point&lt;&gt;&#xA;Select the &lt;TRADEABLE&gt;Expedition Route&lt;&gt; in the Galaxy Map (&lt;IMG&gt;QUICK_MENU&lt;&gt;)&#xA;A significant journey may be required to reach the rendezvous
                                { "Russian", "Доберитесь до четвертого &lt;STELLAR&gt;места встречи&lt;&gt;&#xA;Выберите &lt;TRADEABLE&gt;Маршрут экспедиции&lt;&gt; на галактической карте (&lt;IMG&gt;QUICK_MENU&lt;&gt;)&#xA;Чтобы добраться до места встречи, иногда надо проделать немалый путь" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_PARTY_PLANET4_MSG_MAPA" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Доберитесь до четвертого &lt;STELLAR&gt;места встречи&lt;&gt;.&#xA;Вернитесь в космос, чтобы открыть &lt;TECHNOLOGY&gt;галактическую карту&lt;&gt;.
                                -- Reach the fourth &lt;STELLAR&gt;rendezvous point&lt;&gt;&#xA;Return to space to access the &lt;TECHNOLOGY&gt;Galaxy Map&lt;&gt;
                                { "Russian", "Доберитесь до четвертого &lt;STELLAR&gt;места встречи&lt;&gt;&#xA;Вернитесь в космос, чтобы открыть &lt;TECHNOLOGY&gt;галактическую карту&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_PARTY_PLANET5_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружена система с местом встречи экспедиции.&#xA;Доберитесь до последнего &lt;STELLAR&gt;места встречи&lt;&gt;.
                                -- Expedition rendezvous system located&#xA;Reach the final &lt;STELLAR&gt;rendezvous point&lt;&gt;
                                { "Russian", "Обнаружена система с местом встречи экспедиции&#xA;Доберитесь до последнего &lt;STELLAR&gt;места встречи&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_PARTY_PLANET5_MSG_MAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Доберитесь до последнего &lt;STELLAR&gt;места встречи&lt;&gt;.&#xA;Выберите &lt;TRADEABLE&gt;«Маршрут экспедиции»&lt;&gt; на галактической карте.(&lt;IMG&gt;QUICK_MENU&lt;&gt;).&#xA;Чтобы добраться до места встречи, иногда надо проделать немалый путь.
                                -- Reach the final &lt;STELLAR&gt;rendezvous point&lt;&gt;&#xA;Select the &lt;TRADEABLE&gt;Expedition Route&lt;&gt; in the Galaxy Map (&lt;IMG&gt;QUICK_MENU&lt;&gt;)&#xA;A significant journey may be required to reach the rendezvous
                                { "Russian", "Доберитесь до последнего &lt;STELLAR&gt;места встречи&lt;&gt;&#xA;Выберите &lt;TRADEABLE&gt;Маршрут экспедиции&lt;&gt; на галактической карте (&lt;IMG&gt;QUICK_MENU&lt;&gt;)&#xA;Чтобы добраться до места встречи, иногда надо проделать немалый путь" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_PARTY_PLANET5_MSG_MAPA" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Доберитесь до последнего &lt;STELLAR&gt;места встречи&lt;&gt;.&#xA;Вернитесь в космос, чтобы открыть &lt;TECHNOLOGY&gt;галактическую карту&lt;&gt;.
                                -- Reach the final &lt;STELLAR&gt;rendezvous point&lt;&gt;&#xA;Return to space to access the &lt;TECHNOLOGY&gt;Galaxy Map&lt;&gt;
                                { "Russian", "Доберитесь до последнего &lt;STELLAR&gt;места встречи&lt;&gt;&#xA;Вернитесь в космос, чтобы открыть &lt;TECHNOLOGY&gt;галактическую карту&lt;&gt;" },
                            }
                        },
                        --
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_USE_PORTAL_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите и включите &lt;SPECIAL&gt;портал&lt;&gt;.&#xA;Принесите жертву у &lt;SPECIAL&gt;монолита&lt;&gt;, чтобы найти портал.&#xA;&lt;TRADEABLE&gt;Картографы&lt;&gt; на космических станциях продают карты монолитов.
                                -- Find and activate a &lt;SPECIAL&gt;Portal&lt;&gt;&#xA;Make a sacrifice at a &lt;SPECIAL&gt;Monolith&lt;&gt; to locate a portal&#xA;Space station &lt;TRADEABLE&gt;Cartographers&lt;&gt; sell Monolith charts
                                { "Russian", "Найдите и включите &lt;SPECIAL&gt;портал&lt;&gt;&#xA;Принесите жертву у &lt;SPECIAL&gt;монолита&lt;&gt;, чтобы найти портал&#xA;&lt;TRADEABLE&gt;Картографы&lt;&gt; на космических станциях продают карты монолитов" },
                            }
                        },
                        -- Подсказка, отображается справа внизу.
                        -- Товарищ по синтезу ртути -- всего ниже для него
                        -- первое предложение настолько длинное, что не влезает в пределы интерфейса
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_REWARD_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Эксклюзивные &lt;EXPED&gt;награды за прохождение фаз&lt;&gt;, заработанные в экспедициях, доступны для всех сохранений&#xA;Получить заслуженные награды можно у &lt;TECHNOLOGY&gt;Дополнительного элемента синтеза ртути&lt;&gt;&#xA;Награды для визуальной персонализации можно использовать у &lt;TECHNOLOGY&gt;модификатора внешности&lt;&gt;.
                                { "Russian", "&lt;EXPED&gt;Награды за прохождение фаз&lt;&gt; в экспедициях&#xA;доступны для всех сохранений&#xA;Получите их у &lt;TECHNOLOGY&gt;Товарища по синтезу ртути&lt;&gt;&#xA;Награды персонализации находятся в &lt;TECHNOLOGY&gt;модификаторе внешности&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_S2_MYSTERY2_OBJ_TIP_AL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Нада удалось обнаружить необычную закономерность, проявляющуюся в историях &lt;TRANS_TRA&gt;геков&lt;&gt;, &lt;TRANS_EXP&gt;корваксов&lt;&gt; и &lt;TRANS_WAR&gt;вай'кинов&lt;&gt;.&#xA;Общими усилиями Странники составили подробную карту этих исторических аномалий, которую Поло использовал для настройки &lt;SPECIAL&gt;маяка мифов&lt;&gt;.&#xA;&#xA;Получите маяк мифов с помощью &lt;STELLAR&gt;дополнительного элемента синтеза ртути&lt;&gt; на борту &lt;SPECIAL&gt;Космической Аномалии&lt;&gt;.
                                { "Russian", "Нада удалось обнаружить необычную закономерность, проявляющуюся в историях &lt;TRANS_TRA&gt;геков﻿,&lt;&gt; &lt;TRANS_EXP&gt;корваксов&lt;&gt; и &lt;TRANS_WAR&gt;вай'кинов﻿.&lt;&gt;&#xA;Общими усилиями Странники составили подробную карту этих исторических аномалий, которую Поло использовал для настройки &lt;SPECIAL&gt;маяка мифов﻿.&lt;&gt;&#xA;&#xA;Приобретите маяк мифов у &lt;STELLAR&gt;Товарища по синтезу ртути&lt;&gt; на борту &lt;SPECIAL&gt;Космической Аномалии﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_S2_MYSTERY3_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Нада удалось обнаружить необычную закономерность, проявляющуюся в историях &lt;TRANS_TRA&gt;геков&lt;&gt;, &lt;TRANS_EXP&gt;корваксов&lt;&gt; и &lt;TRANS_WAR&gt;вай'кинов&lt;&gt;.&#xA;Общими усилиями Странники составили подробную карту этих исторических аномалий, которую Поло использовал для настройки &lt;SPECIAL&gt;маяка мифов&lt;&gt;.&#xA;&#xA;Воспользуйтесь маяком и отследите эхо отступника.
                                -- Nada has detected a renegade pattern emerging in the stories of the &lt;TRANS_TRA&gt;Gek&lt;&gt;, &lt;TRANS_EXP&gt;Korvax&lt;&gt;, and &lt;TRANS_WAR&gt;Vy'keen&lt;&gt;.&#xA;The collective effort of the Travellers has produced a definitive map of these historical anomalies, which Polo has used to configure the &lt;SPECIAL&gt;Myth Beacon&lt;&gt;.&#xA;&#xA;Deploy the Myth Beacon and track this renegade echo.
                                { "Russian", "Нада удалось обнаружить необычную закономерность, проявляющуюся в историях &lt;TRANS_TRA&gt;геков﻿,&lt;&gt; &lt;TRANS_EXP&gt;корваксов&lt;&gt; и &lt;TRANS_WAR&gt;вай'кинов﻿.&lt;&gt;&#xA;Общими усилиями Странники составили подробную карту этих исторических аномалий, которую Поло использовал для настройки &lt;SPECIAL&gt;маяка мифов﻿.&lt;&gt;&#xA;&#xA;Воспользуйтесь маяком и отследите эхо отступника." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_S2_MYSTERY4_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Нада удалось обнаружить необычную закономерность, проявляющуюся в историях &lt;TRANS_TRA&gt;геков&lt;&gt;, &lt;TRANS_EXP&gt;корваксов&lt;&gt; и &lt;TRANS_WAR&gt;вай'кинов&lt;&gt;.&#xA;Общими усилиями Странники составили подробную карту этих исторических аномалий, которую Поло использовал для настройки &lt;SPECIAL&gt;маяка мифов&lt;&gt;.&#xA;&#xA;Воспользуйтесь маяком и отследите эхо отступника.
                                -- Nada has detected a renegade pattern emerging in the stories of the &lt;TRANS_TRA&gt;Gek&lt;&gt;, &lt;TRANS_EXP&gt;Korvax&lt;&gt;, and &lt;TRANS_WAR&gt;Vy'keen&lt;&gt;.&#xA;The collective effort of the Travellers has produced a definitive map of these historical anomalies, which Polo has used to configure the &lt;SPECIAL&gt;Myth Beacon&lt;&gt;.&#xA;&#xA;Deploy the Myth Beacon and track this renegade echo.
                                { "Russian", "Нада удалось обнаружить необычную закономерность, проявляющуюся в историях &lt;TRANS_TRA&gt;геков﻿,&lt;&gt; &lt;TRANS_EXP&gt;корваксов&lt;&gt; и &lt;TRANS_WAR&gt;вай'кинов﻿.&lt;&gt;&#xA;Общими усилиями Странники составили подробную карту этих исторических аномалий, которую Поло использовал для настройки &lt;SPECIAL&gt;маяка мифов﻿.&lt;&gt;&#xA;&#xA;Воспользуйтесь маяком и отследите эхо отступника." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_S2_MYSTERY2_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Нада удалось обнаружить необычную закономерность, проявляющуюся в историях &lt;TRANS_TRA&gt;геков&lt;&gt;, &lt;TRANS_EXP&gt;корваксов&lt;&gt; и &lt;TRANS_WAR&gt;вай'кинов&lt;&gt;.&#xA;Выберите в журнале задание &lt;SPECIAL&gt;«Аномальное исследование»&lt;&gt;, чтобы помочь составить подробную карту этих исторических аномалий, которую Поло будет использовать для настройки &lt;SPECIAL&gt;маяка мифов&lt;&gt;.&#xA;&#xA;После этого получите маяк мифов с помощью &lt;STELLAR&gt;дополнительного элемента синтеза ртути&lt;&gt; на борту &lt;SPECIAL&gt;Космической Аномалии&lt;&gt;.
                                { "Russian", "Нада удалось обнаружить необычную закономерность, проявляющуюся в историях &lt;TRANS_TRA&gt;геков&lt;&gt;, &lt;TRANS_EXP&gt;корваксов&lt;&gt; и &lt;TRANS_WAR&gt;вай'кинов&lt;&gt;.&#xA;Выберите в журнале задание &lt;SPECIAL&gt;«Аномальное исследование»&lt;&gt;, чтобы помочь составить подробную карту этих исторических аномалий, которую Поло будет использовать для настройки &lt;SPECIAL&gt;маяка мифов&lt;&gt;.&#xA;&#xA;После этого получите маяк мифов с помощью &lt;STELLAR&gt;Товарища по синтезу ртути&lt;&gt; на борту &lt;SPECIAL&gt;Космической Аномалии&lt;&gt;." },
                            }
                        },
                        -- когда там разраб определиться значок валюты спереди или сзади? епрст
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_GIFT_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сделайте подарок стоимостью %AMOUNT%&lt;IMG&gt;UNITS&lt;&gt;
                                -- Give a gift worth %AMOUNT%&lt;IMG&gt;UNITS&lt;&gt;
                                { "Russian", "Сделайте подарок стоимостью &lt;IMG&gt;UNITSMALL&lt;&gt;%AMOUNT%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_GIFT_DESC_D" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Подарено другому Страннику: %NUM%&lt;IMG&gt;UNITS&lt;&gt;
                                -- Donated %NUM%&lt;IMG&gt;UNITS&lt;&gt; to another Traveller
                                { "Russian", "Подарено &lt;IMG&gt;UNITSMALL&lt;&gt;%NUM% другому Страннику" },
                            }
                        },
                        -- отдельное окно после окончания экспедиции
                        -- весь текст, как обычно, не влазеет
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_OVER_MSG_DONE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поздравляем, Странник. Все основные задачи экспедиции выполнены.&#xA;&#xA;Если хотите продолжить, ваше сохранение будет преобразовано в стандартный формат. Полученные награды доступны в любом сохранении. Чтобы забрать их, воспользуйтесь &lt;TECHNOLOGY&gt;элементом синтеза ртути&lt;&gt; на Космической Аномалии.&#xA;&#xA;Не забудьте вернуться к началу следующей экспедиции.
                                -- Congratulations Traveller. All primary expedition goals complete.&#xA;&#xA;Your save will convert to a standard save, if you wish to continue. Earned rewards can be collected on any save, via the &lt;TECHNOLOGY&gt;Quicksilver Synthesis Companion&lt;&gt; on the Space Anomaly.&#xA;&#xA;Be sure to check back for the start of new expeditions soon.
                                { "Russian", "Поздравляем, Странник. Все основные задачи экспедиции выполнены.&#xA;&#xA;Ваше сохранение будет преобразовано в стандартный формат. Полученные награды доступны в любом сохранении. Заберите их у &lt;TECHNOLOGY&gt;Товарища по синтезу ртути&lt;&gt; на Космической Аномалии." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_OVER_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Странник! Спасибо, что продолжаете неустанно исследовать вселенную. Эта экспедиция уже завершена.&#xA;&#xA;Если хотите продолжить, ваше сохранение будет преобразовано в стандартный формат. Полученные награды доступны в любом сохранении. Чтобы забрать их, воспользуйтесь &lt;TECHNOLOGY&gt;элементом синтеза ртути&lt;&gt; на Космической Аномалии.&#xA;&#xA;Не забудьте вернуться к началу следующей экспедиции.
                                -- Thank you Traveller, for your efforts in exploring the universe. The time for this expedition is now over.&#xA;&#xA;Your save will convert to a standard save, if you wish to continue. Earned rewards can be collected on any save, via the &lt;TECHNOLOGY&gt;Quicksilver Synthesis Companion&lt;&gt; on the Space Anomaly.&#xA;&#xA;Be sure to check back for the start of new expeditions soon.
                                { "Russian", "Странник! Эта экспедиция уже завершена.&#xA;&#xA;Ваше сохранение будет преобразовано в стандартный формат. Полученные награды доступны в любом сохранении. Заберите их у &lt;TECHNOLOGY&gt;Товарища по синтезу ртути&lt;&gt; на Космической Аномалии." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_FIND_SHIP_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите свой звездолет.&#xA;Используйте &lt;TECHNOLOGY&gt;компас&lt;&gt; и &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; для навигации.
                                -- Locate your starship&#xA;Use the &lt;TECHNOLOGY&gt;Compass&lt;&gt; and &lt;TECHNOLOGY&gt;Analysis Visor&lt;&gt; to navigate
                                { "Russian", "Найдите свой звездолёт&#xA;Используйте &lt;TECHNOLOGY&gt;компас&lt;&gt; и &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; для навигации" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_BROKEN_SHIP1_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Звездолет &lt;FUEL&gt;критически поврежден&lt;&gt;!&#xA;Найдите свой корабль и попадите на борт, чтобы начать &lt;TECHNOLOGY&gt;автодиагностику&lt;&gt;.&#xA;Используйте &lt;TECHNOLOGY&gt;компас&lt;&gt; и &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; для навигации.
                                -- Starship is &lt;FUEL&gt;critically damaged&lt;&gt;!&#xA;Locate and board your ship and begin &lt;TECHNOLOGY&gt;autodiagnostics&lt;&gt;&#xA;Use the &lt;TECHNOLOGY&gt;Compass&lt;&gt; and &lt;TECHNOLOGY&gt;Analysis Visor&lt;&gt; to navigate
                                { "Russian", "Звездолёт &lt;FUEL&gt;критически поврежден&lt;&gt;&#xA;Найдите свой корабль и попадите на борт, чтобы начать &lt;TECHNOLOGY&gt;автодиагностику&lt;&gt;&#xA;Используйте &lt;TECHNOLOGY&gt;компас&lt;&gt; и &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; для навигации" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_LEAVE_SYSTEM_MSG0" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Установите &lt;TECHNOLOGY&gt;гипердвигатель&lt;&gt;.&#xA;Пройдите этап &lt;EXPED&gt;%MILESTONE%&lt;&gt;, чтобы получить его схемы.&#xA;Найдите новые этапы на вкладке &lt;STELLAR&gt;«Экспедиция»&lt;&gt; (&lt;IMG&gt;OPTIONS&lt;&gt;).
                                -- Install a &lt;TECHNOLOGY&gt;Hyperdrive&lt;&gt;&#xA;Complete the &lt;EXPED&gt;%MILESTONE%&lt;&gt; milestone to earn hyperdrive plans&#xA;Find new milestones in the &lt;STELLAR&gt;Expedition&lt;&gt; tab (&lt;IMG&gt;OPTIONS&lt;&gt;)
                                { "Russian", "Установите &lt;TECHNOLOGY&gt;гипердвигатель&lt;&gt;&#xA;Пройдите этап &lt;EXPED&gt;%MILESTONE%&lt;&gt;, чтобы изучить чертежи&#xA;Найдите новые этапы на вкладке &lt;STELLAR&gt;«Экспедиция»&lt;&gt; (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                            }
                        },
                        -- опечатка названия кнопки
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_LEAVE_SYSTEM_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Завершите установку &lt;TECHNOLOGY&gt;гипердвигателя&lt;&gt;.&#xA;Откройте инвентарь корабля (&lt;IMG&gt;INVENTORY&lt;&gt;) и добавьте компоненты с помощью &lt;IMG&gt;TECHMENU&lt;&gt;.&#xA;Выберите гипердвигатель и закрепите его (&lt;IMG&gt;PIN&lt;&gt;), чтобы получить подробные инструкции.
                                -- Complete &lt;TECHNOLOGY&gt;Hyperdrive&lt;&gt; installation&#xA;Access the ship inventory (&lt;IMG&gt;INVENTORY&lt;&gt;) and insert components with &lt;IMG&gt;TECHMENU&lt;&gt;&#xA;Select the hyperdrive and use &lt;IMG&gt;PIN&lt;&gt; for detailed install guidance
                                { "Russian", "Завершите установку &lt;TECHNOLOGY&gt;гипердвигателя&lt;&gt;&#xA;Откройте инвентарь корабля (&lt;IMG&gt;INVENTORY&lt;&gt;) и добавьте компоненты с помощью &lt;IMG&gt;TECHMENU&lt;&gt;&#xA;Выберите гипердвигатель и закрепите инструкцию по установке (&lt;IMG&gt;PIN&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_LEAVE_SYSTEM_MSG1A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Начните установку &lt;TECHNOLOGY&gt;гипердвигателя&lt;&gt;.&#xA; Откройте инвентарь корабля (&lt;IMG&gt; INVENTORY&lt;&gt;).&#xA;Просмотрите и выберите устанавливаемую технологию с помощью&lt;IMG&gt;TECHMENU&lt;&gt;.
                                -- Begin &lt;TECHNOLOGY&gt;Hyperdrive&lt;&gt; installation&#xA;Access the ship inventory (&lt;IMG&gt;INVENTORY&lt;&gt;)&#xA;Browse and select installable technology with &lt;IMG&gt;TECHMENU&lt;&gt;
                                { "Russian", "Начните установку &lt;TECHNOLOGY&gt;гипердвигателя&lt;&gt;&#xA;Откройте инвентарь корабля (&lt;IMG&gt;INVENTORY&lt;&gt;)&#xA;Просмотрите и выберите устанавливаемую технологию с помощью &lt;IMG&gt;TECHMENU&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_LEAVE_SYSTEM_MSG1B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Завершите установку гипердвигателя.&#xA;Нажмите &lt;IMG&gt;OPTIONS&lt;&gt;, чтобы открыть &lt;STELLAR&gt;журнал заданий&lt;&gt;.&#xA;Выберите задание &lt;TECHNOLOGY&gt;«Сборка гипердвигателя»&lt;&gt; для просмотра подробных подсказок.
                                -- Complete hyperdrive installation&#xA;Press &lt;IMG&gt;OPTIONS&lt;&gt; to access the &lt;STELLAR&gt;Mission Log&lt;&gt;&#xA;Select the &lt;TECHNOLOGY&gt;Hyperdrive Assembly&lt;&gt; mission for detailed tips
                                { "Russian", "Завершите установку гипердвигателя&#xA;Нажмите &lt;IMG&gt;OPTIONS&lt;&gt;, чтобы открыть &lt;STELLAR&gt;журнал заданий&lt;&gt;&#xA;Выберите задание &lt;TECHNOLOGY&gt;«Сборка гипердвигателя»&lt;&gt; для просмотра подробных подсказок" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_LEAVE_SYSTEM_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Зарядите &lt;TECHNOLOGY&gt;гипердвигатель&lt;&gt;, использовав %ITEM%.&#xA;Создайте %ITEM%: %CURRENT%/%AMOUNT%&#xA; Создавайте предметы в инвентаре с помощью &lt;IMG&gt;PRODMENU&lt;&gt;.&#xA;Чертежи в меню создания можно закреплять с помощью &lt;IMG&gt;PIN&lt;&gt;.
                                -- Charge the &lt;TECHNOLOGY&gt;Hyperdrive&lt;&gt; with a %ITEM%&#xA;Craft %ITEM%s: %CURRENT%/%AMOUNT%&#xA;Craft items in the Inventory with &lt;IMG&gt;PRODMENU&lt;&gt;&#xA;Pin blueprints with &lt;IMG&gt;PIN&lt;&gt; while browsing the crafting menu
                                { "Russian", "Зарядите &lt;TECHNOLOGY&gt;гипердвигатель&lt;&gt;, использовав %ITEM%&#xA;Создайте %ITEM%: %CURRENT%/%AMOUNT%&#xA; Создавайте предметы в инвентаре с помощью &lt;IMG&gt;PRODMENU&lt;&gt;&#xA;Закрепляйте чертежи в меню создания с помощью &lt;IMG&gt;PIN&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_LEAVE_SYSTEM_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Зарядите &lt;TECHNOLOGY&gt;гипердвигатель&lt;&gt;.&#xA;Для дозаправки используйте инвентарь (&lt;IMG&gt;INVENTORY&lt;&gt;).
                                -- Charge the &lt;TECHNOLOGY&gt;Hyperdrive&lt;&gt;&#xA;Refuel from the Inventory (&lt;IMG&gt;INVENTORY&lt;&gt;)
                                { "Russian", "Зарядите &lt;TECHNOLOGY&gt;гипердвигатель&lt;&gt;&#xA;Для дозаправки используйте инвентарь (&lt;IMG&gt;INVENTORY&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_LEAVE_SYSTEM_MSG3A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Зарядите &lt;TECHNOLOGY&gt;гипердвигатель&lt;&gt;.&#xA;Для дозаправки используйте инвентарь (&lt;IMG&gt;INVENTORY&lt;&gt;) или быстрое меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                -- Charge the &lt;TECHNOLOGY&gt;Hyperdrive&lt;&gt;&#xA;Refuel from the Inventory (&lt;IMG&gt;INVENTORY&lt;&gt;) or from the Quick Menu (&lt;IMG&gt;QUICK_MENU&lt;&gt;)
                                { "Russian", "Зарядите &lt;TECHNOLOGY&gt;гипердвигатель&lt;&gt;&#xA;Для дозаправки используйте инвентарь (&lt;IMG&gt;INVENTORY&lt;&gt;) или быстрое меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_LEAVE_SYSTEM_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Совершите варп-прыжок&lt;&gt; в другую систему&#xA;Следуйте по &lt;TRADEABLE&gt;маршруту экспедиции&lt;&gt; к &lt;SPECIAL&gt;месту встречи&lt;&gt;.&#xA;Находясь в космосе, перейдите в галактическую карту через &lt;IMG&gt;QUICK_MENU&lt;&gt;.
                                -- &lt;STELLAR&gt;Warp&lt;&gt; to another system&#xA;Follow the &lt;TRADEABLE&gt;Expedition Route&lt;&gt; to the &lt;SPECIAL&gt;Rendezvous Point&lt;&gt;&#xA;In space, access the Galaxy Map with &lt;IMG&gt;QUICK_MENU&lt;&gt;
                                { "Russian", "&lt;STELLAR&gt;Совершите варп-прыжок&lt;&gt; в другую систему&#xA;Следуйте по &lt;TRADEABLE&gt;маршруту экспедиции&lt;&gt; к &lt;SPECIAL&gt;месту встречи&lt;&gt;&#xA;Находясь в космосе, перейдите в галактическую карту через &lt;IMG&gt;QUICK_MENU&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_LEAVE_SYSTEM_MSG4A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Совершите &lt;STELLAR&gt;варп-прыжок&lt;&gt; в другую систему.&#xA;Вернитесь в свой звездолет.
                                -- &lt;STELLAR&gt;Warp&lt;&gt; to another system&#xA;Return to your starship
                                { "Russian", "Совершите &lt;STELLAR&gt;варп-прыжок&lt;&gt; в другую систему&#xA;Вернитесь в свой звездолёт" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_LEAVE_SYSTEM_MSG4B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Совершите варп-прыжок&lt;&gt; в другую систему.&#xA;Следуйте по &lt;TRADEABLE&gt;маршруту экспедиции&lt;&gt; к &lt;SPECIAL&gt;месту встречи&lt;&gt;.&#xA;Находясь в космосе, перейдите в галактическую карту через &lt;IMG&gt;QUICK_MENU&lt;&gt;.&#xA;&lt;TECHNOLOGY&gt;Телепорт космической станции&lt;&gt; позволяет мгновенно вернуться на базу.
                                -- &lt;STELLAR&gt;Warp&lt;&gt; to another system&#xA;Follow the &lt;TRADEABLE&gt;Expedition Route&lt;&gt; to the &lt;SPECIAL&gt;Rendezvous Point&lt;&gt;&#xA;In space, access the Galaxy Map with &lt;IMG&gt;QUICK_MENU&lt;&gt;&#xA;The &lt;TECHNOLOGY&gt;Space Station Teleporter&lt;&gt; will allow instant return to your base
                                { "Russian", "&lt;STELLAR&gt;Совершите варп-прыжок&lt;&gt; в другую систему&#xA;Следуйте по &lt;TRADEABLE&gt;маршруту экспедиции&lt;&gt; к &lt;SPECIAL&gt;месту встречи&lt;&gt;&#xA;Находясь в космосе, перейдите в галактическую карту через &lt;IMG&gt;QUICK_MENU&lt;&gt;&#xA;&lt;TECHNOLOGY&gt;Телепорт космической станции&lt;&gt; позволяет мгновенно вернуться на базу" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_MILESTONE_REWARD_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %PHASE%! Доступна новая награда!&#xA;Заберите вознаграждение на странице экспедиции (&lt;IMG&gt;OPTIONS&lt;&gt;).
                                -- %PHASE%! New reward available!&#xA;Collect your rewards from the Expedition page (&lt;IMG&gt;OPTIONS&lt;&gt;)
                                { "Russian", "%PHASE%! Доступна новая награда!&#xA;Заберите вознаграждение на странице экспедиции (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                            }
                        },
                        --
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_BUILD_BASE_MSG0" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Установите &lt;TECHNOLOGY&gt;компьютер базы&lt;&gt;, чтобы создать базу.&#xA;Пройдите этап &lt;EXPED&gt;%MILESTONE%&lt;&gt;, чтобы получить его схемы.&#xA;Новые этапы находятся на вкладке &lt;STELLAR&gt;«Экспедиция»&lt;&gt; (&lt;IMG&gt;OPTIONS&lt;&gt;).
                                { "Russian", "Установите &lt;TECHNOLOGY&gt;компьютер базы&lt;&gt;, чтобы создать базу&#xA;Пройдите этап &lt;EXPED&gt;%MILESTONE%&lt;&gt;, чтобы изучить чертежи&#xA;Новые этапы находятся на вкладке &lt;STELLAR&gt;«Экспедиция»&lt;&gt; (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_BUILD_BASE_MSG0B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Завершение этапа &lt;EXPED&gt;%MILESTONE%&lt;&gt; открыло новые чертежи.&#xA;Эти награды можно забрать на вкладке &lt;STELLAR&gt;«Экспедиция»&lt;&gt; (&lt;IMG&gt;OPTIONS&lt;&gt;).
                                { "Russian", "Завершение этапа &lt;EXPED&gt;%MILESTONE%&lt;&gt; открыло новые чертежи&#xA;Эти награды можно забрать на вкладке &lt;STELLAR&gt;«Экспедиция»&lt;&gt; (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_BUILD_BASE_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Установите &lt;TECHNOLOGY&gt;компьютер базы&lt;&gt;, чтобы создать базу.&#xA;Откройте &lt;TECHNOLOGY&gt;меню созидания&lt;&gt; с помощью &lt;IMG&gt;BUILD_MENU&lt;&gt;.&#xA;&lt;STELLAR&gt;Закрепите&lt;&gt; этапы строительства с помощью &lt;IMG&gt;PIN_BUILD&lt;&gt;.
                                { "Russian", "Установите &lt;TECHNOLOGY&gt;компьютер базы&lt;&gt;, чтобы создать базу&#xA;Откройте &lt;TECHNOLOGY&gt;меню созидания&lt;&gt; с помощью &lt;IMG&gt;BUILD_MENU&lt;&gt;&#xA;&lt;STELLAR&gt;Закрепите&lt;&gt; этапы строительства с помощью &lt;IMG&gt;PIN_BUILD&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_BUILD_BASE_MSG1A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Разместите &lt;TECHNOLOGY&gt;компьютер базы&lt;&gt;, чтобы создать базу&#xA;Для строительства компьютера базы требуется &lt;SPECIAL&gt;хроматический металл&lt;&gt;.&#xA;Постройте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt;, чтобы добыть особые металлы.
                                { "Russian", "Разместите &lt;TECHNOLOGY&gt;компьютер базы&lt;&gt;, чтобы создать базу&#xA;Для строительства компьютера базы требуется &lt;SPECIAL&gt;хроматический металл&lt;&gt;&#xA;Постройте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt;, чтобы добыть особые металлы" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_BUILD_BASE_MSG1B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добудьте &lt;SPECIAL&gt;хроматический металл&lt;&gt;, чтобы построить &lt;TECHNOLOGY&gt;компьютер базы&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Найдите залежи &lt;COMMODITY&gt;меди&lt;&gt; с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;).&#xA;Переработайте медь в хроматический металл с помощью &lt;TECHNOLOGY&gt;очистителя&lt;&gt;.
                                { "Russian", "Добудьте &lt;SPECIAL&gt;хроматический металл&lt;&gt;, чтобы построить &lt;TECHNOLOGY&gt;компьютер базы&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Найдите залежи &lt;COMMODITY&gt;меди&lt;&gt; с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)&#xA;Переработайте медь в хроматический металл с помощью &lt;TECHNOLOGY&gt;очистителя&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_BUILD_BASE_MSG1C" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Используйте &lt;TECHNOLOGY&gt;компьютер базы&lt;&gt; при помощи &lt;IMG&gt;INTERACT&lt;&gt;.&#xA;Передвиньте терминал с помощью &lt;IMG&gt;DECONSTRUCT&lt;&gt;, чтобы выбрать другую площадку.
                                { "Russian", "Используйте &lt;TECHNOLOGY&gt;компьютер базы&lt;&gt; при помощи &lt;IMG&gt;INTERACT&lt;&gt;&#xA;Передвиньте терминал с помощью &lt;IMG&gt;DECONSTRUCT&lt;&gt;, чтобы выбрать другую площадку" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_BUILD_BASE_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вернитесь на свою базу, чтобы продолжить строительство.&#xA;Базы могут служить дополнительным &lt;TECHNOLOGY&gt;хранилищем&lt;&gt;, а также &lt;STELLAR&gt;укрытием&lt;&gt; от угроз.&#xA;В случае необходимости вы можете призвать свой звездолет из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                { "Russian", "Вернитесь на свою базу, чтобы продолжить строительство&#xA;Базы могут служить дополнительным &lt;TECHNOLOGY&gt;хранилищем&lt;&gt;, а также &lt;STELLAR&gt;укрытием&lt;&gt; от угроз&#xA;В случае необходимости вы можете призвать свой звездолёт из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_BUILD_BASE_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Расширьте&lt;&gt; свою базу.&#xA;Результаты проводимого расширения: размещено элементов %CURRENT% из %AMOUNT%&#xA;Чтобы открыть &lt;TECHNOLOGY&gt;меню созидания&lt;&gt;, нажмите &lt;IMG&gt;BUILD_MENU&lt;&gt;.
                                { "Russian", "&lt;STELLAR&gt;Расширьте&lt;&gt; свою базу&#xA;Результаты проводимого расширения: размещено элементов %CURRENT% из %AMOUNT%&#xA;Чтобы открыть &lt;TECHNOLOGY&gt;меню созидания&lt;&gt;, нажмите &lt;IMG&gt;BUILD_MENU&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_BUILD_BASE_MSG3A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- База может служить &lt;STELLAR&gt;убежищем&lt;&gt; от планетарных угроз.&#xA;%PARTLIST%&#xA;%BUILD_TIP%
                                { "Russian", "База может служить &lt;STELLAR&gt;убежищем&lt;&gt; от планетарных угроз&#xA;%PARTLIST%&#xA;%BUILD_TIP%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_BUILD_BASE_MSG4A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Разместите готовые модули &lt;TECHNOLOGY&gt;хранилища&lt;&gt;&#xA;%PARTLIST%&#xA;%BUILD_TIP%
                                { "Russian", "Разместите готовые модули &lt;TECHNOLOGY&gt;хранилища&lt;&gt;&#xA;%PARTLIST%&#xA;%BUILD_TIP%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_BUILD_BASE_MSG5A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Разместите готовую &lt;TECHNOLOGY&gt;геостанцию&lt;&gt;&#xA;%PARTLIST%&#xA;%BUILD_TIP%
                                { "Russian", "Разместите готовую &lt;TECHNOLOGY&gt;геостанцию&lt;&gt;&#xA;%PARTLIST%&#xA;%BUILD_TIP%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_BUILD_BASE_MSG6A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Разместите готовые &lt;TECHNOLOGY&gt;технологические&lt;&gt; модули&#xA;%PARTLIST%&#xA;%BUILD_TIP%
                                { "Russian", "Разместите готовые &lt;TECHNOLOGY&gt;технологические&lt;&gt; модули&#xA;%PARTLIST%&#xA;%BUILD_TIP%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_BUILD_BASE_MSG7A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Разместите готовую &lt;TECHNOLOGY&gt;посадочную площадку&lt;&gt;&#xA;%PARTLIST%&#xA;%BUILD_TIP%&#xA; С посадочных площадок ваш звездолет может взлетать &lt;STELLAR&gt;бесплатно&lt;&gt;.
                                { "Russian", "Разместите готовую &lt;TECHNOLOGY&gt;посадочную площадку&lt;&gt;&#xA;%PARTLIST%&#xA;%BUILD_TIP%&#xA; С посадочных площадок ваш звездолёт может взлетать &lt;STELLAR&gt;бесплатно&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_BUILD_BASE_MSG8A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Проведите &lt;STELLAR&gt;энергию&lt;&gt; на вашу базу.&#xA;%PARTLIST%&#xA; %BUILD_TIP%&#xA; Подключайте панели прямо к инфраструктуре базы, чтобы автоматически распределить по ней энергию.
                                { "Russian", "Проведите &lt;STELLAR&gt;энергию&lt;&gt; на вашу базу&#xA;%PARTLIST%&#xA; %BUILD_TIP%&#xA; Подключайте панели прямо к инфраструктуре базы, чтобы автоматически распределить по ней энергию" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_BUILD_BASE_MSG9A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %PARTLIST%&#xA;%BUILD_TIP%&#xA;Разместите батареи в основании базы для &lt;STELLAR&gt;автоматического распределения энергии&lt;&gt;.
                                { "Russian", "%PARTLIST%&#xA;%BUILD_TIP%&#xA;Разместите батареи в основании базы для &lt;STELLAR&gt;автоматического распределения энергии&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_STORM_CRYSTALS_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите &lt;SPECIAL&gt;кристаллы бури&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Кристаллы бури можно собирать только во время &lt;FUEL&gt;бурь&lt;&gt;.&#xA;&lt;STELLAR&gt;«Минотавр»&lt;&gt; полностью защищает от опасной погоды.
                                -- Collect &lt;SPECIAL&gt;Storm Crystals&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Storm Crystals can only be collected during a &lt;FUEL&gt;storm&lt;&gt;&#xA;The &lt;STELLAR&gt;Minotaur&lt;&gt; offers total protection from hazardous weather
                                { "Russian", "Соберите &lt;SPECIAL&gt;кристаллы бури&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Кристаллы бури можно собирать только во время &lt;FUEL&gt;бурь&lt;&gt;&#xA;&lt;STELLAR&gt;Минотавр&lt;&gt; полностью защищает от опасной погоды" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_EXO_DISTANCE_MSG0" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Нет вездехода&#xA;Разместите &lt;STELLAR&gt;геостанцию&lt;&gt; с помощью &lt;TECHNOLOGY&gt;меню созидания&lt;&gt; (&lt;IMG&gt;BUILD_MENU&lt;&gt;).
                                -- No Exocraft owned&#xA;Deploy a &lt;STELLAR&gt;Geobay&lt;&gt; from the &lt;TECHNOLOGY&gt;Build Menu&lt;&gt; (&lt;IMG&gt;BUILD_MENU&lt;&gt;)
                                { "Russian", "Нет вездехода&#xA;Разместите &lt;STELLAR&gt;геостанцию&lt;&gt; из &lt;TECHNOLOGY&gt;меню строительства&lt;&gt; (&lt;IMG&gt;BUILD_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_WALKER_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), &lt;TECHNOLOGY&gt;сканер&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;) и &lt;TECHNOLOGY&gt;компас&lt;&gt;, чтобы находить важные объекты во время странствий.&#xA;Вы можете двигаться быстрее с помощью ускорения (&lt;IMG&gt;RUN&lt;&gt;) и реактивного ранца (&lt;IMG&gt;JUMP&lt;&gt;) экзокостюма.&#xA;Покупайте улучшения двигательных систем экзокостюма у &lt;TECHNOLOGY&gt;торговца технологиями&lt;&gt; на космической станции.
                                -- Use the &lt;TECHNOLOGY&gt;Analysis Visor&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), &lt;TECHNOLOGY&gt;Scanner&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;) and &lt;TECHNOLOGY&gt;Compass&lt;&gt; to find points of interest while exploring.&#xA;The Exosuit's jetpack (&lt;IMG&gt;JUMP&lt;&gt;) and sprint (&lt;IMG&gt;RUN&lt;&gt;) capabilities allow for faster movement.&#xA;Purchase Exosuit movement upgrades from a &lt;TECHNOLOGY&gt;technology merchant&lt;&gt; on the space station.
                                { "Russian", "Используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), &lt;TECHNOLOGY&gt;сканер&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;) и &lt;TECHNOLOGY&gt;компас&lt;&gt;, чтобы находить важные объекты во время странствий.&#xA;Нажмите &lt;IMG&gt;RUN&lt;&gt;, чтобы двигаться быстрее. Нажмите &lt;IMG&gt;JUMP&lt;&gt;, чтобы выполнять прыжки с помощью реактивного ранца.&#xA;Покупайте улучшения двигательных систем экзокостюма у &lt;TECHNOLOGY&gt;торговцев технологиями&lt;&gt; на космических станциях." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_WALKER_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Исследуйте пешком: %CURRENT%/%AMOUNT% ед.&#xA;Используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;) и &lt;TECHNOLOGY&gt;компас&lt;&gt;, чтобы находить важные объекты.&#xA;Вы можете двигаться быстрее с помощью ускорения (&lt;IMG&gt;RUN&lt;&gt;) и реактивного ранца (&lt;IMG&gt;JUMP&lt;&gt;).
                                -- Explore on foot: %CURRENT%u/%AMOUNT%u&#xA;Use the &lt;TECHNOLOGY&gt;Analysis Visor&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;) and &lt;TECHNOLOGY&gt;Compass&lt;&gt; to find points of interest&#xA;Use the jetpack (&lt;IMG&gt;JUMP&lt;&gt;) and sprint (&lt;IMG&gt;RUN&lt;&gt;) to move faster
                                { "Russian", "Исследуйте пешком: %CURRENT%/%AMOUNT% ед.&#xA;Находите важные объекты, используя &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;) и &lt;TECHNOLOGY&gt;компас&lt;&gt;&#xA;Ускорение (&lt;IMG&gt;RUN&lt;&gt;) и реактивный ранец (&lt;IMG&gt;JUMP&lt;&gt;) помогут двигаться быстрее" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_EXTREME_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Пройдите по &lt;STELLAR&gt;экстремальным планетам&lt;&gt;: %CURRENT% из %AMOUNT% ед.&#xA;В текущей системе экстремальные планеты не найдены.
                                -- Navigate &lt;STELLAR&gt;extreme worlds&lt;&gt; on foot: %CURRENT%u/%AMOUNT%u&#xA;No extreme planets detected in current system
                                { "Russian", "Пройдите по &lt;STELLAR&gt;экстремальным планетам&lt;&gt;: %CURRENT%u/%AMOUNT% ед.&#xA;В текущей системе экстремальные планеты не найдены" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_EXTREME_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Пройдите по &lt;STELLAR&gt;экстремальным планетам&lt;&gt;: %CURRENT% из %AMOUNT% ед.&#xA;В текущей системе &lt;TRADEABLE&gt;обнаружены&lt;&gt; экстремальные планеты&#xA;&lt;TECHNOLOGY&gt;Сканируйте&lt;&gt; (&lt;IMG&gt;SHIPSCAN&lt;&gt;) планеты из космоса, чтобы собрать о них сведения.
                                { "Russian", "Пройдите по &lt;STELLAR&gt;экстремальным планетам&lt;&gt;: %CURRENT%u/%AMOUNT% ед.&#xA;В текущей системе &lt;TRADEABLE&gt;обнаружены&lt;&gt; экстремальные планеты&#xA;&lt;TECHNOLOGY&gt;Сканируйте&lt;&gt; (&lt;IMG&gt;SHIPSCAN&lt;&gt;) планеты из космоса, чтобы собрать о них сведения" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_EXTREME_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Пройдите по &lt;STELLAR&gt;экстремальным планетам&lt;&gt;: %CURRENT% из %AMOUNT% ед.&#xA;Настоятельно рекомендуем улучшить систему защиты от вредных факторов.
                                { "Russian", "Пройдите по &lt;STELLAR&gt;экстремальным планетам&lt;&gt;: %CURRENT%u/%AMOUNT% ед.&#xA;Настоятельно рекомендуем улучшить систему защиты от вредных факторов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_FLYER_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Упр. кораблем: %CURRENT% ед./%AMOUNT% ед.
                                -- Pilot your ship: %CURRENT%u/%AMOUNT%u
                                { "Russian", "Пролетите: %CURRENT%/%AMOUNT% ед." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_FLYER_DESC_D" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Дальность полета %NUM% ед.
                                -- Flew %NUM%u
                                { "Russian", "Вы пролетели %NUM% ед." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_FLYER_OBJ" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Управляйте своим звездолетом: %CURRENT% ед./%AMOUNT% ед.
                                -- Pilot your starship: %CURRENT%u/%AMOUNT%u
                                { "Russian", "Налетать на звездолёте %AMOUNT% ед." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_FLYER_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Управляйте кораблем в воздухе: %CURRENT% / %AMOUNT% ед.&#xA;Используйте &lt;TECHNOLOGY&gt;сканер&lt;&gt; (&lt;IMG&gt;SHIPSCAN&lt;&gt;) для поиска важных объектов.&#xA;Воспользуйтесь ускорением (&lt;IMG&gt;BOOST&lt;&gt;), чтобы лететь быстрее.
                                -- Fly your ship: %CURRENT%u/%AMOUNT%u&#xA;Use the &lt;TECHNOLOGY&gt;Scanner&lt;&gt; (&lt;IMG&gt;SHIPSCAN&lt;&gt;) to find points of interest&#xA;Use the boost (&lt;IMG&gt;BOOST&lt;&gt;) to fly faster
                                { "Russian", "Управляйте кораблем в воздухе: %CURRENT%u/%AMOUNT% ед.&#xA;Используйте &lt;TECHNOLOGY&gt;сканер&lt;&gt; (&lt;IMG&gt;SHIPSCAN&lt;&gt;) для поиска важных объектов&#xA;Используйте ускорение (&lt;IMG&gt;BOOST&lt;&gt;), чтобы лететь быстрее" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_EXO_DISTANCE_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Проедьтесь на вездеходе: %CURRENT%/%AMOUNT% ед.
                                -- Travel by Exocraft: %CURRENT%/%AMOUNT%u
                                { "Russian", "Проехать на вездеходе: %CURRENT%/%AMOUNT% ед." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_EXO_DISTANCE_DESC_D" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Пройдено на вездеходе: %NUM% ед.
                                -- Travelled %NUM%u by Exocraft
                                { "Russian", "Проехано на вездеходе: %NUM% ед." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_EXO_DISTANCE_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вернитесь в &lt;STELLAR&gt;вездеход&lt;&gt;, чтобы продолжить разведку.&#xA;Вызовите вездеход из &lt;TECHNOLOGY&gt;быстрого меню&lt;&gt; (&lt;IMG&gt;QUICK_MENU&lt;&gt;)&#xA;Пройденное расстояние: %CURRENT%/%AMOUNT% ед.
                                -- Return to your &lt;STELLAR&gt;Exocraft&lt;&gt; to continue exploring&#xA;Summon your Exocraft from the &lt;TECHNOLOGY&gt;Quick Menu&lt;&gt; (&lt;IMG&gt;QUICK_MENU&lt;&gt;)&#xA;Distance travelled: %CURRENT%/%AMOUNT%u
                                { "Russian", "Вернитесь в &lt;STELLAR&gt;вездеход&lt;&gt;&#xA;Вызовите вездеход из &lt;TECHNOLOGY&gt;быстрого меню&lt;&gt; (&lt;IMG&gt;QUICK_MENU&lt;&gt;)&#xA;Пройденное расстояние: %CURRENT%/%AMOUNT% ед." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_EXO_DISTANCE_MSG1A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вернитесь в &lt;STELLAR&gt;вездеход&lt;&gt;, чтобы продолжить разведку.&#xA;Постройте &lt;STELLAR&gt;станцию вызова вездехода&lt;&gt;, чтобы увеличить дальность вызова.&#xA;Вызовите вездеход из &lt;TECHNOLOGY&gt;быстрого меню&lt;&gt; (&lt;IMG&gt;QUICK_MENU&lt;&gt;).&#xA;Пройденное расстояние: %CURRENT%/%AMOUNT% ед.
                                -- Return to your &lt;STELLAR&gt;Exocraft&lt;&gt; to continue exploring&#xA;Construct a &lt;STELLAR&gt;Exocraft Summoning Station&lt;&gt; to improve summon range&#xA;Summon your Exocraft from the &lt;TECHNOLOGY&gt;Quick Menu&lt;&gt; (&lt;IMG&gt;QUICK_MENU&lt;&gt;)&#xA;Distance travelled: %CURRENT%/%AMOUNT%u
                                { "Russian", "Вернитесь в &lt;STELLAR&gt;вездеход&lt;&gt;&#xA;Постройте &lt;STELLAR&gt;станцию вызова вездехода&lt;&gt;, чтобы увеличить дальность вызова&#xA;Вызовите вездеход из &lt;TECHNOLOGY&gt;быстрого меню&lt;&gt; (&lt;IMG&gt;QUICK_MENU&lt;&gt;)&#xA;Пройденное расстояние: %CURRENT%/%AMOUNT% ед." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_EXO_DISTANCE_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Пройденное на вездеходе расстояние: %CURRENT%/%AMOUNT% ед.&#xA;Воспользуйтесь &lt;TECHNOLOGY&gt;сканером&lt;&gt; (&lt;IMG&gt;VEHICLESCAN&lt;&gt;), чтобы найти ближайшие важные объекты.
                                -- Distance travelled by Exocraft: %CURRENT%/%AMOUNT%u&#xA;Use the &lt;TECHNOLOGY&gt;Scanner&lt;&gt; (&lt;IMG&gt;VEHICLESCAN&lt;&gt;) to locate nearby points of interest
                                { "Russian", "Пройденное на вездеходе расстояние: %CURRENT%/%AMOUNT% ед.&#xA;Воспользуйтесь &lt;TECHNOLOGY&gt;сканером&lt;&gt; (&lt;IMG&gt;VEHICLESCAN&lt;&gt;), чтобы найти ближайшие важные объекты" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_STORM_WALKER_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сейчас все тихо, бурь нет.&#xA;Путешествуйте во время бурь: %CURRENT%/%AMOUNT% ед.&#xA;Перезарядите систему &lt;COMMODITY&gt;защиты от вредных факторов&lt;&gt; в инвентаре или через быстрое меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                { "Russian", "Сейчас все тихо, бурь нет.&#xA;Путешествуйте во время бурь: %CURRENT%/%AMOUNT% ед.&#xA;Перезарядите систему &lt;COMMODITY&gt;защиты от вредных факторов&lt;&gt;&#xA;в инвентаре или из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_STORM_WALKER_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Путешествуйте во время бурь: %CURRENT%/%AMOUNT% ед.&#xA;Перезарядите систему &lt;COMMODITY&gt;защиты от вредных факторов&lt;&gt; в инвентаре или через быстрое меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;).&#xA;Используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;) и &lt;TECHNOLOGY&gt;компас&lt;&gt;, чтобы находить важные объекты.
                                { "Russian", "Путешествуйте во время бурь: %CURRENT%/%AMOUNT% ед.&#xA;Перезарядите систему &lt;COMMODITY&gt;защиты от вредных факторов&lt;&gt;&#xA;в инвентаре или из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)&#xA;Находите важные объекты, используя &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;) и &lt;TECHNOLOGY&gt;компас&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_MOUNTAIN_TOP_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Текущая высота: %CURRENT%/%AMOUNT% ед.&#xA;Используйте реактивный ранец (&lt;IMG&gt;JUMP&lt;&gt;), чтобы взбираться по отвесным поверхностям.
                                { "Russian", "Текущая высота: %CURRENT%/%AMOUNT% ед.&#xA;Взбирайтесь по отвесным поверхностям,&#xA;используя реактивный ранец (&lt;IMG&gt;JUMP&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_MOUNTAIN_TOP_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Достигните &lt;STELLAR&gt;вершины&lt;&gt;.&#xA;Достигнута минимальная высота (%AMOUNT% ед.)
                                -- Reach the &lt;STELLAR&gt;summit&lt;&gt;&#xA;Minimum elevation (%AMOUNT%u) attained
                                { "Russian", "Достигните &lt;STELLAR&gt;вершины&lt;&gt;&#xA;Минимальная достигнутая высота: %AMOUNT% ед." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_GOT_FOSSILS_OBJ" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Извлечь окаменелости: %CURRENT%/%AMOUNT%
                                -- Excavate fossils: %CURRENT%/%AMOUNT%
                                { "Russian", "Извлечь %AMOUNT% шт. окаменелостей" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_GOT_NANITES_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Получите &lt;TECHNOLOGY&gt;наниты&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Более подробные указания приведены в журнале (&lt;IMG&gt;OPTIONS&lt;&gt;).
                                -- Earn &lt;TECHNOLOGY&gt;Nanites&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;See information in the Log (&lt;IMG&gt;OPTIONS&lt;&gt;) for specific guidance
                                { "Russian", "Получите &lt;TECHNOLOGY&gt;наниты&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Более подробные указания приведены в журнале (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_GOT_CASH_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Заработайте &lt;COMMODITY&gt;юниты&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Более подробные указания приведены в журнале (&lt;IMG&gt;OPTIONS&lt;&gt;).
                                -- Earn &lt;COMMODITY&gt;Units&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;See information in the Log (&lt;IMG&gt;OPTIONS&lt;&gt;) for specific guidance
                                { "Russian", "Заработайте &lt;COMMODITY&gt;юниты&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Более подробные указания приведены в журнале (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                            }
                        },
                        --#endregion

                        --#region выполнено этапов
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SEASONAL_MAIN_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Фаза %NUM%, выполнено этапов: %CURRENT%/%AMOUNT%&#xA;Найдите новые этапы на вкладке &lt;STELLAR&gt;«Экспедиция»&lt;&gt; (&lt;IMG&gt;OPTIONS&lt;&gt;).&#xA;Выберите этап, который хотите закрепить как текущее задание.
                                -- Phase %NUM%: %CURRENT%/%AMOUNT% milestones complete&#xA;Find new milestones in the &lt;STELLAR&gt;Expedition&lt;&gt; tab (&lt;IMG&gt;OPTIONS&lt;&gt;)&#xA;Select a milestone to pin it as your active mission
                                { "Russian", "Фаза %NUM%, выполнено этапов: %CURRENT%/%AMOUNT%&#xA;Найдите новые этапы на вкладке &lt;STELLAR&gt;«Экспедиция»&lt;&gt; (&lt;IMG&gt;OPTIONS&lt;&gt;)&#xA;Выберите этап, который хотите сделать текущим заданием" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SEASONAL_MAIN_MSG0" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Фаза %NUM%, выполнено этапов: %CURRENT%/%AMOUNT%&#xA;Найдите новые этапы на вкладке &lt;STELLAR&gt;«Экспедиция»&lt;&gt; (&lt;IMG&gt;OPTIONS&lt;&gt;).&#xA;Выберите &lt;EXPED&gt;«Первые шаги»&lt;&gt;, чтобы закрепить это задание.
                                { "Russian", "Фаза %NUM%, выполнено этапов: %CURRENT%/%AMOUNT%&#xA;Найдите новые этапы на вкладке &lt;STELLAR&gt;«Экспедиция»&lt;&gt; (&lt;IMG&gt;OPTIONS&lt;&gt;)&#xA;Выберите &lt;EXPED&gt;«Первые шаги»&lt;&gt;, чтобы отслеживать это задание" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SEASON_2_MAIN_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Фаза %NUM%, выполнено этапов: %CURRENT%/%AMOUNT%&#xA;Новые этапы можно найти на вкладке &lt;STELLAR&gt;«Экспедиция»&lt;&gt; (&lt;IMG&gt;OPTIONS&lt;&gt;).&#xA;Выберите &lt;EXPED&gt;луноход&lt;&gt;, чтобы закрепить его в качестве текущего задания.&#xA;Этот этап поможет вам добраться до &lt;STELLAR&gt;звездолета&lt;&gt;.
                                { "Russian", "Фаза %NUM%, выполнено этапов: %CURRENT%/%AMOUNT%&#xA;Новые этапы можно найти на вкладке &lt;STELLAR&gt;«Экспедиция»&lt;&gt; (&lt;IMG&gt;OPTIONS&lt;&gt;)&#xA;Выберите &lt;EXPED&gt;«Луноход»&lt;&gt;, чтобы сделать его текущим заданием&#xA;Этот этап поможет вам добраться до &lt;STELLAR&gt;звездолёта&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SEASON_2A_MAIN_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Фаза %NUM%, выполнено этапов: %CURRENT%/%AMOUNT%&#xA;Новые этапы можно найти на вкладке &lt;STELLAR&gt;«Экспедиция»&lt;&gt; (&lt;IMG&gt;OPTIONS&lt;&gt;).&#xA;Выберите &lt;EXPED&gt;«Планетоход»&lt;&gt;, чтобы закрепить его в качестве текущего задания.&#xA;Этот этап поможет вам добраться до &lt;STELLAR&gt;звездолета&lt;&gt;.
                                { "Russian", "Фаза %NUM%, выполнено этапов: %CURRENT%/%AMOUNT%&#xA;Новые этапы можно найти на вкладке &lt;STELLAR&gt;«Экспедиция»&lt;&gt; (&lt;IMG&gt;OPTIONS&lt;&gt;)&#xA;Выберите &lt;EXPED&gt;«Планетоход»&lt;&gt;, чтобы сделать его текущим заданием&#xA;Этот этап поможет вам добраться до &lt;STELLAR&gt;звездолёта&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region PARTY_PLANET1
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_PARTY_PLANET1_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружена система с местом встречи экспедиции.&#xA;Доберитесь до первого &lt;STELLAR&gt;места встречи&lt;&gt;.
                                -- Expedition rendezvous system located&#xA;Reach the first &lt;STELLAR&gt;rendezvous point&lt;&gt;
                                { "Russian", "Обнаружена система с местом встречи экспедиции&#xA;Доберитесь до первого &lt;STELLAR&gt;места встречи&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_PARTY_PLANET1_MSG_MAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Доберитесь до первого &lt;STELLAR&gt;места встречи&lt;&gt;.&#xA;Выберите &lt;TRADEABLE&gt;«Маршрут экспедиции»&lt;&gt; на галактической карте.(&lt;IMG&gt;QUICK_MENU&lt;&gt;).&#xA;Чтобы добраться до места встречи, иногда надо проделать немалый путь.
                                -- Reach the first &lt;STELLAR&gt;rendezvous point&lt;&gt;&#xA;Select the &lt;TRADEABLE&gt;Expedition Route&lt;&gt; in the Galaxy Map (&lt;IMG&gt;QUICK_MENU&lt;&gt;)&#xA;A significant journey may be required to reach the rendezvous
                                { "Russian", "Доберитесь до первого &lt;STELLAR&gt;места встречи&lt;&gt;&#xA;Выберите &lt;TRADEABLE&gt;Маршрут экспедиции&lt;&gt; на галактической карте (&lt;IMG&gt;QUICK_MENU&lt;&gt;)&#xA;Чтобы добраться до места встречи, иногда надо проделать немалый путь" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_PARTY_PLANET1_MSG_MAPA" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Доберитесь до первого &lt;STELLAR&gt;места встречи&lt;&gt;.&#xA;Зарядите &lt;TECHNOLOGY&gt;гипердвигатель&lt;&gt;, использовав . &lt;SPECIAL&gt;варп-ячейку&lt;&gt;.&#xA;Создавайте предметы в инвентаре с помощью &lt;IMG&gt;PRODMENU&lt;&gt;.&#xA;Чертежи в меню создания можно закреплять с помощью &lt;IMG&gt;PIN&lt;&gt;.
                                -- Reach the first &lt;STELLAR&gt;rendezvous point&lt;&gt;&#xA;Charge the &lt;TECHNOLOGY&gt;Hyperdrive&lt;&gt; with a &lt;SPECIAL&gt;Warp Cell&lt;&gt;&#xA;Craft items in the Inventory with &lt;IMG&gt;PRODMENU&lt;&gt;&#xA;Pin blueprints with &lt;IMG&gt;PIN&lt;&gt; while browsing the crafting menu
                                { "Russian", "Доберитесь до первого &lt;STELLAR&gt;места встречи&lt;&gt;&#xA;Зарядите &lt;TECHNOLOGY&gt;гипердвигатель&lt;&gt;, использовав &lt;SPECIAL&gt;варп-ячейку&lt;&gt;&#xA;Создавайте предметы в инвентаре с помощью &lt;IMG&gt;PRODMENU&lt;&gt;&#xA;Закрепляйте чертежи в меню создания с помощью &lt;IMG&gt;PIN&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_PARTY_PLANET1_MSG_MAPB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Доберитесь до первого&lt;STELLAR&gt;места встречи&lt;&gt;.&#xA;Вернитесь в космос, чтобы открыть &lt;TECHNOLOGY&gt;галактическую карту&lt;&gt;.
                                -- Reach the first &lt;STELLAR&gt;rendezvous point&lt;&gt;&#xA;Return to space to access the &lt;TECHNOLOGY&gt;Galaxy Map&lt;&gt;
                                { "Russian", "Доберитесь до первого &lt;STELLAR&gt;места встречи&lt;&gt;&#xA;Вернитесь в космос, чтобы открыть &lt;TECHNOLOGY&gt;галактическую карту&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region UI_EXPED_GOT_FOSSILS_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_GOT_FOSSILS_MSG0A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите древние кости: &lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;&#xA;В этой системе подходящие для раскопок места не найдены.&#xA;Находясь в космосе, выберите новую систему на галактической карте (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                { "Russian", "Соберите древние кости: &lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;&#xA;В этой системе подходящие для раскопок места не найдены&#xA;Находясь в космосе, выберите новую систему на галактической карте (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_GOT_FOSSILS_MSG0B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите древние кости: &lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;&#xA;Возможное место раскопок обнаружено &lt;STELLAR&gt;в другом месте&lt;&gt; этой системы.&#xA;&lt;STELLAR&gt;Вернитесь в космос&lt;&gt;, чтобы узнать характеристики планеты.
                                { "Russian", "Соберите древние кости: &lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;&#xA;Возможное место раскопок обнаружено &lt;STELLAR&gt;в другом месте&lt;&gt; этой системы&#xA;&lt;STELLAR&gt;Вернитесь в космос&lt;&gt;, чтобы узнать характеристики планеты" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_GOT_FOSSILS_MSG0C" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите древние кости: &lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;&#xA;Возможное место раскопок обнаружено &lt;STELLAR&gt;в другом месте&lt;&gt; этой системы.&#xA;Сканируйте планеты из космоса (&lt;IMG&gt;SCAN&lt;&gt;), чтобы узнавать их планетарные данные.
                                { "Russian", "Соберите древние кости: &lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;&#xA;Возможное место раскопок обнаружено &lt;STELLAR&gt;в другом месте&lt;&gt; этой системы&#xA;Сканируйте планеты из космоса (&lt;IMG&gt;SCAN&lt;&gt;), чтобы узнать их характеристики" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_GOT_FOSSILS_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите древние кости: &lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;&#xA;Найдите &lt;STELLAR&gt;ископаемые слои&lt;&gt; с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;.&#xA;Для выемки грунта в месте раскопок используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt;.
                                { "Russian", "Соберите древние кости: &lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;&#xA;Найдите &lt;STELLAR&gt;фоссилии&lt;&gt; с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;&#xA;Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt; для выемки грунта" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_GOT_FOSSILS_MSG_SURVEY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите древние кости: &lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;&#xA;Используйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt;, чтобы обнаружить места раскопок.&#xA;Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt; для выемки грунта в месте раскопок.
                                { "Russian", "Соберите древние кости: &lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;&#xA;Используйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt;, чтобы обнаружить места раскопок&#xA;Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt; для выемки грунта" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_GOT_FOSSILS_MSG_SWAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите древние кости: &lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;&#xA;Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt; для выемки грунта в месте раскопок.
                                { "Russian", "Соберите древние кости: &lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;&#xA;Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt; для выемки грунта" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_GOT_FOSSILS_MSG_OFF" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите древние кости: &lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы найти места раскопок.&#xA;Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt; для выемки грунта в месте раскопок.
                                { "Russian", "Соберите древние кости: &lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы найти места раскопок&#xA;Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt; для выемки грунта" },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_GOT_FOSSILS_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите &lt;STELLAR&gt;ископаемые слои&lt;&gt; с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;.&#xA;Для выемки грунта в месте раскопок используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt;.&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы найти удаленные кладбища.
                                -- Locate &lt;STELLAR&gt;Fossil Beds&lt;&gt; using the &lt;TECHNOLOGY&gt;Analysis Visor&lt;&gt;.&#xA;Use the &lt;TECHNOLOGY&gt;Terrain Manipulator&lt;&gt; to excavate dig sites.&#xA;Activate a &lt;STELLAR&gt;Target Sweep&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;) to locate more distant burial sites.
                                { "Russian", "Найдите &lt;STELLAR&gt;фоссилии&lt;&gt; с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;.&#xA;Для выемки грунта в месте раскопок используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt;.&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы найти захоронения поблизости." },
                            }
                        },

                        --#region UI_EXPED_MOLEMAN_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_MOLEMAN_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Создайте систему туннелей: выкопано %CURRENT%/%AMOUNT% куб. ед.&#xA;Туннели необходимо копать под землей.&#xA;Найдите пещеры или воспользуйтесь &lt;TECHNOLOGY&gt;ландшафтным манипулятором&lt;&gt;.
                                -- Create a tunnel network: %CURRENT%/%AMOUNT%u³ excavated&#xA;Tunnels must be dug while underground&#xA;Find natural caves or use the &lt;TECHNOLOGY&gt;Terrain Manipulator&lt;&gt;
                                { "Russian", "Создайте систему туннелей: %CURRENT%/%AMOUNT% куб. ед. выкопано&#xA;Туннели необходимо копать под землей&#xA;Найдите пещеры или используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_MOLEMAN_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Создайте систему туннелей: выкопано %CURRENT%/%AMOUNT% куб. ед.&#xA;Выберите &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt; с помощью кнопки &lt;IMG&gt;CYCLEWEAPON&lt;&gt;.
                                { "Russian", "Создайте систему туннелей: %CURRENT%/%AMOUNT% куб. ед. выкопано&#xA;Выберите &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt;, нажав &lt;IMG&gt;CYCLEWEAPON&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_MOLEMAN_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Создайте систему туннелей: выкопано %CURRENT%/%AMOUNT% куб. ед.&#xA;Создайте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt; для мультитула.
                                { "Russian", "Создайте систему туннелей: %CURRENT%/%AMOUNT% куб. ед. выкопано&#xA;Создайте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt; для мультитула" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_MOLEMAN_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Создайте систему туннелей: выкопано %CURRENT%/%AMOUNT% куб. ед.
                                { "Russian", "Создайте систему туннелей: %CURRENT%/%AMOUNT% куб. ед. выкопано" },
                            }
                        },
                        --#endregion

                        --#region Вызовите страницу
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_BASIC_SCAN_CRE_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы сканировать животных.&#xA;За сканирование существ вы получаете &lt;STELLAR&gt;юниты&lt;&gt;. Переименовывайте и загружайте свои открытия, чтобы зарабатывать &lt;STELLAR&gt;наниты&lt;&gt;.&#xA;Вызовите страницу &lt;TECHNOLOGY&gt;открытий&lt;&gt; планеты, чтобы узнать, где и когда искать определенных существ.
                                { "Russian", "Используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы сканировать животных.&#xA;За сканирование существ вы получаете &lt;STELLAR&gt;юниты&lt;&gt;. Переименовывайте и загружайте свои открытия, чтобы зарабатывать &lt;STELLAR&gt;наниты&lt;&gt;.&#xA;Откройте страницу &lt;TECHNOLOGY&gt;открытий&lt;&gt; планеты, чтобы узнать, где и когда искать определенных существ." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_CRE_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;Сканируйте&lt;&gt; (&lt;IMG&gt;SHIPSCAN&lt;&gt;) планеты из космоса, чтобы собирать данные об их климате.&#xA;Используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы сканировать животных.&#xA;За сканирование существ вы получаете &lt;STELLAR&gt;юниты&lt;&gt;. Переименовывайте и загружайте свои открытия, чтобы зарабатывать &lt;STELLAR&gt;наниты&lt;&gt;.&#xA;Вызовите страницу &lt;TECHNOLOGY&gt;открытий&lt;&gt; планеты, чтобы узнать, где и когда искать определенных существ.
                                { "Russian", "&lt;TECHNOLOGY&gt;Сканируйте&lt;&gt; (&lt;IMG&gt;SHIPSCAN&lt;&gt;) планеты из космоса, чтобы собирать данные об их климате.&#xA;Используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы сканировать животных.&#xA;За сканирование существ вы получаете &lt;STELLAR&gt;юниты&lt;&gt;. Переименовывайте и загружайте свои открытия, чтобы зарабатывать &lt;STELLAR&gt;наниты&lt;&gt;.&#xA;Откройте страницу &lt;TECHNOLOGY&gt;открытий&lt;&gt; планеты, чтобы узнать, где и когда искать определенных существ." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_ALL_CREATURES_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;) для сканирования животных.&#xA;За сканирование существ вы получаете &lt;STELLAR&gt;юниты&lt;&gt;. Переименовывайте и загружайте свои открытия, чтобы зарабатывать &lt;STELLAR&gt;наниты&lt;&gt;.&#xA;Вызовите страницу &lt;TECHNOLOGY&gt;открытий&lt;&gt; планеты, чтобы узнать, где и когда искать определенных существ.&#xA;&#xA;Когда вы обнаружите всех существ, откройте страницу открытий и выберите пункт &lt;STELLAR&gt;«Засчитать выполнение»&lt;&gt;, чтобы получить &lt;COMMODITY&gt;дополнительные награды&lt;&gt;.
                                { "Russian", "Используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;) для сканирования животных.&#xA;За сканирование существ вы получаете &lt;STELLAR&gt;юниты&lt;&gt;. Переименовывайте и загружайте свои открытия, чтобы зарабатывать &lt;STELLAR&gt;наниты&lt;&gt;.&#xA;Откройте страницу &lt;TECHNOLOGY&gt;открытий&lt;&gt; планеты, чтобы узнать, где и когда искать определенных существ.&#xA;&#xA;Когда вы обнаружите всех существ, откройте страницу открытий и выберите пункт &lt;STELLAR&gt;«Засчитать выполнение»&lt;&gt;, чтобы получить &lt;COMMODITY&gt;дополнительные награды&lt;&gt;." },
                            }
                        },
                        --#endregion

                        --#region UI_EXPED_TERRAIN_EDITOR_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_TERRAIN_EDITOR_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Установите &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt; в мультитул.&#xA;Откройте инвентарь с помощью &lt;IMG&gt;INVENTORY&lt;&gt;.&#xA;Выберите пустую ячейку и начните установку с помощью &lt;IMG&gt;TECHMENU&lt;&gt;.
                                { "Russian", "Установите &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt; в мультитул&#xA;Откройте инвентарь с помощью &lt;IMG&gt;INVENTORY&lt;&gt;&#xA;Выберите пустую ячейку и нажмите &lt;IMG&gt;TECHMENU&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_TERRAIN_EDITOR_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Установите &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt; в мультитул.&#xA;Найдите частично установленный ландшафтный манипулятор в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;).&#xA;Чтобы получить более подробные указания, выберите пункт &lt;STELLAR&gt;Посмотреть данные установки&lt;&gt;.
                                { "Russian", "Установите &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt; в мультитул&#xA;Найдите частично установленный ландшафтный манипулятор в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;)&#xA;Чтобы получить более подробные указания,&#xA;выберите &lt;STELLAR&gt;Посмотреть данные установки&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region UI_EXPED_LEAVE_PLANET_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_LEAVE_PLANET_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Найдите&lt;&gt; и &lt;TECHNOLOGY&gt;отремонтируйте&lt;&gt; свой звездолет.
                                { "Russian", "&lt;STELLAR&gt;Найдите&lt;&gt; и &lt;TECHNOLOGY&gt;отремонтируйте&lt;&gt; свой звездолёт" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_LEAVE_PLANET_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Отремонтируйте&lt;&gt; важнейшие системы звездолета.&#xA;%REPAIR%&#xA;Чтобы получить указания, &lt;COMMODITY&gt;закрепите&lt;&gt; (&lt;IMG&gt;PIN&lt;&gt;) компоненты.
                                { "Russian", "&lt;STELLAR&gt;Отремонтируйте&lt;&gt; важнейшие системы звездолёта&#xA;%REPAIR%&#xA;Получите указания, &lt;COMMODITY&gt;закрепив&lt;&gt; компоненты (&lt;IMG&gt;PIN&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_LEAVE_PLANET_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поднимите звездолет и отправьтесь к &lt;TECHNOLOGY&gt;звездам&lt;&gt;.
                                { "Russian", "Поднимите звездолёт и отправьтесь к &lt;TECHNOLOGY&gt;звёздам&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region UI_SEASONAL_MAIN_OBJ_TIP
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SEASONAL_MAIN_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Ищите новые этапы на вкладке &lt;STELLAR&gt;«Экспедиция»&lt;&gt;.&#xA;&#xA;Этапы можно проходить &lt;STELLAR&gt;в любом порядке&lt;&gt;. &lt;SPECIAL&gt;Место встречи&lt;&gt; является ключевым этапом. Всех Странников, добравшихся до места встречи, будет ждать &lt;STELLAR&gt;крупное вознаграждение&lt;&gt;.&#xA;&#xA;Нажмите на этап, чтобы сделать его текущим заданием и получить указания. Вы можете &lt;STELLAR&gt;выполнять несколько этапов одновременно&lt;&gt;. Прогресс будет отслеживаться, даже если этап не выбран.
                                { "Russian", "Ищите новые этапы на вкладке &lt;STELLAR&gt;«Экспедиция»﻿.&lt;&gt;&#xA;&#xA;Этапы можно проходить &lt;STELLAR&gt;в любом порядке﻿.&lt;&gt; &lt;SPECIAL&gt;Место встречи&lt;&gt; является ключевым этапом. Всех Странников, добравшихся до места встречи, будет ждать &lt;STELLAR&gt;крупное вознаграждение﻿.&lt;&gt;&#xA;&#xA;Нажмите на этап, чтобы сделать его текущим заданием и получить указания. Вы можете &lt;STELLAR&gt;выполнять несколько этапов одновременно﻿.&lt;&gt; Прогресс будет отслеживаться, даже если этап не выбран." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SEASONAL_MAIN_OBJ_TIP_FMT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Пройдено этапов: %CURRENT%/%AMOUNT% Ищите новые этапы на вкладке &lt;STELLAR&gt;«Экспедиция»&lt;&gt;.&#xA;&#xA;Этапы можно проходить &lt;STELLAR&gt;в любом порядке&lt;&gt;. &lt;SPECIAL&gt;Место встречи&lt;&gt; является ключевым этапом. Всех Странников, добравшихся до места встречи, будет ждать &lt;STELLAR&gt;крупное вознаграждение&lt;&gt;.&#xA;&#xA;Нажмите на этап, чтобы сделать его текущим заданием и получить указания. Вы можете &lt;STELLAR&gt;выполнять несколько этапов одновременно&lt;&gt;. Прогресс будет отслеживаться, даже если этап не выбран.
                                { "Russian", "Пройдено этапов: %CURRENT%/%AMOUNT%. Ищите новые этапы на вкладке &lt;STELLAR&gt;«Экспедиция»﻿.&lt;&gt;&#xA;&#xA;Этапы можно проходить &lt;STELLAR&gt;в любом порядке﻿.&lt;&gt; &lt;SPECIAL&gt;Место встречи&lt;&gt; является ключевым этапом. Всех Странников, добравшихся до места встречи, будет ждать &lt;STELLAR&gt;крупное вознаграждение﻿.&lt;&gt;&#xA;&#xA;Нажмите на этап, чтобы сделать его текущим заданием и получить указания. Вы можете &lt;STELLAR&gt;выполнять несколько этапов одновременно﻿.&lt;&gt; Прогресс будет отслеживаться, даже если этап не выбран." },
                            }
                        },
                        --#endregion

                        --#region UI_EXPEDITION_.*_FORMAT
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPEDITION_REWARD_FORMAT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;%ITEM%&lt;&gt;, %NUM% шт.
                                { "Russian", "&lt;STELLAR&gt;%ITEM%&lt;&gt; × %NUM%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPEDITION_PROCTECH_FORMAT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;DARK_TECH&gt;%ITEM%&lt;&gt;, %NUM% шт.
                                { "Russian", "&lt;DARK_TECH&gt;%ITEM%&lt;&gt; × %NUM%" },
                            }
                        },
                        --#endregion

                        --#region UI_EXPED_VISIT_FREICRASH_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_VISIT_FREICRASH_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите &lt;STELLAR&gt;грузовой корабль&lt;&gt;, потерпевший крушение на планете.&#xA;Купите &lt;SPECIAL&gt;планетарные карты&lt;&gt; у &lt;TECHNOLOGY&gt;картографа&lt;&gt; на космической станции.
                                { "Russian", "Найдите место крушения &lt;STELLAR&gt;грузового судна&lt;&gt;&#xA;Купите &lt;SPECIAL&gt;планетарные карты&lt;&gt; у &lt;TECHNOLOGY&gt;картографа&lt;&gt;&#xA;на космической станции" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_VISIT_FREICRASH_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Получен сигнал бедствия грузового корабля!&#xA;Доберитесь до &lt;STELLAR&gt;разбившегося грузового корабля&lt;&gt;.
                                { "Russian", "Получен сигнал бедствия грузового судна!&#xA;Доберитесь до &lt;STELLAR&gt;места кораблекрушения&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_VISIT_FREICRASH_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите &lt;STELLAR&gt;журнал&lt;&gt; грузового корабля.
                                { "Russian", "Найдите &lt;STELLAR&gt;журнал&lt;&gt; грузового судна" },
                            }
                        },
                        --#endregion

                        --#region UI_EXPED_RESCUE_NPC_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_RESCUE_NPC_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите место &lt;TRADEABLE&gt;недавнего крушения&lt;&gt;.&#xA;Купите &lt;SPECIAL&gt;планетарные карты&lt;&gt; у &lt;TECHNOLOGY&gt;картографа&lt;&gt; на космической станции.
                                -- Locate an &lt;TRADEABLE&gt;active crash site&lt;&gt;&#xA;Purchase &lt;SPECIAL&gt;planetary charts&lt;&gt; from a space station &lt;TECHNOLOGY&gt;Cartographer&lt;&gt;
                                { "Russian", "Найдите место &lt;TRADEABLE&gt;недавнего крушения&lt;&gt;&#xA;Купите &lt;SPECIAL&gt;планетарные карты&lt;&gt; у &lt;TECHNOLOGY&gt;картографа&lt;&gt;&#xA;на космической станции" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_RESCUE_NPC_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Пойман сигнал бедствия!&#xA;Доберитесь до &lt;STELLAR&gt;нуждающегося пилота&lt;&gt;.
                                -- Active emergency signal detected!&#xA;Reach the &lt;STELLAR&gt;stranded pilot&lt;&gt;
                                { "Russian", "Пойман сигнал бедствия!&#xA;Доберитесь до &lt;STELLAR&gt;пилота в беде&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_RESCUE_NPC_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Помогите &lt;STELLAR&gt;нуждающейся форме жизни&lt;&gt;.&#xA;Поговорите с формой жизни, чтобы узнать, что ей нужно для починки корабля.
                                -- Assist the &lt;STELLAR&gt;stranded lifeform&lt;&gt;&#xA;Speak to the lifeform to learn what they need to repair their ship
                                { "Russian", "Помогите &lt;STELLAR&gt;существу в беде&lt;&gt;&#xA;Спросите его о том, что требуется&#xA;для ремонта его корабля" },
                            }
                        },
                        --#endregion

                        --#region UI_EXPED_SENTINEL_KILL_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_SENTINEL_KILL_MSG1A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Уничтожьте &lt;SPECIAL&gt;стражей&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Чтобы выстрелить из мультитула, нажмите &lt;IMG&gt;ATTACK&lt;&gt;.&#xA;Чтобы выстрелить из дополнительного вооружения, нажмите &lt;IMG&gt;ALTATTACK&lt;&gt;.&#xA;Стреляйте по контейнерам с &lt;SPECIAL&gt;боевыми ресурсами&lt;&gt;, чтобы пополнять щиты и боеприпасы.
                                { "Russian", "Уничтожьте &lt;SPECIAL&gt;стражей&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Чтобы выстрелить из мультитула, нажмите &lt;IMG&gt;ATTACK&lt;&gt;&#xA;Чтобы выстрелить из дополнительного вооружения, нажмите &lt;IMG&gt;ALTATTACK&lt;&gt;&#xA;Стреляйте по контейнерам с &lt;SPECIAL&gt;боевыми ресурсами&lt;&gt;, чтобы пополнять щиты и боеприпасы" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_SENTINEL_KILL_MSG1B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Уничтожьте &lt;SPECIAL&gt;стражей&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Чтобы выстрелить из мультитула, нажмите &lt;IMG&gt;ATTACK&lt;&gt;.&#xA;Чтобы выбрать дополнительное вооружение, используйте &lt;IMG&gt;CYCLEALTWEAPON&lt;&gt;.&#xA;Стреляйте по контейнерам с &lt;SPECIAL&gt;боевыми ресурсами&lt;&gt;, чтобы пополнять щиты и боеприпасы.
                                { "Russian", "Уничтожьте &lt;SPECIAL&gt;стражей&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Чтобы выстрелить из мультитула, нажмите &lt;IMG&gt;ATTACK&lt;&gt;&#xA;Чтобы выбрать дополнительное вооружение, используйте &lt;IMG&gt;CYCLEALTWEAPON&lt;&gt;&#xA;Стреляйте по контейнерам с &lt;SPECIAL&gt;боевыми ресурсами&lt;&gt;, чтобы пополнять щиты и боеприпасы" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_SENTINEL_KILL_MSG1C" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Уничтожьте &lt;SPECIAL&gt;стражей&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Чтобы выстрелить из мультитула, нажмите &lt;IMG&gt;ATTACK&lt;&gt;.&#xA;Стреляйте по контейнерам с &lt;SPECIAL&gt;боевыми ресурсами&lt;&gt;, чтобы пополнять щиты и боеприпасы.
                                { "Russian", "Уничтожьте &lt;SPECIAL&gt;стражей&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Чтобы выстрелить из мультитула, нажмите &lt;IMG&gt;ATTACK&lt;&gt;&#xA;Стреляйте по контейнерам с &lt;SPECIAL&gt;боевыми ресурсами&lt;&gt;, чтобы пополнять щиты и боеприпасы" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_SENTINEL_KILL_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Уничтожьте &lt;SPECIAL&gt;стражей&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;На данной планете стражи не обнаружены.&#xA;Вернитесь в космос, чтобы найти другую планету.
                                { "Russian", "Уничтожьте &lt;SPECIAL&gt;стражей&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;На данной планете стражи не обнаружены&#xA;Вернитесь в космос, чтобы найти другую планету" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_SENTINEL_KILL_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Уничтожьте &lt;SPECIAL&gt;стражей&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;&lt;FUEL&gt;Крайне рекомендуем&lt;&gt; использовать &lt;STELLAR&gt;оружие&lt;&gt;.&#xA;Откройте инвентарь мультитула (&lt;IMG&gt;INVENTORY&lt;&gt;).&#xA;Начните установку оружия с помощью &lt;IMG&gt;TECHMENU&lt;&gt;.
                                { "Russian", "Уничтожьте &lt;SPECIAL&gt;стражей&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;&lt;FUEL&gt;Крайне рекомендуем&lt;&gt; использовать &lt;STELLAR&gt;оружие&lt;&gt;&#xA;Откройте инвентарь мультитула (&lt;IMG&gt;INVENTORY&lt;&gt;)&#xA;Начните установку оружия с помощью &lt;IMG&gt;TECHMENU&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_SENTINEL_KILL_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Уничтожьте &lt;SPECIAL&gt;стражей&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;&lt;FUEL&gt;Крайне рекомендуем&lt;&gt; использовать &lt;STELLAR&gt;оружие&lt;&gt;.&#xA;Переключайте режимы оружия, используя &lt;IMG&gt;CYCLEWEAPON&lt;&gt;.
                                { "Russian", "Уничтожьте &lt;SPECIAL&gt;стражей&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;&lt;FUEL&gt;Крайне рекомендуем&lt;&gt; использовать &lt;STELLAR&gt;оружие&lt;&gt;&#xA;Переключайте режимы оружия, используя &lt;IMG&gt;CYCLEWEAPON&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_SENTINEL_KILL_MSG5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Уничтожьте &lt;SPECIAL&gt;стражей&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Находите стражей с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;).&#xA;Приобрести &lt;STELLAR&gt;боевые улучшения&lt;&gt; можно на борту &lt;COMMODITY&gt;космической станции&lt;&gt;.
                                { "Russian", "Уничтожьте &lt;SPECIAL&gt;стражей&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Найдите стражей с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)&#xA;Купите &lt;STELLAR&gt;боевые улучшения&lt;&gt; на &lt;COMMODITY&gt;космической станции&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region UI_EXPED_PROC_PRODS_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_PROC_PRODS_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите древние артефакты: %CURRENT%/%AMOUNT%&#xA;Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt; для проведения раскопок в руинах.&#xA;Карты &lt;TECHNOLOGY&gt;мест раскопок&lt;&gt; можно приобрести у &lt;STELLAR&gt;картографа&lt;&gt; на космической станции.
                                -- Collect ancient artifacts: %CURRENT%/%AMOUNT%&#xA;Use the &lt;TECHNOLOGY&gt;Terrain Manipulator&lt;&gt; to excavate ruins&#xA;A space station &lt;TECHNOLOGY&gt;Cartographer&lt;&gt; will sell charts to &lt;STELLAR&gt;dig sites&lt;&gt;
                                { "Russian", "Соберите древние артефакты: %CURRENT%/%AMOUNT%&#xA;Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt; для проведения раскопок в руинах&#xA;Карты &lt;TECHNOLOGY&gt;мест раскопок&lt;&gt; можно приобрести у &lt;STELLAR&gt;картографа&lt;&gt; на космической станции" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_PROC_PRODS_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Приобретите &lt;SPECIAL&gt;карты артефактов&lt;&gt; у картографа на борту космической станции.&#xA;&lt;STELLAR&gt;Навигационные данные&lt;&gt; для покупки карты: %CURRENT%/%AMOUNT%&#xA;Собирайте нав. данные, используя &lt;STELLAR&gt;метки точек маршрута&lt;&gt;, расположенные вокруг планет. построек.
                                -- Purchase &lt;SPECIAL&gt;Artifact Charts&lt;&gt; from a space station cartographer&#xA;&lt;STELLAR&gt;Navigation Data&lt;&gt; required for chart exchange: %CURRENT%/%AMOUNT%&#xA;Acquire navigation data by using the &lt;STELLAR&gt;waypoint markers&lt;&gt; found near planetary buildings
                                { "Russian", "Купите &lt;SPECIAL&gt;карты артефактов&lt;&gt; у картографа на космической станции&#xA;Карты продаются в обмен на &lt;STELLAR&gt;навигационные данные&lt;&gt;&#xA;Получите данные, используя &lt;STELLAR&gt;точки маршрута&lt;&gt; рядом с постройками на планете&#xA;Собрано &lt;STELLAR&gt;навигационных данных&lt;&gt;: %CURRENT%/%AMOUNT%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_PROC_PRODS_MSG1_SURVEY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Приобретите &lt;SPECIAL&gt;карты артефактов&lt;&gt; у картографа на борту космической станции.&#xA;&lt;STELLAR&gt;Навигационные данные&lt;&gt; для покупки карты: %CURRENT%/%AMOUNT%&#xA;Используйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt;, чтобы находить расположенные неподалеку &lt;STELLAR&gt;древние постройки с данными&lt;&gt;.
                                -- Purchase &lt;SPECIAL&gt;Artifact Charts&lt;&gt; from a space station cartographer&#xA;&lt;STELLAR&gt;Navigation Data&lt;&gt; required for chart exchange: %CURRENT%/%AMOUNT%&#xA;Use the &lt;TECHNOLOGY&gt;Target Sweep&lt;&gt; to locate nearby &lt;STELLAR&gt;ancient data structures&lt;&gt;
                                { "Russian", "Купите &lt;SPECIAL&gt;карты артефактов&lt;&gt; у картографа на космической станции&#xA;Используйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt;, чтобы найти &lt;STELLAR&gt;древние постройки с данными&lt;&gt;&#xA;Собрано &lt;STELLAR&gt;навигационных данных&lt;&gt;: %CURRENT%/%AMOUNT%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_PROC_PRODS_MSG1_SWAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Приобретите &lt;SPECIAL&gt;карты артефактов&lt;&gt; у картографа на борту космической станции.&#xA;&lt;STELLAR&gt;Навигационные данные&lt;&gt; для покупки карты: %CURRENT%/%AMOUNT%&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;.
                                { "Russian", "Купите &lt;SPECIAL&gt;карты артефактов&lt;&gt; у картографа на космической станции&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;&#xA;Собрано &lt;STELLAR&gt;навигационных данных&lt;&gt;: %CURRENT%/%AMOUNT%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_PROC_PRODS_MSG1_OFF" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Приобретите &lt;SPECIAL&gt;карты артефактов&lt;&gt; у картографа на борту космической станции.&#xA;&lt;STELLAR&gt;Навигационные данные&lt;&gt; для покупки карты: %CURRENT%/%AMOUNT%&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы находить расположенные неподалеку &lt;STELLAR&gt;древние постройки с данными&lt;&gt;.
                                { "Russian", "Купите &lt;SPECIAL&gt;карты артефактов&lt;&gt; у картографа на космической станции&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы найти &lt;STELLAR&gt;древние постройки с данными&lt;&gt;&#xA;Собрано &lt;STELLAR&gt;навигационных данных&lt;&gt;: %CURRENT%/%AMOUNT%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_PROC_PRODS_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите древние артефакты.&#xA;Приобретите &lt;SPECIAL&gt;карты артефактов&lt;&gt; у &lt;COMMODITY&gt;картографа&lt;&gt; на борту космической станции.
                                { "Russian", "Соберите древние артефакты&#xA;Купите &lt;SPECIAL&gt;карты артефактов&lt;&gt; у &lt;COMMODITY&gt;картографа&lt;&gt; на космической станции" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_PROC_PRODS_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите древние артефакты: %CURRENT%/%AMOUNT%&#xA;Используйте &lt;SPECIAL&gt;карты артефактов&lt;&gt;, чтобы находить места раскопок.&#xA;Выберите их в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;) и &lt;STELLAR&gt;проложите маршрут&lt;&gt; (&lt;IMG&gt;FE_ALT1&lt;&gt;).
                                { "Russian", "Соберите древние артефакты: %CURRENT%/%AMOUNT%&#xA;Откройте инвентарь (&lt;IMG&gt;INVENTORY&lt;&gt;) и используйте &lt;SPECIAL&gt;карту артефактов&lt;&gt;,&#xA;чтобы &lt;STELLAR&gt;проложить маршрут&lt;&gt; (&lt;IMG&gt;FE_ALT1&lt;&gt;) до места раскопок" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_PROC_PRODS_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите древние артефакты: %CURRENT%/%AMOUNT%&#xA;Доберитесь до отмеченного &lt;SPECIAL&gt;местоположения древних руин&lt;&gt;.
                                { "Russian", "Соберите древние артефакты: %CURRENT%/%AMOUNT%&#xA;Доберитесь до отмеченного &lt;SPECIAL&gt;местоположения древних руин&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_PROC_PRODS_MSG5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Извлеките реликвии с помощью &lt;TECHNOLOGY&gt;ландшафтного манипулятора&lt;&gt;.&#xA;Чтобы установить технологию, нажмите &lt;IMG&gt;TECHMENU&lt;&gt; в инвентаре мультитула (&lt;IMG&gt;INVENTORY&lt;&gt;).
                                -- Unearth relics with the &lt;TECHNOLOGY&gt;Terrain Manipulator&lt;&gt;&#xA;In the Multi-Tool Inventory (&lt;IMG&gt;INVENTORY&lt;&gt;), install technology with &lt;IMG&gt;TECHMENU&lt;&gt;
                                { "Russian", "Извлеките реликвии с помощью &lt;TECHNOLOGY&gt;ландшафтного манипулятора&lt;&gt;&#xA;Чтобы установить технологию, нажмите &lt;IMG&gt;TECHMENU&lt;&gt; в инвентаре мультитула (&lt;IMG&gt;INVENTORY&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_PROC_PRODS_MSG6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Выкопайте погребенные капсулы с помощью &lt;TECHNOLOGY&gt;ландшафтного манипулятора&lt;&gt;.&#xA;Переключайте режимы мультитула с помощью &lt;IMG&gt;CYCLEWEAPON&lt;&gt;.
                                -- Dig up buried pods with the &lt;TECHNOLOGY&gt;Terrain Manipulator&lt;&gt;&#xA;Switch Multi-Tool mode with &lt;IMG&gt;CYCLEWEAPON&lt;&gt;
                                { "Russian", "Выкопайте погребенные капсулы с помощью &lt;TECHNOLOGY&gt;ландшафтного манипулятора&lt;&gt;&#xA;Переключайте режимы мультитула с помощью &lt;IMG&gt;CYCLEWEAPON&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_PROC_PRODS_MSG7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Извлеките реликвии с помощью &lt;TECHNOLOGY&gt;ландшафтного манипулятора&lt;&gt;.&#xA;Соберите %ITEM% из &lt;STELLAR&gt;фрагментов артефакта&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Используйте %ITEM%, чтобы открыть &lt;SPECIAL&gt;большой ящик с артефактом&lt;&gt;.&#xA;Воспользуйтесь &lt;TECHNOLOGY&gt;анализирующим визором&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы отыскать скрытые предметы.
                                { "Russian", "Извлеките реликвии с помощью &lt;TECHNOLOGY&gt;ландшафтного манипулятора&lt;&gt;&#xA;Соберите %ITEM% из &lt;STELLAR&gt;фрагментов артефакта&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Используйте %ITEM%, чтобы открыть &lt;SPECIAL&gt;большой ящик с артефактом&lt;&gt;&#xA;Ищите скрытые предметы с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_PROC_PRODS_MSG8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите древние артефакты: %CURRENT%/%AMOUNT%&#xA;Найдите и откройте &lt;SPECIAL&gt;большой ящик с артефактами&lt;&gt;.
                                { "Russian", "Соберите древние артефакты: %CURRENT%/%AMOUNT%&#xA;Найдите и откройте &lt;SPECIAL&gt;большой ящик с артефактами&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region UI_EXPED_BIOME_COLD
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_BIOME_COLD_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Посетить замерзшую планету
                                { "Russian", "Посетить замёрзшую планету" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_BIOME_COLD_DESC_D" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Посещена замерзшая планета
                                { "Russian", "Посещена замёрзшая планета" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_BIOME_COLD_OBJ" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Посетить замерзшую планету
                                { "Russian", "Посетить замёрзшую планету" },
                            }
                        },
                        --#endregion

                        --#region UI_EXPED_CRE_COLD
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_CRE_COLD_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружить живых существ в замерзшем мире
                                { "Russian", "Обнаружить живых существ в замёрзшем мире" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_CRE_COLD_DESC_D" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружены живые существа в замерзшем мире
                                { "Russian", "Обнаружены живые существа в замёрзшем мире" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_CRE_COLD_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Доберитесь до &lt;TECHNOLOGY&gt;замерзшего&lt;&gt; мира&#xA;&lt;TECHNOLOGY&gt;Сканируйте&lt;&gt; (&lt;IMG&gt;SHIPSCAN&lt;&gt;) планеты из космоса, чтобы собирать данные об их климате.
                                -- Reach a &lt;TECHNOLOGY&gt;frozen&lt;&gt; world&#xA;&lt;TECHNOLOGY&gt;Scan&lt;&gt; (&lt;IMG&gt;SHIPSCAN&lt;&gt;) planets from space to gather climate information
                                { "Russian", "Доберитесь до &lt;TECHNOLOGY&gt;замёрзшего&lt;&gt; мира&#xA;&lt;TECHNOLOGY&gt;Сканирование&lt;&gt; (&lt;IMG&gt;SHIPSCAN&lt;&gt;) планеты из космоса покажет климат на ней" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_CRE_COLD_OBJ" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружить существ в замерзшем мире: %CURRENT%/%AMOUNT%
                                { "Russian", "Обнаружить существ в замёрзшем мире: %CURRENT%/%AMOUNT%" },
                            }
                        },
                        --#endregion

                    }
                },
                { -- LANGUAGE/NMS_LOC7_RUSSIAN.MBIN
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_LOC7_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MODESELECT_EXPED_FORMAT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Экспедиция %NUM%: %NAME%
                                -- Expedition %NUM%: %NAME%
                                { "Russian", "Экспедиция №%NUM%: %NAME%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_PHOTO_CRE_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сфотографируйте группу наземных существ (%AMOUNT% шт.)&#xA;Чтобы обнаружить их, используйте анализирующий визор (&lt;IMG&gt;AIM&lt;&gt;).&#xA;Активируйте фоторежим в быстром меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                { "Russian", "Сфотографируйте группу наземных существ (%AMOUNT% шт.)&#xA;Чтобы обнаружить их, используйте анализирующий визор (&lt;IMG&gt;AIM&lt;&gt;)&#xA;Активируйте фоторежим в быстром меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_PHOTO_CRE_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сделайте одну фотографию группы наземных существ (%AMOUNT% шт.)&#xA;Чтобы обнаружить их, используйте анализирующий визор (&lt;IMG&gt;AIM&lt;&gt;).&#xA;Активируйте фоторежим в быстром меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                { "Russian", "Сделайте одну фотографию группы наземных существ (%AMOUNT% шт.).&#xA;Чтобы обнаружить их, используйте анализирующий визор (&lt;IMG&gt;AIM&lt;&gt;).&#xA;Активируйте фоторежим в быстром меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)." },
                            }
                        },

                        --#region UI_SEASON_[0-9]+_MAIN_TITLE
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SEASON_8_MAIN_TITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Экспедиция восьмая: «Путеводная звезда»
                                { "Russian", "Экспедиция №8: Путеводная звезда" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SEASON_6_MAIN_TITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Шестая экспедиция: «Гибельные»
                                { "Russian", "Экспедиция №6: Гибельные" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SEASON_4_MAIN_TITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Четвертая экспедиция: «Появление»
                                { "Russian", "Экспедиция №4: Появление" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SEASON_5_MAIN_TITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Экспедиция пять: «Экзобиология»
                                { "Russian", "Экспедиция №5: Экзобиология" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SEASON_7_MAIN_TITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Экспедиция седьмая: «Левиафан»
                                { "Russian", "Экспедиция №7: Левиафан" },
                            }
                        },
                        --#endregion

                        --#region UI_EXPED_COOK_CAKE_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_COOK_CAKE_MSG0" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Установите &lt;TECHNOLOGY&gt;переработчик нутриентов&lt;&gt;, чтобы начать готовить.&#xA;Изучить необходимые чертежи можно на борту &lt;SPECIAL&gt;Космической Аномалии&lt;&gt;.&#xA;Чтобы изучить новые детали, посетите &lt;STELLAR&gt;станцию исследования базы&lt;&gt;.
                                -- Deploy a &lt;TECHNOLOGY&gt;Nutrient Processor&lt;&gt; to begin cooking&#xA;Learn required plans aboard the &lt;SPECIAL&gt;Space Anomaly&lt;&gt;&#xA;Visit the &lt;STELLAR&gt;Base Research Station&lt;&gt; to learn new parts
                                { "Russian", "Установите &lt;TECHNOLOGY&gt;переработчик нутриентов&lt;&gt;, чтобы начать готовить&#xA;Необходимые чертежи можно изучить на &lt;SPECIAL&gt;Космической Аномалии&lt;&gt;&#xA;Посетите &lt;STELLAR&gt;станцию исследования базы&lt;&gt;, чтобы узнать больше" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_COOK_CAKE_MSG1_ALT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Установите &lt;TECHNOLOGY&gt;переработчик нутриентов&lt;&gt;, чтобы начать готовить.&#xA;Чтобы получить план переработчика, выполните этап &lt;EXPED&gt;«%MILESTONE%»&lt;&gt;.&#xA;Выберите нужные этапы на вкладке &lt;STELLAR&gt;«Экспедиция»&lt;&gt; (&lt;IMG&gt;OPTIONS&lt;&gt;).
                                { "Russian", "Установите &lt;TECHNOLOGY&gt;переработчик нутриентов&lt;&gt;, чтобы начать готовить&#xA;Чтобы изучить чертеж переработчика, выполните этап &lt;EXPED&gt;%MILESTONE%&lt;&gt;&#xA;Выберите этап на вкладке &lt;STELLAR&gt;«Экспедиция»&lt;&gt; (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_COOK_CAKE_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Установите &lt;TECHNOLOGY&gt;переработчик нутриентов&lt;&gt;, чтобы начать готовить.&#xA;Чтобы открыть меню созидания, нажмите &lt;IMG&gt;BUILD_MENU&lt;&gt;.&#xA;&lt;STELLAR&gt;Закрепите&lt;&gt; чертежи из меню созидания с помощью &lt;IMG&gt;PIN_BUILD&lt;&gt;.
                                { "Russian", "Установите &lt;TECHNOLOGY&gt;переработчик нутриентов&lt;&gt;, чтобы начать готовить&#xA;Чтобы открыть меню строительства, нажмите &lt;IMG&gt;BUILD_MENU&lt;&gt;&#xA;&lt;STELLAR&gt;Закрепите&lt;&gt; чертеж в меню строительства с помощью &lt;IMG&gt;PIN_BUILD&lt;&gt;." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_COOK_CAKE_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Приготовьте &lt;SPECIAL&gt;ингредиенты&lt;&gt;.&#xA;Взбейте &lt;STELLAR&gt;молоко&lt;&gt; в &lt;TECHNOLOGY&gt;переработчике нутриентов&lt;&gt;, чтобы получить &lt;STELLAR&gt;сливки&lt;&gt;.&#xA;Открытые рецепты сохраняются в &lt;TECHNOLOGY&gt;каталоге&lt;&gt; (&lt;IMG&gt;OPTIONS&lt;&gt;).&#xA;Храните ингредиенты в любом переработчике нутриентов, чтобы иметь возможность потом быстро их забрать.
                                { "Russian", "Приготовьте &lt;STELLAR&gt;сливки&lt;&gt;&#xA;Взбейте &lt;STELLAR&gt;молоко&lt;&gt; в &lt;TECHNOLOGY&gt;переработчике нутриентов&lt;&gt;&#xA;Открытые рецепты сохраняются в &lt;TECHNOLOGY&gt;каталоге&lt;&gt; (&lt;IMG&gt;OPTIONS&lt;&gt;)&#xA;Храните ингредиенты в переработчике" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_COOK_CAKE_MSG2A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Приготовьте &lt;SPECIAL&gt;ингредиенты&lt;&gt;.&#xA;Многих прирученных существ можно &lt;SPECIAL&gt;доить&lt;&gt;.&#xA;Разбросайте &lt;TRADEABLE&gt;питательные гранулы&lt;&gt; (&lt;IMG&gt;QUICK_MENU&lt;&gt;), чтобы приманить и приручить существ.&#xA;Для поиска существ используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;).
                                { "Russian", "Приготовьте &lt;STELLAR&gt;сливки&lt;&gt;&#xA;Многих прирученных существ можно &lt;SPECIAL&gt;доить&lt;&gt;&#xA;Разбросайте &lt;TRADEABLE&gt;питательные гранулы&lt;&gt; (&lt;IMG&gt;QUICK_MENU&lt;&gt;), чтобы приручить существ&#xA;Для поиска существ используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_COOK_CAKE_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Приготовьте &lt;SPECIAL&gt;ингредиенты&lt;&gt;.&#xA;Взбейте &lt;STELLAR&gt;сливки&lt;&gt; в &lt;TECHNOLOGY&gt;переработчике нутриентов&lt;&gt;, чтобы получить &lt;STELLAR&gt;масло&lt;&gt;.&#xA;Открытые рецепты сохраняются в &lt;TECHNOLOGY&gt;каталоге&lt;&gt; (&lt;IMG&gt;OPTIONS&lt;&gt;).
                                { "Russian", "Приготовьте &lt;STELLAR&gt;масло&lt;&gt;&#xA;Взбейте &lt;STELLAR&gt;сливки&lt;&gt; в &lt;TECHNOLOGY&gt;переработчике нутриентов&lt;&gt;&#xA;Открытые рецепты сохраняются в &lt;TECHNOLOGY&gt;каталоге&lt;&gt; (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_COOK_CAKE_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Приготовьте &lt;SPECIAL&gt;ингредиенты&lt;&gt;.&#xA;Смешайте &lt;STELLAR&gt;масло&lt;&gt; и &lt;STELLAR&gt;сахар&lt;&gt; в переработчике нутриентов, чтобы получить &lt;STELLAR&gt;подслащенное масло&lt;&gt;.&#xA;Открытые рецепты сохраняются в &lt;TECHNOLOGY&gt;каталоге&lt;&gt; (&lt;IMG&gt;OPTIONS&lt;&gt;).
                                { "Russian", "Приготовьте &lt;STELLAR&gt;подслащенное масло&lt;&gt;&#xA;Смешайте &lt;STELLAR&gt;масло&lt;&gt; и &lt;STELLAR&gt;сахар&lt;&gt; в переработчике нутриентов&#xA;Открытые рецепты сохраняются в &lt;TECHNOLOGY&gt;каталоге&lt;&gt; (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_COOK_CAKE_MSG4A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Смешайте масло и &lt;STELLAR&gt;сахар&lt;&gt;, чтобы получить подслащенное масло.&#xA;Многие растения, включая &lt;TRADEABLE&gt;сладкий корень&lt;&gt;, можно переработать и получить сахар.&#xA;Используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы находить заготавливаемые растения.&#xA;Перерабатывайте растительную массу с помощью &lt;TECHNOLOGY&gt;переработчика нутриентов&lt;&gt;.
                                { "Russian", "Смешайте масло и &lt;STELLAR&gt;сахар&lt;&gt;, чтобы получить подслащенное масло&#xA;&lt;TRADEABLE&gt;Сладкий корень&lt;&gt; можно переработать в сахар&#xA;Используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;) для поиска растений&#xA;Перерабатывайте растительную массу в &lt;TECHNOLOGY&gt;переработчике нутриентов&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_COOK_CAKE_MSG5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Приготовьте &lt;STELLAR&gt;тесто&lt;&gt; в &lt;TECHNOLOGY&gt;переработчике нутриентов&lt;&gt;.&#xA;Смешайте &lt;STELLAR&gt;подслащенное масло&lt;&gt; с &lt;STELLAR&gt;яйцами&lt;&gt; и &lt;STELLAR&gt;мукой&lt;&gt;, чтобы получить тесто.&#xA;Открытые рецепты сохраняются в &lt;TECHNOLOGY&gt;каталоге&lt;&gt; (&lt;IMG&gt;OPTIONS&lt;&gt;).
                                { "Russian", "Приготовьте &lt;STELLAR&gt;тесто&lt;&gt; в &lt;TECHNOLOGY&gt;переработчике нутриентов&lt;&gt;&#xA;Смешайте &lt;STELLAR&gt;подслащенное масло&lt;&gt; с &lt;STELLAR&gt;яйцами&lt;&gt; и &lt;STELLAR&gt;мукой&lt;&gt;&#xA;Открытые рецепты сохраняются в &lt;TECHNOLOGY&gt;каталоге&lt;&gt; (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_COOK_CAKE_MSG5A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Смешайте подслащенное масло с &lt;STELLAR&gt;яйцами&lt;&gt; и мукой, чтобы получить тесто.&#xA;Разбрасывайте &lt;TRADEABLE&gt;питательные гранулы&lt;&gt; (&lt;IMG&gt;QUICK_MENU&lt;&gt;), чтобы приманивать существ и собирать их яйца.&#xA;Для поиска существ используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;).
                                { "Russian", "Смешайте подслащенное масло с &lt;STELLAR&gt;яйцами&lt;&gt; и мукой, чтобы получить тесто&#xA;Разбрасывайте &lt;TRADEABLE&gt;питательные гранулы&lt;&gt; (&lt;IMG&gt;QUICK_MENU&lt;&gt;), чтобы собрать яйца у существ&#xA;Для поиска существ используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_COOK_CAKE_MSG5B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Смешайте подслащенное масло, яйца и &lt;STELLAR&gt;муку&lt;&gt;, чтобы получить тесто.&#xA;Многие растения, включая &lt;STELLAR&gt;пшеницу&lt;&gt;, можно переработать и получить муку.&#xA;Используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы находить заготавливаемые растения.&#xA;Перерабатывайте растительную массу с помощью &lt;TECHNOLOGY&gt;переработчика нутриентов&lt;&gt;.
                                { "Russian", "Смешайте подслащенное масло, яйца и &lt;STELLAR&gt;муку&lt;&gt;, чтобы получить тесто&#xA;&lt;STELLAR&gt;Пшеницу&lt;&gt; можно переработать в муку&#xA;Используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;) для поиска растений&#xA;Перерабатывайте растительную массу в &lt;TECHNOLOGY&gt;переработчике нутриентов&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_COOK_CAKE_MSG6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Испеките &lt;SPECIAL&gt;вкусный пирог&lt;&gt;.&#xA;Попробуйте смешать с &lt;STELLAR&gt;тестом&lt;&gt; разные ингредиенты, чтобы приготовить различные пироги.&#xA;Многие начинки для пирогов можно приготовить из &lt;TRADEABLE&gt;заготавливаемых растений&lt;&gt;.&#xA;Открытые рецепты сохраняются в &lt;TECHNOLOGY&gt;каталоге&lt;&gt; (&lt;IMG&gt;OPTIONS&lt;&gt;).
                                { "Russian", "Испеките &lt;SPECIAL&gt;вкусный пирог&lt;&gt;&#xA;Попробуйте смешать разные ингредиенты с &lt;STELLAR&gt;тестом&lt;&gt;&#xA;Начинки для пирогов можно приготовить из &lt;TRADEABLE&gt;растений&lt;&gt;&#xA;Открытые рецепты сохраняются в &lt;TECHNOLOGY&gt;каталоге&lt;&gt; (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SWITCH_REWARD_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Special rewards available&lt;&gt;&#xA;Find earned rewards at the &lt;TECHNOLOGY&gt;Quicksilver Synthesis Companion&lt;&gt;
                                -- &lt;STELLAR&gt;Доступны особые награды&lt;&gt;&#xA;Заработанные награды хранятся в &lt;TECHNOLOGY&gt;элементе синтеза ртути&lt;&gt;
                                { "Russian", "&lt;STELLAR&gt;Доступны особые награды&lt;&gt;&#xA;Заберите их у &lt;TECHNOLOGY&gt;Товарища по синтезу ртути&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_REWARD_SHIP_INVENTORY_SLOTS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;COMMODITY&gt;Ячейка инвентаря звездолета&lt;&gt; (x%NUM%)
                                -- &lt;COMMODITY&gt;Starship Inventory Slot&lt;&gt; x %NUM%
                                { "Russian", "&lt;COMMODITY&gt;Ячейка инвентаря звездолёта&lt;&gt; × %NUM%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_ASTEROIDS_OBJ" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добыть на астероидах: %CURRENT%/%AMOUNT%
                                -- Mine from asteroids: %CURRENT%/%AMOUNT%
                                { "Russian", "Разрушить астероиды: %CURRENT%/%AMOUNT%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_VISIT_PLANET_DESC_D" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Осмотрите планету
                                -- Surveyed a planet
                                { "Russian", "Вы совершили посадку на планету" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_WORMHUNT_LABEL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Нора Титанического червя
                                -- Titan Worm Burrow
                                { "Russian", "Нора титанического червя" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_ROGUE_COMM_M3_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Изучение петли: прах грез
                                -- Loop Research: Somnal Dust
                                { "Russian", "Изучение петли: Прах грёз" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_ROGUE_COMM_M3_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Прах грез&lt;&gt; находится в тонких прожилках, образующихся вокруг скоплений в петле. Он представляет собой накопившийся продукт разложения времени и воспоминаний. Этот прах очень нужен &lt;SPECIAL&gt;специалисту Поло&lt;&gt; для &lt;STELLAR&gt;изучения петли&lt;&gt;.&#xA;&#xA;Собирайте прах грез на &lt;TECHNOLOGY&gt;заброшенных грузовых судах&lt;&gt;.
                                -- &lt;SPECIAL&gt;Somnal Dust&lt;&gt; is found in fine layers around hotspots in the loop. The accumulated decay of time and memories, it is of great value to &lt;SPECIAL&gt;Specialist Polo&lt;&gt; as they &lt;STELLAR&gt;research the loop&lt;&gt;.&#xA;&#xA;Harvest Somnal Dust from the interior of &lt;TECHNOLOGY&gt;derelict freighters&lt;&gt;.
                                { "Russian", "&lt;SPECIAL&gt;Прах грёз&lt;&gt; находится в тонких прожилках, образующихся вокруг скоплений в петле. Он представляет собой накопившийся продукт разложения времени и воспоминаний. Этот прах очень нужен &lt;SPECIAL&gt;специалисту Поло&lt;&gt; для &lt;STELLAR&gt;изучения петли&lt;&gt;.&#xA;&#xA;Собирайте прах грёз на &lt;TECHNOLOGY&gt;заброшенных грузовых судах&lt;&gt;." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_ROGUE_COMM_M3_OBJ1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Собрать прах грез на заброшенном грузовом судне
                                -- Gather Somnal Dust from the wreck of a derelict freighter
                                { "Russian", "Собрать прах грёз на заброшенном грузовом судне" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_ROGUE_COMM_M3_OBJ1_TI" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Прах грез&lt;&gt; попадается в тонких прожилках, образующихся вокруг скоплений в петле. Он представляет собой накопившийся продукт разложения времени и воспоминаний. Этот прах очень нужен &lt;SPECIAL&gt;специалисту Поло&lt;&gt; для &lt;STELLAR&gt;изучения петли&lt;&gt;.&#xA;&#xA;Собирайте прах грез на &lt;TECHNOLOGY&gt;заброшенных грузовых судах&lt;&gt;. Найти заброшенные грузовые суда можно с помощью &lt;TECHNOLOGY&gt;сканера аварийных сигналов&lt;&gt;, который можно приобрести у &lt;STELLAR&gt;сборщика утиля&lt;&gt; на борту космической станции или получить у &lt;STELLAR&gt;итерации Гелиоса&lt;&gt; на борту Космической Аномалии.&#xA;&#xA;Заброшенные грузовые суда &lt;FUEL&gt;очень опасны&lt;&gt;. Исследователей петли могут ждать опасные условия и встречи.
                                -- &lt;SPECIAL&gt;Somnal Dust&lt;&gt; is found in fine layers around hotspots in the loop. The accumulated decay of time and memories, it is of great value to &lt;SPECIAL&gt;Specialist Polo&lt;&gt; as they &lt;STELLAR&gt;research the loop&lt;&gt;.&#xA;&#xA;Harvest Somnal Dust from the interior of &lt;TECHNOLOGY&gt;derelict freighters&lt;&gt;. Locate derelict freighters with an &lt;TECHNOLOGY&gt;Emergency Signal Scanner&lt;&gt;, which can be purchased from a space station &lt;STELLAR&gt;Scrap Dealer&lt;&gt; or acquired from &lt;STELLAR&gt;Iteration: Helios&lt;&gt; aboard the Space Anomaly.&#xA;&#xA;Derelict freighters are &lt;FUEL&gt;highly dangerous&lt;&gt;. Loop researchers should expect hazardous conditions and potential conflict.
                                { "Russian", "&lt;SPECIAL&gt;Прах грёз&lt;&gt; попадается в тонких прожилках, образующихся вокруг скоплений в петле. Он представляет собой накопившийся продукт разложения времени и воспоминаний. Этот прах очень нужен &lt;SPECIAL&gt;специалисту Поло&lt;&gt; для &lt;STELLAR&gt;изучения петли&lt;&gt;.&#xA;&#xA;Собирайте прах грёз на &lt;TECHNOLOGY&gt;заброшенных грузовых судах&lt;&gt;. Найти заброшенные грузовые суда можно с помощью &lt;TECHNOLOGY&gt;сканера аварийных сигналов&lt;&gt;, который можно приобрести у &lt;STELLAR&gt;сборщика утиля&lt;&gt; на борту космических станций или получить у &lt;STELLAR&gt;итерации Гелиоса&lt;&gt; на Космической Аномалии.&#xA;&#xA;Заброшенные грузовые суда &lt;FUEL&gt;очень опасны&lt;&gt;. Исследователей петли могут ждать опасные условия и встречи." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SEASON_6_MAIN_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Фаза %NUM%, выполнено этапов: %CURRENT%/%AMOUNT%&#xA;Выберите &lt;EXPED&gt;компас&lt;&gt;, чтобы закрепить его в качестве текущего задания&#xA;Новые этапы можно найти на вкладке &lt;STELLAR&gt;«Экспедиция»&lt;&gt; (&lt;IMG&gt;OPTIONS&lt;&gt;)
                                -- Phase %NUM%: %CURRENT%/%AMOUNT% milestones complete&#xA;Select &lt;EXPED&gt;The Compass&lt;&gt; to pin it as your active mission&#xA;Find new milestones in the &lt;STELLAR&gt;Expedition&lt;&gt; tab (&lt;IMG&gt;OPTIONS&lt;&gt;)
                                { "Russian", "Фаза %NUM%, выполнено этапов: %CURRENT%/%AMOUNT%&#xA;Выберите &lt;EXPED&gt;«Компас»&lt;&gt;, чтобы сделать его текущим заданием&#xA;Новые этапы можно найти на вкладке &lt;STELLAR&gt;«Экспедиция»&lt;&gt; (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                            }
                        },
                        -- на деле ничего добывать по факту не нужно, а нужно разрушить астероиды
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_ASTEROIDS_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добудьте из астероидов: %CURRENT%/%AMOUNT%&#xA;Найдите в космосе &lt;STELLAR&gt;плотные скопления астероидов&lt;&gt;.&#xA;Большие скопления находятся в &lt;STELLAR&gt;кольцах&lt;&gt; вокруг планет.
                                { "Russian", "Разрушено астероидов: %CURRENT%/%AMOUNT%&#xA;Найдите в космосе &lt;STELLAR&gt;плотные скопления астероидов&lt;&gt;&#xA;Большие скопления находятся в &lt;STELLAR&gt;кольцах&lt;&gt; вокруг планет" },
                            }
                        },
                        -- баги перевода где есть "&lt;IMG&gt;&lt;&gt;"
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_SMUGGLE_CONTRAB_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Провезите контрабанду: %CURRENT%&lt;IMG&gt;&lt;&gt;/%AMOUNT%&lt;IMG&gt;ЮН.&lt;&gt;&#xA;Посетите &lt;SPECIAL&gt;систему преступников&lt;&gt;, чтобы получить товары с черного рынка.&#xA;Установите сканер &lt;TECHNOLOGY&gt;экономики&lt;&gt; или &lt;TECHNOLOGY&gt;военный&lt;&gt; сканер, чтобы находить подобные системы.
                                -- Smuggle contraband: %CURRENT%&lt;IMG&gt;UNITS&lt;&gt;/%AMOUNT%&lt;IMG&gt;UNITS&lt;&gt;&#xA;Visit an &lt;SPECIAL&gt;outlaw system&lt;&gt; to acquire black market goods&#xA;Install an &lt;TECHNOLOGY&gt;Economy&lt;&gt; or &lt;TECHNOLOGY&gt;Conflict&lt;&gt; Scanner to locate outlaw systems
                                { "Russian", "Провезите контрабанду: %CURRENT%&lt;IMG&gt;UNITSMALL&lt;&gt;/%AMOUNT%&lt;IMG&gt;UNITSMALL&lt;&gt;&#xA;Посетите &lt;SPECIAL&gt;систему преступников&lt;&gt;, чтобы получить товары с черного рынка&#xA;Установите сканер &lt;TECHNOLOGY&gt;экономики&lt;&gt; или &lt;TECHNOLOGY&gt;военный&lt;&gt; сканер, чтобы находить подобные системы" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_SMUGGLE_CONTRAB_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Провезите контрабанду: %CURRENT%&lt;IMG&gt;&lt;&gt;/%AMOUNT%&lt;IMG&gt;ЮН.&lt;&gt;&#xA;Найдите &lt;SPECIAL&gt;систему преступников&lt;&gt;, чтобы получить товары с черного рынка.&#xA;Подобные системы можно найти на &lt;TECHNOLOGY&gt;галактической карте&lt;&gt;.
                                -- Smuggle contraband: %CURRENT%&lt;IMG&gt;UNITS&lt;&gt;/%AMOUNT%&lt;IMG&gt;UNITS&lt;&gt;&#xA;Locate an &lt;SPECIAL&gt;outlaw system&lt;&gt; to acquire black market goods&#xA;Outlaw systems can be identified in the &lt;TECHNOLOGY&gt;Galaxy Map&lt;&gt;
                                { "Russian", "Провезите контрабанду: %CURRENT%&lt;IMG&gt;UNITSMALL&lt;&gt;/%AMOUNT%&lt;IMG&gt;UNITSMALL&lt;&gt;&#xA;Найдите &lt;SPECIAL&gt;систему преступников&lt;&gt;, чтобы получить товары с черного рынка&#xA;Подобные системы можно найти на &lt;TECHNOLOGY&gt;галактической карте&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_SMUGGLE_CONTRAB_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Провезите контрабанду: %CURRENT%&lt;IMG&gt;&lt;&gt;/%AMOUNT%&lt;IMG&gt;ЮН.&lt;&gt;&#xA;Состыкуйтесь со &lt;SPECIAL&gt;станцией преступников&lt;&gt;, чтобы посетить черный рынок.
                                -- Smuggle contraband: %CURRENT%&lt;IMG&gt;UNITS&lt;&gt;/%AMOUNT%&lt;IMG&gt;UNITS&lt;&gt;&#xA;Dock with the &lt;SPECIAL&gt;outlaw station&lt;&gt; to visit the black market
                                { "Russian", "Провезите контрабанду: %CURRENT%&lt;IMG&gt;UNITSMALL&lt;&gt;/%AMOUNT%&lt;IMG&gt;UNITSMALL&lt;&gt;&#xA;Состыкуйтесь со &lt;SPECIAL&gt;станцией преступников&lt;&gt;, чтобы посетить черный рынок" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_SMUGGLE_CONTRAB_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Провезите контрабанду: %CURRENT%&lt;IMG&gt;&lt;&gt;/%AMOUNT%&lt;IMG&gt;ЮН.&lt;&gt;&#xA;Купите незаконные товары у &lt;STELLAR&gt;«экспедитора» черного рынка&lt;&gt;.
                                -- Smuggle contraband: %CURRENT%&lt;IMG&gt;UNITS&lt;&gt;/%AMOUNT%&lt;IMG&gt;UNITS&lt;&gt;&#xA;Acquire illegal goods from the &lt;STELLAR&gt;Black Market Shipping Agent&lt;&gt;
                                { "Russian", "Провезите контрабанду: %CURRENT%&lt;IMG&gt;UNITSMALL&lt;&gt;/%AMOUNT%&lt;IMG&gt;UNITSMALL&lt;&gt;&#xA;Купите незаконные товары у &lt;STELLAR&gt;«экспедитора» черного рынка&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_SMUGGLE_CONTRAB_MSG5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Провезите контрабанду: %CURRENT%&lt;IMG&gt;&lt;&gt;/%AMOUNT%&lt;IMG&gt;ЮН.&lt;&gt;&#xA;Товары с черного рынка получены.&#xA;Вернитесь в &lt;TECHNOLOGY&gt;поднадзорное пространство&lt;&gt;, чтобы доставить их.
                                -- Smuggle contraband: %CURRENT%&lt;IMG&gt;UNITS&lt;&gt;/%AMOUNT%&lt;IMG&gt;UNITS&lt;&gt;&#xA;Black market goods acquired&#xA;Return to &lt;TECHNOLOGY&gt;regulated space&lt;&gt; to deliver the goods
                                { "Russian", "Провезите контрабанду: %CURRENT%&lt;IMG&gt;UNITSMALL&lt;&gt;/%AMOUNT%&lt;IMG&gt;UNITSMALL&lt;&gt;&#xA;Товары с черного рынка получены&#xA;Вернитесь в &lt;TECHNOLOGY&gt;поднадзорное пространство&lt;&gt;, чтобы доставить их" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_SMUGGLE_CONTRAB_MSG6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Провезите контрабанду: %CURRENT%&lt;IMG&gt;&lt;&gt;/%AMOUNT%&lt;IMG&gt;ЮН.&lt;&gt;&#xA;Доберитесь до &lt;TECHNOLOGY&gt;торгового терминала&lt;&gt;, чтобы сбыть провезенные товары.&#xA;&lt;FUEL&gt;Внимание&lt;&gt;: власти системы могут проверить ваш груз на предмет контрабанды.
                                -- Smuggle contraband: %CURRENT%&lt;IMG&gt;UNITS&lt;&gt;/%AMOUNT%&lt;IMG&gt;UNITS&lt;&gt;&#xA;Reach a &lt;TECHNOLOGY&gt;Trade Terminal&lt;&gt; to offload smuggled items&#xA;&lt;FUEL&gt;Caution&lt;&gt;: System authorities may probe cargo for contraband
                                { "Russian", "Провезите контрабанду: %CURRENT%&lt;IMG&gt;UNITSMALL&lt;&gt;/%AMOUNT%&lt;IMG&gt;UNITSMALL&lt;&gt;&#xA;Доберитесь до &lt;TECHNOLOGY&gt;торгового терминала&lt;&gt;, чтобы сбыть провезенные товары&#xA;&lt;FUEL&gt;Внимание&lt;&gt;: власти системы могут проверить ваш груз на предмет контрабанды" },
                            }
                        },
                        --
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_PIRATE_PORT_SURV" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Двигайтесь по &lt;STELLAR&gt;направляющим&lt;&gt;.&#xA;Используйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt;, чтобы точно определить место, указанное на &lt;SPECIAL&gt;пиратской карте&lt;&gt; Погибели.
                                -- Follow the &lt;STELLAR&gt;directional indicators&lt;&gt;&#xA;This &lt;TECHNOLOGY&gt;Target Sweep&lt;&gt; will pinpoint the spot indicated by The Blight's &lt;SPECIAL&gt;Pirate Map&lt;&gt;
                                { "Russian", "Двигайтесь по &lt;STELLAR&gt;направляющим&lt;&gt;&#xA;&lt;TECHNOLOGY&gt;Разведка цели&lt;&gt; поможет найти точное место,&#xA;отмеченное на &lt;SPECIAL&gt;пиратской карте&lt;&gt; Погибели" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_WORM_AF_RES" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;AUDIO&gt;UI_Destination_Reached&lt;&gt;&lt;TECHNOLOGY&gt;ЗАПРОШЕНА СПЕЦИАЛЬНАЯ ТЕХНОЛОГИЯ&lt;&gt; &lt;IMG&gt;СЛЭШ&lt;&gt; ТОЛЬКО ДЛЯ КАПИТАНА&#xA;&lt;FUEL&gt;Внимание!&lt;&gt; Не распечатывайте запретные записи. Чтение запретных записей невероятно опасно!
                                -- &lt;AUDIO&gt;UI_Destination_Reached&lt;&gt;&lt;TECHNOLOGY&gt;SPECIALIST TECHNOLOGY REQUESTED&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt; CAPTAIN'S EYES ONLY&#xA;&lt;FUEL&gt;Warning&lt;&gt;: Do not unbind the forbidden texts. Exposure to forbidden texts carries extreme risk!
                                { "Russian", "&lt;AUDIO&gt;UI_Destination_Reached&lt;&gt;&lt;TECHNOLOGY&gt;ЗАПРОШЕНА СПЕЦИАЛЬНАЯ ТЕХНОЛОГИЯ&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt; ТОЛЬКО ДЛЯ КАПИТАНА&#xA;&lt;FUEL&gt;Внимание!&lt;&gt; Не распечатывайте запретные записи. Чтение запретных записей невероятно опасно!" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_SPOOKY_BOOK_LANG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;AUDIO&gt;UI_Destination_Reached&lt;&gt;&lt;SPECIAL&gt;ЗАПРОШЕН ЗАКРЫТЫЙ ДОКУМЕНТ&lt;&gt; &lt;IMG&gt;СЛЭШ&lt;&gt; ДОСТУП &lt;TRADEABLE&gt;ПОЛУЧЕН&lt;&gt;&#xA;&lt;AUDIO&gt;UI_GameMode_Erase_Error&lt;&gt;&lt;FUEL&gt;ВНИМАНИЕ&lt;&gt;: обнаружена серьезная ментальная угроза! Биологическим сущностям следует продолжать с &lt;SPECIAL&gt;крайней осторожностью&lt;&gt;.&#xA;&lt;AUDIO&gt;UI_Destination_Reached&lt;&gt;ПОЛУЧАЕТСЯ ДОСТУП...
                                -- &lt;AUDIO&gt;UI_Destination_Reached&lt;&gt;&lt;SPECIAL&gt;LOCKED DOCUMENT REQUESTED&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt; OVERRIDE &lt;TRADEABLE&gt;SUCCESSFUL&lt;&gt;&#xA;&lt;AUDIO&gt;UI_GameMode_Erase_Error&lt;&gt;&lt;FUEL&gt;WARNING&lt;&gt;: Significant cognito-hazard detected! Biological entities should proceed with &lt;SPECIAL&gt;extreme caution&lt;&gt;.&#xA;&lt;AUDIO&gt;UI_Destination_Reached&lt;&gt;ACCESSING...
                                { "Russian", "&lt;AUDIO&gt;UI_Destination_Reached&lt;&gt;&lt;SPECIAL&gt;ЗАПРОШЕН ЗАКРЫТЫЙ ДОКУМЕНТ&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt; ДОСТУП &lt;TRADEABLE&gt;ПОЛУЧЕН&lt;&gt;&#xA;&lt;AUDIO&gt;UI_GameMode_Erase_Error&lt;&gt;&lt;FUEL&gt;ВНИМАНИЕ&lt;&gt;: обнаружена серьезная ментальная угроза! Биологическим сущностям следует продолжать с &lt;SPECIAL&gt;крайней осторожностью&lt;&gt;.&#xA;&lt;AUDIO&gt;UI_Destination_Reached&lt;&gt;ПОЛУЧЕНИЕ..." },
                            }
                        },

                        --#region UI_EXPED_FIX_SHIP_PIR_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_FIX_SHIP_PIR_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Найдите&lt;&gt; и &lt;TECHNOLOGY&gt;отремонтируйте&lt;&gt; свой звездолет.
                                { "Russian", "&lt;STELLAR&gt;Найдите&lt;&gt; и &lt;TECHNOLOGY&gt;отремонтируйте&lt;&gt; свой звездолёт" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_FIX_SHIP_PIR_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Место крушения выглядит &lt;STELLAR&gt;подозрительно&lt;&gt;.&#xA;Поднимитесь на разбившийся корабль и узнайте, что произошло.
                                { "Russian", "Место крушения выглядит &lt;STELLAR&gt;подозрительно&lt;&gt;&#xA;Поднимитесь на разбившийся корабль и узнайте, что произошло" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_FIX_SHIP_PIR_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Отремонтируйте&lt;&gt; важнейшие системы звездолета.&#xA;%REPAIR%&#xA;Чтобы получить указания, &lt;COMMODITY&gt;закрепите&lt;&gt; (&lt;IMG&gt;PIN&lt;&gt;) компоненты.
                                -- &lt;STELLAR&gt;Repair&lt;&gt; critical starship systems&#xA;%REPAIR%&#xA;Obtain guidance by &lt;COMMODITY&gt;pinning&lt;&gt; (&lt;IMG&gt;PIN&lt;&gt;) components
                                { "Russian", "&lt;STELLAR&gt;Отремонтируйте&lt;&gt; важнейшие системы звездолёта&#xA;%REPAIR%&#xA;Чтобы получить указания, &lt;COMMODITY&gt;закрепите&lt;&gt; (&lt;IMG&gt;PIN&lt;&gt;) компоненты" },
                            }
                        },
                        --#endregion

                        --#region Вызовите страницу
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MEDAL_DESC_DISC_CREATURES" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;) для сканирования животных и удерживайте &lt;IMG&gt;BINOCSCAN&lt;&gt; при наведении на них. Еще не известные науке виды отмечены &lt;FUEL&gt;красными точками&lt;&gt;.&#xA;Вызовите страницу &lt;TECHNOLOGY&gt;открытий&lt;&gt; планеты, чтобы узнать, где и когда искать определенных существ.&#xA;&#xA;Когда вы обнаружите всех существ, откройте страницу открытий и выберите пункт &lt;STELLAR&gt;«Засчитать выполнение»&lt;&gt;, чтобы получить &lt;COMMODITY&gt;дополнительные награды&lt;&gt;.
                                { "Russian", "Используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;) для сканирования животных и удерживайте &lt;IMG&gt;BINOCSCAN&lt;&gt; при наведении на них. Еще не известные науке виды отмечены &lt;FUEL&gt;красными точками&lt;&gt;.&#xA;Откройте страницу &lt;TECHNOLOGY&gt;открытий&lt;&gt; планеты, чтобы узнать, где и когда искать определенных существ.&#xA;&#xA;Когда вы обнаружите всех существ, откройте страницу открытий и выберите пункт &lt;STELLAR&gt;«Засчитать выполнение»&lt;&gt;, чтобы получить &lt;COMMODITY&gt;дополнительные награды&lt;&gt;." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_CRE_WATER_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы сканировать &lt;TECHNOLOGY&gt;подводных&lt;&gt; существ.&#xA;За сканирование существ вы получаете &lt;STELLAR&gt;юниты&lt;&gt;. Переименовывайте и загружайте свои открытия, чтобы зарабатывать &lt;STELLAR&gt;наниты&lt;&gt;.&#xA;Вызовите страницу &lt;TECHNOLOGY&gt;открытий&lt;&gt; планеты, чтобы узнать, где и когда искать определенных существ.
                                { "Russian", "Используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы сканировать &lt;TECHNOLOGY&gt;подводных&lt;&gt; существ.&#xA;За сканирование существ вы получаете &lt;STELLAR&gt;юниты&lt;&gt;. Переименовывайте и загружайте свои открытия, чтобы зарабатывать &lt;STELLAR&gt;наниты&lt;&gt;.&#xA;Откройте страницу &lt;TECHNOLOGY&gt;открытий&lt;&gt; планеты, чтобы узнать, где и когда искать определенных существ." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_CRE_WEIRD_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы сканировать существ в &lt;SPECIAL&gt;экзотических&lt;&gt; мирах.&#xA;&lt;TECHNOLOGY&gt;Сканируйте&lt;&gt; (&lt;IMG&gt;SHIPSCAN&lt;&gt;) планеты из космоса, чтобы находить экзотические биомы.&#xA;За сканирование существ вы получаете &lt;STELLAR&gt;юниты&lt;&gt;. Переименовывайте и загружайте свои открытия, чтобы зарабатывать &lt;STELLAR&gt;наниты&lt;&gt;.&#xA;Вызовите страницу &lt;TECHNOLOGY&gt;открытий&lt;&gt; планеты, чтобы узнать, где и когда искать определенных существ.
                                { "Russian", "Используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы сканировать существ в &lt;SPECIAL&gt;экзотических&lt;&gt; мирах.&#xA;&lt;TECHNOLOGY&gt;Сканируйте&lt;&gt; (&lt;IMG&gt;SHIPSCAN&lt;&gt;) планеты из космоса, чтобы находить экзотические биомы.&#xA;За сканирование существ вы получаете &lt;STELLAR&gt;юниты&lt;&gt;. Переименовывайте и загружайте свои открытия, чтобы зарабатывать &lt;STELLAR&gt;наниты&lt;&gt;.&#xA;Откройте страницу &lt;TECHNOLOGY&gt;открытий&lt;&gt; планеты, чтобы узнать, где и когда искать определенных существ." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_CRE_FLYING_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы сканировать &lt;STELLAR&gt;летающих&lt;&gt; животных.&#xA;За сканирование существ вы получаете &lt;STELLAR&gt;юниты&lt;&gt;. Переименовывайте и загружайте свои открытия, чтобы зарабатывать &lt;STELLAR&gt;наниты&lt;&gt;.&#xA;Вызовите страницу &lt;TECHNOLOGY&gt;открытий&lt;&gt; планеты, чтобы узнать, где и когда искать определенных существ.
                                { "Russian", "Используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы сканировать &lt;STELLAR&gt;летающих&lt;&gt; животных.&#xA;За сканирование существ вы получаете &lt;STELLAR&gt;юниты&lt;&gt;. Переименовывайте и загружайте свои открытия, чтобы зарабатывать &lt;STELLAR&gt;наниты&lt;&gt;.&#xA;Откройте страницу &lt;TECHNOLOGY&gt;открытий&lt;&gt; планеты, чтобы узнать, где и когда искать определенных существ." },
                            }
                        },
                        --#endregion

                        --#region UI_EXPED_CRE_WEIRD_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_CRE_WEIRD_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите существ в &lt;SPECIAL&gt;экзотических&lt;&gt; мирах: %CURRENT%/%AMOUNT%&#xA;Используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы сканировать формы жизни.&#xA;Переименовывайте и загружайте свои открытия, чтобы зарабатывать &lt;STELLAR&gt;наниты&lt;&gt;.
                                { "Russian", "Найдите существ в &lt;SPECIAL&gt;экзотических&lt;&gt; мирах: %CURRENT%/%AMOUNT%&#xA;Сканируйте существ &lt;TECHNOLOGY&gt;анализирующий визором&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)&#xA;Переименовывайте и загружайте свои открытия,&#xA;чтобы зарабатывать &lt;STELLAR&gt;наниты&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_CRE_WEIRD_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите существ в &lt;SPECIAL&gt;экзотических&lt;&gt; мирах: %CURRENT%/%AMOUNT%&#xA;В данной системе экзотические планеты не найдены.&#xA;Установите &lt;TECHNOLOGY&gt;гипердвигатель&lt;&gt;, чтобы добраться до новой системы.
                                { "Russian", "Найдите существ в &lt;SPECIAL&gt;экзотических&lt;&gt; мирах: %CURRENT%/%AMOUNT%&#xA;В данной системе экзотические планеты не найдены&#xA;Установите &lt;TECHNOLOGY&gt;гипердвигатель&lt;&gt;, чтобы добраться до иной системы" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_CRE_WEIRD_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите существ в &lt;SPECIAL&gt;экзотических&lt;&gt; мирах: %CURRENT%/%AMOUNT%&#xA;В данной системе экзотические планеты не найдены.&#xA;Находясь в космосе, выберите новую систему на галактической карте (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                { "Russian", "Найдите существ в &lt;SPECIAL&gt;экзотических&lt;&gt; мирах: %CURRENT%/%AMOUNT%&#xA;В данной системе экзотические планеты не найдены&#xA;Находясь в космосе, выберите иную систему&#xA;на галактической карте (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_CRE_WEIRD_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите существ в &lt;SPECIAL&gt;экзотических&lt;&gt; мирах: %CURRENT%/%AMOUNT%&#xA;Экзотическая планета обнаружена в &lt;STELLAR&gt;другом месте&lt;&gt; этой системы.&#xA;&lt;STELLAR&gt;Вернитесь в космос&lt;&gt;, чтобы узнать характеристики планеты.
                                { "Russian", "Найдите существ в &lt;SPECIAL&gt;экзотических&lt;&gt; мирах: %CURRENT%/%AMOUNT%&#xA;Экзотическая планета обнаружена в &lt;STELLAR&gt;другом месте&lt;&gt; этой системы&#xA;&lt;STELLAR&gt;Вернитесь в космос&lt;&gt;, чтобы узнать характеристики планеты" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_CRE_WEIRD_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите существ в &lt;SPECIAL&gt;экзотических&lt;&gt; мирах: %CURRENT%/%AMOUNT%&#xA;Неподалеку обнаружена экзотическая планета.&#xA;Используйте &lt;TECHNOLOGY&gt;сканер звездолета&lt;&gt;, чтобы исследовать планеты из космоса.
                                { "Russian", "Найдите существ в &lt;SPECIAL&gt;экзотических&lt;&gt; мирах: %CURRENT%/%AMOUNT%&#xA;Неподалеку обнаружена экзотическая планета&#xA;Используйте &lt;TECHNOLOGY&gt;сканер звездолёта&lt;&gt;, чтобы исследовать планеты из космоса" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_CRE_WEIRD_MSG5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите существ в &lt;SPECIAL&gt;экзотических&lt;&gt; мирах: %CURRENT%/%AMOUNT%&#xA;Используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы сканировать формы жизни.&#xA;Переименовывайте и загружайте свои открытия, чтобы зарабатывать &lt;STELLAR&gt;наниты&lt;&gt;.
                                { "Russian", "Найдите существ в &lt;SPECIAL&gt;экзотических&lt;&gt; мирах: %CURRENT%/%AMOUNT%&#xA;Сканируйте существ &lt;TECHNOLOGY&gt;анализирующим визором&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)&#xA;Переименовывайте и загружайте свои открытия,&#xA;чтобы зарабатывать &lt;STELLAR&gt;наниты&lt;&gt;" },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_DIVE_DEEP_MSG0" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Спуститесь в глубины океана: %CURRENT%/%AMOUNT% ед.&#xA;В данной системе вода не обнаружена.&#xA;Найдите планеты с &lt;TECHNOLOGY&gt;водой&lt;&gt; на галактической карте.
                                { "Russian", "Спуститесь в глубины океана: %CURRENT%/%AMOUNT% ед.&#xA;В данной системе вода не обнаружена&#xA;Найдите планеты с &lt;TECHNOLOGY&gt;водой&lt;&gt; на галактической карте" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_DIVE_DEEP_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Спуститесь в глубины океана: %CURRENT%/%AMOUNT% ед.&#xA;На данной планете вода не обнаружена.
                                { "Russian", "Спуститесь в глубины океана: %CURRENT%/%AMOUNT% ед.&#xA;На данной планете вода не обнаружена" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_DIVE_DEEP_MSG1A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Спуститесь в глубины океана: %CURRENT%/%AMOUNT% ед.&#xA;Приземлитесь на планету с &lt;TECHNOLOGY&gt;водой&lt;&gt;.
                                { "Russian", "Спуститесь в глубины океана: %CURRENT%/%AMOUNT% ед.&#xA;Приземлитесь на планету с &lt;TECHNOLOGY&gt;водой&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_DIVE_DEEP_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Спуститесь в глубины океана: %CURRENT%/%AMOUNT% ед.
                                -- Reach ocean depths: %CURRENT%/%AMOUNT%u
                                { "Russian", "Спуститесь в глубины океана: %CURRENT%/%AMOUNT% ед." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_WORM6_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Переживите экстремально жаркие бури: %CURRENT%u/%AMOUNT%u
                                -- Endure extreme heat storms: %CURRENT%u/%AMOUNT%u
                                { "Russian", "Переживите экстремально жаркие бури: %CURRENT%/%AMOUNT% ед." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_WORM6_DESC_D" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вы пережили экстремальную жару в течение %NUM%u
                                -- Endured extreme heat for %NUM%u
                                { "Russian", "Вы прошли в экстремальной жаре %NUM% ед." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_HOT_WALK_OBJ" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Пережить экстремальную жару вне транспорта: %CURRENT%u/%AMOUNT%u
                                -- Survive while walking through extreme heat: %CURRENT%u/%AMOUNT%u
                                { "Russian", "Пройти пешком в экстремальной жаре %AMOUNT% ед." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_HOT_WALK_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Пройдите через &lt;FUEL&gt;экстремально жаркую бурю&lt;&gt;: %CURRENT%u/%AMOUNT%u&#xA;В этой системе не обнаружены планеты с экстремальной жарой.
                                -- Walk through an &lt;FUEL&gt;extreme heat storm&lt;&gt;: %CURRENT%u/%AMOUNT%u&#xA;No extreme heat planets detected in current system
                                { "Russian", "Пройдите через &lt;FUEL&gt;экстремально жаркую бурю&lt;&gt;: %CURRENT%/%AMOUNT% ед.&#xA;В этой системе не обнаружены планеты с экстремальной жарой" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_HOT_WALK_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Пройдите через &lt;FUEL&gt;экстремально жаркую бурю&lt;&gt;: %CURRENT%u/%AMOUNT%u&#xA;В этой системе &lt;TRADEABLE&gt;обнаружена&lt;&gt; планета с экстремальной жарой.&#xA;&lt;TECHNOLOGY&gt;Сканируйте&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;) планеты из космоса, чтобы собрать о них сведения.
                                { "Russian", "Пройдите через &lt;FUEL&gt;экстремально жаркую бурю&lt;&gt;: %CURRENT%/%AMOUNT% ед.&#xA;В этой системе &lt;TRADEABLE&gt;обнаружена&lt;&gt; экстремально жаркая планета&#xA;&lt;TECHNOLOGY&gt;Сканируйте&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;) планеты из космоса, чтобы собрать о них сведения" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_HOT_WALK_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Пройдите через &lt;FUEL&gt;экстремально жаркую бурю&lt;&gt;: %CURRENT%u/%AMOUNT%u&#xA;&lt;STELLAR&gt;Найдены&lt;&gt; условия для экстремально жаркой бури!&#xA;Дождитесь начала бури...
                                -- Walk through an &lt;FUEL&gt;extreme heat storm&lt;&gt;: %CURRENT%u/%AMOUNT%u&#xA;Extreme heat storm conditions &lt;STELLAR&gt;detected!&lt;&gt;&#xA;Await the onset of the storm...
                                { "Russian", "Пройдите через &lt;FUEL&gt;экстремально жаркую бурю&lt;&gt;: %CURRENT%/%AMOUNT% ед.&#xA;&lt;STELLAR&gt;Обнаружены&lt;&gt; условия для экстремально жаркой бури!&#xA;Дождитесь начала бури..." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_HOT_WALK_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Пройдите через &lt;FUEL&gt;экстремально жаркую бурю&lt;&gt;: %CURRENT%u/%AMOUNT%u&#xA;Здесь &lt;TRADEABLE&gt;бушует&lt;&gt; экстремально жаркая буря!&#xA;&lt;STELLAR&gt;Настоятельно рекомендуется&lt;&gt; улучшить &lt;TECHNOLOGY&gt;защиту от вредных факторов&lt;&gt;.
                                { "Russian", "Пройдите через &lt;FUEL&gt;экстремально жаркую бурю&lt;&gt;: %CURRENT%/%AMOUNT% ед.&#xA;Здесь &lt;TRADEABLE&gt;бушует&lt;&gt; экстремально жаркая буря!&#xA;&lt;STELLAR&gt;Настоятельно рекомендуется&lt;&gt; улучшить &lt;TECHNOLOGY&gt;защиту от вредных факторов&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_PET_DISTANCE_MSG_ALT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Оседлайте питомца: %CURRENT%/%AMOUNT% ед.&#xA;Выбирайте направление с помощью &lt;IMG&gt;PLAYER_LR&lt;&gt;&#xA;Чтобы ехать быстрее, нажмите &lt;IMG&gt;RUN&lt;&gt;&#xA;Чтобы слезть с питомца, нажмите &lt;IMG&gt;JUMP&lt;&gt;
                                -- Ride a creature companion: %CURRENT%u/%AMOUNT%u&#xA;Suggest directions with &lt;IMG&gt;PLAYER_LR&lt;&gt;&#xA;Move faster with &lt;IMG&gt;RUN&lt;&gt;&#xA;Dismount with &lt;IMG&gt;JUMP&lt;&gt;
                                { "Russian", "Проедьтесь на питомце: %CURRENT%/%AMOUNT% ед.&#xA;Выбирайте направление с помощью &lt;IMG&gt;PLAYER_LR&lt;&gt;&#xA;Чтобы ехать быстрее, нажмите &lt;IMG&gt;RUN&lt;&gt;&#xA;Чтобы слезть с питомца, нажмите &lt;IMG&gt;JUMP&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_PET_DISTANCE_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Оседлайте питомца и найдите свой корабль: %CURRENT%/%AMOUNT% ед.&#xA;Призовите питомца с помощью &lt;TECHNOLOGY&gt;быстрого меню&lt;&gt; (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                { "Russian", "Доедьте на питомце до своего корабля: %CURRENT%/%AMOUNT% ед.&#xA;Призовите питомца из &lt;TECHNOLOGY&gt;быстрого меню&lt;&gt; (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_PET_DISTANCE_MSG2_ALT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Оседлайте питомца: %CURRENT%/%AMOUNT% ед.&#xA;Призовите питомца с помощью &lt;TECHNOLOGY&gt;быстрого меню&lt;&gt; (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                { "Russian", "Проедьтесь на питомце: %CURRENT%/%AMOUNT% ед.&#xA;Призовите питомца из &lt;TECHNOLOGY&gt;быстрого меню&lt;&gt; (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_PET_DISTANCE_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Оседлайте питомца: %CURRENT%/%AMOUNT% ед.&#xA;Чтобы приручить животных, воспользуйтесь &lt;TRADEABLE&gt;питательными гранулами&lt;&gt;&#xA;Используйте анализирующий визор (&lt;IMG&gt;AIM&lt;&gt;), чтобы находить животных на &lt;TRADEABLE&gt;обитаемых планетах&lt;&gt;
                                { "Russian", "Проедьтесь на питомце: %CURRENT%/%AMOUNT% ед.&#xA;Чтобы приручить животных, воспользуйтесь &lt;TRADEABLE&gt;питательными гранулами&lt;&gt;&#xA;Используйте анализирующий визор (&lt;IMG&gt;AIM&lt;&gt;), чтобы находить животных на &lt;TRADEABLE&gt;обитаемых планетах&lt;&gt;" },
                            }
                        },

                        --#region UI_EXPED_VISIT_PLANET_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_VISIT_PLANET_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Высадитесь на планету.&#xA;Войдите на свой &lt;TECHNOLOGY&gt;звездолет&lt;&gt;, чтобы начать поиск.
                                -- Set foot upon a planet&#xA;Enter your &lt;TECHNOLOGY&gt;starship&lt;&gt; to begin the search
                                { "Russian", "Высадитесь на планету&#xA;Сядьте в &lt;TECHNOLOGY&gt;звездолёт&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_VISIT_PLANET_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Высадитесь на планету.&#xA;Удерживайте &lt;IMG&gt;THRUST&lt;&gt;, чтобы взлететь.
                                { "Russian", "Высадитесь на планету&#xA;Удерживайте &lt;IMG&gt;THRUST&lt;&gt;, чтобы взлететь" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_VISIT_PLANET_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Высадитесь на планету.&#xA;Сканируйте миры с помощью &lt;IMG&gt;SHIPSCAN&lt;&gt;, чтобы найти подходящее для посадки место.
                                -- Set foot upon a planet&#xA;Scan worlds with &lt;IMG&gt;SHIPSCAN&lt;&gt; to locate a suitable landing site
                                { "Russian", "Высадитесь на планету&#xA;Сканируйте планеты с помощью &lt;IMG&gt;SHIPSCAN&lt;&gt;, чтобы найти подходящее место" },
                            }
                        },
                        --#endregion

                        --#region UI_EXPED_BUILD_PART_.*_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_BUILD_PART_F_MSG0" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Заполучите &lt;TECHNOLOGY&gt;межзвездный грузовой корабль&lt;&gt;: 0/1&#xA;Совершайте варп-прыжки в новые системы, чтобы найти &lt;STELLAR&gt;группы грузовых кораблей&lt;&gt;.&#xA;Грузовые корабли ведут торговлю у космических станций.
                                -- Acquire an &lt;TECHNOLOGY&gt;interstellar freighter&lt;&gt;: 0/1&#xA;Warp to new systems to find &lt;STELLAR&gt;freighter groups&lt;&gt;&#xA;Freighters trade near space stations
                                { "Russian", "Заполучите &lt;TECHNOLOGY&gt;межзвёздное грузовое судно&lt;&gt;: 0/1&#xA;Совершайте варп-прыжки в новые системы,&#xA;чтобы найти &lt;STELLAR&gt;группы грузовых кораблей&lt;&gt;&#xA;Грузовые корабли ведут торговлю у космических станций" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_BUILD_PART_F_MSG1_A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Изучите строительный чертеж «&lt;TECHNOLOGY&gt;%ITEM%&lt;&gt;».&#xA;Требуется &lt;STELLAR&gt;извлеченных модулей фрегатов&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Покупайте чертежи в &lt;TECHNOLOGY&gt;терминале улучшения&lt;&gt; грузового судна.
                                -- Learn the &lt;TECHNOLOGY&gt;%ITEM%&lt;&gt; construction blueprint&#xA;&lt;STELLAR&gt;Salvaged frigate modules&lt;&gt; required: %CURRENT%/%AMOUNT%&#xA;Purchase blueprints at the freighter's &lt;TECHNOLOGY&gt;Upgrade Terminal&lt;&gt;
                                { "Russian", "Изучите строительный чертеж: &lt;TECHNOLOGY&gt;%ITEM%&lt;&gt;&#xA;Требуется &lt;STELLAR&gt;извлеченных модулей фрегатов&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Покупайте чертежи через &lt;TECHNOLOGY&gt;терминал улучшений&lt;&gt;&#xA;на грузовом судне" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_BUILD_PART_F_MSG1_B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Изучите строительный чертеж «&lt;TECHNOLOGY&gt;%ITEM%&lt;&gt;».&#xA;Покупайте чертежи в &lt;STELLAR&gt;терминале управления улучшениями&lt;&gt;.&#xA;Терминал расположен на мостике грузового судна.
                                -- Learn the &lt;TECHNOLOGY&gt;%ITEM%&lt;&gt; construction blueprint&#xA;Purchase blueprints at the &lt;STELLAR&gt;Upgrade Control Terminal&lt;&gt;&#xA;The terminal is located in the freighter's bridge
                                { "Russian", "Изучите строительный чертеж: &lt;TECHNOLOGY&gt;%ITEM%&lt;&gt;&#xA;Покупайте чертежи через &lt;STELLAR&gt;терминал улучшений&lt;&gt;&#xA;Терминал расположен на мостике грузового судна" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_BUILD_PART_F_MSG1_ALT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Изучите строительный чертеж «&lt;TECHNOLOGY&gt;%ITEM%&lt;&gt;».&#xA;Получить его можно за выполнение этапа «&lt;EXPED&gt;%MILESTONE%&lt;&gt;».
                                -- Learn the &lt;TECHNOLOGY&gt;%ITEM%&lt;&gt; construction blueprint&#xA;This blueprint is rewarded by the &lt;EXPED&gt;%MILESTONE%&lt;&gt; milestone
                                { "Russian", "Изучите строительный чертеж: &lt;TECHNOLOGY&gt;%ITEM%&lt;&gt;&#xA;Получите его, выполнив этап &lt;EXPED&gt;%MILESTONE%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_BUILD_PART_F_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Постройте: &lt;TECHNOLOGY&gt;%ITEM%&lt;&gt;&#xA;Вернитесь на свое грузовое судно, чтобы начать строительство.
                                -- Construct the &lt;TECHNOLOGY&gt;%ITEM%&lt;&gt;&#xA;Return to your freighter to begin construction
                                { "Russian", "Постройте: &lt;TECHNOLOGY&gt;%ITEM%&lt;&gt;&#xA;Вернитесь на свое грузовое судно" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_BUILD_PART_F_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Постройте: &lt;TECHNOLOGY&gt;%ITEM%&lt;&gt;&#xA;Откройте &lt;TECHNOLOGY&gt;меню созидания&lt;&gt; с помощью &lt;IMG&gt;BUILD_MENU&lt;&gt;.&#xA;Компоненты грузового судна устанавливаются в виде &lt;STELLAR&gt;целых отсеков&lt;&gt;.
                                -- Construct the &lt;TECHNOLOGY&gt;%ITEM%&lt;&gt;&#xA;Open the &lt;TECHNOLOGY&gt;Build Menu&lt;&gt; with &lt;IMG&gt;BUILD_MENU&lt;&gt;&#xA;Freighter components are placed as an &lt;STELLAR&gt;entire room&lt;&gt;
                                { "Russian", "Постройте: &lt;TECHNOLOGY&gt;%ITEM%&lt;&gt;&#xA;Откройте &lt;TECHNOLOGY&gt;меню строительства&lt;&gt; с помощью &lt;IMG&gt;BUILD_MENU&lt;&gt;&#xA;Компоненты грузового судна устанавливаются&#xA;в виде &lt;STELLAR&gt;целых отсеков&lt;&gt;" },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_POOP_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите образцы навоза: %CURRENT%/%AMOUNT%.&#xA;Накормленные животные оставляют образцы навоза.&#xA;Существа отображаются в &lt;TECHNOLOGY&gt;анализирующем визоре&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;) в виде &lt;FUEL&gt;красных точек&lt;&gt;&#xA;или &lt;TRADEABLE&gt;зеленых отпечатков лап&lt;&gt;.
                                { "Russian", "Найдите образцы навоза: %CURRENT%/%AMOUNT%&#xA;Накормленные животные оставляют навоз&#xA;Существа отображаются в &lt;TECHNOLOGY&gt;анализирующем визоре&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)&#xA;в виде &lt;FUEL&gt;красных точек&lt;&gt; или &lt;TRADEABLE&gt;зеленых отпечатков лап&lt;&gt;" },
                            }
                        },

                        --#region UI_EXPED_LEAVE_GALAXY_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_LEAVE_GALAXY_MSG_WARN1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;FUEL&gt;ВНИМАНИЕ:&lt;&gt; уход из этой галактики — &lt;FUEL&gt;предпоследний этап&lt;&gt; экспедиции.&#xA;Перед отправкой в путь доберитесь до &lt;EXPED&gt;места встречи 5&lt;&gt;.
                                { "Russian", "&lt;FUEL&gt;ВНИМАНИЕ!&lt;&gt; Уход из этой галактики — &lt;FUEL&gt;предпоследний этап&lt;&gt; экспедиции&#xA;Перед отправкой доберитесь до &lt;EXPED&gt;5-го места встречи&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_LEAVE_GALAXY_MSG_WARN2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;FUEL&gt;ВНИМАНИЕ:&lt;&gt; уход из этой галактики — &lt;FUEL&gt;последний этап&lt;&gt; экспедиции.&#xA;Перед отправкой в путь пройдите этап &lt;EXPED&gt;Хлебные крошки&lt;&gt;
                                { "Russian", "&lt;FUEL&gt;ВНИМАНИЕ!&lt;&gt; Уход из этой галактики — &lt;FUEL&gt;последний этап&lt;&gt; экспедиции&#xA;Перед отправкой пройдите этап &lt;EXPED&gt;Хлебные крошки&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_LEAVE_GALAXY_MSG2_WRN1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;SLASH&lt;&gt; &lt;STELLAR&gt;Галактическое ядро рядом! Доступен межгалактический туннель.&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt;&#xA;&lt;FUEL&gt;ВНИМАНИЕ:&lt;&gt; уход из этой галактики — &lt;FUEL&gt;последний этап&lt;&gt; экспедиции.&#xA;Перед отправкой в путь доберитесь до &lt;EXPED&gt;5-го места встречи&lt;&gt;
                                -- &lt;IMG&gt;SLASH&lt;&gt; &lt;STELLAR&gt;Galactic Core Adjacent! Intergalactic Tunnel Available&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt;&#xA;&lt;FUEL&gt;WARNING:&lt;&gt; Leaving this galaxy is the &lt;FUEL&gt;final step&lt;&gt; of the Expedition&#xA;Reach the &lt;EXPED&gt;5th rendezvous&lt;&gt; before proceeding
                                { "Russian", "&lt;IMG&gt;SLASH&lt;&gt; &lt;STELLAR&gt;Галактическое ядро рядом! Доступен межгалактический туннель&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt;&#xA;&lt;FUEL&gt;ВНИМАНИЕ!&lt;&gt; Уход из этой галактики — &lt;FUEL&gt;последний этап&lt;&gt; экспедиции&#xA;Перед отправкой доберитесь до &lt;EXPED&gt;5-го места встречи&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_LEAVE_GALAXY_MSG2_WRN2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;SLASH&lt;&gt; &lt;STELLAR&gt;Галактическое ядро рядом! Доступен межгалактический туннель.&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt;&#xA;&lt;FUEL&gt;ВНИМАНИЕ:&lt;&gt; уход из этой галактики — &lt;FUEL&gt;последний этап&lt;&gt; экспедиции.&#xA;Перед отправкой в путь пройдите этап &lt;EXPED&gt;Хлебные крошки&lt;&gt;.
                                { "Russian", "&lt;IMG&gt;SLASH&lt;&gt; &lt;STELLAR&gt;Галактическое ядро рядом! Доступен межгалактический туннель&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt;&#xA;&lt;FUEL&gt;ВНИМАНИЕ!&lt;&gt; Уход из этой галактики — &lt;FUEL&gt;последний этап&lt;&gt; экспедиции&#xA;Перед отправкой пройдите этап &lt;EXPED&gt;Хлебные крошки&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_LEAVE_GALAXY_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Совершите варп-прыжок через &lt;SPECIAL&gt;галактическое ядро&lt;&gt; из системы последнего места встречи&#xA;Находясь в космосе, вызовите быстрое меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;) и откройте галактическую карту&#xA;Используйте &lt;IMG&gt;GALAXY_NAV_R&lt;&gt; / &lt;IMG&gt;GALAXY_NAV_L&lt;&gt;, чтобы выбрать галактическое ядро в качестве пункта назначения&#xA;Нажмите и удерживайте &lt;IMG&gt;LOOK&lt;&gt;, чтобы выбрать ядро
                                { "Russian", "Совершите прыжок через &lt;SPECIAL&gt;галактическое ядро&lt;&gt; из системы последнего места встречи&#xA;Находясь в космосе, откройте галактическую карту из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)&#xA;Используйте &lt;IMG&gt;GALAXY_NAV_R&lt;&gt; / &lt;IMG&gt;GALAXY_NAV_L&lt;&gt;, чтобы выбрать ядро в качестве пункта назначения&#xA;Нажмите и удерживайте &lt;IMG&gt;LOOK&lt;&gt;, чтобы выбрать ядро" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_LEAVE_GALAXY_MSG_PC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Совершите варп-прыжок через &lt;SPECIAL&gt;галактическое ядро&lt;&gt; из системы последнего места встречи&#xA;Находясь в космосе, вызовите быстрое меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;) и откройте галактическую карту&#xA;Используйте &lt;IMG&gt;GALAXY_NAV_R&lt;&gt; / &lt;IMG&gt;GALAXY_NAV_L&lt;&gt;, чтобы выбрать галактическое ядро в качестве пункта назначения&#xA;Наведите курсор на ядро, затем нажмите и удерживайте &lt;IMG&gt;SELECT&lt;&gt;, чтобы его выбрать
                                { "Russian", "Совершите прыжок через &lt;SPECIAL&gt;галактическое ядро&lt;&gt; из системы последнего места встречи&#xA;Находясь в космосе, откройте галактическую карту из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)&#xA;Используйте &lt;IMG&gt;GALAXY_NAV_R&lt;&gt; / &lt;IMG&gt;GALAXY_NAV_L&lt;&gt;, чтобы выбрать ядро в качестве пункта назначения&#xA;Наведите курсор на ядро, затем нажмите и удерживайте &lt;IMG&gt;SELECT&lt;&gt;, чтобы его выбрать" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_LEAVE_GALAXY_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;SLASH&lt;&gt; &lt;STELLAR&gt;Галактическое ядро рядом! Доступен межгалактический туннель.&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt;&#xA;Находясь в космосе, вызовите быстрое меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;) и откройте галактическую карту&#xA;Используйте &lt;IMG&gt;GALAXY_NAV_R&lt;&gt; / &lt;IMG&gt;GALAXY_NAV_L&lt;&gt;, чтобы выбрать галактическое ядро в качестве пункта назначения&#xA;Нажмите и удерживайте &lt;IMG&gt;LOOK&lt;&gt;, чтобы выбрать ядро
                                { "Russian", "&lt;IMG&gt;SLASH&lt;&gt; &lt;STELLAR&gt;Галактическое ядро рядом! Доступен межгалактический туннель&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt;&#xA;Находясь в космосе, откройте галактическую карту из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)&#xA;Используйте &lt;IMG&gt;GALAXY_NAV_R&lt;&gt; / &lt;IMG&gt;GALAXY_NAV_L&lt;&gt;, чтобы выбрать ядро в качестве пункта назначения&#xA;Нажмите и удерживайте &lt;IMG&gt;LOOK&lt;&gt;, чтобы выбрать ядро" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_LEAVE_GALAXY_MSG2_PC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;SLASH&lt;&gt; &lt;STELLAR&gt;Галактическое ядро рядом! Доступен межгалактический туннель.&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt;&#xA;Находясь в космосе, вызовите быстрое меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;) и откройте галактическую карту&#xA;Используйте &lt;IMG&gt;GALAXY_NAV_R&lt;&gt; / &lt;IMG&gt;GALAXY_NAV_L&lt;&gt;, чтобы выбрать галактическое ядро в качестве пункта назначения&#xA;Наведите курсор на ядро, затем нажмите и удерживайте &lt;IMG&gt;SELECT&lt;&gt;, чтобы его выбрать
                                { "Russian", "&lt;IMG&gt;SLASH&lt;&gt; &lt;STELLAR&gt;Галактическое ядро рядом! Доступен межгалактический туннель&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt;&#xA;Находясь в космосе, откройте галактическую карту из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)&#xA;Используйте &lt;IMG&gt;GALAXY_NAV_R&lt;&gt; / &lt;IMG&gt;GALAXY_NAV_L&lt;&gt;, чтобы выбрать ядро в качестве пункта назначения&#xA;Наведите курсор на ядро, затем нажмите и удерживайте &lt;IMG&gt;SELECT&lt;&gt;, чтобы его выбрать" },
                            }
                        },
                        --#endregion

                    }
                },
                { -- LANGUAGE/NMS_LOC8_RUSSIAN.MBIN
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_LOC8_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MILESTONE_OBJECTIVE_FORMAT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Текущая цель: &lt;VAL_ON&gt;%OBJECTIVE%&lt;&gt;
                                -- Current Objective: &lt;VAL_ON&gt;%OBJECTIVE%&lt;&gt;
                                { "Russian", "Цель: &lt;VAL_ON&gt;%OBJECTIVE%&lt;&gt;" },
                            }
                        },

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED12_DETAIL_LINE2B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Следуйте по пути, ведущем через галактику. Доберитесь до каждого &lt;SPECIAL&gt;места встречи&lt;&gt;, чтобы получить ценные награды.
                                { "Russian", "Следуйте по пути через галактику к &lt;SPECIAL&gt;местам встречи﻿,&lt;&gt; чтобы получить ценные награды." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED12_DETAIL_LINE3A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Следуйте по пути, ведущем через галактику. Доберитесь до каждого &lt;SPECIAL&gt;места встречи&lt;&gt;, чтобы получить ценные награды.
                                { "Russian", "Следуйте по пути через галактику к &lt;SPECIAL&gt;местам встречи﻿,&lt;&gt; чтобы получить ценные награды." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED13_DETAIL_LINE2B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Следуйте по пути, ведущем через галактику. Доберитесь до каждого &lt;SPECIAL&gt;места встречи&lt;&gt;, чтобы получить ценные награды.
                                { "Russian", "Следуйте по пути через галактику к &lt;SPECIAL&gt;местам встречи﻿,&lt;&gt; чтобы получить ценные награды." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED13_DETAIL_LINE3A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Следуйте по пути, ведущем через галактику. Доберитесь до каждого &lt;SPECIAL&gt;места встречи&lt;&gt;, чтобы получить ценные награды.
                                { "Russian", "Следуйте по пути через галактику к &lt;SPECIAL&gt;местам встречи﻿,&lt;&gt; чтобы получить ценные награды." },
                            }
                        },

                        --#region UI_EXPED_WATER_DETAIL
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_WATER_DETAIL2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Приобрести улучшения для &lt;TECHNOLOGY&gt;аэрационной мембраны&lt;&gt; можно на борту &lt;COMMODITY&gt;космической станции&lt;&gt; или &lt;SPECIAL&gt;Аномалии&lt;&gt;.
                                { "Russian", "Покупайте улучшения &lt;TECHNOLOGY&gt;аэрационной мембраны&lt;&gt; на &lt;COMMODITY&gt;космической станции&lt;&gt; или &lt;SPECIAL&gt;Аномалии&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_WATER_DETAIL3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вызовите &lt;STELLAR&gt;подводную лодку «Наутилон»&lt;&gt;, чтобы исследовать морские глубины.
                                { "Russian", "Вызовите &lt;STELLAR&gt;подводную лодку «Наутилон»&lt;&gt;, чтобы исследовать морские глубины" },
                            }
                        },
                        --#endregion

                        --#region UI_SEASON_[0-9]+_MAIN_TITLE
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SEASON_14_MAIN_TITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Экспедиция четырнадцать «Ликвидаторы»
                                { "Russian", "Экспедиция №14: Ликвидаторы" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SEASON_9_MAIN_TITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Девятая экспедиция: «Утопия»
                                { "Russian", "Экспедиция №9: Утопия" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SEASON_10_MAIN_TITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Десятая экспедиция «Сингулярность»
                                { "Russian", "Экспедиция №10: Сингулярность" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SEASON_11_MAIN_TITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Экспедиция одиннадцатая: Путешественники
                                { "Russian", "Экспедиция №11: Путешественники" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SEASON_12_MAIN_TITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Двенадцатая экспедиция «Омега»
                                { "Russian", "Экспедиция №12: Омега" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SEASON_13_MAIN_TITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Экспедиция тринадцать: Дрейф
                                { "Russian", "Экспедиция №13: Дрейф" },
                            }
                        },
                        --#endregion

                        --#region UI_EXPED_SPACE_WALK
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_SPACE_WALK_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Среди звезд
                                { "Russian", "Среди звёзд" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_SPACE_WALK_NAME_U" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- СРЕДИ ЗВЕЗД
                                { "Russian", "СРЕДИ ЗВЁЗД" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_SPACE_WALK_DESC_D" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вы плавали среди звезд
                                { "Russian", "Вы плавали среди звёзд" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_SPACE_WALK_OBJ1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Искать ответы среди звезд
                                { "Russian", "Искать ответы среди звёзд" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_SPACE_WALK_OBJ1_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Ищите ответы среди &lt;TECHNOLOGY&gt;звезд&lt;&gt;.&#xA;&#xA;Находясь в космосе, вызовите Аномалию через быстрое меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                { "Russian", "Ищите ответы среди &lt;TECHNOLOGY&gt;звёзд&lt;&gt;.&#xA;&#xA;Находясь в космосе, вызовите Аномалию через быстрое меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_SPACE_WALK_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Некоторые пути еще не открыты.&#xA;Продолжайте проходить этап «&lt;EXPED&gt;%MISSION%&lt;&gt;», чтобы узнать подробнее.&#xA;Выбрать этап можно в журнале экспедиции (&lt;IMG&gt;OPTIONS&lt;&gt;).
                                -- Some paths are not yet open&#xA;Continue the &lt;EXPED&gt;%MISSION%&lt;&gt; milestone to learn more&#xA;Select milestones from the Expedition log (&lt;IMG&gt;OPTIONS&lt;&gt;)
                                { "Russian", "Некоторые пути еще не открыты&#xA;Продолжайте выполнение этапа &lt;EXPED&gt;%MISSION%&lt;&gt;&#xA;Выбрать этап можно в журнале экспедиции (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_SPACE_WALK_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Ищите ответы среди &lt;TECHNOLOGY&gt;звезд&lt;&gt;.&#xA;Следуйте за сигналом, чтобы найти &lt;SPECIAL&gt;Космическую Аномалию&lt;&gt;.&#xA;Находясь в космосе, вызовите Аномалию через быстрое меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                { "Russian", "Ищите ответы среди &lt;TECHNOLOGY&gt;звёзд&lt;&gt;&#xA;Следуйте за сигналом, чтобы найти &lt;SPECIAL&gt;Космическую Аномалию&lt;&gt;&#xA;Находясь в космосе, вызовите Аномалию из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_SPACE_WALK_MSG2A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Ищите ответы среди &lt;TECHNOLOGY&gt;звезд&lt;&gt;.&#xA;Обратитесь за помощью на &lt;SPECIAL&gt;Космическую Аномалию&lt;&gt;.&#xA;Находясь в космосе, вызовите Аномалию через быстрое меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                -- Seek answers in the &lt;TECHNOLOGY&gt;stars&lt;&gt;&#xA;Search for help aboard the &lt;SPECIAL&gt;Space Anomaly&lt;&gt;&#xA;In space, summon the Anomaly from the Quick Menu (&lt;IMG&gt;QUICK_MENU&lt;&gt;)
                                { "Russian", "Ищите ответы среди &lt;TECHNOLOGY&gt;звёзд&lt;&gt;&#xA;Обратитесь за помощью на &lt;SPECIAL&gt;Космической Аномалии&lt;&gt;&#xA;Находясь в космосе, вызовите Аномалию из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_SPACE_WALK_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сигнал Аномалии: &lt;SPECIAL&gt;искажен&lt;&gt;... &#xA;— &lt;STELLAR&gt;кззкт&lt;&gt; — %GPS% — &lt;STELLAR&gt;кзттззкт&lt;&gt; —&#xA;Изучите журналы на &lt;TECHNOLOGY&gt;главном терминале&lt;&gt;.
                                -- Anomaly signal: &lt;SPECIAL&gt;distorted&lt;&gt;...&#xA;– &lt;STELLAR&gt;kzzkt&lt;&gt; – %GPS% – &lt;STELLAR&gt;kzttzzkt&lt;&gt; –&#xA;Investigate the logs at the &lt;TECHNOLOGY&gt;Prime Terminal&lt;&gt;
                                { "Russian", "Сигнал Аномалии &lt;SPECIAL&gt;искажен&lt;&gt;...&#xA;— &lt;STELLAR&gt;кззкт&lt;&gt; — %GPS% — &lt;STELLAR&gt;кзттззкт&lt;&gt; —&#xA;Изучите журналы на &lt;TECHNOLOGY&gt;главном терминале&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_SPACE_WALK_MSG3A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сигнал Аномалии: &lt;SPECIAL&gt;искажен&lt;&gt;... &#xA;— &lt;STELLAR&gt;кззкт&lt;&gt; — %GPS% — &lt;STELLAR&gt;кзттззкт&lt;&gt; —&#xA;Исследуйте эту аномальную станцию.
                                -- Anomaly signal: &lt;SPECIAL&gt;distorted&lt;&gt;&#xA;– &lt;STELLAR&gt;kzzkt&lt;&gt; – %GPS% – &lt;STELLAR&gt;kzttzzkt&lt;&gt; –&#xA;Explore this anomalous station...
                                { "Russian", "Сигнал Аномалии &lt;SPECIAL&gt;искажен&lt;&gt;...&#xA;— &lt;STELLAR&gt;кззкт&lt;&gt; — %GPS% — &lt;STELLAR&gt;кзттззкт&lt;&gt; —&#xA;Исследуйте эту аномальную станцию" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_SPACE_WALK_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вы нашли чертежи &lt;STELLAR&gt;ковчега сознания&lt;&gt; на &lt;TECHNOLOGY&gt;главном терминале&lt;&gt; Аномалии.&#xA;Создайте ковчег сознания, чтобы загрузить дополнительные данные.&#xA;Чтобы изготовить предмет, откройте инвентарь (&lt;IMG&gt;INVENTORY&lt;&gt;), выберите пустую ячейку и нажмите &lt;IMG&gt;PRODMENU&lt;&gt;.&#xA;&lt;COMMODITY&gt;Закрепить&lt;&gt; подробные инструкции по сборке можно с помощью &lt;IMG&gt;PIN&lt;&gt;.
                                -- &lt;STELLAR&gt;Mind Ark&lt;&gt; plans acquired at the Anomaly's &lt;TECHNOLOGY&gt;Prime Terminal&lt;&gt;&#xA;Construct the mind ark to download additional data&#xA;Open the Inventory (&lt;IMG&gt;INVENTORY&lt;&gt;) and use &lt;IMG&gt;PRODMENU&lt;&gt; to craft in empty slots&#xA;&lt;COMMODITY&gt;Pin&lt;&gt; detailed assembly instructions with &lt;IMG&gt;PIN&lt;&gt;
                                { "Russian", "В &lt;TECHNOLOGY&gt;главном терминале&lt;&gt; Аномалии найден чертеж &lt;STELLAR&gt;ковчега сознания&lt;&gt;&#xA;Создайте его в пустой ячейке инвентаря (&lt;IMG&gt;INVENTORY&lt;&gt;) с помощью &lt;IMG&gt;PRODMENU&lt;&gt;&#xA;&lt;COMMODITY&gt;Закрепляйте&lt;&gt; инструкции сборки с помощью &lt;IMG&gt;PIN&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_SPACE_WALK_MSG5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сигнал Аномалии: &lt;SPECIAL&gt;искажен&lt;&gt;... &#xA;— &lt;STELLAR&gt;кззкт&lt;&gt; — %GPS% — &lt;STELLAR&gt;кзттззкт&lt;&gt; —&#xA;Принесите &lt;STELLAR&gt;ковчег сознания&lt;&gt; к &lt;TECHNOLOGY&gt;главному терминалу&lt;&gt; Аномалии.
                                { "Russian", "Сигнал Аномалии &lt;SPECIAL&gt;искажен&lt;&gt;...&#xA;— &lt;STELLAR&gt;кззкт&lt;&gt; — %GPS% — &lt;STELLAR&gt;кзттззкт&lt;&gt; —&#xA;Принесите &lt;STELLAR&gt;ковчег сознания&lt;&gt; к &lt;TECHNOLOGY&gt;главному терминалу&lt;&gt; Аномалии" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_SPACE_WALK_MSG6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сигнал Аномалии: &lt;SPECIAL&gt;искажен&lt;&gt;...&#xA;Принесите &lt;STELLAR&gt;ковчег сознания&lt;&gt; к &lt;TECHNOLOGY&gt;главному терминалу&lt;&gt; Аномалии.&#xA;Находясь в космосе, вызовите Аномалию из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                { "Russian", "Сигнал Аномалии &lt;SPECIAL&gt;искажен&lt;&gt;...&#xA;Принесите &lt;STELLAR&gt;ковчег сознания&lt;&gt; к &lt;TECHNOLOGY&gt;главному терминалу&lt;&gt; Аномалии&#xA;Находясь в космосе, вызовите Аномалию из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_SPACE_WALK_MSG7A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Ищите ответы среди &lt;TECHNOLOGY&gt;звезд&lt;&gt;.&#xA;— &lt;STELLAR&gt;кззкт&lt;&gt; — %GPS% — &lt;STELLAR&gt;кзттззкт&lt;&gt; —&#xA;Доберитесь до &lt;TECHNOLOGY&gt;пограничного портала&lt;&gt;.
                                { "Russian", "Ищите ответы среди &lt;TECHNOLOGY&gt;звёзд&lt;&gt;&#xA;— &lt;STELLAR&gt;кззкт&lt;&gt; — %GPS% — &lt;STELLAR&gt;кзттззкт&lt;&gt; —&#xA;Доберитесь до &lt;TECHNOLOGY&gt;пограничного портала&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_SPACE_WALK_MSG7B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Ищите ответы среди &lt;TECHNOLOGY&gt;звезд&lt;&gt;.&#xA;Доберитесь до &lt;TECHNOLOGY&gt;пограничного портала&lt;&gt;.&#xA;Находясь в космосе, откройте галактическую карту с помощью быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                { "Russian", "Ищите ответы среди &lt;TECHNOLOGY&gt;звёзд&lt;&gt;&#xA;Доберитесь до &lt;TECHNOLOGY&gt;пограничного портала&lt;&gt;&#xA;Находясь в космосе, откройте галактическую карту из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_SPACE_WALK_MSG7C" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Ищите ответы среди &lt;TECHNOLOGY&gt;звезд&lt;&gt;.&#xA;Доберитесь до &lt;TECHNOLOGY&gt;пограничного портала&lt;&gt;.&#xA;Вернитесь в космос, чтобы открыть &lt;STELLAR&gt;галактическую карту&lt;&gt;.
                                { "Russian", "Ищите ответы среди &lt;TECHNOLOGY&gt;звёзд&lt;&gt;&#xA;Доберитесь до &lt;TECHNOLOGY&gt;пограничного портала&lt;&gt;&#xA;Вернитесь в космос, чтобы открыть &lt;STELLAR&gt;галактическую карту&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_SPACE_WALK_MSG7D" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- При отслеживании сигнала обнаружен аномальный &lt;TECHNOLOGY&gt;пограничный портал&lt;&gt;.&#xA;Вернитесь в космос, чтобы найти его.
                                { "Russian", "При отслеживании сигнала обнаружен аномальный &lt;TECHNOLOGY&gt;пограничный портал&lt;&gt;&#xA;Вернитесь в космос, чтобы найти его" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_SPACE_WALK_MSG7E" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Воссоздайте &lt;TECHNOLOGY&gt;ковчег сознания&lt;&gt;.&#xA;Чтобы создать предмет в пустой ячейке, откройте инвентарь (&lt;IMG&gt;INVENTORY&lt;&gt;) и воспользуйтесь &lt;IMG&gt;PRODMENU&lt;&gt;.&#xA;&lt;COMMODITY&gt;Закрепить&lt;&gt; подробные инструкции по сборе можно с помощью &lt;IMG&gt;PIN&lt;&gt;.
                                { "Russian", "Создайте &lt;TECHNOLOGY&gt;ковчег сознания&lt;&gt; в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;)&#xA;Выберите пустую ячейку и нажмите &lt;IMG&gt;PRODMENU&lt;&gt;&#xA;&lt;COMMODITY&gt;Закрепляйте&lt;&gt; инструкции сборки с помощью &lt;IMG&gt;PIN&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_SPACE_WALK_MSG8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Ищите ответы среди &lt;TECHNOLOGY&gt;звезд&lt;&gt;.&#xA;Переступите порог &lt;TECHNOLOGY&gt;пограничного портала&lt;&gt;.
                                { "Russian", "Ищите ответы среди &lt;TECHNOLOGY&gt;звёзд&lt;&gt;&#xA;Переступите порог &lt;TECHNOLOGY&gt;пограничного портала&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_SPACE_WALK_MSG9" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Ковчег сознания: &lt;SPECIAL&gt;О С В О Б О Ж Д Е Н&lt;&gt;&#xA;Звезды окружают вас,&#xA;но вы так и не приблизились к истине.
                                -- Mind Ark: &lt;SPECIAL&gt;F R E E D&lt;&gt;&#xA;The stars surround you&#xA;But the truth is no closer than before
                                { "Russian", "Ковчег сознания: &lt;SPECIAL&gt;О С В О Б О Ж Д Е Н&lt;&gt;&#xA;Звезды окружают вас,&#xA;но вы так и не приблизились к истине" },
                            }
                        },
                        --#endregion

                        --#region UI_EXPED_STATION_VISIT_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_STATION_VISIT_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Звездолет &lt;FUEL&gt;критически поврежден&lt;&gt;.&#xA;Выберите этап «&lt;EXPED&gt;Маловероятный побег&lt;&gt;», чтобы отремонтировать его.&#xA;Выбрать этап можно на вкладке &lt;STELLAR&gt;экспедиции&lt;&gt; (&lt;IMG&gt;OPTIONS&lt;&gt;)
                                { "Russian", "Звездолёт &lt;FUEL&gt;критически поврежден&lt;&gt;&#xA;Выберите этап &lt;EXPED&gt;Маловероятный побег&lt;&gt;, чтобы отремонтировать его&#xA;Изменить этап можно на вкладке &lt;STELLAR&gt;экспедиции&lt;&gt; (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_STATION_VISIT_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обратитесь за помощью на &lt;COMMODITY&gt;космическую станцию&lt;&gt;.&#xA;Летите в сторону навигационного маяка станции.
                                { "Russian", "Обратитесь за помощью на &lt;COMMODITY&gt;космической станции&lt;&gt;&#xA;Летите в сторону навигационной метки станции" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_STATION_VISIT_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обратитесь за помощью на &lt;COMMODITY&gt;космическую станцию&lt;&gt;.&#xA;Вернитесь к своему кораблю, чтобы отправиться на станцию.
                                { "Russian", "Обратитесь за помощью на &lt;COMMODITY&gt;космической станции&lt;&gt;&#xA;Вернитесь к своему кораблю" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_STATION_VISIT_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Космическая станция &lt;FUEL&gt;заброшена&lt;&gt;.&#xA;Исследуйте пустую станцию.
                                { "Russian", "Космическая станция &lt;FUEL&gt;заброшена&lt;&gt;&#xA;Исследуйте её" },
                            }
                        },
                        --#endregion

                        --#region UI_EXPED13_DETAIL_LINE
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED13_DETAIL_LINE1A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Следите за ходом путешествия на странице &lt;STELLAR&gt;экспедиции&lt;&gt; (&lt;IMG&gt;OPTIONS&lt;&gt;).
                                { "Russian", "Следите за ходом &lt;STELLAR&gt;экспедиции&lt;&gt; (&lt;IMG&gt;OPTIONS&lt;&gt;)." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED13_DETAIL_LINE1B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Следите за ходом путешествия на странице &lt;STELLAR&gt;экспедиции&lt;&gt; (&lt;IMG&gt;OPTIONS&lt;&gt;). Доберитесь до &lt;SPECIAL&gt;Космической Аномалии&lt;&gt;, чтобы забрать сохраненные предметы.
                                { "Russian", "Следите за ходом &lt;STELLAR&gt;экспедиции&lt;&gt; (&lt;IMG&gt;OPTIONS&lt;&gt;). Доберитесь до &lt;SPECIAL&gt;Космической Аномалии&lt;&gt;, чтобы забрать сохраненные предметы." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED13_DETAIL_LINE2A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Получайте &lt;STELLAR&gt;эксклюзивные награды&lt;&gt; за &lt;TECHNOLOGY&gt;этапы&lt;&gt;. Выполнять этапы можно в &lt;TRADEABLE&gt;любом порядке&lt;&gt;.
                                { "Russian", "Выполняйте этапы в &lt;TRADEABLE&gt;любом порядке&lt;&gt; и получите &lt;STELLAR&gt;эксклюзивные награды&lt;&gt;." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED13_DETAIL_LINE4A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Эксклюзивные награды за экспедицию доступны в &lt;STELLAR&gt;любом сохранении&lt;&gt;. Это сохранение останется после завершения экспедиции.
                                { "Russian", "Награды экспедиции доступны в &lt;STELLAR&gt;любом сохранении&lt;&gt;. Это сохранение останется после завершения экспедиции." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED13_DETAIL_LINE4B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вы можете вернуться к основному сохранению&lt;STELLAR&gt;в любое время&lt;&gt;. Эксклюзивные награды за экспедицию доступны с &lt;STELLAR&gt;любого сохранения&lt;&gt;.
                                { "Russian", "Вернуться к основному сохранению можно в &lt;STELLAR&gt;любое время&lt;&gt;. Награды экспедиции доступны в &lt;STELLAR&gt;любом сохранении&lt;&gt;." },
                            }
                        },
                        --#endregion

                        --#region UI_EXPED_SCAVENGER_DESC
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_SCAVENGER_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Почините важнейшее снаряжение.
                                { "Russian", "Почините важнейшее снаряжение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_SCAVENGER_DESC_D" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вы починили важнейшее снаряжение.
                                { "Russian", "Вы починили важнейшее снаряжение" },
                            }
                        },
                        --#endregion

                        --#region UI_EXPED_SCAVENGER_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_SCAVENGER_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Почините поврежденные компоненты &lt;TECHNOLOGY&gt;мультитула&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Починив поврежденные ячейки, вы &lt;STELLAR&gt;освободите место&lt;&gt; для новых улучшений.&#xA;Выберите поврежденную ячейку в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;) и &lt;COMMODITY&gt;закрепите&lt;&gt; (&lt;IMG&gt;PIN&lt;&gt;) руководство по ремонту.&#xA;Переключайте подсказки для текущего задания и другую информацию с помощью&lt;IMG&gt;SHOWHUD&lt;&gt;.
                                { "Russian", "Почините поврежденные компоненты &lt;TECHNOLOGY&gt;мультитула&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Починив ячейки, вы &lt;STELLAR&gt;освободите место&lt;&gt; для новых улучшений&#xA;Выберите поврежденную ячейку в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;)&#xA;и &lt;COMMODITY&gt;закрепите&lt;&gt; (&lt;IMG&gt;PIN&lt;&gt;) руководство по ремонту" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_SCAVENGER_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Почините поврежденные компоненты &lt;TECHNOLOGY&gt;звездолета&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Починив поврежденные ячейки, вы &lt;STELLAR&gt;освободите место&lt;&gt; для новых улучшений.&#xA;Выберите поврежденную ячейку в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;) и &lt;COMMODITY&gt;закрепите&lt;&gt; (&lt;IMG&gt;PIN&lt;&gt;) руководство по ремонту.&#xA;Переключайте подсказки для текущего задания и другую информацию с помощью &lt;IMG&gt;SHOWHUD&lt;&gt;.
                                { "Russian", "Почините поврежденные компоненты &lt;TECHNOLOGY&gt;звездолёта&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Починив ячейки, вы &lt;STELLAR&gt;освободите место&lt;&gt; для новых улучшений&#xA;Выберите поврежденную ячейку в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;)&#xA;и &lt;COMMODITY&gt;закрепите&lt;&gt; (&lt;IMG&gt;PIN&lt;&gt;) руководство по ремонту" },
                            }
                        },
                        --#endregion

                        --#region UI_EXPED_CRE_ROBOT_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_CRE_ROBOT_MSG1A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите синтетических существ: %CURRENT%/%AMOUNT%&#xA;Обнаружить синтетическую жизнь можно в системах с &lt;TECHNOLOGY&gt;синими&lt;&gt; звездами.&#xA;Пройдите этап «&lt;EXPED&gt;%MILESTONE%&lt;&gt;», чтобы изучить необходимые улучшения варп-двигателя.&#xA;Выбрать этап можно в журнале экспедиции (&lt;IMG&gt;OPTIONS&lt;&gt;).
                                { "Russian", "Найдите синтетических существ: %CURRENT%/%AMOUNT%&#xA;Обнаружить синтетическую жизнь можно в системах с &lt;TECHNOLOGY&gt;синими&lt;&gt; звездами&#xA;Пройдите этап &lt;EXPED&gt;%MILESTONE%&lt;&gt;, чтобы изучить необходимые улучшения варп-двигателя&#xA;Выбрать этап можно в журнале экспедиции (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_CRE_ROBOT_MSG1B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите синтетических существ: %CURRENT%/%AMOUNT%&#xA;Обнаружить синтетическую жизнь можно в системах с &lt;TECHNOLOGY&gt;синими&lt;&gt; звездами.&#xA;Установите &lt;TECHNOLOGY&gt;%ITEM%&lt;&gt;, чтобы открыть доступ к продвинутой варп-навигации.&#xA;Закрепите (&lt;IMG&gt;PIN&lt;&gt;) чертежи, чтобы получить подробные инструкции по сборке.
                                { "Russian", "Найдите синтетических существ: %CURRENT%/%AMOUNT%&#xA;Обнаружить синтетическую жизнь можно в системах с &lt;TECHNOLOGY&gt;синими&lt;&gt; звездами&#xA;Установите &lt;TECHNOLOGY&gt;%ITEM%&lt;&gt;, чтобы открыть доступ к продвинутой варп-навигации&#xA;Закрепите (&lt;IMG&gt;PIN&lt;&gt;) чертежи, чтобы получить подробные инструкции по сборке" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_CRE_ROBOT_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите синтетических существ: %CURRENT%/%AMOUNT%&#xA;Обнаружить синтетическую жизнь можно в системах с &lt;TECHNOLOGY&gt;синими&lt;&gt; звездами.&#xA;Находите соответствующие системы с помощью &lt;STELLAR&gt;галактической карты&lt;&gt;.&#xA;Находясь на борту корабля, вы можете открыть карту помощью &lt;IMG&gt;QUICK_MENU&lt;&gt;.
                                { "Russian", "Найдите синтетических существ: %CURRENT%/%AMOUNT%&#xA;Обнаружить синтетическую жизнь можно в системах с &lt;TECHNOLOGY&gt;синими&lt;&gt; звездами&#xA;Находите соответствующие системы с помощью &lt;STELLAR&gt;галактической карты&lt;&gt;&#xA;Находясь на борту корабля, откройте карту с помощью &lt;IMG&gt;QUICK_MENU&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_CRE_ROBOT_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите синтетических существ: %CURRENT%/%AMOUNT%&#xA;На этой планете синтетические формы жизни не обнаружены.&#xA;Вернитесь в космос, чтобы исследовать другие планеты.
                                { "Russian", "Найдите синтетических существ: %CURRENT%/%AMOUNT%&#xA;На этой планете синтетические формы жизни не обнаружены&#xA;Вернитесь в космос, чтобы исследовать другие планеты" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_CRE_ROBOT_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите синтетических существ: %CURRENT%/%AMOUNT%&#xA;На планете неподалеку найдены синтетические формы жизни.
                                { "Russian", "Найдите синтетических существ: %CURRENT%/%AMOUNT%&#xA;На планете неподалеку найдены синтетические формы жизни" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_CRE_ROBOT_MSG5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите синтетических существ: %CURRENT%/%AMOUNT%&#xA;На этой планете обнаружены синтетические формы жизни.&#xA;Удерживайте &lt;IMG&gt;AIM&lt;&gt;, чтобы использовать &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt;.&#xA;Найдите новые виды существ с помощью &lt;IMG&gt;BINOCSCAN&lt;&gt;.
                                { "Russian", "Найдите синтетических существ: %CURRENT%/%AMOUNT%&#xA;На этой планете обнаружены синтетические формы жизни&#xA;Удерживайте &lt;IMG&gt;AIM&lt;&gt;, чтобы использовать &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt;&#xA;Найдите новые виды существ с помощью &lt;IMG&gt;BINOCSCAN&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_CRE_ROBOT_MSG5A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите синтетических существ: %CURRENT%/%AMOUNT%&#xA;Все синтетические формы жизни в этой системе найдены.&#xA;Откройте &lt;TECHNOLOGY&gt;галактическую карту&lt;&gt;, чтобы найти другой подходящий мир.
                                { "Russian", "Найдите синтетических существ: %CURRENT%/%AMOUNT%&#xA;Все синтетические формы жизни в этой системе найдены&#xA;Откройте &lt;TECHNOLOGY&gt;галактическую карту&lt;&gt;, чтобы найти другой подходящий мир" },
                            }
                        },
                        --#endregion

                        --#region UI_EXPED_S13_DREAM_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_S13_DREAM_MSG0" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Мечта мерцает, но остается недостижимой.&#xA;Для продолжения выберите этап «&lt;EXPED&gt;%MILESTONE%&lt;&gt;».&#xA;Выбрать этап экспедиции можно в журнале экспедиции (&lt;IMG&gt;OPTIONS&lt;&gt;).
                                { "Russian", "Мечта мерцает, но остается недостижимой&#xA;Для продолжения выберите этап &lt;EXPED&gt;%MILESTONE%&lt;&gt;&#xA;Сменить этап можно в журнале экспедиции (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_S13_DREAM_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Позвольте своему разуму дрейфовать среди &lt;TECHNOLOGY&gt;звезд&lt;&gt;, пока вы летите через пространство и время.&#xA;&lt;SPECIAL&gt;%SIGNAL%&lt;&gt; Видения танцуют под вашими веками &lt;SPECIAL&gt;%SIGNAL%&lt;&gt;
                                -- Let your mind drift to the &lt;TECHNOLOGY&gt;stars&lt;&gt; as you slip through spacetime&#xA;&lt;SPECIAL&gt;%SIGNAL%&lt;&gt; Visions dance in the space behind your eyes &lt;SPECIAL&gt;%SIGNAL%&lt;&gt;
                                { "Russian", "Позвольте своему разуму дрейфовать среди &lt;TECHNOLOGY&gt;звёзд&lt;&gt;,&#xA;пока вы летите через пространство и время&#xA;&lt;SPECIAL&gt;%SIGNAL%&lt;&gt; Видения танцуют под вашими веками &lt;SPECIAL&gt;%SIGNAL%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_S13_DREAM_MSG1A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Пустота&lt;&gt; видела вас.&#xA;&lt;STELLAR&gt;Звезды&lt;&gt; готовы.&#xA;Покиньте поток и обретите покой (&lt;IMG&gt;BRAKE&lt;&gt;).
                                -- The &lt;SPECIAL&gt;void&lt;&gt; has seen you&#xA;The &lt;STELLAR&gt;stars&lt;&gt; are ready&#xA;Leave the slipstream and be at peace (&lt;IMG&gt;BRAKE&lt;&gt;)
                                { "Russian", "&lt;SPECIAL&gt;Пустота&lt;&gt; увидела вас&#xA;&lt;STELLAR&gt;Звёзды&lt;&gt; готовы&#xA;Покиньте поток и обретите покой (&lt;IMG&gt;BRAKE&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_S13_DREAM_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Подойдите к пустоте и начните мечтать.&#xA;Вернитесь на корабль и направьтесь к &lt;STELLAR&gt;звездам&lt;&gt;.
                                { "Russian", "Направляйтесь к пустоте и начните мечтать&#xA;Вернитесь на корабль и летите к &lt;STELLAR&gt;звёздам&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_S13_DREAM_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Подойдите к &lt;STELLAR&gt;пустоте&lt;&gt; и начните мечтать.&#xA;Позвольте своему разуму дрейфовать среди звезд, пока вы летите через пространство и время (&lt;IMG&gt;PULSEJUMP&lt;&gt;).
                                { "Russian", "Направляйтесь к &lt;STELLAR&gt;пустоте&lt;&gt; и начните мечтать&#xA;Позвольте своему разуму дрейфовать среди звёзд,&#xA;пока вы летите чрез пространство и время (&lt;IMG&gt;PULSEJUMP&lt;&gt;)" },
                            }
                        },
                        --#endregion

                        --#region UI_EXPED_VENTS_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_VENTS_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите &lt;COMMODITY&gt;кристаллический сульфид&lt;&gt; около гидротермальных выходов: %CURRENT%/%AMOUNT%&#xA;Найдите системы с &lt;TECHNOLOGY&gt;водой&lt;&gt; на галактической карте (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                { "Russian", "Соберите &lt;COMMODITY&gt;кристаллический сульфид&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Найдите системы с &lt;TECHNOLOGY&gt;водой&lt;&gt; на галактической карте (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_VENTS_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите &lt;COMMODITY&gt;кристаллический сульфид&lt;&gt; около гидротермальных выходов: %CURRENT%/%AMOUNT%.&#xA;Доберитесь до планеты с &lt;TECHNOLOGY&gt;водой&lt;&gt;.
                                { "Russian", "Соберите &lt;COMMODITY&gt;кристаллический сульфид&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Доберитесь до планеты с &lt;TECHNOLOGY&gt;водой&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_VENTS_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите &lt;COMMODITY&gt;кристаллический сульфид&lt;&gt; около гидротермальных выходов: %CURRENT%/%AMOUNT%.&#xA;Начните поиски на &lt;TECHNOLOGY&gt;глубине&lt;&gt;.
                                { "Russian", "Соберите &lt;COMMODITY&gt;кристаллический сульфид&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Начните поиски на &lt;TECHNOLOGY&gt;глубине&lt;&gt;&#xA;Найдите гидротермальные выходы" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_VENTS_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите &lt;COMMODITY&gt;кристаллический сульфид&lt;&gt; около гидротермальных выходов: %CURRENT%/%AMOUNT%.&#xA;Найдите кристаллический сульфид с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;).&#xA;Используйте (&lt;IMG&gt;INTERACT&lt;&gt;) свечную водоросль, чтобы пополнить запасы кислорода.&#xA;Чтобы найти ее, используйте &lt;TECHNOLOGY&gt;сканер&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;).
                                { "Russian", "Соберите &lt;COMMODITY&gt;кристаллический сульфид&lt;&gt;: %CURRENT%/%AMOUNT%.&#xA;Найдите сульфид с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)&#xA;Используйте (&lt;IMG&gt;INTERACT&lt;&gt;) свечную водоросль для пополнения запасов кислорода&#xA;Чтобы найти ее, используйте &lt;TECHNOLOGY&gt;сканер&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_VENTS_MSG_SURVEY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите &lt;COMMODITY&gt;кристаллический сульфид&lt;&gt; около гидротермальных выходов: %CURRENT%/%AMOUNT%.&#xA;Двигайтесь по &lt;STELLAR&gt;направляющим&lt;&gt;, чтобы найти свою цель.&#xA;&lt;TECHNOLOGY&gt;Разведка цели&lt;&gt; укажет точные координаты &lt;COMMODITY&gt;кристаллического сульфида&lt;&gt;.
                                { "Russian", "Соберите &lt;COMMODITY&gt;кристаллический сульфид&lt;&gt;: %CURRENT%/%AMOUNT%.&#xA;Двигайтесь по &lt;STELLAR&gt;направляющим&lt;&gt;&#xA;&lt;TECHNOLOGY&gt;Разведка цели&lt;&gt; укажет точные координаты" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_VENTS_MSG_SURVEY_OFF" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите &lt;COMMODITY&gt;кристаллический сульфид&lt;&gt; около гидротермальных выходов: %CURRENT%/%AMOUNT%.&#xA;Неподалеку обнаружен выход.&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; в анализирующем визоре &lt;IMG&gt;AIM&lt;&gt;.
                                { "Russian", "Соберите &lt;COMMODITY&gt;кристаллический сульфид&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Неподалеку обнаружен выход&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; в анализирующем визоре &lt;IMG&gt;AIM&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_VENTS_MSG_SURVEY_SWAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите &lt;COMMODITY&gt;кристаллический сульфид&lt;&gt; около гидротермальных выходов: %CURRENT%/%AMOUNT%.&#xA;Неподалеку обнаружен выход.&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;.
                                { "Russian", "Соберите &lt;COMMODITY&gt;кристаллический сульфид&lt;&gt;: %CURRENT%/%AMOUNT%.&#xA;Неподалеку обнаружен выход&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_VENTS_MSG_SURVEY_CAR" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружен &lt;COMMODITY&gt;кристаллический сульфид&lt;&gt;.&#xA;Воспользуйтесь &lt;STELLAR&gt;разведкой цели&lt;&gt;, чтобы найти выходы.&#xA;Чтобы подтвердить направление разведки, выйдите из своего транспорта.
                                { "Russian", "Обнаружен &lt;COMMODITY&gt;кристаллический сульфид&lt;&gt;&#xA;Воспользуйтесь &lt;STELLAR&gt;разведкой цели&lt;&gt;, чтобы найти выходы&#xA;Чтобы подтвердить направление разведки, выйдите из транспорта" },
                            }
                        },
                        --#endregion

                        --#region UI_EXPED_COOK_BREAD_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_COOK_BREAD_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите ингредиенты: &lt;STELLAR&gt;муку&lt;&gt; и дрожжи.&#xA;Соберите &lt;TRADEABLE&gt;пшеницу&lt;&gt;, чтобы изготовить муку.&#xA;Используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы найти источник &lt;TRADEABLE&gt;пшеницы&lt;&gt;.
                                { "Russian", "Найдите &lt;STELLAR&gt;муку&lt;&gt; и дрожжи&#xA;Соберите &lt;TRADEABLE&gt;пшеницу&lt;&gt;, чтобы изготовить муку&#xA;Найдите &lt;TRADEABLE&gt;пшеницу&lt;&gt; с помощью &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_COOK_BREAD_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Изготовьте &lt;STELLAR&gt;дрожжи&lt;&gt; за счет жизнедеятельности бактерий в &lt;TRADEABLE&gt;фекалии&lt;&gt;.&#xA;Кормите местных животных &lt;TRADEABLE&gt;питательными гранулами&lt;&gt;, чтобы спровоцировать производство фекалия.&#xA;Разбрасывайте гранулы с помощью быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;), чтобы привлечь животных.
                                -- Create &lt;STELLAR&gt;yeast&lt;&gt; from bacterial activity in &lt;TRADEABLE&gt;faecium&lt;&gt;&#xA;&lt;TRADEABLE&gt;Creature pellets&lt;&gt; will induce faecium production in local wildlife&#xA;Deploy pellets from the Quick Menu (&lt;IMG&gt;QUICK_MENU&lt;&gt;) to attract creatures
                                { "Russian", "Изготовьте &lt;STELLAR&gt;дрожжи&lt;&gt; за счет жизнедеятельности бактерий в &lt;TRADEABLE&gt;фекалии&lt;&gt;&#xA;Покормите животных &lt;TRADEABLE&gt;питательными гранулами&lt;&gt; для выработки фекалия&#xA;Привлеките животных, разбросывая гранулы из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_COOK_BREAD_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Приготовьте ингредиенты: &lt;STELLAR&gt;дикие дрожжи&lt;&gt;.&#xA;Переработайте &lt;TRADEABLE&gt;фекалий&lt;&gt; в &lt;TECHNOLOGY&gt;переработчике нутриентов&lt;&gt;.&#xA;Осмотреть развернутый переработчик нутриентов можно с помощью &lt;IMG&gt;INTERACT&lt;&gt;.&#xA;Храните ингредиенты в переработчике, чтобы иметь к ним быстрый доступ.
                                { "Russian", "Приготовьте &lt;STELLAR&gt;дикие дрожжи&lt;&gt;&#xA;Переработайте &lt;TRADEABLE&gt;фекалий&lt;&gt; в &lt;TECHNOLOGY&gt;переработчике нутриентов&lt;&gt;&#xA;Нажмите &lt;IMG&gt;INTERACT&lt;&gt; для взаимодействия с переработчиком нутриентов&#xA;Ингредиенты можно хранить в переработчике" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_COOK_BREAD_MSG5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Испеките тесто, чтобы приготовить &lt;COMMODITY&gt;хлеб&lt;&gt;. &#xA;Нажмите &lt;IMG&gt;INTERACT&lt;&gt;, чтобы осмотреть установленный переработчик нутриентов.&#xA;Известные вам рецепты записываются в &lt;TECHNOLOGY&gt;каталоге&lt;&gt; (&lt;IMG&gt;OPTIONS&lt;&gt;).
                                { "Russian", "Испеките тесто для &lt;COMMODITY&gt;хлеба&lt;&gt;&#xA;Нажмите &lt;IMG&gt;INTERACT&lt;&gt; для взаимодействия с переработчиком нутриентов&#xA;Известные вам рецепты записываются в &lt;TECHNOLOGY&gt;каталог&lt;&gt; (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_COOK_BREAD_MSG5A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Приготовьте ингредиенты: &lt;STELLAR&gt;тесто&lt;&gt;.&#xA;Смешайте муку и дрожжи в &lt;TECHNOLOGY&gt;переработчике нутриентов&lt;&gt;.&#xA;Осмотреть развернутый переработчик нутриентов можно с помощью &lt;IMG&gt;INTERACT&lt;&gt;.&#xA;Храните ингредиенты в переработчике, чтобы иметь к ним быстрый доступ.
                                { "Russian", "Приготовьте &lt;STELLAR&gt;тесто&lt;&gt;&#xA;Смешайте муку и дрожжи в &lt;TECHNOLOGY&gt;переработчике нутриентов&lt;&gt;&#xA;Нажмите &lt;IMG&gt;INTERACT&lt;&gt; для взаимодействия с переработчиком нутриентов&#xA;Ингредиенты можно хранить в переработчике" },
                            }
                        },
                        --#endregion

                        --#region UI_EXPED14_DETAIL_LINE
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED14_DETAIL_LINE1A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Следите за целями Ликвидации на странице &lt;STELLAR&gt;экспедиции&lt;&gt; (&lt;IMG&gt;OPTIONS&lt;&gt;).
                                { "Russian", "Следите за целями Ликвидации на странице &lt;STELLAR&gt;экспедиции&lt;&gt; (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED14_DETAIL_LINE1B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Следите за целями ликвидации на странице &lt;STELLAR&gt;экспедиции&lt;&gt; (&lt;IMG&gt;OPTIONS&lt;&gt;). Доберитесь до &lt;SPECIAL&gt;Космической Аномалии&lt;&gt;, чтобы забрать сохраненные предметы.
                                { "Russian", "Следите за целями ликвидации на странице &lt;STELLAR&gt;экспедиции&lt;&gt; (&lt;IMG&gt;OPTIONS&lt;&gt;). Доберитесь до &lt;SPECIAL&gt;Космической Аномалии&lt;&gt;, чтобы забрать сохраненные предметы" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED14_DETAIL_LINE2A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Получайте &lt;STELLAR&gt;эксклюзивные награды&lt;&gt; за &lt;TECHNOLOGY&gt;этапы&lt;&gt;. Выполнять этапы можно в &lt;TRADEABLE&gt;любом порядке&lt;&gt;.
                                { "Russian", "Получайте &lt;STELLAR&gt;эксклюзивные награды&lt;&gt; за &lt;TECHNOLOGY&gt;этапы&lt;&gt;. Выполнять этапы можно в &lt;TRADEABLE&gt;любом порядке&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED14_DETAIL_LINE2B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Следуйте по пути через галактику. Доберитесь до каждого &lt;SPECIAL&gt;места заражения&lt;&gt; и примите участие в чистке!
                                { "Russian", "Следуйте по пути через галактику. Доберитесь до каждого &lt;SPECIAL&gt;места заражения&lt;&gt; и примите участие в чистке!" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED14_DETAIL_LINE3A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Следуйте по пути через галактику. Доберитесь до каждого &lt;SPECIAL&gt;места заражения&lt;&gt; и примите участие в чистке!
                                { "Russian", "Следуйте по пути через галактику. Доберитесь до каждого &lt;SPECIAL&gt;места заражения&lt;&gt; и примите участие в чистке!" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED14_DETAIL_LINE3B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Базы, открытия и другой прогресс &lt;TECHNOLOGY&gt;будут добавлены или объединены&lt;&gt; с вашим основным сохранением.
                                { "Russian", "Базы, открытия и другой прогресс &lt;TECHNOLOGY&gt;будут добавлены или объединены&lt;&gt; с вашим основным сохранением" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED14_DETAIL_LINE4A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Эксклюзивные награды за экспедицию доступны в &lt;STELLAR&gt;любом сохранении&lt;&gt;. Это сохранение останется после завершения экспедиции.
                                { "Russian", "Эксклюзивные награды за экспедицию доступны в &lt;STELLAR&gt;любом сохранении&lt;&gt;. Это сохранение останется после завершения экспедиции" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED14_DETAIL_LINE4B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вы можете вернуться к основному сохранению&lt;STELLAR&gt;в любое время&lt;&gt;. Эксклюзивные награды за экспедицию доступны с &lt;STELLAR&gt;любого сохранения&lt;&gt;.
                                { "Russian", "Вы можете вернуться к основному сохранению&lt;STELLAR&gt;в любое время&lt;&gt;. Эксклюзивные награды за экспедицию доступны с &lt;STELLAR&gt;любого сохранения&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region UI_EXPED14_FIND_SHIP_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED14_FIND_SHIP_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Заступите на службу на борту своего &lt;TECHNOLOGY&gt;звездолета&lt;&gt;.&#xA;&lt;SPECIAL&gt;Авангард Ликвидаторов&lt;&gt; требует, чтобы вы внесли свой вклад!&#xA;Используйте &lt;TECHNOLOGY&gt;компас&lt;&gt; и &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; для навигации.
                                { "Russian", "Заступите на службу на борту своего &lt;TECHNOLOGY&gt;звездолёта&lt;&gt;&#xA;&lt;SPECIAL&gt;Авангард Ликвидаторов&lt;&gt; требует, чтобы вы внесли свой вклад!&#xA;Используйте &lt;TECHNOLOGY&gt;компас&lt;&gt; и &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; для навигации" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED14_FIND_SHIP_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Заступите на службу на борту своего &lt;TECHNOLOGY&gt;звездолета&lt;&gt;.&#xA;Уничтожьте &lt;SPECIAL&gt;биологические ужасы&lt;&gt; вокруг своего корабля.&#xA;Выберите &lt;STELLAR&gt;оружие&lt;&gt; с помощью &lt;IMG&gt;CYCLEWEAPON&lt;&gt;.
                                { "Russian", "Заступите на службу на борту своего &lt;TECHNOLOGY&gt;звездолёта&lt;&gt;&#xA;Уничтожьте &lt;SPECIAL&gt;биологические ужасы&lt;&gt; вокруг своего корабля&#xA;Выберите &lt;STELLAR&gt;оружие&lt;&gt; с помощью &lt;IMG&gt;CYCLEWEAPON&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED14_FIND_SHIP_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Заступите на службу на борту своего &lt;TECHNOLOGY&gt;звездолета&lt;&gt;.&#xA;Уничтожьте &lt;SPECIAL&gt;биологические ужасы&lt;&gt; вокруг своего корабля.&#xA;Для стрельбы из оружия используйте &lt;IMG&gt;ATTACK&lt;&gt;&#xA;Чтобы метнуть оглушающие гранаты, используйте &lt;IMG&gt;ALTATTACK&lt;&gt;.
                                { "Russian", "Заступите на службу на борту своего &lt;TECHNOLOGY&gt;звездолёта&lt;&gt;&#xA;Уничтожьте &lt;SPECIAL&gt;биологические ужасы&lt;&gt; вокруг своего корабля&#xA;Для стрельбы из оружия используйте &lt;IMG&gt;ATTACK&lt;&gt;&#xA;Чтобы метнуть оглушающие гранаты, используйте &lt;IMG&gt;ALTATTACK&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region UI_EXPED_COOK_MEAT_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_COOK_MEAT_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите сырые ингредиенты: &lt;TRADEABLE&gt;противное мясо&lt;&gt;.&#xA;Соберите противное мясо с трупов &lt;SPECIAL&gt;биологических ужасов&lt;&gt;.
                                { "Russian", "Найдите сырое &lt;TRADEABLE&gt;противное мясо&lt;&gt;&#xA;Соберите мясо с трупов &lt;SPECIAL&gt;биологических ужасов&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_COOK_MEAT_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Переработайте &lt;TRADEABLE&gt;противное мясо&lt;&gt; в &lt;TECHNOLOGY&gt;переработчике нутриентов&lt;&gt;.&#xA;Осмотреть развернутый переработчик нутриентов можно с помощью &lt;IMG&gt;INTERACT&lt;&gt;.&#xA;Храните ингредиенты в переработчике, чтобы иметь к ним быстрый доступ.
                                { "Russian", "Переработайте &lt;TRADEABLE&gt;противное мясо&lt;&gt; в &lt;TECHNOLOGY&gt;переработчике нутриентов&lt;&gt;&#xA;Осмотрите развернутый переработчик нутриентов с помощью &lt;IMG&gt;INTERACT&lt;&gt;&#xA;Храните ингредиенты в переработчике, чтобы иметь к ним быстрый доступ" },
                            }
                        },
                        --#endregion

                        --#region UI_EXPED_COOK_BISCUIT_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_COOK_BISCUIT_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите ингредиенты: &lt;STELLAR&gt;муку&lt;&gt; и сахар.&#xA;Соберите &lt;TRADEABLE&gt;пшеницу&lt;&gt;, чтобы изготовить муку.&#xA;Используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы найти источник &lt;TRADEABLE&gt;пшеницы&lt;&gt;.
                                { "Russian", "Найдите &lt;STELLAR&gt;муку&lt;&gt; и сахар&#xA;Соберите &lt;TRADEABLE&gt;пшеницу&lt;&gt;, чтобы изготовить муку&#xA;Найдите &lt;TRADEABLE&gt;пшеницу&lt;&gt; с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_COOK_BISCUIT_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите ингредиенты: муку и &lt;STELLAR&gt;сахар&lt;&gt;.&#xA;Многие растения, включая &lt;TRADEABLE&gt;сладкий корень&lt;&gt;, можно переработать и получить сахар.&#xA;Используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы найти заготавливаемые растения.
                                { "Russian", "Найдите муку и &lt;STELLAR&gt;сахар&lt;&gt;&#xA;Получите сахар, переработав &lt;TRADEABLE&gt;сладкий корень&lt;&gt;&#xA;Находите растения с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_COOK_BISCUIT_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Приготовьте ингредиенты: &lt;STELLAR&gt;муку&lt;&gt;.&#xA;Переработайте &lt;TRADEABLE&gt;пшеницу&lt;&gt; в &lt;TECHNOLOGY&gt;переработчике нутриентов&lt;&gt;.&#xA;Осмотреть развернутый переработчик нутриентов можно с помощью &lt;IMG&gt;INTERACT&lt;&gt;.&#xA;Храните ингредиенты в переработчике, чтобы иметь к ним быстрый доступ.
                                { "Russian", "Приготовьте &lt;STELLAR&gt;муку&lt;&gt;&#xA;Переработайте &lt;TRADEABLE&gt;пшеницу&lt;&gt; в &lt;TECHNOLOGY&gt;переработчике нутриентов&lt;&gt;&#xA;Осмотрите развернутый переработчик нутриентов с помощью &lt;IMG&gt;INTERACT&lt;&gt;&#xA;Храните ингредиенты в переработчике, чтобы иметь к ним быстрый доступ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_COOK_BISCUIT_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Приготовьте ингредиенты: &lt;STELLAR&gt;сахар&lt;&gt;.&#xA;Переработайте &lt;TRADEABLE&gt;сладкий корень&lt;&gt; в &lt;TECHNOLOGY&gt;переработчике нутриентов&lt;&gt;.&#xA;Осмотреть развернутый переработчик нутриентов можно с помощью &lt;IMG&gt;INTERACT&lt;&gt;.&#xA;Храните ингредиенты в переработчике, чтобы иметь к ним быстрый доступ.
                                { "Russian", "Приготовьте &lt;STELLAR&gt;сахар&lt;&gt;&#xA;Переработайте &lt;TRADEABLE&gt;сладкий корень&lt;&gt; в &lt;TECHNOLOGY&gt;переработчике нутриентов&lt;&gt;&#xA;Осмотрите развернутый переработчик нутриентов с помощью &lt;IMG&gt;INTERACT&lt;&gt;&#xA;Храните ингредиенты в переработчике, чтобы иметь к ним быстрый доступ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_COOK_BISCUIT_MSG5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Приготовьте ингредиенты: &lt;STELLAR&gt;сахарное тесто&lt;&gt;.&#xA;Смешайте муку и сахар в &lt;TECHNOLOGY&gt;переработчике нутриентов&lt;&gt;.&#xA;Осмотреть развернутый переработчик нутриентов можно с помощью &lt;IMG&gt;INTERACT&lt;&gt;.&#xA;Храните ингредиенты в переработчике, чтобы иметь к ним быстрый доступ.
                                { "Russian", "Приготовьте &lt;STELLAR&gt;сахарное тесто&lt;&gt;&#xA;Смешайте муку и сахар в &lt;TECHNOLOGY&gt;переработчике нутриентов&lt;&gt;&#xA;Осмотрите развернутый переработчик нутриентов с помощью &lt;IMG&gt;INTERACT&lt;&gt;.&#xA;Храните ингредиенты в переработчике, чтобы иметь к ним быстрый доступ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_COOK_BISCUIT_MSG6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите ингредиенты для последнего рецепта.&#xA;Многие из них можно добыть из &lt;TRADEABLE&gt;растений&lt;&gt; или &lt;TRADEABLE&gt;существ&lt;&gt;.&#xA;Чтобы находить существа и растения, используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)&#xA;Подобрать &lt;TECHNOLOGY&gt;переработчик нутриентов&lt;&gt; можно с помощью &lt;IMG&gt;DECONSTRUCT&lt;&gt;.
                                { "Russian", "Соберите ингредиенты для последнего рецепта&#xA;Многие из них можно добыть из &lt;TRADEABLE&gt;растений&lt;&gt; или &lt;TRADEABLE&gt;существ&lt;&gt;&#xA;Чтобы находить существа и растения, используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)&#xA;Подобрать &lt;TECHNOLOGY&gt;переработчик нутриентов&lt;&gt; можно с помощью &lt;IMG&gt;DECONSTRUCT&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_COOK_BISCUIT_MSG7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Испеките выбранное вами печенье.&#xA;Поэкспериментируйте, смешивая различные ингредиенты с &lt;STELLAR&gt;сахарным тестом&lt;&gt;,&#xA;чтобы приготовить различные блюда.&#xA;Открытые вами рецепты записываются в &lt;TECHNOLOGY&gt;каталоге&lt;&gt; (&lt;IMG&gt;OPTIONS&lt;&gt;).
                                { "Russian", "Испеките выбранное вами печенье&#xA;Поэкспериментируйте, смешивая различные ингредиенты с &lt;STELLAR&gt;сахарным тестом&lt;&gt;,&#xA;чтобы приготовить различные блюда&#xA;Открытые вами рецепты записываются в &lt;TECHNOLOGY&gt;каталоге&lt;&gt; (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                            }
                        },
                        --#endregion

                        --#region UI_EXPED_EXOCRAFT_DETAIL
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_EXOCRAFT_DETAIL1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вездеходы бывают разных видов — от колесного транспорта до подводных лодок и меха-роботов.
                                { "Russian", "Вездеходы бывают разных видов — от колесного транспорта до подводных лодок и меха-роботов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_EXOCRAFT_DETAIL2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вы можете &lt;TECHNOLOGY&gt;улучшить&lt;&gt; вездеход, повысив его характеристики.
                                { "Russian", "Вы можете &lt;TECHNOLOGY&gt;улучшить&lt;&gt; вездеход, повысив его характеристики" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_EXOCRAFT_DETAIL3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Нажмите &lt;IMG&gt;EXOBOOST&lt;&gt; для кратковременного &lt;VAL_ON&gt;ускорения&lt;&gt; или &lt;IMG&gt;EXOJUMP&lt;&gt;, чтобы &lt;VAL_ON&gt;подпрыгнуть&lt;&gt;.
                                { "Russian", "Нажмите &lt;IMG&gt;EXOBOOST&lt;&gt; для кратковременного &lt;VAL_ON&gt;ускорения&lt;&gt; или &lt;IMG&gt;EXOJUMP&lt;&gt;, чтобы &lt;VAL_ON&gt;подпрыгнуть&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_EXOCRAFT_DETAIL4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Постройте &lt;STELLAR&gt;станцию вызова вездехода&lt;&gt;, чтобы получить доступ к транспортному средству.
                                { "Russian", "Постройте &lt;STELLAR&gt;станцию вызова вездехода&lt;&gt;, чтобы получить доступ к транспортному средству" },
                            }
                        },
                        --#endregion

                        --#region Разное
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_FISH_SWARM_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Приманите глубоководных тварей: %AMOUNT%
                                -- Lure %AMOUNT% deep-sea monstrosities
                                { "Russian", "Победить глубоководных тварей: %AMOUNT%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_COMM_S14_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Прогресс текущей цели ликвидации: &lt;STELLAR&gt;%CMTIERPERCENT%&lt;&gt;&#xA;Выберите соответствующий &lt;EXPED&gt;этап&lt;&gt;, чтобы получить указания.&#xA;Выбрать этап можно в журнале экспедиции (&lt;IMG&gt;OPTIONS&lt;&gt;).
                                -- Current liquidation goal at &lt;STELLAR&gt;%CMTIERPERCENT%&lt;&gt;&#xA;Select the appropriate &lt;EXPED&gt;milestone&lt;&gt; for detailed instructions&#xA;Select milestones from the Expedition log (&lt;IMG&gt;OPTIONS&lt;&gt;)
                                { "Russian", "Прогресс текущей цели ликвидации: &lt;STELLAR&gt;%CMTIERPERCENT%&lt;&gt;&#xA;Выберите соответствующий &lt;EXPED&gt;этап&lt;&gt;, чтобы получить указания&#xA;Смените этап в журнале экспедиции (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED14_BUGHUNT_OBJ3_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Элитные Ликвидаторы из &lt;SPECIAL&gt;Авангарда&lt;&gt; пометили это гнездо как особо важную цель. Прочтите разведданные, оставленные Авангардом, чтобы узнать подробнее о заражении.&#xA;&#xA;Вы можете мгновенно вернуться в зараженную систему с помощью любого &lt;TECHNOLOGY&gt;терминала телепорта&lt;&gt;.&#xA;Или же, находясь в космосе, откройте &lt;TECHNOLOGY&gt;галактическую карту&lt;&gt; в быстром меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                { "Russian", "Элитные Ликвидаторы из &lt;SPECIAL&gt;Авангарда&lt;&gt; пометили это гнездо как особо важную цель. Прочтите разведданные, оставленные Авангардом, чтобы узнать подробнее о заражении.&#xA;&#xA;Вы можете мгновенно вернуться в зараженную систему с помощью любого &lt;TECHNOLOGY&gt;телепорта﻿.&lt;&gt;&#xA;Или же, находясь в космосе, откройте &lt;TECHNOLOGY&gt;галактическую карту&lt;&gt; из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_FIRE_AMMO_DESC_D" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Выпущены боеприпасы, %NUM% шт.
                                -- Unleashed %NUM% rounds of ammunition
                                { "Russian", "Выпущено %NUM% шт. боеприпасов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED14_FIEND_KILL_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Истребите &lt;SPECIAL&gt;биологические ужасы&lt;&gt;: %CURRENT% /%AMOUNT%&#xA;&lt;FUEL&gt;ВНИМАНИЕ!&lt;&gt; Обнаружена высокая степень заражения. Ужасы кишат вокруг &lt;STELLAR&gt;большинства зданий&lt;&gt;!
                                -- Exterminate &lt;SPECIAL&gt;biological horrors&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;&lt;FUEL&gt;WARNING&lt;&gt;: High infestation detected! Horrors swarm around &lt;STELLAR&gt;most buildings&lt;&gt;!
                                { "Russian", "Истребите &lt;SPECIAL&gt;биологические ужасы&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;&lt;FUEL&gt;ВНИМАНИЕ!&lt;&gt; Обнаружена высокая степень заражения&#xA;Ужасы кишат вокруг &lt;STELLAR&gt;большинства зданий&lt;&gt;!" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED14_DETAIL_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TRADEABLE&gt;Мерзкая стая&lt;&gt; оскверняет всю вселенную... Присоединяйтесь к &lt;STELLAR&gt;Ликвидаторам&lt;&gt; и очистите звезды от гнили!&#xA;&#xA;Выполняйте &lt;TECHNOLOGY&gt;важные этапы&lt;&gt;, чтобы получать новое снаряжение. Выполните &lt;COMMODITY&gt;фазы&lt;&gt; целиком, чтобы получить особые награды.
                                { "Russian", "&lt;TRADEABLE&gt;Мерзкая стая&lt;&gt; оскверняет всю вселенную... Присоединяйтесь к &lt;STELLAR&gt;Ликвидаторам&lt;&gt; и очистите звезды от гнили!&#xA;Выполняйте &lt;TECHNOLOGY&gt;важные этапы&lt;&gt;, чтобы получать новое снаряжение. Выполните &lt;COMMODITY&gt;фазы&lt;&gt; целиком, чтобы получить особые награды." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED13_CAVE_GRAVE_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- По мере того как границы ослабевают, становится возможно заглянуть в другую реальность. Фрагментированные останки других Странников проскальзывают между вселенными.&#xA;&#xA;Используйте &lt;TECHNOLOGY&gt;усилитель сигнала&lt;&gt;, чтобы искать &lt;SPECIAL&gt;аномалии&lt;&gt;, слабые места в границах между реальностями. Установите усилитель сигнала с помощью &lt;TECHNOLOGY&gt;меню созидания&lt;&gt; (&lt;IMG&gt;BUILD_MENU&lt;&gt;).
                                -- As the boundaries weaken, glimpses of another reality become possible. The fragmented remains of other Travellers glitch between universes.&#xA;&#xA;Use a &lt;TECHNOLOGY&gt;Signal Booster&lt;&gt; to search for &lt;SPECIAL&gt;anomalies&lt;&gt;, weakpoints in the boundaries between realities. Deploy a signal booster from the &lt;TECHNOLOGY&gt;Build Menu&lt;&gt; (&lt;IMG&gt;BUILD_MENU&lt;&gt;).
                                { "Russian", "По мере того как границы ослабевают, становится возможно заглянуть в другую реальность. Фрагментированные останки других Странников проскальзывают между вселенными.&#xA;&#xA;Используйте &lt;TECHNOLOGY&gt;усилитель сигнала&lt;&gt;, чтобы находить &lt;SPECIAL&gt;аномалии&lt;&gt;, слабые места в границах между реальностями. Откройте &lt;TECHNOLOGY&gt;меню строительства&lt;&gt; (&lt;IMG&gt;BUILD_MENU&lt;&gt;) для размещения усилителя сигнала." },
                            }
                        },
                        -- обрезается на "и пытаюсь найти свое место"
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_S13_DREAM2_LANG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Я вывожу корабль из импульсного полета и осторожно убираю руки с рычагов управления. Звездолет медленно дрейфует без моих команд. Здесь нет никакой опасности. Здесь ничего нет.&#xA;Меня окружает бесконечная, безграничная, захватывающая дух красота. И она очень, очень далеко.&#xA;Я не могу позволить себе увидеть ее по-настоящему, позволить своему разуму прямо взглянуть на эту ужасающую вселенную. Она слишком велика, а мое тело слишком мало.&#xA;...&#xA;Но во вселенной больше ничего нет. Мне нужно признать это.&#xA;Я позволяю своему разуму расслабиться и пытаюсь найти свое место среди звезд.
                                -- I ease the ship out of pulse flight and gently take my hands from the controls. The ship drifts slowly, uncommanded. There is no danger here. There is no anything here.&#xA;The beauty that surrounds me is endless, infinite, breathtaking. And it is so, so far away.&#xA;I cannot allow myself to really see it, to let my mind look directly at its terrifying entirety. It is far too big, and I am far too small.&#xA;...&#xA;But there is nothing else in the universe. I must face it.&#xA;I let my mind relax, and try to find my place among the stars.
                                { "Russian", "Я вывожу корабль из импульсного полета и осторожно убираю руки с рычагов управления. Звездолёт медленно дрейфует без команд. Здесь нет никакой опасности. Здесь ничего нет.&#xA;Меня окружает бесконечная, безграничная, захватывающая дух красота. И она очень, очень далеко.&#xA;Я не могу позволить себе увидеть ее по-настоящему, позволить своему разуму прямо взглянуть на ее ужасающую вселенную. Она слишком велика, а я слишком мал.&#xA;...&#xA;Но во вселенной больше ничего нет. Я должен признать это.&#xA;Я позволяю своему разуму расслабиться и пытаюсь найти свое место среди звёзд." },
                            }
                        },
                        -- обрезавется на "На мгновение я от"
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_S13_DREAM1_LANG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Я останавливаю свой корабль, преодолев неизмеримое расстояние в пустоте космоса. Звезды заполняют все передо мной. Я пытаюсь вспомнить, сколько же времени прошло с моего пробуждения.&#xA;Кажется, прошли годы, но на деле всего лишь несколько дней. Может, недели? Возможно, прошли и годы, я не могу сказать точно. Здесь слишком мало признаков жизни.&#xA;Мой экзокостюм говорит со мной, звездолет предлагает курс. Я вижу отблески себя, отражения какой-то другой реальности. Покорно выполняю необходимые для выживания задачи, поставленные моим снаряжением.&#xA;На мгновение я отстраняюсь от всего.&#xA;Я позволяю себе остановиться и помечтать.
                                -- I bring my ship to a halt, countless miles out into the void of space. The stars fill my vision, and I try to remember - how long has it been now, since I woke?&#xA;It feels like years, but it has been only days. Weeks? Perhaps it really has been years. I can no longer tell. I have seen so few signs of the living.&#xA;My Exosuit speaks to me, my starship suggests a course. I see glimpses of myself, reflections of some other reality, dutifully fulfilling all the tasks of survival that their equipment suggests.&#xA;For a moment, I shut it all out.&#xA;I let myself pause, and dream.
                                { "Russian", "Я останавливаю свой корабль, преодолев неизмеримое расстояние в космосе. Звёзды заполняют все передо мной. Я пытаюсь вспомнить, сколько времени прошло с пробуждения.&#xA;Кажется, прошли годы, но на деле всего лишь несколько дней. Или недели? Возможно, прошли годы, я не могу сказать точно. Здесь очень мало признаков жизни.&#xA;Мой экзокостюм говорит со мной, звездолёт предлагает курс. Я вижу отблески себя, отражения другой реальности. Покорно выполняю необходимые для выживания задачи, поставленные моим снаряжением.&#xA;На мгновение я отстраняюсь от всего.&#xA;Я позволяю себе остановиться и помечтать." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_S13_ARK_DESC3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- На экран выплескиваются тысячи цифр, данные бегут строка за строкой и несутся с такой скоростью, что я не могу их считать. Похоже, они передаются в&lt;TECHNOLOGY&gt;ковчег сознания&lt;&gt;.
                                { "Russian", "На экран выплескиваются тысячи цифр, данные бегут строка за строкой и несутся с такой скоростью, что я не могу их считать. Похоже, они передаются в &lt;TECHNOLOGY&gt;ковчег сознания&lt;&gt;." },
                            }
                        },
                        -- последнее предложение не влазеет
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_SCAVENGER_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- У &lt;TECHNOLOGY&gt;звездолета&lt;&gt; и &lt;TECHNOLOGY&gt;экзокостюма&lt;&gt; есть несколько типов инвентаря.&#xA;&#xA;&lt;STELLAR&gt;Грузовые ячейки&lt;&gt; используются для хранения предметов, а &lt;TECHNOLOGY&gt;ячейки технологий&lt;&gt; используются для установления улучшений и технических устройств.&#xA;&#xA;Приобрести новые ячейки инвентаря можно в &lt;TECHNOLOGY&gt;магазине технологий экзокостюма&lt;&gt; на борту космической станции. Бесплатные улучшения можно найти с помощью &lt;STELLAR&gt;карт улучшения экзокостюма&lt;&gt;, которые приведут вас к нуждающимся в ремонте &lt;TECHNOLOGY&gt;капсулам&lt;&gt;. Подобные карты можно купить у &lt;STELLAR&gt;картографа&lt;&gt; на космической станции.&#xA;&#xA;Переключайте подсказки для текущего задания и другую информацию с помощью &lt;IMG&gt;SHOWHUD&lt;&gt;.
                                -- The &lt;TECHNOLOGY&gt;Starship&lt;&gt; and &lt;TECHNOLOGY&gt;Exosuit&lt;&gt; have several inventory types.&#xA;&#xA;&lt;STELLAR&gt;Cargo Slots&lt;&gt; are used to store items, while &lt;TECHNOLOGY&gt;Technology Slots&lt;&gt; are reserved for installing upgrades and other technology devices. &#xA;&#xA;Purchase new inventory slots at the &lt;TECHNOLOGY&gt;Exosuit Technology Shop&lt;&gt; on a space station. Free upgrades can be found by using an &lt;STELLAR&gt;Exosuit Upgrade Chart&lt;&gt; to locate and repair a &lt;TECHNOLOGY&gt;Drop Pod&lt;&gt;. Purchase these upgrade charts from a space station &lt;STELLAR&gt;Cartographer&lt;&gt;.&#xA;&#xA;Cycle active mission tips and other information with &lt;IMG&gt;SHOWHUD&lt;&gt;.
                                { "Russian", "У &lt;TECHNOLOGY&gt;звездолёта&lt;&gt; и &lt;TECHNOLOGY&gt;экзокостюма&lt;&gt; есть несколько типов инвентаря.&#xA;&#xA;&lt;STELLAR&gt;Грузовые ячейки&lt;&gt; используются для хранения предметов, а &lt;TECHNOLOGY&gt;ячейки технологий&lt;&gt; используются для установления улучшений и технических устройств.&#xA;&#xA;Новые ячейки можно приобрести в &lt;TECHNOLOGY&gt;магазине технологий экзокостюма&lt;&gt; на космической станции. Бесплатные улучшения можно найти с помощью &lt;STELLAR&gt;карт улучшения экзокостюма&lt;&gt;, которые можно купить у &lt;STELLAR&gt;картографа&lt;&gt; на космической станции.&#xA;&#xA;Переключайте подсказки для текущего задания и другую информацию с помощью &lt;IMG&gt;SHOWHUD&lt;&gt;." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED13_SUMMARY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Expedition 13: &lt;SPECIAL&gt;Adrift&lt;&gt; places Travellers lost and alone in a universe devoid of familiar life...
                                -- В экспедиции 13 «&lt;SPECIAL&gt;Дрейф&lt;&gt;» Странники окажутся в полном одиночестве заброшены в совершенно незнакомую вселенную.
                                { "Russian", "В экспедиции 13 «&lt;SPECIAL&gt;Дрейф&lt;&gt;» Странники окажутся в полном одиночестве в совершенно незнакомой вселенной..." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_START_DETAIL_BODY1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Начать &lt;COMMODITY&gt;экспедицию&lt;&gt; и отправиться в путешествие вместе со всем сообществом. Полученные во время экспедиции &lt;COMMODITY&gt;эксклюзивные награды фазы&lt;&gt; доступны для &lt;COMMODITY&gt;всех сохранений&lt;&gt;.&#xA;&#xA;%EXPED_SUMMARY%
                                -- Start an &lt;COMMODITY&gt;expedition&lt;&gt; to go on a journey alongside the whole community. The &lt;COMMODITY&gt;exclusive Phase Rewards&lt;&gt; earned on expeditions are available to &lt;COMMODITY&gt;all saves&lt;&gt;.&#xA;&#xA;%EXPED_SUMMARY%
                                { "Russian", "Начните &lt;COMMODITY&gt;экспедицию&lt;&gt; вместе со всем сообществом. &lt;COMMODITY&gt;Награды&lt;&gt; за выполнение фаз экспедиции доступны для &lt;COMMODITY&gt;всех сохранений&lt;&gt;.&#xA;&#xA;%EXPED_SUMMARY%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_START_DETAIL_BODY2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Выберите свое &lt;STELLAR&gt;начальное снаряжение&lt;&gt;. Начав экспедицию, вы отправитесь в новое путешествие. Доберитесь до Космической Аномалии, чтобы &lt;STELLAR&gt;забрать хранимое там снаряжение&lt;&gt;. Вы можете в любой момент переключаться между основными сохранениями и экспедицией.&#xA;&#xA;Подтвердите выбор снаряжения, чтобы &lt;COMMODITY&gt;начать&lt;&gt;!
                                -- Select your &lt;STELLAR&gt;starting equipment&lt;&gt;. Beginning the expedition will start a new journey. Reach the Space Anomaly to &lt;STELLAR&gt;retrieve stored equipment&lt;&gt;. You may switch freely between your expedition and primary saves at any time.&#xA;&#xA;Confirm your loadout to &lt;COMMODITY&gt;begin&lt;&gt;!
                                { "Russian", "Выберите &lt;STELLAR&gt;снаряжение&lt;&gt; для нового путешествия. Доберитесь до Космической Аномалии, чтобы &lt;STELLAR&gt;забрать хранимое снаряжение&lt;&gt;. Переключаться между основным сохранением и экспедиции можно в любой момент.&#xA;&#xA;Подтвердите выбор, чтобы &lt;COMMODITY&gt;начать экспедицию&lt;&gt;!" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NEW_EXPED_HINT_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Доступна новая экспедиция: &lt;EXPED&gt;%NAME%&lt;&gt;&#xA;Сроки доступности: %TIME%&#xA;Чтобы начать путешествие, воспользуйтесь &lt;TECHNOLOGY&gt;терминалом экспедиции&lt;&gt;.
                                -- New expedition available: &lt;EXPED&gt;%NAME%&lt;&gt;&#xA;The expedition will run for the next %TIME%&#xA;Begin your journey from the &lt;TECHNOLOGY&gt;Expedition Terminus&lt;&gt;
                                { "Russian", "Доступна новая экспедиция: &lt;EXPED&gt;%NAME%&lt;&gt;&#xA;Окончание через %TIME%&#xA;Начните путешествие через &lt;TECHNOLOGY&gt;терминал экспедиции&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_S10_ENCRYPTED_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;SLASH&lt;&gt; &lt;SPECIAL&gt;ЭТАП ЗАШИФРОВАН&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt;&#xA;&lt;IMG&gt;SLASH&lt;&gt; &lt;SPECIAL&gt;НЕ УДАЛОСЬ РАСШИФРОВАТЬ ЗАДАНИЕ&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt;&#xA;&#xA;%DESC%&#xA;&#xA;Этап &lt;STELLAR&gt;зашифрован&lt;&gt;. Чтобы продолжить, выполните &lt;EXPED&gt;«%MILESTONE%»&lt;&gt;.
                                -- &lt;IMG&gt;SLASH&lt;&gt; &lt;SPECIAL&gt;MILESTONE ENCRYPTED&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt;&#xA;&lt;IMG&gt;SLASH&lt;&gt; &lt;SPECIAL&gt;UNABLE TO DECODE TASK&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt;&#xA;&#xA;%DESC%&#xA;&#xA;The milestone is &lt;STELLAR&gt;encrypted&lt;&gt;. Complete &lt;EXPED&gt;%MILESTONE%&lt;&gt; to continue.
                                { "Russian", "&lt;IMG&gt;SLASH&lt;&gt; &lt;SPECIAL&gt;ЭТАП ЗАШИФРОВАН&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt;&#xA;&#xA;%DESC%&#xA;&#xA;Этап &lt;STELLAR&gt;зашифрован﻿.&lt;&gt; Чтобы продолжить, выполните &lt;EXPED&gt;%MILESTONE%﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_REWARD_INVENTORY_SLOTS_SHIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;COMMODITY&gt;Ячейка инвентаря звездолета&lt;&gt; (x%NUM%)
                                -- &lt;COMMODITY&gt;Starship Inventory Slot&lt;&gt; x %NUM%
                                { "Russian", "&lt;COMMODITY&gt;Ячейка инвентаря звездолёта&lt;&gt; × %NUM%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_REWARD_INVENTORY_SLOTS_WEAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;COMMODITY&gt;Ячейка инвентаря мультитула&lt;&gt; (x%NUM%)
                                -- &lt;COMMODITY&gt;Multi-Tool Inventory Slot&lt;&gt; x %NUM%
                                { "Russian", "&lt;COMMODITY&gt;Ячейка инвентаря мультитула&lt;&gt; × %NUM%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_S12_NEXUS_OBJ2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Высадитесь на космическую аномалию
                                -- Board the Space Anomaly
                                { "Russian", "Посетить Космическую Аномалию" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FARM_PARTS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Чертежи &lt;TECHNOLOGY&gt;различных сельскохозяйственных модулей&lt;&gt;
                                -- &lt;TECHNOLOGY&gt;Assorted Agricultural Module&lt;&gt; plans
                                { "Russian", "Чертежи &lt;TECHNOLOGY&gt;сельскохозяйственных модулей&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_S14_CARNAGE_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Предыдущая цель ликвидации еще не выполнена.&#xA;Для продолжения пройдите этап &lt;EXPED&gt;%MISSION%&lt;&gt;.&#xA;Выбрать этап экспедиции можно в журнале экспедиции (&lt;IMG&gt;OPTIONS&lt;&gt;).
                                { "Russian", "Предыдущая цель ликвидации еще не выполнена&#xA;Для продолжения пройдите этап &lt;EXPED&gt;%MISSION%&lt;&gt;&#xA;Смените этап в журнале экспедиции (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                            }
                        },
                        -- строка "Внесите свой вклад..." не влезеет. звучит круто, но такие ограничения игры
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_S14_CARNAGE_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Прогресс текущей цели ликвидации: &lt;STELLAR&gt;%CMTIERPERCENT%&lt;&gt;&#xA;Внесите свой вклад и уничтожьте как можно больше &lt;STELLAR&gt;биологических ужасов&lt;&gt;, &lt;STELLAR&gt;стражей&lt;&gt; и порождений &lt;STELLAR&gt;мерзкой стаи&lt;&gt;&#xA;Личные убийства: %CURRENT%/%AMOUNT%
                                { "Russian", "Прогресс ликвидации: &lt;STELLAR&gt;%CMTIERPERCENT%&lt;&gt;&#xA;Уничтожьте как можно больше &lt;STELLAR&gt;биологических ужасов&lt;&gt;,&#xA;&lt;STELLAR&gt;стражей&lt;&gt; и порождений &lt;STELLAR&gt;мерзкой стаи&lt;&gt;&#xA;Личные убийства: %CURRENT%/%AMOUNT%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_S14_CARNAGE_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Прогресс текущей цели ликвидации: &lt;STELLAR&gt;%CMTIERPERCENT%&lt;&gt;&#xA;Внесите свой вклад и уничтожьте как можно больше &lt;STELLAR&gt;биологических ужасов&lt;&gt;, &lt;STELLAR&gt;стражей&lt;&gt; и порождений &lt;STELLAR&gt;мерзкой стаи&lt;&gt;&#xA;Личные убийства: %AMOUNT% и это не предел
                                { "Russian", "Прогресс ликвидации: &lt;STELLAR&gt;%CMTIERPERCENT%&lt;&gt;&#xA;Уничтожьте как можно больше &lt;STELLAR&gt;биологических ужасов&lt;&gt;,&#xA;&lt;STELLAR&gt;стражей&lt;&gt; и порождений &lt;STELLAR&gt;мерзкой стаи&lt;&gt;&#xA;Личные убийства: %AMOUNT% и это не предел" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_QS_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Получено &lt;TRADE_SPECIALS&gt;ртути&lt;&gt;: %CURRENT%&#xA;Приобретайте разовые улучшения на &lt;COMMODITY&gt;космических станциях&lt;&gt;.&#xA;Или разблокируйте новые чертежи на борту &lt;SPECIAL&gt;Космической Аномалии&lt;&gt;.
                                -- &lt;TRADE_SPECIALS&gt;Quicksilver&lt;&gt; acquired: %CURRENT%&#xA;Purchase one-off upgrades on the &lt;COMMODITY&gt;Space Station&lt;&gt;&#xA;Or unlock new blueprints on the &lt;SPECIAL&gt;Space Anomaly&lt;&gt;
                                { "Russian", "В вашем распоряжении &lt;IMG&gt;QUICKSILVER&lt;&gt; %CURRENT% &lt;TRADE_SPECIALS&gt;ртути&lt;&gt;&#xA;&lt;STELLAR&gt;Товарищ по синтезу ртути&lt;&gt; продает&#xA;уникальные вещи за ртуть" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_BP_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Требуются &lt;STELLAR&gt;извлеченные данные&lt;&gt;: %CURRENT%&#xA;Используйте их, чтобы разблокировать новые &lt;TECHNOLOGY&gt;элементы базы&lt;&gt;.&#xA;Просматривайте доступные элементы на &lt;SPECIAL&gt;станции строительных исследований&lt;&gt;.
                                -- &lt;STELLAR&gt;Salvaged Data&lt;&gt; acquired: %CURRENT%&#xA;Use this data to unlock new &lt;TECHNOLOGY&gt;base parts&lt;&gt;&#xA;Visit the &lt;SPECIAL&gt;Construction Research Station&lt;&gt; to browse available parts
                                { "Russian", "Найдено &lt;STELLAR&gt;извлеченных данных&lt;&gt;: %CURRENT%&#xA;Используйте их, чтобы разблокировать новые &lt;TECHNOLOGY&gt;элементы базы&lt;&gt;&#xA;Изучите чертежи на &lt;SPECIAL&gt;станции строительных исследований&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_BP_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Получено &lt;STELLAR&gt;извлеченных данных&lt;&gt;: %CURRENT%&#xA;Используйте их, чтобы разблокировать новые &lt;TECHNOLOGY&gt;элементы базы&lt;&gt;&#xA;Сделать это можно на борту &lt;SPECIAL&gt;Космической Аномалии&lt;&gt;.&#xA;Находясь в космосе, вызовите Аномалию в быстром меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                -- &lt;STELLAR&gt;Salvaged Data&lt;&gt; acquired: %CURRENT%&#xA;Use this data to unlock new &lt;TECHNOLOGY&gt;base parts&lt;&gt;&#xA;Unlock new parts on the &lt;SPECIAL&gt;Space Anomaly&lt;&gt;&#xA;In space, summon the Anomaly from the Quick Menu (&lt;IMG&gt;QUICK_MENU&lt;&gt;)
                                { "Russian", "Найдено &lt;STELLAR&gt;извлеченных данных&lt;&gt;: %CURRENT%&#xA;Используйте их, чтобы разблокировать новые &lt;TECHNOLOGY&gt;элементы базы&lt;&gt;&#xA;Сделать это можно на борту &lt;SPECIAL&gt;Космической Аномалии&lt;&gt;&#xA;Находясь в космосе, вызовите Аномалию из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_VISIT_RUINS_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- По всей вселенной разбросаны давно забытые руины, которые рассыпаются в пыль, а накопленные в них знания пропадают.&#xA;&#xA;Установите &lt;TECHNOLOGY&gt;усилитель сигнала&lt;&gt; с помощью меню созидания (&lt;IMG&gt;BUILD_MENU&lt;&gt;), чтобы искать инопланетные руины.
                                { "Russian", "По всей вселенной разбросаны давно забытые руины, которые рассыпаются в пыль, а накопленные в них знания пропадают.&#xA;&#xA;Установите &lt;TECHNOLOGY&gt;усилитель сигнала&lt;&gt; из меню строительства (&lt;IMG&gt;BUILD_MENU&lt;&gt;), чтобы найти инопланетные руины." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_JETPACKER_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Пролетите на реактивном ранце: %CURRENT%/%AMOUNT% ед.&#xA;Активируйте &lt;TECHNOLOGY&gt;реактивный ранец экзокостюма&lt;&gt; с помощью &lt;IMG&gt;JUMP&lt;&gt;&#xA;Используйте его, чтобы уклоняться от огня противника во время боя.
                                -- Jetpack across planets: %CURRENT%u/%AMOUNT%u&#xA;Activate the &lt;TECHNOLOGY&gt;Exosuit Jetpack&lt;&gt; with &lt;IMG&gt;JUMP&lt;&gt;&#xA;Use the jetpack to evade hostile fire while in combat
                                { "Russian", "Пролетите на реактивном ранце: %CURRENT%/%AMOUNT% ед.&#xA;Активируйте &lt;TECHNOLOGY&gt;реактивный ранец экзокостюма&lt;&gt; с помощью &lt;IMG&gt;JUMP&lt;&gt;&#xA;Используйте его, чтобы уклоняться от огня противника во время боя" },
                            }
                        },
                        -- не влазеет, обрезается на "их с помощью ландшафтного манипулято"
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_BP_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Чтобы разблокировать новые элементы базы, добудьте &lt;STELLAR&gt;извлеченные данные&lt;&gt; из &lt;TECHNOLOGY&gt;засыпанных технологий&lt;&gt; на различных планетах. Используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt;, чтобы находить и помечать эти реликвии, а потом выкапывайте их с помощью &lt;TECHNOLOGY&gt;ландшафтного манипулятора&lt;&gt;.
                                -- To unlock new base parts, acquire &lt;STELLAR&gt;Salvaged Data&lt;&gt; from &lt;TECHNOLOGY&gt;Buried Technology&lt;&gt; on planets. Use the &lt;TECHNOLOGY&gt;Analysis Visor&lt;&gt; to locate and tag these relics, then use the &lt;TECHNOLOGY&gt;Terrain Manipulator&lt;&gt; to unearth them.
                                { "Russian", "&lt;TECHNOLOGY&gt;Засыпанные технологические модули&lt;&gt; содержат в себе &lt;STELLAR&gt;извлеченные данные&lt;&gt;, которые используются для разблокировки новых элементов базы. &lt;TECHNOLOGY&gt;Анализирующий визор&lt;&gt; поможет найти эти модули, а с помощью &lt;TECHNOLOGY&gt;ландшафтного манипулятора&lt;&gt; можно их выкапать." },
                            }
                        },
                        --#endregion

                        --#region UI_EXPED_SENTINEL_SHIP_
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_SENTINEL_SHIP_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружен сигнал &lt;SPECIAL&gt;потерянного перехватчика&lt;&gt;.&#xA;Доберитесь до места крушения и осмотрите обломки.
                                -- &lt;SPECIAL&gt;Lost interceptor&lt;&gt; signal detected&#xA;Reach the crash site and investigate the wreckage
                                { "Russian", "Обнаружен сигнал &lt;SPECIAL&gt;потерянного перехватчика&lt;&gt;&#xA;Доберитесь до места крушения и осмотрите обломки" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_SENTINEL_SHIP_MSG1A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сигнал &lt;SPECIAL&gt;потерянного перехватчика&lt;&gt; обнаружен в &lt;TECHNOLOGY&gt;системе неподалеку&lt;&gt;.&#xA;Доберитесь до места крушения и осмотрите обломки.&#xA;Находясь в космосе, откройте галактическую карту в &lt;TECHNOLOGY&gt;быстром меню&lt;&gt; (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                -- &lt;SPECIAL&gt;Lost interceptor&lt;&gt; signal detected in &lt;TECHNOLOGY&gt;nearby system&lt;&gt;&#xA;Reach the crash site and investigate the wreckage&#xA;In space, access the Galaxy Map from the &lt;TECHNOLOGY&gt;Quick Menu&lt;&gt; (&lt;IMG&gt;QUICK_MENU&lt;&gt;)
                                { "Russian", "Сигнал &lt;SPECIAL&gt;потерянного перехватчика&lt;&gt; обнаружен в &lt;TECHNOLOGY&gt;системе неподалеку&lt;&gt;&#xA;Доберитесь до места крушения и осмотрите обломки&#xA;Находясь в космосе, откройте галактическую карту из &lt;TECHNOLOGY&gt;быстрого меню&lt;&gt; (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_SENTINEL_SHIP_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите место крушения &lt;SPECIAL&gt;стража-перехватчика&lt;&gt;.&#xA;Найдите &lt;SPECIAL&gt;лишенную гармонии&lt;&gt; систему на галактической карте (&lt;IMG&gt;QUICK_MENU&lt;&gt;).&#xA;Или нападите на звездолеты властей системы, чтобы добыть точные координаты.
                                -- Locate a &lt;SPECIAL&gt;Sentinel Interceptor&lt;&gt; crash site&#xA;Find a &lt;SPECIAL&gt;dissonant&lt;&gt; system in the Galaxy Map (&lt;IMG&gt;QUICK_MENU&lt;&gt;)&#xA;Or engage and defeat system authority starships to acquire specific coordinates
                                { "Russian", "Найдите место крушения &lt;SPECIAL&gt;стража-перехватчика&lt;&gt;&#xA;Найдите &lt;SPECIAL&gt;лишенную гармонии&lt;&gt; систему на галактической карте (&lt;IMG&gt;QUICK_MENU&lt;&gt;)&#xA;Или нападите на звездолёты властей системы, чтобы добыть точные координаты" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_SENTINEL_SHIP_MSG2A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите место крушения &lt;SPECIAL&gt;стража-перехватчика&lt;&gt;.&#xA;Вернитесь в космос, чтобы начать поиск.
                                -- Locate a &lt;SPECIAL&gt;Sentinel Interceptor&lt;&gt; crash site&#xA;Return to space to begin your search
                                { "Russian", "Найдите место крушения &lt;SPECIAL&gt;стража-перехватчика&lt;&gt;&#xA;Вернитесь в космос, чтобы начать поиск" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_SENTINEL_SHIP_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Получен &lt;STELLAR&gt;фрагмент ИИ корабля-носителя&lt;&gt;.&#xA;Откройте инвентарь (&lt;IMG&gt;INVENTORY&lt;&gt;) и просмотрите его архивы (&lt;IMG&gt;FE_ALT1&lt;&gt;).&#xA;В этом фрагменте содержатся координаты &lt;SPECIAL&gt;стража-перехватчика&lt;&gt;.
                                -- &lt;STELLAR&gt;Carrier AI Fragment&lt;&gt; acquired&#xA;Open the Inventory (&lt;IMG&gt;INVENTORY&lt;&gt;) and probe its archives (&lt;IMG&gt;FE_ALT1&lt;&gt;)&#xA;This fragment contains &lt;SPECIAL&gt;Sentinel Interceptor&lt;&gt; coordinates
                                { "Russian", "Получен &lt;STELLAR&gt;фрагмент ИИ корабля-носителя&lt;&gt;&#xA;Откройте инвентарь (&lt;IMG&gt;INVENTORY&lt;&gt;) и просмотрите его архивы (&lt;IMG&gt;FE_ALT1&lt;&gt;)&#xA;В этом фрагменте содержатся координаты &lt;SPECIAL&gt;стража-перехватчика&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_SENTINEL_SHIP_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружен &lt;SPECIAL&gt;страж-перехватчик&lt;&gt;.&#xA;Выполните задание &lt;STELLAR&gt;«Место крушения»&lt;&gt;, чтобы отремонтировать его.&#xA;Выбирайте задания в журнале (&lt;IMG&gt;OPTIONS&lt;&gt;).
                                -- &lt;SPECIAL&gt;Sentinel Interceptor&lt;&gt; located&#xA;Complete the &lt;STELLAR&gt;Salvage Site&lt;&gt; mission to perform repairs&#xA;Select missions from the Log (&lt;IMG&gt;OPTIONS&lt;&gt;)
                                { "Russian", "Обнаружен &lt;SPECIAL&gt;страж-перехватчик&lt;&gt;&#xA;Выполните задание &lt;STELLAR&gt;«Место крушения»&lt;&gt;, чтобы отремонтировать его&#xA;Выбирайте задания в журнале (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_SENTINEL_SHIP_MSG5A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите место крушения &lt;SPECIAL&gt;стража-перехватчика&lt;&gt;.&#xA;Чтобы узнать подробнее, выполните задание &lt;STELLAR&gt;«Гармоническая пломба»&lt;&gt;.
                                -- Locate a &lt;SPECIAL&gt;Sentinel Interceptor&lt;&gt; crash site&#xA;Complete the &lt;STELLAR&gt;Harmonic Seal&lt;&gt; mission to learn more
                                { "Russian", "Найдите место крушения &lt;SPECIAL&gt;стража-перехватчика&lt;&gt;&#xA;Чтобы узнать подробнее, выполните задание &lt;STELLAR&gt;«Гармоническая пломба»&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_SENTINEL_SHIP_MSG5B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите место крушения &lt;SPECIAL&gt;стража-перехватчика&lt;&gt;.&#xA;Чтобы узнать подробнее, выполните задание &lt;STELLAR&gt;«Гармонический лагерь»&lt;&gt;.&#xA;Выбирайте задания в журнале (&lt;IMG&gt;OPTIONS&lt;&gt;).
                                -- Locate a &lt;SPECIAL&gt;Sentinel Interceptor&lt;&gt; crash site&#xA;Complete the &lt;STELLAR&gt;Harmonic Camp&lt;&gt; mission to learn more&#xA;Select missions from the Log (&lt;IMG&gt;OPTIONS&lt;&gt;)
                                { "Russian", "Найдите место крушения &lt;SPECIAL&gt;стража-перехватчика&lt;&gt;&#xA;Чтобы узнать подробнее, выполните задание &lt;STELLAR&gt;«Гармонический лагерь»&lt;&gt;&#xA;Выбирайте задания в журнале (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_SENTINEL_SHIP_MSG5C" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите место крушения &lt;SPECIAL&gt;стража-перехватчика&lt;&gt;.&#xA;Используйте &lt;STELLAR&gt;гармонический интерфейс&lt;&gt;, чтобы найти подходящее место.&#xA;Выбирайте задания в журнале (&lt;IMG&gt;OPTIONS&lt;&gt;).
                                -- Locate a &lt;SPECIAL&gt;Sentinel Interceptor&lt;&gt; crash site&#xA;Use the &lt;STELLAR&gt;Harmonic Interface&lt;&gt; to locate potential sites&#xA;Select missions from the Log (&lt;IMG&gt;OPTIONS&lt;&gt;)
                                { "Russian", "Найдите место крушения &lt;SPECIAL&gt;стража-перехватчика&lt;&gt;&#xA;Используйте &lt;STELLAR&gt;гармонический интерфейс&lt;&gt;, чтобы найти подходящее место&#xA;Выбирайте задания в журнале (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_SENTINEL_SHIP_MSG6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите место крушения &lt;SPECIAL&gt;стража-перехватчика&lt;&gt;.&#xA;Обнаружен &lt;STELLAR&gt;гармонический лагерь&lt;&gt;.&#xA;Найдите в лагере координаты места крушения.
                                -- Locate a &lt;SPECIAL&gt;Sentinel Interceptor&lt;&gt; crash site&#xA;&lt;STELLAR&gt;Harmonic Camp&lt;&gt; detected&#xA;Search the camp for crash site coordinates
                                { "Russian", "Найдите место крушения &lt;SPECIAL&gt;стража-перехватчика&lt;&gt;&#xA;Обнаружен &lt;STELLAR&gt;гармонический лагерь&lt;&gt;&#xA;Найдите в лагере координаты места крушения" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_SENTINEL_SHIP_MSG7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите место крушения &lt;SPECIAL&gt;стража-перехватчика&lt;&gt;.&#xA;Получен &lt;STELLAR&gt;эхолокатор&lt;&gt;.&#xA;Откройте инвентарь (&lt;IMG&gt;INVENTORY&lt;&gt;) и выберите &lt;STELLAR&gt;«Резонанс»&lt;&gt; (&lt;IMG&gt;FE_ALT1&lt;&gt;).
                                -- Locate a &lt;SPECIAL&gt;Sentinel Interceptor&lt;&gt; crash site&#xA;&lt;STELLAR&gt;Echo Locator&lt;&gt; acquired&#xA;Open the Inventory (&lt;IMG&gt;INVENTORY&lt;&gt;) and select &lt;STELLAR&gt;Resonate&lt;&gt; (&lt;IMG&gt;FE_ALT1&lt;&gt;)
                                { "Russian", "Найдите место крушения &lt;SPECIAL&gt;стража-перехватчика&lt;&gt;&#xA;Получен &lt;STELLAR&gt;эхолокатор&lt;&gt;&#xA;Откройте инвентарь (&lt;IMG&gt;INVENTORY&lt;&gt;) и выберите &lt;STELLAR&gt;«Резонанс»&lt;&gt; (&lt;IMG&gt;FE_ALT1&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_SENTINEL_SHIP_MSG8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите место крушения &lt;SPECIAL&gt;стража-перехватчика&lt;&gt;.&#xA;Возьмите &lt;STELLAR&gt;эхолокатор&lt;&gt;, чтобы облегчить поиск.&#xA;Нападайте на &lt;FUEL&gt;стражей&lt;&gt; и уничтожайте их контейнеры с &lt;COMMODITY&gt;боевыми припасами&lt;&gt;.&#xA;Победите все местные силы стражей, чтобы сразу же узнать расположение полезных мест.
                                -- Locate a &lt;SPECIAL&gt;Sentinel Interceptor&lt;&gt; crash site&#xA;Collect an &lt;STELLAR&gt;Echo Locator&lt;&gt; to assist with the search&#xA;Engage &lt;FUEL&gt;Sentinels&lt;&gt; and destroy their &lt;COMMODITY&gt;combat supply&lt;&gt; barrels&#xA;Defeating all local Sentinel forces will immediately reveal useful locations
                                { "Russian", "Найдите место крушения &lt;SPECIAL&gt;стража-перехватчика&lt;&gt;&#xA;Добудьте &lt;STELLAR&gt;эхолокатор&lt;&gt;, чтобы начать поиски&#xA;Нападайте на &lt;FUEL&gt;стражей&lt;&gt; и уничтожайте контейнеры с &lt;COMMODITY&gt;боевыми припасами&lt;&gt;&#xA;Победите всех стражей, чтобы узнать секретные местоположения" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_SENTINEL_SHIP_MSG9" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите место крушения &lt;SPECIAL&gt;стража-перехватчика&lt;&gt;.&#xA;На расположенной неподалеку &lt;SPECIAL&gt;лишенной гармонии&lt;&gt; планете обнаружен слабый сигнал.&#xA;Сканируйте планеты с борта звездолета (&lt;IMG&gt;SCAN&lt;&gt;), чтобы находить лишенные гармонии миры.
                                -- Locate a &lt;SPECIAL&gt;Sentinel Interceptor&lt;&gt; crash site&#xA;Weak signal detected from nearby &lt;SPECIAL&gt;dissonant&lt;&gt; planet&#xA;Scan planets from starship (&lt;IMG&gt;SCAN&lt;&gt;) to locate dissonant worlds
                                { "Russian", "Найдите место крушения &lt;SPECIAL&gt;стража-перехватчика&lt;&gt;&#xA;На расположенной неподалеку &lt;SPECIAL&gt;лишенной гармонии&lt;&gt; планете обнаружен слабый сигнал&#xA;Сканируйте планеты с борта звездолёта (&lt;IMG&gt;SCAN&lt;&gt;), чтобы находить лишенные гармонии миры" },
                            }
                        },
                        --#endregion

                        --#region BUILD_PART
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_BUILD_PART_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Изучите строительный чертеж (&lt;TECHNOLOGY&gt;%ITEM%&lt;&gt;).&#xA;Пройдите этап &lt;EXPED&gt;«%MILESTONE%»&lt;&gt;, чтобы изучить этот чертеж.&#xA;Выберите этапы на вкладке экспедиции (&lt;IMG&gt;OPTIONS&lt;&gt;).
                                -- Learn the &lt;TECHNOLOGY&gt;%ITEM%&lt;&gt; construction blueprint&#xA;Complete the &lt;EXPED&gt;%MILESTONE%&lt;&gt; milestone to learn this blueprint&#xA;Select milestones from the Expedition log (&lt;IMG&gt;OPTIONS&lt;&gt;)
                                { "Russian", "Изучите строительный чертеж (&lt;TECHNOLOGY&gt;%ITEM%&lt;&gt;)&#xA;Пройдите этап &lt;EXPED&gt;«%MILESTONE%»&lt;&gt;, чтобы изучить этот чертеж&#xA;Выберите этапы на вкладке экспедиции (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_BUILD_PART_MSG1_ALT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Изучите строительный чертеж (&lt;TECHNOLOGY&gt;%ITEM%&lt;&gt;).&#xA;Покупайте чертежи в &lt;STELLAR&gt;терминале строительных исследований&gt;.&#xA;Терминал расположен на борту &lt;SPECIAL&gt;Космической Аномалии&lt;&gt;.
                                { "Russian", "Изучите строительный чертеж (&lt;TECHNOLOGY&gt;%ITEM%&lt;&gt;)&#xA;Покупайте чертежи в &lt;STELLAR&gt;терминале строительных исследований&gt;&#xA;Терминал расположен на борту &lt;SPECIAL&gt;Космической Аномалии&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_BUILD_PART_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Постройте: &lt;TECHNOLOGY&gt;%ITEM%&lt;&gt;&#xA;Вернитесь на свою базу, чтобы начать строительство.
                                { "Russian", "Постройте: &lt;TECHNOLOGY&gt;%ITEM%&lt;&gt;&#xA;Вернитесь на свою базу, чтобы начать строительство" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_BUILD_PART_MSG2A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Постройте: &lt;TECHNOLOGY&gt;%ITEM%&lt;&gt;&#xA;Мгновенно вернитесь на базу с помощью &lt;COMMODITY&gt;телепорта космической станции&lt;&gt;.
                                { "Russian", "Постройте: &lt;TECHNOLOGY&gt;%ITEM%&lt;&gt;&#xA;Мгновенно вернитесь на базу с помощью &lt;COMMODITY&gt;телепорта космической станции&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_BUILD_PART_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Постройте: &lt;TECHNOLOGY&gt;%ITEM%&lt;&gt;&#xA;Чтобы открыть &lt;TECHNOLOGY&gt;меню созидания&lt;&gt;, нажмите &lt;IMG&gt;BUILD_MENU&lt;&gt;.
                                { "Russian", "Постройте: &lt;TECHNOLOGY&gt;%ITEM%&lt;&gt;&#xA;Чтобы открыть &lt;TECHNOLOGY&gt;меню созидания&lt;&gt;, нажмите &lt;IMG&gt;BUILD_MENU&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_BUILD_PART_MSG0" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Планетарная база не обнаружена.&#xA;Пройдите этап &lt;EXPED&gt;%MISSION%&lt;&gt;, чтобы запустить программу обитания.&#xA;Выбрать этап экспедиции можно в журнале экспедиции (&lt;IMG&gt;OPTIONS&lt;&gt;).
                                { "Russian", "Планетарная база не обнаружена&#xA;Пройдите этап &lt;EXPED&gt;%MISSION%&lt;&gt;, чтобы запустить программу обитания&#xA;Изменить этап можно в журнале экспедиции (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                            }
                        },
                        --#endregion

                        --#region KILLS_IN_MECH
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_KILLS_IN_MECH_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Уничтожьте врагов с помощью &lt;TECHNOLOGY&gt;экзокостюма «Минотавр»&lt;&gt;.&#xA;Выберите этап &lt;EXPED&gt;«%MILESTONE%»&lt;&gt;, чтобы изучить чертежи «Минотавра».&#xA;Выберите этап в журнале экспедиции (&lt;IMG&gt;OPTIONS&lt;&gt;).
                                { "Russian", "Уничтожьте врагов с помощью &lt;TECHNOLOGY&gt;Минотавра&lt;&gt;&#xA;Выберите этап &lt;EXPED&gt;«%MILESTONE%»&lt;&gt;, чтобы изучить чертежи Минотавра&#xA;Выберите этап в журнале экспедиции (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_KILLS_IN_MECH_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Уничтожьте врагов с помощью &lt;TECHNOLOGY&gt;экзокостюма «Минотавр»&lt;&gt;.&#xA;Откройте &lt;TECHNOLOGY&gt;меню созидания&lt;&gt; с помощью &lt;IMG&gt;BUILD_MENU&lt;&gt;, чтобы разместить &lt;STELLAR&gt;геостанцию «Минотавра»&lt;&gt;.&#xA;&lt;STELLAR&gt;Закрепите&lt;&gt; этапы строительства с помощью &lt;IMG&gt;PIN_BUILD&lt;&gt;.
                                { "Russian", "Уничтожьте врагов с помощью &lt;TECHNOLOGY&gt;Минотавра&lt;&gt;&#xA;Откройте &lt;TECHNOLOGY&gt;меню созидания&lt;&gt; с помощью &lt;IMG&gt;BUILD_MENU&lt;&gt;, чтобы разместить &lt;STELLAR&gt;геостанцию Минотавра&lt;&gt;&#xA;&lt;STELLAR&gt;Закрепите&lt;&gt; этапы строительства с помощью &lt;IMG&gt;PIN_BUILD&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_KILLS_IN_MECH_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Уничтожьте врагов, пилотируя «Минотавр»: %CURRENT%/%AMOUNT%&#xA;Призовите свой вездеход с помощью &lt;TECHNOLOGY&gt;быстрого меню&lt;&gt; (&lt;IMG&gt;QUICK_MENU&lt;&gt;)&#xA;Постройте &lt;STELLAR&gt;станцию вызова вездехода&lt;&gt;, чтобы увеличить дальность вызова.
                                { "Russian", "Уничтожьте врагов, пилотируя «Минотавр»: %CURRENT%/%AMOUNT%&#xA;Призовите свой вездеход с помощью &lt;TECHNOLOGY&gt;быстрого меню&lt;&gt; (&lt;IMG&gt;QUICK_MENU&lt;&gt;)&#xA;Постройте &lt;STELLAR&gt;станцию вызова вездехода&lt;&gt;, чтобы увеличить дальность вызова" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_KILLS_IN_MECH_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Уничтожьте врагов, пилотируя «Минотавр»: %CURRENT%/%AMOUNT%&#xA;Сядьте в &lt;STELLAR&gt;экзокостюм «Минотавр»&lt;&gt;.&#xA;Призовите любой вездеход с помощью &lt;TECHNOLOGY&gt;быстрого меню&lt;&gt; (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                { "Russian", "Уничтожьте врагов, пилотируя «Минотавр»: %CURRENT%/%AMOUNT%&#xA;Сядьте в &lt;STELLAR&gt;экзокостюм «Минотавр»&lt;&gt;&#xA;Призовите любой вездеход с помощью &lt;TECHNOLOGY&gt;быстрого меню&lt;&gt; (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_KILLS_IN_MECH_MSG5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Уничтожьте врагов, пилотируя «Минотавр»: %CURRENT%/%AMOUNT%&#xA;Системы вооружения «Минотавра»: &lt;FUEL&gt;ЗАРЯЖЕНЫ&lt;&gt;
                                { "Russian", "Уничтожьте врагов, пилотируя Минотавр: %CURRENT%/%AMOUNT%&#xA;Системы вооружения Минотавра: &lt;FUEL&gt;ЗАРЯЖЕНЫ&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_KILLS_IN_MECH_MSG5A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Уничтожьте врагов, пилотируя «Минотавр»: %CURRENT%/%AMOUNT%&#xA; Статус систем вооружения «Минотавра»: &lt;COMMODITY&gt;ОЖИДАНИЕ &lt;&gt;&#xA; Установите боевую технологию в &lt;TECHNOLOGY&gt;инвентаре&lt;&gt; (&lt;IMG&gt; ИНВЕНТАРЬ&lt;&gt;).&#xA; Выберите ячейку и просмотрите доступные чертежи с помощью &lt;IMG&gt; TECHMENU&lt;&gt;.
                                -- Eliminate hostiles while piloting the Minotaur: %CURRENT%/%AMOUNT%&#xA;Minotaur weapon systems: &lt;COMMODITY&gt;PENDING&lt;&gt;&#xA;Install combat technology in the &lt;TECHNOLOGY&gt;Inventory&lt;&gt; (&lt;IMG&gt;INVENTORY&lt;&gt;)&#xA;Select a slot and browse available blueprints with &lt;IMG&gt;TECHMENU&lt;&gt;
                                { "Russian", "Уничтожьте врагов, пилотируя Минотавр: %CURRENT%/%AMOUNT%&#xA; Статус систем вооружения Минотавра: &lt;COMMODITY&gt;ОЖИДАНИЕ &lt;&gt;&#xA; Установите боевую технологию в &lt;TECHNOLOGY&gt;инвентаре&lt;&gt; (&lt;IMG&gt;INVENTORY&lt;&gt;)&#xA; Выберите ячейку и просмотрите доступные чертежи с помощью &lt;IMG&gt;TECHMENU&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_KILLS_IN_MECH_MSG5B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Уничтожьте врагов, пилотируя «Минотавр»:%CURRENT% /%AMOUNT%&#xA; Системы вооружения «Минотавра»: &lt;COMMODITY&gt; В РЕЖИМЕ ОЖИДАНИЯ&lt;&gt;&#xA; Используйте&lt;IMG&gt;CYCLEWEAPON&lt;&gt; для смены режима оружия.
                                { "Russian", "Уничтожьте врагов, пилотируя Минотавр:%CURRENT%/%AMOUNT%&#xA; Системы вооружения Минотавра: &lt;COMMODITY&gt;В РЕЖИМЕ ОЖИДАНИЯ&lt;&gt;&#xA;Используйте&lt;IMG&gt;CYCLEWEAPON&lt;&gt; для смены оружия" },
                            }
                        },
                        --#endregion

                        --#region S12_FIND_SHIP
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_S12_FIND_SHIP_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите &lt;STELLAR&gt;место крушения&lt;&gt; своего звездолета.&#xA;Используйте &lt;TECHNOLOGY&gt;компас&lt;&gt; и &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;) для навигации.&#xA;Вы можете двигаться &lt;STELLAR&gt;быстрее&lt;&gt; с помощью ускорения (&lt;IMG&gt;RUN&lt;&gt;) и реактивного ранца (&lt;IMG&gt;JUMP&lt;&gt;).
                                { "Russian", "Найдите &lt;STELLAR&gt;место крушения&lt;&gt; своего звездолёта&#xA;Используйте &lt;TECHNOLOGY&gt;компас&lt;&gt; и &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;) для навигации&#xA;Вы можете двигаться &lt;STELLAR&gt;быстрее&lt;&gt; с помощью ускорения (&lt;IMG&gt;RUN&lt;&gt;) и реактивного ранца (&lt;IMG&gt;JUMP&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_S12_FIND_SHIP_MSG1A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Ваш &lt;STELLAR&gt;звездолет&lt;&gt; совершил &lt;STELLAR&gt;аварийную посадку&lt;&gt;.&#xA;Исследуйте мир, чтобы начать &lt;EXPED&gt;экспедицию&lt;&gt;.&#xA; Для передвижения используйте &lt;IMG&gt; PLAYER_LR&lt;&gt;.
                                -- Your &lt;STELLAR&gt;starship&lt;&gt; has &lt;STELLAR&gt;crash landed&lt;&gt;&#xA;Investigate this world to begin the &lt;EXPED&gt;expedition&lt;&gt;&#xA;Use &lt;IMG&gt;PLAYER_LR&lt;&gt; to move
                                { "Russian", "Ваш &lt;STELLAR&gt;звездолёт&lt;&gt; совершил &lt;STELLAR&gt;аварийную посадку&lt;&gt;&#xA;Исследуйте мир, чтобы начать &lt;EXPED&gt;экспедицию&lt;&gt;&#xA; Для передвижения используйте &lt;IMG&gt;PLAYER_LR&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_S12_FIND_SHIP_MSG1B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите &lt;STELLAR&gt;место крушения&lt;&gt; звездолета.&#xA;Удерживайте &lt;IMG&gt;BINOCSCAN&lt;&gt; для анализа целей во время работы визора.
                                { "Russian", "Найдите &lt;STELLAR&gt;место крушения&lt;&gt; звездолёта&#xA;Удерживайте &lt;IMG&gt;BINOCSCAN&lt;&gt; для анализа целей во время работы визора" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_S12_FIND_SHIP_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружен &lt;STELLAR&gt;маяк&lt;&gt; места крушения.&#xA;Выгрузите из него аварийный журнал с помощью &lt;IMG&gt;INTERACT&lt;&gt;.
                                { "Russian", "Обнаружен &lt;STELLAR&gt;маяк&lt;&gt; места крушения&#xA;Выгрузите из него аварийный журнал с помощью &lt;IMG&gt;INTERACT&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_S12_FIND_SHIP_MSG3A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Почините&lt;&gt; важнейшие системы звездолета с помощью инвентаря (&lt;IMG&gt;INVENTORY&lt;&gt;).&#xA;Чтобы начать, выберите и &lt;COMMODITY&gt;закрепите&lt;&gt; (&lt;IMG&gt;PIN&lt;&gt;) поврежденные компоненты.&#xA;Переключайте подсказки для текущего задания и другую информацию с помощью &lt;IMG&gt;SHOWHUD&lt;&gt;.
                                { "Russian", "&lt;STELLAR&gt;Почините&lt;&gt; важнейшие системы звездолёта с помощью инвентаря (&lt;IMG&gt;INVENTORY&lt;&gt;)&#xA;Чтобы начать, выберите и &lt;COMMODITY&gt;закрепите&lt;&gt; (&lt;IMG&gt;PIN&lt;&gt;) поврежденные компоненты&#xA;Переключайте подсказки для текущего задания и другую информацию с помощью &lt;IMG&gt;SHOWHUD&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_S12_FIND_SHIP_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Почините&lt;&gt; важнейшие системы звездолета с помощью инвентаря (&lt;IMG&gt;INVENTORY&lt;&gt;).&#xA;%REPAIR%&#xA;Чтобы получить указания, &lt;COMMODITY&gt;закрепите&lt;&gt; компоненты (&lt;IMG&gt;PIN&lt;&gt;).
                                { "Russian", "&lt;STELLAR&gt;Почините&lt;&gt; важнейшие системы звездолёта с помощью инвентаря (&lt;IMG&gt;INVENTORY&lt;&gt;)&#xA;%REPAIR%&#xA;Чтобы получить указания, &lt;COMMODITY&gt;закрепите&lt;&gt; компоненты (&lt;IMG&gt;PIN&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_S12_FIND_SHIP_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Изготовьте &lt;COMMODITY&gt;%ITEM%&lt;&gt;, чтобы отремонтировать двигатели корабля: %CURRENT%/%AMOUNT%&#xA;Откройте инвентарь (&lt;IMG&gt;INVENTORY&lt;&gt;) и выберите пустую ячейку&#xA;Посмотреть доступные для создания объекты можно с помощью &lt;IMG&gt;PRODMENU&lt;&gt;.
                                { "Russian", "Изготовьте &lt;COMMODITY&gt;%ITEM%&lt;&gt;, чтобы отремонтировать двигатели корабля: %CURRENT%/%AMOUNT%&#xA;Откройте инвентарь (&lt;IMG&gt;INVENTORY&lt;&gt;) и выберите пустую ячейку&#xA;Посмотреть доступные для создания объекты можно с помощью &lt;IMG&gt;PRODMENU&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_S12_FIND_SHIP_MSG5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Нанесите &lt;COMMODITY&gt;герметик&lt;&gt; на поврежденный &lt;TECHNOLOGY&gt;импульсный привод&lt;&gt;.&#xA;Откройте &lt;TECHNOLOGY&gt;инвентарь звездолета&lt;&gt; (&lt;IMG&gt;INVENTORY&lt;&gt;).&#xA;Отремонтируйте поврежденные компоненты с помощью &lt;IMG&gt;REPAIR&lt;&gt;.
                                { "Russian", "Нанесите &lt;COMMODITY&gt;герметик&lt;&gt; на поврежденный &lt;TECHNOLOGY&gt;импульсный привод&lt;&gt;&#xA;Откройте &lt;TECHNOLOGY&gt;инвентарь звездолёта&lt;&gt; (&lt;IMG&gt;INVENTORY&lt;&gt;)&#xA;Отремонтируйте поврежденные компоненты с помощью &lt;IMG&gt;REPAIR&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_S12_FIND_SHIP_MSG6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добыть: %ITEM% — %CURRENT%/%AMOUNT%&#xA;Чтобы добыть ферритную пыль, попробуйте расстрелять &lt;STELLAR&gt;ближайшие камни&lt;&gt;.&#xA;Ферритная пыль необходима для ремонта звездолета.&#xA;Чтобы выстрелить из &lt;TECHNOLOGY&gt;расщепителя&lt;&gt;, нажмите &lt;IMG&gt;ATTACK&lt;&gt;.
                                { "Russian", "Добыть: %ITEM% — %CURRENT%/%AMOUNT%&#xA;Чтобы добыть ферритную пыль, попробуйте расстрелять &lt;STELLAR&gt;ближайшие камни&lt;&gt;&#xA;Ферритная пыль необходима для ремонта звездолёта&#xA;Чтобы выстрелить из &lt;TECHNOLOGY&gt;расщепителя&lt;&gt;, нажмите &lt;IMG&gt;ATTACK&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_S12_FIND_SHIP_MSG7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Изготовьте &lt;COMMODITY&gt;%ITEM%&lt;&gt;, чтобы отремонтировать двигатели корабля: %CURRENT%/%AMOUNT%&#xA;Откройте инвентарь (&lt;IMG&gt;INVENTORY&lt;&gt;) и выберите пустую ячейку&#xA;Посмотреть доступные для создания объекты можно с помощью &lt;IMG&gt;PRODMENU&lt;&gt;.
                                { "Russian", "Изготовьте &lt;COMMODITY&gt;%ITEM%&lt;&gt;, чтобы отремонтировать двигатели корабля: %CURRENT%/%AMOUNT%&#xA;Откройте инвентарь (&lt;IMG&gt;INVENTORY&lt;&gt;) и выберите пустую ячейку&#xA;Посмотреть доступные для создания объекты можно с помощью &lt;IMG&gt;PRODMENU&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_S12_FIND_SHIP_MSG8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Установите &lt;COMMODITY&gt;металлическую обшивку&lt;&gt; на поврежденный &lt;TECHNOLOGY&gt;импульсный привод&lt;&gt;.&#xA;Откройте &lt;TECHNOLOGY&gt;инвентарь звездолета&lt;&gt; (&lt;IMG&gt;INVENTORY&lt;&gt;).&#xA;Отремонтируйте поврежденные компоненты с помощью &lt;IMG&gt;REPAIR&lt;&gt;.
                                { "Russian", "Установите &lt;COMMODITY&gt;металлическую обшивку&lt;&gt; на поврежденный &lt;TECHNOLOGY&gt;импульсный привод&lt;&gt;&#xA;Откройте &lt;TECHNOLOGY&gt;инвентарь звездолёта&lt;&gt; (&lt;IMG&gt;INVENTORY&lt;&gt;)&#xA;Отремонтируйте поврежденные компоненты с помощью &lt;IMG&gt;REPAIR&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_S12_FIND_SHIP_MSG9" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Нанесите &lt;EARTH&gt;чистый феррит&lt;&gt; на поврежденный &lt;TECHNOLOGY&gt;взлетный ускоритель&lt;&gt;.&#xA;Откройте &lt;TECHNOLOGY&gt;инвентарь звездолета&lt;&gt; (&lt;IMG&gt;INVENTORY&lt;&gt;).&#xA;Отремонтируйте поврежденные компоненты с помощью &lt;IMG&gt;REPAIR&lt;&gt;.&#xA;Возьмите &lt;TECHNOLOGY&gt;портативный очиститель&lt;&gt; с помощью &lt;IMG&gt;DECONSTRUCT&lt;&gt;.
                                -- Apply the &lt;EARTH&gt;Pure Ferrite&lt;&gt; to the damaged &lt;TECHNOLOGY&gt;Launch Thruster&lt;&gt;&#xA;Open your &lt;TECHNOLOGY&gt;Starship Inventory&lt;&gt; (&lt;IMG&gt;INVENTORY&lt;&gt;)&#xA;Apply repairs to damaged components with &lt;IMG&gt;REPAIR&lt;&gt;&#xA;Pick up the &lt;TECHNOLOGY&gt;Portable Refiner&lt;&gt; using &lt;IMG&gt;DECONSTRUCT&lt;&gt;
                                { "Russian", "Нанесите &lt;EARTH&gt;чистый феррит&lt;&gt; на поврежденный &lt;TECHNOLOGY&gt;взлетный ускоритель&lt;&gt;&#xA;Откройте &lt;TECHNOLOGY&gt;инвентарь звездолёта&lt;&gt; (&lt;IMG&gt;INVENTORY&lt;&gt;)&#xA;Отремонтируйте поврежденные компоненты с помощью &lt;IMG&gt;REPAIR&lt;&gt;&#xA;Возьмите &lt;TECHNOLOGY&gt;портативный очиститель&lt;&gt; с помощью &lt;IMG&gt;DECONSTRUCT&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_S12_FIND_SHIP_MSG10" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите &lt;TECHNOLOGY&gt;дигидроген&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Найдите дигидроген с помощью &lt;TECHNOLOGY&gt;сканера&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;)&#xA;Дигидроген необходим для ремонта взлетных ускорителей звездолета.&#xA;Чтобы выстрелить &lt;TECHNOLOGY&gt;расщепителем&lt;&gt; мультитула, нажмите &lt;IMG&gt;ATTACK&lt;&gt;.
                                { "Russian", "Соберите &lt;TECHNOLOGY&gt;дигидроген&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Найдите дигидроген с помощью &lt;TECHNOLOGY&gt;сканера&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;)&#xA;Дигидроген необходим для ремонта взлетных ускорителей звездолёта&#xA;Чтобы выстрелить &lt;TECHNOLOGY&gt;расщепителем&lt;&gt; мультитула, нажмите &lt;IMG&gt;ATTACK&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_S12_FIND_SHIP_MSG11" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Изготовьте&lt;FUEL&gt;дигидрогенный гель&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Собрано дигидрогена: &lt;TRADEABLE&gt;40&lt;&gt;/&lt;TRADEABLE&gt;40&lt;&gt;&#xA;Откройте инвентарь (&lt;IMG&gt;INVENTORY&lt;&gt;) и выберите пустую ячейку.&#xA;Посмотреть доступные для создания объекты можно с помощью &lt;IMG&gt;PRODMENU&lt;&gt;.
                                { "Russian", "Изготовьте&lt;FUEL&gt;дигидрогенный гель&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Собрано дигидрогена: &lt;TRADEABLE&gt;40&lt;&gt;/&lt;TRADEABLE&gt;40&lt;&gt;&#xA;Откройте инвентарь (&lt;IMG&gt;INVENTORY&lt;&gt;) и выберите пустую ячейку&#xA;Посмотреть доступные для создания объекты можно с помощью &lt;IMG&gt;PRODMENU&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_S12_FIND_SHIP_MSG12" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Нанесите &lt;TECHNOLOGY&gt;дигидрогенный гель&lt;&gt; на поврежденный &lt;TECHNOLOGY&gt;взлетный ускоритель&lt;&gt;.&#xA;Откройте &lt;TECHNOLOGY&gt;инвентарь звездолета&lt;&gt; (&lt;IMG&gt;INVENTORY&lt;&gt;).&#xA;Отремонтируйте поврежденные компоненты с помощью &lt;IMG&gt;REPAIR&lt;&gt;.
                                { "Russian", "Нанесите &lt;TECHNOLOGY&gt;дигидрогенный гель&lt;&gt; на поврежденный &lt;TECHNOLOGY&gt;взлетный ускоритель&lt;&gt;&#xA;Откройте &lt;TECHNOLOGY&gt;инвентарь звездолёта&lt;&gt; (&lt;IMG&gt;INVENTORY&lt;&gt;)&#xA;Отремонтируйте поврежденные компоненты с помощью &lt;IMG&gt;REPAIR&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_S12_FIND_SHIP_MSG13" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запустите корабль и отправляйтесь в &lt;TECHNOLOGY&gt;космос&lt;&gt;.&#xA;Чтобы взлететь, удерживайте &lt;IMG&gt;THRUST&lt;&gt;.
                                { "Russian", "Запустите корабль и отправляйтесь в &lt;TECHNOLOGY&gt;космос&lt;&gt;&#xA;Чтобы взлететь, удерживайте &lt;IMG&gt;THRUST&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_S12_FIND_SHIP_MSG13A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вернитесь на корабль и отправляйтесь в &lt;TECHNOLOGY&gt;космос&lt;&gt;.&#xA;Возьмите &lt;TECHNOLOGY&gt;портативный очиститель&lt;&gt; с помощью &lt;IMG&gt;DECONSTRUCT&lt;&gt;.
                                { "Russian", "Вернитесь на корабль и отправляйтесь в &lt;TECHNOLOGY&gt;космос&lt;&gt;&#xA;Возьмите &lt;TECHNOLOGY&gt;портативный очиститель&lt;&gt; с помощью &lt;IMG&gt;DECONSTRUCT&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_S12_FIND_SHIP_MSG13B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вернитесь на корабль и отправляйтесь в &lt;TECHNOLOGY&gt;космос&lt;&gt;.
                                { "Russian", "Вернитесь на корабль и отправляйтесь в &lt;TECHNOLOGY&gt;космос&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_S12_FIND_SHIP_MSG13C" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Отправляйтесь в &lt;TECHNOLOGY&gt;космос&lt;&gt;.&#xA;Управляйте основной тягой с помощью &lt;IMG&gt;THRUST&lt;&gt;.&#xA;Для &lt;STELLAR&gt;ускорения&lt;&gt; удерживайте &lt;IMG&gt;BOOST&lt;&gt;.
                                { "Russian", "Отправляйтесь в &lt;TECHNOLOGY&gt;космос&lt;&gt;&#xA;Управляйте основной тягой с помощью &lt;IMG&gt;THRUST&lt;&gt;&#xA;Для &lt;STELLAR&gt;ускорения&lt;&gt; удерживайте &lt;IMG&gt;BOOST&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_S12_FIND_SHIP_MSG14" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Возьмите курс в &lt;STELLAR&gt;новый мир&lt;&gt;.&#xA;Зажмите &lt;IMG&gt;PULSEJUMP&lt;&gt;, чтобы активировать &lt;TECHNOLOGY&gt;импульсный привод&lt;&gt;.&#xA;Это &lt;STELLAR&gt;самый быстрый&lt;&gt; привод вашего звездолета.&#xA;Чтобы отключить его, нажмите &lt;IMG&gt;BRAKE&lt;&gt;.
                                { "Russian", "Возьмите курс в &lt;STELLAR&gt;новый мир&lt;&gt;&#xA;Зажмите &lt;IMG&gt;PULSEJUMP&lt;&gt;, чтобы активировать &lt;TECHNOLOGY&gt;импульсный привод&lt;&gt;&#xA;Это &lt;STELLAR&gt;самый быстрый&lt;&gt; привод вашего звездолёта&#xA;Чтобы отключить его, нажмите &lt;IMG&gt;BRAKE&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_S12_FIND_SHIP_MSG14A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Возьмите курс на &lt;STELLAR&gt;новый мир&lt;&gt;.&#xA;Зажмите &lt;IMG&gt;PULSEJUMP&lt;&gt;, чтобы активировать &lt;TECHNOLOGY&gt;импульсный привод&lt;&gt;.&#xA;Это &lt;STELLAR&gt;самый быстрый&lt;&gt; привод вашего звездолета.&#xA;Ищите планеты на &lt;EXPED&gt;голографической карте&lt;&gt; в кабине звездолета.
                                { "Russian", "Возьмите курс на &lt;STELLAR&gt;новый мир&lt;&gt;&#xA;Зажмите &lt;IMG&gt;PULSEJUMP&lt;&gt;, чтобы активировать &lt;TECHNOLOGY&gt;импульсный привод&lt;&gt;&#xA;Это &lt;STELLAR&gt;самый быстрый&lt;&gt; привод вашего звездолёта&#xA;Ищите планеты на &lt;EXPED&gt;голографической карте&lt;&gt; в кабине звездолёта" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_S12_FIND_SHIP_MSG14B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Возьмите курс на &lt;STELLAR&gt;новый мир&lt;&gt;.&#xA;Нажмите &lt;IMG&gt;BRAKE&lt;&gt;, чтобы отключить импульсный привод.&#xA;Ищите планеты на &lt;EXPED&gt;голографической карте&lt;&gt; в кабине звездолета.
                                { "Russian", "Возьмите курс на &lt;STELLAR&gt;новый мир&lt;&gt;&#xA;Нажмите &lt;IMG&gt;BRAKE&lt;&gt;, чтобы отключить импульсный привод&#xA;Ищите планеты на &lt;EXPED&gt;голографической карте&lt;&gt; в кабине звездолёта" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_S12_FIND_SHIP_MSG14C" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Возьмите курс на &lt;STELLAR&gt;новый мир&lt;&gt;.&#xA;Пройденное расстояние: %CURRENT%&#xA;.Используйте &lt;IMG&gt;BRAKE&lt;&gt;, чтобы отключить импульсный привод.
                                { "Russian", "Возьмите курс на &lt;STELLAR&gt;новый мир&lt;&gt;&#xA;Пройденное расстояние: %CURRENT%&#xA;Используйте &lt;IMG&gt;BRAKE&lt;&gt;, чтобы отключить импульсный двигатель" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_S12_FIND_SHIP_MSG15" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Высадитесь на поверхность нового мира, чтобы &lt;STELLAR&gt;открыть&lt;&gt; его.&#xA;Подлетите к поверхности планеты и замедлитесь (&lt;IMG&gt;BRAKE&lt;&gt;)&#xA;Чтобы приземлиться, используйте &lt;IMG&gt;LANDSHIP&lt;&gt;.
                                { "Russian", "Высадитесь на поверхность нового мира, чтобы &lt;STELLAR&gt;открыть&lt;&gt; его&#xA;Подлетите к поверхности планеты и замедлитесь (&lt;IMG&gt;BRAKE&lt;&gt;)&#xA;Чтобы приземлиться, используйте &lt;IMG&gt;LANDSHIP&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_S12_FIND_SHIP_MSG16" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Высадитесь на поверхность нового мира, чтобы &lt;STELLAR&gt;открыть&lt;&gt; его.&#xA;Нажмите &lt;IMG&gt;EXITSHIP&lt;&gt;, чтобы выйти из корабля.
                                { "Russian", "Высадитесь на поверхность нового мира, чтобы &lt;STELLAR&gt;открыть&lt;&gt; его&#xA;Нажмите &lt;IMG&gt;EXITSHIP&lt;&gt;, чтобы выйти из корабля" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_S12_FIND_SHIP_MSG17" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Этот мир &lt;STELLAR&gt;уже посещен&lt;&gt;.&#xA;Возьмите курс на новый мир.&#xA;Управляйте основной тягой, удерживая &lt;IMG&gt;THRUST&lt;&gt;.&#xA;Для &lt;STELLAR&gt;ускорения&lt;&gt; удерживайте &lt;IMG&gt;BOOST&lt;&gt;.
                                { "Russian", "Этот мир &lt;STELLAR&gt;уже посещен&lt;&gt;&#xA;Возьмите курс на новый мир&#xA;Управляйте основной тягой, удерживая &lt;IMG&gt;THRUST&lt;&gt;&#xA;Для &lt;STELLAR&gt;ускорения&lt;&gt; удерживайте &lt;IMG&gt;BOOST&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region русские буквы в именах тегов
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED13_MINIWORMS_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Носитель множества пастей тянется к &lt;FUEL&gt;норам титанического червя&lt;&gt;. Уничтожьте &lt;FUEL&gt;алчущие отростки&lt;&gt;, чтобы ликвидировать заражение.&#xA;&#xA;Чтобы найти &lt;IMG&gt;ОПАСНЫЕ&lt;&gt; норы червей, воспользуйтесь &lt;TECHNOLOGY&gt;анализирующим визором&lt;&gt; на зараженных планетах.&#xA;&#xA;Примечание: неизвестная сила притягивает &lt;SPECIAL&gt;множество пастей&lt;&gt; к &lt;STELLAR&gt;местам встречи&lt;&gt; экспедиций.
                                { "Russian", "Носитель множества пастей тянется к &lt;FUEL&gt;норам титанического червя&lt;&gt;. Уничтожьте &lt;FUEL&gt;алчущие отростки&lt;&gt;, чтобы ликвидировать заражение.&#xA;&#xA;Чтобы найти норы червей &lt;IMG&gt;DANGER&lt;&gt;, воспользуйтесь &lt;TECHNOLOGY&gt;анализирующим визором&lt;&gt; на зараженных планетах.&#xA;&#xA;Примечание: неизвестная сила притягивает &lt;SPECIAL&gt;множество пастей&lt;&gt; к &lt;STELLAR&gt;местам встречи&lt;&gt; экспедиций." },
                            }
                        },
                        --#endregion

                        --#region Вы можете двигаться быстрее
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED14_FIND_SHIP_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Заступите на службу на борту своего &lt;TECHNOLOGY&gt;звездолета&lt;&gt;. &lt;SPECIAL&gt;Авангард Ликвидаторов&lt;&gt; требует, чтобы вы внесли свой вклад!&#xA;&#xA;Используйте &lt;TECHNOLOGY&gt;компас&lt;&gt; и &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; для навигации.&#xA;Вы можете двигаться быстрее с помощью ускорения (&lt;IMG&gt;RUN&lt;&gt;) и реактивного ранца (&lt;IMG&gt;JUMP&lt;&gt;).
                                { "Russian", "Заступите на службу на борту своего &lt;TECHNOLOGY&gt;звездолёта&lt;&gt;. &lt;SPECIAL&gt;Авангард Ликвидаторов&lt;&gt; требует, чтобы вы внесли свой вклад!&#xA;&#xA;Используйте &lt;TECHNOLOGY&gt;компас&lt;&gt; и &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; для навигации.&#xA;Нажмите &lt;IMG&gt;RUN&lt;&gt;, чтобы двигаться быстрее. Нажмите &lt;IMG&gt;JUMP&lt;&gt;, чтобы выполнять прыжки с помощью реактивного ранца." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_S12_FIND_SHIP_OBJ1_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Найдите&lt;&gt; свой звездолет.&#xA;Используйте &lt;TECHNOLOGY&gt;компас&lt;&gt; и &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;) для навигации.&#xA;Вы можете двигаться быстрее с помощью ускорения (&lt;IMG&gt;RUN&lt;&gt;) и реактивного ранца (&lt;IMG&gt;JUMP&lt;&gt;).&#xA;&#xA;Переключайте подсказки для задания и другую информацию с помощью &lt;IMG&gt;SHOWHUD&lt;&gt;.
                                { "Russian", "&lt;STELLAR&gt;Найдите&lt;&gt; свой звездолёт.&#xA;Используйте &lt;TECHNOLOGY&gt;компас&lt;&gt; и &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;) для навигации.&#xA;Нажмите &lt;IMG&gt;RUN&lt;&gt;, чтобы двигаться быстрее. Нажмите &lt;IMG&gt;JUMP&lt;&gt;, чтобы выполнять прыжки с помощью реактивного ранца.&#xA;&#xA;Переключайте подсказки для задания и другую информацию с помощью &lt;IMG&gt;SHOWHUD&lt;&gt;." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_S13_WALKER_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), &lt;TECHNOLOGY&gt;сканер&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;) и &lt;TECHNOLOGY&gt;компас&lt;&gt;, чтобы находить важные объекты во время странствий.&#xA;&#xA;Вы можете двигаться быстрее с помощью ускорения (&lt;IMG&gt;RUN&lt;&gt;) и реактивного ранца (&lt;IMG&gt;JUMP&lt;&gt;) экзокостюма.
                                { "Russian", "Используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), &lt;TECHNOLOGY&gt;сканер&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;) и &lt;TECHNOLOGY&gt;компас&lt;&gt;, чтобы находить важные объекты во время странствий.&#xA;&#xA;Нажмите &lt;IMG&gt;RUN&lt;&gt;, чтобы двигаться быстрее. Нажмите &lt;IMG&gt;JUMP&lt;&gt;, чтобы выполнять прыжки с помощью реактивного ранца." },
                            }
                        },
                        --#endregion

                        --#region UI_EXPED_NANITES_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_NANITES_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Получено &lt;TECHNOLOGY&gt;нанитов&lt;&gt;: %CURRENT%&#xA;Посетите &lt;STELLAR&gt;помощника-исследователя&lt;&gt;, чтобы приобрести чертежи за наниты.&#xA;Исследователи специализируются на улучшениях экзокостюма, звездолета, мультитула и вездехода.
                                -- &lt;TECHNOLOGY&gt;Nanites&lt;&gt; acquired: %CURRENT%&#xA;Visit a &lt;STELLAR&gt;Research Assistant&lt;&gt; and spend nanites on new blueprints&#xA;Researchers specialise in Exosuit, Starship, Multi-Tool and Exocraft upgrades
                                { "Russian", "Получено &lt;TECHNOLOGY&gt;нанитов&lt;&gt;: %CURRENT%&#xA;Посетите &lt;STELLAR&gt;помощника-исследователя&lt;&gt;, чтобы купить чертежи за наниты&#xA;Исследователи специализируются на улучшениях экзокостюма,&#xA;звездолёта, мультитула и вездехода" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_NANITES_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Получено &lt;TECHNOLOGY&gt;нанитов&lt;&gt;: %CURRENT%&#xA;Посетите &lt;TECHNOLOGY&gt;торговца технологиями&lt;&gt;, чтобы приобрести &lt;SPECIAL&gt;готовые улучшения.&lt;&gt;&#xA;Исследователи специализируются на улучшениях экзокостюма, звездолета, мультитула и вездехода.
                                -- &lt;TECHNOLOGY&gt;Nanites&lt;&gt; acquired: %CURRENT%&#xA;Visit a &lt;TECHNOLOGY&gt;Technology Merchant&lt;&gt; to spend nanites on &lt;SPECIAL&gt;Pre-Built Upgrades&lt;&gt;&#xA;Researchers specialise in Exosuit, Starship, Multi-Tool and Exocraft upgrades
                                { "Russian", "Получено &lt;TECHNOLOGY&gt;нанитов&lt;&gt;: %CURRENT%&#xA;Посетите &lt;TECHNOLOGY&gt;торговца технологиями&lt;&gt;, чтобы купить &lt;SPECIAL&gt; улучшения&lt;&gt;&#xA;Исследователи специализируются на улучшениях экзокостюма,&#xA;звездолёта, мультитула и вездехода" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_NANITES_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Получено &lt;TECHNOLOGY&gt;нанитов&lt;&gt;: %CURRENT%&#xA;Приобретайте разовые улучшения на &lt;COMMODITY&gt;космических станциях&lt;&gt;.&#xA;Или разблокируйте новые чертежи на борту &lt;SPECIAL&gt;Космической Аномалии&lt;&gt;.
                                -- &lt;TECHNOLOGY&gt;Nanites&lt;&gt; acquired: %CURRENT%&#xA;Purchase one-off upgrades on the &lt;COMMODITY&gt;Space Station&lt;&gt;&#xA;Or unlock new blueprints on the &lt;SPECIAL&gt;Space Anomaly&lt;&gt;
                                { "Russian", "Получено &lt;TECHNOLOGY&gt;нанитов&lt;&gt;: %CURRENT%&#xA;Приобретайте улучшения на &lt;COMMODITY&gt;космических станциях&lt;&gt;&#xA;Или разблокируйте новые чертежи на &lt;SPECIAL&gt;Космической Аномалии&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region UI_EXPED_EXOCRAFT_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_EXOCRAFT_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Чтобы вызвать вездеход, постройте &lt;TECHNOLOGY&gt;геостанцию вездехода&lt;&gt;.&#xA;Найдите геостанции в &lt;STELLAR&gt;меню созидания&lt;&gt; (&lt;IMG&gt;BUILD_MENU&lt;&gt;)&#xA;&lt;STELLAR&gt;Закрепите&lt;&gt; шаги строительства с помощью &lt;IMG&gt;PIN_BUILD&lt;&gt;&#xA;Чтобы &lt;TECHNOLOGY&gt;забрать&lt;&gt; геостанцию, воспользуйтесь &lt;IMG&gt;DECONSTRUCT&lt;&gt;
                                { "Russian", "Чтобы вызвать вездеход, постройте &lt;TECHNOLOGY&gt;геостанцию вездехода&lt;&gt;&#xA;Найдите геостанции в &lt;STELLAR&gt;меню строительства&lt;&gt; (&lt;IMG&gt;BUILD_MENU&lt;&gt;)&#xA;&lt;STELLAR&gt;Закрепите&lt;&gt; шаги строительства с помощью &lt;IMG&gt;PIN_BUILD&lt;&gt;&#xA;Чтобы &lt;TECHNOLOGY&gt;забрать&lt;&gt; геостанцию, воспользуйтесь &lt;IMG&gt;DECONSTRUCT&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_EXOCRAFT_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Призовите &lt;STELLAR&gt;вездеход&lt;&gt; и сядьте в него.&#xA;Призовите вездеход из &lt;COMMODITY&gt;геостанции&lt;&gt; или с помощью &lt;TECHNOLOGY&gt;быстрого меню&lt;&gt; (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                { "Russian", "Вызовите &lt;STELLAR&gt;вездеход&lt;&gt; и сядьте в него&#xA;Вызовите вездеход с помощью &lt;COMMODITY&gt;геостанции&lt;&gt;&#xA;или из &lt;TECHNOLOGY&gt;быстрого меню&lt;&gt; (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        --#endregion

                        --#region UI_EXPED_MINIWORMS
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_MINIWORMS_OBJ" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Уничтожить алчущие отростки: %CURRENT%/%AMOUNT%
                                { "Russian", "Уничтожить %AMOUNT% шт. алчущих отростков" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_MINIWORMS_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Носитель множества пастей тянется к &lt;FUEL&gt;норам титанического червя&lt;&gt;. Уничтожьте &lt;FUEL&gt;алчущие отростки&lt;&gt;, чтобы ликвидировать заражение.&#xA;&#xA;Чтобы найти &lt;IMG&gt;ОПАСНЫЕ&lt;&gt; норы червей, воспользуйтесь &lt;TECHNOLOGY&gt;анализирующим визором&lt;&gt; на зараженных планетах.
                                -- The vessel of the many mouths is drawn to &lt;FUEL&gt;Titan Worm Burrows&lt;&gt;. Eliminate their &lt;FUEL&gt;Hungering Tendrils&lt;&gt; to purge the infestation.&#xA;&#xA;Worm Burrows &lt;IMG&gt;DANGER&lt;&gt; can be located with the &lt;TECHNOLOGY&gt;Analysis Visor&lt;&gt; while on infested worlds.
                                { "Russian", "Носитель множества пастей тянется к &lt;FUEL&gt;норам титанического червя&lt;&gt;. Уничтожьте &lt;FUEL&gt;алчущие отростки&lt;&gt;, чтобы ликвидировать заражение.&#xA;&#xA;Чтобы найти норы червей &lt;IMG&gt;DANGER&lt;&gt;, воспользуйтесь &lt;TECHNOLOGY&gt;анализирующим визором&lt;&gt; на зараженных планетах." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_MINIWORMS_SCAN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Уничтожьте &lt;FUEL&gt;алчущие отростки&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Их пасти во множестве наблюдаются возле &lt;FUEL&gt;нор титанических червей&lt;&gt;.&#xA;Чтобы найти норы червей, используйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt;.
                                { "Russian", "Уничтожьте &lt;FUEL&gt;алчущие отростки&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Возле &lt;FUEL&gt;нор титанических червей&lt;&gt; располагаются их пасти&#xA;Чтобы найти норы червей, используйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_MINIWORMS_SWAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Уничтожьте &lt;FUEL&gt;алчущие отростки&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Их пасти во множестве наблюдаются возле &lt;FUEL&gt;нор титанических червей&lt;&gt;.&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;.
                                { "Russian", "Уничтожьте &lt;FUEL&gt;алчущие отростки&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Возле &lt;FUEL&gt;нор титанических червей&lt;&gt; располагаются их пасти&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_MINIWORMS_INACTIVE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Уничтожьте &lt;FUEL&gt;алчущие отростки&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Их пасти во множестве наблюдаются возле &lt;FUEL&gt;нор титанических червей&lt;&gt;.&#xA;Чтобы найти норы червей, активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;).
                                { "Russian", "Уничтожьте &lt;FUEL&gt;алчущие отростки&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Возле &lt;FUEL&gt;нор титанических червей&lt;&gt; располагаются их пасти&#xA;Чтобы найти норы червей, активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_MINIWORMS_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Уничтожьте &lt;SPECIAL&gt;алчущие отростки&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;В текущей системе &lt;SPECIAL&gt;зараженные&lt;&gt; планеты не обнаружены.
                                { "Russian", "Уничтожьте &lt;SPECIAL&gt;алчущие отростки&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;В текущей системе &lt;SPECIAL&gt;зараженные&lt;&gt; планеты не обнаружены" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_MINIWORMS_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Уничтожьте &lt;SPECIAL&gt;алчущие отростки&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Доберитесь до &lt;SPECIAL&gt;зараженной&lt;&gt; планеты, чтобы начать охоту.
                                { "Russian", "Уничтожьте &lt;SPECIAL&gt;алчущие отростки&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Доберитесь до &lt;SPECIAL&gt;зараженной&lt;&gt; планеты, чтобы начать охоту" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_MINIWORMS_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Уничтожьте &lt;FUEL&gt;алчущие отростки&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Их пасти во множестве наблюдаются возле &lt;FUEL&gt;нор титанических червей&lt;&gt;.&#xA;Чтобы найти норы червей, используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;).
                                { "Russian", "Уничтожьте &lt;FUEL&gt;алчущие отростки&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Возле &lt;FUEL&gt;нор титанических червей&lt;&gt; располагаются их пасти&#xA;Чтобы найти норы червей, используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)" },
                            }
                        },
                        --#endregion

                        --#region UI_EXPED_COOK_WORM
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_COOK_WORM_ALT_OBJ2_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Чтобы начать готовить, установите &lt;TECHNOLOGY&gt;переработчик нутриентов&lt;&gt; с помощью &lt;TECHNOLOGY&gt;меню созидания&lt;&gt; (&lt;IMG&gt;BUILD_MENU&lt;&gt;).&#xA;&#xA;Получите чистый сахар из &lt;TRADEABLE&gt;сладкого корня&lt;&gt;.&#xA;Приготовьте желеобразную мембрану из &lt;FUEL&gt;веревок из плоти&lt;&gt;, добытых из алчущих отростков.&#xA;Изготовьте кошмарную колбасу, наполнив &lt;FUEL&gt;желеобразную мембрану&lt;&gt; &lt;SPECIAL&gt;ядрами личинок&lt;&gt;.&#xA;&#xA;Затем приготовьте сиропные потроха, глазировав &lt;FUEL&gt;кошмарную колбасу&lt;&gt; &lt;STELLAR&gt;чистым сахаром&lt;&gt;.
                                { "Russian", "Чтобы начать готовить, установите &lt;TECHNOLOGY&gt;переработчик нутриентов&lt;&gt; с помощью &lt;TECHNOLOGY&gt;меню строительства&lt;&gt; (&lt;IMG&gt;BUILD_MENU&lt;&gt;).&#xA;&#xA;Получите чистый сахар из &lt;TRADEABLE&gt;сладкого корня&lt;&gt;.&#xA;Приготовьте желеобразную мембрану из &lt;FUEL&gt;веревок из плоти&lt;&gt;, добытых из алчущих отростков.&#xA;Изготовьте кошмарную колбасу, наполнив &lt;FUEL&gt;желеобразную мембрану&lt;&gt; &lt;SPECIAL&gt;ядрами личинок&lt;&gt;.&#xA;&#xA;Затем приготовьте сиропные потроха, глазировав &lt;FUEL&gt;кошмарную колбасу&lt;&gt; &lt;STELLAR&gt;чистым сахаром&lt;&gt;." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_COOK_WORM_ALT_MSG1A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите дикий сладкий корень: &lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;&#xA;Чтобы найти эти заготавливаемые растения, используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;).
                                { "Russian", "Соберите дикий сладкий корень: &lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;&#xA;Чтобы найти это растение, используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_COOK_WORM_ALT_MSG1B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите дикий сладкий корень: &lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;&#xA;На данной планете сладкий корень не обнаружен.
                                { "Russian", "Соберите дикий сладкий корень: &lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;&#xA;На данной планете сладкий корень не обнаружен" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_COOK_WORM_ALT_MSG2D" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Изготовьте &lt;STELLAR&gt;чистый сахар&lt;&gt;, чтобы приготовить &lt;SPECIAL&gt;сиропные потроха&lt;&gt;.&#xA;Поместите &lt;TRADEABLE&gt;сладкий корень&lt;&gt; в &lt;TECHNOLOGY&gt;переработчик нутриентов&lt;&gt;, чтобы переработать его в чистый сахар.
                                { "Russian", "Изготовьте &lt;STELLAR&gt;чистый сахар&lt;&gt;, чтобы приготовить &lt;SPECIAL&gt;сиропные потроха&lt;&gt;&#xA;Поместите &lt;TRADEABLE&gt;сладкий корень&lt;&gt; в &lt;TECHNOLOGY&gt;переработчик нутриентов&lt;&gt;,&#xA;чтобы переработать его в чистый сахар" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_COOK_WORM_OBJ1_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите продукты для приготовления сиропных потрохов.&#xA;&#xA;Выкопайте растение &lt;TRADEABLE&gt;эхинокактус&lt;&gt;, чтобы добыть &lt;TRADEABLE&gt;мякоть кактуса&lt;&gt;.&#xA;Уничтожьте &lt;FUEL&gt;шепчущие яйца&lt;&gt;, которые можно найти вокруг заброшенных построек, чтобы получить &lt;SPECIAL&gt;ядра личинок&lt;&gt;.&#xA;Победите &lt;FUEL&gt;алчущие отростки&lt;&gt;, которые можно найти вокруг &lt;FUEL&gt;нор титанических червей&lt;&gt;, чтобы добыть &lt;SPECIAL&gt;веревки из плоти&lt;&gt;.&#xA;&#xA;Чтобы найти &lt;FUEL&gt;шепчущие яйца&lt;&gt;, &lt;FUEL&gt;норы титанических червей&lt;&gt; и &lt;TRADEABLE&gt;заготавливаемые растения&lt;&gt;, используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;).
                                { "Russian", "Соберите продукты для приготовления сиропных потрохов.&#xA;&#xA;Найдите растение &lt;TRADEABLE&gt;эхинокактус&lt;&gt;, чтобы добыть &lt;TRADEABLE&gt;мякоть кактуса&lt;&gt;.&#xA;Уничтожьте &lt;FUEL&gt;шепчущие яйца&lt;&gt;, которые можно найти вокруг заброшенных построек, чтобы получить &lt;SPECIAL&gt;ядра личинок&lt;&gt;.&#xA;Победите &lt;FUEL&gt;алчущие отростки&lt;&gt;, которые можно найти вокруг &lt;FUEL&gt;нор титанических червей&lt;&gt;, чтобы добыть &lt;SPECIAL&gt;веревки из плоти&lt;&gt;.&#xA;&#xA;Чтобы найти &lt;FUEL&gt;шепчущие яйца&lt;&gt;, &lt;FUEL&gt;норы титанических червей&lt;&gt; и &lt;TRADEABLE&gt;заготавливаемые растения&lt;&gt;, используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_COOK_WORM_OBJ2_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Чтобы начать готовить, установите &lt;TECHNOLOGY&gt;переработчик нутриентов&lt;&gt; с помощью &lt;TECHNOLOGY&gt;меню созидания&lt;&gt; (&lt;IMG&gt;BUILD_MENU&lt;&gt;).&#xA;&#xA;Добудьте нектар из &lt;TRADEABLE&gt;мякоти кактуса&lt;&gt;.&#xA;Получите чистый сахар из &lt;TRADEABLE&gt;нектара из кактуса&lt;&gt;.&#xA;&#xA;Приготовьте желеобразную мембрану из &lt;FUEL&gt;веревок из плоти&lt;&gt;, добытых из алчущих отростков.&#xA;Изготовьте кошмарную колбасу, наполнив &lt;FUEL&gt;желеобразную мембрану&lt;&gt; &lt;SPECIAL&gt;ядрами личинок&lt;&gt;.&#xA;Затем приготовьте сиропные потроха, глазировав &lt;FUEL&gt;кошмарную колбасу&lt;&gt; &lt;STELLAR&gt;чистым сахаром&lt;&gt;.
                                { "Russian", "Чтобы начать готовить, установите &lt;TECHNOLOGY&gt;переработчик нутриентов&lt;&gt; с помощью &lt;TECHNOLOGY&gt;меню строительства&lt;&gt; (&lt;IMG&gt;BUILD_MENU&lt;&gt;).&#xA;&#xA;Добудьте нектар из &lt;TRADEABLE&gt;мякоти кактуса&lt;&gt;.&#xA;Получите чистый сахар из &lt;TRADEABLE&gt;нектара кактуса&lt;&gt;.&#xA;&#xA;Приготовьте желеобразную мембрану из &lt;FUEL&gt;веревок из плоти&lt;&gt;, добытых из алчущих отростков.&#xA;Изготовьте кошмарную колбасу, наполнив &lt;FUEL&gt;желеобразную мембрану&lt;&gt; &lt;SPECIAL&gt;ядрами личинок&lt;&gt;.&#xA;Затем приготовьте сиропные потроха, глазировав &lt;FUEL&gt;кошмарную колбасу&lt;&gt; &lt;STELLAR&gt;чистым сахаром&lt;&gt;." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_COOK_WORM_MSG1A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите &lt;TRADEABLE&gt;мякоть кактуса&lt;&gt; с диких &lt;TRADEABLE&gt;эхинокактусов&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Найдите заросли эхинокактусов с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;).
                                { "Russian", "Соберите &lt;TRADEABLE&gt;мякоть кактуса&lt;&gt; с диких &lt;TRADEABLE&gt;эхинокактусов&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Найдите заросли эхинокактусов с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_COOK_WORM_MSG1B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите &lt;TRADEABLE&gt;мякоть кактуса&lt;&gt; с диких &lt;TRADEABLE&gt;эхинокактусов&lt;&gt; (%CURRENT%/%AMOUNT%).&#xA;Доберитесь до &lt;STELLAR&gt;пустынной&lt;&gt; планеты, чтобы собрать местные суккуленты.
                                { "Russian", "Соберите &lt;TRADEABLE&gt;мякоть кактуса&lt;&gt; с диких &lt;TRADEABLE&gt;эхинокактусов&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Доберитесь до &lt;STELLAR&gt;пустынной&lt;&gt; планеты, чтобы собрать местные суккуленты." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_COOK_WORM_MSG1C" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Извлеките &lt;SPECIAL&gt;ядра личинок&lt;&gt; из &lt;FUEL&gt;шепчущих яиц&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Ищите яйца у заброшенных сооружений.&#xA;&lt;FUEL&gt;ВНИМАНИЕ&lt;&gt;: потревожив яйцо, вы вызовите чудовищную стаю!
                                { "Russian", "Извлеките &lt;SPECIAL&gt;ядра личинок&lt;&gt; из &lt;FUEL&gt;шепчущих яиц&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Ищите яйца у заброшенных сооружений&#xA;&lt;FUEL&gt;ВНИМАНИЕ!&lt;&gt; Потревожив яйцо, вы вызовите чудовищную стаю!" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_COOK_WORM_MSG1D" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добудьте &lt;SPECIAL&gt;веревки из плоти&lt;&gt; &lt;FUEL&gt;алчущих отростков&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Их пасти во множестве наблюдаются возле &lt;FUEL&gt;нор титанических червей&lt;&gt;.&#xA;Чтобы найти норы червей, используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;).
                                { "Russian", "Добудьте &lt;SPECIAL&gt;веревки из плоти&lt;&gt; &lt;FUEL&gt;алчущих отростков&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Возле &lt;FUEL&gt;нор титанических червей&lt;&gt; располагаются их пасти&#xA;Чтобы найти норы червей, используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_COOK_WORM_MSG1E" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добудьте &lt;SPECIAL&gt;веревки из плоти&lt;&gt; &lt;FUEL&gt;алчущих отростков&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Доберитесь до &lt;SPECIAL&gt;зараженной&lt;&gt; планеты, чтобы начать охоту.
                                { "Russian", "Добудьте &lt;SPECIAL&gt;веревки из плоти&lt;&gt; &lt;FUEL&gt;алчущих отростков&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Доберитесь до &lt;SPECIAL&gt;зараженной&lt;&gt; планеты, чтобы начать охоту" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_COOK_WORM_MSG2A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Приготовьте &lt;SPECIAL&gt;сиропные потроха&lt;&gt;.&#xA;Изучите чертежи &lt;TECHNOLOGY&gt;переработчика нутриентов&lt;&gt; на &lt;TECHNOLOGY&gt;станции строительства «Утопии»&lt;&gt;, чтобы начать готовить.
                                { "Russian", "Приготовьте &lt;SPECIAL&gt;сиропные потроха&lt;&gt;&#xA;Изучите чертежи &lt;TECHNOLOGY&gt;переработчика нутриентов&lt;&gt; на &lt;TECHNOLOGY&gt;станции строительства «Утопии»&lt;&gt;, чтобы начать готовить" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_COOK_WORM_MSG2B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Приготовьте &lt;SPECIAL&gt;сиропные потроха&lt;&gt;.&#xA;Установите &lt;TECHNOLOGY&gt;переработчик нутриентов&lt;&gt;, чтобы начать готовить.&#xA;Чтобы открыть &lt;TECHNOLOGY&gt;меню созидания&lt;&gt;, нажмите &lt;IMG&gt;BUILD_MENU&lt;&gt;.
                                { "Russian", "Приготовьте &lt;SPECIAL&gt;сиропные потроха&lt;&gt;&#xA;Установите &lt;TECHNOLOGY&gt;переработчик нутриентов&lt;&gt;, чтобы начать готовить&#xA;Чтобы открыть &lt;TECHNOLOGY&gt;меню строительства&lt;&gt;, нажмите &lt;IMG&gt;BUILD_MENU&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_COOK_WORM_MSG2C" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Изготовьте &lt;STELLAR&gt;чистый сахар&lt;&gt;, чтобы приготовить &lt;SPECIAL&gt;сиропные потроха&lt;&gt;.&#xA;Поместите &lt;TRADEABLE&gt;мякоть кактуса&lt;&gt; в &lt;TECHNOLOGY&gt;переработчик нутриентов&lt;&gt;, чтобы получить нектар из кактуса.
                                { "Russian", "Изготовьте &lt;STELLAR&gt;чистый сахар&lt;&gt;, чтобы приготовить &lt;SPECIAL&gt;сиропные потроха&lt;&gt;&#xA;Поместите &lt;TRADEABLE&gt;мякоть кактуса&lt;&gt; в &lt;TECHNOLOGY&gt;переработчик нутриентов&lt;&gt;,&#xA;чтобы получить нектар из кактуса" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_COOK_WORM_MSG2D" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Изготовьте &lt;STELLAR&gt;чистый сахар&lt;&gt;, чтобы приготовить &lt;SPECIAL&gt;сиропные потроха&lt;&gt;.&#xA;Поместите &lt;TRADEABLE&gt;нектар из кактуса&lt;&gt; в &lt;TECHNOLOGY&gt;переработчик нутриентов&lt;&gt;, чтобы переработать его в чистый сахар.
                                { "Russian", "Изготовьте &lt;STELLAR&gt;чистый сахар&lt;&gt;, чтобы приготовить &lt;SPECIAL&gt;сиропные потроха&lt;&gt;&#xA;Поместите &lt;TRADEABLE&gt;нектар из кактуса&lt;&gt; в &lt;TECHNOLOGY&gt;переработчик нутриентов&lt;&gt;,&#xA;чтобы переработать его в чистый сахар" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_COOK_WORM_MSG2E" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Изготовьте &lt;FUEL&gt;кошмарную колбасу&lt;&gt;, чтобы приготовить &lt;SPECIAL&gt;сиропные потроха&lt;&gt;.&#xA;Поместите &lt;FUEL&gt;веревки из плоти&lt;&gt; в &lt;TECHNOLOGY&gt;переработчик нутриентов&lt;&gt;, чтобы изготовить желеобразную мембрану.
                                { "Russian", "Изготовьте &lt;FUEL&gt;кошмарную колбасу&lt;&gt;, чтобы приготовить &lt;SPECIAL&gt;сиропные потроха&lt;&gt;&#xA;Поместите &lt;FUEL&gt;веревки из плоти&lt;&gt; в &lt;TECHNOLOGY&gt;переработчик нутриентов&lt;&gt;,&#xA;чтобы изготовить желеобразную мембрану" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_COOK_WORM_MSG2F" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Изготовьте &lt;FUEL&gt;кошмарную колбасу&lt;&gt;, чтобы приготовить &lt;SPECIAL&gt;сиропные потроха&lt;&gt;.&#xA;Поместите &lt;FUEL&gt;желеобразную мембрану&lt;&gt; и &lt;SPECIAL&gt;ядра личинок&lt;&gt; в &lt;TECHNOLOGY&gt;переработчик нутриентов&lt;&gt;, чтобы наполнить колбасу.
                                { "Russian", "Изготовьте &lt;FUEL&gt;кошмарную колбасу&lt;&gt;, чтобы приготовить &lt;SPECIAL&gt;сиропные потроха&lt;&gt;&#xA;Поместите &lt;FUEL&gt;желеобразную мембрану&lt;&gt; и &lt;SPECIAL&gt;ядра личинок&lt;&gt; в &lt;TECHNOLOGY&gt;переработчик нутриентов&lt;&gt;,&#xA;чтобы наполнить колбасу" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_COOK_WORM_MSG2G" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Подсластите кошмарную колбасу, чтобы закончить готовку &lt;SPECIAL&gt;сиропных потрохов&lt;&gt;.&#xA;Поместите &lt;FUEL&gt;кошмарную колбасу&lt;&gt; и &lt;STELLAR&gt;чистый сахар&lt;&gt; в &lt;TECHNOLOGY&gt;переработчик нутриентов&lt;&gt;.
                                { "Russian", "Подсластите кошмарную колбасу, чтобы закончить готовку &lt;SPECIAL&gt;сиропных потрохов&lt;&gt;&#xA;Поместите &lt;FUEL&gt;кошмарную колбасу&lt;&gt; и &lt;STELLAR&gt;чистый сахар&lt;&gt; в &lt;TECHNOLOGY&gt;переработчик нутриентов&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region UI_EXPED_MEDITATION_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_MEDITATION_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Смотрите на &lt;STELLAR&gt;звезды&lt;&gt;: %CURRENT%/%AMOUNT% сек.&#xA;Ваши глаза принимают бесчисленные миллиарды иголок света.&#xA;Этот момент принадлежит только вам.
                                -- Gaze towards the &lt;STELLAR&gt;stars&lt;&gt;: %CURRENT%/%AMOUNT%s&#xA;Pinpricks of light in their countless billions fall upon your eyes&#xA;This moment is yours alone
                                { "Russian", "Смотрите на &lt;STELLAR&gt;звезды&lt;&gt;: %CURRENT%/%AMOUNT% с&#xA;Ваши глаза принимают бесчисленные миллиарды лучей света&#xA;Этот момент принадлежит только вам" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_MEDITATION_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Смотрите на &lt;STELLAR&gt;звезды&lt;&gt;: %CURRENT%/%AMOUNT% сек.&#xA;Найдите спокойную минуту и посмотрите на &lt;TECHNOLOGY&gt;темное небо&lt;&gt; над головой.
                                { "Russian", "Смотрите на &lt;STELLAR&gt;звезды&lt;&gt;: %CURRENT%/%AMOUNT% с&#xA;Найдите спокойную минуту и посмотрите на &lt;TECHNOLOGY&gt;темное небо&lt;&gt;&#xA;над головой" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_MEDITATION_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Смотрите на &lt;STELLAR&gt;звезды&lt;&gt;: %CURRENT%/%AMOUNT% сек.&#xA;Найдите спокойную минуту, свободную от техники.
                                { "Russian", "Смотрите на &lt;STELLAR&gt;звезды&lt;&gt;: %CURRENT%/%AMOUNT% с&#xA;Найдите спокойную минуту, свободную от техники" },
                            }
                        },
                        --#endregion

                        --#region UI_EXPED_ROBOT
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_ROBOT2_DESC_D" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Собрано атлантидия: %NUM%
                                { "Russian", "Собрано %NUM% ед. атлантидия" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_ROBOT2_OBJ" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Собрать атлантидий: %AMOUNT%
                                { "Russian", "Собрать %AMOUNT% ед. атлантидия" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_ROBOT2_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите &lt;SPECIAL&gt;атлантидий&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Находясь в космосе, воспользуйтесь галактической картой (&lt;IMG&gt;QUICK_MENU&lt;&gt;), чтобы найти &lt;SPECIAL&gt;лишенные гармонии&lt;&gt; миры.
                                { "Russian", "Соберите &lt;SPECIAL&gt;атлантидий&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Находясь в космосе, воспользуйтесь галактической картой (&lt;IMG&gt;QUICK_MENU&lt;&gt;),&#xA;чтобы найти &lt;SPECIAL&gt;лишенные гармонии&lt;&gt; миры" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_ROBOT2_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите &lt;SPECIAL&gt;атлантидий&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Неподалеку обнаружена &lt;SPECIAL&gt;лишенная гармонии&lt;&gt; планета&#xA;&lt;TECHNOLOGY&gt;Сканер&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;) звездолета способен находить планеты испорченных дронов.
                                -- Gather &lt;SPECIAL&gt;Atlantideum&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Nearby &lt;SPECIAL&gt;dissonant&lt;&gt; world detected&#xA;The starship &lt;TECHNOLOGY&gt;scanner&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;) will detect planets with corrupted drones
                                { "Russian", "Соберите &lt;SPECIAL&gt;атлантидий&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Неподалеку обнаружена &lt;SPECIAL&gt;лишенная гармонии&lt;&gt; планета&#xA;&lt;TECHNOLOGY&gt;Сканер&lt;&gt; звездолёта (&lt;IMG&gt;SCAN&lt;&gt;) способен найти планеты испорченных дронов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_ROBOT2_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите &lt;SPECIAL&gt;атлантидий&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Используйте &lt;TECHNOLOGY&gt;расщепитель&lt;&gt;, чтобы добывать атлантидий из &lt;SPECIAL&gt;живых фрагментов&lt;&gt;.&#xA;Испорченные стражи испускают атлантидий, если погибают в бою.
                                { "Russian", "Соберите &lt;SPECIAL&gt;атлантидий&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Используйте &lt;TECHNOLOGY&gt;расщепитель&lt;&gt;, чтобы добывать атлантидий из &lt;SPECIAL&gt;живых фрагментов&lt;&gt;&#xA;Испорченные стражи испускают атлантидий, если погибают в бою" },
                            }
                        },
                        --#endregion

                        --#region Вызовите страницу
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_W_CRE_WATER_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите подводное животное весом более &lt;STELLAR&gt;%AMOUNT% кг&lt;&gt;. Текущий рекорд по весу среди водных форм жизни: &lt;STELLAR&gt;%CURRENT% кг&lt;&gt;. Посмотреть записи о фауне можно в &lt;TECHNOLOGY&gt;каталоге чудес&lt;&gt; (&lt;IMG&gt;OPTIONS&lt;&gt;).&#xA;&#xA;Используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы находить и открывать животных. Звездные системы с &lt;TECHNOLOGY&gt;водными планетами&lt;&gt; помечены на галактической карте.&#xA;За сканирование существ вы получаете &lt;STELLAR&gt;юниты&lt;&gt;. Переименовывайте и загружайте свои открытия, чтобы зарабатывать &lt;STELLAR&gt;наниты&lt;&gt;.&#xA;Вызовите страницу &lt;TECHNOLOGY&gt;открытий&lt;&gt; планеты, чтобы узнать, где и когда искать определенных существ.
                                { "Russian", "Найдите подводное животное весом более &lt;STELLAR&gt;%AMOUNT% кг&lt;&gt;. Текущий рекорд по весу среди водных форм жизни: &lt;STELLAR&gt;%CURRENT% кг&lt;&gt;. Посмотреть записи о фауне можно в &lt;TECHNOLOGY&gt;каталоге чудес&lt;&gt; (&lt;IMG&gt;OPTIONS&lt;&gt;).&#xA;&#xA;Используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы находить и открывать животных. Звездные системы с &lt;TECHNOLOGY&gt;водными планетами&lt;&gt; помечены на галактической карте.&#xA;За сканирование существ вы получаете &lt;STELLAR&gt;юниты&lt;&gt;. Переименовывайте и загружайте свои открытия, чтобы зарабатывать &lt;STELLAR&gt;наниты&lt;&gt;.&#xA;Откройте страницу &lt;TECHNOLOGY&gt;открытий&lt;&gt; планеты, чтобы узнать, где и когда искать определенных существ." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_W_CRE_BIG_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружьте травоядное существо ростом более &lt;STELLAR&gt;%AMOUNT% м&lt;&gt;. Рост самого высокого травоядного, открытого на данный момент: &lt;STELLAR&gt;%CURRENT% м&lt;&gt;. Посмотреть записи о фауне можно в &lt;TECHNOLOGY&gt;каталоге чудес&lt;&gt; (&lt;IMG&gt;OPTIONS&lt;&gt;).&#xA;&#xA;Используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы находить и открывать животных.&#xA;За сканирование существ вы получаете &lt;STELLAR&gt;юниты&lt;&gt;. Переименовывайте и загружайте свои открытия, чтобы зарабатывать &lt;STELLAR&gt;наниты&lt;&gt;.&#xA;Вызовите страницу &lt;TECHNOLOGY&gt;открытий&lt;&gt; планеты, чтобы узнать, где и когда искать определенных существ.
                                { "Russian", "Обнаружьте травоядное существо ростом более &lt;STELLAR&gt;%AMOUNT% м&lt;&gt;. Рост самого высокого травоядного, открытого на данный момент: &lt;STELLAR&gt;%CURRENT% м&lt;&gt;. Посмотреть записи о фауне можно в &lt;TECHNOLOGY&gt;каталоге чудес&lt;&gt; (&lt;IMG&gt;OPTIONS&lt;&gt;).&#xA;&#xA;Используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы находить и открывать животных.&#xA;За сканирование существ вы получаете &lt;STELLAR&gt;юниты&lt;&gt;. Переименовывайте и загружайте свои открытия, чтобы зарабатывать &lt;STELLAR&gt;наниты&lt;&gt;.&#xA;Откройте страницу &lt;TECHNOLOGY&gt;открытий&lt;&gt; планеты, чтобы узнать, где и когда искать определенных существ." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_W_CRE_TOX_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружьте существо с &lt;STELLAR&gt;кислотностью крови&lt;&gt; ниже &lt;STELLAR&gt;%AMOUNT%&lt;&gt; pH. Текущий рекорд по кислотности крови: &lt;STELLAR&gt;%CURRENT% pH&lt;&gt;. Посмотреть записи о фауне можно в &lt;TECHNOLOGY&gt;каталоге чудес&lt;&gt; (&lt;IMG&gt;OPTIONS&lt;&gt;).&#xA;&#xA;Используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы находить и открывать животных. Подходящих существ можно найти на планетах с &lt;TRADEABLE&gt;ядовитой&lt;&gt; атмосферой.&#xA;За сканирование существ вы получаете &lt;STELLAR&gt;юниты&lt;&gt;. Переименовывайте и загружайте свои открытия, чтобы зарабатывать &lt;STELLAR&gt;наниты&lt;&gt;.&#xA;Вызовите страницу &lt;TECHNOLOGY&gt;открытий&lt;&gt; планеты, чтобы узнать, где и когда искать определенных существ.
                                { "Russian", "Обнаружьте существо с &lt;STELLAR&gt;кислотностью крови&lt;&gt; ниже &lt;STELLAR&gt;%AMOUNT%&lt;&gt; pH. Текущий рекорд по кислотности крови: &lt;STELLAR&gt;%CURRENT% pH&lt;&gt;. Посмотреть записи о фауне можно в &lt;TECHNOLOGY&gt;каталоге чудес&lt;&gt; (&lt;IMG&gt;OPTIONS&lt;&gt;).&#xA;&#xA;Используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы находить и открывать животных. Подходящих существ можно найти на планетах с &lt;TRADEABLE&gt;ядовитой&lt;&gt; атмосферой.&#xA;За сканирование существ вы получаете &lt;STELLAR&gt;юниты&lt;&gt;. Переименовывайте и загружайте свои открытия, чтобы зарабатывать &lt;STELLAR&gt;наниты&lt;&gt;.&#xA;Откройте страницу &lt;TECHNOLOGY&gt;открытий&lt;&gt; планеты, чтобы узнать, где и когда искать определенных существ." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_W_CRE_HOT_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружьте существо с &lt;STELLAR&gt;внутренней температурой тела&lt;&gt; выше &lt;STELLAR&gt;%AMOUNT%&lt;&gt;. Текущий рекорд по температуре тела: &lt;STELLAR&gt;%CURRENT%&lt;&gt;. Посмотреть записи о фауне можно в &lt;TECHNOLOGY&gt;каталоге чудес&lt;&gt; (&lt;IMG&gt;OPTIONS&lt;&gt;).&#xA;&#xA;Используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы находить и открывать животных. Подходящих существ можно найти на &lt;FUEL&gt;жарких&lt;&gt; планетах.&#xA;За сканирование существ вы получаете &lt;STELLAR&gt;юниты&lt;&gt;. Переименовывайте и загружайте свои открытия, чтобы зарабатывать &lt;STELLAR&gt;наниты&lt;&gt;.&#xA;Вызовите страницу &lt;TECHNOLOGY&gt;открытий&lt;&gt; планеты, чтобы узнать, где и когда искать определенных существ.
                                { "Russian", "Обнаружьте существо с &lt;STELLAR&gt;внутренней температурой тела&lt;&gt; выше &lt;STELLAR&gt;%AMOUNT%&lt;&gt;. Текущий рекорд по температуре тела: &lt;STELLAR&gt;%CURRENT%&lt;&gt;. Посмотреть записи о фауне можно в &lt;TECHNOLOGY&gt;каталоге чудес&lt;&gt; (&lt;IMG&gt;OPTIONS&lt;&gt;).&#xA;&#xA;Используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы находить и открывать животных. Подходящих существ можно найти на &lt;FUEL&gt;жарких&lt;&gt; планетах.&#xA;За сканирование существ вы получаете &lt;STELLAR&gt;юниты&lt;&gt;. Переименовывайте и загружайте свои открытия, чтобы зарабатывать &lt;STELLAR&gt;наниты&lt;&gt;.&#xA;Откройте страницу &lt;TECHNOLOGY&gt;открытий&lt;&gt; планеты, чтобы узнать, где и когда искать определенных существ." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_W_CRE_BAD_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружьте хищное существо с &lt;STELLAR&gt;уровнем агрессии&lt;&gt; выше &lt;STELLAR&gt;%AMOUNT%пав&lt;&gt;. Максимальный записанный уровень агрессии: &lt;STELLAR&gt;%CURRENT% пав&lt;&gt;. Посмотреть записи о фауне можно в &lt;TECHNOLOGY&gt;каталоге чудес&lt;&gt; (&lt;IMG&gt;OPTIONS&lt;&gt;).&#xA;&#xA;&lt;STELLAR&gt;Примечание:&lt;&gt; чтобы найти достаточно агрессивное существо, может потребоваться исследовать несколько планет.&#xA;&#xA;Используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы находить и открывать животных.&#xA;За сканирование существ вы получаете &lt;STELLAR&gt;юниты&lt;&gt;. Переименовывайте и загружайте свои открытия, чтобы зарабатывать &lt;STELLAR&gt;наниты&lt;&gt;.&#xA;Вызовите страницу &lt;TECHNOLOGY&gt;открытий&lt;&gt; планеты, чтобы узнать, где и когда искать определенных существ.
                                { "Russian", "Обнаружьте хищное существо с &lt;STELLAR&gt;уровнем агрессии&lt;&gt; выше &lt;STELLAR&gt;%AMOUNT%пав&lt;&gt;. Максимальный записанный уровень агрессии: &lt;STELLAR&gt;%CURRENT% пав&lt;&gt;. Посмотреть записи о фауне можно в &lt;TECHNOLOGY&gt;каталоге чудес&lt;&gt; (&lt;IMG&gt;OPTIONS&lt;&gt;).&#xA;&#xA;&lt;STELLAR&gt;Примечание:&lt;&gt; чтобы найти достаточно агрессивное существо, может потребоваться исследовать несколько планет.&#xA;&#xA;Используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы находить и открывать животных.&#xA;За сканирование существ вы получаете &lt;STELLAR&gt;юниты&lt;&gt;. Переименовывайте и загружайте свои открытия, чтобы зарабатывать &lt;STELLAR&gt;наниты&lt;&gt;.&#xA;Откройте страницу &lt;TECHNOLOGY&gt;открытий&lt;&gt; планеты, чтобы узнать, где и когда искать определенных существ." },
                            }
                        },
                        --#endregion

                        --#region UI_EXPED_CORRUPT_KILL
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_CORRUPT_KILL_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Уничтожьте испорченных стражей: %CURRENT%/%AMOUNT%&#xA;Находясь в космосе, воспользуйтесь галактической картой (&lt;IMG&gt;QUICK_MENU&lt;&gt;), чтобы найти &lt;SPECIAL&gt;лишенные гармонии&lt;&gt; миры.
                                { "Russian", "Уничтожьте испорченных стражей: %CURRENT%/%AMOUNT%&#xA;Находясь в космосе, воспользуйтесь галактической картой (&lt;IMG&gt;QUICK_MENU&lt;&gt;),&#xA;чтобы найти &lt;SPECIAL&gt;лишенные гармонии&lt;&gt; миры" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_CORRUPT_KILL_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Уничтожьте испорченных стражей: %CURRENT%/%AMOUNT%&#xA;Неподалеку обнаружена &lt;SPECIAL&gt;лишенная гармонии&lt;&gt; планета.&#xA;&lt;TECHNOLOGY&gt;Сканер&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;) звездолета способен находить планеты испорченных дронов.
                                { "Russian", "Уничтожьте испорченных стражей: %CURRENT%/%AMOUNT%&#xA;Неподалеку обнаружена &lt;SPECIAL&gt;лишенная гармонии&lt;&gt; планета&#xA;&lt;TECHNOLOGY&gt;Сканер&lt;&gt; звездолёта (&lt;IMG&gt;SCAN&lt;&gt;) способен найти планеты испорченных дронов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_CORRUPT_KILL_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Уничтожьте испорченных стражей: %CURRENT%/%AMOUNT%&#xA;&lt;SPECIAL&gt;Испорченные дроны&lt;&gt; роятся в этом лишенном гармонии мире.
                                { "Russian", "Уничтожьте испорченных стражей: %CURRENT%/%AMOUNT%&#xA;&lt;SPECIAL&gt;Испорченные дроны&lt;&gt; роятся в этом лишенном гармонии мире" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_CORRUPT_KILL_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Испорченные дроны&lt;&gt; патрулируют лишенные гармонии миры. Их оболочки искажены силой, излучаемой тканью планеты.&#xA;&#xA;Найдите &lt;STELLAR&gt;лишенные гармонии&lt;&gt; системы на галактической карте. Находясь в космосе, просканируйте отдельные планеты с помощью &lt;TECHNOLOGY&gt;сканера&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;) звездолета, чтобы найти миры, где скопились отряды испорченных стражей.&#xA;&#xA;Все миры встречи, связанные с этапами &lt;EXPED&gt;паломничества&lt;&gt;, кишат испорченными стражами.
                                { "Russian", "&lt;SPECIAL&gt;Испорченные дроны&lt;&gt; патрулируют лишенные гармонии миры. Их оболочки искажены силой, излучаемой тканью планеты.&#xA;&#xA;Найдите &lt;STELLAR&gt;лишенные гармонии&lt;&gt; системы на галактической карте. Находясь в космосе, просканируйте отдельные планеты с помощью &lt;TECHNOLOGY&gt;сканера&lt;&gt; звездолёта (&lt;IMG&gt;SCAN&lt;&gt;), чтобы найти миры, где скопились отряды испорченных стражей.&#xA;&#xA;Все миры встречи, связанные с этапами &lt;EXPED&gt;паломничества&lt;&gt;, кишат испорченными стражами." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_CORRUPT_KILL_TIP_ALT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Испорченные дроны&lt;&gt; патрулируют лишенные гармонии миры. Их оболочки искажены силой, излучаемой тканью планеты.&#xA;&#xA;Найдите &lt;STELLAR&gt;лишенные гармонии&lt;&gt; системы на галактической карте. Находясь в космосе, просканируйте отдельные планеты с помощью &lt;TECHNOLOGY&gt;сканера&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;) звездолета, чтобы найти миры, где скопились отряды испорченных стражей.
                                { "Russian", "&lt;SPECIAL&gt;Испорченные дроны&lt;&gt; патрулируют лишенные гармонии миры. Их оболочки искажены силой, излучаемой тканью планеты.&#xA;&#xA;Найдите &lt;STELLAR&gt;лишенные гармонии&lt;&gt; системы на галактической карте. Находясь в космосе, просканируйте отдельные планеты с помощью &lt;TECHNOLOGY&gt;сканера&lt;&gt; звездолёта (&lt;IMG&gt;SCAN&lt;&gt;), чтобы найти миры, где скопились отряды испорченных стражей." },
                            }
                        },
                        --#endregion

                        --#region UI_EXPED_VISIT_TOWER_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_VISIT_TOWER_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Изучите чертеж «&lt;TECHNOLOGY&gt;%ITEM%&lt;&gt;».&#xA;Чтобы получить чертеж, пройдите этап «&lt;EXPED&gt;%MILESTONE%&lt;&gt;».&#xA;Выбрать этап можно на вкладке &lt;STELLAR&gt;экспедиции&lt;&gt; (&lt;IMG&gt;OPTIONS&lt;&gt;).
                                { "Russian", "Изучите чертеж &lt;TECHNOLOGY&gt;%ITEM%&lt;&gt;&#xA;Чтобы получить его, пройдите этап &lt;EXPED&gt;%MILESTONE%&lt;&gt;&#xA;Выбрать этап можно на вкладке &lt;STELLAR&gt;экспедиции&lt;&gt; (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_VISIT_TOWER_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите передатчик &lt;STELLAR&gt;голо-терминала&lt;&gt;.&#xA;Используйте &lt;TECHNOLOGY&gt;усилитель сигнала&lt;&gt;, чтобы найти находящиеся неподалеку постройки.&#xA;Установите усилитель сигнала с помощью &lt;TECHNOLOGY&gt;меню созидания&lt;&gt; (&lt;IMG&gt;BUILD_MENU&lt;&gt;).
                                { "Russian", "Найдите передатчик &lt;STELLAR&gt;голо-терминала&lt;&gt;&#xA;Используйте &lt;TECHNOLOGY&gt;усилитель сигнала&lt;&gt;, чтобы найти находящиеся неподалеку постройки&#xA;Установите усилитель сигнала из &lt;TECHNOLOGY&gt;меню строительства&lt;&gt; (&lt;IMG&gt;BUILD_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_VISIT_TOWER_MSG2A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите передатчик &lt;STELLAR&gt;голо-терминала&lt;&gt;.&#xA;Используйте &lt;TECHNOLOGY&gt;усилитель сигнала&lt;&gt;, чтобы найти находящиеся неподалеку постройки.&#xA;Для активации усилителя сигнала необходим &lt;TECHNOLOGY&gt;накопитель импульса&lt;&gt;.&#xA;Закрепите (&lt;IMG&gt;PRODMENU&lt;&gt;) сборочные инструкции в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;).
                                -- Locate a &lt;STELLAR&gt;Holo-Terminus&lt;&gt; transmitter&#xA;Search for nearby buildings with a &lt;TECHNOLOGY&gt;Signal Booster&lt;&gt;&#xA;Signal Booster requires &lt;TECHNOLOGY&gt;Surge Battery&lt;&gt; to activate&#xA;Pin (&lt;IMG&gt;PRODMENU&lt;&gt;) assembly instructions with from the Inventory (&lt;IMG&gt;INVENTORY&lt;&gt;)
                                { "Russian", "Найдите передатчик &lt;STELLAR&gt;голо-терминала&lt;&gt;&#xA;Используйте &lt;TECHNOLOGY&gt;усилитель сигнала&lt;&gt;, чтобы найти находящиеся неподалеку постройки&#xA;Для активации усилителя сигнала необходим &lt;TECHNOLOGY&gt;накопитель импульса&lt;&gt;&#xA;Закрепляйте (&lt;IMG&gt;PRODMENU&lt;&gt;) инструкции в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_VISIT_TOWER_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите передатчик &lt;STELLAR&gt;голо-терминала&lt;&gt;.&#xA;Используйте &lt;TECHNOLOGY&gt;усилитель сигнала&lt;&gt;, чтобы найти находящиеся неподалеку постройки.
                                { "Russian", "Найдите передатчик &lt;STELLAR&gt;голо-терминала&lt;&gt;&#xA;Найдите постройки неподалеку с помощью &lt;TECHNOLOGY&gt;усилителя сигнала&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_VISIT_TOWER_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите передатчик &lt;STELLAR&gt;голо-терминала&lt;&gt;.&#xA;&lt;FUEL&gt;ВНИМАНИЕ:&lt;&gt; на данной планете отсутствуют сети связи.&#xA;Найдите другую планету, чтобы продолжить поиски.
                                { "Russian", "Найдите передатчик &lt;STELLAR&gt;голо-терминала&lt;&gt;&#xA;&lt;FUEL&gt;ВНИМАНИЕ!&lt;&gt; На данной планете отсутствуют сети связи&#xA;Найдите другую планету, чтобы продолжить поиски" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_VISIT_TOWER_MSG5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите передатчик &lt;STELLAR&gt;голо-терминала&lt;&gt;.&#xA;Доберитесь до &lt;TECHNOLOGY&gt;планеты&lt;&gt;, чтобы начать поиски.
                                { "Russian", "Найдите передатчик &lt;STELLAR&gt;голо-терминала&lt;&gt;&#xA;Доберитесь до &lt;TECHNOLOGY&gt;планеты&lt;&gt;, чтобы начать поиски" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_VISIT_TOWER_MSG6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружен ретранслятор связи.&#xA;Доберитесь до источника отмеченного сигнала, чтобы найти &lt;STELLAR&gt;голо-терминал&lt;&gt;.
                                { "Russian", "Обнаружен ретранслятор связи&#xA;Доберитесь до источника сигнала, чтобы найти &lt;STELLAR&gt;голо-терминал&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_VISIT_TOWER_MSG7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружен ретранслятор связи.&#xA;Отремонтируйте и активируйте &lt;STELLAR&gt;голо-терминал&lt;&gt;, чтобы передать сообщение.
                                { "Russian", "Обнаружен ретранслятор связи&#xA;Отремонтируйте и активируйте &lt;STELLAR&gt;голо-терминал&lt;&gt;,&#xA;чтобы передать сообщение" },
                            }
                        },
                        --#endregion

                        --#region UI_EXPED_VISIT_RUINS_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_VISIT_RUINS_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите &lt;SPECIAL&gt;инопланетные руины&lt;&gt;: %CURRENT%/%AMOUNT%.&#xA;Используйте &lt;TECHNOLOGY&gt;усилитель сигнала&lt;&gt;, чтобы найти находящиеся неподалеку постройки.&#xA;Для активации усилителя сигнала необходим &lt;TECHNOLOGY&gt;накопитель импульса&lt;&gt;.&#xA;Закрепите (&lt;IMG&gt;PRODMENU&lt;&gt;) сборочные инструкции в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;).
                                { "Russian", "Найдите &lt;SPECIAL&gt;инопланетные руины&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Найдите постройки неподалеку с помощью &lt;TECHNOLOGY&gt;усилителя сигнала&lt;&gt;&#xA;Для активации усилителя сигнала необходим &lt;TECHNOLOGY&gt;накопитель импульса&lt;&gt;&#xA;Закрепляйте (&lt;IMG&gt;PRODMENU&lt;&gt;) инструкции в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_VISIT_RUINS_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите &lt;SPECIAL&gt;инопланетные руины&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Используйте &lt;TECHNOLOGY&gt;усилитель сигнала&lt;&gt;, чтобы найти находящиеся неподалеку постройки.&#xA;Установите усилитель сигнала с помощью &lt;TECHNOLOGY&gt;меню созидания&lt;&gt; (&lt;IMG&gt;BUILD_MENU&lt;&gt;).
                                { "Russian", "Найдите &lt;SPECIAL&gt;инопланетные руины&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Найдите постройки неподалеку с помощью &lt;TECHNOLOGY&gt;усилителя сигнала&lt;&gt;&#xA;Установите усилитель сигнала из &lt;TECHNOLOGY&gt;меню строительства&lt;&gt; (&lt;IMG&gt;BUILD_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_VISIT_RUINS_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите инопланетные руины&lt;SPECIAL&gt;: &lt;&gt;/%CURRENT%%AMOUNT%.&#xA;Используйте &lt;TECHNOLOGY&gt;усилитель сигнала&lt;&gt;, чтобы найти находящиеся неподалеку постройки.
                                -- Locate &lt;SPECIAL&gt;alien ruins&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Use the &lt;TECHNOLOGY&gt;Signal Booster&lt;&gt; to search for nearby buildings
                                { "Russian", "Найдите &lt;SPECIAL&gt;инопланетные руины&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Найдите постройки неподалеку с помощью &lt;TECHNOLOGY&gt;усилителя сигнала&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_VISIT_RUINS_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите &lt;SPECIAL&gt;инопланетные руины&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;&lt;FUEL&gt;ВНИМАНИЕ!&lt;&gt; Данная планета никогда не была обитаемой.&#xA;Найдите новую планету и продолжите поиски.
                                { "Russian", "Найдите &lt;SPECIAL&gt;инопланетные руины&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;&lt;FUEL&gt;ВНИМАНИЕ!&lt;&gt; Данная планета никогда не была обитаемой&#xA;Найдите новую планету и продолжите поиски" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_VISIT_RUINS_MSG5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите &lt;SPECIAL&gt;инопланетные руины&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Доберитесь до &lt;TECHNOLOGY&gt;планеты&lt;&gt;, чтобы начать поиски.
                                { "Russian", "Найдите &lt;SPECIAL&gt;инопланетные руины&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Доберитесь до &lt;TECHNOLOGY&gt;планеты&lt;&gt;, чтобы начать поиски" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_VISIT_RUINS_MSG6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите &lt;SPECIAL&gt;инопланетные руины&lt;&gt; : %CURRENT%/%AMOUNT%&#xA;Доберитесь до указанных координат, чтобы найти руины.
                                { "Russian", "Найдите &lt;SPECIAL&gt;инопланетные руины&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Доберитесь до указанных координат" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_VISIT_RUINS_MSG7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Исследуйте &lt;SPECIAL&gt;инопланетные руины&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Строители этого места давно погибли.&#xA;Обыщите руины, чтобы узнать их забытую историю.
                                { "Russian", "Исследуйте &lt;SPECIAL&gt;инопланетные руины&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Строители этого места давно погибли&#xA;Обыщите руины, чтобы узнать их забытую историю" },
                            }
                        },
                        --#endregion

                        --#region UI_EXPED13_GRAVE_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED13_GRAVE_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите &lt;SPECIAL&gt;брешь в реальности&lt;&gt;.&#xA;Используйте &lt;TECHNOLOGY&gt;усилитель сигнала&lt;&gt;, чтобы находить слабые места в границах между реальностями.&#xA;Для активации усилителя сигнала необходим &lt;TECHNOLOGY&gt;накопитель импульса&lt;&gt;.&#xA;Закрепите (&lt;IMG&gt;PRODMENU&lt;&gt;) сборочные инструкции в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;).
                                { "Russian", "Найдите &lt;SPECIAL&gt;брешь в реальности&lt;&gt;&#xA;Усилитель сигнала&lt;&gt; поможет найти слабые места между реальностями&#xA;Для активации усилителя сигнала необходим &lt;TECHNOLOGY&gt;накопитель импульса&lt;&gt;&#xA;Закрепляйте (&lt;IMG&gt;PRODMENU&lt;&gt;) инструкции в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED13_GRAVE_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите &lt;SPECIAL&gt;брешь в реальности&lt;&gt;.&#xA;Используйте &lt;TECHNOLOGY&gt;усилитель сигнала&lt;&gt;, чтобы искать слабые места в границах между реальностями.&#xA;Установите усилитель сигнала с помощью &lt;TECHNOLOGY&gt;меню созидания&lt;&gt; (&lt;IMG&gt;BUILD_MENU&lt;&gt;).
                                { "Russian", "Найдите &lt;SPECIAL&gt;брешь в реальности&lt;&gt;&#xA;Усилитель сигнала&lt;&gt; поможет найти слабые места между реальностями&#xA;Установите усилитель сигнала из &lt;TECHNOLOGY&gt;меню строительства&lt;&gt; (&lt;IMG&gt;BUILD_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED13_GRAVE_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите &lt;SPECIAL&gt;брешь в реальности&lt;&gt;.&#xA;Используйте &lt;TECHNOLOGY&gt;усилитель сигнала&lt;&gt;, чтобы искать слабые места в границах между реальностями.
                                -- Locate a &lt;SPECIAL&gt;reality breach&lt;&gt;&#xA;Use the &lt;TECHNOLOGY&gt;Signal Booster&lt;&gt; to search for weakpoints in the boundaries between realities
                                { "Russian", "Найдите &lt;SPECIAL&gt;брешь в реальности&lt;&gt;&#xA;&lt;TECHNOLOGY&gt;Усилитель сигнала&lt;&gt; поможет найти слабые места между реальностями" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED13_GRAVE_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите &lt;SPECIAL&gt;брешь в реальности&lt;&gt;.&#xA;&lt;FUEL&gt;ВНИМАНИЕ:&lt;&gt; Граница на этой планете &lt;STELLAR&gt;крепка&lt;&gt;.&#xA;Найдите другую планету, чтобы продолжить свои поиски.
                                { "Russian", "Найдите &lt;SPECIAL&gt;брешь в реальности&lt;&gt;&#xA;&lt;FUEL&gt;ВНИМАНИЕ!&lt;&gt; Граница на этой планете &lt;STELLAR&gt;крепка&lt;&gt;&#xA;Найдите другую планету, чтобы продолжить поиски" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED13_GRAVE_MSG5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите &lt;SPECIAL&gt;брешь в реальности&lt;&gt;.&#xA;Доберитесь до &lt;TECHNOLOGY&gt;планеты&lt;&gt;, чтобы начать поиски.
                                { "Russian", "Найдите &lt;SPECIAL&gt;брешь в реальности&lt;&gt;&#xA;Доберитесь до &lt;TECHNOLOGY&gt;планеты&lt;&gt;, чтобы начать поиски" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED13_GRAVE_MSG6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружена &lt;SPECIAL&gt;брешь в реальности&lt;&gt;.&#xA;Доберитесь до указанного источника сигнала, чтобы найти разрыв в границе.
                                -- &lt;SPECIAL&gt;Reality breach&lt;&gt; detected&#xA;Reach the marked signal to locate the boundary failure
                                { "Russian", "Обнаружена &lt;SPECIAL&gt;брешь в реальности&lt;&gt;&#xA;Доберитесь до источника сигнала" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED13_GRAVE_MSG7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружена &lt;SPECIAL&gt;брешь в реальности&lt;&gt;.&#xA;Исследуйте разрыв в границе.
                                -- &lt;SPECIAL&gt;Reality breach&lt;&gt; detected&#xA;Investigate the boundary failure
                                { "Russian", "Обнаружена &lt;SPECIAL&gt;брешь в реальности&lt;&gt;&#xA;Исследуйте разрыв границы" },
                            }
                        },
                        --#endregion

                        --#region UI_EXPED_S9_MYSTERY_SURV
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_S9_MYSTERY_SURV_OFF" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Место очистки расположено &lt;STELLAR&gt;неподалеку&lt;&gt;.&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; в анализирующем визоре &lt;IMG&gt;AIM&lt;&gt;.
                                { "Russian", "Место очистки расположено &lt;STELLAR&gt;неподалеку&lt;&gt;&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; в анализирующем визоре &lt;IMG&gt;AIM&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_S9_MYSTERY_SURV_SWAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Место очистки расположено &lt;STELLAR&gt;неподалеку&lt;&gt;.&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;
                                { "Russian", "Место очистки расположено &lt;STELLAR&gt;неподалеку&lt;&gt;&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_S9_MYSTERY_SURV" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Следуйте по &lt;STELLAR&gt;направляющим&lt;&gt;, чтобы найти &#xA;место очистки.&lt;TECHNOLOGY&gt;Разведка цели&lt;&gt; укажет точные координаты задания.
                                -- Follow the &lt;STELLAR&gt;directional indicators&lt;&gt; to locate the purge site&#xA;This &lt;TECHNOLOGY&gt;Target Sweep&lt;&gt; will pinpoint mission locations
                                { "Russian", "Следуйте по &lt;STELLAR&gt;направляющим&lt;&gt;, чтобы найти место очистки&#xA;&lt;TECHNOLOGY&gt;Разведка цели&lt;&gt; укажет точные координаты задания" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_S9_MYSTERY_SURV_CAR" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Назначенное место очистки находится &lt;STELLAR&gt;неподалеку&lt;&gt;.&#xA;Воспользуйтесь &lt;STELLAR&gt;разведкой цели&lt;&gt;, чтобы его найти.&#xA;Чтобы подтвердить направление разведки, выйдите из своего транспорта.
                                { "Russian", "Назначенное место очистки находится &lt;STELLAR&gt;неподалеку&lt;&gt;&#xA;Воспользуйтесь &lt;STELLAR&gt;разведкой цели&lt;&gt;, чтобы  найти его&#xA;Выйдите из транспорта, чтобы сверить направление" },
                            }
                        },
                        --#endregion

                        --#region UI_EXPED_NANITES_DETAIL
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_NANITES_DETAIL1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Используйте наниты для покупки &lt;TECHNOLOGY&gt;улучшений&lt;&gt;.
                                -- Use nanites to purchase &lt;TECHNOLOGY&gt;upgrades&lt;&gt;
                                { "Russian", "Покупайте &lt;TECHNOLOGY&gt;улучшения&lt;&gt; за наниты" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_NANITES_DETAIL2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Купите разовые улучшения на&#xA;&lt;COMMODITY&gt;космической станции&lt;&gt;.
                                -- Purchase one-off upgrades on the &lt;COMMODITY&gt;Space Station&lt;&gt;
                                { "Russian", "Улучшения продаются на &lt;COMMODITY&gt;космической станции&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_NANITES_DETAIL3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Разблокируйте новые чертежи на борту &lt;SPECIAL&gt;Космической Аномалии&lt;&gt;.
                                { "Russian", "Разблокируйте новые чертежи на &lt;SPECIAL&gt;Космической Аномалии&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region UI_EXPED_BP_DETAIL
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_BP_DETAIL1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Разблокируйте новые элементы с помощью &lt;TECHNOLOGY&gt;станции строительных исследований&lt;&gt; на Космической Аномалии.
                                { "Russian", "Разблокируйте новые элементы с помощью &lt;TECHNOLOGY&gt;станции строительных исследований&lt;&gt; на Космической Аномалии" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_BP_DETAIL2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Разблокируйте новые элементы за &lt;STELLAR&gt;извлеченные данные&lt;&gt;.
                                { "Russian", "Разблокируйте новые элементы за &lt;STELLAR&gt;извлеченные данные&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_BP_DETAIL3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Используйте ландшафтный манипулятор, чтобы выкапывать извлеченные данные на различных планетах.
                                -- Use the Terrain Manipulator to dig up salvaged data on planets
                                { "Russian", "Выкапывайте извлеченные данные на планетах с помощью ландшафтного манипулятора" },
                            }
                        },
                        --#endregion

                        --#region UI_EXPED_PHOTO_BIOME_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_PHOTO_BIOME_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Откройте &lt;STELLAR&gt;фоторежим&lt;&gt; в &lt;TECHNOLOGY&gt;быстром меню&lt;&gt; (&lt;IMG&gt;QUICK_MENU&lt;&gt;)&#xA;%STATUS%
                                -- Open &lt;STELLAR&gt;Photo Mode&lt;&gt; from the &lt;TECHNOLOGY&gt;Quick Menu&lt;&gt; (&lt;IMG&gt;QUICK_MENU&lt;&gt;)&#xA;%STATUS%
                                { "Russian", "Откройте &lt;STELLAR&gt;фоторежим&lt;&gt; из &lt;TECHNOLOGY&gt;быстрого меню&lt;&gt; (&lt;IMG&gt;QUICK_MENU&lt;&gt;)&#xA;%STATUS%" },
                            }
                        },
                        --#endregion

                        --#region UI_EXPED_SHIP_INV_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_SHIP_INV_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Получено &lt;TECHNOLOGY&gt;улучшений хранилища звездолета&lt;&gt;: %CURRENT%&#xA;Эти модули позволяют расширять &lt;STELLAR&gt;инвентарь звездолета&lt;&gt;.&#xA;Устанавливайте их с помощью &lt;TECHNOLOGY&gt;терминала оснащения звездолета&lt;&gt;.&#xA;При использовании терминала вы можете &lt;TECHNOLOGY&gt;выбрать любую пустую ячейку&lt;&gt;.
                                -- &lt;TECHNOLOGY&gt;Starship Storage Augmentations&lt;&gt; acquired: %CURRENT%&#xA;Use these modules to expand your &lt;STELLAR&gt;starship inventory&lt;&gt;&#xA;Deploy modules at the &lt;TECHNOLOGY&gt;Starship Outfitting Terminal&lt;&gt;&#xA;When using the terminal, you may &lt;TECHNOLOGY&gt;select any empty slot&lt;&gt;
                                { "Russian", "Получено &lt;TECHNOLOGY&gt;улучшений хранилища звездолёта&lt;&gt;: %CURRENT%&#xA;Эти модули позволяют расширять &lt;STELLAR&gt;инвентарь звездолёта&lt;&gt;&#xA;Устанавливайте их с помощью &lt;TECHNOLOGY&gt;терминала оснащения звездолёта&lt;&gt;&#xA;Вы сможете выбрать любую &lt;TECHNOLOGY&gt;пустую ячейку&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_SHIP_INV_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Получено &lt;TECHNOLOGY&gt;улучшений трюма звездолета&lt;&gt;: %CURRENT%&#xA;Эти модули позволяют расширять &lt;STELLAR&gt;инвентарь звездолета&lt;&gt;.&#xA;Найти терминал оснащения звездолета можно на борту &lt;COMMODITY&gt;космической станции&lt;&gt;.
                                -- &lt;TECHNOLOGY&gt;Starship Storage Augmentations&lt;&gt; acquired: %CURRENT%&#xA;Use these modules to expand your &lt;STELLAR&gt;starship inventory&lt;&gt;&#xA;Fly to the &lt;COMMODITY&gt;Space Station&lt;&gt; to find a Starship Outfitting Terminal
                                { "Russian", "Получено &lt;TECHNOLOGY&gt;улучшений хранилища звездолёта&lt;&gt;: %CURRENT%&#xA;Эти модули позволяют расширять &lt;STELLAR&gt;инвентарь звездолёта&lt;&gt;&#xA;Посетите &lt;COMMODITY&gt;космическую станцию&lt;&gt; и найдите&#xA;терминал оснащения звездолёта" },
                            }
                        },
                        --#endregion

                        --#region UI_EXPED_SHIP_INV_DETAIL
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_SHIP_INV_DETAIL1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Расширьте инвентарь своего звездолета с помощью &lt;TECHNOLOGY&gt;модулей улучшения хранилища&lt;&gt;.
                                { "Russian", "Расширьте инвентарь звездолёта с помощью &lt;TECHNOLOGY&gt;модулей улучшения хранилища&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_SHIP_INV_DETAIL2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Установите новые модули на борту &lt;STELLAR&gt;космической станции&lt;&gt;.
                                { "Russian", "Установите новые модули на борту &lt;STELLAR&gt;космической станции&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_SHIP_INV_DETAIL3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Получайте модули в процессе исследования мира или приобретайте новые ячейки за &lt;COMMODITY&gt;юниты&lt;&gt;.
                                { "Russian", "Получайте модули в процессе исследования мира или приобретайте новые ячейки за &lt;COMMODITY&gt;юниты&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region UI_EXPED_GUN_INV_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_GUN_INV_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Получено &lt;TECHNOLOGY&gt;модулей расширения мультитула&lt;&gt;: %CURRENT%&#xA;Эти модули позволяют расширять &lt;STELLAR&gt;инвентарь мультитула&lt;&gt;.&#xA;Устанавливайте их с помощью &lt;TECHNOLOGY&gt;станции улучшения мультитула&lt;&gt;.&#xA;При использовании терминала вы можете &lt;TECHNOLOGY&gt;выбрать любую пустую ячейку&lt;&gt;.
                                { "Russian", "Получено &lt;TECHNOLOGY&gt;модулей расширения мультитула&lt;&gt;: %CURRENT%&#xA;Эти модули позволяют расширять &lt;STELLAR&gt;инвентарь мультитула&lt;&gt;&#xA;Устанавливайте их с помощью &lt;TECHNOLOGY&gt;станции улучшения мультитула&lt;&gt;&#xA;Вы сможете выбрать любую &lt;TECHNOLOGY&gt;пустую ячейку&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_GUN_INV_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Получено &lt;TECHNOLOGY&gt;модулей расширения мультитула&lt;&gt;: %CURRENT%&#xA;Эти модули позволяют расширять &lt;STELLAR&gt;инвентарь мультитула&lt;&gt;.&#xA;Станцию улучшения мультитула можно найти на борту &lt;COMMODITY&gt;космической станции&lt;&gt;.
                                { "Russian", "Получено &lt;TECHNOLOGY&gt;модулей расширения мультитула&lt;&gt;: %CURRENT%&#xA;Эти модули позволяют расширять &lt;STELLAR&gt;инвентарь мультитула&lt;&gt;&#xA;Посетите &lt;COMMODITY&gt;космическую станцию&lt;&gt; и найдите&#xA;станцию улучшения мультитула" },
                            }
                        },
                        --#endregion

                        --#region UI_EXPED_GUN_INV_DETAIL
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_GUN_INV_DETAIL1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Увеличьте инвентарь своего мультитула с помощью &lt;TECHNOLOGY&gt;модулей расширения&lt;&gt;.
                                { "Russian", "Увеличьте инвентарь мультитула с помощью &lt;TECHNOLOGY&gt;модулей расширения&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_GUN_INV_DETAIL2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Установите новые модули на борту &lt;STELLAR&gt;космической станции&lt;&gt;.
                                { "Russian", "Установите новые модули на борту &lt;STELLAR&gt;космической станции&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_GUN_INV_DETAIL3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Получайте модули в процессе исследования мира или приобретайте новые ячейки за &lt;COMMODITY&gt;юниты&lt;&gt;.
                                { "Russian", "Получайте модули в процессе исследования мира или приобретайте новые ячейки за &lt;COMMODITY&gt;юниты&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region UI_EXPED_QS_DETAIL
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_QS_DETAIL1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Зарабатывайте ртуть, выполняя задания &lt;SPECIAL&gt;Космической Аномалии&lt;&gt;.
                                { "Russian", "Зарабатывайте ртуть, выполняя задания &lt;SPECIAL&gt;Космической Аномалии&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_QS_DETAIL2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;Дополнительный элемент синтеза ртути&lt;&gt; продает уникальные косметические предметы.
                                { "Russian", "&lt;TECHNOLOGY&gt;Товарищ по синтезу ртути&lt;&gt; продает уникальные предметы" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_QS_DETAIL3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Приобретенные за ртуть предметы доступны для &lt;STELLAR&gt;любого сохранения&lt;&gt;.
                                { "Russian", "Приобретенные за ртуть предметы доступны для &lt;STELLAR&gt;всех сохранений&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region UI_EXPED13_SALVAGED_SHIP_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED13_SALVAGED_SHIP_MSG0" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите и заберите себе &lt;STELLAR&gt;разбившийся звездолет&lt;&gt;.&#xA;Используйте &lt;TECHNOLOGY&gt;усилитель сигнала&lt;&gt;, чтобы найти находящуюся неподалеку технику (&lt;IMG&gt;BUILD_MENU&lt;&gt;).&#xA;Выполните указания усилителя сигнала, чтобы найти расположенные неподалеку постройки.
                                -- Locate and obtain a &lt;STELLAR&gt;crashed starship&lt;&gt;&#xA;Search for nearby structures with a &lt;TECHNOLOGY&gt;Signal Booster&lt;&gt; (&lt;IMG&gt;BUILD_MENU&lt;&gt;)&#xA;Follow Signal Booster directions to find nearby buildings
                                { "Russian", "Найдите и заберите &lt;STELLAR&gt;разбившийся звездолёт&lt;&gt;&#xA;Используйте &lt;TECHNOLOGY&gt;усилитель сигнала&lt;&gt; для поиска (&lt;IMG&gt;BUILD_MENU&lt;&gt;)&#xA;Выполните указания усилителя сигнала, чтобы найти постройки" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED13_SALVAGED_SHIP_MSG0B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите и заберите себе &lt;STELLAR&gt;разбившийся звездолет&lt;&gt;.&#xA;Используйте &lt;TECHNOLOGY&gt;усилитель сигнала&lt;&gt;, чтобы найти находящиеся неподалеку постройки.&#xA;Для активации усилителя сигнала необходим &lt;TECHNOLOGY&gt;накопитель импульса&lt;&gt;.&#xA;Закрепите (&lt;IMG&gt;PRODMENU&lt;&gt;) сборочные инструкции в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;).
                                { "Russian", "Найдите и заберите &lt;STELLAR&gt;разбившийся звездолёт&lt;&gt;&#xA;Используйте &lt;TECHNOLOGY&gt;усилитель сигнала&lt;&gt; для поиска строений&#xA;Для активации усилителя сигнала необходим &lt;TECHNOLOGY&gt;накопитель импульса&lt;&gt;&#xA;Закрепите (&lt;IMG&gt;PRODMENU&lt;&gt;) инструкции в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;)" },
                            }
                        },
                        --#endregion

                        --#region UI_EXPED14_BUGHUNT_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED14_BUGHUNT_MSG0" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Авангард Ликвидаторов&lt;&gt; обнаружил очаг заражения в этой системе.&#xA;Обезопасьте зону высадки и получите приказы.
                                { "Russian", "&lt;SPECIAL&gt;Авангард Ликвидаторов&lt;&gt; обнаружил очаг заражения в этой системе&#xA;Обезопасьте зону высадки и получите приказы" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED14_BUGHUNT_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вы еще не нашли место заражения.&#xA;Для продолжения пройдите этап &lt;EXPED&gt;%MILESTONE%&lt;&gt;.&#xA;Выбрать этап экспедиции можно в журнале экспедиции (&lt;IMG&gt;OPTIONS&lt;&gt;).
                                { "Russian", "Вы еще не нашли место заражения&#xA;Для продолжения пройдите этап &lt;EXPED&gt;%MILESTONE%&lt;&gt;&#xA;Смените этап в журнале экспедиции (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED14_BUGHUNT_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Авангард Ликвидаторов&lt;&gt; обнаружил место заражения.&#xA;Доберитесь до него и очистите гнездо.
                                { "Russian", "&lt;SPECIAL&gt;Авангард Ликвидаторов&lt;&gt; обнаружил место заражения&#xA;Доберитесь до него и очистите гнездо" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED14_BUGHUNT_MSG2A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Доберитесь до места заражения в &lt;STELLAR&gt;системе %SYSTEM%&lt;&gt;.&#xA;Вы можете мгновенно вернуться в зараженную систему с помощью любого &lt;TECHNOLOGY&gt;терминала телепорта&lt;&gt;.&#xA;Или же, находясь в космосе, откройте &lt;TECHNOLOGY&gt;галактическую карту&lt;&gt; с помощью быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                { "Russian", "Доберитесь до места заражения в &lt;STELLAR&gt;системе %SYSTEM%&lt;&gt;&#xA;Вы можете мгновенно вернуться в зараженную систему с помощью &lt;TECHNOLOGY&gt;телепорта&lt;&gt;&#xA;Или же, находясь в космосе, откройте &lt;TECHNOLOGY&gt;галактическую карту&lt;&gt; из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED14_BUGHUNT_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружена &lt;TRADABLE&gt;мать стаи&lt;&gt;!&#xA;Победите ее, чтобы очистить место заражения.
                                { "Russian", "Обнаружена &lt;TRADABLE&gt;мать стаи&lt;&gt;!&#xA;Победите ее, чтобы очистить место заражения" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED14_BUGHUNT_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Место заражения &lt;TECHNOLOGY&gt;очищено&lt;&gt;!&#xA;Прочтите разведданные, оставленные &lt;SPECIAL&gt;Авангардом Ликвидаторов&lt;&gt;.
                                { "Russian", "Место заражения &lt;TECHNOLOGY&gt;очищено&lt;&gt;!&#xA;Прочтите разведданные, оставленные &lt;SPECIAL&gt;Авангардом Ликвидаторов&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED14_BUGHUNT_MSG4A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Прочтите &lt;TECHNOLOGY&gt;разведданные&lt;&gt;, оставленные &lt;SPECIAL&gt;Авангардом Ликвидаторов&lt;&gt;.&#xA;Вы можете мгновенно вернуться в зараженную систему с помощью любого &lt;TECHNOLOGY&gt;терминала телепорта&lt;&gt;.&#xA;Или же, находясь в космосе, откройте &lt;STELLAR&gt;галактическую карту&lt;&gt; с помощью быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                { "Russian", "Прочтите &lt;TECHNOLOGY&gt;разведданные&lt;&gt;, оставленные &lt;SPECIAL&gt;Авангардом Ликвидаторов&lt;&gt;&#xA;Вы можете мгновенно вернуться в зараженную систему с помощью &lt;TECHNOLOGY&gt;телепорта&lt;&gt;&#xA;Или же, находясь в космосе, откройте &lt;STELLAR&gt;галактическую карту&lt;&gt; из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        --#endregion

                        --#region UI_EXPED_FISH_SWARM_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_FISH_SWARM_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сразитесь с &lt;SPECIAL&gt;глубоководными тварями&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Найдите системы с &lt;TECHNOLOGY&gt;водой&lt;&gt; на галактической карте (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                { "Russian", "Сразитесь с &lt;SPECIAL&gt;глубоководными тварями&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Найдите системы с &lt;TECHNOLOGY&gt;водой&lt;&gt; на галактической карте (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_FISH_SWARM_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Приманите &lt;SPECIAL&gt;глубоководных тварей&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Доберитесь до планеты с &lt;TECHNOLOGY&gt;водой&lt;&gt;.
                                { "Russian", "Сразитесь с &lt;SPECIAL&gt;глубоководными тварями&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Доберитесь до планеты с &lt;TECHNOLOGY&gt;водой&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_FISH_SWARM_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Приманите &lt;SPECIAL&gt;глубоководных тварей&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Найдите тварей рядом с &lt;STELLAR&gt;привлекательными особями&lt;&gt;.
                                { "Russian", "Сразитесь с &lt;SPECIAL&gt;глубоководными тварями&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Найдите тварей рядом с &lt;STELLAR&gt;привлекательными особями&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_FISH_SWARM_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Приманите &lt;SPECIAL&gt;глубоководных тварей&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Начните поиски на &lt;TECHNOLOGY&gt;глубине&lt;&gt;.
                                { "Russian", "Сразитесь с &lt;SPECIAL&gt;глубоководными тварями&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Начните поиски на &lt;TECHNOLOGY&gt;глубине&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region UI_EXPED_BUG_GRUB
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_BUG_GRUB_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Теплые пульсирующие личинки мерзкой стаи распространяются по всей вселенной. &lt;TECHNOLOGY&gt;Сканируйте&lt;&gt; (&lt;IMG&gt;SHIPSCAN&lt;&gt;) планеты из космоса, чтобы искать гнезда стаи.&#xA;&#xA;На поверхности планеты используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;) для поиска личинок.&#xA;&#xA;&lt;FUEL&gt;ВНИМАНИЕ&lt;&gt;: мешочек личинки выпускает сильные феромоны в случае повреждения.
                                { "Russian", "Теплые пульсирующие личинки мерзкой стаи распространяются по всей вселенной. &lt;TECHNOLOGY&gt;Сканируйте&lt;&gt; (&lt;IMG&gt;SHIPSCAN&lt;&gt;) планеты из космоса, чтобы найти гнезда стаи.&#xA;&#xA;На поверхности планеты используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;) для поиска личинок.&#xA;&#xA;&lt;FUEL&gt;ВНИМАНИЕ!&lt;&gt; Мешочек личинки выпускает сильные феромоны в случае повреждения." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_BUG_GRUB_SURVEY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Раздавите мерзкую мясистую &lt;TRADEABLE&gt;личинку&lt;&gt;.&#xA;Соберите личинки насекомых из их гнезд.&#xA;Используйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt;, чтобы искать расположенные неподалеку гнезда.
                                { "Russian", "Раздавите мерзкую мясистую &lt;TRADEABLE&gt;личинку&lt;&gt;&#xA;Соберите личинки насекомых из их гнезд&#xA;Найдите гнезда с помощью &lt;TECHNOLOGY&gt;разведки цели&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_BUG_GRUB_SURVEY_OFF" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Раздавите мерзкую мясистую &lt;TRADEABLE&gt;личинку&lt;&gt;.&#xA;Соберите личинки насекомых из их гнезд.&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы искать расположенные неподалеку гнезда.
                                { "Russian", "Раздавите мерзкую мясистую &lt;TRADEABLE&gt;личинку&lt;&gt;&#xA;Соберите личинки насекомых из их гнезд&#xA;Найдите гнезда с помощью &lt;STELLAR&gt;разведки цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_BUG_GRUB_SURVEY_SWAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Раздавите мерзкую мясистую &lt;TRADEABLE&gt;личинку&lt;&gt;.&#xA;Соберите личинки насекомых из их гнезд.&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;.
                                { "Russian", "Раздавите мерзкую мясистую &lt;TRADEABLE&gt;личинку&lt;&gt;&#xA;Соберите личинки насекомых из их гнезд&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_BUG_GRUB_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Раздавите мерзкую мясистую &lt;TRADEABLE&gt;личинку&lt;&gt;.&#xA;Соберите личинки насекомых из их гнезд.
                                { "Russian", "Раздавите мерзкую мясистую &lt;TRADEABLE&gt;личинку&lt;&gt;&#xA;Соберите личинки насекомых из их гнезд" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_BUG_GRUB_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Раздавите мерзкую мясистую &lt;TRADEABLE&gt;личинку&lt;&gt;.&#xA;На планете неподалеку обнаружены места размножения мерзкой стаи.&#xA;&lt;TECHNOLOGY&gt;Сканируйте&lt;&gt; (&lt;IMG&gt;SHIPSCAN&lt;&gt;) планеты из космоса, чтобы искать выводки.
                                { "Russian", "Раздавите мерзкую мясистую &lt;TRADEABLE&gt;личинку&lt;&gt;&#xA;На планете неподалеку обнаружены места размножения мерзкой стаи&#xA;&lt;TECHNOLOGY&gt;Сканируйте&lt;&gt; (&lt;IMG&gt;SHIPSCAN&lt;&gt;) планеты из космоса, чтобы найти выводки" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_BUG_GRUB_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Раздавите мерзкую мясистую &lt;TRADEABLE&gt;личинку&lt;&gt;.&#xA;В этой системе подходящие места размножения не найдены.&#xA;Находясь в космосе, выберите новую систему на галактической карте (&lt;IMG&gt;QUICK_MENU&lt;&gt;), чтобы отправится к новой звезде.
                                { "Russian", "Раздавите мерзкую мясистую &lt;TRADEABLE&gt;личинку&lt;&gt;&#xA;В этой системе подходящие места размножения не найдены&#xA;Находясь в космосе, выберите новую систему на галактической карте (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_BUG_GRUB_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Раздавите мерзкую мясистую &lt;TRADEABLE&gt;личинку&lt;&gt;.&#xA;Найдите личинку в своем инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;) и &lt;STELLAR&gt;раздавите&lt;&gt; ее.
                                { "Russian", "Раздавите мерзкую мясистую &lt;TRADEABLE&gt;личинку&lt;&gt;&#xA;Найдите личинку в своем инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;) и &lt;STELLAR&gt;раздавите&lt;&gt; ее" },
                            }
                        },
                        --#endregion

                        --#region UI_EXPED14_ADOPT_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED14_ADOPT_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружены дополнительные &lt;SPECIAL&gt;разведданные&lt;&gt;.&#xA;Найдите последний отчет Ликвидатора №3813G
                                { "Russian", "Обнаружены дополнительные &lt;SPECIAL&gt;разведданные&lt;&gt;&#xA;Найдите последний журнал Ликвидатора №3813G" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED14_ADOPT_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сберегите &lt;SPECIAL&gt;кокон&lt;&gt; Ликвидатора №3813G.&#xA;Найдите его сращенный мешок в своем &lt;TECHNOLOGY&gt;инвентаре&lt;&gt; (&lt;IMG&gt;INVENTORY&lt;&gt;).
                                -- Hatch Liquidator #3813G's &lt;SPECIAL&gt;cocoon&lt;&gt;&#xA;Locate their spliced egg sac in your &lt;TECHNOLOGY&gt;Inventory&lt;&gt; (&lt;IMG&gt;INVENTORY&lt;&gt;)
                                { "Russian", "Откройте &lt;SPECIAL&gt;кокон&lt;&gt; Ликвидатора №3813G&#xA;Найдите его в своем &lt;TECHNOLOGY&gt;инвентаре&lt;&gt; (&lt;IMG&gt;INVENTORY&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED14_ADOPT_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сберегите &lt;SPECIAL&gt;кокон&lt;&gt; Ликвидатора №3813G.&#xA;Недостаточно &lt;TECHNOLOGY&gt;ячеек питомцев&lt;&gt; для вылупления кокона.&#xA;Управляйте питомцами с помощью &lt;TECHNOLOGY&gt;быстрого меню&lt;&gt; (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                { "Russian", "Откройте &lt;SPECIAL&gt;кокон&lt;&gt; Ликвидатора №3813G&#xA;Недостаточно &lt;TECHNOLOGY&gt;ячеек питомцев&lt;&gt; для вылупления кокона&#xA;Управляйте питомцами из &lt;TECHNOLOGY&gt;быстрого меню&lt;&gt; (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        --#endregion

                    }
                },
                { -- LANGUAGE/NMS_LOC9_RUSSIAN.MBIN
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_LOC9_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        --#region UI_SEASON_[0-9]+_MAIN_TITLE
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SEASON_15_MAIN_TITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Экспедиция пятнадцатая: «Водолей»
                                { "Russian", "Экспедиция №15: Водолей" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SEASON_16_MAIN_TITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Экспедиция шестнадцатая: «Проклятые»
                                { "Russian", "Экспедиция №16: Проклятые" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SEASON_17_MAIN_TITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Экспедиция семнадцать: «Титан»
                                { "Russian", "Экспедиция №17: Титан" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SEASON_18_MAIN_TITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Восемнадцатая экспедиция «Реликвии»
                                { "Russian", "Экспедиция №18: Реликвии" },
                            }
                        },
                        --#endregion

                        --#region GET_FISHLASER
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_GET_FISHLASER_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Чертеж технологии &lt;TECHNOLOGY&gt;«%ITEM%»&lt;&gt; вам еще не известен.&#xA;Для продолжения пройдите этап &lt;EXPED&gt;«%MILESTONE%»&lt;&gt;.&#xA;Выбрать этап экспедиции можно в журнале экспедиции (&lt;IMG&gt;OPTIONS&lt;&gt;).
                                -- &lt;TECHNOLOGY&gt;%ITEM%&lt;&gt; blueprint not yet known&#xA;Complete the &lt;EXPED&gt;%MILESTONE%&lt;&gt; milestone to proceed&#xA;Select milestones from the Expedition log (&lt;IMG&gt;OPTIONS&lt;&gt;)
                                { "Russian", "Чертеж &lt;TECHNOLOGY&gt;%ITEM%&lt;&gt; вам еще не известен&#xA;Для его изучения пройдите этап &lt;EXPED&gt;%MILESTONE%&lt;&gt;&#xA;Изменить этап можно в журнале экспедиции (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_GET_FISHLASER_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Установите в экзокостюм: &lt;TECHNOLOGY&gt;%ITEM%&lt;&gt;.&#xA;Откройте инвентарь с помощью &lt;IMG&gt;INVENTORY&lt;&gt;.&#xA;Выберите пустую ячейку и начните установку с помощью &lt;IMG&gt;TECHMENU&lt;&gt;.
                                -- Install the &lt;TECHNOLOGY&gt;%ITEM%&lt;&gt; in your Multi-Tool&#xA;Access the Inventory with &lt;IMG&gt;INVENTORY&lt;&gt;&#xA;Select an empty slot and begin installation with &lt;IMG&gt;TECHMENU&lt;&gt;
                                { "Russian", "Установите в экзокостюм: &lt;TECHNOLOGY&gt;%ITEM%&lt;&gt;&#xA;Откройте инвентарь с помощью &lt;IMG&gt;INVENTORY&lt;&gt;&#xA;Выберите пустую ячейку и начните установку с помощью &lt;IMG&gt;TECHMENU&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_GET_FISHLASER_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Завершите установку: &lt;TECHNOLOGY&gt;%ITEM%&lt;&gt;.&#xA;Воспользуйтесь &lt;IMG&gt;TECHMENU&lt;&gt;, чтобы следить за ходом установки.&#xA;Закрепите необходимые компоненты с помощью &lt;IMG&gt;PIN&lt;&gt;.
                                -- Complete the &lt;TECHNOLOGY&gt;%ITEM%&lt;&gt;&#xA;Use &lt;IMG&gt;TECHMENU&lt;&gt; to inspect installation progress&#xA;Pin required components with &lt;IMG&gt;PIN&lt;&gt;
                                { "Russian", "Завершите установку: &lt;TECHNOLOGY&gt;%ITEM%&lt;&gt;&#xA;Воспользуйтесь &lt;IMG&gt;TECHMENU&lt;&gt;, чтобы следить за ходом установки&#xA;Закрепите необходимые компоненты с помощью &lt;IMG&gt;PIN&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_GET_FISHLASER_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Опробуйте &lt;TECHNOLOGY&gt;удочку&lt;&gt;.&#xA;Используйте &lt;IMG&gt;CYCLEWEAPON&lt;&gt;, чтобы переключать режимы мультитула.
                                -- Test the &lt;TECHNOLOGY&gt;Fishing Rig&lt;&gt;&#xA;Cycle Multi-Tool modes with &lt;IMG&gt;CYCLEWEAPON&lt;&gt;
                                { "Russian", "Опробуйте &lt;TECHNOLOGY&gt;удочку&lt;&gt;&#xA;Поменять режим мультитула (&lt;IMG&gt;CYCLEWEAPON&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_GET_FISHLASER_MSG5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Опробуйте &lt;TECHNOLOGY&gt;удочку&lt;&gt;.&#xA;Найдите подходящий водоем и закиньте снасть с помощью &lt;IMG&gt;ATTACK&lt;&gt;.
                                -- Test the &lt;TECHNOLOGY&gt;Fishing Rig&lt;&gt;&#xA;Locate a suitable body of water and cast your line with &lt;IMG&gt;ATTACK&lt;&gt;
                                { "Russian", "Опробуйте &lt;TECHNOLOGY&gt;удочку&lt;&gt;&#xA;Найдите подходящий водоем и закиньте удочку (&lt;IMG&gt;ATTACK&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_GET_FISHLASER_MSG6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Опробуйте &lt;TECHNOLOGY&gt;удочку&lt;&gt;.&#xA;В системе обнаружена &lt;TECHNOLOGY&gt;водная планета&lt;&gt;.&#xA;Океаны на поверхности планеты видны из космоса.
                                -- Test the &lt;TECHNOLOGY&gt;Fishing Rig&lt;&gt;&#xA;&lt;TECHNOLOGY&gt;Water planet&lt;&gt; detected in local system&#xA;Oceans are visible on a planet's surface from space
                                { "Russian", "Опробуйте &lt;TECHNOLOGY&gt;удочку&lt;&gt;&#xA;В системе обнаружена планета с &lt;TECHNOLOGY&gt;водой&lt;&gt;&#xA;Океаны на поверхности планеты видны из космоса" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_GET_FISHLASER_MSG7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Опробуйте &lt;TECHNOLOGY&gt;удочку&lt;&gt;.&#xA;Найдите системы с &lt;TECHNOLOGY&gt;водой&lt;&gt; на &lt;TECHNOLOGY&gt;галактической карте&lt;&gt;.&#xA;Находясь на звездолете, откройте галактическую карту с помощью &lt;IMG&gt;QUICK_MENU&lt;&gt;.
                                -- Test the &lt;TECHNOLOGY&gt;Fishing Rig&lt;&gt;&#xA;In the &lt;TECHNOLOGY&gt;Galaxy Map&lt;&gt;, search for a system with &lt;TECHNOLOGY&gt;water&lt;&gt;&#xA;Access the Galaxy Map with &lt;IMG&gt;QUICK_MENU&lt;&gt; while in the Starship
                                { "Russian", "Опробуйте &lt;TECHNOLOGY&gt;удочку&lt;&gt;&#xA;Найдите систему с &lt;TECHNOLOGY&gt;водой&lt;&gt; на &lt;TECHNOLOGY&gt;галактической карте&lt;&gt;&#xA;Находясь в космосе, откройте галактическую карту (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        --#endregion

                        --#region RARE_FISH
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_RARE_FISH_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поймайте &lt;TECHNOLOGY&gt;необычную&lt;&gt; рыбу: %CURRENT%/%AMOUNT%&#xA;Найдите системы с &lt;TECHNOLOGY&gt;водой&lt;&gt; на &lt;STELLAR&gt;галактической карте&lt;&gt;.&#xA;Находясь на звездолете, откройте галактическую карту (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                { "Russian", "Поймайте &lt;TECHNOLOGY&gt;необычную&lt;&gt; рыбу: %CURRENT%/%AMOUNT%&#xA;Найдите систему с &lt;TECHNOLOGY&gt;водой&lt;&gt; на &lt;STELLAR&gt;галактической карте&lt;&gt;&#xA;Находясь в космосе, откройте галактическую карту (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_RARE_FISH_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поймайте &lt;TECHNOLOGY&gt;необычную&lt;&gt; рыбу: %CURRENT%/%AMOUNT%&#xA;В системе обнаружена &lt;TECHNOLOGY&gt;водная планета&lt;&gt;.&#xA;Океаны на поверхности планеты видны из космоса.
                                { "Russian", "Поймайте &lt;TECHNOLOGY&gt;необычную&lt;&gt; рыбу: %CURRENT%/%AMOUNT%&#xA;В системе обнаружена планета с &lt;TECHNOLOGY&gt;водой&lt;&gt;&#xA;Океаны на поверхности планеты видны из космоса" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_RARE_FISH_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поймайте &lt;TECHNOLOGY&gt;необычную&lt;&gt; рыбу: %CURRENT%/%AMOUNT%&#xA;Найдите подходящий водоем, чтобы начать рыбачить.&#xA;Выберите &lt;TECHNOLOGY&gt;удочку&lt;&gt; с помощью &lt;IMG&gt;CYCLEWEAPON&lt;&gt;.
                                { "Russian", "Поймайте &lt;TECHNOLOGY&gt;необычную&lt;&gt; рыбу: %CURRENT%/%AMOUNT%&#xA;Найдите подходящий водоем, чтобы начать рыбачить&#xA;Выберите &lt;TECHNOLOGY&gt;удочку&lt;&gt; с помощью &lt;IMG&gt;CYCLEWEAPON&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_RARE_FISH_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поймайте &lt;TECHNOLOGY&gt;необычную&lt;&gt; рыбу: %CURRENT%/%AMOUNT%&#xA;Найдите подходящий водоем и закиньте снасть с помощью &lt;IMG&gt;ATTACK&lt;&gt;.
                                { "Russian", "Поймайте &lt;TECHNOLOGY&gt;необычную&lt;&gt; рыбу: %CURRENT%/%AMOUNT%&#xA;Найдите подходящий водоем и закиньте удочку (&lt;IMG&gt;ATTACK&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_RARE_FISH_MSG5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поймайте &lt;TECHNOLOGY&gt;необычную&lt;&gt; рыбу: %CURRENT%/%AMOUNT%&#xA;&lt;TECHNOLOGY&gt;Удочка&lt;&gt; не установлена.&#xA;Просматривайте чертежи в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;) с помощью &lt;IMG&gt;TECHMENU&lt;&gt;.&#xA;&lt;COMMODITY&gt;Закрепите&lt;&gt; указания по установке с помощью &lt;IMG&gt;PIN&lt;&gt;.
                                { "Russian", "Поймайте &lt;TECHNOLOGY&gt;необычную&lt;&gt; рыбу: %CURRENT%/%AMOUNT%&#xA;&lt;TECHNOLOGY&gt;Удочка&lt;&gt; не установлена&#xA;Просматривайте чертежи в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;) с помощью &lt;IMG&gt;TECHMENU&lt;&gt;&#xA;&lt;COMMODITY&gt;Закрепите&lt;&gt; указания по установке с помощью &lt;IMG&gt;PIN&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region COLD_FISH
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_COLD_FISH_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поймайте необычную рыбу на &lt;TECHNOLOGY&gt;ледяной планете&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;В данной системе &lt;STELLAR&gt;ледяные планеты&lt;&gt; не обнаружены.&#xA;Найдите системы с &lt;TECHNOLOGY&gt;водой&lt;&gt; на &lt;TECHNOLOGY&gt;галактической карте&lt;&gt;.&#xA;Находясь на звездолете, откройте галактическую карту (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                { "Russian", "Поймайте необычную рыбу на &lt;TECHNOLOGY&gt;ледяной планете&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;В данной системе &lt;STELLAR&gt;ледяные планеты&lt;&gt; не обнаружены&#xA;Найдите систему с &lt;TECHNOLOGY&gt;водой&lt;&gt; на &lt;TECHNOLOGY&gt;галактической карте&lt;&gt;&#xA;Находясь в космосе, откройте галактическую карту (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_COLD_FISH_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поймайте необычную рыбу на &lt;TECHNOLOGY&gt;ледяной планете&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;В системе обнаружена &lt;STELLAR&gt;ледяная планета&lt;&gt;.&#xA;Океаны на поверхности планеты видны из космоса.
                                { "Russian", "Поймайте необычную рыбу на &lt;TECHNOLOGY&gt;ледяной планете&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;В системе обнаружена &lt;STELLAR&gt;ледяная планета&lt;&gt;&#xA;Океаны на поверхности планеты видны из космоса" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_COLD_FISH_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поймайте необычную рыбу на &lt;TECHNOLOGY&gt;ледяной планете&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Найдите подходящий водоем, чтобы начать рыбачить.&#xA;Выберите &lt;TECHNOLOGY&gt;удочку&lt;&gt; с помощью &lt;IMG&gt;CYCLEWEAPON&lt;&gt;.
                                { "Russian", "Поймайте необычную рыбу на &lt;TECHNOLOGY&gt;ледяной планете&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Найдите подходящий водоем, чтобы начать рыбачить&#xA;Выберите &lt;TECHNOLOGY&gt;удочку&lt;&gt; с помощью &lt;IMG&gt;CYCLEWEAPON&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_COLD_FISH_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поймайте необычную рыбу на &lt;TECHNOLOGY&gt;ледяной планете&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Найдите подходящий водоем и закиньте снасть с помощью &lt;IMG&gt;ATTACK&lt;&gt;.
                                { "Russian", "Поймайте необычную рыбу на &lt;TECHNOLOGY&gt;ледяной планете&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Найдите подходящий водоем и закиньте удочку (&lt;IMG&gt;ATTACK&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_COLD_FISH_MSG5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поймайте необычную рыбу на &lt;TECHNOLOGY&gt;ледяной планете&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;&lt;TECHNOLOGY&gt;Удочка&lt;&gt; не установлена.&#xA;Просматривайте чертежи в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;) с помощью &lt;IMG&gt;TECHMENU&lt;&gt;.&#xA;&lt;COMMODITY&gt;Закрепите&lt;&gt; указания по установке с помощью &lt;IMG&gt;PIN&lt;&gt;.
                                { "Russian", "Поймайте необычную рыбу на &lt;TECHNOLOGY&gt;ледяной планете&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;&lt;TECHNOLOGY&gt;Удочка&lt;&gt; не установлена&#xA;Просматривайте чертежи в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;) с помощью &lt;IMG&gt;TECHMENU&lt;&gt;&#xA;&lt;COMMODITY&gt;Закрепите&lt;&gt; указания по установке с помощью &lt;IMG&gt;PIN&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region HOT_FISH
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_HOT_FISH_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поймайте необычную рыбу на &lt;FUEL&gt;жаркой планете&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;В данной системе &lt;STELLAR&gt;выжженные планеты&lt;&gt; не обнаружены.&#xA;Найдите системы с &lt;TECHNOLOGY&gt;водой&lt;&gt; на &lt;TECHNOLOGY&gt;галактической карте&lt;&gt;.&#xA;Находясь на звездолете, откройте галактическую карту (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                { "Russian", "Поймайте необычную рыбу на &lt;FUEL&gt;жаркой планете&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;В данной системе &lt;STELLAR&gt;выжженные планеты&lt;&gt; не обнаружены&#xA;Найдите систему с &lt;TECHNOLOGY&gt;водой&lt;&gt; на &lt;TECHNOLOGY&gt;галактической карте&lt;&gt;&#xA;Находясь в космосе, откройте галактическую карту (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_HOT_FISH_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поймайте необычную рыбу на &lt;FUEL&gt;жаркой планете&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;В системе обнаружена &lt;STELLAR&gt;выжженная планета&lt;&gt;.&#xA;Океаны на поверхности планеты видны из космоса.
                                { "Russian", "Поймайте необычную рыбу на &lt;FUEL&gt;жаркой планете&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;В системе обнаружена &lt;STELLAR&gt;выжженная планета&lt;&gt;&#xA;Океаны на поверхности планеты видны из космоса" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_HOT_FISH_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поймайте необычную рыбу на &lt;FUEL&gt;жаркой планете&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Найдите подходящий водоем, чтобы начать рыбачить.&#xA;Выберите &lt;TECHNOLOGY&gt;удочку&lt;&gt; с помощью &lt;IMG&gt;CYCLEWEAPON&lt;&gt;.
                                { "Russian", "Поймайте необычную рыбу на &lt;FUEL&gt;жаркой планете&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Найдите подходящий водоем, чтобы начать рыбачить&#xA;Выберите &lt;TECHNOLOGY&gt;удочку&lt;&gt; с помощью &lt;IMG&gt;CYCLEWEAPON&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_HOT_FISH_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поймайте необычную рыбу на &lt;FUEL&gt;жаркой планете&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Найдите подходящий водоем и закиньте снасть с помощью &lt;IMG&gt;ATTACK&lt;&gt;.
                                { "Russian", "Поймайте необычную рыбу на &lt;FUEL&gt;жаркой планете&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Найдите подходящий водоем и закиньте удочку (&lt;IMG&gt;ATTACK&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_HOT_FISH_MSG5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поймайте необычную рыбу на &lt;FUEL&gt;жаркой планете&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;&lt;TECHNOLOGY&gt;Удочка&lt;&gt; не установлена.&#xA;Просматривайте чертежи в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;) с помощью &lt;IMG&gt;TECHMENU&lt;&gt;.&#xA;&lt;COMMODITY&gt;Закрепите&lt;&gt; указания по установке с помощью &lt;IMG&gt;PIN&lt;&gt;.
                                { "Russian", "Поймайте необычную рыбу на &lt;FUEL&gt;жаркой планете&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;&lt;TECHNOLOGY&gt;Удочка&lt;&gt; не установлена&#xA;Просматривайте чертежи в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;) с помощью &lt;IMG&gt;TECHMENU&lt;&gt;&#xA;&lt;COMMODITY&gt;Закрепите&lt;&gt; указания по установке с помощью &lt;IMG&gt;PIN&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region RAD_FISH
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_RAD_FISH_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поймайте необычную &lt;COMMODITY&gt;облученную&lt;&gt; рыбу: %CURRENT%/%AMOUNT%&#xA;В данной системе &lt;STELLAR&gt;радиоактивные планеты&lt;&gt; не обнаружены.&#xA;Найдите системы с &lt;TECHNOLOGY&gt;водой&lt;&gt; на &lt;TECHNOLOGY&gt;галактической карте&lt;&gt;.&#xA;Находясь на звездолете, откройте галактическую карту (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                { "Russian", "Поймайте необычную &lt;COMMODITY&gt;облученную&lt;&gt; рыбу: %CURRENT%/%AMOUNT%&#xA;В данной системе &lt;STELLAR&gt;радиоактивные планеты&lt;&gt; не обнаружены&#xA;Найдите систему с &lt;TECHNOLOGY&gt;водой&lt;&gt; на &lt;TECHNOLOGY&gt;галактической карте&lt;&gt;&#xA;Находясь в космосе, откройте галактическую карту (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_RAD_FISH_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поймайте необычную &lt;COMMODITY&gt;облученную&lt;&gt; рыбу: %CURRENT%/%AMOUNT%&#xA;В системе обнаружена &lt;STELLAR&gt;радиоактивная планета&lt;&gt;.&#xA;Океаны на поверхности планеты видны из космоса.
                                { "Russian", "Поймайте необычную &lt;COMMODITY&gt;облученную&lt;&gt; рыбу: %CURRENT%/%AMOUNT%&#xA;В системе обнаружена &lt;STELLAR&gt;радиоактивная планета&lt;&gt;&#xA;Океаны на поверхности планеты видны из космоса" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_RAD_FISH_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поймайте необычную &lt;COMMODITY&gt;облученную&lt;&gt; рыбу: %CURRENT%/%AMOUNT%&#xA;Найдите подходящий водоем, чтобы начать рыбачить.&#xA;Выберите &lt;TECHNOLOGY&gt;удочку&lt;&gt; с помощью &lt;IMG&gt;CYCLEWEAPON&lt;&gt;.
                                { "Russian", "Поймайте необычную &lt;COMMODITY&gt;облученную&lt;&gt; рыбу: %CURRENT%/%AMOUNT%&#xA;Найдите подходящий водоем, чтобы начать рыбачить&#xA;Выберите &lt;TECHNOLOGY&gt;удочку&lt;&gt; с помощью &lt;IMG&gt;CYCLEWEAPON&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_RAD_FISH_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поймайте необычную &lt;COMMODITY&gt;облученную&lt;&gt; рыбу: %CURRENT%/%AMOUNT%&#xA;Найдите подходящий водоем и закиньте снасть с помощью &lt;IMG&gt;ATTACK&lt;&gt;.
                                { "Russian", "Поймайте необычную &lt;COMMODITY&gt;облученную&lt;&gt; рыбу: %CURRENT%/%AMOUNT%&#xA;Найдите подходящий водоем и закиньте удочку (&lt;IMG&gt;ATTACK&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_RAD_FISH_MSG5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поймайте необычную &lt;COMMODITY&gt;облученную&lt;&gt; рыбу: %CURRENT%/%AMOUNT%&#xA;&lt;TECHNOLOGY&gt;Удочка&lt;&gt; не установлена.&#xA;Просматривайте чертежи в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;) с помощью &lt;IMG&gt;TECHMENU&lt;&gt;.&#xA;&lt;COMMODITY&gt;Закрепите&lt;&gt; указания по установке с помощью &lt;IMG&gt;PIN&lt;&gt;.
                                { "Russian", "Поймайте необычную &lt;COMMODITY&gt;облученную&lt;&gt; рыбу: %CURRENT%/%AMOUNT%&#xA;&lt;TECHNOLOGY&gt;Удочка&lt;&gt; не установлена&#xA;Просматривайте чертежи в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;) с помощью &lt;IMG&gt;TECHMENU&lt;&gt;&#xA;&lt;COMMODITY&gt;Закрепите&lt;&gt; указания по установке с помощью &lt;IMG&gt;PIN&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region TOX_FISH
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_TOX_FISH_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поймайте необычную &lt;TRADEABLE&gt;ядовитую&lt;&gt; рыбу: %CURRENT%/%AMOUNT%&#xA;В данной системе &lt;STELLAR&gt;токсичные планеты&lt;&gt; не обнаружены.&#xA;Найдите системы с &lt;TECHNOLOGY&gt;водой&lt;&gt; на &lt;TECHNOLOGY&gt;галактической карте&lt;&gt;.&#xA;Находясь на звездолете, откройте галактическую карту (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                { "Russian", "Поймайте необычную &lt;TRADEABLE&gt;ядовитую&lt;&gt; рыбу: %CURRENT%/%AMOUNT%&#xA;В данной системе &lt;STELLAR&gt;токсичные планеты&lt;&gt; не обнаружены&#xA;Найдите систему с &lt;TECHNOLOGY&gt;водой&lt;&gt; на &lt;TECHNOLOGY&gt;галактической карте&lt;&gt;&#xA;Находясь в космосе, откройте галактическую карту (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_TOX_FISH_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поймайте необычную &lt;TRADEABLE&gt;ядовитую&lt;&gt; рыбу: %CURRENT%/%AMOUNT%&#xA;В системе обнаружена &lt;STELLAR&gt;токсичная планета&lt;&gt;.&#xA;Океаны на поверхности планеты видны из космоса.
                                { "Russian", "Поймайте необычную &lt;TRADEABLE&gt;ядовитую&lt;&gt; рыбу: %CURRENT%/%AMOUNT%&#xA;В системе обнаружена &lt;STELLAR&gt;токсичная планета&lt;&gt;&#xA;Океаны на поверхности планеты видны из космоса" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_TOX_FISH_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поймайте необычную &lt;TRADEABLE&gt;ядовитую&lt;&gt; рыбу: %CURRENT%/%AMOUNT%&#xA;Найдите подходящий водоем, чтобы начать рыбачить.&#xA;Выберите &lt;TECHNOLOGY&gt;удочку&lt;&gt; с помощью &lt;IMG&gt;CYCLEWEAPON&lt;&gt;.
                                { "Russian", "Поймайте необычную &lt;TRADEABLE&gt;ядовитую&lt;&gt; рыбу: %CURRENT%/%AMOUNT%&#xA;Найдите подходящий водоем, чтобы начать рыбачить&#xA;Выберите &lt;TECHNOLOGY&gt;удочку&lt;&gt; с помощью &lt;IMG&gt;CYCLEWEAPON&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_TOX_FISH_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поймайте необычную &lt;TRADEABLE&gt;ядовитую&lt;&gt; рыбу: %CURRENT%/%AMOUNT%&#xA;Найдите подходящий водоем и закиньте снасть с помощью &lt;IMG&gt;ATTACK&lt;&gt;.
                                { "Russian", "Поймайте необычную &lt;TRADEABLE&gt;ядовитую&lt;&gt; рыбу: %CURRENT%/%AMOUNT%&#xA;Найдите подходящий водоем и закиньте удочку (&lt;IMG&gt;ATTACK&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_TOX_FISH_MSG5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поймайте необычную &lt;TRADEABLE&gt;ядовитую&lt;&gt; рыбу: %CURRENT%/%AMOUNT%&#xA;&lt;TECHNOLOGY&gt;Удочка&lt;&gt; не установлена.&#xA;Просматривайте чертежи в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;) с помощью &lt;IMG&gt;TECHMENU&lt;&gt;.&#xA;&lt;COMMODITY&gt;Закрепите&lt;&gt; указания по установке с помощью &lt;IMG&gt;PIN&lt;&gt;.
                                { "Russian", "Поймайте необычную &lt;TRADEABLE&gt;ядовитую&lt;&gt; рыбу: %CURRENT%/%AMOUNT%&#xA;&lt;TECHNOLOGY&gt;Удочка&lt;&gt; не установлена&#xA;Просматривайте чертежи в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;) с помощью &lt;IMG&gt;TECHMENU&lt;&gt;&#xA;&lt;COMMODITY&gt;Закрепите&lt;&gt; указания по установке с помощью &lt;IMG&gt;PIN&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region LUSH_FISH
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_LUSH_FISH_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поймайте необычную рыбу в &lt;TRADEABLE&gt;лесистом биоме&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;В данной системе &lt;STELLAR&gt;лесистые планеты&lt;&gt; не обнаружены.&#xA;Найдите системы с &lt;TECHNOLOGY&gt;водой&lt;&gt; на &lt;TECHNOLOGY&gt;галактической карте&lt;&gt;.&#xA;Находясь на звездолете, откройте галактическую карту (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                { "Russian", "Поймайте необычную рыбу в &lt;TRADEABLE&gt;лесистом биоме&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;В данной системе &lt;STELLAR&gt;лесистые планеты&lt;&gt; не обнаружены&#xA;Найдите систему с &lt;TECHNOLOGY&gt;водой&lt;&gt; на &lt;TECHNOLOGY&gt;галактической карте&lt;&gt;&#xA;Находясь в космосе, откройте галактическую карту (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_LUSH_FISH_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поймайте необычную рыбу в &lt;TRADEABLE&gt;лесистом биоме&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;В системе обнаружена &lt;STELLAR&gt;лесистая планета&lt;&gt;.&#xA;Океаны на поверхности планеты видны из космоса.
                                { "Russian", "Поймайте необычную рыбу в &lt;TRADEABLE&gt;лесистом биоме&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;В системе обнаружена &lt;STELLAR&gt;лесистая планета&lt;&gt;&#xA;Океаны на поверхности планеты видны из космоса" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_LUSH_FISH_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поймайте необычную рыбу в &lt;TRADEABLE&gt;лесистом биоме&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Найдите подходящий водоем, чтобы начать рыбачить.&#xA;Выберите &lt;TECHNOLOGY&gt;удочку&lt;&gt; с помощью &lt;IMG&gt;CYCLEWEAPON&lt;&gt;.
                                { "Russian", "Поймайте необычную рыбу в &lt;TRADEABLE&gt;лесистом биоме&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Найдите подходящий водоем, чтобы начать рыбачить&#xA;Выберите &lt;TECHNOLOGY&gt;удочку&lt;&gt; с помощью &lt;IMG&gt;CYCLEWEAPON&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_LUSH_FISH_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поймайте необычную рыбу в &lt;TRADEABLE&gt;лесистом биоме&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Найдите подходящий водоем и закиньте снасть с помощью &lt;IMG&gt;ATTACK&lt;&gt;.
                                { "Russian", "Поймайте необычную рыбу в &lt;TRADEABLE&gt;лесистом биоме&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Найдите подходящий водоем и закиньте удочку (&lt;IMG&gt;ATTACK&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_LUSH_FISH_MSG5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поймайте необычную рыбу в &lt;TRADEABLE&gt;лесистом биоме&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;&lt;TECHNOLOGY&gt;Удочка&lt;&gt; не установлена.&#xA;Просматривайте чертежи в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;) с помощью &lt;IMG&gt;TECHMENU&lt;&gt;.&#xA;&lt;COMMODITY&gt;Закрепите&lt;&gt; указания по установке с помощью &lt;IMG&gt;PIN&lt;&gt;.
                                { "Russian", "Поймайте необычную рыбу в &lt;TRADEABLE&gt;лесистом биоме&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;&lt;TECHNOLOGY&gt;Удочка&lt;&gt; не установлена&#xA;Просматривайте чертежи в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;) с помощью &lt;IMG&gt;TECHMENU&lt;&gt;&#xA;&lt;COMMODITY&gt;Закрепите&lt;&gt; указания по установке с помощью &lt;IMG&gt;PIN&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region DEEP_FISH
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_DEEP_FISH_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Порыбачьте в &lt;TECHNOLOGY&gt;глубоком море&lt;&gt;.&#xA;Найдите системы с &lt;TECHNOLOGY&gt;водой&lt;&gt; на &lt;STELLAR&gt;галактической карте&lt;&gt;.&#xA;Находясь на звездолете, откройте галактическую карту с помощью &lt;IMG&gt;QUICK_MENU&lt;&gt;.
                                { "Russian", "Порыбачьте в &lt;TECHNOLOGY&gt;глубоком море&lt;&gt;&#xA;Найдите систему с &lt;TECHNOLOGY&gt;водой&lt;&gt; на &lt;STELLAR&gt;галактической карте&lt;&gt;&#xA;Находясь в космосе, откройте галактическую карту (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_DEEP_FISH_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Порыбачьте в &lt;TECHNOLOGY&gt;глубоком море&lt;&gt;.&#xA;В системе обнаружена &lt;TECHNOLOGY&gt;водная планета&lt;&gt;.&#xA;Океаны на поверхности планеты видны из космоса.
                                { "Russian", "Порыбачьте в &lt;TECHNOLOGY&gt;глубоком море&lt;&gt;&#xA;В системе обнаружена планета с &lt;TECHNOLOGY&gt;водой&lt;&gt;&#xA;Океаны на поверхности планеты видны из космоса" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_DEEP_FISH_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Порыбачьте в &lt;TECHNOLOGY&gt;глубоком море&lt;&gt;.&#xA;Найдите подходящий водоем, чтобы начать рыбачить.&#xA;Выберите &lt;TECHNOLOGY&gt;снасть&lt;&gt; с помощью &lt;IMG&gt;CYCLEWEAPON&lt;&gt;.&#xA;Установите на звездолет &lt;TECHNOLOGY&gt;водные реактивные двигатели&lt;&gt;, чтобы иметь возможность приземляться на глубине.
                                { "Russian", "Порыбачьте в &lt;TECHNOLOGY&gt;глубоком море&lt;&gt;&#xA;Найдите подходящий водоем, чтобы начать рыбачить&#xA;Выберите &lt;TECHNOLOGY&gt;удочку&lt;&gt; с помощью &lt;IMG&gt;CYCLEWEAPON&lt;&gt;&#xA;Установите на звездолёт &lt;TECHNOLOGY&gt;водные реактивные двигатели&lt;&gt;, чтобы совершать приводнение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_DEEP_FISH_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Порыбачьте в &lt;TECHNOLOGY&gt;глубоком море&lt;&gt;.&#xA;Найдите подходящий водоем и забросьте крючок с помощью &lt;IMG&gt;ATTACK&lt;&gt;.&#xA;Установите на звездолет &lt;TECHNOLOGY&gt;водные реактивные двигатели&lt;&gt;, чтобы иметь возможность приземляться на глубоких участках.
                                { "Russian", "Порыбачьте в &lt;TECHNOLOGY&gt;глубоком море&lt;&gt;&#xA;Найдите подходящий водоем и забросьте удочку с помощью &lt;IMG&gt;ATTACK&lt;&gt;&#xA;Установите на звездолёт &lt;TECHNOLOGY&gt;водные реактивные двигатели&lt;&gt;, чтобы иметь возможность приземляться на глубоких участках" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_DEEP_FISH_MSG5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Порыбачьте в &lt;TECHNOLOGY&gt;глубоком море&lt;&gt;.&#xA;Найдите подходящий водоем, чтобы начать рыбачить.&#xA;Выберите &lt;TECHNOLOGY&gt;удочку&lt;&gt; с помощью &lt;IMG&gt;CYCLEWEAPON&lt;&gt;.
                                { "Russian", "Порыбачьте в &lt;TECHNOLOGY&gt;глубоком море&lt;&gt;&#xA;Найдите подходящий водоем, чтобы начать рыбачить&#xA;Выберите &lt;TECHNOLOGY&gt;удочку&lt;&gt; с помощью &lt;IMG&gt;CYCLEWEAPON&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_DEEP_FISH_MSG6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Порыбачьте в &lt;TECHNOLOGY&gt;глубоком море&lt;&gt;.&#xA;Текущая глубина рыбалки: %CURRENT_DEPTH%/%TARGET_DEPTH% юн.&#xA;Найдите подходящий водоем и забросьте крючок с помощью &lt;IMG&gt;ATTACK&lt;&gt;.
                                { "Russian", "Порыбачьте в &lt;TECHNOLOGY&gt;глубоком море&lt;&gt;&#xA;Текущая глубина рыбалки: %CURRENT_DEPTH%/%TARGET_DEPTH%&#xA;Найдите подходящий водоем и забросьте удочку с помощью &lt;IMG&gt;ATTACK&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_DEEP_FISH_MSG7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Порыбачьте в &lt;TECHNOLOGY&gt;глубоком море&lt;&gt;.&#xA;Текущая глубина рыбалки: %CURRENT_DEPTH%/%TARGET_DEPTH% юн.&#xA;Разместите &lt;TECHNOLOGY&gt;экзоплот&lt;&gt; с помощью быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;), чтобы создать платформу для рыбалки.
                                { "Russian", "Порыбачьте в &lt;TECHNOLOGY&gt;глубоком море&lt;&gt;&#xA;Текущая глубина рыбалки: %CURRENT_DEPTH%/%TARGET_DEPTH%&#xA;Разместите &lt;TECHNOLOGY&gt;экзоплот&lt;&gt; с помощью быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;), чтобы создать платформу для рыбалки" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_DEEP_FISH_MSG8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Порыбачьте в &lt;TECHNOLOGY&gt;глубоком море&lt;&gt;&#xA;Текущая глубина рыбалки: %CURRENT_DEPTH%/%TARGET_DEPTH% юн.&#xA;Разместите &lt;TECHNOLOGY&gt;экзоплот&lt;&gt; из инвентаря (&lt;IMG&gt;INVENTORY&lt;&gt;), чтобы создать платформу для рыбалки.
                                { "Russian", "Порыбачьте в &lt;TECHNOLOGY&gt;глубоком море&lt;&gt;&#xA;Текущая глубина рыбалки: %CURRENT_DEPTH%/%TARGET_DEPTH%&#xA;Разместите &lt;TECHNOLOGY&gt;экзоплот&lt;&gt; из инвентаря (&lt;IMG&gt;INVENTORY&lt;&gt;), чтобы создать платформу для рыбалки" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_DEEP_FISH_MSG9" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Порыбачьте в &lt;TECHNOLOGY&gt;глубоком море&lt;&gt;.&#xA;&lt;TECHNOLOGY&gt;Удочка&lt;&gt; не установлена.&#xA;Просматривайте чертежи в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;) с помощью &lt;IMG&gt;TECHMENU&lt;&gt;.&#xA;&lt;COMMODITY&gt;Закрепите&lt;&gt; указания по установке с помощью &lt;IMG&gt;PIN&lt;&gt;.
                                { "Russian", "Порыбачьте в &lt;TECHNOLOGY&gt;глубоком море&lt;&gt;&#xA;&lt;TECHNOLOGY&gt;Удочка&lt;&gt; не установлена&#xA;Просматривайте чертежи в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;) с помощью &lt;IMG&gt;TECHMENU&lt;&gt;&#xA;&lt;COMMODITY&gt;Закрепите&lt;&gt; указания по установке с помощью &lt;IMG&gt;PIN&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region FISH_STORY
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_FISH_STORY_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вы еще не добрались до места рыбалки.&#xA;Для продолжения пройдите этап &lt;EXPED&gt;«%MILESTONE%»&lt;&gt;.&#xA;Выбрать этап экспедиции можно в журнале экспедиции (&lt;IMG&gt;OPTIONS&lt;&gt;).
                                { "Russian", "Вы еще не добрались до места рыбалки&#xA;Для продолжения пройдите этап &lt;EXPED&gt;%MILESTONE%&lt;&gt;&#xA;Изменить этап можно в журнале экспедиции (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_FISH_STORY_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Выловите &lt;TECHNOLOGY&gt;послание в бутылке&lt;&gt;, отправленное &lt;STELLAR&gt;Рыболовом&lt;&gt;.&#xA;Вернитесь в &lt;STELLAR&gt;систему %SYSTEM%&lt;&gt;.&#xA;Вы можете мгновенно вернуться в любую точку встречи с помощью любого &lt;TECHNOLOGY&gt;терминала телепорта&lt;&gt;.&#xA;Или же, находясь в космосе, откройте &lt;TECHNOLOGY&gt;галактическую карту&lt;&gt; с помощью быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                { "Russian", "Выловите &lt;TECHNOLOGY&gt;послание в бутылке&lt;&gt;, отправленное &lt;STELLAR&gt;Рыболовом&lt;&gt;&#xA;Вернитесь в &lt;STELLAR&gt;систему %SYSTEM%&lt;&gt;&#xA;Вы можете мгновенно вернуться в любую точку встречи с помощью любого &lt;TECHNOLOGY&gt;терминала телепорта&lt;&gt;&#xA;Или же, находясь в космосе, откройте &lt;TECHNOLOGY&gt;галактическую карту&lt;&gt; с помощью быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_FISH_STORY_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Выловите &lt;TECHNOLOGY&gt;послание в бутылке&lt;&gt;, отправленное &lt;STELLAR&gt;Рыболовом&lt;&gt;.&#xA;Вернитесь к его последнему известному месту рыбалки на &lt;STELLAR&gt;планете %PLANET%&lt;&gt;
                                { "Russian", "Выловите &lt;TECHNOLOGY&gt;послание в бутылке&lt;&gt;, отправленное &lt;STELLAR&gt;Рыболовом&lt;&gt;&#xA;Вернитесь к его последнему известному месту рыбалки на &lt;STELLAR&gt;планете %PLANET%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_FISH_STORY_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Выловите &lt;TECHNOLOGY&gt;послание в бутылке&lt;&gt;, отправленное &lt;STELLAR&gt;Рыболовом&lt;&gt;.&#xA;Найдите подходящий водоем, чтобы начать рыбачить.&#xA;Выберите &lt;TECHNOLOGY&gt;удочку&lt;&gt; с помощью &lt;IMG&gt;CYCLEWEAPON&lt;&gt;.
                                { "Russian", "Выловите &lt;TECHNOLOGY&gt;послание в бутылке&lt;&gt;, отправленное &lt;STELLAR&gt;Рыболовом&lt;&gt;&#xA;Найдите подходящий водоем, чтобы начать рыбачить&#xA;Выберите &lt;TECHNOLOGY&gt;удочку&lt;&gt; с помощью &lt;IMG&gt;CYCLEWEAPON&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_FISH_STORY_MSG5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Выловите &lt;TECHNOLOGY&gt;послание в бутылке&lt;&gt;, отправленное &lt;STELLAR&gt;Рыболовом&lt;&gt;.&#xA;Найдите подходящий водоем и закиньте снасть с помощью &lt;IMG&gt;ATTACK&lt;&gt;.
                                { "Russian", "Выловите &lt;TECHNOLOGY&gt;послание в бутылке&lt;&gt;, отправленное &lt;STELLAR&gt;Рыболовом&lt;&gt;&#xA;Найдите подходящий водоем и закиньте удочку (&lt;IMG&gt;ATTACK&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_FISH_STORY_MSG6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Выловите &lt;TECHNOLOGY&gt;послание в бутылке&lt;&gt;, отправленное &lt;STELLAR&gt;Рыболовом&lt;&gt;.&#xA;&lt;TECHNOLOGY&gt;Удочка&lt;&gt; не установлена.&#xA;Просматривайте чертежи в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;) с помощью &lt;IMG&gt;TECHMENU&lt;&gt;.&#xA;&lt;COMMODITY&gt;Закрепите&lt;&gt; указания по установке с помощью &lt;IMG&gt;PIN&lt;&gt;.
                                { "Russian", "Выловите &lt;TECHNOLOGY&gt;послание в бутылке&lt;&gt;, отправленное &lt;STELLAR&gt;Рыболовом&lt;&gt;&#xA;&lt;TECHNOLOGY&gt;Удочка&lt;&gt; не установлена&#xA;Просматривайте чертежи в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;) с помощью &lt;IMG&gt;TECHMENU&lt;&gt;&#xA;&lt;COMMODITY&gt;Закрепите&lt;&gt; указания по установке с помощью &lt;IMG&gt;PIN&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_FISH_STORY_MSG7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Откройте &lt;TECHNOLOGY&gt;послание в бутылке&lt;&gt;, отправленное &lt;STELLAR&gt;Рыболовом&lt;&gt;.&#xA;Выберите бутылку в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;) и откройте ее с помощью &lt;IMG&gt;FE_ALT1&lt;&gt;.
                                { "Russian", "Откройте &lt;TECHNOLOGY&gt;послание в бутылке&lt;&gt;, отправленное &lt;STELLAR&gt;Рыболовом&lt;&gt;&#xA;Выберите бутылку в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;) и откройте ее с помощью &lt;IMG&gt;FE_ALT1&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region FISH_SALES
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_FISH_SALES_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Продайте рыбу на сумму %AMOUNT%&lt;IMG&gt; юн.&lt;&gt;
                                -- Sell %AMOUNT%&lt;IMG&gt;UNITS&lt;&gt; worth of fish
                                { "Russian", "Продайте рыбу на сумму &lt;IMG&gt;UNITS&lt;&gt;%AMOUNT%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_FISH_SALES_DESC_D" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вы продали рыбу на сумму %NUM%&lt;IMG&gt; юн.&lt;&gt;
                                -- Sold %NUM%&lt;IMG&gt;UNITS&lt;&gt; of fish
                                { "Russian", "Продано рыбы на сумму &lt;IMG&gt;UNITS&lt;&gt;%NUM%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_FISH_SALES_OBJ" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Продать рыбу на сумму %AMOUNT% юн.
                                -- Sell fish worth %AMOUNT% units
                                { "Russian", "Продать рыбу на сумму %AMOUNT% юнитов" },
                            }
                        },
                        -- переводчик, блять, ты либо шаришь как работают тэги в игре, либо не занимаешься паразитством
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_FISH_SALES_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Продайте рыбу на галактическом рынке: %CURRENT%&lt;IMG&gt;&lt;&gt;/%AMOUNT%&lt;IMG&gt;&lt;&gt; юн.&#xA;Найдите системы с &lt;TECHNOLOGY&gt;водой&lt;&gt; на &lt;TECHNOLOGY&gt;галактической карте&lt;&gt;.&#xA;Находясь на звездолете, откройте галактическую карту (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                -- Sell fish on the galactic market: %CURRENT%&lt;IMG&gt;UNITS&lt;&gt;/%AMOUNT%&lt;IMG&gt;UNITS&lt;&gt;&#xA;Catch more fish to bring to market&#xA;In the &lt;TECHNOLOGY&gt;Galaxy Map&lt;&gt;, search for a system with &lt;TECHNOLOGY&gt;water&lt;&gt;&#xA;Access the Galaxy Map with &lt;IMG&gt;QUICK_MENU&lt;&gt; while in the Starship
                                { "Russian", "Продайте рыбу на галактическом рынке: %CURRENT%&lt;IMG&gt;UNITSMALL&lt;&gt;/%AMOUNT%&lt;IMG&gt;UNITSMALL&lt;&gt;&#xA;Найдите систему с &lt;TECHNOLOGY&gt;водой&lt;&gt; на &lt;TECHNOLOGY&gt;галактической карте&lt;&gt;&#xA;Находясь в космосе, откройте галактическую карту (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_FISH_SALES_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Продайте рыбу на галактическом рынке: %CURRENT%&lt;IMG&gt;&lt;&gt;/%AMOUNT%&lt;IMG&gt;&lt;&gt; юн.&#xA;В системе обнаружена &lt;TECHNOLOGY&gt;водная планета&lt;&gt;.&#xA;Океаны на поверхности планеты видны из космоса.
                                -- Sell fish on the galactic market: %CURRENT%&lt;IMG&gt;UNITS&lt;&gt;/%AMOUNT%&lt;IMG&gt;UNITS&lt;&gt;&#xA;Catch more fish to bring to market&#xA;&lt;TECHNOLOGY&gt;Water planet&lt;&gt; detected in local system&#xA;Oceans are visible on a planet's surface from space
                                { "Russian", "Продайте рыбу на галактическом рынке: %CURRENT%&lt;IMG&gt;UNITSMALL&lt;&gt;/%AMOUNT%&lt;IMG&gt;UNITSMALL&lt;&gt;&#xA;В системе обнаружена планета с &lt;TECHNOLOGY&gt;водой&lt;&gt;&#xA;Океаны на поверхности планеты видны из космоса" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_FISH_SALES_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Продайте рыбу на галактическом рынке: %CURRENT%&lt;IMG&gt;&lt;&gt;/%AMOUNT%&lt;IMG&gt;&lt;&gt; юн.&#xA;Найдите подходящий водоем, чтобы начать рыбачить.&#xA;Выберите &lt;TECHNOLOGY&gt;удочку&lt;&gt; с помощью &lt;IMG&gt;CYCLEWEAPON&lt;&gt;.
                                -- Sell fish on the galactic market: %CURRENT%&lt;IMG&gt;UNITS&lt;&gt;/%AMOUNT%&lt;IMG&gt;UNITS&lt;&gt;&#xA;Catch more fish to bring to market&#xA;Locate a suitable body of water to begin fishing&#xA;Equip the &lt;TECHNOLOGY&gt;Fishing Rig&lt;&gt; with &lt;IMG&gt;CYCLEWEAPON&lt;&gt;
                                { "Russian", "Продайте рыбу на галактическом рынке: %CURRENT%&lt;IMG&gt;UNITSMALL&lt;&gt;/%AMOUNT%&lt;IMG&gt;UNITSMALL&lt;&gt;&#xA;Найдите подходящий водоем, чтобы начать рыбачить&#xA;Выберите &lt;TECHNOLOGY&gt;удочку&lt;&gt; с помощью &lt;IMG&gt;CYCLEWEAPON&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_FISH_SALES_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Продайте рыбу на галактическом рынке: %CURRENT%&lt;IMG&gt;&lt;&gt;/%AMOUNT%&lt;IMG&gt;&lt;&gt; юн.&#xA;Найдите подходящий водоем и забросьте крючок с помощью &lt;IMG&gt;ATTACK&lt;&gt;.
                                -- Sell fish on the galactic market: %CURRENT%&lt;IMG&gt;UNITS&lt;&gt;/%AMOUNT%&lt;IMG&gt;UNITS&lt;&gt;&#xA;Catch more fish to bring to market&#xA;Locate a suitable body of water and cast your line with &lt;IMG&gt;ATTACK&lt;&gt;
                                { "Russian", "Продайте рыбу на галактическом рынке: %CURRENT%&lt;IMG&gt;UNITSMALL&lt;&gt;/%AMOUNT%&lt;IMG&gt;UNITSMALL&lt;&gt;&#xA;Найдите подходящий водоем и забросьте удочку с помощью &lt;IMG&gt;ATTACK&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_FISH_SALES_MSG5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Продайте рыбу на галактическом рынке: %CURRENT%&lt;IMG&gt;&lt;&gt;/%AMOUNT%&lt;IMG&gt;&lt;&gt; юн.&#xA;&lt;TECHNOLOGY&gt;Удочка&lt;&gt; не установлена.&#xA;Просматривайте чертежи в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;) с помощью &lt;IMG&gt;TECHMENU&lt;&gt;.&#xA;&lt;COMMODITY&gt;Закрепите&lt;&gt; указания по установке с помощью &lt;IMG&gt;PIN&lt;&gt;.
                                -- Sell fish on the galactic market: %CURRENT%&lt;IMG&gt;UNITS&lt;&gt;/%AMOUNT%&lt;IMG&gt;UNITS&lt;&gt;&#xA;No &lt;TECHNOLOGY&gt;Fishing Rig&lt;&gt; installed&#xA;In the Inventory (&lt;IMG&gt;INVENTORY&lt;&gt;), view blueprints with &lt;IMG&gt;TECHMENU&lt;&gt;&#xA;&lt;COMMODITY&gt;Pin&lt;&gt; installation instructions with &lt;IMG&gt;PIN&lt;&gt;
                                { "Russian", "Продайте рыбу на галактическом рынке: %CURRENT%&lt;IMG&gt;UNITSMALL&lt;&gt;/%AMOUNT%&lt;IMG&gt;UNITSMALL&lt;&gt;&#xA;&lt;TECHNOLOGY&gt;Удочка&lt;&gt; не установлена&#xA;Просматривайте чертежи в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;) с помощью &lt;IMG&gt;TECHMENU&lt;&gt;&#xA;&lt;COMMODITY&gt;Закрепите&lt;&gt; указания по установке с помощью &lt;IMG&gt;PIN&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_FISH_SALES_MSG6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Продайте рыбу на галактическом рынке: %CURRENT%&lt;IMG&gt;&lt;&gt;/%AMOUNT%&lt;IMG&gt;&lt;&gt; юн.&#xA;Найдите &lt;STELLAR&gt;торговый терминал&lt;&gt; на борту любой &lt;COMMODITY&gt;космической станции&lt;&gt;.
                                -- Sell fish on the galactic market: %CURRENT%&lt;IMG&gt;UNITS&lt;&gt;/%AMOUNT%&lt;IMG&gt;UNITS&lt;&gt;&#xA;Find the &lt;STELLAR&gt;Trade Terminal&lt;&gt; aboard any &lt;COMMODITY&gt;Space Station&lt;&gt;
                                { "Russian", "Продайте рыбу на галактическом рынке: %CURRENT%&lt;IMG&gt;UNITSMALL&lt;&gt;/%AMOUNT%&lt;IMG&gt;UNITSMALL&lt;&gt;&#xA;Найдите &lt;STELLAR&gt;торговый терминал&lt;&gt; на борту любой &lt;COMMODITY&gt;космической станции&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_FISH_SALES_MSG7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Продайте рыбу на галактическом рынке: %CURRENT%&lt;IMG&gt;&lt;&gt;/%AMOUNT%&lt;IMG&gt;&lt;&gt; юн.&#xA;Продайте свой улов в &lt;COMMODITY&gt;торговом терминале&lt;&gt;.
                                -- Sell fish on the galactic market: %CURRENT%&lt;IMG&gt;UNITS&lt;&gt;/%AMOUNT%&lt;IMG&gt;UNITS&lt;&gt;&#xA;Sell your catch at the &lt;COMMODITY&gt;Trade Terminal&lt;&gt;
                                { "Russian", "Продайте рыбу на галактическом рынке: %CURRENT%&lt;IMG&gt;UNITSMALL&lt;&gt;/%AMOUNT%&lt;IMG&gt;UNITSMALL&lt;&gt;&#xA;Продайте свой улов в &lt;COMMODITY&gt;торговом терминале&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region S15_OCTO
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_S15_OCTO_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите огненную чешую наследия &lt;STELLAR&gt;Рыболова&lt;&gt;.&#xA;Вернитесь в систему &lt;STELLAR&gt;%SYSTEM%&lt;&gt;.&#xA;Вы можете мгновенно вернуться в любую точку встречи с помощью любого &lt;TECHNOLOGY&gt;терминала телепорта&lt;&gt;.&#xA;Или же, находясь в космосе, откройте &lt;TECHNOLOGY&gt;галактическую карту&lt;&gt; с помощью быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                { "Russian", "Найдите огненную чешую наследия &lt;STELLAR&gt;Рыболова&lt;&gt;&#xA;Вернитесь в систему &lt;STELLAR&gt;%SYSTEM%&lt;&gt;&#xA;Вы можете мгновенно вернуться в любую точку встречи с помощью любого &lt;TECHNOLOGY&gt;терминала телепорта&lt;&gt;&#xA;Или же, находясь в космосе, откройте &lt;TECHNOLOGY&gt;галактическую карту&lt;&gt; с помощью быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_S15_OCTO_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите огненную чешую наследия &lt;STELLAR&gt;Рыболова&lt;&gt;.&#xA;Вернитесь к его последнему месту рыбалки на &lt;STELLAR&gt;планете %PLANET%&lt;&gt;.
                                { "Russian", "Найдите огненную чешую наследия &lt;STELLAR&gt;Рыболова&lt;&gt;&#xA;Вернитесь к его последнему месту рыбалки на &lt;STELLAR&gt;планете %PLANET%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_S15_OCTO_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Рыболов&lt;&gt; мечтал о свободе.&#xA;Выловите то, что от нее осталось...&#xA;Найдите подходящий водоем, чтобы начать рыбалку.&#xA;Выберите&lt;TECHNOLOGY&gt;удочку&lt;&gt; с помощью&lt;IMG&gt; CYCLEWEAPON&lt;&gt;.
                                -- &lt;STELLAR&gt;The Angler&lt;&gt; yearned for freedom&#xA;Dredge up that which remains...&#xA;Locate a suitable body of water to begin fishing&#xA;Equip the &lt;TECHNOLOGY&gt;Fishing Rig&lt;&gt; with &lt;IMG&gt;CYCLEWEAPON&lt;&gt;
                                { "Russian", "&lt;STELLAR&gt;Рыболов&lt;&gt; мечтал о свободе&#xA;Выловите то, что от нее осталось...&#xA;Найдите подходящий водоем, чтобы начать рыбалку&#xA;Выберите &lt;TECHNOLOGY&gt;удочку&lt;&gt; с помощью &lt;IMG&gt;CYCLEWEAPON&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_S15_OCTO_MSG5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите огненную чешую наследия &lt;STELLAR&gt;Рыболова&lt;&gt;.&#xA;Отыщите подходящий водоем и закиньте снасть с помощью &lt;IMG&gt;ATTACK&lt;&gt;.
                                { "Russian", "Найдите огненную чешую наследия &lt;STELLAR&gt;Рыболова&lt;&gt;&#xA;Отыщите подходящий водоем и закиньте удочку (&lt;IMG&gt;ATTACK&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_S15_OCTO_MSG6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите огненную чешую наследия &lt;STELLAR&gt;Рыболова&lt;&gt;.&#xA;&lt;TECHNOLOGY&gt;Удочка&lt;&gt; не установлена.&#xA;Просматривайте чертежи в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;) с помощью &lt;IMG&gt;TECHMENU&lt;&gt;.&#xA;&lt;COMMODITY&gt;Закрепите&lt;&gt; указания по установке с помощью &lt;IMG&gt;PIN&lt;&gt;.
                                { "Russian", "Найдите огненную чешую наследия &lt;STELLAR&gt;Рыболова&lt;&gt;&#xA;&lt;TECHNOLOGY&gt;Удочка&lt;&gt; не установлена&#xA;Просматривайте чертежи в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;) с помощью &lt;IMG&gt;TECHMENU&lt;&gt;&#xA;&lt;COMMODITY&gt;Закрепите&lt;&gt; указания по установке с помощью &lt;IMG&gt;PIN&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region WATER_BASE
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_WATER_BASE_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Создайте &lt;TECHNOLOGY&gt;подводную базу&lt;&gt;.&#xA;Найдите системы с &lt;TECHNOLOGY&gt;водой&lt;&gt; на &lt;STELLAR&gt;галактической карте&lt;&gt;.&#xA;Находясь на звездолете, откройте галактическую карту с помощью &lt;IMG&gt;QUICK_MENU&lt;&gt;.
                                { "Russian", "Создайте &lt;TECHNOLOGY&gt;подводную базу&lt;&gt;&#xA;Найдите систему с &lt;TECHNOLOGY&gt;водой&lt;&gt; на &lt;STELLAR&gt;галактической карте&lt;&gt;&#xA;Находясь в космосе, откройте галактическую карту (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_WATER_BASE_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Создайте &lt;TECHNOLOGY&gt;подводную базу&lt;&gt;.&#xA;В системе обнаружена &lt;TECHNOLOGY&gt;водная планета&lt;&gt;.&#xA;Океаны на поверхности планеты видны из космоса.
                                { "Russian", "Создайте &lt;TECHNOLOGY&gt;подводную базу&lt;&gt;&#xA;В системе обнаружена планета с &lt;TECHNOLOGY&gt;водой&lt;&gt;&#xA;Океаны на поверхности планеты видны из космоса" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_WATER_BASE_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Создайте &lt;TECHNOLOGY&gt;подводную базу&lt;&gt;.&#xA;На данной планете обнаружен подходящий водоем.&#xA;Погрузитесь на глубину %AMOUNT% юн., чтобы начать (сейчас: %CURRENT% юн.).
                                -- Establish an &lt;TECHNOLOGY&gt;underwater base&lt;&gt;&#xA;Suitable body of water detected on current world&#xA;Reach a depth of %AMOUNT%u to begin (currently %CURRENT%u)
                                { "Russian", "Создайте &lt;TECHNOLOGY&gt;подводную базу&lt;&gt;&#xA;На данной планете обнаружено достаточно воды&#xA;Погрузитесь на глубину %AMOUNT%u, чтобы начать (сейчас: %CURRENT%u)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_WATER_BASE_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Создайте &lt;TECHNOLOGY&gt;подводную базу&lt;&gt;.&#xA;Установите &lt;TECHNOLOGY&gt;компьютер базы&lt;&gt;, чтобы создать базу.&#xA;Откройте &lt;TECHNOLOGY&gt;меню созидания&lt;&gt; с помощью &lt;IMG&gt;BUILD_MENU&lt;&gt;.&#xA;&lt;STELLAR&gt;Закрепите&lt;&gt; этапы строительства с помощью &lt;IMG&gt;PIN_BUILD&lt;&gt;.
                                { "Russian", "Создайте &lt;TECHNOLOGY&gt;подводную базу&lt;&gt;&#xA;Установите &lt;TECHNOLOGY&gt;компьютер базы&lt;&gt;, чтобы создать базу&#xA;Откройте &lt;TECHNOLOGY&gt;меню созидания&lt;&gt; с помощью &lt;IMG&gt;BUILD_MENU&lt;&gt;&#xA;&lt;STELLAR&gt;Закрепите&lt;&gt; этапы строительства с помощью &lt;IMG&gt;PIN_BUILD&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_WATER_BASE_MSG5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Создайте &lt;TECHNOLOGY&gt;подводную базу&lt;&gt;.&#xA;Используйте &lt;TECHNOLOGY&gt;компьютер базы&lt;&gt; при помощи &lt;IMG&gt;INTERACT&lt;&gt;.&#xA;Передвиньте терминал с помощью &lt;IMG&gt;DECONSTRUCT&lt;&gt;, чтобы выбрать другую площадку.
                                { "Russian", "Создайте &lt;TECHNOLOGY&gt;подводную базу&lt;&gt;&#xA;Используйте &lt;TECHNOLOGY&gt;компьютер базы&lt;&gt; при помощи &lt;IMG&gt;INTERACT&lt;&gt;&#xA;Передвиньте терминал с помощью &lt;IMG&gt;DECONSTRUCT&lt;&gt;, чтобы выбрать другую площадку" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_WATER_BASE_MSG6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Создайте &lt;TECHNOLOGY&gt;подводную базу&lt;&gt;.&#xA;Вернитесь на базу, чтобы продолжить строительство.
                                { "Russian", "Создайте &lt;TECHNOLOGY&gt;подводную базу&lt;&gt;&#xA;Вернитесь на базу, чтобы продолжить строительство" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_WATER_BASE_MSG7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Создайте &lt;TECHNOLOGY&gt;подводную базу&lt;&gt;.&#xA;Вернитесь на базу, чтобы продолжить строительство.
                                { "Russian", "Создайте &lt;TECHNOLOGY&gt;подводную базу&lt;&gt;&#xA;Вернитесь на базу, чтобы продолжить строительство" },
                            }
                        },
                        -- подсказка может и не влезть...
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_WATER_BASE_MSG8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Разместите модули &lt;TECHNOLOGY&gt;подводного строительства&lt;&gt;.&#xA;%PARTLIST%&#xA;%BUILD_TIP%
                                -- Deploy the &lt;TECHNOLOGY&gt;underwater construction&lt;&gt; modules&#xA;%PARTLIST%&#xA;%BUILD_TIP%
                                { "Russian", "Разместите модули &lt;TECHNOLOGY&gt;подводного строительства&lt;&gt;&#xA;%PARTLIST%&#xA;%BUILD_TIP%" },
                            }
                        },
                        --#endregion

                        --#region FISH_POTS
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_FISH_POTS_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- План технологии &lt;TECHNOLOGY&gt;«%ITEM%»&lt;&gt; вам еще не известен.&#xA;Для продолжения пройдите этап &lt;EXPED&gt;«%MILESTONE%»&lt;&gt;.&#xA;Выбрать этап экспедиции можно в журнале экспедиции (&lt;IMG&gt;OPTIONS&lt;&gt;).
                                { "Russian", "Чертеж &lt;TECHNOLOGY&gt;%ITEM%&lt;&gt; вам еще не известен&#xA;Для его изучения пройдите этап &lt;EXPED&gt;%MILESTONE%&lt;&gt;&#xA;Изменить этап можно в журнале экспедиции (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_FISH_POTS_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Постройте и установите &lt;COMMODITY&gt;автоматизированную ловушку&lt;&gt;.&#xA;Откройте &lt;TECHNOLOGY&gt;меню созидания&lt;&gt; с помощью &lt;IMG&gt;BUILD_MENU&lt;&gt;.&#xA;&lt;STELLAR&gt;Закрепите&lt;&gt; этапы строительства с помощью &lt;IMG&gt;PIN_BUILD&lt;&gt;.
                                { "Russian", "Постройте и установите &lt;COMMODITY&gt;автоматизированную ловушку&lt;&gt;&#xA;Откройте &lt;TECHNOLOGY&gt;меню созидания&lt;&gt; с помощью &lt;IMG&gt;BUILD_MENU&lt;&gt;&#xA;&lt;STELLAR&gt;Закрепите&lt;&gt; этапы строительства с помощью &lt;IMG&gt;PIN_BUILD&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_FISH_POTS_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поймать рыбу с помощью автоматизированной ловушки: %CURRENT%/%AMOUNT%&#xA;&lt;COMMODITY&gt;Автоматизированная ловушка&lt;&gt; самостоятельно приманивает рыбу.&#xA;Осталось времени в текущем цикле приманки: %TIME%&#xA;Выберите другие этапы в журнале экспедиции (&lt;IMG&gt;OPTIONS&lt;&gt;).
                                -- Catch fish with Automated Traps: %CURRENT%/%AMOUNT%&#xA;The &lt;COMMODITY&gt;Automated Trap&lt;&gt; will lure fish autonomously&#xA;Time remaining in current trap cycle: %TIME%&#xA;Select other milestones from the Expedition log (&lt;IMG&gt;OPTIONS&lt;&gt;)
                                { "Russian", "Поймать рыбу с помощью автоматизированной ловушки: %CURRENT%/%AMOUNT%&#xA;&lt;COMMODITY&gt;Автоматизированная ловушка&lt;&gt; самостоятельно приманивает рыбу&#xA;До завершения текущего цикла ловушки: %TIME%&#xA;Выберите другие этапы в журнале экспедиции (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_FISH_POTS_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поймать рыбу с помощью автоматизированной ловушки: %CURRENT%/%AMOUNT%&#xA;&lt;COMMODITY&gt;Автоматизированная ловушка&lt;&gt; самостоятельно приманивает рыбу.&#xA;Вернитесь к ловушкам, чтобы проверить улов.&#xA;Используйте телепорт космической станции, чтобы мгновенно вернуться на любую базу.
                                { "Russian", "Поймать рыбу с помощью автоматизированной ловушки: %CURRENT%/%AMOUNT%&#xA;&lt;COMMODITY&gt;Автоматизированная ловушка&lt;&gt; самостоятельно приманивает рыбу&#xA;Вернитесь к ловушкам, чтобы проверить улов&#xA;Используйте телепорт космической станции, чтобы мгновенно вернуться на любую базу" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_FISH_POTS_MSG6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поймать рыбу с помощью автоматизированной ловушки: %CURRENT%/%AMOUNT%&#xA;&lt;COMMODITY&gt;Автоматизированная ловушка&lt;&gt; самостоятельно приманивает рыбу.&#xA;Вернитесь к ловушкам, чтобы проверить улов.
                                { "Russian", "Поймать рыбу с помощью автоматизированной ловушки: %CURRENT%/%AMOUNT%&#xA;&lt;COMMODITY&gt;Автоматизированная ловушка&lt;&gt; самостоятельно приманивает рыбу&#xA;Вернитесь к ловушкам, чтобы проверить улов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_FISH_POTS_MSG7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Создайте и используйте &lt;COMMODITY&gt;автоматизированную ловушку&lt;&gt;.&#xA;Найдите системы с &lt;TECHNOLOGY&gt;водой&lt;&gt;на &lt;STELLAR&gt;галактической карте&lt;&gt;.&#xA;Находясь в космосе, откройте галактическую карту (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                { "Russian", "Создайте и используйте &lt;COMMODITY&gt;автоматизированную ловушку&lt;&gt;&#xA;Найдите систему с &lt;TECHNOLOGY&gt;водой&lt;&gt;на &lt;STELLAR&gt;галактической карте&lt;&gt;&#xA;Находясь в космосе, откройте галактическую карту (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_FISH_POTS_MSG8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Создайте и используйте &lt;COMMODITY&gt;автоматизированную ловушку&lt;&gt;.&#xA;В системе обнаружена &lt;TECHNOLOGY&gt;водная планета&lt;&gt;.&#xA;Океаны на поверхности планеты видны из космоса.
                                { "Russian", "Создайте и используйте &lt;COMMODITY&gt;автоматизированную ловушку&lt;&gt;&#xA;В системе обнаружена планета с &lt;TECHNOLOGY&gt;водой&lt;&gt;&#xA;Океаны на поверхности планеты видны из космоса" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_FISH_POTS_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поймайте рыбу (%AMOUNT% шт.) с помощью автоматизированной ловушки
                                --
                                { "Russian", "Поймайте рыбу с помощью автоловушки: %AMOUNT% шт." },
                            }
                        },
                        --#endregion

                        --#region UI_EXPED_STORM_FISH_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_STORM_FISH_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поймайте рыбу, которая плавает только во время &lt;SPECIAL&gt;бурь&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;В данной системе &lt;TECHNOLOGY&gt;водные планеты с бурями&lt;&gt; не обнаружены.&#xA;Найдите системы с &lt;TECHNOLOGY&gt;водой&lt;&gt; на &lt;TECHNOLOGY&gt;галактической карте&lt;&gt;.&#xA;Находясь на звездолете, откройте галактическую карту (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                { "Russian", "Поймайте рыбу, которая плавает только во время &lt;SPECIAL&gt;бурь&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;В данной системе &lt;TECHNOLOGY&gt;водные планеты с бурями&lt;&gt; не обнаружены&#xA;Найдите систему с &lt;TECHNOLOGY&gt;водой&lt;&gt; на &lt;TECHNOLOGY&gt;галактической карте&lt;&gt;&#xA;Находясь в космосе, откройте галактическую карту (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_STORM_FISH_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поймайте рыбу, которая плавает только во время &lt;SPECIAL&gt;бурь&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;В системе обнаружена &lt;TECHNOLOGY&gt;водная планета с бурями&lt;&gt;.&#xA;Океаны на поверхности планеты видны из космоса.
                                { "Russian", "Поймайте рыбу, которая плавает только во время &lt;SPECIAL&gt;бурь&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;В системе обнаружена &lt;TECHNOLOGY&gt;водная планета с бурями&lt;&gt;&#xA;Океаны на поверхности планеты видны из космоса" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_STORM_FISH_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поймайте рыбу, которая плавает только во время &lt;SPECIAL&gt;бурь&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Найдите подходящий водоем, чтобы начать рыбачить.&#xA;Выберите &lt;TECHNOLOGY&gt;удочку&lt;&gt; с помощью &lt;IMG&gt;CYCLEWEAPON&lt;&gt;.
                                { "Russian", "Поймайте рыбу, которая плавает только во время &lt;SPECIAL&gt;бурь&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Найдите подходящий водоем, чтобы начать рыбачить&#xA;Выберите &lt;TECHNOLOGY&gt;удочку&lt;&gt; с помощью &lt;IMG&gt;CYCLEWEAPON&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_STORM_FISH_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поймайте рыбу, которая плавает только во время &lt;SPECIAL&gt;бурь&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Во время бури забросьте крючок в воду с помощью &lt;IMG&gt;ATTACK&lt;&gt;.
                                { "Russian", "Поймайте рыбу, которая плавает только во время &lt;SPECIAL&gt;бурь&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Во время бури забросьте удочку в воду с помощью &lt;IMG&gt;ATTACK&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_STORM_FISH_MSG5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поймайте рыбу, которая плавает только во время &lt;SPECIAL&gt;бурь&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;&lt;TECHNOLOGY&gt;Удочка&lt;&gt; не установлена.&#xA;Просматривайте чертежи в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;) с помощью &lt;IMG&gt;TECHMENU&lt;&gt;.&#xA;&lt;COMMODITY&gt;Закрепите&lt;&gt; указания по установке с помощью &lt;IMG&gt;PIN&lt;&gt;.
                                { "Russian", "Поймайте рыбу, которая плавает только во время &lt;SPECIAL&gt;бурь&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;&lt;TECHNOLOGY&gt;Удочка&lt;&gt; не установлена&#xA;Просматривайте чертежи в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;) с помощью &lt;IMG&gt;TECHMENU&lt;&gt;&#xA;&lt;COMMODITY&gt;Закрепите&lt;&gt; указания по установке с помощью &lt;IMG&gt;PIN&lt;&gt;" },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED2_SUMMARY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запишитесь на участие в возвращении экспедиции №2 «&lt;SPECIAL&gt;Плацдарм&lt;&gt;» и погрузитесь в тайну звездолета из другой вселенной...
                                -- Sign up for the return of Expedition 2: &lt;SPECIAL&gt;Beachhead&lt;&gt; to delve into the mystery of a starship from another universe...
                                { "Russian", "Вернитесь в экспедицию №2 «&lt;SPECIAL&gt;Плацдарм&lt;&gt;» и раскройте тайну звёздного корабля из другой вселенной..." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_STORM_FISH_OBJ" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поймать рыбу, которая плавает только во время бурь: %CURRENT%/%AMOUNT%
                                -- Catch fish that only swim during storms: %CURRENT%/%AMOUNT%
                                { "Russian", "Поймать рыбу во время бури: %CURRENT%/%AMOUNT%" },
                            }
                        },
                        -- 16 экспедиция
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NOTIFY_HAZ_SPOOK_OFFLINE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Внимание, граница нарушена
                                -- Warning - Boundary Compromised
                                { "Russian", "Внимание - граница нарушена" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NOTIFY_HAZ_SPOOK_FALL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Внимание, прочность границы падает
                                -- Warning - Boundary Strength Failing
                                { "Russian", "Внимание - прочность границы падает" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_S16_JUICE_FORMAT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Схема: &lt;SPECIAL&gt;%ITEM%&lt;&gt;
                                -- &lt;SPECIAL&gt;%ITEM% recipe&lt;&gt;
                                { "Russian", "Рецепт: &lt;SPECIAL&gt;%ITEM%&lt;&gt;" },
                            }
                        },

                        --#region UI_S16_SPOOK_JUICE_
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_S16_SPOOK_JUICE_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Используйте &lt;SPECIAL&gt;стеклянный эликсир&lt;&gt;, чтобы зарядить &lt;TECHNOLOGY&gt;подавитель аномалий&lt;&gt; и сохранить целостность местных границ.&#xA;&#xA;Выберите пустую ячейку в инвентаре и найдите нужную схему с помощью &lt;IMG&gt;PRODMENU&lt;&gt;. Любую схему можно &lt;COMMODITY&gt;закрепить&lt;&gt; с помощью &lt;IMG&gt;PIN&lt;&gt;, чтобы создать задание по &lt;VAL_ON&gt;поиску компонентов&lt;&gt;. Целиком &lt;VAL_ON&gt;древо созидания&lt;&gt; можно посмотреть с помощью &lt;IMG&gt;FE_ALT1&lt;&gt;.
                                { "Russian", "Используйте &lt;SPECIAL&gt;стеклянный эликсир&lt;&gt;, чтобы зарядить &lt;TECHNOLOGY&gt;подавитель аномалий&lt;&gt; и сохранить целостность местных границ.&#xA;&#xA;Выберите пустую ячейку в инвентаре и найдите нужную схему с помощью &lt;IMG&gt;PRODMENU&lt;&gt;. Любую схему можно &lt;COMMODITY&gt;закрепить&lt;&gt; с помощью &lt;IMG&gt;PIN&lt;&gt;, чтобы начать задание по &lt;VAL_ON&gt;поиску компонентов&lt;&gt;. Посмотреть &lt;VAL_ON&gt;древо создания&lt;&gt; предмета можно с помощью &lt;IMG&gt;FE_ALT1&lt;&gt;." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_S16_SPOOK_JUICE_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Схема технологии &lt;SPECIAL&gt;«%ITEM%»&lt;&gt; вам еще не известна.&#xA;Чтобы изучить ее, пройдите этап &lt;EXPED&gt;«%MILESTONE%»&lt;&gt;.&#xA;Выбрать этап экспедиции можно в журнале экспедиции (&lt;IMG&gt;OPTIONS&lt;&gt;).
                                -- &lt;SPECIAL&gt;%ITEM%&lt;&gt; recipe not yet known&#xA;Complete the &lt;EXPED&gt;%MILESTONE%&lt;&gt; milestone to learn the recipe&#xA;Select milestones from the Expedition log (&lt;IMG&gt;OPTIONS&lt;&gt;)
                                { "Russian", "Чертеж &lt;SPECIAL&gt;%ITEM%&lt;&gt; вам еще не известен&#xA;Для его изучения пройдите этап &lt;EXPED&gt;%MILESTONE%&lt;&gt;&#xA;Изменить этап можно в журнале экспедиции (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_S16_SPOOK_JUICE_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Приготовьте еще &lt;SPECIAL&gt;%ITEM%&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Эликсир защитит вас от &lt;SPECIAL&gt;ужасов границы&lt;&gt;.&#xA;Изготавливайте предметы в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;).&#xA;Выберите пустую ячейку и начните процесс с помощью &lt;IMG&gt;PRODMENU&lt;&gt;.
                                -- Prepare another &lt;SPECIAL&gt;%ITEM%&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;The elixir will defend you against &lt;SPECIAL&gt;boundary horrors&lt;&gt;&#xA;Craft items in the Inventory (&lt;IMG&gt;INVENTORY&lt;&gt;)&#xA;Select an empty slot and begin the process with &lt;IMG&gt;PRODMENU&lt;&gt;
                                { "Russian", "Приготовьте: &lt;SPECIAL&gt;%ITEM%&lt;&gt; (%CURRENT%/%AMOUNT%)&#xA;Эликсир защитит вас от &lt;SPECIAL&gt;ужасов границы&lt;&gt;&#xA;Создавайте предметы в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;)&#xA;Выберите пустую ячейку и нажмите &lt;IMG&gt;PRODMENU&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_S16_SPOOK_JUICE_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Приготовьте еще предмет «&lt;SPECIAL&gt;%ITEM%&lt;&gt;»: %CURRENT%/%AMOUNT%&#xA;Эликсир защитит вас от &lt;SPECIAL&gt;ужасов границы&lt;&gt;.&#xA;&lt;COMMODITY&gt;Закрепите&lt;&gt; схему, чтобы найти нужные дополнительные ингредиенты.
                                -- Prepare another &lt;SPECIAL&gt;%ITEM%&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;The elixir will defend you against &lt;SPECIAL&gt;boundary horrors&lt;&gt;&#xA;&lt;COMMODITY&gt;Pin&lt;&gt; the recipe to locate additional ingredients
                                { "Russian", "Приготовьте: &lt;SPECIAL&gt;%ITEM%&lt;&gt; (%CURRENT%/%AMOUNT%)&#xA;Эликсир защитит вас от &lt;SPECIAL&gt;ужасов границы&lt;&gt;&#xA;&lt;COMMODITY&gt;Закрепите&lt;&gt; схему, чтобы узнать где искать ингредиенты" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_S16_SPOOK_JUICE_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Выпейте &lt;SPECIAL&gt;стеклянный эликсир&lt;&gt;.&#xA;Эликсир защитит вас от &lt;SPECIAL&gt;ужасов границы&lt;&gt;.&#xA;Выберите эликсир в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;) и нажмите &lt;IMG&gt;FE_ALT1&lt;&gt;, чтобы выпить его.&#xA;Или введите его в &lt;TECHNOLOGY&gt;подавитель аномалий&lt;&gt; с помощью быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                -- Drink the &lt;SPECIAL&gt;Elixir of Glass&lt;&gt;&#xA;The elixir will defend you against &lt;SPECIAL&gt;boundary horrors&lt;&gt;&#xA;Consume the elixir with &lt;IMG&gt;FE_ALT1&lt;&gt; while in the Inventory (&lt;IMG&gt;INVENTORY&lt;&gt;)&#xA;Or inject it into the &lt;TECHNOLOGY&gt;Anomaly Suppressor&lt;&gt; from the Quick Menu (&lt;IMG&gt;QUICK_MENU&lt;&gt;)
                                { "Russian", "Выпейте &lt;SPECIAL&gt;стеклянный эликсир&lt;&gt;&#xA;Эликсир защитит вас от &lt;SPECIAL&gt;ужасов границы&lt;&gt;&#xA;Выберите эликсир в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;) и нажмите &lt;IMG&gt;FE_ALT1&lt;&gt;, чтобы выпить его&#xA;Или введите его в &lt;TECHNOLOGY&gt;подавитель аномалий&lt;&gt; из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        --#endregion

                        --#region UI_EXPED16_.*_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED16_GOTO_ABAND_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите свой звездолет.&#xA;Используйте &lt;TECHNOLOGY&gt;компас&lt;&gt; и &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; для навигации.&#xA;%S16_GLYPH1% %S16_GLYPH2% %S16_GLYPH3%
                                -- Locate your starship&#xA;Use the &lt;TECHNOLOGY&gt;Compass&lt;&gt; and &lt;TECHNOLOGY&gt;Analysis Visor&lt;&gt; to navigate&#xA;%S16_GLYPH1% %S16_GLYPH2% %S16_GLYPH3%
                                { "Russian", "Найдите свой звездолёт&#xA;Используйте &lt;TECHNOLOGY&gt;компас&lt;&gt; и &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; для навигации&#xA;%S16_GLYPH1% %S16_GLYPH2% %S16_GLYPH3%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED16_GOTO_ABAND_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Голос&lt;&gt; зовет из здания неподалеку.&#xA;Идите ему навстречу...
                                -- A &lt;SPECIAL&gt;voice&lt;&gt; calls from a nearby building&#xA;Proceed towards its call...
                                { "Russian", "&lt;SPECIAL&gt;Голос&lt;&gt; зовет из здания неподалеку&#xA;Идите ему навстречу..." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED16_GOTO_ABAND_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Голос&lt;&gt; умоляет вас выслушать его.&#xA;Подойдите к терминалу и свяжитесь с той стороной...
                                -- The &lt;SPECIAL&gt;voice&lt;&gt; begs you heed its message&#xA;Proceed to the terminal to commune across the boundary...
                                { "Russian", "&lt;SPECIAL&gt;Голос&lt;&gt; умоляет вас выслушать его&#xA;Подойдите к терминалу и свяжитесь с той стороной..." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED16_KILL_SQUID_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Изгоните ужасы границы: %CURRENT%/%AMOUNT%&#xA;Когда граница слабеет, появляются ужасы...&#xA;Текущая прочность границы: %HAZARD%
                                { "Russian", "Изгоните ужасы границы: %CURRENT%/%AMOUNT%&#xA;Когда граница слабеет, появляются ужасы...&#xA;Текущая прочность границы: %HAZARD%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED16_KILL_SQUID_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Изгоните ужасы границы: %CURRENT%/%AMOUNT%&#xA;&lt;TECHNOLOGY&gt;Подавитель аномалий&lt;&gt; экзокостюма контролирует прочность границы.&#xA;Когда граница слабеет, &lt;STELLAR&gt;на поверхности планеты&lt;&gt; появляются ужасы...
                                -- Exorcise Boundary Horrors: %CURRENT%/%AMOUNT%&#xA;The Exosuit's &lt;TECHNOLOGY&gt;Anomaly Suppressor&lt;&gt; monitors boundary strength&#xA;Horrors emerge on &lt;STELLAR&gt;planetary surfaces&lt;&gt; as the boundaries weaken...
                                { "Russian", "Изгоните ужасы границы: %CURRENT%/%AMOUNT%&#xA;&lt;TECHNOLOGY&gt;Подавитель аномалий&lt;&gt; отслеживает силу границы&#xA;Когда граница слабеет, &lt;STELLAR&gt;на поверхности планеты&lt;&gt; появляются ужасы..." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED16_MSG_JUICE_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Схема технологии &lt;FUEL&gt;«%ITEM%»&lt;&gt; вам еще не известна.&#xA;Чтобы изучить ее, пройдите этап &lt;EXPED&gt;«%MILESTONE%»&lt;&gt;.&#xA;Выбрать этап экспедиции можно в журнале экспедиции (&lt;IMG&gt;OPTIONS&lt;&gt;).
                                { "Russian", "Чертеж &lt;FUEL&gt;%ITEM%&lt;&gt; вам еще не известен&#xA;Для его изучения пройдите этап &lt;EXPED&gt;%MILESTONE%&lt;&gt;&#xA;Изменить этап можно в журнале экспедиции (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED16_MSG_JUICE_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Приготовьте &lt;FUEL&gt;%ITEM%&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Эликсир позволяет общаться с существами, обитающими &lt;STELLAR&gt;за границей&lt;&gt;.&#xA;Изготавливайте предметы в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;).&#xA;Выберите пустую ячейку и начните процесс с помощью &lt;IMG&gt;PRODMENU&lt;&gt;.
                                { "Russian", "Приготовьте: &lt;FUEL&gt;%ITEM%&lt;&gt; (%CURRENT%/%AMOUNT%)&#xA;Эликсир позволяет общаться с существами, обитающими &lt;STELLAR&gt;за границей&lt;&gt;&#xA;Изготавливайте предметы в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;)&#xA;Выберите пустую ячейку и нажмите &lt;IMG&gt;PRODMENU&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED16_MSG_JUICE_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Дополнительные ингредиенты для предмета «&lt;FUEL&gt;%ITEM%&lt;&gt;».&#xA;Эликсир позволяет общаться с существами, обитающими &lt;STELLAR&gt;за границей&lt;&gt;.&#xA;&lt;COMMODITY&gt;Закрепите&lt;&gt; схему, чтобы найти нужные предметы.
                                -- Additional ingredients required for &lt;FUEL&gt;%ITEM%&lt;&gt;&#xA;The elixir permits communication with those beyond the &lt;STELLAR&gt;boundary&lt;&gt;&#xA;&lt;COMMODITY&gt;Pin&lt;&gt; the recipe to locate needed items
                                { "Russian", "&lt;FUEL&gt;%ITEM%&lt;&gt; — требуются ингредиенты&#xA;Эликсир позволяет общаться с существами, обитающими &lt;STELLAR&gt;за границей&lt;&gt;&#xA;&lt;COMMODITY&gt;Закрепите&lt;&gt; рецепт, чтобы найти нужные предметы" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED16_MSG_JUICE_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Выпейте &lt;FUEL&gt;кровавый эликсир&lt;&gt;.&#xA;Эликсир позволяет общаться с существами, обитающими &lt;STELLAR&gt;за границей&lt;&gt;.&#xA;Откройте инвентарь (&lt;IMG&gt;INVENTORY&lt;&gt;)&#xA;Выпейте эликсир с помощью &lt;IMG&gt;FE_ALT1&lt;&gt;
                                -- Drink the &lt;FUEL&gt;Elixir of Blood&lt;&gt;&#xA;The elixir permits communication with those beyond the &lt;STELLAR&gt;boundary&lt;&gt;&#xA;Open the Inventory (&lt;IMG&gt;INVENTORY&lt;&gt;)&#xA;Consume the elixir with &lt;IMG&gt;FE_ALT1&lt;&gt;
                                { "Russian", "Выпейте &lt;FUEL&gt;кровавый эликсир&lt;&gt;&#xA;Эликсир позволяет общаться с существами, обитающими &lt;STELLAR&gt;за границей&lt;&gt;&#xA;Найдите эликсир в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;) и выпейте, нажав &lt;IMG&gt;FE_ALT1&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED16_PORTALJUICE_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Схема технологии &lt;SPECIAL&gt;«%ITEM%»&lt;&gt; вам еще не известна.&#xA;Чтобы изучить ее, пройдите этап &lt;EXPED&gt;«%MILESTONE%»&lt;&gt;.&#xA;Выбрать этап экспедиции можно в журнале экспедиции (&lt;IMG&gt;OPTIONS&lt;&gt;).
                                { "Russian", "Чертеж &lt;SPECIAL&gt;%ITEM%&lt;&gt; вам еще не известен&#xA;Для его изучения пройдите этап &lt;EXPED&gt;%MILESTONE%&lt;&gt;&#xA;Изменить этап можно в журнале экспедиции (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED16_PORTALJUICE_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Приготовьте &lt;SPECIAL&gt;%ITEM%&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Эликсир откроет местоположение находящихся неподалеку &lt;SPECIAL&gt;порталов&lt;&gt;.&#xA;Изготавливайте предметы в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;).&#xA;Выберите пустую ячейку и начните процесс с помощью &lt;IMG&gt;PRODMENU&lt;&gt;.
                                { "Russian", "Приготовьте: &lt;SPECIAL&gt;%ITEM%&lt;&gt; (%CURRENT%/%AMOUNT%)&#xA;Эликсир откроет местоположение ближайшего &lt;SPECIAL&gt;портала&lt;&gt;&#xA;Изготавливайте предметы в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;)&#xA;Выберите пустую ячейку и нажмите &lt;IMG&gt;PRODMENU&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED16_PORTALJUICE_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Дополнительные ингредиенты для предмета «&lt;SPECIAL&gt;%ITEM%&lt;&gt;».&#xA;&lt;COMMODITY&gt;Закрепите&lt;&gt; схему, чтобы найти нужные предметы.&#xA;Эликсир откроет местоположение находящихся неподалеку &lt;SPECIAL&gt;порталов&lt;&gt;.
                                -- Additional ingredients required for &lt;SPECIAL&gt;%ITEM%&lt;&gt;&#xA;&lt;COMMODITY&gt;Pin&lt;&gt; the recipe to locate needed items&#xA;The elixir will reveal nearby &lt;SPECIAL&gt;portals&lt;&gt;
                                { "Russian", "&lt;SPECIAL&gt;%ITEM%&lt;&gt; — требуются ингредиенты&#xA;&lt;COMMODITY&gt;Закрепите&lt;&gt; рецепт, чтобы найти нужные предметы&#xA;Эликсир откроет местоположение ближайшего &lt;SPECIAL&gt;портала&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED16_GRAVE_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Граница рядом, но до нее не дотянуться&#xA;%S16_GLYPH1% %S16_GLYPH2% %S16_GLYPH3%&#xA;Для продолжения выберите этап «&lt;EXPED&gt;%MILESTONE%&lt;&gt;».&#xA;Выбрать этапы можно в журнале экспедиции (&lt;IMG&gt;OPTIONS&lt;&gt;)
                                -- The boundary wall remains just out of reach&#xA;%S16_GLYPH1% %S16_GLYPH2% %S16_GLYPH3%&#xA;Select the &lt;EXPED&gt;%MILESTONE%&lt;&gt; milestone to proceed&#xA;Select milestones from the Expedition log (&lt;IMG&gt;OPTIONS&lt;&gt;)
                                { "Russian", "Граница рядом, но до нее не дотянуться&#xA;%S16_GLYPH1% %S16_GLYPH2% %S16_GLYPH3%&#xA;Для продолжения выберите этап &lt;EXPED&gt;%MILESTONE%&lt;&gt;&#xA;Изменить этап можно в журнале экспедиции (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED16_GRAVE_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите &lt;SPECIAL&gt;голос стекла&lt;&gt;&#xA;Разрушение границы обнаружено в точке %GPS%&#xA;%S16_GLYPH1% %S16_GLYPH2% %S16_GLYPH3%
                                { "Russian", "Найдите &lt;SPECIAL&gt;голос стекла&lt;&gt;&#xA;Обнаружено разрушение границы: %GPS%&#xA;%S16_GLYPH1% %S16_GLYPH2% %S16_GLYPH3%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED16_BOSS_JUICE_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вкус воды вам еще не известен.&#xA;Для продолжения выберите этап «&lt;EXPED&gt;%MILESTONE%&lt;&gt;».&#xA;Выбрать этап экспедиции можно в журнале экспедиции (&lt;IMG&gt;OPTIONS&lt;&gt;).
                                -- The taste of water is unknown to you&#xA;Select the &lt;EXPED&gt;%MILESTONE%&lt;&gt; milestone to proceed&#xA;Select milestones from the Expedition log (&lt;IMG&gt;OPTIONS&lt;&gt;)
                                { "Russian", "Вкус воды вам еще не известен&#xA;Для продолжения выберите этап &lt;EXPED&gt;%MILESTONE%&lt;&gt;&#xA;Изменить этап можно в журнале экспедиции (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED16_BOSS_JUICE_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Приготовьте &lt;SPECIAL&gt;%ITEM%&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Изготавливайте предметы в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;).&#xA;Выберите пустую ячейку и начните процесс с помощью &lt;IMG&gt;PRODMENU&lt;&gt;.&#xA;Не пейте воду...
                                -- Prepare the &lt;SPECIAL&gt;%ITEM%&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Craft items in the Inventory (&lt;IMG&gt;INVENTORY&lt;&gt;)&#xA;Select an empty slot and begin the process with &lt;IMG&gt;PRODMENU&lt;&gt;&#xA;Do not drink the water...
                                { "Russian", "Приготовьте: &lt;SPECIAL&gt;%ITEM%&lt;&gt; (%CURRENT%/%AMOUNT%)&#xA;Изготавливайте предметы в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;)&#xA;Выберите пустую ячейку и нажмите &lt;IMG&gt;PRODMENU&lt;&gt;&#xA;Не пейте воду..." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED16_BOSS_JUICE_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Дополнительные ингредиенты для предмета «&lt;SPECIAL&gt;%ITEM%&lt;&gt;».&#xA;&lt;COMMODITY&gt;Закрепите&lt;&gt; схему, чтобы найти нужные предметы.&#xA;Не пейте воду...
                                { "Russian", "&lt;SPECIAL&gt;%ITEM%&lt;&gt; — требуются ингредиенты&#xA;&lt;COMMODITY&gt;Закрепите&lt;&gt; рецепт, чтобы найти нужные предметы&#xA;Не пейте воду..." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED16_JELLYBOSS_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Выпейте &lt;TECHNOLOGY&gt;водный эликсир&lt;&gt;, чтобы увидеть &lt;SPECIAL&gt;хранителя&lt;&gt;.&#xA;Откройте инвентарь (&lt;IMG&gt;INVENTORY&lt;&gt;).&#xA;Выпейте эликсир с помощью &lt;IMG&gt;FE_ALT1&lt;&gt;.
                                { "Russian", "Выпейте &lt;TECHNOLOGY&gt;водный эликсир&lt;&gt;, чтобы увидеть &lt;SPECIAL&gt;хранителя&lt;&gt;&#xA;Найдите эликсир в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;) и выпейте, нажав &lt;IMG&gt;FE_ALT1&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED16_JELLYBOSS_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружен &lt;SPECIAL&gt;хранитель границы&lt;&gt;.&#xA;Изгоните хранителя, чтобы запечатать брешь в реальности...
                                { "Russian", "Обнаружен &lt;SPECIAL&gt;хранитель границы&lt;&gt;&#xA;Изгоните хранителя, чтобы запечатать брешь в реальности..." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED16_TIME_SPOOKED_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Выживайте с низкой целостностью границы: %CURRENT%/%AMOUNT% сек.&#xA;Текущая прочность границы: %HAZARD%&#xA;Позвольте &lt;TECHNOLOGY&gt;подавителю аномалий&lt;&gt; разрядиться, чтобы ослабить локальную границу.
                                -- Survive with low boundary integrity: %CURRENT%/%AMOUNT%s&#xA;Current boundary strength: %HAZARD%&#xA;Allow the &lt;TECHNOLOGY&gt;Anomaly Suppressor&lt;&gt; to discharge to weaken local integrity
                                { "Russian", "Выживите с низкой целостностью границы: %CURRENT%/%AMOUNT% с&#xA;Текущая прочность границы: %HAZARD%&#xA;Позвольте &lt;TECHNOLOGY&gt;подавителю аномалий&lt;&gt; разрядиться,&#xA;чтобы ослабить границу" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED16_TIME_SPOOKED_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Выживайте с низкой целостностью границы: %CURRENT%/%AMOUNT% сек.&#xA;Вернитесь на планету, чтобы проверить прочность локальной границы.&#xA;&lt;TECHNOLOGY&gt;Подавитель аномалий&lt;&gt; экзокостюма контролирует текущую целостность реальности.
                                -- Survive with low boundary integrity: %CURRENT%/%AMOUNT%s&#xA;Return to a planet to test local boundary strength&#xA;The Exosuit's &lt;TECHNOLOGY&gt;Anomaly Suppressor&lt;&gt; monitors current reality integrity
                                { "Russian", "Выживите с низкой целостностью границы: %CURRENT%/%AMOUNT% с&#xA;Вернитесь на планету, чтобы проверить прочность границы&#xA;&lt;TECHNOLOGY&gt;Подавитель аномалий&lt;&gt; отслеживает целостность реальности" },
                            }
                        },
                        --#endregion

                        --#region Целиком
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED16_MSG_JUICE_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Используйте &lt;SPECIAL&gt;кровавый эликсир&lt;&gt;, чтобы поговорить с существами, обитающими за границей.&#xA;&#xA;Выберите пустую ячейку в инвентаре и найдите нужную схему с помощью &lt;IMG&gt;PRODMENU&lt;&gt;. Любую схему можно &lt;COMMODITY&gt;закрепить&lt;&gt; с помощью &lt;IMG&gt;PIN&lt;&gt;, чтобы создать задание по &lt;VAL_ON&gt;поиску компонентов&lt;&gt;. Целиком &lt;VAL_ON&gt;древо созидания&lt;&gt; можно посмотреть с помощью &lt;IMG&gt;FE_ALT1&lt;&gt;.&#xA;&#xA;%S16_GLYPH1% &lt;SPECIAL&gt;мы скоро встретимся...&lt;&gt; %S16_GLYPH2%
                                { "Russian", "Используйте &lt;SPECIAL&gt;кровавый эликсир&lt;&gt;, чтобы поговорить с существами, обитающими за границей.&#xA;&#xA;Выберите пустую ячейку в инвентаре и найдите нужную схему с помощью &lt;IMG&gt;PRODMENU&lt;&gt;. Любую схему можно &lt;COMMODITY&gt;закрепить&lt;&gt; с помощью &lt;IMG&gt;PIN&lt;&gt;, чтобы начать задание по &lt;VAL_ON&gt;поиску компонентов&lt;&gt;. Посмотреть &lt;VAL_ON&gt;древо создания&lt;&gt; предмета можно с помощью &lt;IMG&gt;FE_ALT1&lt;&gt;.&#xA;&#xA;%S16_GLYPH1% &lt;SPECIAL&gt;мы скоро встретимся...&lt;&gt; %S16_GLYPH2%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED16_PORTALJUICE_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Используйте &lt;SPECIAL&gt;ртутный эликсир&lt;&gt;, чтобы найти находящиеся неподалеку &lt;TECHNOLOGY&gt;порталы&lt;&gt;.&#xA;&#xA;Выберите пустую ячейку в инвентаре и найдите нужную схему с помощью &lt;IMG&gt;PRODMENU&lt;&gt;. Любую схему можно &lt;COMMODITY&gt;закрепить&lt;&gt; с помощью &lt;IMG&gt;PIN&lt;&gt;, чтобы создать задание по &lt;VAL_ON&gt;поиску компонентов&lt;&gt;. Целиком &lt;VAL_ON&gt;древо созидания&lt;&gt; можно посмотреть с помощью &lt;IMG&gt;FE_ALT1&lt;&gt;.&#xA;&#xA;%S16_GLYPH1%&lt;SPECIAL&gt; мы скоро встретимся...&lt;&gt; %S16_GLYPH2%
                                { "Russian", "Используйте &lt;SPECIAL&gt;ртутный эликсир&lt;&gt;, чтобы найти находящиеся неподалеку &lt;TECHNOLOGY&gt;порталы&lt;&gt;.&#xA;&#xA;Выберите пустую ячейку в инвентаре и найдите нужную схему с помощью &lt;IMG&gt;PRODMENU&lt;&gt;. Любую схему можно &lt;COMMODITY&gt;закрепить&lt;&gt; с помощью &lt;IMG&gt;PIN&lt;&gt;, чтобы начать задание по &lt;VAL_ON&gt;поиску компонентов&lt;&gt;. Посмотреть &lt;VAL_ON&gt;древо создания&lt;&gt; предмета можно с помощью &lt;IMG&gt;FE_ALT1&lt;&gt;.&#xA;&#xA;%S16_GLYPH1%&lt;SPECIAL&gt; мы скоро встретимся...&lt;&gt; %S16_GLYPH2%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED16_BOSS_JUICE_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Используйте &lt;SPECIAL&gt;водный эликсир&lt;&gt;, чтобы увидеть частицы ужаса, что просачивается сквозь границы реальности.&#xA;&#xA;Выберите пустую ячейку в инвентаре и воспользуйтесь &lt;IMG&gt;PRODMENU&lt;&gt;, чтобы посмотреть известные схемы. Любую схему можно &lt;COMMODITY&gt;закрепить&lt;&gt; (&lt;IMG&gt;PIN&lt;&gt;), чтобы создать задание по &lt;VAL_ON&gt;поиску компонентов&lt;&gt;. Целиком &lt;VAL_ON&gt;древо созидания&lt;&gt; можно посмотреть с помощью &lt;IMG&gt;FE_ALT1&lt;&gt;.&#xA;&#xA;%S16_GLYPH1% &lt;SPECIAL&gt;ты знаешь, где проходил твой путь, даже если не можешь вспомнить... атлас знает, где мы были, даже если не видит этого... он не простит нашу вылазку...&lt;&gt; %S16_GLYPH2%
                                { "Russian", "Используйте &lt;SPECIAL&gt;водный эликсир&lt;&gt;, чтобы увидеть частицы ужаса, что просачивается сквозь границы реальности.&#xA;&#xA;Выберите пустую ячейку в инвентаре и воспользуйтесь &lt;IMG&gt;PRODMENU&lt;&gt;, чтобы посмотреть известные схемы. Любую схему можно &lt;COMMODITY&gt;закрепить&lt;&gt; (&lt;IMG&gt;PIN&lt;&gt;), чтобы начать задание по &lt;VAL_ON&gt;поиску компонентов&lt;&gt;. Посмотреть &lt;VAL_ON&gt;древо создания&lt;&gt; предмета можно с помощью &lt;IMG&gt;FE_ALT1&lt;&gt;.&#xA;&#xA;%S16_GLYPH1% &lt;SPECIAL&gt;ты знаешь, где проходил твой путь, даже если не можешь вспомнить... атлас знает, где мы были, даже если не видит этого... он не простит нашу вылазку...&lt;&gt; %S16_GLYPH2%" },
                            }
                        },
                        --#endregion

                        --#region UI_S16_PORTALPARTY_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_S16_PORTALPARTY_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Эта граница еще не ослабла.&#xA;Для продолжения пройдите этап «&lt;EXPED&gt;%MILESTONE%&lt;&gt;».&#xA;Выбрать этап экспедиции можно в журнале экспедиции (&lt;IMG&gt;OPTIONS&lt;&gt;).
                                { "Russian", "Эта граница еще не ослабла&#xA;Для продолжения пройдите этап &lt;EXPED&gt;%MILESTONE%&lt;&gt;&#xA;Изменить этап можно в журнале экспедиции (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_S16_PORTALPARTY_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Выпейте &lt;TECHNOLOGY&gt;ртутный эликсир&lt;&gt;, чтобы открыть местоположение находящихся неподалеку &lt;SPECIAL&gt;порталов&lt;&gt;.&#xA;Откройте инвентарь (&lt;IMG&gt;INVENTORY&lt;&gt;).&#xA;Выпейте эликсир с помощью &lt;IMG&gt;FE_ALT1&lt;&gt;.
                                { "Russian", "Выпейте &lt;TECHNOLOGY&gt;ртутный эликсир&lt;&gt;, чтобы узнать&#xA;местоположение ближайшего &lt;SPECIAL&gt;портала&lt;&gt;&#xA;Найдите эликсир в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;) и выпейте, нажав &lt;IMG&gt;FE_ALT1&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_S16_PORTALPARTY_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;Ртутный эликсир&lt;&gt; открыл местоположение &lt;SPECIAL&gt;портала&lt;&gt; неподалеку.&#xA;Доберитесь до портала, чтобы пересечь границу между реальностями.
                                { "Russian", "&lt;TECHNOLOGY&gt;Ртутный эликсир&lt;&gt; указал на местоположение &lt;SPECIAL&gt;портала&lt;&gt;&#xA;Доберитесь до него, чтобы пересечь границу между реальностями" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_S16_PORTALPARTY_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Осмотрите &lt;SPECIAL&gt;портал&lt;&gt;.&#xA;Он зовет вас, его бесконечная музыка отражается от границы...
                                -- Inspect the &lt;SPECIAL&gt;portal&lt;&gt;&#xA;It calls to you, its infinite music echoing across the boundary...
                                { "Russian", "Осмотрите &lt;SPECIAL&gt;портал&lt;&gt;&#xA;Он зовет вас, его бесконечная музыка отражается от границы..." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_S16_PORTALPARTY_MSG5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Войдите в &lt;SPECIAL&gt;портал&lt;&gt;.&#xA;Граница ждет вас...
                                { "Russian", "Войдите в &lt;SPECIAL&gt;портал&lt;&gt;&#xA;Граница ждёт вас..." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_S16_PORTALPARTY_MSG6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Приготовьте &lt;FUEL&gt;%ITEM%&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Принесите свою кровь в жертву у &lt;SPECIAL&gt;портала&lt;&gt;, чтобы общаться через границу.&#xA;Изготавливайте предметы в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;).&#xA;Выберите пустую ячейку и начните процесс с помощью &lt;IMG&gt;PRODMENU&lt;&gt;.
                                -- Prepare the &lt;FUEL&gt;%ITEM%&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Offer the blood at a &lt;SPECIAL&gt;portal&lt;&gt; to commune across the boundary wall&#xA;Craft items in the Inventory (&lt;IMG&gt;INVENTORY&lt;&gt;)&#xA;Select an empty slot and begin the process with &lt;IMG&gt;PRODMENU&lt;&gt;
                                { "Russian", "Приготовьте: &lt;FUEL&gt;%ITEM%&lt;&gt; (%CURRENT%/%AMOUNT%)&#xA;Приподнесите кровь &lt;SPECIAL&gt;порталу&lt;&gt;&#xA;Изготавливайте предметы в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;)&#xA;Выберите пустую ячейку и нажмите &lt;IMG&gt;PRODMENU&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_S16_PORTALPARTY_MSG7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Дополнительные ингредиенты для предмета «&lt;FUEL&gt;%ITEM%&lt;&gt;».&#xA;Принесите свою кровь в жертву у &lt;SPECIAL&gt;портала&lt;&gt;, чтобы общаться через границу.&#xA;&lt;COMMODITY&gt;Закрепите&lt;&gt; схему, чтобы найти нужные предметы.
                                -- Additional ingredients required for &lt;FUEL&gt;%ITEM%&lt;&gt;&#xA;Offer the blood at a &lt;SPECIAL&gt;portal&lt;&gt; to commune across the boundary wall&#xA;&lt;COMMODITY&gt;Pin&lt;&gt; the recipe to locate needed items
                                { "Russian", "&lt;FUEL&gt;%ITEM%&lt;&gt; — требуются ингредиенты&#xA;Приподнесите кровь &lt;SPECIAL&gt;порталу&lt;&gt;&#xA;&lt;COMMODITY&gt;Закрепите&lt;&gt; рецепт, чтобы найти нужные предметы" },
                            }
                        },
                        --#endregion

                        --#region UI_EXPED_GET_SKIFF_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_GET_SKIFF_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Чертеж технологии &lt;TECHNOLOGY&gt;«%ITEM%»&lt;&gt; вам еще не известен.&#xA;Для продолжения пройдите этап &lt;EXPED&gt;«%MILESTONE%»&lt;&gt;.&#xA;Выбрать этап экспедиции можно в журнале экспедиции (&lt;IMG&gt;OPTIONS&lt;&gt;).
                                { "Russian", "Чертеж &lt;TECHNOLOGY&gt;%ITEM%&lt;&gt; вам еще не известен&#xA;Для продолжения пройдите этап &lt;EXPED&gt;%MILESTONE%&lt;&gt;&#xA;Изменить этап можно в журнале экспедиции (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_GET_SKIFF_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Установите в экзокостюм: &lt;TECHNOLOGY&gt;%ITEM%&lt;&gt;.&#xA;Откройте инвентарь с помощью &lt;IMG&gt;INVENTORY&lt;&gt;.&#xA;Выберите пустую ячейку и начните установку с помощью &lt;IMG&gt;TECHMENU&lt;&gt;.
                                { "Russian", "Установите в экзокостюм: &lt;TECHNOLOGY&gt;%ITEM%&lt;&gt;&#xA;Откройте инвентарь с помощью &lt;IMG&gt;INVENTORY&lt;&gt;&#xA;Выберите пустую ячейку и нажмите &lt;IMG&gt;TECHMENU&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_GET_SKIFF_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Завершите установку: &lt;TECHNOLOGY&gt;%ITEM%&lt;&gt;.&#xA;Воспользуйтесь &lt;IMG&gt;TECHMENU&lt;&gt;, чтобы следить за ходом установки.&#xA;Закрепите необходимые компоненты с помощью &lt;IMG&gt;PIN&lt;&gt;.
                                { "Russian", "Завершите установку: &lt;TECHNOLOGY&gt;%ITEM%&lt;&gt;&#xA;Воспользуйтесь &lt;IMG&gt;TECHMENU&lt;&gt;, чтобы следить за ходом установки&#xA;Закрепите необходимые компоненты с помощью &lt;IMG&gt;PIN&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_GET_SKIFF_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Опробуйте &lt;TECHNOLOGY&gt;экзоплот&lt;&gt;.&#xA;Найдите системы с &lt;TECHNOLOGY&gt;водой&lt;&gt; на &lt;TECHNOLOGY&gt;галактической карте&lt;&gt;.&#xA;Находясь на звездолете, откройте галактическую карту с помощью &lt;IMG&gt;QUICK_MENU&lt;&gt;.
                                { "Russian", "Опробуйте &lt;TECHNOLOGY&gt;экзоплот&lt;&gt;&#xA;Найдите систему с &lt;TECHNOLOGY&gt;водой&lt;&gt; на &lt;TECHNOLOGY&gt;галактической карте&lt;&gt;&#xA;Находясь в космосе, откройте галактическую карту с помощью &lt;IMG&gt;QUICK_MENU&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_GET_SKIFF_MSG5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Опробуйте &lt;TECHNOLOGY&gt;экзоплот&lt;&gt;.&#xA;В системе обнаружена &lt;TECHNOLOGY&gt;водная планета&lt;&gt;.&#xA;Океаны на поверхности планеты видны из космоса.
                                { "Russian", "Опробуйте &lt;TECHNOLOGY&gt;экзоплот&lt;&gt;&#xA;В системе обнаружена планета с &lt;TECHNOLOGY&gt;водой&lt;&gt;&#xA;Океаны на поверхности планеты видны из космоса" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_GET_SKIFF_MSG6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Опробуйте &lt;TECHNOLOGY&gt;экзоплот&lt;&gt;.&#xA;Чтобы начать испытания, найдите подходящий водоем.&#xA;Разместите экзоплот с помощью &lt;STELLAR&gt;быстрого меню&lt;&gt; (&lt;IMG&gt;QUICK_MENU&lt;&gt;).&#xA;Экзоплот можно вызвать как любое другое транспортное средство.
                                { "Russian", "Опробуйте &lt;TECHNOLOGY&gt;экзоплот&lt;&gt;&#xA;Чтобы начать испытания, найдите подходящий водоем&#xA;Разместите экзоплот из &lt;STELLAR&gt;быстрого меню&lt;&gt; (&lt;IMG&gt;QUICK_MENU&lt;&gt;)&#xA;Экзоплот можно вызвать как любое другое транспортное средство" },
                            }
                        },
                        --#endregion

                        --#region UI_EXPED_CATCH_FISH_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_CATCH_FISH_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поймайте любую &lt;TECHNOLOGY&gt;рыбу&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Найдите системы с &lt;TECHNOLOGY&gt;водой&lt;&gt; на &lt;TECHNOLOGY&gt;галактической карте&lt;&gt;.&#xA;Находясь на звездолете, откройте галактическую карту (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                { "Russian", "Поймайте любую &lt;TECHNOLOGY&gt;рыбу&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Найдите систему с &lt;TECHNOLOGY&gt;водой&lt;&gt; на &lt;TECHNOLOGY&gt;галактической карте&lt;&gt;&#xA;Находясь в космосе, откройте галактическую карту (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_CATCH_FISH_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поймайте любую &lt;TECHNOLOGY&gt;рыбу&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;В системе обнаружена &lt;TECHNOLOGY&gt;водная планета&lt;&gt;.&#xA;Океаны на поверхности планеты видны из космоса.
                                { "Russian", "Поймайте любую &lt;TECHNOLOGY&gt;рыбу&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;В системе обнаружена планета с &lt;TECHNOLOGY&gt;водой&lt;&gt;&#xA;Океаны на поверхности планеты видны из космоса" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_CATCH_FISH_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поймайте любую &lt;TECHNOLOGY&gt;рыбу&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Найдите подходящий водоем, чтобы начать рыбачить.&#xA;Выберите &lt;TECHNOLOGY&gt;снасть&lt;&gt; с помощью &lt;IMG&gt;CYCLEWEAPON&lt;&gt;.
                                { "Russian", "Поймайте любую &lt;TECHNOLOGY&gt;рыбу&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Найдите подходящий водоем, чтобы начать рыбачить&#xA;Выберите &lt;TECHNOLOGY&gt;удочку&lt;&gt; с помощью &lt;IMG&gt;CYCLEWEAPON&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_CATCH_FISH_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поймайте любую &lt;TECHNOLOGY&gt;рыбу&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Найдите подходящий водоем и закиньте снасть с помощью &lt;IMG&gt;ATTACK&lt;&gt;.
                                { "Russian", "Поймайте любую &lt;TECHNOLOGY&gt;рыбу&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Найдите подходящий водоем и закиньте удочку (&lt;IMG&gt;ATTACK&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_CATCH_FISH_MSG5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поймайте любую &lt;TECHNOLOGY&gt;рыбу&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;&lt;TECHNOLOGY&gt;Снасть&lt;&gt; не установлена.&#xA;Просматривайте чертежи в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;) с помощью &lt;IMG&gt;TECHMENU&lt;&gt;.&#xA;&lt;COMMODITY&gt;Закрепите&lt;&gt; указания по установке с помощью &lt;IMG&gt;PIN&lt;&gt;.
                                -- Catch any &lt;TECHNOLOGY&gt;fish&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;No &lt;TECHNOLOGY&gt;Fishing Rig&lt;&gt; installed&#xA;In the Inventory (&lt;IMG&gt;INVENTORY&lt;&gt;), view blueprints with &lt;IMG&gt;TECHMENU&lt;&gt;&#xA;&lt;COMMODITY&gt;Pin&lt;&gt; installation instructions with &lt;IMG&gt;PIN&lt;&gt;
                                { "Russian", "Поймайте любую &lt;TECHNOLOGY&gt;рыбу&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;&lt;TECHNOLOGY&gt;Удочка&lt;&gt; не установлена&#xA;Просматривайте чертежи в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;) с помощью &lt;IMG&gt;TECHMENU&lt;&gt;&#xA;&lt;COMMODITY&gt;Закрепляйте&lt;&gt; указания по установке с помощью &lt;IMG&gt;PIN&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region UI_EXPED_RELEASE_FISH_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_RELEASE_FISH_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поймайте и &lt;STELLAR&gt;отпустите&lt;&gt; рыбу: %CURRENT%/%AMOUNT%&#xA;Найдите системы с &lt;TECHNOLOGY&gt;водой&lt;&gt; на &lt;TECHNOLOGY&gt;галактической карте&lt;&gt;.&#xA;Находясь на звездолете, откройте галактическую карту (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                { "Russian", "Поймайте и &lt;STELLAR&gt;отпустите&lt;&gt; рыбу: %CURRENT%/%AMOUNT%&#xA;Найдите систему с &lt;TECHNOLOGY&gt;водой&lt;&gt; на &lt;TECHNOLOGY&gt;галактической карте&lt;&gt;&#xA;Находясь в космосе, откройте галактическую карту (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_RELEASE_FISH_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поймайте и &lt;STELLAR&gt;отпустите&lt;&gt; рыбу: %CURRENT%/%AMOUNT%&#xA;В системе обнаружена &lt;TECHNOLOGY&gt;водная планета&lt;&gt;.&#xA;Океаны на поверхности планеты видны из космоса.
                                { "Russian", "Поймайте и &lt;STELLAR&gt;отпустите&lt;&gt; рыбу: %CURRENT%/%AMOUNT%&#xA;В системе обнаружена планета с &lt;TECHNOLOGY&gt;водой&lt;&gt;&#xA;Океаны на поверхности планеты видны из космоса" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_RELEASE_FISH_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поймайте и &lt;STELLAR&gt;отпустите&lt;&gt; рыбу: %CURRENT%/%AMOUNT%&#xA;Найдите подходящий водоем, чтобы начать рыбачить.&#xA;Выберите &lt;TECHNOLOGY&gt;снасть&lt;&gt; с помощью &lt;IMG&gt;CYCLEWEAPON&lt;&gt;.
                                { "Russian", "Поймайте и &lt;STELLAR&gt;отпустите&lt;&gt; рыбу: %CURRENT%/%AMOUNT%&#xA;Найдите подходящий водоем, чтобы начать рыбачить&#xA;Выберите &lt;TECHNOLOGY&gt;удочку&lt;&gt; с помощью &lt;IMG&gt;CYCLEWEAPON&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_RELEASE_FISH_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поймайте и &lt;STELLAR&gt;отпустите&lt;&gt; рыбу: %CURRENT%/%AMOUNT%&#xA;Найдите подходящий водоем и закиньте снасть с помощью &lt;IMG&gt;ATTACK&lt;&gt;.
                                { "Russian", "Поймайте и &lt;STELLAR&gt;отпустите&lt;&gt; рыбу: %CURRENT%/%AMOUNT%&#xA;Найдите подходящий водоем и закиньте удочку (&lt;IMG&gt;ATTACK&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_RELEASE_FISH_MSG5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поймайте и &lt;STELLAR&gt;отпустите&lt;&gt; рыбу: %CURRENT%/%AMOUNT%&#xA;&lt;TECHNOLOGY&gt;Снасть&lt;&gt; не установлена.&#xA;Просматривайте чертежи в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;) с помощью &lt;IMG&gt;TECHMENU&lt;&gt;.&#xA;&lt;COMMODITY&gt;Закрепите&lt;&gt; указания по установке с помощью &lt;IMG&gt;PIN&lt;&gt;.
                                { "Russian", "Поймайте и &lt;STELLAR&gt;отпустите&lt;&gt; рыбу: %CURRENT%/%AMOUNT%&#xA;&lt;TECHNOLOGY&gt;Удочка&lt;&gt; не установлена&#xA;Просматривайте чертежи в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;) с помощью &lt;IMG&gt;TECHMENU&lt;&gt;&#xA;&lt;COMMODITY&gt;Закрепите&lt;&gt; указания по установке с помощью &lt;IMG&gt;PIN&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_RELEASE_FISH_MSG6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поймайте и &lt;STELLAR&gt;отпустите&lt;&gt; рыбу: %CURRENT%/%AMOUNT%&#xA;Выберите рыбу в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;)&#xA;Выпустите рыбу в воду с помощью &lt;IMG&gt;FE_ALT1&lt;&gt;.
                                { "Russian", "Поймайте и &lt;STELLAR&gt;отпустите&lt;&gt; рыбу: %CURRENT%/%AMOUNT%&#xA;Выберите рыбу в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;)&#xA;Выпустите рыбу в воду с помощью &lt;IMG&gt;FE_ALT1&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region UI_EXPED_DAY_FISH_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_DAY_FISH_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поймайте рыбу, которая появляется только &lt;COMMODITY&gt;днем&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;В данной системе &lt;TECHNOLOGY&gt;водные планеты&lt;&gt; не обнаружены.&#xA;Найдите системы с &lt;TECHNOLOGY&gt;водой&lt;&gt; на &lt;TECHNOLOGY&gt;галактической карте&lt;&gt;.&#xA;Находясь на звездолете, откройте галактическую карту (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                { "Russian", "Поймайте &lt;COMMODITY&gt;дневную&lt;&gt; рыбу: %CURRENT%/%AMOUNT%&#xA;В данной системе &lt;TECHNOLOGY&gt;водные планеты&lt;&gt; не обнаружены&#xA;Найдите систему с &lt;TECHNOLOGY&gt;водой&lt;&gt; на &lt;TECHNOLOGY&gt;галактической карте&lt;&gt;&#xA;Находясь в космосе, откройте галактическую карту (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_DAY_FISH_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поймайте рыбу, которая появляется только &lt;COMMODITY&gt;днем&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;В системе обнаружена &lt;TECHNOLOGY&gt;водная планета&lt;&gt;.&#xA;Океаны на поверхности планеты видны из космоса.
                                { "Russian", "Поймайте &lt;COMMODITY&gt;дневную&lt;&gt; рыбу: %CURRENT%/%AMOUNT%&#xA;В системе обнаружена планета с &lt;TECHNOLOGY&gt;водой&lt;&gt;&#xA;Океаны на поверхности планеты видны из космоса" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_DAY_FISH_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поймайте рыбу, которая появляется только &lt;COMMODITY&gt;днем&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Найдите подходящий водоем, чтобы начать рыбачить.&#xA;Выберите &lt;TECHNOLOGY&gt;снасть&lt;&gt; с помощью &lt;IMG&gt;CYCLEWEAPON&lt;&gt;.
                                { "Russian", "Поймайте &lt;COMMODITY&gt;дневную&lt;&gt; рыбу: %CURRENT%/%AMOUNT%&#xA;Найдите подходящий водоем, чтобы начать рыбачить&#xA;Выберите &lt;TECHNOLOGY&gt;удочку&lt;&gt; с помощью &lt;IMG&gt;CYCLEWEAPON&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_DAY_FISH_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поймайте рыбу, которая появляется только &lt;COMMODITY&gt;днем&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Найдите подходящий водоем и забросьте крючок с помощью &lt;IMG&gt;ATTACK&lt;&gt;.&#xA;Изготовьте и используйте &lt;COMMODITY&gt;висящую сферу&lt;&gt;, чтобы приманить дневную рыбу.&#xA;Текущее время: &lt;STELLAR&gt;%TIME%&lt;&gt;.
                                { "Russian", "Поймайте &lt;COMMODITY&gt;дневную&lt;&gt; рыбу: %CURRENT%/%AMOUNT%&#xA;Найдите подходящий водоем и забросьте удочку с помощью &lt;IMG&gt;ATTACK&lt;&gt;&#xA;Изготовьте и используйте &lt;COMMODITY&gt;висящую сферу&lt;&gt;, чтобы приманить дневную рыбу&#xA;Текущее время: &lt;STELLAR&gt;%TIME%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_DAY_FISH_MSG5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поймайте рыбу, которая появляется только &lt;COMMODITY&gt;днем&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;&lt;TECHNOLOGY&gt;Снасть&lt;&gt; не установлена.&#xA;Просматривайте чертежи в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;) с помощью &lt;IMG&gt;TECHMENU&lt;&gt;.&#xA;&lt;COMMODITY&gt;Закрепите&lt;&gt; указания по установке с помощью &lt;IMG&gt;PIN&lt;&gt;.
                                { "Russian", "Поймайте &lt;COMMODITY&gt;дневную&lt;&gt; рыбу: %CURRENT%/%AMOUNT%&#xA;&lt;TECHNOLOGY&gt;Удочка&lt;&gt; не установлена&#xA;Просматривайте чертежи в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;) с помощью &lt;IMG&gt;TECHMENU&lt;&gt;&#xA;&lt;COMMODITY&gt;Закрепляйте&lt;&gt; указания по установке с помощью &lt;IMG&gt;PIN&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region UI_EXPED_NIGHT_FISH_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_NIGHT_FISH_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поймайте ночную рыбу: %CURRENT%/%AMOUNT%&#xA;В данной системе &lt;TECHNOLOGY&gt;водные планеты&lt;&gt; не обнаружены.&#xA;Найдите системы с &lt;TECHNOLOGY&gt;водой&lt;&gt; на &lt;TECHNOLOGY&gt;галактической карте&lt;&gt;.&#xA;Находясь на звездолете, откройте галактическую карту (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                { "Russian", "Поймайте ночную рыбу: %CURRENT%/%AMOUNT%&#xA;В данной системе &lt;TECHNOLOGY&gt;водные планеты&lt;&gt; не обнаружены&#xA;Найдите систему с &lt;TECHNOLOGY&gt;водой&lt;&gt; на &lt;TECHNOLOGY&gt;галактической карте&lt;&gt;&#xA;Находясь в космосе, откройте галактическую карту (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_NIGHT_FISH_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поймайте ночную рыбу: %CURRENT%/%AMOUNT%&#xA;В системе обнаружена &lt;TECHNOLOGY&gt;водная планета&lt;&gt;.&#xA;Океаны на поверхности планеты видны из космоса.
                                { "Russian", "Поймайте ночную рыбу: %CURRENT%/%AMOUNT%&#xA;В системе обнаружена планета с &lt;TECHNOLOGY&gt;водой&lt;&gt;&#xA;Океаны на поверхности планеты видны из космоса" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_NIGHT_FISH_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поймайте ночную рыбу: %CURRENT%/%AMOUNT%&#xA;Найдите подходящий водоем, чтобы начать рыбачить.&#xA;Выберите &lt;TECHNOLOGY&gt;снасть&lt;&gt; с помощью &lt;IMG&gt;CYCLEWEAPON&lt;&gt;.
                                { "Russian", "Поймайте ночную рыбу: %CURRENT%/%AMOUNT%&#xA;Найдите подходящий водоем, чтобы начать рыбачить&#xA;Выберите &lt;TECHNOLOGY&gt;удочку&lt;&gt; с помощью &lt;IMG&gt;CYCLEWEAPON&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_NIGHT_FISH_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поймайте ночную рыбу: %CURRENT%/%AMOUNT%&#xA;Найдите подходящий водоем и забросьте крючок с помощью &lt;IMG&gt;ATTACK&lt;&gt;.&#xA;Изготовьте и используйте &lt;SPECIAL&gt;теневую приманку&lt;&gt;, чтобы приманить ночную рыбу.&#xA;Текущее время: &lt;STELLAR&gt;%TIME%&lt;&gt;.
                                -- Catch nocturnal fish: %CURRENT%/%AMOUNT%&#xA;Locate a suitable body of water and cast your line with &lt;IMG&gt;ATTACK&lt;&gt;&#xA;Construct and apply a &lt;SPECIAL&gt;Shadow Lure&lt;&gt; to attract nocturnal fish&#xA;Current time is &lt;STELLAR&gt;%TIME%&lt;&gt;
                                { "Russian", "Поймайте ночную рыбу: %CURRENT%/%AMOUNT%&#xA;Найдите подходящий водоем и забросьте удочку с помощью &lt;IMG&gt;ATTACK&lt;&gt;&#xA;Изготовьте и используйте &lt;SPECIAL&gt;теневую приманку&lt;&gt;, чтобы приманить ночную рыбу&#xA;Текущее время: &lt;STELLAR&gt;%TIME%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_NIGHT_FISH_MSG5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поймайте ночную рыбу: %CURRENT%/%AMOUNT%&#xA;&lt;TECHNOLOGY&gt;Снасть&lt;&gt; не установлена.&#xA;Просматривайте чертежи в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;) с помощью &lt;IMG&gt;TECHMENU&lt;&gt;.&#xA;&lt;COMMODITY&gt;Закрепите&lt;&gt; указания по установке с помощью &lt;IMG&gt;PIN&lt;&gt;.
                                { "Russian", "Поймайте ночную рыбу: %CURRENT%/%AMOUNT%&#xA;&lt;TECHNOLOGY&gt;Удочка&lt;&gt; не установлена&#xA;Просматривайте чертежи в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;) с помощью &lt;IMG&gt;TECHMENU&lt;&gt;&#xA;&lt;COMMODITY&gt;Закрепите&lt;&gt; указания по установке с помощью &lt;IMG&gt;PIN&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region UI_EXPED_BIG_FISH_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_BIG_FISH_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поймайте &lt;STELLAR&gt;огромную&lt;&gt; рыбу: %CURRENT%/%AMOUNT%&#xA;Найдите системы с &lt;TECHNOLOGY&gt;водой&lt;&gt; на &lt;TECHNOLOGY&gt;галактической карте&lt;&gt;.&#xA;Находясь на звездолете, откройте галактическую карту (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                { "Russian", "Поймайте &lt;STELLAR&gt;огромную&lt;&gt; рыбу: %CURRENT%/%AMOUNT%&#xA;Найдите систему с &lt;TECHNOLOGY&gt;водой&lt;&gt; на &lt;TECHNOLOGY&gt;галактической карте&lt;&gt;&#xA;Находясь в космосе, откройте галактическую карту (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_BIG_FISH_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поймайте &lt;STELLAR&gt;огромную&lt;&gt; рыбу: %CURRENT%/%AMOUNT%&#xA;В системе обнаружена &lt;TECHNOLOGY&gt;водная планета&lt;&gt;.&#xA;Океаны на поверхности планеты видны из космоса.
                                { "Russian", "Поймайте &lt;STELLAR&gt;огромную&lt;&gt; рыбу: %CURRENT%/%AMOUNT%&#xA;В системе обнаружена планета с &lt;TECHNOLOGY&gt;водой&lt;&gt;&#xA;Океаны на поверхности планеты видны из космоса" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_BIG_FISH_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поймайте &lt;STELLAR&gt;огромную&lt;&gt; рыбу: %CURRENT%/%AMOUNT%&#xA;Найдите подходящий водоем, чтобы начать рыбачить.&#xA;Выберите &lt;TECHNOLOGY&gt;снасть&lt;&gt; с помощью &lt;IMG&gt;CYCLEWEAPON&lt;&gt;.
                                { "Russian", "Поймайте &lt;STELLAR&gt;огромную&lt;&gt; рыбу: %CURRENT%/%AMOUNT%&#xA;Найдите подходящий водоем, чтобы начать рыбачить&#xA;Выберите &lt;TECHNOLOGY&gt;удочку&lt;&gt; с помощью &lt;IMG&gt;CYCLEWEAPON&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_BIG_FISH_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поймайте &lt;STELLAR&gt;огромную&lt;&gt; рыбу: %CURRENT%/%AMOUNT%&#xA;Найдите подходящий водоем и закиньте снасть с помощью &lt;IMG&gt;ATTACK&lt;&gt;.&#xA;Крупная рыба обитает на &lt;TECHNOLOGY&gt;глубине&lt;&gt;.
                                { "Russian", "Поймайте &lt;STELLAR&gt;огромную&lt;&gt; рыбу: %CURRENT%/%AMOUNT%&#xA;Найдите подходящий водоем и закиньте удочку (&lt;IMG&gt;ATTACK&lt;&gt;)&#xA;Крупная рыба обитает на &lt;TECHNOLOGY&gt;глубине&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_BIG_FISH_MSG5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поймайте &lt;STELLAR&gt;огромную&lt;&gt; рыбу: %CURRENT%/%AMOUNT%&#xA;&lt;TECHNOLOGY&gt;Снасть&lt;&gt; не установлена&#xA;Просматривайте чертежи в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;) с помощью &lt;IMG&gt;TECHMENU&lt;&gt;.&#xA;&lt;COMMODITY&gt;Закрепите&lt;&gt; указания по установке с помощью &lt;IMG&gt;PIN&lt;&gt;.
                                { "Russian", "Поймайте &lt;STELLAR&gt;огромную&lt;&gt; рыбу: %CURRENT%/%AMOUNT%&#xA;&lt;TECHNOLOGY&gt;Удочка&lt;&gt; не установлена&#xA;Просматривайте чертежи в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;) с помощью &lt;IMG&gt;TECHMENU&lt;&gt;&#xA;&lt;COMMODITY&gt;Закрепляйте&lt;&gt; указания по установке с помощью &lt;IMG&gt;PIN&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region UI_EXPED_FISH_BAIT_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_FISH_BAIT_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- План &lt;STELLAR&gt;наживки&lt;&gt; или &lt;TECHNOLOGY&gt;приманки&lt;&gt; вам еще не известен.&#xA;Для продолжения пройдите этап &lt;EXPED&gt;«%MILESTONE%»&lt;&gt;.&#xA;Выбрать этап экспедиции можно в журнале экспедиции (&lt;IMG&gt;OPTIONS&lt;&gt;).
                                -- No &lt;STELLAR&gt;bait&lt;&gt; or &lt;TECHNOLOGY&gt;lure&lt;&gt; plans known&#xA;Complete the &lt;EXPED&gt;%MILESTONE%&lt;&gt; milestone to proceed&#xA;Select milestones from the Expedition log (&lt;IMG&gt;OPTIONS&lt;&gt;)
                                { "Russian", "Чертеж &lt;STELLAR&gt;наживки&lt;&gt; или &lt;TECHNOLOGY&gt;приманки&lt;&gt; вам еще не известен&#xA;Для продолжения пройдите этап &lt;EXPED&gt;%MILESTONE%&lt;&gt;&#xA;Изменить этап можно в журнале экспедиции (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_FISH_BAIT_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Изготовьте &lt;STELLAR&gt;наживку&lt;&gt; или &lt;TECHNOLOGY&gt;приманку&lt;&gt;.&#xA;Изготавливайте предметы в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;) с помощью &lt;IMG&gt;PRODMENU&lt;&gt;.&#xA;&lt;STELLAR&gt;Закрепите&lt;&gt; предметы, чтобы получить подробные указания.&#xA;Примечание: любую &lt;TRADEABLE&gt;пищу&lt;&gt; можно использовать как наживку.
                                { "Russian", "Изготовьте &lt;STELLAR&gt;наживку&lt;&gt; или &lt;TECHNOLOGY&gt;приманку&lt;&gt;&#xA;Изготавливайте предметы в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;) с помощью &lt;IMG&gt;PRODMENU&lt;&gt;&#xA;&lt;STELLAR&gt;Закрепляйте&lt;&gt; предметы, чтобы получить подробные указания&#xA;Примечание: любую &lt;TRADEABLE&gt;пищу&lt;&gt; можно использовать как наживку" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_FISH_BAIT_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Выберите &lt;TECHNOLOGY&gt;удочку&lt;&gt; (&lt;IMG&gt;INVENTORY&lt;&gt;)&#xA;Начните насаживать наживку с помощью &lt;IMG&gt;SELECT&lt;&gt;.
                                { "Russian", "Выберите &lt;TECHNOLOGY&gt;удочку&lt;&gt; (&lt;IMG&gt;INVENTORY&lt;&gt;)&#xA;Начните насаживать наживку с помощью &lt;IMG&gt;SELECT&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_FISH_BAIT_MSG5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Опробуйте &lt;STELLAR&gt;снасть с наживкой&lt;&gt;.&#xA;Найдите системы с &lt;TECHNOLOGY&gt;водой&lt;&gt; на &lt;TECHNOLOGY&gt;галактической карте&lt;&gt;.&#xA;Находясь на звездолете, откройте галактическую карту с помощью &lt;IMG&gt;QUICK_MENU&lt;&gt;.
                                { "Russian", "Опробуйте &lt;STELLAR&gt;удочку с наживкой&lt;&gt;&#xA;Найдите систему с &lt;TECHNOLOGY&gt;водой&lt;&gt; на &lt;TECHNOLOGY&gt;галактической карте&lt;&gt;&#xA;Находясь в космосе, откройте галактическую карту с помощью &lt;IMG&gt;QUICK_MENU&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_FISH_BAIT_MSG6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Опробуйте &lt;STELLAR&gt;снасть с наживкой&lt;&gt;.&#xA;В системе обнаружена &lt;TECHNOLOGY&gt;водная планета&lt;&gt;.&#xA;Океаны на поверхности планеты видны из космоса.
                                { "Russian", "Опробуйте &lt;STELLAR&gt;удочку с наживкой&lt;&gt;&#xA;В системе обнаружена планета с &lt;TECHNOLOGY&gt;водой&lt;&gt;&#xA;Океаны на поверхности планеты видны из космоса" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_FISH_BAIT_MSG7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Опробуйте &lt;STELLAR&gt;снасть с наживкой&lt;&gt;.&#xA;Найдите подходящий водоем, чтобы начать рыбачить.&#xA;Выберите &lt;TECHNOLOGY&gt;снасть&lt;&gt; с помощью &lt;IMG&gt;CYCLEWEAPON&lt;&gt;.
                                { "Russian", "Опробуйте &lt;STELLAR&gt;удочку с наживкой&lt;&gt;&#xA;Найдите подходящий водоем, чтобы начать рыбачить&#xA;Выберите &lt;TECHNOLOGY&gt;удочку&lt;&gt; с помощью &lt;IMG&gt;CYCLEWEAPON&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_FISH_BAIT_MSG8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Опробуйте &lt;STELLAR&gt;снасть с наживкой&lt;&gt;.&#xA;Найдите подходящий водоем и закиньте снасть с помощью &lt;IMG&gt;ATTACK&lt;&gt;.
                                { "Russian", "Опробуйте &lt;STELLAR&gt;удочку с наживкой&lt;&gt;&#xA;Найдите подходящий водоем и закиньте удочку (&lt;IMG&gt;ATTACK&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_FISH_BAIT_MSG9" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Опробуйте &lt;STELLAR&gt;снасть с наживкой&lt;&gt;.&#xA;&lt;TECHNOLOGY&gt;Снасть&lt;&gt; не установлена.&#xA;Просматривайте чертежи в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;) с помощью &lt;IMG&gt;TECHMENU&lt;&gt;.&#xA;&lt;COMMODITY&gt;Закрепите&lt;&gt; указания по установке с помощью &lt;IMG&gt;PIN&lt;&gt;.
                                { "Russian", "Опробуйте &lt;STELLAR&gt;удочку с наживкой&lt;&gt;&#xA;&lt;TECHNOLOGY&gt;Удочка&lt;&gt; не установлена&#xA;Просматривайте чертежи в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;) с помощью &lt;IMG&gt;TECHMENU&lt;&gt;&#xA;&lt;COMMODITY&gt;Закрепляйте&lt;&gt; указания по установке с помощью &lt;IMG&gt;PIN&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region UI_EXPED_LEGEND_FISH_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_LEGEND_FISH_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поймайте &lt;COMMODITY&gt;легендарную&lt;&gt; рыбу: %CURRENT%/%AMOUNT%&#xA;Найдите системы с &lt;TECHNOLOGY&gt;водой&lt;&gt; на &lt;TECHNOLOGY&gt;галактической карте&lt;&gt;.&#xA;Находясь на звездолете, откройте галактическую карту (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                { "Russian", "Поймайте &lt;COMMODITY&gt;легендарную&lt;&gt; рыбу: %CURRENT%/%AMOUNT%&#xA;Найдите систему с &lt;TECHNOLOGY&gt;водой&lt;&gt; на &lt;TECHNOLOGY&gt;галактической карте&lt;&gt;&#xA;Находясь в космосе, откройте галактическую карту (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_LEGEND_FISH_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поймайте &lt;COMMODITY&gt;легендарную&lt;&gt; рыбу: %CURRENT%/%AMOUNT%&#xA;В системе обнаружена &lt;TECHNOLOGY&gt;водная планета&lt;&gt;.&#xA;Океаны на поверхности планеты видны из космоса.
                                { "Russian", "Поймайте &lt;COMMODITY&gt;легендарную&lt;&gt; рыбу: %CURRENT%/%AMOUNT%&#xA;В системе обнаружена планета с &lt;TECHNOLOGY&gt;водой&lt;&gt;&#xA;Океаны на поверхности планеты видны из космоса" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_LEGEND_FISH_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поймайте &lt;COMMODITY&gt;легендарную&lt;&gt; рыбу: %CURRENT%/%AMOUNT%&#xA;Найдите подходящий водоем, чтобы начать рыбачить.&#xA;Выберите &lt;TECHNOLOGY&gt;снасть&lt;&gt; с помощью &lt;IMG&gt;CYCLEWEAPON&lt;&gt;.
                                { "Russian", "Поймайте &lt;COMMODITY&gt;легендарную&lt;&gt; рыбу: %CURRENT%/%AMOUNT%&#xA;Найдите подходящий водоем, чтобы начать рыбачить&#xA;Выберите &lt;TECHNOLOGY&gt;удочку&lt;&gt; с помощью &lt;IMG&gt;CYCLEWEAPON&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_LEGEND_FISH_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поймайте &lt;COMMODITY&gt;легендарную&lt;&gt; рыбу: %CURRENT%/%AMOUNT%&#xA;Найдите подходящий водоем и забросьте крючок с помощью &lt;IMG&gt;ATTACK&lt;&gt;.&#xA;Изготовьте и используйте &lt;STELLAR&gt;бионическую приманку&lt;&gt;, чтобы приманить редчайшую рыбу.
                                { "Russian", "Поймайте &lt;COMMODITY&gt;легендарную&lt;&gt; рыбу: %CURRENT%/%AMOUNT%&#xA;Найдите подходящий водоем и забросьте удочку с помощью &lt;IMG&gt;ATTACK&lt;&gt;&#xA;Изготовьте и используйте &lt;STELLAR&gt;бионическую приманку&lt;&gt;, чтобы приманить редчайшую рыбу" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_LEGEND_FISH_MSG5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поймайте &lt;COMMODITY&gt;легендарную&lt;&gt; рыбу: %CURRENT%/%AMOUNT%&#xA;&lt;TECHNOLOGY&gt;Снасть&lt;&gt; не установлена.&#xA;Просматривайте чертежи в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;) с помощью &lt;IMG&gt;TECHMENU&lt;&gt;.&#xA;&lt;COMMODITY&gt;Закрепите&lt;&gt; указания по установке с помощью &lt;IMG&gt;PIN&lt;&gt;.
                                { "Russian", "Поймайте &lt;COMMODITY&gt;легендарную&lt;&gt; рыбу: %CURRENT%/%AMOUNT%&#xA;&lt;TECHNOLOGY&gt;Удочка&lt;&gt; не установлена&#xA;Просматривайте чертежи в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;) с помощью &lt;IMG&gt;TECHMENU&lt;&gt;&#xA;&lt;COMMODITY&gt;Закрепляйте&lt;&gt; указания по установке с помощью &lt;IMG&gt;PIN&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region UI_EXPED_FISHY_FAIL_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_FISHY_FAIL_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поймайте не рыбу, а что-то другое: %CURRENT%/%AMOUNT%&#xA;Найдите системы с &lt;TECHNOLOGY&gt;водой&lt;&gt; на &lt;STELLAR&gt;галактической карте&lt;&gt;.&#xA;Находясь на звездолете, откройте галактическую карту (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                { "Russian", "Поймайте не рыбу, а что-то другое: %CURRENT%/%AMOUNT%&#xA;Найдите систему с &lt;TECHNOLOGY&gt;водой&lt;&gt; на &lt;STELLAR&gt;галактической карте&lt;&gt;&#xA;Находясь в космосе, откройте галактическую карту (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_FISHY_FAIL_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поймайте не рыбу, а что-то другое: %CURRENT%/%AMOUNT%&#xA;В системе обнаружена &lt;TECHNOLOGY&gt;водная планета&lt;&gt;.&#xA;Океаны на поверхности планеты видны из космоса.
                                { "Russian", "Поймайте не рыбу, а что-то другое: %CURRENT%/%AMOUNT%&#xA;В системе обнаружена планета с &lt;TECHNOLOGY&gt;водой&lt;&gt;&#xA;Океаны на поверхности планеты видны из космоса" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_FISHY_FAIL_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поймайте не рыбу, а что-то другое: %CURRENT%/%AMOUNT%&#xA;Найдите подходящий водоем, чтобы начать рыбачить.&#xA;Выберите &lt;TECHNOLOGY&gt;удочку&lt;&gt; с помощью &lt;IMG&gt;CYCLEWEAPON&lt;&gt;.
                                { "Russian", "Поймайте не рыбу, а что-то другое: %CURRENT%/%AMOUNT%&#xA;Найдите подходящий водоем, чтобы начать рыбачить&#xA;Выберите &lt;TECHNOLOGY&gt;удочку&lt;&gt; с помощью &lt;IMG&gt;CYCLEWEAPON&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_FISHY_FAIL_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поймайте не рыбу, а что-то другое: %CURRENT%/%AMOUNT%&#xA;Найдите подходящий водоем и закиньте снасть с помощью &lt;IMG&gt;ATTACK&lt;&gt;.
                                { "Russian", "Поймайте не рыбу, а что-то другое: %CURRENT%/%AMOUNT%&#xA;Найдите подходящий водоем и закиньте удочку (&lt;IMG&gt;ATTACK&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_FISHY_FAIL_MSG5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поймайте не рыбу, а что-то другое: %CURRENT%/%AMOUNT%&#xA;&lt;TECHNOLOGY&gt;Удочка&lt;&gt; не установлена.&#xA;Просматривайте чертежи в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;) с помощью &lt;IMG&gt;TECHMENU&lt;&gt;.&#xA;&lt;COMMODITY&gt;Закрепите&lt;&gt; указания по установке с помощью &lt;IMG&gt;PIN&lt;&gt;.
                                { "Russian", "Поймайте не рыбу, а что-то другое: %CURRENT%/%AMOUNT%&#xA;&lt;TECHNOLOGY&gt;Удочка&lt;&gt; не установлена&#xA;Просматривайте чертежи в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;) с помощью &lt;IMG&gt;TECHMENU&lt;&gt;&#xA;&lt;COMMODITY&gt;Закрепляйте&lt;&gt; указания по установке с помощью &lt;IMG&gt;PIN&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region UI_EXPED_WEIRD_FISH_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_WEIRD_FISH_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поймайте &lt;SPECIAL&gt;аномальную&lt;&gt; рыбу: %CURRENT%/%AMOUNT%&#xA;В данной системе &lt;STELLAR&gt;аномальные планеты&lt;&gt; не обнаружены.&#xA;Найдите системы с &lt;TECHNOLOGY&gt;водой&lt;&gt; на &lt;TECHNOLOGY&gt;галактической карте&lt;&gt;.&#xA;Находясь на звездолете, откройте галактическую карту (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                -- Catch &lt;SPECIAL&gt;anomalous&lt;&gt; fish: %CURRENT%/%AMOUNT%&#xA;No suitable &lt;STELLAR&gt;anomalous worlds&lt;&gt; detected in local system&#xA;In the &lt;TECHNOLOGY&gt;Galaxy Map&lt;&gt;, search for a system with &lt;TECHNOLOGY&gt;water&lt;&gt;&#xA;Access the Galaxy Map with &lt;IMG&gt;QUICK_MENU&lt;&gt; while in the Starship
                                { "Russian", "Поймайте &lt;SPECIAL&gt;аномальную&lt;&gt; рыбу: %CURRENT%/%AMOUNT%&#xA;В данной системе &lt;STELLAR&gt;аномальные планеты&lt;&gt; не обнаружены&#xA;Найдите систему с &lt;TECHNOLOGY&gt;водой&lt;&gt; на &lt;TECHNOLOGY&gt;галактической карте&lt;&gt;&#xA;Находясь в космосе, откройте галактическую карту (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_WEIRD_FISH_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поймайте &lt;SPECIAL&gt;аномальную&lt;&gt; рыбу: %CURRENT%/%AMOUNT%&#xA;В системе обнаружена &lt;STELLAR&gt;аномальная планета&lt;&gt;.&#xA;Океаны на поверхности планеты видны из космоса.
                                { "Russian", "Поймайте &lt;SPECIAL&gt;аномальную&lt;&gt; рыбу: %CURRENT%/%AMOUNT%&#xA;В системе обнаружена &lt;STELLAR&gt;аномальная планета&lt;&gt;&#xA;Океаны на поверхности планеты видны из космоса" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_WEIRD_FISH_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поймайте &lt;SPECIAL&gt;аномальную&lt;&gt; рыбу: %CURRENT%/%AMOUNT%&#xA;Найдите подходящий водоем, чтобы начать рыбачить.&#xA;Выберите &lt;TECHNOLOGY&gt;снасть&lt;&gt; с помощью &lt;IMG&gt;CYCLEWEAPON&lt;&gt;.
                                { "Russian", "Поймайте &lt;SPECIAL&gt;аномальную&lt;&gt; рыбу: %CURRENT%/%AMOUNT%&#xA;Найдите подходящий водоем, чтобы начать рыбачить&#xA;Выберите &lt;TECHNOLOGY&gt;удочку&lt;&gt; с помощью &lt;IMG&gt;CYCLEWEAPON&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_WEIRD_FISH_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поймайте &lt;SPECIAL&gt;аномальную&lt;&gt; рыбу: %CURRENT%/%AMOUNT%&#xA;Найдите подходящий водоем и закиньте снасть с помощью &lt;IMG&gt;ATTACK&lt;&gt;.
                                { "Russian", "Поймайте &lt;SPECIAL&gt;аномальную&lt;&gt; рыбу: %CURRENT%/%AMOUNT%&#xA;Найдите подходящий водоем и закиньте удочку (&lt;IMG&gt;ATTACK&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_WEIRD_FISH_MSG5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поймайте &lt;SPECIAL&gt;аномальную&lt;&gt; рыбу: %CURRENT%/%AMOUNT%&#xA;&lt;TECHNOLOGY&gt;Снасть&lt;&gt; не установлена.&#xA;Просматривайте чертежи в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;) с помощью &lt;IMG&gt;TECHMENU&lt;&gt;.&#xA;&lt;COMMODITY&gt;Закрепите&lt;&gt; указания по установке с помощью &lt;IMG&gt;PIN&lt;&gt;.
                                { "Russian", "Поймайте &lt;SPECIAL&gt;аномальную&lt;&gt; рыбу: %CURRENT%/%AMOUNT%&#xA;&lt;TECHNOLOGY&gt;Удочка&lt;&gt; не установлена&#xA;Просматривайте чертежи в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;) с помощью &lt;IMG&gt;TECHMENU&lt;&gt;&#xA;&lt;COMMODITY&gt;Закрепляйте&lt;&gt; указания по установке с помощью &lt;IMG&gt;PIN&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region UI_EXPED_GOT_EYEBALLS_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_GOT_EYEBALLS_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите &lt;SPECIAL&gt;гипнотические глаза&lt;&gt; из бездны: %CURRENT%/%AMOUNT%&#xA;В данной системе &lt;TECHNOLOGY&gt;водные&lt;&gt; планеты не обнаружены.&#xA;Найдите системы с &lt;TECHNOLOGY&gt;водой&lt;&gt; на &lt;STELLAR&gt;галактической карте&lt;&gt;.&#xA;Находясь на звездолете, откройте галактическую карту (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                -- Gather &lt;SPECIAL&gt;Hypnotic Eyes&lt;&gt; from the abyss: %CURRENT%/%AMOUNT%&#xA;No &lt;TECHNOLOGY&gt;water&lt;&gt; planets detected in the local system&#xA;In the &lt;STELLAR&gt;Galaxy Map&lt;&gt;, search for a system with &lt;TECHNOLOGY&gt;water&lt;&gt;&#xA;Access the Galaxy Map with &lt;IMG&gt;QUICK_MENU&lt;&gt; while in the Starship
                                { "Russian", "Соберите &lt;SPECIAL&gt;гипнотические глаза&lt;&gt; из бездны: %CURRENT%/%AMOUNT%&#xA;В данной системе &lt;TECHNOLOGY&gt;водные&lt;&gt; планеты не обнаружены&#xA;Найдите систему с &lt;TECHNOLOGY&gt;водой&lt;&gt; на &lt;STELLAR&gt;галактической карте&lt;&gt;&#xA;Находясь в космосе, откройте галактическую карту (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_GOT_EYEBALLS_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите &lt;SPECIAL&gt;гипнотические глаза&lt;&gt; из бездны: %CURRENT%/%AMOUNT%&#xA;В системе обнаружена &lt;TECHNOLOGY&gt;водная планета&lt;&gt;.&#xA;Океаны на поверхности планеты видны из космоса.
                                { "Russian", "Соберите &lt;SPECIAL&gt;гипнотические глаза&lt;&gt; из бездны: %CURRENT%/%AMOUNT%&#xA;В системе обнаружена планета с &lt;TECHNOLOGY&gt;водой&lt;&gt;&#xA;Океаны на поверхности планеты видны из космоса" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_GOT_EYEBALLS_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите &lt;SPECIAL&gt;гипнотические глаза&lt;&gt; из бездны: %CURRENT%/%AMOUNT%&#xA;В системе обнаружена &lt;TECHNOLOGY&gt;водная планета&lt;&gt;.&#xA;Вернитесь в космос, чтобы проверить другие планеты.
                                { "Russian", "Соберите &lt;SPECIAL&gt;гипнотические глаза&lt;&gt; из бездны: %CURRENT%/%AMOUNT%&#xA;В системе обнаружена планета с &lt;TECHNOLOGY&gt;водой&lt;&gt;&#xA;Вернитесь в космос, чтобы проверить другие планеты" },
                            }
                        },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_GOT_EYEBALLS_MSG4" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Соберите &lt;SPECIAL&gt;гипнотические глаза&lt;&gt; из бездны: %CURRENT%/%AMOUNT%&#xA;Погрузитесь в воду, чтобы начать поиски...
                        --         { "Russian", "Соберите &lt;SPECIAL&gt;гипнотические глаза&lt;&gt; из бездны: %CURRENT%/%AMOUNT%&#xA;Погрузитесь в воду, чтобы начать поиски..." },
                        --     }
                        -- },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_GOT_EYEBALLS_MSG5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите &lt;SPECIAL&gt;гипнотические глаза&lt;&gt; глубинных ужасов: %CURRENT%/%AMOUNT%&#xA;&lt;FUEL&gt;Внимание:&lt;&gt; не смотрите им в глаза...
                                { "Russian", "Соберите &lt;SPECIAL&gt;гипнотические глаза&lt;&gt; глубинных ужасов: %CURRENT%/%AMOUNT%&#xA;&lt;FUEL&gt;Внимание!&lt;&gt; Не смотрите им в глаза..." },
                            }
                        },
                        --#endregion

                        --#region UI_EXPED_FLOATER_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_FLOATER_MSG0" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Плавайте над глубинами океана: %CURRENT%/%AMOUNT% сек.&#xA;В данной системе &lt;TECHNOLOGY&gt;водные планеты&lt;&gt; не обнаружены.&#xA;Найдите системы с &lt;TECHNOLOGY&gt;водой&lt;&gt; на &lt;STELLAR&gt;галактической карте&lt;&gt;.&#xA;Находясь на звездолете, откройте галактическую карту (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                -- Float over the deep ocean: %CURRENT%/%AMOUNT%s&#xA;No &lt;TECHNOLOGY&gt;water&lt;&gt; planets detected in the local system&#xA;In the &lt;STELLAR&gt;Galaxy Map&lt;&gt;, search for a system with &lt;TECHNOLOGY&gt;water&lt;&gt;&#xA;Access the Galaxy Map with &lt;IMG&gt;QUICK_MENU&lt;&gt; while in the Starship
                                { "Russian", "Плывите над глубинами океана: %CURRENT%/%AMOUNT% с&#xA;В данной системе &lt;TECHNOLOGY&gt;водные планеты&lt;&gt; не обнаружены&#xA;Найдите систему с &lt;TECHNOLOGY&gt;водой&lt;&gt; на &lt;STELLAR&gt;галактической карте&lt;&gt;&#xA;Находясь в космосе, откройте галактическую карту (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_FLOATER_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Плавайте над &lt;TECHNOLOGY&gt;глубинами океана&lt;&gt;: %CURRENT%/%AMOUNT% сек.&#xA;На данной планете водоемы не обнаружены.
                                { "Russian", "Плывите над &lt;TECHNOLOGY&gt;глубинами океана&lt;&gt;: %CURRENT%/%AMOUNT% с&#xA;На данной планете водоемы не обнаружены" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_FLOATER_MSG1A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Плавайте над глубинами океана: %CURRENT%/%AMOUNT% сек.&#xA;В системе обнаружена &lt;TECHNOLOGY&gt;водная планета&lt;&gt;.&#xA;Океаны на поверхности планеты видны из космоса.
                                { "Russian", "Плывите над глубинами океана: %CURRENT%/%AMOUNT% с&#xA;В системе обнаружена планета с &lt;TECHNOLOGY&gt;водой&lt;&gt;&#xA;Океаны на поверхности планеты видны из космоса" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_FLOATER_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Плавайте над &lt;TECHNOLOGY&gt;глубинами океана&lt;&gt;: &lt;STELLAR&gt;%CURRENT%/%AMOUNT% сек.&lt;&gt;&#xA;Глубина воды в данной точке: %CURRENT_DEPTH%/%AMOUNT_DEPTH% юн.
                                -- Float on the surface of the &lt;TECHNOLOGY&gt;deep ocean&lt;&gt;: &lt;STELLAR&gt;%CURRENT%/%AMOUNT%s&lt;&gt;&#xA;Water depth at current location: %CURRENT_DEPTH%/%AMOUNT_DEPTH%u
                                { "Russian", "Плывите над &lt;TECHNOLOGY&gt;глубинами океана&lt;&gt;: &lt;STELLAR&gt;%CURRENT%/%AMOUNT% с&lt;&gt;&#xA;Глубина воды в данной точке: %CURRENT_DEPTH%/%AMOUNT_DEPTH% ед." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_FLOATER_MSG2A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Плавайте над &lt;TECHNOLOGY&gt;глубинами океана&lt;&gt;: &lt;STELLAR&gt;%CURRENT%/%AMOUNT% сек.&lt;&gt;&#xA;Глубина воды в данной точке: &lt;TECHNOLOGY&gt;%CURRENT_DEPTH% юн.&lt;&gt;&#xA;Какие существа плавают под вами?
                                -- Float on the surface of the &lt;TECHNOLOGY&gt;deep ocean&lt;&gt;: &lt;STELLAR&gt;%CURRENT%/%AMOUNT%s&lt;&gt;&#xA;Water depth at current location: &lt;TECHNOLOGY&gt;%CURRENT_DEPTH%u&lt;&gt;&#xA;What things swim beneath your feet?
                                { "Russian", "Плывите над &lt;TECHNOLOGY&gt;глубинами океана&lt;&gt;: &lt;STELLAR&gt;%CURRENT%/%AMOUNT% с&lt;&gt;&#xA;Глубина воды в данной точке: &lt;TECHNOLOGY&gt;%CURRENT_DEPTH% ед.&lt;&gt;&#xA;Какие существа плавают под вами?" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_FLOATER_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Плавайте над &lt;TECHNOLOGY&gt;глубинами океана&lt;&gt;: &lt;STELLAR&gt;%CURRENT%/%AMOUNT% сек.&lt;&gt;&#xA;Глубина воды в данной точке: Н/Д
                                { "Russian", "Плывите над &lt;TECHNOLOGY&gt;глубинами океана&lt;&gt;: &lt;STELLAR&gt;%CURRENT%/%AMOUNT% с&lt;&gt;&#xA;Глубина воды в данной точке неизвестна" },
                            }
                        },
                        --#endregion

                        --#region UI_GET_TAINT_MET_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_GET_TAINT_MET_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите &lt;SPECIAL&gt;испорченный металл&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Заберите испорченный металл с заброшенных грузовых судов, дрейфующих в космосе.&#xA;Поговорите со &lt;TECHNOLOGY&gt;сборщиком утиля&lt;&gt; на космической станции, чтобы найти обломки.
                                { "Russian", "Соберите &lt;SPECIAL&gt;испорченный металл&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Найдите испорченный металл на заброшенных грузовых судах в космосе&#xA;Поговорите со &lt;TECHNOLOGY&gt;сборщиком утиля&lt;&gt; на космической станции" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_GET_TAINT_MET_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Заберите &lt;SPECIAL&gt;испорченный металл&lt;&gt; с заброшенных грузовых судов: %CURRENT%/%AMOUNT%&#xA;Используйте &lt;STELLAR&gt;сканер аварийных сигналов&lt;&gt;, чтобы найти обломки.
                                { "Russian", "Соберите &lt;SPECIAL&gt;испорченный металл&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Используйте &lt;STELLAR&gt;сканер аварийных сигналов&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_GET_TAINT_MET_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите &lt;SPECIAL&gt;испорченный металл&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Выберите задание «&lt;COMMODITY&gt;Потерянный в космосе&lt;&gt;» в журнале, чтобы получить подробные указания.
                                { "Russian", "Соберите &lt;SPECIAL&gt;испорченный металл&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Выберите задание &lt;COMMODITY&gt;«Потерянный в космосе»&lt;&gt; в журнале,&#xA;чтобы получить подробные указания" },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_GET_TAINT_MET_DESC_D" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вы извлекли испорченный металл
                                -- Salvaged tainted metal
                                { "Russian", "Вы добыли испорченный металл" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_FLOATER_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Плывите над глубинами океана: %CURRENT%/%AMOUNT% сек
                                -- Float over the deep ocean: %CURRENT%/%AMOUNT%s
                                { "Russian", "Плыть над глубинами океана: %CURRENT%/%AMOUNT% с" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_FLOATER_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вода зовет...&#xA;&#xA;Найдите водоем &lt;STELLAR&gt;глубиной не менее 50 юн.&lt;&gt; и поплавайте на поверхности, размышляя о том, какие существа обитают под вами.&#xA;&#xA;Океаны на поверхности планеты видны их космоса, а &lt;TECHNOLOGY&gt;двигатели посадки на воду&lt;&gt; помогут добраться до нужной части водоема.
                                -- The water calls to you...&#xA;&#xA;Find water at least &lt;STELLAR&gt;50u deep&lt;&gt; and float upon the surface, contemplating what swims in the depths below.&#xA;&#xA;Oceans are visible on a planet's surface from space, and &lt;TECHNOLOGY&gt;Aquatic Landing Jets&lt;&gt; will assist a seaborne excursion.
                                { "Russian", "Вода зовет...&#xA;&#xA;Найдите водоем &lt;STELLAR&gt;глубиной не менее 50 ед.&lt;&gt; и поплавайте на поверхности, размышляя о том, какие существа обитают под вами.&#xA;&#xA;Океаны на поверхности планеты видны их космоса, а &lt;TECHNOLOGY&gt;движители приводнения&lt;&gt; помогут добраться до нужной части водоема." },
                            }
                        },

                        --#region UI_EXPED_SPIDER_KILL
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_SPIDER_KILL_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Уничтожьте испорченных четвероногих: %CURRENT%/%AMOUNT%&#xA;Находясь в космосе, воспользуйтесь галактической картой (&lt;IMG&gt;QUICK_MENU&lt;&gt;), чтобы найти &lt;SPECIAL&gt;лишенные гармонии&lt;&gt; миры.
                                { "Russian", "Уничтожьте испорченных четвероногих: %CURRENT%/%AMOUNT%&#xA;Находясь в космосе, воспользуйтесь галактической картой (&lt;IMG&gt;QUICK_MENU&lt;&gt;),&#xA;чтобы найти &lt;SPECIAL&gt;лишенные гармонии&lt;&gt; миры" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_SPIDER_KILL_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Уничтожьте испорченных четвероногих: %CURRENT%/%AMOUNT%&#xA;Неподалеку обнаружена &lt;SPECIAL&gt;лишенная гармонии&lt;&gt; планета.&#xA;&lt;TECHNOLOGY&gt;Сканер&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;) звездолета способен находить планеты испорченных четвероногих.
                                { "Russian", "Уничтожьте испорченных четвероногих: %CURRENT%/%AMOUNT%&#xA;Неподалеку обнаружена &lt;SPECIAL&gt;лишенная гармонии&lt;&gt; планета&#xA;&lt;TECHNOLOGY&gt;Сканер&lt;&gt; звездолёта (&lt;IMG&gt;SCAN&lt;&gt;) способен найти планеты испорченных четвероногих" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_SPIDER_KILL_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Уничтожьте испорченных четвероногих: %CURRENT%/%AMOUNT%&#xA;&lt;SPECIAL&gt;Испорченные четвероногие&lt;&gt; роятся в этом лишенном гармонии мире.
                                { "Russian", "Уничтожьте испорченных четвероногих: %CURRENT%/%AMOUNT%&#xA;&lt;SPECIAL&gt;Испорченные четвероногие&lt;&gt; роятся в этом лишенном гармонии мире" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_SPIDER_KILL_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Испорченные четвероногие&lt;&gt; патрулируют лишенные гармонии миры. Их оболочки искажены силой, излучаемой тканью планеты.&#xA;&#xA;Найдите &lt;STELLAR&gt;лишенные гармонии&lt;&gt; системы на галактической карте. Находясь в космосе, просканируйте отдельные планеты с помощью &lt;TECHNOLOGY&gt;сканера&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;) звездолета, чтобы найти миры, где скопились отряды испорченных четвероногих стражей.&#xA;&#xA;Все миры встречи, связанные с этапами &lt;EXPED&gt;паломничества&lt;&gt;, кишат испорченными четвероногими.
                                { "Russian", "&lt;SPECIAL&gt;Испорченные четвероногие&lt;&gt; патрулируют лишенные гармонии миры. Их оболочки искажены силой, излучаемой тканью планеты.&#xA;&#xA;Найдите &lt;STELLAR&gt;лишенные гармонии&lt;&gt; системы на галактической карте. Находясь в космосе, просканируйте отдельные планеты с помощью &lt;TECHNOLOGY&gt;сканера&lt;&gt; звездолёта (&lt;IMG&gt;SCAN&lt;&gt;), чтобы найти миры, где скопились отряды испорченных четвероногих стражей.&#xA;&#xA;Все миры встречи, связанные с этапами &lt;EXPED&gt;паломничества&lt;&gt;, кишат испорченными четвероногими." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_SPIDER_KILL_TIP_ALT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Испорченные четвероногие&lt;&gt; патрулируют лишенные гармонии миры. Их оболочки искажены силой, излучаемой тканью планеты.&#xA;&#xA;Найдите &lt;STELLAR&gt;лишенные гармонии&lt;&gt; системы на галактической карте. Находясь в космосе, просканируйте отдельные планеты с помощью &lt;TECHNOLOGY&gt;сканера&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;) звездолета, чтобы найти миры, где скопились испорченные четвероногие.
                                { "Russian", "&lt;SPECIAL&gt;Испорченные четвероногие&lt;&gt; патрулируют лишенные гармонии миры. Их оболочки искажены силой, излучаемой тканью планеты.&#xA;&#xA;Найдите &lt;STELLAR&gt;лишенные гармонии&lt;&gt; системы на галактической карте. Находясь в космосе, просканируйте отдельные планеты с помощью &lt;TECHNOLOGY&gt;сканера&lt;&gt; звездолёта (&lt;IMG&gt;SCAN&lt;&gt;), чтобы найти миры, где скопились испорченные четвероногие." },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SPOOKBOSS_BAR_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Победите хранителя, чтобы запечатать брешь.
                                -- Defeat the Guardian to seal the breach
                                { "Russian", "ПОБЕДИТЕ ХРАНИТЕЛЯ, ЧТОБЫ ЗАПЕЧАТАТЬ БРЕШЬ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SPOOKBOSS_BAR_TIP_SPAWN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;FUEL&gt;Обнаружена перегрузка границы!&lt;&gt;
                                -- &lt;FUEL&gt;Boundary overload detected!&lt;&gt;
                                { "Russian", "&lt;FUEL&gt;ОБНАРУЖЕНА ПЕРЕГРУЗКА ГРАНИЦЫ!&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SPOOKBOSS_BAR_SHIELD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ЛОКАЛЬНАЯ АНОМАЛИЯ
                                -- LOCAL ANOMALY
                                { "Russian", "АНОМАЛИЯ" },
                            }
                        },
                        --
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JELLYBOSS_BAR_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Победите стража, чтобы успокоить бурное море.
                                -- Defeat the Guardian to calm the boiling seas
                                { "Russian", "ПОБЕДИТЕ СТРАЖА, ЧТОБЫ УСПОКОИТЬ МОРЯ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JELLYBOSS_BAR_TIP_SPAWN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;FUEL&gt;Обнаружен электрический разряд&lt;&gt;
                                -- &lt;FUEL&gt;Electrical discharge detected&lt;&gt;
                                { "Russian", "&lt;FUEL&gt;ОБНАРУЖЕН ЭЛЕКТРИЧЕСКИЙ РАЗРЯД&lt;&gt;" },
                            }
                        },

                        --#region UI_EXPED16_.*_SURVEY
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED16_GRAVE_SURVEY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите &lt;SPECIAL&gt;голос стекла&lt;&gt;.&#xA;Разрушение границы обнаружено в точке %GPS%.&#xA;Используйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt;, чтобы установить точное местоположение бреши.&#xA;%S16_GLYPH1% %S16_GLYPH2% %S16_GLYPH3%
                                { "Russian", "Найдите &lt;SPECIAL&gt;голос стекла&lt;&gt;&#xA;Обнаружено разрушение границы: %GPS%&#xA;Найдите брешь, используя &lt;TECHNOLOGY&gt;разведку цели&lt;&gt;&#xA;%S16_GLYPH1% %S16_GLYPH2% %S16_GLYPH3%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED16_GRAVE_SURVEY_SWAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите &lt;SPECIAL&gt;голос стекла&lt;&gt;.&#xA;Разрушение границы обнаружено в точке %GPS%.&#xA;Выберите &lt;STELLAR&gt;разведку цели&lt;&gt; &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;), чтобы установить точное местоположение бреши.&#xA;%S16_GLYPH1% %S16_GLYPH2% %S16_GLYPH3%
                                -- Locate the &lt;SPECIAL&gt;voice of glass&lt;&gt;&#xA;Boundary failure detected at %GPS%&#xA;Select the &lt;STELLAR&gt;Target Sweep&lt;&gt; (&lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;) to pinpoint the breach&#xA;%S16_GLYPH1% %S16_GLYPH2% %S16_GLYPH3%
                                { "Russian", "Найдите &lt;SPECIAL&gt;голос стекла&lt;&gt;&#xA;Обнаружено разрушение границы: %GPS%&#xA;Найдите брешь, используя &lt;STELLAR&gt;разведку цели&lt;&gt; (&lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;)&#xA;%S16_GLYPH1% %S16_GLYPH2% %S16_GLYPH3%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED16_GRAVE_SURVEY_OFF" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите &lt;SPECIAL&gt;голос стекла&lt;&gt;.&#xA;Разрушение границы обнаружено в точке %GPS%.&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы установить точное местоположение бреши.&#xA;%S16_GLYPH1% %S16_GLYPH2% %S16_GLYPH3%
                                -- Locate the &lt;SPECIAL&gt;voice of glass&lt;&gt;&#xA;Boundary failure detected at %GPS%&#xA;Activate a &lt;STELLAR&gt;Target Sweep&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;) to pinpoint the breach&#xA;%S16_GLYPH1% %S16_GLYPH2% %S16_GLYPH3%
                                { "Russian", "Найдите &lt;SPECIAL&gt;голос стекла&lt;&gt;&#xA;Обнаружено разрушение границы: %GPS%&#xA;Найдите брешь, используя &lt;STELLAR&gt;разведку цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)&#xA;%S16_GLYPH1% %S16_GLYPH2% %S16_GLYPH3%" },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_DECAL_EXPD_16_DESCRIPTION" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Эксклюзивный размещаемый рисунок, добавляющий шарма базе.&#xA;&#xA;Этот рисунок создан в честь побега от пролома границы, возникшего во время экспедиции «&lt;SPECIAL&gt;Проклятые&lt;&gt;».
                                -- An exclusive placeable decal, to add flair and decoration to bases.&#xA;&#xA;This decal marks the escape from the boundary failure that occurred during the &lt;SPECIAL&gt;Cursed&lt;&gt; expedition...
                                { "Russian", "Эксклюзивный размещаемый рисунок, добавляющий шарма базе.&#xA;&#xA;Этот рисунок создан в честь побега от пролома границы, возникшего во время &lt;SPECIAL&gt;Проклятой&lt;&gt; экспедиции." },
                            }
                        },

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_CATCH_FISH_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Для начала нужно достать &lt;TECHNOLOGY&gt;снасть&lt;&gt;. Когда она установлена и активирована, вы можете забросить крючок в любой водоем с помощью &lt;IMG&gt;ATTACK&lt;&gt;.&#xA;&#xA;Далее следите за поплавком и ждите улова. Если рыба клюет, нажмите и удерживайте &lt;IMG&gt;ATTACK&lt;&gt;, чтобы &lt;STELLAR&gt;вытащить ее из воды&lt;&gt;. Примечание: попытка вытащить рыбу, пока она не полностью заглотила крючок, может провалиться.&#xA;&#xA;Подробности об улове и &lt;TECHNOLOGY&gt;особых требованиях к биомам&lt;&gt; можно посмотреть в &lt;STELLAR&gt;каталоге&lt;&gt;.&#xA;&#xA;Изготовьте и воспользуйтесь специальной &lt;STELLAR&gt;наживкой&lt;&gt; или &lt;TECHNOLOGY&gt;приманкой&lt;&gt;, чтобы повысить вероятность улова. Примечание: любую пищу можно использовать как наживку.
                                { "Russian", "Для начала нужно достать &lt;TECHNOLOGY&gt;удочку&lt;&gt;. Когда она установлена и активирована, вы можете забросить крючок в любой водоем с помощью &lt;IMG&gt;ATTACK&lt;&gt;.&#xA;&#xA;Далее следите за поплавком и ждите улова. Если рыба клюет, нажмите и удерживайте &lt;IMG&gt;ATTACK&lt;&gt;, чтобы &lt;STELLAR&gt;вытащить ее из воды&lt;&gt;. Примечание: попытка вытащить рыбу, пока она не полностью заглотила крючок, может провалиться.&#xA;&#xA;Подробности об улове и &lt;TECHNOLOGY&gt;особых требованиях к биомам&lt;&gt; можно посмотреть в &lt;STELLAR&gt;каталоге&lt;&gt;.&#xA;&#xA;Изготовьте и воспользуйтесь специальной &lt;STELLAR&gt;наживкой&lt;&gt; или &lt;TECHNOLOGY&gt;приманкой&lt;&gt;, чтобы повысить вероятность улова. Примечание: любую пищу можно использовать как наживку." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_BIG_FISH_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Для начала нужно достать &lt;TECHNOLOGY&gt;снасть&lt;&gt;. Когда она установлена и активирована, вы можете забросить крючок в любой водоем с помощью &lt;IMG&gt;ATTACK&lt;&gt;.&#xA;&#xA;Далее следите за поплавком и ждите улова. Если рыба клюет, нажмите и удерживайте &lt;IMG&gt;ATTACK&lt;&gt;, чтобы &lt;STELLAR&gt;вытащить ее из воды&lt;&gt;. Примечание: попытка вытащить рыбу, пока она не полностью заглотила крючок, может провалиться.&#xA;&#xA;Подробности об улове и &lt;TECHNOLOGY&gt;особых требованиях к биомам&lt;&gt; можно посмотреть в &lt;STELLAR&gt;каталоге&lt;&gt;.&#xA;&#xA;Изготовьте и воспользуйтесь специальной &lt;STELLAR&gt;наживкой&lt;&gt; или &lt;TECHNOLOGY&gt;приманкой&lt;&gt;, чтобы повысить вероятность улова. Примечание: любую пищу можно использовать как наживку.
                                { "Russian", "Для начала нужно достать &lt;TECHNOLOGY&gt;удочку&lt;&gt;. Когда она установлена и активирована, вы можете забросить крючок в любой водоем с помощью &lt;IMG&gt;ATTACK&lt;&gt;.&#xA;&#xA;Далее следите за поплавком и ждите улова. Если рыба клюет, нажмите и удерживайте &lt;IMG&gt;ATTACK&lt;&gt;, чтобы &lt;STELLAR&gt;вытащить ее из воды&lt;&gt;. Примечание: попытка вытащить рыбу, пока она не полностью заглотила крючок, может провалиться.&#xA;&#xA;Подробности об улове и &lt;TECHNOLOGY&gt;особых требованиях к биомам&lt;&gt; можно посмотреть в &lt;STELLAR&gt;каталоге&lt;&gt;.&#xA;&#xA;Изготовьте и воспользуйтесь специальной &lt;STELLAR&gt;наживкой&lt;&gt; или &lt;TECHNOLOGY&gt;приманкой&lt;&gt;, чтобы повысить вероятность улова. Примечание: любую пищу можно использовать как наживку." },
                            }
                        },

                        --#region 18 экспедиция

                        -- обрезается на "созданий про"
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED18_SUMMARY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Зарегистрируйтесь для участия в экспедиции 18 «&lt;STELLAR&gt;Реликвии&lt;&gt;», чтобы выкапывать древние сокровища и воссоздавать давно забытых созданий прошлого.
                                -- Sign up for Expedition 18: &lt;STELLAR&gt;Relics&lt;&gt; to unearth ancient treasures and recreate the lost beasts of the past...
                                { "Russian", "Примите участие в экспедиции «&lt;STELLAR&gt;Реликвии&lt;&gt;», чтобы выкапывать древние сокровища и воссоздавать давно забытых созданий прошлого..." },
                            }
                        },

                        --#region UI_EXPED18_DIG_.*_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED18_DIG_SITE_MSG0" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Предыдущие раскопки &lt;STELLAR&gt;Галактического палеонтологического общества&lt;&gt; еще не завершены.&#xA;Для продолжения пройдите этап «&lt;EXPED&gt;%MILESTONE%&lt;&gt;».&#xA;Выбрать этап экспедиции можно в журнале экспедиции (&lt;IMG&gt;OPTIONS&lt;&gt;).
                                -- Previous &lt;STELLAR&gt;Galactic Palaeology Society&lt;&gt; dig not yet complete&#xA;Select the &lt;EXPED&gt;%MILESTONE%&lt;&gt; milestone to proceed&#xA;Select milestones from the Expedition log (&lt;IMG&gt;OPTIONS&lt;&gt;)
                                { "Russian", "Предыдущие раскопки &lt;STELLAR&gt;ГПО&lt;&gt; еще не завершены&#xA;Для продолжения пройдите этап «&lt;EXPED&gt;%MILESTONE%&lt;&gt;»&#xA;Выбирайте этапы в журнале экспедиции (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED18_DIG_SITE1_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Докажите свои способности археолога Галактическому палеонтологическому обществу.&#xA;Доберитесь до оперативного штаба на первом &lt;STELLAR&gt;месте раскопок&lt;&gt;.
                                { "Russian", "Докажите свои способности археолога ГПО&#xA;Доберитесь до оперативного штаба на первом &lt;STELLAR&gt;месте раскопок&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED18_DIG_SITE1_MSG_MAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Докажите свои способности археолога Галактическому палеонтологическому обществу.&#xA;Выберите «&lt;TRADEABLE&gt;Маршрут экспедиции&lt;&gt;» на галактической карте (&lt;IMG&gt;QUICK_MENU&lt;&gt;).&#xA;Чтобы добраться до штаба, иногда надо проделать немалый путь.
                                { "Russian", "Докажите свои способности археолога ГПО&#xA;Выберите &lt;TRADEABLE&gt;Маршрут экспедиции&lt;&gt; на галактической карте (&lt;IMG&gt;QUICK_MENU&lt;&gt;)&#xA;Чтобы добраться до штаба, иногда надо проделать немалый путь" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED18_DIG_SITE1_MSG_MAPA" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Докажите свои способности археолога Галактическому палеонтологическому обществу.&#xA;Зарядите &lt;TECHNOLOGY&gt;гипердвигатель&lt;&gt;, использовав &lt;SPECIAL&gt;варп-ячейку&lt;&gt;.&#xA;Создавайте предметы в инвентаре с помощью &lt;IMG&gt;PRODMENU&lt;&gt;.&#xA;Чертежи в меню создания можно закреплять с помощью &lt;IMG&gt;PIN&lt;&gt;.
                                -- Bring proof of your excavation ability to the Galactic Palaeology Society&#xA;Charge the &lt;TECHNOLOGY&gt;Hyperdrive&lt;&gt; with a &lt;SPECIAL&gt;Warp Cell&lt;&gt;&#xA;Craft items in the Inventory with &lt;IMG&gt;PRODMENU&lt;&gt;&#xA;Pin blueprints with &lt;IMG&gt;PIN&lt;&gt; while browsing the crafting menu
                                { "Russian", "Докажите свои способности археолога ГПО&#xA;Подзарядите &lt;TECHNOLOGY&gt;гипердвигатель&lt;&gt; с помощью &lt;SPECIAL&gt;варп-ячейки&lt;&gt;&#xA;Создавайте предметы в инвентаре с помощью &lt;IMG&gt;PRODMENU&lt;&gt;&#xA;Закрепляйте чертежи, нажав &lt;IMG&gt;PIN&lt;&gt; в меню строительства" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED18_DIG_SITE1_MSG_MAPB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Докажите свои способности археолога Галактическому палеонтологическому обществу.&#xA;Вернитесь в космос и откройте &lt;TECHNOLOGY&gt;галактическую карту&lt;&gt;.
                                { "Russian", "Докажите свои способности археолога ГПО&#xA;Вернитесь в космос и откройте &lt;TECHNOLOGY&gt;галактическую карту&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED18_DIG_SITE2_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вы добрались до указанной Галактическим палеонтологическим обществом системы.&#xA;Доберитесь до оперативного штаба на &lt;STELLAR&gt;месте раскопок&lt;&gt;.
                                { "Russian", "Вы добрались до указанной ГПО системы&#xA;Доберитесь до оперативного штаба на &lt;STELLAR&gt;месте раскопок&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED18_DIG_SITE2_MSG_MAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Доберитесь до следующего &lt;STELLAR&gt;места раскопок&lt;&gt; Галактического палеонтологического общества.&#xA;Выберите «&lt;TRADEABLE&gt;Маршрут экспедиции&lt;&gt;» на галактической карте (&lt;IMG&gt;QUICK_MENU&lt;&gt;).&#xA;Чтобы добраться до штаба, иногда надо проделать немалый путь.
                                { "Russian", "Доберитесь до следующего &lt;STELLAR&gt;места раскопок&lt;&gt; ГПО&#xA;Выберите «&lt;TRADEABLE&gt;Маршрут экспедиции&lt;&gt;» на галактической карте (&lt;IMG&gt;QUICK_MENU&lt;&gt;)&#xA;Чтобы добраться до штаба, иногда надо проделать немалый путь" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED18_DIG_SITE2_MSG_MAPA" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Доберитесь до следующего &lt;STELLAR&gt;места раскопок&lt;&gt; Галактического палеонтологического общества.&#xA;Вернитесь в космос и откройте &lt;TECHNOLOGY&gt;галактическую карту&lt;&gt;.
                                { "Russian", "Доберитесь до следующего &lt;STELLAR&gt;места раскопок&lt;&gt; ГПО&#xA;Вернитесь в космос и откройте &lt;TECHNOLOGY&gt;галактическую карту&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED18_DIG_SITE2_MSG_FUEL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Доберитесь до следующего &lt;STELLAR&gt;места раскопок&lt;&gt; Галактического палеонтологического общества.&#xA;Зарядите &lt;TECHNOLOGY&gt;гипердвигатель&lt;&gt;, использовав &lt;SPECIAL&gt;варп-ячейку&lt;&gt;.&#xA;Создавайте предметы в инвентаре с помощью &lt;IMG&gt;PRODMENU&lt;&gt;.&#xA;Чертежи в меню создания можно закреплять с помощью &lt;IMG&gt;PIN&lt;&gt;.
                                { "Russian", "Доберитесь до следующего &lt;STELLAR&gt;места раскопок&lt;&gt; ГПО&#xA;Подзарядите &lt;TECHNOLOGY&gt;гипердвигатель&lt;&gt; с помощью &lt;SPECIAL&gt;варп-ячейки&lt;&gt;&#xA;Создавайте предметы в инвентаре с помощью &lt;IMG&gt;PRODMENU&lt;&gt;&#xA;Закрепляйте чертежи, нажав &lt;IMG&gt;PIN&lt;&gt; в меню строительства" },
                            }
                        },
                        --#endregion

                        -- обрезается на "палеонтологическому об"
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED18_DIG_SITE_OBJ" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Передать найденные артефакты Галактическому палеонтологическому обществу
                                -- Bring the excavated artifacts to the Galactic Palaeology Society
                                { "Russian", "Передать найденные артефакты ГПО" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED18_DIG_SITE_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Галактическое палеонтологическое общество сообщило вам координаты нескольких &lt;STELLAR&gt;мест раскопок&lt;&gt;.&#xA;&#xA;Рекомендованный маршрут до места отмечен на &lt;TECHNOLOGY&gt;галактической карте&lt;&gt;. Чтобы добраться до места встречи, иногда надо проделать немалый путь.&#xA;&#xA;Находясь в космосе, вызовите &lt;TECHNOLOGY&gt;быстрое меню&lt;&gt; (&lt;IMG&gt;QUICK_MENU&lt;&gt;) и откройте галактическую карту. Используйте &lt;IMG&gt;GALAXY_NAV_R&lt;&gt;/&lt;IMG&gt;GALAXY_NAV_L&lt;&gt; для просмотра маршрутов. Двигайтесь по выбранному маршруту, чтобы выбрать следующую систему.
                                -- The Galactic Palaeology Society has provided the location of several &lt;STELLAR&gt;dig sites&lt;&gt;.&#xA;&#xA;A suggested path to each dig site is marked on the &lt;TECHNOLOGY&gt;Galaxy Map&lt;&gt;. A significant journey may be required to reach these rendezvous points.&#xA;&#xA;In space, access the Galaxy Map via the &lt;TECHNOLOGY&gt;Quick Menu&lt;&gt; (&lt;IMG&gt;QUICK_MENU&lt;&gt;). Use &lt;IMG&gt;GALAXY_NAV_R&lt;&gt; / &lt;IMG&gt;GALAXY_NAV_L&lt;&gt; to browse available routes. Push along your chosen route to select the next system.
                                { "Russian", "Галактическое Палеонтологическое Общество (ГПО) сообщило вам координаты нескольких &lt;STELLAR&gt;мест раскопок&lt;&gt;.&#xA;&#xA;Рекомендованный маршрут до места отмечен на &lt;TECHNOLOGY&gt;галактической карте&lt;&gt;. Чтобы добраться до места встречи, иногда надо проделать немалый путь.&#xA;&#xA;Находясь в космосе, откройте галактическую карту из &lt;TECHNOLOGY&gt;быстрого меню&lt;&gt; (&lt;IMG&gt;QUICK_MENU&lt;&gt;). Используйте &lt;IMG&gt;GALAXY_NAV_R&lt;&gt; / &lt;IMG&gt;GALAXY_NAV_L&lt;&gt; для просмотра маршрутов. Выберите следующую систему, следуя по выбранному маршруту." },
                            }
                        },

                        --#region UI_EXPED18_PROC_PRODS_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED18_PROC_PRODS_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Докажите, что вы достойны быть частью &lt;STELLAR&gt;Галактического палеонтологического общества&lt;&gt;.&#xA;Выкопайте артефакты для ГПО: %CURRENT%/%AMOUNT%&#xA;Используйте &lt;TECHNOLOGY&gt;усилитель сигнала&lt;&gt;, чтобы найти место раскопок.
                                { "Russian", "Докажите, что вы достойны быть частью&#xA;&lt;STELLAR&gt;Галактического Палеонтологического Общества&lt;&gt;&#xA;Выкопайте артефакты для ГПО: %CURRENT%/%AMOUNT%&#xA;Используйте &lt;TECHNOLOGY&gt;усилитель сигнала&lt;&gt;, чтобы найти место раскопок" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED18_PROC_PRODS_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Докажите, что вы достойны быть частью &lt;STELLAR&gt;Галактического палеонтологического общества&lt;&gt;.&#xA;Найдите &lt;STELLAR&gt;место раскопок&lt;&gt;.&#xA;Высадитесь на &lt;TECHNOLOGY&gt;планете&lt;&gt;, чтобы начать поиск.
                                { "Russian", "Докажите, что вы достойны быть частью&#xA;&lt;STELLAR&gt;Галактического Палеонтологического Общества&lt;&gt;&#xA;Найдите &lt;STELLAR&gt;место раскопок&lt;&gt;&#xA;Высадитесь на &lt;TECHNOLOGY&gt;планете&lt;&gt;, чтобы начать поиски" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED18_PROC_PRODS_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Докажите, что вы достойны быть частью &lt;STELLAR&gt;Галактического палеонтологического общества&lt;&gt;.&#xA;Соберите древние артефакты: %CURRENT%/%AMOUNT%.&#xA;Используйте &lt;TECHNOLOGY&gt;усилитель сигнала&lt;&gt;, чтобы найти место раскопок.&#xA;Разместить усилитель сигнала можно с помощью &lt;TECHNOLOGY&gt;меню созидания&lt;&gt; (&lt;IMG&gt;BUILD_MENU&lt;&gt;).
                                { "Russian", "Докажите, что вы достойны быть частью &lt;STELLAR&gt;ГПО&lt;&gt;&#xA;Соберите древние артефакты: %CURRENT%/%AMOUNT%&#xA;Используйте &lt;TECHNOLOGY&gt;усилитель сигнала&lt;&gt;, чтобы найти место раскопок&#xA;Установите усилитель сигнала из &lt;TECHNOLOGY&gt;меню строительства&lt;&gt; (&lt;IMG&gt;BUILD_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED18_PROC_PRODS_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Докажите, что вы достойны быть частью &lt;STELLAR&gt;Галактического палеонтологического общества&lt;&gt;.&#xA;Используйте &lt;TECHNOLOGY&gt;усилитель сигнала&lt;&gt;, чтобы найти место раскопок.&#xA;Для активации усилителя сигнала необходим &lt;TECHNOLOGY&gt;накопитель импульса&lt;&gt;.&#xA;Закрепите (&lt;IMG&gt;PRODMENU&lt;&gt;) сборочные инструкции в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;).
                                { "Russian", "Докажите, что вы достойны быть частью &lt;STELLAR&gt;ГПО&lt;&gt;&#xA;Используйте &lt;TECHNOLOGY&gt;усилитель сигнала&lt;&gt;, чтобы найти место раскопок&#xA;Для активации усилителя сигнала необходим &lt;TECHNOLOGY&gt;накопитель импульса&lt;&gt;&#xA;Закрепите (&lt;IMG&gt;PRODMENU&lt;&gt;) инструкцию по сборке в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED18_PROC_PRODS_MSG5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Докажите, что вы достойны быть частью &lt;STELLAR&gt;Галактического палеонтологического общества&lt;&gt;.&#xA;На текущей планете мест раскопок не обнаружено.&#xA;Найдите другую планету, чтобы продолжить поиск.
                                { "Russian", "Докажите, что вы достойны быть частью&#xA;&lt;STELLAR&gt;Галактического Палеонтологического Общества&lt;&gt;&#xA;На текущей планете мест раскопок не обнаружено&#xA;Найдите другую планету, чтобы продолжить поиск" },
                            }
                        },
                        --#endregion

                        -- неверная строка форматирования
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_SELL_BONES_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Продайте окаменелости: %CURRENT%&lt;IMG&gt;&lt;&gt;/%AMOUNT%&lt;IMG&gt;&lt;&gt; юн.
                                -- Sell fossils: %CURRENT%&lt;IMG&gt;UNITS&lt;&gt;/%AMOUNT%&lt;IMG&gt;UNITS&lt;&gt;
                                { "Russian", "Продайте окаменелости: &lt;IMG&gt;UNITS&lt;&gt;%CURRENT%/%AMOUNT%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_SELL_BONES_DESC_D" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вы продали кости на сумму %NUM%&lt;IMG&gt; юн.&lt;&gt;
                                -- Sold %NUM%&lt;IMG&gt;UNITS&lt;&gt; worth of bones
                                { "Russian", "Вы продали кости на сумму &lt;IMG&gt;UNITS&lt;&gt;%NUM%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_SELL_BONES_OBJ" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Продать окаменелости на открытом рынке: %CURRENT%&lt;IMG&gt;&lt;&gt;/%AMOUNT%&lt;IMG&gt;&lt;&gt; юн.
                                -- Sell fossils on the open market: %CURRENT%&lt;IMG&gt;UNITS&lt;&gt;/%AMOUNT%&lt;IMG&gt;UNITS&lt;&gt;
                                { "Russian", "Продать окаменелости на рынке: &lt;IMG&gt;UNITS&lt;&gt;%CURRENT%/%AMOUNT%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_SELL_BONES_OBJ_ALT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Продать окаменелости на открытом рынке
                                { "Russian", "Продать окаменелости на рынке" },
                            }
                        },

                        --#region UI_EXPED18_DIG_SITE[0-9]+_DESC
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED18_DIG_SITE2_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Прибудьте на второе место раскопок ГПО
                                { "Russian", "Прибудьте на место раскопок ГПО №2" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED18_DIG_SITE2_DESC_D" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вы прибыли на второе место раскопок ГПО
                                { "Russian", "Вы прибыли на место раскопок ГПО №2" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED18_DIG_SITE3_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Прибудьте на третье место раскопок ГПО
                                { "Russian", "Прибудьте на место раскопок ГПО №3" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED18_DIG_SITE3_DESC_D" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вы прибыли на третье место раскопок ГПО
                                { "Russian", "Вы прибыли на место раскопок ГПО №3" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED18_DIG_SITE4_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Прибудьте на четвертое место раскопок ГПО
                                { "Russian", "Прибудьте на место раскопок ГПО №4" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED18_DIG_SITE4_DESC_D" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вы прибыли на четвертое место раскопок ГПО
                                { "Russian", "Вы прибыли на место раскопок ГПО №4" },
                            }
                        },
                        --#endregion

                        -- обрезается на "специалистом-коллекц"
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_BONE_TRADE_OBJ" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обменяться окаменелостями со специалистом-коллекционером
                                -- Trade fossils with a specialist collector
                                { "Russian", "Обменяться окаменелостями с коллекционером" },
                            }
                        },
                        -- обрезается на "скелет для "
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED18_BONE_HUNT_OBJ" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Выкопать полный окаменелый скелет для Галактического палеонтологического общества
                                -- Collect a complete fossil for the Galactic Palaeology Society
                                { "Russian", "Выкопать полный скелет для ГПО" },
                            }
                        },
                        -- не вмещается
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_ANALYSE_PROP_OBJ" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Выкопать и проанализировать погребенные данные: %CURRENT%/%AMOUNT%
                                -- Recover and analyse buried data: %CURRENT%/%AMOUNT%
                                { "Russian", "Выкопать и проанализировать данные: %CURRENT%/%AMOUNT%" },
                            }
                        },

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED18_START_DESC_D" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вы вступили в галактическое палеонтологическое общество
                                -- Joined the Galactic Palaeology Society
                                { "Russian", "Вы вступили в ГПО" },
                            }
                        },
                        -- на экране терминала
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_S18_SHIPLOG_TITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Галактическое палеонтологическое общество
                                -- Galactic Palaeology Society
                                { "Russian", "ГАЛАКТИЧЕСКОЕ ПАЛЕОНТОЛОГИЧЕСКОЕ ОБЩЕСТВО" },
                            }
                        },

                        --#region UI_EXPED18_START_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED18_START_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите свой звездолет и сядьте в него.&#xA;Используйте &lt;TECHNOLOGY&gt;компас&lt;&gt; и &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; для навигации.
                                { "Russian", "Найдите свой звездолёт и сядьте в него&#xA;Используйте &lt;TECHNOLOGY&gt;компас&lt;&gt; и &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; для навигации" },
                            }
                        },
                        --#endregion

                        --#region UI_EXPED18_DETAIL_LINE
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED18_DETAIL_LINE1A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Следите за ходом путешествия на странице &lt;STELLAR&gt;экспедиции&lt;&gt; (&lt;IMG&gt;OPTIONS&lt;&gt;).
                                { "Russian", "Следите за ходом путешествия на вкладке &lt;STELLAR&gt;экспедиции&lt;&gt; (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED18_DETAIL_LINE1B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Следите за ходом путешествия на странице &lt;STELLAR&gt;экспедиции&lt;&gt; (&lt;IMG&gt;OPTIONS&lt;&gt;). Доберитесь до &lt;SPECIAL&gt;Космической Аномалии&lt;&gt;, чтобы забрать сохраненные предметы.
                                { "Russian", "Следите за ходом путешествия на вкладке &lt;STELLAR&gt;экспедиции&lt;&gt; (&lt;IMG&gt;OPTIONS&lt;&gt;). Доберитесь до &lt;SPECIAL&gt;Космической Аномалии&lt;&gt;, чтобы забрать сохраненные предметы." },
                            }
                        },
                        -- {
                        -- ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED18_DETAIL_LINE2A" },
                        -- ["VALUE_CHANGE_TABLE"] = {
                        -- -- Получайте &lt;STELLAR&gt;эксклюзивные награды&lt;&gt; за &lt;TECHNOLOGY&gt;этапы&lt;&gt;. Выполнять этапы можно в &lt;TRADEABLE&gt;любом порядке&lt;&gt;.
                        -- { "Russian", "Получайте &lt;STELLAR&gt;эксклюзивные награды&lt;&gt; за &lt;TECHNOLOGY&gt;этапы&lt;&gt;. Выполнять этапы можно в &lt;TRADEABLE&gt;любом порядке&lt;&gt;." },
                        -- }
                        -- },
                        -- {
                        -- ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED18_DETAIL_LINE2B" },
                        -- ["VALUE_CHANGE_TABLE"] = {
                        -- -- Получайте &lt;STELLAR&gt;эксклюзивные награды&lt;&gt; за &lt;TECHNOLOGY&gt;этапы&lt;&gt;. Выполнять этапы можно в &lt;TRADEABLE&gt;любом порядке&lt;&gt;.
                        -- { "Russian", "Получайте &lt;STELLAR&gt;эксклюзивные награды&lt;&gt; за &lt;TECHNOLOGY&gt;этапы&lt;&gt;. Выполнять этапы можно в &lt;TRADEABLE&gt;любом порядке&lt;&gt;." },
                        -- }
                        -- },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED18_DETAIL_LINE3A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Следуйте через галактику. Доберитесь до &lt;SPECIAL&gt;мест раскопок общества ГПО&lt;&gt; и получите щедрые награды.
                                { "Russian", "Следуйте через галактику. Доберитесь до &lt;SPECIAL&gt;мест раскопок ГПО&lt;&gt; и получите щедрые награды." },
                            }
                        },
                        -- {
                        -- ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED18_DETAIL_LINE3B" },
                        -- ["VALUE_CHANGE_TABLE"] = {
                        -- -- Базы, открытия и другой прогресс &lt;TECHNOLOGY&gt;будут добавлены или объединены&lt;&gt; с вашим основным сохранением.
                        -- { "Russian", "Базы, открытия и другой прогресс &lt;TECHNOLOGY&gt;будут добавлены или объединены&lt;&gt; с вашим основным сохранением." },
                        -- }
                        -- },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED18_DETAIL_LINE4A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Эксклюзивные награды за экспедицию доступны в &lt;STELLAR&gt;любом сохранении&lt;&gt;. Это сохранение останется после завершения экспедиции.
                                { "Russian", "Награды за экспедицию доступны в &lt;STELLAR&gt;любом сохранении&lt;&gt;. Это сохранение останется после завершения экспедиции." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED18_DETAIL_LINE4B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вы можете вернуться к основному сохранению&lt;STELLAR&gt;в любое время&lt;&gt;. Эксклюзивные награды за экспедицию доступны с &lt;STELLAR&gt;любого сохранения&lt;&gt;.
                                { "Russian", "Вы можете вернуться к основному сохранению&lt;STELLAR&gt;в любое время&lt;&gt;. Награды за экспедицию доступны в &lt;STELLAR&gt;любом сохранении&lt;&gt;." },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED15_DETAIL_LINE3A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Следуйте по пути, ведущем через галактику. Доберитесь до каждого &lt;SPECIAL&gt;места встречи&lt;&gt;, чтобы получить ценные награды.
                                { "Russian", "Следуйте по пути через галактику к &lt;SPECIAL&gt;местам встречи﻿,&lt;&gt; чтобы получить ценные награды." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED17_DETAIL_LINE3A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Следуйте по пути, ведущем через галактику. Доберитесь до каждого &lt;SPECIAL&gt;места встречи&lt;&gt;, чтобы получить ценные награды.
                                { "Russian", "Следуйте по пути через галактику к &lt;SPECIAL&gt;местам встречи﻿,&lt;&gt; чтобы получить ценные награды." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED18_DETAIL_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вступите в &lt;STELLAR&gt;Галактическое палеонтологическое общество&lt;&gt; и помогите сообществу воссоздать древние формы жизни, раскрыв тысячелетние тайны.&#xA;&#xA;Выполняйте &lt;TECHNOLOGY&gt;важные этапы&lt;&gt;, чтобы получать новое снаряжение. Выполните &lt;COMMODITY&gt;фазы&lt;&gt; целиком, чтобы получить особые награды.
                                -- Sign up with the &lt;STELLAR&gt;Galactic Palaeology Society&lt;&gt; and join the community on a journey to recreate ancient lifeforms and uncover secrets left undisturbed for millennia.&#xA;&#xA;Complete &lt;TECHNOLOGY&gt;Milestones&lt;&gt; to earn new equipment. Complete entire &lt;COMMODITY&gt;Phases&lt;&gt; for special, exclusive rewards.
                                { "Russian", "Вступите в &lt;STELLAR&gt;Галактическое Палеонтологическое Общество&lt;&gt; и помогите ему воссоздать древние формы жизни, раскрыв тысячелетние тайны.&#xA;&#xA;Выполняйте &lt;TECHNOLOGY&gt;важные этапы&lt;&gt;, чтобы получить новое снаряжение. Выполните &lt;COMMODITY&gt;фазы&lt;&gt; целиком, чтобы получить особые награды." },
                            }
                        },

                        --#region UI_EXPED18_DIG_SITE_SURVEY
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED18_DIG_SITE_SURVEY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Доберитесь до места раскопок &lt;STELLAR&gt;Галактического палеонтологического общества&lt;&gt;.&#xA;Используйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt;, чтобы найти оперативный штаб.
                                { "Russian", "Доберитесь до места раскопок &lt;STELLAR&gt;ГПО&lt;&gt;&#xA;Найдите оперативный штаб, используя &lt;TECHNOLOGY&gt;разведку цели&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED18_DIG_SITE_SURVEY_SWAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Доберитесь до места раскопок &lt;STELLAR&gt;Галактического палеонтологического общества&lt;&gt;.&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;.
                                { "Russian", "Доберитесь до места раскопок &lt;STELLAR&gt;ГПО&lt;&gt;&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED18_DIG_SITE_SURVEY_OFF" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Доберитесь до места раскопок &lt;STELLAR&gt;Галактического палеонтологического общества&lt;&gt;.&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы найти оперативный штаб.
                                { "Russian", "Доберитесь до места раскопок &lt;STELLAR&gt;ГПО&lt;&gt;&#xA;Найдите оперативный штаб, используя &lt;STELLAR&gt;разведку цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED18_DIG_SITE_SURVEY_CAR" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Доберитесь до места раскопок &lt;STELLAR&gt;Галактического палеонтологического общества&lt;&gt;.&#xA;Используйте &lt;STELLAR&gt;разведку цели&lt;&gt;, чтобы найти оперативный штаб.&#xA;Чтобы подтвердить направление разведки, выйдите из своего транспорта.
                                { "Russian", "Доберитесь до места раскопок &lt;STELLAR&gt;ГПО&lt;&gt;&#xA;Найдите оперативный штаб, используя &lt;STELLAR&gt;разведку цели&lt;&gt;&#xA;Чтобы подтвердить направление, выйдите из транспорта" },
                            }
                        },
                        --#endregion

                        --#region UI_EXPED18_BONE_HUNT_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED18_BONE_HUNT_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вы еще не добрались до места раскопок.&#xA;Для продолжения пройдите этап «&lt;EXPED&gt;%MILESTONE%&lt;&gt;».&#xA;Выбрать этап экспедиции можно в журнале экспедиции (&lt;IMG&gt;OPTIONS&lt;&gt;).
                                { "Russian", "Вы еще не добрались до места раскопок&#xA;Для продолжения пройдите этап «&lt;EXPED&gt;%MILESTONE%&lt;&gt;»&#xA;Выбрать этап экспедиции можно в журнале экспедиции (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED18_BONE_HUNT_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добудьте полный скелет для Галактического палеонтологического общества.&#xA;Добудьте &lt;STELLAR&gt;череп&lt;&gt; (%CURRENT_HEADS%/%AMOUNT_HEADS%), &lt;STELLAR&gt;грудную клетку&lt;&gt; (%CURRENT_BODIES%/%AMOUNT_BODIES%), &lt;STELLAR&gt;хвост&lt;&gt; (%CURRENT_TAILS%/%AMOUNT_TAILS%) и &lt;STELLAR&gt;конечности&lt;&gt; (%CURRENT_LIMBS%/%AMOUNT_LIMBS%).
                                { "Russian", "Соберите полный скелет для ГПО&#xA;Добудьте &lt;STELLAR&gt;череп&lt;&gt; (%CURRENT_HEADS%/%AMOUNT_HEADS%), &lt;STELLAR&gt;грудную клетку&lt;&gt; (%CURRENT_BODIES%/%AMOUNT_BODIES%), &lt;STELLAR&gt;хвост&lt;&gt; (%CURRENT_TAILS%/%AMOUNT_TAILS%) и &lt;STELLAR&gt;конечности&lt;&gt; (%CURRENT_LIMBS%/%AMOUNT_LIMBS%)&#xA;Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt;, чтобы выкопать древние окаменелости" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED18_BONE_HUNT_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добудьте полный скелет для Галактического палеонтологического общества.&#xA;Добудьте &lt;STELLAR&gt;череп&lt;&gt; (%CURRENT_HEADS%/%AMOUNT_HEADS%), &lt;STELLAR&gt;грудную клетку&lt;&gt; (%CURRENT_BODIES%/%AMOUNT_BODIES%), &lt;STELLAR&gt;хвост&lt;&gt; (%CURRENT_TAILS%/%AMOUNT_TAILS%) и &lt;STELLAR&gt;конечности&lt;&gt; (%CURRENT_LIMBS%/%AMOUNT_LIMBS%).&#xA;Найдите &lt;SPECIAL&gt;ископаемые слои&lt;&gt; с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;).&#xA;Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt;, чтобы выкопать древние окаменелости.
                                { "Russian", "Соберите полный скелет для ГПО&#xA;Добудьте &lt;STELLAR&gt;череп&lt;&gt; (%CURRENT_HEADS%/%AMOUNT_HEADS%), &lt;STELLAR&gt;грудную клетку&lt;&gt; (%CURRENT_BODIES%/%AMOUNT_BODIES%), &lt;STELLAR&gt;хвост&lt;&gt; (%CURRENT_TAILS%/%AMOUNT_TAILS%) и &lt;STELLAR&gt;конечности&lt;&gt; (%CURRENT_LIMBS%/%AMOUNT_LIMBS%)&#xA;Найдите &lt;SPECIAL&gt;фоссилии&lt;&gt; с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED18_BONE_HUNT_MSG_OFF" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добудьте полный скелет для Галактического палеонтологического общества.&#xA;Добудьте &lt;STELLAR&gt;череп&lt;&gt; (%CURRENT_HEADS%/%AMOUNT_HEADS%), &lt;STELLAR&gt;грудную клетку&lt;&gt; (%CURRENT_BODIES%/%AMOUNT_BODIES%), &lt;STELLAR&gt;хвост&lt;&gt; (%CURRENT_TAILS%/%AMOUNT_TAILS%) и &lt;STELLAR&gt;конечности&lt;&gt; (%CURRENT_LIMBS%/%AMOUNT_LIMBS%).&#xA;Воспользуйтесь &lt;TECHNOLOGY&gt;разведкой цели&lt;&gt;, чтобы найти подходящие места раскопок.&#xA;Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt;, чтобы выкопать древние окаменелости.
                                { "Russian", "Соберите полный скелет для ГПО&#xA;Добудьте &lt;STELLAR&gt;череп&lt;&gt; (%CURRENT_HEADS%/%AMOUNT_HEADS%), &lt;STELLAR&gt;грудную клетку&lt;&gt; (%CURRENT_BODIES%/%AMOUNT_BODIES%), &lt;STELLAR&gt;хвост&lt;&gt; (%CURRENT_TAILS%/%AMOUNT_TAILS%) и &lt;STELLAR&gt;конечности&lt;&gt; (%CURRENT_LIMBS%/%AMOUNT_LIMBS%)&#xA;Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt;, чтобы выкопать окаменелости" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED18_BONE_HUNT_MSG_SWAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добудьте полный скелет для Галактического палеонтологического общества.&#xA;Добудьте &lt;STELLAR&gt;череп&lt;&gt; (%CURRENT_HEADS%/%AMOUNT_HEADS%), &lt;STELLAR&gt;грудную клетку&lt;&gt; (%CURRENT_BODIES%/%AMOUNT_BODIES%), &lt;STELLAR&gt;хвост&lt;&gt; (%CURRENT_TAILS%/%AMOUNT_TAILS%) и &lt;STELLAR&gt;конечности&lt;&gt; (%CURRENT_LIMBS%/%AMOUNT_LIMBS%).&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; анализирующего визора (&lt;IMG&gt;AIM&lt;&gt;), чтобы найти ископаемые слои.&#xA;Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt; (&lt;IMG&gt;ATTACK&lt;&gt;), чтобы выкопать древние окаменелости.
                                { "Russian", "Соберите полный скелет для ГПО&#xA;Добудьте &lt;STELLAR&gt;череп&lt;&gt; (%CURRENT_HEADS%/%AMOUNT_HEADS%), &lt;STELLAR&gt;грудную клетку&lt;&gt; (%CURRENT_BODIES%/%AMOUNT_BODIES%), &lt;STELLAR&gt;хвост&lt;&gt; (%CURRENT_TAILS%/%AMOUNT_TAILS%) и &lt;STELLAR&gt;конечности&lt;&gt; (%CURRENT_LIMBS%/%AMOUNT_LIMBS%)&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; анализирующего визора (&lt;IMG&gt;AIM&lt;&gt;), чтобы найти фоссилии" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED18_BONE_HUNT_MSG_CAR" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добудьте полный скелет для Галактического палеонтологического общества.&#xA;Добудьте &lt;STELLAR&gt;череп&lt;&gt; (%CURRENT_HEADS%/%AMOUNT_HEADS%), &lt;STELLAR&gt;грудную клетку&lt;&gt; (%CURRENT_BODIES%/%AMOUNT_BODIES%), &lt;STELLAR&gt;хвост&lt;&gt; (%CURRENT_TAILS%/%AMOUNT_TAILS%) и &lt;STELLAR&gt;конечности&lt;&gt; (%CURRENT_LIMBS%/%AMOUNT_LIMBS%).&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; (&lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;), чтобы найти ископаемые слои.&#xA;Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt; (&lt;IMG&gt;ATTACK&lt;&gt;), чтобы выкопать древние окаменелости.
                                { "Russian", "Соберите полный скелет для ГПО&#xA;Добудьте &lt;STELLAR&gt;череп&lt;&gt; (%CURRENT_HEADS%/%AMOUNT_HEADS%), &lt;STELLAR&gt;грудную клетку&lt;&gt; (%CURRENT_BODIES%/%AMOUNT_BODIES%), &lt;STELLAR&gt;хвост&lt;&gt; (%CURRENT_TAILS%/%AMOUNT_TAILS%) и &lt;STELLAR&gt;конечности&lt;&gt; (%CURRENT_LIMBS%/%AMOUNT_LIMBS%)&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; (&lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;), чтобы найти фоссилии" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED18_BONE_HUNT_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добудьте полный скелет для Галактического палеонтологического общества.&#xA;В этой системе обнаружены &lt;COMMODITY&gt;древние кости&lt;&gt;.&#xA;Высадитесь на планете, чтобы продолжить поиск.
                                { "Russian", "Добудьте полный скелет для ГПО&#xA;В этой системе обнаружены &lt;COMMODITY&gt;древние кости&lt;&gt;&#xA;Высадитесь на планете, чтобы продолжить поиск" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED18_BONE_HUNT_MSG5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добудьте полный скелет для Галактического палеонтологического общества.&#xA;В этой системе &lt;COMMODITY&gt;древние кости&lt;&gt; не обнаружены.&#xA;Откройте галактическую карту (&lt;IMG&gt;QUICK_MENU&lt;&gt;), находясь на звездолете, чтобы отправиться в другую систему.
                                { "Russian", "Соберите полный скелет для ГПО&#xA;В этой системе &lt;COMMODITY&gt;древние кости&lt;&gt; не обнаружены&#xA;Откройте галактическую карту (&lt;IMG&gt;QUICK_MENU&lt;&gt;), находясь в звездолёте, чтобы отправиться в другую систему" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED18_BONE_HUNT_MSG6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добудьте полный скелет для Галактического палеонтологического общества.&#xA;В этой системе &lt;COMMODITY&gt;древние кости&lt;&gt; не обнаружены.&#xA;Вернитесь в космос и найдите планету, где есть &lt;COMMODITY&gt;древние кости&lt;&gt;.
                                { "Russian", "Соберите полный скелет для ГПО&#xA;В этой системе &lt;COMMODITY&gt;древние кости&lt;&gt; не обнаружены&#xA;Вернитесь в космос и найдите планету, где есть &lt;COMMODITY&gt;древние кости&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED18_BONE_HUNT_MSG7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Собрано элементов скелета: &lt;TRADEABLE&gt;5&lt;&gt;/&lt;TRADEABLE&gt;5&lt;&gt;&#xA;Доставьте собранные кости &lt;STELLAR&gt;Галактическому палеонтологическому обществу&lt;&gt;.
                                { "Russian", "Собрано частей скелета: &lt;TRADEABLE&gt;5&lt;&gt;/&lt;TRADEABLE&gt;5&lt;&gt;&#xA;Доставьте собранные кости &lt;STELLAR&gt;ГПО&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region UI_EXPED18_BONE_HUNT_SURVEY
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED18_BONE_HUNT_SURVEY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добудьте полный скелет для Галактического палеонтологического общества.&#xA;Добудьте &lt;STELLAR&gt;череп&lt;&gt; (%CURRENT_HEADS%/%AMOUNT_HEADS%), &lt;STELLAR&gt;грудную клетку&lt;&gt; (%CURRENT_BODIES%/%AMOUNT_BODIES%), &lt;STELLAR&gt;хвост&lt;&gt; (%CURRENT_TAILS%/%AMOUNT_TAILS%) и &lt;STELLAR&gt;конечности&lt;&gt; (%CURRENT_LIMBS%/%AMOUNT_LIMBS%).&#xA;Чтобы подтвердить направление разведки, выйдите из своего транспорта.&#xA;Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt; (&lt;IMG&gt;ATTACK&lt;&gt;), чтобы выкопать древние окаменелости.
                                { "Russian", "Соберите полный скелет для ГПО&#xA;Добудьте &lt;STELLAR&gt;череп&lt;&gt; (%CURRENT_HEADS%/%AMOUNT_HEADS%), &lt;STELLAR&gt;грудную клетку&lt;&gt; (%CURRENT_BODIES%/%AMOUNT_BODIES%), &lt;STELLAR&gt;хвост&lt;&gt; (%CURRENT_TAILS%/%AMOUNT_TAILS%) и &lt;STELLAR&gt;конечности&lt;&gt; (%CURRENT_LIMBS%/%AMOUNT_LIMBS%)&#xA;Чтобы подтвердить направление, выйдите из транспорта" },
                            }
                        },
                        --#endregion

                        --#region UI_EXPED18_BONE_HUNT_.*TIP
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED18_BONE_HUNT_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Полевому агенту Галактического палеонтологического общества нужны все элементы для сборки окаменелого скелета. Найдите планету с различными ископаемыми слоями, а потом найдите нужные кости с помощью &lt;TECHNOLOGY&gt;разведки цели&lt;&gt; анализирующего визора(&lt;IMG&gt;AIM&lt;&gt;).&#xA;&#xA;Черепа: %CURRENT_HEADS%/%AMOUNT_HEADS% &#xA;Хвосты: %CURRENT_TAILS%/%AMOUNT_TAILS% &#xA;Конечности: %CURRENT_LIMBS%/%AMOUNT_LIMBS% &#xA;Грудные клетки: %CURRENT_BODIES%/%AMOUNT_BODIES%
                                { "Russian", "Полевому агенту Галактического Палеонтологического Общества нужны все части окаменелого скелета. Найдите планету с ископаемыми остатками (фоссилии), а потом найдите кости с помощью &lt;TECHNOLOGY&gt;разведки цели&lt;&gt; анализирующего визора (&lt;IMG&gt;AIM&lt;&gt;).&#xA;&#xA;Черепа: %CURRENT_HEADS%/%AMOUNT_HEADS%&#xA;Хвосты: %CURRENT_TAILS%/%AMOUNT_TAILS%&#xA;Конечности: %CURRENT_LIMBS%/%AMOUNT_LIMBS%&#xA;Грудные клетки: %CURRENT_BODIES%/%AMOUNT_BODIES%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED18_BONE_HUNT_TIP_ALT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Полевому агенту Галактического палеонтологического общества нужны все элементы для сборки окаменелого скелета. Найдите планету с различными ископаемыми слоями, а потом и нужные кости с помощью &lt;TECHNOLOGY&gt;разведки цели&lt;&gt; анализирующего визора(&lt;IMG&gt;AIM&lt;&gt;).
                                { "Russian", "Полевому агенту Галактического Палеонтологического Общества нужны все части окаменелого скелета. Найдите планету с ископаемыми остатками (фоссилии), а потом найти кости с помощью &lt;TECHNOLOGY&gt;разведки цели&lt;&gt; анализирующего визора (&lt;IMG&gt;AIM&lt;&gt;)." },
                            }
                        },
                        --#endregion

                        -- обрезается на "тологическог" (50 букв)
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED18_BONE_HUNT_LABEL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Оперативный штаб Галактического палеонтологического общества
                                -- Galactic Palaeology Society Field Office
                                { "Russian", "Оперативный штаб ГПО" },
                            }
                        },

                        --#region UI_EXPED_MAKE_SKELE_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_MAKE_SKELE_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите полный &lt;TECHNOLOGY&gt;окаменелый скелет&lt;&gt;.&#xA;Ищите &lt;STELLAR&gt;ископаемые слои&lt;&gt; с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)&#xA;Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt;, чтобы выкапывать древние окаменелости.
                                { "Russian", "Соберите полный &lt;TECHNOLOGY&gt;скелет&lt;&gt;&#xA;Ищите &lt;STELLAR&gt;фоссилии&lt;&gt; с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)&#xA;Выкапывайте древние окаменелости &lt;TECHNOLOGY&gt;ландшафтным манипулятором&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_MAKE_SKELE_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Чертеж технологии «%ITEM%» вам еще не известен.&#xA;Для продолжения выберите этап «&lt;EXPED&gt;%MILESTONE%&lt;&gt;».&#xA;Выбрать этап экспедиции можно в журнале экспедиции (&lt;IMG&gt;OPTIONS&lt;&gt;).
                                { "Russian", "Чертеж &lt;TECHNOLOGY&gt;%ITEM%&lt;&gt; вам еще не известен&#xA;Для продолжения выберите этап &lt;EXPED&gt;%MILESTONE%&lt;&gt;&#xA;Смените этап в журнале экспедиции (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_MAKE_SKELE_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Изготовьте «%ITEM%», чтобы начать сборку окаменелого скелета.&#xA;Откройте &lt;TECHNOLOGY&gt;меню созидания&lt;&gt; с помощью &lt;IMG&gt;BUILD_MENU&lt;&gt;.
                                { "Russian", "Для сборки скелета требуется создать &lt;STELLAR&gt;%ITEM%&lt;&gt;&#xA;Откройте &lt;TECHNOLOGY&gt;меню строительства&lt;&gt; с помощью &lt;IMG&gt;BUILD_MENU&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_MAKE_SKELE_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Используйте «%ITEM%», чтобы начать сборку окаменелого скелета.&#xA;Соберите добытые кости, чтобы изготовить &lt;STELLAR&gt;полный скелет&lt;&gt;.&#xA;Упакуйте готовые скелеты, чтобы создать &lt;TECHNOLOGY&gt;переносные экспонаты&lt;&gt;.
                                -- Use the %ITEM% to begin fossil assembly&#xA;Assemble collected bones to create a &lt;STELLAR&gt;complete skeleton&lt;&gt;&#xA;Packaged finished skeletons into &lt;TECHNOLOGY&gt;portable exhibits&lt;&gt;
                                { "Russian", "Используйте &lt;STELLAR&gt;%ITEM%&lt;&gt; для сборки скелета&#xA;Создайте &lt;STELLAR&gt;полный скелет&lt;&gt;, установив добытые кости&#xA;Упакуйте скелет в &lt;TECHNOLOGY&gt;переносной экспонат&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_MAKE_SKELE_MSG5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите полный &lt;TECHNOLOGY&gt;окаменелый скелет&lt;&gt;.&#xA;В этой системе обнаружены &lt;COMMODITY&gt;древние кости&lt;&gt;.&#xA;Сканируйте миры из космоса (&lt;IMG&gt;SCAN&lt;&gt;), чтобы проверять данные планеты и искать &lt;STELLAR&gt;древние кости&lt;&gt;.
                                { "Russian", "Соберите полный &lt;TECHNOLOGY&gt;скелет&lt;&gt;&#xA;В этой системе обнаружены &lt;COMMODITY&gt;древние кости&lt;&gt;&#xA;Найдите &lt;STELLAR&gt;древние кости&lt;&gt;, сканируя миры из космоса (&lt;IMG&gt;SCAN&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_MAKE_SKELE_MSG6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите полный &lt;TECHNOLOGY&gt;окаменелый скелет&lt;&gt;.&#xA;В этой системе &lt;COMMODITY&gt;древние кости&lt;&gt; не обнаружены.&#xA;Откройте галактическую карту (&lt;IMG&gt;QUICK_MENU&lt;&gt;), находясь на звездолете, чтобы отправиться в другую систему.
                                { "Russian", "Соберите полный &lt;TECHNOLOGY&gt;скелет&lt;&gt;&#xA;В этой системе &lt;COMMODITY&gt;древние кости&lt;&gt; не обнаружены&#xA;Находясь в звездолёте, откройте галактическую карту (&lt;IMG&gt;QUICK_MENU&lt;&gt;), чтобы отправиться в другую систему" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_MAKE_SKELE_MSG7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите полный &lt;TECHNOLOGY&gt;окаменелый скелет&lt;&gt;.&#xA;В этой системе &lt;COMMODITY&gt;древние кости&lt;&gt; не обнаружены.&#xA;Вернитесь в космос и найдите планету, где есть &lt;COMMODITY&gt;древние кости&lt;&gt;.
                                -- Assemble a complete &lt;TECHNOLOGY&gt;fossil exhibit&lt;&gt;&#xA;No &lt;COMMODITY&gt;Ancient Bones&lt;&gt; detected on this planet.&#xA;Return to space and search for a planet featuring &lt;COMMODITY&gt;Ancient Bones&lt;&gt;
                                { "Russian", "Соберите полный &lt;TECHNOLOGY&gt;скелет&lt;&gt;&#xA;На этой планете &lt;COMMODITY&gt;древние кости&lt;&gt; не обнаружены&#xA;Вернитесь в космос и найдите планету, где есть &lt;COMMODITY&gt;древние кости&lt;&gt;." },
                            }
                        },
                        --#endregion

                        --#region UI_EXPED_MAKE_SKELE_OBJ_TIP
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_MAKE_SKELE_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;Постаменты для окаменелых скелетов&lt;&gt; можно изготовить с помощью &lt;STELLAR&gt;меню созидания&lt;&gt; (&lt;IMG&gt;BUILD_MENU&lt;&gt;). Соберите элементы скелета на постаменте, чтобы воссоздать давно вымерший организм. Готовые скелеты можно упаковать для простоты перемещения или продать заинтересованным коллекционерам.&#xA;&#xA;Найдите планету с подходящими ископаемыми слоями, а потом найдите нужные кости с помощью&lt;TECHNOLOGY&gt;разведки цели&lt;&gt; анализирующего визора (&lt;IMG&gt;AIM&lt;&gt;).&#xA;&#xA;Черепа: %CURRENT_HEADS%/%AMOUNT_HEADS% &#xA;Хвосты: %CURRENT_TAILS%/%AMOUNT_TAILS% &#xA;Конечности: %CURRENT_LIMBS%/%AMOUNT_LIMBS% &#xA;Грудные клетки: %CURRENT_BODIES%/%AMOUNT_BODIES%
                                -- &lt;TECHNOLOGY&gt;Fossil display plinths&lt;&gt; are constructed from &lt;STELLAR&gt;Build Menu&lt;&gt; (&lt;IMG&gt;BUILD_MENU&lt;&gt;). Assemble fossil parts on the plinth to recreate a long-lost organism. Finished skeletons can be packaged for easy redeployment, or sold to interested collectors.&#xA;&#xA;Locate a planet with viable fossil beds, and then pinpoint bones using the Analysis Visor's &lt;TECHNOLOGY&gt;Target Sweep&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;).&#xA;&#xA;Skulls: %CURRENT_HEADS%/%AMOUNT_HEADS% &#xA;Tails: %CURRENT_TAILS%/%AMOUNT_TAILS% &#xA;Limbs: %CURRENT_LIMBS%/%AMOUNT_LIMBS% &#xA;Ribcages: %CURRENT_BODIES%/%AMOUNT_BODIES%
                                { "Russian", "&lt;TECHNOLOGY&gt;Постаменты окаменелых скелетов&lt;&gt; можно изготовить из &lt;STELLAR&gt;меню строительства&lt;&gt; (&lt;IMG&gt;BUILD_MENU&lt;&gt;). Соберите части скелета на постаменте, чтобы воссоздать давно вымерший организм. Готовые скелеты можно упаковать для простоты перемещения или продать заинтересованным коллекционерам.&#xA;&#xA;Найдите планету с подходящими фоссилиями, а потом найдите нужные кости с помощью &lt;TECHNOLOGY&gt;разведки цели&lt;&gt; анализирующего визора (&lt;IMG&gt;AIM&lt;&gt;).&#xA;&#xA;Черепа: %CURRENT_HEADS%/%AMOUNT_HEADS% &#xA;Хвосты: %CURRENT_TAILS%/%AMOUNT_TAILS% &#xA;Конечности: %CURRENT_LIMBS%/%AMOUNT_LIMBS% &#xA;Грудные клетки: %CURRENT_BODIES%/%AMOUNT_BODIES%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_MAKE_SKELE_OBJ_TIP_ALT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;Постаменты для окаменелых скелетов&lt;&gt; можно изготовить с помощью &lt;STELLAR&gt;меню созидания&lt;&gt; (&lt;IMG&gt;BUILD_MENU&lt;&gt;). Соберите элементы скелета на постаменте, чтобы воссоздать давно вымерший организм. Готовые скелеты можно упаковать для простоты перемещения или продать заинтересованным коллекционерам.&#xA;&#xA;Найдите планету с подходящими ископаемыми слоями, а потом найдите нужные кости с помощью&lt;TECHNOLOGY&gt;разведки цели&lt;&gt; анализирующего визора (&lt;IMG&gt;AIM&lt;&gt;).
                                { "Russian", "&lt;TECHNOLOGY&gt;Постаменты окаменелых скелетов&lt;&gt; можно изготовить из &lt;STELLAR&gt;меню строительства&lt;&gt; (&lt;IMG&gt;BUILD_MENU&lt;&gt;). Соберите части скелета на постаменте, чтобы воссоздать давно вымерший организм. Готовые скелеты можно упаковать для простоты перемещения или продать заинтересованным коллекционерам.&#xA;&#xA;Найдите планету с подходящими фоссилиями, а потом найдите нужные кости с помощью &lt;TECHNOLOGY&gt;разведки цели&lt;&gt; анализирующего визора (&lt;IMG&gt;AIM&lt;&gt;)." },
                            }
                        },
                        --#endregion

                        --#region UI_EXHIBIT_ASSEMBLY_.*NAME
                        -- названия кнопки действия, макс. 40 букв
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXHIBIT_ASSEMBLY_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите окаменелый скелет
                                -- Assemble Fossil Display
                                { "Russian", "Собрать окаменелый скелет" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXHIBIT_ASSEMBLY_QUAD_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите окаменелый скелет четвероногого животного
                                -- Assemble quadruped fossil
                                { "Russian", "Собрать скелет четвероногого животного" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXHIBIT_ASSEMBLY_BI_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите окаменелый скелет двуногого животного
                                { "Russian", "Собрать скелет двуногого животного" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXHIBIT_ASSEMBLY_WORM_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите окаменелый скелет рептилии
                                -- Assemble reptilian fossil
                                { "Russian", "Собрать скелет рептилии" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXHIBIT_ASSEMBLY_GRUN_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите окаменелый скелет протосущества
                                -- Assemble protoform fossil
                                { "Russian", "Собрать скелет протосущества" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXHIBIT_ASSEMBLY_BIRD_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите окаменелый скелет летающего существа
                                -- Assemble avian fossil
                                { "Russian", "Собрать скелет летающего существа" },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXHIBIT_ASSEMBLY_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Расположите окаменевшие кости, чтобы собрать скелеты древних форм жизни
                                -- Arrange fossilised bones to recreate ancient lifeforms
                                { "Russian", "Расположите кости, чтобы воссоздать древнюю форму жизни" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXHIBIT_ASSEMBLY_LABEL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- УПАКОВАННЫЙ ЭКСПОНАТ
                                -- PACKAGE EXHIBIT
                                { "Russian", "УПАКОВАТЬ ЭКСПОНАТ" },
                            }
                        },

                        --#region UI_ANALYSE_PROP_SURVEY
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ANALYSE_PROP_SURVEY1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Выкопайте и проанализируйте погребенные данные: %CURRENT%/%AMOUNT%&#xA;Разведка цели определит координаты &lt;STELLAR&gt;закопанных тайников&lt;&gt;.&#xA;Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt; для раскопок.
                                { "Russian", "Выкопайте и проанализируйте погребенные данные: %CURRENT%/%AMOUNT%&#xA;Разведка цели покажет координаты &lt;STELLAR&gt;закопанных тайников&lt;&gt;&#xA;Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt; для раскопок" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ANALYSE_PROP_SURVEY_SWAP1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Выкопайте и проанализируйте погребенные данные: %CURRENT%/%AMOUNT%&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;, чтобы найти &lt;STELLAR&gt;закопанные тайники&lt;&gt;.&#xA;Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt; для раскопок.
                                { "Russian", "Выкопайте и проанализируйте погребенные данные: %CURRENT%/%AMOUNT%&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;, чтобы найти &lt;STELLAR&gt;закопанные тайники&lt;&gt;&#xA;Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt; для раскопок" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ANALYSE_PROP_SURVEY_OFF1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Выкопайте и проанализируйте погребенные данные: %CURRENT%/%AMOUNT%&#xA;Найдите &lt;STELLAR&gt;закопанные тайники&lt;&gt; с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;).&#xA;Для проведения раскопок используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt;.
                                { "Russian", "Выкопайте и проанализируйте погребенные данные: %CURRENT%/%AMOUNT%&#xA;Найдите &lt;STELLAR&gt;закопанные тайники&lt;&gt; с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)&#xA;Для проведения раскопок используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ANALYSE_PROP_SURVEY_CAR1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Выкопайте и проанализируйте погребенные данные: %CURRENT%/%AMOUNT%&#xA;Чтобы использовать разведку цели для поиска &lt;STELLAR&gt;закопанных тайников&lt;&gt;, выйдите из своего транспорта.&#xA;Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt; для раскопок.
                                { "Russian", "Выкопайте и проанализируйте погребенные данные: %CURRENT%/%AMOUNT%&#xA;Чтобы использовать разведку цели для поиска &lt;STELLAR&gt;закопанных тайников&lt;&gt;, выйдите из транспорта&#xA;Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt; для раскопок" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ANALYSE_PROP_SURVEY2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Выкопайте и проанализируйте погребенные данные: %CURRENT%/%AMOUNT%&#xA;Данная разведка цели определит координаты &lt;STELLAR&gt;закопанных тайников&lt;&gt;.&#xA;Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt; для раскопок.&#xA;Переключайте &lt;COMMODITY&gt;режимы мультитула&lt;&gt; с помощью &lt;IMG&gt;CYCLEWEAPON&lt;&gt;.
                                { "Russian", "Выкопайте и проанализируйте погребенные данные: %CURRENT%/%AMOUNT%&#xA;Разведка цели покажет координаты &lt;STELLAR&gt;закопанных тайников&lt;&gt;&#xA;Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt; для раскопок&#xA;Переключайте &lt;COMMODITY&gt;режимы мультитула&lt;&gt; с помощью &lt;IMG&gt;CYCLEWEAPON&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ANALYSE_PROP_SURVEY_SWAP2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Выкопайте и проанализируйте погребенные данные: %CURRENT%/%AMOUNT%&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;, чтобы найти &lt;STELLAR&gt;закопанные тайники&lt;&gt;.&#xA;Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt; для раскопок.&#xA;Переключайте &lt;COMMODITY&gt;режимы мультитула&lt;&gt; с помощью &lt;IMG&gt;CYCLEWEAPON&lt;&gt;.
                                { "Russian", "Выкопайте и проанализируйте погребенные данные: %CURRENT%/%AMOUNT%&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;, чтобы найти &lt;STELLAR&gt;закопанные тайники&lt;&gt;&#xA;Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt; для раскопок&#xA;Переключайте &lt;COMMODITY&gt;режимы мультитула&lt;&gt; с помощью &lt;IMG&gt;CYCLEWEAPON&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ANALYSE_PROP_SURVEY_OFF2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Выкопайте и проанализируйте погребенные данные: %CURRENT%/%AMOUNT%&#xA;Найдите &lt;STELLAR&gt;закопанные тайники&lt;&gt; с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;).&#xA;Для проведения раскопок используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt;.&#xA;Переключайте &lt;COMMODITY&gt;режимы мультитула&lt;&gt; с помощью &lt;IMG&gt;CYCLEWEAPON&lt;&gt;.
                                { "Russian", "Выкопайте и проанализируйте погребенные данные: %CURRENT%/%AMOUNT%&#xA;Найдите &lt;STELLAR&gt;закопанные тайники&lt;&gt; с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)&#xA;Для проведения раскопок используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt;&#xA;Переключайте &lt;COMMODITY&gt;режимы мультитула&lt;&gt; с помощью &lt;IMG&gt;CYCLEWEAPON&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ANALYSE_PROP_SURVEY_CAR2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Выкопайте и проанализируйте погребенные данные: %CURRENT%/%AMOUNT%&#xA;Чтобы использовать разведку цели для поиска &lt;STELLAR&gt;закопанных тайников&lt;&gt;, выйдите из своего транспорта.&#xA;Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt; для раскопок.
                                { "Russian", "Выкопайте и проанализируйте погребенные данные: %CURRENT%/%AMOUNT%&#xA;Чтобы использовать разведку цели для поиска &lt;STELLAR&gt;закопанных тайников&lt;&gt;, выйдите из транспорта&#xA;Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt; для раскопок" },
                            }
                        },
                        --#endregion

                        --#region UI_EXPED_ANALYSE_PROP_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_ANALYSE_PROP_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Выкопать и проанализировать погребенные данные: %CURRENT%/%AMOUNT%&#xA;Доберитесь до &lt;STELLAR&gt;планеты&lt;&gt;, чтобы начать поиски.
                                { "Russian", "Выкопайте и проанализировать погребенные данные: %CURRENT%/%AMOUNT%&#xA;Доберитесь до &lt;STELLAR&gt;планеты&lt;&gt;, чтобы начать поиски" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_ANALYSE_PROP_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Выкопайте и проанализируйте погребенные данные: %CURRENT%/%AMOUNT%&#xA;Найдите &lt;STELLAR&gt;выкопанные данные&lt;&gt; в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;)&#xA;Начните анализ данных с помощью &lt;IMG&gt;FE_ALT1&lt;&gt;.
                                { "Russian", "Выкопайте и проанализируйте погребенные данные: %CURRENT%/%AMOUNT%&#xA;Найдите &lt;STELLAR&gt;выкопанные данные&lt;&gt; в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;)&#xA;Начните анализ данных с помощью &lt;IMG&gt;FE_ALT1&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region UI_EXPED18_BONEFISH_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED18_BONEFISH_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поймайте &lt;TECHNOLOGY&gt;альбулю&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Найдите системы с &lt;STELLAR&gt;водой&lt;&gt; на &lt;TECHNOLOGY&gt;галактической карте&lt;&gt;.&#xA;Находясь на звездолете, откройте &lt;TECHNOLOGY&gt;галактическую карту&lt;&gt; (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                { "Russian", "Поймайте &lt;TECHNOLOGY&gt;альбулю&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Найдите системы с &lt;STELLAR&gt;водой&lt;&gt; на &lt;TECHNOLOGY&gt;галактической карте&lt;&gt;&#xA;Находясь в звездолёте, откройте &lt;TECHNOLOGY&gt;галактическую карту&lt;&gt; (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED18_BONEFISH_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поймайте &lt;TECHNOLOGY&gt;альбулю&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;В системе обнаружена &lt;TECHNOLOGY&gt;водная планета&lt;&gt;.&#xA;Океаны на поверхности планеты видны из космоса.
                                { "Russian", "Поймайте &lt;TECHNOLOGY&gt;альбулю&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;В системе обнаружена &lt;TECHNOLOGY&gt;водная планета&lt;&gt;&#xA;Океаны на поверхности планеты видны из космоса" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED18_BONEFISH_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поймайте &lt;TECHNOLOGY&gt;альбулю&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Найдите подходящий водоем, чтобы начать рыбачить.&#xA;Выберите &lt;TECHNOLOGY&gt;снасть&lt;&gt; с помощью &lt;IMG&gt;CYCLEWEAPON&lt;&gt;.
                                { "Russian", "Поймайте &lt;TECHNOLOGY&gt;альбулю&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Найдите подходящий водоем, чтобы начать рыбачить&#xA;Выберите &lt;TECHNOLOGY&gt;удочку&lt;&gt; с помощью &lt;IMG&gt;CYCLEWEAPON&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED18_BONEFISH_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поймайте &lt;TECHNOLOGY&gt;альбулю&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Найдите подходящий водоем и закиньте снасть с помощью &lt;IMG&gt;ATTACK&lt;&gt;.
                                { "Russian", "Поймайте &lt;TECHNOLOGY&gt;альбулю&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Найдите подходящий водоем и закиньте удочку с помощью &lt;IMG&gt;ATTACK&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED18_BONEFISH_MSG5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поймайте &lt;TECHNOLOGY&gt;альбулю&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;&lt;TECHNOLOGY&gt;Снасть&lt;&gt; не установлена.&#xA;Просматривайте чертежи в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;) с помощью &lt;IMG&gt;TECHMENU&lt;&gt;.&#xA;&lt;COMMODITY&gt;Закрепите&lt;&gt; указания по установке с помощью &lt;IMG&gt;PIN&lt;&gt;.
                                { "Russian", "Поймайте &lt;TECHNOLOGY&gt;альбулю&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;&lt;TECHNOLOGY&gt;Удочка&lt;&gt; не установлена&#xA;Изучите чертежи в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;) с помощью &lt;IMG&gt;TECHMENU&lt;&gt;&#xA;&lt;COMMODITY&gt;Закрепите&lt;&gt; указания по установке с помощью &lt;IMG&gt;PIN&lt;&gt;" },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED18_BONEFISH_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Для начала нужно достать &lt;TECHNOLOGY&gt;снасть&lt;&gt;. Когда она установлена и активирована, вы можете забросить крючок в любой водоем с помощью &lt;IMG&gt;ATTACK&lt;&gt;.&#xA;&#xA;Далее следите за поплавком и ждите улова. Если рыба клюет, нажмите и удерживайте &lt;IMG&gt;ATTACK&lt;&gt;, чтобы &lt;STELLAR&gt;вытащить ее из воды&lt;&gt;. Примечание: попытка вытащить рыбу, пока она не полностью заглотила крючок, может провалиться.&#xA;&#xA;&lt;SPECIAL&gt;Белая альбуля&lt;&gt; обитает в глубоких водоемах &lt;STELLAR&gt;токсичных&lt;&gt; миров. &lt;SPECIAL&gt;Шепчущую альбулю&lt;&gt; можно найти в любых глубоких водах по ночам.&#xA;&#xA;Изготовьте и воспользуйтесь специальной &lt;STELLAR&gt;наживкой&lt;&gt; или &lt;TECHNOLOGY&gt;приманкой&lt;&gt;, чтобы повысить вероятность улова. Примечание: любую пищу можно использовать как наживку.
                                { "Russian", "Для начала нужно достать &lt;TECHNOLOGY&gt;удочку&lt;&gt;. Когда она установлена и активирована, вы можете забросить крючок в любой водоем с помощью &lt;IMG&gt;ATTACK&lt;&gt;.&#xA;&#xA;Далее следите за поплавком и ждите улова. Если рыба клюет, нажмите и удерживайте &lt;IMG&gt;ATTACK&lt;&gt;, чтобы &lt;STELLAR&gt;вытащить ее из воды&lt;&gt;. Примечание: попытка вытащить рыбу, пока она не полностью заглотила крючок, может провалиться.&#xA;&#xA;&lt;SPECIAL&gt;Белая альбуля&lt;&gt; обитает в глубоких водоемах &lt;STELLAR&gt;токсичных&lt;&gt; миров. &lt;SPECIAL&gt;Шепчущую альбулю&lt;&gt; можно найти в любых глубоких водах по ночам.&#xA;&#xA;Изготовьте и воспользуйтесь специальной &lt;STELLAR&gt;наживкой&lt;&gt; или &lt;TECHNOLOGY&gt;приманкой&lt;&gt;, чтобы повысить вероятность улова. Примечание: любую пищу можно использовать как наживку." },
                            }
                        },

                        --#region UI_EXPED_BONE_TRADE_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_BONE_TRADE_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обменяйте кость у &lt;TECHNOLOGY&gt;коллекционера окаменелостей&lt;&gt;.&#xA;Найдите коллекционера окаменелостей на борту любой &lt;COMMODITY&gt;космической станции&lt;&gt;.
                                { "Russian", "Обменяйте кость у &lt;TECHNOLOGY&gt;коллекционера окаменелостей&lt;&gt;&#xA;Найдите его на борту любой &lt;COMMODITY&gt;космической станции&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_BONE_TRADE_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обменяйте кость у &lt;TECHNOLOGY&gt;коллекционера окаменелостей&lt;&gt;.&#xA;Договоритесь с коллекционером и заключите сделку.
                                { "Russian", "Обменяйте кость у &lt;TECHNOLOGY&gt;коллекционера окаменелостей&lt;&gt;&#xA;Договоритесь с ним и заключите сделку" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_BONE_TRADE_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обменяйте кость у &lt;TECHNOLOGY&gt;коллекционера окаменелостей&lt;&gt;.&#xA;Раскопайте другие ископаемые слои, чтобы найти больше костей.&#xA;В этой системе подходящие для раскопок места не найдены.&#xA;Находясь в космосе, выберите новую систему на галактической карте (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                { "Russian", "Обменяйте кость у &lt;TECHNOLOGY&gt;коллекционера окаменелостей&lt;&gt;&#xA;Раскопайте другие фоссилии, чтобы найти больше костей&#xA;В этой системе подходящие для раскопок места не найдены&#xA;Находясь в космосе, выберите новую систему на галактической карте (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_BONE_TRADE_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обменяйте кость у &lt;TECHNOLOGY&gt;коллекционера окаменелостей&lt;&gt;.&#xA;Подходящие ископаемые слои обнаружены на соседней планете.&#xA;Вернитесь в космос, чтобы найти на планете &lt;STELLAR&gt;древние кости&lt;&gt;.
                                { "Russian", "Обменяйте кость у &lt;TECHNOLOGY&gt;коллекционера окаменелостей&lt;&gt;&#xA;Подходящие фоссилии обнаружены на соседней планете&#xA;Вернитесь в космос, чтобы найти на планете &lt;STELLAR&gt;древние кости&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_BONE_TRADE_MSG5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обменяйте кость у &lt;TECHNOLOGY&gt;коллекционера окаменелостей&lt;&gt;.&#xA;Подходящие ископаемые слои обнаружены на соседней планете.&#xA;Сканируйте планеты из космоса (&lt;IMG&gt;SCAN&lt;&gt;), чтобы проверить данные планеты.
                                { "Russian", "Обменяйте кость у &lt;TECHNOLOGY&gt;коллекционера окаменелостей&lt;&gt;&#xA;Подходящие фоссилии обнаружены на соседней планете&#xA;Узнайте данные о планетах, сканируя их из космоса (&lt;IMG&gt;SCAN&lt;&gt;)" },
                            }
                        },
                        --#endregion

                        --#region UI_EXPED_BONE_TRADE_SURVEY
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_BONE_TRADE_SURVEY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обменяйте кость у &lt;TECHNOLOGY&gt;коллекционера окаменелостей&lt;&gt;.&#xA;Следуйте по &lt;STELLAR&gt;направляющим&lt;&gt;, чтобы найти ископаемые слои.&#xA;Данная &lt;TECHNOLOGY&gt;разведка цели&lt;&gt; определит координаты подходящих мест раскопок.&#xA;Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt;, чтобы выкопать кости.
                                { "Russian", "Обменяйте кость у &lt;TECHNOLOGY&gt;коллекционера окаменелостей&lt;&gt;&#xA;Следуйте по &lt;STELLAR&gt;направляющим&lt;&gt;, чтобы найти фоссилии&#xA;&lt;TECHNOLOGY&gt;Разведка цели&lt;&gt; определит координаты подходящих мест раскопок&#xA;Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt;, чтобы выкопать кости" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_BONE_TRADE_SURVEY_OFF" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обменяйте кость у &lt;TECHNOLOGY&gt;коллекционера окаменелостей&lt;&gt;.&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; с помощью анализирующего визора (&lt;IMG&gt;AIM&lt;&gt;), чтобы найти ископаемые слои.&#xA;Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt; (&lt;IMG&gt;ATTACK&lt;&gt;), чтобы выкопать кости.
                                { "Russian", "Обменяйте кость у &lt;TECHNOLOGY&gt;коллекционера окаменелостей&lt;&gt;&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; с помощью анализирующего визора (&lt;IMG&gt;AIM&lt;&gt;), чтобы найти фоссилии&#xA;Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt; (&lt;IMG&gt;ATTACK&lt;&gt;), чтобы выкопать кости" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_BONE_TRADE_SURVEY_SWAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обменяйте кость у &lt;TECHNOLOGY&gt;коллекционера окаменелостей&lt;&gt;.&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;, чтобы найти ископаемые слои.&#xA;Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt; (&lt;IMG&gt;ATTACK&lt;&gt;), чтобы выкопать кости.
                                { "Russian", "Обменяйте кость у &lt;TECHNOLOGY&gt;коллекционера окаменелостей&lt;&gt;&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;, чтобы найти фоссилии&#xA;Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt; (&lt;IMG&gt;ATTACK&lt;&gt;), чтобы выкопать кости" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_BONE_TRADE_SURVEY_CAR" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обменяйте кость у &lt;TECHNOLOGY&gt;коллекционера окаменелостей&lt;&gt;.&#xA;Чтобы подтвердить направление разведки, выйдите из своего транспорта.&#xA;Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt; (&lt;IMG&gt;ATTACK&lt;&gt;), чтобы выкопать кости.
                                { "Russian", "Обменяйте кость у &lt;TECHNOLOGY&gt;коллекционера окаменелостей&lt;&gt;&#xA;Чтобы подтвердить направление разведки, выйдите из транспорта&#xA;Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt; (&lt;IMG&gt;ATTACK&lt;&gt;), чтобы выкопать кости" },
                            }
                        },
                        --#endregion

                        --#region UI_EXPED18_CHEF_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED18_CHEF_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Накормите костями &lt;STELLAR&gt;итерацию Крона&lt;&gt;.&#xA;Крон предпочтет, чтобы кость была &lt;TECHNOLOGY&gt;приготовлена&lt;&gt;, а не подана в сыром виде.&#xA;Находясь в космосе, вызовите Аномалию с помощью быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                { "Russian", "Накормите костями &lt;STELLAR&gt;итерацию Крона&lt;&gt;&#xA;Крон предпочтет, чтобы кость была &lt;TECHNOLOGY&gt;приготовлена&lt;&gt;, а не подана в сыром виде&#xA;Находясь в космосе, вызовите Аномалию из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED18_CHEF_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Накормите костями &lt;STELLAR&gt;итерацию Крона&lt;&gt;.&#xA;Крон предпочтет, чтобы кость была &lt;TECHNOLOGY&gt;приготовлена&lt;&gt;, а не подана в сыром виде.&#xA;Найти Крона можно рядом с его грилем.
                                { "Russian", "Накормите костями &lt;STELLAR&gt;итерацию Крона&lt;&gt;&#xA;Крон предпочтет, чтобы кость была &lt;TECHNOLOGY&gt;приготовлена&lt;&gt;, а не подана в сыром виде&#xA;Найти Крона можно рядом с его грилем" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED18_CHEF_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите кость, которой можно накормить &lt;STELLAR&gt;итерацию Крона&lt;&gt;.&#xA;Раскопайте другие ископаемые слои, чтобы найти больше костей.&#xA;В этой системе подходящие для раскопок места не найдены.&#xA;Находясь в космосе, выберите новую систему на галактической карте (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                { "Russian", "Найдите кость, которой можно накормить &lt;STELLAR&gt;итерацию Крона&lt;&gt;&#xA;Раскопайте другие фоссилии, чтобы найти больше костей&#xA;В этой системе подходящие для раскопок места не найдены&#xA;Находясь в космосе, выберите новую систему на галактической карте (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED18_CHEF_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите кость, которой можно накормить &lt;STELLAR&gt;итерацию Крона&lt;&gt;.&#xA;Подходящие ископаемые слои обнаружены на соседней планете.&#xA;Вернитесь в космос, чтобы найти на планете &lt;STELLAR&gt;древние кости&lt;&gt;.
                                { "Russian", "Найдите кость, которой можно накормить &lt;STELLAR&gt;итерацию Крона&lt;&gt;&#xA;Подходящие фоссилии обнаружены на соседней планете&#xA;Вернитесь в космос, чтобы найти на планете &lt;STELLAR&gt;древние кости&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED18_CHEF_MSG5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите кость, которой можно накормить &lt;STELLAR&gt;итерацию Крона&lt;&gt;.&#xA;Подходящие ископаемые слои обнаружены на соседней планете.&#xA;Сканируйте планеты из космоса (&lt;IMG&gt;SCAN&lt;&gt;), чтобы проверить данные планеты.
                                { "Russian", "Найдите кость, которой можно накормить &lt;STELLAR&gt;итерацию Крона&lt;&gt;&#xA;Подходящие фоссилии обнаружены на соседней планете&#xA;Узнайте данные о планетах, сканируя их из космоса (&lt;IMG&gt;SCAN&lt;&gt;)" },
                            }
                        },
                        --#endregion

                        --#region UI_EXPED18_CHEF_SURVEY
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED18_CHEF_SURVEY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите кость, которой можно накормить &lt;STELLAR&gt;итерацию Крона&lt;&gt;.&#xA;Следуйте по &lt;STELLAR&gt;направляющим&lt;&gt;, чтобы найти ископаемые слои.&#xA;Данная &lt;TECHNOLOGY&gt;разведка цели&lt;&gt; определит координаты подходящих мест раскопок.&#xA;Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt;, чтобы выкопать кости.
                                { "Russian", "Найдите кость, которой можно накормить &lt;STELLAR&gt;итерацию Крона&lt;&gt;&#xA;Следуйте по &lt;STELLAR&gt;направляющим&lt;&gt;, чтобы найти фоссилии&#xA;&lt;TECHNOLOGY&gt;Разведка цели&lt;&gt; определит координаты подходящих мест раскопок&#xA;Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt;, чтобы выкопать кости" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED18_CHEF_SURVEY_OFF" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите кость, которой можно накормить &lt;STELLAR&gt;итерацию Крона&lt;&gt;.&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; с помощью анализирующего визора (&lt;IMG&gt;AIM&lt;&gt;), чтобы найти ископаемые слои.&#xA;Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt; (&lt;IMG&gt;ATTACK&lt;&gt;), чтобы выкопать кости.
                                { "Russian", "Найдите кость, которой можно накормить &lt;STELLAR&gt;итерацию Крона&lt;&gt;&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; с помощью анализирующего визора (&lt;IMG&gt;AIM&lt;&gt;), чтобы найти фоссилии&#xA;Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt; (&lt;IMG&gt;ATTACK&lt;&gt;), чтобы выкопать кости" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED18_CHEF_SURVEY_SWAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите кость, которой можно накормить &lt;STELLAR&gt;итерацию Крона&lt;&gt;.&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;, чтобы найти ископаемые слои.&#xA;Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt; (&lt;IMG&gt;ATTACK&lt;&gt;), чтобы выкопать кости.
                                { "Russian", "Найдите кость, которой можно накормить &lt;STELLAR&gt;итерацию Крона&lt;&gt;&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;, чтобы найти фоссилии&#xA;Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt; (&lt;IMG&gt;ATTACK&lt;&gt;), чтобы выкопать кости" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED18_CHEF_SURVEY_CAR" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите кость, которой можно накормить &lt;STELLAR&gt;итерацию Крона&lt;&gt;.&#xA;Чтобы подтвердить направление разведки, выйдите из своего транспорта.&#xA;Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt; (&lt;IMG&gt;ATTACK&lt;&gt;), чтобы выкопать кости.
                                { "Russian", "Найдите кость, которой можно накормить &lt;STELLAR&gt;итерацию Крона&lt;&gt;&#xA;Чтобы подтвердить направление разведки, выйдите из транспорта&#xA;Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt; (&lt;IMG&gt;ATTACK&lt;&gt;), чтобы выкопать кости" },
                            }
                        },
                        --#endregion

                        --#region UI_EXPED_RUIN_LOOT_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_RUIN_LOOT_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Прозондируйте &lt;SPECIAL&gt;камни памяти&lt;&gt;: %CURRENT%/%AMOUNT%.&#xA;В этой системе &lt;TECHNOLOGY&gt;миры с реликвиями&lt;&gt; не обнаружены.&#xA;Находясь на борту звездолета, откройте &lt;TECHNOLOGY&gt;галактическую карту&lt;&gt; с помощью &lt;IMG&gt;QUICK_MENU&lt;&gt;.
                                { "Russian", "Прозондируйте &lt;SPECIAL&gt;камни памяти&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;В этой системе &lt;TECHNOLOGY&gt;миры с реликвиями&lt;&gt; не обнаружены&#xA;Находясь в звездолёта, откройте &lt;TECHNOLOGY&gt;галактическую карту&lt;&gt; с помощью &lt;IMG&gt;QUICK_MENU&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_RUIN_LOOT_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Прозондируйте &lt;SPECIAL&gt;камни памяти&lt;&gt;: %CURRENT%/%AMOUNT%.&#xA;В этой системе обнаружены &lt;TECHNOLOGY&gt;миры с реликвиями&lt;&gt;.&#xA;Изучите параметры планеты из космоса с помощью &lt;IMG&gt;SHIPSCAN&lt;&gt;.
                                { "Russian", "Прозондируйте &lt;SPECIAL&gt;камни памяти&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;В этой системе обнаружены &lt;TECHNOLOGY&gt;миры с реликвиями&lt;&gt;&#xA;Изучите параметры планеты из космоса с помощью &lt;IMG&gt;SHIPSCAN&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_RUIN_LOOT_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Прозондируйте &lt;SPECIAL&gt;камни памяти&lt;&gt;: %CURRENT%/%AMOUNT%.&#xA;&lt;TECHNOLOGY&gt;Мир с реликвиями&lt;&gt; обнаружен в этой системе.&#xA;Вернитесь в космос, чтобы изучить параметры планеты.
                                { "Russian", "Прозондируйте &lt;SPECIAL&gt;камни памяти&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;&lt;TECHNOLOGY&gt;Мир с реликвиями&lt;&gt; обнаружен в этой системе&#xA;Вернитесь в космос, чтобы изучить параметры планеты" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_RUIN_LOOT_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Прозондируйте &lt;SPECIAL&gt;камни памяти&lt;&gt;: %CURRENT%/%AMOUNT%.&#xA;Воспользуйтесь &lt;TECHNOLOGY&gt;разведкой цели&lt;&gt;, чтобы найти камни памяти.
                                { "Russian", "Прозондируйте &lt;SPECIAL&gt;камни памяти&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Воспользуйтесь &lt;TECHNOLOGY&gt;разведкой цели&lt;&gt;, чтобы найти камни памяти" },
                            }
                        },
                        --#endregion

                        --#region UI_EXPED_RUINLOOT_SURVEY
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_RUINLOOT_SURVEY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Прозондируйте &lt;SPECIAL&gt;камни памяти&lt;&gt;: %CURRENT%/%AMOUNT%.&#xA;Двигайтесь по &lt;STELLAR&gt;направляющим&lt;&gt;, чтобы найти активные камни.
                                { "Russian", "Прозондируйте &lt;SPECIAL&gt;камни памяти&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Двигайтесь по &lt;STELLAR&gt;направляющим&lt;&gt;, чтобы найти активные камни" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_RUINLOOT_SURVEY_OFF" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Прозондируйте &lt;SPECIAL&gt;камни памяти&lt;&gt;: %CURRENT%/%AMOUNT%.&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы найти активные камни.
                                { "Russian", "Прозондируйте &lt;SPECIAL&gt;камни памяти&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы найти активные камни" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_RUINLOOT_SURVEY_SWAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Прозондируйте &lt;SPECIAL&gt;камни памяти&lt;&gt;: %CURRENT%/%AMOUNT%.&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;
                                { "Russian", "Прозондируйте &lt;SPECIAL&gt;камни памяти&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_RUINLOOT_SURVEY_CAR" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Прозондируйте &lt;SPECIAL&gt;камни памяти&lt;&gt;: %CURRENT%/%AMOUNT%.&#xA;Используйте &lt;STELLAR&gt;разведку цели&lt;&gt;, чтобы найти активные камни.&#xA;Чтобы подтвердить направление разведки, выйдите из своего транспорта.
                                { "Russian", "Прозондируйте &lt;SPECIAL&gt;камни памяти&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Используйте &lt;STELLAR&gt;разведку цели&lt;&gt;, чтобы найти активные камни&#xA;Чтобы подтвердить направление разведки, выйдите из транспорта" },
                            }
                        },
                        --#endregion

                        --#region UI_EXPED_BONE_GUARDIAN_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_BONE_GUARDIAN_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Победите &lt;SPECIAL&gt;древних стражей&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Стражи защищают &lt;STELLAR&gt;кости&lt;&gt; павших.&#xA;В этой системе подходящие для раскопок места не найдены.&#xA;Находясь в космосе, выберите новую систему на галактической карте (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                { "Russian", "Победите &lt;SPECIAL&gt;древних стражей&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Стражи защищают &lt;STELLAR&gt;кости&lt;&gt; павших&#xA;В этой системе подходящие для раскопок места не найдены&#xA;Находясь в космосе, выберите новую систему на галактической карте (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_BONE_GUARDIAN_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Победите &lt;SPECIAL&gt;древних стражей&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Стражи защищают кости павших.&#xA;Вернитесь в космос, чтобы искать на планетах &lt;STELLAR&gt;древние кости&lt;&gt;.
                                { "Russian", "Победите &lt;SPECIAL&gt;древних стражей&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Стражи защищают кости павших&#xA;Вернитесь в космос, чтобы найти на планетах &lt;STELLAR&gt;древние кости&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_BONE_GUARDIAN_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Победите &lt;SPECIAL&gt;древних стражей&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Стражи защищают кости павших.&#xA;Сканируйте планеты из космоса (&lt;IMG&gt;SCAN&lt;&gt;), чтобы проверять планетарные данные и находить &lt;STELLAR&gt;древние кости&lt;&gt;.
                                { "Russian", "Победите &lt;SPECIAL&gt;древних стражей&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Стражи защищают кости павших&#xA;Сканируйте планеты из космоса (&lt;IMG&gt;SCAN&lt;&gt;), чтобы найти &lt;STELLAR&gt;древние кости&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region UI_BONE_GUARDIAN_SURVEY
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BONE_GUARDIAN_SURVEY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Победите &lt;SPECIAL&gt;древних стражей&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Стражи защищают кости павших.&#xA;&lt;TECHNOLOGY&gt;Разведка цели&lt;&gt; определит координаты подходящих мест раскопок.&#xA;Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt;, чтобы выкопать кости.
                                { "Russian", "Победите &lt;SPECIAL&gt;древних стражей&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Стражи защищают кости павших&#xA;&lt;TECHNOLOGY&gt;Разведка цели&lt;&gt; определит координаты подходящих мест раскопок&#xA;Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt;, чтобы выкопать кости" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BONE_GUARDIAN_SURVEY_OFF" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Победите &lt;SPECIAL&gt;древних стражей&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Стражи защищают кости павших.&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; с помощью анализирующего визора (&lt;IMG&gt;AIM&lt;&gt;), чтобы найти ископаемые слои.&#xA;Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt; (&lt;IMG&gt;ATTACK&lt;&gt;), чтобы выкопать кости.
                                { "Russian", "Победите &lt;SPECIAL&gt;древних стражей&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Стражи защищают кости павших&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; с помощью анализирующего визора (&lt;IMG&gt;AIM&lt;&gt;), чтобы найти фоссилии&#xA;Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt; (&lt;IMG&gt;ATTACK&lt;&gt;), чтобы выкопать кости" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BONE_GUARDIAN_SURVEY_SWAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Победите &lt;SPECIAL&gt;древних стражей&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Стражи защищают кости павших.&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;.&#xA;Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt; (&lt;IMG&gt;ATTACK&lt;&gt;), чтобы выкопать кости.
                                { "Russian", "Победите &lt;SPECIAL&gt;древних стражей&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Стражи защищают кости павших&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;&#xA;Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt; (&lt;IMG&gt;ATTACK&lt;&gt;), чтобы выкопать кости" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BONE_GUARDIAN_SURVEY_CAR" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Победите &lt;SPECIAL&gt;древних стражей&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Стражи защищают &lt;STELLAR&gt;кости&lt;&gt; павших.&#xA;Чтобы подтвердить направление разведки, выйдите из своего транспорта.&#xA;Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt; (&lt;IMG&gt;ATTACK&lt;&gt;), чтобы выкопать кости.
                                { "Russian", "Победите &lt;SPECIAL&gt;древних стражей&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Стражи защищают &lt;STELLAR&gt;кости&lt;&gt; павших&#xA;Чтобы подтвердить направление разведки, выйдите из транспорта&#xA;Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt; (&lt;IMG&gt;ATTACK&lt;&gt;), чтобы выкопать кости" },
                            }
                        },
                        --#endregion

                        --#region UI_EXPED_SELL_BONES_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_SELL_BONES_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Продайте окаменелости на галактическом рынке: %CURRENT%&lt;IMG&gt;&lt;&gt;/%AMOUNT%&lt;IMG&gt;&lt;&gt; юн.&#xA;Найдите &lt;STELLAR&gt;торговый терминал&lt;&gt; на борту любой &lt;COMMODITY&gt;космической станции&lt;&gt;.
                                { "Russian", "Продайте окаменелости на галактическом рынке: &lt;IMG&gt;UNITS&lt;&gt;%CURRENT%/%AMOUNT%&#xA;Найдите &lt;STELLAR&gt;торговый терминал&lt;&gt; на борту любой &lt;COMMODITY&gt;космической станции&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_SELL_BONES_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Продайте окаменелости на галактическом рынке: %CURRENT%&lt;IMG&gt;&lt;&gt;/%AMOUNT%&lt;IMG&gt;&lt;&gt; юн.&#xA;Продайте свою коллекцию через &lt;COMMODITY&gt;торговый терминал&lt;&gt;.
                                { "Russian", "Продайте окаменелости на галактическом рынке: &lt;IMG&gt;UNITS&lt;&gt;%CURRENT%/%AMOUNT%&#xA;Продайте свою коллекцию через &lt;COMMODITY&gt;торговый терминал&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_SELL_BONES_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Продайте окаменелости на галактическом рынке: %CURRENT%&lt;IMG&gt;&lt;&gt;/%AMOUNT%&lt;IMG&gt;&lt;&gt; юн.&#xA;Раскопайте другие ископаемые слои, чтобы найти больше костей.&#xA;В этой системе подходящие для раскопок места не найдены.&#xA;Находясь в космосе, выберите новую систему на галактической карте (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                { "Russian", "Продайте окаменелости на галактическом рынке: &lt;IMG&gt;UNITS&lt;&gt;%CURRENT%/%AMOUNT%&#xA;Раскопайте другие фоссилии, чтобы найти больше костей&#xA;В этой системе подходящие для раскопок места не найдены&#xA;Находясь в космосе, выберите новую систему на галактической карте (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_SELL_BONES_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Продайте окаменелости на галактическом рынке: %CURRENT%&lt;IMG&gt;&lt;&gt;/%AMOUNT%&lt;IMG&gt;&lt;&gt; юн.&#xA;Подходящие ископаемые слои обнаружены на соседней планете.&#xA;Вернитесь в космос, чтобы найти на планете &lt;STELLAR&gt;древние кости&lt;&gt;.
                                { "Russian", "Продайте окаменелости на галактическом рынке: &lt;IMG&gt;UNITS&lt;&gt;%CURRENT%/%AMOUNT%&#xA;Подходящие фоссилии обнаружены на соседней планете&#xA;Вернитесь в космос, чтобы найти на планете &lt;STELLAR&gt;древние кости&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_SELL_BONES_MSG5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Продайте окаменелости на галактическом рынке: %CURRENT%&lt;IMG&gt;&lt;&gt;/%AMOUNT%&lt;IMG&gt;&lt;&gt; юн.&#xA;Подходящие ископаемые слои обнаружены на соседней планете.&#xA;Сканируйте планеты из космоса (&lt;IMG&gt;SCAN&lt;&gt;), чтобы проверить данные планеты.
                                { "Russian", "Продайте окаменелости на галактическом рынке: &lt;IMG&gt;UNITS&lt;&gt;%CURRENT%/%AMOUNT%&#xA;Подходящие фоссилии обнаружены на соседней планете&#xA;Сканируйте планеты из космоса (&lt;IMG&gt;SCAN&lt;&gt;), чтобы проверить данные планеты" },
                            }
                        },
                        --#endregion

                        --#region UI_EXPED_SELL_BONES_SURVEY
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_SELL_BONES_SURVEY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Продайте окаменелости на галактическом рынке: %CURRENT%&lt;IMG&gt;&lt;&gt;/%AMOUNT%&lt;IMG&gt;&lt;&gt; юн.&#xA;Следуйте по &lt;STELLAR&gt;направляющим&lt;&gt;, чтобы найти ископаемые слои.&#xA;&lt;TECHNOLOGY&gt;Разведка цели&lt;&gt; определит координаты подходящих мест раскопок.&#xA;Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt;, чтобы выкопать кости.
                                { "Russian", "Продайте окаменелости на галактическом рынке: &lt;IMG&gt;UNITS&lt;&gt;%CURRENT%/%AMOUNT%&#xA;Следуйте по &lt;STELLAR&gt;направляющим&lt;&gt;, чтобы найти фоссилии&#xA;&lt;TECHNOLOGY&gt;Разведка цели&lt;&gt; определит координаты подходящих мест раскопок&#xA;Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt;, чтобы выкопать кости" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_SELL_BONES_SURVEY_OFF" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Продайте окаменелости на галактическом рынке: %CURRENT%&lt;IMG&gt;&lt;&gt;/%AMOUNT%&lt;IMG&gt;&lt;&gt; юн.&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; с помощью анализирующего визора (&lt;IMG&gt;AIM&lt;&gt;), чтобы найти ископаемые слои.&#xA;Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt; (&lt;IMG&gt;ATTACK&lt;&gt;), чтобы выкопать кости.
                                { "Russian", "Продайте окаменелости на галактическом рынке: &lt;IMG&gt;UNITS&lt;&gt;%CURRENT%/%AMOUNT%&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; с помощью анализирующего визора (&lt;IMG&gt;AIM&lt;&gt;), чтобы найти фоссилии&#xA;Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt; (&lt;IMG&gt;ATTACK&lt;&gt;), чтобы выкопать кости" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_SELL_BONES_SURVEY_SWAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Продайте окаменелости на галактическом рынке: %CURRENT%&lt;IMG&gt;&lt;&gt;/%AMOUNT%&lt;IMG&gt;&lt;&gt; юн.&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;, чтобы найти ископаемые слои.&#xA;Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt; (&lt;IMG&gt;ATTACK&lt;&gt;), чтобы выкопать кости.
                                { "Russian", "Продайте окаменелости на галактическом рынке: &lt;IMG&gt;UNITS&lt;&gt;%CURRENT%/%AMOUNT%&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;, чтобы найти фоссилии&#xA;Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt; (&lt;IMG&gt;ATTACK&lt;&gt;), чтобы выкопать кости" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_SELL_BONES_SURVEY_CAR" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Продайте окаменелости на галактическом рынке: %CURRENT%&lt;IMG&gt;&lt;&gt;/%AMOUNT%&lt;IMG&gt;&lt;&gt; юн.&#xA;Чтобы подтвердить направление разведки, выйдите из своего транспорта.&#xA;Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt; (&lt;IMG&gt;ATTACK&lt;&gt;), чтобы выкопать кости.
                                { "Russian", "Продайте окаменелости на галактическом рынке: &lt;IMG&gt;UNITS&lt;&gt;%CURRENT%/%AMOUNT%&#xA;Чтобы подтвердить направление разведки, выйдите из транспорта&#xA;Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt; (&lt;IMG&gt;ATTACK&lt;&gt;), чтобы выкопать кости" },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_RUIN_LOOT_DESC_D" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вы исследовали камни памяти (%AMOUNT%)
                                { "Russian", "Вы исследовали камни памяти (%AMOUNT% шт.)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_BONE_GUARDIAN2_DESC_D" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вы победили древних стражей (%NUM%)
                                { "Russian", "Вы победили древних стражей (%NUM% шт.)" },
                            }
                        },

                        --#region UI_EXPED_COOK_BONES_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_COOK_BONES_MSG1_A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите кости, чтобы &lt;STELLAR&gt;сварить&lt;&gt; из них &lt;STELLAR&gt;бульон&lt;&gt;.&#xA;В этой системе подходящие для раскопок места не найдены.&#xA;Находясь в космосе, выберите новую систему на галактической карте (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                { "Russian", "Соберите кости, чтобы &lt;STELLAR&gt;сварить&lt;&gt; из них &lt;STELLAR&gt;бульон&lt;&gt;&#xA;В этой системе подходящие для раскопок места не найдены&#xA;Находясь в космосе, выберите новую систему на галактической карте (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_COOK_BONES_MSG1_B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите кости, чтобы &lt;STELLAR&gt;сварить&lt;&gt; из них &lt;STELLAR&gt;бульон&lt;&gt;.&#xA;Подходящие ископаемые слои обнаружены на соседней планете.&#xA;Вернитесь в космос, чтобы найти на планете &lt;STELLAR&gt;древние кости&lt;&gt;.
                                { "Russian", "Соберите кости, чтобы &lt;STELLAR&gt;сварить&lt;&gt; из них &lt;STELLAR&gt;бульон&lt;&gt;&#xA;Подходящие фоссилии обнаружены на соседней планете&#xA;Вернитесь в космос, чтобы найти на планете &lt;STELLAR&gt;древние кости&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_COOK_BONES_MSG1_C" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите кости, чтобы &lt;STELLAR&gt;сварить&lt;&gt; из них &lt;STELLAR&gt;бульон&lt;&gt;.&#xA;Подходящие ископаемые слои обнаружены на соседней планете.&#xA;Сканируйте планеты из космоса (&lt;IMG&gt;SCAN&lt;&gt;), чтобы проверить данные планеты.
                                { "Russian", "Соберите кости, чтобы &lt;STELLAR&gt;сварить&lt;&gt; из них &lt;STELLAR&gt;бульон&lt;&gt;&#xA;Подходящие фоссилии обнаружены на соседней планете&#xA;Сканируйте планеты из космоса (&lt;IMG&gt;SCAN&lt;&gt;), чтобы проверить данные планеты" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_COOK_BONES_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Переработайте &lt;TRADEABLE&gt;окаменелости&lt;&gt; в &lt;TECHNOLOGY&gt;переработчике нутриентов&lt;&gt;.&#xA;Осмотреть развернутый переработчик нутриентов можно с помощью &lt;IMG&gt;INTERACT&lt;&gt;.&#xA;Храните ингредиенты в переработчике, чтобы иметь к ним быстрый доступ.
                                { "Russian", "Переработайте &lt;TRADEABLE&gt;окаменелости&lt;&gt; в &lt;TECHNOLOGY&gt;переработчике нутриентов&lt;&gt;&#xA;Осмотреть развернутый переработчик нутриентов можно с помощью &lt;IMG&gt;INTERACT&lt;&gt;&#xA;Храните ингредиенты в переработчике, чтобы иметь к ним быстрый доступ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_COOK_BONES_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Переработайте &lt;TRADEABLE&gt;размягченный костный мозг&lt;&gt; в &lt;TECHNOLOGY&gt;переработчике нутриентов&lt;&gt;.&#xA;Осмотреть развернутый переработчик нутриентов можно с помощью &lt;IMG&gt;INTERACT&lt;&gt;.&#xA;Храните ингредиенты в переработчике, чтобы иметь к ним быстрый доступ.
                                { "Russian", "Переработайте &lt;TRADEABLE&gt;размягченный костный мозг&lt;&gt; в &lt;TECHNOLOGY&gt;переработчике нутриентов&lt;&gt;&#xA;Осмотреть развернутый переработчик нутриентов можно с помощью &lt;IMG&gt;INTERACT&lt;&gt;&#xA;Храните ингредиенты в переработчике, чтобы иметь к ним быстрый доступ" },
                            }
                        },
                        --#endregion

                        --#region UI_EXPED_COOK_BONES_SURVEY
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_COOK_BONES_SURVEY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите кости, чтобы &lt;STELLAR&gt;сварить&lt;&gt; из них &lt;STELLAR&gt;бульон&lt;&gt;.&#xA;Следуйте по &lt;STELLAR&gt;направляющим&lt;&gt;, чтобы найти ископаемые слои.&#xA;Данная &lt;TECHNOLOGY&gt;разведка цели&lt;&gt; определит координаты подходящих мест раскопок.&#xA;Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt;, чтобы выкопать кости.
                                { "Russian", "Соберите кости, чтобы &lt;STELLAR&gt;сварить&lt;&gt; из них &lt;STELLAR&gt;бульон&lt;&gt;&#xA;Следуйте по &lt;STELLAR&gt;направляющим&lt;&gt;, чтобы найти фоссилии&#xA;&lt;TECHNOLOGY&gt;Разведка цели&lt;&gt; определит координаты подходящих мест раскопок&#xA;Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt;, чтобы выкопать кости" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_COOK_BONES_SURVEY_SWAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите кости, чтобы &lt;STELLAR&gt;сварить&lt;&gt; из них &lt;STELLAR&gt;бульон&lt;&gt;.&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; с помощью анализирующего визора (&lt;IMG&gt;AIM&lt;&gt;), чтобы найти ископаемые слои.&#xA;Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt; (&lt;IMG&gt;ATTACK&lt;&gt;), чтобы выкопать кости.
                                { "Russian", "Соберите кости, чтобы &lt;STELLAR&gt;сварить&lt;&gt; из них &lt;STELLAR&gt;бульон&lt;&gt;&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; с помощью анализирующего визора (&lt;IMG&gt;AIM&lt;&gt;), чтобы найти фоссилии&#xA;Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt; (&lt;IMG&gt;ATTACK&lt;&gt;), чтобы выкопать кости" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_COOK_BONES_SURVEY_OFF" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите кости, чтобы &lt;STELLAR&gt;сварить&lt;&gt; из них &lt;STELLAR&gt;бульон&lt;&gt;.&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;, чтобы найти ископаемые слои.&#xA;Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt; (&lt;IMG&gt;ATTACK&lt;&gt;), чтобы выкопать кости.
                                { "Russian", "Соберите кости, чтобы &lt;STELLAR&gt;сварить&lt;&gt; из них &lt;STELLAR&gt;бульон&lt;&gt;&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;, чтобы найти фоссилии&#xA;Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt; (&lt;IMG&gt;ATTACK&lt;&gt;), чтобы выкопать кости" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_COOK_BONES_SURVEY_CAR" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите кости, чтобы &lt;STELLAR&gt;сварить&lt;&gt; из них &lt;STELLAR&gt;бульон&lt;&gt;.&#xA;Чтобы подтвердить направление разведки, выйдите из своего транспорта.&#xA;Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt; (&lt;IMG&gt;ATTACK&lt;&gt;), чтобы выкопать кости.
                                { "Russian", "Соберите кости, чтобы &lt;STELLAR&gt;сварить&lt;&gt; из них &lt;STELLAR&gt;бульон&lt;&gt;&#xA;Чтобы подтвердить направление разведки, выйдите из транспорта&#xA;Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt; (&lt;IMG&gt;ATTACK&lt;&gt;), чтобы выкопать кости" },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_SELL_BONES_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Изучайте планеты из космоса с помощью сканера звездолета (&lt;IMG&gt;SCAN&lt;&gt;), чтобы найти ископаемые слои. Ищите окаменелости на планетах с &lt;STELLAR&gt;древними костями&lt;&gt;.&#xA;&#xA;Окаменелости можно продать в любом &lt;STELLAR&gt;терминале галактической торговли&lt;&gt;. Примечание: полностью собранные скелеты стоят дороже отдельных костей.
                                { "Russian", "Изучайте планеты из космоса с помощью сканера звездолёта (&lt;IMG&gt;SCAN&lt;&gt;), чтобы найти фоссилии. Ищите окаменелости на планетах с &lt;STELLAR&gt;древними костями&lt;&gt;.&#xA;&#xA;Окаменелости можно продать в любом &lt;STELLAR&gt;терминале галактической торговли&lt;&gt;. Примечание: полностью собранные скелеты стоят дороже отдельных костей." },
                            }
                        },

                        --#region UI_BONES_TUT_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BONES_TUT_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Изучите чертеж &lt;TECHNOLOGY&gt;витрины для окаменелостей&lt;&gt; на борту Космической Аномалии.&#xA;Используйте витрины, чтобы собирать скелеты различных животных из добытых костей.&#xA;Находясь в космосе, вызовите &lt;SPECIAL&gt;Аномалию&lt;&gt; через быстрое меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                { "Russian", "Изучите чертеж &lt;TECHNOLOGY&gt;витрины для окаменелостей&lt;&gt; на борту Космической Аномалии&#xA;Используйте витрины, чтобы собирать скелеты различных животных из добытых костей&#xA;Находясь в космосе, вызовите &lt;SPECIAL&gt;Аномалию&lt;&gt; через быстрое меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BONES_TUT_MSG1_NEXUS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Изучите чертеж &lt;TECHNOLOGY&gt;витрины для окаменелостей&lt;&gt;.&#xA;Используйте витрины, чтобы собирать скелеты различных животных из добытых костей.&#xA;Посетите &lt;STELLAR&gt;станцию строительных исследований&lt;&gt;.
                                { "Russian", "Изучите чертеж &lt;TECHNOLOGY&gt;витрины для окаменелостей&lt;&gt;&#xA;Используйте витрины, чтобы собирать скелеты различных животных&#xA;Посетите &lt;STELLAR&gt;станцию строительных исследований&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BONES_TUT_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добудьте достаточно костей, чтобы собрать &lt;TECHNOLOGY&gt;весь скелет&lt;&gt;.&#xA;Добудьте &lt;STELLAR&gt;череп&lt;&gt; (%CURRENT_HEADS%/%AMOUNT_HEADS%), &lt;STELLAR&gt;грудную клетку&lt;&gt; (%CURRENT_BODIES%/%AMOUNT_BODIES%), &lt;STELLAR&gt;хвост&lt;&gt; (%CURRENT_TAILS%/%AMOUNT_TAILS%) и &lt;STELLAR&gt;конечности&lt;&gt; (%CURRENT_LIMBS%/%AMOUNT_LIMBS%).
                                { "Russian", "Добудьте достаточно костей, чтобы собрать &lt;TECHNOLOGY&gt;весь скелет&lt;&gt;&#xA;Добудьте &lt;STELLAR&gt;череп&lt;&gt; (%CURRENT_HEADS%/%AMOUNT_HEADS%), &lt;STELLAR&gt;грудную клетку&lt;&gt; (%CURRENT_BODIES%/%AMOUNT_BODIES%), &lt;STELLAR&gt;хвост&lt;&gt; (%CURRENT_TAILS%/%AMOUNT_TAILS%) и &lt;STELLAR&gt;конечности&lt;&gt; (%CURRENT_LIMBS%/%AMOUNT_LIMBS%)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BONES_TUT_MSG2_TERRAIN_MODE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добудьте достаточно костей, чтобы собрать &lt;TECHNOLOGY&gt;весь скелет&lt;&gt;.&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы найти ископаемые слои.&#xA;Выберите режим &lt;TECHNOLOGY&gt;ландшафтного манипулятора&lt;&gt; (&lt;IMG&gt;CYCLEWEAPON&lt;&gt;), чтобы выкопать древние кости.&#xA;Добудьте &lt;STELLAR&gt;череп&lt;&gt; (%CURRENT_HEADS%/%AMOUNT_HEADS%), &lt;STELLAR&gt;грудную клетку&lt;&gt; (%CURRENT_BODIES%/%AMOUNT_BODIES%), &lt;STELLAR&gt;хвост&lt;&gt; (%CURRENT_TAILS%/%AMOUNT_TAILS%) и &lt;STELLAR&gt;конечности&lt;&gt; (%CURRENT_LIMBS%/%AMOUNT_LIMBS%).
                                { "Russian", "Добудьте достаточно костей, чтобы собрать &lt;TECHNOLOGY&gt;весь скелет&lt;&gt;&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы найти фоссилии&#xA;Выберите режим &lt;TECHNOLOGY&gt;ландшафтного манипулятора&lt;&gt; (&lt;IMG&gt;CYCLEWEAPON&lt;&gt;), чтобы выкопать древние кости" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BONES_TUT_MSG2_TERRAIN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добудьте достаточно костей, чтобы собрать &lt;TECHNOLOGY&gt;весь скелет&lt;&gt;.&#xA;Изготовьте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt; в своем мультитуле.
                                { "Russian", "Добудьте достаточно костей, чтобы собрать &lt;TECHNOLOGY&gt;весь скелет&lt;&gt;&#xA;Изготовьте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt; в мультитуле" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BONES_TUT_MSG2_SHIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добудьте достаточно костей, чтобы собрать &lt;TECHNOLOGY&gt;весь скелет&lt;&gt;.&#xA;Высадитесь на поверхности планеты, чтобы начать поиски ископаемых.&#xA;Добудьте &lt;STELLAR&gt;череп&lt;&gt; (%CURRENT_HEADS%/%AMOUNT_HEADS%), &lt;STELLAR&gt;грудную клетку&lt;&gt; (%CURRENT_BODIES%/%AMOUNT_BODIES%), &lt;STELLAR&gt;хвост&lt;&gt; (%CURRENT_TAILS%/%AMOUNT_TAILS%) и &lt;STELLAR&gt;конечности&lt;&gt; (%CURRENT_LIMBS%/%AMOUNT_LIMBS%).
                                { "Russian", "Добудьте достаточно костей, чтобы собрать &lt;TECHNOLOGY&gt;весь скелет&lt;&gt;&#xA;Высадитесь на поверхности планеты, чтобы начать поиски ископаемых&#xA;Добудьте &lt;STELLAR&gt;череп&lt;&gt; (%CURRENT_HEADS%/%AMOUNT_HEADS%), &lt;STELLAR&gt;грудную клетку&lt;&gt; (%CURRENT_BODIES%/%AMOUNT_BODIES%), &lt;STELLAR&gt;хвост&lt;&gt; (%CURRENT_TAILS%/%AMOUNT_TAILS%) и &lt;STELLAR&gt;конечности&lt;&gt; (%CURRENT_LIMBS%/%AMOUNT_LIMBS%)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BONES_TUT_MSG2A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добудьте достаточно костей, чтобы спланировать и собрать &lt;TECHNOLOGY&gt;весь скелет&lt;&gt;.&#xA;В этой системе подходящие для раскопок места не найдены.&#xA;Находясь в космосе, выберите новую систему на галактической карте (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                { "Russian", "Добудьте достаточно костей, чтобы собрать &lt;TECHNOLOGY&gt;весь скелет&lt;&gt;&#xA;В этой системе подходящие для раскопок места не найдены&#xA;Находясь в космосе, выберите новую систему на галактической карте (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BONES_TUT_MSG2B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добудьте достаточно костей, чтобы спланировать и собрать &lt;TECHNOLOGY&gt;весь скелет&lt;&gt;.&#xA;Ископаемые слои обнаружены на соседней планете.&#xA;Вернитесь в космос, чтобы найти на планете &lt;STELLAR&gt;древние кости&lt;&gt;.
                                { "Russian", "Добудьте достаточно костей, чтобы собрать &lt;TECHNOLOGY&gt;весь скелет&lt;&gt;&#xA;Фоссилии обнаружены на соседней планете&#xA;Вернитесь в космос, чтобы найти на планете &lt;STELLAR&gt;древние кости&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BONES_TUT_MSG2C" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добудьте достаточно костей, чтобы спланировать и собрать &lt;TECHNOLOGY&gt;весь скелет&lt;&gt;.&#xA;Ископаемые слои обнаружены на соседней планете.&#xA;Сканируйте планеты из космоса (&lt;IMG&gt;SCAN&lt;&gt;), чтобы найти &lt;STELLAR&gt;древние кости&lt;&gt;.
                                { "Russian", "Добудьте достаточно костей, чтобы собрать &lt;TECHNOLOGY&gt;весь скелет&lt;&gt;&#xA;Фоссилии обнаружены на соседней планете&#xA;Сканируйте планеты из космоса (&lt;IMG&gt;SCAN&lt;&gt;), чтобы найти &lt;STELLAR&gt;древние кости&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BONES_TUT_MSG2_SURVEY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добудьте достаточно костей, чтобы спланировать и собрать &lt;TECHNOLOGY&gt;весь скелет&lt;&gt;.&#xA;Находите ископаемые слои с помощью &lt;TECHNOLOGY&gt;разведки цели&lt;&gt;.&#xA;Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt;, чтобы выкопать древние кости.
                                { "Russian", "Добудьте достаточно костей, чтобы собрать &lt;TECHNOLOGY&gt;весь скелет&lt;&gt;&#xA;Находите фоссилии с помощью &lt;TECHNOLOGY&gt;разведки цели&lt;&gt;&#xA;Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt;, чтобы выкопать древние кости" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BONES_TUT_MSG2_SWAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добудьте достаточно костей, чтобы спланировать и собрать &lt;TECHNOLOGY&gt;весь скелет&lt;&gt;.&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;.&#xA;Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt; (&lt;IMG&gt;ATTACK&lt;&gt;), чтобы выкопать древние кости.
                                { "Russian", "Добудьте достаточно костей, чтобы собрать &lt;TECHNOLOGY&gt;весь скелет&lt;&gt;&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;&#xA;Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt; (&lt;IMG&gt;ATTACK&lt;&gt;), чтобы выкопать древние кости" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BONES_TUT_MSG2_OFF" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добудьте достаточно костей, чтобы спланировать и собрать &lt;TECHNOLOGY&gt;весь скелет&lt;&gt;.&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы установить точное местоположение ископаемых слоев.&#xA;Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt; (&lt;IMG&gt;ATTACK&lt;&gt;), чтобы выкопать древние кости.&#xA;Добудьте &lt;STELLAR&gt;череп&lt;&gt; (%CURRENT_HEADS%/%AMOUNT_HEADS%), &lt;STELLAR&gt;грудную клетку&lt;&gt; (%CURRENT_BODIES%/%AMOUNT_BODIES%), &lt;STELLAR&gt;хвост&lt;&gt; (%CURRENT_TAILS%/%AMOUNT_TAILS%) и &lt;STELLAR&gt;конечности&lt;&gt; (%CURRENT_LIMBS%/%AMOUNT_LIMBS%).
                                { "Russian", "Добудьте достаточно костей, чтобы собрать &lt;TECHNOLOGY&gt;весь скелет&lt;&gt;&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы найти фоссилии&#xA;Используйте &lt;TECHNOLOGY&gt;ландшафтный манипулятор&lt;&gt; (&lt;IMG&gt;ATTACK&lt;&gt;), чтобы выкопать древние кости" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BONES_TUT_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Спланируйте и соберите &lt;TECHNOLOGY&gt;полный скелет&lt;&gt;.&#xA;Разместите &lt;TECHNOLOGY&gt;витрину для окаменелостей&lt;&gt; с помощью меню созидания (&lt;IMG&gt;BUILD_MENU&lt;&gt;).
                                { "Russian", "Соберите &lt;TECHNOLOGY&gt;полный скелет&lt;&gt;&#xA;Разместите &lt;TECHNOLOGY&gt;витрину для окаменелостей&lt;&gt; из меню строительства (&lt;IMG&gt;BUILD_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BONES_TUT_MSG3A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Спланируйте и соберите &lt;TECHNOLOGY&gt;полный скелет&lt;&gt;.&#xA;Соберите череп, торс, хвост и конечности в близлежащей &lt;TECHNOLOGY&gt;витрине для окаменелостей&lt;&gt;.
                                { "Russian", "Соберите &lt;TECHNOLOGY&gt;полный скелет&lt;&gt;&#xA;Соберите череп, торс, хвост и конечности в близлежащей &lt;TECHNOLOGY&gt;витрине для окаменелостей&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BONES_TUT_MSG3B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Упакуйте собранный окаменелый скелет и превратите его в постоянный экспонат.&#xA;На витрине для окаменелостей выберите «&lt;STELLAR&gt;Упаковать экспонат&lt;&gt;», чтобы объединить и забрать кости.&#xA;Собранные скелеты можно обменивать, продавать или переносить на новое место.
                                { "Russian", "Упакуйте собранный скелет и превратите его в экспонат&#xA;На витрине для окаменелостей выберите «&lt;STELLAR&gt;Упаковать экспонат&lt;&gt;»&#xA;Собранные скелеты можно обменивать, продавать или переносить" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BONES_TUT_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поговорите с &lt;STELLAR&gt;коллекционером окаменелостей&lt;&gt; и посмотрите его архив окаменелостей.&#xA;Эти специалисты по окаменелостям могут помочь вам собрать скелет, продав недостающие кости.&#xA;Найти коллекционера окаменелостей можно на борту &lt;STELLAR&gt;космической станции&lt;&gt;.
                                { "Russian", "Поговорите с &lt;STELLAR&gt;коллекционером окаменелостей&lt;&gt;&#xA;Изучите его архив, чтобы собрать недостающие кости&#xA;Найти коллекционера можно на &lt;STELLAR&gt;космической станции&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BONES_TUT_MSG4A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поговорите с &lt;STELLAR&gt;коллекционером окаменелостей&lt;&gt; и посмотрите его архив окаменелостей.&#xA;Эти специалисты по окаменелостям могут помочь вам собрать скелет, продав недостающие кости.
                                { "Russian", "Поговорите с &lt;STELLAR&gt;коллекционером окаменелостей&lt;&gt;&#xA;Изучите его архив, чтобы собрать недостающие кости" },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BONES_TUT_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- В некоторых мирах можно найти богатые &lt;STELLAR&gt;ископаемые слои&lt;&gt;. Странники могут выкопать &lt;STELLAR&gt;древние кости&lt;&gt; давно вымерших существ для коллекционирования, хранения и демонстрации.&#xA;&#xA;Воспользуйтесь &lt;TECHNOLOGY&gt;витриной для окаменелостей&lt;&gt;, чтобы воссоздать различные скелеты животных. Вы можете организовать музей собранных окаменелостей на своей базе или &lt;STELLAR&gt;запаковать&lt;&gt; свои экспонаты, чтобы обмениваться ими со Странниками или продать на открытом рынке.
                                { "Russian", "В некоторых мирах можно найти богатые залежи &lt;STELLAR&gt;фоссилий&lt;&gt;. Странники могут выкопать &lt;STELLAR&gt;древние кости&lt;&gt; давно вымерших существ для коллекционирования, хранения и демонстрации.&#xA;&#xA;Воспользуйтесь &lt;TECHNOLOGY&gt;витриной для окаменелостей&lt;&gt;, чтобы воссоздать различные скелеты животных. Вы можете организовать музей собранных окаменелостей на своей базе или &lt;STELLAR&gt;запаковать&lt;&gt; свои экспонаты, чтобы обмениваться ими со Странниками или продать на рынке." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BONES_TUT_OBJ2_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Выкопайте &lt;STELLAR&gt;древние кости&lt;&gt;, чтобы собрать скелет в витрине. Для полного скелета нужны &lt;STELLAR&gt;череп&lt;&gt; (%CURRENT_HEADS%/%AMOUNT_HEADS%), &lt;STELLAR&gt;грудная клетка&lt;&gt; (%CURRENT_BODIES%/%AMOUNT_BODIES%), &lt;STELLAR&gt;хвост&lt;&gt; (%CURRENT_TAILS%/%AMOUNT_TAILS%) и &lt;STELLAR&gt;конечности&lt;&gt; (%CURRENT_LIMBS%/%AMOUNT_LIMBS%).&#xA;&#xA;Чтобы найти &lt;STELLAR&gt;ископаемые слои&lt;&gt;, воспользуйтесь &lt;TECHNOLOGY&gt;анализирующим визором&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;). Выкопайте древние кости с помощью &lt;TECHNOLOGY&gt;ландшафтного манипулятора&lt;&gt;.
                                --
                                { "Russian", "Выкопайте &lt;STELLAR&gt;древние кости&lt;&gt;, чтобы собрать скелет в витрине. Для полного скелета нужны &lt;STELLAR&gt;череп&lt;&gt; (%CURRENT_HEADS%/%AMOUNT_HEADS%), &lt;STELLAR&gt;грудная клетка&lt;&gt; (%CURRENT_BODIES%/%AMOUNT_BODIES%), &lt;STELLAR&gt;хвост&lt;&gt; (%CURRENT_TAILS%/%AMOUNT_TAILS%) и &lt;STELLAR&gt;конечности&lt;&gt; (%CURRENT_LIMBS%/%AMOUNT_LIMBS%).&#xA;&#xA;Чтобы найти &lt;STELLAR&gt;фоссилии&lt;&gt;, воспользуйтесь &lt;TECHNOLOGY&gt;анализирующим визором&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;). Выкопайте древние кости с помощью &lt;TECHNOLOGY&gt;ландшафтного манипулятора&lt;&gt;." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BONES_TUT_OBJ2_TIP_ALT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Выкопайте &lt;STELLAR&gt;древние кости&lt;&gt;, чтобы собрать скелет в витрине. Для полного скелета нужны &lt;STELLAR&gt;череп&lt;&gt;, &lt;STELLAR&gt;грудная клетка&lt;&gt;, &lt;STELLAR&gt;хвост&lt;&gt; и &lt;STELLAR&gt;конечности&lt;&gt;.&#xA;&#xA;Чтобы найти &lt;STELLAR&gt;ископаемые слои&lt;&gt;, воспользуйтесь &lt;TECHNOLOGY&gt;анализирующим визором&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;). Выкопайте древние кости с помощью &lt;TECHNOLOGY&gt;ландшафтного манипулятора&lt;&gt;.
                                { "Russian", "Выкопайте &lt;STELLAR&gt;древние кости&lt;&gt;, чтобы собрать скелет в витрине. Для полного скелета нужны &lt;STELLAR&gt;череп&lt;&gt;, &lt;STELLAR&gt;грудная клетка&lt;&gt;, &lt;STELLAR&gt;хвост&lt;&gt; и &lt;STELLAR&gt;конечности&lt;&gt;.&#xA;&#xA;Чтобы найти &lt;STELLAR&gt;фоссилии&lt;&gt;, воспользуйтесь &lt;TECHNOLOGY&gt;анализирующим визором&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;). Выкопайте древние кости с помощью &lt;TECHNOLOGY&gt;ландшафтного манипулятора&lt;&gt;." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BONES_TUT_OBJ4_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Собранные и упакованные &lt;STELLAR&gt;окаменелые скелеты&lt;&gt; можно продать в любом терминале галактической торговли или перенести на новое место с помощью меню созидания (&lt;IMG&gt;BUILD_MENU&lt;&gt;).&#xA;&#xA;&lt;STELLAR&gt;Коллекционера окаменелостей&lt;&gt; можно найти на борту &lt;STELLAR&gt;космической станции&lt;&gt; или в местах планетарных &lt;STELLAR&gt;палеонтологических раскопок&lt;&gt;. Эти специалисты по окаменелостям собирают разные древние кости и с готовностью &lt;STELLAR&gt;обменяют их&lt;&gt;, а также &lt;STELLAR&gt;приобретут уже собранные экспонаты&lt;&gt;.&#xA;&#xA;Поговорите с &lt;STELLAR&gt;коллекционером окаменелостей космической станции&lt;&gt; и посмотрите его &lt;STELLAR&gt;архив окаменелостей&lt;&gt;.
                                { "Russian", "Собранные и упакованные &lt;STELLAR&gt;окаменелые скелеты&lt;&gt; можно продать в любом терминале галактической торговли или перенести на новое место с помощью меню строительства (&lt;IMG&gt;BUILD_MENU&lt;&gt;).&#xA;&#xA;&lt;STELLAR&gt;Коллекционера окаменелостей&lt;&gt; можно найти на &lt;STELLAR&gt;космической станции&lt;&gt; или в местах &lt;STELLAR&gt;палеонтологических раскопок&lt;&gt; на планетах. Эти специалисты собирают разные древние кости и с готовностью &lt;STELLAR&gt;обменяют их&lt;&gt;, а также &lt;STELLAR&gt;приобретут уже собранные экспонаты&lt;&gt;.&#xA;&#xA;Поговорите с &lt;STELLAR&gt;коллекционером на космической станции&lt;&gt; и изучите его &lt;STELLAR&gt;архив окаменелостей&lt;&gt;." },
                            }
                        },

                        --#endregion
                    }
                },
            }
        }
    }
}
