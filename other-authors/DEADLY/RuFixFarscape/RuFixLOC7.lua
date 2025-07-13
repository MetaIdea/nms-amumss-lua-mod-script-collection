NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]  = "_RuFixLOC7.pak",
    ["MOD_AUTHOR"]    = "gh0stwizard",
    ["NMS_VERSION"]   = "5.72",
    ["EXML_CREATE"]   = "false",
    ["MODIFICATIONS"] = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                { -- LANGUAGE/NMS_LOC7_RUSSIAN.MBIN
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_LOC7_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_HEAT_LEVEL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Нагрев:" }, -- Тепловая нагрузка: (Thermal Load:)
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_TECH_PACK_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запакованный &lt;TECHNOLOGY&gt;комплект проводки&lt;&gt;, разработанный для упрощения хранения основной технологии. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;STELLAR&gt;установку&lt;&gt;.&#xA;&#xA;%TECH_DESC%
                                -- An archived &lt;TECHNOLOGY&gt;wiring package&lt;&gt;, designed to allow easy storage of core technology. Use &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt; to begin the &lt;STELLAR&gt;installation process&lt;&gt;.&#xA;&#xA;%TECH_DESC%
                                { "Russian", "&lt;TECHNOLOGY&gt;Комплект деталей&lt;&gt; для сборки технологии. Нажмите &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;STELLAR&gt;установку&lt;&gt;.&#xA;&#xA;%TECH_DESC%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_TECH_BOX_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;Заранее собранный комплект проводки&lt;&gt;, разработанный для упрощения установки основной технологии. Используйте &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;STELLAR&gt;установку&lt;&gt;.&#xA;&#xA;%TECH_DESC%
                                -- A &lt;TECHNOLOGY&gt;pre-built wiring package&lt;&gt;, designed to allow easy installation of core technology. Use &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt; to begin the &lt;STELLAR&gt;installation process&lt;&gt;.&#xA;&#xA;%TECH_DESC%
                                { "Russian", "&lt;TECHNOLOGY&gt;Новый набор для сборки&lt;&gt; технологии. Нажмите &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;, чтобы начать &lt;STELLAR&gt;установку&lt;&gt;.&#xA;&#xA;%TECH_DESC%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_TECH_PACK_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Комплект деталей" }, -- Пакет запакованной технологии (Archived Technology Package)
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_TECH_BOX_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Russian", "Набор для сборки" }, -- Пакет устанавливаемой технологии (Installable Technology Package)
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_CRUISE1_LANG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Метка даты &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE1%&lt;&gt; :: Прибыли в систему %SYSTEM%.&#xA;— &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;кзкззт&lt;&gt; —варп-двигатели отключились в середине прыжка, реактор критически поврежден — &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;кззт&lt;&gt; —&#xA;У них заканчиваются запчасти, мы не можем продолжать — &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;кзкззт&lt;&gt; — по крайней мере, криокамера капитана начала размораживаться...
                                -- Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE1%&lt;&gt; :: Arrived in the %SYSTEM% system.&#xA;– &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;kzkzzt&lt;&gt; –warp engines shut down mid-jump, reactor critically damaged – &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;kzzt&lt;&gt; –&#xA;They're starting to run out of parts now, we can't continue like this – &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;kzkzzt&lt;&gt; – at least the captain's cryopod is beginning to thaw...
                                { "Russian", "Дата &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE1%&lt;&gt; :: Прибыли в систему %SYSTEM%.&#xA;— &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;кзкззт&lt;&gt; —варп-двигатели отключились в середине прыжка, реактор критически поврежден — &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;кззт&lt;&gt; —&#xA;У них заканчиваются запчасти, мы не можем продолжать — &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;кзкззт&lt;&gt; — по крайней мере, криокамера капитана начала размораживаться..." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_CRUISE2_LANG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Метка даты &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE2%&lt;&gt; :: Прибыли в систему %SYSTEM%.&#xA;Согласно компьютеру, с момента вылета прошло десять лет. Возможно, он прав. Нас охватила всепоглощающая усталость, и нам с трудом удается сохранять воспоминания.&#xA;По крайней мере, с тех пор, как проснулся капитан, в жизни появился ритм. Но куда мы летим? Опять во тьму, опять к разочарованию...
                                -- Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE2%&lt;&gt; :: Arrived in the %SYSTEM% system.&#xA;The computer tells us it has been over a decade since we left. Perhaps it is right. The tiredness is all-consuming, and we struggle to keep the memories fresh.&#xA;There is at least rhythm to life again, with the captain awake. But where are we going? Once more into the black, once more to disappointment...
                                { "Russian", "Дата &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE2%&lt;&gt; :: Прибыли в систему %SYSTEM%.&#xA;Согласно компьютеру, с момента вылета прошло десять лет. Возможно, он прав. Нас охватила всепоглощающая усталость, и нам с трудом удается сохранять воспоминания.&#xA;По крайней мере, с тех пор, как проснулся капитан, в жизни появился ритм. Но куда мы летим? Опять во тьму, опять к разочарованию..." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_CRUISE3_LANG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Метка даты &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE3%&lt;&gt; :: Прибыли в систему %SYSTEM%.&#xA;Любой корабль, даже самый лучший, — это лишь жалкая имитация планеты. Ты начинаешь осознавать, чем он на самом деле является: огромным металлическим скелетом.&#xA;Мы скучаем по теплой земле, объятиям почвы, мягкому переходу от света к темноте. Звезды прекрасны, но они холодны и беспощадны.&#xA;Мы не живем, а лишь бесконечно парим в космосе.&#xA;Мы не живем, но все же мы живы.
                                -- Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE3%&lt;&gt; :: Arrived in the %SYSTEM% system.&#xA;A ship is a poor imitiation of a planet, even the best ship. You begin to see it for what it is: a vast metal skeleton.&#xA;We miss the warm earth, the embrace of the soil, the soft changing light to dark. The stars are beautiful, but they are cold and unforgiving.&#xA;It is no life, to float endlessly through the expanse.&#xA;It is no life. But it is life.
                                { "Russian", "Дата &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE3%&lt;&gt; :: Прибыли в систему %SYSTEM%.&#xA;Любой корабль, даже самый лучший, — это лишь жалкая имитация планеты. Ты начинаешь осознавать, чем он на самом деле является: огромным металлическим скелетом.&#xA;Мы скучаем по теплой земле, объятиям почвы, мягкому переходу от света к темноте. Звезды прекрасны, но они холодны и беспощадны.&#xA;Мы не живем, а лишь бесконечно парим в космосе.&#xA;Мы не живем, но все же мы живы." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_CRUISE4_LANG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Метка даты &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE4%&lt;&gt; :: Прибыли в систему %SYSTEM%.&#xA;Когда мы пересекаем очередную границу сектора, то позволяем себе вспоминать наш первый старт.&#xA;Наш дом обратился против нас. Мы узнали, на что он не способен. Его гравитация, его расплавленное ядро, его медленное скатывание к безразличной гибели.&#xA;Наша самодельная флотилия была неполной, загрузили лишь часть капсул. Взрывная волна уничтожила тех, кто оказался на низкой орбите, и разбросала остальных. Огонь, хаос... — &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;кззт&lt;&gt; —
                                -- Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE4%&lt;&gt; :: Arrived in the %SYSTEM% system.&#xA;As we cross another sector boundary, we permit ourselves to reflect on our very first departure.&#xA;Our own home turned against us. We had learned what it could not. Its gravity, it molten core, its slow decay towards impersonal doom.&#xA;Our makeshift fleet was incomplete, so few of the pods loaded. The shockwave consumed those in low orbit, scattered the rest of us. The fire, the chaos, the – &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;kzzt&lt;&gt; –
                                { "Russian", "Дата &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE4%&lt;&gt; :: Прибыли в систему %SYSTEM%.&#xA;Когда мы пересекаем очередную границу сектора, то позволяем себе вспоминать наш первый старт.&#xA;Наш дом обратился против нас. Мы узнали, на что он не способен. Его гравитация, его расплавленное ядро, его медленное скатывание к безразличной гибели.&#xA;Наша самодельная флотилия была неполной, загрузили лишь часть капсул. Взрывная волна уничтожила тех, кто оказался на низкой орбите, и разбросала остальных. Огонь, хаос... — &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;кззт&lt;&gt; —" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_ROGUE_FREIGHT_CAP_LANG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Метка даты &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE1%&lt;&gt; :: Вой в моей каюте стал невыносим. Должно быть, проблема в одной из систем фильтрации. Подозреваю, что какой-то механизм трется о другой.&#xA;Метка даты &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE2%&lt;&gt; :: Невыносимый вой слышится в каждом уголке этого корабля, но больше его никто не слышит. Почему этот адский хор выбрал меня? Я проклят.&#xA;Метка даты &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE3%&lt;&gt; :: Я не проклят. Я благословлен! Это не вой... это песня. Вселенная поет мне, мне одному. Я отвечу ей.&#xA;Метка даты &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE4%&lt;&gt; :: Он так прекрасен. Почему остальные этого не видят? Плевать. Это мой корабль, и они полетят, куда я им прикажу. Он будет...&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;кзкззт&lt;&gt; —моим.&#xA;Метка даты &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE5%&lt;&gt; :: Я должен поймать его. Я должен поймать его. Я должен поймать его. Я дол...&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;кзкззт&lt;&gt; — левиа — &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;кзкззт&lt;&gt; —
                                -- Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE1%&lt;&gt; :: The wailing in my quarters has become unbearable. It must be a problem with one of the filtration systems, some mechanism grinding against another.&#xA;Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE2%&lt;&gt; :: Incessant wailing fills every corner of this vessel. None of the others hear it. Why has this hellish chorus chosen me? I am cursed!&#xA;Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE3%&lt;&gt; :: I am not cursed, I am blessed! It is not a wail... it is a song. The universe sings to me, to me alone. I will answer.&#xA;Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE4%&lt;&gt; :: It is so beautiful. Why can they not see? No matter, this is my ship, they will go where ordered. It will be–&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;kzkzzt&lt;&gt; –mine&#xA;Datestamp &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE5%&lt;&gt; :: I must have it. I must have it. I must have it. I mu–&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;kzkzzt&lt;&gt; – levia – &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;kzkzzt&lt;&gt; –
                                { "Russian", "Дата &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE1%&lt;&gt; :: Вой в моей каюте стал невыносим. Должно быть, проблема в одной из систем фильтрации. Подозреваю, что какой-то механизм трется о другой.&#xA;Дата &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE2%&lt;&gt; :: Невыносимый вой слышится в каждом уголке этого корабля, но больше его никто не слышит. Почему этот адский хор выбрал меня? Я проклят.&#xA;Дата &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE3%&lt;&gt; :: Я не проклят. Я благословлен! Это не вой... это песня. Вселенная поет мне, мне одному. Я отвечу ей.&#xA;Дата &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE4%&lt;&gt; :: Он так прекрасен. Почему остальные этого не видят? Плевать. Это мой корабль, и они полетят, куда я им прикажу. Он будет...&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;кзкззт&lt;&gt; —моим.&#xA;Дата &lt;STELLAR&gt;&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;%DATE5%&lt;&gt; :: Я должен поймать его. Я должен поймать его. Я должен поймать его. Я дол...&lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;кзкззт&lt;&gt; — левиа — &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;кзкззт&lt;&gt; — " },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DAMAGE_POTENTIAL_SHIELD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Максимальный потенциал урона (со щитом): &lt;STELLAR&gt;%AMOUNT%&lt;&gt; УВС
                                { "Russian", "Пиковый потенциал урона против щитов: &lt;STELLAR&gt;%AMOUNT%&lt;&gt; УВС" },
                            }
                        },
                        -- СТРОИТЕЛЬСТВО
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BUILD_MENU_CYCLEROTATE_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Ось вращения
                                { "Russian", "Ось" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BUILD_MENU_ROTATE_NAME_X" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Повернуть по оси X
                                -- Rotate X
                                { "Russian", "Вращать по X" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BUILD_MENU_ROTATE_NAME_Z" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Повернуть по оси Z
                                -- Rotate Z
                                { "Russian", "Вращать по Z" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BUILD_MENU_ROTATE_NAME_Y" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Повернуть по оси Y
                                -- Rotate Y
                                { "Russian", "Вращать по Y" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BUILD_MENU_FREEPLACE_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Переключить режим свободного размещения
                                { "Russian", "Свободное размещение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BUILD_MENU_EDITPLACE_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Переключить режим редактирования/строительства
                                { "Russian", "Редактир. / строить" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BUILD_MENU_WIRE_TOGGLE_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Переключить режим прокладки проводки
                                { "Russian", "Прокладка проводки" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BUILD_MENU_PIPE_TOGGLE_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Переключить режим прокладки трубопроводов
                                { "Russian", "Прокладка трубопроводов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BUILD_MENU_BUILD_WIRE_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Разместить провод
                                { "Russian", "Подключить" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PORTAL_EXP_LIBRARY7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Этот архив защищен, доступ к нему открыт только для корвакской секты-раскольников. Моему экзокостюму едва удается расшифровать его. &#xA;&#xA;&lt;STORY_HIGH&gt;Внедрение вай'кинов предлагалось в разные эры Единства. Вид сопротивляется попыткам. Но ошибки — наш учитель.&#xA;&#xA;Все вай-синты начинали кричать и буйно реагировать сразу после контакта. Кодекс чести крайне специфичен / противоречив / появился в результате старой травмы. Причина установлена.&#xA;&#xA;Обнаружены следы нескольких видов-прародителей. Вариант Вай = последние выжившие из семейства, обреченного на самоуничтожение. Вай'кины боятся замещения, так как сами заместили своих родичей. Они не осознают источник своего страха. &#xA;&#xA;Хирк, Нал — это старый путь. Брат против брата. Пути можно осмыслить. Пути последовательны. Ошибки — наш учитель.&lt;&gt;
                                { "Russian", "Этот архив защищен, доступ к нему открыт только для корвакской секты-раскольников. Моему экзокостюму едва удается расшифровать его.&#xA;&#xA;&lt;STORY_HIGH&gt;Внедрение вай'кинов предлагалось в разные эры Единства. Вид сопротивляется попыткам. Но ошибки — наш учитель.&#xA;&#xA;Все вай-синты начинали кричать и буйно реагировать сразу после контакта. Кодекс чести крайне специфичен / противоречив / появился в результате старой травмы. Причина установлена.&#xA;&#xA;Обнаружены следы нескольких видов-прародителей.&#xA;&#xA;Вариант Вай = последние выжившие из семейства, обреченного на самоуничтожение. Вай'кины боятся замещения, так как сами заместили своих родичей. Они не осознают источник своего страха.&#xA;&#xA;Хирк, Нал — это старый путь. Брат против брата. Пути можно осмыслить. Пути последовательны. Ошибки — наш учитель.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BUILD_MENU_TOGGLE_RELATIVES" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Заменить блок
                                -- Swap Part
                                { "Russian", "Заменить" },
                            }
                        },
                        -- в текущем виде этот newline выглядит так себе
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FIRST_BIOFRIG_DREAM_INTRO" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Друг мой, я много раз видел, как твоя судьба переплеталась с моей. Должен ли я снова присоединиться к твоему флоту грузового судна?&lt;NEWLINE&gt;Приходи, погрузись в сон вместе со мной. Кем ты являешься в этой жизни?
                                { "Russian", "Друг мой, я много раз видел, как твоя судьба переплеталась с моей. Должен ли я снова присоединиться к твоему флоту грузового судна?&#xA;Приходи, погрузись в сон вместе со мной. Кем ты являешься в этой жизни?" },
                            }
                        },
                        -- обрезается после "чтобы получить ценные нагр"
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED8_DETAIL_LINE3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Отправьтесь в путешествие через галактику на вашем крупном корабле. Доберитесь до каждого &lt;SPECIAL&gt;места встречи&lt;&gt;, чтобы получить ценные награды.
                                { "Russian", "Отправьтесь в путешествие через галактику и доберитесь до каждого &lt;SPECIAL&gt;места встречи&lt;&gt;, чтобы получить ценные награды." },
                            }
                        },
                        --обрезается после "Не знаю, к чему меня привели последствия"
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PORTAL_CORE_52" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Атлас просил меня перезагрузить его, пройдя сквозь его интерфейс в центре галактики. Это уже происходило, и это ничего не могло изменить. У него все равно оставалось лишь 16 минут.&#xA;&#xA;Я не знал, вспомню ли что-нибудь после. Я пробудился возле звездолета... Выполнил ли я перезагрузку? Или это сделал кто-то другой?&#xA;&#xA;А разве у меня был выбор?&#xA;&#xA;Не знаю, правильными ли были мои решения. Не знаю, к чему меня привели последствия моих действий.&#xA;&#xA;В итоге мне оставалось только наслаждаться своими странствиями.
                                { "Russian", "Атлас просил меня перезагрузить его, пройдя сквозь его интерфейс в центре галактики. Это уже происходило, и это ничего не могло изменить. У него все равно оставалось лишь 16 минут.&#xA;&#xA;Я не знал, вспомню ли что-нибудь после. Я пробудился возле звездолёта... Выполнил ли я перезагрузку?&#xA;&#xA;Был ли у меня выбор?&#xA;&#xA;Не знаю, правильными ли были мои решения.&#xA;&#xA;В итоге мне оставалось только наслаждаться своими странствиями." },
                            }
                        },
                        -- везде не правильный перенос "с момента пробоины"
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PORTAL_WATERSTORY_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Я зашел в здание с радиомачтой и обнаружил новое сообщение от того же самого незнакомца.&#xA;&#xA;&lt;STORY_HIGH&gt;-{{ ЖУРНАЛ: &lt;&gt;&lt;STELLAR&gt;2015F&lt;&gt;&lt;STORY_HIGH&gt;. &lt;&gt;&lt;STELLAR&gt;+407 солов&lt;&gt;&lt;STORY_HIGH&gt; с момента пробоины&#xA;&#xA;Если вы это слушаете, значит, вы нашли наш последний журнал. Я оставляю это сообщение в память о своих погибших друзьях и в назидание всякому, кто может последовать нашим путем.&#xA;&#xA;В глубине души я не перестаю надеяться, что кто-нибудь меня найдет. И все же... молю, не ищите меня. }}-&lt;&gt;&#xA;&#xA;Я заметил, что незнакомец оставил после себя модуль улучшения для &lt;TECHNOLOGY&gt;аэрационной мембраны&lt;&gt;. В служебной истории модуля я нашел серийный номер корабля его бывшего владельца.
                                { "Russian", "Я зашел в здание с радиомачтой и обнаружил новое сообщение от того же самого незнакомца.&#xA;&#xA;&lt;STORY_HIGH&gt;-{{ ЖУРНАЛ: &lt;&gt;&lt;STELLAR&gt;2015F&lt;&gt;. &lt;STELLAR&gt;+407 сол&lt;&gt; &lt;STORY_HIGH&gt;с момента пробоины&#xA;&#xA;Если вы это слушаете, значит, вы нашли наш последний журнал. Я оставляю это сообщение в память о своих погибших друзьях и в назидание всякому, кто может последовать нашим путем.&#xA;&#xA;В глубине души я не перестаю надеяться, что кто-нибудь меня найдет. И все же... молю, не ищите меня. }}-&lt;&gt;&#xA;&#xA;Я заметил, что незнакомец оставил после себя модуль улучшения для &lt;TECHNOLOGY&gt;аэрационной мембраны&lt;&gt;. В служебной истории модуля я нашел серийный номер корабля его бывшего владельца." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PORTAL_WATERSTORY_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Проигнорировав предупреждение незнакомца, я нашел обломки его корабля.&#xA;&#xA;&lt;STORY_HIGH&gt;-{{ ЖУРНАЛ: &lt;&gt;&lt;STELLAR&gt;0003A&lt;&gt;&lt;STORY_HIGH&gt;. &lt;&gt;&lt;STELLAR&gt;+4 сола&lt;&gt;&lt;STORY_HIGH&gt; с момента пробоины&#xA;&#xA;Большинство членов экипажа погибло. Разгерметизацию смогли пережить лишь те из нас, кто уже был облачен в скафандры. Нам еще повезло, что малые звездолеты успели отлететь раньше, чем схлопнулся основной корпус.&#xA;&#xA;Ни на одном из наших звездолетов нет гипердвигателя. Думаю, мы могли бы извлечь нужные чертежи из базы данных нашего грузового судна. Похоже, оно погрузилось на самое дно океана.&#xA;&#xA;К счастью, у нас есть чертежи «Наутилона». }}-&lt;&gt;
                                { "Russian", "Проигнорировав предупреждение незнакомца, я нашел обломки его корабля.&#xA;&#xA;&lt;STORY_HIGH&gt;-{{ ЖУРНАЛ: &lt;&gt;&lt;STELLAR&gt;0003A&lt;&gt;. &lt;STELLAR&gt;+4 сол&lt;&gt; &lt;STORY_HIGH&gt;с момента пробоины&#xA;&#xA;Большинство членов экипажа погибло. Разгерметизацию смогли пережить лишь те из нас, кто уже был облачен в скафандры. Нам еще повезло, что малые звездолёты успели отлететь раньше, чем схлопнулся основной корпус.&#xA;&#xA;Ни на одном из наших звездолётов нет гипердвигателя. Думаю, мы могли бы извлечь нужные чертежи из базы данных нашего грузового судна. Похоже, оно погрузилось на самое дно океана.&#xA;&#xA;К счастью, у нас есть чертежи Наутилона. }}-&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PORTAL_WATERSTORY_5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Мощный сонар обнаружил сигнал крупного разбившегося грузового судна.&#xA;&#xA;&lt;STORY_HIGH&gt;-{{ ЖУРНАЛ: &lt;&gt;&lt;STELLAR&gt;0012B&lt;&gt;&lt;STORY_HIGH&gt;. &lt;&gt;&lt;STELLAR&gt;+8 солов&lt;&gt;&#xA; с момента пробоины&#xA;&lt;STORY_HIGH&gt;Мы нашли место крушения, но бортовой компьютер судна не пережил аварию. Мы забрали все найденные припасы и ушли. Когда вода просочится сквозь оболочку реактора, нам лучше быть подальше.&#xA;&#xA;Характер приливов на этой планете очень странный. Вода быстро прибывает, но будто не собирается спадать. Если мы дождемся отлива, то сможем добыть больше полезных ресурсов. }}-&lt;&gt;&#xA;&#xA;Выжившие добрались до обломков своего судна, но вскоре ушли. Чтобы найти их, придется сделать то же самое.
                                { "Russian", "Мощный сонар обнаружил сигнал крупного разбившегося грузового судна.&#xA;&#xA;&lt;STORY_HIGH&gt;-{{ ЖУРНАЛ: &lt;&gt;&lt;STELLAR&gt;0012B&lt;&gt;. &lt;STELLAR&gt;+8 сол&lt;&gt; &lt;STORY_HIGH&gt;с момента пробоины&#xA;&#xA;Мы нашли место крушения, но бортовой компьютер судна не пережил аварию. Мы забрали все найденные припасы и ушли. Когда вода просочится сквозь оболочку реактора, нам лучше быть подальше.&#xA;&#xA;Характер приливов на этой планете очень странный. Вода быстро прибывает, но будто не собирается спадать. Если мы дождемся отлива, то сможем добыть больше полезных ресурсов. }}-&lt;&gt;&#xA;&#xA;Выжившие добрались до обломков своего судна, но вскоре ушли. Чтобы найти их, придется сделать то же самое." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PORTAL_WATERSTORY_6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Мне удалось отследить путь выживших через океан по их затухающим сигналам.&#xA;&#xA;&lt;STORY_HIGH&gt;... ДОСТУП К ЖУРНАЛУ ПОЛУЧЕН... ОТРАЖЕННЫЙ СИГНАЛ ИСКАЖЕН... ПОЛУЧАЮ ДАННЫЕ...&#xA;&#xA;-{{ ЖУРНАЛ: &lt;&gt;&lt;STELLAR&gt;0062A&lt;&gt;&lt;STORY_HIGH&gt;. &lt;&gt;&lt;STELLAR&gt;+12 солов&lt;&gt;&#xA; с момента пробоины&#xA;&lt;STORY_HIGH&gt;Сегодня была моя очередь нырять. Как всегда, ничего интересного. Только водоросли и камни.&#xA;&#xA;Вода все не убывает. Некоторые члены экипажа начали плавать без костюмов. Это так заманчиво. }}-&lt;&gt;
                                { "Russian", "Мне удалось отследить путь выживших через океан по их затухающим сигналам.&#xA;&#xA;&lt;STORY_HIGH&gt;... ДОСТУП К ЖУРНАЛУ ПОЛУЧЕН... ОТРАЖЕННЫЙ СИГНАЛ ИСКАЖЕН... ПОЛУЧАЮ ДАННЫЕ...&#xA;&#xA;-{{ ЖУРНАЛ: &lt;&gt;&lt;STELLAR&gt;0062A&lt;&gt;. &lt;STELLAR&gt;+12 сол&lt;&gt; &lt;STORY_HIGH&gt;с момента пробоины&#xA;&#xA;Сегодня была моя очередь нырять. Как всегда, ничего интересного. Только водоросли и камни.&#xA;&#xA;Вода все не убывает. Некоторые члены экипажа начали плавать без костюмов. Это так заманчиво. }}-&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PORTAL_WATERSTORY_7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STORY_HIGH&gt;-{{ ЖУРНАЛ: &lt;&gt;&lt;STELLAR&gt;0115C&lt;&gt;&lt;STORY_HIGH&gt;. &lt;&gt;&lt;STELLAR&gt;+21 сол&lt;&gt;&#xA; с момента пробоины&#xA;&lt;STORY_HIGH&gt;Вторая команда ныряльщиков вернулась сегодня раньше обычного. Они нашли пещеру, полную неведомых кристаллов, но на подводной лодке погас свет, и им пришлось вернуться.&#xA;&#xA;Вид у них тревожный и недовольный. Но мы должны снова там побывать. Надо успеть, пока мы помним координаты пещеры, пока переменчивые приливные течения не отняли ее у нас. Без продвинутых материалов нам ничего не построить.&#xA;&#xA;ЖУРНАЛ: &lt;STELLAR&gt;0115D&lt;&gt;. Мы починили прожекторы «Наутилона». Я отправляюсь. }}-&lt;&gt;
                                { "Russian", "&lt;STORY_HIGH&gt;-{{ ЖУРНАЛ: &lt;&gt;&lt;STELLAR&gt;0115C&lt;&gt;. &lt;STELLAR&gt;+21 сол&lt;&gt; &lt;STORY_HIGH&gt;с момента пробоины&#xA;&#xA;Вторая команда ныряльщиков вернулась сегодня раньше обычного. Они нашли пещеру, полную неведомых кристаллов, но на подводной лодке погас свет, и им пришлось вернуться.&#xA;&#xA;Вид у них тревожный и недовольный. Но мы должны снова там побывать. Надо успеть, пока мы помним координаты пещеры, пока переменчивые приливные течения не отняли ее у нас. Без продвинутых материалов нам ничего не построить.&#xA;&#xA;ЖУРНАЛ: &lt;STELLAR&gt;0115D&lt;&gt;. Мы починили прожекторы Наутилона. Я отправляюсь. }}-&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PORTAL_WATERSTORY_8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STORY_HIGH&gt;-{{ ЖУРНАЛ: &lt;&gt;&lt;STELLAR&gt;0119A&lt;&gt;&lt;STORY_HIGH&gt;. &lt;&gt;&lt;STELLAR&gt;+23&lt;&gt;&#xA; сола с момента пробоины&#xA;&lt;STORY_HIGH&gt;Мы нашли пещеру! Иначе и быть не могло, но все же какая находка!&#xA;&#xA;Огромные ярко-красные кристаллы, богатые залежи металлов, концентрированный дейтерий... Как раз то, что нам нужно! Похоже, у нас все-таки есть шанс. Теперь бы еще поспать. Всего одну ночь провести в сухом уютном месте... }}-&lt;&gt;
                                { "Russian", "&lt;STORY_HIGH&gt;-{{ ЖУРНАЛ: &lt;&gt;&lt;STELLAR&gt;0119A&lt;&gt;. &lt;STELLAR&gt;+23 сол&lt;&gt; &lt;STORY_HIGH&gt;с момента пробоины&#xA;&#xA;Мы нашли пещеру! Иначе и быть не могло, но все же какая находка!&#xA;&#xA;Огромные ярко-красные кристаллы, богатые залежи металлов, концентрированный дейтерий... Как раз то, что нам нужно! Похоже, у нас все-таки есть шанс. Теперь бы еще поспать. Всего одну ночь провести в сухом уютном месте... }}-&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PORTAL_WATERSTORY_9" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STORY_HIGH&gt;-{{ ЖУРНАЛ: &lt;&gt;&lt;STELLAR&gt;0328A&lt;&gt;&lt;STORY_HIGH&gt;. &lt;&gt;&lt;STELLAR&gt;+98 солов&lt;&gt;&#xA; с момента пробоины&#xA;&lt;STORY_HIGH&gt;Опять этот сон.&#xA;&#xA;Бесконечные фиолетовые волны на километры вокруг. Сначала они дарят избавление от тупой алой боли. Но затем... Меня не покидает ощущение, будто там есть что-то еще. Я оглядываюсь вокруг. Ничего. Совершено ничего.&#xA;&#xA;Я моргаю и вижу их. Сначала едва различимые очертания. Но ошибки быть не может. Повторяющиеся геометрические фигуры, которыми усеяно все небо. Треугольники ряд за рядом медленно плывут надо мной... И я не могу объяснить почему, но это самое ужасное, что я видел в жизни.&#xA;&#xA;Я просыпаюсь, вижу дождь и даже испытываю некоторое облегчение. }}-&lt;&gt;
                                { "Russian", "&lt;STORY_HIGH&gt;-{{ ЖУРНАЛ: &lt;&gt;&lt;STELLAR&gt;0328A&lt;&gt;. &lt;STELLAR&gt;+98 сол&lt;&gt; &lt;STORY_HIGH&gt;с момента пробоины&#xA;&#xA;Опять этот сон.&#xA;&#xA;Бесконечные фиолетовые волны на километры вокруг. Сначала они дарят избавление от тупой алой боли. Но затем... Меня не покидает ощущение, будто там есть что-то еще. Я оглядываюсь вокруг. Ничего. Совершено ничего.&#xA;&#xA;Я моргаю и вижу их. Сначала едва различимые очертания. Но ошибки быть не может. Повторяющиеся геометрические фигуры, которыми усеяно все небо. Треугольники ряд за рядом медленно плывут надо мной... И я не могу объяснить почему, но это самое ужасное, что я видел в жизни.&#xA;&#xA;Я просыпаюсь, вижу дождь и даже испытываю некоторое облегчение. }}-&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PORTAL_WATERSTORY_10" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STORY_HIGH&gt;-{{ ЖУРНАЛ: &lt;&gt;&lt;STELLAR&gt;1998B&lt;&gt;&lt;STORY_HIGH&gt;. &lt;&gt;&lt;STELLAR&gt;+399 солов&lt;&gt;&#xA; с момента пробоины&#xA;&lt;STORY_HIGH&gt;Они вернулись в проклятую пещеру. Все до единого. Никто не желает меня слушать. Мы еще можем собрать гипердвигатель, я точно знаю. Когда мы это сделаем, вычистить соль из взлетных ускорителей не составит труда.}}-&lt;&gt;
                                { "Russian", "&lt;STORY_HIGH&gt;-{{ ЖУРНАЛ: &lt;&gt;&lt;STELLAR&gt;1998B&lt;&gt;. &lt;STELLAR&gt;+399 сол&lt;&gt; &lt;STORY_HIGH&gt;с момента пробоины&#xA;&#xA;Они вернулись в проклятую пещеру. Все до единого. Никто не желает меня слушать. Мы еще можем собрать гипердвигатель, я точно знаю. Когда мы это сделаем, вычистить соль из взлетных ускорителей не составит труда.}}-&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PORTAL_WATERSTORY_11" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STORY_HIGH&gt;-{{ ЖУРНАЛ: &lt;&gt;&lt;STELLAR&gt;2001P&lt;&gt;&lt;STORY_HIGH&gt;. &lt;&gt;&lt;STELLAR&gt;+399 солов&lt;&gt;&#xA; с момента пробоины&#xA;&lt;STORY_HIGH&gt;Мы все видели один и тот же сон. Те же блуждания, зубы в небе, кристаллы... Вздор. Там внизу больше ничего нет. Мы все забрали.&#xA;&#xA;Но что же мне остается делать? Неужто я что-то упускаю? Пожалуй, они правы. Взглянуть один последний разок будет не лишним. }}-&lt;&gt;
                                { "Russian", "&lt;STORY_HIGH&gt;-{{ ЖУРНАЛ: &lt;&gt;&lt;STELLAR&gt;2001P&lt;&gt;. &lt;STELLAR&gt;+399 сол&lt;&gt; &lt;STORY_HIGH&gt;с момента пробоины&#xA;&#xA;Мы все видели один и тот же сон. Те же блуждания, зубы в небе, кристаллы... Вздор. Там внизу больше ничего нет. Мы все забрали.&#xA;&#xA;Но что же мне остается делать? Неужто я что-то упускаю? Пожалуй, они правы. Взглянуть один последний разок будет не лишним. }}-&lt;&gt;" },
                            }
                        },
                        -- не правильно указана кнопка действия
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SCAN_BLOCKER_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Специально настроенный резонансный блокировщик, предназначенный для создания помех удаленному &lt;STELLAR&gt;сканирование грузов&lt;&gt;, производимому властями систем в поисках &lt;SPECIAL&gt;контрабандных товаров&lt;&gt;.&#xA;&#xA;Активируйте через &lt;TECHNOLOGY&gt;быстрое меню&lt;&gt; (&lt;IMG&gt; QUICK_MENU&lt;&gt;) во время сканирования, чтобы помешать зондированию. Примечание: эффективен не на 100%.
                                -- A specially tuned resonance jammer, designed to interfere with the remote &lt;STELLAR&gt;cargo scans&lt;&gt; deployed by system authorities in the search for &lt;SPECIAL&gt;smuggled goods&lt;&gt;.&#xA;&#xA;Deploy from the &lt;TECHNOLOGY&gt;Quick Menu&lt;&gt; (&lt;IMG&gt;QUICK_MENU&lt;&gt;) while a scan is in progress to deflect the probe. Note: jamming is not 100% effective.
                                { "Russian", "Специально настроенный резонансный блокировщик, предназначенный для создания помех удаленному &lt;STELLAR&gt;сканированию грузов&lt;&gt;, производимому властями систем в поисках &lt;SPECIAL&gt;контрабандных товаров&lt;&gt;.&#xA;&#xA;Активируйте через &lt;TECHNOLOGY&gt;быстрое меню&lt;&gt; (&lt;IMG&gt;QUICK_MENU&lt;&gt;) во время сканирования, чтобы помешать зондированию. Примечание: эффективен не на 100%." },
                            }
                        },
                        -- Строка "вернитесь в космос" еле влазиет в интерфейс
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIRATES3_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Воспользуйтесь &lt;TECHNOLOGY&gt;поддельным паспортом&lt;&gt;, чтобы скрыть свой визит на станцию преступников.&#xA;Вернитесь в космос и откройте галактическую карту (&lt;IMG&gt;QUICK_MENU&lt;&gt;), чтобы найти подконтрольную властям систему.
                                -- Use the &lt;TECHNOLOGY&gt;Forged Passport&lt;&gt; to disguise your visit to the outlaw station&#xA;Return to space an use the Galaxy Map (&lt;IMG&gt;QUICK_MENU&lt;&gt;) to locate a regulated star system
                                { "Russian", "Скройте свой визит на станцию преступников&#xA;с помощью &lt;TECHNOLOGY&gt;поддельного паспорта&lt;&gt;&#xA;Вернитесь в космос" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIRATES3_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Воспользуйтесь &lt;TECHNOLOGY&gt;поддельным паспортом&lt;&gt;, чтобы скрыть свой визит на станцию преступников.&#xA;Откройте галактическую карту (&lt;IMG&gt;QUICK_MENU&lt;&gt;), чтобы вернуться в подконтрольную властям систему.
                                -- Use the &lt;TECHNOLOGY&gt;Forged Passport&lt;&gt; to disguise your visit to the outlaw station&#xA;Use the Galaxy Map (&lt;IMG&gt;QUICK_MENU&lt;&gt;) to return to a regulated star system
                                { "Russian", "Скройте свой визит на станцию преступников&#xA;с помощью &lt;TECHNOLOGY&gt;поддельного паспорта&lt;&gt;&#xA;Вернитесь в подконтрольную властями систему&#xA;Откройте галактическую карту (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIRATES3_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Воспользуйтесь &lt;TECHNOLOGY&gt;поддельным паспортом&lt;&gt;, чтобы скрыть свой визит на станцию преступников.&#xA;Испортите локальные записи на борту &lt;STELLAR&gt;космической станции&lt;&gt;.
                                -- Use the &lt;TECHNOLOGY&gt;Forged Passport&lt;&gt; to disguise your visit to the outlaw station&#xA;Disrupt local records aboard the &lt;STELLAR&gt;Space Station&lt;&gt;
                                { "Russian", "Скройте свой визит на станцию преступников&#xA;с помощью &lt;TECHNOLOGY&gt;поддельного паспорта&lt;&gt;&#xA;Испортите записи на &lt;STELLAR&gt;космической станции&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIRATES3_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Воспользуйтесь &lt;TECHNOLOGY&gt;поддельным паспортом&lt;&gt;, чтобы скрыть свой визит на станцию преступников.&#xA;Испортите локальные записи в &lt;STELLAR&gt;ядре космической станции&lt;&gt;.
                                -- Use the &lt;TECHNOLOGY&gt;Forged Passport&lt;&gt; to disguise your visit to the outlaw station&#xA;Disrupt local records at the &lt;STELLAR&gt;Space Station Core&lt;&gt;
                                { "Russian", "Скройте свой визит на станцию преступников&#xA;с помощью &lt;TECHNOLOGY&gt;поддельного паспорта&lt;&gt;&#xA;Испортите записи в &lt;STELLAR&gt;ядре космической станции&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIRATES3_REPORT_LANG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Канал связи с системой наблюдения Атласа/Эрона: &lt;SPECIAL&gt;Боевая тревога&lt;&gt;&lt;NEWLINE&gt;Обнаружена необычная активность. активация сканирования базы перемещений...
                                -- Atlas/Aeron Surveillance Uplink: &lt;SPECIAL&gt;High Alert&lt;&gt;&lt;NEWLINE&gt;Unusual activity detected. Beginning travel database scan...
                                { "Russian", "Канал связи с системой наблюдения Атласа/Эрона: &lt;SPECIAL&gt;Боевая тревога&lt;&gt;&lt;NEWLINE&gt;Обнаружена необычная активность. Сканирование базы перемещений..." },
                            }
                        },
                        -- в Журнале обрезается после "След привел меня на космическую станцию, ко"
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIRATESMISS_DESC2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- На моем пути оказался заброшенный звездолет, бесконечно дрейфующий сквозь звездную пустоту.&#xA;&#xA;Его подпространственный передатчик раз за разом проигрывает одну и ту же запись. Она оказалась приглашением, билетом к «звезде обетованной». След привел меня на космическую станцию, контролируемую группой, взбунтовавшейся против Атласа.
                                { "Russian", "На заброшенном звездолёте, бесконечно дрейфующим сквозь звездную пустоту, передатчик раз за разом проигрывает одну и ту же запись. Приглашение к «звезде обетованной».&#xA;&#xA;След привел меня на космическую станцию, контролируемую группой, взбунтовавшейся против Атласа." },
                            }
                        },
                        -- в Журнале не влазиет после "Чтобы сделать это, мне нужно испортить записи о пр"
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIRATESMISS_DESC3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Мною была обнаружена станция преступников, на которой взбунтовавшиеся против Атласа существа жили вдали от взгляда всевидящего ока машины.&#xA;&#xA;Они рассказали мне о своем заговоре и потребовали сохранить их местоположение в тайне. Чтобы сделать это, мне нужно испортить записи о прибытии...
                                { "Russian", "Взбунтовавшиеся против Атласа существа жили на станции преступников вдали от взгляда всевидящего ока машины.&#xA;&#xA;Они рассказали мне о своем заговоре и потребовали сохранить их местоположение в тайне. Чтобы сделать это, мне нужно испортить записи о прибытии..." },
                            }
                        },
                        -- в списке фрегатов, роль; не влезает (макс. 10 букв)
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_UI_TYPE_DEEP_SPACE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ОРГАНИЧЕСКИЙ (ORGANIC)
                                { "Russian", "ОРГАНИКА" },
                            }
                        },
                        -- последнее предложение не влазиет
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_POI_BIOFRIG_SEARCH_MSG0" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Приемник снов&lt;&gt; дремлет...&#xA;Ваш флот фрегатов &lt;FUEL&gt;заполнен&lt;&gt;.&#xA;Приемник может привлечь &lt;SPECIAL&gt;космическую мегафауну&lt;&gt; к вашему флоту фрегатов.&#xA;Освободите место с помощью терминала &lt;TECHNOLOGY&gt;управления флотом&lt;&gt;, расположенного на мостике грузового судна.
                                { "Russian", "&lt;SPECIAL&gt;Приемник снов&lt;&gt; может привлечь &lt;SPECIAL&gt;космическую мегафауну&lt;&gt; к вашему флоту фрегатов.&#xA;Ваш флот фрегатов &lt;FUEL&gt;заполнен&lt;&gt;.&#xA;Освободите место с помощью терминала &lt;TECHNOLOGY&gt;управления флотом&lt;&gt;,&#xA;расположенного на мостике грузового судна." },
                            }
                        },
                        -- при самом крупном интерфейсе строка не влазиет
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JOURNEY_NEXT_SMUGGLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- стоимость провезенного контрабандой товара в юн.
                                -- units worth of goods smuggled
                                { "Russian", "юн. ввезенной контрабанды" },
                            }
                        },
                        -- в каталоге, описание персональных достижений
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FIENDS_KILLED_TITLE_8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- истребитель (Annihilator)
                                { "Russian", "Истребитель" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DIST_WARP_SPEC_8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- путешественник (Explorer)
                                { "Russian", "Путешественник" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MEDAL_WALKERS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Шагающие стражи уничтожены (Walkers Destroyed)
                                { "Russian", "Уничтожено шагающих стражей" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ECON_SMUGGLED_BUY_LABEL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Нелегальные товары с черного рынка
                                -- Illegal Black Market Goods
                                { "Russian", "Нелегальные товары" },
                            }
                        },
                        -- какая цель???
                        -- как обычно, все не влазеет, когда в списке длинные названия параметров (пример экзокостюм, у мультитула вроде норм)
                        -- вернуть взад когда исправят UI
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UPGRADE_1_STAT_SENT_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Просочившаяся &lt;SPECIAL&gt;нанитовая пена&lt;&gt; заливает модуль. Ее цель: &lt;STELLAR&gt;%STAT1%&lt;&gt;.
                                -- A seeping &lt;SPECIAL&gt;nanite foam&lt;&gt; floods the module, targeting &lt;STELLAR&gt;%STAT1%&lt;&gt;.
                                { "Russian", "Просочившаяся &lt;SPECIAL&gt;нанитовая пена&lt;&gt; заливает модуль, усиливая характеристики технологии." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UPGRADE_2_STAT_SENT_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Просочившаяся &lt;SPECIAL&gt;нанитовая пена&lt;&gt; заливает модуль. Ее цели: &lt;STELLAR&gt;%STAT1%&lt;&gt; и &lt;STELLAR&gt;%STAT2%&lt;&gt;.
                                -- A seeping &lt;SPECIAL&gt;nanite foam&lt;&gt; floods the module, targeting &lt;STELLAR&gt;%STAT1%&lt;&gt; and &lt;STELLAR&gt;%STAT2%&lt;&gt;.
                                { "Russian", "Просочившаяся &lt;SPECIAL&gt;нанитовая пена&lt;&gt; заливает модуль, усиливая характеристики технологии." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UPGRADE_3_STAT_SENT_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Просочившаяся &lt;SPECIAL&gt;нанитовая пена&lt;&gt; заливает модуль. Ее цели: &lt;STELLAR&gt;%STAT1%&lt;&gt;, &lt;STELLAR&gt;%STAT2%&lt;&gt; и &lt;STELLAR&gt;%STAT3%&lt;&gt;.
                                -- A seeping &lt;SPECIAL&gt;nanite foam&lt;&gt; floods the module, targeting &lt;STELLAR&gt;%STAT1%&lt;&gt;, &lt;STELLAR&gt;%STAT2%&lt;&gt; and &lt;STELLAR&gt;%STAT3%&lt;&gt;.
                                { "Russian", "Просочившаяся &lt;SPECIAL&gt;нанитовая пена&lt;&gt; заливает модуль, усиливая характеристики технологии." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UPGRADE_4_STAT_SENT_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Просочившаяся &lt;SPECIAL&gt;нанитовая пена&lt;&gt; заливает модуль. Ее цели: &lt;STELLAR&gt;%STAT1%&lt;&gt;, &lt;STELLAR&gt;%STAT2%&lt;&gt;, &lt;STELLAR&gt;%STAT3%&lt;&gt; и &lt;STELLAR&gt;%STAT4%&lt;&gt;.
                                -- A seeping &lt;SPECIAL&gt;nanite foam&lt;&gt; floods the module, targeting &lt;STELLAR&gt;%STAT1%&lt;&gt;, &lt;STELLAR&gt;%STAT2%&lt;&gt;, &lt;STELLAR&gt;%STAT3%&lt;&gt; and &lt;STELLAR&gt;%STAT4%&lt;&gt;.
                                { "Russian", "Просочившаяся &lt;SPECIAL&gt;нанитовая пена&lt;&gt; заливает модуль, усиливая характеристики технологии." },
                            }
                        },
                        -- сноска к описанию действия в описании модуля
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TECH_PACK_UP_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Преобразуйте технологию в размещаемый комплект для хранения
                                -- Convert technology to a deployable package for storage
                                { "Russian", "Преобразовать в комплект деталей для хранения" },
                            }
                        },
                        -- на одном из экранов в кабине (там где скорость обычно)
                        -- восклицательный знак выглядит лишним
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FOLLOW_TARGET_ON" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Цель захвачена!
                                -- Target Lock Acquired!
                                { "Russian", "ЦЕЛЬ ЗАХВАЧЕНА" },
                            }
                        },
                        -- описание живого фригата
                        -- нужно макс. 13 букв
                        -- либо разраб запутался либо что, неясно толи это аналог "Neural pathway" (на вики нет рус. аналога),
                        -- либо "Neural circuit" (нервная сеть)
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DEEP_SPACE_FRIG_NOTES_TITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Нейронные пути
                                -- Neuron Paths
                                { "Russian", "Нервная сеть" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DEEP_SPACE_FRIG_MOOD_ATT_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- мстительный
                                -- Vengeful
                                { "Russian", "Мстительный" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DEEP_SPACE_FRIG_MOOD_ATT_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- буйный
                                -- Stormy
                                { "Russian", "Буйный" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DEEP_SPACE_FRIG_MOOD_ATT_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- мощный
                                -- Powerful
                                { "Russian", "Мощный" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DEEP_SPACE_FRIG_MOOD_ATT_4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- доминирующий
                                -- Dominating
                                { "Russian", "Доминирующий" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DEEP_SPACE_FRIG_MOOD_ATT_5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- бесстрашный
                                -- Fearless
                                { "Russian", "Бесстрашный" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DEEP_SPACE_FRIG_MOOD_ATT_6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- карающий
                                -- Punitive
                                { "Russian", "Карающий" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DEEP_SPACE_FRIG_MOOD_ATT_7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- злопамятный
                                -- Unforgiving
                                { "Russian", "Злопамятный" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DEEP_SPACE_FRIG_MOOD_ATT_8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- неуступчивый
                                -- Implacable
                                { "Russian", "Неуступчивый" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DEEP_SPACE_FRIG_MOOD_ATT_9" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- воинственный
                                -- Warlike
                                { "Russian", "Воинственный" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DEEP_SPACE_FRIG_MOOD_ATT_10" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- пылкий
                                -- Impassioned
                                { "Russian", "Пылкий" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DEEP_SPACE_FRIG_MOOD_EXP_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- любопытный
                                -- Curious
                                { "Russian", "Любопытный" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DEEP_SPACE_FRIG_MOOD_EXP_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- мечтательный
                                -- Dreaming
                                { "Russian", "Мечтательный" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DEEP_SPACE_FRIG_MOOD_EXP_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- дерзкий
                                -- Adventurous
                                { "Russian", "Дерзкий" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DEEP_SPACE_FRIG_MOOD_EXP_4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- любознательный
                                -- Inquisitive
                                { "Russian", "Любознательный" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DEEP_SPACE_FRIG_MOOD_EXP_5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- наблюдательный
                                -- Observant
                                { "Russian", "Наблюдательный" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DEEP_SPACE_FRIG_MOOD_EXP_6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- капризный
                                -- Fanciful
                                { "Russian", "Капризный" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DEEP_SPACE_FRIG_MOOD_EXP_7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- тоскующий
                                -- Yearning
                                { "Russian", "Тоскующий" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DEEP_SPACE_FRIG_MOOD_EXP_8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- астральный
                                -- Astral
                                { "Russian", "Астральный" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DEEP_SPACE_FRIG_MOOD_EXP_9" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- отстраненный
                                -- Abstracted
                                { "Russian", "Отстраненный" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DEEP_SPACE_FRIG_MOOD_EXP_10" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ищущий
                                -- Seeking
                                { "Russian", "Ищущий" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DEEP_SPACE_FRIG_MOOD_IND_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- прагматичный
                                -- Pragmatic
                                { "Russian", "Прагматичный" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DEEP_SPACE_FRIG_MOOD_IND_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- понурый
                                -- Grounded
                                { "Russian", "Заземленный" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DEEP_SPACE_FRIG_MOOD_IND_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- трудолюбивый
                                -- Industrious
                                { "Russian", "Трудолюбивый" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DEEP_SPACE_FRIG_MOOD_IND_4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- практичный
                                -- Practical
                                { "Russian", "Практичный" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DEEP_SPACE_FRIG_MOOD_IND_5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- мудрый
                                -- Wise
                                { "Russian", "Мудрый" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DEEP_SPACE_FRIG_MOOD_IND_6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- грубый
                                -- Calloused
                                { "Russian", "Грубый" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DEEP_SPACE_FRIG_MOOD_IND_7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- умелый
                                -- Skilful
                                { "Russian", "Умелый" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DEEP_SPACE_FRIG_MOOD_IND_8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ловкий
                                -- Deft
                                { "Russian", "Ловкий" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DEEP_SPACE_FRIG_MOOD_IND_9" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- усердный
                                -- Assiduous
                                { "Russian", "Усердный" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DEEP_SPACE_FRIG_MOOD_IND_10" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- работящий
                                -- Laborious
                                { "Russian", "Работящий" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DEEP_SPACE_FRIG_MOOD_TRA_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- убедительный
                                -- Persuasive
                                { "Russian", "Убедительный" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DEEP_SPACE_FRIG_MOOD_TRA_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- соблазнительный
                                -- Alluring
                                { "Russian", "Соблазнительный" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DEEP_SPACE_FRIG_MOOD_TRA_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- завораживающий
                                -- Mesmerising
                                { "Russian", "Завораживающий" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DEEP_SPACE_FRIG_MOOD_TRA_4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- неотразимый
                                -- Compelling
                                { "Russian", "Неотразимый" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DEEP_SPACE_FRIG_MOOD_TRA_5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- обманчивый
                                -- Beguiling
                                { "Russian", "Обманчивый" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DEEP_SPACE_FRIG_MOOD_TRA_6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- увлекающий
                                -- Captivating
                                { "Russian", "Увлекающий" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DEEP_SPACE_FRIG_MOOD_TRA_7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- мелодичный
                                -- Melodious
                                { "Russian", "Мелодичный" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DEEP_SPACE_FRIG_MOOD_TRA_8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- чужеродный
                                -- Otherworldly
                                { "Russian", "Чужеродный" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DEEP_SPACE_FRIG_MOOD_TRA_9" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- чарующий
                                -- Enchanting
                                { "Russian", "Чарующий" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DEEP_SPACE_FRIG_MOOD_TRA_10" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- пугающий
                                -- Haunting
                                { "Russian", "Пугающий" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DEEP_SPACE_FRIG_MOOD_FUE_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- хозяйственный
                                -- Thrifty
                                { "Russian", "Хозяйственный" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DEEP_SPACE_FRIG_MOOD_FUE_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- бережливый
                                -- Frugal
                                { "Russian", "Бережливый" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DEEP_SPACE_FRIG_MOOD_FUE_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- консервативный
                                -- Conservative
                                { "Russian", "Консервативный" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DEEP_SPACE_FRIG_MOOD_FUE_4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- экономный
                                -- Sparing
                                { "Russian", "Экономный" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DEEP_SPACE_FRIG_MOOD_FUE_5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- накормленный
                                -- Satiated
                                { "Russian", "Накормленный" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DEEP_SPACE_FRIG_MOOD_FUE_6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- напоенный
                                -- Quenched
                                { "Russian", "Напоенный" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DEEP_SPACE_FRIG_MOOD_FUE_7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- объевшийся
                                -- Sated
                                { "Russian", "Объевшийся" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DEEP_SPACE_FRIG_MOOD_FUE_8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- обожравшийся
                                -- Glutted
                                { "Russian", "Обожравшийся" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DEEP_SPACE_FRIG_MOOD_FUE_9" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- пресыщенный
                                -- Gorged
                                { "Russian", "Пресыщенный" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DEEP_SPACE_FRIG_MOOD_FUE_10" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- удовлетворенный
                                -- Satisfied
                                { "Russian", "Удовлетворенный" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DEEP_SPACE_FRIG_MOOD_SPE_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- стремительный
                                -- Rapid
                                { "Russian", "Стремительный" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DEEP_SPACE_FRIG_MOOD_SPE_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- шустрый
                                -- Fleet
                                { "Russian", "Шустрый" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DEEP_SPACE_FRIG_MOOD_SPE_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- стремительный
                                -- Swift
                                { "Russian", "Стремительный" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DEEP_SPACE_FRIG_MOOD_SPE_4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ускоренный
                                -- Accelerated
                                { "Russian", "Ускоренный" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DEEP_SPACE_FRIG_MOOD_SPE_5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- прыткий
                                -- Nimble
                                { "Russian", "Прыткий" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DEEP_SPACE_FRIG_MOOD_SPE_6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- проворный
                                -- Lithe
                                { "Russian", "Проворный" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DEEP_SPACE_FRIG_MOOD_SPE_7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- грациозный
                                -- Graceful
                                { "Russian", "Грациозный" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DEEP_SPACE_FRIG_MOOD_SPE_8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- подвижный
                                -- Limber
                                { "Russian", "Подвижный" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DEEP_SPACE_FRIG_MOOD_SPE_9" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- элегантный
                                -- Sleek
                                { "Russian", "Элегантный" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DEEP_SPACE_FRIG_MOOD_SPE_10" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- подтянутый
                                -- Streamlined
                                { "Russian", "Подтянутый" },
                            }
                        },
                        -- на экране установки компонента в технологию (для мультитула, например)
                        -- эта гига-описание тупо не влазеет в интерфейс
                        -- сократил, что было красиво хотя бы. квест с инструкцией автоматически начинается (если другого нет), так что не велико обрезание =)
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_REPAIR_TECH_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;%TECH%&lt;&gt;, статус — &lt;FUEL&gt;критическое повреждение&lt;&gt;. Для восстановления почините все подкомпоненты.&#xA;&#xA;Для ремонта этого подкомпонента требуется &lt;TECHNOLOGY&gt;%ITEM% (%NUM%)&lt;&gt;. Воспользуйтесь &lt;IMG&gt;FE_TRANSFER&lt;&gt;, чтобы &lt;STELLAR&gt;закрепить&lt;&gt; подробные &lt;STELLAR&gt;инструкции для ремонта&lt;&gt; в журнале заданий, включая информацию о том, где можно найти нужные предметы.
                                -- &lt;TECHNOLOGY&gt;%TECH%&lt;&gt; status: &lt;FUEL&gt;critically damaged&lt;&gt;. Each subcomponent must be repaired to restore functionality.&#xA;&#xA;Repair this subcomponent with &lt;TECHNOLOGY&gt;%NUM% x %ITEM%&lt;&gt;. Use &lt;IMG&gt;FE_TRANSFER&lt;&gt; to &lt;STELLAR&gt;pin&lt;&gt; detailed &lt;STELLAR&gt;repair instructions&lt;&gt; to your mission log, including information about where to find the required items.
                                { "Russian", "Технология &lt;FUEL&gt;критически повреждена&lt;&gt;. Почините все подкомпоненты для восстановления полной работоспособности.&#xA;&#xA;Для ремонта данного подкомпонента потребуется:&#xA;&lt;TECHNOLOGY&gt;%ITEM%&lt;&gt;, %NUM% шт." },
                            }
                        },
                        -- вообще речь идет о подкомпоненте, мол он не установлен
                        -- при этом зачем-то делается дублирование названия технологии, хотя она сверху справа большими бучищами написана
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_INSTALL_TECH_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Подкомпонент &lt;TECHNOLOGY&gt;%TECH%&lt;&gt;, статус — &lt;FUEL&gt;отсутствует&lt;&gt;. Установите все подкомпоненты, чтобы завершить установку.&#xA;&#xA;Для завершения установки этого подкомпонента требуется &lt;TECHNOLOGY&gt;%ITEM% (%NUM%)&lt;&gt;. Воспользуйтесь &lt;IMG&gt;FE_TRANSFER&lt;&gt;, чтобы &lt;STELLAR&gt;закрепить&lt;&gt; подробные &lt;STELLAR&gt;инструкции для установки&lt;&gt; в журнале заданий, включая информацию о том, где можно найти нужные предметы.
                                -- &lt;TECHNOLOGY&gt;%TECH%&lt;&gt; subcomponent status: &lt;FUEL&gt;uninstalled&lt;&gt;. Insert every subcomponent to finalise the installation.&#xA;&#xA;Complete this subcomponent with &lt;TECHNOLOGY&gt;%NUM% x %ITEM%&lt;&gt;. Use &lt;IMG&gt;FE_TRANSFER&lt;&gt; to &lt;STELLAR&gt;pin&lt;&gt; detailed &lt;STELLAR&gt;installation instructions&lt;&gt; to your mission log, including information about where to find the required items.
                                { "Russian", "Этот подкомпонент &lt;FUEL&gt;не установлен&lt;&gt;. Завершите сборку технологии, установив все подкомпоненты.&#xA;&#xA;Для установки данного подкомпонента потребуется:&#xA;&lt;TECHNOLOGY&gt;%ITEM%&lt;&gt;, %NUM% шт." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_REPAIRED_TECH_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Подкомпонент &lt;TECHNOLOGY&gt;%TECH%&lt;&gt;. Статус: &lt;TRADEABLE&gt;полностью отремонтирован&lt;&gt;. Чтобы закончить ремонт, восстановите дополнительные подкомпоненты.&#xA;&#xA;Воспользуйтесь &lt;IMG&gt;TECHMENU&lt;&gt;, чтобы &lt;STELLAR&gt;закрепить&lt;&gt; подробные &lt;STELLAR&gt;инструкции для ремонта&lt;&gt; в журнале заданий, включая информацию о том, где можно найти оставшиеся требуемые предметы.
                                -- &lt;TECHNOLOGY&gt;%TECH%&lt;&gt; subcomponent status: &lt;TRADEABLE&gt;fully repaired&lt;&gt;. Restore additional subcomponents to complete the repair.&#xA;&#xA;Use &lt;IMG&gt;TECHMENU&lt;&gt; to &lt;STELLAR&gt;pin&lt;&gt; detailed &lt;STELLAR&gt;repair instructions&lt;&gt; to your mission log, including information about where to find the remaining required items.
                                { "Russian", "Подкомпонент &lt;TRADEABLE&gt;полностью отремонтирован&lt;&gt;. Чтобы закончить ремонт, почините другие подкомпоненты." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_INSTALLED_TECH_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Подкомпонент &lt;TECHNOLOGY&gt;%TECH%&lt;&gt;. Статус установки: &lt;TRADEABLE&gt;завершена&lt;&gt;. Чтобы закончить установку, установите остальные подкомпоненты.&#xA;&#xA;Воспользуйтесь &lt;IMG&gt;TECHMENU&lt;&gt;, чтобы &lt;STELLAR&gt;закрепить&lt;&gt; подробные &lt;STELLAR&gt;инструкции для установки&lt;&gt; в журнале заданий, включая информацию о том, где можно найти оставшиеся требуемые предметы.
                                -- &lt;TECHNOLOGY&gt;%TECH%&lt;&gt; subcomponent installation status: &lt;TRADEABLE&gt;complete&lt;&gt;. Insert other subcomponents to finalise the installation.&#xA;&#xA;Use &lt;IMG&gt;TECHMENU&lt;&gt; to &lt;STELLAR&gt;pin&lt;&gt; detailed &lt;STELLAR&gt;installation instructions&lt;&gt; to your mission log, including information about where to find the remaining required items.
                                { "Russian", "Подкомпонент &lt;TRADEABLE&gt;установлен&lt;&gt;. Завершите установку остальных подкомпонентов." },
                            }
                        },
                        -- абзац "Менее 4% популяции геков.." не влазеет
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PORTAL_TRA_LIBRARY3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Архив классифицирует запись как исторический анализ. Ниже приводится отрывок.&#xA;&#xA;&lt;STORY_HIGH&gt;Обстоятельства реформирования геков не выяснены до сих пор. Бесчисленные поколения прошли со времен падения Первородов. Но все же до нас дошли архивы и разрозненные воспоминания о тех днях.&#xA;&#xA;Менее 4% популяции геков обладает желанием изучать свою историю. Менее 0,08% согласны с целями старой империи. Как могут отсутствовать записи об этом невероятном перевороте во власти и философии? Их нет даже у корваксов, обладающих механическим разумом.&#xA;&#xA;Проект «Архив» должен получить высший приоритет. Чтобы вернуть то, что было утеряно. Чтобы оберегать то, что осталось.&lt;&gt;
                                -- The archive classifies the entry as historical analysis. A small segment:&#xA;&#xA;&lt;STORY_HIGH&gt;The circumstances of the Gek reformation are still unclear, even now. Untold generations have passed since the fall of the First Spawn. Even so, there are extant archives, scattered recollections of those early days.&#xA;&#xA;Less than 4% of the Gek population possess any desire to learn about their history. Less than 0.08% identify with the goals of the old empire. How can there be no records of this seismic changeover of power and philosophy? Not even with the Korvax, whose minds are as machines.&#xA;&#xA;The Archive Project must become imperative. To recover what has been lost. To safeguard what remains.&lt;&gt;
                                { "Russian", "Архив классифицирует запись как исторический анализ. Ниже приводится отрывок.&#xA;&#xA;&lt;STORY_HIGH&gt;Обстоятельства реформирования геков не выяснены до сих пор. Бесчисленные поколения прошли со времен падения Первородов. Но все же до нас дошли архивы и разрозненные воспоминания о тех днях.&#xA;&#xA;Менее 4% популяции геков обладает желанием изучать свою историю. Менее 0,08% согласны с целями старой империи.&#xA;&#xA;Как могут отсутствовать записи об этом невероятном перевороте во власти и философии? Их нет даже у корваксов, обладающих механическим разумом.&#xA;&#xA;Проект «Архив» должен получить высший приоритет. Чтобы вернуть то, что было утеряно. Чтобы оберегать то, что осталось.&lt;&gt;" },
                            }
                        },
                        -- и все бы ничего кроме "вероятность нападения звездолетов"
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIRATE_SYSTEM_HINT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Власть в системе захватили &lt;FUEL&gt;преступники&lt;&gt;.&#xA;В системах преступников можно покупать ценные товары на &lt;SPECIAL&gt;черном рынке&lt;&gt;.&#xA;Замечено большое количество звездолетов &lt;TECHNOLOGY&gt;солнечного&lt;&gt; класса.&#xA;Внимание: обнаружена высокая вероятность &lt;STELLAR&gt;нападения звездолетов&lt;&gt;.
                                -- Local system authorities have been displaced by &lt;FUEL&gt;outlaw&lt;&gt; forces&#xA;Outlaw systems allow the purchase of profitable &lt;SPECIAL&gt;black market&lt;&gt; goods&#xA;Frequent use of &lt;TECHNOLOGY&gt;Solar&lt;&gt;-class starships noted&#xA;Caution: high likelihood of &lt;STELLAR&gt;starship combat&lt;&gt; detected
                                { "Russian", "Власть в системе захватили &lt;FUEL&gt;преступники&lt;&gt;&#xA;В системах преступников можно покупать ценные товары на &lt;SPECIAL&gt;черном рынке&lt;&gt;&#xA;Замечено большое количество звездолётов &lt;TECHNOLOGY&gt;солнечного&lt;&gt; класса&#xA;Внимание: обнаружена высокая вероятность &lt;STELLAR&gt;космических сражений&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIRATE_STATION_HINT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Власть в системе захватили &lt;FUEL&gt;преступники&lt;&gt;.&#xA;В системах преступников можно покупать ценные товары на &lt;SPECIAL&gt;черном рынке&lt;&gt;.&#xA;Выполняйте прибыльные задания для &lt;TECHNOLOGY&gt;решалы&lt;&gt; станции.&#xA;Получите &lt;STELLAR&gt;поддельный паспорт&lt;&gt;, чтобы восстановить репутацию в контролируемых властями системах.
                                -- Local system authorities have been displaced by &lt;FUEL&gt;outlaw&lt;&gt; forces&#xA;Outlaw systems allow the purchase of profitable &lt;SPECIAL&gt;black market&lt;&gt; goods&#xA;Complete lucrative missions for the station's &lt;TECHNOLOGY&gt;Bounty Master&lt;&gt;&#xA;Acquire &lt;STELLAR&gt;Forged Passports&lt;&gt; to restore reputation in regulated systems
                                { "Russian", "Власть в системе захватили &lt;FUEL&gt;преступники&lt;&gt;&#xA;В системах преступников можно покупать ценные товары на &lt;SPECIAL&gt;черном рынке&lt;&gt;&#xA;Выполняйте прибыльные задания для &lt;TECHNOLOGY&gt;решалы&lt;&gt;&#xA;Получите &lt;STELLAR&gt;поддельный паспорт&lt;&gt;, чтобы восстановить репутацию в контролируемых властями системах" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SCAN_ROOM_LABEL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Активировать планетарный зонд
                                -- Activate Planetary Probe
                                { "Russian", "Выполнить планетарное сканирование" },
                            }
                        },
                        -- &lt;NEWLINE&gt;
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENTINEL_HIVE_SETUP_RES" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ЖУРНАЛ ДОСТУПА: [&lt;FUEL&gt;ОБНАРУЖЕН САМОЗВАНЕЦ&lt;&gt;] [КОД ПЕРЕЗАПУСКА: &lt;SPECIAL&gt;4R1ADN3&lt;&gt;]&#xA;ЗАПУСК ПРОТОКОЛА ЛИЧНОСТИ: &lt;STELLAR&gt;ГОЛОС УЛЬЯ&lt;&gt;
                                -- ACCESS LOG: [&lt;FUEL&gt;IMPOSTER DETECTED&lt;&gt;] [OVERRIDE CODE: &lt;SPECIAL&gt;4R1ADN3&lt;&gt;]&#xA;MANIFESTING PERSONALITY PROTOCOL: &lt;STELLAR&gt;VOICE OF THE HIVE&lt;&gt;
                                { "Russian", "ЖУРНАЛ ДОСТУПА: [&lt;FUEL&gt;ОБНАРУЖЕН САМОЗВАНЕЦ&lt;&gt;]&lt;NEWLINE&gt;[КОД ПЕРЕЗАПУСКА: &lt;SPECIAL&gt;4R1ADN3&lt;&gt;]&#xA;ЗАПУСК ПРОТОКОЛА ЛИЧНОСТИ: &lt;STELLAR&gt;ГОЛОС УЛЬЯ&lt;&gt;" },
                            }
                        },
                        -- это ит-шное, не нужен точный перевод, смысл теряется
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DEEP_SPACE_FLEET_DEBRIEF_OPT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрос вывода содержимого разума
                                -- Request Mind-dump
                                { "Russian", "Показать содержимое разума" },
                            }
                        },
                        -- а еще длиннее нельзя было написать? =)
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PENDING_DISCO_ERROR" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Ваша загрузка приостановлена и будет завершена после повторного подключения к исследовательской сети.
                                -- Your uploading is pending and will complete once you have re-connected to Discovery Services
                                { "Russian", "Загрузка приостановлена и будет выполнена после переподключения к сети" },
                            }
                        },
                        -- отображается в сноске под заданием слева
                        -- "Цель:" лишнее, т.к. и так ясно что это цель игрока
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TRADER_ATTACK_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Цель: захватить груз (%PRIMARYITEM%)
                                -- Target: Seize %PRIMARYITEM%
                                { "Russian", "Захватить груз: %PRIMARYITEM%" },
                            }
                        },
                        -- в заголовке выше название предмета есть и еще оно будет ниже в задаче
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TRADER_ATTACK_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Решале сообщили об особенно богатом конвое торговцев, перевозящих большую партию груза (%PRIMARYITEM%).&#xA;&#xA;Предприимчивые наемники могут попробовать &lt;STELLAR&gt;перехватить&lt;&gt; конвой в звездной системе...
                                -- The bounty master has become aware of a particularly rich outfit of traders, carrying a heavy cargo of %PRIMARYITEM%.&#xA;&#xA;Enterprising freelancers may wish to &lt;STELLAR&gt;intercept&lt;&gt; this trade convoy as it traverses the star system...
                                { "Russian", "Решале сообщили об особенно богатом конвое торговцев, перевозящих большие партии грузов. Однако, решалу интересуют лишь те партии, в которых есть %PRIMARYITEM%.&#xA;&#xA;Предприимчивые наемники могут попробовать &lt;STELLAR&gt;перехватить&lt;&gt; конвой в звездной системе..." },
                            }
                        },
                        -- это тупо не влазеет
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TRADER_ATTACK_OBJ1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Уничтожить звездолеты торговцев и захватить груз (%PRIMARYITEM%)
                                -- Destroy the trader starships and seize %PRIMARYITEM%
                                { "Russian", "Уничтожить звездолёты торговцев" },
                            }
                        },
                        -- это описание подзадачи, тут можно развернуться слегка
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TRADER_ATTACK_OBJ1_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите торговцев и уничтожьте их корабли, чтобы забрать груз (%PRIMARYITEM%).&#xA;&#xA;Используйте &lt;STELLAR&gt;тормоз&lt;&gt; (&lt;IMG&gt;BRAKE&lt;&gt;), чтобы быстро разворачиваться, и &lt;STELLAR&gt;ускорение&lt;&gt; (&lt;IMG&gt;BOOST&lt;&gt;), чтобы уклоняться. Меняйте цели с помощью &lt;IMG&gt;PREVTARGET&lt;&gt; / &lt;IMG&gt;NEXTTARGET&lt;&gt;.&#xA;Ваш &lt;TECHNOLOGY&gt;щит&lt;&gt; &lt;STELLAR&gt;восстановится&lt;&gt;, если вы будете достаточно долго избегать огня противника.
                                -- Locate the traders and destroy their ships to claim their cargo of %PRIMARYITEM%.&#xA;&#xA;Use &lt;STELLAR&gt;Brake&lt;&gt; (&lt;IMG&gt;BRAKE&lt;&gt;) to turn quickly and use &lt;STELLAR&gt;Boost&lt;&gt; (&lt;IMG&gt;BOOST&lt;&gt;) to evade. Change targets with &lt;IMG&gt;PREVTARGET&lt;&gt; / &lt;IMG&gt;NEXTTARGET&lt;&gt;.&#xA;Your &lt;TECHNOLOGY&gt;shield&lt;&gt; will &lt;STELLAR&gt;regenerate&lt;&gt; if you avoid enemy fire for long enough.
                                { "Russian", "Найдите торговцев и уничтожьте их корабли. Затем подберите груз: %PRIMARYITEM%.&#xA;&#xA;Используйте &lt;STELLAR&gt;тормоз&lt;&gt; (&lt;IMG&gt;BRAKE&lt;&gt;), чтобы быстро разворачиваться, и &lt;STELLAR&gt;ускорение&lt;&gt; (&lt;IMG&gt;BOOST&lt;&gt;), чтобы уклоняться. Меняйте цели с помощью &lt;IMG&gt;PREVTARGET&lt;&gt; / &lt;IMG&gt;NEXTTARGET&lt;&gt;.&#xA;Ваш &lt;TECHNOLOGY&gt;щит&lt;&gt; &lt;STELLAR&gt;восстановится&lt;&gt;, если вы будете достаточно долго избегать огня противника." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SMUGGLE_MISSION_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Безопасно доставьте груз (%PRIMARYITEM%)
                                -- Safely deliver %PRIMARYITEM%
                                { "Russian", "Безопасно доставить груз: %PRIMARYITEM%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SMUGGLE_MISSION_OBJ1_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Доставьте груз (%PRIMARYITEM%) &lt;STELLAR&gt;«экспедитору»&lt;&gt;, находящемуся в системе %SYSTEM%.&#xA;&#xA;&lt;FUEL&gt;Внимание&lt;&gt;: в системе поднята тревога, и власти могут сканировать суда в поисках &lt;SPECIAL&gt;контрабанды&lt;&gt;.
                                -- Deliver the %PRIMARYITEM% to the '&lt;STELLAR&gt;shipping agent&lt;&gt;' within the %SYSTEM% system.&#xA;&#xA;&lt;FUEL&gt;Warning&lt;&gt;: system authorities are on high alert and may probe for hidden &lt;SPECIAL&gt;contraband&lt;&gt;
                                { "Russian", "Доставьте товар &lt;STELLAR&gt;«экспедитору»&lt;&gt; в систему %SYSTEM%.&#xA;Груз: %PRIMARYITEM%.&#xA;&#xA;&lt;FUEL&gt;Внимание!&lt;&gt; В системе поднята тревога, и власти могут сканировать суда в поисках &lt;SPECIAL&gt;контрабанды&lt;&gt;." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SMUGGLE_MISSION_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- К решале попала партия товара (%PRIMARYITEM%). Он хочет извлечь из нее выгоду.&#xA;&#xA;Решала ищет надежного пилота, готового доставить товар (%PRIMARYITEM%) особому «экспедитору» в ближайшей системе...
                                -- The bounty master has come into possession of a shipment of %PRIMARYITEM%. They wish to realise the profit from this acquisition.&#xA;&#xA;A descrete pilot is required to deliver the %PRIMARYITEM% to a specialist 'shipping agent' in a nearby system...
                                { "Russian", "К решале попала в руки партия товара, %PRIMARYITEM%. Он хочет извлечь из этого выгоду.&#xA;&#xA;Решала ищет надежного пилота, готового доставить товар особому «экспедитору» в ближайшей системе..." },
                            }
                        },
                        -- убираем лишние точки
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_RETURN_PIRATE_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вернитесь к &lt;TECHNOLOGY&gt;решале&lt;&gt;.&#xA;Найти его можно на борту любой &lt;STELLAR&gt;станции преступников&lt;&gt;.
                                -- Return to the &lt;TECHNOLOGY&gt;Bounty Master&lt;&gt;&#xA;Find a bounty master in any &lt;STELLAR&gt;outlaw station&lt;&gt;
                                { "Russian", "Вернитесь на любую &lt;STELLAR&gt;станцию преступников&lt;&gt;&#xA;к &lt;TECHNOLOGY&gt;решале&lt;&gt;" },
                            }
                        },
                        -- название груза указано в заголовке подзадачи
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SMUGGLE_MISSION_OBJ2_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите &lt;STELLAR&gt;«экспедитора»&lt;&gt; и доставьте груз (%PRIMARYITEM%), чтобы выполнить контракт.&#xA;&#xA;&lt;FUEL&gt;Внимание&lt;&gt;: в системе поднята тревога, и власти могут сканировать суда в поисках &lt;SPECIAL&gt;контрабанды&lt;&gt;.
                                -- Locate the '&lt;STELLAR&gt;shipping agent&lt;&gt;' and deliver the %PRIMARYITEM% to complete the contract.&#xA;&#xA;&lt;FUEL&gt;Warning&lt;&gt;: system authorities are on high alert and may probe for hidden &lt;SPECIAL&gt;contraband&lt;&gt;
                                { "Russian", "Найдите &lt;STELLAR&gt;«экспедитора»&lt;&gt; и доставьте груз, чтобы выполнить контракт.&#xA;&#xA;&lt;FUEL&gt;Внимание&lt;&gt;: в системе поднята тревога, и власти могут сканировать суда в поисках &lt;SPECIAL&gt;контрабанды&lt;&gt;." },
                            }
                        },
                        -- hand-off дословно передача, но в русском это не звучит
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SMUGGLE_MISSION_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Доставьте груз (%PRIMARYITEM%) в целости.&#xA;Доберитесь до &lt;STELLAR&gt;«экспедитора»&lt;&gt;, чтобы закончить доставку.
                                -- Safely deliver the %PRIMARYITEM%&#xA;Reach the '&lt;STELLAR&gt;shipping agent&lt;&gt;' to complete the hand-off
                                { "Russian", "Доставьте в целости груз: %PRIMARYITEM%&#xA;&#xA;Доберитесь до &lt;STELLAR&gt;«экспедитора»&lt;&gt;, чтобы завершить сделку" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SMUGGLE_MISSION_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Доставьте груз (%PRIMARYITEM%) в целости.&#xA;&lt;STELLAR&gt;«Экспедитор»&lt;&gt; находится в системе неподалеку.&#xA;Находясь в космосе, сверьтесь с галактической картой, открыв ее с помощью &lt;IMG&gt;QUICK_MENU&lt;&gt;.
                                -- Safely deliver the %PRIMARYITEM%&#xA;The '&lt;STELLAR&gt;shipping agent&lt;&gt;' is in a nearby system&#xA;In space, consult the Galaxy Map with &lt;IMG&gt;QUICK_MENU&lt;&gt;
                                { "Russian", "Доставьте в целости груз: %PRIMARYITEM%&#xA;&lt;STELLAR&gt;«Экспедитор»&lt;&gt; находится в системе неподалеку&#xA;Находясь в космосе, откройте галактическую карту (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SMUGGLE_MISSION_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Доставьте груз (%PRIMARYITEM%) в целости.&#xA;Доберитесь до &lt;STELLAR&gt;«экспедитора»&lt;&gt;, чтобы закончить доставку.
                                -- Safely deliver the %PRIMARYITEM%&#xA;Reach the '&lt;STELLAR&gt;shipping agent&lt;&gt;' to complete the hand-off
                                { "Russian", "Доставьте товар &lt;STELLAR&gt;«экспедитору»&lt;&gt;&#xA;Груз: %PRIMARYITEM%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SMUGGLE_MISSION_MSG3_SURVEY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Доберитесь до &lt;STELLAR&gt;«экспедитора»&lt;&gt;.&#xA;&lt;TECHNOLOGY&gt;Разведайте цель&lt;&gt;, чтобы точно установить его местоположение.
                                -- Reach the '&lt;STELLAR&gt;shipping agent&lt;&gt;'&#xA;Use the &lt;TECHNOLOGY&gt;Target Sweep&lt;&gt; to pinpoint their exact location
                                { "Russian", "Доберитесь до &lt;STELLAR&gt;«экспедитора»&lt;&gt;&#xA;Найдите его с помощью &lt;TECHNOLOGY&gt;разведки цели&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SMUGGLE_MISSION_MSG3_SWAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Доберитесь до &lt;STELLAR&gt;«экспедитора»&lt;&gt;.&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;
                                -- Reach the '&lt;STELLAR&gt;shipping agent&lt;&gt;'&#xA;Activate a &lt;TECHNOLOGY&gt;Target Sweep&lt;&gt; with &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;
                                { "Russian", "Доберитесь до &lt;STELLAR&gt;«экспедитора»&lt;&gt;&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SMUGGLE_MISSION_MSG3_OFF" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Доберитесь до &lt;STELLAR&gt;«экспедитора»&lt;&gt;.&#xA;&lt;TECHNOLOGY&gt;Разведайте цель&lt;&gt;, чтобы точно установить его местоположение.
                                -- Reach the '&lt;STELLAR&gt;shipping agent&lt;&gt;'&#xA;Use the &lt;TECHNOLOGY&gt;Target Sweep&lt;&gt; to pinpoint their exact location
                                { "Russian", "Доберитесь до &lt;STELLAR&gt;«экспедитора»&lt;&gt;&#xA;Найдите его с помощью &lt;STELLAR&gt;разведки цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)" },
                            }
                        },
                        { -- XXX: что за receipt - нужно на деле уточнять
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SMUGGLE_MISSION_REWARD_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;FUEL&gt;Предупреждение&lt;&gt;: невозможно принять контрабанду.&#xA;Чтобы продолжить, освободите место в инвентаре.
                                -- &lt;FUEL&gt;Warning&lt;&gt;: Unable to take receipt of contraband&#xA;Free space in the Inventory to continue
                                { "Russian", "&lt;FUEL&gt;Невозможно&lt;&gt; принять квитанцию о контрабанде&#xA;Освободите место в инвентаре" },
                            }
                        },
                        --
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TRADER_ATTACK_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Захватите груз (%PRIMARYITEM%) торгового конвоя.&#xA;Вернитесь к конвою, чтобы завершить &lt;TECHNOLOGY&gt;«перехват»&lt;&gt;.
                                -- Seize %PRIMARYITEM% from the trader convoy&#xA;Return to the convoy to complete the '&lt;TECHNOLOGY&gt;interception&lt;&gt;'
                                { "Russian", "Захватите груз: %PRIMARYITEM%&#xA;Вернитесь к конвою, чтобы завершить &lt;TECHNOLOGY&gt;«перехват»&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TRADER_ATTACK_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Перехватите &lt;TECHNOLOGY&gt;торговый конвой&lt;&gt; и захватите груз (%PRIMARYITEM%).&#xA;Вернитесь на корабль и покиньте станцию.
                                -- Intercept the &lt;TECHNOLOGY&gt;trader convoy&lt;&gt; and seize %PRIMARYITEM%&#xA;Return to your ship and leave the station
                                { "Russian", "Перехватите &lt;TECHNOLOGY&gt;торговый конвой&lt;&gt;&#xA;Захватите груз: %PRIMARYITEM%&#xA;Вернитесь на корабль и покиньте станцию" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TRADER_ATTACK_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Захватите груз (%PRIMARYITEM%) торгового конвоя.&#xA;Перехватите конвой на их &lt;TECHNOLOGY&gt;торговом пути&lt;&gt;.
                                -- Seize %PRIMARYITEM% from the trader convoy&#xA;Intercept the convoy's &lt;TECHNOLOGY&gt;trade route&lt;&gt;
                                { "Russian", "Захватите груз: %PRIMARYITEM%&#xA;Перехватите конвой на их &lt;TECHNOLOGY&gt;торговом пути&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TRADER_ATTACK_MSG3A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Конвой перехвачен!&lt;&gt; Нападите на торговые суда, чтобы забрать груз&#xA;Заберите у конвоя товар (%PRIMARYITEM%)
                                -- &lt;STELLAR&gt;Convoy intercepted!&lt;&gt; Engage trader ships to harvest cargo&#xA;Seize %PRIMARYITEM% from the convoy
                                { "Russian", "&lt;STELLAR&gt;Конвой перехвачен&lt;&gt;&#xA;Нападите на торговые суда&lt;&gt;&#xA;Заберите груз: %PRIMARYITEM%" },
                            }
                        },
                        -- либо подсказка, либо свой текст - вместе все не влазеет
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TRADER_ATTACK_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Конвой перехвачен! Осталось торговых кораблей: &lt;FUEL&gt;%AMOUNT%&lt;&gt;&#xA;%FLIGHT_TIP%&#xA;Используйте &lt;IMG&gt;PREVTARGET&lt;&gt;/&lt;IMG&gt;NEXTTARGET&lt;&gt;, чтобы сменить цель.
                                -- Convoy intercepted! Trade ships remaining: &lt;FUEL&gt;%AMOUNT%&lt;&gt;&#xA;%FLIGHT_TIP%&#xA;Change targets with &lt;IMG&gt;PREVTARGET&lt;&gt; / &lt;IMG&gt;NEXTTARGET&lt;&gt;
                                { "Russian", "Конвой перехвачен! Осталось торговых кораблей: &lt;FUEL&gt;%AMOUNT%&lt;&gt;&#xA;%FLIGHT_TIP%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TRADER_ATTACK_REWARD_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;FUEL&gt;Предупреждение&lt;&gt;: невозможно забрать необходимые предметы из обломков торгового судна.&#xA;Чтобы продолжить, освободите место в инвентаре.
                                -- &lt;FUEL&gt;Warning&lt;&gt;: Unable to scoop required items from trader wreckage&#xA;Free space in the Inventory to continue
                                { "Russian", "&lt;FUEL&gt;Внимание&lt;&gt;: невозможно подобрать необходимые предметы из обломков торгового судна&#xA;Освободите место в инвентаре" },
                            }
                        },
                        --
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FREIGHTER_ATTACK_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Перехватите и уничтожьте корабль «&lt;STELLAR&gt;%FREIGHTER%&lt;&gt;»&#xA;Вернитесь к конвою, чтобы завершить &lt;TECHNOLOGY&gt;перехват&lt;&gt;.
                                -- Intercept and destroy the &lt;STELLAR&gt;%FREIGHTER%&lt;&gt;&#xA;Return to the convoy to complete the '&lt;TECHNOLOGY&gt;interception&lt;&gt;'
                                { "Russian", "Перехватите и уничтожьте судно &lt;STELLAR&gt;%FREIGHTER%&lt;&gt;&#xA;Вернитесь к конвою, чтобы завершить &lt;TECHNOLOGY&gt;«перехват»&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FREIGHTER_ATTACK_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Перехватите и уничтожьте корабль «&lt;STELLAR&gt;%FREIGHTER%&lt;&gt;»&#xA;Вернитесь на корабль и покиньте станцию.
                                -- Intercept and destroy the &lt;STELLAR&gt;%FREIGHTER%&lt;&gt;&#xA;Return to your ship and leave the station
                                { "Russian", "Перехватите и уничтожьте судно &lt;STELLAR&gt;%FREIGHTER%&lt;&gt;&#xA;Вернитесь на корабль и покиньте станцию" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FREIGHTER_ATTACK_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Перехватите и уничтожьте корабль &lt;STELLAR&gt;%FREIGHTER%&lt;&gt;&#xA;Выясните &lt;TECHNOLOGY&gt;маршрут экспедиции&lt;&gt;&#xA;Поиск коммерческих транспортных сигналов: %SIGNAL%
                                -- Intercept and destroy the &lt;STELLAR&gt;%FREIGHTER%&lt;&gt;&#xA;Locate the mission's &lt;TECHNOLOGY&gt;expedition path&lt;&gt;&#xA;Searching commercial traffic signals: %SIGNAL%
                                { "Russian", "Перехватите и уничтожьте судно &lt;STELLAR&gt;%FREIGHTER%&lt;&gt;&#xA;Найдите &lt;TECHNOLOGY&gt;маршрут экспедиции&lt;&gt;&#xA;Поиск коммерческих транспортных сигналов: %SIGNAL%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FREIGHTER_ATTACK_MSG3A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Перехватите и уничтожьте судно &lt;STELLAR&gt;%FREIGHTER%&lt;&gt;.&#xA;Включите &lt;TECHNOLOGY&gt;импульсный привод&lt;&gt;, чтобы просканировать &lt;TECHNOLOGY&gt;маршрут экспедиции&lt;&gt;.
                                -- Intercept and destroy the &lt;STELLAR&gt;%FREIGHTER%&lt;&gt;&#xA;Activate the &lt;TECHNOLOGY&gt;Pulse Drive&lt;&gt; to scan for its &lt;TECHNOLOGY&gt;expedition path&lt;&gt;
                                { "Russian", "Перехватите и уничтожьте судно &lt;STELLAR&gt;%FREIGHTER%&lt;&gt;&#xA;Запустите &lt;TECHNOLOGY&gt;импульсный двигатель&lt;&gt; и просканируйте&#xA;&lt;TECHNOLOGY&gt;маршрут экспедиции&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FREIGHTER_ATTACK_MSG3B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Перехватите и уничтожьте судно &lt;STELLAR&gt;%FREIGHTER%&lt;&gt;.&#xA;Включите &lt;TECHNOLOGY&gt;импульсный привод&lt;&gt;, чтобы проверить другой регион.
                                -- Intercept and destroy the &lt;STELLAR&gt;%FREIGHTER%&lt;&gt;&#xA;Activate the &lt;TECHNOLOGY&gt;Pulse Drive&lt;&gt; to search a different region
                                { "Russian", "Перехватите и уничтожьте судно &lt;STELLAR&gt;%FREIGHTER%&lt;&gt;&#xA;Запустите &lt;TECHNOLOGY&gt;импульсный двигатель&lt;&gt;, чтобы проверить другой регион" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FREIGHTER_ATTACK_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Корабль &lt;STELLAR&gt;%FREIGHTER%&lt;&gt; перехвачен! Уничтожено грузовых капсул: &lt;FUEL&gt;%CURRENT%/%AMOUNT%&lt;&gt;&#xA;%FLIGHT_TIP%&#xA;Используйте &lt;IMG&gt;PREVTARGET&lt;&gt; / &lt;IMG&gt;NEXTTARGET&lt;&gt;, чтобы сменить цель
                                -- &lt;STELLAR&gt;%FREIGHTER%&lt;&gt; intercepted! Cargo pods destroyed: &lt;FUEL&gt;%CURRENT%/%AMOUNT%&lt;&gt;&#xA;%FLIGHT_TIP%&#xA;Change targets with &lt;IMG&gt;PREVTARGET&lt;&gt; / &lt;IMG&gt;NEXTTARGET&lt;&gt;
                                { "Russian", "Судно &lt;STELLAR&gt;%FREIGHTER%&lt;&gt; перехвачено! Уничтожено грузовых капсул: &lt;FUEL&gt;%CURRENT%/%AMOUNT%&lt;&gt;&#xA;%FLIGHT_TIP%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FREIGHTER_ATTACK_SLOW_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружен корабль &lt;STELLAR&gt;%FREIGHTER%&lt;&gt; из конвоя %CONVOYNAME%!&#xA;Используйте &lt;IMG&gt;BRAKE&lt;&gt;, чтобы выключить &lt;TECHNOLOGY&gt;импульсный привод&lt;&gt; и начать атаку.
                                -- &lt;STELLAR&gt;%FREIGHTER%&lt;&gt; of %CONVOYNAME% detected!&#xA;Use &lt;IMG&gt;BRAKE&lt;&gt; to exit &lt;TECHNOLOGY&gt;Pulse Drive&lt;&gt; and begin the attack
                                { "Russian", "Обнаружен корабль &lt;STELLAR&gt;%FREIGHTER%&lt;&gt; из конвоя «%CONVOYNAME%»&#xA;Выключите &lt;TECHNOLOGY&gt;импульсный двигатель&lt;&gt; с помощью &lt;IMG&gt;BRAKE&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FREIGHTER_ATTACK_OBJ1_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Перехватите корабль &lt;STELLAR&gt;%FREIGHTER%&lt;&gt; из конвоя &lt;STELLAR&gt;%CONVOYNAME%&lt;&gt; и вступите с ним в бой.&#xA;&#xA;Используйте &lt;STELLAR&gt;тормоз&lt;&gt; (&lt;IMG&gt;BRAKE&lt;&gt;), чтобы быстро разворачиваться, и &lt;STELLAR&gt;ускорение&lt;&gt; (&lt;IMG&gt;BOOST&lt;&gt;), чтобы уклоняться. Меняйте цели с помощью &lt;IMG&gt;PREVTARGET&lt;&gt; / &lt;IMG&gt;NEXTTARGET&lt;&gt;.&#xA;Ваш &lt;TECHNOLOGY&gt;щит&lt;&gt; &lt;STELLAR&gt;восстановится&lt;&gt;, если достаточно долго избегать огня противника.
                                { "Russian", "Перехватите корабль &lt;STELLAR&gt;%FREIGHTER%&lt;&gt; из конвоя «&lt;STELLAR&gt;%CONVOYNAME%&lt;&gt;» и вступите с ним в бой.&#xA;&#xA;Используйте &lt;STELLAR&gt;тормоз&lt;&gt; (&lt;IMG&gt;BRAKE&lt;&gt;), чтобы быстро разворачиваться, и &lt;STELLAR&gt;ускорение&lt;&gt; (&lt;IMG&gt;BOOST&lt;&gt;), чтобы уклоняться. Меняйте цели с помощью &lt;IMG&gt;PREVTARGET&lt;&gt; / &lt;IMG&gt;NEXTTARGET&lt;&gt;.&#xA;Ваш &lt;TECHNOLOGY&gt;щит&lt;&gt; &lt;STELLAR&gt;восстановится&lt;&gt;, если достаточно долго избегать огня противника." },
                            }
                        },
                        -- очень много цель, цель, цель
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIRATE_RIVALS_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Цель контракта: &lt;STELLAR&gt;%NAME%&lt;&gt;&#xA;Вернитесь к &lt;TECHNOLOGY&gt;убежищу&lt;&gt; цели!
                                -- Bounty target: &lt;STELLAR&gt;%NAME%&lt;&gt;&#xA;Return to the target's &lt;TECHNOLOGY&gt;hideout&lt;&gt;!
                                { "Russian", "Цель контракта: &lt;STELLAR&gt;%NAME%&lt;&gt;&#xA;Вернитесь к &lt;TECHNOLOGY&gt;убежищу пиратов&lt;&gt;!" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIRATE_RIVALS_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Цель контракта: &lt;STELLAR&gt;%NAME%&lt;&gt;&#xA;Вернитесь на корабль и покиньте станцию.
                                -- Bounty target: &lt;STELLAR&gt;%NAME%&lt;&gt;&#xA;Return to your ship and leave the station
                                { "Russian", "Цель контракта: &lt;STELLAR&gt;%NAME%&lt;&gt;&#xA;Вернитесь на корабль и покиньте станцию" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIRATE_RIVALS_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Цель контракта: &lt;STELLAR&gt;%NAME%&lt;&gt;&#xA;Доберитесь до &lt;TECHNOLOGY&gt;убежища&lt;&gt; цели.
                                -- Bounty target: &lt;STELLAR&gt;%NAME%&lt;&gt;&#xA;Reach the target's &lt;TECHNOLOGY&gt;hideout&lt;&gt;
                                { "Russian", "Цель контракта: &lt;STELLAR&gt;%NAME%&lt;&gt;&#xA;Доберитесь до &lt;TECHNOLOGY&gt;убежища пиратов&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIRATE_RIVALS_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Кораблей в эскадрилье %NAME%: &lt;FUEL&gt;%AMOUNT%&lt;&gt;&#xA;%FLIGHT_TIP%&#xA;Используйте &lt;IMG&gt;PREVTARGET&lt;&gt; / &lt;IMG&gt;NEXTTARGET&lt;&gt;, чтобы сменить цель.
                                -- %NAME%'s squadron remaining: &lt;FUEL&gt;%AMOUNT%&lt;&gt;&#xA;%FLIGHT_TIP%&#xA;Change targets with &lt;IMG&gt;PREVTARGET&lt;&gt; / &lt;IMG&gt;NEXTTARGET&lt;&gt;
                                { "Russian", "Кораблей в эскадрилье %NAME%: &lt;FUEL&gt;%AMOUNT%&lt;&gt;&#xA;%FLIGHT_TIP%" },
                            }
                        },
                        -- на станции в описании задания, пункт "Цель:"
                        -- то, что груз нужно отобрать написано выше
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "MISSION_GIVER_CAT_TARGET_SMUG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Провести контрабанду (%ITEM%)
                                -- Smuggle %ITEM%
                                { "Russian", "%ITEM%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "MISSION_GIVER_CAT_TARGET_TAKE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Захватить (%ITEM%)
                                -- Seize %ITEM%
                                { "Russian", "%ITEM%" },
                            }
                        },
                        -- опять точки
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_REP_TOKEN_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Получен &lt;STELLAR&gt;поддельный паспорт&lt;&gt;.&#xA;Введите эту поддельную информацию в &lt;TECHNOLOGY&gt;ядро станции&lt;&gt;, чтобы сбросить репутацию.&#xA;Отношения с доминирующей формой жизни в системе будут восстановлены до &lt;STELLAR&gt;нейтральных&lt;&gt;.
                                -- &lt;STELLAR&gt;Forged Passport&lt;&gt; acquired&#xA;Input these fake details at a &lt;TECHNOLOGY&gt;Station Core&lt;&gt; to reset reputation&#xA;Standing will be restored to &lt;STELLAR&gt;neutral&lt;&gt; with the system's dominant species
                                { "Russian", "Получен &lt;STELLAR&gt;поддельный паспорт&lt;&gt;&#xA;Введите эту поддельную информацию в &lt;TECHNOLOGY&gt;ядро станции&lt;&gt;&#xA;Отношения с доминирующей формой жизни в системе&#xA;будут восстановлены до &lt;STELLAR&gt;нейтральных&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENTINELS_DISABLED_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Перезапуск: успешно &lt;IMG&gt;SLASH&lt;&gt; Планетарные стражи отключены!
                                -- Override Success &lt;IMG&gt;SLASH&lt;&gt; Planetary Sentinels Disabled!
                                { "Russian", "Перезапуск выполнен &lt;IMG&gt;SLASH&lt;&gt; Планетарные стражи отключены!" },
                            }
                        },
                        -- неправильный перевод слова lock
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PORTAL_SENT_MISS_19" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STORY_HIGH&gt;Зафиксирован ретранслятор связи: &lt;&gt;&lt;FUEL&gt;А Т Л А С&lt;&gt;&#xA;&#xA;Маяк Атласа парил в пространстве, невероятно тихий и непостижимо громкий. Он знал, что я здесь.&#xA;&#xA;&lt;STORY_HIGH&gt;-{{ в нем хранится бесконечная реальность. существование непрерывно. существование обрывочно. существование едино. впереди нас ждет бесконечная общность. }}-&lt;&gt;&#xA;&#xA;Слова маяка отдавались в моих ушах багряным отзвуком. Их ужасная музыка всколыхнула что-то внутри мозга...
                                -- &lt;STORY_HIGH&gt;Communication relay locked: &lt;&gt;&lt;FUEL&gt;A T L A S&lt;&gt;&#xA;&#xA;The Atlas beacon drifted through space, impossibly silent and impossibly loud. It knew I was there.&#xA;&#xA;&lt;STORY_HIGH&gt;-{{ this holds endless reality. existence is ceaseless. existence is fragments. existence is bonded. ahead of us is endless communion. }}-&lt;&gt;&#xA;&#xA;Its words rang a crimson echo in my ears, the terrible music stirring something within the brain...
                                { "Russian", "&lt;STORY_HIGH&gt;Источник сигнала: &lt;&gt;&lt;FUEL&gt;А Т Л А С&lt;&gt;&#xA;&#xA;Маяк Атласа парил в пространстве, невероятно тихий и непостижимо громкий. Он знал, что я здесь.&#xA;&#xA;&lt;STORY_HIGH&gt;-{{ в нем хранится бесконечная реальность. существование непрерывно. существование обрывочно. существование едино. впереди нас ждет бесконечная общность. }}-&lt;&gt;&#xA;&#xA;Слова маяка отдавались в моих ушах багряным отзвуком. Их ужасная музыка всколыхнула что-то внутри мозга..." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PORTAL_SENT_MISS_19_ALT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STORY_HIGH&gt;Зафиксирован ретранслятор связи: &lt;&gt;&lt;FUEL&gt;А Т Л А С&lt;&gt;&#xA;&#xA;Маяк Атласа парил в пространстве, невероятно тихий и непостижимо громкий. Он знал, что я здесь.&#xA;&#xA;&lt;STORY_HIGH&gt;«%ALIEN_TEXT%»&lt;&gt;&#xA;&#xA;Слова маяка отдавались в моих ушах багряным отзвуком. Их ужасная музыка всколыхнула что-то внутри мозга...
                                -- &lt;STORY_HIGH&gt;Communication relay locked: &lt;&gt;&lt;FUEL&gt;A T L A S&lt;&gt;&#xA;&#xA;The Atlas beacon drifted through space, impossibly silent and impossibly loud. It knew I was there.&#xA;&#xA;&lt;STORY_HIGH&gt;&quot;%ALIEN_TEXT%&quot;&lt;&gt;&#xA;&#xA;Its words rang a crimson echo in my ears, the terrible music stirring something within the brain...
                                { "Russian", "&lt;STORY_HIGH&gt;Источник сигнала: &lt;&gt;&lt;FUEL&gt;А Т Л А С&lt;&gt;&#xA;&#xA;Маяк Атласа парил в пространстве, невероятно тихий и непостижимо громкий. Он знал, что я здесь.&#xA;&#xA;&lt;STORY_HIGH&gt;«%ALIEN_TEXT%»&lt;&gt;&#xA;&#xA;Слова маяка отдавались в моих ушах багряным отзвуком. Их ужасная музыка всколыхнула что-то внутри мозга..." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PORTAL_PIRATES_8_HIDE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Местоположение убежища пиратов не было раскрыто, и я мог посещать станцию преступников в любое время.&#xA;&#xA;Но, кажется, мои действия не остались незамеченными.&#xA;&#xA;&lt;STORY_HIGH&gt;Зафиксирован ретранслятор связи: &lt;&gt;&lt;FUEL&gt;А Т Л А С&lt;&gt;&#xA;&#xA;&lt;STORY_HIGH&gt;-{{ Атлас — это ничто. Атлас — это бесконечность. Оказавшиеся в ловушке дети со своей неидеальной послушностью не видят ничего, не понимают ничего. Их мудрость есть смерть. Их сон безграничен. }}-&lt;&gt;
                                -- The pirates' hideout had been preserved, and I was free to visit the outlaw station at will.&#xA;&#xA;It seemed, however, that my actions had not gone entirely unnoticed.&#xA;&#xA;&lt;STORY_HIGH&gt;Communication relay locked: &lt;&gt;&lt;FUEL&gt;A T L A S&lt;&gt;&#xA;&#xA;&lt;STORY_HIGH&gt;-{{ Atlas is none. Atlas is infinite. these trapped children, with their imperfect obedience, they witness nothing, they understood nothing. their wisdom is death. their sleep is unbounded. }}-&lt;&gt;
                                { "Russian", "Местоположение убежища пиратов не было раскрыто, и я мог посещать станцию преступников в любое время.&#xA;&#xA;Но, кажется, мои действия не остались незамеченными.&#xA;&#xA;&lt;STORY_HIGH&gt;Источник сигнала: &lt;&gt;&lt;FUEL&gt;А Т Л А С&lt;&gt;&#xA;&#xA;&lt;STORY_HIGH&gt;-{{ Атлас — это ничто. Атлас — это бесконечность. Оказавшиеся в ловушке дети со своей неидеальной послушностью не видят ничего, не понимают ничего. Их мудрость есть смерть. Их сон безграничен. }}-&lt;&gt;" },
                            }
                        },
                        --
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PORTAL_CAT_COLLECTION_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Зарегистрировано диковинок: %CURRENT%/%AMOUNT%
                                -- Oddities Recorded: %CURRENT%/%AMOUNT%
                                { "Russian", "Найдено диковинок: %CURRENT%/%AMOUNT%" },
                            }
                        },
                        --
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIRATES1_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Данные местоположения, найденные на &lt;TECHNOLOGY&gt;заброшенном судне&lt;&gt;.&#xA;Доберитесь до указанных координат.
                                -- Location data acquired from &lt;TECHNOLOGY&gt;abandoned vessel&lt;&gt;&#xA;Reach the marked coordinates
                                { "Russian", "Получены координаты &lt;TECHNOLOGY&gt;заброшенного корабля&lt;&gt;&#xA;Доберитесь до указанных координат" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIRATES1_MSG1_INTERSTELLAR" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Данные местоположения, найденные на &lt;TECHNOLOGY&gt;заброшенном судне&lt;&gt;.&#xA;Находясь в космосе, сверьтесь с &lt;STELLAR&gt;галактической картой&lt;&gt;, открыв ее с помощью &lt;IMG&gt;QUICK_MENU&lt;&gt;.
                                -- Location data acquired from &lt;TECHNOLOGY&gt;abandoned vessel&lt;&gt;&#xA;In space, consult the &lt;STELLAR&gt;Galaxy Map&lt;&gt; with &lt;IMG&gt;QUICK_MENU&lt;&gt;
                                { "Russian", "Получены координаты &lt;TECHNOLOGY&gt;заброшенного корабля&lt;&gt;&#xA;Находясь в космосе, откройте галактическую карту (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIRATES1_MSG1_SURVEY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Данные местоположения, найденные на &lt;TECHNOLOGY&gt;заброшенном судне&lt;&gt;.&#xA;&lt;TECHNOLOGY&gt;Разведайте цель&lt;&gt;, чтобы точно установить координаты.
                                -- Location data acquired from &lt;TECHNOLOGY&gt;abandoned vessel&lt;&gt;&#xA;Use the &lt;TECHNOLOGY&gt;Target Sweep&lt;&gt; to pinpoint the exact coordinates
                                { "Russian", "Получены координаты &lt;TECHNOLOGY&gt;заброшенного корабля&lt;&gt;&#xA;Найдите корабль с помощью &lt;TECHNOLOGY&gt;разведки цели&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIRATES1_MSG1_SURVEY_SWAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Данные местоположения, найденные на &lt;TECHNOLOGY&gt;заброшенном судне&lt;&gt;.&#xA;&lt;TECHNOLOGY&gt;Разведайте цель&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;
                                -- Location data acquired from &lt;TECHNOLOGY&gt;abandoned vessel&lt;&gt;&#xA;Activate a &lt;TECHNOLOGY&gt;Target Sweep&lt;&gt; with &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;
                                { "Russian", "Получены координаты &lt;TECHNOLOGY&gt;заброшенного корабля&lt;&gt;&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIRATES1_MSG1_SURVEY_OFF" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Данные местоположения, найденные на &lt;TECHNOLOGY&gt;заброшенном судне&lt;&gt;.&#xA;&lt;STELLAR&gt;Разведайте цель&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы точно установить координаты.
                                -- Location data acquired from &lt;TECHNOLOGY&gt;abandoned vessel&lt;&gt;&#xA;Activate a &lt;STELLAR&gt;Target Sweep&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;) to pinpoint the exact coordinates
                                { "Russian", "Получены координаты &lt;TECHNOLOGY&gt;заброшенного корабля&lt;&gt;&#xA;Найдите корабль с помощью &lt;TECHNOLOGY&gt;разведки цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIRATES1_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- На месте крушения найден &lt;TECHNOLOGY&gt;навигационный маяк встречи&lt;&gt;.&#xA;Активируйте его в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;).
                                -- &lt;TECHNOLOGY&gt;Rendezvous Navigation Beacon&lt;&gt; acquired from crash site&#xA;Deploy the beacon from the Inventory (&lt;IMG&gt;INVENTORY&lt;&gt;)
                                { "Russian", "На месте крушения найден &lt;TECHNOLOGY&gt;навигационный маяк встречи&lt;&gt;&#xA;Активируйте его в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIRATES1_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;Навигационный маяк встречи&lt;&gt; активирован.&#xA;Отправьтесь в открытый космос и доберитесь до &lt;STELLAR&gt;места встречи&lt;&gt;.
                                -- &lt;TECHNOLOGY&gt;Rendezvous navigation beacon&lt;&gt; successfully deployed&#xA;Fly to the deep space &lt;STELLAR&gt;rendezvous point&lt;&gt;
                                { "Russian", "&lt;TECHNOLOGY&gt;Навигационный маяк встречи&lt;&gt; активирован&#xA;Отправьтесь в открытый космос и доберитесь до &lt;STELLAR&gt;места встречи&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIRATES1_MSG5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вы &lt;STELLAR&gt;добрались&lt;&gt; до навигационного маяка встречи.&#xA;Осталось враждебных кораблей: &lt;FUEL&gt;%AMOUNT%&lt;&gt;
                                -- Rendezvous navigation beacon &lt;STELLAR&gt;reached&lt;&gt;&#xA;Hostile ships remaining: &lt;FUEL&gt;%AMOUNT%&lt;&gt;
                                { "Russian", "Вы &lt;STELLAR&gt;добрались&lt;&gt; до навигационного маяка встречи&#xA;Осталось враждебных кораблей: &lt;FUEL&gt;%AMOUNT%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIRATES1_MSG6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Враждебные корабли &lt;STELLAR&gt;побеждены&lt;&gt;.&#xA; Воспользуйтесь &lt;TECHNOLOGY&gt;сканером звездолета&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;), чтобы &lt;STELLAR&gt;отправить сигнал&lt;&gt; на маяк.
                                -- Hostile ships &lt;STELLAR&gt;defeated&lt;&gt;&#xA;Use the &lt;TECHNOLOGY&gt;Starship Scanner&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;) to &lt;STELLAR&gt;ping&lt;&gt; the navigation beacon
                                { "Russian", "Враждебные корабли &lt;STELLAR&gt;побеждены&lt;&gt;&#xA;Отправьте &lt;STELLAR&gt;пинг-запрос&lt;&gt; на маяк&#xA;с помощью &lt;TECHNOLOGY&gt;сканера звездолёта&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIRATES1_MSG7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- На канале связи обнаружен &lt;STELLAR&gt;ответ&lt;&gt; навигационного маяка.&#xA;Чтобы &lt;TECHNOLOGY&gt;ответить&lt;&gt;, нажмите &lt;IMG&gt;QUICK_MENU&lt;&gt;.
                                -- Navigation beacon &lt;STELLAR&gt;ping response&lt;&gt; detected on hailing frequency&#xA;Answer the &lt;TECHNOLOGY&gt;Communicator&lt;&gt; by pressing &lt;IMG&gt;QUICK_MENU&lt;&gt;
                                { "Russian", "Принят &lt;STELLAR&gt;пинг-ответ&lt;&gt; от маяка&#xA;Ответьте по коммуникатору из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIRATES1_MSG8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Планетарные координаты отмечены&#xA;Следуйте за &lt;STELLAR&gt;Голосом Свободы&lt;&gt;.
                                -- Planetary coordinates marked&#xA;Follow the &lt;STELLAR&gt;Voice of Freedom&lt;&gt;
                                { "Russian", "Планетарные координаты отмечены&#xA;Следуйте за &lt;STELLAR&gt;Голосом Свободы&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIRATES1_MSG8_SURVEY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Следуйте за &lt;STELLAR&gt;Голосом Свободы&lt;&gt;.&#xA;&lt;TECHNOLOGY&gt;Разведайте цель&lt;&gt;, чтобы точно установить его местоположение.
                                -- Follow the &lt;STELLAR&gt;Voice of Freedom&lt;&gt;&#xA;Use the &lt;TECHNOLOGY&gt;Target Sweep&lt;&gt; to trace its exact location
                                { "Russian", "Следуйте за &lt;STELLAR&gt;Голосом Свободы&lt;&gt;&#xA;Найдите его с помощью &lt;TECHNOLOGY&gt;разведки цели&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIRATES1_MSG8_SURVEY_SWAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Следуйте за &lt;STELLAR&gt;Голосом Свободы&lt;&gt;.&#xA;&lt;TECHNOLOGY&gt;Разведайте цель&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;
                                -- Follow the &lt;STELLAR&gt;Voice of Freedom&lt;&gt;&#xA;Activate a &lt;TECHNOLOGY&gt;Target Sweep&lt;&gt; with &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;
                                { "Russian", "Следуйте за &lt;STELLAR&gt;Голосом Свободы&lt;&gt;&#xA;&lt;TECHNOLOGY&gt;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIRATES1_MSG8_SURVEY_OFF" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Следуйте за &lt;STELLAR&gt;Голосом Свободы&lt;&gt;.&#xA;&lt;STELLAR&gt;Разведайте цель&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы точно установить его местоположение.
                                -- Follow the &lt;STELLAR&gt;Voice of Freedom&lt;&gt;&#xA;Activate a &lt;STELLAR&gt;Target Sweep&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;) to trace its exact location
                                { "Russian", "Следуйте за &lt;STELLAR&gt;Голосом Свободы&lt;&gt;&#xA;Найдите его с помощью &lt;STELLAR&gt;разведки цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIRATES1_TRAP_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПРЕДУПРЕЖДЕНИЕ О ВМЕШАТЕЛЬСТВЕ В АВАРИЙНЫЙ МАЯК &lt;IMG&gt;SLASH&lt;&gt; АКТИВИРОВАНА СИСТЕМА БЕЗОПАСНОСТИ
                                -- DISTRESS BEACON TAMPER ALERT &lt;IMG&gt;SLASH&lt;&gt; SECURITY RESPONSE TRIGGERED
                                { "Russian", "АКТИВИРОВАНА СИСТЕМА БЕЗОПАСНОСТИ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIRATE_INVITE_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Пропуск для безопасного пролета по системе
                                -- Secure System Pass
                                { "Russian", "Разрешение на въезд" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIRATE_INVITE_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- «Славный выживший! &lt;STELLAR&gt;Звезда обетованная&lt;&gt; будет вашей!»&#xA;&#xA;&lt;TECHNOLOGY&gt;Пропуск для безопасного перемещения по системе&lt;&gt;, отмеченный знаком &lt;STELLAR&gt;«Голоса свободы»&lt;&gt;. &#xA;Выберите пропуск и далее «Принять приглашение» (&lt;IMG&gt;FE_ALT1&lt;&gt;), чтобы закрепить местоположение в навигационной системе.
                                -- &quot;Glorious survivor! The &lt;STELLAR&gt;promised star&lt;&gt; will be yours!&quot;&#xA;&#xA;A &lt;TECHNOLOGY&gt;Secure system pass&lt;&gt; bearing the mark of the '&lt;STELLAR&gt;Voice of Freedom'&lt;&gt;. &#xA;Select the pass and use Accept Invitation (&lt;IMG&gt;FE_ALT1&lt;&gt;) to pin the location in your navigation systems.
                                { "Russian", "«Славный выживший! &lt;STELLAR&gt;Звезда обетованная&lt;&gt; будет вашей!»&#xA;&#xA;&lt;TECHNOLOGY&gt;Разрешение на въезд&lt;&gt; отмечено знаком &lt;STELLAR&gt;«Голоса Свободы»&lt;&gt;. &#xA;Примите приглашение (&lt;IMG&gt;FE_ALT1&lt;&gt;), чтобы добавить местоположение звезды в систему навигации." },
                            }
                        },

                        --#region UI_PIRATES2_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIRATES2_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;Пропуск для безопасного пролета по системе&lt;&gt;, полученный от &lt;STELLAR&gt;Голоса Свободы&lt;&gt;.&#xA;Активируйте его в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;).
                                -- &lt;TECHNOLOGY&gt;Secure system pass&lt;&gt; acquired from the '&lt;STELLAR&gt;Voice of Freedom'&lt;&gt;&#xA;Deploy the ticket from the Inventory (&lt;IMG&gt;INVENTORY&lt;&gt;)
                                { "Russian", "Получен &lt;TECHNOLOGY&gt;пропуск&lt;&gt; &lt;STELLAR&gt;Голоса Свободы&lt;&gt;&#xA;Активируйте его в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIRATES2_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;Пропуск для безопасного пролета по системе&lt;&gt;, полученный от &lt;STELLAR&gt;Голоса Свободы&lt;&gt;.&#xA;Вернитесь на свой звездолет.
                                { "Russian", "Получен &lt;TECHNOLOGY&gt;пропуск&lt;&gt; &lt;STELLAR&gt;Голоса Свободы&lt;&gt;&#xA;Вернитесь на свой звездолёт" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIRATES2_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;Пропуск для безопасного пролета по системе&lt;&gt;, полученный от &lt;STELLAR&gt;Голоса Свободы&lt;&gt;.&#xA;Отправьтесь в космос, чтобы открыть &lt;TECHNOLOGY&gt;галактическую карту&lt;&gt;.
                                { "Russian", "Получен &lt;TECHNOLOGY&gt;пропуск&lt;&gt; &lt;STELLAR&gt;Голоса Свободы&lt;&gt;&#xA;Откройте &lt;TECHNOLOGY&gt;галактическую карту&lt;&gt; в космосе" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIRATES2_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;Пропуск для безопасного пролета по системе&lt;&gt;, полученный от &lt;STELLAR&gt;Голоса Свободы&lt;&gt;.&#xA;Откройте галактическую карту (&lt;IMG&gt;QUICK_MENU&lt;&gt;) и следуйте &lt;TRADEABLE&gt;маршруту задания&lt;&gt; (&lt;IMG&gt;GALAXY_NAV_L&lt;&gt;&lt;IMG&gt;GALAXY_NAV_R&lt;&gt;).
                                -- &lt;TECHNOLOGY&gt;Secure system pass&lt;&gt; acquired from the '&lt;STELLAR&gt;Voice of Freedom'&lt;&gt;&#xA;Access the Galaxy Map (&lt;IMG&gt;QUICK_MENU&lt;&gt;) and follow the &lt;TRADEABLE&gt;Mission Path&lt;&gt; (&lt;IMG&gt;GALAXY_NAV_L&lt;&gt;&lt;IMG&gt;GALAXY_NAV_R&lt;&gt;)
                                { "Russian", "Получен &lt;TECHNOLOGY&gt;пропуск&lt;&gt; &lt;STELLAR&gt;Голоса Свободы&lt;&gt;&#xA;Откройте галактическую карту с помощью &lt;IMG&gt;QUICK_MENU&lt;&gt;&#xA;Следуйте &lt;TRADEABLE&gt;маршруту задания&lt;&gt; (&lt;IMG&gt;GALAXY_NAV_L&lt;&gt;&lt;IMG&gt;GALAXY_NAV_R&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIRATES2_MSG5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;Пропуск для безопасного пролета по системе&lt;&gt;, полученный от &lt;STELLAR&gt;Голоса Свободы&lt;&gt;.&#xA;Состыкуйтесь со &lt;STELLAR&gt;станцией преступников&lt;&gt;.
                                { "Russian", "Получен &lt;TECHNOLOGY&gt;пропуск&lt;&gt; &lt;STELLAR&gt;Голоса Свободы&lt;&gt;&#xA;Состыкуйтесь со &lt;STELLAR&gt;станцией преступников&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIRATES2_MSG6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружена &lt;STELLAR&gt;станция преступников&lt;&gt;.&#xA;Поговорите с ее обитателями, чтобы найти &lt;STELLAR&gt;Голос Свободы&lt;&gt;.
                                { "Russian", "Обнаружена &lt;STELLAR&gt;станция преступников&lt;&gt;&#xA;Поговорите с ее обитателями и найдите &lt;STELLAR&gt;Голос Свободы&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIRATES2_MSG7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите &lt;STELLAR&gt;Голос Свободы&lt;&gt;.&#xA;Расспрошено преступников: %CURRENT%
                                { "Russian", "Найдите &lt;STELLAR&gt;Голос Свободы&lt;&gt;&#xA;Расспрошено преступников: %CURRENT%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIRATES2_MSG8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Исследуйте &lt;TECHNOLOGY&gt;станцию преступников&lt;&gt;.&#xA;Осмотрите &lt;SPECIAL&gt;саботированное ядро станции&lt;&gt;.
                                -- Explore the &lt;TECHNOLOGY&gt;Outlaw Station&lt;&gt;&#xA;Examine the &lt;SPECIAL&gt;Subverted Station Core&lt;&gt;
                                { "Russian", "Исследуйте &lt;TECHNOLOGY&gt;станцию преступников&lt;&gt;&#xA;Осмотрите &lt;SPECIAL&gt;ниспровергнутое ядро станции&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIRATES2_MSG9" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Исследуйте &lt;TECHNOLOGY&gt;станцию преступников&lt;&gt;.&#xA;Встретьтесь с &lt;STELLAR&gt;экспедитором черного рынка&lt;&gt;.
                                { "Russian", "Исследуйте &lt;TECHNOLOGY&gt;станцию преступников&lt;&gt;&#xA;Встретьтесь с &lt;STELLAR&gt;экспедитором черного рынка&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIRATES2_MSG10" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Исследуйте &lt;TECHNOLOGY&gt;станцию преступников&lt;&gt;.&#xA;Встретьтесь с &lt;STELLAR&gt;торговцем извлеченными технологиями&lt;&gt;.
                                -- Explore the &lt;TECHNOLOGY&gt;Outlaw Station&lt;&gt;&#xA;Visit the &lt;STELLAR&gt;Salvaged Technology Dealer&lt;&gt;
                                { "Russian", "Исследуйте &lt;TECHNOLOGY&gt;станцию преступников&lt;&gt;&#xA;Встретьтесь с &lt;STELLAR&gt;торговцем технологиями&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIRATES2_MSG11" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Исследуйте &lt;TECHNOLOGY&gt;станцию преступников&lt;&gt;.&#xA;Встретьтесь с &lt;STELLAR&gt;решалой&lt;&gt;.
                                { "Russian", "Исследуйте &lt;TECHNOLOGY&gt;станцию преступников&lt;&gt;&#xA;Встретьтесь с &lt;STELLAR&gt;решалой&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIRATES2_MSG12" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Получен незаконный &lt;STELLAR&gt;контракт&lt;&gt;-задание.&#xA;Выберите его в журнале (&lt;IMG&gt;OPTIONS&lt;&gt;)
                                -- Outlaw &lt;STELLAR&gt;Bounty&lt;&gt; mission acquired&#xA;Select the bounty mission in the Log (&lt;IMG&gt;OPTIONS&lt;&gt;)
                                { "Russian", "Получен незаконный &lt;STELLAR&gt;контракт&lt;&gt;&#xA;Выберите его в журнале (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIRATES2_MSG13" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Покиньте &lt;TECHNOLOGY&gt;станцию преступников&lt;&gt;.&#xA;Вернитесь на корабль, чтобы отстыковаться.
                                -- Leave the &lt;TECHNOLOGY&gt;Outlaw Station&lt;&gt;&#xA;Return to your ship to begin undocking procedures
                                { "Russian", "Покиньте &lt;TECHNOLOGY&gt;станцию преступников&lt;&gt;&#xA;Вернитесь на корабль, чтобы отстыковаться" },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIRATE_CORE_LABEL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Саботированное ядро станции
                                -- Subverted Station Core
                                { "Russian", "Ниспровергнутое ядро станции" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIRATE_CORE_TITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Саботированное ядро станции
                                -- Subverted Station Core
                                { "Russian", "Ниспровергнутое ядро станции" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIRATE_CORE_LANG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Система жизнеобеспечения: — &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;кзкззт&lt;&gt; —... Коммерческое наблюдение: &lt;FUEL&gt;ОТКЛЮЧЕНО&lt;&gt;... &lt;NEWLINE&gt;Оборона станции: &lt;TRADEABLE&gt;в полной готовности&lt;&gt; для — &lt;STELLAR&gt;кзкззт&lt;&gt; — свободы... &lt;NEWLINE&gt;Канал связи с системой наблюдения Атласа/Эрона: &lt;FUEL&gt;ОТКАЗ&lt;&gt;...
                                -- Life support systems: – &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;kzkzzt&lt;&gt; –... Commercial monitoring: &lt;FUEL&gt;DISABLED&lt;&gt;... &lt;NEWLINE&gt;Station defenses: &lt;TRADEABLE&gt;primed&lt;&gt; for - &lt;STELLAR&gt;kzkzzt&lt;&gt; - freedom... &lt;NEWLINE&gt;Atlas/Aeron Surveillance Uplink: &lt;FUEL&gt;REJECTED&lt;&gt;...
                                { "Russian", "Система жизнеобеспечения: — &lt;AUDIO&gt;TXT_RadioNoise&lt;&gt;&lt;STELLAR&gt;кзкззт&lt;&gt; —...&lt;NEWLINE&gt;Коммерческое наблюдение: &lt;FUEL&gt;ОТКЛЮЧЕНО&lt;&gt;...&lt;NEWLINE&gt;Оборона станции: &lt;TRADEABLE&gt;в полной готовности&lt;&gt; для — &lt;STELLAR&gt;кзкззт&lt;&gt; — свободы...&lt;NEWLINE&gt;Канал связи с системой наблюдения Атласа/Эрона: &lt;FUEL&gt;ОТКАЗ&lt;&gt;..." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_GAS_BRAIN_LOCATOR_MSG0" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- В ближайшем космосе обнаружен аномальный объект.&#xA;Включите &lt;TECHNOLOGY&gt;импульсный привод&lt;&gt;, чтобы начать поиск в другом регионе.
                                -- Anomalous object already in near-space&#xA;activate the &lt;TECHNOLOGY&gt;Pulse Drive&lt;&gt; to search a different region
                                { "Russian", "Аномальный объект где-то неподалеку в космосе&#xA;Запустите &lt;TECHNOLOGY&gt;импульсный двигатель&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_GAS_BRAIN_LOCATOR_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Включена &lt;SPECIAL&gt;космическая приманка&lt;&gt;.&#xA;Вернитесь на корабль, чтобы начать поиск.
                                -- &lt;SPECIAL&gt;Deep-Space Lure&lt;&gt; activated&#xA;Return to your ship to begin the search
                                { "Russian", "Включена &lt;SPECIAL&gt;космическая приманка&lt;&gt;&#xA;Вернитесь на корабль, чтобы начать поиск" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_GAS_BRAIN_LOCATOR_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Включена &lt;SPECIAL&gt;космическая приманка&lt;&gt;.&#xA;Включите &lt;TECHNOLOGY&gt;импульсный привод&lt;&gt;, чтобы облегчить поиск.
                                -- &lt;SPECIAL&gt;Deep-Space Lure&lt;&gt; activated&#xA;Activate the &lt;TECHNOLOGY&gt;Pulse Drive&lt;&gt; to assist its search
                                { "Russian", "Включена &lt;SPECIAL&gt;космическая приманка&lt;&gt;&#xA;Запустите &lt;TECHNOLOGY&gt;импульсный двигатель&lt;&gt;&#xA;и начните поиск" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "CUSTOMISE_ENGINE_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Факелы основных двигателей
                                -- Primary Engine Flares
                                { "Russian", "Пламя основных двигателей" },
                            }
                        },
                        --
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_INVENTORY_HINT_SUIT_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Свободные ячейки в инвентаре экзокостюма: &lt;FUEL&gt;%CURRENT%/%AMOUNT%&lt;&gt;&#xA;Выбрасывайте ненужные предметы с помощью &lt;IMG&gt;DISCARD&lt;&gt;.&#xA;Чтобы переместить предмет в другой инвентарь, используйте &lt;IMG&gt;TRANSFER&lt;&gt;.
                                { "Russian", "Свободные ячейки в инвентаре экзокостюма: &lt;FUEL&gt;%CURRENT%/%AMOUNT%&lt;&gt;&#xA;Выбрасывайте ненужные предметы с помощью &lt;IMG&gt;DISCARD&lt;&gt;&#xA;Чтобы переместить предмет в другой инвентарь, используйте &lt;IMG&gt;TRANSFER&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_INVENTORY_HINT_SUIT_MSG2A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Свободные ячейки в инвентаре экзокостюма: &lt;FUEL&gt;%CURRENT%/%AMOUNT%&lt;&gt;&#xA;Выбрасывайте ненужные предметы с помощью &lt;IMG&gt;DISCARD&lt;&gt;.
                                { "Russian", "Свободные ячейки в инвентаре экзокостюма: &lt;FUEL&gt;%CURRENT%/%AMOUNT%&lt;&gt;&#xA;Выбрасывайте ненужные предметы с помощью &lt;IMG&gt;DISCARD&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_INVENTORY_HINT_SUIT_MSG2B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Свободных ячеек в инвентаре экзокостюма: &lt;FUEL&gt;%CURRENT%/%AMOUNT%&lt;&gt;&#xA;Приобрести дополнительные ячейки можно на борту &lt;COMMODITY&gt;космической станции&lt;&gt;.&#xA;&lt;TECHNOLOGY&gt;Капсулы&lt;&gt; улучшают ваш инвентарь бесплатно.&#xA;Чтобы найти капсулу, приобретите карту у &lt;STELLAR&gt;картографа&lt;&gt; космической станции.
                                -- Exosuit inventory free slots: &lt;FUEL&gt;%CURRENT%/%AMOUNT%&lt;&gt;&#xA;Purchase additional slots on the &lt;COMMODITY&gt;Space Station&lt;&gt;&#xA;&lt;TECHNOLOGY&gt;Drop pods&lt;&gt; will upgrade your inventory for free&#xA;Locate drop pods with charts from a space station &lt;STELLAR&gt;cartographer&lt;&gt;
                                { "Russian", "Свободных ячеек в инвентаре экзокостюма: &lt;FUEL&gt;%CURRENT%/%AMOUNT%&lt;&gt;&#xA;Приобретайте ячейки на &lt;COMMODITY&gt;космических станциях&lt;&gt;&#xA;&lt;TECHNOLOGY&gt;Капсулы&lt;&gt; улучшают ваш инвентарь бесплатно&#xA;У &lt;STELLAR&gt;картографа&lt;&gt; на космической станции есть карты капсул" },
                            }
                        },

                        --#region UI_INVENTORY_TUT_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_INVENTORY_TUT_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Воспользуйтесь &lt;STELLAR&gt;картой улучшения экзокостюма&lt;&gt;, чтобы найти капсулу.&#xA;Выберите карту в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;) и нажмите &lt;STELLAR&gt;Проложить курс&lt;&gt; (&lt;IMG&gt;FE_ALT1&lt;&gt;)&#xA;.&lt;TECHNOLOGY&gt;Капсулы&lt;&gt; &lt;STELLAR&gt;бесплатно&lt;&gt; улучшают ваш инвентарь.
                                { "Russian", "Найдите капсулу с помощью &lt;STELLAR&gt;карты улучшения экзокостюма&lt;&gt;&#xA;Выберите карту в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;) и &lt;STELLAR&gt;проложите курс&lt;&gt; (&lt;IMG&gt;FE_ALT1&lt;&gt;)&#xA;&lt;TECHNOLOGY&gt;Капсулы&lt;&gt; &lt;STELLAR&gt;бесплатно&lt;&gt; улучшают ваш инвентарь" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_INVENTORY_TUT_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Доберитесь до отмеченной &lt;TECHNOLOGY&gt;капсулы&lt;&gt;.&#xA;Капсулы улучшают ваш инвентарь &lt;STELLAR&gt;бесплатно&lt;&gt;.&#xA;Дополнительные &lt;STELLAR&gt;карты улучшения&lt;&gt; можно приобрести у &lt;STELLAR&gt;картографа&lt;&gt; космической станции.
                                { "Russian", "Доберитесь до отмеченной &lt;TECHNOLOGY&gt;капсулы&lt;&gt;&#xA;Капсулы улучшают ваш инвентарь &lt;STELLAR&gt;бесплатно&lt;&gt;&#xA;Приобретайте &lt;STELLAR&gt;карты улучшения&lt;&gt; у &lt;STELLAR&gt;картографа&lt;&gt;&#xA;на космических станциях" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_INVENTORY_TUT_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Выберите задание &lt;STELLAR&gt;капсулы&lt;&gt; в журнале (&lt;IMG&gt;OPTIONS&lt;&gt;), чтобы начать ремонт.&#xA;Отремонтированные капсулы улучшают ваш инвентарь &lt;STELLAR&gt;бесплатно&lt;&gt;.&#xA;Дополнительные &lt;STELLAR&gt;карты улучшения&lt;&gt; можно приобрести у &lt;STELLAR&gt;картографа&lt;&gt; космической станции.
                                { "Russian", "Выберите задание &lt;STELLAR&gt;капсулы&lt;&gt; в журнале (&lt;IMG&gt;OPTIONS&lt;&gt;), чтобы начать ремонт&#xA;Отремонтированные капсулы улучшают ваш инвентарь &lt;STELLAR&gt;бесплатно&lt;&gt;&#xA;Приобретайте &lt;STELLAR&gt;карты улучшения&lt;&gt; у &lt;STELLAR&gt;картографа&lt;&gt; космической станции" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_INVENTORY_TUT_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Воспользуйтесь &lt;TECHNOLOGY&gt;капсулой&lt;&gt;, чтобы улучшить свой инвентарь.&#xA;Дополнительные &lt;STELLAR&gt;карты улучшения&lt;&gt; можно приобрести у &lt;STELLAR&gt;картографа&lt;&gt; космической станции.
                                { "Russian", "Воспользуйтесь &lt;TECHNOLOGY&gt;капсулой&lt;&gt;, чтобы улучшить свой инвентарь&#xA;Приобретайте &lt;STELLAR&gt;карты улучшения&lt;&gt; у &lt;STELLAR&gt;картографа&lt;&gt; космической станции" },
                            }
                        },
                        --#endregion

                        -- это капец
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DROPPOD_FIX_OBJ_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите предмет %ITEM1%, чтобы отремонтировать %TARGET1%: %CURRENT1%/%AMOUNT1%&#xA;Найдите предмет %ITEM2%, чтобы отремонтировать %TARGET2%: %CURRENT2%/%AMOUNT2%&#xA;Найдите предмет %ITEM3%, чтобы отремонтировать %TARGET3%: %CURRENT3%/%AMOUNT3%
                                -- Acquire %ITEM1% for %TARGET1%: %CURRENT1%/%AMOUNT1%&#xA;Acquire %ITEM2% for %TARGET2%: %CURRENT2%/%AMOUNT2%&#xA;Acquire %ITEM3% for %TARGET3%: %CURRENT3%/%AMOUNT3%
                                { "Russian", "Найдите: %ITEM1% — %CURRENT1%/%AMOUNT1%&#xA;Найдите: %ITEM2% — %CURRENT2%/%AMOUNT2%&#xA;Найдите: %ITEM3% — %CURRENT3%/%AMOUNT3%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DROPPOD_FIX_OBJ_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Доберитесь до &lt;TECHNOLOGY&gt;планетарной капсулы&lt;&gt;, чтобы завершить ремонт.&#xA;Устраните повреждения, чтобы получить &lt;STELLAR&gt;улучшение инвентаря&lt;&gt;.
                                -- Reach the &lt;TECHNOLOGY&gt;planetary drop pod&lt;&gt; to complete repairs&#xA;Repairing the damage to claim an &lt;STELLAR&gt;inventory upgrade&lt;&gt;
                                { "Russian", "Доберитесь до &lt;TECHNOLOGY&gt;планетарной капсулы&lt;&gt;&#xA;Закончите ремонт, чтобы &lt;STELLAR&gt;расширить инвентарь&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DROPPOD_FIX_OBJ_MSG2_ALT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Доберитесь до &lt;TECHNOLOGY&gt;планетарной капсулы&lt;&gt;, чтобы завершить ремонт.&#xA;Устраните повреждения, чтобы получить &lt;STELLAR&gt;улучшение инвентаря&lt;&gt;.&#xA;Находясь в космосе, откройте галактическую карту (&lt;IMG&gt;QUICK_MENU&lt;&gt;), чтобы найти нужную систему.
                                -- Reach the &lt;TECHNOLOGY&gt;planetary drop pod&lt;&gt; to complete repairs&#xA;Repairing the damage to claim an &lt;STELLAR&gt;inventory upgrade&lt;&gt;&#xA;In space, consult the Galaxy Map (&lt;IMG&gt;QUICK_MENU&lt;&gt;) to locate the correct system
                                { "Russian", "Доберитесь до &lt;TECHNOLOGY&gt;планетарной капсулы&lt;&gt; в другой системе&#xA;Закончите ремонт, чтобы &lt;STELLAR&gt;расширить инвентарь&lt;&gt;&#xA;Находясь в космосе, откройте галактическую карту (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        -- корвакские системы с маленькой буквы
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MEDAL_DESC_SYSTEMS_EXP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Чтобы переместиться в новую систему, откройте &lt;VAL_ON&gt;галактическую карту&lt;&gt; (&lt;IMG&gt;QUICK_MENU&lt;&gt;). Выберите систему и используйте &lt;IMG&gt;GALAXYWARP&lt;&gt;, чтобы запустить гипердвигатель.&#xA;&#xA;Выбирайте системы в режиме &lt;VAL_ON&gt;свободного обзора&lt;&gt; или &lt;VAL_ON&gt;двигайтесь вперед&lt;&gt; по &lt;VAL_ON&gt;заранее заданному пути&lt;&gt;. Пути могут меняться, приводя вас в самые разные места.&#xA;&#xA;&lt;TRANS_EXP&gt;корвакские&lt;&gt; системы отмечены значком визора.
                                -- To travel to a new system, open your &lt;VAL_ON&gt;Galaxy Map&lt;&gt; (&lt;IMG&gt;QUICK_MENU&lt;&gt;). Select a system and use &lt;IMG&gt;GALAXYWARP&lt;&gt; to engage the hyperdrive.&#xA;&#xA;Select systems directly in &lt;VAL_ON&gt;free look&lt;&gt; or &lt;VAL_ON&gt;push&lt;&gt; along the direction of the &lt;VAL_ON&gt;pre-set path&lt;&gt;. paths can be changed to show different galactic destinations.&#xA;&#xA;&lt;TRANS_EXP&gt;Korvax&lt;&gt;-dominated systems are indicated with a visor symbol.
                                { "Russian", "Чтобы переместиться в новую систему, откройте &lt;VAL_ON&gt;галактическую карту&lt;&gt; (&lt;IMG&gt;QUICK_MENU&lt;&gt;). Выберите систему и используйте &lt;IMG&gt;GALAXYWARP&lt;&gt;, чтобы запустить гипердвигатель.&#xA;&#xA;Выбирайте системы в режиме &lt;VAL_ON&gt;свободного обзора&lt;&gt; или &lt;VAL_ON&gt;двигайтесь вперед&lt;&gt; по &lt;VAL_ON&gt;заранее заданному пути&lt;&gt;. Пути могут меняться, приводя вас в самые разные места.&#xA;&#xA;&lt;TRANS_EXP&gt;Корвакские&lt;&gt; системы отмечены значком визора." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_POLICE_HAIL_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Груз сканируется&lt;&gt; службой охраны станции...&#xA;&lt;TECHNOLOGY&gt;Отражатель сканирования груза&lt;&gt; не установлен.&#xA;Проверка товара: %ITEM%
                                -- Station Authority &lt;STELLAR&gt;Cargo Scan&lt;&gt; in progress...&#xA;No &lt;TECHNOLOGY&gt;Cargo Scan Deflector&lt;&gt; installed&#xA;Probing item: %ITEM%
                                { "Russian", "Ведется &lt;STELLAR&gt;досмотр груза&lt;&gt;...&#xA;&lt;TECHNOLOGY&gt;Отражатель сканирования груза&lt;&gt; не установлен&#xA;Проверяется %ITEM%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_POLICE_HAIL_MSG_ALT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Груз сканируется&lt;&gt; службой охраны станции...&#xA;Запустите &lt;TECHNOLOGY&gt;отражатель сканирования груза&lt;&gt; с помощью &lt;IMG&gt;QUICK_MENU&lt;&gt;.&#xA;Проверка товара: %ITEM%
                                -- Station Authority &lt;STELLAR&gt;Cargo Scan&lt;&gt; in progress...&#xA;Deploy &lt;TECHNOLOGY&gt;Cargo Scan Deflector&lt;&gt; with &lt;IMG&gt;QUICK_MENU&lt;&gt;&#xA;Probing item: %ITEM%
                                { "Russian", "Ведется &lt;STELLAR&gt;досмотр груза&lt;&gt;...&#xA;Используйте &lt;TECHNOLOGY&gt;отражатель сканирования груза&lt;&gt; (&lt;IMG&gt;QUICK_MENU&lt;&gt;)&#xA;Проверяется %ITEM%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_POLICE_HAIL_MSG_ALIEN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Груз сканируется&lt;&gt; службой охраны станции...&#xA;Включите &lt;TECHNOLOGY&gt;нейронное экранирование&lt;&gt; с помощью &lt;IMG&gt;QUICK_MENU&lt;&gt;.&#xA;Проверка товара: %ITEM%
                                -- Station Authority &lt;STELLAR&gt;Cargo Scan&lt;&gt; in progress...&#xA;Deploy &lt;TECHNOLOGY&gt;Neural Shielding&lt;&gt; with &lt;IMG&gt;QUICK_MENU&lt;&gt;&#xA;Probing item: %ITEM%
                                { "Russian", "Ведется &lt;STELLAR&gt;досмотр груза&lt;&gt;...&#xA;Используйте &lt;TECHNOLOGY&gt;нейронное экранирование&lt;&gt; (&lt;IMG&gt;QUICK_MENU&lt;&gt;)&#xA;Проверяется %ITEM%" },
                            }
                        },
                        -- не встречал, нужно тестить, но опечатки знатные
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FRE_CUSTOM_REWARD_FORMAT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Краска для грузового судна (&lt;COMMODITY&gt;%ITEM%)&lt;&gt;
                                -- &lt;COMMODITY&gt;%ITEM% paint freighter customisation&lt;&gt;
                                { "Russian", "&lt;COMMODITY&gt;%ITEM% окрас грузового судна&lt;&gt;" },
                            }
                        },
                        -- каталог, раздел технологий
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PORTAL_CAT_TECH_WEIRD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Экзотич.
                                -- Exotic
                                { "Russian", "Экзотическое" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PORTAL_CAT_RECIPES" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Схемы
                                -- Recipes
                                { "Russian", "Рецепты" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PORTAL_CAT_RECIPES_U" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- СХЕМЫ
                                -- RECIPES
                                { "Russian", "РЕЦЕПТЫ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PORTAL_CAT_RECIPES_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Изучено схем: %CURRENT%/%AMOUNT%
                                -- Recipes Known: %CURRENT%/%AMOUNT%
                                { "Russian", "Изучено рецептов: %CURRENT%/%AMOUNT%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PORTAL_CAT_MAT_COOK" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Кулинарный
                                -- Cooking
                                { "Russian", "Кулинария" },
                            }
                        },

                        --#region Каталог -> Чудеса
                        -- прикол в том, что records тут означают рекорды
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PORTAL_CAT_WONDER_PLANET" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Записи о планете
                                -- Planet Records
                                { "Russian", "Планеты-рекордсмены" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PORTAL_CAT_WONDER_PLANET_U" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ЗАПИСИ О ПЛАНЕТЕ
                                -- PLANET RECORDS
                                { "Russian", "ПЛАНЕТЫ-РЕКОРДСМЕНЫ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PORTAL_CAT_WONDER_CREATURE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Записи о фауне
                                -- Fauna Records
                                { "Russian", "Рекорды — фауна" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PORTAL_CAT_WONDER_CREATURE_U" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ЗАПИСИ О ФАУНЕ
                                { "Russian", "РЕКОРДЫ — ФАУНА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PORTAL_CAT_WONDER_PLANT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Записи о флоре
                                { "Russian", "Рекорды — флора" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PORTAL_CAT_WONDER_PLANT_U" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ЗАПИСИ О ФЛОРЕ
                                { "Russian", "РЕКОРДЫ — ФЛОРА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PORTAL_CAT_WONDER_ROCK" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Записи о минерале
                                -- Mineral Records
                                { "Russian", "Рекорды — минералы" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PORTAL_CAT_WONDER_ROCK_U" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ЗАПИСИ О МИНЕРАЛЕ
                                { "Russian", "РЕКОРДЫ — МИНЕРАЛЫ" },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_BUILD_PART_F_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Чтобы открыть &lt;TECHNOLOGY&gt;меню созидания&lt;&gt;, нажмите &lt;IMG&gt;BUILD_MENU&lt;&gt;. Многие компоненты базы устанавливаются на грузовых судах в виде &lt;STELLAR&gt;целых отсеков&lt;&gt; и уже имеют установленные функциональные модули.&#xA;&#xA;Чтобы изучить новые компоненты базы для грузовых судов, воспользуйтесь &lt;TECHNOLOGY&gt;терминалом управления улучшениями&lt;&gt; на мостике вашего грузового судна. Вы можете добывать &lt;TECHNOLOGY&gt;извлеченные модули фрегата&lt;&gt; в &lt;STELLAR&gt;местах крушения грузовых судов&lt;&gt; или во время &lt;STELLAR&gt;экспедиций фрегатов&lt;&gt;, а затем приобретать за них улучшения технологий или дополнительные строительные чертежи.
                                -- Access the &lt;TECHNOLOGY&gt;Build Menu&lt;&gt; with &lt;IMG&gt;BUILD_MENU&lt;&gt;. Many freighter base components are placed as an &lt;STELLAR&gt;entire room&lt;&gt; and come with their functional units pre-installed.&#xA;&#xA;To learn new freighter base components, visit the &lt;TECHNOLOGY&gt;Upgrade Control Terminal&lt;&gt; on the bridge of your freighter. Earn &lt;TECHNOLOGY&gt;Salvaged Frigate Modules&lt;&gt; from &lt;STELLAR&gt;freighter crashsites&lt;&gt; or during &lt;STELLAR&gt;frigate expeditions&lt;&gt; and spend them on technology upgrades or additional construction blueprints.
                                { "Russian", "Чтобы открыть &lt;TECHNOLOGY&gt;меню строительства﻿,&lt;&gt; нажмите &lt;IMG&gt;BUILD_MENU&lt;&gt;. Многие компоненты базы устанавливаются на грузовых судах в виде &lt;STELLAR&gt;целых отсеков&lt;&gt; и уже имеют установленные функциональные модули.&#xA;&#xA;Чтобы изучить новые компоненты базы для грузовых судов, воспользуйтесь &lt;TECHNOLOGY&gt;терминалом улучшений&lt;&gt; на мостике вашего грузового судна. Вы можете добывать &lt;TECHNOLOGY&gt;модули фрегатов&lt;&gt; в &lt;STELLAR&gt;местах крушения грузовых судов&lt;&gt; или во время &lt;STELLAR&gt;экспедиций﻿,&lt;&gt; а затем приобретать за них улучшения технологий или дополнительные строительные чертежи." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_INSTALL_TECH_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Чтобы установить новые технологии, откройте свой инвентарь (&lt;IMG&gt;INVENTORY&lt;&gt;), выберите пустую ячейку и нажмите &lt;IMG&gt;TECHMENU&lt;&gt;. Использовать улучшения можно в &lt;TECHNOLOGY&gt;инвентаре технологий&lt;&gt;, чтобы экономить место в хранилище.&#xA;&#xA;Чтобы изучить новые технологии грузового судна, посетите &lt;TECHNOLOGY&gt;терминал управления улучшениями&lt;&gt; на мостике. Находите &lt;TECHNOLOGY&gt;извлеченные модули фрегатов&lt;&gt; в &lt;STELLAR&gt;местах крушения грузовых судов&lt;&gt; или во время &lt;STELLAR&gt;экспедиций фрегатов&lt;&gt;.&#xA;&#xA;Выберите пустую ячейку и начните установку с помощью &lt;IMG&gt;TECHMENU&lt;&gt;. Закрепите необходимые компоненты с помощью &lt;IMG&gt;PIN&lt;&gt;.
                                -- To install new technologies, open your inventory (&lt;IMG&gt;INVENTORY&lt;&gt;) and press &lt;IMG&gt;TECHMENU&lt;&gt; on an empty slot. Use the &lt;TECHNOLOGY&gt;Technology Inventory&lt;&gt; to preserve storage space.&#xA;&#xA;Learn new freighter technologies at the &lt;TECHNOLOGY&gt;Upgrade Control Terminal&lt;&gt; on the bridge. Earn &lt;TECHNOLOGY&gt;Salvaged Frigate Modules&lt;&gt; from &lt;STELLAR&gt;freighter crashsites&lt;&gt; or during &lt;STELLAR&gt;frigate expeditions&lt;&gt;.&#xA;&#xA;Select an empty slot and begin installation with &lt;IMG&gt;TECHMENU&lt;&gt;. Pin required components with &lt;IMG&gt;PIN&lt;&gt;.
                                { "Russian", "Чтобы установить новые технологии, откройте свой инвентарь (&lt;IMG&gt;INVENTORY&lt;&gt;), выберите пустую ячейку и нажмите &lt;IMG&gt;TECHMENU&lt;&gt;. Использовать улучшения можно в &lt;TECHNOLOGY&gt;инвентаре технологий&lt;&gt;, чтобы экономить место в хранилище.&#xA;&#xA;Чтобы изучить новые технологии грузового судна, используйте &lt;TECHNOLOGY&gt;терминал улучшений&lt;&gt; на мостике. Находите &lt;TECHNOLOGY&gt;модули фрегатов&lt;&gt; в &lt;STELLAR&gt;местах крушения грузовых судов&lt;&gt; или во время &lt;STELLAR&gt;экспедиций&lt;&gt;.&#xA;&#xA;Выберите пустую ячейку и начните установку с помощью &lt;IMG&gt;TECHMENU&lt;&gt;. Закрепите необходимые компоненты с помощью &lt;IMG&gt;PIN&lt;&gt;." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MEDAL_DESC_DIST" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Во время пешего исследования используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), &lt;TECHNOLOGY&gt;сканер&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;) и&lt;TECHNOLOGY&gt; компас&lt;&gt; в верхней части интерфейса, чтобы находить важные объекты.&#xA;&#xA;Вы можете укрываться от непогоды в пещерах или строениях и автоматически перезаряжать &lt;TECHNOLOGY&gt;систему защиты от вредных факторов&lt;&gt;.&#xA;&#xA;Вы можете двигаться быстрее с помощью ускорения (&lt;IMG&gt;RUN&lt;&gt;) и реактивного ранца (&lt;IMG&gt;JUMP&lt;&gt;) экзокостюма. Покупайте улучшения двигательных систем экзокостюма у &lt;TECHNOLOGY&gt;торговца технологиями&lt;&gt; на космической станции.
                                { "Russian", "Во время пешего исследования используйте &lt;TECHNOLOGY&gt;компас&lt;&gt; в верхней части интерфейса, &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;) и &lt;TECHNOLOGY&gt;сканер&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;), чтобы находить важные объекты.&#xA;&#xA;Вы можете укрываться от непогоды в пещерах или строениях и автоматически перезаряжать &lt;TECHNOLOGY&gt;систему защиты от вредных факторов&lt;&gt;.&#xA;&#xA;Используйте ускорение (&lt;IMG&gt;RUN&lt;&gt;) и реактивный ранец (&lt;IMG&gt;JUMP&lt;&gt;) экзокостюма, чтобы двигаться быстрее. Покупайте улучшения двигательных систем экзокостюма у &lt;TECHNOLOGY&gt;торговца технологиями&lt;&gt; на космической станции." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FREI_TRAIL_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Изменение факела двигателя грузового судна
                                -- Freighter Engine Flare Override
                                { "Russian", "Шлейф грузового судна" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPD_TITLE_08_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Звание «Искатель»
                                { "Russian", "Звание: «Искатель»" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPD_TITLE_07_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Звание «Петлевик»
                                { "Russian", "Звание: «Петлевик»" },
                            }
                        },

                        --#region модификатор факелов
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FREI_TRAIL_GRE_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Эксклюзивный &lt;STELLAR&gt;модификатор факелов двигателей грузового судна&lt;&gt;.&#xA;&#xA;Невероятный жар двигателей грузового судна запускает реакцию в этом фильтре из эмериловой соли, которая окрашивает выхлопные газы в яркий зеленый цвет.&#xA;&#xA;Поменяйте внешний вид вашего грузового судна с помощью &lt;TECHNOLOGY&gt;терминала управления улучшениями&lt;&gt; на &lt;VAL_ON&gt;мостике&lt;&gt;.
                                -- An exclusive &lt;STELLAR&gt;Freighter Engine Flare Modifier&lt;&gt;.&#xA;&#xA;The extreme heat of the freighter's engines excites this filter of Emeril salts, tinting the exhaust with a vivid green hue.&#xA;&#xA;Transform the appearance of your freighter at the &lt;TECHNOLOGY&gt;Upgrade Control Terminal&lt;&gt; on the &lt;VAL_ON&gt;bridge&lt;&gt;.
                                { "Russian", "Эксклюзивное &lt;STELLAR&gt;пламя двигателей грузового судна&lt;&gt;.&#xA;&#xA;Невероятный жар двигателей грузового судна запускает реакцию в этом фильтре из эмериловой соли, которая окрашивает выхлопные газы в яркий зеленый цвет.&#xA;&#xA;Поменяйте внешний вид вашего грузового судна с помощью &lt;TECHNOLOGY&gt;терминала управления улучшениями&lt;&gt; на &lt;VAL_ON&gt;мостике&lt;&gt;." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FREI_TRAIL_YEL_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Эксклюзивный &lt;STELLAR&gt;модификатор факелов двигателей грузового судна&lt;&gt;.&#xA;&#xA;Невероятный жар двигателей грузового судна запускает реакцию в этом фильтре из натриевой соли, которая окрашивает выхлопные газы в яркий золотой цвет.&#xA;&#xA;Поменяйте внешний вид вашего грузового судна с помощью &lt;TECHNOLOGY&gt;терминала управления улучшениями&lt;&gt; на &lt;VAL_ON&gt;мостике&lt;&gt;.
                                { "Russian", "Эксклюзивное &lt;STELLAR&gt;пламя двигателей грузового судна&lt;&gt;.&#xA;&#xA;Невероятный жар двигателей грузового судна запускает реакцию в этом фильтре из натриевой соли, которая окрашивает выхлопные газы в яркий золотой цвет.&#xA;&#xA;Поменяйте внешний вид вашего грузового судна с помощью &lt;TECHNOLOGY&gt;терминала управления улучшениями&lt;&gt; на &lt;VAL_ON&gt;мостике&lt;&gt;." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FREI_TRAIL_PUR_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Эксклюзивный &lt;STELLAR&gt;модификатор факелов двигателей грузового судна&lt;&gt;.&#xA;&#xA;Жар двигателей активирует сеть компактных ускорителей частиц, которая украшает выхлопные газы темным следом из антиматерии.&#xA;&#xA;Поменяйте внешний вид вашего грузового судна с помощью &lt;TECHNOLOGY&gt;терминала управления улучшениями&lt;&gt; на &lt;VAL_ON&gt;мостике&lt;&gt;.
                                { "Russian", "Эксклюзивное &lt;STELLAR&gt;пламя двигателей грузового судна&lt;&gt;.&#xA;&#xA;Жар двигателей активирует сеть компактных ускорителей частиц, которая украшает выхлопные газы темным следом из антиматерии.&#xA;&#xA;Поменяйте внешний вид вашего грузового судна с помощью &lt;TECHNOLOGY&gt;терминала управления улучшениями&lt;&gt; на &lt;VAL_ON&gt;мостике&lt;&gt;." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FREI_TRAIL_TUR_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Эксклюзивный &lt;STELLAR&gt;модификатор факелов двигателей грузового судна&lt;&gt;.&#xA;&#xA;Эта модификация двигателя органически изменяет цвет выхлопных газов грузового судна на яркий бирюзовый с помощью биолюминесцентных подводных созданий.&#xA;&#xA;Поменяйте внешний вид вашего грузового судна с помощью &lt;TECHNOLOGY&gt;терминала управления улучшениями&lt;&gt; на &lt;VAL_ON&gt;мостике&lt;&gt;.
                                { "Russian", "Эксклюзивное &lt;STELLAR&gt;пламя двигателей грузового судна&lt;&gt;.&#xA;&#xA;Эта модификация двигателя органически изменяет цвет выхлопных газов грузового судна на яркий бирюзовый с помощью биолюминесцентных подводных созданий.&#xA;&#xA;Поменяйте внешний вид вашего грузового судна с помощью &lt;TECHNOLOGY&gt;терминала управления улучшениями&lt;&gt; на &lt;VAL_ON&gt;мостике&lt;&gt;." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FREI_TRAIL_01_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Эксклюзивный &lt;STELLAR&gt;модификатор факелов двигателей грузового судна&lt;&gt;.&#xA;&#xA;Высокоэнергетические выхлопные газы быстро конденсируются, когда покидают огромные двигатели грузового судна, превращаясь в микро-сингулярности.&#xA;&#xA;Поменяйте внешний вид вашего грузового судна с помощью &lt;TECHNOLOGY&gt;терминала управления улучшениями&lt;&gt; на &lt;VAL_ON&gt;мостике&lt;&gt;.
                                { "Russian", "Эксклюзивное &lt;STELLAR&gt;пламя двигателей грузового судна&lt;&gt;.&#xA;&#xA;Высокоэнергетические выхлопные газы быстро конденсируются, когда покидают огромные двигатели грузового судна, превращаясь в микро-сингулярности.&#xA;&#xA;Поменяйте внешний вид вашего грузового судна с помощью &lt;TECHNOLOGY&gt;терминала управления улучшениями&lt;&gt; на &lt;VAL_ON&gt;мостике&lt;&gt;." },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_POI_BIOFRIG_HINT_FLEET_FULL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Ваш флот фрегатов &lt;FUEL&gt;заполнен&lt;&gt;.&#xA;&lt;SPECIAL&gt;Космическая мегафауна&lt;&gt; не выйдет на связь.&#xA;Освободите место с помощью терминала &lt;TECHNOLOGY&gt;управления флотом&lt;&gt;, расположенного на мостике грузового судна.
                                -- Your frigate fleet is currently &lt;FUEL&gt;full&lt;&gt;&#xA;&lt;SPECIAL&gt;Cosmic megafauna&lt;&gt; will not make contact&#xA;Dismiss frigates from the &lt;TECHNOLOGY&gt;Fleet Management&lt;&gt; terminal on your freighter bridge
                                { "Russian", "Ваш флот фрегатов &lt;FUEL&gt;заполнен&lt;&gt;&#xA;&lt;SPECIAL&gt;Космическая мегафауна&lt;&gt; не выйдет на связь&#xA;Из терминала &lt;TECHNOLOGY&gt;управления флотом&lt;&gt; на мостике&#xA;можно увольнять фрегаты" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PULSE_ENCOUNTER_MSG_BIOFRIG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- В квадранте обнаружена &lt;SPECIAL&gt;космическая мегафауна&lt;&gt;.&#xA;Снизьте скорость, чтобы ее изучить.
                                -- &lt;SPECIAL&gt;Cosmic Megafauna&lt;&gt; detected in local space&#xA;Slow down to examine the creature
                                { "Russian", "В квадранте обнаружена &lt;SPECIAL&gt;космическая мегафауна&lt;&gt;&#xA;Снизьте скорость, чтобы ее изучить" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CIV_POD_POI_ALERT_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- В квадранте обнаружено &lt;SPECIAL&gt;эхо сигнала выжившего&lt;&gt;.&#xA;Сбросьте скорость, чтобы перехватить судно.
                                -- &lt;SPECIAL&gt;Survivor signal echo&lt;&gt; detected in local space&#xA;Slow down to intercept the vessel
                                { "Russian", "В квадранте обнаружено &lt;SPECIAL&gt;эхо сигнала выжившего&lt;&gt;&#xA;Сбросьте скорость, чтобы перехватить судно" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TELEPORT_FRIGATE_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Фрегат &lt;STELLAR&gt;%FRIG_NAME%&lt;&gt; критически поврежден.&#xA;Подлетите к фрегату и пристыкуйтесь, чтобы начать ремонт.&#xA;Также вы можете &lt;TECHNOLOGY&gt;телепортироваться&lt;&gt; на любой фрегат с помощью &lt;TECHNOLOGY&gt;терминала управления флотом&lt;&gt;.
                                { "Russian", "Фрегат &lt;STELLAR&gt;%FRIG_NAME%&lt;&gt; критически поврежден&#xA;Подлетите к фрегату и пристыкуйтесь, чтобы начать ремонт&#xA;Также вы можете &lt;TECHNOLOGY&gt;телепортироваться&lt;&gt; на любой фрегат&#xA;с помощью &lt;TECHNOLOGY&gt;терминала управления флотом&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TELEPORT_FRIGATE_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вернитесь на свой корабль, чтобы покинуть фрегат.&#xA;Также вы можете переместиться на свое грузовое судно с помощью &lt;TECHNOLOGY&gt;телепорта фрегата&lt;&gt;.
                                { "Russian", "Вернитесь на свой корабль, чтобы покинуть фрегат&#xA;Также вы можете переместиться на свое грузовое судно&#xA;с помощью &lt;TECHNOLOGY&gt;телепорта фрегата&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_POI_BIOFRIG_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Неподалеку обнаружена &lt;SPECIAL&gt;космическая мегафауна&lt;&gt;.&#xA;Приблизьтесь к форме жизни, чтобы вступить в контакт.
                                { "Russian", "Неподалеку обнаружена &lt;SPECIAL&gt;космическая мегафауна&lt;&gt;&#xA;Приблизьтесь к форме жизни, чтобы вступить в контакт" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_POI_BIOFRIG_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- На канале связи обнаружена китовая песня.&#xA;Чтобы ответить, нажмите &lt;IMG&gt;QUICK_MENU&lt;&gt;.
                                -- Whalesong detected on hailing frequency&#xA;Answer the Communicator by pressing &lt;IMG&gt;QUICK_MENU&lt;&gt;
                                { "Russian", "Пойман сигнал &lt;STELLAR&gt;песни кита&lt;&gt;&#xA;Ответьте по коммуникатору, нажав &lt;IMG&gt;QUICK_MENU&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ALIEN_INV_TOKEN_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Складской мешок для разумных судов
                                -- Sentient Vessel Storage Sac
                                { "Russian", "Мешок-хранилище разумного корабля" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MISSIONS_SPEC_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поверх. знакомство
                                -- Initiate
                                { "Russian", "Посвященный" },
                            }
                        },
                        -- в идеале "Благородный", но это не влезает в других местах
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MISSIONS_SPEC_9" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Прославленный
                                -- Exalted
                                { "Russian", "Благородный" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_REWARD_WORDS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Слова (&lt;COMMODITY&gt;%RACE%):&lt;&gt; %NUM%
                                -- &lt;COMMODITY&gt;%RACE% words&lt;&gt; x %NUM%
                                { "Russian", "&lt;COMMODITY&gt;Слова %RACE%ов&lt;&gt; × %NUM%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BIOFRIG_FEED" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КОРМИТЬ СУДНО
                                -- FEED VESSEL
                                { "Russian", "ПОКОРМИТЬ СУДНО" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BIOFRIG_FEED_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Переваривайте и перераспределяйте параметры
                                -- Digest and redistribute stats
                                { "Russian", "Перераспределение параметров" },
                            }
                        },
                        --
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NANITES_EVER_TITLE_10" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Зерна реальности
                                -- Reality Grains
                                { "Russian", "Зёрна реальности" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PROC_PRODS_TITLE_10" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Все, что блестит
                                -- All that Glitters
                                { "Russian", "Всё, что блестит" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DISC_FLORA_TITLE_10" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Зеленая орда
                                -- Verdant Horde
                                { "Russian", "Зелёная орда" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PLANTS_SPEC_10" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Рожденный от почвы
                                -- Born of Soil
                                { "Russian", "Рождённый от почвы" },
                            }
                        },

                        --#region возможно баг и исправят когда-нибудь
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_FRE_CORR_A_STR_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПРЯМОЙ
                                -- STRAIGHT
                                { "Russian", "ПРЯМОЙ КОРИДОР" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_FRE_CORR_A_STR_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Прямой
                                -- Straight
                                { "Russian", "Прямой коридор" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_FRE_CORR_A_L_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Г-ОБР. ПЕРЕКРЕСТОК
                                -- L-JUNCTION
                                { "Russian", "Г-ОБРАЗНЫЙ ПЕРЕКРЕСТОК" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_FRE_CORR_A_L_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Г-обр. перекресток
                                -- L-Junction
                                { "Russian", "Г-образный перекресток" },
                            }
                        },
                        --#endregion

                        --#region ГРУЗОВОЙ КОРАБЛЬ -> ГРУЗОВОЕ СУДНО
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PORTAL_CAT_TECH_FRE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Грузовой корабль
                                { "Russian", "Грузовое судно" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PORTAL_CAT_TECH_FRE_U" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ГРУЗОВОЙ КОРАБЛЬ
                                { "Russian", "ГРУЗОВОЕ СУДНО" },
                            }
                        },
                        --#endregion

                        --#region перенесено из Farscape 20.09.2024
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JOURNEY_NEXT_SOLS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- пережито минут на опасных планетах
                                -- minutes survived on extreme worlds
                                { "Russian", "минут в экстремальных условиях" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENTINEL_LOOT_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Полученные компоненты стража
                                -- Recovered Sentinel Components
                                { "Russian", "Уцелевшие компоненты стража" },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UP_TECH_SENT_ADJ_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Эрон.
                                -- Aeronic
                                { "Russian", "Аэро" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BOUNTY_NAMED_LABEL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %NAME% (награда: %AMOUNT%&lt;IMG&gt;ЮН.&lt;&gt;)
                                -- %NAME% (%AMOUNT%&lt;IMG&gt;UNITS&lt;&gt; reward)
                                { "Russian", "%NAME% &lt;IMG&gt;UNITSMALL&lt;&gt;%AMOUNT%" },
                            }
                        },
                        -- косяк со знаком валюты
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_LAUNCH_LOCKER_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Продать загруженные объекты за &lt;STELLAR&gt;%PRICE%&lt;IMG&gt;ЮН.&lt;&gt;&lt;&gt;
                                -- Sell loaded items for &lt;STELLAR&gt;%PRICE%&lt;IMG&gt;UNITS&lt;&gt;&lt;&gt;
                                { "Russian", "Продать за &lt;STELLAR&gt;&lt;IMG&gt;UNITSMALL&lt;&gt;%PRICE%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_LAUNCH_LOCKER_SUB_ERR" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Нет загруженных объектов
                                -- No items loaded
                                { "Russian", "Нет предметов для продажи" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SUIT_ROCKET_INTRCT_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Загрузить предметы для автоматической торговли
                                -- Load Items for Auto-Trade
                                { "Russian", "Открыть грузовой отсек" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SUIT_ROCKET_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Устройство призыва торговых ракет
                                -- Mercantile Missile Summoning Device
                                { "Russian", "Пульт управления от торговой ракеты" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SUIT_ROCKET_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Личный ракетный транспорт, напрямую подключенный к &lt;TECHNOLOGY&gt;Галактической торговой сети&lt;&gt;. Позволяет пользователю грузить товары на борт. После запуска груз будет перевезен к ближайшему торговому терминалу и &lt;STELLAR&gt;автоматически продан&lt;&gt;.&#xA;&#xA;&lt;STELLAR&gt;Призовите&lt;&gt; торговую ракету с помощью &lt;IMG&gt;QUICK_MENU&lt;&gt;.
                                -- A personal rocketry device with a direct link to the &lt;TECHNOLOGY&gt;Galactic Trade Network&lt;&gt;. This unit allows the user to load a small spacecraft with goods. Upon launch, the goods will be transported to the nearest trade terminus and &lt;STELLAR&gt;automatically sold&lt;&gt;.&#xA;&#xA;&lt;STELLAR&gt;Summon&lt;&gt; the Trade Rocket using the &lt;IMG&gt;QUICK_MENU&lt;&gt;.
                                { "Russian", "Персональная ракета, напрямую подключенная к &lt;TECHNOLOGY&gt;галактической торговой сети&lt;&gt;. На борту имеется небольшой грузовой отсек для товаров. После запуска груз будет доставлен к ближайшему торговому терминалу и &lt;STELLAR&gt;автоматически продан&lt;&gt;.&#xA;&#xA;Откройте быстрое меню с помощью &lt;IMG&gt;QUICK_MENU&lt;&gt;, чтобы &lt;STELLAR&gt;вызвать&lt;&gt; торговую ракету." },
                            }
                        },
                        --
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DROPPOD_FIX_OBJ" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Отремонтировать поврежденную капсулу
                                -- Repair the damaged drop pod
                                { "Russian", "Почините поврежденную капсулу" },
                            }
                        },
                        -- в игре реализован _электрический_ парус, который построен на другом принципе, чем солнечный
                        -- упоминать про солнечный парус было лишним, имхо
                        -- однако, не все игроки знают, что кроме солнечного паруса, есть и другие...
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SOLAR_SAIL_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Солнечный парус&lt;&gt; с высоким КПД. Автоматически разворачивается во время полета. Эта продвинутая &lt;TECHNOLOGY&gt;двигательная установка&lt;&gt; создает электрическое поле внутри себя, позволяя звездолету набирать скорость за счет солнечного ветра.&#xA;&#xA;Значительно повышает &lt;STELLAR&gt;топливную эффективность&lt;&gt;, &lt;STELLAR&gt;улучшает&lt;&gt; производительность по сравнению с обычными двигателями, а также позволяет фотовольтически &lt;STELLAR&gt;перезаряжать&lt;&gt; &lt;TECHNOLOGY&gt;системы запуска&lt;&gt; звездолета.
                                -- A high-performance &lt;STELLAR&gt;solar sail&lt;&gt;, deployed automatically during flight. This advanced &lt;TECHNOLOGY&gt;propulsion device&lt;&gt; generates an electric field within the sails themselves, allowing the starship to build momentum from the solar wind.&#xA;&#xA;Offers substantial gains in &lt;STELLAR&gt;fuel efficiency&lt;&gt; and &lt;STELLAR&gt;boost&lt;&gt; performance over conventional engine systems, as well as enabling photovoltaic &lt;STELLAR&gt;recharge&lt;&gt; of the starship's &lt;TECHNOLOGY&gt;launch systems&lt;&gt;.
                                { "Russian", "Высокопроизводительный &lt;TECHNOLOGY&gt;движитель&lt;&gt; создает внутри паруса электрическое поле, которое преобразует энергию солнечного ветра в энергию поступательного движения. &lt;STELLAR&gt;Парус&lt;&gt; автоматически раскрывается во время полета.&#xA;&#xA;&lt;STELLAR&gt;Топливная эффективность&lt;&gt; и &lt;STELLAR&gt;ускорение&lt;&gt; намного выше по сравнению с обычными двигателями, а фотоэлементы подзаряжают &lt;TECHNOLOGY&gt;взлетную систему&lt;&gt; звездолёта." },
                            }
                        },

                        --#region Трейты фрегатов
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DEEP_SPACE_TRAIT_TRADING_4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Рыночный прогноз
                                -- Market Foresight
                                { "Russian", "Прогнозирование рынка" },
                            }
                        },
                        --#endregion

                        --#region чтобы закрепить точку на экране экзокостюма
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_STARCHART_SETTLE_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Карта, на которой отмечено местоположение ближайшего планетарного поселения. Получена у &lt;STELLAR&gt;картографа космической станции&lt;&gt;.&#xA;&#xA;Выберите карту и &lt;VAL_ON&gt;проложите маршрут (&lt;IMG&gt;FE_ALT1&lt;&gt;)&lt;&gt;, чтобы закрепить точку на экране экзокостюма.
                                -- A map showing the location of a nearby planetary settlement, acquired from the &lt;STELLAR&gt;Space Station Cartographer&lt;&gt;.&#xA;&#xA;Select the map and use &lt;VAL_ON&gt;Plot Route (&lt;IMG&gt;FE_ALT1&lt;&gt;)&lt;&gt; to pin the location in your Exosuit display.
                                { "Russian", "Карта местоположения ближайшего планетарного поселения. Получена у &lt;TRADEABLE&gt;картографа&lt;&gt; на &lt;COMMODITY&gt;космической станции﻿.&lt;&gt;&#xA;&#xA;Выберите карту и &lt;VAL_ON&gt;проложите маршрут (&lt;IMG&gt;FE_ALT1&lt;&gt;)&lt;&gt;, чтобы вывести на экран экзокостюма местоположение поселения." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_STARCHART_HIVE_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Странная, изменчивая карта. На ней сложно сконцентрироваться, но, судя по всему, здесь указано местоположение ближайшего &lt;SPECIAL&gt;столпа стражей&lt;&gt;. В этих твердынях стражей хранится немало секретной информации...&#xA;&#xA;Выберите карту и &lt;VAL_ON&gt;проложите маршрут (&lt;IMG&gt;FE_ALT1&lt;&gt;)&lt;&gt;, чтобы закрепить точку на экране экзокостюма.
                                -- A strange, shifting map. Though hard to focus upon, this chart appears to show the location of a nearby &lt;SPECIAL&gt;Sentinel Pillar&lt;&gt;. Such Sentinel strongholds house many secrets...&#xA;&#xA;Select the map and use &lt;VAL_ON&gt;Plot Route (&lt;IMG&gt;FE_ALT1&lt;&gt;)&lt;&gt; to pin the location in your Exosuit display.
                                { "Russian", "Странная, изменчивая карта. На ней сложно сконцентрироваться, но, судя по всему, здесь указано местоположение ближайшего &lt;SPECIAL&gt;столпа стражей&lt;&gt;. В этих твердынях стражей хранится немало секретов...&#xA;&#xA;Выберите карту и &lt;VAL_ON&gt;проложите маршрут (&lt;IMG&gt;FE_ALT1&lt;&gt;)&lt;&gt;, чтобы вывести на экран экзокостюма местоположение объекта." },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CRAFT_TREE_BUTTON" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПОСМОТРЕТЬ ШАГИ СОЗДАНИЯ
                                -- VIEW CRAFT STEPS
                                { "Russian", "ПОКАЗАТЬ ЭТАПЫ ИЗГОТОВЛЕНИЯ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CRAFT_TREE_BUTTON_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Показать инструкцию по созданию
                                -- Visualise full crafting instructions
                                { "Russian", "Отобразить полную схему изготовления" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CRAFT_TREE_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Шаги сборки объекта
                                -- Item Assembly Steps
                                { "Russian", "Этапы изготовления предмета" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DRONEHIVE_LOCATED" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;FUEL&gt;Обнаружено гнездо стражей&lt;&gt;&#xA;Нападите на гнездо, чтобы на время отключить планетарных стражей.
                                -- &lt;FUEL&gt;Sentinel Nest Revealed&lt;&gt;&#xA;Raid the nest to temporarily disable planetary Sentinels
                                { "Russian", "&lt;FUEL&gt;Раскрыто местоположение гнезда стражей&lt;&gt;&#xA;Нападите на гнездо и отключите планетарных стражей" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DRONEHIVE_DISABLED_LOCATED" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;FUEL&gt;Обнаружено гнездо стражей&lt;&gt;&#xA;Нападите на гнездо, чтобы украсть &lt;SPECIAL&gt;секретную информацию&lt;&gt; и &lt;TECHNOLOGY&gt;технологию мультитула&lt;&gt;.
                                -- &lt;FUEL&gt;Sentinel Nest Revealed&lt;&gt;&#xA;Raid the nest to steal &lt;SPECIAL&gt;secrets&lt;&gt; and &lt;TECHNOLOGY&gt;Multi-Tool technology&lt;&gt;
                                { "Russian", "&lt;FUEL&gt;Раскрыто местоположение гнезда стражей&lt;&gt;&#xA;Украдите из гнезда &lt;SPECIAL&gt;секретную информацию&lt;&gt;&#xA;и &lt;TECHNOLOGY&gt;технологию для мультитула&lt;&gt;" },
                            }
                        },

                        --#region русские буквы в именах тегов
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_POI_BIOFRIG_SEARCH_DONE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Приемник снов&lt;&gt; завершил свое путешествие.&#xA;Удерживайте &lt;IMG&gt;ВЫБРОСИТЬ&lt;&gt; на предметах в инвентаре, чтобы удалить их.&#xA;Органический фрегат можно найти в открытом космосе в любой системе.&#xA;Воспользуйтесь &lt;TECHNOLOGY&gt;детектором аномалий&lt;&gt;, чтобы находить аномалии в открытом космосе.
                                -- The &lt;SPECIAL&gt;Dream Aerial&lt;&gt; has completed its voyage&#xA;Hold &lt;IMG&gt;DISCARD&lt;&gt; on items in the Inventory to discard&#xA;An organic frigate can be found in the deep space of every system&#xA;Use an &lt;TECHNOLOGY&gt;Anomaly Detector&lt;&gt; to pinpoint deep space anomalies
                                { "Russian", "&lt;SPECIAL&gt;Приемник снов&lt;&gt; завершил свое путешествие&#xA;Удерживайте &lt;IMG&gt;DISCARD&lt;&gt; на предметах в инвентаре, чтобы удалить их&#xA;Органический фрегат можно найти в открытом космосе в любой системе&#xA;Воспользуйтесь &lt;TECHNOLOGY&gt;детектором аномалий&lt;&gt;, чтобы находить аномалии в открытом космосе" },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TIP_FR_ENGINE_RED" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Багров.
                                -- Crimson
                                { "Russian", "Багровый" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SQUADRON_OPT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Управлять эскадрильей
                                -- Manage Squadron
                                { "Russian", "Управление эскадрильей" },
                            }
                        },

                        --#region Истории "Нарушение границы"
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PORTAL_GLITCH_TITLE_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Противостраж.
                                -- Sentinel
                                { "Russian", "Страж" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PORTAL_GLITCH_TITLE_4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вай'кинск.
                                -- Vy'keen
                                { "Russian", "Вай'кин" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PORTAL_GLITCH_TITLE_8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Солгать
                                -- Lie
                                { "Russian", "Ложь" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PORTAL_GLITCH_TITLE_12" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Смерти
                                -- Death
                                { "Russian", "Смерть" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PORTAL_GLITCH_TITLE_22" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Энерг.
                                -- Energy
                                { "Russian", "Энергия" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PORTAL_GLITCH_TITLE_25" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Водяной
                                -- Water
                                { "Russian", "Вода" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PORTAL_GLITCH_TITLE_26" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Заброшен.
                                -- Abandoned
                                { "Russian", "Покинутый" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PORTAL_GLITCH_TITLE_29" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- тишины
                                -- Silence
                                { "Russian", "Тишина" },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_OPTIONS_DIFFICULTY_BAN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- В настоящее время невозможно изменить сложность
                                -- Cannot change difficulty at this time
                                { "Russian", "Сейчас невозможно изменить сложность" },
                            }
                        },
                        { -- не более 28 букв желательно
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NEW_SHIP_SLOT_ALIEN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вырастить дополнительные складские мешки
                                -- Spawn additional storage sacs
                                { "Russian", "Вырастить мешки-хранилища" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ADD_SLOT_ALIEN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ВЫРАСТИТЬ ДОПОЛНИТЕЛЬНЫЙ МЕШОК
                                -- SPAWN ADDITIONAL SAC
                                { "Russian", "Вырастить мешок" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "DECLINE_ALIEN_SLOT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ЗАДЕРЖАТЬ РОСТ
                                -- DELAY GROWTH
                                { "Russian", "Отложить рост" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ROGUE_TIME_DUST_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПРАХ ГРЕЗ
                                -- SOMNAL DUST
                                { "Russian", "ПРАХ ГРЁЗ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ROGUE_TIME_DUST_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Прах грез
                                -- Somnal Dust
                                { "Russian", "Прах грёз" },
                            }
                        },
                        -- Каталог -> Кулинарные рецепты -> заголовок рецепта
                        -- Либо это баг, либо хз - выглядит отвратительно
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "R_NAME_FORMAT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- РЕЦЕПТ: %NAME%
                                -- RECIPE: %NAME%
                                { "Russian", "%NAME%" },
                            }
                        },
                        -- на центральном экране в битве со стражами, ожидание подкрепления
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_POLICE_SCAN_HUD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сканирование властями системы
                                -- System Authority Scan
                                { "Russian", "СКАНИРОВАНИЕ ВЛАСТЯМИ СИСТЕМЫ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_POLICE_SCAN_HUD_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Наведение на стражей
                                -- Sentinel Target Lock In Progress
                                { "Russian", "ОБНАРУЖЕНИЕ ЦЕЛИ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_POLICE_SCAN_CARGO_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поиск контрабанды
                                -- Contraband Probe In Progress
                                { "Russian", "ПОИСК КОНТРАБАНДЫ" },
                            }
                        },
                        -- то что это грузовое судно и так ясно
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FREIGHTER_BUY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Забрать грузовое судно
                                -- Claim Freighter
                                { "Russian", "Забрать судно" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CRAFT_ERROR_NEVER_CRAFTED" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Предмет не создавался &lt;IMG&gt;SLASH&lt;&gt; Закрепите, чтобы найти предмет
                                -- Item is Never Crafted &lt;IMG&gt;SLASH&lt;&gt; Pin to Locate Item
                                { "Russian", "Предмет невозможно изготовить &lt;IMG&gt;SLASH&lt;&gt; Закрепите, чтобы найти предмет" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WORMSPAWNER_LABEL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Нора Титанического червя
                                -- Titan Worm Burrow
                                { "Russian", "Нора титанического червя" },
                            }
                        },

                        --#region %INPUT%
                        -- описание кнопок внизу на экране строительства (в грузовом судне)
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BUILD_TIP_SELECT_PART" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Выбрать деталь: %INPUT%
                                -- Select Part %INPUT%
                                { "Russian", "%INPUT% Выбрать деталь " },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BUILD_TIP_NEW_SELECT_MODE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Редактировать размещенные детали: %INPUT%
                                -- Edit Placed Parts %INPUT%
                                { "Russian", "%INPUT% Изменить размещенные детали " },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BUILD_TIP_NAV_BACK" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Закрыть меню: %INPUT%
                                { "Russian", "%INPUT% Закрыть меню" },
                            }
                        },
                        --#endregion

                        { -- подзаголовок миссии
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DROPPOD_FIX_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Отремонтируйте капсулы, чтобы разблокировать ячейки инвентаря.
                                -- Repair drop pods to unlock inventory slots
                                { "Russian", "Отремонтируйте капсулу" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DROPPOD_FIX_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Планетарные капсулы содержат в себе терминалы для улучшения экзокостюма. Отремонтируйте капсулу, чтобы получить &lt;STELLAR&gt;бесплатное улучшение инвентаря экзокостюма&lt;&gt;.&#xA;&lt;COMMODITY&gt;Закрепите&lt;&gt; нужные компоненты на экране ремонта, чтобы получить &lt;TECHNOLOGY&gt;подробные инструкции&lt;&gt;.&#xA;&#xA;Найдите предмет %ITEM1%, чтобы отремонтировать %TARGET1%: %CURRENT1%/%AMOUNT1%&#xA;Найдите предмет %ITEM2%, чтобы отремонтировать %TARGET2%: %CURRENT2%/%AMOUNT2%&#xA;Найдите предмет %ITEM3%, чтобы отремонтировать %TARGET3%: %CURRENT3%/%AMOUNT3%
                                -- Planetary drop pods contain Exosuit upgrade terminals. Repair the damage to claim a &lt;STELLAR&gt;free Exosuit inventory upgrade&lt;&gt;.&#xA;&lt;COMMODITY&gt;Pin&lt;&gt; specific components from the repair screen for &lt;TECHNOLOGY&gt;detailed instructions&lt;&gt;.&#xA;&#xA;Acquire %ITEM1% to repair the %TARGET1%: %CURRENT1%/%AMOUNT1%&#xA;Acquire %ITEM2% to repair the %TARGET2%: %CURRENT2%/%AMOUNT2%&#xA;Acquire  %ITEM3% to repair the %TARGET3%: %CURRENT3%/%AMOUNT3%
                                { "Russian", "Планетарные капсулы содержат в себе терминалы для улучшения экзокостюма. Отремонтируйте капсулу, чтобы получить &lt;STELLAR&gt;бесплатное улучшение инвентаря экзокостюма.&lt;&gt;&#xA;&lt;COMMODITY&gt;Закрепляйте&lt;&gt; компоненты на экране ремонта, чтобы получить &lt;TECHNOLOGY&gt;подробные инструкции.&lt;&gt;&#xA;&#xA;Найдите %ITEM1% (%CURRENT1%/%AMOUNT1%),, чтобы починить %TARGET1%&#xA;Найдите %ITEM2% (%CURRENT2%/%AMOUNT2%), чтобы починить %TARGET2%&#xA;Найдите %ITEM3% (%CURRENT3%/%AMOUNT3%), чтобы починить %TARGET3%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_POLICE_HAIL_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;SLASH&lt;&gt; Обнаружено зондирование груза службой охраны станции! &lt;IMG&gt;SLASH&lt;&gt;
                                -- &lt;IMG&gt;SLASH&lt;&gt; Station Authority Cargo Probe Detected! &lt;IMG&gt;SLASH&lt;&gt;
                                { "Russian", "Служба охраны станции проводит досмотр груза" },
                            }
                        },

                        --#region UI_PIRATECLUE.*_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIRATECLUE_POI_ALERT_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- В квадранте обнаружен &lt;SPECIAL&gt;аварийный сигнал&lt;&gt;.&#xA;Замедлитесь, чтобы перехватить отправителя.
                                -- &lt;SPECIAL&gt;Emergency Broadcast&lt;&gt; detected in local space&#xA;Slow down to intercept the sender
                                { "Russian", "В квадранте обнаружено &lt;SPECIAL&gt;вещание на аварийной частоте&lt;&gt;&#xA;Замедлитесь, чтобы изучить источник сигнала" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIRATECLUE_POI_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- На канале связи обнаружен &lt;STELLAR&gt;аварийный сигнал&lt;&gt;.&#xA;Чтобы &lt;TECHNOLOGY&gt;ответить&lt;&gt;, нажмите &lt;IMG&gt;QUICK_MENU&lt;&gt;.
                                -- &lt;STELLAR&gt;Emergency broadcast&lt;&gt; detected on hailing frequency&#xA;Answer the &lt;TECHNOLOGY&gt;Communicator&lt;&gt; by pressing &lt;IMG&gt;QUICK_MENU&lt;&gt;
                                { "Russian", "Пойман &lt;STELLAR&gt;аварийный сигнал&lt;&gt;&#xA;Ответьте по &lt;TECHNOLOGY&gt;коммуникатору&lt;&gt; с помощью &lt;IMG&gt;QUICK_MENU&lt;&gt;" },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SPACE_FOLLOW_HOLD_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Удерживайте &lt;IMG&gt;AUTOFOLLOW&lt;&gt;, чтобы захватить цель и преследовать ее
                                -- Hold &lt;IMG&gt;AUTOFOLLOW&lt;&gt; to lock on and chase your target
                                { "Russian", "Захват цели — удерживайте &lt;IMG&gt;AUTOFOLLOW&lt;&gt;" },
                            }
                        },

                        --#region UI_SMUGGLING_.*_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SMUGGLING_HINT_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Получены &lt;SPECIAL&gt;товары с черного рынка&lt;&gt;.&#xA;Продайте их в &lt;TECHNOLOGY&gt;обычных&lt;&gt; системах.&#xA;Контрабанда может принести &lt;TRADEABLE&gt;большую прибыль&lt;&gt;.
                                -- &lt;SPECIAL&gt;Black market&lt;&gt; goods acquired&#xA;Sell black market goods in &lt;TECHNOLOGY&gt;regular&lt;&gt; systems&#xA;Smuggling can be &lt;TRADEABLE&gt;highly profitable&lt;&gt;
                                { "Russian", "Получены &lt;SPECIAL&gt;товары с черного рынка&lt;&gt;&#xA;Продавайте их в &lt;TECHNOLOGY&gt;обычных&lt;&gt; системах&#xA;Контрабанда может принести &lt;TRADEABLE&gt;большую прибыль&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SMUGGLING_HINT_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Получены &lt;SPECIAL&gt;товары с черного рынка&lt;&gt;.&#xA;Доберитесь до &lt;TECHNOLOGY&gt;торгового терминала&lt;&gt;, чтобы сбыть провезенные товары.&#xA;&lt;FUEL&gt;Внимание&lt;&gt;: власти системы могут проверить ваш груз на предмет контрабанды.
                                -- &lt;SPECIAL&gt;Black market&lt;&gt; goods acquired&#xA;Reach a &lt;TECHNOLOGY&gt;Trade Terminal&lt;&gt; to offload smuggled items&#xA;&lt;FUEL&gt;Caution&lt;&gt;: System authorities may probe cargo for contraband
                                { "Russian", "Получены &lt;SPECIAL&gt;товары с черного рынка&lt;&gt;&#xA;Найдите &lt;TECHNOLOGY&gt;торговый терминал&lt;&gt; и продайте их&#xA;&lt;FUEL&gt;Внимание&lt;&gt;: власти системы могут проверить ваш груз" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SMUGGLING_HINT_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Получены &lt;SPECIAL&gt;товары с черного рынка&lt;&gt;.&#xA;Вы &lt;TRADEABLE&gt;успешно избежали&lt;&gt; сканирования груза властями!&#xA;Доберитесь до &lt;TECHNOLOGY&gt;торгового терминала&lt;&gt;, чтобы сбыть провезенные товары.
                                -- &lt;SPECIAL&gt;Black market&lt;&gt; goods acquired&#xA;System authority cargo probe &lt;TRADEABLE&gt;successfully evaded&lt;&gt;!&#xA;Reach a &lt;TECHNOLOGY&gt;Trade Terminal&lt;&gt; to offload smuggled items
                                { "Russian", "Получены &lt;SPECIAL&gt;товары с черного рынка&lt;&gt;&#xA;Вы &lt;TRADEABLE&gt;успешно избежали&lt;&gt; проверки груза!&#xA;Найдите &lt;TECHNOLOGY&gt;торговый терминал&lt;&gt; и продайте товары" },
                            }
                        },
                        --#endregion

                        --#region UI_FIX_FREIGHTER_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FIX_FREIGHTER_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;FUEL&gt;Внимание&lt;&gt;: работа системы жизнеобеспечения нарушена.&#xA;Отремонтируйте критически важные подсистемы грузового судна&#xA;%REPAIR%.&#xA;Чтобы получить указания по ремонту, &lt;COMMODITY&gt;закрепите&lt;&gt; (&lt;IMG&gt;PIN&lt;&gt;) компоненты.
                                -- &lt;FUEL&gt;Warning&lt;&gt;: Life support compromised&#xA;Repair critical freighter sub-systems&#xA;%REPAIR%&#xA;Obtain guidance by &lt;COMMODITY&gt;pinning&lt;&gt; (&lt;IMG&gt;PIN&lt;&gt;) components
                                { "Russian", "&lt;FUEL&gt;Внимание!&lt;&gt; Работа системы жизнеобеспечения нарушена&#xA;Отремонтируйте критически важные подсистемы грузового судна&#xA;%REPAIR%&#xA;Инструкции по ремонту компонентов можно &lt;COMMODITY&gt;закрепить&lt;&gt; (&lt;IMG&gt;PIN&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FIX_FREIGHTER_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;FUEL&gt;Внимание&lt;&gt;: варп-двигатели критически повреждены.&#xA;Отремонтируйте критически важные подсистемы грузового судна&#xA;%REPAIR%.&#xA;Чтобы получить указания по ремонту, &lt;COMMODITY&gt;закрепите&lt;&gt; (&lt;IMG&gt;PIN&lt;&gt;) компоненты.
                                { "Russian", "&lt;FUEL&gt;Внимание!&lt;&gt; Варп-двигатели критически повреждены&#xA;Отремонтируйте критически важные подсистемы грузового судна&#xA;%REPAIR%&#xA;Инструкции по ремонту компонентов можно &lt;COMMODITY&gt;закрепить&lt;&gt; (&lt;IMG&gt;PIN&lt;&gt;)" },
                            }
                        },
                        --#endregion

                        --#region UI_FIX_FREIGHTER_DESC
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FIX_FREIGHTER_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Отремонтируйте важнейшие системы грузового судна.
                                { "Russian", "Отремонтируйте важнейшие системы грузового судна" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FIX_FREIGHTER_DESC_D" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Важнейшие системы грузового судна восстановлены.
                                { "Russian", "Важнейшие системы грузового судна восстановлены" },
                            }
                        },
                        --#endregion

                        --#region TRADE_FILTER_SEASON
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TRADE_FILTER_SEASON_8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Экспедиция 8
                                { "Russian", "Экспедиция №8" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TRADE_FILTER_SEASON_6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Экспедиция 6
                                { "Russian", "Экспедиция №6" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TRADE_FILTER_SEASON_4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Экспедиция 4
                                { "Russian", "Экспедиция №4" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TRADE_FILTER_SEASON_5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Экспедиция 5
                                { "Russian", "Экспедиция №5" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TRADE_FILTER_SEASON_7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Экспедиция 7
                                { "Russian", "Экспедиция №7" },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PORTAL_CAT_TECH_SHIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Звездолет
                                -- Starship
                                { "Russian", "Звездолёт" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENTINELS_DEPLOY_KILL_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Оставайтесь в этом районе, чтобы сразиться с подкреплениями!&#xA;Оставшееся время: &lt;FUEL&gt;%TIME%сек.&lt;&gt;
                                -- Remain in the area to confront reinforcements!&#xA;Time Remaining: &lt;FUEL&gt;%TIME%s&lt;&gt;
                                { "Russian", "Оставайтесь в этом районе, чтобы сразиться с подкреплениями!&#xA;Оставшееся время: &lt;FUEL&gt;%TIME% с&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FLEET_SQUAD_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Посмотреть флот фрегатов и эскадрилью звездолетов
                                -- View Frigate Fleet and Starship Squadron
                                { "Russian", "Посмотреть флот фрегатов и эскадрилью звездолётов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PERK_BLESSING1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- звездами
                                -- stars
                                { "Russian", "звёздами" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PORTAL_CAT_TECH_SHIP_U" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ЗВЕЗДОЛЕТ
                                -- STARSHIP
                                { "Russian", "ЗВЕЗДОЛЁТ" },
                            }
                        },

                        --#region UI_PIRATE_RAID_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIRATE_RAID_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Расположенное неподалеку строение &lt;TECHNOLOGY&gt;%BUILDING%&lt;&gt; &lt;STELLAR&gt;атаковано&lt;&gt; пиратами!&#xA;Вернитесь на корабль, чтобы присоединиться к обороне.&#xA;Осталось враждебных кораблей: &lt;FUEL&gt;%AMOUNT%&lt;&gt;
                                { "Russian", "Расположенное неподалеку строение &lt;STELLAR&gt;атаковано&lt;&gt; пиратами!&#xA;Вернитесь на корабль, чтобы присоединиться к обороне&#xA;Цель пиратов: &lt;TECHNOLOGY&gt;%BUILDING%&lt;&gt;&#xA;Осталось враждебных кораблей: &lt;FUEL&gt;%AMOUNT%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIRATE_RAID_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Расположенное неподалеку строение &lt;TECHNOLOGY&gt;%BUILDING%&lt;&gt; &lt;STELLAR&gt;атаковано&lt;&gt;.&#xA;Уничтожьте враждебные корабли, чтобы получить &lt;TECHNOLOGY&gt;награды&lt;&gt;.&#xA;Осталось враждебных кораблей: &lt;FUEL&gt;%AMOUNT%&lt;&gt;
                                { "Russian", "Расположенное неподалеку строение &lt;STELLAR&gt;атаковано&lt;&gt;&#xA;Уничтожьте враждебные корабли, чтобы получить &lt;TECHNOLOGY&gt;награды&lt;&gt;&#xA;Цель пиратов: &lt;TECHNOLOGY&gt;%BUILDING%&lt;&gt;&#xA;Осталось враждебных кораблей: &lt;FUEL&gt;%AMOUNT%&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region Разбитые остатки
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TECHBOX_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Разбитые остатки &lt;STELLAR&gt;погибшего Странника&lt;&gt;. Он шепчет неизвестное имя, сохраненное глубоко внутри.&#xA;&#xA;Память воплотится в виде &lt;TECHNOLOGY&gt;важного улучшения технологии&lt;&gt;, которое поможет вам в ваших странствиях.&lt;STELLAR&gt;Впитайте&lt;&gt; эту память с помощью &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;.
                                { "Russian", "Разбитые остатки &lt;STELLAR&gt;погибшего Странника&lt;&gt;. Он шепчет неизвестное имя, сохраненное глубоко внутри.&#xA;&#xA;Память воплотится в виде &lt;TECHNOLOGY&gt;важного улучшения технологии﻿,&lt;&gt; которое поможет вам в ваших странствиях. &lt;STELLAR&gt;Впитайте&lt;&gt; эту память с помощью &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_INVBOX_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Разбитые остатки &lt;STELLAR&gt;погибшего Странника&lt;&gt;. Он шепчет неизвестное имя, сохраненное глубоко внутри.&#xA;&#xA;Память воплотится в виде &lt;TECHNOLOGY&gt;расширения инвентаря&lt;&gt;, которое поможет вам в ваших странствиях.&lt;STELLAR&gt;Впитайте&lt;&gt; эту память с помощью &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;.
                                { "Russian", "Разбитые остатки &lt;STELLAR&gt;погибшего Странника&lt;&gt;. Он шепчет неизвестное имя, сохраненное глубоко внутри.&#xA;&#xA;Память воплотится в виде &lt;TECHNOLOGY&gt;расширения инвентаря﻿,&lt;&gt; которое поможет вам в ваших странствиях. &lt;STELLAR&gt;Впитайте&lt;&gt; эту память с помощью &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ROGUE_TECHBOX_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Разбитые остатки &lt;STELLAR&gt;прошлого существования&lt;&gt;. Он шепчет неизвестное имя, сохраненное глубоко внутри.&#xA;&#xA;Память воплотится в виде &lt;TECHNOLOGY&gt;важного улучшения технологии&lt;&gt;, которое поможет вам в этой итерации. &lt;STELLAR&gt;Поглотите&lt;&gt; эту память с помощью &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;.&#xA;&#xA;&lt;SPECIAL&gt;СМЕРТЬ — НЕ КОНЕЦ&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt; &lt;STELLAR&gt;ПЕТЛЯ ПРОДОЛЖАЕТСЯ&lt;&gt;
                                { "Russian", "Разбитые остатки &lt;STELLAR&gt;прошлого существования&lt;&gt;. Он шепчет неизвестное имя, сохраненное глубоко внутри.&#xA;&#xA;Память воплотится в виде &lt;TECHNOLOGY&gt;важного улучшения технологии﻿,&lt;&gt; которое поможет вам в этой итерации. &lt;STELLAR&gt;Поглотите&lt;&gt; эту память с помощью &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;.&#xA;&#xA;&lt;SPECIAL&gt;СМЕРТЬ — НЕ КОНЕЦ&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt; &lt;STELLAR&gt;ПЕТЛЯ ПРОДОЛЖАЕТСЯ&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ROGUE_INVBOX_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Разбитые остатки &lt;STELLAR&gt;прошлого существования&lt;&gt;. Он шепчет неизвестное имя, сохраненное глубоко внутри.&#xA;&#xA;Память воплотится в виде &lt;TECHNOLOGY&gt;расширения инвентаря&lt;&gt;, которое поможет вам в этой итерации. &lt;STELLAR&gt;Поглотите&lt;&gt; эту память с помощью &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;.&#xA;&#xA;&lt;SPECIAL&gt;СМЕРТЬ — НЕ КОНЕЦ&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt; &lt;STELLAR&gt;ПЕТЛЯ ПРОДОЛЖАЕТСЯ&lt;&gt;
                                { "Russian", "Разбитые остатки &lt;STELLAR&gt;прошлого существования&lt;&gt;. Он шепчет неизвестное имя, сохраненное глубоко внутри.&#xA;&#xA;Память воплотится в виде &lt;TECHNOLOGY&gt;расширения инвентаря﻿,&lt;&gt; которое поможет вам в этой итерации. &lt;STELLAR&gt;Поглотите&lt;&gt; эту память с помощью &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;.&#xA;&#xA;&lt;SPECIAL&gt;СМЕРТЬ — НЕ КОНЕЦ&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt; &lt;STELLAR&gt;ПЕТЛЯ ПРОДОЛЖАЕТСЯ&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ROGUE_CLASSBOX_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Разбитые остатки &lt;STELLAR&gt;прошлого существования&lt;&gt;. Он шепчет неизвестное имя, сохраненное глубоко внутри.&#xA;&#xA;Память воплотится в виде &lt;TECHNOLOGY&gt;улучшения класса корабля или мультитула&lt;&gt;, которое поможет вам в этой итерации. &lt;STELLAR&gt;Поглотите&lt;&gt; эту память с помощью &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;.&#xA;&#xA;&lt;SPECIAL&gt;СМЕРТЬ — НЕ КОНЕЦ&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt; &lt;STELLAR&gt;ПЕТЛЯ ПРОДОЛЖАЕТСЯ&lt;&gt;
                                { "Russian", "Разбитые остатки &lt;STELLAR&gt;прошлого существования&lt;&gt;. Он шепчет неизвестное имя, сохраненное глубоко внутри.&#xA;&#xA;Память воплотится в виде &lt;TECHNOLOGY&gt;улучшения класса корабля или мультитула﻿,&lt;&gt; которое поможет вам в этой итерации. &lt;STELLAR&gt;Поглотите&lt;&gt; эту память с помощью &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;.&#xA;&#xA;&lt;SPECIAL&gt;СМЕРТЬ — НЕ КОНЕЦ&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt; &lt;STELLAR&gt;ПЕТЛЯ ПРОДОЛЖАЕТСЯ&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ROGUE_GUNBOX_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Разбитые остатки &lt;STELLAR&gt;прошлого существования&lt;&gt;. Он шепчет неизвестное имя, сохраненное глубоко внутри.&#xA;&#xA;Память воплотится в виде &lt;TECHNOLOGY&gt;оружия мультитула&lt;&gt;, которое поможет вам в этой итерации. &lt;STELLAR&gt;Поглотите&lt;&gt; эту память с помощью &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;.&#xA;&#xA;&lt;SPECIAL&gt;СМЕРТЬ — НЕ КОНЕЦ&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt; &lt;STELLAR&gt;ПЕТЛЯ ПРОДОЛЖАЕТСЯ&lt;&gt;
                                { "Russian", "Разбитые остатки &lt;STELLAR&gt;прошлого существования&lt;&gt;. Он шепчет неизвестное имя, сохраненное глубоко внутри.&#xA;&#xA;Память воплотится в виде &lt;TECHNOLOGY&gt;оружия мультитула﻿,&lt;&gt; которое поможет вам в этой итерации. &lt;STELLAR&gt;Поглотите&lt;&gt; эту память с помощью &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;.&#xA;&#xA;&lt;SPECIAL&gt;СМЕРТЬ — НЕ КОНЕЦ&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt; &lt;STELLAR&gt;ПЕТЛЯ ПРОДОЛЖАЕТСЯ&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ROGUE_SGUNBOX_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Разбитые остатки &lt;STELLAR&gt;прошлого существования&lt;&gt;. Он шепчет неизвестное имя, сохраненное глубоко внутри.&#xA;&#xA;Память воплотится в виде &lt;TECHNOLOGY&gt;вооружения звездолета&lt;&gt;, которое поможет вам в этой итерации. &lt;STELLAR&gt;Поглотите&lt;&gt; эту память с помощью &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;.&#xA;&#xA;&lt;SPECIAL&gt;СМЕРТЬ — НЕ КОНЕЦ&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt; &lt;STELLAR&gt;ПЕТЛЯ ПРОДОЛЖАЕТСЯ&lt;&gt;
                                { "Russian", "Разбитые остатки &lt;STELLAR&gt;прошлого существования&lt;&gt;. Он шепчет неизвестное имя, сохраненное глубоко внутри.&#xA;&#xA;Память воплотится в виде &lt;TECHNOLOGY&gt;вооружения звездолёта﻿,&lt;&gt; которое поможет вам в этой итерации. &lt;STELLAR&gt;Поглотите&lt;&gt; эту память с помощью &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;.&#xA;&#xA;&lt;SPECIAL&gt;СМЕРТЬ — НЕ КОНЕЦ&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt; &lt;STELLAR&gt;ПЕТЛЯ ПРОДОЛЖАЕТСЯ&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ROGUE_HAZBOX_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Разбитые остатки &lt;STELLAR&gt;прошлого существования&lt;&gt;. Он шепчет неизвестное имя, сохраненное глубоко внутри.&#xA;&#xA;Память воплотится в виде &lt;TECHNOLOGY&gt;улучшения технологии экзокостюма&lt;&gt;, которое поможет вам в этой итерации. &lt;STELLAR&gt;Поглотите&lt;&gt; эту память с помощью &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;.&#xA;&#xA;&lt;SPECIAL&gt;СМЕРТЬ — НЕ КОНЕЦ&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt; &lt;STELLAR&gt;ПЕТЛЯ ПРОДОЛЖАЕТСЯ&lt;&gt;
                                { "Russian", "Разбитые остатки &lt;STELLAR&gt;прошлого существования&lt;&gt;. Он шепчет неизвестное имя, сохраненное глубоко внутри.&#xA;&#xA;Память воплотится в виде &lt;TECHNOLOGY&gt;улучшения технологии экзокостюма﻿,&lt;&gt; которое поможет вам в этой итерации. &lt;STELLAR&gt;Поглотите&lt;&gt; эту память с помощью &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;.&#xA;&#xA;&lt;SPECIAL&gt;СМЕРТЬ — НЕ КОНЕЦ&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt; &lt;STELLAR&gt;ПЕТЛЯ ПРОДОЛЖАЕТСЯ&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ROGUE_SMARTBOX_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Разбитые остатки &lt;STELLAR&gt;прошлого существования&lt;&gt;. Он шепчет неизвестное имя, сохраненное глубоко внутри.&#xA;&#xA;Память воплотится в виде &lt;TECHNOLOGY&gt;улучшения мультитула или вооружения корабля&lt;&gt;, которое поможет вам в этой итерации. &lt;STELLAR&gt;Поглотите&lt;&gt; эту память с помощью &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;.&#xA;&#xA;&lt;SPECIAL&gt;СМЕРТЬ — НЕ КОНЕЦ&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt; &lt;STELLAR&gt;ПЕТЛЯ ПРОДОЛЖАЕТСЯ&lt;&gt;
                                { "Russian", "Разбитые остатки &lt;STELLAR&gt;прошлого существования&lt;&gt;. Он шепчет неизвестное имя, сохраненное глубоко внутри.&#xA;&#xA;Память воплотится в виде &lt;TECHNOLOGY&gt;улучшения мультитула или вооружения корабля﻿,&lt;&gt; которое поможет вам в этой итерации. &lt;STELLAR&gt;Поглотите&lt;&gt; эту память с помощью &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;.&#xA;&#xA;&lt;SPECIAL&gt;СМЕРТЬ — НЕ КОНЕЦ&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt; &lt;STELLAR&gt;ПЕТЛЯ ПРОДОЛЖАЕТСЯ&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ROGUE_VEHICLEBOX_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Разбитые остатки &lt;STELLAR&gt;прошлого существования&lt;&gt;. Он шепчет неизвестное имя, сохраненное глубоко внутри.&#xA;&#xA;Память воплотится в виде &lt;TECHNOLOGY&gt;улучшения вездехода&lt;&gt;, которое поможет вам в этой итерации. &lt;STELLAR&gt;Поглотите&lt;&gt; эту память с помощью &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;.&#xA;&#xA;&lt;SPECIAL&gt;СМЕРТЬ — НЕ КОНЕЦ&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt; &lt;STELLAR&gt;ПЕТЛЯ ПРОДОЛЖАЕТСЯ&lt;&gt;
                                { "Russian", "Разбитые остатки &lt;STELLAR&gt;прошлого существования&lt;&gt;. Он шепчет неизвестное имя, сохраненное глубоко внутри.&#xA;&#xA;Память воплотится в виде &lt;TECHNOLOGY&gt;улучшения вездехода﻿,&lt;&gt; которое поможет вам в этой итерации. &lt;STELLAR&gt;Поглотите&lt;&gt; эту память с помощью &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt;.&#xA;&#xA;&lt;SPECIAL&gt;СМЕРТЬ — НЕ КОНЕЦ&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt; &lt;STELLAR&gt;ПЕТЛЯ ПРОДОЛЖАЕТСЯ&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region НАСТРОЙКИ ИГРЫ
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SPRINT_FREE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Бесконечн.
                                -- Infinite
                                { "Russian", "Бесконечный" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "INVENTORIES_RANGE_OFF" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Бесконечн.
                                -- Infinite
                                { "Russian", "Бесконечно" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "DAMAGE_IN_EASY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Минимальное присутствие
                                -- Minimal
                                { "Russian", "Минимум" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "COMBAT_EASY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Минимальное присутствие
                                -- Minimal
                                { "Russian", "Минимум" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "EXTRA_TECH_DAMAGE_NORMAL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Минимальное присутствие
                                -- Minimal
                                { "Russian", "Минимум" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "CRAFTING_IS_FREE_ON" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Бесплатн.
                                -- Free
                                { "Russian", "Бесплатно" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BASE_AUTO_POWER_ON" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Бесплатн.
                                -- Free
                                { "Russian", "Бесплатно" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "CHARGING_REQUIREMENTS_NONE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Бесплатн.
                                -- Free
                                { "Russian", "Бесплатно" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "COSTS_NONE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Бесплатн.
                                -- Free
                                { "Russian", "Бесплатно" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "CURRENCY_COST_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Предметы можно приобрести в &lt;VAL_ON&gt;Галактической торговой сети&lt;&gt; за &lt;COMMODITY&gt;юниты&lt;&gt; (&lt;IMG&gt;UNITS&lt;&gt;). Технологии обычно продаются за &lt;TECHNOLOGY&gt;наниты&lt;&gt; (&lt;IMG&gt;NANITE&lt;&gt;).&#xA;&#xA;Эта настройка устанавливает цены на покупки за юниты и наниты во всей галактике. Опция &lt;STELLAR&gt;'Бесплатн.'&lt;&gt; позволяет игнорировать многие расходы, необходимые для выполнения заданий и различных диалоговых взаимодействий.
                                { "Russian", "Предметы можно приобрести в &lt;VAL_ON&gt;галактической торговой сети&lt;&gt; за &lt;COMMODITY&gt;юниты&lt;&gt; (&lt;IMG&gt;UNITS&lt;&gt;). Технологии обычно продаются за &lt;TECHNOLOGY&gt;наниты&lt;&gt; (&lt;IMG&gt;NANITE&lt;&gt;).&#xA;&#xA;Настройка устанавливает цены на покупки за юниты и наниты во всей галактике. Опция &lt;STELLAR&gt;Бесплатно&lt;&gt; позволяет игнорировать многие расходы, необходимые для выполнения заданий." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RUNNING_DRAINS_STAMINA_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Обычный&lt;&gt; бег создает дополнительную нагрузку на &lt;FUEL&gt;систему жизнеобеспечения&lt;&gt; вашего экзокостюма.&#xA;&#xA;&lt;STELLAR&gt;Легкий&lt;&gt; бег не расходует заряд системы жизнеобеспечения, но все равно требует иногда останавливаться, чтобы восполнить силы.&#xA;&#xA;&lt;STELLAR&gt;Бесконечный&lt;&gt; бег снимает все ограничения и позволяет игроку бежать бесконечно.
                                { "Russian", "&lt;STELLAR&gt;Обычный&lt;&gt; бег создает дополнительную нагрузку на &lt;FUEL&gt;систему жизнеобеспечения&lt;&gt; вашего экзокостюма.&#xA;&#xA;&lt;STELLAR&gt;Расслабленный&lt;&gt; бег не расходует заряд системы жизнеобеспечения, но все равно требует иногда останавливаться, чтобы восполнить силы.&#xA;&#xA;&lt;STELLAR&gt;Бесконечный&lt;&gt; бег снимает все ограничения и позволяет игроку бежать бесконечно." },
                            }
                        },
                        -- желательно до 42 букв (1920х1080)
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DIFFICULTY_SELF_BAN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Нельзя изм. сложность игры после блок. настроек
                                -- Cannot change difficulty after locking settings
                                { "Russian", "Выбрана блокировка изменения сложности" },
                            }
                        },
                        --#endregion

                        --#region UI_TWIT_SHIP_GENERIC_NAME
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TWIT_SHIP_GENERIC_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ЭКСКЛЮЗИВНЫЙ ЗВЕЗДОЛЕТ
                                { "Russian", "ЭКСКЛЮЗИВНЫЙ ЗВЕЗДОЛЁТ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TWIT_SHIP_GENERIC_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Эксклюзивный звездолет
                                { "Russian", "Эксклюзивный звездолёт" },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ECON_LEVEL_PIRATE1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Черный рынок
                                -- Black Market
                                { "Russian", "Чёрный рынок" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CANT_PIN_NO_CRAFT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Предмет не создавался
                                -- Item is never crafted
                                { "Russian", "Предмет невозможно изготовить" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DISTANCE_RESTART_LABEL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Перезапустите задание с помощью окружающих строений
                                -- Restart mission using nearby structures
                                { "Russian", "Перезапустить задание с учётом местоположения" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_EXPED_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Идет экспедиция жителей
                                -- Citizen expedition in progress
                                { "Russian", "Идёт экспедиция жителей" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DEEP_SPACE_TRAIT_MINING_10" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сверхраскаленный желудок
                                -- Superheated Stomach
                                { "Russian", "Сверхраскалённый желудок" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_END_EXPEDITION_RES" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Введена команда возврата &lt;IMG&gt;SLASH&lt;&gt; Возвращение на крупный корабль
                                -- Recall command registered &lt;IMG&gt;SLASH&lt;&gt; Returning to capital ship
                                { "Russian", "Приказ принят &lt;IMG&gt;SLASH&lt;&gt; Возвращаемся на крупный корабль" },
                            }
                        },
                        { -- слишком длинное название
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BASE_CACHE_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ДЕМОНТИРОВАННЫЕ КОМПОНЕНТЫ БАЗЫ
                                -- DISMANTLED BASE COMPONENTS
                                { "Russian", "КОМПОНЕНТЫ ПРОШЛЫХ БАЗ" },
                            }
                        },
                    }
                },
            }
        }
    }
}
