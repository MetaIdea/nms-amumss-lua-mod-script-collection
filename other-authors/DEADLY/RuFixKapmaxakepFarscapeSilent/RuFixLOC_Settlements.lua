NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]    = "_RuFixLOC_Settlements.pak",
    ["MOD_AUTHOR"]      = "gh0stwizard",
    ["MOD_DESCRIPTION"] = "Fixes for settlements.",
    ["NMS_VERSION"]     = "5.72",
    ["EXML_CREATE"]     = "false",
    ["MODIFICATIONS"]   = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                { -- LANGUAGE/NMS_LOC7_RUSSIAN.MBIN
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_LOC7_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_JUDGE_OPT_PERK" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Руководство управлением поселением
                                -- Guide settlement management
                                { "Russian", "Возглавить управление поселением" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DRONE_ENCOUNTER_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ВНИМАНИЕ &lt;IMG&gt;SLASH&lt;&gt; ОБНАРУЖЕНЫ СТРАННЫЕ СИЛЫ СТРАЖЕЙ
                                -- ALERT &lt;IMG&gt;SLASH&lt;&gt; ANOMALOUS SENTINEL FORCES DETECTED
                                { "Russian", "ОБНАРУЖЕНЫ СТРАННЫЕ СИЛЫ СТРАЖЕЙ" },
                            }
                        },
                        -- самый первый вход. интерфейс как при входе в солнечную систему. название отображается первым сверху посередине
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FIRST_SETTLEMENT_TITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Приближается: %NAME%
                                -- Now Approaching: %NAME%
                                { "Russian", "%NAME%" },
                            }
                        },
                        -- при повторном входе в поселение (слева вверху)
                        -- кто-то давно просил, чтобы эта строчка была уместна при склонении
                        -- вобщем, сделал только сейчас... лучше поздно чем никогда
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_APPROACH" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %NAME% приближается
                                -- Now approaching %NAME%
                                { "Russian", "%NAME% приветствует вас" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_MISS_BUILD_TEXT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Новое строение стало доступно в поселении %NAME%.
                                -- New building available for %NAME%
                                { "Russian", "%NAME%: доступно новое строение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_MISS_REQ_TEXT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Жители поселения %NAME% обратились с новой просьбой.
                                -- New citizen request at %NAME%
                                { "Russian", "%NAME%: новая просьба жителей" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_PAGE_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Планетарное поселение вида %RACE%
                                -- %RACE% Planetary Settlement
                                { "Russian", "Планетарное поселение %RACE%ов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_STAT_SENTINELS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Уров. угрозы стражей
                                -- Sentinel Alert Level
                                { "Russian", "Угроза стражей" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_STAT_UPKEEP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Стоим. обслуживания
                                -- Maintenance Cost
                                { "Russian", "Обслуживание" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_PROD_TIME_NUM" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;ЧАСЫ&lt;&gt;%NUM%
                                -- &lt;IMG&gt;CLOCK&lt;&gt;%NUM%
                                { "Russian", "&lt;IMG&gt;CLOCK&lt;&gt;%NUM%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_MISS_MARKER_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Интерфейс центра поселения
                                -- Settlement Hub Interface
                                { "Russian", "Центральный интерфейс поселения" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_HUB_TITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Интерфейс центра поселения
                                -- Settlement Hub Interface
                                { "Russian", "Центральный интерфейс поселения" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_HUB_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Управление статусом поселения %TOWN%
                                -- Manage %TOWN% Status
                                { "Russian", "Проверить статус %TOWN%" },
                            }
                        },
                        -- строки слишком длинные, время на отображение минимальное
                        -- половина описания слишком очевидна...
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_WANTED_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ОБНАРУЖЕНО ПЛАНЕТАРНОЕ ПОСЕЛЕНИЕ &lt;IMG&gt;SLASH&lt;&gt; ПРИБЛИЖАЮТСЯ СИЛЫ СТРАЖЕЙ
                                -- PLANETARY SETTLEMENT DETECTED &lt;IMG&gt;SLASH&lt;&gt; SENTINEL FORCES INCOMING
                                { "Russian", "ПРИБЛИЖАЮТСЯ СИЛЫ СТРАЖЕЙ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_WANTED_DONE_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- СИЛЫ СТРАЖЕЙ УНИЧТОЖЕНЫ &lt;IMG&gt;SLASH&lt;&gt; СРЕДСТВА ЗАЩИТЫ ВОЗВРАЩАЮТСЯ
                                -- SENTINEL FORCES ELIMINATED &lt;IMG&gt;SLASH&lt;&gt; SUPPRESSION FORCES RETREATING
                                { "Russian", "СИЛЫ СТРАЖЕЙ УНИЧТОЖЕНЫ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_CLAIM_EXP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ВВЕСТИ ДАННЫЕ УПРАВЛЕНИЯ
                                -- SUBMIT MANAGEMENT CREDENTIALS
                                { "Russian", "ПОДАТЬ ЗАЯВКУ НА УПРАВЛЕНИЕ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_CLAIM_SUB_ALT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Станьте &lt;STELLAR&gt;куратором поселения&lt;&gt;
                                -- Become &lt;STELLAR&gt;settlement overseer&lt;&gt;
                                { "Russian", "Стать &lt;STELLAR&gt;куратором поселения&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_MISS_OBJ2_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Офис куратора — сердце поселения. Вы можете посмотреть статус поселения в любой момент на расположенном в офисе &lt;STELLAR&gt;терминале управления&lt;&gt;. Улучшайте поселение, чтобы &lt;TRADEABLE&gt;производить ресурсы&lt;&gt;, которые вы сможете забирать каждый день через терминал управления.&#xA;&#xA;Найдите &lt;STELLAR&gt;стройплощадку&lt;&gt;, чтобы продолжить сборку здания. Строительство выполняется в несколько этапов, каждый из которых требует &lt;COMMODITY&gt;материалов&lt;&gt; и &lt;SPECIAL&gt;времени&lt;&gt;.
                                -- The Overseer's Office is the heart of the settlement. The settlement status can be viewed at any time from the office's &lt;STELLAR&gt;Administration Terminal&lt;&gt;. Improve the settlement to &lt;TRADEABLE&gt;generate resources&lt;&gt;, which can be collected daily from the Administration Terminal.&#xA;&#xA;Locate the &lt;STELLAR&gt;construction site&lt;&gt; to continue building assembly. Building is done in several stages. Each stage requires both &lt;COMMODITY&gt;materials&lt;&gt; and &lt;SPECIAL&gt;time&lt;&gt;.
                                { "Russian", "Офис куратора — сердце поселения. Вы можете посмотреть статус поселения в любой момент на расположенном в офисе &lt;STELLAR&gt;терминале управления&lt;&gt;. Улучшайте поселение, чтобы &lt;TRADEABLE&gt;производить ресурсы&lt;&gt;, которые вы сможете забирать каждый день через терминал управления.&#xA;&#xA;Найдите &lt;STELLAR&gt;стройплощадку&lt;&gt;, чтобы продолжить строительство здания. Оно выполняется в несколько этапов, каждый из которых требует &lt;COMMODITY&gt;материалов&lt;&gt; и &lt;SPECIAL&gt;времени&lt;&gt;." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_BUILD_SITE_OPT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поставьте материалы
                                -- Supply materials
                                { "Russian", "Отдать материалы" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_BUILD_SITE_NAMED" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %BUILDING%: выполнено %STAGE% %NUM%%
                                -- %BUILDING%: %STAGE% %NUM%% complete
                                { "Russian", "%BUILDING%, %STAGE%: %NUM%%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_MISS_BUILD_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Прикажите начать строительство из своего офиса.
                                -- Commision new structure in your office
                                { "Russian", "Начните строительство из вашего офиса" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_TERMINAL_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Принимайте решения, касающиеся поселения
                                -- Make settlement decisions
                                { "Russian", "Принимайте судьбоносные решения" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_CONSTRUCT_FMT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Начинает строительство здания «%BUILDING%»
                                -- Begins construction of a %BUILDING%
                                { "Russian", "Построить: %BUILDING%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_BUILD_OPT_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Одобрить строительство здания %BUILDING%
                                -- Approve %BUILDING%
                                { "Russian", "%BUILDING%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_JUDGE_OPT_BUILD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Посмотреть возможность для строительства
                                -- View construction opportunity
                                { "Russian", "Изучить планы строительства" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_JUDGE_OPT_VISIT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поприветствовать гостя поселения
                                -- Greet settlement visitor
                                { "Russian", "Поприветствовать гостя" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DILEMMA_BOT_TITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TRANS_DIP&gt;Личный решающий помощник&lt;&gt;
                                -- &lt;TRANS_DIP&gt;Personal Judgement Assistant&lt;&gt;
                                { "Russian", "&lt;TRANS_DIP&gt;Личный советник&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_VISITOR1_OPT_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Пусть %NAME1% остается
                                -- Allow %NAME1% to stay
                                { "Russian", "Пусть остается" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_VISITOR1_OPT_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Пусть %NAME1% уходит
                                -- Have %NAME1% removed
                                { "Russian", "Пусть уходит" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_VISITOR2_OPT_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %NAME1% заслуживает помощи
                                -- Assist %NAME1%
                                { "Russian", "Помочь" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_VISITOR2_OPT_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Пусть %NAME1% уходит
                                -- Have %NAME1% removed
                                { "Russian", "Пусть уходит" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_REQUEST1_OPT_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поддержать проведение мероприятия
                                -- Endorse the event
                                { "Russian", "Одобрить мероприятие" },
                            }
                        },
                        { -- не больше 7 букв
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_PERK_ADD_FMT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Доб. особенность: &lt;TRADEABLE&gt;%NAME%&lt;&gt;
                                -- Adds feature: &lt;TRADEABLE&gt;%NAME%&lt;&gt;
                                { "Russian", "Даёт: &lt;TRADEABLE&gt;%NAME%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_STAT_PROD_FMT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %NUM% &lt;COMMODITY&gt;&lt;IMG&gt;UNITSMALL&lt;&gt;&lt;&gt;/день&lt;&gt;
                                -- %NUM% &lt;COMMODITY&gt;&lt;IMG&gt;UNITSMALL&lt;&gt;&lt;&gt;/day&lt;&gt;
                                { "Russian", "%NUM% &lt;COMMODITY&gt;&lt;IMG&gt;UNITSMALL&lt;&gt;&lt;&gt;/сут&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_STAT_COST_FMT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %NUM% &lt;COMMODITY&gt;&lt;IMG&gt;UNITSMALL&lt;&gt;&lt;&gt;/день&lt;&gt;
                                -- %NUM% &lt;COMMODITY&gt;&lt;IMG&gt;UNITSMALL&lt;&gt;&lt;&gt;/day&lt;&gt;
                                { "Russian", "%NUM% &lt;COMMODITY&gt;&lt;IMG&gt;UNITSMALL&lt;&gt;&lt;&gt;/сут&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_STAT_COST_POS_FMT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обслуживание: &lt;FUEL&gt;+%NUM%&lt;&gt; &lt;COMMODITY&gt;юн./дн.&lt;&gt;
                                -- &lt;FUEL&gt;+%NUM%&lt;&gt; &lt;COMMODITY&gt;u/day&lt;&gt; maintenance
                                { "Russian", "Обслуживание: &lt;FUEL&gt;+%NUM%&lt;&gt; &lt;COMMODITY&gt;&lt;IMG&gt;UNITSMALL&lt;&gt;&lt;&gt;/сут" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_STAT_COST_NEG_FMT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обслуживание: &lt;TRADEABLE&gt;-%NUM%&lt;&gt; &lt;COMMODITY&gt;юн./дн.&lt;&gt;
                                -- &lt;TRADEABLE&gt;-%NUM%&lt;&gt; &lt;COMMODITY&gt;u/day&lt;&gt; maintenance
                                { "Russian", "Обслуживание: &lt;TRADEABLE&gt;-%NUM%&lt;&gt; &lt;COMMODITY&gt;&lt;IMG&gt;UNITSMALL&lt;&gt;&lt;&gt;/сут" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_PROD_TIME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Готовый продукт через:
                                -- Next Output In:
                                { "Russian", "Будет готово через:" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_STAT_DEBT_POS_FMT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;FUEL&gt;+%NUM%&lt;&gt; &lt;IMG&gt;UNITSMALL&lt;&gt; к долгу поселения
                                -- &lt;FUEL&gt;+%NUM%&lt;&gt; &lt;IMG&gt;UNITSMALL&lt;&gt; settlement debt
                                { "Russian", "Долг поселения: &lt;FUEL&gt;+%NUM%&lt;&gt; &lt;COMMODITY&gt;&lt;IMG&gt;UNITSMALL&lt;&gt;&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_STAT_DEBT_NEG_FMT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TRADEABLE&gt;-%NUM%&lt;&gt; &lt;IMG&gt;UNITSMALL&lt;&gt; к долгу поселения
                                -- &lt;TRADEABLE&gt;-%NUM%&lt;&gt; &lt;IMG&gt;UNITSMALL&lt;&gt; settlement debt
                                { "Russian", "Долг поселения: &lt;TRADEABLE&gt;-%NUM%&lt;&gt; &lt;COMMODITY&gt;&lt;IMG&gt;UNITSMALL&lt;&gt;&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_MISS_OBJ4_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Терминал управления&lt;&gt; в офисе куратора позволяет вам управлять своим поселением. Регулярно заглядывайте в офис, чтобы управлять строительством, выбирать важные законы или разрешать споры между жителями.&#xA;&#xA;Статус поселения можно посмотреть на центральном интерфейсе или терминале управления. В интерфейсе состояния вы можете &lt;STELLAR&gt;ежедневно забирать излишки ресурсов&lt;&gt;. Их качество и количество зависит от поселения. Хорошо управляемые поселения производят &lt;COMMODITY&gt;дополнительные товары&lt;&gt;.
                                -- The &lt;STELLAR&gt;Administration Terminal&lt;&gt; in the Overseer's Office allows you to direct your settlement. Return regularly to direct construction, set key policies, or resolve disputes between the citizens.&#xA;&#xA;Settlement status can be seen from its central interface, or from the Administration Terminal. The status interface allows the &lt;STELLAR&gt;daily collection of surplus resources&lt;&gt;. Resource quality and amount varies with the settlement. Well-managed settlements will produce &lt;COMMODITY&gt;additional goods&lt;&gt;.
                                { "Russian", "&lt;STELLAR&gt;Терминал управления&lt;&gt; в офисе куратора позволяет вам управлять своим поселением. Регулярно заглядывайте в офис, чтобы управлять строительством, выбирать важные законы или разрешать споры между жителями.&#xA;&#xA;Статус поселения можно посмотреть на центральном интерфейсе или терминале управления. Вы можете &lt;STELLAR&gt;ежедневно забирать излишки ресурсов&lt;&gt; на экране состояния. Их качество и количество зависит от поселения. Хорошо управляемые поселения производят &lt;COMMODITY&gt;дополнительные товары&lt;&gt;." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_MISS_REQ_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Посмотрите ее в своем офисе.
                                -- View the request in your office
                                { "Russian", "Рассмотрите запрос в вашем офисе" },
                            }
                        },
                        -- ничего никому оплачивать не надо. поселение само выплачивает долги если может
                        -- в данной формулировке разрабы очень сильно пудрят мозги игрокам
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_PROD_DEBT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- У поселения долги &lt;IMG&gt;SLASH&lt;&gt; Оплатите их, чтобы восстановить производство
                                -- Settlement is in debt &lt;IMG&gt;SLASH&lt;&gt; Clear debts to restore production
                                { "Russian", "У поселения задолжность  &lt;IMG&gt;SLASH&lt;&gt; Производство остановлено" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_JUDGE_OPT_REQ" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Посмотреть просьбу жителя
                                -- View citizen request
                                { "Russian", "Рассмотреть просьбу" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MAJORDOMO_TITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Управитель %NAME%
                                -- Majordomo %NAME%
                                { "Russian", "Дворецкий %NAME%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS_JUDGE_QUESTION_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;FUEL&gt;УПРАВИТЕЛЬ ПОСЕЛЕНИЯ ОТКЛЮЧЕН:&lt;&gt; Невозможно дать —&lt;STELLAR&gt;кзкззт&lt;&gt;— дать совет
                                -- &lt;FUEL&gt;SETTLEMENT MAJORDOMO DISABLED:&lt;&gt; Unable to –&lt;STELLAR&gt;kzkzzt&lt;&gt; –advise
                                { "Russian", "&lt;VAL_ON&gt;ДВОРЕЦКИЙ ОТКЛЮЧЁН:&lt;&gt; Не могу дать –&lt;STELLAR&gt;кзкззт&lt;&gt; –совет" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PORTAL_SENT_MISS_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Всего через несколько мгновений после победы над стражами на мой терминал управления поступило анонимное сообщение из внешнего источника.&#xA;&#xA;Это была Итерация: Тефида.&#xA;&#xA;&lt;STORY_HIGH&gt;-{{ Какой потрясающий терминал! Он записывает всевозможные данные о тебе и поселенцах. Вижу, что они... Кхм... Ну, не суть. Я на время отключила управителя. Роботам нельзя доверять, тем более информацию, которую тебе нужно узнать. }}-&lt;&gt;&#xA;&#xA;&lt;STORY_HIGH&gt;-{{ Любое сколько-нибудь внимательное создание может заметить всплеск активности стражей такого уровня, даже если не следит за тобой. Что произошло? Они оставили после себя лакомые кусочки? Попробуй найти их, а потом прилетай на Аномалию. Мне нужны подробности! }}-&lt;&gt;
                                -- Just moments after the Sentinel assault had been defeated, my Administration Terminal received an anomalous broadcast from an external source.&#xA;&#xA;It was Iteration: Tethys.&#xA;&#xA;&lt;STORY_HIGH&gt;-{{ This terminal is fascinating! It's recorded all sorts of data - about you AND these settlers. I can see they've been - ahem - well, that is not the point. I have shut down your little majordomo for now. Robots cannot be trusted, not with what I have to tell you. }}-&lt;&gt;&#xA;&#xA;&lt;STORY_HIGH&gt;-{{ Anyone with their eyes open could see a Sentinel spike of that magnitude, even if they weren't spying on you. What happened? Did they leave any interesting tidbits behind? See what you can find - then come to the Anomaly. I have to know more! }}-&lt;&gt;
                                { "Russian", "Всего через несколько мгновений после победы над стражами на мой терминал управления поступило анонимное сообщение извне.&#xA;&#xA;Это была итерация Тефида.&#xA;&#xA;&lt;STORY_HIGH&gt;-{{ Какой потрясающий терминал! Он записывает всевозможные данные о тебе и поселенцах. Вижу, что они... Кхм... Ну, не суть. Я на время отключила дворецкого. Роботам нельзя доверять, тем более информацию, которую тебе нужно узнать. }}-&lt;&gt;&#xA;&#xA;&lt;STORY_HIGH&gt;-{{ Любое сколько-нибудь внимательное создание может заметить всплеск активности стражей такого уровня, даже не следя за тобой. Что произошло? Они оставили после себя лакомые кусочки? Попробуй найти их, а потом прилетай на Аномалию. Мне нужны подробности! }}-&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS_JUDGE_DILEMMA_1A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- { Какой потрясающий терминал! Он записывает всевозможные данные о вас И поселенцах. Вижу, что они... кхм... ну, это неважно. Я на время отключила управителя. Роботам нельзя доверять, тем более информацию, которую тебе нужно узнать. }
                                -- { This terminal is fascinating! It's recorded all sorts of data - about you AND these settlers. I can see they've been - ahem - well, that is not the point. I have shut down your little majordomo for now. Robots cannot be trusted, not with what I have to tell you. }
                                { "Russian", "{ Какой потрясающий терминал! Он записывает всевозможные данные о вас и поселенцах. Вижу, что они... кхм... ну, это неважно. Я на время отключила дворецкого. Роботам нельзя доверять, тем более информацию, которую тебе нужно узнать. }" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS_JUDGE_TITLE_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружена частота перезаписи: ИТЕРАЦИЯ ТЕФИДЫ
                                -- Override Frequency Detected: ITERATION TETHYS
                                { "Russian", "ИТЕРАЦИЯ ТЕФИДА НА СВЯЗИ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS_JUDGE_TITLE_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Усиливающееся любопытство
                                -- Deepening Curiosity
                                { "Russian", "УСИЛИВАЮЩЕЕСЯ ЛЮБОПЫТСТВО" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS_JUDGE_TITLE_4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Усиливающееся любопытство — завершено!
                                -- Deepening Curiosity - Complete!
                                { "Russian", "УСИЛИВАЮЩЕЕСЯ ЛЮБОПЫТСТВО — ЗАВЕРШЕНО!" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS4_EXPED_WIN_TEXT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Команда жителей-охотников на стражей вернулась!
                                -- Citizen sentinel hunt team has returned!
                                { "Russian", "Жители-охотники на стражей вернулись!" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS_JUDGE4_COST_OPT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Примите отчет об экспедиции по изучению стражей
                                -- Debrief Sentinel expedition
                                { "Russian", "Выслушать доклад экспедиции" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS_JUDGE_HEADER_4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПРИМИТЕ ОТЧЕТ ОБ ЭКСПЕДИЦИИ ПО ИЗУЧЕНИЮ СТРАЖЕЙ
                                -- CITIZEN SENTINEL EXPEDITION DEBRIEF
                                { "Russian", "ОТЧЕТ ЭКСПЕДИЦИИ ПО ИЗУЧЕНИЮ СТРАЖЕЙ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS3_OBJ5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Установить схему каркасного стража
                                -- Install the Sentinel Hardframe schematic
                                { "Russian", "Установить деталь каркасного стража" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS4_OBJ2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Установить схему каркасного стража
                                -- Install the Sentinel Hardframe schematic
                                { "Russian", "Установить деталь каркасного стража" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS_JUDGE_OPT_A_4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поблагодарить исследователей
                                -- Thank the explorers
                                { "Russian", "Поблагодарить" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS_JUDGE_OPT_B_4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Расспросить исследователей
                                -- Question the explorers
                                { "Russian", "Расспросить" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS_JUDGE_QUESTION_4A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;VAL_ON&gt;Требуется решение&lt;&gt;: примите отчет об экспедиции
                                -- &lt;VAL_ON&gt;Resolution required:&lt;&gt; Debrief the expedition
                                { "Russian", "&lt;VAL_ON&gt;Требуется решение:&lt;&gt; принять доклад экспедиции" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_POLICY4_NAME_DET3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- разработка новых &lt;COMMODITY&gt;промышленных технологий&lt;&gt;
                                -- developing new &lt;COMMODITY&gt;industrial technology&lt;&gt;
                                { "Russian", "создание новых &lt;COMMODITY&gt;промышленных технологий&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_VISITOR4_OPT1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Прислушаться к предупреждению.
                                -- Heed the warning
                                { "Russian", "Внимать предупреждению" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_VISITOR4_OPT2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %NAME1% говорит ерунду
                                -- Dismiss %NAME1%
                                { "Russian", "Прогнать гостя" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_STAT_PROD_POS_FMT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Продуктивность: &lt;TRADEABLE&gt;+%NUM%&lt;&gt;
                                -- &lt;TRADEABLE&gt;+%NUM%&lt;&gt; productivity
                                { "Russian", "Продуктивность: &lt;TRADEABLE&gt;+%NUM%&lt;&gt; &lt;COMMODITY&gt;&lt;IMG&gt;UNITSMALL&lt;&gt;&lt;&gt;/сут" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_STAT_PROD_NEG_FMT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Продуктивность: &lt;FUEL&gt;-%NUM%&lt;&gt;
                                -- &lt;FUEL&gt;-%NUM%&lt;&gt; productivity
                                { "Russian", "Продуктивность: &lt;FUEL&gt;-%NUM%&lt;&gt; &lt;COMMODITY&gt;&lt;IMG&gt;UNITSMALL&lt;&gt;&lt;&gt;/сут" },
                            }
                        },

                        --#region UI_SENT_MISS_OBJ
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS_OBJ1_TIP_NX" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Получена аномальная передача!&lt;&gt;&#xA;Нажмите &lt;IMG&gt;QUICK_MENU&lt;&gt;, чтобы ответить.
                                -- &lt;SPECIAL&gt;Anomalous Broadcast&lt;&gt; detected&#xA;Answer the Starship Communicator by pressing &lt;IMG&gt;QUICK_MENU&lt;&gt;
                                { "Russian", "Получен сигнал &lt;SPECIAL&gt;аномальной передачи&lt;&gt;!&#xA;Откройте быстрое меню, нажав &lt;IMG&gt;QUICK_MENU&lt;&gt;. Затем, ответьте по коммуникатору звездолёта." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS_OBJ4_TIP_NX" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Итерацию Тефиды интересует недавний всплеск &lt;FUEL&gt;активности стражей&lt;&gt;.&#xA;Она просит о встрече на &lt;SPECIAL&gt;Космической Аномалии&lt;&gt;.&#xA;Находясь в космосе, вызовите &lt;SPECIAL&gt;Аномалию&lt;&gt; через быстрое меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                { "Russian", "Итерацию Тефиды интересует недавний всплеск &lt;FUEL&gt;активности стражей&lt;&gt;.&#xA;Она просит о встрече на &lt;SPECIAL&gt;Космической Аномалии&lt;&gt;.&#xA;Находясь в космосе, вызовите &lt;SPECIAL&gt;Аномалию&lt;&gt; из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS_OBJ1_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Получено &lt;FUEL&gt;аварийное сообщение из поселения&lt;&gt;.&#xA;Откройте коммуникатор звездолета через &lt;IMG&gt;QUICK_MENU&lt;&gt; и ответьте на вызов.
                                -- &lt;FUEL&gt;Emergency Settlement Comms&lt;&gt; link requested.&#xA;Answer the Starship Communicator by pressing &lt;IMG&gt;QUICK_MENU&lt;&gt;.
                                { "Russian", "Получен &lt;FUEL&gt;экстренный вызов из поселения&lt;&gt;.&#xA;Откройте быстрое меню, нажав &lt;IMG&gt;QUICK_MENU&lt;&gt;. Затем, ответьте по коммуникатору звездолёта." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS_OBJ2_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;FUEL&gt;Огромные силы стражей нападают&lt;&gt; на ваше поселение!&#xA;Ваши жители просят срочной помощи.&#xA;Вернитесь в поселение, чтобы защитить его от нападения.
                                -- An &lt;FUEL&gt;extreme Sentinel assault&lt;&gt; is underway at your settlement!&#xA;Your settlers request urgent assistance.&#xA;Return to your settlement to defend it from attack.
                                { "Russian", "&lt;FUEL&gt;Огромные силы стражей напали&lt;&gt; на ваше поселение!&#xA;Ваши жители просят срочной помощи.&#xA;Вернитесь в поселение, чтобы защитить его от нападения." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS_OBJ4B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поговорить с другими &lt;SPECIAL&gt;итерациями-Странниками&lt;&gt;.
                                { "Russian", "Поговорить с другими &lt;SPECIAL&gt;итерациями-странниками&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS_OBJ4_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Итерацию Тефиды интересует всплеск &lt;FUEL&gt;активности стражей&lt;&gt; в районе вашего поселения.&#xA;Она просит о встрече на &lt;SPECIAL&gt;Космической Аномалии&lt;&gt;.&#xA;Находясь в космосе, вызовите &lt;SPECIAL&gt;Аномалию&lt;&gt; через быстрое меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                { "Russian", "Итерацию Тефиды интересует всплеск &lt;FUEL&gt;активности стражей&lt;&gt; в районе вашего поселения.&#xA;Она просит о встрече на &lt;SPECIAL&gt;Космической Аномалии&lt;&gt;.&#xA;Находясь в космосе, вызовите &lt;SPECIAL&gt;Аномалию&lt;&gt; из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)." },
                            }
                        },
                        --#endregion

                        --#region UI_SENT_MISS.*OSD
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS_BUILDING_OSD_NX" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПОЛУЧЕНЫ МЕЖЗВЕЗДНЫЕ КООРДИНАТЫ &lt;IMG&gt;SLASH&lt;&gt; ОБНАРУЖЕНА АКТИВНОСТЬ СТРАЖЕЙ
                                -- INTERSTELLAR COORDINATES RECEIVED &lt;IMG&gt;SLASH&lt;&gt; SENTINEL ACTIVITY DETECTED
                                { "Russian", "ПОЛУЧЕНЫ МЕЖЗВЕЗДНЫЕ КООРДИНАТЫ РАСПОЛОЖЕНИЯ СТРАЖЕЙ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS_ENCOUNTER_OSD_NX" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- СИЛЫ СТРАЖЕЙ УНИЧТОЖЕНЫ &lt;IMG&gt;SLASH&lt;&gt; СРЕДСТВА ЗАЩИТЫ ВОЗВРАЩАЮТСЯ
                                -- SENTINEL FORCES ELIMINATED &lt;IMG&gt;SLASH&lt;&gt; SUPPRESSION FORCES RETREATING
                                { "Russian", "СИЛЫ СТРАЖЕЙ УНИЧТОЖЕНЫ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS4_BUILDING_OSD_NX" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Получены координаты стража!
                                -- Sentinel Navigation Coordinates Acquired!
                                { "Russian", "ПОЛУЧЕНЫ НАВИГАЦИОННЫЕ ДАННЫЕ СТРАЖЕЙ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS4_BUILD_DISC_OSD_NX" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружена заброшенная станция?
                                -- Abandoned Facility Located?
                                { "Russian", "ОБНАРУЖЕНО ЗАБРОШЕННОЕ ЗДАНИЕ?" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS1_JUDGE_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поселение: уведомление &lt;IMG&gt;SLASH&lt;&gt; Входящая аномальная передача!
                                -- Settlement Administration Alert &lt;IMG&gt;SLASH&lt;&gt; Incoming Anomalous Broadcast!
                                { "Russian", "ПОЙМАН СИГНАЛ АНОМАЛЬНОЙ ПЕРЕДАЧИ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS3_JUDGE_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поселение: уведомление &lt;IMG&gt;SLASH&lt;&gt; Требуется срочное собрание жителей
                                -- Settlement Administration Alert &lt;IMG&gt;SLASH&lt;&gt; Urgent Citizen Meeting Requested
                                { "Russian", "ТРЕБУЕТСЯ СРОЧНОЕ СОБРАНИЕ ЖИТЕЛЕЙ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS4_JUDGE_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поселение: уведомление &lt;IMG&gt;SLASH&lt;&gt; Охота жителей на стражей завершена!
                                -- Settlement Administration Alert &lt;IMG&gt;SLASH&lt;&gt; Citizen Sentinel Hunt Complete!
                                { "Russian", "ЖИТЕЛИ ЗАКОНЧИЛИ ОХОТУ НА СТРАЖЕЙ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS_HIVE_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Получены координаты стража!
                                -- Sentinel Navigation Coordinates Acquired!
                                { "Russian", "ПОЛУЧЕНЫ НАВИГАЦИОННЫЕ ДАННЫЕ СТРАЖЕЙ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS_HIVE_INTERACT_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- СТОЛП СТРАЖЕЙ В ОПАСНОСТИ &lt;IMG&gt;SLASH&lt;&gt; УЗЕЛ ТЕРМИНАЛА ОТКРЫТ
                                -- SENTINEL PILLAR VULNERABLE &lt;IMG&gt;SLASH&lt;&gt; TERMINAL NODE NOW OPEN
                                { "Russian", "СТОЛП СТРАЖЕЙ УЯЗВИМ &lt;IMG&gt;SLASH&lt;&gt; УЗЕЛ ТЕРМИНАЛА ОТКРЫТ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS_HIVE_DISC_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружен таинственный столп?
                                -- Mysterious Pillar Located?
                                { "Russian", "ОБНАРУЖЕН ТАИНСТВЕННЫЙ СТОЛП?" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS5_HIVE_DISC_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружен столп стражей!
                                -- Sentinel Pillar Located!
                                { "Russian", "ОБНАРУЖЕН СТОЛП СТРАЖЕЙ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS_PLAQ_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Получены координаты стража!
                                -- Sentinel Navigation Coordinates Acquired!
                                { "Russian", "ПОЛУЧЕНЫ НАВИГАЦИОННЫЕ ДАННЫЕ СТРАЖЕЙ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS_PLAQ_DISC_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружен шагающий страж!
                                -- Sentinel Walker Located!
                                { "Russian", "ОБНАРУЖЕН ШАГАЮЩИЙ СТРАЖ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS_FACTORY_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ВНИМАНИЕ &lt;IMG&gt;SLASH&lt;&gt; Получены поврежденные координаты
                                -- ALERT &lt;IMG&gt;SLASH&lt;&gt; Scrambled Coordinates Received
                                { "Russian", "ПОЛУЧЕНЫ ЗАШИФРОВАННЫЕ КООРДИНАТЫ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS_FACT_DISC_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружен завод?
                                -- Manufacturing Facility Located?
                                { "Russian", "ОБНАРУЖЕН ЗАВОД?" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS_COMMS_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ВХОДЯЩЕЕ СООБЩЕНИЕ &lt;IMG&gt;SLASH&lt;&gt; АВАРИЙНОЕ СООБЩЕНИЕ ИЗ ПОСЕЛЕНИЯ
                                -- INCOMING MESSAGE  &lt;IMG&gt;SLASH&lt;&gt; EMERGENCY SETTLEMENT COMMS
                                { "Russian", "ЭКСТРЕННОЕ СООБЩЕНИЕ ИЗ ПОСЕЛЕНИЯ" },
                            }
                        },
                        --#endregion

                        --#region UI_JUDGEMENT_.*_QUESTION
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_VISITOR1_QUESTION" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;VAL_ON&gt;Требуется решение:&lt;&gt; позволить гостю по имени %NAME1% присоединиться к поселению?
                                -- &lt;VAL_ON&gt;Resolution required:&lt;&gt; Allow %NAME1% to join the settlement?
                                { "Russian", "&lt;VAL_ON&gt;Требуется решение:&lt;&gt; позволить гостю присоединиться?" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_VISITOR2_QUESTION" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;VAL_ON&gt;Требуется решение:&lt;&gt; помочь гостю по имени %NAME1%?
                                -- &lt;VAL_ON&gt;Resolution required:&lt;&gt; Assist %NAME1%?
                                { "Russian", "&lt;VAL_ON&gt;Требуется решение:&lt;&gt; помочь %NAME1%?" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_VISITOR3_QUESTION" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;VAL_ON&gt;Требуется решение:&lt;&gt; принять подарок от %NAME1%?
                                { "Russian", "&lt;VAL_ON&gt;Требуется решение:&lt;&gt; принять подарок?" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_VISITOR5_QUESTION" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;VAL_ON&gt;Требуется решение:&lt;&gt; принять технологию посетителя по имени %NAME1%?
                                -- &lt;VAL_ON&gt;Resolution required:&lt;&gt; Accept %NAME1%'s technology?
                                { "Russian", "&lt;VAL_ON&gt;Требуется решение:&lt;&gt; взять технологию?" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_VISITOR6_QUESTION" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;VAL_ON&gt;Требуется решение:&lt;&gt; приобрести технологию посетителя по имени %NAME1%?
                                -- &lt;VAL_ON&gt;Resolution required:&lt;&gt; Purchase %NAME1%'s technology?
                                { "Russian", "&lt;VAL_ON&gt;Требуется решение:&lt;&gt; приобрести технологию?" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_VISITOR4_QUESTION" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;VAL_ON&gt;Требуется решение:&lt;&gt; помочь гостю по имени %NAME1%?
                                -- &lt;VAL_ON&gt;Resolution required:&lt;&gt; Assist %NAME1%?
                                { "Russian", "&lt;VAL_ON&gt;Требуется решение:&lt;&gt; принять гостя?" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_CONFLICT1_QUESTION" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;VAL_ON&gt;Требуется решение:&lt;&gt; выберите наказание для обвиняемого
                                -- &lt;VAL_ON&gt;Resolution required:&lt;&gt; Choose a sentence for the accused
                                { "Russian", "&lt;VAL_ON&gt;Требуется решение:&lt;&gt; как наказать обвиняемого?" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_CONFLICT3_QUESTION" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;VAL_ON&gt;Требуется решение:&lt;&gt; выберите наказание для обвиняемого
                                -- &lt;VAL_ON&gt;Resolution required:&lt;&gt; Choose a sentence for the accused
                                { "Russian", "&lt;VAL_ON&gt;Требуется решение:&lt;&gt; каков приговор для обвиняемого?" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_POLICY1_QUESTION" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;VAL_ON&gt;Требуется решение:&lt;&gt; Обложить налогом товар «%SUBJECT%»?
                                -- &lt;VAL_ON&gt;Resolution required:&lt;&gt; Impose a tax on %SUBJECT%?
                                { "Russian", "&lt;VAL_ON&gt;Требуется решение:&lt;&gt; ввести налог?" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_POLICY2_QUESTION" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;VAL_ON&gt;Требуется решение:&lt;&gt; Запретить действия или товар «%SUBJECT%»?
                                -- &lt;VAL_ON&gt;Resolution required:&lt;&gt; Impose a ban on %SUBJECT%?
                                { "Russian", "&lt;VAL_ON&gt;Требуется решение:&lt;&gt; ввести запрет?" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_POLICY3_QUESTION" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;VAL_ON&gt;Требуется решение&lt;&gt;: на какую сферу выделить средства?
                                -- &lt;VAL_ON&gt;Resolution required:&lt;&gt; Allocate funds in which area?
                                { "Russian", "&lt;VAL_ON&gt;Требуется решение:&lt;&gt; на что выделить средства?" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_POLICY4_QUESTION" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;VAL_ON&gt;Требуется решение:&lt;&gt; Каким исследованиям отдать приоритет?
                                -- &lt;VAL_ON&gt;Resolution required:&lt;&gt; Where should we focus our research?
                                { "Russian", "&lt;VAL_ON&gt;Требуется решение:&lt;&gt; каким исследованиям отдать приоритет?" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_BUILD_QUESTION_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;VAL_ON&gt;Требуется решение:&lt;&gt; поддержать запрос на расширение поселения?
                                { "Russian", "&lt;VAL_ON&gt;Требуется решение:&lt;&gt; поддержать запрос на расширение?" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_BUILD_QUESTION_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;VAL_ON&gt;Требуется решение:&lt;&gt; строительство какого здания начать?
                                -- &lt;VAL_ON&gt;Resolution required:&lt;&gt; Begin construction of which building?
                                { "Russian", "&lt;VAL_ON&gt;Требуется решение:&lt;&gt; что построить?" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_REQUEST1_QUESTION" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;VAL_ON&gt;Требуется решение&lt;&gt;: поддержать праздник?
                                -- &lt;VAL_ON&gt;Resolution required:&lt;&gt; Endorse the celebration?
                                { "Russian", "&lt;VAL_ON&gt;Требуется решение:&lt;&gt; поддержать праздник?" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_REQUEST2_QUESTION" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;VAL_ON&gt;Требуется решение&lt;&gt;: разрешить экспедицию?
                                -- &lt;VAL_ON&gt;Resolution required&lt;&gt;: Authorise the expedition?
                                { "Russian", "&lt;VAL_ON&gt;Требуется решение:&lt;&gt; разрешить экспедицию?" },
                            }
                        },
                        --#endregion

                        --#region UI_PERK_NEGATIVE_TITLE
                        -- желательно не более 26 букв
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PERK_NEGATIVE_TITLE_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Построено на прокл. земле
                                -- Built on cursed ground
                                { "Russian", "На проклятой земле" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PERK_NEGATIVE_TITLE_5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Зловещий ИИ-администратор
                                -- Sinister AI overlord
                                { "Russian", "Злой ИИ-повелитель" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PERK_NEGATIVE_TITLE_7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Отказ торговой сети
                                -- Trade network failing
                                { "Russian", "Сбоит торговая сеть" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PERK_NEGATIVE_TITLE_9" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Неопробованные стройматериалы
                                -- Prototype building materials
                                { "Russian", "Стройматериалы-прототипы" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PERK_NEGATIVE_TITLE_11" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Локальные выбросы газа
                                -- Localised gas outbreaks
                                { "Russian", "Выбросы газа" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PERK_NEGATIVE_TITLE_12" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Стоит на тектоническом разломе
                                -- Built on fault line
                                { "Russian", "На тектоническом разломе" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PERK_NEGATIVE_TITLE_14" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Мертвая зона без связи
                                -- Signal blackspot
                                { "Russian", "Не ловит сигнал" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PERK_NEGATIVE_TITLE_16" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вода не подходит для питья
                                -- Undrinkable water
                                { "Russian", "Не питьевая вода" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PERK_NEGATIVE_TITLE_17" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Локальная угроза разумной жизни
                                -- Localised cognitohazards
                                { "Russian", "Когнетивные опасности" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PERK_NEGATIVE_TITLE_21" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Частые подземные толчки
                                -- Frequent tremors
                                { "Russian", "Часто дрожит земля" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PERK_NEGATIVE_TITLE_23" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Неотесанные жители
                                -- Uncultured
                                { "Russian", "Бескультурные" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PERK_NEGATIVE_TITLE_24" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Местами зыбучие пески
                                -- Localised quicksand
                                { "Russian", "Зыбучие пески" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PERK_NEGATIVE_TITLE_28" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Мало декоративных элементов
                                -- Poorly decorated
                                { "Russian", "Плохо обставлено" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PERK_NEGATIVE_TITLE_29" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Текущие трубы
                                -- Leaking pipes
                                { "Russian", "Протекают трубы" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PERK_NEGATIVE_TITLE_33" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Проклятое поселение
                                -- Haunted
                                { "Russian", "Населено призраками" },
                            }
                        },
                        --#endregion

                        --#region UI_JUDGEMENT_.*_TITLE
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_MAIN_TITLE_BUILD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ВОЗМОЖНОСТЬ ДЛЯ СТРОИТЕЛЬСТВА
                                -- CONSTRUCTION OPPORTUNITY
                                { "Russian", "ПЛАН СТРОИТЕЛЬСТВА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_BUILD_TITLE_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Доступно расширение поселения
                                -- Settlement Expansion Available
                                { "Russian", "ВОЗМОЖНОСТЬ РАСШИРЕНИЯ ПОСЕЛЕНИЯ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_MAIN_TITLE_VISITOR" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- НОВЫЕ ПОСТУПЛЕНИЯ
                                -- NEW ARRIVALS
                                { "Russian", "ПРИБЫВШИЕ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_VISITOR3_TITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Хороший сосед
                                -- A Good Neighbour
                                { "Russian", "ХОРОШИЙ СОСЕД" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_VISITOR1_TITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Неожиданный гость
                                -- An Unexpected Guest
                                { "Russian", "НЕОЖИДАННЫЙ ГОСТЬ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_VISITOR2_TITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Нуждающийся незнакомец
                                -- A Stranger In Need
                                { "Russian", "НУЖДАЮЩИЙСЯ НЕЗНАКОМЕЦ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_VISITOR6_TITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Дружественные дела
                                -- Friendly Business
                                { "Russian", "ДРУЖЕСТВЕННЫЕ ДЕЛА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_VISITOR4_TITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Таинственное предупреждение
                                -- A Mysterious Warning
                                { "Russian", "ТАИНСТВЕННОЕ ПРЕДУПРЕЖДЕНИЕ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_CONFLICT1_TITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Воровство в сообществе
                                -- Theft in the Community
                                { "Russian", "ВОРОВСТВО В СООБЩЕСТВЕ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_CONFLICT2_TITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Плохие товары
                                -- Faulty Goods
                                { "Russian", "ИСПОРЧЕННЫЕ ТОВАРЫ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_CONFLICT3_TITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Преступная деятельность
                                -- Criminal Enterprise
                                { "Russian", "ПРЕСТУПНОЕ ПРЕДПРИЯТИЕ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_CONFLICT5_TITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сложности в отношениях
                                -- Relational Difficulties
                                { "Russian", "СЛОЖНОСТИ В ОТНОШЕНИЯХ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_CONFLICT5_OPT_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Пусть &lt;TECHNOLOGY&gt;%NAME1%&lt;&gt; выплатит штраф
                                { "Russian", "Оштрафовать &lt;TECHNOLOGY&gt;%NAME1%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_CONFLICT5_OPT_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Пусть &lt;STELLAR&gt;%NAME2%&lt;&gt; выплатит штраф
                                { "Russian", "Оштрафовать &lt;STELLAR&gt;%NAME2%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_CONFLICT6_TITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Новые возможности
                                -- New Opportunities
                                { "Russian", "НОВЫЕ ВОЗМОЖНОСТИ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_POLICY1_TITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Налоговые возможности
                                -- Fiscal Opportunities
                                { "Russian", "ФИСКАЛЬНЫЕ ВОЗМОЖНОСТИ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_POLICY2_TITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Управление рынком
                                -- Market Regulation
                                { "Russian", "РЕГУЛИРОВАНИЕ РЫНКА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_POLICY3_TITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Улучшение поселения
                                -- Bettering the Settlement
                                { "Russian", "УЛУЧШЕНИЕ ПОСЕЛЕНИЯ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_POLICY4_TITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Улучшение жизни
                                -- Improving our Lives
                                { "Russian", "УЛУЧШЕНИЕ НАШЕЙ ЖИЗНИ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_REQUEST1_TITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Отличный выходной день
                                -- A Grand Day Out
                                { "Russian", "ОТЛИЧНЫЙ ВЫХОДНОЙ ДЕНЬ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_REQUEST2_TITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Великая экспедиция
                                -- A Glorious Expedition
                                { "Russian", "ВЕЛИКАЯ ЭКСПЕДИЦИЯ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_DEBRIEF_TITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Citizen Expedition Success!
                                -- Экспедиция жителей прошла успешно!
                                { "Russian", "ЭКСПЕДИЦИЯ ЖИТЕЛЕЙ УСПЕШНО ЗАВЕРШЕНА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_JOB_REMOVE_TITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Бремя истории
                                -- The Burden of History
                                { "Russian", "БРЕМЯ ИСТОРИИ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_MAIN_TITLE_POLICY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- РЕШЕНИЕ ПО ЗАКОНУ
                                -- POLICY DECISION
                                { "Russian", "ПОЛИТИЧЕСКОЕ РЕШЕНИЕ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_MAIN_TITLE_REQUEST" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПРОСЬБА ЖИТЕЛЕЙ
                                -- CITIZEN REQUEST
                                { "Russian", "ПРОСЬБА ЖИТЕЛЯ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_REQUEST3_TITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Бессмертное наследие
                                -- An Immortal Legacy
                                { "Russian", "БЕССМЕРТНОЕ НАСЛЕДИЕ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_UPGRADE_TITLE_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Доступно улучшение поселения
                                -- Settlement Upgrade Available
                                { "Russian", "УЛУЧШЕНИЕ ПОСЕЛЕНИЯ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_FAIL_TITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Провал экспедиции жителей!
                                -- Citizen Expedition Failure!
                                { "Russian", "ПРОВАЛ ЭКСПЕДИЦИЯ ЖИТЕЛЕЙ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_REQUEST4_TITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Следующее поколение
                                -- The Next Generation
                                { "Russian", "СЛЕДУЮЩЕЕ ПОКОЛЕНИЕ" },
                            }
                        },
                        --#endregion

                        --#region UI_JUDGEMENT_VISITOR3_OPT_
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_VISITOR3_OPT_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Принять подарок от гостя по имени %NAME1%
                                -- Accept %NAME1%'s gift
                                { "Russian", "Принять подарок" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_VISITOR3_OPT_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Не принимать подарок от гостя по имени %NAME1%
                                -- Decline %NAME1%'s gift
                                { "Russian", "Не принимать подарок" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_VISITOR3_OPT_6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Отобрать подарок гостя по имени %NAME1%
                                -- Seize %NAME1%'s gift
                                { "Russian", "Отобрать подарок" },
                            }
                        },
                        --#endregion

                        --#region UI_SETTLEMENT_PROD_.*_FAKE
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_PROD_POS_FAKE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %PERK_NAME%: Производительность увеличилась на %NUM% юн./д.
                                { "Russian", "%PERK_NAME%: +%NUM% &lt;IMG&gt;UNITSMALL&lt;&gt;/сут производительности" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_PROD_NEG_FAKE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %PERK_NAME%: Производительность уменьшилась на %NUM% юн./д.
                                { "Russian", "%PERK_NAME%: -%NUM% &lt;IMG&gt;UNITSMALL&lt;&gt;/сут производительности" },
                            }
                        },
                        --#endregion

                        --#region UI_SETTLEMENT_COST_.*_FAKE
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_COST_POS_FAKE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %PERK_NAME%: Расходы сократились на %NUM% юн./д.
                                { "Russian", "%PERK_NAME%: -%NUM% &lt;IMG&gt;UNITSMALL&lt;&gt;/сут к расходам" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_COST_NEG_FAKE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %PERK_NAME%: Стоимость обслуживания увеличилась на %NUM% юн./д.
                                { "Russian", "%PERK_NAME%: +%NUM% &lt;IMG&gt;UNITSMALL&lt;&gt;/сут к обслуживанию" },
                            }
                        },
                        --#endregion

                        --#region UI_SETTLEMENT_.*_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_PRE_MISS_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;FUEL&gt;Получен аварийный сигнал!&lt;&gt;&#xA;Нажмите &lt;IMG&gt;QUICK_MENU&lt;&gt;, чтобы ответить.
                                -- &lt;FUEL&gt;Emergency Broadcast&lt;&gt; detected&#xA;Answer the Communicator by pressing &lt;IMG&gt;QUICK_MENU&lt;&gt;
                                { "Russian", "Пойман сигнал &lt;FUEL&gt;аварийной трансляции&lt;&gt;&#xA;Ответьте по коммуникатору из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_PRE_MISS_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Доберитесь до источника аварийного сигнала.&#xA;Похоже, он расположен на &lt;STELLAR&gt;поверхности планеты&lt;&gt;.
                                -- Reach the source of the emergency broadcast&#xA;Signal source appears to be &lt;STELLAR&gt;planetside&lt;&gt;
                                { "Russian", "Доберитесь до источника аварийного сигнала&#xA;Похоже, он расположен на &lt;STELLAR&gt;поверхности планеты&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_MISS_MSG0A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- На планетарное поселение &lt;FUEL&gt;совершено нападение&lt;&gt;&#xA;Выследите и уничтожьте силы стражей: осталось %CURRENT%
                                -- The planetary settlement is &lt;FUEL&gt;under attack&lt;&gt;&#xA;Hunt and destroy Sentinel forces: %CURRENT% remaining
                                { "Russian", "На планетарное поселение &lt;FUEL&gt;совершено нападение&lt;&gt;&#xA;Выследите и уничтожьте силы стражей: %CURRENT%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_MISS_MSG0" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Осмотрите &lt;STELLAR&gt;поселение&lt;&gt;&#xA;Поговорите с &lt;TRADEABLE&gt;выжившим&lt;&gt;, чтобы узнать подробности.
                                -- Investigate the &lt;STELLAR&gt;settlement&lt;&gt;&#xA;Speak with a &lt;TRADEABLE&gt;survivor&lt;&gt; to learn more
                                { "Russian", "Осмотрите &lt;STELLAR&gt;поселение&lt;&gt;&#xA;Поговорите с &lt;TRADEABLE&gt;выжившим&lt;&gt;, чтобы узнать подробности" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_MISS_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Станьте &lt;STELLAR&gt;куратором&lt;&gt; поселения&#xA;Воспользуйтесь &lt;TECHNOLOGY&gt;интерфейсом центра поселения&lt;&gt;, чтобы принять власть.
                                -- Become settlement &lt;STELLAR&gt;Overseer&lt;&gt;&#xA;Visit the &lt;TECHNOLOGY&gt;Settlement Hub Interface&lt;&gt; to take control
                                { "Russian", "Станьте &lt;STELLAR&gt;куратором&lt;&gt; поселения&#xA;Проверьте &lt;TECHNOLOGY&gt;центральный интерфейс поселения&lt;&gt;,&#xA;чтобы принять управление поселением" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_MISS_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите материалы для постройки &lt;TECHNOLOGY&gt;офиса куратора&lt;&gt;&#xA;%ITEM% требуется для технологии «&lt;TECHNOLOGY&gt;%STAGE%&lt;&gt;»: %CURRENT%/%AMOUNT%&#xA;Подробная информация приведена в журнале (&lt;IMG&gt;OPTIONS&lt;&gt;)&#xA;Закрепите предметы из каталога, чтобы получить дополнительные подсказки.
                                -- Assemble materials to construct an &lt;TECHNOLOGY&gt;Overseer's Office&lt;&gt;&#xA;%ITEM% required for the &lt;TECHNOLOGY&gt;%STAGE%&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;See the Log (&lt;IMG&gt;OPTIONS&lt;&gt;) for detailed information&#xA;Pin items from the Catalogue for additional hints
                                { "Russian", "Соберите материалы для &lt;TECHNOLOGY&gt;офиса куратора&lt;&gt;&#xA;Требуется: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;Подробная информация приведена в журнале (&lt;IMG&gt;OPTIONS&lt;&gt;)&#xA;Закрепляйте инструкции для предметов в каталоге" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_MISS_MSG2A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Ведется строительство &lt;TECHNOLOGY&gt;офиса куратора&lt;&gt;.&#xA;%PROGRESS%&#xA;Офис куратора позволит вам управлять развитием поселения.
                                { "Russian", "Ведется строительство &lt;TECHNOLOGY&gt;офиса куратора&lt;&gt;&#xA;%PROGRESS%&#xA;Офис куратора позволит вам управлять поселением" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_MISS_MSG2B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Доставьте материалы на строительную площадку. %ITEM%, есть %CURRENT% из %AMOUNT%&#xA;Используйте эти материалы, чтобы собрать &lt;TECHNOLOGY&gt;офис куратора&lt;&gt;.&#xA;Офис куратора позволит вам управлять развитием поселения.
                                -- Bring %ITEM% to the construction site: %CURRENT%/%AMOUNT%&#xA;Use these materials to assemble an &lt;TECHNOLOGY&gt;Overseer's Office&lt;&gt;&#xA;The Overseer's Office will allow you to direct settlement progress
                                { "Russian", "Строительство &lt;TECHNOLOGY&gt;офиса куратора&lt;&gt; на паузе&#xA;Отнесите материалы на стройплощадку&#xA;Требуется: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;Офис куратора позволит вам управлять поселением" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_MISS_MSG2C" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Производится строительство &lt;TECHNOLOGY&gt;офиса куратора&lt;&gt;.&#xA;Он разблокирует основные функции поселения.&#xA;Посетите &lt;STELLAR&gt;стройплощадку&lt;&gt; и начните сборку.
                                -- &lt;TECHNOLOGY&gt;Overseer's Office&lt;&gt; construction in progress&#xA;The Overseer's Office will unlock key settlement functions&#xA;Visit the &lt;STELLAR&gt;construction site&lt;&gt; and begin assembly
                                { "Russian", "Ведется строительство &lt;TECHNOLOGY&gt;офиса куратора&lt;&gt;&#xA;Он разблокирует основные функции поселения&#xA;Посетите &lt;STELLAR&gt;стройплощадку&lt;&gt; и начните строительство" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_MISS_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Доступна новая постройка в поселении!&#xA;Посетите &lt;STELLAR&gt;стройплощадку&lt;&gt; и начните сборку.
                                -- New settlement building available!&#xA;Visit the &lt;STELLAR&gt;construction site&lt;&gt; and begin assembly
                                { "Russian", "Доступна новая постройка в поселении!&#xA;Посетите &lt;STELLAR&gt;стройплощадку&lt;&gt; и начните строительство" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_MISS_MSG4A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Доступна новая постройка в поселении!&#xA;Посетите &lt;STELLAR&gt;стройплощадку&lt;&gt; и начните сборку.&#xA;Требуется материал «%ITEM%», есть %CURRENT% из %AMOUNT%.
                                -- New settlement building available!&#xA;Visit the &lt;STELLAR&gt;construction site&lt;&gt; and begin assembly&#xA;%ITEM% required: %CURRENT%/%AMOUNT%
                                { "Russian", "Доступна новая постройка в поселении!&#xA;Посетите &lt;STELLAR&gt;стройплощадку&lt;&gt; и начните строительство&#xA;Требуется: %ITEM% (%CURRENT%/%AMOUNT%)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_MISS_MSG5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Доступны новые &lt;TRADEABLE&gt;возможности развития поселения&lt;&gt;.&#xA;Посетите &lt;TECHNOLOGY&gt;офис куратора&lt;&gt; и воспользуйтесь &lt;STELLAR&gt;терминалом управления&lt;&gt;.&#xA;При управлении поселением вам придется принимать различные решения.
                                -- New &lt;TRADEABLE&gt;Settlement Opportunities&lt;&gt; available&#xA;Visit the &lt;TECHNOLOGY&gt;Overseer's Office&lt;&gt; and use the &lt;STELLAR&gt;Administration Terminal&lt;&gt;&#xA;Managing a settlement involves making a wide range of decisions
                                { "Russian", "Доступны новые &lt;TRADEABLE&gt;возможности развития поселения&lt;&gt;&#xA;Посетите &lt;TECHNOLOGY&gt;офис куратора&lt;&gt; и воспользуйтесь &lt;STELLAR&gt;терминалом управления&lt;&gt;&#xA;Управление поселением потребует принятие различных решений" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_MISS_MSG6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поступили новые &lt;COMMODITY&gt;ресурсы&lt;&gt;.&#xA;Поселения производят ценные ресурсы для своих кураторов.&#xA;Получить их можно через &lt;STELLAR&gt;терминал управления&lt;&gt; в &lt;TECHNOLOGY&gt;офисе куратора&lt;&gt;.
                                -- New &lt;COMMODITY&gt;resources&lt;&gt; available&#xA;Settlements produce valuable resources for their Overseer&#xA;Collect resources from the &lt;STELLAR&gt;Administration Terminal&lt;&gt; in the &lt;TECHNOLOGY&gt;Overseer's Office&lt;&gt;
                                { "Russian", "Поступили новые &lt;COMMODITY&gt;ресурсы&lt;&gt;&#xA;Заберите их из &lt;STELLAR&gt;терминала управления&lt;&gt;&#xA;в &lt;TECHNOLOGY&gt;офисе куратора&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_MISS_MSG7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите материалы для строения &lt;TECHNOLOGY&gt;%BUILDING%&lt;&gt;&#xA;%ITEM% требуется для технологии «&lt;TECHNOLOGY&gt;%STAGE%&lt;&gt;»: %CURRENT%/%AMOUNT%&#xA;Подробная информация приведена в журнале (&lt;IMG&gt;OPTIONS&lt;&gt;)&#xA;Закрепите предметы из каталога, чтобы получить дополнительные подсказки.
                                -- Assemble materials for the &lt;TECHNOLOGY&gt;%BUILDING%&lt;&gt;&#xA;%ITEM% required for the &lt;TECHNOLOGY&gt;%STAGE%&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;See the Log (&lt;IMG&gt;OPTIONS&lt;&gt;) for detailed information&#xA;Pin items from the Catalogue for additional hints
                                { "Russian", "&lt;TECHNOLOGY&gt;%BUILDING%&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt; &lt;TECHNOLOGY&gt;%STAGE%&lt;&gt;&#xA;Требуются материалы: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;Подробная информация приведена в журнале (&lt;IMG&gt;OPTIONS&lt;&gt;)&#xA;Закрепляйте инструкции для предметов в каталоге" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_MISS_MSG7A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;%BUILDING%&lt;&gt;: идет строительство&#xA;%PROGRESS%
                                -- &lt;TECHNOLOGY&gt;%BUILDING%&lt;&gt; construction in progress&#xA;%PROGRESS%
                                { "Russian", "&lt;TECHNOLOGY&gt;%BUILDING%&lt;&gt; строится&#xA;%PROGRESS%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_MISS_MSG7B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Отнесите материал «%ITEM%» на стройплощадку: %CURRENT%/%AMOUNT%.&#xA;Используйте материалы, чтобы собрать постройку &lt;TECHNOLOGY&gt;%BUILDING%&lt;&gt;.
                                -- Bring %ITEM% to the construction site: %CURRENT%/%AMOUNT%&#xA;Use these materials to assemble the &lt;TECHNOLOGY&gt;%BUILDING%&lt;&gt;
                                { "Russian", "&lt;TECHNOLOGY&gt;%BUILDING%&lt;&gt; на паузе&#xA;Отнесите материалы на стройплощадку&#xA;Требуется: %ITEM% (%CURRENT%/%AMOUNT%)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_MISS_MSG7C" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Ведется строительство &lt;STELLAR&gt;постройки в поселении&lt;&gt;.&#xA;Используйте &lt;TECHNOLOGY&gt;телепорт космической станции&lt;&gt;, чтобы вернуться в ваше поселение и проверить ход работ.
                                -- A &lt;STELLAR&gt;settlement building&lt;&gt; is under construction&#xA;Use the &lt;TECHNOLOGY&gt;Space Station Teleporter&lt;&gt; to return to your settlement and view progress
                                { "Russian", "В поселении ведётся &lt;STELLAR&gt;строительство здания&lt;&gt;&#xA;Вернитесь в поселение и проверьте ход работ&#xA;Используйте &lt;TECHNOLOGY&gt;телепорт на космической станции&lt;&gt;&#xA;для быстрого возвращения в поселение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_MISS_MSG7D" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Здание &lt;STELLAR&gt;%BUILDING%&lt;&gt; построено!&#xA;Посетите стройплощадку, чтобы &lt;TRADEABLE&gt;официально открыть&lt;&gt; его.
                                { "Russian", "Здание &lt;STELLAR&gt;%BUILDING%&lt;&gt; построено!&#xA;Проведите церемонию &lt;TRADEABLE&gt;торжественного открытия&lt;&gt;&#xA;на стройплощадке" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_MISS_MSG7D_UP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Здание &lt;STELLAR&gt;%BUILDING%&lt;&gt; улучшено!&#xA;Посетите стройплощадку, чтобы &lt;TRADEABLE&gt;официально снова открыть&lt;&gt; его.
                                { "Russian", "Здание &lt;STELLAR&gt;%BUILDING%&lt;&gt; улучшено!&#xA;Проведите церемонию повторного &lt;TRADEABLE&gt;открытия&lt;&gt;&#xA;на стройплощадке" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_MISS_MSG7E" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Постройка в поселении&lt;&gt; готова к открытию.&#xA;Воспользуйтесь &lt;TECHNOLOGY&gt;телепортом космической станции&lt;&gt;, чтобы вернуться в свое поселение.
                                { "Russian", "&lt;STELLAR&gt;Постройка в поселении&lt;&gt; готова к открытию&#xA;Используйте &lt;TECHNOLOGY&gt;телепорт&lt;&gt; для возвращения в поселение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_MISS_MSG7E_UP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Улучшенная &lt;STELLAR&gt;постройка в поселении&lt;&gt; готова к повторному открытию.&#xA;Воспользуйтесь &lt;TECHNOLOGY&gt;телепортом космической станции&lt;&gt;, чтобы вернуться в свое поселение.
                                { "Russian", "Улучшенная &lt;STELLAR&gt;постройка в поселении&lt;&gt; готова к повторному открытию&#xA;Используйте &lt;TECHNOLOGY&gt;телепорт&lt;&gt; для возвращения в поселение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_MISS_MSG8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Статус поселения: &lt;STELLAR&gt;все в порядке&lt;&gt;.&#xA;Куратор может отправиться исследовать вселенную.&#xA;&lt;TECHNOLOGY&gt;Терминал управления&lt;&gt; сообщит, если понадобится ваше участие.
                                -- Settlement status: &lt;STELLAR&gt;running smoothly&lt;&gt;&#xA;The Overseer is free to explore the universe&#xA;The &lt;TECHNOLOGY&gt;Administration Terminal&lt;&gt; will alert you when required
                                { "Russian", "В поселении &lt;STELLAR&gt;всё в порядке&lt;&gt;&#xA;Куратор может продолжить  исследовать вселенную" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_MISS_MSG8A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Статус поселения: &lt;STELLAR&gt;все в порядке&lt;&gt;.&#xA;Возведение постройки завершится через: %TIME%.&#xA;Куратор может отправиться исследовать вселенную.&#xA;&lt;TECHNOLOGY&gt;Терминал управления&lt;&gt; сообщит, если понадобится ваше участие.
                                -- Settlement status: &lt;STELLAR&gt;running smoothly&lt;&gt;&#xA;Current building project will complete in: %TIME%&#xA;The Overseer is free to explore the universe&#xA;The &lt;TECHNOLOGY&gt;Administration Terminal&lt;&gt; will alert you when required
                                { "Russian", "В поселении &lt;STELLAR&gt;всё в порядке&lt;&gt;&#xA;Возведение постройки завершится через %TIME%&#xA;Куратор может продолжить  исследовать вселенную" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_MISS_MSG_PROP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Статус поселения: &lt;STELLAR&gt;жители готовят предложение&lt;&gt;.&#xA;Новое предложение жителей будет готово через: %TIME%.&#xA;Куратор может отправиться исследовать вселенную.&#xA;&lt;TECHNOLOGY&gt;Терминал управления&lt;&gt; сообщит, если понадобится ваше участие.
                                -- Settlement status: &lt;STELLAR&gt;citizens preparing proposal&lt;&gt;&#xA;New citizen proposal ready in: %TIME%&#xA;The Overseer is free to explore the universe&#xA;The &lt;TECHNOLOGY&gt;Administration Terminal&lt;&gt; will alert you when required
                                { "Russian", "В поселении &lt;STELLAR&gt;жители готовят предложение&lt;&gt;&#xA;Новое предложение жителей будет готово через %TIME%&#xA;Куратор может продолжить  исследовать вселенную" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_MISS_MSG_VISIT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Статус поселения: &lt;STELLAR&gt;неподалеку замечен незнакомец&lt;&gt;.&#xA;Незнакомец прибудет через: %TIME%.&#xA;Куратор может отправиться исследовать вселенную.&#xA;&lt;TECHNOLOGY&gt;Терминал управления&lt;&gt; сообщит, если понадобится ваше участие.
                                -- Settlement status: &lt;STELLAR&gt;stranger sighted nearby&lt;&gt;&#xA;The stranger will arrive in: %TIME%&#xA;The Overseer is free to explore the universe&#xA;The &lt;TECHNOLOGY&gt;Administration Terminal&lt;&gt; will alert you when required
                                { "Russian", "Возле поселения &lt;STELLAR&gt;неподалеку замечен незнакомец&lt;&gt;&#xA;Незнакомец прибудет через %TIME%&#xA;Куратор может продолжить  исследовать вселенную" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_MISS_MSG_FIGHT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Статус поселения: &lt;STELLAR&gt;назревает конфликт между жителями&lt;&gt;.&#xA;Жители обратятся к вам со своей проблемой через: %TIME%.&#xA;Куратор может отправиться исследовать вселенную.&#xA;&lt;TECHNOLOGY&gt;Терминал управления&lt;&gt; сообщит, если понадобится ваше участие.
                                -- Settlement status: &lt;STELLAR&gt;citizen conflict brewing&lt;&gt;&#xA;Citizens will present their case in: %TIME%&#xA;The Overseer is free to explore the universe&#xA;The &lt;TECHNOLOGY&gt;Administration Terminal&lt;&gt; will alert you when required
                                { "Russian", "В поселении &lt;STELLAR&gt;назревает конфликт между жителями&lt;&gt;&#xA;Жители обратятся к вам через %TIME%&#xA;Куратор может продолжить  исследовать вселенную" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_MISS_MSG9" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Статус поселения: &lt;FUEL&gt;тревога из-за стражей!&lt;&gt;&#xA;Вернитесь в поселение, чтобы защитить его от нападения.
                                -- Settlement status: &lt;FUEL&gt;Sentinel alert level high!&lt;&gt;&#xA;Return to your settlement to defend it from attack
                                { "Russian", "На поселение &lt;FUEL&gt;напали стражи&lt;&gt;&#xA;Вернитесь в поселение и защитите его" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_MISS_MSG9A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Статус поселения: &lt;FUEL&gt;тревога из-за стражей!&lt;&gt;&#xA;На поселение напали!&#xA;Найдите и уничтожьте силы стражей: осталось %CURRENT%
                                -- Settlement status: &lt;FUEL&gt;Sentinel alert level high!&lt;&gt;&#xA;The settlement is under attack&#xA;Hunt and destroy Sentinel forces: %CURRENT% remaining
                                { "Russian", "На поселение &lt;FUEL&gt;напали стражи&lt;&gt;&#xA;Найдите и уничтожьте силы стражей: %CURRENT%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_MISS_MSG9B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Статус поселения: &lt;FUEL&gt;тревога из-за стражей!&lt;&gt;&#xA;Вернитесь в поселение, чтобы защитить его от нападения.&#xA;&lt;STELLAR&gt;Телепортируйтесь&lt;&gt; в свое поселение из любого терминала телепорта.
                                -- Settlement status: &lt;FUEL&gt;Sentinel alert level high!&lt;&gt;&#xA;Return to your settlement to defend it from attack&#xA;&lt;STELLAR&gt;Teleport&lt;&gt; to your settlement from any teleport terminus
                                { "Russian", "На поселение &lt;FUEL&gt;напали стражи&lt;&gt;&#xA;Вернитесь в поселение и защитите его&#xA;&lt;STELLAR&gt;Телепортируйтесь&lt;&gt; в поселение при первой возможности" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_VISIT_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- В поселение прибыл &lt;TRADEABLE&gt;посетитель&lt;&gt;.&#xA;Воспользуйтесь &lt;TECHNOLOGY&gt;терминалом управления&lt;&gt; в вашем офисе, чтобы поприветствовать его.
                                -- A &lt;TRADEABLE&gt;visitor&lt;&gt; has arrived at the settlement&#xA;Use the &lt;TECHNOLOGY&gt;Administration Terminal&lt;&gt; in your office to greet the visitor
                                { "Russian", "В поселение прибыл &lt;TRADEABLE&gt;посетитель&lt;&gt;&#xA;Поприветствуйте его через &lt;TECHNOLOGY&gt;терминал управления&lt;&gt;&#xA;в вашем офисе" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_VISIT_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- В поселение прибыл &lt;TRADEABLE&gt;посетитель&lt;&gt;.&#xA;Вернитесь в поселение, чтобы поприветствовать его.
                                -- A &lt;TRADEABLE&gt;visitor&lt;&gt; has arrived at the settlement&#xA;Return to your settlement to greet the visitor
                                { "Russian", "В поселение прибыл &lt;TRADEABLE&gt;посетитель&lt;&gt;&#xA;Вернитесь в поселение, чтобы поприветствовать его" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_VISIT_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- В поселение прибыл &lt;TRADEABLE&gt;посетитель&lt;&gt;.&#xA;Воспользуйтесь &lt;TECHNOLOGY&gt;телепортом космической станции&lt;&gt;, чтобы быстро вернуться в поселение.
                                -- A &lt;TRADEABLE&gt;visitor&lt;&gt; has arrived at the settlement&#xA;Use the &lt;TECHNOLOGY&gt;Space Station Teleporter&lt;&gt; to quickly return to your settlement
                                { "Russian", "В поселение прибыл &lt;TRADEABLE&gt;посетитель&lt;&gt;&#xA;Используйте &lt;TECHNOLOGY&gt;телепорт на космической станции&lt;&gt;,&#xA;чтобы быстро вернуться в поселение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_BUILD_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Новое &lt;TRADEABLE&gt;строение&lt;&gt; доступно для постройки.&#xA;Воспользуйтесь &lt;TECHNOLOGY&gt;терминалом управления&lt;&gt; в своем офисе, чтобы приказать возвести его.
                                -- New &lt;TRADEABLE&gt;building opportunities&lt;&gt; available&#xA;Use the &lt;TECHNOLOGY&gt;Administration Terminal&lt;&gt; in your office to commision a new building
                                { "Russian", "Доступны новые &lt;TRADEABLE&gt;планы строительства&lt;&gt;&#xA;Используйте &lt;TECHNOLOGY&gt;терминал управления&lt;&gt; в вашем офисе&#xA;для ввода в эксплуатацию нового здания" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_BUILD_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Новое &lt;TRADEABLE&gt;строение&lt;&gt; доступно для постройки.&#xA;Вернитесь в поселение, чтобы приказать возвести его.
                                -- New &lt;TRADEABLE&gt;building opportunities&lt;&gt; available&#xA;Return to your settlement to commision a new building
                                { "Russian", "Доступны новые &lt;TRADEABLE&gt;планы строительства&lt;&gt;&#xA;Вернитесь в поселение и возведите новое здание" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_BUILD_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Новое &lt;TRADEABLE&gt;строение&lt;&gt; доступно для постройки.&#xA;Воспользуйтесь &lt;TECHNOLOGY&gt;телепортом космической станции&lt;&gt;, чтобы быстро вернуться в поселение.
                                -- New &lt;TRADEABLE&gt;building opportunities&lt;&gt; available&#xA;Use the &lt;TECHNOLOGY&gt;Space Station Teleporter&lt;&gt; to quickly return to your settlement
                                { "Russian", "Доступны новые &lt;TRADEABLE&gt;планы строительства&lt;&gt;&#xA;Используйте &lt;TECHNOLOGY&gt;телепорт на космической станции&lt;&gt;&#xA;для быстрого возвращения в поселение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_POLICY_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Доступны новые &lt;TRADEABLE&gt;решения по управлению поселением&lt;&gt;.&#xA;Воспользуйтесь &lt;TECHNOLOGY&gt;терминалом управления&lt;&gt; в своем офисе, чтобы определить политику поселения.
                                -- New &lt;TRADEABLE&gt;settlement management decision&lt;&gt; available&#xA;Use the &lt;TECHNOLOGY&gt;Administration Terminal&lt;&gt; in your office to direct settlement policy
                                { "Russian", "Решите &lt;TRADEABLE&gt;вопрос развития поселения&lt;&gt;&#xA;Используйте &lt;TECHNOLOGY&gt;терминал управления&lt;&gt; в вашем офисе,&#xA;чтобы определить вектор развития поселения" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_POLICY_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Доступны новые &lt;TRADEABLE&gt;решения по управлению поселением&lt;&gt;.&#xA;Вернитесь в поселение, чтобы определить его политику.
                                -- New &lt;TRADEABLE&gt;settlement management decision&lt;&gt; available&#xA;Return to your settlement to set policies
                                { "Russian", "Решите &lt;TRADEABLE&gt;вопрос развития поселения&lt;&gt;&#xA;Вернитесь в поселение и определите вектор развития" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_POLICY_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Доступны новые &lt;TRADEABLE&gt;решения по управлению поселением&lt;&gt;.&#xA;Воспользуйтесь &lt;TECHNOLOGY&gt;телепортом космической станции&lt;&gt;, чтобы быстро вернуться в поселение.
                                { "Russian", "Решите &lt;TRADEABLE&gt;вопрос развития поселения&lt;&gt;&#xA;Используйте &lt;TECHNOLOGY&gt;телепорт на космической станции&lt;&gt;&#xA;для быстрого возвращения в поселение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_REQUEST_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Доступна новая &lt;TRADEABLE&gt;просьба населения&lt;&gt;.&#xA;Воспользуйтесь &lt;TECHNOLOGY&gt;терминалом управления&lt;&gt; в своем офисе, чтобы выполнить ее или отказать в ней.
                                -- New &lt;TRADEABLE&gt;citizen request&lt;&gt; available&#xA;Use the &lt;TECHNOLOGY&gt;Administration Terminal&lt;&gt; in your office to authorise or deny the request
                                { "Russian", "У жителей поселения появилась к вам &lt;TRADEABLE&gt;просьба&lt;&gt;&#xA;Используйте &lt;TECHNOLOGY&gt;терминал управления&lt;&gt; в вашем офисе,&#xA;чтобы принять или отклонить прошение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_REQUEST_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Доступна новая &lt;TRADEABLE&gt;просьба населения&lt;&gt;.&#xA;Вернитесь в поселение, чтобы просмотреть ее.
                                -- New &lt;TRADEABLE&gt;citizen request&lt;&gt; available&#xA;Return to your settlement to view their request
                                { "Russian", "У жителей поселения появилась к вам &lt;TRADEABLE&gt;просьба&lt;&gt;&#xA;Вернитесь в поселение, чтобы ознакомиться с ней" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_REQUEST_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Доступна новая &lt;TRADEABLE&gt;просьба населения&lt;&gt;.&#xA;Воспользуйтесь &lt;TECHNOLOGY&gt;телепортом космической станции&lt;&gt;, чтобы быстро вернуться в поселение.
                                -- New &lt;TRADEABLE&gt;citizen request&lt;&gt; available&#xA;Use the &lt;TECHNOLOGY&gt;Space Station Teleporter&lt;&gt; to quickly return to your settlement
                                { "Russian", "У жителей поселения появилась к вам &lt;TRADEABLE&gt;просьба&lt;&gt;&#xA;Используйте &lt;TECHNOLOGY&gt;телепорт на космической станции&lt;&gt;&#xA;для быстрого возвращения в поселение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_DISPUTE_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Возник &lt;TRADEABLE&gt;спор между жителями&lt;&gt;.&#xA;Воспользуйтесь &lt;TECHNOLOGY&gt;терминалом управления&lt;&gt; в своем офисе, чтобы разрешить его.
                                -- A &lt;TRADEABLE&gt;citizen dispute&lt;&gt; has arisen&#xA;Use the &lt;TECHNOLOGY&gt;Administration Terminal&lt;&gt; in your office to resolve the dispute
                                { "Russian", "Возник &lt;TRADEABLE&gt;спор между жителями&lt;&gt;&#xA;Используйте &lt;TECHNOLOGY&gt;терминал управления&lt;&gt; в вашем офисе,&#xA;чтобы урегулировать конфликт" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_DISPUTE_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Возник &lt;TRADEABLE&gt;спор между жителями&lt;&gt;.&#xA;Вернитесь в поселение, чтобы разрешить его.
                                -- A &lt;TRADEABLE&gt;citizen dispute&lt;&gt; has arisen&#xA;Return to your settlement to solve their dispute
                                { "Russian", "Возник &lt;TRADEABLE&gt;спор между жителями&lt;&gt;&#xA;Вернитесь в поселение, чтобы разрешить конфликт" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_DISPUTE_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Возник &lt;TRADEABLE&gt;спор между жителями&lt;&gt;.&#xA;Воспользуйтесь &lt;TECHNOLOGY&gt;телепортом космической станции&lt;&gt;, чтобы быстро вернуться в поселение.
                                { "Russian", "Возник &lt;TRADEABLE&gt;спор между жителями&lt;&gt;&#xA;Используйте &lt;TECHNOLOGY&gt;телепорт на космической станции&lt;&gt;&#xA;для быстрого возвращения в поселение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_RESEARCH_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- От жителей поступило новое &lt;TRADEABLE&gt;предложение&lt;&gt;.&#xA;Воспользуйтесь &lt;TECHNOLOGY&gt;терминалом управления&lt;&gt; в своем офисе, чтобы принять или отказаться от него.
                                -- New &lt;TRADEABLE&gt;citizen proposal&lt;&gt; available&#xA;Use the &lt;TECHNOLOGY&gt;Administration Terminal&lt;&gt; in your office to authorise or deny the request
                                { "Russian", "От жителей поступило новое &lt;TRADEABLE&gt;предложение&lt;&gt;&#xA;Используйте &lt;TECHNOLOGY&gt;терминал управления&lt;&gt; в вашем офисе,&#xA;чтобы рассмотреть инициативу" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_RESEARCH_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- От жителей поступило новое &lt;TRADEABLE&gt;предложение&lt;&gt;.&#xA;Вернитесь в поселение, чтобы просмотреть его.
                                { "Russian", "От жителей поступило новое &lt;TRADEABLE&gt;предложение&lt;&gt;&#xA;Вернитесь в поселение, чтобы изучить его" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_RESEARCH_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- От жителей поступило новое &lt;TRADEABLE&gt;предложение&lt;&gt;.&#xA;Воспользуйтесь &lt;TECHNOLOGY&gt;телепортом космической станции&lt;&gt;, чтобы быстро вернуться в поселение.
                                { "Russian", "От жителей поступило новое &lt;TRADEABLE&gt;предложение&lt;&gt;&#xA;Используйте &lt;TECHNOLOGY&gt;телепорт на космической станции&lt;&gt;&#xA;для быстрого возвращения в поселение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_JUDGE_OFFICE_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Текущие &lt;STELLAR&gt;дела поселения&lt;&gt; требуют вашего внимания.&#xA;Постройте &lt;TECHNOLOGY&gt;офис куратора&lt;&gt;, чтобы управлять своим поселением.
                                -- Pending &lt;STELLAR&gt;settlement business&lt;&gt; requires your attention&#xA;Construct the &lt;TECHNOLOGY&gt;Overseer's Office&lt;&gt; to administrate your Settlement
                                { "Russian", "Текущие &lt;STELLAR&gt;дела поселения&lt;&gt; требуют вашего внимания&#xA;Постройте &lt;TECHNOLOGY&gt;офис куратора&lt;&gt;, чтобы управлять поселением" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_JUDGE_OFFICE_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Текущие &lt;STELLAR&gt;дела поселения&lt;&gt; требуют вашего внимания.&#xA;Вернитесь в поселение, чтобы построить &lt;TECHNOLOGY&gt;офис куратора&lt;&gt;.
                                { "Russian", "Текущие &lt;STELLAR&gt;дела поселения&lt;&gt; требуют вашего внимания&#xA;Вернитесь в поселение, чтобы построить &lt;TECHNOLOGY&gt;офис куратора&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_JUDGE_OFFICE_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Текущие &lt;STELLAR&gt;дела поселения&lt;&gt; требуют вашего внимания.&#xA;Воспользуйтесь &lt;TECHNOLOGY&gt;телепортом космической станции&lt;&gt;, чтобы быстро вернуться в поселение.
                                { "Russian", "Текущие &lt;STELLAR&gt;дела поселения&lt;&gt; требуют вашего внимания&#xA;Используйте &lt;TECHNOLOGY&gt;телепорт на космической станции&lt;&gt;&#xA;для быстрого возвращения в поселение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_POP_POS1_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Новые жители (%NUM%) присоединились к поселению
                                -- %NUM% new citizen has joined the settlement
                                { "Russian", "Житель присоединился к поселению" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_POP_POS_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Новые жители (%NUM%) присоединились к поселению
                                -- %NUM% new citizens have joined the settlement
                                { "Russian", "Присоединились к поселению %NUM% жителей" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_PROD_POS_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Продуктивность поселения увеличилась на %NUM% юн./д.
                                -- Settlement productivity increased by %NUM% units/day
                                { "Russian", "Продуктивность поселения: +%NUM% &lt;IMG&gt;UNITSMALL&lt;&gt;/сут" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_PROD_NEG_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Продуктивность поселения снизилась на %NUM% юн./д.
                                { "Russian", "Продуктивность поселения: -%NUM% &lt;IMG&gt;UNITSMALL&lt;&gt;/сут" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_MOOD_POS_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Довольство поселения возросло на %NUM%%
                                -- Settlement happiness improved %NUM%%
                                { "Russian", "Довольство поселения: +%NUM%%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_MOOD_NEG_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Довольство поселения снизилось на %NUM%%
                                -- Settlement happiness decreased %NUM%%
                                { "Russian", "Довольство поселения: -%NUM%%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_COST_POS_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Стоимость обслуживания поселения уменьшилась на %NUM% юн./д.
                                -- Settlement maintenance costs reduced by %NUM% units/day
                                { "Russian", "Обслуживание поселения: -%NUM% &lt;IMG&gt;UNITSMALL&lt;&gt;/сут" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_COST_NEG_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Стоимость обслуживания поселения увеличилась на %NUM% юн./д.
                                { "Russian", "Обслуживание поселения: +%NUM% &lt;IMG&gt;UNITSMALL&lt;&gt;/сут" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_SENT_POS_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Уровень угрозы стражей в поселении снизился на %NUM%%
                                -- Settlement Sentinel alert level reduced by %NUM%%
                                { "Russian", "Угроза поселению: -%NUM%%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_SENT_NEG_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Внимание! Уровень угрозы стражей в поселении вырос на %NUM%%
                                -- Warning! Sentinel alert level increased by %NUM%%
                                { "Russian", "Угроза поселению: +%NUM%%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_DEBT_POS_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Долг поселения уменьшился: %NUM% юн.
                                -- Settlement debt reduced: %NUM% units
                                { "Russian", "Долг поселения: -%NUM% &lt;IMG&gt;UNITSMALL&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_DEBT_NEG_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Накопленный долг поселения: %NUM% юн.
                                -- Settlement debt incurred: %NUM% units
                                { "Russian", "Долг поселения: +%NUM% &lt;IMG&gt;UNITSMALL&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_POP_NEG1_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Жители (%NUM%) покидают поселение
                                -- %NUM% citizen has left the settlement
                                { "Russian", "%NUM% житель покинул поселение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_POP_NEG_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Жители (%NUM%) покидают поселение
                                { "Russian", "%NUM% жителей покинули поселение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_ITEM_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- В поселении есть новые предметы! %ITEM% х %AMOUNT%
                                -- New settlement items available! %ITEM% x %AMOUNT%
                                { "Russian", "В поселении есть новые предметы: %ITEM% × %AMOUNT%" },
                            }
                        },
                        --#endregion

                        --#region UI_JUDGEMENT_CRIME
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_CRIME1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %NAME1% обвиняет в воровстве существо по имени %NAME2%. Пропавший предмет: %TRADEITEM%.
                                -- %NAME1% accuses %NAME2% of theft. The missing item is %TRADEITEM%
                                { "Russian", "%NAME1% обвиняет в воровстве %NAME2%. Пропавший предмет: %TRADEITEM%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_CRIME2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %NAME1% обвиняет существо по имени %NAME2% в отравлении его испорченной едой (%FOOD%).
                                -- %NAME1% accuses %NAME2% of poisoning them with tainted %FOOD%
                                { "Russian", "%NAME1% обвиняет %NAME2% в отравлении его испорченной еды (%FOOD%)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_CRIME3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %NAME1% установил модуль «%TECH_ITEM%» на свой звездолет, но тот вышел из строя, что привело к катастрофе. Владелец обвиняет существо по имени %NAME2% в саботаже.
                                -- The %TECH_ITEM% on %NAME1%'s starship has failed catastrophically. They accuse %NAME2% of sabotage
                                { "Russian", "В звездолёте %NAME1% полностью сломалась технология (%TECH_ITEM%). Владелец обвиняет %NAME2% в саботаже" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_CRIME4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %NAME1% утверждает, что существо по имени %NAME2% послало за ним профессионального убийцу.
                                -- %NAME1% claims to have narrowly avoided death at the hands of a professional assassin, hired by %NAME2%
                                { "Russian", "%NAME1% утверждает, что чудом избежал покушения профессионального убийцы, которого нанял %NAME2%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_CRIME5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %NAME1% обвиняет существо по имени %NAME2% в поджоге своего имущества.
                                -- %NAME1% has been the victim of a catastrophic fire. They accuse %NAME2% of arson
                                { "Russian", "%NAME1% утверждает, что стал жертвой катастрофического пожара. Он обвиняет %NAME2% в поджоге" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_CRIME6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %NAME1%, чей отмеченный наградами питомец недавно умер, утверждает, что %NAME2% подсыпал яд в питательные гранулы его питомца.
                                -- %NAME1%'s prizewinning animal companion has recently passed away. They allege %NAME2% slipped poison into their creature pellets
                                { "Russian", "%NAME1%, чей отмеченный наградами питомец недавно умер, утверждает, что %NAME2% подсыпал яд в питательные гранулы его питомца" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_CRIME7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %NAME1% обвиняет существо по имени %NAME2% в краже результатов долгосрочной программы по разведению растений.
                                -- %NAME1% accuses %NAME2% of stealing the results of a long-running plant breeding programme
                                { "Russian", "%NAME1% обвиняет %NAME2% в краже результатов долгосрочной программы по размножению животных" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_CRIME8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %NAME1% обвиняет существо по имени %NAME2% в незаконном отборе образцов ДНК во время сна.
                                -- %NAME1% accuses %NAME2% of illegally sampling their DNA while they slept
                                { "Russian", "%NAME1% обвиняет %NAME2% в незаконном сборе образцов ДНК во время сна" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_CRIME9" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %NAME1% обвиняет существо по имени %NAME2% в том, что оно незаконно выдавало себя за него.
                                -- %NAME1% accuses %NAME2% of fraudulently impersonating them
                                { "Russian", "%NAME1% обвиняет %NAME2% в том, что он незаконно выдавал себя за него" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_CRIME10" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %NAME1% обвиняет существо по имени %NAME2% в том, что то продавало незаконно измененные детали для экзокостюмов.
                                -- %NAME1% accuses %NAME2% of selling illegally modified Exosuit parts
                                { "Russian", "%NAME1% обвиняет %NAME2% в том, что он продавал незаконно измененные детали для экзокостюмов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_CRIME11" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %NAME1% обвиняет существо по имени %NAME2% в установке скрытых камер в его обитаемой капсуле.
                                -- %NAME1% accuses %NAME2% of covertly installing security cameras in their habitation pod
                                { "Russian", "%NAME1% обвиняет %NAME2% в установке скрытых камер в его обитаемой капсуле" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_CRIME12" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %NAME1% обвиняет существо по имени %NAME2% в контрабанде товара «%TRADEITEM%».
                                -- %NAME1% accuses %NAME2% of smuggling %TRADEITEM% past system authorities
                                { "Russian", "%NAME1% обвиняет %NAME2% в контрабанде товара (%TRADEITEM%)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_CRIME13" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %NAME1% обвиняет существо по имени %NAME2% в угоне и опасном вождении его вездехода.
                                -- %NAME1% accuses %NAME2% of stealing and recklessly driving their Exocraft
                                { "Russian", "%NAME1% обвиняет %NAME2% в угоне и опасном вождении его вездехода" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_CRIME14" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %NAME1% обвиняет существо по имени %NAME2% в организации подпольной сети азартных игр.
                                -- %NAME1% accuses %NAME2% of running an underground gambling network
                                { "Russian", "%NAME1% обвиняет %NAME2% в организации подпольной сети азартных игр" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_CRIME15" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %NAME1% обвиняет существо по имени %NAME2% в распространении предательской ереси.
                                -- %NAME1% accuses %NAME2% of spreading a treacherous heresy
                                { "Russian", "%NAME1% обвиняет %NAME2% в распространении предательской ереси" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_CRIME16" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %NAME1% обвиняет существо по имени %NAME2% в произнесении запретных слов.
                                -- %NAME1% accuses %NAME2% of speaking the forbidden words
                                { "Russian", "%NAME1% обвиняет %NAME2% в произнесении запретных слов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_CRIME17" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %NAME1% обвиняет существо по имени %NAME2% в манипулировании ценами на терминале галактической торговли.
                                -- %NAME1% accuses %NAME2% of manipulating prices on the galactic trade terminal
                                { "Russian", "%NAME1% обвиняет %NAME2% в манипулировании ценами в терминале галактической торговли" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_CRIME18" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %NAME1% обвиняет существо по имени %NAME2% в ведении бизнеса без лицензии (%BUSINESS%).
                                -- %NAME1% accuses %NAME2% of running %BUSINESS% without a license
                                { "Russian", "%NAME1% обвиняет %NAME2% в ведении бизнеса без лицензии (%BUSINESS%)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_CRIME19" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %NAME1% обвиняет существо по имени %NAME2% в продаже бесполезных силикатных плиток под видом медицинского оборудования.
                                -- %NAME1% accuses %NAME2% of selling worthless silicate tablets under the guise of medical treatment
                                { "Russian", "%NAME1% обвиняет %NAME2% в продаже бесполезных силикатных таблеток под видом медицинского лечения" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_CRIME20" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %NAME1% пойман во время кражи у поселенца по имени %BUSINESS%.
                                { "Russian", "%NAME1% пойман во время кражи у поселенца по имени %BUSINESS%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_CRIME21" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %NAME1% пойман во время кражи предмета «%TRADEITEM%».
                                { "Russian", "%NAME1% пойман во время кражи предмета “%TRADEITEM%”" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_CRIME22" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %NAME1% пойман при попытке испортить предмет «%TRADEITEM%» другого поселенца.
                                { "Russian", "%NAME1% пойман при попытке испортить предмет “%TRADEITEM%” другого поселенца" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_CRIME23" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %BUSINESS% поселенца по имени %NAME1% отравляет запасы воды.
                                { "Russian", "%BUSINESS% поселенца по имени %NAME1% отравляет запасы воды" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_CRIME24" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %NAME1% арестован за несколько драк с другими поселенцами.
                                { "Russian", "%NAME1% арестован за несколько драк с другими поселенцами" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_CRIME25" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Оказалось, что %BUSINESS% поселенца по имени %NAME1% является прикрытием для кражи генов.
                                { "Russian", "Оказалось, что %BUSINESS% поселенца по имени %NAME1% является прикрытием для кражи генов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_CRIME26" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %NAME1% пойман при попытке прорыть туннель под жилищем другого поселенца.
                                { "Russian", "%NAME1% пойман при попытке прорыть туннель под жилищем другого поселенца" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_CRIME27" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %NAME1% арестован за несоблюдение правил гигиены при приготовлении пищи.
                                { "Russian", "%NAME1% арестован за несоблюдение правил гигиены при приготовлении пищи" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_CRIME28" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %NAME1% арестован за плевок в общественном месте.
                                { "Russian", "%NAME1% арестован за плевок в общественном месте" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_CRIME29" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %NAME1% арестован за испускание такой вони, что другие существа падали в обморок.
                                { "Russian", "%NAME1% арестован за испускание такой вони, что другие существа падали в обморок" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_CRIME30" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %NAME1% пойман, когда показывал другим поселенцам неприличные жесты.
                                { "Russian", "%NAME1% пойман, когда показывал другим поселенцам неприличные жесты" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_CRIME31" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %NAME1% пойман при попытке поджога. Цель поджигателя: &lt;TECHNOLOGY&gt;%PERKNAME%&lt;&gt;.
                                { "Russian", "%NAME1% пойман при попытке поджога технологии &lt;TECHNOLOGY&gt;%PERKNAME%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_CRIME32" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %NAME1% пойман при попытке осквернить часть поселения. Цель преступника: &lt;TECHNOLOGY&gt;%PERKNAME%&lt;&gt;.
                                { "Russian", "%NAME1% пойман при попытке осквернить часть поселения. Цель преступника: &lt;TECHNOLOGY&gt;%PERKNAME%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_CRIME33" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %NAME1% арестован за проникновение в обитаемую капсулу другого поселенца.
                                { "Russian", "%NAME1% арестован за проникновение в обитаемую капсулу другого поселенца" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_CRIME_DETAIL1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Стоит обратить внимание, что %NAME1% раньше следил за соседями в поисках признаков правонарушений.
                                -- It is noted that %NAME1% has a history of spying on their neighbours to look for signs of wrongdoing
                                { "Russian", "Отметим, что %NAME1% раньше следил за соседями в поисках признаков правонарушений" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_CRIME_DETAIL2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Стоит обратить внимание, что обвиненное существо является успешным конкурентом обвинителя.
                                -- It is noted that the accused runs a rival business with considerable success
                                { "Russian", "Отметим, что обвиняемый управляет очень успешным конкурирующим бизнесом" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_CRIME_DETAIL3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Стоит обратить внимание, что в системе записей поселения имеются значительные пропуски, во время которых никто не может подтвердить местонахождение обвиняемого
                                -- It is noted that there are significant gaps in the settlement recording systems, during which no-one can account for the whereabouts of the accused
                                { "Russian", "Отметим, что в системах учета поселения имеются значительные пропуски, во время которых никто не может подтвердить местонахождение обвиняемого" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_CRIME_DETAIL4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обвинитель не предоставил никаких улик, завив, что должен любыми средствами защищать свои источники.
                                -- They present no evidence, claiming their sources must be protected at all costs
                                { "Russian", "Обвинитель не предоставил никаких улик, завив, что его источники должны быть защищены любой ценой" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_CRIME_DETAIL5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обвинитель предоставил в качестве доказательств подозрительно зернистые фотографии.
                                -- They present photographs as evidence, though the images are suspiciously grainy
                                { "Russian", "Обвинитель предоставил в качестве доказательств подозрительно зернистые фотографии" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_CRIME_DETAIL6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Стоит обратить внимание, что обе стороны ранее были партнерами в неуказанном коммерческом деле.
                                -- It is noted that both parties had previous been partners in an unspecified commercial enterprise
                                { "Russian", "Стоит обратить внимание, что обе стороны ранее были партнерами в каком-то коммерческом деле" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_CRIME_DETAIL7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Стоит обратить внимание, что обвиняемый не может объяснить несколько случаев своего отсутствия.
                                -- It is noted that the accused has several unexplained absences in their settlement tracking records
                                { "Russian", "Заметим, что в поселении имеется несколько записей отсутствия обвиняемого без объяснения" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_CRIME_DETAIL8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Стоит обратить внимание, что обвиняемый недавно сообщил властям поселения о значительных денежных потерях.
                                -- It is noted that the accused has recently filed a significant loss with the settlement accounting authorities
                                { "Russian", "Заметим, что обвиняемый недавно сообщил властям поселения о значительных денежных потерях" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_CRIME_DETAIL9" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Стоит обратить внимание, что %NAME1% недавно сообщил властям поселения о значительных денежных потерях.
                                -- It is noted that %NAME1% has recently filed a significant loss with the settlement accounting authorities
                                { "Russian", "Заметим, что %NAME1% недавно сообщил властям поселения о значительных денежных потерях" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_CRIME_DETAIL10" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Стоит обратить внимание, что обвиняемый несколько раз беспричинно нападал на окружающих.
                                -- It is noted that the accused has a record of unprovoked violent outbursts
                                { "Russian", "Стоит обратить внимание, что обвиняемый несколько раз беспричинно нападал на окружающих" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_CRIME_DETAIL11" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Стоит обратить внимание, что обе стороны несколько раз недавно покидали планету, причем зачастую одновременно. Никто из них не желает рассказывать об этом.
                                -- It is noted that both parties have a series of recent offworld excursions, often at the same time. Neither will elaborate
                                { "Russian", "Заметим, что обе стороны недавно несколько раз покидали планету, зачастую одновременно. Никто из них не желает рассказывать об этом" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_CRIME_DETAIL12" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Стоит обратить внимание, что обе стороны связывает печальная история взаимных и все нарастающих тяжб и жалоб.
                                -- It is noted that the parties have a bitter history, exhibiting an escalating pattern of litigation and complaint
                                { "Russian", "Стоит обратить внимание, что обе стороны связывает печальная история взаимных и все нарастающих тяжб и жалоб" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_CRIME_DETAIL13" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Стоит обратить внимание, что обе стороны связывает печальная история. %NAME1% был осужден за несколько преступлений, жертвой которых стало существо по имени %NAME2%.
                                -- It is noted that the parties have a bitter history. %NAME1% has previously been sentenced for a series of property crimes against %NAME2%
                                { "Russian", "Заметим, что обе стороны связывает печальная история. %NAME1% ранее был осужден за ряд имущественных преступлений против %NAME2%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_CRIME_DETAIL14" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Стоит обратить внимание, что %NAME2% недавно поссорился с существом по имени %NAME1%, но не смог подтвердить свои заявления.
                                -- It is noted that %NAME2% recently quarrelled with %NAME1%, but was unable to prove their claims
                                { "Russian", "Заметим, что %NAME2% недавно поссорился с %NAME1%, но не смог подтвердить свои заявления" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_CRIME_DETAIL15" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обвиняемый отказывается оправдываться.
                                -- The accused offers no defense
                                { "Russian", "Обвиняемый отказывается оправдываться" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_CRIME_DETAIL16" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Видеозаписи, предоставленные в качестве доказательств защиты, были отметены, так как являются очевидной подделкой.
                                { "Russian", "Видеозаписи, предоставленные в качестве доказательств защиты, были отметены, так как являются очевидной подделкой" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_CRIME_DETAIL17" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Стоит обратить внимание, что существо недавно сообщило властям поселения о значительных денежных потерях.
                                { "Russian", "Стоит обратить внимание, что существо недавно сообщило властям поселения о значительных денежных потерях" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_CRIME_DETAIL18" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %NAME1% описывает свои действия как случайность и ошибку в суждении, которая никогда не повторится.
                                { "Russian", "%NAME1% описывает свои действия как случайность и ошибку в суждении, которая никогда не повторится" },
                            }
                        },
                        --#endregion

                        --#region UI_JUDGEMENT_VISITOR_SHELTER
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_VISITOR_SHELTER1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Посетитель по имени %NAME1% просит предоставить убежище.
                                -- A visitor, %NAME1%, has called on us to provide refuge
                                { "Russian", "Посетитель по имени %NAME1% просит предоставить убежище" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_VISITOR_SHELTER2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Посетитель по имени %NAME1% умоляет дать ему крышу над головой.
                                -- A visitor, %NAME1%, has begged for a place to stay
                                { "Russian", "Посетитель по имени %NAME1% умоляет дать ему крышу над головой" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_VISITOR_SHELTER3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Усталый путешественник по имени %NAME1% просит разрешения присоединиться к поселению.
                                -- A tired and weary explorer, %NAME1%, has asked to join the settlement
                                { "Russian", "Уставший и изнуренный путешественник, %NAME1%, просит разрешения присоединиться к поселению" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_VISITOR_SHELTER4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Прибыл посетитель по имени %NAME1%. Он взвинчен и просит убежища.
                                -- A visitor, %NAME1%, has arrived. They are on edge, and have asked for shelter
                                { "Russian", "К нам прибыл %NAME1%. Он взвинчен и просит убежища" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_VISITOR_SHELTER5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Прибыл усталый посетитель по имени %NAME1% и просит разрешения присоединиться к поселению.
                                -- A weary-looking visitor, %NAME1%, has arrived. They have asked to join the settlement
                                { "Russian", "К нам прибыл %NAME1%. Он выглядит усталым и просит разрешения присоединиться к поселению" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_VISITOR_SHELTER6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Посетитель по имени %NAME1% закрылся в офисе куратора и отказывается уходить, пока не получит убежище.
                                -- A visitor, %NAME1%, has blockaded themselves in the Overseer's office. They will not leave until they are allowed to stay
                                { "Russian", "Посетитель %NAME1% закрылся в офисе куратора и отказывается уходить, пока не получит убежище" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_VISITOR_SHELTER7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %NAME1% рассказывает о побеге из другого поселения из-за тираничного правления куратора.
                                -- %NAME1% has fled another settlement, citing the tyranny of its Overseer
                                { "Russian", "%NAME1% рассказывает, что сбежал из другого поселения из-за тирании куратора" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_VISITOR_SHELTER8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %NAME1% рассказывает о побеге из другого поселения, уничтоженного стражами.
                                -- %NAME1% has fled another settlement, after its destruction by the Sentinels
                                { "Russian", "%NAME1% рассказывает, что сбежал из другого поселения, уничтоженного стражами" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_VISITOR_SHELTER9" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %NAME1% рассказывает о побеге из другого поселения после ужасной ссоры.
                                -- %NAME1% has fled another settlement after a violent quarrel
                                { "Russian", "%NAME1% рассказывает, что сбежал из другого поселения после ужасной ссоры" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_VISITOR_SHELTER10" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %NAME1% хочет переселиться к нам из другого поселения.
                                -- %NAME1% has arrived here from another settlement. They wish to defect
                                { "Russian", "%NAME1% хочет переселиться к нам из другого поселения" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_VISITOR_SHELTER11" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %NAME1% устал от межзвездных путешествий и хочет поселиться здесь.
                                { "Russian", "%NAME1% устал от межзвездных путешествий и хочет поселиться здесь" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_VISITOR_SHELTER12" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %NAME1% полюбил эту планету и просит разрешения присоединиться к поселению.
                                { "Russian", "%NAME1% полюбил эту планету и просит разрешения присоединиться к поселению" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_VISITOR_SHELTER13" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %NAME1% осматривает поселение взволнованным взглядом. Он застенчиво спрашивает, можно ли ему остаться.
                                { "Russian", "%NAME1% осматривает поселение взволнованным взглядом. Он застенчиво спрашивает, можно ли ему остаться" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_VISITOR_SHELTER14" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Новичок по имени %NAME1% рад, что смог укрыться в поселении. Если можно, он хочет остаться.
                                { "Russian", "Новичок по имени %NAME1% рад, что смог укрыться в поселении. Если можно, он хочет остаться" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_VISITOR_SHELTER15" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %NAME1% покинул свое прежнее жилище, но отказывается сказать почему. Он хочет переселиться в наше поселение.
                                { "Russian", "%NAME1% покинул свое прежнее жилище, но отказывается сказать почему. Он хочет переселиться в наше поселение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_VISITOR_SHELTER16" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %NAME1% говорит, что слышал об этом поселении и хочет здесь жить.
                                { "Russian", "%NAME1% говорит, что слышал об этом поселении и хочет здесь жить" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_VISITOR_SHELTER17" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %NAME1% покинул свое прежнее поселение в поисках более гостеприимного климата.
                                { "Russian", "%NAME1% покинул свое прежнее поселение в поисках более гостеприимного климата" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_VISITOR_SHELTER18" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %NAME1% объявляет себя жертвой великой несправедливости, в результате которой его изгнали из прежнего поселения.
                                { "Russian", "%NAME1% объявляет себя жертвой великой несправедливости, в результате которой его изгнали из прежнего поселения" },
                            }
                        },
                        --#endregion

                        --#region UI_JUDGEMENT_VISITOR_INTRO
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_VISITOR_INTRO1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Прибыл посетитель по имени %NAME1%.
                                { "Russian", "Прибыл посетитель по имени %NAME1%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_VISITOR_INTRO2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Посетитель по имени %NAME1% требует встречи с куратором.
                                { "Russian", "Посетитель по имени %NAME1% требует встречи с куратором" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_VISITOR_INTRO3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Незнакомец по имени %NAME1% просит о встрече.
                                { "Russian", "Незнакомец по имени %NAME1% просит о встрече" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_VISITOR_INTRO4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Незнакомец по имени %NAME1% появился в офисе куратора.
                                -- A stranger named %NAME1% has reported to the Overseer's office
                                { "Russian", "Незнакомец по имени %NAME1% появился в офисе куратора" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_VISITOR_INTRO5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Незнакомец по имени %NAME1% впервые появился в поселении и желает поговорить с куратором.
                                -- %NAME1% is a stranger to this settlement. They wish to speak with the Overseer
                                { "Russian", "Незнакомец по имени %NAME1% впервые появился в поселении и желает поговорить с куратором" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_VISITOR_INTRO6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Незнакомец по имени %NAME1% недавно прибыл в поселение и просит встречи с куратором.
                                -- %NAME1% recently arrived at the settlement, and has requested the attention of the Overseer
                                { "Russian", "Незнакомец по имени %NAME1% недавно прибыл в поселение и просит внимания куратора" },
                            }
                        },
                        --#endregion

                        --#region UI_JUDGEMENT_JOB_INTRO
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_JOB_INTRO1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Гость утверждает, что его специализация %JOB%, хоть и говорит это несколько нервно.
                                -- They claim to be %JOB%, though they announce this with some nervousness
                                { "Russian", "Гость утверждает, что его специализация %JOB%, хоть и говорит это несколько нервно" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_JOB_INTRO2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Гость говорит, что он %JOB% и предлагает свои услуги, хотя в системе об этом нет никаких записей.
                                -- They offer their services as %JOB%, though system records show no trace of their prior existence
                                { "Russian", "Гость говорит, что он %JOB% и предлагает свои услуги, хотя в системе об этом нет никаких записей" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_JOB_INTRO3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Гость утверждает, что он %JOB% с большим опытом работы, но делает это со странным выражением лица.
                                -- They claim a great deal of experience as %JOB%, though there is a curious look upon their face
                                { "Russian", "Гость утверждает, что он %JOB% с большим опытом работы, но делает это со странным выражением лица" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_JOB_INTRO4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Гость заявляет, что он %JOB%. Дроны-охранники это подтверждают.
                                -- They claim to be %JOB%. The security drones have verified their story
                                { "Russian", "Гость заявляет, что он %JOB%. Дроны-охранники это подтверждают" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_JOB_INTRO5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Гость говорит, что он %JOB%, и с надеждой предлагает свои услуги.
                                -- They offer their services as %JOB%, a look of hope in their eyes
                                { "Russian", "Гость говорит, что он %JOB%, и с надеждой предлагает свои услуги" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_JOB_INTRO6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Судя по диплому, наш гость — %JOB%, и он предлагает нам свои услуги.
                                -- They offer their experience as %JOB%, and present their qualifications
                                { "Russian", "Судя по диплому, наш гость — %JOB%, и он предлагает нам свои услуги" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_JOB_INTRO7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Гость заявляет, что он опытный %JOB%, и нагло смотрит, надеясь, что его хвастовство произведет эффект.
                                -- They claim to be highly skilled as %JOB%. They stare, expecting their boast to speak for itself
                                { "Russian", "Гость заявляет, что он опытный %JOB%, и нагло смотрит, надеясь, что его хвастовство произведет эффект" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_JOB_INTRO8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Гость говорит, что он %JOB%, и обещает быть полезным поселению.
                                -- They promise they have much to offer the settlement, including their skills as %JOB%
                                { "Russian", "Гость говорит, что он %JOB%, и обещает быть полезным поселению" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_JOB_INTRO9" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Гость, слегка переминаясь с ноги на ногу, показывает сертификат, подтверждающий, что он %JOB%.
                                -- They present their qualifications as %JOB%, shifting their weight slightly as they do so
                                { "Russian", "Гость, слегка переминаясь с ноги на ногу, показывает сертификат, подтверждающий, что он %JOB%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_JOB_INTRO10" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Гость заявляет, что он известный %JOB%, которому есть что предложить нам.
                                -- They present themselves as %JOB% of some renown. They feel they have much to offer us
                                { "Russian", "Гость заявляет, что он известный %JOB%, которому есть что предложить нам" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_JOB_INTRO11" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Гость говорит, что он %JOB%, и явно полагает, что мы о нем слышали.
                                { "Russian", "Гость говорит, что он %JOB%, и явно полагает, что мы о нем слышали" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_JOB_INTRO12" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Гость объясняет, что он %JOB%, и смиренно предлагает свои услуги.
                                { "Russian", "Гость объясняет, что он %JOB%, и смиренно предлагает свои услуги" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_JOB_INTRO13" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Гость отвечает, что он %JOB%.
                                { "Russian", "Гость отвечает, что он %JOB%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_JOB_INTRO14" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Гость показывает диплом, подтверждающий, что он %JOB%.
                                { "Russian", "Гость показывает диплом, подтверждающий, что он %JOB%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_JOB_INTRO15" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Гость много лет работал как %JOB% и может подтвердить это документально.
                                { "Russian", "Гость много лет работал как %JOB% и может подтвердить это документально" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_JOB_INTRO16" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Оказывается, что наш гость %JOB% и хочет доказать свои умения.
                                { "Russian", "Оказывается, что наш гость %JOB% и хочет доказать свои умения" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_JOB_INTRO17" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Гость заявляет, что он %JOB% и хочет предложить поселению свои услуги.
                                { "Russian", "Гость заявляет, что он %JOB% и хочет предложить поселению свои услуги" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_JOB_INTRO18" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Гость хочет начать новую жизнь как %JOB%.
                                { "Russian", "Гость хочет начать новую жизнь как %JOB%" },
                            }
                        },
                        --#endregion

                        --#region UI_JUDGEMENT_GIFT_INTRO
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_GIFT_INTRO1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Незнакомец по имени %NAME1% прибыл в окружении своих последователей.
                                -- A stranger named %NAME1% has arrived with a retinue of followers
                                { "Russian", "Незнакомец по имени %NAME1% прибыл в окружении своих последователей" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_GIFT_INTRO2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Незнакомец по имени %NAME1% объявил о своем прибытии и желает пообщаться с куратором.
                                -- A stranger named %NAME1% has announced their grand arrival, and wishes to be conveyed to the Overseer
                                { "Russian", "Незнакомец %NAME1% объявил о своем прибытии и хочет, чтобы его сопроводили к куратору" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_GIFT_INTRO3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Незнакомец по имени %NAME1% просит разрешения вести дела с куратором.
                                -- A stranger named %NAME1% asks to do business with the Overseer
                                { "Russian", "Незнакомец по имени %NAME1% просит разрешения вести дела с куратором" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_GIFT_INTRO4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %NAME1% просит разрешения вести дела с куратором на равных.
                                -- %NAME1% requests to do business with the Overseer, and asks for respect as an equal
                                { "Russian", "%NAME1% просит разрешения вести дела с куратором на равных" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_GIFT_INTRO5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %NAME1% рассказывает о себе цветастыми выражениями.
                                -- %NAME1% announces themselves with a flourish
                                { "Russian", "%NAME1% рассказывает о себе цветастыми выражениями" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_GIFT_INTRO6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %NAME1% внезапно заявляет, что пришел с миром.
                                -- Unprompted, %NAME1% announces that they come in peace
                                { "Russian", "%NAME1% внезапно заявляет, что пришел с миром" },
                            }
                        },
                        --#endregion

                        --#region UI_JUDGEMENT_VISITOR_GIFT
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_VISITOR_GIFT1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Гость предлагает в подарок &lt;COMMODITY&gt;%GIFT_ITEM%&lt;&gt; и не просит ничего взамен.
                                -- They present a gift of &lt;COMMODITY&gt;%GIFT_ITEM%&lt;&gt;, with no strings attached
                                { "Russian", "Гость предлагает в подарок &lt;COMMODITY&gt;%GIFT_ITEM%&lt;&gt; и не просит ничего взамен" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_VISITOR_GIFT2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Гость предлагает в дар &lt;COMMODITY&gt;%GIFT_ITEM%&lt;&gt; и улыбается.
                                -- They offer tribute, presenting a gift of &lt;COMMODITY&gt;%GIFT_ITEM%&lt;&gt;. They smile
                                { "Russian", "Гость в дань уважения, предлагает в дар &lt;COMMODITY&gt;%GIFT_ITEM%&lt;&gt;. Он улыбается" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_VISITOR_GIFT3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Гость впервые в этом мире и предлагает &lt;COMMODITY&gt;%GIFT_ITEM%&lt;&gt; в качестве жеста доброй воли.
                                -- They are a visitor to this world, and bring &lt;COMMODITY&gt;%GIFT_ITEM%&lt;&gt; as a gesture of goodwill
                                { "Russian", "Будучи впервые здесь, он предлагает &lt;COMMODITY&gt;%GIFT_ITEM%&lt;&gt; в качестве жеста доброй воли" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_VISITOR_GIFT4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Гость затейливо жестикулирует и кладет на пол &lt;COMMODITY&gt;%GIFT_ITEM%&lt;&gt;. Похоже, это подарок.
                                -- They gesture elaborately, placing &lt;COMMODITY&gt;%GIFT_ITEM%&lt;&gt; upon the floor. It appears to be a gift of some sort
                                { "Russian", "Гость затейливо жестикулирует и кладет на пол &lt;COMMODITY&gt;%GIFT_ITEM%&lt;&gt;. Похоже, это подарок" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_VISITOR_GIFT5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Гость поссорился с властями системы и предлагает &lt;COMMODITY&gt;%GIFT_ITEM%&lt;&gt; в подарок, чтобы завоевать нашу поддержку.
                                -- They have quarrelled with the system authorities, and offer us &lt;COMMODITY&gt;%GIFT_ITEM%&lt;&gt; to win our support
                                { "Russian", "Гость поссорился с властями системы и предлагает &lt;COMMODITY&gt;%GIFT_ITEM%&lt;&gt; в подарок, чтобы завоевать нашу поддержку" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_VISITOR_GIFT6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Гость хочет вести в системе какие-то «дела» и предлагает &lt;COMMODITY&gt;%GIFT_ITEM%&lt;&gt; в обмен на наше молчание.
                                -- They wish to conduct some 'business' in this system, and offer us &lt;COMMODITY&gt;%GIFT_ITEM%&lt;&gt; in exchange for our discretion
                                { "Russian", "Гость хочет вести в системе какие-то «дела» и предлагает &lt;COMMODITY&gt;%GIFT_ITEM%&lt;&gt; в обмен на наше молчание" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_VISITOR_GIFT7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Гость слышал о вашем правлении и хочет подарить &lt;COMMODITY&gt;%GIFT_ITEM%&lt;&gt; в знак доброй воли.
                                -- They have heard of your administration, and wish to offer &lt;COMMODITY&gt;%GIFT_ITEM%&lt;&gt; as a token of goodwill
                                { "Russian", "Гость слышал о вашем правлении и хочет подарить &lt;COMMODITY&gt;%GIFT_ITEM%&lt;&gt; в знак доброй воли" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_VISITOR_GIFT8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Гость утверждает, что у него образовались значительные излишки товара, и теперь он хочет разделить свою удачу с местными поселениями. Он с улыбкой предлагает вам &lt;COMMODITY&gt;%GIFT_ITEM%&lt;&gt;.
                                -- They claim to have benefited from a great surplus, and now share with local settlements as a way to share their good fortune. They present &lt;COMMODITY&gt;%GIFT_ITEM%&lt;&gt; and smile
                                { "Russian", "Гость утверждает, что у него образовались значительные излишки товара, и теперь он хочет разделить свою удачу с местными поселениями. Он предлагает &lt;COMMODITY&gt;%GIFT_ITEM%&lt;&gt; и улыбается" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_VISITOR_GIFT9" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Гость предлагает &lt;COMMODITY&gt;%GIFT_ITEM%&lt;&gt; в качестве пожертвования, прилагая к дару тысячи страниц сложной документации. Вы не знаете зачем.
                                -- They offer us a donation of &lt;COMMODITY&gt;%GIFT_ITEM%&lt;&gt;, as well as several thousand pages of complex documentation. Their aims are not clear
                                { "Russian", "Гость хочет подарить &lt;COMMODITY&gt;%GIFT_ITEM%&lt;&gt;, а также тысячи страниц сложной документации. Его намерения не ясны" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_VISITOR_GIFT10" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Гость хочет поделиться своими взглядами и предлагает &lt;COMMODITY&gt;%GIFT_ITEM%&lt;&gt;, чтобы побудить жителей выслушать его.
                                -- They seek converts to their philosophy, and offer &lt;COMMODITY&gt;%GIFT_ITEM%&lt;&gt; as an incentive
                                { "Russian", "Гость ищет единомышленников, предлагая &lt;COMMODITY&gt;%GIFT_ITEM%&lt;&gt; в качестве стимула" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_VISITOR_GIFT11" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Гость называет себя путешественником, следующим великой традиции мирного исследования вселенной, и предлагает &lt;COMMODITY&gt;%GIFT_ITEM%&lt;&gt; в качестве символа общих интересов.
                                -- They claim to be a wanderer in the grand tradition of peaceful exploration, and offer &lt;COMMODITY&gt;%GIFT_ITEM%&lt;&gt; in recognition of our mutual interests
                                { "Russian", "Гость называет себя путешественником, следующим великой традиции мирного исследования вселенной, и предлагает &lt;COMMODITY&gt;%GIFT_ITEM%&lt;&gt; в качестве символа общих интересов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_VISITOR_GIFT12" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Гость говорит, что получил от жизни больше, чем нужно, и хочет сделать поселению подарок — &lt;COMMODITY&gt;%GIFT_ITEM%&lt;&gt;.
                                { "Russian", "Гость говорит, что получил от жизни больше, чем нужно, и хочет сделать поселению подарок — &lt;COMMODITY&gt;%GIFT_ITEM%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_VISITOR_GIFT13" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Посетитель говорит, что сегодня важный для него день, и хочет подарить поселению &lt;COMMODITY&gt;%GIFT_ITEM%&lt;&gt;.
                                { "Russian", "Посетитель говорит, что для него сегодня важный день, и хочет подарить поселению &lt;COMMODITY&gt;%GIFT_ITEM%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_VISITOR_GIFT14" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Гость выражает благодарность за вклад поселения в местную экономику и предлагает &lt;COMMODITY&gt;%GIFT_ITEM%&lt;&gt; в знак благодарности.
                                { "Russian", "Гость выражает благодарность за вклад поселения в местную экономику и предлагает &lt;COMMODITY&gt;%GIFT_ITEM%&lt;&gt; в знак благодарности" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_VISITOR_GIFT15" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Гость принес &lt;COMMODITY&gt;%GIFT_ITEM%&lt;&gt; в дар. Он надеется, что однажды мы окажем ответную услугу.
                                { "Russian", "Гость принес &lt;COMMODITY&gt;%GIFT_ITEM%&lt;&gt; в дар. Он надеется, что однажды мы окажем ответную услугу" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_VISITOR_GIFT16" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Посетитель подталкивает ко мне &lt;COMMODITY&gt;%GIFT_ITEM%&lt;&gt;. Это подарок. Он нервничает и хочет, чтобы я принял его поскорее.
                                { "Russian", "Посетитель подталкивает ко мне &lt;COMMODITY&gt;%GIFT_ITEM%&lt;&gt;. Это подарок. Он нервничает и хочет, чтобы я принял его поскорее" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_VISITOR_GIFT17" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Гость говорит быстро и неразборчиво, а потом достает &lt;COMMODITY&gt;%GIFT_ITEM%&lt;&gt;. Похоже, это подарок поселению.
                                { "Russian", "Гость говорит быстро и неразборчиво, а потом достает &lt;COMMODITY&gt;%GIFT_ITEM%&lt;&gt;. Похоже, это подарок поселению" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_VISITOR_GIFT18" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Гость хочет сделать подарок — &lt;COMMODITY&gt;%GIFT_ITEM%&lt;&gt;. Похоже, он очень доволен своим подношением.
                                { "Russian", "Гость хочет сделать подарок — &lt;COMMODITY&gt;%GIFT_ITEM%&lt;&gt;. Похоже, он очень доволен своим подношением" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_VISITOR_GIFT19" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Посетитель подмигивает и предлагает искусно упакованный подарок — &lt;COMMODITY&gt;%GIFT_ITEM%&lt;&gt;.
                                { "Russian", "Посетитель подмигивает и предлагает искусно упакованный подарок — &lt;COMMODITY&gt;%GIFT_ITEM%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_VISITOR_GIFT20" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Гость не говорит ни слова, но быстро и пугающе мерцает. Он предлагает &lt;COMMODITY&gt;%GIFT_ITEM%&lt;&gt; в качестве подарка.
                                { "Russian", "Гость не говорит ни слова, но быстро и пугающе мерцает. Он предлагает &lt;COMMODITY&gt;%GIFT_ITEM%&lt;&gt; в качестве подарка" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_VISITOR_GIFTITEM18" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- немного ржавчины
                                -- a handful of rust
                                { "Russian", "горсть ржавчины" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_VISITOR_GIFTITEM35" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- флакон пыли кометы
                                -- a vial of comet dust
                                { "Russian", "флакон с кометной пылью" },
                            }
                        },
                        --#endregion

                        --#region UI_JUDGEMENT_VISITOR_TECHGIFT
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_VISITOR_TECHGIFT1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Гость называет себя философом и желает поделиться своими знаниями. Он раскрывает секрет технологии &lt;TECHNOLOGY&gt;«%TECHGIFT%»&lt;&gt;.
                                -- They say they are a philosopher, and wish to share their knowledge. The present the secret to &lt;TECHNOLOGY&gt;&quot;%TECHGIFT%&quot;&lt;&gt;
                                { "Russian", "Гость называет себя философом и желает поделиться своими знаниями. Это секрет технологии &lt;TECHNOLOGY&gt;&quot;%TECHGIFT%&quot;&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_VISITOR_TECHGIFT2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Будучи представителем другой планеты, гость хочет поделиться с нами технологией в качестве жеста доброй воли. Он дарит планы технологии &lt;TECHNOLOGY&gt;«%TECHGIFT%»&lt;&gt;.
                                -- As an envoy from another settlement, they wish to share technology in a spirit of goodwill. They present the plans for &lt;TECHNOLOGY&gt;&quot;%TECHGIFT%&quot;&lt;&gt;
                                { "Russian", "Будучи представителем другой планеты, гость хочет поделиться с нами технологией в качестве жеста доброй воли. Это планы технологии &lt;TECHNOLOGY&gt;&quot;%TECHGIFT%&quot;&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_VISITOR_TECHGIFT3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Гость совершил открытие и хочет, чтобы об этом узнал мир. Он дарит нам планы технологии &lt;TECHNOLOGY&gt;«%TECHGIFT%»&lt;&gt;.
                                -- They have made a discovery, and wish to spread it far and wide. They present plans for &lt;TECHNOLOGY&gt;&quot;%TECHGIFT%&quot;&lt;&gt;
                                { "Russian", "Гость совершил открытие и хочет, чтобы об этом узнал мир. Он дарит нам планы технологии &lt;TECHNOLOGY&gt;&quot;%TECHGIFT%&quot;&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_VISITOR_TECHGIFT4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Гость бесплатно предлагает планы технологии &lt;TECHNOLOGY&gt;«%TECHGIFT%»&lt;&gt; и просит лишь должным образом указать его как изобретателя.
                                -- They offer plans for &lt;TECHNOLOGY&gt;&quot;%TECHGIFT%&quot;&lt;&gt;, free of charge. They ask only for proper credit as the inventor
                                { "Russian", "Гость бесплатно предлагает планы технологии &lt;TECHNOLOGY&gt;&quot;%TECHGIFT%&quot;&lt;&gt; и просит лишь должным образом указать его как изобретателя" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_VISITOR_TECHGIFT5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- С улыбкой гость предлагает планы технологии &lt;TECHNOLOGY&gt;«%TECHGIFT%»&lt;&gt; и не просит ничего взамен. Он надеется, что нас это удовлетворит.
                                -- With a smile, they offer plans for &lt;TECHNOLOGY&gt;&quot;%TECHGIFT%&quot;&lt;&gt;, no strings attached. They hope we find it satisfactory
                                { "Russian", "С улыбкой гость предлагает планы технологии &lt;TECHNOLOGY&gt;&quot;%TECHGIFT%&quot;&lt;&gt;, безвозмездно. Он надеется, что нас это удовлетворит" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_VISITOR_TECHGIFT6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Гость прибыл по приказу властей системы, чтобы улучшить жизнь поселенцев. Они дарит планы технологии &lt;TECHNOLOGY&gt;«%TECHGIFT%»&lt;&gt;.
                                -- They have been sent by system authorities to improve the lives of planetary settlers. They bring plans for &lt;TECHNOLOGY&gt;&quot;%TECHGIFT%&quot;&lt;&gt;
                                { "Russian", "Гость прибыл по приказу властей системы, чтобы улучшить жизнь поселенцев. Он привёз планы технологии &lt;TECHNOLOGY&gt;&quot;%TECHGIFT%&quot;&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_VISITOR_TECHGIFT7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Гость считает, что планетарные поселенцы должны помогать друг другу. Он предлагает бесплатные планы технологии &lt;TECHNOLOGY&gt;«%TECHGIFT%»&lt;&gt;.
                                -- They believe that planetary settlers must look out for each other. They have brought plans for &lt;TECHNOLOGY&gt;&quot;%TECHGIFT%&quot;&lt;&gt;, free of charge
                                { "Russian", "Гость верит, что планетарные поселенцы должны помогать друг другу. Он принёс планы технологии &lt;TECHNOLOGY&gt;&quot;%TECHGIFT%&quot;&lt;&gt;, бесплатно" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_VISITOR_TECHGIFT8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Гость утверждает, что работает на анонимного покровителя, который хочет помочь поселению и прислал планы технологии &lt;TECHNOLOGY&gt;«%TECHGIFT%»&lt;&gt; в качестве подарка.
                                -- They claim to be working for an anonymous benefactor. They wish to help the settlement, and present the plans for &lt;TECHNOLOGY&gt;&quot;%TECHGIFT%&quot;&lt;&gt; as a gift
                                { "Russian", "Гость утверждает, что работает на анонимного покровителя, который хочет помочь поселению и прислал планы технологии &lt;TECHNOLOGY&gt;&quot;%TECHGIFT%&quot;&lt;&gt; в качестве подарка" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_VISITOR_TECHGIFT9" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Гость представляет интересы особы, личность которой не раскрывает. Он передает планы технологии &lt;TECHNOLOGY&gt;«%TECHGIFT%»&lt;&gt; в дар поселению.
                                -- They are an envoy, though they will not reveal their patron. They present plans for &lt;TECHNOLOGY&gt;&quot;%TECHGIFT%&quot;&lt;&gt; as a gift to the settlement
                                { "Russian", "Гость представляет интересы особы, личность которой не раскрывает. Он передает планы технологии &lt;TECHNOLOGY&gt;&quot;%TECHGIFT%&quot;&lt;&gt; в дар поселению" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_VISITOR_TECHGIFT10" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Это изобретатель утверждает, что его коллеги высмеяли его чертежи технологии &lt;TECHNOLOGY&gt;«%TECHGIFT%»&lt;&gt;. Он просит нас дать ему возможность доказать, что они ошибаются.
                                -- They are an inventor, and claim their new &lt;TECHNOLOGY&gt;&quot;%TECHGIFT%&quot;&lt;&gt; plans have been mocked by their peers. They come to us for a chance to prove the critics wrong.
                                { "Russian", "Будучи изобретателем, он утверждает, что его коллеги высмеяли его чертеж технологии &lt;TECHNOLOGY&gt;&quot;%TECHGIFT%&quot;&lt;&gt;. Он просит нас дать ему возможность доказать, что они ошибаются" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_VISITOR_TECHGIFT11" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Гость изобрел новую технологию &lt;TECHNOLOGY&gt;«%TECHGIFT%»&lt;&gt; и предлагает бесплатно установить ее. В ответ мы должны упомянуть его в рекламе поселения.
                                { "Russian", "Гость изобрел новую технологию &lt;TECHNOLOGY&gt;&quot;%TECHGIFT%&quot;&lt;&gt; и предлагает бесплатно установить ее. В ответ мы должны упомянуть его в рекламе поселения" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_VISITOR_TECHGIFT12" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Посетитель размахивает свернутыми бумагами, которые на проверку оказываются чертежами технологии &lt;TECHNOLOGY&gt;«%TECHGIFT%»&lt;&gt;. Похоже, он хочет подарить их поселению.
                                { "Russian", "Посетитель размахивает свернутыми бумагами, которые на проверку оказываются чертежами технологии &lt;TECHNOLOGY&gt;&quot;%TECHGIFT%&quot;&lt;&gt;. Похоже, он хочет подарить их поселению" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_VISITOR_TECHGIFT13" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Этот изобретатель ищет поселение, которое согласится испытать его новую технологию &lt;TECHNOLOGY&gt;«%TECHGIFT%»&lt;&gt;. Он надеется, что обе стороны будут в выигрыше.
                                { "Russian", "Этот изобретатель ищет поселение, которое согласится испытать его новую технологию &lt;TECHNOLOGY&gt;&quot;%TECHGIFT%&quot;&lt;&gt;. Он надеется, что обе стороны будут в выигрыше" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_VISITOR_TECHGIFT14" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Этот изобретатель убежден в том, что его последнее творение будет пользоваться бешеным успехом, если о нем узнает широкая аудитория. Он предлагает бесплатно опробовать технологию &lt;TECHNOLOGY&gt;«%TECHGIFT%»&lt;&gt;.
                                { "Russian", "Этот изобретатель убежден в том, что его последнее творение будет пользоваться бешеным успехом, если о нем узнает широкая аудитория. Он предлагает бесплатно опробовать технологию &lt;TECHNOLOGY&gt;&quot;%TECHGIFT%&quot;&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_VISITOR_TECHGIFT15" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Гость бесплатно предлагает чертеж технологии &lt;TECHNOLOGY&gt;«%TECHGIFT%»&lt;&gt; и отказывается что-либо пояснять.
                                { "Russian", "Гость бесплатно предлагает чертеж технологии &lt;TECHNOLOGY&gt;&quot;%TECHGIFT%&quot;&lt;&gt; и отказывается что-либо пояснять" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_VISITOR_TECHGIFT16" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Гость предлагает в подарок чертеж технологии &lt;TECHNOLOGY&gt;«%TECHGIFT%»&lt;&gt; и просит не задавать вопросов.
                                { "Russian", "Гость предлагает в подарок чертеж технологии &lt;TECHNOLOGY&gt;&quot;%TECHGIFT%&quot;&lt;&gt; и просит не задавать вопросов" },
                            }
                        },
                        --#endregion

                        --#region UI_PERK_PERSON_JOB
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PERK_PERSON_JOB_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Пекарь
                                { "Russian", "пекарь" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PERK_PERSON_JOB_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Рассказчик
                                { "Russian", "рассказчик" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PERK_PERSON_JOB_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Исследователь
                                { "Russian", "исследователь" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PERK_PERSON_JOB_4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Морильщик
                                -- Pest Controller
                                { "Russian", "дератизатор" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PERK_PERSON_JOB_5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Наемники
                                { "Russian", "наемник" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PERK_PERSON_JOB_6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Медик
                                { "Russian", "медик" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PERK_PERSON_JOB_7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Ясновидящий
                                { "Russian", "ясновидящий" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PERK_PERSON_JOB_8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Артист
                                { "Russian", "артист" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PERK_PERSON_JOB_9" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Музыкант
                                { "Russian", "музыкант" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PERK_PERSON_JOB_10" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Модист
                                -- Milliner
                                { "Russian", "модист" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PERK_PERSON_JOB_11" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Инженер
                                { "Russian", "инженер" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PERK_PERSON_JOB_12" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Повар
                                { "Russian", "повар" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PERK_PERSON_JOB_13" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Агроном
                                { "Russian", "агроном" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PERK_PERSON_JOB_14" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Математик
                                { "Russian", "математик" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PERK_PERSON_JOB_15" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Колдун
                                { "Russian", "колдун" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PERK_PERSON_JOB_16" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Ксенобиолог
                                { "Russian", "ксенобиолог" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PERK_PERSON_JOB_17" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Мясник
                                { "Russian", "мясник" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PERK_PERSON_JOB_18" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Фермер
                                { "Russian", "фермер" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PERK_PERSON_JOB_19" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Инженер-ледовик
                                -- Ice Engineer
                                { "Russian", "инженер-ледовик" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PERK_PERSON_JOB_20" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Уборщик обломков
                                -- Debris Remover
                                { "Russian", "уборщик" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PERK_PERSON_JOB_21" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Пищевой техник
                                -- Food Technician
                                { "Russian", "пищевик" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PERK_PERSON_JOB_22" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Специалист по обработке отходов
                                -- Waste Management
                                { "Russian", "мусорщик" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PERK_PERSON_JOB_23" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Консультант по этике
                                -- Ethics Consultant
                                { "Russian", "моралист" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PERK_PERSON_JOB_24" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Техник пивоварения
                                -- Brewery Technician
                                { "Russian", "пивовар" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PERK_PERSON_JOB_25" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Искатель реликвий
                                { "Russian", "искатель реликвий" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PERK_PERSON_JOB_26" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Биолог
                                { "Russian", "биолог" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PERK_PERSON_JOB_27" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Шпион
                                { "Russian", "шпион" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PERK_PERSON_JOB_28" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Оператор ИИ
                                { "Russian", "оператор ИИ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PERK_PERSON_JOB_29" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вычислитель
                                { "Russian", "вычислитель" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PERK_PERSON_JOB_30" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Специалист по псионике
                                -- Psionicist
                                { "Russian", "псионик" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PERK_PERSON_JOB_31" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Генетик
                                { "Russian", "генетик" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PERK_PERSON_JOB_32" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Кибернетик
                                { "Russian", "кибернетик" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PERK_PERSON_JOB_33" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Истребитель
                                -- Exterminator
                                { "Russian", "уничтожитель" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PERK_PERSON_JOB_34" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Лингвист
                                { "Russian", "лингвист" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PERK_PERSON_JOB_35" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Переводчик
                                { "Russian", "переводчик" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PERK_PERSON_JOB_36" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Охотник за головами
                                -- Bounty Hunter
                                { "Russian", "охотник за головами" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PERK_PERSON_JOB_37" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Роботомант
                                -- Robotomancer
                                { "Russian", "роботомант" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PERK_PERSON_JOB_38" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Прорицатель
                                { "Russian", "прорицатель" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PERK_PERSON_JOB_39" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Знаменосец
                                { "Russian", "знаменосец" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PERK_PERSON_JOB_40" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Глашатай
                                { "Russian", "глашатай" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PERK_PERSON_JOB_41" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Телепат
                                { "Russian", "телепат" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PERK_PERSON_JOB_42" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Ботаник
                                { "Russian", "ботаник" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PERK_PERSON_JOB_43" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Картограф
                                { "Russian", "картограф" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PERK_PERSON_JOB_44" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Палеонтолог
                                { "Russian", "палеонтолог" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PERK_PERSON_JOB_45" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Архитектор голограмм
                                -- Hologram Architect
                                { "Russian", "архитектор голограмм" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PERK_PERSON_JOB_46" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Драматург
                                { "Russian", "драматург" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PERK_PERSON_JOB_47" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Дипломат
                                { "Russian", "дипломат" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PERK_PERSON_JOB_48" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Психолог
                                { "Russian", "психолог" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PERK_PERSON_JOB_49" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Детектив
                                { "Russian", "детектив" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PERK_PERSON_JOB_50" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Убийца
                                { "Russian", "убийца" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PERK_PERSON_JOB_51" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Астроном
                                { "Russian", "астроном" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PERK_PERSON_JOB_52" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Плотник
                                { "Russian", "плотник" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PERK_PERSON_JOB_53" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Консультант по рыбалке
                                -- Fishing Consultant
                                { "Russian", "рыболов-консультант" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PERK_PERSON_JOB_54" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Искусствовед
                                { "Russian", "искусствовед" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PERK_PERSON_JOB_55" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Укротитель
                                { "Russian", "укротитель" },
                            }
                        },
                        --#endregion

                        --#region UI_PERK_PERSON_TITLE
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PERK_PERSON_TITLE_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %JOB%-специалист
                                -- Specialist %JOB%
                                { "Russian", "Специалист %JOB%" },
                            }
                        },
                        --#endregion

                        --#region UI_SENT_MISS_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS_MSG2_NX" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Исследуйте всплеск &lt;FUEL&gt;активности стражей&lt;&gt;.&#xA;Доберитесь до полученных от Тефиды координат и сразитесь со стражами.
                                -- Investigate the spike of &lt;FUEL&gt;Sentinel activity&lt;&gt;&#xA;Reach Tethys' coordinates to confront Sentinel forces
                                { "Russian", "Исследуйте всплеск &lt;FUEL&gt;активности стражей&lt;&gt;&#xA;Доберитесь до полученных от Тефиды координат и сразитесь со стражами" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS_MSG2_MAP_NX" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Межзвездные координаты, полученные от итерации Тефида.&#xA;Находясь в космосе, откройте галактическую карту с помощью &lt;IMG&gt;QUICK_MENU&lt;&gt;
                                -- Interstellar coordinates received from Iteration: Tethys&#xA;In space, consult the Galaxy Map with &lt;IMG&gt;QUICK_MENU&lt;&gt;
                                { "Russian", "Получены межзвёздные координаты от итерации Тефида&#xA;Находясь в космосе, откройте галактическую карту (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS_MSG2_ALT_NX" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Исследуйте всплеск &lt;FUEL&gt;активности стражей&lt;&gt;.&#xA;Изготовьте &lt;TECHNOLOGY&gt;плазмомет&lt;&gt; для своего мультитула и сразитесь со стражами.
                                { "Russian", "Исследуйте всплеск &lt;FUEL&gt;активности стражей&lt;&gt;&#xA;Создайте &lt;TECHNOLOGY&gt;плазмомет&lt;&gt; для мультитула и сразитесь со стражами" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS_MSG2_ALT_MAP_NX" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Межзвездные координаты, полученные от итерации Тефида.&#xA;Находясь в космосе, откройте галактическую карту с помощью &lt;IMG&gt;QUICK_MENU&lt;&gt;&#xA;Изготовьте &lt;TECHNOLOGY&gt;плазмомет&lt;&gt; для своего мультитула и сразитесь со стражами.
                                { "Russian", "Получены межзвездные координаты от итерации Тефида&#xA;Находясь в космосе, откройте галактическую карту (&lt;IMG&gt;QUICK_MENU&lt;&gt;)&#xA;Создайте &lt;TECHNOLOGY&gt;плазмомет&lt;&gt; для мультитула и сразитесь со стражами" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS_MSG2C_NX" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Расследуйте всплеск активности &lt;FUEL&gt;стражей&lt;&gt;.&#xA;Выследите и уничтожьте стражей. Осталось: &lt;FUEL&gt;%CURRENT%&lt;&gt;
                                { "Russian", "Исследуйте всплеск активности &lt;FUEL&gt;стражей&lt;&gt;&#xA;Выследите и уничтожьте стражей: &lt;FUEL&gt;%CURRENT%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS_MSG2C_ALT_NX" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Расследуйте всплеск &lt;FUEL&gt;активности стражей&lt;&gt;.&#xA;Выследите и уничтожьте стражей. Осталось: &lt;FUEL&gt;%CURRENT%&lt;&gt;&#xA;Переключайте режимы оружия с помощью &lt;IMG&gt;CYCLEWEAPON&lt;&gt;
                                { "Russian", "Исследуйте всплеск &lt;FUEL&gt;активности стражей&lt;&gt;&#xA;Выследите и уничтожьте стражей: &lt;FUEL&gt;%CURRENT%&lt;&gt;&#xA;Переключайте режимы оружия с помощью &lt;IMG&gt;CYCLEWEAPON&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS_MSG2D_NX" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Исследуйте всплеск &lt;FUEL&gt;активности стражей&lt;&gt;.&#xA;Осмотрите обломки на поле боя, чтобы найти &lt;SPECIAL&gt;сведения&lt;&gt; о нападении.
                                -- Investigate the spike of &lt;FUEL&gt;Sentinel activity&lt;&gt;&#xA;Search the battlefield debris for &lt;SPECIAL&gt;clues&lt;&gt; about the attack
                                { "Russian", "Исследуйте всплеск &lt;FUEL&gt;активности стражей&lt;&gt;&#xA;Осмотрите поле боя, чтобы найти &lt;SPECIAL&gt;зацепки&lt;&gt; о нападении" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS_MSG4_NX" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Итерация Тефиды просит о встрече на &lt;SPECIAL&gt;Космической Аномалии&lt;&gt;.&#xA;Поговорите с Тефидой об &lt;FUEL&gt;активности стражей&lt;&gt;.
                                { "Russian", "Итерация Тефиды просит встретиться&#xA;на &lt;SPECIAL&gt;Космической Аномалии&lt;&gt;&#xA;Поговорите с Тефидой об &lt;FUEL&gt;активности стражей&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Получено &lt;FUEL&gt;аварийное сообщение из поселения&lt;&gt;.&#xA;Откройте коммуникатор звездолета через &lt;IMG&gt;QUICK_MENU&lt;&gt; и ответьте на вызов.
                                -- &lt;FUEL&gt;Emergency Settlement Comms&lt;&gt; link requested&#xA;Answer the Starship Communicator by pressing &lt;IMG&gt;QUICK_MENU&lt;&gt;
                                { "Russian", "Получено &lt;FUEL&gt;экстренное сообщение из поселения&lt;&gt;&#xA;Ответьте по коммуникатору из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS_MSG1_NX" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Получена аномальная передача!&lt;&gt;&#xA;Нажмите &lt;IMG&gt;QUICK_MENU&lt;&gt;, чтобы ответить.
                                -- &lt;SPECIAL&gt;Anomalous Broadcast&lt;&gt; detected&#xA;Answer the Starship Communicator by pressing &lt;IMG&gt;QUICK_MENU&lt;&gt;
                                { "Russian", "Получен сигнал &lt;SPECIAL&gt;аномальной передачи&lt;&gt;&#xA;Ответьте по коммуникатору из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Статус поселения: &lt;FUEL&gt;нападение огромных сил стражей!&lt;&gt;&#xA;Вернитесь в поселение, чтобы защитить его.
                                -- Settlement status: &lt;FUEL&gt;extreme Sentinel assault underway!&lt;&gt;&#xA;Return to your settlement to defend it from attack
                                { "Russian", "На поселение &lt;FUEL&gt;напали огромные силы стражей!&lt;&gt;&#xA;Вернитесь в поселение, чтобы защитить его" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS_MSG2B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Статус поселения: &lt;FUEL&gt;нападение огромных сил стражей!&lt;&gt;&#xA;Вернитесь в поселение, чтобы защитить его.&#xA;&lt;STELLAR&gt;Переместитесь&lt;&gt; в свое поселение через любой терминал телепорта.
                                -- Settlement status: &lt;FUEL&gt;extreme Sentinel assault underway!&lt;&gt;&#xA;Return to your settlement to defend it from attack&#xA;&lt;STELLAR&gt;Teleport&lt;&gt; to your settlement from any teleport terminus
                                { "Russian", "На поселение &lt;FUEL&gt;напали огромные силы стражей!&lt;&gt;&#xA;Вернитесь в поселение, чтобы защитить его&#xA;&lt;STELLAR&gt;Переместитесь&lt;&gt; в свое поселение через любой телепорт" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS_MSG2_ALT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Статус поселения: &lt;FUEL&gt;нападение огромных сил стражей!&lt;&gt;&#xA;Сделайте &lt;TECHNOLOGY&gt;плазмомет&lt;&gt; для мультитула, чтобы защитить свое поселение.
                                -- Settlement status: &lt;FUEL&gt;extreme Sentinel assault underway!&lt;&gt;&#xA;Construct a &lt;TECHNOLOGY&gt;Boltcaster&lt;&gt; in your Multi-Tool to defend your settlement
                                { "Russian", "На поселение &lt;FUEL&gt;напали огромные силы стражей!&lt;&gt;&#xA;Создайте &lt;TECHNOLOGY&gt;плазмомет&lt;&gt; для мультитула,&#xA;чтобы защитить свое поселение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS_MSG2C" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- На поселение совершено нападение&#xA;Выследите и уничтожьте силы стражей: осталось &lt;FUEL&gt;%CURRENT%.&lt;&gt;
                                -- The settlement is under attack&#xA;Hunt and destroy Sentinel forces:  &lt;FUEL&gt;%CURRENT% remaining&lt;&gt;
                                { "Russian", "На поселение совершено нападение&#xA;Выследите и уничтожьте силы стражей: &lt;FUEL&gt;%CURRENT%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS_MSG2C_ALT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- На поселение совершено нападение&#xA;Выследите и уничтожьте силы стражей: осталось &lt;FUEL&gt;%CURRENT%.&lt;&gt;&#xA;Переключайте режимы оружия, используя &lt;IMG&gt;CYCLEWEAPON&lt;&gt;.
                                -- The settlement is under attack&#xA;Hunt and destroy Sentinel forces:  &lt;FUEL&gt;%CURRENT% remaining&lt;&gt;&#xA;Cycle weapon mode with &lt;IMG&gt;CYCLEWEAPON&lt;&gt;
                                { "Russian", "На поселение совершено нападение&#xA;Выследите и уничтожьте силы стражей: &lt;FUEL&gt;%CURRENT%&lt;&gt;&#xA;Переключайте режимы оружия, используя &lt;IMG&gt;CYCLEWEAPON&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS_MSG3_BLOCKED" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- На ваш &lt;TECHNOLOGY&gt;терминал управления поселением&lt;&gt; поступил &lt;SPECIAL&gt;аномальный сигнал&lt;&gt;.&#xA;Разберитесь с текущими делами в поселении, чтобы получить сообщение.&#xA;Выберите пункт «Поселенцы» в журнале заданий (&lt;IMG&gt;OPTIONS&lt;&gt;).
                                -- An &lt;SPECIAL&gt;anomalous broadcast&lt;&gt; has reached your &lt;TECHNOLOGY&gt;Settlement Administration Terminal&lt;&gt;&#xA;Clear pending settlement business to receive the message&#xA;Select 'The Settlers' in the Mission Log (&lt;IMG&gt;OPTIONS&lt;&gt;)
                                { "Russian", "На ваш &lt;TECHNOLOGY&gt;терминал управления поселением&lt;&gt; поступил &lt;SPECIAL&gt;аномальный сигнал&lt;&gt;&#xA;Разберитесь с текущими делами в поселении, чтобы получить сообщение&#xA;Выберите задание “Поселенцы” в журнале (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS_MSG3_NO_OFFICE_A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- В ваше поселение поступил &lt;SPECIAL&gt;аномальный сигнал&lt;&gt;.&#xA;Постройте &lt;TECHNOLOGY&gt;офис куратора&lt;&gt;, чтобы получить сообщение.&#xA;Выберите пункт «Поселенцы» в журнале заданий (&lt;IMG&gt;OPTIONS&lt;&gt;).
                                -- An &lt;SPECIAL&gt;anomalous broadcast&lt;&gt; has reached your settlement&#xA;Construct the &lt;TECHNOLOGY&gt;Overseer's Office&lt;&gt; to receive the message&#xA;Select 'The Settlers' in the Mission Log (&lt;IMG&gt;OPTIONS&lt;&gt;)
                                { "Russian", "Ваше поселение поймало &lt;SPECIAL&gt;аномальный сигнал&lt;&gt;&#xA;Постройте &lt;TECHNOLOGY&gt;офис куратора&lt;&gt;, чтобы получить сообщение&#xA;Выберите задание “Поселенцы” в журнале (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS_MSG3_NO_OFFICE_B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- В ваше поселение поступил &lt;SPECIAL&gt;аномальный сигнал&lt;&gt;.&#xA;Вернитесь в поселение, чтобы получить сообщение.
                                -- An &lt;SPECIAL&gt;anomalous broadcast&lt;&gt; has reached your settlement&#xA;Return to your settlement to receive the message
                                { "Russian", "Ваше поселение поймало &lt;SPECIAL&gt;аномальный сигнал&lt;&gt;&#xA;Вернитесь в поселение, чтобы получить сообщение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS_MSG3_NO_OFFICE_C" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- В ваше поселение поступил &lt;SPECIAL&gt;аномальный сигнал&lt;&gt;.&#xA;Воспользуйтесь &lt;TECHNOLOGY&gt;телепортом космической станции&lt;&gt;, чтобы быстро вернуться в поселение.
                                -- An &lt;SPECIAL&gt;anomalous broadcast&lt;&gt; has reached your settlement&#xA;Use the &lt;TECHNOLOGY&gt;Space Station Teleporter&lt;&gt; to quickly return to your settlement
                                { "Russian", "Ваше поселение поймало &lt;SPECIAL&gt;аномальный сигнал&lt;&gt;&#xA;Используйте &lt;TECHNOLOGY&gt;телепорт на космической станции&lt;&gt;&#xA;для быстрого возвращения в поселение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- В ваше поселение поступил &lt;SPECIAL&gt;аномальный сигнал&lt;&gt;.&#xA;Воспользуйтесь &lt;TECHNOLOGY&gt;терминалом управления&lt;&gt;, чтобы принять сообщение.
                                -- An &lt;SPECIAL&gt;anomalous broadcast&lt;&gt; has reached your settlement&#xA;Use the &lt;TECHNOLOGY&gt;Administration Terminal&lt;&gt; in your office to receive the message
                                { "Russian", "Ваше поселение поймало &lt;SPECIAL&gt;аномальный сигнал&lt;&gt;&#xA;Используйте &lt;TECHNOLOGY&gt;терминал управления&lt;&gt;, чтобы принять сообщение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS_MSG3B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Итерацию Тефиды интересует &lt;FUEL&gt;активность стражей&lt;&gt; в вашем поселении&#xA;Осмотрите обломки на поле боя, чтобы найти &lt;SPECIAL&gt;сведения&lt;&gt; о нападении.&#xA;Статус поселения: &lt;STELLAR&gt;беспокойство&lt;&gt;
                                -- Iteration Tethys is curious about the &lt;FUEL&gt;Sentinel activity&lt;&gt; at your settlement&#xA;Search the battlefield debris for &lt;SPECIAL&gt;clues&lt;&gt; about the attack&#xA;Settlement status: &lt;STELLAR&gt;uneasy&lt;&gt;
                                { "Russian", "Итерацию Тефиды интересует &lt;FUEL&gt;действия стражей&lt;&gt; в вашем поселении&#xA;Осмотрите поле боя, чтобы найти &lt;SPECIAL&gt;зацепки&lt;&gt; о нападении&#xA;В поселении царит &lt;STELLAR&gt;беспокойство&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Итерация Тефиды просит о встрече на &lt;SPECIAL&gt;Космической Аномалии&lt;&gt;.&#xA;Поговорите с Тефидой об &lt;FUEL&gt;активности стражей&lt;&gt; в районе вашего поселения.
                                -- Iteration Tethys requests a meeting at the &lt;SPECIAL&gt;Space Anomaly&lt;&gt;&#xA;Speak to Tethys about the &lt;FUEL&gt;Sentinel activity&lt;&gt; at your settlement
                                { "Russian", "Итерация Тефиды просит встретиться&#xA;на &lt;SPECIAL&gt;Космической Аномалии&lt;&gt;&#xA;Поговорите с Тефидой о &lt;FUEL&gt;действиях стражей&lt;&gt;&#xA;в вашем поселении" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS_MSG4B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Итерация Тефида просит о встрече на &lt;SPECIAL&gt;Космической Аномалии&lt;&gt;.&#xA;Находясь в космосе, вызовите &lt;SPECIAL&gt;Аномалию&lt;&gt; через быстрое меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)
                                -- Iteration Tethys requests a meeting at the &lt;SPECIAL&gt;Space Anomaly&lt;&gt;&#xA;In space, summon the &lt;SPECIAL&gt;Anomaly&lt;&gt; from the Quick Menu (&lt;IMG&gt;QUICK_MENU&lt;&gt;)
                                { "Russian", "Итерация Тефида просит встретиться&#xA;на &lt;SPECIAL&gt;Космической Аномалии&lt;&gt;&#xA;Находясь в космосе, вызовите &lt;SPECIAL&gt;Аномалию&lt;&gt; из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS_MSG4C" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Тефиде нужны &lt;TECHNOLOGY&gt;дополнительные компоненты&lt;&gt; для перепрошивки найденного дрона.&#xA;Собрано компонентов: %CURRENT%/%AMOUNT%&#xA;Поговорите с остальными &lt;SPECIAL&gt;итерациями Странников&lt;&gt;, населяющими Аномалию.
                                -- Tethys requires &lt;TECHNOLOGY&gt;additional components&lt;&gt; to rewire the salvaged drone&#xA;Components gathered: %CURRENT%/%AMOUNT%&#xA;Speak to the other &lt;SPECIAL&gt;Traveller Iterations&lt;&gt; inhabiting the Anomaly
                                { "Russian", "Тефиде нужны &lt;TECHNOLOGY&gt;компоненты&lt;&gt; для починки дрона&#xA;Собрано компонентов: %CURRENT%/%AMOUNT%&#xA;Поговорите с &lt;SPECIAL&gt;итерациями странников&lt;&gt; на Аномалии" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS_MSG4D" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Тефида может восстановить и перепрошить найденный &lt;TECHNOLOGY&gt;корпус дрона&lt;&gt;&#xA;Собрано компонентов: &lt;TRADEABLE&gt;3&lt;&gt;/&lt;TRADABLE&gt;3&#xA;Передайте компоненты Тефиде
                                -- Tethys can reconstruct and rewire the salvaged &lt;TECHNOLOGY&gt;drone shell&lt;&gt;&#xA;Components gathered: &lt;TRADEABLE&gt;3&lt;&gt;/&lt;TRADABLE&gt;3&#xA;Provide the components to Tethys
                                { "Russian", "Тефида сможет починить найденного &lt;TECHNOLOGY&gt;дрона&lt;&gt;&#xA;&lt;TRADEABLE&gt;Все компоненты собраны&lt;&gt;&#xA;Отдайте их Тефиде" },
                            }
                        },
                        --#endregion

                        --#region UI_SETTLEMENT_PROD_DEBT_TIP
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_PROD_DEBT_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Чтобы уменьшить долг, возводите &lt;TECHNOLOGY&gt;постройки&lt;&gt; и инвестируйте в &lt;STELLAR&gt;особенности поселения&lt;&gt;, повышая производительность и снижая расходы на обслуживание.
                                -- Reduce debt by constructing &lt;TECHNOLOGY&gt;buildings&lt;&gt; and investing in &lt;STELLAR&gt;settlement features&lt;&gt; to increase production and reduce maintenance costs
                                { "Russian", "Уменьшите долг, путем возведения &lt;TECHNOLOGY&gt;построек&lt;&gt; и инвестиций в &lt;STELLAR&gt;особенности поселения&lt;&gt;. Это повысит производительность и снизит расходы на обслуживание." },
                            }
                        },
                        --#endregion

                        --#region UI_DRONE_FRIEND_NAME
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DRONE_FRIEND_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ФАКЕЛ СТРАЖА (ВЫКЛ.)
                                -- SENTINEL FLARE (OFF)
                                { "Russian", "ФАКЕЛ СТРАЖА: ВЫКЛЮЧЕН" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DRONE_FRIEND_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Факел стража (выкл.)
                                -- Sentinel Flare (Off)
                                { "Russian", "Факел стража: выключен" },
                            }
                        },
                        --#endregion

                        --#region UI_SENT_MISS2_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS2_MSG1_NX" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вернитесь на поверхность планеты, чтобы протестировать &lt;TECHNOLOGY&gt;реконструированный дрон&lt;&gt;.
                                -- Return to a planetary surface to field test the &lt;TECHNOLOGY&gt;reconstructed drone&lt;&gt;
                                { "Russian", "Вернитесь на поверхность планеты&#xA;Испытайте &lt;TECHNOLOGY&gt;реконструированного дрона&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS2_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вернитесь в свое поселение, чтобы провести полевое испытание &lt;TECHNOLOGY&gt;восстановленного дрона&lt;&gt;.&#xA;&lt;STELLAR&gt;Переместитесь&lt;&gt; в свое поселение через &lt;SPECIAL&gt;телепорт Аномалии&lt;&gt;.
                                -- Return to your settlement to field test the &lt;TECHNOLOGY&gt;reconstructed drone&lt;&gt;&#xA;&lt;STELLAR&gt;Teleport&lt;&gt; to your settlement from the &lt;SPECIAL&gt;Anomaly Teleporter&lt;&gt;
                                { "Russian", "Вернитесь в свое поселение&#xA;Испытайте &lt;TECHNOLOGY&gt;реконструированного дрона&lt;&gt;&#xA;&lt;STELLAR&gt;Переместитесь&lt;&gt; в свое поселение через &lt;SPECIAL&gt;телепорт Аномалии&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS2_MSG1_ALT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вернитесь в свое поселение, чтобы провести полевое испытание &lt;TECHNOLOGY&gt;восстановленного дрона&lt;&gt;.
                                -- Return to your settlement to field test the &lt;TECHNOLOGY&gt;reconstructed drone&lt;&gt;
                                { "Russian", "Вернитесь в свое поселение&#xA;Испытайте &lt;TECHNOLOGY&gt;реконструированного дрона&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS2_MSG1B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вернитесь в свое поселение, чтобы провести полевое испытание &lt;TECHNOLOGY&gt;восстановленного дрона&lt;&gt;.&#xA;&lt;STELLAR&gt;Переместитесь&lt;&gt; в свое поселение через любой терминал телепорта.
                                -- Return to your settlement to field test the &lt;TECHNOLOGY&gt;reconstructed drone&lt;&gt;&#xA;&lt;STELLAR&gt;Teleport&lt;&gt; to your settlement from any teleport terminus
                                { "Russian", "Вернитесь в свое поселение&#xA;Испытайте &lt;TECHNOLOGY&gt;реконструированного дрона&lt;&gt;&#xA;&lt;STELLAR&gt;Переместитесь&lt;&gt; в свое поселение через любой телепорт" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS2_MSG1C" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Проведите полевые испытания &lt;TECHNOLOGY&gt;восстановленного дрона&lt;&gt;&#xA;Активируйте &lt;TECHNOLOGY&gt;факел стража&lt;&gt; с помощью &lt;IMG&gt;FE_ALT1&lt;&gt;&#xA;Чтобы использовать факел, найдите его в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;).
                                -- Field test the &lt;TECHNOLOGY&gt;reconstructed drone&lt;&gt;&#xA;Activate the &lt;TECHNOLOGY&gt;Sentinel Flare&lt;&gt; with &lt;IMG&gt;FE_ALT1&lt;&gt;&#xA;To use the flare, first locate in the Inventory (&lt;IMG&gt;INVENTORY&lt;&gt;)
                                { "Russian", "Проведите полевые испытания &lt;TECHNOLOGY&gt;реконструированного дрона&lt;&gt;&#xA;Активируйте &lt;TECHNOLOGY&gt;факел стража&lt;&gt; с помощью &lt;IMG&gt;FE_ALT1&lt;&gt;&#xA;Чтобы использовать факел, найдите его в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS2_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- В системе [ Дозорного ] заблокированы определенные &lt;STELLAR&gt;координаты&lt;&gt;.&#xA;Найдите в указанном месте сведения о восстановленном дроне.
                                -- [ The Sentry ] has locked on to a set of &lt;STELLAR&gt;coordinates&lt;&gt;&#xA;Search the marked location to learn more about the reconstructed drone
                                { "Russian", "[ Дозорный ] нацелен на определенные &lt;STELLAR&gt;координаты&lt;&gt;&#xA;Обыщите указанное место, чтобы найти сведения о дроне" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS2_MSG2_ALT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- В системе [ Дозорного ] заблокированы определенные &lt;STELLAR&gt;координаты&lt;&gt;.&#xA;Найдите в указанном месте сведения о восстановленном дроне.&#xA;&lt;FUEL&gt;ВНИМАНИЕ&lt;&gt;: местность может быть опасной.&#xA;Сделайте &lt;TECHNOLOGY&gt;плазмомет&lt;&gt; для мультитула.
                                -- [ The Sentry ] has locked on to a set of &lt;STELLAR&gt;coordinates&lt;&gt;&#xA;Search the marked location to learn more about the reconstructed drone&#xA;&lt;FUEL&gt;WARNING&lt;&gt;: Location may be dangerous&#xA;Construct a &lt;TECHNOLOGY&gt;Boltcaster&lt;&gt; in your Multi-Tool
                                { "Russian", "[ Дозорный ] нацелен на определенные &lt;STELLAR&gt;координаты&lt;&gt;&#xA;Обыщите указанное место, чтобы найти сведения о дроне&#xA;&lt;FUEL&gt;ВНИМАНИЕ!&lt;&gt; Местность может быть опасной&#xA;Создайте &lt;TECHNOLOGY&gt;плазмомет&lt;&gt; для мультитула" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS2_MSG2B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- [ Дозорный ] привел вас к &lt;SPECIAL&gt;столпу стражей&lt;&gt;.&#xA;Осмотрите терминал и найдите сведения о восстановленном дроне.
                                -- [ The Sentry ] has guided you to a &lt;SPECIAL&gt;Sentinel Pillar&lt;&gt;&#xA;Investigate the terminal to learn more about the reconstructed drone
                                { "Russian", "[ Дозорный ] привел вас к &lt;SPECIAL&gt;столпу стражей&lt;&gt;&#xA;Осмотрите терминал и узнайте больше о дроне" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS2_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Статус терминала столпа: &lt;SPECIAL&gt;ЗАБЛОКИРОВАН&lt;&gt;&#xA;Уничтожено узлов: %CURRENT%/%AMOUNT%&#xA;Уничтожьте узлы управления столпа (&lt;IMG&gt;ATTACK&lt;&gt;), чтобы получить доступ к терминалу.
                                -- The Pillar terminal status: &lt;SPECIAL&gt;LOCKED&lt;&gt;&#xA;Nodes destroyed: %CURRENT%/%AMOUNT%&#xA;Destroy the Pillar Control Nodes (&lt;IMG&gt;ATTACK&lt;&gt;) to access the terminal
                                { "Russian", "Терминал столпа стражей &lt;SPECIAL&gt;заблокирован&lt;&gt;&#xA;Уничтожено узлов: %CURRENT%/%AMOUNT%&#xA;Уничтожьте узлы управления столпа (&lt;IMG&gt;ATTACK&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS2_MSG3_ALT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Статус терминала столпа: &lt;SPECIAL&gt;ЗАБЛОКИРОВАН&lt;&gt;&#xA;Уничтожено узлов: %CURRENT%/%AMOUNT%&#xA;Сделайте &lt;TECHNOLOGY&gt;плазмомет&lt;&gt; для мультитула.
                                -- The Pillar terminal status: &lt;SPECIAL&gt;LOCKED&lt;&gt;&#xA;Nodes destroyed: %CURRENT%/%AMOUNT%&#xA;Construct a &lt;TECHNOLOGY&gt;Boltcaster&lt;&gt; in your Multi-Tool
                                { "Russian", "Терминал столпа стражей &lt;SPECIAL&gt;заблокирован&lt;&gt;&#xA;Уничтожено узлов: %CURRENT%/%AMOUNT%&#xA;Создайте &lt;TECHNOLOGY&gt;плазмомет&lt;&gt; для мультитула" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS2_MSG3_ALT2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Статус терминала столпа: &lt;SPECIAL&gt;ЗАБЛОКИРОВАН&lt;&gt;&#xA;Уничтожено узлов: %CURRENT%/%AMOUNT%&#xA;Переключайте режимы оружия, используя &lt;IMG&gt;CYCLEWEAPON&lt;&gt;.
                                { "Russian", "Терминал столпа стражей &lt;SPECIAL&gt;заблокирован&lt;&gt;&#xA;Уничтожено узлов: %CURRENT%/%AMOUNT%&#xA;Переключайте режимы оружия, используя &lt;IMG&gt;CYCLEWEAPON&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS2_MSG3B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Победите охранников-стражей, чтобы получить доступ к терминалу.&#xA;Осталось охранников: %CURRENT%
                                -- Defeat the Sentinel guards to access the terminal&#xA;Guards remaining: %CURRENT%
                                { "Russian", "Победите охранников-стражей, чтобы получить доступ к терминалу&#xA;Осталось охранников: %CURRENT%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS2_MSG3C" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- [ Дозорный ] привел вас к &lt;FUEL&gt;столпу стражей&lt;&gt;.&#xA;Уничтожено узлов: 3/3 — терминал в опасности!&#xA;Осмотрите терминал и найдите сведения о восстановленном дроне.
                                -- [ The Sentry ] has guided you to a &lt;FUEL&gt;Sentinel Pillar&lt;&gt;&#xA;Nodes destroyed: 3/3 - terminal vulnerable!&#xA;Investigate the terminal to learn more about the reconstructed drone
                                { "Russian", "[ Дозорный ] привел вас к &lt;FUEL&gt;столпу стражей&lt;&gt;&#xA;Все узлы уничтожены — терминал уязвим&#xA;Изучите терминал и найдите сведения о дроне" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS2_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Столп стражей подключился к [ Дозорному ].&#xA;Поговорите с [ Дозорным ], чтобы узнать его текущий статус.
                                -- The Sentinel Pillar has interfaced with [ The Sentry ]&#xA;Speak with [ The Sentry ] to probe its current status
                                { "Russian", "Столп стражей подключился к [ Дозорному ]&#xA;Поговорите с [ Дозорным ], чтобы узнать его текущий статус" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS2_MSG5_LEARN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Установите украденную технологию стражей в вездеход «Минотавр».&#xA;Разблокируйте чертежи геостанции «Минотавра» с помощью извлеченных данных.&#xA;Извлеките &lt;TECHNOLOGY&gt;данные&lt;&gt; из &lt;STELLAR&gt;засыпанных технологических модулей&lt;&gt;: %CURRENT%/%AMOUNT%
                                -- Install stolen sentinel technology in your Minotaur Exocraft&#xA;Unlock Minotaur Geobay blueprints with Salvaged Data&#xA;Extract &lt;TECHNOLOGY&gt;Salvaged Data&lt;&gt; from &lt;STELLAR&gt;Buried Technology Modules&lt;&gt;: %CURRENT%/%AMOUNT%
                                { "Russian", "Установите украденную технологию стражей в Минотавр&#xA;Разблокируйте чертежи геостанции Минотавра с помощью извлеченных данных&#xA;В &lt;STELLAR&gt;засыпанных технологических модулях&lt;&gt; можно найти &lt;TECHNOLOGY&gt;данные&lt;&gt;&#xA;Извлеченных данных: %CURRENT%/%AMOUNT%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS2_MSG5_LEARNB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Установите украденную технологию стражей в вездеход «Минотавр».&#xA;Разблокируйте чертежи геостанции «Минотавра» на &lt;SPECIAL&gt;Космической Аномалии&lt;&gt;.&#xA;Находясь в космосе, вызовите &lt;SPECIAL&gt;Аномалию&lt;&gt; через быстрое меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                -- Install stolen sentinel technology in your Minotaur Exocraft&#xA;Unlock Minotaur Geobay blueprints aboard the &lt;SPECIAL&gt;Space Anomaly&lt;&gt;&#xA;In space, summon the &lt;SPECIAL&gt;Anomaly&lt;&gt; from the Quick Menu (&lt;IMG&gt;QUICK_MENU&lt;&gt;)
                                { "Russian", "Установите украденную технологию стражей в Минотавр&#xA;Разблокируйте чертежи геостанции Минотавра на &lt;SPECIAL&gt;Космической Аномалии&lt;&gt;&#xA;Находясь в космосе, вызовите &lt;SPECIAL&gt;Аномалию&lt;&gt; из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS2_MSG5_LEARNC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Установите украденную технологию стражей в вездеход «Минотавр».&#xA;Посетите &lt;STELLAR&gt;станцию строительных исследований&lt;&gt;, чтобы разблокировать чертежи &lt;TECHNOLOGY&gt;геостанции вездехода&lt;&gt;.
                                -- Install stolen sentinel technology in your Minotaur Exocraft&#xA;Visit the &lt;STELLAR&gt;Construction Research Station&lt;&gt; to unlock &lt;TECHNOLOGY&gt;Minotaur Geobay&lt;&gt; blueprints
                                { "Russian", "Установите украденную технологию стражей в Минотавр&#xA;Разблокируйте чертежи &lt;TECHNOLOGY&gt;геостанции Минотавра&lt;&gt;&#xA;на &lt;STELLAR&gt;станции строительных исследований&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS2_MSG5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Схема &lt;TECHNOLOGY&gt;правой руки каркасного стража&lt;&gt;, полученная из столпа стражей.&#xA;Установите украденную технологию стражей в ваш &lt;TECHNOLOGY&gt;вездеход «Минотавр»&lt;&gt;.&#xA;Вернитесь на поверхность планеты, чтобы призвать «Минотавр».
                                -- &lt;TECHNOLOGY&gt;Sentinel Hardframe Right Arm&lt;&gt; schematic obtained from Sentinel Pillar&#xA;Install stolen sentinel technology in your &lt;TECHNOLOGY&gt;Minotaur Exocraft&lt;&gt;&#xA;Return to a planetary surface to summon the Minotaur
                                { "Russian", "Чертеж &lt;TECHNOLOGY&gt;правой руки каркасного стража&lt;&gt; изъят из столпа стражей&#xA;Установите украденную технологию стражей в &lt;TECHNOLOGY&gt;Минотавр&lt;&gt;&#xA;Вернитесь на поверхность планеты, чтобы вызвать Минотавра" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS2_MSG5A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Схема &lt;TECHNOLOGY&gt;правой руки каркасного стража&lt;&gt;, полученная из столпа стражей.&#xA;Установите украденную технологию стражей в ваш &lt;TECHNOLOGY&gt;вездеход «Минотавр»&lt;&gt;.&#xA;Разместите &lt;STELLAR&gt;геостанцию «Минотавра»&lt;&gt; через &lt;TECHNOLOGY&gt;меню созидания&lt;&gt; (&lt;IMG&gt;BUILD_MENU&lt;&gt;).
                                { "Russian", "Чертеж &lt;TECHNOLOGY&gt;правой руки каркасного стража&lt;&gt; изъят из столпа стражей&#xA;Установите украденную технологию стражей в &lt;TECHNOLOGY&gt;Минотавр&lt;&gt;&#xA;Разместите &lt;STELLAR&gt;геостанцию Минотавра&lt;&gt; из &lt;TECHNOLOGY&gt;меню строительства&lt;&gt; (&lt;IMG&gt;BUILD_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS2_MSG5B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Схема &lt;TECHNOLOGY&gt;правой руки каркасного стража&lt;&gt;, полученная из столпа стражей.&#xA;Установите украденную технологию стражей в ваш &lt;TECHNOLOGY&gt;вездеход «Минотавр»&lt;&gt;.&#xA;Разместите &lt;STELLAR&gt;геостанцию «Минотавра»&lt;&gt; или &lt;STELLAR&gt;станцию вызова вездехода&lt;&gt; через &lt;TECHNOLOGY&gt;меню созидания&lt;&gt; (&lt;IMG&gt;BUILD_MENU&lt;&gt;).
                                { "Russian", "Чертеж &lt;TECHNOLOGY&gt;правой руки каркасного стража&lt;&gt; изъят из столпа стражей&#xA;Установите украденную технологию стражей в &lt;TECHNOLOGY&gt;Минотавр&lt;&gt;&#xA;Разместите &lt;STELLAR&gt;геостанцию Минотавра&lt;&gt; или &lt;STELLAR&gt;станцию вызова вездехода&lt;&gt;&#xA;из &lt;TECHNOLOGY&gt;меню строительства&lt;&gt; (&lt;IMG&gt;BUILD_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS2_MSG5C" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Схема &lt;TECHNOLOGY&gt;правой руки каркасного стража&lt;&gt;, полученная из столпа стражей.&#xA;Установите украденную технологию стражей в ваш &lt;TECHNOLOGY&gt;вездеход «Минотавр»&lt;&gt;.&#xA;Призовите «Минотавр» через &lt;TECHNOLOGY&gt;быстрое меню&lt;&gt; (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                { "Russian", "Чертеж &lt;TECHNOLOGY&gt;правой руки каркасного стража&lt;&gt; изъят из столпа стражей&#xA;Установите украденную технологию стражей в &lt;TECHNOLOGY&gt;Минотавр&lt;&gt;&#xA;Вызовите Минотавра из &lt;TECHNOLOGY&gt;быстрого меню&lt;&gt; (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS2_MSG5D" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Схема &lt;TECHNOLOGY&gt;правой руки каркасного стража&lt;&gt;, полученная из столпа стражей.&#xA;Установите украденную технологию стражей в ваш &lt;TECHNOLOGY&gt;вездеход «Минотавр»&lt;&gt;.&#xA;Выберите пустую ячейку в &lt;STELLAR&gt;инвентаре&lt;&gt; и начните установку с помощью &lt;IMG&gt;TECHMENU&lt;&gt;.
                                -- &lt;TECHNOLOGY&gt;Sentinel Hardframe Right Arm&lt;&gt; schematic obtained from Sentinel Pillar&#xA;Install stolen sentinel technology in your &lt;TECHNOLOGY&gt;Minotaur Exocraft&lt;&gt;&#xA;Select an empty &lt;STELLAR&gt;Inventory&lt;&gt; slot and begin installation with &lt;IMG&gt;TECHMENU&lt;&gt;
                                { "Russian", "Чертеж &lt;TECHNOLOGY&gt;правой руки каркасного стража&lt;&gt; изъят из столпа стражей&#xA;Установите украденную технологию стражей в &lt;TECHNOLOGY&gt;Минотавр&lt;&gt;&#xA;Выберите пустую ячейку в &lt;STELLAR&gt;инвентаре&lt;&gt;&#xA;и начните установку с помощью &lt;IMG&gt;TECHMENU&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS2_MSG5E" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Завершите установку &lt;TECHNOLOGY&gt;правой руки каркасного стража&lt;&gt;.&#xA;Откройте инвентарь «Минотавра» с помощью &lt;IMG&gt;INVENTORY&lt;&gt;.&#xA;Продолжите установку с помощью &lt;IMG&gt;REPAIR&lt;&gt;.&#xA;Чтобы закрепить необходимые компоненты, используйте &lt;IMG&gt;PIN&lt;&gt;.
                                -- Complete the &lt;TECHNOLOGY&gt;Sentinel Hardframe Right Arm&lt;&gt;&#xA;Use &lt;IMG&gt;INVENTORY&lt;&gt; to access the Minotaur Exocraft Inventory&#xA;Continue installation with &lt;IMG&gt;REPAIR&lt;&gt;&#xA;Pin required components with &lt;IMG&gt;PIN&lt;&gt;
                                { "Russian", "Завершите установку &lt;TECHNOLOGY&gt;правой руки каркасного стража&lt;&gt;&#xA;Откройте инвентарь Минотавра, нажав &lt;IMG&gt;INVENTORY&lt;&gt;&#xA;Продолжите установку с помощью &lt;IMG&gt;REPAIR&lt;&gt;&#xA;Закрепите необходимые компоненты с помощью &lt;IMG&gt;PIN&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region UI_SENT_MISS3_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS3_MSG3B_NX" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- [ Дозорный ] хочет обновить свою голосовую систему&#xA;Проверьте полученные &lt;STELLAR&gt;поврежденные координаты&lt;&gt;
                                -- [ The Sentry ] seeks to upgrade their vocalisation unit&#xA;Investigate the &lt;STELLAR&gt;scrambled coordinates&lt;&gt; supplied
                                { "Russian", "[ Дозорный ] хочет обновить свою голосовую систему&#xA;Проверьте &lt;STELLAR&gt;зашифрованные координаты&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS3_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- [ Дозорный ] предупредил вас о &lt;SPECIAL&gt;волнениях&lt;&gt; среди жителей.&#xA;Вернитесь в поселение, чтобы убедиться в защищенности поселенцев.
                                -- [ The Sentry ] has warned of &lt;SPECIAL&gt;disruption&lt;&gt; amongst your settlers&#xA;Return to the settlement to monitor the safety of your citizens
                                { "Russian", "[ Дозорный ] предупредил о &lt;SPECIAL&gt;волнениях&lt;&gt; среди жителей&#xA;Вернитесь в поселение и проверьте безопасность поселенцев" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS3_MSG1B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- [ Дозорный ] предупредил вас о &lt;SPECIAL&gt;волнениях&lt;&gt; среди жителей.&#xA;Вернитесь в поселение, чтобы убедиться в защищенности поселенцев.&#xA;&lt;STELLAR&gt;Переместитесь&lt;&gt; в свое поселение через любой терминал телепорта.
                                { "Russian", "[ Дозорный ] предупредил о &lt;SPECIAL&gt;волнениях&lt;&gt; среди жителей&#xA;Вернитесь в поселение и проверьте безопасность поселенцев&#xA;&lt;STELLAR&gt;Переместитесь&lt;&gt; в свое поселение через любой телепорт" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS3_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Статус поселения: &lt;SPECIAL&gt;озабоченность&lt;&gt;&#xA;Обеспокоенные поселенцы попросили о встрече в вашем офисе.&#xA;Воспользуйтесь &lt;TECHNOLOGY&gt;терминалом управления поселением&lt;&gt;, чтобы выслушать их просьбу.
                                { "Russian", "Жители поселения чем-то &lt;SPECIAL&gt;озабочены&lt;&gt;&#xA;Обеспокоенные поселенцы попросили о встрече в вашем офисе&#xA;Используйте &lt;TECHNOLOGY&gt;терминал управления поселением&lt;&gt;,&#xA;чтобы выслушать их просьбу" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS3_MSG2_BLOCKED" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обеспокоенные поселенцы попросили о встрече в вашем офисе.&#xA;Разберитесь с текущими делами в поселении, чтобы выслушать их просьбу.&#xA;Выберите пункт «Поселенцы» в журнале заданий (&lt;IMG&gt;OPTIONS&lt;&gt;).
                                -- Concerned settlers have requested an audience at your office&#xA;Clear pending settlement business to hear their request&#xA;Select 'The Settlers' in the Mission Log (&lt;IMG&gt;OPTIONS&lt;&gt;)
                                { "Russian", "Обеспокоенные поселенцы попросили о встрече в вашем офисе&#xA;Разберитесь с текущими делами в поселении, чтобы выслушать их просьбу&#xA;Выберите задание “Поселенцы” в журнале (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS3_MSG2_NO_OFFICE_A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обеспокоенные поселенцы попросили о встрече.&#xA;Постройте &lt;TECHNOLOGY&gt;офис куратора&lt;&gt;, чтобы выслушать их просьбу.&#xA;Выберите пункт «Поселенцы» в журнале заданий (&lt;IMG&gt;OPTIONS&lt;&gt;).
                                -- Concerned settlers have requested an audience&#xA;Construct the &lt;TECHNOLOGY&gt;Overseer's Office&lt;&gt; to hear their request&#xA;Select 'The Settlers' in the Mission Log (&lt;IMG&gt;OPTIONS&lt;&gt;)
                                { "Russian", "Обеспокоенные поселенцы попросили о встрече&#xA;Постройте &lt;TECHNOLOGY&gt;офис куратора&lt;&gt;, чтобы выслушать их просьбу&#xA;Выберите задание “Поселенцы” в журнале (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS3_MSG2_NO_OFFICE_B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обеспокоенные поселенцы попросили о встрече.&#xA;Вернитесь в поселение, чтобы выслушать их просьбу.
                                { "Russian", "Обеспокоенные поселенцы попросили о встрече&#xA;Вернитесь в поселение и выслушайте их просьбу" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS3_MSG2_NO_OFFICE_C" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обеспокоенные поселенцы попросили о встрече.&#xA;Воспользуйтесь &lt;TECHNOLOGY&gt;телепортом космической станции&lt;&gt;, чтобы быстро вернуться в поселение.
                                { "Russian", "Обеспокоенные поселенцы попросили о встрече&#xA;Используйте &lt;TECHNOLOGY&gt;телепорт на космической станции&lt;&gt;&#xA;для быстрого возвращения в поселение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS3_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Группа высадки ищет в &lt;SPECIAL&gt;заброшенном здании&lt;&gt; сведения о стражах.&#xA;Экспедиция жителей поселения: &lt;STELLAR&gt;продолжается&lt;&gt;
                                -- The away team is searching an &lt;SPECIAL&gt;Abandoned Building&lt;&gt; for clues about the Sentinels&#xA;Settlement citizen expedition: &lt;STELLAR&gt;In progress&lt;&gt;
                                { "Russian", "Группа высадки ищет в &lt;SPECIAL&gt;заброшенном здании&lt;&gt; сведения о стражах&#xA;Экспедиция жителей поселения &lt;STELLAR&gt;продолжается&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS3_MSG3_ALT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Группа высадки ищет в &lt;SPECIAL&gt;монолите&lt;&gt; сведения о стражах.&#xA;Экспедиция жителей поселения: &lt;STELLAR&gt;продолжается&lt;&gt;
                                { "Russian", "Группа высадки ищет у &lt;SPECIAL&gt;монолита&lt;&gt; сведения о стражах&#xA;Экспедиция жителей поселения &lt;STELLAR&gt;продолжается&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS3_MSG3B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Проверьте &lt;STELLAR&gt;поврежденные координаты&lt;&gt;, полученные от [ Дозорного ].&#xA;Экспедиция жителей поселения: &lt;STELLAR&gt;продвигается&lt;&gt;.
                                -- Investigate the &lt;STELLAR&gt;scrambled coordinates&lt;&gt; supplied by [ The Sentry ]&#xA;Settlement citizen expedition: &lt;STELLAR&gt;In progress&lt;&gt;
                                { "Russian", "Следуйте по &lt;STELLAR&gt;координатам&lt;&gt; от [ Дозорного ]&#xA;Экспедиция жителей поселения &lt;STELLAR&gt;продолжается&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS3_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Координаты [ Дозорного ] привели к &lt;TECHNOLOGY&gt;заводу&lt;&gt;.&#xA;Укрепленные двери можно &lt;FUEL&gt;уничтожить&lt;&gt; (&lt;IMG&gt;ATTACK&lt;&gt;).&#xA;Получите доступ к &lt;STELLAR&gt;терминалу завода&lt;&gt;, чтобы найти сведения о постройке.
                                -- [ The Sentry ]'s coordinates led to a &lt;TECHNOLOGY&gt;manufacturing facility&lt;&gt;&#xA;Reinforced doors can be &lt;FUEL&gt;destroyed&lt;&gt; (&lt;IMG&gt;ATTACK&lt;&gt;)&#xA;Gain access to the &lt;STELLAR&gt;factory terminal&lt;&gt; to investigate
                                { "Russian", "Координаты [ Дозорного ] привели к &lt;TECHNOLOGY&gt;заводу&lt;&gt;&#xA;Укрепленные двери можно &lt;FUEL&gt;уничтожить&lt;&gt; (&lt;IMG&gt;ATTACK&lt;&gt;)&#xA;Найдите и изучите &lt;STELLAR&gt;терминал завода&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS3_MSG4_ALT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Координаты [ Дозорного ] привели к &lt;TECHNOLOGY&gt;заводу&lt;&gt;.&#xA;Укрепленные двери можно &lt;FUEL&gt;уничтожить&lt;&gt; (&lt;IMG&gt;ATTACK&lt;&gt;).&#xA;Сделайте &lt;TECHNOLOGY&gt;плазмомет&lt;&gt; для мультитула.
                                { "Russian", "Координаты [ Дозорного ] привели к &lt;TECHNOLOGY&gt;заводу&lt;&gt;&#xA;Укрепленные двери можно &lt;FUEL&gt;уничтожить&lt;&gt; (&lt;IMG&gt;ATTACK&lt;&gt;)&#xA;Создайте &lt;TECHNOLOGY&gt;плазмомет&lt;&gt; для мультитула" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS3_MSG4_ALT2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Координаты [ Дозорного ] привели к &lt;TECHNOLOGY&gt;заводу&lt;&gt;.&#xA;Укрепленные двери можно &lt;FUEL&gt;уничтожить&lt;&gt; (&lt;IMG&gt;ATTACK&lt;&gt;).&#xA;Переключайте режимы оружия, используя &lt;IMG&gt;CYCLEWEAPON&lt;&gt;.
                                { "Russian", "Координаты [ Дозорного ] привели к &lt;TECHNOLOGY&gt;заводу&lt;&gt;&#xA;Укрепленные двери можно &lt;FUEL&gt;уничтожить&lt;&gt; (&lt;IMG&gt;ATTACK&lt;&gt;)&#xA;Переключайте режимы оружия, используя &lt;IMG&gt;CYCLEWEAPON&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS3_MSG4B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Координаты [ Дозорного ] привели к &lt;TECHNOLOGY&gt;заводу&lt;&gt;.&#xA;Найдите &lt;STELLAR&gt;терминал завода&lt;&gt;, чтобы получить сведения о постройке.
                                -- [ The Sentry ]'s coordinates led to a &lt;TECHNOLOGY&gt;manufacturing facility&lt;&gt;&#xA;Search the &lt;STELLAR&gt;factory terminal&lt;&gt; to investigate
                                { "Russian", "Координаты [ Дозорного ] привели к &lt;TECHNOLOGY&gt;заводу&lt;&gt;&#xA;Найдите и изучите &lt;STELLAR&gt;терминал завода&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS3_MSG5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Схема &lt;TECHNOLOGY&gt;ног каркасного стража&lt;&gt;, полученная в &lt;SPECIAL&gt;стеклянном мире&lt;&gt;.&#xA;Установите украденную технологию стражей в ваш &lt;TECHNOLOGY&gt;вездеход «Минотавр»&lt;&gt;.&#xA;Вернитесь на поверхность планеты, чтобы призвать «Минотавр».
                                -- &lt;TECHNOLOGY&gt;Sentinel Hardframe Legs&lt;&gt; schematic obtained from the &lt;SPECIAL&gt;world of glass&lt;&gt;&#xA;Install stolen sentinel technology in your &lt;TECHNOLOGY&gt;Minotaur Exocraft&lt;&gt;&#xA;Return to a planetary surface to summon the Minotaur
                                { "Russian", "Чертеж &lt;TECHNOLOGY&gt;ног каркасного стража&lt;&gt; получен в &lt;SPECIAL&gt;стеклянном мире&lt;&gt;&#xA;Установите украденную технологию стражей в &lt;TECHNOLOGY&gt;Минотавр&lt;&gt;&#xA;Вернитесь на поверхность планеты, чтобы вызвать Минотавра" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS3_MSG5A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Схема &lt;TECHNOLOGY&gt;ног каркасного стража&lt;&gt;, полученная в &lt;SPECIAL&gt;стеклянном мире&lt;&gt;.&#xA;Установите украденную технологию стражей в ваш &lt;TECHNOLOGY&gt;вездеход «Минотавр»&lt;&gt;.&#xA;Разместите &lt;STELLAR&gt;геостанцию «Минотавра»&lt;&gt; через &lt;TECHNOLOGY&gt;меню созидания&lt;&gt; (&lt;IMG&gt;BUILD_MENU&lt;&gt;).
                                { "Russian", "Чертеж &lt;TECHNOLOGY&gt;ног каркасного стража&lt;&gt; получен в &lt;SPECIAL&gt;стеклянном мире&lt;&gt;&#xA;Установите украденную технологию стражей в &lt;TECHNOLOGY&gt;Минотавр&lt;&gt;&#xA;Разместите &lt;STELLAR&gt;геостанцию Минотавра&lt;&gt;&#xA;из &lt;TECHNOLOGY&gt;меню строительства&lt;&gt; (&lt;IMG&gt;BUILD_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS3_MSG5B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Схема &lt;TECHNOLOGY&gt;ног каркасного стража&lt;&gt;, полученная в &lt;SPECIAL&gt;стеклянном мире&lt;&gt;.&#xA;Установите украденную технологию стражей в ваш &lt;TECHNOLOGY&gt;вездеход «Минотавр»&lt;&gt;.&#xA;Разместите &lt;STELLAR&gt;геостанцию «Минотавра»&lt;&gt; или &lt;STELLAR&gt;станцию вызова вездехода&lt;&gt; через &lt;TECHNOLOGY&gt;меню созидания&lt;&gt; (&lt;IMG&gt;BUILD_MENU&lt;&gt;).
                                { "Russian", "Чертеж &lt;TECHNOLOGY&gt;ног каркасного стража&lt;&gt; получен в &lt;SPECIAL&gt;стеклянном мире&lt;&gt;&#xA;Установите украденную технологию стражей в &lt;TECHNOLOGY&gt;Минотавр&lt;&gt;&#xA;Разместите &lt;STELLAR&gt;геостанцию Минотавра&lt;&gt; или &lt;STELLAR&gt;станцию вызова вездехода&lt;&gt;&#xA;из &lt;TECHNOLOGY&gt;меню строительства&lt;&gt; (&lt;IMG&gt;BUILD_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS3_MSG5C" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Схема &lt;TECHNOLOGY&gt;ног каркасного стража&lt;&gt;, полученная в &lt;SPECIAL&gt;стеклянном мире&lt;&gt;.&#xA;Установите украденную технологию стражей в ваш &lt;TECHNOLOGY&gt;вездеход «Минотавр»&lt;&gt;.&#xA;Призовите «Минотавр» через &lt;TECHNOLOGY&gt;быстрое меню&lt;&gt; (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                { "Russian", "Чертеж &lt;TECHNOLOGY&gt;ног каркасного стража&lt;&gt; получен в &lt;SPECIAL&gt;стеклянном мире&lt;&gt;&#xA;Установите украденную технологию стражей в &lt;TECHNOLOGY&gt;Минотавр&lt;&gt;&#xA;Вызовите Минотавра из &lt;TECHNOLOGY&gt;быстрого меню&lt;&gt; (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS3_MSG5D" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Схема &lt;TECHNOLOGY&gt;ног каркасного стража&lt;&gt;, полученная в &lt;SPECIAL&gt;стеклянном мире&lt;&gt;.&#xA;Установите украденную технологию стражей в ваш &lt;TECHNOLOGY&gt;вездеход «Минотавр»&lt;&gt;.&#xA;Выберите пустую ячейку в &lt;STELLAR&gt;инвентаре&lt;&gt; и начните установку с помощью &lt;IMG&gt;TECHMENU&lt;&gt;.
                                { "Russian", "Чертеж &lt;TECHNOLOGY&gt;ног каркасного стража&lt;&gt; получен в &lt;SPECIAL&gt;стеклянном мире&lt;&gt;&#xA;Установите украденную технологию стражей в &lt;TECHNOLOGY&gt;Минотавр&lt;&gt;&#xA;Выберите пустую ячейку в &lt;STELLAR&gt;инвентаре&lt;&gt;&#xA;и начните установку с помощью &lt;IMG&gt;TECHMENU&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS3_MSG5E" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Завершите установку &lt;TECHNOLOGY&gt;ног каркасного стража&lt;&gt;.&#xA;Откройте инвентарь «Минотавра» с помощью &lt;IMG&gt;INVENTORY&lt;&gt;.&#xA;Продолжите установку с помощью &lt;IMG&gt;REPAIR&lt;&gt;.&#xA;Чтобы закрепить необходимые компоненты, используйте &lt;IMG&gt;PIN&lt;&gt;.
                                { "Russian", "Завершите установку &lt;TECHNOLOGY&gt;ног каркасного стража&lt;&gt;&#xA;Откройте инвентарь Минотавра, нажав &lt;IMG&gt;INVENTORY&lt;&gt;&#xA;Продолжите установку с помощью &lt;IMG&gt;REPAIR&lt;&gt;&#xA;Закрепите необходимые компоненты с помощью &lt;IMG&gt;PIN&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS3_MSG5_ALT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Схема &lt;TECHNOLOGY&gt;левой руки каркасного стража&lt;&gt;, полученная в &lt;SPECIAL&gt;стеклянном мире&lt;&gt;.&#xA;Установите украденную технологию стражей в ваш &lt;TECHNOLOGY&gt;вездеход «Минотавр»&lt;&gt;.&#xA;Вернитесь на поверхность планеты, чтобы призвать «Минотавр».
                                { "Russian", "Чертеж &lt;TECHNOLOGY&gt;левой руки каркасного стража&lt;&gt; получен в &lt;SPECIAL&gt;стеклянном мире&lt;&gt;&#xA;Установите украденную технологию стражей в &lt;TECHNOLOGY&gt;Минотавр&lt;&gt;&#xA;Вернитесь на поверхность планеты, чтобы вызвать Минотавра" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS3_MSG5A_ALT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Схема &lt;TECHNOLOGY&gt;левой руки каркасного стража&lt;&gt;, полученная в &lt;SPECIAL&gt;стеклянном мире&lt;&gt;.&#xA;Установите украденную технологию стражей в ваш &lt;TECHNOLOGY&gt;вездеход «Минотавр»&lt;&gt;.&#xA;Разместите &lt;STELLAR&gt;геостанцию «Минотавра»&lt;&gt; через &lt;TECHNOLOGY&gt;меню созидания&lt;&gt; (&lt;IMG&gt;BUILD_MENU&lt;&gt;).
                                { "Russian", "Чертеж &lt;TECHNOLOGY&gt;левой руки каркасного стража&lt;&gt; получен в &lt;SPECIAL&gt;стеклянном мире&lt;&gt;&#xA;Установите украденную технологию стражей в &lt;TECHNOLOGY&gt;Минотавр&lt;&gt;&#xA;Разместите &lt;STELLAR&gt;геостанцию Минотавра&lt;&gt; из &lt;TECHNOLOGY&gt;меню строительства&lt;&gt; (&lt;IMG&gt;BUILD_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS3_MSG5B_ALT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Схема &lt;TECHNOLOGY&gt;левой руки каркасного стража&lt;&gt;, полученная в &lt;SPECIAL&gt;стеклянном мире&lt;&gt;.&#xA;Установите украденную технологию стражей в ваш &lt;TECHNOLOGY&gt;вездеход «Минотавр»&lt;&gt;.&#xA;Разместите &lt;STELLAR&gt;геостанцию «Минотавра»&lt;&gt; или &lt;STELLAR&gt;станцию вызова вездехода&lt;&gt; через &lt;TECHNOLOGY&gt;меню созидания&lt;&gt; (&lt;IMG&gt;BUILD_MENU&lt;&gt;).
                                { "Russian", "Чертеж &lt;TECHNOLOGY&gt;левой руки каркасного стража&lt;&gt; получен в &lt;SPECIAL&gt;стеклянном мире&lt;&gt;&#xA;Установите украденную технологию стражей в &lt;TECHNOLOGY&gt;Минотавр&lt;&gt;&#xA;Разместите &lt;STELLAR&gt;геостанцию Минотавра&lt;&gt; или &lt;STELLAR&gt;станцию вызова вездехода&lt;&gt;&#xA;из &lt;TECHNOLOGY&gt;меню строительства&lt;&gt; (&lt;IMG&gt;BUILD_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS3_MSG5C_ALT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Схема &lt;TECHNOLOGY&gt;левой руки каркасного стража&lt;&gt;, полученная в &lt;SPECIAL&gt;стеклянном мире&lt;&gt;.&#xA;Установите украденную технологию стражей в ваш &lt;TECHNOLOGY&gt;вездеход «Минотавр»&lt;&gt;.&#xA;Призовите «Минотавр» через &lt;TECHNOLOGY&gt;быстрое меню&lt;&gt; (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                { "Russian", "Чертеж &lt;TECHNOLOGY&gt;левой руки каркасного стража&lt;&gt; получен в &lt;SPECIAL&gt;стеклянном мире&lt;&gt;&#xA;Установите украденную технологию стражей в &lt;TECHNOLOGY&gt;Минотавр&lt;&gt;&#xA;Вызовите Минотавра из &lt;TECHNOLOGY&gt;быстрого меню&lt;&gt; (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS3_MSG5D_ALT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Схема &lt;TECHNOLOGY&gt;левой руки каркасного стража&lt;&gt;, полученная в &lt;SPECIAL&gt;стеклянном мире&lt;&gt;.&#xA;Установите украденную технологию стражей в ваш &lt;TECHNOLOGY&gt;вездеход «Минотавр»&lt;&gt;.&#xA;Выберите пустую ячейку в &lt;STELLAR&gt;инвентаре&lt;&gt; и начните установку с помощью &lt;IMG&gt;TECHMENU&lt;&gt;.
                                { "Russian", "Чертеж &lt;TECHNOLOGY&gt;левой руки каркасного стража&lt;&gt; получен в &lt;SPECIAL&gt;стеклянном мире&lt;&gt;&#xA;Установите украденную технологию стражей в &lt;TECHNOLOGY&gt;Минотавр&lt;&gt;&#xA;Выберите пустую ячейку в &lt;STELLAR&gt;инвентаре&lt;&gt;&#xA;и начните установку с помощью &lt;IMG&gt;TECHMENU&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS3_MSG5E_ALT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Завершите установку &lt;TECHNOLOGY&gt;левой руки каркасного стража&lt;&gt;.&#xA;Откройте инвентарь «Минотавра» с помощью &lt;IMG&gt;INVENTORY&lt;&gt;.&#xA;Продолжите установку с помощью &lt;IMG&gt;REPAIR&lt;&gt;.&#xA;Чтобы закрепить необходимые компоненты, используйте &lt;IMG&gt;PIN&lt;&gt;.
                                { "Russian", "Завершите установку &lt;TECHNOLOGY&gt;левой руки каркасного стража&lt;&gt;&#xA;Откройте инвентарь Минотавра, нажав &lt;IMG&gt;INVENTORY&lt;&gt;&#xA;Продолжите установку с помощью &lt;IMG&gt;REPAIR&lt;&gt;&#xA;Закрепите необходимые компоненты с помощью &lt;IMG&gt;PIN&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region UI_SENT_MISS4_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS4_MSG1A_NX" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- [ &lt;TECHNOLOGY&gt;Дозорный&lt;&gt; ] передает голосовой сигнал.&#xA;Осмотрите дрон (&lt;IMG&gt;INTERACT&lt;&gt;), чтобы поговорить с ним.
                                -- [ &lt;TECHNOLOGY&gt;The Sentry&lt;&gt; ] is broadcasting a vocalisation signal&#xA;Inspect your drone with &lt;IMG&gt;INTERACT&lt;&gt; to communicate
                                { "Russian", "[ &lt;TECHNOLOGY&gt;Дозорный&lt;&gt; ] передает голосовой сигнал&#xA;Поговорите с своим дроном (&lt;IMG&gt;INTERACT&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS4_MSG1B_A_NX" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- [ Дозорный ] желает помочь с улучшением вездехода «Минотавр».&#xA;Проверьте полученные &lt;STELLAR&gt;новые координаты&lt;&gt;.
                                -- [ The Sentry ] wishes to assist in upgrading the Minotaur Exocraft&#xA;Investigate the &lt;STELLAR&gt;new coordinates&lt;&gt; supplied
                                { "Russian", "[ Дозорный ] желает помочь с улучшением Минотавра&#xA;Изучите &lt;STELLAR&gt;новые координаты&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS4_MSG1B_B_NX" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Координаты [ Дозорного ] привели к &lt;TECHNOLOGY&gt;заброшенной постройке&lt;&gt;.&#xA;Включите &lt;STELLAR&gt;терминал постройки&lt;&gt;.
                                -- [ The Sentry ]'s coordinates led to an &lt;TECHNOLOGY&gt;abandoned facility&lt;&gt;&#xA;Investigate the &lt;STELLAR&gt;facility terminal&lt;&gt;
                                { "Russian", "Координаты [ Дозорного ] привели к &lt;TECHNOLOGY&gt;заброшенному зданию&lt;&gt;&#xA;Изучите &lt;STELLAR&gt;терминал в здании&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS4_MSG2_NX" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Схема &lt;SPECIAL&gt;левой руки каркасного стража&lt;&gt;, найденная в &lt;SPECIAL&gt;нерабочем комплексе.&lt;&gt;&#xA;Установите украденную технологию стражей в ваш &lt;TECHNOLOGY&gt;вездеход «Минотавр»&lt;&gt;.&#xA;Вернитесь на поверхность планеты, чтобы призвать «Минотавр».
                                -- &lt;SPECIAL&gt;Sentinel Hardframe Left Arm&lt;&gt; schematic recovered from &lt;SPECIAL&gt;corrupted facility&lt;&gt;&#xA;Install stolen sentinel technology in your &lt;TECHNOLOGY&gt;Minotaur Exocraft&lt;&gt;&#xA;Return to a planetary surface to summon the Minotaur
                                { "Russian", "Чертеж &lt;SPECIAL&gt;левой руки каркасного стража&lt;&gt; найден в &lt;SPECIAL&gt;нерабочем комплексе&lt;&gt;&#xA;Установите украденную технологию стражей в &lt;TECHNOLOGY&gt;Минотавр&lt;&gt;&#xA;Вернитесь на поверхность планеты, чтобы вызвать Минотавра" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS4_MSG2A_NX" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Схема &lt;SPECIAL&gt;левой руки каркасного стража&lt;&gt;, найденная в &lt;SPECIAL&gt;нерабочем комплексе.&lt;&gt;&#xA;Установите украденную технологию стражей в ваш &lt;TECHNOLOGY&gt;вездеход «Минотавр»&lt;&gt;.&#xA;Разместите &lt;STELLAR&gt;геостанцию «Минотавра» или станцию вызова вездехода&lt;&gt; через &lt;TECHNOLOGY&gt;меню созидания&lt;&gt; (&lt;IMG&gt;BUILD_MENU&lt;&gt;).
                                -- &lt;SPECIAL&gt;Sentinel Hardframe Left Arm&lt;&gt; schematic recovered from &lt;SPECIAL&gt;corrupted facility&lt;&gt;&#xA;Install stolen sentinel technology in your &lt;TECHNOLOGY&gt;Minotaur Exocraft&lt;&gt;&#xA;Deploy a &lt;STELLAR&gt;Minotaur Geobay&lt;&gt; from the &lt;TECHNOLOGY&gt;Build Menu&lt;&gt; (&lt;IMG&gt;BUILD_MENU&lt;&gt;)
                                { "Russian", "Чертеж &lt;SPECIAL&gt;левой руки каркасного стража&lt;&gt; найден в &lt;SPECIAL&gt;нерабочем комплексе&lt;&gt;&#xA;Установите украденную технологию стражей в &lt;TECHNOLOGY&gt;Минотавр&lt;&gt;&#xA;Разместите &lt;STELLAR&gt;геостанцию Минотавра&lt;&gt; из &lt;TECHNOLOGY&gt;меню строительства&lt;&gt; (&lt;IMG&gt;BUILD_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS4_MSG2B_NX" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Схема &lt;SPECIAL&gt;левой руки каркасного стража&lt;&gt;, найденная в &lt;SPECIAL&gt;нерабочем комплексе.&lt;&gt;&#xA;Установите украденную технологию стражей в ваш &lt;TECHNOLOGY&gt;вездеход «Минотавр»&lt;&gt;.&#xA;Разместите &lt;STELLAR&gt;геостанцию «Минотавра»&lt;&gt; или &lt;STELLAR&gt;станцию вызова вездехода&lt;&gt; через &lt;TECHNOLOGY&gt;меню созидания&lt;&gt; (&lt;IMG&gt;BUILD_MENU&lt;&gt;).
                                -- &lt;SPECIAL&gt;Sentinel Hardframe Left Arm&lt;&gt; schematic recovered from &lt;SPECIAL&gt;corrupted facility&lt;&gt;&#xA;Install stolen sentinel technology in your &lt;TECHNOLOGY&gt;Minotaur Exocraft&lt;&gt;&#xA;Deploy a &lt;STELLAR&gt;Minotaur Geobay&lt;&gt; or &lt;STELLAR&gt;Exocraft Summoning Station&lt;&gt; from the &lt;TECHNOLOGY&gt;Build Menu&lt;&gt; (&lt;IMG&gt;BUILD_MENU&lt;&gt;)
                                { "Russian", "Чертеж &lt;SPECIAL&gt;левой руки каркасного стража&lt;&gt; найден в &lt;SPECIAL&gt;нерабочем комплексе&lt;&gt;&#xA;Установите украденную технологию стражей в &lt;TECHNOLOGY&gt;Минотавр&lt;&gt;&#xA;Разместите &lt;STELLAR&gt;геостанцию Минотавра&lt;&gt; или &lt;STELLAR&gt;станцию вызова вездехода&lt;&gt;&#xA;из &lt;TECHNOLOGY&gt;меню строительства&lt;&gt; (&lt;IMG&gt;BUILD_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS4_MSG2C_NX" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Схема &lt;SPECIAL&gt;левой руки каркасного стража&lt;&gt;, найденная в &lt;SPECIAL&gt;нерабочем комплексе.&lt;&gt;&#xA;Установите украденную технологию стражей в ваш &lt;TECHNOLOGY&gt;вездеход «Минотавр»&lt;&gt;.&#xA;Призовите «Минотавр» через &lt;TECHNOLOGY&gt;быстрое меню&lt;&gt; (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                { "Russian", "Чертеж &lt;SPECIAL&gt;левой руки каркасного стража&lt;&gt; найден в &lt;SPECIAL&gt;нерабочем комплексе&lt;&gt;&#xA;Установите украденную технологию стражей в &lt;TECHNOLOGY&gt;Минотавр&lt;&gt;&#xA;Вызовите Минотавра из &lt;TECHNOLOGY&gt;быстрого меню&lt;&gt; (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS4_MSG2D_NX" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Схема &lt;SPECIAL&gt;левой руки каркасного стража&lt;&gt;, найденная в &lt;SPECIAL&gt;нерабочем комплексе.&lt;&gt;&#xA;Установите украденную технологию стражей в ваш &lt;TECHNOLOGY&gt;вездеход «Минотавр»&lt;&gt;.&#xA;Выберите пустую ячейку в &lt;STELLAR&gt;инвентаре&lt;&gt; и начните установку с помощью &lt;IMG&gt;TECHMENU&lt;&gt;.
                                { "Russian", "Чертеж &lt;SPECIAL&gt;левой руки каркасного стража&lt;&gt; найден в &lt;SPECIAL&gt;нерабочем комплексе&lt;&gt;&#xA;Установите украденную технологию стражей в &lt;TECHNOLOGY&gt;Минотавр&lt;&gt;&#xA;Выберите пустую ячейку в &lt;STELLAR&gt;инвентаре&lt;&gt;&#xA;и начните установку с помощью &lt;IMG&gt;TECHMENU&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS4_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Ваши поселенцы вернулись из &lt;SPECIAL&gt;экспедиции на станцию стражей&lt;&gt;.&#xA;Обратитесь к группе с помощью &lt;TECHNOLOGY&gt;терминала управления&lt;&gt;.
                                -- Your settlers have returned from their &lt;SPECIAL&gt;Sentinel Facility mission&lt;&gt;&#xA;Address the away team at the &lt;TECHNOLOGY&gt;Administration Terminal&lt;&gt;
                                { "Russian", "Ваши поселенцы вернулись из &lt;SPECIAL&gt;экспедиции к станции стражей&lt;&gt;&#xA;Обратитесь к группе с помощью &lt;TECHNOLOGY&gt;терминала управления&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS4_MSG1_BLOCKED" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Ваши поселенцы вернулись из &lt;SPECIAL&gt;похода на станцию стражей&lt;&gt;.&#xA;Разберитесь с текущими делами в поселении, чтобы обратиться к группе высадки.&#xA;Выберите пункт «Поселенцы» в журнале заданий (&lt;IMG&gt;OPTIONS&lt;&gt;).
                                { "Russian", "Ваши поселенцы вернулись из &lt;SPECIAL&gt;экспедиции к станции стражей&lt;&gt;&#xA;Разберитесь с текущими делами в поселении, чтобы поговорить с ними&#xA;Выберите задание “Поселенцы” в журнале (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS4_MSG1_NO_OFFICE_A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Ваши поселенцы вернулись из &lt;SPECIAL&gt;похода на станцию стражей&lt;&gt;.&#xA;Постройте &lt;TECHNOLOGY&gt;офис куратора&lt;&gt;, чтобы принять отчет группы высадки.&#xA;Выберите пункт «Поселенцы» в журнале заданий (&lt;IMG&gt;OPTIONS&lt;&gt;).
                                { "Russian", "Ваши поселенцы вернулись из &lt;SPECIAL&gt;экспедиции к станции стражей&lt;&gt;&#xA;Постройте &lt;TECHNOLOGY&gt;офис куратора&lt;&gt;, чтобы принять доклад группы&#xA;Выберите задание “Поселенцы” в журнале (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS4_MSG1_NO_OFFICE_B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Ваши поселенцы вернулись из &lt;SPECIAL&gt;похода на станцию стражей&lt;&gt;.&#xA;Вернитесь в поселение, чтобы принять отчет группы высадки.
                                { "Russian", "Ваши поселенцы вернулись из &lt;SPECIAL&gt;экспедиции к станции стражей&lt;&gt;&#xA;Вернитесь в поселение, чтобы принять доклад группы" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS4_MSG1_NO_OFFICE_C" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Ваши поселенцы вернулись из &lt;SPECIAL&gt;похода на станцию стражей&lt;&gt;.&#xA;Воспользуйтесь &lt;TECHNOLOGY&gt;телепортом космической станции&lt;&gt;, чтобы быстро вернуться в поселение.
                                { "Russian", "Ваши поселенцы вернулись из &lt;SPECIAL&gt;экспедиции к станции стражей&lt;&gt;&#xA;Используйте &lt;TECHNOLOGY&gt;телепорт на космической станции&lt;&gt;&#xA;для быстрого возвращения в поселение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS4_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Схема &lt;TECHNOLOGY&gt;левой руки каркасного стража&lt;&gt;, найденная группой высадки поселенцев.&#xA;Установите украденную технологию стражей в ваш &lt;TECHNOLOGY&gt;вездеход «Минотавр»&lt;&gt;.&#xA;Вернитесь на поверхность планеты, чтобы призвать «Минотавр».
                                -- &lt;TECHNOLOGY&gt;Sentinel Hardframe Left Arm&lt;&gt; schematic recovered by settlement away team&#xA;Install stolen sentinel technology in your &lt;TECHNOLOGY&gt;Minotaur Exocraft&lt;&gt;&#xA;Return to a planetary surface to summon the Minotaur
                                { "Russian", "Чертеж &lt;TECHNOLOGY&gt;левой руки каркасного стража&lt;&gt; найден группой поселенцев&#xA;Установите украденную технологию стражей в &lt;TECHNOLOGY&gt;Минотавр&lt;&gt;&#xA;Вернитесь на поверхность планеты, чтобы вызвать Минотавра" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS4_MSG2A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Схема &lt;TECHNOLOGY&gt;левой руки каркасного стража&lt;&gt;, найденная группой высадки поселенцев.&#xA;Установите украденную технологию стражей в ваш &lt;TECHNOLOGY&gt;вездеход «Минотавр»&lt;&gt;.&#xA;Разместите &lt;STELLAR&gt;геостанцию «Минотавра»&lt;&gt; через &lt;TECHNOLOGY&gt;меню созидания&lt;&gt; (&lt;IMG&gt;BUILD_MENU&lt;&gt;).
                                { "Russian", "Чертеж &lt;TECHNOLOGY&gt;левой руки каркасного стража&lt;&gt; найден группой поселенцев&#xA;Установите украденную технологию стражей в &lt;TECHNOLOGY&gt;Минотавр&lt;&gt;&#xA;Разместите &lt;STELLAR&gt;геостанцию Минотавра&lt;&gt; из &lt;TECHNOLOGY&gt;меню строительства&lt;&gt; (&lt;IMG&gt;BUILD_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS4_MSG2B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Схема &lt;TECHNOLOGY&gt;левой руки каркасного стража&lt;&gt;, найденная группой высадки поселенцев.&#xA;Установите украденную технологию стражей в ваш &lt;TECHNOLOGY&gt;вездеход «Минотавр»&lt;&gt;.&#xA;Разместите &lt;STELLAR&gt;геостанцию «Минотавра»&lt;&gt; или &lt;STELLAR&gt;станцию вызова вездехода&lt;&gt; через &lt;TECHNOLOGY&gt;меню созидания&lt;&gt; (&lt;IMG&gt;BUILD_MENU&lt;&gt;).
                                { "Russian", "Чертеж &lt;TECHNOLOGY&gt;левой руки каркасного стража&lt;&gt; найден группой поселенцев&#xA;Установите украденную технологию стражей в &lt;TECHNOLOGY&gt;Минотавр&lt;&gt;&#xA;Разместите &lt;STELLAR&gt;геостанцию Минотавра&lt;&gt; или &lt;STELLAR&gt;станцию вызова вездехода&lt;&gt;&#xA;из &lt;TECHNOLOGY&gt;меню строительства&lt;&gt; (&lt;IMG&gt;BUILD_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS4_MSG2C" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Схема &lt;TECHNOLOGY&gt;левой руки каркасного стража&lt;&gt;, найденная группой высадки поселенцев.&#xA;Установите украденную технологию стражей в ваш &lt;TECHNOLOGY&gt;вездеход «Минотавр»&lt;&gt;.&#xA;Призовите «Минотавр» через &lt;TECHNOLOGY&gt;быстрое меню&lt;&gt; (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                { "Russian", "Чертеж &lt;TECHNOLOGY&gt;левой руки каркасного стража&lt;&gt; найден группой поселенцев&#xA;Установите украденную технологию стражей в &lt;TECHNOLOGY&gt;Минотавр&lt;&gt;&#xA;Вызовите Минотавра из &lt;TECHNOLOGY&gt;быстрого меню&lt;&gt; (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS4_MSG2D" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Схема &lt;TECHNOLOGY&gt;левой руки каркасного стража&lt;&gt;, найденная группой высадки поселенцев.&#xA;Установите украденную технологию стражей в ваш &lt;TECHNOLOGY&gt;вездеход «Минотавр»&lt;&gt;.&#xA;Выберите пустую ячейку в &lt;STELLAR&gt;инвентаре&lt;&gt; и начните установку с помощью &lt;IMG&gt;TECHMENU&lt;&gt;.
                                { "Russian", "Чертеж &lt;TECHNOLOGY&gt;левой руки каркасного стража&lt;&gt; найден группой поселенцев&#xA;Установите украденную технологию стражей в &lt;TECHNOLOGY&gt;Минотавр&lt;&gt;&#xA;Выберите пустую ячейку в &lt;STELLAR&gt;инвентаре&lt;&gt;&#xA;и начните установку с помощью &lt;IMG&gt;TECHMENU&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS4_MSG2E" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Завершите установку &lt;TECHNOLOGY&gt;левой руки каркасного стража&lt;&gt;.&#xA;Откройте инвентарь «Минотавра» с помощью &lt;IMG&gt;INVENTORY&lt;&gt;.&#xA;Продолжите установку с помощью &lt;IMG&gt;REPAIR&lt;&gt;.&#xA;Чтобы закрепить необходимые компоненты, используйте &lt;IMG&gt;PIN&lt;&gt;.
                                { "Russian", "Завершите установку &lt;TECHNOLOGY&gt;левой руки каркасного стража&lt;&gt;&#xA;Откройте инвентарь Минотавра,нажав &lt;IMG&gt;INVENTORY&lt;&gt;&#xA;Продолжите установку с помощью &lt;IMG&gt;REPAIR&lt;&gt;&#xA;Закрепите необходимые компоненты с помощью &lt;IMG&gt;PIN&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS4_MSG2_ALT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Схема &lt;TECHNOLOGY&gt;ног каркасного стража&lt;&gt;, найденная группой высадки поселенцев.&#xA;Установите украденную технологию стражей в ваш &lt;TECHNOLOGY&gt;вездеход «Минотавр»&lt;&gt;.&#xA;Вернитесь на поверхность планеты, чтобы призвать «Минотавр».
                                { "Russian", "Чертеж &lt;TECHNOLOGY&gt;ног каркасного стража&lt;&gt; найден группой поселенцев&#xA;Установите украденную технологию стражей в &lt;TECHNOLOGY&gt;Минотавр&lt;&gt;&#xA;Вернитесь на поверхность планеты, чтобы вызвать Минотавра" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS4_MSG2A_ALT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Схема &lt;TECHNOLOGY&gt;ног каркасного стража&lt;&gt;, найденная группой высадки поселенцев.&#xA;Установите украденную технологию стражей в ваш &lt;TECHNOLOGY&gt;вездеход «Минотавр»&lt;&gt;.&#xA;Разместите &lt;STELLAR&gt;геостанцию «Минотавра»&lt;&gt; через &lt;TECHNOLOGY&gt;меню созидания&lt;&gt; (&lt;IMG&gt;BUILD_MENU&lt;&gt;).
                                { "Russian", "Чертеж &lt;TECHNOLOGY&gt;ног каркасного стража&lt;&gt; найден группой поселенцев&#xA;Установите украденную технологию стражей в &lt;TECHNOLOGY&gt;Минотавр&lt;&gt;&#xA;Разместите &lt;STELLAR&gt;геостанцию Минотавра&lt;&gt; из &lt;TECHNOLOGY&gt;меню строительства&lt;&gt; (&lt;IMG&gt;BUILD_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS4_MSG2B_ALT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Схема &lt;TECHNOLOGY&gt;ног каркасного стража&lt;&gt;, найденная группой высадки поселенцев.&#xA;Установите украденную технологию стражей в ваш &lt;TECHNOLOGY&gt;вездеход «Минотавр»&lt;&gt;.&#xA;Разместите &lt;STELLAR&gt;геостанцию «Минотавра»&lt;&gt; или &lt;STELLAR&gt;станцию вызова вездехода&lt;&gt; через &lt;TECHNOLOGY&gt;меню созидания&lt;&gt; (&lt;IMG&gt;BUILD_MENU&lt;&gt;).
                                { "Russian", "Чертеж &lt;TECHNOLOGY&gt;ног каркасного стража&lt;&gt; найден группой поселенцев&#xA;Установите украденную технологию стражей в &lt;TECHNOLOGY&gt;Минотавр&lt;&gt;&#xA;Разместите &lt;STELLAR&gt;геостанцию Минотавра&lt;&gt; или &lt;STELLAR&gt;станцию вызова вездехода&lt;&gt;&#xA;из &lt;TECHNOLOGY&gt;меню строительства&lt;&gt; (&lt;IMG&gt;BUILD_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS4_MSG2C_ALT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Схема &lt;TECHNOLOGY&gt;ног каркасного стража&lt;&gt;, найденная группой высадки поселенцев.&#xA;Установите украденную технологию стражей в ваш &lt;TECHNOLOGY&gt;вездеход «Минотавр»&lt;&gt;.&#xA;Призовите «Минотавр» через &lt;TECHNOLOGY&gt;быстрое меню&lt;&gt; (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                { "Russian", "Чертеж &lt;TECHNOLOGY&gt;ног каркасного стража&lt;&gt; найден группой поселенцев&#xA;Установите украденную технологию стражей в &lt;TECHNOLOGY&gt;Минотавр&lt;&gt;&#xA;Вызовите Минотавра из &lt;TECHNOLOGY&gt;быстрого меню&lt;&gt; (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS4_MSG2D_ALT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Схема &lt;TECHNOLOGY&gt;ног каркасного стража&lt;&gt;, найденная группой высадки поселенцев.&#xA;Установите украденную технологию стражей в ваш &lt;TECHNOLOGY&gt;вездеход «Минотавр»&lt;&gt;.&#xA;Выберите пустую ячейку в &lt;STELLAR&gt;инвентаре&lt;&gt; и начните установку с помощью &lt;IMG&gt;TECHMENU&lt;&gt;.
                                { "Russian", "Чертеж &lt;TECHNOLOGY&gt;ног каркасного стража&lt;&gt; найден группой поселенцев&#xA;Установите украденную технологию стражей в &lt;TECHNOLOGY&gt;Минотавр&lt;&gt;&#xA;Выберите пустую ячейку в &lt;STELLAR&gt;инвентаре&lt;&gt;&#xA;и начните установку с помощью &lt;IMG&gt;TECHMENU&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS4_MSG2E_ALT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Завершите установку &lt;TECHNOLOGY&gt;ног каркасного стража&lt;&gt;.&#xA;Откройте инвентарь «Минотавра» с помощью &lt;IMG&gt;INVENTORY&lt;&gt;.&#xA;Продолжите установку с помощью &lt;IMG&gt;REPAIR&lt;&gt;.&#xA;Чтобы закрепить необходимые компоненты, используйте &lt;IMG&gt;PIN&lt;&gt;.
                                { "Russian", "Завершите установку &lt;TECHNOLOGY&gt;ног каркасного стража&lt;&gt;&#xA;Откройте инвентарь Минотавра, нажав &lt;IMG&gt;INVENTORY&lt;&gt;&#xA;Продолжите установку с помощью &lt;IMG&gt;REPAIR&lt;&gt;&#xA;Закрепите необходимые компоненты с помощью &lt;IMG&gt;PIN&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region UI_SENT_MISS5_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS5_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Установите &lt;TECHNOLOGY&gt;парализующий миномет&lt;&gt;, чтобы подготовиться к бою с шагающими стражами.&#xA;Изучите чертежи для мультитула на &lt;SPECIAL&gt;Космической Аномалии&lt;&gt;.&#xA;Поговорите с итерацией Эос.
                                -- Install the &lt;TECHNOLOGY&gt;Paralysis Mortar&lt;&gt; to prepare for Walker combat&#xA;Learn Multi-Tool blueprints aboard the &lt;SPECIAL&gt;Space Anomaly&lt;&gt;&#xA;Speak with Iteration: Eos
                                { "Russian", "Установите &lt;TECHNOLOGY&gt;парализующий миномет&lt;&gt; для битв с шагающими стражами&#xA;Изучите чертежи для мультитула на &lt;SPECIAL&gt;Космической Аномалии&lt;&gt;&#xA;Поговорите с итерацией Эос" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS5_MSG1B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Установите &lt;TECHNOLOGY&gt;парализующий миномет&lt;&gt;, чтобы подготовиться к бою с шагающими стражами.&#xA;Изучите чертежи для мультитула на &lt;SPECIAL&gt;Космической Аномалии&lt;&gt;.&#xA;Находясь в космосе, вызовите &lt;SPECIAL&gt;Аномалию&lt;&gt; через быстрое меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                { "Russian", "Установите &lt;TECHNOLOGY&gt;парализующий миномет&lt;&gt; для битв с шагающими стражами&#xA;Изучите чертежи для мультитула на &lt;SPECIAL&gt;Космической Аномалии&lt;&gt;&#xA;Находясь в космосе, вызовите &lt;SPECIAL&gt;Аномалию&lt;&gt; из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS5_MSG1C" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Установите &lt;TECHNOLOGY&gt;парализующий миномет&lt;&gt;, чтобы подготовиться к бою с шагающими стражами.&#xA;Выберите пустую ячейку мультитула и начните установку с помощью &lt;IMG&gt;TECHMENU&lt;&gt;.
                                { "Russian", "Установите &lt;TECHNOLOGY&gt;парализующий миномет&lt;&gt; для битв с шагающими стражами&#xA;Выберите пустую ячейку мультитула и начните установку с помощью &lt;IMG&gt;TECHMENU&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS5_MSG1D" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Завершите установку &lt;TECHNOLOGY&gt;парализующего миномета&lt;&gt;.&#xA;Откройте инвентарь мультитула с помощью &lt;IMG&gt;INVENTORY&lt;&gt;.&#xA;Продолжите установку с помощью &lt;IMG&gt;REPAIR&lt;&gt;.&#xA;Чтобы закрепить необходимые компоненты, используйте &lt;IMG&gt;PIN&lt;&gt;.
                                { "Russian", "Завершите установку &lt;TECHNOLOGY&gt;парализующего миномета&lt;&gt;&#xA;Откройте инвентарь мультитула, нажав &lt;IMG&gt;INVENTORY&lt;&gt;&#xA;Продолжите установку с помощью &lt;IMG&gt;REPAIR&lt;&gt;&#xA;Закрепите необходимые компоненты с помощью &lt;IMG&gt;PIN&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS5_MSG1E" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Извлеките &lt;SPECIAL&gt;нетронутый мозг&lt;&gt; из шагающего стража.&#xA;[ Дозорный ] обнаружил его местоположение.&#xA;Доберитесь до отмеченных координат.
                                { "Russian", "Извлеките &lt;SPECIAL&gt;нетронутый мозг&lt;&gt; из шагающего стража&#xA;[ Дозорный ] обнаружил его местоположение&#xA;Доберитесь до отмеченных координат" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS5_MSG1D_ALT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Извлеките &lt;SPECIAL&gt;нетронутый мозг&lt;&gt; из шагающего стража.&#xA;Призывайте их, повышая свой &lt;FUEL&gt;уровень розыска&lt;&gt;.
                                -- Retrieve a &lt;SPECIAL&gt;Pristine Brain&lt;&gt; from a Sentinel Walker&#xA;Summon Walkers by increasing your &lt;FUEL&gt;Wanted Level&lt;&gt;
                                { "Russian", "Извлеките &lt;SPECIAL&gt;нетронутый мозг&lt;&gt; из шагающего стража&#xA;Шагающие стражи появляются при высоком &lt;FUEL&gt;уровне розыска&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS5_MSG1F" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Победите &lt;FUEL&gt;шагающего стража&lt;&gt;, чтобы забрать его мозг.
                                { "Russian", "Победите &lt;FUEL&gt;шагающего стража&lt;&gt; и заберите его мозг" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS5_MSG1F_EXTRA" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Победите оставшихся стражей&#xA;Осталось угроз: &lt;FUEL&gt;%CURRENT%&lt;&gt;
                                { "Russian", "Победите оставшихся стражей: &lt;FUEL&gt;%CURRENT%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS5_MSG1G" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Извлеките &lt;SPECIAL&gt;нетронутый мозг&lt;&gt; из побежденного шагающего стража.
                                { "Russian", "Извлеките &lt;SPECIAL&gt;нетронутый мозг&lt;&gt; из побежденного шагающего стража" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS5_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Нетронутый мозг&lt;&gt; необходимо отключить от сети стражей.&#xA;Передайте мозг итерации Тефиды.
                                { "Russian", "&lt;SPECIAL&gt;Нетронутый мозг&lt;&gt; нужно отключить от сети стражей&#xA;Передайте мозг итерации Тефиды" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS5_MSG2B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Нетронутый мозг&lt;&gt; нужно отключить от сети стражей.&#xA;Итерация Тефиды способна выполнить подобную операцию.&#xA;Находясь в космосе, вызовите &lt;SPECIAL&gt;Аномалию&lt;&gt; через быстрое меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                { "Russian", "&lt;SPECIAL&gt;Нетронутый мозг&lt;&gt; нужно отключить от сети стражей&#xA;Итерация Тефида способна выполнить подобную операцию&#xA;Находясь в космосе, вызовите &lt;SPECIAL&gt;Аномалию&lt;&gt; из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS5_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Тефида подготовила &lt;SPECIAL&gt;взломанный мозг&lt;&gt; для отключения.&#xA;Отправьтесь в космос, чтобы показать мозг &lt;FUEL&gt;багровой&lt;&gt; пустоте.&#xA;Поднимитесь в космос, чтобы начать поиск.
                                -- Tethys has prepared the &lt;SPECIAL&gt;Hacked Brain&lt;&gt; for disconnection&#xA;Fly into space to present the brain to the &lt;FUEL&gt;crimson&lt;&gt; void&#xA;Launch into space to begin the search
                                { "Russian", "Тефида подготовила &lt;SPECIAL&gt;взломанный мозг&lt;&gt; для отключения&#xA;Отправьтесь в космос, чтобы показать мозг &lt;FUEL&gt;багровой&lt;&gt; пустоте&#xA;Поднимитесь в космос, чтобы начать поиск" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS5_MSG3_BLOCKED" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Яйцо пустоты&lt;&gt; гудит на странной частоте.&#xA;Мозг шагающего стража не может найти голос основного пользователя.&#xA;Выберите раздел «Рождение звезды» в журнале заданий (&lt;IMG&gt;OPTIONS&lt;&gt;).
                                -- The &lt;SPECIAL&gt;Void Egg&lt;&gt; is humming on a strange frequency&#xA;Walker Brain unable to seek Primary User Voice&#xA;Select 'Starbirth' in the Mission Log (&lt;IMG&gt;OPTIONS&lt;&gt;)
                                { "Russian", "&lt;SPECIAL&gt;Яйцо пустоты&lt;&gt; гудит на странной частоте&#xA;Мозг шагающего стража не может найти голос основного пользователя&#xA;Выберите задание “Рождение звезды” в журнале (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS5_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Сияющий мозг&lt;&gt;, полученный в результате встречи с Атласом в открытом космосе.&#xA;Установите разработанный Тефидой &lt;TECHNOLOGY&gt;корпус каркасного стража&lt;&gt; на &lt;TECHNOLOGY&gt;вездеход «Минотавр»&lt;&gt;.&#xA;Вернитесь на поверхность планеты, чтобы вызвать «Минотавр».
                                -- &lt;SPECIAL&gt;Radiant Brain&lt;&gt; acquired from a deep space Atlas encounter&#xA;Install Tethys' &lt;TECHNOLOGY&gt;Sentinel Hardframe Body&lt;&gt; in your &lt;TECHNOLOGY&gt;Minotaur Exocraft&lt;&gt;&#xA;Return to a planetary surface to summon the Minotaur
                                { "Russian", "&lt;SPECIAL&gt;Сияющий мозг&lt;&gt; получен при встрече с Атласом в глубоком космосе&#xA;Установите разработанный Тефидой &lt;TECHNOLOGY&gt;корпус каркасного стража&lt;&gt; в &lt;TECHNOLOGY&gt;Минотавр&lt;&gt;&#xA;Вернитесь на поверхность планеты, чтобы вызвать Минотавра" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS5_MSG4A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Сияющий мозг&lt;&gt;, полученный при встрече с Атласом в открытом космосе.&#xA;Установите разработанный Тефидой &lt;TECHNOLOGY&gt;корпус каркасного стража&lt;&gt; на &lt;TECHNOLOGY&gt;вездеход «Минотавр»&lt;&gt;.&#xA;Установите &lt;STELLAR&gt;геостанцию «Минотавра»&lt;&gt; через &lt;TECHNOLOGY&gt;меню созидания&lt;&gt; (&lt;IMG&gt;BUILD_MENU&lt;&gt;).
                                { "Russian", "&lt;SPECIAL&gt;Сияющий мозг&lt;&gt; получен при встрече с Атласом в глубоком космосе&#xA;Установите разработанный Тефидой &lt;TECHNOLOGY&gt;корпус каркасного стража&lt;&gt; в &lt;TECHNOLOGY&gt;Минотавр&lt;&gt;&#xA;Разместите &lt;STELLAR&gt;геостанцию Минотавра&lt;&gt; из &lt;TECHNOLOGY&gt;меню строительства&lt;&gt; (&lt;IMG&gt;BUILD_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS5_MSG4B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Сияющий мозг&lt;&gt;, полученный в результате встречи с Атласом в открытом космосе.&#xA;Установите разработанный Тефидой &lt;TECHNOLOGY&gt;корпус каркасного стража&lt;&gt; на &lt;TECHNOLOGY&gt;вездеход «Минотавр»&lt;&gt;.&#xA;Установите &lt;STELLAR&gt;геостанцию «Минотавра»&lt;&gt; или &lt;STELLAR&gt;станцию вызова вездехода&lt;&gt; через &lt;TECHNOLOGY&gt;меню созидания&lt;&gt; (&lt;IMG&gt;BUILD_MENU&lt;&gt;).
                                { "Russian", "&lt;SPECIAL&gt;Сияющий мозг&lt;&gt; получен при встрече с Атласом в глубоком космосе&#xA;Установите разработанный Тефидой &lt;TECHNOLOGY&gt;корпус каркасного стража&lt;&gt; в &lt;TECHNOLOGY&gt;Минотавр&lt;&gt;&#xA;Разместите &lt;STELLAR&gt;геостанцию Минотавра&lt;&gt; или &lt;STELLAR&gt;станцию вызова вездехода&lt;&gt;&#xA;из &lt;TECHNOLOGY&gt;меню строительства&lt;&gt; (&lt;IMG&gt;BUILD_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS5_MSG4C" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Сияющий мозг&lt;&gt;, полученный в результате встречи с Атласом в открытом космосе.&#xA;Установите разработанный Тефидой &lt;TECHNOLOGY&gt;корпус каркасного стража&lt;&gt; на &lt;TECHNOLOGY&gt;вездеход «Минотавр»&lt;&gt;.&#xA;Призовите «Минотавр» через &lt;TECHNOLOGY&gt;быстрое меню&lt;&gt; (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                { "Russian", "&lt;SPECIAL&gt;Сияющий мозг&lt;&gt; получен при встрече с Атласом в глубоком космосе&#xA;Установите разработанный Тефидой &lt;TECHNOLOGY&gt;корпус каркасного стража&lt;&gt; в &lt;TECHNOLOGY&gt;Минотавр&lt;&gt;&#xA;Вызовите Минотавра из &lt;TECHNOLOGY&gt;быстрого меню&lt;&gt; (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS5_MSG4D" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Сияющий мозг&lt;&gt;, полученный в результате встречи с Атласом в открытом космосе.&#xA;Установите разработанный Тефидой &lt;TECHNOLOGY&gt;корпус каркасного стража&lt;&gt; на &lt;TECHNOLOGY&gt;вездеход «Минотавр»&lt;&gt;.&#xA;Выберите пустую ячейку в &lt;STELLAR&gt;инвентаре&lt;&gt; и начните установку с помощью &lt;IMG&gt;TECHMENU&lt;&gt;.
                                { "Russian", "&lt;SPECIAL&gt;Сияющий мозг&lt;&gt; получен при встрече с Атласом в глубоком космосе&#xA;Установите разработанный Тефидой &lt;TECHNOLOGY&gt;корпус каркасного стража&lt;&gt; в &lt;TECHNOLOGY&gt;Минотавр&lt;&gt;&#xA;Выберите пустую ячейку в &lt;STELLAR&gt;инвентаре&lt;&gt;&#xA;и начните установку с помощью &lt;IMG&gt;TECHMENU&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS5_MSG4E" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Завершите установку разработанного Тефидой &lt;TECHNOLOGY&gt;корпуса каркасного стража&lt;&gt;.&#xA;Откройте инвентарь «Минотавра» с помощью &lt;IMG&gt;INVENTORY&lt;&gt;.&#xA;Продолжите установку с помощью &lt;IMG&gt;REPAIR&lt;&gt;.&#xA;Чтобы закрепить необходимые компоненты, используйте &lt;IMG&gt;PIN&lt;&gt;.
                                { "Russian", "Завершите установку разработанного Тефидой &lt;TECHNOLOGY&gt;корпуса каркасного стража&lt;&gt;&#xA;Откройте инвентарь Минотавра, нажав &lt;IMG&gt;INVENTORY&lt;&gt;&#xA;Продолжите установку с помощью &lt;IMG&gt;REPAIR&lt;&gt;&#xA;Закрепите необходимые компоненты с помощью &lt;IMG&gt;PIN&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS5_MSG5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Освободите [ Дозорного ] от &lt;SPECIAL&gt;коллективного разума стражей&lt;&gt;.&#xA;Доберитесь до отмеченных координат.
                                -- Free [ The Sentry ] from the &lt;SPECIAL&gt;Sentinel hivemind&lt;&gt;&#xA;Reach the marked coordinates
                                { "Russian", "Освободите [ Дозорного ] от &lt;SPECIAL&gt;коллективного разума стражей&lt;&gt;&#xA;Доберитесь до отмеченных координат" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS5_MSG5_SUMMON" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Освободите [ Дозорного ] от &lt;SPECIAL&gt;коллективного разума стражей&lt;&gt;.&#xA;Призовите «Минотавр» через &lt;TECHNOLOGY&gt;быстрое меню&lt;&gt; (&lt;IMG&gt;QUICK_MENU&lt;&gt;), чтобы получить &lt;FUEL&gt;огневую поддержку&lt;&gt;.
                                { "Russian", "Освободите [ Дозорного ] от &lt;SPECIAL&gt;коллективного разума стражей&lt;&gt;&#xA;Вызовите Минотавра из &lt;TECHNOLOGY&gt;быстрого меню&lt;&gt; (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS5_MSG5B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Статус терминала столпа: &lt;SPECIAL&gt;ЗАБЛОКИРОВАН&lt;&gt;&#xA;Уничтожено узлов: %CURRENT%/%AMOUNT%&#xA;Призовите «Минотавр» через &lt;TECHNOLOGY&gt;быстрое меню&lt;&gt; (&lt;IMG&gt;QUICK_MENU&lt;&gt;), чтобы получить &lt;FUEL&gt;огневую поддержку&lt;&gt;
                                { "Russian", "Терминал столпа стражей &lt;SPECIAL&gt;заблокирован&lt;&gt;&#xA;Уничтожено узлов: %CURRENT%/%AMOUNT%&#xA;Вызовите Минотавра из &lt;TECHNOLOGY&gt;быстрого меню&lt;&gt; (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS5_MSG5B_ALT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Статус терминала столпа: &lt;SPECIAL&gt;ЗАБЛОКИРОВАН&lt;&gt;&#xA;Уничтожено узлов: %CURRENT%/%AMOUNT%&#xA;Уничтожьте узлы управления столпа (&lt;IMG&gt;ATTACK&lt;&gt;), чтобы получить доступ к терминалу.
                                { "Russian", "Терминал столпа стражей &lt;SPECIAL&gt;заблокирован&lt;&gt;&#xA;Уничтожено узлов: %CURRENT%/%AMOUNT%&#xA;Уничтожьте узлы управления столпа (&lt;IMG&gt;ATTACK&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS5_MSG5C" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Победите охранников-стражей, чтобы получить доступ к терминалу.&#xA;Осталось охранников: %CURRENT%&#xA;Призовите «Минотавр» через &lt;TECHNOLOGY&gt;быстрое меню&lt;&gt; (&lt;IMG&gt;QUICK_MENU&lt;&gt;), чтобы получить &lt;FUEL&gt;огневую поддержку&lt;&gt;.
                                { "Russian", "Победите охранников-стражей: %CURRENT%&#xA;Вызовите Минотавра из &lt;TECHNOLOGY&gt;быстрого меню&lt;&gt; (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS5_MSG5C_ALT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Победите охранников-стражей, чтобы получить доступ к терминалу.&#xA;Осталось охранников: %CURRENT%
                                { "Russian", "Получите доступ к терминалу&#xA;Победите охранников-стражей: %CURRENT%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS5_MSG5D" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Освободите [ Дозорного ] от &lt;SPECIAL&gt;коллективного разума стражей&lt;&gt;.&#xA;Воспользуйтесь терминалом столпа.
                                { "Russian", "Освободите [ Дозорного ] от &lt;SPECIAL&gt;коллективного разума стражей&lt;&gt;&#xA;Воспользуйтесь терминалом столпа" },
                            }
                        },
                        --#endregion

                        --#region UI_SENT_MISS2_.*_TIP
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS2_OBJ1_TIP_NX" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Тефида восстановила и перепрошила найденный &lt;TECHNOLOGY&gt;корпус дрона&lt;&gt;.&#xA;Его можно призывать в пределах атмосферы планет.&#xA;Вернитесь на планету, чтобы провести полевое испытание.
                                { "Russian", "Тефида восстановила и перепрошила найденного &lt;TECHNOLOGY&gt;дрона&lt;&gt;.&#xA;Его можно вызвать в пределах атмосферы планет.&#xA;Вернитесь на планету, чтобы провести полевое испытание." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS2_OBJ1_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Тефида восстановила и перепрошила найденный &lt;TECHNOLOGY&gt;корпус дрона&lt;&gt;.&#xA;Его можно призывать в пределах атмосферы планет.&#xA;Вернитесь в ваше поселение, чтобы провести полевое испытание.&#xA;&lt;STELLAR&gt;Переместитесь&lt;&gt; в свое поселение через любой терминал телепорта.
                                { "Russian", "Тефида восстановила и перепрошила найденного &lt;TECHNOLOGY&gt;дрона&lt;&gt;.&#xA;Его можно вызвать в пределах атмосферы планет.&#xA;Вернитесь в ваше поселение, чтобы провести полевое испытание.&#xA;&lt;STELLAR&gt;Переместитесь&lt;&gt; в свое поселение с помощью любого телепорта." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS2_OBJ2_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Функциональность [ Дозорного ] ограничена.&#xA;В его системе заблокированы координаты места, отмеченного как &lt;STELLAR&gt;«столп стражей»&lt;&gt;.&#xA;Найдите в указанном месте сведения о восстановленном дроне.
                                -- [ The Sentry ] is operating with limited functionality.&#xA;Referencing a &lt;STELLAR&gt;Sentinel Pillar&lt;&gt;, it has locked on to a set of coordinates.&#xA;Search the marked location to learn more about the reconstructed drone.
                                { "Russian", "Функциональность [ Дозорного ] ограничена.&#xA;Его внимание сфокусировано на координатах места, отмеченного как &lt;STELLAR&gt;столп стражей&lt;&gt;.&#xA;Найдите в указанном месте сведения о реконструированном дроне." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS2_OBJ5_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Схема &lt;TECHNOLOGY&gt;правой руки каркасного стража&lt;&gt;, полученная из столпа стражей.&#xA;Установите украденную технологию стражей в ваш &lt;TECHNOLOGY&gt;вездеход «Минотавр»&lt;&gt;.&#xA;С помощью этой технологии стражей можно улучшить &lt;TECHNOLOGY&gt;расщепитель&lt;&gt; «Минотавра».&#xA;Выберите пустую ячейку в &lt;STELLAR&gt;инвентаре&lt;&gt; и начните установку с помощью &lt;IMG&gt;TECHMENU&lt;&gt;.
                                { "Russian", "Чертеж &lt;TECHNOLOGY&gt;правой руки каркасного стража&lt;&gt;, изъят из столпа стражей.&#xA;Установите украденную технологию стражей в ваш &lt;TECHNOLOGY&gt;вездеход Минотавр&lt;&gt;.&#xA;С помощью этой технологии стражей можно улучшить &lt;TECHNOLOGY&gt;расщепитель&lt;&gt; Минотавра.&#xA;Выберите пустую ячейку в &lt;STELLAR&gt;инвентаре&lt;&gt; и начните установку с помощью &lt;IMG&gt;TECHMENU&lt;&gt;." },
                            }
                        },
                        --#endregion

                        --#region UI_SENT_MISS3_.*_TIP
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS3_OBJ3_TIP_NX" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Голосовая система [ Дозорного ] была доработана с помощью обновления, полученного от столпа стражей. Он сообщил новые координаты, достойные внимания.
                                { "Russian", "Голосовая система [ Дозорного ] была доработана с помощью обновления, изъятого из столпа стражей. Он сообщил новые координаты, достойные внимания." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS3_OBJ1_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- [ Дозорный ] предупредил вас о &lt;SPECIAL&gt;волнениях&lt;&gt; среди жителей.&#xA;Вернитесь в поселение, чтобы убедиться в защищенности поселенцев.
                                { "Russian", "[ Дозорный ] предупредил вас о &lt;SPECIAL&gt;волнениях&lt;&gt; среди жителей.&#xA;Вернитесь в поселение, чтобы убедиться в безопасности поселенцев." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS3_OBJ2_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Ваши поселенцы обеспокоены возросшей угрозой со стороны стражей и просят о встрече в вашем офисе.&#xA;Воспользуйтесь &lt;TECHNOLOGY&gt;терминалом управления поселением&lt;&gt;, чтобы выслушать их просьбу.
                                { "Russian", "Ваши поселенцы обеспокоены возросшей угрозой со стороны стражей и просят о встрече в вашем офисе.&#xA;Используйте &lt;TECHNOLOGY&gt;терминал управления поселением&lt;&gt;, чтобы выслушать их просьбу." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS3_OBJ3_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Жители поселения отправились в экспедицию на поиски информации о стражах.&#xA;Голосовая система [ Дозорного ] была доработана с помощью обновления, полученного от столпа стражей. Он сообщил новые координаты, достойные внимания.
                                { "Russian", "Жители поселения отправились в экспедицию на поиски информации о стражах.&#xA;Голосовая система [ Дозорного ] была доработана с помощью обновления, изъятого из столпа стражей. Он сообщил новые координаты, достойные внимания." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS3_OBJ4_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Координаты [ Дозорного ] привели к &lt;TECHNOLOGY&gt;заводу&lt;&gt;.&#xA;Найдите &lt;STELLAR&gt;терминал завода&lt;&gt;, чтобы получить сведения о постройке.&#xA;Укрепленные двери можно &lt;FUEL&gt;уничтожить&lt;&gt; (&lt;IMG&gt;ATTACK&lt;&gt;) с помощью вооружения мультитула.&#xA;Переключайте режимы оружия, используя &lt;IMG&gt;CYCLEWEAPON&lt;&gt;.
                                { "Russian", "Координаты [ Дозорного ] привели к &lt;TECHNOLOGY&gt;заводу&lt;&gt;.&#xA;Найдите &lt;STELLAR&gt;терминал завода&lt;&gt;, чтобы получить новые сведения.&#xA;Укрепленные двери можно &lt;FUEL&gt;уничтожить&lt;&gt; с помощью оружия, встроенного в мультитул (&lt;IMG&gt;ATTACK&lt;&gt;).&#xA;Переключайте режимы оружия, используя &lt;IMG&gt;CYCLEWEAPON&lt;&gt;." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS3_OBJ5_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Аномальные &lt;SPECIAL&gt;чертежи стража&lt;&gt;, полученные в &lt;SPECIAL&gt;стеклянном мире&lt;&gt;.&#xA;С помощью этой технологии стражей можно расширить возможности «Минотавра».&#xA;Выберите пустую ячейку в &lt;STELLAR&gt;инвентаре&lt;&gt; и начните установку с помощью &lt;IMG&gt;TECHMENU&lt;&gt;.
                                { "Russian", "Аномальные &lt;SPECIAL&gt;чертежи стража&lt;&gt; получены в &lt;SPECIAL&gt;стеклянном мире&lt;&gt;.&#xA;С помощью этой технологии стражей можно расширить возможности Минотавра.&#xA;Выберите пустую ячейку в &lt;STELLAR&gt;инвентаре&lt;&gt; и начните установку с помощью &lt;IMG&gt;TECHMENU&lt;&gt;." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS3_OBJ5_TIP_FORMAT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Схема (&lt;TECHNOLOGY&gt;%ITEM%&lt;&gt;), полученная в &lt;SPECIAL&gt;стеклянном мире&lt;&gt;.&#xA;С помощью этой технологии стражей можно расширить возможности «Минотавра».&#xA;Выберите пустую ячейку в &lt;STELLAR&gt;инвентаре&lt;&gt; и начните установку с помощью &lt;IMG&gt;TECHMENU&lt;&gt;.
                                -- &lt;TECHNOLOGY&gt;%ITEM%&lt;&gt; schematic obtained from the &lt;SPECIAL&gt;world of glass&lt;&gt;.&#xA;This Sentinel-grade technology will enhance the Minotaur Exocraft's capabilities.&#xA;Select an empty &lt;STELLAR&gt;Inventory&lt;&gt; slot and begin installation with &lt;IMG&gt;TECHMENU&lt;&gt;.
                                { "Russian", "Чертеж &lt;TECHNOLOGY&gt;%ITEM%&lt;&gt; получен в &lt;SPECIAL&gt;стеклянном мире&lt;&gt;.&#xA;С помощью этой технологии стражей можно расширить возможности Минотавра.&#xA;Выберите пустую ячейку в &lt;STELLAR&gt;инвентаре&lt;&gt; и начните установку с помощью &lt;IMG&gt;TECHMENU&lt;&gt;." },
                            }
                        },
                        --#endregion

                        --#region UI_SENT_MISS4_.*_TIP
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS4_OBJ1A_TIP_NX" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- [ &lt;TECHNOLOGY&gt;Дозорный&lt;&gt; ] передает голосовой сигнал.&#xA;Осмотрите дрон (&lt;IMG&gt;INTERACT&lt;&gt;), чтобы поговорить с ним.
                                { "Russian", "[ &lt;TECHNOLOGY&gt;Дозорный&lt;&gt; ] передает голосовой сигнал.&#xA;Поговорите с дроном с помощью &lt;IMG&gt;INTERACT&lt;&gt;." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS4_OBJ1B_TIP_NX" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Голосовая система [ Дозорного ] была доработана с помощью обновления, полученного от столпа стражей. Он сообщил новые координаты, достойные внимания.
                                { "Russian", "Голосовая система [ Дозорного ] была доработана с помощью обновления, изъятого из столпа стражей. Он сообщил новые координаты, достойные внимания." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS4_OBJ2_TIP_NX" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Схема &lt;SPECIAL&gt;левой руки каркасного стража&lt;&gt;, найденная в &lt;SPECIAL&gt;нерабочем комплексе.&lt;&gt;&#xA;С помощью этой технологии стражей можно расширить возможности «Минотавра».&#xA;Выберите пустую ячейку в &lt;STELLAR&gt;инвентаре&lt;&gt; и начните установку с помощью &lt;IMG&gt;TECHMENU&lt;&gt;.
                                -- &lt;SPECIAL&gt;Sentinel Hardframe Left Arm&lt;&gt; schematic recovered from &lt;SPECIAL&gt;corrupted facility&lt;&gt;.&#xA;This Sentinel-grade technology will enhance the Minotaur Exocraft's capabilities.&#xA;Select an empty &lt;STELLAR&gt;Inventory&lt;&gt; slot and begin installation with &lt;IMG&gt;TECHMENU&lt;&gt;.
                                { "Russian", "Чертеж &lt;SPECIAL&gt;левой руки каркасного стража&lt;&gt; найден в &lt;SPECIAL&gt;нерабочем комплексе&lt;&gt;.&#xA;С помощью этой технологии стражей можно расширить возможности Минотавра.&#xA;Выберите пустую ячейку в &lt;STELLAR&gt;инвентаре&lt;&gt; и начните установку с помощью &lt;IMG&gt;TECHMENU&lt;&gt;." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS4_OBJ1_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Ваши поселенцы вернулись из &lt;SPECIAL&gt;похода на станцию стражей&lt;&gt;.&#xA;Обратитесь к группе высадки с помощью &lt;TECHNOLOGY&gt;терминала управления поселением&lt;&gt;.
                                { "Russian", "Ваши поселенцы вернулись из &lt;SPECIAL&gt;экспедиции к станции стражей&lt;&gt;.&#xA;Обратитесь к группе с помощью &lt;TECHNOLOGY&gt;терминала управления поселением&lt;&gt;." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS4_OBJ2_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Команда высадки добыла аномальные &lt;SPECIAL&gt;чертежи стража&lt;&gt;.&#xA;С помощью этой технологии стражей можно расширить возможности «Минотавра».&#xA;Выберите пустую ячейку в &lt;STELLAR&gt;инвентаре&lt;&gt; и начните установку с помощью &lt;IMG&gt;TECHMENU&lt;&gt;.
                                { "Russian", "Экспедиционная группа добыла аномальные &lt;SPECIAL&gt;чертежи стража&lt;&gt;.&#xA;С помощью этой технологии стражей можно расширить возможности Минотавра.&#xA;Выберите пустую ячейку в &lt;STELLAR&gt;инвентаре&lt;&gt; и начните установку с помощью &lt;IMG&gt;TECHMENU&lt;&gt;." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS4_OBJ2_TIP_FORMAT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Схема (&lt;TECHNOLOGY&gt;%ITEM%&lt;&gt;), найденная группой высадки поселенцев.&#xA;С помощью этой технологии стражей можно расширить возможности «Минотавра».&#xA;Выберите пустую ячейку в &lt;STELLAR&gt;инвентаре&lt;&gt; и начните установку с помощью &lt;IMG&gt;TECHMENU&lt;&gt;.
                                { "Russian", "Чертеж &lt;TECHNOLOGY&gt;%ITEM%&lt;&gt; найден группой поселенцев.&#xA;С помощью этой технологии стражей можно расширить возможности Минотавра.&#xA;Выберите пустую ячейку в &lt;STELLAR&gt;инвентаре&lt;&gt; и начните установку с помощью &lt;IMG&gt;TECHMENU&lt;&gt;." },
                            }
                        },
                        --#endregion

                        --#region UI_SENT_MISS5_.*_TIP
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS5_OBJ1_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Установка &lt;TECHNOLOGY&gt;корпуса каркасного стража&lt;&gt; позволит вездеходу «Минотавр» &lt;STELLAR&gt;сражаться в автономном режиме&lt;&gt;.&#xA;Добудьте &lt;SPECIAL&gt;нетронутый мозг&lt;&gt; элитного шагающего стража.&#xA;[ Дозорный ] обнаружил местоположение стража.&#xA;Чтобы найти стражей, воспользуйтесь &lt;TECHNOLOGY&gt;анализирующим визором&lt;&gt;.
                                { "Russian", "Установка &lt;TECHNOLOGY&gt;корпуса каркасного стража&lt;&gt; позволит Минотавру &lt;STELLAR&gt;сражаться в автономном режиме&lt;&gt;.&#xA;Добудьте &lt;SPECIAL&gt;нетронутый мозг&lt;&gt; элитного шагающего стража.&#xA;[ Дозорный ] обнаружил местоположение стража.&#xA;Чтобы найти стражей, воспользуйтесь &lt;TECHNOLOGY&gt;анализирующим визором&lt;&gt;." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS5_OBJ2_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Чтобы безопасно установить &lt;SPECIAL&gt;нетронутый мозг&lt;&gt; в вездеход «Минотавр», сначала его нужно отключить от сети стражей.&#xA;Итерация Тефиды способна выполнить подобную операцию.&#xA;Находясь в космосе, вызовите &lt;SPECIAL&gt;Аномалию&lt;&gt; через быстрое меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                { "Russian", "Чтобы безопасно установить &lt;SPECIAL&gt;нетронутый мозг&lt;&gt; в Минотавр, сначала его нужно отключить от сети стражей.&#xA;Итерация Тефида способна выполнить подобную операцию.&#xA;Находясь в космосе, вызовите &lt;SPECIAL&gt;Аномалию&lt;&gt; из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS5_OBJ3_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Тефида подготовила &lt;SPECIAL&gt;взломанный мозг&lt;&gt; для отключения от сети стражей.&#xA;Осталось лишь заставить его услышать &lt;FUEL&gt;голос Атласа&lt;&gt;.&#xA;Активируйте &lt;TECHNOLOGY&gt;импульсный привод&lt;&gt;, чтобы показать мозг &lt;FUEL&gt;багровой&lt;&gt; пустоте.
                                { "Russian", "Тефида подготовила &lt;SPECIAL&gt;взломанный мозг&lt;&gt; для отключения от сети стражей.&#xA;Осталось лишь заставить его услышать &lt;FUEL&gt;голос Атласа&lt;&gt;.&#xA;Активируйте &lt;TECHNOLOGY&gt;импульсный двигатель&lt;&gt;, чтобы показать мозг &lt;FUEL&gt;багровой&lt;&gt; пустоте." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS5_OBJ4_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Итерация Тефиды разработала чертеж &lt;TECHNOLOGY&gt;корпуса каркасного стража&lt;&gt;.&#xA;Эта технология позволит оснастить вездеход «Минотавр» полуавтономным &lt;TECHNOLOGY&gt;модулем автопилота&lt;&gt;.&#xA;Выберите пустую ячейку в &lt;STELLAR&gt;инвентаре&lt;&gt; и начните установку с помощью &lt;IMG&gt;TECHMENU&lt;&gt;.
                                { "Russian", "Итерация Тефида разработала чертеж &lt;TECHNOLOGY&gt;корпуса каркасного стража&lt;&gt;.&#xA;Эта технология позволит оснастить Минотавр полуавтономным &lt;TECHNOLOGY&gt;модулем автопилота&lt;&gt;.&#xA;Выберите пустую ячейку в &lt;STELLAR&gt;инвентаре&lt;&gt; и начните установку с помощью &lt;IMG&gt;TECHMENU&lt;&gt;." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS5_OBJ5_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- [ Дозорного ] гнетет подключение к &lt;SPECIAL&gt;коллективному разуму стражей&lt;&gt;. Он хочет освободиться.&#xA;Воспользуйтесь терминалом столпа стражей, чтобы разорвать связь.&#xA;Автономный вездеход «Минотавр» может оказать значительную &lt;FUEL&gt;огневую поддержку&lt;&gt; в бою.&#xA;Призовите «Минотавр» через &lt;TECHNOLOGY&gt;быстрое меню&lt;&gt; (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                -- [ The Sentry ] is tormented by its connection to the &lt;SPECIAL&gt;Sentinel hivemind&lt;&gt;, and wishes to be free.&#xA;Access the terminal at a Sentinel Pillar to sever the connection.&#xA;The autonomous Minotaur Exocraft can provide advanced &lt;FUEL&gt;firepower assistance&lt;&gt; in combat.&#xA;Summon the Minotaur from the &lt;TECHNOLOGY&gt;Quick Menu&lt;&gt; (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                { "Russian", "[ Дозорный ] мучается из-за связи с &lt;SPECIAL&gt;коллективным разумом стражей&lt;&gt;. Он хочет освободиться.&#xA;Воспользуйтесь терминалом столпа стражей, чтобы разорвать связь.&#xA;Автономный вездеход Минотавр может оказать значительную &lt;FUEL&gt;огневую поддержку&lt;&gt; в бою.&#xA;Вызовите Минотавра из &lt;TECHNOLOGY&gt;быстрого меню&lt;&gt; (&lt;IMG&gt;QUICK_MENU&lt;&gt;)." },
                            }
                        },
                        --#endregion

                        --#region UI_DRONE_.*_DESC
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DRONE_FRIEND_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Специальное устройство, созданное итерацией Тефида. Его основная функция заключается в призыве вашего &lt;TECHNOLOGY&gt;восстановленного дрона стражей&lt;&gt;.&#xA;&#xA;Выберите устройство и &lt;STELLAR&gt;активируйте факел&lt;&gt; (&lt;IMG&gt;FE_ALT1&lt;&gt;), чтобы подать сигнал [&lt;TECHNOLOGY&gt;дрону&lt;&gt;].&#xA;&#xA;Если этот факел активен в &lt;STELLAR&gt;инвентаре экзокостюма&lt;&gt;, дрон будет находиться рядом с вами, пока вы находитесь на поверхности планеты.
                                -- A specialist device, created by Iteration Tethys. Its primary function is to hail your &lt;TECHNOLOGY&gt;reconstructed Sentinel drone&lt;&gt;.&#xA;&#xA;Select the device and use &lt;STELLAR&gt;Activate Flare&lt;&gt; (&lt;IMG&gt;FE_ALT1&lt;&gt;) to signal [&lt;TECHNOLOGY&gt;The Drone&lt;&gt;].&#xA;&#xA;While this flare is active in your &lt;STELLAR&gt;Exosuit inventory&lt;&gt;, the drone will stay by your side while planetside.
                                { "Russian", "Специальное устройство, созданное итерацией Тефида. Его основная функция заключается в вызове вашего &lt;TECHNOLOGY&gt;реконструированного дрона стражей&lt;&gt;.&#xA;&#xA;Выберите устройство и &lt;STELLAR&gt;активируйте факел&lt;&gt; (&lt;IMG&gt;FE_ALT1&lt;&gt;), чтобы подать сигнал [&lt;TECHNOLOGY&gt;дрону&lt;&gt;].&#xA;&#xA;Если этот факел активен в &lt;STELLAR&gt;инвентаре экзокостюма&lt;&gt;, дрон будет находиться рядом с вами, пока вы находитесь на поверхности планеты." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DRONE_FRIEND_X_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Специальное устройство, созданное итерацией Тефида. Его основная функция заключается в призыве вашего &lt;TECHNOLOGY&gt;восстановленного дрона стражей&lt;&gt;.&#xA;&#xA;Выберите устройство и отключите передачу (&lt;IMG&gt;FE_ALT1&lt;&gt;), чтобы прекратить подавать сигнал [ Дозорному ].&#xA;&#xA;Если этот факел активен в &lt;STELLAR&gt;инвентаре экзокостюма&lt;&gt;, дрон будет находиться рядом с вами, пока вы находитесь на поверхности планеты.
                                -- A specialist device, created by Iteration Tethys. Its primary function is to hail your &lt;TECHNOLOGY&gt;reconstructed Sentinel drone&lt;&gt;.&#xA;&#xA;Select the device and use Deactivate Broadcast (&lt;IMG&gt;FE_ALT1&lt;&gt;) to stop signalling [ The Sentry ].&#xA;&#xA;While this flare is active in your &lt;STELLAR&gt;Exosuit inventory&lt;&gt;, the drone will stay by your side while planetside.
                                { "Russian", "Специальное устройство, созданное итерацией Тефида. Его основная функция заключается в вызове вашего &lt;TECHNOLOGY&gt;реконструированного дрона стражей&lt;&gt;.&#xA;&#xA;Выберите устройство и отключите передачу (&lt;IMG&gt;FE_ALT1&lt;&gt;), чтобы прекратить подавать сигнал [ Дозорному ].&#xA;&#xA;Если этот факел активен в &lt;STELLAR&gt;инвентаре экзокостюма&lt;&gt;, дрон будет находиться рядом с вами, пока вы находитесь на поверхности планеты." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DRONE_SAFETY_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Факел стража&lt;&gt; — это специальное устройство, созданное итерацией Тефиды. Его основная функция заключается в призыве вашего &lt;TECHNOLOGY&gt;отремонтированного дрона стражей&lt;&gt;.&#xA;&#xA;Тефида может заменить пропавший факел.
                                -- The &lt;SPECIAL&gt;Sentinel Flare&lt;&gt; is a specialist device, created by Iteration Tethys. Its primary function is to hail your &lt;TECHNOLOGY&gt;repaired Sentinel drone&lt;&gt;.&#xA;&#xA;Tethys may be able to provide a replacement for the misplaced flare.
                                { "Russian", "&lt;SPECIAL&gt;Факел стража&lt;&gt; — это специальное устройство, созданное итерацией Тефиды. Его основная функция заключается в вызове вашего &lt;TECHNOLOGY&gt;реконструированного дрона стражей&lt;&gt;.&#xA;&#xA;Тефида может заменить пропавший факел." },
                            }
                        },
                        --#endregion

                        --#region Точка, указанная [
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS_HIVE_SURV_INACTIVE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Точка, указанная [ Дозорным ], находится &lt;STELLAR&gt;рядом&lt;&gt;&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; в анализирующем визоре &lt;IMG&gt;AIM&lt;&gt;
                                -- The location indicated by [ The Sentry ] is &lt;STELLAR&gt;nearby&lt;&gt;&#xA;Activate a &lt;STELLAR&gt;Target Sweep&lt;&gt; from the Analysis Visor &lt;IMG&gt;AIM&lt;&gt;
                                { "Russian", "Место, указанное [ Дозорным ], находится &lt;STELLAR&gt;рядом&lt;&gt;&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; в анализирующем визоре &lt;IMG&gt;AIM&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS_HIVE_SURV_SWAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Точка, указанная [ Дозорным ], находится &lt;STELLAR&gt;рядом&lt;&gt;&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;
                                { "Russian", "Место, указанное [ Дозорным ], находится &lt;STELLAR&gt;рядом&lt;&gt;&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS_FACT_SURV_INACTIVE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Точка, указанная [ Дозорным ], находится &lt;STELLAR&gt;рядом&lt;&gt;&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; в анализирующем визоре &lt;IMG&gt;AIM&lt;&gt;
                                { "Russian", "Место, указанное [ Дозорным ], находится &lt;STELLAR&gt;рядом&lt;&gt;&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; в анализирующем визоре &lt;IMG&gt;AIM&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS_FACT_SURV_SWAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Точка, указанная [ Дозорным ], находится &lt;STELLAR&gt;рядом&lt;&gt;&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;
                                { "Russian", "Место, указанное [ Дозорным ], находится &lt;STELLAR&gt;рядом&lt;&gt;&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region Узлы управления столпа
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENTINEL_HIVE_LOCKED_LANG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Узлы управления столпа: [ &lt;TRADEABLE&gt;РАБОТАЮТ&lt;&gt; ] ...Архив пограничного узла : [ &lt;SPECIAL&gt;ЗАЩИЩЕН&lt;&gt; ]
                                -- Pillar Control Nodes: [ &lt;TRADEABLE&gt;OPERATIONAL&lt;&gt; ] ... Boundary Node Archive: [ &lt;SPECIAL&gt;SECURE&lt;&gt; ]
                                { "Russian", "Узлы управления столпа: [ &lt;TRADEABLE&gt;РАБОТАЮТ&lt;&gt; ] ...&lt;NEWLINE&gt;Архив пограничного узла : [ &lt;SPECIAL&gt;ЗАЩИЩЕН&lt;&gt; ]" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS_HIVE_FINAL_LANG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Узлы управления столпа: [ &lt;TRADEABLE&gt;РАБОТАЮТ&lt;&gt; ] ...Архив пограничного узла : [ &lt;SPECIAL&gt;ЗАЩИЩЕН&lt;&gt; ] ...  Беглый самозванец: [ &lt;SPECIAL&gt;УДАЛЕН ИЗ АРХИВА&lt;&gt; ]
                                -- Pillar Control Nodes: [ &lt;TRADEABLE&gt;OPERATIONAL&lt;&gt; ] ... Boundary Node Archive: [ &lt;SPECIAL&gt;SECURE&lt;&gt; ] ...  Rogue Imposter: [ &lt;SPECIAL&gt;PURGED FROM ARCHIVE&lt;&gt; ]
                                { "Russian", "Узлы управления столпа: [ &lt;TRADEABLE&gt;РАБОТАЮТ&lt;&gt; ] ...&lt;NEWLINE&gt;Архив пограничного узла : [ &lt;SPECIAL&gt;ЗАЩИЩЕН&lt;&gt; ] ...&lt;NEWLINE&gt;Беглый самозванец: [ &lt;SPECIAL&gt;УДАЛЕН ИЗ АРХИВА&lt;&gt; ]" },
                            }
                        },
                        --#endregion

                        --#region UI_FRIENDLY_DRONE_SUMMONED
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FRIENDLY_DRONE_SUMMONED" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- [ &lt;TECHNOLOGY&gt;Дозорный &lt;&gt; ] пытается установить связь&#xA;Для установки соединения осмотрите ваш дрон с помощью &lt;IMG&gt;INTERACT&lt;&gt;
                                -- [ &lt;TECHNOLOGY&gt;The Sentry&lt;&gt; ] is attempting communication&#xA;Inspect your drone with &lt;IMG&gt;INTERACT&lt;&gt; to contact
                                { "Russian", "[ &lt;TECHNOLOGY&gt;Дозорный &lt;&gt; ] пытается установить связь&#xA;Осмотрите дрона с помощью &lt;IMG&gt;INTERACT&lt;&gt;,&#xA;чтобы поговорить с ним" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FRIENDLY_DRONE_SUMMONED_2B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Экзокостюм перехватил сигнал удаления от &lt;SPECIAL&gt;столпа стражей&lt;&gt;. &#xA;Осмотрите восстановленный дрон на предмет повреждений (&lt;IMG&gt;INTERACT&lt;&gt;).
                                -- The Exosuit intercepted a delete signal from the &lt;SPECIAL&gt;Sentinel Pillar&lt;&gt; &#xA;Inspect the reconstructed drone with &lt;IMG&gt;INTERACT&lt;&gt; to check for damage
                                { "Russian", "Экзокостюм перехватил сигнал удаления от &lt;SPECIAL&gt;столпа стражей&lt;&gt;&#xA;Осмотрите реконструированного дрона&#xA;на предмет повреждений (&lt;IMG&gt;INTERACT&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FRIENDLY_DRONE_SUMMONED_2D" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Восстановленный дрон запустил свой протокол [ &lt;TECHNOLOGY&gt;Дозорного&lt;&gt; ].&#xA;Дрон/Дозорный пытается установить связь.&#xA;Осмотрите дрон (&lt;IMG&gt;INTERACT&lt;&gt;).
                                { "Russian", "Реконструированный дрон запустил свой протокол [ &lt;TECHNOLOGY&gt;Дозорного&lt;&gt; ]&#xA;Дрон/Дозорный пытается установить связь&#xA;Осмотрите дрона (&lt;IMG&gt;INTERACT&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FRIENDLY_DRONE_SUMMONED_3A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- [ &lt;TECHNOLOGY&gt;Дозорный&lt;&gt; ] передает слабый голосовой сигнал.&#xA;Осмотрите дрон (&lt;IMG&gt;INTERACT&lt;&gt;), чтобы поговорить с ним.
                                -- [ &lt;TECHNOLOGY&gt;The Sentry&lt;&gt; ] is broadcasting a weak vocalisation signal&#xA;Inspect your drone with &lt;IMG&gt;INTERACT&lt;&gt; to communicate
                                { "Russian", "[ &lt;TECHNOLOGY&gt;Дозорный&lt;&gt; ] передает слабый голосовой сигнал&#xA;Осмотрите дрона с помощью &lt;IMG&gt;INTERACT&lt;&gt;,&#xA;чтобы поговорить с ним" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FRIENDLY_DRONE_SUMMONED_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Фабрика произвела &lt;STELLAR&gt;нейронное обновление&lt;&gt; [ &lt;TECHNOLOGY&gt;Дозорного&lt;&gt; ].&#xA;Осмотрите дрон (&lt;IMG&gt;INTERACT&lt;&gt;), чтобы увидеть результаты.
                                -- The factory deployed a &lt;STELLAR&gt;neural upgrade&lt;&gt; to [ &lt;TECHNOLOGY&gt;Sentry&lt;&gt; ]&#xA;Inspect your drone with &lt;IMG&gt;INTERACT&lt;&gt; to test the results
                                { "Russian", "Фабрика установила &lt;STELLAR&gt;нейронное улучшение&lt;&gt; в [ &lt;TECHNOLOGY&gt;Дозорного&lt;&gt; ]&#xA;Осмотрите дрона с помощью &lt;IMG&gt;INTERACT&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FRIENDLY_DRONE_SUMMONED_4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- [ &lt;TECHNOLOGY&gt;Дозорный&lt;&gt; ] передает голосовой сигнал.&#xA;Осмотрите дрон (&lt;IMG&gt;INTERACT&lt;&gt;), чтобы поговорить с ним.
                                { "Russian", "[ &lt;TECHNOLOGY&gt;Дозорный&lt;&gt; ] передает голосовой сигнал&#xA;Осмотрите дрона с помощью &lt;IMG&gt;INTERACT&lt;&gt;,&#xA;чтобы поговорить с ним" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FRIENDLY_DRONE_SUMMONED_5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- [ &lt;TECHNOLOGY&gt;Дозорный&lt;&gt; ] передает голосовой сигнал.&#xA;Осмотрите дрон (&lt;IMG&gt;INTERACT&lt;&gt;), чтобы поговорить с ним.
                                { "Russian", "[ &lt;TECHNOLOGY&gt;Дозорный&lt;&gt; ] передает голосовой сигнал&#xA;Осмотрите дрона с помощью &lt;IMG&gt;INTERACT&lt;&gt;,&#xA;чтобы поговорить с ним" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FRIENDLY_DRONE_SUMMONED_F" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Желание [ &lt;TECHNOLOGY&gt;Дозорного&lt;&gt; ] выполнено.&#xA;Чтобы увидеть результат, осмотрите дрон (&lt;IMG&gt;INTERACT&lt;&gt;).
                                -- [ &lt;TECHNOLOGY&gt;The Sentry&lt;&gt; ]'s wish has been granted&#xA;Inspect your drone with &lt;IMG&gt;INTERACT&lt;&gt; to inspect the results
                                { "Russian", "Желание [ &lt;TECHNOLOGY&gt;Дозорного&lt;&gt; ] выполнено&#xA;Осмотрите дрона с помощью &lt;IMG&gt;INTERACT&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region UI_FRIENDLY_DRONE_UNSUMMONED
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FRIENDLY_DRONE_UNSUMMONED" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- [ &lt;TECHNOLOGY&gt;Дозорный&lt;&gt; ] может обладать важной информацией.&#xA;Для размещения [ Дозорного ] зажгите &lt;SPECIAL&gt;факел стража&lt;&gt; в &lt;STELLAR&gt;инвентаре экзокостюма&lt;&gt;.&#xA;Найдите факел в своем инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;).
                                { "Russian", "[ &lt;TECHNOLOGY&gt;Дозорный&lt;&gt; ] может обладать важной информацией&#xA;Активируйте &lt;SPECIAL&gt;факел стража&lt;&gt; в &lt;STELLAR&gt;инвентаре экзокостюма&lt;&gt;&#xA;Найдите факел в своем инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FRIENDLY_DRONE_UNSUMMONED_2B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Экзокостюм перехватил сигнал удаления от &lt;SPECIAL&gt;столпа стражей&lt;&gt;. &#xA;Восстановленный дрон нужно проверить на повреждения.&#xA;Активируйте &lt;SPECIAL&gt;факел стража&lt;&gt; в &lt;STELLAR&gt;инвентаре экзокостюма&lt;&gt; (&lt;IMG&gt;INVENTORY&lt;&gt;).
                                { "Russian", "Экзокостюм перехватил сигнал удаления от &lt;SPECIAL&gt;столпа стражей&lt;&gt;&#xA;Реконструированного дрона нужно проверить на наличие повреждений&#xA;Активируйте &lt;SPECIAL&gt;факел стража&lt;&gt; в &lt;STELLAR&gt;инвентаре экзокостюма&lt;&gt; (&lt;IMG&gt;INVENTORY&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FRIENDLY_DRONE_UNSUMMONED_2D" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Восстановленный дрон запустил свой протокол [ &lt;TECHNOLOGY&gt;Дозорного&lt;&gt; ].&#xA;Дрон/Дозорный пытается установить связь.&#xA;Активируйте &lt;SPECIAL&gt;факел стража&lt;&gt; в &lt;STELLAR&gt;инвентаре экзокостюма&lt;&gt; (&lt;IMG&gt;INVENTORY&lt;&gt;).
                                { "Russian", "Реконструированный дрон запустил свой протокол [ &lt;TECHNOLOGY&gt;Дозорного&lt;&gt; ]&#xA;Дрон/Дозорный пытается установить связь&#xA;Активируйте &lt;SPECIAL&gt;факел стража&lt;&gt; в &lt;STELLAR&gt;инвентаре экзокостюма&lt;&gt; (&lt;IMG&gt;INVENTORY&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FRIENDLY_DRONE_UNSUMMONED_3A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- [ &lt;TECHNOLOGY&gt;Дозорный&lt;&gt; ] передает слабый голосовой сигнал.&#xA;Для размещения [ Дозорного ] зажгите &lt;SPECIAL&gt;факел стража&lt;&gt; в &lt;STELLAR&gt;инвентаре экзокостюма&lt;&gt;.&#xA;Найдите факел в своем инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;).
                                { "Russian", "[ &lt;TECHNOLOGY&gt;Дозорный&lt;&gt; ] передает слабый голосовой сигнал&#xA;Активируйте &lt;SPECIAL&gt;факел стража&lt;&gt; в &lt;STELLAR&gt;инвентаре экзокостюма&lt;&gt;&#xA;Найдите факел в своем инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FRIENDLY_DRONE_UNSUMMONED_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Фабрика произвела &lt;STELLAR&gt;нейронное обновление&lt;&gt; [ &lt;TECHNOLOGY&gt;Дозорного&lt;&gt; ].&#xA;Чтобы увидеть результат, зажгите &lt;SPECIAL&gt;факел стража&lt;&gt; в &lt;STELLAR&gt;инвентаре экзокостюма&lt;&gt;.&#xA;Найдите факел в своем инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;).
                                { "Russian", "Фабрика установила &lt;STELLAR&gt;нейронное улучшение&lt;&gt; в [ &lt;TECHNOLOGY&gt;Дозорного&lt;&gt; ]&#xA;Активируйте &lt;SPECIAL&gt;факел стража&lt;&gt; в &lt;STELLAR&gt;инвентаре экзокостюма&lt;&gt;&#xA;Найдите факел в своем инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FRIENDLY_DRONE_UNSUMMONED_4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- [ &lt;TECHNOLOGY&gt;Дозорный&lt;&gt; ] передает голосовой сигнал.&#xA;Для размещения [ Дозорного ] зажгите &lt;SPECIAL&gt;факел стража&lt;&gt; в &lt;STELLAR&gt;инвентаре экзокостюма&lt;&gt;.&#xA;Найдите факел в своем инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;).
                                { "Russian", "[ &lt;TECHNOLOGY&gt;Дозорный&lt;&gt; ] передает голосовой сигнал&#xA;Активируйте &lt;SPECIAL&gt;факел стража&lt;&gt; в &lt;STELLAR&gt;инвентаре экзокостюма&lt;&gt;&#xA;Найдите факел в своем инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FRIENDLY_DRONE_UNSUMMONED_5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- [ &lt;TECHNOLOGY&gt;Дозорный&lt;&gt; ] передает голосовой сигнал.&#xA;Для размещения [ Дозорного ] зажгите &lt;SPECIAL&gt;факел стража&lt;&gt; в &lt;STELLAR&gt;инвентаре экзокостюма&lt;&gt;.&#xA;Найдите факел в своем инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;).
                                { "Russian", "[ &lt;TECHNOLOGY&gt;Дозорный&lt;&gt; ] передает голосовой сигнал&#xA;Активируйте &lt;SPECIAL&gt;факел стража&lt;&gt; в &lt;STELLAR&gt;инвентаре экзокостюма&lt;&gt;&#xA;Найдите факел в своем инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FRIENDLY_DRONE_UNSUMMONED_F" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- [ &lt;TECHNOLOGY&gt;Дозорный&lt;&gt; ] был удален из архива стражей.&#xA;Чтобы увидеть результат, зажгите &lt;SPECIAL&gt;факел стража&lt;&gt; в &lt;STELLAR&gt;инвентаре экзокостюма&lt;&gt;.&#xA;Найдите факел в своем инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;).
                                { "Russian", "[ &lt;TECHNOLOGY&gt;Дозорный&lt;&gt; ] был удален из архива стражей&#xA;Активируйте &lt;SPECIAL&gt;факел стража&lt;&gt; в &lt;STELLAR&gt;инвентаре экзокостюма&lt;&gt;&#xA;Найдите факел в своем инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;)" },
                            }
                        },
                        --#endregion

                        --#region UI_FRIENDLY_DRONE_CANTSUMMON
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FRIENDLY_DRONE_CANTSUMMON" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- [ &lt;TECHNOLOGY&gt;Дозорный&lt;&gt; ] может обладать важной информацией.&#xA;Для размещения [ Дозорного ] выйдите на &lt;STELLAR&gt;поверхность планеты&lt;&gt;.
                                { "Russian", "[ &lt;TECHNOLOGY&gt;Дозорный&lt;&gt; ] может обладать важной информацией&#xA;Для размещения [ Дозорного ] вернитесь на &lt;STELLAR&gt;поверхность планеты&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FRIENDLY_DRONE_CANTSUMMON_2B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Экзокостюм перехватил сигнал удаления от &lt;SPECIAL&gt;столпа стражей&lt;&gt;. &#xA;Восстановленный дрон нужно проверить на повреждения.&#xA;Выйдите на &lt;STELLAR&gt;поверхность планеты&lt;&gt;, чтобы запустить дрон.
                                -- The Exosuit intercepted a delete signal from the &lt;SPECIAL&gt;Sentinel Pillar&lt;&gt; &#xA;The reconstructed drone needs to be checked for damage&#xA;Proceed to a &lt;STELLAR&gt;planet surface&lt;&gt; to deploy the drone
                                { "Russian", "Экзокостюм перехватил сигнал удаления от &lt;SPECIAL&gt;столпа стражей&lt;&gt;&#xA;Реконструированного дрона нужно проверить на наличие повреждений&#xA;Вернитесь на &lt;STELLAR&gt;поверхность планеты&lt;&gt;,&#xA;чтобы запустить дрона" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FRIENDLY_DRONE_CANTSUMMON_2D" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Восстановленный дрон запустил свой протокол [ &lt;TECHNOLOGY&gt;Дозорного&lt;&gt; ].&#xA;Дрон/Дозорный пытается установить связь.&#xA;Выйдите на &lt;STELLAR&gt;поверхность планеты&lt;&gt;, чтобы запустить дрон.
                                { "Russian", "Реконструированный дрон запустил свой протокол [ &lt;TECHNOLOGY&gt;Дозорного&lt;&gt; ]&#xA;Дрон/Дозорный пытается установить связь&#xA;Вернитесь на &lt;STELLAR&gt;поверхность планеты&lt;&gt;,&#xA;чтобы запустить дрона" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FRIENDLY_DRONE_CANTSUMMON_3A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- [ &lt;TECHNOLOGY&gt;Дозорный&lt;&gt; ] передает слабый голосовой сигнал.&#xA;Выйдите на &lt;STELLAR&gt;поверхность планеты&lt;&gt;, чтобы запустить [ Дозорного ].
                                { "Russian", "[ &lt;TECHNOLOGY&gt;Дозорный&lt;&gt; ] передает слабый голосовой сигнал&#xA;Вернитесь на &lt;STELLAR&gt;поверхность планеты&lt;&gt;,&#xA;чтобы запустить [ Дозорного ]" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FRIENDLY_DRONE_CANTSUMMON_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Фабрика произвела &lt;STELLAR&gt;нейронное обновление&lt;&gt; [ &lt;TECHNOLOGY&gt;Дозорного&lt;&gt; ].&#xA;Выйдите на &lt;STELLAR&gt;поверхность планеты&lt;&gt;, чтобы увидеть результаты.
                                { "Russian", "Фабрика установила &lt;STELLAR&gt;нейронное улучшение&lt;&gt; в [ &lt;TECHNOLOGY&gt;Дозорного&lt;&gt; ]&#xA;Вернитесь на &lt;STELLAR&gt;поверхность планеты&lt;&gt;, чтобы увидеть результаты" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FRIENDLY_DRONE_CANTSUMMON_4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- [ &lt;TECHNOLOGY&gt;Дозорный&lt;&gt; ] передает голосовой сигнал.&#xA;Выйдите на &lt;STELLAR&gt;поверхность планеты&lt;&gt;, чтобы запустить [ Дозорного ].
                                { "Russian", "[ &lt;TECHNOLOGY&gt;Дозорный&lt;&gt; ] передает голосовой сигнал&#xA;Вернитесь на &lt;STELLAR&gt;поверхность планеты&lt;&gt;,&#xA;чтобы запустить [ Дозорного ]" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FRIENDLY_DRONE_CANTSUMMON_5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- [ &lt;TECHNOLOGY&gt;Дозорный&lt;&gt; ] передает голосовой сигнал.&#xA;Выйдите на &lt;STELLAR&gt;поверхность планеты&lt;&gt;, чтобы запустить [ Дозорного ].
                                { "Russian", "[ &lt;TECHNOLOGY&gt;Дозорный&lt;&gt; ] передает голосовой сигнал&#xA;Вернитесь на &lt;STELLAR&gt;поверхность планеты&lt;&gt;,&#xA;чтобы запустить [ Дозорного ]" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FRIENDLY_DRONE_CANTSUMMON_F" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- [ &lt;TECHNOLOGY&gt;Дозорный&lt;&gt; ] был удален из архива стражей.&#xA;Выйдите на &lt;STELLAR&gt;поверхность планеты&lt;&gt;, чтобы запустить [ Дозорного ].
                                { "Russian", "[ &lt;TECHNOLOGY&gt;Дозорный&lt;&gt; ] был удален из архива стражей&#xA;Вернитесь на &lt;STELLAR&gt;поверхность планеты&lt;&gt;,&#xA;чтобы запустить [ Дозорного ]" },
                            }
                        },
                        --#endregion

                        --#region UI_FRIENDLY_DRONE_OSD
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FRIENDLY_DRONE_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Внимание! &lt;IMG&gt;SLASH&lt;&gt; Доступна связь с [ Дозорным ]
                                -- Alert! &lt;IMG&gt;SLASH&lt;&gt; [ The Sentry ] Communication Available
                                { "Russian", "ДОСТУПНА СВЯЗЬ С [ ДОЗОРНЫМ ]" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FRIENDLY_DRONE_OSD_2D" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружена трансляция дрона &lt;IMG&gt;SLASH&lt;&gt; Выданный позывной: [ Дозорный ]
                                -- Drone Broadcast Detected &lt;IMG&gt;SLASH&lt;&gt; Embedded Callsign: [ The Sentry ]
                                { "Russian", "ДРОН СООБЩАЕТ &lt;IMG&gt;SLASH&lt;&gt; ЕГО ПОЗЫВНОЙ: [ ДОЗОРНЫЙ ]" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FRIENDLY_DRONE_OSD_3A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружена трансляция [ Дозорного ] &lt;IMG&gt; SLASH &lt;&gt; Сигнал голосовой системы: СЛАБЫЙ
                                -- [ Sentry ] Broadcast Detected &lt;IMG&gt;SLASH&lt;&gt; Vocalisation Signal: WEAK
                                { "Russian", "[ ДОЗОРНЫЙ ] СООБЩАЕТ &lt;IMG&gt;SLASH&lt;&gt; СИГНАЛ ВОКАЛИЗАЦИИ: СЛАБЫЙ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FRIENDLY_DRONE_OSD_4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружена трансляция [ Дозорного ] &lt;IMG&gt; SLASH &lt;&gt; Попытка запроса связи
                                -- [ Sentry ] Broadcast Detected &lt;IMG&gt;SLASH&lt;&gt; Communication Attempt Requested
                                { "Russian", "[ ДОЗОРНЫЙ ] СООБЩАЕТ &lt;IMG&gt;SLASH&lt;&gt; ЗАПРАШИВАЮ ОБЩЕНИЯ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FRIENDLY_DRONE_OSD_5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружена трансляция дрона &lt;IMG&gt;SLASH&lt;&gt; Выданный позывной: [ ЛЭЙЛАПС ]
                                -- Drone Broadcast Detected &lt;IMG&gt;SLASH&lt;&gt; Embedded Callsign: [ LAYLAPS ]
                                { "Russian", "ДРОН СООБЩАЕТ &lt;IMG&gt;SLASH&lt;&gt; ЕГО ПОЗЫВНОЙ: [ ЛЭЙЛАПС ]" },
                            }
                        },
                        --#endregion

                        --#region "Восстановленный дрон"
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FRIENDLY_DRONE_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Восстановленный дрон
                                -- Reconstructed Drone
                                { "Russian", "Реконструированный дрон" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FRIENDLY_DRONE_NAME_UNKNOWN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Восстановленный дрон
                                -- Reconstructed Drone
                                { "Russian", "Реконструированный дрон" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BINOC_FRIENDLYDRONE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Восстановленный дрон
                                -- Reconstructed Drone
                                { "Russian", "Реконструированный дрон" },
                            }
                        },
                        --#endregion

                        --#region UI_SENT_MISS5_POI_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS5_POI_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Тефида подготовила &lt;SPECIAL&gt;взломанный мозг&lt;&gt; для отключения.&#xA;Мозг шагающего стража ищет &lt;FUEL&gt;голос основного пользователя&lt;&gt;... %SIGNAL%...
                                -- Tethys has prepared the &lt;SPECIAL&gt;Hacked Brain&lt;&gt; for disconnection&#xA;Walker Brain seeking &lt;FUEL&gt;Primary User Voice&lt;&gt;... %SIGNAL%...
                                { "Russian", "Тефида подготовила &lt;SPECIAL&gt;взломанный мозг&lt;&gt; для отключения&#xA;Мозг шагающего стража ищет &lt;FUEL&gt;голос основного пользователя&lt;&gt;&#xA;Поиск сигнала: %SIGNAL%..." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS5_POI_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Тефида подготовила &lt;SPECIAL&gt;взломанный мозг&lt;&gt; для отключения.&#xA;Отправьтесь в космос, чтобы показать мозг &lt;FUEL&gt;багровой&lt;&gt; пустоте.&#xA;Вернитесь на корабль, чтобы начать поиск.
                                { "Russian", "Тефида подготовила &lt;SPECIAL&gt;взломанный мозг&lt;&gt; для отключения&#xA;Отправьтесь в космос, чтобы показать мозг &lt;FUEL&gt;багровой&lt;&gt; пустоте&#xA;Вернитесь на корабль, чтобы начать поиск" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS5_POI_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Тефида подготовила &lt;SPECIAL&gt;взломанный мозг&lt;&gt; для отключения.&#xA;Отправьтесь в космос, чтобы показать мозг &lt;FUEL&gt;багровой&lt;&gt; пустоте.&#xA;Активируйте &lt;TECHNOLOGY&gt;импульсный привод&lt;&gt;, чтобы найти маяк.
                                { "Russian", "Тефида подготовила &lt;SPECIAL&gt;взломанный мозг&lt;&gt; для отключения&#xA;Отправьтесь в космос, чтобы показать мозг &lt;FUEL&gt;багровой&lt;&gt; пустоте&#xA;Активируйте &lt;TECHNOLOGY&gt;импульсный двигатель&lt;&gt;, чтобы найти маяк" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENT_MISS5_POI_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сигнал &lt;SPECIAL&gt;взломанного мозга&lt;&gt; заблокирован.&#xA;Ответьте на вызов по &lt;STELLAR&gt;коммуникатору&lt;&gt;, чтобы освободить частоты.
                                -- &lt;SPECIAL&gt;Hacked Brain&lt;&gt; signal jammed&#xA;Answer the &lt;STELLAR&gt;Communicator&lt;&gt; to free wavelengths
                                { "Russian", "Сигнал &lt;SPECIAL&gt;взломанного мозга&lt;&gt; заблокирован&#xA;Ответьте по &lt;STELLAR&gt;коммуникатору&lt;&gt;, чтобы освободить частоты" },
                            }
                        },
                        --#endregion

                        --#region UI_SETTLEMENT_EXPED
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_EXPED_WIN_TITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;MISSIONPRIMARY&gt;ПОСЕЛЕНИЕ: УСПЕХ ЭКСПЕДИЦИИ&lt;&gt;
                                -- &lt;MISSIONPRIMARY&gt;SETTLEMENT EXPEDITION SUCCESS&lt;&gt;
                                { "Russian", "&lt;MISSIONPRIMARY&gt;УСПЕХ ЭКСПЕДИЦИИ ПОСЕЛЕНЦЕВ&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_EXPED_WIN_TEXT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Экспедиция вернулась с трофеями: %NUM% х %ITEM%!
                                -- Expedition has returned with %ITEM% x %NUM%!
                                { "Russian", "Результаты экспедиции: %ITEM% × %NUM%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_EXPED_FAIL_TITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;FUEL&gt;ПОСЕЛЕНИЕ: ПРОВАЛ ЭКСПЕДИЦИИ&lt;&gt;
                                -- &lt;FUEL&gt;SETTLEMENT EXPEDITION FAILURE&lt;&gt;
                                { "Russian", "&lt;FUEL&gt;ПРОВАЛ ЭКСПЕДИЦИИ ПОСЕЛЕНЦЕВ&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_EXPED_FAIL_TEXT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Инициатива жителей привела к катастрофе
                                -- Citizen mission ended in disaster
                                { "Russian", "Инициатива жителей привела к катастрофе" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_EXPED_FAIL_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Потеряно жителей: %NUM%
                                -- %NUM% citizens lost
                                { "Russian", "%NUM% жителей потеряно" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_EXPED_START_TITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;MISSIONPRIMARY&gt;ПОСЕЛЕНИЕ: ЭКСПЕДИЦИЯ НАЧАЛАСЬ&lt;&gt;
                                -- &lt;MISSIONPRIMARY&gt;SETTLEMENT EXPEDITION BEGUN&lt;&gt;
                                { "Russian", "&lt;MISSIONPRIMARY&gt;НАЧАЛАСЬ ЭКСПЕДИЦИЯ ПОСЕЛЕНЦЕВ&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_EXPED_START_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Когда появятся результаты, вам сообщат.
                                -- Results will be transmitted when available
                                { "Russian", "О результатах сообщат позднее" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_EXPED_TITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поселение: информация об экспедиции
                                -- Settlement Expedition Details
                                { "Russian", "Экспедиция поселенцев" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_EXPED_OBJ" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Дождитесь ее результатов
                                -- Wait for expedition results
                                { "Russian", "Дождаться окончания экспедиции" },
                            }
                        },
                        --#endregion

                        --#region UI_JUDGEMENT_POLICY.*_INTRO
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_POLICY_INTRO" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Наши %ADVISORS% %WORRY% %TREND% следующему действию или товару среди жителей: &lt;STELLAR&gt;%SUBJECT%&lt;&gt;
                                -- Our %ADVISORS% %WORRY% %TREND% &lt;STELLAR&gt;%SUBJECT%&lt;&gt; among the citizens
                                { "Russian", "Наши %ADVISORS% %WORRY% тем, что такие вещи, как &lt;STELLAR&gt;%SUBJECT%&lt;&gt;, %TREND%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_POLICY3_INTRO1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Наши %ADVISORS% предоставили конфликтующие запросы средств.
                                -- Our %ADVISORS% have submitted competing proposals for funds
                                { "Russian", "Наши %ADVISORS% предоставили конфликтующие предложения расхода средств" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_POLICY3_INTRO2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Наши %ADVISORS% находятся в поисках новых проектов.
                                -- Our %ADVISORS% are looking for a new project
                                { "Russian", "Наши %ADVISORS% находятся в поиске нового проекта" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_POLICY3_INTRO3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Наши %ADVISORS% хотят улучшить поселение, но не уверены в направлении.
                                -- Our %ADVISORS% wish to improve the settlement, but are unsure how to proceed
                                { "Russian", "Наши %ADVISORS% хотят улучшить поселение, но не уверены в направлении" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_POLICY3_INTRO4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Наши %ADVISORS% жаждут улучшить поселение.
                                -- Our %ADVISORS% are keen to improve the settlement
                                { "Russian", "Наши %ADVISORS% жаждут улучшить поселение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_POLICY3_INTRO5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Наши %ADVISORS% представили два проекта по улучшению поселения.
                                -- Two sets of %ADVISORS% are keen you endorse their proposals for settlement
                                { "Russian", "Наши %ADVISORS% представили два проекта по улучшению поселения" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_POLICY4_INTRO1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Нам предложено несколько возможных направлений исследования, но наши %ADVISORS% не могут определиться с выбором.
                                -- Several new research opportunities have arisen, but our %ADVISORS% are divided
                                { "Russian", "Нам предложено несколько возможных направлений исследования, но наши %ADVISORS% не могут определиться с выбором" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_POLICY4_INTRO2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Наши %ADVISORS% близки к совершению открытия, но не могут решить, чему отдать приоритет.
                                -- Our %ADVISORS% are close to a breakthrough, but cannot agree what to prioritise
                                { "Russian", "Наши %ADVISORS% близки к совершению открытия, но не могут решить, чему отдать приоритет" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_POLICY4_INTRO3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Наши %ADVISORS% разделились во мнениях.
                                -- Our %ADVISORS% are divided. Each have their own agenda
                                { "Russian", "Наши %ADVISORS% разделились во мнениях" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_POLICY4_INTRO4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Команды наших исследователей перессорились друг с другом. Они принесли конфликтующие предложения.
                                -- Our research teams are at loggerheads. They have competing proposals
                                { "Russian", "Команды наших исследователей перессорились друг с другом. Они принесли конфликтующие предложения" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_POLICY4_INTRO5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Команды наших исследователей загнали себя в безвыходное положение. Обеим командам нужно финансирование.
                                -- Our research teams are at an impasse. Both teams require funding
                                { "Russian", "Команды наших исследователей загнали себя в безвыходное положение. Обеим командам нужно финансирование" },
                            }
                        },
                        --#endregion

                        --#region UI_JUDGEMENT_POLICY_TREND
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_POLICY_TREND1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- всплеском интереса к
                                { "Russian", "вызвали всплеск интереса у жителей" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_POLICY_TREND2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- увеличением интереса к
                                { "Russian", "имеют повышенный интерес среди жителей" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_POLICY_TREND3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- повышенным вниманием к
                                { "Russian", "привлекли внимание жителей" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_POLICY_TREND4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- излишней любовью к
                                { "Russian", "пользуются излишней любовью среди жителей" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_POLICY_TREND5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- значительным интересом к
                                { "Russian", "пользуются значительным интересом среди жителей" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_POLICY_TREND6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- безумным интересом к
                                { "Russian", "имеют безумный интерес среди жителей" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_POLICY_TREND7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- исключительной любовью к
                                { "Russian", "получили исключительную любовь среди жителей" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_POLICY_TREND8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- всеобщим вниманием к
                                { "Russian", "пользуются всеобщим вниманием у жителей" },
                            }
                        },
                        --#endregion

                        --#region UI_JUDGEMENT_POLICY.*_DETAIL
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_POLICY_DETAIL_TAX1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Они считают разумным введение налога для снижения интереса и улучшения финансовой ситуации в поселении.
                                -- They feel it would be prudent to impose a tax, to both dampen enthusiasm and improve the settlement's finances
                                { "Russian", "Они считают разумным введение налога для снижения интереса и улучшения финансовой ситуации в поселении" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_POLICY_DETAIL_TAX2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Они предлагают ввести большой налог, чтобы воспользоваться этим помешательством.
                                -- They suggest the imposition of a hefty tax, to take advantage of this mania for as long as it persists
                                { "Russian", "Они предлагают ввести большой налог, чтобы воспользоваться этим помешательством" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_POLICY_DETAIL_TAX3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Они считают, что введение налога положит конец этому тренду или поселение хотя бы заработает на этом.
                                -- They feel creating a new tax will reverse this trend, or if not, then at least the settlement will profit
                                { "Russian", "Они считают, что введение налога положит конец этому тренду или поселение хотя бы заработает на этом" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_POLICY_DETAIL_TAX4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Они уверены, что куратор понимает, какая им представилась возможность, и показывают расчеты прибыли от налогов.
                                -- They trust the Overseer senses the opportunity this presents, and present the figures a tax would generate..
                                { "Russian", "Они уверены, что куратор понимает, какая им представилась возможность, и показывают расчеты прибыли от налогов.." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_POLICY_DETAIL_TAX5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Они отмечают, что не имеют права запрещать гражданам что-либо. Также они говорят о том, какой эффект может оказать налог на этот тренд.
                                -- They note it is not their place to dictate what citizens can or cannot do. They also note the effect a tax may have on this trend..
                                { "Russian", "Они отмечают, что не имеют права запрещать гражданам что-либо. Также они говорят о том, какой эффект может оказать налог на этот тренд.." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_POLICY_DETAIL_TAX6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Они считают, что новый налог улучшит ситуацию и поможет поселению заработать.
                                -- They feel a new tax would reduce their worries, as well as being beneficial for the settlement's finances
                                { "Russian", "Они считают, что новый налог улучшит ситуацию и поможет поселению заработать" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_POLICY_DETAIL_BAN1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Им кажется, что единственным разумным решением будет лишь немедленное введение запрета.
                                -- They feel the only sensible action would be an immediate ban
                                { "Russian", "Им кажется, что единственным разумным решением будет лишь немедленное введение запрета" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_POLICY_DETAIL_BAN2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Нужно действовать. Они предлагают немедленно ввести запрет.
                                -- Action must be taken. They suggest an immediate ban
                                { "Russian", "Нужно действовать. Они предлагают немедленно ввести запрет" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_POLICY_DETAIL_BAN3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Хоть лишь %MIDNUM1% жителей поддерживают введение запрета, они считают, что других вариантов нет.
                                -- Though only %MIDNUM1% of the citizens would support a ban, they feel there is no other course of action available
                                { "Russian", "Хоть лишь %MIDNUM1% жителей поддерживают введение запрета, они считают, что других вариантов нет" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_POLICY_DETAIL_BAN4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Это возмутительно и должно быть немедленно запрещено.
                                -- Such things cannot be permitted. They demand an immediate ban
                                { "Russian", "Это возмутительно и должно быть немедленно запрещено" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_POLICY_DETAIL_BAN5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Они считают это отвратительным и просят незамедлительно принять меры.
                                -- They find this abhorrent, and ask that you take immediate steps
                                { "Russian", "Они считают это отвратительным и просят незамедлительно принять меры" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_POLICY_DETAIL_BAN6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Жителей это не устраивает. Лишь %MIDNUM1% из них поддерживают введение запрета.
                                -- They are at odds with the citizens, only %MIDNUM1% of whom would support a ban
                                { "Russian", "Жителей это не устраивает. Лишь %MIDNUM1% из них поддерживают введение запрета" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_POLICY_DETAIL_BAN7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Они считают, что куратор разделяет их опасения и примет разумные меры.
                                -- They trust the Overseer shares their concerns and will take the sensible course of action
                                { "Russian", "Они считают, что куратор разделяет их опасения и примет разумные меры" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_POLICY_DETAIL_BAN8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Они настаивают на немедленном принятии корректирующих мер.
                                -- They insist upon immediate corrective action
                                { "Russian", "Они настаивают на немедленном принятии корректирующих мер" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_POLICY3_DETAIL1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Опрос показывает следующий уровень поддержки предложений: %MIDNUM1%% за %OPTION1% и %MIDNUM2%% за %OPTION2%.
                                -- Polling indicates a %MIDNUM1%% approval rating for %OPTION1%, while %MIDNUM2%% approve of %OPTION2%
                                { "Russian", "Опросы показывают следующее: %MIDNUM1%% за %OPTION1%, а %MIDNUM2%% за %OPTION2%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_POLICY3_DETAIL2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Некоторые считают, что %OPTION1% нужнее, а другие хотят поработать над проектом «%OPTION2%».
                                -- Some are hopeful of %OPTION1%, while others are keen to work on %OPTION2%
                                { "Russian", "Некоторые считают, что %OPTION1% нужнее, а другие хотят работать над проектом %OPTION2%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_POLICY3_DETAIL3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Одна фракция прорабатывает проект «%OPTION1%», но другая насмехается над ними и предлагает «%OPTION2%».
                                -- One faction are looking into %OPTION1%, but the others sneer at this approach. They favour %OPTION2%
                                { "Russian", "Одна фракция прорабатывает проект %OPTION1%, а другая насмехается над ними. Они за %OPTION2%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_POLICY3_DETAIL4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Некоторые говорят о важности проекта «%OPTION1%». Другие настаивают, что «%OPTION2%» нужнее для поселения.
                                -- Some argue %OPTION1% is vital. Others insist our priority must be %OPTION2%
                                { "Russian", "Некоторые говорят о важности %OPTION1%. Другие настаивают, что %OPTION2% нужнее" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_POLICY3_DETAIL5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Мнения разделились, и часть населения поддерживает проект «%OPTION1%», а другие — «%OPTION2%».
                                -- There is sharp division between those who prioritise %OPTION1% and those who insist upon %OPTION2%
                                { "Russian", "Мнения разделились. Часть населения поддерживает %OPTION1%, другая — %OPTION2%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_POLICY4_DETAIL1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- В какой проект нам вложиться: «%OPTION1%» или «%OPTION2%»?
                                -- Should we invest in %OPTION1%, or direct research towards %OPTION2%?
                                { "Russian", "В какой проект нам вложиться: %OPTION1% или %OPTION2%?" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_POLICY4_DETAIL2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поддержать ли нам проект «%OPTION1%» или «%OPTION2%»?
                                -- Should we support those who favour %OPTION1%, or direct funding to %OPTION2%?
                                { "Russian", "Поддержать ли нам проект %OPTION1% или %OPTION2%?" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_POLICY4_DETAIL3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Мы можем поддержать проект «%OPTION1%», но другая фракция выступает за проект «%OPTION2%».
                                -- We could be %OPTION1%, though there is a faction who strongly believes in %OPTION2%
                                { "Russian", "Мы можем поддержать %OPTION1%, но другая фракция выступает за %OPTION2%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_POLICY4_DETAIL4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Одна группа настаивает на немедленном воплощении проекта «%OPTION1%», а другая стоит за проект «%OPTION2%».
                                -- One group insists we will fail without immediately %OPTION1%. Another insists the time is ripe for %OPTION2%.
                                { "Russian", "Мы пропадём, если немедленно не начнём %OPTION1% — настаивает одна группа. Другая считает, что пришло время на %OPTION2%." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_POLICY4_DETAIL5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Мы можем инвестировать в проект «%OPTION1%», но людей, поддерживающих проект «%OPTION2%», будет сложно переубедить.
                                -- We could invest in %OPTION1%, though the voices of those who believe in %OPTION2% will not be easily silenced.
                                { "Russian", "Мы можем инвестировать в %OPTION1%, но людей, поддерживающих %OPTION2%, будет сложно переубедить." },
                            }
                        },
                        --#endregion

                        --#region UI_JUDGEMENT_CONFLICT.*_FORMAT
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_CONFLICT2_FORMAT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Торговец по имени %NAME1% спорит с покупателем. Речь идет о товаре «%TRADEITEM%», который %FAULT%. %FAULT_DETAIL%.
                                -- A merchant, %NAME1%, is in a dispute with a customer. It concerns %TRADEITEM%, which %FAULT%. %FAULT_DETAIL%.
                                { "Russian", "Торговец %NAME1% спорит с покупателем. Речь идёт о товаре “%TRADEITEM%”, который %FAULT%. %FAULT_DETAIL%." },
                            }
                        },
                        --#endregion

                        --#region UI_JUDGEMENT_TRADE_FAULT
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_TRADE_FAULT11" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- взорвался внутрь сразу после покупки
                                -- imploded shortly after purchase
                                { "Russian", "скукожился сразу после покупки" },
                            }
                        },
                        --#endregion

                        --#region UI_JUDGEMENT_TRADE_BREAK
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_TRADE_BREAK3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- взорвался внутрь сразу после покупки
                                { "Russian", "скукожился сразу после покупки" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_TRADE_BREAK7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- не выполняет свою функцию
                                { "Russian", "не выполняет свои функции" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_TRADE_BREAK13" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- сильно поврежден
                                { "Russian", "сильно повреждён" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_TRADE_BREAK15" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- постоянно издает шипящий звук
                                { "Russian", "постоянно издаёт шипящий звук" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_TRADE_BREAK17" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- испускает дым
                                { "Russian", "дымится" },
                            }
                        },
                        --#endregion

                        --#region UI_JUDGEMENT_NEED_INTRO
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_NEED_INTRO1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Посетитель по имени %NAME1% просит о помощи.
                                { "Russian", "Посетитель %NAME1% просит о помощи" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_NEED_INTRO2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Посетитель по имени %NAME1% пришел к нам с просьбой о помощи.
                                { "Russian", "Посетитель %NAME1% пришёл к нам с просьбой о помощи" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_NEED_INTRO3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Незнакомец по имени %NAME1% пришел в поселение с просьбой.
                                { "Russian", "Незнакомец %NAME1% пришёл в поселение с просьбой" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_NEED_INTRO4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Посетитель по имени %NAME1% пришел к нам за помощью.
                                { "Russian", "Посетитель %NAME1% пришёл к нам за помощью" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_NEED_INTRO5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Путешественник по имени %NAME1% забрел в наше поселение. Ему требуется помощь.
                                { "Russian", "Путешественник %NAME1% забрёл в наше поселение. Ему требуется помощь" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_NEED_INTRO6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Гость по имени %NAME1% прибыл из неизвестных краев.
                                { "Russian", "Гость %NAME1% прибыл из неизвестных краёв" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_NEED_INTRO7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Гость по имени %NAME1% просит о помощи.
                                { "Russian", "Гость %NAME1% просит о помощи" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_NEED_INTRO8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Незнакомец по имени %NAME1% был обнаружен у стен поселения.
                                { "Russian", "Незнакомец %NAME1% был обнаружен у стен поселения" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_NEED_INTRO9" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Разведчики обнаружили странника по имени %NAME1% в бессознательном состоянии. Его оживили и привели в поселение.
                                -- %NAME1% was found unconscious by our scouts. Having been revived, they were escorted to the settlement
                                { "Russian", "Наши разведчики обнаружили %NAME1% в бессознательном состоянии. Его оживили и привели в поселение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_NEED_INTRO10" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Путник по имени %NAME1% благодарит и превозносит нас за то, что мы выслушали его просьбу.
                                -- A passing stranger, %NAME1%, offers us thanks and praise for hearing their request.
                                { "Russian", "Путник %NAME1% благодарит и хвалит нас за то, что мы выслушали его просьбу" },
                            }
                        },
                        --#endregion

                        --#region UI_JUDGEMENT_VISITOR_NEED
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_VISITOR_NEED1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Гостю необходима медицинская помощь, его органы (%ORGAN%) сильно повреждены.
                                -- They are in need of medical attention, with severe damage to their %ORGAN%
                                { "Russian", "Гостю необходима медицинская помощь. Его органы сильно повреждены, а именно, %ORGAN%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_VISITOR_NEED2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Гость просит убежища. Он не вдается в подробности и не сообщает, на какое время намерен задержаться.
                                { "Russian", "Гость просит убежища. Он не вдается в подробности и не сообщает, на какое время намерен задержаться" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_VISITOR_NEED3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Гость утверждает, что его защита от вредных факторов вышла из строя, ему требуются укрытие и ремонт.
                                { "Russian", "Гость утверждает, что его защита от вредных факторов вышла из строя, ему требуются укрытие и ремонт" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_VISITOR_NEED4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Нашего гостя преследуют Стражи, и он надеется укрыться от них за нашими стенами.
                                { "Russian", "Нашего гостя преследуют Стражи, и он надеется укрыться от них за нашими стенами" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_VISITOR_NEED5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Гость утверждает, что его звездолет вышел из строя, ему нужны инструменты и материалы для ремонта.
                                { "Russian", "Гость утверждает, что его звездолёт вышел из строя, ему нужны инструменты и материалы для ремонта" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_VISITOR_NEED6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Гость утверждает, что его система связи вышла из строя. Ему нужно связаться со своей родной станцией.
                                { "Russian", "Гость утверждает, что его система связи вышла из строя. Ему нужно связаться со своей родной станцией" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_VISITOR_NEED7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Гость говорит, что ранен и его органы (%ORGAN%) требуют лечения, но не рассказывает, как это произошло. У его ног собирается лужа жидкости.
                                -- They have damaged their %ORGAN%, but they do not explain how. A puddle of liquid is accumulating at their feet
                                { "Russian", "Гость повредил свои органы, а именно, %ORGAN%, но не говорит как это произошло. Возле его ног собирается лужа жидкости" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_VISITOR_NEED8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Гость утверждает, что на него напали пираты. Он просит предоставить ему оружие, чтобы отомстить.
                                { "Russian", "Гость утверждает, что на него напали пираты. Он просит предоставить ему оружие, чтобы отомстить" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_VISITOR_NEED9" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- По словам гостя, он оказался единственным выжившим в нападении пиратов на грузовой корабль. Он просит лишь вернуть его на космическую станцию.
                                { "Russian", "По словам гостя, он оказался единственным выжившим в нападении пиратов на грузовой корабль. Он просит лишь вернуть его на космическую станцию" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_VISITOR_NEED10" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Гость утверждает, что потерял память и просит помочь установить его личность. Единственной подсказкой являются несколько знаков, вытатуированных на его руках...
                                -- They claim to have lost their memory and ask for help discovering their identity. Their only clue is a series of glyphs tattooed upon their hands..
                                { "Russian", "Гость утверждает, что потерял память и просит помочь установить его личность. Единственной подсказка — татуировки на его руках с последовательностями знаков.." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_VISITOR_NEED11" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Гость просит передать ему звездолет во временное пользование, но не говорит зачем. Он многословно обещает позаботиться о корабле.
                                { "Russian", "Гость просит передать ему звездолёт во временное пользование, но не говорит зачем. Он многословно обещает позаботиться о корабле" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_VISITOR_NEED12" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Гость просит прощения за неудобства. Ему нужен лишь небольшой «кредит». Он обещает нам большую награду.
                                { "Russian", "Гость просит прощения за неудобства. Ему нужен лишь небольшой “кредит”. Он обещает нам большую награду" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_VISITOR_NEED13" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Гость ищет потерянного члена семьи, но почти полностью исчерпал свои припасы. В его взгляде сквозит неподдельное горе.
                                { "Russian", "Гость ищет потерянного члена семьи, но почти полностью исчерпал свои припасы. В его взгляде сквозит неподдельное горе" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_VISITOR_NEED14" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Гость утверждает, что ищет пропавшее существо. Судя по голосу, он очень торопится.
                                -- They claim to be on the trail of a missing person. The urgency in their voice is unsettling
                                { "Russian", "Гость утверждает, что ищет пропавшего. Судя по голосу, он очень торопится" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_VISITOR_NEED15" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Гость просит дать ему немного еды и обещает, что больше нас не потревожит.
                                { "Russian", "Гость просит дать ему немного еды и обещает, что больше нас не потревожит" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_VISITOR_NEED16" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Гость утверждает, что его последние припасы были украдены, и просит помочь ему самым необходимым.
                                { "Russian", "Гость утверждает, что его последние припасы были украдены, и просит помочь ему самым необходимым" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_VISITOR_NEED17" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Гость заявляет, что находится на пороге великого открытия и нуждается в небольшой сумме, чтобы продолжить исследования. Он предлагает поделиться результатами, когда они появятся...
                                -- They claim to be on the verge of a great discovery, and need only a small advance to continue their research. They offer to share their success, when it comes..
                                { "Russian", "Гость заявляет, что находится на пороге великого открытия и нуждается в небольшой сумме, чтобы продолжить исследования. Он предлагает поделиться результатами, когда они появятся.." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_VISITOR_NEED19" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Гость утверждает, что %THREAT% уничтожили его базу и вынудили бежать. Он просит дать ему припасов, чтобы иметь возможность спастись.
                                { "Russian", "Гость утверждает, что %THREAT% уничтожили его базу и вынудили бежать. Он просит дать ему припасов, чтобы спастись" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_VISITOR_NEED20" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Гость не имеет даже самого необходимого и бормочет, что на него напали %THREAT%.
                                { "Russian", "Гость не имеет даже самого необходимого и бормочет, что на него напали %THREAT%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_VISITOR_NEED21" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Гость утверждает, что %THREAT% напали на него, и в результате его %ORGAN% не функционирует.
                                -- They claim an encounter with %THREAT% has left them with damage to their %ORGAN%
                                { "Russian", "Гость утверждает, что %THREAT% напали на него и повредили его органы, а именно, %ORGAN%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_VISITOR_NEED22" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Этот гость говорит, что его цель — %THREAT%, и требует нашей помощи.
                                { "Russian", "Этот гость говорит, что его цель — %THREAT%, и требует нашей помощи" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_VISITOR_NEED23" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Гость заявляет, что %THREAT% уничтожили его припасы, бросив на этой планете умирать. Он просит доставить его в безопасное место.
                                { "Russian", "Гость заявляет, что %THREAT% уничтожили его припасы, бросив на этой планете умирать. Он просит доставить его в безопасное место" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_VISITOR_NEED24" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Наш гость перехватил сигнал бедствия, в котором упоминались %THREAT%, но не смог найти его источник. Он просит дать ему припасы, чтобы продолжить поиск.
                                -- They intercepted a distress signal about %THREAT%, but have failed to find its source. They ask for supplies to continue their search
                                { "Russian", "Гость перехватил сигнал бедствия, в котором упоминались %THREAT%, но не смог найти его источник. Для продожения поисков, он просит дать ему припасы" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_VISITOR_NEED25" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Это существо утверждает, что %THREAT% уничтожили его звездолет, и просит помочь ему добраться до космической станции.
                                -- They claim their starship was destroyed by %THREAT%, and ask for aid in reaching the space station
                                { "Russian", "Гость утверждает, что %THREAT% уничтожили его звездолёт, и просит помочь ему добраться до космической станции" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_VISITOR_NEED26" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Гость немногословен. Он просит дать ему оружие и сообщает, что его цель — %THREAT%.
                                -- They supply few details, but ask for weapons so they might seek vengeance against %THREAT%
                                { "Russian", "Гость немногословен, но просит дать оружие и сообщает, что его цель — %THREAT%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_VISITOR_NEED27" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Существо тараторит о том, как %THREAT% обидели его, и просит помощи.
                                -- They deliver an urgent rant about %THREAT%, and request our assistance
                                { "Russian", "Гость тараторит и просит помощи. Из его истории ясно, что в ней замешаны %THREAT%" },
                            }
                        },
                        --#endregion

                        --#region UI_JUDGEMENT_VISITOR_THREAT
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_VISITOR_THREAT1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- «ночные звери»
                                { "Russian", "&quot;ночные звери&quot;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_VISITOR_THREAT3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- «таинственные силы»
                                { "Russian", "&quot;таинственные силы&quot;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_VISITOR_THREAT6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- «те, что не имеют имени»
                                -- &quot;that which has no name&quot;
                                { "Russian", "&quot;те, что не имеют имени&quot;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_VISITOR_THREAT14" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- пилоты серебристого звездолета
                                -- a silvery, hovering starship
                                { "Russian", "пилоты серебристого звездолёта" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_VISITOR_THREAT15" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- мерзкая стая
                                { "Russian", "мерзкие стаи" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_VISITOR_THREAT16" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- «потерянные»
                                -- &quot;the lost ones&quot;
                                { "Russian", "&quot;потерянные&quot;" },
                            }
                        },
                        --#endregion

                        --#region UI_JUDGEMENT_STRANGE_INTRO
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_STRANGE_INTRO1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Гость по имени %NAME1% заявляет, что видел это поселение во сне.
                                { "Russian", "%NAME1% заявляет, что видел это поселение во сне" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_STRANGE_INTRO2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Гость по имени %NAME1% утверждает, что его прислали сюда могущественные (но неизвестные) силы.
                                { "Russian", "%NAME1% утверждает, что его прислали сюда могущественные, но неизвестные, силы" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_STRANGE_INTRO3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Гость по имени %NAME1% заявляет, что его привело сюда видение.
                                { "Russian", "%NAME1% заявляет, что его привело сюда видение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_STRANGE_INTRO4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Гость по имени %NAME1% говорит, что эхо указывало ему путь и привело сюда.
                                { "Russian", "%NAME1% говорит, что эхо указывало ему путь и привело сюда" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_STRANGE_INTRO5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Гость по имени %NAME1% спрашивает, слышали ли мы песню, которая привела его сюда.
                                { "Russian", "%NAME1% спрашивает, слышали ли мы песню, которая привела его сюда" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_STRANGE_INTRO6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Гость по имени %NAME1% заявляет, что искал источник автоматического сигнала бедствия.
                                { "Russian", "%NAME1% заявляет, что искал источник автоматического сигнала бедствия" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_STRANGE_INTRO7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Гость по имени %NAME1% говорит, что его привел сюда шепчущий голос.
                                { "Russian", "%NAME1% говорит, что его привел сюда шепчущий голос" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_STRANGE_INTRO8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Гость по имени %NAME1% требует аудиенции. Наши врачи заметили, что у него лихорадка.
                                { "Russian", "%NAME1% требует аудиенции. Наши врачи заметили, что у него лихорадка" },
                            }
                        },
                        --#endregion

                        --#region UI_JUDGEMENT_STRANGE_DETAIL
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_STRANGE_DETAIL1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Гость говорит только это: &lt;FUEL&gt; 16 / 16 / 16&lt;&gt;
                                -- They say only this: &lt;FUEL&gt;16 / 16 / 16&lt;&gt;
                                { "Russian", "Гость говорит только это: &lt;FUEL&gt;16 / 16 / 16&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_STRANGE_DETAIL2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Гость вдохнул нанитовую пену и предупредил нас о следующем: &lt;FUEL&gt;%UNTRANSLATED%&lt;&gt;
                                -- They have inhaled the nanite foam, and share this warning: &lt;FUEL&gt;%UNTRANSLATED%&lt;&gt;
                                { "Russian", "Гость вдохнул нанитовую пену и делится предупреждением: &lt;FUEL&gt;%UNTRANSLATED%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_STRANGE_DETAIL5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Гость прошел сквозь черную дыру и пришел поделиться словами, услышанными за горизонтом: &lt;FUEL&gt;%UNTRANSLATED%&lt;&gt;
                                -- They have travelled through a black hole, and now share the words they heard beyond the horizon:  &lt;FUEL&gt;%UNTRANSLATED%&lt;&gt;
                                { "Russian", "Гость прошел сквозь чёрную дыру и сейчас делится словами, услышанными за горизонтом: &lt;FUEL&gt;%UNTRANSLATED%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_STRANGE_DETAIL6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Гость видел звезды и бездну и теперь хочет поделиться их словами: &lt;FUEL&gt;%UNTRANSLATED%&lt;&gt;
                                { "Russian", "Гость видел звёзды и бездну и теперь хочет поделиться их словами: &lt;FUEL&gt;%UNTRANSLATED%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_STRANGE_DETAIL7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Гость узрел багрянец, скрывающийся среди звезд, и хочет поделиться его предупреждением: &lt;FUEL&gt;%UNTRANSLATED%&lt;&gt;
                                -- They have faced the crimson that lurks beyond the stars, and share this warning: &lt;FUEL&gt;%UNTRANSLATED%&lt;&gt;
                                { "Russian", "Гость узрел багрянец, скрывающийся среди звёзд, и делится следующим предупреждением: &lt;FUEL&gt;%UNTRANSLATED%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_STRANGE_DETAIL8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Гость сбежал от ужасов заброшенного судна, чтобы принести нам его предупреждение: &lt;FUEL&gt;%UNTRANSLATED%&lt;&gt;
                                -- They fled the horrors of a derelict hulk to bring us this warning: &lt;FUEL&gt;%UNTRANSLATED%&lt;&gt;
                                { "Russian", "Гость сбежал от ужасов заброшенного судна, чтобы принести нам предупреждение: &lt;FUEL&gt;%UNTRANSLATED%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_STRANGE_DETAIL9" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Гость съел шепчущие яйца и хочет рассказать их послание: &lt;FUEL&gt;%UNTRANSLATED%&lt;&gt;
                                -- They have consumed the whispering eggs, and now bring us this message: &lt;FUEL&gt;%UNTRANSLATED%&lt;&gt;
                                { "Russian", "Гость съел шепчущие яйца, а сейчас просит выслушать послание: &lt;FUEL&gt;%UNTRANSLATED%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_STRANGE_DETAIL10" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Гость сражался с шепчущими ужасами, чтобы предупредить нас: &lt;FUEL&gt;%UNTRANSLATED%&lt;&gt;
                                -- They have fought the whispering horrors to bring us this warning: &lt;FUEL&gt;%UNTRANSLATED%&lt;&gt;
                                { "Russian", "Гость сражался с шепчущими ужасами, чтобы принести весть: &lt;FUEL&gt;%UNTRANSLATED%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_STRANGE_DETAIL11" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Гость несет нам слова, вырванные из пасти глубинного ужаса: &lt;FUEL&gt;%UNTRANSLATED%&lt;&gt;
                                -- They bring the words they wrested from the jaws of an abyssal horror: &lt;FUEL&gt;%UNTRANSLATED%&lt;&gt;
                                { "Russian", "Гость принёс слова, вырванные из пасти глубинного ужаса: &lt;FUEL&gt;%UNTRANSLATED%&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region UI_JUDGEMENT_STRANGE_REQ
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_STRANGE_REQ1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- За эту услугу он просит лишь небольшое пожертвование, мелочевку.
                                -- For this service, they ask only for a small token, a mere trifle
                                { "Russian", "За эту услугу он просит лишь небольшое пожертвование, мелочь" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_STRANGE_REQ2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Гость просит безделицу за свои труды.
                                { "Russian", "Гость просит безделицу за свои труды" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_STRANGE_REQ3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- За свое сообщение гость просит лишь горсть монет.
                                { "Russian", "За свое сообщение гость просит лишь горсть монет" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_STRANGE_REQ4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Он просит нас поделиться какой-нибудь безделушкой в обмен на его сообщение.
                                { "Russian", "Он просит нас поделиться какой-нибудь безделушкой в обмен на его сообщение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_STRANGE_REQ5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- За свою жертву он просит лишь крохотное пожертвование.
                                { "Russian", "За свою жертву он просит лишь крохотное пожертвование" },
                            }
                        },
                        --#endregion

                        --#region UI_JUDGEMENT_CONCEPT_INTRO
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_CONCEPT_INTRO1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Два поселенца соперничают за покупку определенной вещи. Их интересует %CONCEPT%.
                                { "Russian", "Два поселенца соперничают за покупку определенной вещи. Их интересует %CONCEPT%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_CONCEPT_INTRO3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Два поселенца соперничают за одну и ту же вещь. Их интересует %CONCEPT%.
                                { "Russian", "Два поселенца соперничают за одну и ту же вещь. Их интересует %CONCEPT%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_CONCEPT_INTRO4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Два поселенца владеют конкурирующими предприятиями. Обоим требуется %CONCEPT%.
                                { "Russian", "Два поселенца владеют конкурирующими предприятиями. Обоим требуется %CONCEPT%" },
                            }
                        },
                        --#endregion

                        --#region UI_JUDGEMENT_CONCEPT_.*DETAIL
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_CONCEPT_A_DETAIL1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;%NAME1%&lt;&gt; предлагает надежный и безопасный план, но план существа по имени &lt;STELLAR&gt;%NAME2%&lt;&gt; обещает большую прибыль, но может %RISK%.
                                { "Russian", "&lt;TECHNOLOGY&gt;%NAME1%&lt;&gt; предлагает надёжный и безопасный план, но план &lt;STELLAR&gt;%NAME2%&lt;&gt; обещает большую прибыль, но может %RISK%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_CONCEPT_A_DETAIL2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;%NAME1%&lt;&gt; собирается пожертвовать всю прибыль на благотворительность для %CHARITY%, а существо по имени &lt;STELLAR&gt;%NAME2%&lt;&gt; хочет инвестировать ее в поселение %SETTLEMENT%.
                                { "Russian", "&lt;TECHNOLOGY&gt;%NAME1%&lt;&gt; собирается пожертвовать всю прибыль на благотворительность для %CHARITY%, а &lt;STELLAR&gt;%NAME2%&lt;&gt; хочет инвестировать ее в поселение %SETTLEMENT%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_CONCEPT_A_DETAIL3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TRADEABLE&gt;%GOODNUM%%&lt;&gt; населения одобряет план существа по имени &lt;TECHNOLOGY&gt;%NAME1%&lt;&gt;, но стоит помнить, что оно %VICE%. &lt;STELLAR&gt;%NAME2%&lt;&gt; чист перед законом.
                                { "Russian", "&lt;TRADEABLE&gt;%GOODNUM%%&lt;&gt; населения одобряет план &lt;TECHNOLOGY&gt;%NAME1%&lt;&gt;, но стоит помнить, что он %VICE%. &lt;STELLAR&gt;%NAME2%&lt;&gt; чист перед законом" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_CONCEPT_A_DETAIL4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;%NAME1%&lt;&gt; управляет благотворительной организацией для %CHARITY%, а существо по имени &lt;STELLAR&gt;%NAME2%&lt;&gt; ведет обычный бизнес.
                                { "Russian", "&lt;TECHNOLOGY&gt;%NAME1%&lt;&gt; управляет благотворительной организацией для %CHARITY%, а &lt;STELLAR&gt;%NAME2%&lt;&gt; ведёт обычный бизнес" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_CONCEPT_A_DETAIL5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;%NAME1%&lt;&gt; %VICE%, но пользуется большей популярностью чем существо по имени &lt;STELLAR&gt;%NAME2%&lt;&gt;.
                                { "Russian", "&lt;TECHNOLOGY&gt;%NAME1%&lt;&gt; %VICE%, но пользуется большей популярностью чем &lt;STELLAR&gt;%NAME2%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_CONCEPT_A_DETAIL6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;%NAME1%&lt;&gt; предлагает стабильный и простой план, а существо по имени &lt;STELLAR&gt;%NAME2%&lt;&gt; готово рискнуть и %RISK% во имя прогресса.
                                { "Russian", "&lt;TECHNOLOGY&gt;%NAME1%&lt;&gt; предлагает стабильный и простой план, а &lt;STELLAR&gt;%NAME2%&lt;&gt; готово рискнуть и %RISK% во имя прогресса" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_CONCEPT_B_DETAIL1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;%NAME1%&lt;&gt; обладает большим опытом управления, но, если лишить существо по имени &lt;STELLAR&gt;%NAME2%&lt;&gt; этой возможности, оно может обанкротиться.
                                { "Russian", "&lt;TECHNOLOGY&gt;%NAME1%&lt;&gt; обладает большим опытом управления, но, если лишить &lt;STELLAR&gt;%NAME2%&lt;&gt; этой возможности, он может обанкротиться" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_CONCEPT_B_DETAIL2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;%NAME1%&lt;&gt; собирается инвестировать прибыль в поселение %SETTLEMENT%, а существо по имени &lt;STELLAR&gt;%NAME2%&lt;&gt; хочет пожертвовать ее на благотворительность для %CHARITY%.
                                { "Russian", "&lt;TECHNOLOGY&gt;%NAME1%&lt;&gt; собирается инвестировать прибыль в поселение %SETTLEMENT%, а &lt;STELLAR&gt;%NAME2%&lt;&gt; хочет пожертвовать ее на благотворительность для %CHARITY%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_CONCEPT_B_DETAIL3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;%NAME1%&lt;&gt; известен своей предпринимательской жилкой, но %VICE%. &lt;STELLAR&gt;%NAME2%&lt;&gt; планирует поделиться прибылью с сообществом.
                                { "Russian", "&lt;TECHNOLOGY&gt;%NAME1%&lt;&gt; известен своей предпринимательской жилкой, но %VICE%. &lt;STELLAR&gt;%NAME2%&lt;&gt; планирует поделиться прибылью с сообществом" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_CONCEPT_B_DETAIL4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;%NAME1%&lt;&gt; предлагает идею, которая обязательно принесет прибыль, но может %RISK%. &lt;STELLAR&gt;%NAME2%&lt;&gt; хочет отдать деньги на благотворительность для %CHARITY%.
                                { "Russian", "&lt;TECHNOLOGY&gt;%NAME1%&lt;&gt; предлагает идею, которая обязательно принесёт прибыль, но может %RISK%. &lt;STELLAR&gt;%NAME2%&lt;&gt; хочет отдать деньги на благотворительность для %CHARITY%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_CONCEPT_B_DETAIL5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;%NAME1%&lt;&gt; утверждает, что его план не может %RISK%, а существо по имени &lt;STELLAR&gt;%NAME2%&lt;&gt; настаивает, что больше не %VICE%.
                                { "Russian", "&lt;TECHNOLOGY&gt;%NAME1%&lt;&gt; утверждает, что его план не может %RISK%, а &lt;STELLAR&gt;%NAME2%&lt;&gt; настаивает, что больше не %VICE%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_CONCEPT_B_DETAIL6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Бизнес существа по имени &lt;TECHNOLOGY&gt;%NAME1%&lt;&gt; иногда %RISK%, но приносит большую прибыль. &lt;STELLAR&gt;%NAME2%&lt;&gt; не столь успешен, но его любят жители.
                                { "Russian", "Бизнес &lt;TECHNOLOGY&gt;%NAME1%&lt;&gt; иногда %RISK%, но приносит большую прибыль. &lt;STELLAR&gt;%NAME2%&lt;&gt; не столь успешен, но его любят жители" },
                            }
                        },
                        --#endregion

                        --#region UI_JUDGEMENT_PARTY_INTRO
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_PARTY_INTRO1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Граждане просят устроить праздник в честь %PARTY%.
                                -- The citizenry request a celebration, in honour of %PARTY%
                                { "Russian", "Граждане просят устроить праздник в честь %PARTY%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_PARTY_INTRO2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Граждане просят провести фестиваль в честь %PARTY%
                                -- The citizenry request a festival, to celebrate %PARTY%
                                { "Russian", "Граждане просят провести фестиваль в честь %PARTY%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_PARTY_INTRO3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Жители предложили организовать фестиваль в честь %PARTY%.
                                -- The citizenry have proposed a festival, in recognition of %PARTY%
                                { "Russian", "Жители предложили организовать фестиваль в знак признания %PARTY%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_PARTY_INTRO4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Граждане предложили устроить праздник в честь %PARTY%.
                                { "Russian", "Граждане предложили устроить праздник в честь %PARTY%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_PARTY_INTRO5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Граждане требуют провести парад в честь %PARTY%.
                                { "Russian", "Граждане требуют провести парад в честь %PARTY%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_PARTY_INTRO_RACE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Жители предложили организовать фестиваль, чтобы почтить память %PARTY%.
                                -- The citizenry have proposed a festival, in remembrance of %PARTY%
                                { "Russian", "Жители предложили организовать фестиваль в память %PARTY%" },
                            }
                        },
                        --#endregion

                        --#region UI_JUDGEMENT_PARTY_DETAIL
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_PARTY_DETAIL1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Подобное мероприятие потребует определенных затрат, но опрос показывает, что его проведение поддерживает &lt;TRADEABLE&gt;%GOODNUM%%&lt;&gt; населения.
                                -- Though such an event would not be without cost, polling indicates a &lt;TRADEABLE&gt;%GOODNUM%%&lt;&gt; approval rating
                                { "Russian", "Подобное мероприятие потребует определенных затрат, но опрос показывает, что его проведение поддерживает &lt;TRADEABLE&gt;%GOODNUM%%&lt;&gt; населения" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_PARTY_DETAIL2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Подобное мероприятие будет дорогостоящим, но опрос показывает, что его проведение поддерживают &lt;TRADEABLE&gt;%GOODNUM%%&lt;&gt; жителей.
                                -- Though such an event may prove expensive, polling indicates &lt;TRADEABLE&gt;%GOODNUM%%&lt;&gt; of the citizens approve of the spending
                                { "Russian", "Подобное мероприятие будет дорогостоящим, но опрос показывает, что его проведение поддерживают &lt;TRADEABLE&gt;%GOODNUM%%&lt;&gt; жителей" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_PARTY_DETAIL3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Освобождение всех жителей от работы ради праздника дорого нам обойдется, но &lt;TRADEABLE&gt;%GOODNUM%%&lt;&gt; населения считает, что оно того стоит.
                                -- Though exempting all citizens from work for the event will be costly, &lt;TRADEABLE&gt;%GOODNUM%%&lt;&gt; believe the cost will be worthwhile
                                { "Russian", "Освобождение всех жителей от работы нам дорого обойдется, но &lt;TRADEABLE&gt;%GOODNUM%%&lt;&gt; населения считает, что оно того стоит" },
                            }
                        },
                        --#endregion

                        --#region UI_JUDGEMENT_MISSION_INTRO
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_MISSION_INTRO1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Жаждущие приключений жители предложили организовать экспедицию.
                                -- Adventurous-minded citizens have proposed an expedition
                                { "Russian", "Жаждущие приключений жители предложили организовать экспедицию" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_MISSION_INTRO2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Небольшая группа жителей просит вашего разрешения отправиться в экспедицию.
                                -- A small group of citizens seek your permission to begin an expedition
                                { "Russian", "Небольшая группа жителей просит вашего разрешения отправиться в экспедицию" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_MISSION_INTRO3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Группа отважных жителей хочет покинуть поселение.
                                -- A group of adventurous citizens wish to leave the settlement
                                { "Russian", "Группа искателей приключений хочет покинуть поселение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_MISSION_INTRO4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Часть жителей хочет исследовать планету.
                                -- A number of citizens wish to explore the planet
                                { "Russian", "Часть жителей хочет исследовать планету" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_MISSION_INTRO5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Группа жителей хочет отправиться в экспедицию по планете.
                                -- A group of citizens wish to undertake a expedition across the planet
                                { "Russian", "Группа жителей хочет отправиться в экспедицию по планете" },
                            }
                        },
                        --#endregion

                        --#region UI_JUDGEMENT_MISSION_DETAIL
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_MISSION_DETAIL1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Они хотят выяснить судьбу бывшего куратора, который сбежал из поселения, чтобы жить в пещерах.
                                { "Russian", "Они хотят выяснить судьбу бывшего куратора, который сбежал из поселения, чтобы жить в пещерах" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_MISSION_DETAIL2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Они обнаружили неподалеку разбившийся грузовой корабль и считают, что могут добыть ценный лом.
                                { "Russian", "Они обнаружили неподалеку разбившийся грузовой корабль и считают, что могут добыть ценный лом" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_MISSION_DETAIL3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Они считают, что обнаружили гнездо биологических ужасов и хотят уничтожить их ради всеобщего блага.
                                { "Russian", "Они считают, что обнаружили гнездо биологического ужаса и хотят уничтожить его ради всеобщего блага" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_MISSION_DETAIL4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Они хотят испытать свое новое подводное снаряжение и надеются добыть под водой ценные самоцветы.
                                { "Russian", "Они хотят испытать свое новое подводное снаряжение и надеются добыть под водой ценные самоцветы" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_MISSION_DETAIL5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Их всех посещает пугающий багровый сон. Красное эхо ведет их в заброшенное строение, расположенное вне поселения, и они настроены найти ответы.
                                { "Russian", "Их всех посещает пугающий багровый сон. Красное эхо ведет их в заброшенное строение, расположенное вне поселения, и они настроены найти ответы" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_MISSION_DETAIL6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Они хотят провести тестовое бурение в местной сети пещер. Согласно карте там расположено несколько залежей ценных минералов, правда, до них еще надо добраться.
                                { "Russian", "Они хотят провести тестовое бурение в местной сети пещер. Согласно карте там расположено несколько залежей ценных минералов, правда, до них еще надо добраться" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_MISSION_DETAIL7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Они поймали сигнал бедствия на планетарном радаре. Источник находится в нескольких днях пути, но долг призывает их ответить на него.
                                { "Russian", "Они поймали сигнал бедствия на планетарном радаре. Источник находится в нескольких днях пути, но долг призывает их ответить на него" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_MISSION_DETAIL8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Недавно в верхних слоях атмосферы пираты напали на грузовой флот. Они предлагают собрать лом и обломки упавших кораблей.
                                { "Russian", "Недавно в верхних слоях атмосферы пираты напали на грузовой флот. Они предлагают собрать лом и обломки разбившихся кораблей" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_MISSION_DETAIL9" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Их погодный алгоритм показывает, что скоро может образоваться кристалл бури. Они модифицировали тяжелый экзокостюм «Минотавр» и хотят испытать его.
                                { "Russian", "Их погодный алгоритм показывает, что скоро может образоваться кристалл бури. Они модифицировали тяжелый экзокостюм Минотавр и хотят испытать его" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_MISSION_DETAIL10" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Они отслеживают потрясающий метеоритный дождь и хотят найти место его падения, чтобы собрать все, что смогут обнаружить: ценные минералы, космическую пыль, инопланетные микробы и так далее.
                                { "Russian", "Они отслеживают потрясающий метеоритный дождь и хотят найти место его падения, чтобы собрать все, что смогут обнаружить: минералы, космическую пыль, инопланетных микробов и так далее" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_MISSION_DETAIL11" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Они хотят провести тщательное исследование местной фауны и пополнить каталог ДНК, который пригодится поселению.
                                { "Russian", "Они хотят провести тщательное исследование местной фауны и пополнить каталог ДНК, который пригодится поселению" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_MISSION_DETAIL12" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Они хотят провести тщательное исследование местной флоры и пополнить каталог семян, который пригодится поселению.
                                { "Russian", "Они хотят провести тщательное исследование местной флоры и пополнить каталог семян, который пригодится поселению" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_MISSION_DETAIL13" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Они хотят сделать фотографии окружающей поселение территории, чтобы мы смогли лучше понять и оценить планету, которую теперь называем своим домом.
                                { "Russian", "Они хотят сделать фотографии окружающей территории, чтобы мы смогли лучше понять и оценить планету, которую теперь называем своим домом" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_MISSION_DETAIL14" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Они разрабатывают программу обучения и разведения животных, и потому хотят найти подходящих питомцев среди местной фауны.
                                { "Russian", "Они разрабатывают программу обучения и разведения животных, и потому хотят найти подходящих питомцев среди местной фауны" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_MISSION_DETAIL15" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Их друг покинул поселение ночью и не вернулся. Они поклялись найти и спасти его или же почтить его память.
                                { "Russian", "Их друг покинул поселение ночью и не вернулся. Они поклялись найти и спасти его или же почтить его память" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_MISSION_DETAIL16" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Они хотят найти ценные ресурсы на планете и надеются, что их карты сформируют основу для будущих экспедиций, которые принесут поселению славу и богатство.
                                { "Russian", "Они хотят найти ценные ресурсы на планете и надеются, что их карты сформируют основу для будущих экспедиций, которые принесут поселению славу и богатство" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_MISSION_DETAIL17" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Они слишком долго сидели внутри поселения. Им просто хочется отправиться на поиски приключений и неизведанного.
                                { "Russian", "Они слишком долго сидели внутри поселения. Им просто хочется отправиться на поиски приключений и неизведанного" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_MISSION_DETAIL18" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Они наткнулись на древнюю карту, на которой отмечено расположенное в нескольких днях пути место захоронения реликвии, и хотят найти ее.
                                { "Russian", "Они наткнулись на древнюю карту, на которой отмечено расположенное в нескольких днях пути место захоронения реликвии, и хотят найти её" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_MISSION_DETAIL19" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Они услышали слухи о огромном сокровище, спрятанном на пустоши за пределами поселения, и хотят проверить, правдивы ли рассказы.
                                { "Russian", "Они услышали слухи об огромном сокровище, спрятанном на пустоши за пределами поселения, и хотят проверить, правдивы ли рассказы" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_MISSION_DETAIL20" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Им надоело постоянно подвергаться атакам стражей. Они хотят отправиться в пустоши, найти источник угрозы и покончить с ней раз и навсегда.
                                { "Russian", "Им надоело постоянно подвергаться атакам стражей. Они хотят отправиться в пустоши, найти источник угрозы и покончить с ней раз и навсегда" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_MISSION_DETAIL21" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Они хотят составить карты окружающей местности, чтобы в будущем мы могли спокойно присоединить к поселению другие плодородные и ценные земли.
                                { "Russian", "Они хотят составить карты окружающей местности, чтобы в будущем мы могли спокойно присоединить к поселению другие плодородные и ценные земли" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_MISSION_DETAIL22" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Они изучают звезды, но их карты оставляют желать лучшего. Они не могут сделать точные измерения положений звезд из поселения и должны повторить измерения из нескольких точек планеты.
                                { "Russian", "Они изучают звёзды, но их карты оставляют желать лучшего. Они не могут сделать точные измерения положений звёзд из поселения и должны повторить измерения из нескольких точек планеты" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_MISSION_DETAIL23" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Они считают, что поселение всегда будет в опасности, пока мы не найдем новые источники пищи, и потому хотят найти источники питательных веществ в окружающей местности, а также составить подробный каталог всей съедобной фауны и флоры.
                                { "Russian", "Они считают, что поселение всегда будет в опасности, пока мы не найдем новые источники пищи, и потому хотят найти источники питательных веществ в окружающей местности, а также составить подробный каталог всей съедобной фауны и флоры" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_MISSION_DETAIL24" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Они хотят обезопасить поселение, найдя новые источники воды. Для этого они собрали все необходимые инструменты для предсказания и просят лишь вашего разрешения использовать припасы и снаряжение.
                                { "Russian", "Они хотят обезопасить поселение, найдя новые источники воды. Для этого они собрали все необходимые инструменты для предсказания и просят лишь вашего разрешения использовать припасы и снаряжение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_MISSION_DETAIL25" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Они заметили облако странного цветного дыма, поднимающегося из-за горизонта. Им кажется, нужно выяснить, откуда он взялся.
                                { "Russian", "Они заметили облако странного цветного дыма, поднимающегося из-за горизонта. Им кажется, нужно выяснить, откуда он взялся" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_MISSION_DETAIL26" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Они хотят продемонстрировать военную мощь поселения, проведя патрулирование окружающих территорий, и надеются, что это отобьет у пиратов желание нападать на нас.
                                { "Russian", "Они хотят продемонстрировать военную мощь поселения, проведя патрулирование окружающих территорий, и надеются, что это отобьет у пиратов желание нападать на нас" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_MISSION_DETAIL27" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- До них дошли слухи о странных шепчущих яйцах, расположенных в пустоши за пределами поселения. Они считают крайне важным найти и изучить их.
                                { "Russian", "До них дошли слухи о странных шепчущих яйцах, расположенных в пустоши за пределами поселения. Они считают крайне важным найти и изучить их" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_MISSION_DETAIL28" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Они считают, что вот-вот совершат важное научное открытие, но имеющиеся образцы ДНК оказались неподходящего качества. Они хотят собрать дополнительный биологический материал, чтобы завершить эксперимент.
                                { "Russian", "Они считают, что вот-вот совершат важное научное открытие, но имеющиеся образцы ДНК оказались неподходящего качества. Они хотят собрать дополнительный биологический материал, чтобы завершить эксперимент" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_MISSION_DETAIL29" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Они просто заявляют, что им нужно больше черепов, и пустоши — самое лучшее место для их добычи.
                                { "Russian", "Они просто заявляют, что им нужно больше черепов, и пустоши — самое лучшее место для их добычи" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_MISSION_DETAIL30" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Они хотят найти древние реликвии и считают, что расположенный неподалеку монолит отлично подойдет в качестве места раскопок. Они обещают передать поселению все найденные артефакты.
                                { "Russian", "Они хотят найти древние реликвии и считают, что расположенный неподалеку монолит отлично подойдет в качестве места раскопок. Они обещают передать поселению все найденные артефакты" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_MISSION_DETAIL31" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Руководитель экспедиции уверен в себе, но скрытен и отказывается раскрывать подробности своего плана.
                                { "Russian", "Руководитель экспедиции уверен в себе, но скрытен и отказывается раскрывать подробности своего плана" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_MISSION_DETAIL32" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Они слышали о мерзкой стае и хотят помочь, уничтожив ближайшее гнездо.
                                { "Russian", "Они слышали о мерзкой стае и хотят помочь, уничтожив ближайшее гнездо" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_MISSION_DETAIL33" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Они собираются отправить делегацию к местному предводителю пиратов, чтобы заключить сделку о защите поселения.
                                { "Russian", "Они собираются отправить делегацию к местному предводителю пиратов, чтобы заключить сделку о защите поселения" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_MISSION_DETAIL34" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Недавние сканирования выявили несколько глубоких геотермальных аномалий, и ученые хотят подробнее изучить их.
                                { "Russian", "Недавние сканирования выявили несколько глубоких геотермальных аномалий, и ученые хотят подробнее изучить их" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_MISSION_DETAIL35" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- В отходах предприятия по переработке полезных ископаемых были обнаружены фрагменты костей, и жители хотят провести раскопки, чтобы извлечь ценные окаменелости.
                                { "Russian", "В отходах предприятия по переработке полезных ископаемых были обнаружены фрагменты костей, и жители хотят провести раскопки, чтобы извлечь ценные окаменелости" },
                            }
                        },
                        --#endregion

                        --#region UI_JUDGEMENT_VISITOR_TECHSALE
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_VISITOR_TECHSALE1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Гость представляется торговцем и предлагает планы технологии &lt;TECHNOLOGY&gt;«%TECHGIFT%»&lt;&gt; на продажу.
                                -- They present their trade credentials, and offer to sell plans for &lt;TECHNOLOGY&gt;&quot;%TECHGIFT%&quot;&lt;&gt;
                                { "Russian", "Гость представляется торговцем и предлагает купить планы технологии &lt;TECHNOLOGY&gt;&quot;%TECHGIFT%&quot;&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_VISITOR_TECHSALE2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Гость показывает вихрь голограмм. Похоже, он продает планы технологии &lt;TECHNOLOGY&gt;«%TECHGIFT%»&lt;&gt;.
                                -- They present a whirl of holograms. They appear to be selling plans for &lt;TECHNOLOGY&gt;&quot;%TECHGIFT%&quot;&lt;&gt;
                                { "Russian", "Гость показывает вихрь голограмм. Похоже, он продает планы технологии &lt;TECHNOLOGY&gt;&quot;%TECHGIFT%&quot;&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_VISITOR_TECHSALE3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Гость делает несколько интересных заявлений о технологии &lt;TECHNOLOGY&gt;«%TECHGIFT%»&lt;&gt;. Он продает ее планы по разумной цене.
                                -- They make a series of remarkable claims about &lt;TECHNOLOGY&gt;&quot;%TECHGIFT%&quot;&lt;&gt;. They offer to sell the plans, for a reasonable fee..
                                { "Russian", "Гость делает несколько интересных заявлений о технологии &lt;TECHNOLOGY&gt;&quot;%TECHGIFT%&quot;&lt;&gt;. Он продает ее планы по разумной цене.." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_VISITOR_TECHSALE4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Гость рассказывает, какую радость ему приносит вид процветающего поселения, и спрашивает, пригодится ли нам его технология &lt;TECHNOLOGY&gt;«%TECHGIFT%»&lt;&gt;. Она доступна для покупки...
                                -- They say how pleased they would be to see our settlement flourish. They ask if their &lt;TECHNOLOGY&gt;&quot;%TECHGIFT%&quot;&lt;&gt; would assist us, for a small fee..
                                { "Russian", "Гость рассказывает, какую радость ему приносит вид процветающего поселения, и спрашивает, не хотим ли мы купить за небольшую плату &lt;TECHNOLOGY&gt;&quot;%TECHGIFT%&quot;&lt;&gt;.." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_VISITOR_TECHSALE5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Гость предлагает нам сделку. Он демонстрирует планы технологии &lt;TECHNOLOGY&gt;«%TECHGIFT%»&lt;&gt; и называет свою цену.
                                -- They come to us in the spirit of free trade. They present the plans for &lt;TECHNOLOGY&gt;&quot;%TECHGIFT%&quot;&lt;&gt;, and name their price..
                                { "Russian", "Гость предлагает нам сделку. Он демонстрирует планы технологии &lt;TECHNOLOGY&gt;&quot;%TECHGIFT%&quot;&lt;&gt;, и называет свою цену.." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_VISITOR_TECHSALE6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Гость демонстрирует планы технологии &lt;TECHNOLOGY&gt;«%TECHGIFT%»&lt;&gt;, как он говорит «в рамках сотрудничества». Также в «рамках сотрудничества» гость просит в ответ сделать пожертвование.
                                -- They present the plans for &lt;TECHNOLOGY&gt;&quot;%TECHGIFT%&quot;&lt;&gt;, in a spirit of cooperation. In return, all they ask is our mutual cooperation in making a donation..
                                { "Russian", "Гость демонстрирует планы технологии &lt;TECHNOLOGY&gt;&quot;%TECHGIFT%&quot;&lt;&gt;, ради сотрудничества. Взамен, ради сотрудничества, мы должны сделать пожертвование.." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_VISITOR_TECHSALE7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Этот торговец предлагает приобрести планы технологии &lt;TECHNOLOGY&gt;«%TECHGIFT%»&lt;&gt;.
                                -- A sales agent of some sort, they offer to sell the plans for &lt;TECHNOLOGY&gt;&quot;%TECHGIFT%&quot;&lt;&gt;
                                { "Russian", "Этот торговец предлагает приобрести планы технологии &lt;TECHNOLOGY&gt;&quot;%TECHGIFT%&quot;&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_VISITOR_TECHSALE8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Странствующий изобретатель предлагает нам купить планы технологии &lt;TECHNOLOGY&gt;«%TECHGIFT%»&lt;&gt;.
                                -- A travelling inventor, they offer to sell us plans for &lt;TECHNOLOGY&gt;&quot;%TECHGIFT%&quot;&lt;&gt;
                                { "Russian", "Странствующий изобретатель предлагает нам купить планы технологии &lt;TECHNOLOGY&gt;&quot;%TECHGIFT%&quot;&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_VISITOR_TECHSALE9" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Этот инженер узкой квалификации ищет покупателей для своего последнего изобретения: &lt;TECHNOLOGY&gt;«%TECHGIFT%»&lt;&gt;.
                                -- A specialist engineer, they are seeking buyers for their latest invention, some sort of &lt;TECHNOLOGY&gt;&quot;%TECHGIFT%&quot;&lt;&gt;
                                { "Russian", "Инженер узкой квалификации ищет покупателей для своего последнего изобретения: &lt;TECHNOLOGY&gt;&quot;%TECHGIFT%&quot;&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region UI_SETTLEMENT_BUILD_STAGE
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_BUILD_STAGE_DECOR" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Окончательное обустройство
                                -- Final fit out
                                { "Russian", "Обустройство" },
                            }
                        },
                        --#endregion

                        --#region UI_SETTLEMENT_DETAIL_LINE
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_DETAIL_LINE2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Улучшайте город, принимая решения о строительстве &lt;TECHNOLOGY&gt;построек&lt;&gt; и проведении &lt;TRADEABLE&gt;исследований&lt;&gt;
                                -- Make decisions about &lt;TECHNOLOGY&gt;buildings&lt;&gt; and &lt;TRADEABLE&gt;research&lt;&gt; to improve the town
                                { "Russian", "Улучшите город, принимая решения о строительстве &lt;TECHNOLOGY&gt;зданий&lt;&gt; и проведении &lt;TRADEABLE&gt;исследований&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_DETAIL_LINE4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите &lt;COMMODITY&gt;ценные товары&lt;&gt;, производимые поселением
                                -- Collect the &lt;COMMODITY&gt;valuable products&lt;&gt; that the settlement produces
                                { "Russian", "Собирайте &lt;COMMODITY&gt;ценные товары&lt;&gt;, производимые поселением" },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_MISS_REWARD_LABEL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Отправляет жителей в экспедицию
                                -- Begins settlement expedition
                                { "Russian", "Начать экспедицию" },
                            }
                        },


                        --#region UI_JUDGEMENT_TRADE_DETAIL
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_TRADE_DETAIL1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Торговец утверждает, что его безупречная торговая история доказывает его невиновность, и настаивает на том, что покупатель ошибается.
                                { "Russian", "Торговец утверждает, что его безупречная торговая история доказывает его невиновность, и настаивает на том, что покупатель ошибается" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_TRADE_DETAIL2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %NAME1% отказывается принимать ответственность и настаивает, что его товары соответствуют всем существующим правилам.
                                { "Russian", "%NAME1% отказывается принимать ответственность и настаивает, что его товары соответствуют всем существующим правилам" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_TRADE_DETAIL3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Однако он утверждает, что покупатель знал о происхождении товара в момент покупки.
                                { "Russian", "Однако он утверждает, что покупатель знал о происхождении товара в момент покупки" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_TRADE_DETAIL4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Однако он настаивает, что сообщил все подробности о товаре во время подробной демонстрации.
                                { "Russian", "Однако он настаивает, что сообщил все подробности о товаре во время подробной демонстрации" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_TRADE_DETAIL5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Однако он утверждает, что покупатель имел достаточно времени для проверки товара перед покупкой.
                                { "Russian", "Однако он утверждает, что покупатель имел достаточно времени для проверки товара перед покупкой" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_TRADE_DETAIL6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %NAME1% раскаивается и добровольно передает документы, в которых описывается вся его цепочка поставок.
                                { "Russian", "%NAME1% раскаивается и добровольно передает документы, в которых описывается вся его цепочка поставок" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_TRADE_DETAIL7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %NAME1% стыдится своего поведения и обещает не совершать повторных правонарушений.
                                { "Russian", "%NAME1% стыдится своего поведения и обещает не совершать повторных правонарушений" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_TRADE_DETAIL8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %NAME1% уже не в первый раз обвиняется в подобных нарушениях.
                                { "Russian", "%NAME1% уже не в первый раз обвиняется в подобных нарушениях" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_TRADE_DETAIL9" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %NAME1% ни капли не сожалеет и описывает недовольного клиента в самых нелицеприятных выражениях.
                                { "Russian", "%NAME1% ни капли не сожалеет и описывает недовольного клиента в самых нелицеприятных выражениях" },
                            }
                        },
                        --#endregion

                        --#region UI_JUDGEMENT_RELATION_DETAIL
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_RELATION_DETAIL1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Их отношения испортились после печального происшествия на работе, когда &lt;TECHNOLOGY&gt;%NAME1%&lt;&gt; унизил существо по имени &lt;STELLAR&gt;%NAME2%&lt;&gt;.
                                { "Russian", "Их отношения испортились после печального происшествия на работе, когда &lt;TECHNOLOGY&gt;%NAME1%&lt;&gt; унизил &lt;STELLAR&gt;%NAME2%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_RELATION_DETAIL2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Их отношения омрачились, что привело к ссоре, из-за которой &lt;TECHNOLOGY&gt;%NAME1%&lt;&gt; угрожал спрыгнуть с крыши.
                                { "Russian", "Их отношения омрачились, что привело к ссоре, из-за которой &lt;TECHNOLOGY&gt;%NAME1%&lt;&gt; угрожал спрыгнуть с крыши" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_RELATION_DETAIL3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Их отношения развалились после пьяной драки, когда &lt;TECHNOLOGY&gt;%NAME1%&lt;&gt; ранил существо по имени &lt;STELLAR&gt;%NAME2%&lt;&gt;.
                                { "Russian", "Их отношения развалились после пьяной драки, когда &lt;TECHNOLOGY&gt;%NAME1%&lt;&gt; ранил &lt;STELLAR&gt;%NAME2%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_RELATION_DETAIL4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Их отношения ухудшились из-за быстро распространившихся слухов, которые существо по имени &lt;TECHNOLOGY&gt;%NAME1%&lt;&gt; не смогло пресечь.
                                { "Russian", "Их отношения ухудшились из-за быстро распространившихся слухов, которые &lt;TECHNOLOGY&gt;%NAME1%&lt;&gt; не смог пресечь" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_RELATION_DETAIL5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Их отношения испортились, когда &lt;TECHNOLOGY&gt;%NAME1%&lt;&gt; украл какую-то мелочь у существа по имени &lt;STELLAR&gt;%NAME2%&lt;&gt;.
                                { "Russian", "Их отношения испортились, когда &lt;TECHNOLOGY&gt;%NAME1%&lt;&gt; украл какую-то мелочь у &lt;STELLAR&gt;%NAME2%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_RELATION_DETAIL6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Их отношения испортились, когда &lt;TECHNOLOGY&gt;%NAME1%&lt;&gt; украл что-то ценное и незаменимое у существа по имени &lt;STELLAR&gt;%NAME2%&lt;&gt;.
                                { "Russian", "Их отношения испортились, когда &lt;TECHNOLOGY&gt;%NAME1%&lt;&gt; украл что-то ценное и незаменимое у &lt;STELLAR&gt;%NAME2%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_RELATION_DETAIL7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Их отношения омрачились после того, как в анонимном письме были раскрыты скандальные подробности о существе по имени &lt;TECHNOLOGY&gt;%NAME1%&lt;&gt;
                                { "Russian", "Их отношения омрачились после того, как в анонимном письме были раскрыты скандальные подробности о &lt;TECHNOLOGY&gt;%NAME1%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_RELATION_DETAIL8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Их отношения развалились после неудачного внепланетного происшествия, когда с&lt;TECHNOLOGY&gt;%NAME1%&lt;&gt; бросил существо по имени &lt;STELLAR&gt;%NAME2%&lt;&gt;.
                                { "Russian", "Их отношения развалились после неудачного внепланетного происшествия, когда &lt;TECHNOLOGY&gt;%NAME1%&lt;&gt; бросил &lt;STELLAR&gt;%NAME2%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_RELATION_DETAIL9" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Их отношения испортились из-за неуместной выходки существа по имени &lt;TECHNOLOGY&gt;%NAME1%&lt;&gt;.
                                { "Russian", "Их отношения испортились из-за неуместной выходки &lt;TECHNOLOGY&gt;%NAME1%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_RELATION_DETAIL10" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Их отношения испортились, когда &lt;TECHNOLOGY&gt;%NAME1%&lt;&gt; начал в открытую приставать к партнеру существа по имени &lt;STELLAR&gt;%NAME2%&lt;&gt;.
                                { "Russian", "Их отношения испортились, когда &lt;TECHNOLOGY&gt;%NAME1%&lt;&gt; начал в открытую приставать к партнеру &lt;STELLAR&gt;%NAME2%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_RELATION_DETAIL11" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Их отношения ухудшились, когда &lt;TECHNOLOGY&gt;%NAME1%&lt;&gt; распространил шокирующие слухи о существе по имени &lt;STELLAR&gt;%NAME2%&lt;&gt;.
                                { "Russian", "Их отношения ухудшились, когда &lt;TECHNOLOGY&gt;%NAME1%&lt;&gt; распространил шокирующие слухи о &lt;STELLAR&gt;%NAME2%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_RELATION_DETAIL12" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- В их отношениях произошел раскол, когда &lt;TECHNOLOGY&gt;%NAME1%&lt;&gt; присвоил себе часть достижений существа по имени &lt;STELLAR&gt;%NAME2%&lt;&gt;.
                                { "Russian", "В их отношениях произошел раскол, когда &lt;TECHNOLOGY&gt;%NAME1%&lt;&gt; присвоил себе часть достижений &lt;STELLAR&gt;%NAME2%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_RELATION_DETAIL13" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Их отношения ухудшились, когда &lt;TECHNOLOGY&gt;%NAME1%&lt;&gt; завистливо очернил работу существа по имени &lt;STELLAR&gt;%NAME2%&lt;&gt;.
                                { "Russian", "Их отношения ухудшились, когда &lt;TECHNOLOGY&gt;%NAME1%&lt;&gt; завистливо очернил работу &lt;STELLAR&gt;%NAME2%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_RELATION_DETAIL14" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Их отношения разладились, когда &lt;TECHNOLOGY&gt;%NAME1%&lt;&gt; случайно ранил существо по имени &lt;STELLAR&gt;%NAME2%&lt;&gt;.
                                { "Russian", "Их отношения разладились, когда &lt;TECHNOLOGY&gt;%NAME1%&lt;&gt; случайно ранил &lt;STELLAR&gt;%NAME2%&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region UI_JUDGEMENT_RELATION_NEXT
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_RELATION_NEXT1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;%NAME1%&lt;&gt; пытался извиниться, но существо по имени &lt;STELLAR&gt;%NAME2%&lt;&gt; отказывается с ним разговаривать.
                                { "Russian", "&lt;TECHNOLOGY&gt;%NAME1%&lt;&gt; пытался извиниться, но &lt;STELLAR&gt;%NAME2%&lt;&gt; отказывается с ним разговаривать" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_RELATION_NEXT2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;%NAME1%&lt;&gt; продолжает распространять слухи о происшествии.
                                { "Russian", "&lt;TECHNOLOGY&gt;%NAME1%&lt;&gt; продолжает распространять слухи о происшествии" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_RELATION_NEXT3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- В ответ существо по имени &lt;STELLAR&gt;%NAME2%&lt;&gt; решило заблокировать вход в жилище. где обитает &lt;TECHNOLOGY&gt;%NAME1%&lt;&gt;.
                                { "Russian", "В ответ &lt;STELLAR&gt;%NAME2%&lt;&gt; решил заблокировать вход в жилище, где обитает &lt;TECHNOLOGY&gt;%NAME1%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_RELATION_NEXT4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- В ответ &lt;STELLAR&gt;%NAME2%&lt;&gt; уничтожил имущество существа по имени &lt;TECHNOLOGY&gt;%NAME1%&lt;&gt; (%ITEM%)
                                { "Russian", "В ответ &lt;STELLAR&gt;%NAME2%&lt;&gt; уничтожил имущество &lt;TECHNOLOGY&gt;%NAME1%&lt;&gt;, а именно, %ITEM%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_RELATION_NEXT5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- В ответ &lt;STELLAR&gt;%NAME2%&lt;&gt; расстроил отношения существа по имени &lt;TECHNOLOGY&gt;%NAME1%&lt;&gt; с его партнером.
                                { "Russian", "В ответ &lt;STELLAR&gt;%NAME2%&lt;&gt; расстроил отношения между &lt;TECHNOLOGY&gt;%NAME1%&lt;&gt; и его партнером" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_RELATION_NEXT6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- В ответ &lt;STELLAR&gt;%NAME2%&lt;&gt; уничтожил репутацию существа по имени &lt;TECHNOLOGY&gt;%NAME1%&lt;&gt;.
                                { "Russian", "В ответ &lt;STELLAR&gt;%NAME2%&lt;&gt; уничтожил репутацию &lt;TECHNOLOGY&gt;%NAME1%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_RELATION_NEXT7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- В ответ &lt;STELLAR&gt;%NAME2%&lt;&gt; уничтожил отношения существа по имени &lt;TECHNOLOGY&gt;%NAME1%&lt;&gt; с их общими друзьями.
                                { "Russian", "В ответ &lt;STELLAR&gt;%NAME2%&lt;&gt; разрушил отношения между &lt;TECHNOLOGY&gt;%NAME1%&lt;&gt; и его общими друзьями" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_RELATION_NEXT8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;%NAME2%&lt;&gt; стал одержимым и начал поджидать существо по имени &lt;TECHNOLOGY&gt;%NAME1%&lt;&gt; у дома.
                                { "Russian", "&lt;STELLAR&gt;%NAME2%&lt;&gt; стал одержимым и начал поджидать &lt;TECHNOLOGY&gt;%NAME1%&lt;&gt; у дома" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_RELATION_NEXT9" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Теперь &lt;STELLAR&gt;%NAME2%&lt;&gt; оскорбляет существо по имени &lt;TECHNOLOGY&gt;%NAME1%&lt;&gt; каждый раз, когда то покидает жилище.
                                { "Russian", "Теперь &lt;STELLAR&gt;%NAME2%&lt;&gt; оскорбляет &lt;TECHNOLOGY&gt;%NAME1%&lt;&gt; каждый раз, когда тот покидает жилище" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_RELATION_NEXT10" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- В ответ &lt;STELLAR&gt;%NAME2%&lt;&gt; украл имущество существа по имени &lt;TECHNOLOGY&gt;%NAME1%&lt;&gt; (%ITEM%).
                                { "Russian", "В ответ &lt;STELLAR&gt;%NAME2%&lt;&gt; украл имущество &lt;TECHNOLOGY&gt;%NAME1%&lt;&gt;, а именно, %ITEM%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_RELATION_NEXT11" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- С тех пор &lt;STELLAR&gt;%NAME2%&lt;&gt; начал нарушать общественный порядок, что вызвало вал жалоб от других жителей.
                                { "Russian", "С тех пор &lt;STELLAR&gt;%NAME2%&lt;&gt; начал нарушать общественный порядок, что вызвало вал жалоб от других жителей" },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_BAN_SUBJECT13" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- разгон звездолетов
                                -- starship overclocking
                                { "Russian", "разгон звездолётов" },
                            }
                        },

                        --#region UI_JUDGEMENT_OBJECT
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_OBJECT1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- К вам привели преступника по имени %NAME1%, который пытался сбыть краденное. Предмет кражи — %OWNITEM%.
                                -- A criminal has been brought before you. %NAME1% was caught selling %OWNITEM% that was stolen the last week
                                { "Russian", "К вам привели преступника. %NAME1% поймали, когда он пытался сбыть %OWNITEM%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_OBJECT2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поселенцы поймали с поличным вора по имени %NAME1%. Предмет кражи — %OWNITEM%.
                                -- The settlers have caught %NAME1% red-handed while stealing %OWNITEM%
                                { "Russian", "%NAME1% был пойман с поличным поселенцами. Предмет кражи — %OWNITEM%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_OBJECT3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поселенцы требуют справедливости. Они подозревают, что существо по имени %NAME1% совершило кражу предмета «%OWNITEM%».
                                -- The settlers demand justice. They recovered %OWNITEM% from %NAME1%, who they suspect of stealing it
                                { "Russian", "Поселенцы требуют справедливости. Вещь, %OWNITEM%, была изъята у %NAME1%, которого они подозревают в краже" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_OBJECT4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Бдительные поселенцы предотвратили преступление. %NAME1% пытался украсть предмет «%OWNITEM%».
                                -- Vigilante settlers have prevented a crime. %NAME1% has been apprehended after stealing %OWNITEM%
                                { "Russian", "Бдительные поселенцы предотвратили преступление. %NAME1% был задержан после кражи. Список украденного: %OWNITEM%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_OBJECT5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %NAME1% признался в преступлении. Он украл предмет «%OWNITEM%», но его замучила совесть.
                                { "Russian", "%NAME1% признался в краже, но его замучила совесть. Список украденного: %OWNITEM%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_OBJECT6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Жители пришли к куратору с просьбой о правосудии. У известного смутьяна по имени %NAME1% нашли предмет «%OWNITEM%», о пропаже которого сообщали до этого.
                                -- The citizens have approached their Overseer for justice. %NAME1%, a known troublemaker, has been caught in possession of %OWNITEM% that was reported missing
                                { "Russian", "Жители пришли к куратору с просьбой о правосудии. Ранее украденная вещь (%OWNITEM%) была обнаружена в распоряжении известного смутьяна %NAME1%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_OBJECT7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поселенцы поймали вора по имени %NAME1%, который украл предмет «%OWNITEM%» и пытался закопать его вне поселения.
                                { "Russian", "Поселенцы поймали вора по имени %NAME1%, который украл вещь (%OWNITEM%) и пытался закопать её вне поселения" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_OBJECT8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Житель по имени %NAME1% попался на краже предмета «%OWNITEM%» из жилища другого поселенца.
                                { "Russian", "Житель по имени %NAME1% попался на краже из жилища другого поселенца. Цель кражи — %OWNITEM%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_OBJECT_DETAIL1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- При осмотре видны следы вмешательства, словно предмет в спешке разрубили.
                                { "Russian", "При осмотре видны следы вмешательства, словно предмет в спешке разрубили" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_OBJECT_DETAIL2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Предмет испачкан какой-то телесной жидкостью. Пятна свежие.
                                { "Russian", "Предмет испачкан какой-то телесной жидкостью. Пятна свежие" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_OBJECT_DETAIL3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Похоже, его недавно ударили тупым предметом.
                                -- It appears to have been recently struck with a blunt object
                                { "Russian", "Похоже, вещь недавно ударили тупым предметом" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_OBJECT_DETAIL4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- С одной стороны предмет покрыт тонкой скользкой пленкой. Другая — чистая, словно ее недавно протерли.
                                { "Russian", "С одной стороны предмет покрыт тонкой скользкой пленкой. Другая — чистая, словно ее недавно протерли" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_OBJECT_DETAIL5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Проверка обнаружила на предмете следы ДНК одного из спорщиков — это %NAME1%.
                                -- Testing has revealed %NAME1%'s DNA all over the item
                                { "Russian", "Проверка обнаружила на предмете следы ДНК %NAME1%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_OBJECT_DETAIL6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- При проверке на предмете обнаружены пятна, совпадающие с личной «подписью» обвиняемого.
                                -- Testing has revealed stains upon the item match the accused's personal 'signature'
                                { "Russian", "При проверке на предмете обнаружены пятна, совпадающие с личной “подписью” обвиняемого" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_OBJECT_DETAIL7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- На предмете написано имя «%NAME1%», но, похоже, чернила свежие.
                                { "Russian", "На предмете написано имя “%NAME1%”, но, похоже, чернила свежие" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_OBJECT_DETAIL8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- На предмете выцарапано имя другого поселенца. Чернила уже выцвели.
                                { "Russian", "На предмете выцарапано имя другого поселенца. Чернила уже выцвели" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_OBJECT_DETAIL9" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Проверка в ультрафиолетовых лучах выявила странные пятна биологического происхождения. Им не меньше года.
                                { "Russian", "Проверка в ультрафиолетовых лучах выявила странные пятна биологического происхождения. Им не меньше года" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_OBJECT_DETAIL10" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Проверка в ультрафиолетовых лучах выявила странные пятна биологического происхождения. Материал свежий и дающий реакцию.
                                -- Ultraviolet inspection reveals unusual biological stains. The material is fresh and reactive
                                { "Russian", "Проверка в ультрафиолетовых лучах выявила странные пятна биологического происхождения. Материал свежий и дающий реакцию" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_OBJECT_DETAIL11" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Экспертиза поверхности предмета выявила микроскопические царапины, словно кто-то пытался стереть метку.
                                -- Analysis reveals microscopic scratches in its surface, as if someone had attempted to erase a marking
                                { "Russian", "Экспертиза поверхности предмета выявила микроскопические царапины, словно кто-то пытался стереть маркировку" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_OBJECT_DETAIL12" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Криминалистическая экспертиза обнаружила жирные отпечатки пальцев по всему предмету.
                                { "Russian", "Криминалистическая экспертиза обнаружила жирные отпечатки пальцев по всему предмету" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_OBJECT_DETAIL13" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Анализ поверхности предмета выявил заметную микробиологическую реакцию смешивания двух различных типов бактерий.
                                { "Russian", "Анализ поверхности предмета выявил заметную микробиологическую реакцию смешивания двух различных типов бактерий" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_OBJECT_DETAIL14" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Проверка запаха обнаружила смешение нескольких запахов в окружающем предмет воздухе.
                                { "Russian", "Проверка запаха обнаружила смешение нескольких запахов в окружающем предмет воздухе" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_OBJECT_DETAIL15" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Проверка запаха обнаружила затхлый устойчивый запах вокруг предмета.
                                { "Russian", "Проверка запаха обнаружила затхлый устойчивый запах вокруг предмета" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_OBJECT_DETAIL16" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Проверка временной памяти показала, что предмет обладает сильной энергетической связью с первоначальным владельцем.
                                { "Russian", "Проверка временной памяти показала, что предмет обладает сильной энергетической связью с первоначальным владельцем" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_OBJECT_DETAIL17" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Анализ показывает, что предмет покрыт необычно липкими отпечатками пальцев существа по имени %NAME1%.
                                { "Russian", "Анализ показывает, что предмет покрыт необычно липкими отпечатками пальцев %NAME1%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_OBJECT_DETAIL18" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Предмет покрыт пылью, словно его прятали в углу, вдали от глаз.
                                { "Russian", "Предмет покрыт пылью, словно его прятали в углу, вдали от глаз" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_OBJECT_DETAIL19" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Похоже, что предмет недавно стерилизовали и словно обработали мощным чистящим устройством.
                                { "Russian", "Похоже, что предмет недавно стерилизовали и словно обработали мощным чистящим устройством" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_OBJECT_DETAIL20" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Похоже, что предмет обглодан, но трудно сказать, какой вид животных это сделал.
                                { "Russian", "Похоже, что предмет обглодан, но трудно сказать, какой вид животных это сделал" },
                            }
                        },
                        --#endregion

                        --#region Обновление BEACON

                        --#region UI_SETTLEMENT_POI_NAME_UP_PAD
                        -- в описании не влазеет (желательно до 26 букв)
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_POI_NAME_UP_PAD_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Отполированный док
                                -- Advanced Docking Zone
                                { "Russian", "Стыковочный узел" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_POI_NAME_UP_PAD_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Точно спроектированная площадка
                                -- Precision-Engineered Pad
                                { "Russian", "Посадочная площадка" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_POI_NAME_UP_PAD_4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Площадка для швартовки
                                -- Engineering Bay
                                { "Russian", "Инженерный порт" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_POI_NAME_UP_PAD_5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Помост для звездолета
                                -- Advanced Dock
                                { "Russian", "Расширенный док" },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_STAT_POP_MAX_FMT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %NUM%/%MAX% макс.
                                -- %NUM% / %MAX% max
                                { "Russian", "%NUM% из %MAX%" },
                            }
                        },

                        --#region UI_SETTLEMENT_PROD_NOTE
                        -- макс. 42 буквы
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_PROD_NOTE_FARM" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Позволяет производить сельхозтовары (%CLASS%)
                                -- Enables %CLASS% agricultural production
                                { "Russian", "Производство сельхозтоваров %CLASS%а" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_PROD_NOTE_FACT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Позволяет производить промышленные товары (%CLASS%)
                                -- Enables %CLASS% industrial production
                                { "Russian", "Производство промышленных товаров %CLASS%а" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_PROD_NOTE_FISH" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Позволяет добывать водные организмы (%CLASS%)
                                -- Enables %CLASS% aquatic harvesting
                                { "Russian", "Водный промысел %CLASS%а" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_PROD_NOTE_HOME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Позволяет производить бытовые товары (%CLASS%)
                                -- Enables %CLASS% residental production
                                { "Russian", "Жилищное стройтельство %CLASS%а" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_PROD_NOTE_BAR" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Позволяет производить предметы роскоши (%CLASS%)
                                -- Enables %CLASS% production of luxury goods
                                { "Russian", "Производство предметов роскоши %CLASS%а" },
                            }
                        },
                        --#endregion

                        --#region UI_SETTLEMENT_PROD_TITLE
                        -- макс. 18 букв
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_PROD_TITLE_FARM" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- СЕЛЬСКОХОЗЯЙСТВЕННЫЕ ТОВАРЫ
                                { "Russian", "СЕЛЬСКОХОЗ ТОВАРЫ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_PROD_TITLE_TRADE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КОММЕРЧЕСКИЕ ТОВАРЫ
                                -- COMMERCIAL PRODUCE
                                { "Russian", "ТОВАРЫ НА ПРОДАЖУ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_PROD_TITLE_PAD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КОММЕРЧЕСКИЕ ТОВАРЫ
                                -- STARPORT FUEL
                                { "Russian", "ТОПЛИВО ЗВЕЗДОЛЁТА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_PROD_TITLE_FACT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПРОМЫШЛЕННЫЕ ТОВАРЫ
                                -- INDUSTRIAL PRODUCE
                                { "Russian", "ПРОМТОВАРЫ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_PROD_TITLE_HOME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- БЫТОВЫЕ ТОВАРЫ
                                -- RESIDENTIAL PRODUCE
                                { "Russian", "БЫТОВЫЕ ТОВАРЫ" },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_PROD_CHOICE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Изменить продукцию
                                -- Change Output
                                { "Russian", "Изменить" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_PROD_RATE_TIME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Производит %NUM% в %TIME%
                                -- Producing %NUM% in %TIME%
                                { "Russian", "%NUM% ед. / %TIME%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_PROD_CHOICE_RATE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %NUM% / &lt;IMG&gt;CLOCK&lt;&gt;%TIME%
                                -- %NUM% every &lt;IMG&gt;CLOCK&lt;&gt;%TIME%
                                { "Russian", "%NUM% ед. / &lt;IMG&gt;CLOCK&lt;&gt;%TIME%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_PROD_CHOICE_TITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Варианты производства
                                -- Production Options
                                { "Russian", "Список продукции" },
                            }
                        },
                        { -- перенос строки не работает =(
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_PROD_CHOICE_REQ" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Требуется: %BUILDING% (%CLASS%)
                                -- Requires %CLASS% %BUILDING%
                                { "Russian", "Требует %BUILDING% %CLASS%а" },
                            }
                        },

                        --#region UI_SETTLEMENT_PROD_REQ
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_PROD_REQ_NONE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Базовое производство
                                -- Basic Production
                                { "Russian", "Основная продукция" },
                            }
                        },
                        -- макс. 15 букв
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_PROD_REQ_ADMIN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Административное здание
                                -- Administration Building
                                { "Russian", "Администрация" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_PROD_REQ_FARM" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сельскохозяйственная постройка
                                -- Agricultural Building
                                { "Russian", "Сельхоз здание" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_PROD_REQ_FACT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Промышленная постройка
                                -- Industrial Building
                                { "Russian", "Промпредприятие" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_PROD_REQ_TRADE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Коммерческая постройка
                                -- Commercial Building
                                { "Russian", "Торговый центр" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_PROD_REQ_FISH" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Рыбный пруд
                                -- Fish Pond
                                { "Russian", "Садок" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_PROD_REQ_HOME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Жилое здание
                                -- Residential Building
                                { "Russian", "Жилое здание" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_PROD_REQ_BAR" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Постройка для отдыха
                                -- Leisure Building
                                { "Russian", "Место досуга" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_PROD_REQ_PAD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Постройка звездного порта
                                -- Starport
                                { "Russian", "Космодром" },
                            }
                        },
                        --#endregion

                        --#endregion

                        --#region UI_SETTLEMENT_EXPED_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_EXPED_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Экспедиция жителей еще не завершена.&#xA;Результаты будут доступны через: %TIME%
                                -- The settler's expedition is in progress&#xA;Expedition results available in %TIME%
                                { "Russian", "Экспедиция жителей еще не завершена&#xA;Результаты будут доступны через %TIME%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_EXPED_MSG2A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Экспедиция жителей завершена.&#xA;Прочтите &lt;TECHNOLOGY&gt;отчет&lt;&gt; на &lt;TECHNOLOGY&gt;терминале управления&lt;&gt;.
                                { "Russian", "Экспедиция жителей завершена&#xA;Изучите &lt;TECHNOLOGY&gt;отчёт&lt;&gt; в &lt;TECHNOLOGY&gt;терминале управления&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_EXPED_MSG2B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Экспедиция жителей завершена.&#xA;Воспользуйтесь &lt;TECHNOLOGY&gt;телепортом космической станции&lt;&gt;, чтобы быстро вернуться в поселение.&#xA;Прочтите отчет на &lt;TECHNOLOGY&gt;терминале управления&lt;&gt; поселением.
                                { "Russian", "Экспедиция жителей завершена&#xA;Вернитесь в поселение с помощью &lt;TECHNOLOGY&gt;телепорта&lt;&gt;&#xA;Изучите отчёт в &lt;TECHNOLOGY&gt;терминале управления&lt;&gt; поселением" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_EXPED_MSG2_BLOCK" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Экспедиция поселенцев завершена.&#xA;Завершите текущие дела в поселении, чтобы прочесть &lt;TECHNOLOGY&gt;отчет&lt;&gt;.&#xA;Выберите пункт «Поселенцы: %SETTLEMENT%» в журнале заданий (&lt;IMG&gt;OPTIONS&lt;&gt;).
                                { "Russian", "Экспедиция жителей завершена&#xA;Завершите текущие дела в поселении, чтобы изучить &lt;TECHNOLOGY&gt;отчёт&lt;&gt;&#xA;Выберите “Поселенцы: %SETTLEMENT%” в журнале заданий (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                            }
                        },
                        --#endregion

                        --#region UI_JUDGEMENT_DEBRIEF_OPT
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_DEBRIEF_OPT_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Получить вознаграждение за экспедицию
                                -- Claim expedition proceeds
                                { "Russian", "Забрать себе" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_DEBRIEF_OPT_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Пожертвовать вознаграждение за экспедицию
                                -- Donate expedition proceeds
                                { "Russian", "Пожертвовать жителям" },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_DEBRIEF_QUESTION" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;VAL_ON&gt;Требуется решение&lt;&gt;: распределите прибыль от экспедиции
                                -- &lt;VAL_ON&gt;Resolution required&lt;&gt;: Share out expedition proceeds
                                { "Russian", "&lt;VAL_ON&gt;Требуется решение&lt;&gt;: как распределить прибыль?" },
                            }
                        },

                        --#region UI_JUDGEMENT_MISSION_DEBRIEF
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_MISSION_DEBRIEF1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Жители вернулись из экспедиции «%NAME1%». Лидер экспедиции: %DETAIL%.
                                -- The citizens have returned from their expedition. %NAME1%, the expedition leader, %DETAIL%
                                { "Russian", "Экспедиция и их лидер, %NAME1%, %DETAIL%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_MISSION_DEBRIEF2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Экспедиция вернулась в поселение. Лидер экспедиции: %NAME1%, %DETAIL%.
                                -- The mission has returned to the settlement. With %NAME1% as their leader, they %DETAIL%
                                { "Russian", "Экспедиция вернулась в поселение. Под руководством %NAME1%, они %DETAIL%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_MISSION_DEBRIEF3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Экспедиция жителей успешно вернулась в поселение. Они %DETAIL%.
                                -- The citizen expedition has returned safely to the settlement. They %DETAIL%
                                { "Russian", "Экспедиция жителей успешно вернулась в поселение. Они %DETAIL%" },
                            }
                        },
                        --#endregion

                        --#region UI_JUDGEMENT_DEBRIEF_DETAIL
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_DEBRIEF_DETAIL1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- пытались узнать судьбу предыдущего куратора, который сбежал в близлежащую пещеру.
                                -- sought information about a former Overseer who fled to a nearby cave
                                { "Russian", "пытались узнать судьбу предыдущего куратора, который сбежал в пещеру неподалеку" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_DEBRIEF_DETAIL2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- отправились на поиски разбившегося грузового судна и его груза.
                                { "Russian", "отправились на поиски разбившегося грузового судна и его груза" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_DEBRIEF_DETAIL3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- попытались уничтожить гнездо биологического ужаса.
                                { "Russian", "попытались уничтожить гнездо биологического ужаса" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_DEBRIEF_DETAIL4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- провели испытание новой системы подводного дыхания.
                                { "Russian", "провели испытание новой системы подводного дыхания" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_DEBRIEF_DETAIL5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- призваны в пустоши багровым сном.
                                -- were called into the wilderness by a crimson dream
                                { "Russian", "оказались в пустоши под воздействием багрового сна" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_DEBRIEF_DETAIL6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- провели испытание системы сверхглубокого бурения.
                                { "Russian", "провели испытание системы сверхглубокого бурения" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_DEBRIEF_DETAIL7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- отправились на помощь, получив сигнал бедствия.
                                { "Russian", "отправились на помощь, получив сигнал бедствия" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_DEBRIEF_DETAIL8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- отправились на поиски ценного лома на ближайшее поле обломков кораблей.
                                { "Russian", "отправились на поиски ценного лома среди обломков кораблей поблизости" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_DEBRIEF_DETAIL9" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ушли во время сильной бури, чтобы проверить восстановленный тяжелый экзокостюм «Минотавр».
                                -- set out into a large storm to a test a restored Minotaur Heavy Exosuit
                                { "Russian", "пошли проверять восстановленный тяжелый экзокостюм «Минотавр» во время сильной бури" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_DEBRIEF_DETAIL10" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- искали ценные минералы в метеоритных кратерах.
                                { "Russian", "искали ценные минералы в метеоритных кратерах" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_DEBRIEF_DETAIL11" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- провели тщательное исследование местной фауны.
                                { "Russian", "провели тщательное исследование местной фауны" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_DEBRIEF_DETAIL12" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- пытались собрать образцы местной флоры, что создать банк генов.
                                { "Russian", "пытались собрать образцы местной флоры, что создать банк генов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_DEBRIEF_DETAIL13" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- решили сделать серию фотографий для архива поселения.
                                { "Russian", "решили сделать серию фотографий для архива поселения" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_DEBRIEF_DETAIL14" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- искали генетически ценных существ, пригодных для обучения.
                                -- sought genetically-valuable creatures with which to start a training programme
                                { "Russian", "искали генетически ценных существ, пригодных для обучения" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_DEBRIEF_DETAIL15" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- искали пропавшее существо, покинувшее поселение при странных обстоятельствах.
                                { "Russian", "искали пропавшее существо, покинувшее поселение при странных обстоятельствах" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_DEBRIEF_DETAIL16" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- провели геологическую разведку и нанесли на карту ценные месторождения.
                                { "Russian", "провели геологическую разведку и нанесли на карту ценные месторождения" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_DEBRIEF_DETAIL17" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- отправились в путешествие ради путешествия и чувства открытия.
                                { "Russian", "отправились в путешествие ради путешествия и чувства открытия" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_DEBRIEF_DETAIL18" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- проверили место, отмеченное на древней карте.
                                { "Russian", "проверили место, отмеченное на древней карте" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_DEBRIEF_DETAIL19" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- проверили слухи о древнем сокровище.
                                { "Russian", "проверили слухи о древнем сокровище" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_DEBRIEF_DETAIL20" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- пытались одолеть стражей, которые наводили ужас на поселение.
                                { "Russian", "пытались одолеть стражей, которые наводили ужас на поселение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_DEBRIEF_DETAIL21" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- пытались составить подробные карты местности вокруг поселения.
                                { "Russian", "пытались составить подробные карты местности вокруг поселения" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_DEBRIEF_DETAIL22" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- пытались составить более подробные звездные карты.
                                { "Russian", "пытались составить более подробные звёздные карты" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_DEBRIEF_DETAIL23" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- отправились на поиски новых источников пищи, фруктов и питательных зверей.
                                -- went looking for additional sources of food, novel fruits and nutritious beasts
                                { "Russian", "отправились на поиски новых источников пищи, фруктов и зверей" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_DEBRIEF_DETAIL24" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- провели исследование местных водоемов в поисках пресной воды.
                                { "Russian", "провели исследование местных водоемов в поисках пресной воды" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_DEBRIEF_DETAIL25" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- отправились исследовать несколько далеких неестественных столбов дыма.
                                { "Russian", "отправились исследовать несколько далеких неестественных столбов дыма" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_DEBRIEF_DETAIL26" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- патрулировали местность, чтобы отбить нападения пиратов.
                                { "Russian", "патрулировали местность, чтобы отбить нападения пиратов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_DEBRIEF_DETAIL27" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- собирались добыть шепчущее яйцо, которое насылало на них кошмары.
                                { "Russian", "собирались добыть шепчущее яйцо, которое насылало на них кошмары" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_DEBRIEF_DETAIL28" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- искали биологические материалы для расширения своего каталога ДНК.
                                { "Russian", "искали биологические материалы для расширения своего каталога ДНК" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_DEBRIEF_DETAIL29" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- отправились на поиски черепов, но не объяснили, зачем им это.
                                { "Russian", "отправились на поиски черепов, но не объяснили, зачем им это" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_DEBRIEF_DETAIL30" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- исследовали близлежащий монолит, надеясь найти ценную реликвию.
                                { "Russian", "исследовали близлежащий монолит, надеясь найти ценную реликвию" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_DEBRIEF_DETAIL31" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- покинули поселение, не объяснив почему.
                                { "Russian", "покинули поселение, не объяснив почему" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_DEBRIEF_DETAIL32" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- намеревались помочь уничтожить мерзкую стаю.
                                { "Russian", "намеревались помочь уничтожить мерзкую стаю" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_DEBRIEF_DETAIL33" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- искали главаря пиратов, чтобы договориться о защите.
                                { "Russian", "искали главаря пиратов, чтобы договориться о защите" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_DEBRIEF_DETAIL34" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- решили исследовать несколько глубоких геотермических аномалий.
                                -- set out to investigate a series of deep-level geothermal anomalies
                                { "Russian", "решили исследовать несколько глубоких геотермальных аномалий" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_DEBRIEF_DETAIL35" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- начали раскопки в поисках ценных окаменелостей.
                                { "Russian", "начали раскопки в поисках ценных окаменелостей" },
                            }
                        },
                        --#endregion

                        --#region UI_JUDGEMENT_MISSION_RESULT
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_MISSION_RESULT1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Жители принесли подарок для куратора в качестве благодарности за поддержку их миссии.
                                -- They bring with them a tribute to the Overseer, as thanks for support in their mission
                                { "Russian", "Жители принесли подарок куратору в качестве благодарности за поддержку их миссии" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_MISSION_RESULT2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Жители несут ценные товары и данные и хотят поделиться своими находками.
                                -- They are laden with valuable goods and data, and wish to share their bounty
                                { "Russian", "Жители, нагруженные ценными товарами и данными, хотят поделиться своими находками" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_MISSION_RESULT3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Жители хотят поблагодарить куратора за щедрую поддержку.
                                { "Russian", "Жители хотят поблагодарить куратора за щедрую поддержку" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_MISSION_RESULT4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Миссия жителей закончилась очень успешно, и они с готовностью делятся своими находками.
                                -- Their mission was a grand success, and they willingly share the things they have found
                                { "Russian", "Миссия завершилась очень успешно. Жители с радостью делятся своими находками" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_MISSION_RESULT5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Жители очень благодарны куратору и делают подарок в знак признательности.
                                -- They offer deep thanks to the Overseer, and present a token of appreciation.
                                { "Russian", "Жители очень благодарны куратору и делают подарок в знак признательности" },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_WEALTH_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запасы поселения увеличились на %NUM% юн.
                                -- Settlement reserves increased: %NUM%&lt;IMG&gt;UNITS&lt;&gt;
                                { "Russian", "Запасы поселения увеличены: +%NUM% &lt;IMG&gt;UNITSMALL&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_WEALTH_FAKE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %PERK_NAME%: запасы увеличились на %NUM% юн.
                                -- %PERK_NAME%: Reserves increased %NUM%u
                                { "Russian", "%PERK_NAME%: +%NUM% &lt;IMG&gt;UNITSMALL&lt;&gt; к запасам" },
                            }
                        },

                        --#region UI_SETTLEMENT_POI_NAME_PAD
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_POI_NAME_PAD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Док звездолета
                                -- Starship Dock
                                { "Russian", "Док звездолёта" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_POI_NAME_PAD_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Центр звездолетов
                                -- Starship Hub
                                { "Russian", "Центр звездолётов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_POI_NAME_PAD_5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Док звездолета
                                -- Starship Dock
                                { "Russian", "Док звездолёта" },
                            }
                        },
                        --#endregion

                        --#region UI_JUDGEMENT_PROCPERK_INTRO
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_PROCPERK_INTRO1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;%PERKNAME%&lt;&gt; приносит поселению пользу, что повышает %STAT%.
                                -- The settlement benefits from its &lt;TECHNOLOGY&gt;%PERKNAME%&lt;&gt;, which contributes greatly to %STAT%
                                { "Russian", "&lt;TECHNOLOGY&gt;%PERKNAME%&lt;&gt; приносит поселению пользу и повышает %STAT%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_PROCPERK_INTRO2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;%PERKNAME%&lt;&gt; находится на контроле у куратора, как и его влияние на %STAT%.
                                -- The Overseer will be aware of the settlement's &lt;TECHNOLOGY&gt;%PERKNAME%&lt;&gt;, and the effects it has on %STAT%
                                { "Russian", "Куратор должен обратить внимание, что %STAT% зависит от технологии &lt;TECHNOLOGY&gt;%PERKNAME%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_PROCPERK_INTRO3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %GOODNUM%&lt;TECHNOLOGY&gt;%PERKNAME% поселения высоко оценивается &lt;&gt;% жителей.
                                -- %GOODNUM%% of the citizens appreciate the settlement's &lt;TECHNOLOGY&gt;%PERKNAME%&lt;&gt;
                                { "Russian", "%GOODNUM%% жителей поселения высоко оценивает &lt;TECHNOLOGY&gt;%PERKNAME%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_PROCPERK_INTRO4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;%PERKNAME%&lt;&gt; помогает поселению довести %STAT% до %GOODNUM%% от целевого показателя.
                                -- The settlement achieved %GOODNUM%% of its %STAT% targets in this cycle, thanks to the &lt;TECHNOLOGY&gt;%PERKNAME%&lt;&gt;
                                { "Russian", "&lt;TECHNOLOGY&gt;%PERKNAME%&lt;&gt; помогает поселению довести %STAT% до %GOODNUM%% от целевого показателя" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_PROCPERK_INTRO5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;%PERKNAME%&lt;&gt; является важной частью программы, которая должна улучшить %STAT%.
                                -- The settlement's &lt;TECHNOLOGY&gt;%PERKNAME%&lt;&gt; is a vital part of our ongoing %STAT% programme
                                { "Russian", "&lt;TECHNOLOGY&gt;%PERKNAME%&lt;&gt; является важной частью программы, которая должна улучшить %STAT%" },
                            }
                        },
                        --#endregion

                        --#region UI_JUDGEMENT_PROCPERK.*_DETAIL
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_PROCPERK_A_DETAIL1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Однако некоторые необходимые компоненты уже изношены и требуют замены.
                                { "Russian", "Однако некоторые необходимые компоненты уже изношены и требуют замены" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_PROCPERK_A_DETAIL2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Однако, чтобы закрепить успех, нужно обеспечить эффективную работу в будущем.
                                { "Russian", "Однако, чтобы закрепить успех, нужно обеспечить эффективную работу в будущем" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_PROCPERK_A_DETAIL3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Важнейшие компоненты износились и требуют замены.
                                { "Russian", "Важнейшие компоненты износились и требуют замены" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_PROCPERK_A_DETAIL4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- По причине %ACCIDENT% требуется срочный ремонт.
                                -- But there has been %ACCIDENT%, resulting in an urgent need for repairs
                                { "Russian", "По причине %ACCIDENT% требуется срочный ремонт" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_PROCPERK_A_DETAIL5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Однако требуется срочный ремонт из-за %ACCIDENT%.
                                { "Russian", "Однако требуется срочный ремонт из-за %ACCIDENT%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_PROCPERK_A_DETAIL6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Из-за %ACCIDENT% теперь требуется значительный ремонт.
                                { "Russian", "Из-за %ACCIDENT% теперь требуется значительный ремонт" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_PROCPERK_B_DETAIL1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Ответственные работники усердно трудились, и %ADVISORS% считает, что премия поможет им лучше исполнять свои обязанности.
                                -- The workers responsible have been hard at work, and our %ADVISORS% feel a bonus may encourage them in their duties
                                { "Russian", "Ответственные работники усердно трудились, и %ADVISORS% считают, что премия поможет им лучше исполнять свои обязанности" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_PROCPERK_B_DETAIL2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Рабочие, обслуживающие эти системы, сильно устали. %ADVISORS% считает, что признание их заслуг поддержит их настрой.
                                { "Russian", "Рабочие, обслуживающие эти системы, сильно устали. %ADVISORS% считают, что признание их заслуг поддержит их настрой" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_PROCPERK_B_DETAIL3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %ADVISORS% считает, что ответственные работники заслуживают особой награды в признание их трудов.
                                { "Russian", "Наши %ADVISORS% считают, что ответственные работники заслуживают особой награды в признание их трудов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_PROCPERK_B_DETAIL4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Важнейшим работникам пришлось перерабатывать из-за %ACCIDENT%, и признание их трудов куратором может подбодрить их.
                                { "Russian", "Важнейшим работникам пришлось перерабатывать из-за %ACCIDENT%, и признание их трудов куратором может подбодрить их" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_PROCPERK_B_DETAIL5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Наши храбрые работники не дали работе остановиться из-за %ACCIDENT%, и %ADVISORS% считает, что нужно отметить их заслуги.
                                { "Russian", "Наши храбрые работники не дали работе остановиться из-за %ACCIDENT%, и %ADVISORS% считают, что нужно отметить их заслуги" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_PROCPERK_B_DETAIL6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %ADVISORS% указывает, что работники очень устали из-за %ACCIDENT%, и думает, что их нужно наградить.
                                { "Russian", "Наши %ADVISORS% указывают, что работники очень устали из-за %ACCIDENT%, и думают, что их нужно наградить" },
                            }
                        },
                        --#endregion

                        --#region UI_JUDGEMENT_REQUEST4_OPT_
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_REQUEST4_OPT_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Дать имя младенцу: %BABY1%.
                                -- Name the infant %BABY1%
                                { "Russian", "Назвать %BABY1%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_REQUEST4_OPT_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Дать имя младенцу: %BABY2%.
                                { "Russian", "Назвать %BABY2%" },
                            }
                        },
                        --#endregion

                        --#region UI_JUDGEMENT_BABY_INTRO
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_BABY_INTRO1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Существо по имени %NAME1% произвело потомство, но не может выбрать для него имя.
                                { "Russian", "Существо по имени %NAME1% произвело потомство, но не может выбрать для него имя" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_BABY_INTRO2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Существо по имени %NAME1% произвело потомство, но не может договориться со своим партнером об имени ребенка.
                                { "Russian", "Существо по имени %NAME1% произвело потомство, но не может договориться со своим партнером об имени ребёнка" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_BABY_INTRO3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Существо по имени %NAME1% произвело потомство, но не знает, как его назвать.
                                { "Russian", "Существо по имени %NAME1% произвело потомство, но не знает, как его назвать" },
                            }
                        },
                        --#endregion

                        --#region UI_JUDGEMENT_BABY_DETAIL
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_BABY_DETAIL1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Оно простит вас решить за него.
                                -- They ask that you make the final decision
                                { "Russian", "Вас просят принять окончательное решение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_BABY_DETAIL2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поэтому оно пришло к вам за советом.
                                -- As such, they have come to you for advice
                                { "Russian", "Вследствие, к вам обратись за советом" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_BABY_DETAIL3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Оно считает, что только куратор может разрешить ситуацию.
                                -- They feel only the Overseer can resolve this situation
                                { "Russian", "Считается, что только куратор может разрешить ситуацию" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_BABY_DETAIL4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Оно считает, что куратор должен выбрать имя для ребенка.
                                -- They feel the Overseer should have the honour of choosing the name
                                { "Russian", "Куратору предлагается честь выбрать имя для ребенка" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_BABY_DETAIL5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Оно хочет оказать честь куратору и просит принять решение.
                                -- They wish to honour the Overseer by giving you the final decision
                                { "Russian", "Куратор окажет честь, приняв окончательное решение" },
                            }
                        },
                        --#endregion

                        --#region UI_SETTLEMENT_ROOM_POS.*_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_ROOM_POS1_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Новые жители (%NUM%) присоединились к поселению
                                -- Room for %NUM% new citizen
                                { "Russian", "Добавлено койко-место" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_ROOM_POS_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Новые жители (%NUM%) присоединились к поселению
                                -- Room for %NUM% new citizens
                                { "Russian", "Добавлено %NUM% койко-мест" },
                            }
                        },
                        --#endregion

                        --#region UI_JUDGEMENT_BREAK_DETAIL
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_BREAK_DETAIL1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Но стоит учитывать, что податель жалобы %TRADE_HISTORY%.
                                -- It is noted, however, that the customer does have a history of %TRADE_HISTORY%
                                { "Russian", "Но стоит учитывать, что податель жалобы %TRADE_HISTORY%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_BREAK_DETAIL2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %NAME1% отказывается от ответственности, настаивая, что причиной стала ошибка пользователя.
                                -- However, %NAME1% denies liability, insisting this is a case of user error
                                { "Russian", "%NAME1% отказывается от ответственности, настаивая, что причиной стала ошибка пользователя" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_BREAK_DETAIL3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %NAME1% отказывается от ответственности, указывая на то, что покупатель %TRADE_HISTORY%.
                                -- However, %NAME1% denies liability, pointing to the customer's history of %TRADE_HISTORY%
                                { "Russian", "%NAME1% отказывается от ответственности, указывая на то, что покупатель %TRADE_HISTORY%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_BREAK_DETAIL4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %NAME1% указывает на то, что покупатель %TRADE_HISTORY%, и настаивает на том, что на момент покупки с товаром все было в порядке.
                                -- %NAME1% points to the customer's history of %TRADE_HISTORY%, and insists the product was perfect when purchased
                                { "Russian", "%NAME1% указывает на то, что покупатель %TRADE_HISTORY%, и настаивает на том, что на момент покупки с товаром все было в порядке" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_BREAK_DETAIL5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %NAME1% извиняется, но покупатель настаивает на компенсации.
                                -- %NAME1% has apologised, but the customer insists on retribution
                                { "Russian", "%NAME1% извиняется, но покупатель настаивает на компенсации" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_BREAK_DETAIL6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %NAME1% извиняется, но отказывается вернуть средства, так как покупатель %TRADE_HISTORY%.
                                -- %NAME1% has apologised, but will not offer a refund because of the customer's history of %TRADE_HISTORY%
                                { "Russian", "%NAME1% извиняется, но отказывается вернуть средства, так как покупатель %TRADE_HISTORY%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_BREAK_DETAIL7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %NAME1% предлагает вернуть средства, но покупатель идет на обострение ситуации.
                                -- %NAME1% has offered a refund, but the customer wishes to escalate matters further
                                { "Russian", "%NAME1% предлагает вернуть средства, но покупатель идет на обострение ситуации" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_BREAK_DETAIL8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %NAME1% утверждает, что этого следовало ожидать, учитывая цену, которую заплатил покупатель.
                                -- %NAME1% claims such things are to be expected, given the price the customer paid
                                { "Russian", "%NAME1% утверждает, что этого следовало ожидать, учитывая цену, которую заплатил покупатель" },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_PERK3_QUESTION" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;VAL_ON&gt;Требуется решение:&lt;&gt; %PROCPERK% требует ремонта. Как это сделать?
                                -- &lt;VAL_ON&gt;Resolution required:&lt;&gt; How should the %PROCPERK% be renovated?
                                { "Russian", "&lt;VAL_ON&gt;Требуется решение:&lt;&gt; как провести ремонт?" },
                            }
                        },

                        --#region UI_JUDGEMENT_PERK[0-9]+_TITLE
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_PERK1_TITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Высшие силы
                                -- Higher Powers
                                { "Russian", "ВЫСШИЕ СИЛЫ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_PERK2_TITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Специальные навыки
                                -- Specialist Skills
                                { "Russian", "НАВЫКИ СПЕЦИАЛИСТА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_PERK3_TITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Усердный труд
                                -- Hard at Work
                                { "Russian", "УСЕРДНЫЙ ТРУД" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_PERK5_TITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Личный подарок
                                -- A Personal Tribute
                                { "Russian", "ПЕРСОНАЛЬНЫЙ ЗНАК УВАЖЕНИЯ" },
                            }
                        },
                        --#endregion

                        --#region UI_JUDGEMENT_BLESSING_INTRO
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_BLESSING_INTRO1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Граждане благодарны за благословение, которое дарует %BLESSING%, но считают, что от него мало прока в реальной жизни.
                                { "Russian", "Граждане благодарны за благословение %BLESSING%, но считают, что от него мало прока в реальной жизни" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_BLESSING_INTRO2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Граждане принимают благословение, которое дарует%BLESSING%, и просят чуда.
                                { "Russian", "Граждане принимают благословение %BLESSING%, и просят чуда" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_BLESSING_INTRO3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Граждане слышали о благословении, которое дарует %BLESSING%, и теперь ищут признаки благосклонности этого существа.
                                -- The citizens have heard the stories of the blessing of the %BLESSING%, and now seek evidence of its favour
                                { "Russian", "Граждане слышали о благословение %BLESSING%, и теперь ищут признаки благосклонности" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_BLESSING_INTRO4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %ADVISORS% отмечает, что вера граждан в благословение, которое дарует %BLESSING%, начинает ослабевать.
                                { "Russian", "Наши %ADVISORS% отмечают, что вера граждан в благословение %BLESSING% начинает ослабевать" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_BLESSING_INTRO5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %ADVISORS% считает, что пора попросить о благословении, которое дарует %BLESSING%.
                                { "Russian", "Наши %ADVISORS% считают, что пора попросить о благословение %BLESSING%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_BLESSING_INTRO6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %ADVISORS% полагает, что гражданам будет полезно увидеть плоды благословения, которое дарует %BLESSING%.
                                { "Russian", "Наши %ADVISORS% полагают, что гражданам будет полезно увидеть плоды благословения %BLESSING%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_BLESSING_INTRO7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %ADVISORS% понимает важность благословения, которое дарует %BLESSING% поселению, но боится, что граждане не разделяют его взгляды.
                                { "Russian", "Наши %ADVISORS% понимают важность для поселения благословения %BLESSING%, но боятся, что граждане не разделят их взгляды" },
                            }
                        },
                        --#endregion

                        --#region UI_JUDGEMENT_BLESSING_DETAIL
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_BLESSING_DETAIL1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- В поисках божественной силы они будут молиться так, как вы им скажете.
                                { "Russian", "В поисках божественной силы они будут молиться так, как вы им скажете" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_BLESSING_DETAIL2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Они просят высшее существо продемонстрировать свою силу и будут следовать вашему примеру при медитации.
                                -- They call upon it to show its power, and will follow your lead in their meditations
                                { "Russian", "Они просят его продемонстрировать свою силу и будут следовать вашему примеру при медитации" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_BLESSING_DETAIL3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Они хотят, чтобы существо продемонстрировало свою силу, и просят вас о посредничестве.
                                -- They ask for a show of power, and request that you intercede for them
                                { "Russian", "Они хотят демонстрацию его силы, и просят вас о посредничестве" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_BLESSING_DETAIL4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Пора призвать силу высшего существа, и они просят куратора направить их мольбы.
                                -- The time has come to call upon its power, and they ask the Overseer direct their pleas
                                { "Russian", "Пришло время призвать его силу, и они просят куратора направить их мольбы" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_BLESSING_DETAIL5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Жители хотят призвать божественную силу и спрашивают куратора, как им лучше поступить.
                                -- They wish to call upon its power, and ask the Overseer how best to proceed
                                { "Russian", "Жители хотят призвать его силу и спрашивают куратора, как им лучше поступить" },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_POLICY2_OPT_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запретить действие или товар «%SUBJECT%»
                                -- Ban %SUBJECT%
                                { "Russian", "Запретить %SUBJECT%" },
                            }
                        },

                        --#region UI_JUDGEMENT_ART_INTRO
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_ART_INTRO1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Жители позвали творца по имени %NAME1% и хотят заказать у него %ART_TYPE% в честь %PARTY%.
                                { "Russian", "Жители позвали творца по имени %NAME1% и хотят заказать у него %ART_TYPE% в честь %PARTY%" },
                            }
                        },
                        --#endregion

                        --#region UI_JUDGEMENT_ART_DETAIL
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_ART_DETAIL1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Выполнение работы потребует больших расходов, но опросы показывают, что &lt;TRADEABLE&gt;%GOODNUM%%&lt;&gt; населения поддерживают это.
                                { "Russian", "Выполнение работы потребует больших расходов, но опросы показывают, что &lt;TRADEABLE&gt;%GOODNUM%%&lt;&gt; населения поддерживают это" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_ART_DETAIL2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TRADEABLE&gt;%GOODNUM%%&lt;&gt; жителей полностью поддерживают выполнение работы, какой бы ни были расходы.
                                { "Russian", "&lt;TRADEABLE&gt;%GOODNUM%%&lt;&gt; жителей полностью поддерживают выполнение работы, какими бы не были расходы" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_ART_DETAIL3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Цена может быть высокой, но &lt;TRADEABLE&gt;%GOODNUM%%&lt;&gt; жителей считают, что оно того стоит.
                                { "Russian", "Цена может быть высокой, но &lt;TRADEABLE&gt;%GOODNUM%%&lt;&gt; жителей считают, что оно того стоит" },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_POI_NAME_UP_FRM_4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Питательный модуль
                                -- Autonomous Nutrition Module
                                { "Russian", "Автономный модуль питания" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_POI_NAME_UP_UNT_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Звездный сборщик
                                -- Field-Stabilisation Unit
                                { "Russian", "Блок стабилизации поля" },
                            }
                        },

                        --#region UI_JUDGEMENT_JOBPERK_INTRO
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_JOBPERK_INTRO1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %PERKNAME% поселения %NAME1% просит о дополнительных обязанностях.
                                { "Russian", "%PERKNAME% поселения %NAME1% просит о дополнительных обязанностях" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_JOBPERK_INTRO2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %JOB% %NAME1% просит об увеличении рабочей нагрузки.
                                { "Russian", "%JOB% %NAME1% просит об увеличении рабочей нагрузки" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_JOBPERK_INTRO3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %NAME1% %PERKNAME% считает, что может делать больший вклад в жизнь поселения.
                                { "Russian", "%NAME1% %PERKNAME% считает, что может делать больший вклад в жизнь поселения" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_JOBPERK_INTRO4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %PERKNAME% поселения %NAME1% готов к новым вызовам.
                                { "Russian", "%PERKNAME% поселения %NAME1% готов к новым вызовам" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_JOBPERK_INTRO5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %PERKNAME% поселения %NAME1% хочет испытать свои умения.
                                { "Russian", "%PERKNAME% поселения %NAME1% хочет испытать свои умения" },
                            }
                        },
                        --#endregion

                        --#region UI_JUDGEMENT_JOBPERK_DETAIL
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_JOBPERK_DETAIL1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Он приложит усилия там, где скажет куратор.
                                { "Russian", "Он приложит усилия там, где скажет куратор" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_JOBPERK_DETAIL2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Он будет работать над тем, что нужно сообществу, и просит направить его.
                                { "Russian", "Он будет работать над тем, что нужно сообществу, и просит направить его" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_JOBPERK_DETAIL3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Он просит, чтобы куратор направил его усилия туда, где в них больше всего нуждаются.
                                { "Russian", "Он просит, чтобы куратор направил его усилия туда, где в них больше всего нуждаются" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_JOBPERK_DETAIL4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Он будет служить сообществу так, как пожелает куратор.
                                { "Russian", "Он будет служить сообществу так, как пожелает куратор" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_JOBPERK_DETAIL5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Он смиренно подчиняется куратору и готов служить всем, чем сможет.
                                { "Russian", "Он смиренно подчиняется куратору и готов служить всем, чем сможет" },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_PERK2_QUESTION" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;VAL_ON&gt;Требуется решение:&lt;&gt; на что существу по имени %NAME1% тратить свое время?
                                -- &lt;VAL_ON&gt;Resolution required:&lt;&gt; How should %NAME1% spend their time?
                                { "Russian", "&lt;VAL_ON&gt;Требуется решение:&lt;&gt; на что потратить его время?" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_PERK5_QUESTION" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;VAL_ON&gt;Требуется решение:&lt;&gt; принять подарок посетителя по имени %NAME1%?
                                -- &lt;VAL_ON&gt;Resolution required:&lt;&gt; Accept %NAME1%'s tribute?
                                { "Russian", "&lt;VAL_ON&gt;Требуется решение:&lt;&gt; принять подарок от посетителя?" },
                            }
                        },

                        --#region UI_JUDGEMENT_JOBGIFT_INTRO
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_JOBGIFT_INTRO1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %PERKNAME% поселения %NAME1% в свое свободное время %GIFT%.
                                { "Russian", "%PERKNAME% поселения %NAME1% в свое свободное время %GIFT%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_JOBGIFT_INTRO2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %PERKNAME% поселения %NAME1% %GIFT% в свое личное время.
                                { "Russian", "%PERKNAME% поселения %NAME1% %GIFT% в свое личное время" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_JOBGIFT_INTRO3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %PERKNAME% нашего поселения по имени %NAME1% в качестве демонстрации своих умений %GIFT%.
                                { "Russian", "%PERKNAME% нашего поселения по имени %NAME1% в качестве демонстрации своих умений %GIFT%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_JOBGIFT_INTRO4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %PERKNAME% поселения %NAME1% решил испытать свои навыки и %GIFT%.
                                { "Russian", "%PERKNAME% поселения %NAME1% решил испытать свои навыки и %GIFT%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_JOBGIFT_INTRO5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %PERKNAME% поселения %NAME1% практиковал свои умения и %GIFT%.
                                { "Russian", "%PERKNAME% поселения %NAME1% практиковал свои умения и %GIFT%" },
                            }
                        },
                        --#endregion

                        --#region UI_JUDGEMENT_JOBGIFT_DETAIL
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_JOBGIFT_DETAIL1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Посетитель был бы очень рад, если куратор примет его работу в качестве подарка или пожертвует ее на благое дело.
                                { "Russian", "Посетитель был бы очень рад, если куратор примет его работу в качестве подарка или пожертвует ее на благое дело" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_JOBGIFT_DETAIL2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Гость надеется, что результат его работы порадует куратора или поможет поселению.
                                { "Russian", "Гость надеется, что результат его работы порадует куратора или поможет поселению" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_JOBGIFT_DETAIL3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Существо хочет передать свою работу в дар и смиренно предлагает ее куратору.
                                { "Russian", "Существо хочет передать свою работу в дар и смиренно предлагает ее куратору" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_JOBGIFT_DETAIL4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Гость хочет передать свою работу на благое дело или куратору в качестве личного подарка.
                                { "Russian", "Гость хочет передать свою работу на благое дело или куратору в качестве личного подарка" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_JOBGIFT_DETAIL5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Для гостя это мелочь, но он надеется, что куратор оценит плоды его трудов.
                                { "Russian", "Для гостя это мелочь, но он надеется, что куратор оценит плоды его трудов" },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_MISSION_INTRO_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Группа жителей из поселения %SETTLEMENT% отправилась в экспедицию по планете.
                                -- A group of citizens from %SETTLEMENT% have set out on an expedition across the planet
                                { "Russian", "Группа жителей из поселения %SETTLEMENT% отправилась в экспедицию по планете" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JUDGEMENT_POLICY1_OPT_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обложить налогом товар «%SUBJECT%»
                                -- Tax %SUBJECT%
                                { "Russian", "Ввести налог" },
                            }
                        },
                    }
                },
                { -- LANGUAGE/NMS_LOC9_RUSSIAN.MBIN
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_LOC9_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_ABANDON" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Уйти с поста куратора
                                -- Retire as Overseer
                                { "Russian", "Уйти в отставку" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLE_BUILD_SITE_SUPPLY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПОСТАВЬТЕ МАТЕРИАЛЫ
                                -- SUPPLY MATERIALS
                                { "Russian", "СНАБДИТЬ МАТЕРИАЛАМИ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLE_BUILD_SITE_SUPPLY_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Требуется для следующего этапа: %COST%
                                -- %COST% required for next stage
                                { "Russian", "%COST%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLE_HISTORY_STATS_HEAD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Развитие с начала срока
                                -- Development since tenure start
                                { "Russian", "Развитие с начала основания" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLE_HISTORY_ATTACKS_BUG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Нападения с заражением
                                -- Infestations purged
                                { "Russian", "Очищено заражений" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLE_HISTORY_KILLS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Убитые враждебные существа
                                -- Hostile entities defeated
                                { "Russian", "Убито враждебных существ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLE_HISTORY_GIFTS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Получены подарки от гостей
                                -- Gifts received from visitors
                                { "Russian", "Принято подарков от гостей" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLE_HISTORY_JUDGEMENTS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Принятые решения
                                -- Decisions taken
                                { "Russian", "Принято решений" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLE_BUILD_RESIDENT_FORMAT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %CURRENT%/%MAX% макс.
                                -- %CURRENT% / %MAX% max
                                { "Russian", "%CURRENT% из %MAX%" },
                            }
                        },

                        --#region UI_SETTLE_BUILD_.*_SUB
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLE_BUILD_PAD_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Звездный порт поселения %SETTLEMENT%
                                -- %SETTLEMENT% Starport
                                { "Russian", "Космодром, %SETTLEMENT%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLE_BUILD_BAR_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %SETTLEMENT%: Место досуга
                                -- %SETTLEMENT% Entertainment Venue
                                { "Russian", "Место досуга, %SETTLEMENT%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLE_BUILD_TOWER_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %SETTLEMENT%: Инфраструктура
                                -- %SETTLEMENT% Infrastructure
                                { "Russian", "Инфраструктура, %SETTLEMENT%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLE_BUILD_MARKET_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Торговый центр поселения %SETTLEMENT%
                                -- %SETTLEMENT% Trade Centre
                                { "Russian", "Торговый центр, %SETTLEMENT%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLE_BUILD_SMALL_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %SETTLEMENT%: Жилой дом
                                -- %SETTLEMENT% Residence
                                { "Russian", "Жилой дом, %SETTLEMENT%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLE_BUILD_MEDIUM_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %SETTLEMENT%: Жилой дом
                                -- %SETTLEMENT% Residence
                                { "Russian", "Жилой дом, %SETTLEMENT%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLE_BUILD_LARGE_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %SETTLEMENT%: Жилой дом
                                -- %SETTLEMENT% Residence
                                { "Russian", "Жилой дом, %SETTLEMENT%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLE_BUILD_SHERIFF_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %SETTLEMENT%: Административное здание
                                -- %SETTLEMENT% Administrative Building
                                { "Russian", "Администрация, %SETTLEMENT%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLE_BUILD_DOUBLE_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %SETTLEMENT%: Складское помещение
                                -- %SETTLEMENT% Storage Facility
                                { "Russian", "Складское помещение, %SETTLEMENT%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLE_BUILD_FARM_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %SETTLEMENT%: Склад питательных веществ
                                -- %SETTLEMENT% Nutritional Supply
                                { "Russian", "Продовольственный склад, %SETTLEMENT%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLE_BUILD_FACT_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Завод поселения %SETTLEMENT%
                                -- %SETTLEMENT% Production Facility
                                { "Russian", "Промпредприятие, %SETTLEMENT%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLE_BUILD_UNIT_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %SETTLEMENT%: Инфраструктура
                                -- %SETTLEMENT% Infrastructure
                                { "Russian", "Инфраструктура, %SETTLEMENT%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLE_BUILD_SITE_OPEN_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Торжественно откройте построенное здание
                                -- Unveil completed structure
                                { "Russian", "Торжественное открытие постройки" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLE_BUILD_SITE_OPEN_UPSUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Торжественно откройте улучшенное здание
                                -- Unveil upgraded structure
                                { "Russian", "Повторное торжественное открытие здания" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLE_BUILD_SITE_BUSY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ИДЕТ СТРОИТЕЛЬСТВО
                                -- UNDER CONSTRUCTION
                                { "Russian", "ИДЁТ СТРОИТЕЛЬСТВО" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLE_BUILD_SITE_BUSY_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Осталось времени: %TIME%.
                                -- Time remaining: %TIME%
                                { "Russian", "%TIME% до завершения" },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLER_DETAILS_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Житель поселения %SETTLEMENT%
                                -- Inhabitant of %SETTLEMENT%
                                { "Russian", "Житель, %SETTLEMENT%" },
                            }
                        },

                        --#region UI_SETTLEMENT_UPGRADE_RES_.*_SUB
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_UPGRADE_RES_B_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Требуется для повышения до класса В: %COST%
                                -- Upgrade to &lt;TECHNOLOGY&gt;B-Class&lt;&gt; with %COST%
                                { "Russian", "&lt;TECHNOLOGY&gt;%COST%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_UPGRADE_RES_A_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Требуется для повышения до класса А: %COST%
                                -- Upgrade to &lt;SPECIAL&gt;A-Class&lt;&gt; with %COST%
                                { "Russian", "&lt;SPECIAL&gt;%COST%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_UPGRADE_RES_S_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Требуется для повышения до класса S %COST%
                                -- Upgrade to &lt;COMMODITY&gt;S-Class&lt;&gt; with %COST%
                                { "Russian", "&lt;COMMODITY&gt;%COST%&lt;&gt;" },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_REGISTER_OPT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Управлять всеми поселениями
                                -- Manage all settlements
                                { "Russian", "Осмотреть все поселения" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLE_BUI_VISIT_OPT_A_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Принять Приглашение
                                -- Accept invitation
                                { "Russian", "Принять приглашение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLE_BUI_VISIT_QUESTION_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;VAL_ON&gt;Требуется решение:&lt;&gt; помочь поселению существа %NAME1%?
                                -- &lt;VAL_ON&gt;Resolution required:&lt;&gt; Visit %NAME1%'s settlement?
                                { "Russian", "&lt;VAL_ON&gt;Требуется решение:&lt;&gt; посетить поселение?" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLE_BUI_SE_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Диссонансное Сообщение
                                -- A Dissonant Transmission
                                { "Russian", "Диссонансное сообщение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLE_BUI_SE_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружено &lt;SPECIAL&gt;диссонансное&lt;&gt; &lt;STELLAR&gt;поселение&lt;&gt;&#xA;Доберитесь до него, чтобы помочь или изучить поселенцев
                                -- Invitation to &lt;SPECIAL&gt;dissonant&lt;&gt; settlement accepted.&#xA;The Autophage said they would welcome the contribution of the &lt;SPECIAL&gt;disruptor&lt;&gt;.&#xA;Visit the &lt;TECHNOLOGY&gt;Settlement Hub Interface&lt;&gt; to become &lt;STELLAR&gt;Overseer&lt;&gt;.
                                { "Russian", "Принято приглашение в &lt;SPECIAL&gt;диссонансное&lt;&gt; поселение.&#xA;Аутофаг сказал, что будет рад сотрудничеству с &lt;SPECIAL&gt;разрушителем﻿.&lt;&gt;&#xA;Станьте &lt;STELLAR&gt;куратором&lt;&gt; с помощью центрального интерфейса поселения." },
                            }
                        },

                        --#region UI_SETTLE_BUI_VISIT_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLE_BUI_VISIT_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- В ваше поселение поступило &lt;SPECIAL&gt;диссонансное сообщение&lt;&gt;.&#xA;Воспользуйтесь &lt;TECHNOLOGY&gt;терминалом управления&lt;&gt;, чтобы принять его.
                                { "Russian", "В ваше поселение поступило &lt;SPECIAL&gt;диссонансное сообщение&lt;&gt;&#xA;Воспользуйтесь &lt;TECHNOLOGY&gt;терминалом управления&lt;&gt;, чтобы принять его" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLE_BUI_VISIT_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- В ваше поселение поступило &lt;SPECIAL&gt;диссонансное сообщение&lt;&gt;.&#xA;Вернитесь в поселение, чтобы принять его.
                                { "Russian", "В ваше поселение поступило &lt;SPECIAL&gt;диссонансное сообщение&lt;&gt;&#xA;Вернитесь в поселение, чтобы принять его" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLE_BUI_VISIT_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- В ваше поселение поступило &lt;SPECIAL&gt;диссонансное сообщение&lt;&gt;.&#xA;Воспользуйтесь &lt;TECHNOLOGY&gt;телепортом космической станции&lt;&gt;, чтобы быстро вернуться в поселение.
                                { "Russian", "В ваше поселение поступило &lt;SPECIAL&gt;диссонансное сообщение&lt;&gt;&#xA;Вернитесь в поселение с помощью &lt;TECHNOLOGY&gt;телепорта&lt;&gt;" },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_BUILD_DONE_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %BUILDING%: строительство завершено!
                                -- %BUILDING% completed
                                { "Russian", "%BUILDING% — здание построено" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_BUILD_DONE_OSD_U" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- СТРОИТЕЛЬСТВО ЗАВЕРШЕНО!
                                -- CONSTRUCTION COMPLETE
                                { "Russian", "СТРОИТЕЛЬСТВО ЗАВЕРШЕНО" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_UPGRADE_DONE_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Строительство завершено — постройка %BUILDING% улучшена до %CLASS%!
                                -- %BUILDING% upgraded to %CLASS%
                                { "Russian", "Постройка %BUILDING% улучшена до %CLASS%а" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_UPGRADE_ERR_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Ведется улучшение другой постройки (%TIME%)
                                -- Another building is being upgraded (%TIME%)
                                { "Russian", "%TIME% до обновления другой постройки" },
                            }
                        },

                        --#region UI_SETTLEMENT_BUILD_[A-Z]_CLASS
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_BUILD_B_CLASS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Повысить до класса В
                                -- Upgrade to B-Class
                                { "Russian", "Улучшение до B-класса" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_BUILD_A_CLASS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Повысить до класса А
                                { "Russian", "Улучшение до A-класса" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_BUILD_S_CLASS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Повысить до класса S
                                { "Russian", "Улучшение до S-класса" },
                            }
                        },
                        --#endregion

                        --#region UI_SETTLE_BUI_SE_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLE_BUI_SE_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Станьте &lt;STELLAR&gt;куратором&lt;&gt; поселения&#xA;Воспользуйтесь &lt;TECHNOLOGY&gt;интерфейсом центра поселения&lt;&gt;, чтобы принять власть.
                                { "Russian", "Станьте &lt;STELLAR&gt;куратором&lt;&gt; поселения&#xA;Используйте &lt;TECHNOLOGY&gt;центральный интерфейс поселения&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLE_BUI_SE_MSG_MAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Обнаружено планетарное поселение&lt;&gt;&#xA;Доберитесь до него, чтобы помочь или изучить поселенцев&#xA;Откройте галактическую карту с помощью &lt;IMG&gt;QUICK_MENU&lt;&gt;.
                                { "Russian", "&lt;STELLAR&gt;Обнаружено планетарное поселение&lt;&gt;&#xA;Доберитесь до него, чтобы помочь или изучить поселенцев&#xA;Откройте галактическую карту с помощью &lt;IMG&gt;QUICK_MENU&lt;&gt;" },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_CLAIM_BUI" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- СЛУЖИТЬ КУРАТОРОМ
                                -- SERVE AS OVERSEER
                                { "Russian", "СЛУЖИТЬ В КАЧЕСТВЕ КУРАТОРА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_CONSTRUCT_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Ведется строительство постройки %BUILDING%: %STAGE%
                                -- %BUILDING% construction started - %STAGE%
                                { "Russian", "%BUILDING%, %STAGE% — строительство начато" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLE_BUILD_SITE_ERR_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Идет строительство другого здания (%TIME%)
                                -- Another building is under construction (%TIME%)
                                { "Russian", "%TIME% до возведения другого здания" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLE_MGR_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Жизнь на пограничье планеты %PLANET%
                                -- Life on the frontier of %PLANET%
                                { "Russian", "Приграничная жизнь на %PLANET%" },
                            }
                        },

                        --#region UI_SETTLE_MGR_OBJ_.*TIP
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLE_MGR_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Терминал управления&lt;&gt; в офисе куратора позволяет вам напрямую управлять своим поселением. Регулярно возвращайтесь к нему, чтобы заведовать строительством, принимать важные законы или решать споры между жителями.&#xA;&#xA;Сводку о всех ваших поселениях можно найти в &lt;TECHNOLOGY&gt;списке поселений&lt;&gt; в быстром меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                -- The &lt;STELLAR&gt;Administration Terminal&lt;&gt; in the Overseer's Office allows you to direct your settlement. Return regularly to direct construction, set key policies, or resolve disputes between the citizens.&#xA;&#xA;An overview of all your settlements can be accessed from the &lt;TECHNOLOGY&gt;Settlements Register&lt;&gt; in the Quick Menu (&lt;IMG&gt;QUICK_MENU&lt;&gt;)
                                { "Russian", "&lt;STELLAR&gt;Терминал управления&lt;&gt; в офисе куратора позволяет вам напрямую управлять своим поселением. Регулярно возвращайтесь к нему, чтобы заведовать строительством, принимать важные законы или решать споры между жителями.&#xA;&#xA;Информацию о всех ваших поселениях можно получить, открыв &lt;TECHNOLOGY&gt;список поселений&lt;&gt; из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLE_MGR_OBJ_BUGS_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Терминал управления&lt;&gt; в офисе куратора позволяет вам напрямую управлять своим поселением. Регулярно возвращайтесь к нему, чтобы заведовать строительством, принимать важные законы или решать споры между жителями.&#xA;&#xA;Сводку о всех ваших поселениях можно найти в &lt;TECHNOLOGY&gt;списке поселений&lt;&gt; в быстром меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;).&#xA;&#xA;&lt;SPECIAL&gt;Обнаружено биологическое заражение&lt;&gt; в поселении %SETTLEMENT%! Вернитесь, чтобы устранить его.
                                { "Russian", "&lt;STELLAR&gt;Терминал управления&lt;&gt; в офисе куратора позволяет вам напрямую управлять своим поселением. Регулярно возвращайтесь к нему, чтобы заведовать строительством, принимать важные законы или решать споры между жителями.&#xA;&#xA;Информацию о всех ваших поселениях можно получить, открыв &lt;TECHNOLOGY&gt;список поселений&lt;&gt; из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;).&#xA;&#xA;&lt;SPECIAL&gt;Обнаружено биологическое заражение&lt;&gt; в поселении %SETTLEMENT%! Вернитесь, чтобы устранить его." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLE_MGR_OBJ_SENT_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Терминал управления&lt;&gt; в офисе куратора позволяет вам напрямую управлять своим поселением. Регулярно возвращайтесь к нему, чтобы заведовать строительством, принимать важные законы или решать споры между жителями.&#xA;&#xA;Сводку о всех ваших поселениях можно найти в &lt;TECHNOLOGY&gt;списке поселений&lt;&gt; в быстром меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;).&#xA;&#xA;&lt;FUEL&gt;Обнаружен высокий уровень угрозы стражей&lt;&gt; в поселении %SETTLEMENT%! Вернитесь, чтобы защитить его.
                                { "Russian", "&lt;STELLAR&gt;Терминал управления&lt;&gt; в офисе куратора позволяет вам напрямую управлять своим поселением. Регулярно возвращайтесь к нему, чтобы заведовать строительством, принимать важные законы или решать споры между жителями.&#xA;&#xA;Информацию о всех ваших поселениях можно получить, открыв &lt;TECHNOLOGY&gt;список поселений&lt;&gt; из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;).&#xA;&#xA;&lt;FUEL&gt;Обнаружен высокий уровень угрозы стражей&lt;&gt; в поселении %SETTLEMENT%! Вернитесь, чтобы защитить его." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLE_MGR_OBJ_JUDGE_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Терминал управления&lt;&gt; в офисе куратора позволяет вам напрямую управлять своим поселением. Регулярно возвращайтесь к нему, чтобы заведовать строительством, принимать важные законы или решать споры между жителями.&#xA;&#xA;Сводку о всех ваших поселениях можно найти в &lt;TECHNOLOGY&gt;списке поселений&lt;&gt; в быстром меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;).&#xA;&#xA;Требуется вмешательство куратора: %JUDGEMENT% в поселении %SETTLEMENT%.
                                { "Russian", "&lt;STELLAR&gt;Терминал управления&lt;&gt; в офисе куратора позволяет вам напрямую управлять своим поселением. Регулярно возвращайтесь к нему, чтобы заведовать строительством, принимать важные законы или решать споры между жителями.&#xA;&#xA;Информацию о всех ваших поселениях можно получить, открыв &lt;TECHNOLOGY&gt;список поселений&lt;&gt; из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;).&#xA;&#xA;Требуется вмешательство куратора: %JUDGEMENT% в поселении %SETTLEMENT%." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLE_MGR_OBJ_BUILD_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Терминал управления&lt;&gt; в офисе куратора позволяет вам напрямую управлять своим поселением. Регулярно возвращайтесь к нему, чтобы заведовать строительством, принимать важные законы или решать споры между жителями.&#xA;&#xA;Сводку о всех ваших поселениях можно найти в &lt;TECHNOLOGY&gt;списке поселений&lt;&gt; в быстром меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;).&#xA;&#xA;Строительство в поселении %SETTLEMENT% &lt;STELLAR&gt;завершено&lt;&gt;. Вернитесь на церемонию официального открытия!
                                { "Russian", "&lt;STELLAR&gt;Терминал управления&lt;&gt; в офисе куратора позволяет вам напрямую управлять своим поселением. Регулярно возвращайтесь к нему, чтобы заведовать строительством, принимать важные законы или решать споры между жителями.&#xA;&#xA;Информацию о всех ваших поселениях можно получить, открыв &lt;TECHNOLOGY&gt;список поселений&lt;&gt; из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;).&#xA;&#xA;Строительство в поселении %SETTLEMENT% &lt;STELLAR&gt;завершено&lt;&gt;. Вернитесь на церемонию официального открытия!" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLE_MGR_OBJ_BUILD_TIP_FMT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Терминал управления&lt;&gt; в офисе куратора позволяет вам напрямую управлять своим поселением. Регулярно возвращайтесь к нему, чтобы заведовать строительством, принимать важные законы или решать споры между жителями.&#xA;&#xA;Сводку о всех ваших поселениях можно найти в &lt;TECHNOLOGY&gt;списке поселений&lt;&gt; в быстром меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;).&#xA;&#xA;Соберите материалы для строительства постройки &lt;TECHNOLOGY&gt;%BUILDING%&lt;&gt; в поселении %SETTLEMENT%.&#xA;Добудьте ресурс «%ITEM%» для этапа &lt;TECHNOLOGY&gt;%STAGE%&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;&#xA;%ITEM_TIP%
                                { "Russian", "&lt;STELLAR&gt;Терминал управления&lt;&gt; в офисе куратора позволяет вам напрямую управлять своим поселением. Регулярно возвращайтесь к нему, чтобы заведовать строительством, принимать важные законы или решать споры между жителями.&#xA;&#xA;Информацию о всех ваших поселениях можно получить, открыв &lt;TECHNOLOGY&gt;список поселений&lt;&gt; из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;).&#xA;&#xA;Соберите материалы для строительства постройки &lt;TECHNOLOGY&gt;%BUILDING%&lt;&gt; в поселении %SETTLEMENT%.&#xA;Добудьте ресурс «%ITEM%» для этапа &lt;TECHNOLOGY&gt;%STAGE%&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;&#xA;%ITEM_TIP%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLE_MGR_OBJ_BUILD_FIN_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Терминал управления&lt;&gt; в офисе куратора позволяет вам напрямую управлять своим поселением. Регулярно возвращайтесь к нему, чтобы заведовать строительством, принимать важные законы или решать споры между жителями.&#xA;&#xA;Сводку о всех ваших поселениях можно найти в &lt;TECHNOLOGY&gt;списке поселений&lt;&gt; в быстром меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;).&#xA;&#xA;Строительство в поселении %SETTLEMENT% &lt;STELLAR&gt;завершено&lt;&gt;. Вернитесь на церемонию официального открытия!
                                { "Russian", "&lt;STELLAR&gt;Терминал управления&lt;&gt; в офисе куратора позволяет вам напрямую управлять своим поселением. Регулярно возвращайтесь к нему, чтобы заведовать строительством, принимать важные законы или решать споры между жителями.&#xA;&#xA;Информацию о всех ваших поселениях можно получить, открыв &lt;TECHNOLOGY&gt;список поселений&lt;&gt; из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;).&#xA;&#xA;Строительство в поселении %SETTLEMENT% &lt;STELLAR&gt;завершено&lt;&gt;. Вернитесь на церемонию официального открытия!" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLE_MGR_OBJ_PROD_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Терминал управления&lt;&gt; в офисе куратора позволяет вам напрямую управлять своим поселением. Регулярно возвращайтесь к нему, чтобы заведовать строительством, принимать важные законы или решать споры между жителями.&#xA;&#xA;Сводку о всех ваших поселениях можно найти в &lt;TECHNOLOGY&gt;списке поселений&lt;&gt; в быстром меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;).&#xA;&#xA;&lt;COMMODITY&gt;Излишки материалов&lt;&gt; можно забрать в поселении %SETTLEMENT%.
                                { "Russian", "&lt;STELLAR&gt;Терминал управления&lt;&gt; в офисе куратора позволяет вам напрямую управлять своим поселением. Регулярно возвращайтесь к нему, чтобы заведовать строительством, принимать важные законы или решать споры между жителями.&#xA;&#xA;Информацию о всех ваших поселениях можно получить, открыв &lt;TECHNOLOGY&gt;список поселений&lt;&gt; из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;).&#xA;&#xA;&lt;COMMODITY&gt;Излишки материалов&lt;&gt; можно забрать в поселении %SETTLEMENT%." },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_UPGRADE_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Ведется улучшение постройки %BUILDING%
                                -- %BUILDING% upgrade now in progress
                                { "Russian", "Ведётся улучшение постройки %BUILDING%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLE_FIREWORKS_PARTY_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %PARTY% в поселении %SETTLEMENT%!
                                -- %SETTLEMENT% celebrates %PARTY%!
                                { "Russian", "%SETTLEMENT% отмечает праздник %PARTY%!" },
                            }
                        },
                        { -- не влазеет
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLE_JUDGE_TYPE_DEBRIEF" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TRADEABLE&gt;экспедиция жителей&lt;&gt; готова сделать отчет
                                -- &lt;TRADEABLE&gt;citizen expedition&lt;&gt; ready for debrief
                                { "Russian", "готов отчёт &lt;TRADEABLE&gt;экспедиции&lt;&gt;" },
                            }
                        },
                    }
                },
            }
        }
    }
}
