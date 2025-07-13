NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]  = "_RuFixLOC9.pak",
    ["MOD_AUTHOR"]    = "gh0stwizard",
    ["NMS_VERSION"]   = "5.72",
    ["EXML_CREATE"]   = "false",
    ["MODIFICATIONS"] = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                { -- LANGUAGE/NMS_LOC9_RUSSIAN.MBIN
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_LOC9_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        -- переводчик не догадался, что эти значения в англ. версии используются с артиклем "A <size>"
                        -- или догадывался, потому что перевод 50/50...
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FISH_SIZE_S" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- небольшое
                                -- small
                                { "Russian", "Небольшое" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FISH_SIZE_M" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Среднее
                                -- medium-sized
                                { "Russian", "Среднее" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FISH_SIZE_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- большое
                                -- large
                                { "Russian", "Большое" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FISH_SIZE_XL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Огромное
                                -- colossal
                                { "Russian", "Огромное" },
                            }
                        },
                        -- какие нахер снасти, до этого был перевод rig как удочки
                        -- и какой нахер рыбак, angler - рыболов
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_S15_FISHLASER_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- СНАСТИ ПОТЕРЯННОГО РЫБАКА
                                -- LOST ANGLER'S RIG
                                { "Russian", "УДА ПРОПАВШЕГО РЫБОЛОВА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_S15_FISHLASER_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Снасти потерянного рыбака
                                -- Lost Angler's Rig
                                { "Russian", "Уда Рыболова" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_STORM_FISH_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поймайте рыбу, которая активна только во время бурь (%AMOUNT% шт.)
                                -- Catch %AMOUNT% fish that are only active in a storm
                                { "Russian", "Поймайте %AMOUNT% шт. рыбы в бурю" },
                            }
                        },
                        -- это не так переводится
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FISH_TRASH_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Разный мусор
                                -- Collected Flotsam
                                { "Russian", "Выловленный хлам" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_SEAHARVESTER_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- АВТОМАТИЗИРОВАННАЯ ЛОВУШКА
                                -- AUTOMATED TRAP
                                { "Russian", "АВТОМАТИЧЕСКАЯ ЛОВУШКА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_SEAHARVESTER_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Автоматизированная ловушка
                                -- Automated Trap
                                { "Russian", "Автоматическая ловушка" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_SEAHARVESTER_SUBTITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Самодостаточная корзина для рыбы
                                -- Self-Sustaining Auto Creel
                                { "Russian", "Самодостаточная крылена" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPD_TITLE_15_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Звание «Рыбак»
                                { "Russian", "Звание: «Рыбак»" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BAIT_BOX_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добавьте &lt;STELLAR&gt;наживку или приманку&lt;&gt;, чтобы приманить &lt;TECHNOLOGY&gt;определенную рыбу&lt;&gt; или увеличить &lt;TECHNOLOGY&gt;вероятность улова&lt;&gt;. Примечание: любую пищу можно использовать в качестве наживки.&#xA;&#xA;Текущая наживка: &lt;%NAMETAG%&gt;%BAIT%&lt;&gt;&#xA;Повышение редкости улова: &lt;%RARETAG%&gt;%RARE_BOOST%%&lt;&gt;&#xA;Повышение размера улова: &lt;%SIZETAG%&gt;%SIZE_BOOST%%&lt;&gt;&#xA;Прочее: &lt;%TAG%&gt;%NOTES%&lt;&gt;
                                -- Insert &lt;STELLAR&gt;bait or lures&lt;&gt; to attract &lt;TECHNOLOGY&gt;specific fish&lt;&gt;, or to improve &lt;TECHNOLOGY&gt;catch chances&lt;&gt;. Note: any foodstuff may be used as bait.&#xA;&#xA;Current Bait: &lt;%NAMETAG%&gt;%BAIT%&lt;&gt;&#xA;Catch Rarity Improvement: &lt;%RARETAG%&gt;%RARE_BOOST%%&lt;&gt;&#xA;Catch Size Improvement &lt;%SIZETAG%&gt;%SIZE_BOOST%%&lt;&gt;&#xA;Other notes: &lt;%TAG%&gt;%NOTES%&lt;&gt;
                                { "Russian", "Добавьте &lt;STELLAR&gt;наживку&lt;&gt;, чтобы приманить &lt;TECHNOLOGY&gt;нужную рыбу&lt;&gt; или увеличить &lt;TECHNOLOGY&gt;шанс улова&lt;&gt;.&#xA;&#xA;Наживка: &lt;%NAMETAG%&gt;%BAIT%&lt;&gt;&#xA;Бонус редкости: &lt;%RARETAG%&gt;%RARE_BOOST%%&lt;&gt;&#xA;Бонус размера: &lt;%SIZETAG%&gt;%SIZE_BOOST%%&lt;&gt;&#xA;Прочее: &lt;%TAG%&gt;%NOTES%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FISH_FOOD_JELLY_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Мясо медуза
                                -- Jellymeat
                                { "Russian", "Мясо медузы" },
                            }
                        },

                        --#region Имена рыб
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FISH_LUSH_EPIC_XL_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КОЛОССАЛЬНЫЙ ПАРОПЛОАКТИ
                                -- COLOSSAL MOSSBACK
                                { "Russian", "КОЛОССАЛЬНЫЙ МЕНХЭДЕН" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FISH_LUSH_EPIC_XL_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Колоссальный параплоакти
                                -- Colossal Mossback
                                { "Russian", "Колоссальный менхэден" },
                            }
                        },
                        --#endregion

                        --#region Описание рыб
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FISH_ALL_LEG_S_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- «Голос, как мед из слизистого рта».
                                { "Russian", "«Голос, как мед из слизистого рта»" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FISH_ALL_LEG_M_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- «Ее щупальца блестят, словно пряди золотых волос, но жалят огнем тысячи солнц».
                                { "Russian", "«Ее щупальца блестят, словно пряди золотых волос, но жалят огнем тысячи солнц»" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FISH_ALL_LEG_L_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- «Территориальный, древний, яростно не желающий быть пойманным. Король моря».
                                { "Russian", "«Территориальный, древний, яростно не желающий быть пойманным. Король моря»" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FISH_ALL_LEG_XL_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- «Настоящий титан глубин. Ничто не сравнится с ним по массе».
                                { "Russian", "«Настоящий титан глубин. Ничто не сравнится с ним по массе»" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FISH_LUSH_LEG_S_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- «Существо из снов, видимое только там, где свет преломляется сквозь его мягкое, идеально желейное тело».
                                { "Russian", "«Существо из снов, видимое только там, где свет преломляется сквозь его мягкое, идеально желейное тело»" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FISH_LUSH_LEG_L_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- «Эти добрые гиганты с мощным мускулистым телом и острыми зубами защищают более мелких существ от хищников».
                                { "Russian", "«Эти добрые гиганты с мощным мускулистым телом и острыми зубами защищают более мелких существ от хищников»" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FISH_HOT_LEG_S_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- «Его сверкающий панцирь несокрушим и доведен природой до совершенства».
                                { "Russian", "«Его сверкающий панцирь несокрушим и доведен природой до совершенства»" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FISH_HOT_LEG_M_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- «Обычному смертному ее не увидеть. Она невидимкой скользит в толще вод под бурлящими безоблачными небесами».
                                { "Russian", "«Обычному смертному ее не увидеть. Она невидимкой скользит в толще вод под бурлящими безоблачными небесами»" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FISH_HOT_LEG_L_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- «За этим существом тянется темное облако, насылающее сны о смерти всем, кого коснется».
                                { "Russian", "«За этим существом тянется темное облако, насылающее сны о смерти всем, кого коснется»" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FISH_HOT_LEG_XL_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- «Сердце из камня и плавники из железа. Это существо живет даже там, где гибнут все остальные».
                                { "Russian", "«Сердце из камня и плавники из железа. Это существо живет даже там, где гибнут все остальные»" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FISH_COLD_LEG_S_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- «Живая снежинка: замороженная, но все еще живая. Ее щупальца — фрактальная рекурсия».
                                { "Russian", "«Живая снежинка: замороженная, но все еще живая. Ее щупальца — фрактальная рекурсия»" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FISH_COLD_LEG_M_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- «Ее название произносят только шепотом. Ее тело — иллюзия, мерцающая под залитыми лунным светом волнами».
                                { "Russian", "«Ее название произносят только шепотом. Ее тело — иллюзия, мерцающая под залитыми лунным светом волнами»" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FISH_COLD_LEG_XL_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- «Никто не верит в существование столь огромного животного, в его колоссальный панцирь и гигантские лапы. Никто, кроме тех, кто с ним встречался».
                                -- &quot;None would believe the scale of this beast: its colossal shell, its enormous slimy foot. None, except those who have seen it...&quot;
                                { "Russian", "«Никто не верит в существование чудища со столь колоссальным панцирем и гигантскими лапами. Никто, кроме тех, кто с ним встречался»" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FISH_RAD_LEG_S_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- «Тысячи глаз буграми усеивают ее мягкую плоть и движутся в бесконечном цикле подъема, мигания и погружения».
                                { "Russian", "«Тысячи глаз буграми усеивают ее мягкую плоть и движутся в бесконечном цикле подъема, мигания и погружения»" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FISH_RAD_LEG_M_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- «Она медленно машет крыльями, плывя по отравленным морям, дрейфуя без отдыха. Ее путешествие не имеет конца».
                                { "Russian", "«Она медленно машет крыльями, плывя по отравленным морям, дрейфуя без отдыха. Ее путешествие не имеет конца»" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FISH_RAD_LEG_XL_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- «Полиморфная, извивающийся, никогда не останавливающаяся. Ее тело — бесконечный жужжащий поток меняющихся форм и острых зубов».
                                { "Russian", "«Полиморфная, извивающийся, никогда не останавливающаяся. Ее тело — бесконечный жужжащий поток меняющихся форм и острых зубов»" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FISH_TOX_LEG_S_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- «Ее совершенная кристаллическая форма сияет изумрудным светом, который меняет душу любого увидевшего».
                                { "Russian", "«Ее совершенная кристаллическая форма сияет изумрудным светом, который меняет душу любого увидевшего»" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FISH_TOX_LEG_M_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- «Истинная ошибка глубин: его укус портит вашу кровь, наполняя тело струей едкой желчи».
                                { "Russian", "«Истинная ошибка глубин: его укус портит вашу кровь, наполняя тело струей едкой желчи»" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FISH_TOX_LEG_L_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- «Лишенная плоти и цвета кислотными морями, альбуля продолжает жить и плескаться в воде».
                                { "Russian", "«Лишенная плоти и цвета кислотными морями, альбуля продолжает жить и плескаться в воде»" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FISH_DUST_LEG_S_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- «Нежное существо и осколок прошлого, продолжающий жить в воде».
                                { "Russian", "«Нежное существо и осколок прошлого, продолжающий жить в воде»" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FISH_DUST_LEG_L_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- «Реликт другой эпохи. Сплав жизни и камня, который отказывается умирать».
                                { "Russian", "«Реликт другой эпохи. Сплав жизни и камня, который отказывается умирать»" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FISH_DUST_LEG_XL_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- «Величайший морской хищник, идеальная машина для убийства. Берегитесь ее».
                                { "Russian", "«Величайший морской хищник, идеальная машина для убийства. Берегитесь ее»" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FISH_ODD_LEG_S_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- «Услышьте: не дайте этому яйцу проклюнуться. Бросьте его обратно в море».
                                { "Russian", "«Услышьте: не дайте этому яйцу проклюнуться. Бросьте его обратно в море»" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FISH_ODD_LEG_M_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- «Раковина и клешни из безупречного кристалла, а стебельки глаз светятся пурпурной яростью. Это существо было перемещено сюда из другой реальности и брошено в теле краба».
                                -- &quot;Shell and claw of perfect crystal, eyestalks aglow with purple rage; a being displaced from another reality and cast here as crab.&quot;
                                { "Russian", "«Раковина и клешни из идеального кристалла, стебельки глаз светятся пурпурной яростью; перемещен cюда из другой реальности»" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FISH_ODD_LEG_L_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- «Его песня разносится во времени и пространстве, взывая к своему дому в бесконечной черноте наверху. Однажды он поднимется и вернется в свой дом среди звезд».
                                -- &quot;Its song resonates across time and space, calling to its home in the endless black above. One day, it will rise and return to its home among the stars.&quot;
                                { "Russian", "«Его песня разносится во времени и пространстве, взывая к своему дому в бесконечной черноте наверху. Однажды он вернется домой»" },
                            }
                        },
                        --#endregion

                        -- перебор с кавычками и скобками...
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BOTTLE_MSG_FORMAT_MESS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сообщение, написанное на клочке бумаги, вытащенном из покачивающейся на волнах бутылки. Вода размыла текст и его невозможно прочитать. Вы разбираете только одно слово:&#xA;&#xA;«{{ &lt;%COLOUR%&gt;%WORD%&lt;&gt; }}»
                                -- A scrap of paper recovered from a bottle found bobbling in the water. The message is smeared and unreadable, ruined by the water. Only one word can be made out:&#xA;&#xA;&quot;{{ &lt;%COLOUR%&gt;%WORD%&lt;&gt; }}&quot;
                                { "Russian", "Сообщение, написанное на клочке бумаги, вытащенном из покачивающейся на волнах бутылки. Вода размыла текст и его невозможно прочитать. Вы разбираете только одно слово:&#xA;&#xA;{{ &lt;%COLOUR%&gt;%WORD%&lt;&gt; }}" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FISH_TRASH_BOTTLE_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Взять запечатанное письмо
                                -- Collect sealed message
                                { "Russian", "Вытащить запечатанное письмо" },
                            }
                        },
                        --
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BAIT_HUD_LABEL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Наживка: %BAIT%
                                -- Bait: %BAIT%
                                { "Russian", "%BAIT%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BAIT_HUD_LABEL_NONE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Наживка
                                -- Bait: -
                                { "Russian", "Без наживки" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "U_NEW_FISH_RECORD_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %ITEM% Вес: %NUM%кг
                                -- New heaviest %ITEM%! %NUM%kg
                                { "Russian", "%ITEM% — %NUM%кг" },
                            }
                        },

                        --#region TRADE_FILTER_SEASON
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TRADE_FILTER_SEASON_15" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Экспедиция 15
                                { "Russian", "Экспедиция №15" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TRADE_FILTER_SEASON_16" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Экспедиция 16
                                { "Russian", "Экспедиция №16" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TRADE_FILTER_SEASON_17" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Экспедиция 17
                                { "Russian", "Экспедиция №17" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TRADE_FILTER_SEASON_18" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Экспедиция 18
                                { "Russian", "Экспедиция №18" },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MARK_PLANET_ACTION_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Закрепите местоположение планеты в системе навигации.
                                -- Pin %PLANETCLASS% location to navigation systems
                                { "Russian", "Закрепить местоположение в системе навигации" },
                            }
                        },

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TIMELINE_FILTER_PURPLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Звездный класс: &lt;SPECIAL&gt;пурпурный&lt;&gt;
                                -- Stellar Class: &lt;SPECIAL&gt;Purple&lt;&gt;
                                { "Russian", "&lt;SPECIAL&gt;Пурпурный&lt;&gt; спектр" },
                            }
                        },

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BARTER_BUTTON" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Бартер
                                -- Barter
                                { "Russian", "Обмен" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BARTER_SWAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;SELECT&lt;&gt; Начать Торговлю
                                -- &lt;IMG&gt;SELECT&lt;&gt; Make swap offer
                                { "Russian", "&lt;IMG&gt;SELECT&lt;&gt; Торговаться" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BARTER_POPUP_BUTTON_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Купить/продать имеющиеся товары
                                -- Choose items to offer in exchange
                                { "Russian", "Выбрать предметы для обмена" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BARTER_POPUP_BUTTON_BONE_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Купить/продать имеющиеся товары
                                -- Choose items to offer in exchange
                                { "Russian", "Выбрать предметы для обмена" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DEPTH_BELOW" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Морское дно: %DEPTH% ед.
                                -- Sea floor: %DEPTH%u
                                { "Russian", "Дно: %DEPTH% м" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_RECIPE_BUTTON" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КАТАЛОГ СХЕМ
                                -- RECIPE CATALOGUE
                                { "Russian", "КНИГА РЕЦЕПТОВ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPD_SHIP_17_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Эксклюзивный &lt;STELLAR&gt;звездолет&lt;&gt;, полученные за исследование нескольких миров в рамках экспедиции «&lt;STELLAR&gt;Титан&lt;&gt;».&#xA;&#xA;&lt;STELLAR&gt;Получите&lt;&gt; этот корабль, чтобы добавить его в коллекцию или использовать &lt;STELLAR&gt;вместо&lt;&gt; своего текущего корабля. Находясь на планете, вы можете призвать корабли с помощью быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                { "Russian", "Эксклюзивный &lt;STELLAR&gt;звездолёт&lt;&gt;, полученные за исследование нескольких миров в рамках экспедиции «&lt;STELLAR&gt;Титан&lt;&gt;».&#xA;&#xA;&lt;STELLAR&gt;Получите&lt;&gt; этот корабль, чтобы добавить его в коллекцию или использовать &lt;STELLAR&gt;вместо&lt;&gt; своего текущего корабля. Находясь на планете, вы можете призвать корабли из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SKELETON_COMPLETE_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Витрина с окаменелым скелетом
                                -- Skeletal Display Complete!
                                { "Russian", "Экспонат склета создан!" },
                            }
                        },

                        --#region UI_SWIM_DEEP_HINT
                        -- %SURVIVAL_HINT% не влезает...
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SWIM_DEEP_HINT_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Погружение на &lt;FUEL&gt;большую глубину&lt;&gt;.&#xA;%HAZARD_HINT%&#xA;Система жизнеобеспечения &lt;STELLAR&gt;перегружена&lt;&gt;.&#xA;%SURVIVAL_HINT%
                                -- Crossing into the &lt;FUEL&gt;deep ocean&lt;&gt;&#xA;%HAZARD_HINT%&#xA;Life support systems under &lt;STELLAR&gt;increased strain&lt;&gt;&#xA;%SURVIVAL_HINT%
                                { "Russian", "Система жизнеобеспечения &lt;STELLAR&gt;перегружена&lt;&gt;&#xA;%HAZARD_HINT%&#xA;%SURVIVAL_HINT%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SWIM_DEEP_HINT_SUIT_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Установите &lt;TECHNOLOGY&gt;мембрану давления&lt;&gt;, чтобы повысить шансы на выживание.
                                { "Russian", "Повысьте шансы на выживание, установив &lt;TECHNOLOGY&gt;мембрану давления&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SWIM_DEEP_HINT_SUB_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Передвигайтесь на &lt;TECHNOLOGY&gt;подводной лодке «Наутилон»&lt;&gt;, чтобы повысить шансы на выживание.
                                { "Russian", "Повысьте шансы на выживание, используя &lt;TECHNOLOGY&gt;подлодку Наутилон&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SWIM_DEEP_HINT_HOT_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Температура окружающей жидкости &lt;FUEL&gt;резко изменилась&lt;&gt;.
                                -- Ambient liquid temperature &lt;FUEL&gt;spiking&lt;&gt;
                                { "Russian", "Температура воды &lt;FUEL&gt;резко повысилась&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SWIM_DEEP_HINT_COLD_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Температура воды &lt;TECHNOLOGY&gt;резко упала&lt;&gt;
                                -- Water temperature &lt;TECHNOLOGY&gt;falling&lt;&gt;
                                { "Russian", "Температура воды &lt;TECHNOLOGY&gt;резко упала&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SWIM_DEEP_HINT_TOX_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Токсичность воды &lt;STELLAR&gt;возросла&lt;&gt;
                                { "Russian", "Токсичность воды &lt;STELLAR&gt;возросла&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SWIM_DEEP_HINT_RAD_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Уровень радиации воды &lt;COMMODITY&gt;вырос&lt;&gt;
                                { "Russian", "Уровень радиации воды &lt;COMMODITY&gt;вырос&lt;&gt;" },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "HAZBAR_DEEPWATER" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- СВЕРХВЫСОКОЕ ДАВЛЕНИЕ
                                -- HYPERPRESSURE
                                { "Russian", "СВЕРХДАВЛЕНИЕ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COLLECT_DEEP_SEA_LABEL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Получите глубоководный образец
                                -- Harvest Deep-Sea Sample
                                { "Russian", "Взять глубоководный образец" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SUB_MINER_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Ландшафтный манипулятор «Наутилона»
                                -- Nautilon Terrain Manipulator
                                { "Russian", "Ландшафтный манипулятор Наутилон" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SUB_MINER_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Позволяет лазерным системам &lt;STELLAR&gt;подводной лодки «Наутилон»&lt;&gt; &lt;STELLAR&gt;изменять ландшафт&lt;&gt;.&#xA;&#xA;Этот лазер охлаждается окружающей водой и особым образом откалиброван, чтобы разрезать составную почву морского дна.
                                -- Adds &lt;STELLAR&gt;Terrain Manipulation&lt;&gt; capability to the laser systems of the &lt;STELLAR&gt;Nautilon Submarine&lt;&gt;.&#xA;&#xA;Cooled by specially designed water intakes, it is specifically calibrated to carve through the complex geology of the sea floor.
                                { "Russian", "Позволяет лазерным системам &lt;STELLAR&gt;подлодки Наутилон&lt;&gt; &lt;STELLAR&gt;изменять ландшафт&lt;&gt;.&#xA;&#xA;Этот лазер охлаждается окружающей водой и особым образом откалиброван, чтобы разрезать почву морского дна." },
                            }
                        },

                        --#region BLD_GARAGE_FLOAT_NAME
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_GARAGE_FLOAT_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПЛАТФОРМА ДЛЯ «НАУТИЛОНА»
                                -- NAUTILON PLATFORM
                                { "Russian", "ПЛАТФОРМА ДЛЯ НАУТИЛОН" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_GARAGE_FLOAT_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Платформа для «Наутилона»
                                { "Russian", "Платформа для Наутилон" },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_GARAGE_FLOAT_SUBTITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Размещаемый на поверхности ангар для подводной лодки.
                                -- Surface-Deployable Submarine Bay
                                { "Russian", "Надводный ангар для подлодки" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_GARAGE_FLOAT_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Продвинутый, полностью герметичный ангар для &lt;TECHNOLOGY&gt;подводной лодки «Наутилон»&lt;&gt;.&#xA;&#xA;Эта особая платформа предназначена для &lt;STELLAR&gt;размещения на поверхности воды&lt;&gt;.
                                { "Russian", "Продвинутый, полностью герметичный ангар для &lt;TECHNOLOGY&gt;подлодки Наутилон&lt;&gt;.&#xA;&#xA;Эта особая платформа предназначена для &lt;STELLAR&gt;размещения на поверхности воды&lt;&gt;." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FOSSILS_TREE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Fossil Displays
                                -- Fossil Displays
                                { "Russian", "Витрины для окаменелостей" },
                            }
                        },

                        --#region "In Stellar Multitudes" / "В сиянии множества звезд"
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PURPM_TITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- В сиянии множества звезд
                                -- In Stellar Multitudes
                                { "Russian", "В сиянии множества звёзд" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PURPM_BOAT_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ВЫЗОВ С ОТКЛОНЯЮЩЕГОСЯ КОММУНИКАТОРА &lt;IMG&gt;SLASH&lt;&gt; ВЫЙДИТЕ ИЗ ИМПУЛЬСНОГО ДВИЖЕНИЯ, ЧТОБЫ ОТВЕТИТЬ
                                -- DIVERGENT COMMUNICATOR HAIL &lt;IMG&gt;SLASH&lt;&gt; EXIT PULSE TO RECEIVE
                                { "Russian", "ВЫЗОВ ОТ ДИВЕРГЕНТНОГО ИСТОЧНИКА &lt;IMG&gt;SLASH&lt;&gt; СНИЗЬТЕ СКОРОСТЬ ДЛЯ ИЗУЧЕНИЯ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PURPM_BOAT_OSD_COMMS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ВХОДЯЩЕЕ СООБЩЕНИЕ &lt;IMG&gt;SLASH&lt;&gt; ОТКЛОНЯЮЩАЯСЯ ЧАСТОТА
                                -- INCOMING MESSAGE &lt;IMG&gt;SLASH&lt;&gt; DIVERGENT FREQUENCY
                                { "Russian", "ВХОДЯЩЕЕ СООБЩЕНИЕ &lt;IMG&gt;SLASH&lt;&gt; ДИВЕРГЕНТНАЯ ЧАСТОТА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PURPM_BOAT_TITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Отклоняющийся фрагмент Ябли-α
                                -- Divergence Fragment Yabli-α
                                { "Russian", "Дивергентный фрагмент Ябли-α" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PURPM1_OBJ1_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Отклоняющийся фрагмент Ябли-α просит меня помочь собрать семя &lt;SPECIAL&gt;воспоминаний Атлантиды&lt;&gt;.&#xA;&#xA;Находясь на &lt;SPECIAL&gt;лишенных гармонии мирах&lt;&gt;, используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы найти &lt;TECHNOLOGY&gt;эхо сознания&lt;&gt;.&#xA;Закрепите схему &lt;SPECIAL&gt;воспоминаний Атлантиды&lt;&gt;, чтобы найти дополнительные ингредиенты.
                                -- Divergence Fragment Yabli-α seeks my help to compile a seed of &lt;SPECIAL&gt;Memories of Atlantid&lt;&gt;.&#xA;&#xA;On &lt;SPECIAL&gt;dissonant&lt;&gt; worlds, use the &lt;TECHNOLOGY&gt;Analysis Visor&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;) to locate &lt;TECHNOLOGY&gt;Sentience Echoes&lt;&gt;.&#xA;Pin the &lt;SPECIAL&gt;Memories of Atlantid&lt;&gt; recipe to locate additional ingredients.
                                { "Russian", "Дивергентный фрагмент Ябли-α просит меня помочь собрать семя &lt;SPECIAL&gt;воспоминаний Атлантиды&lt;&gt;.&#xA;&#xA;Используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;) на планетах &lt;SPECIAL&gt;лишенных гармонии&lt;&gt;, чтобы найти &lt;TECHNOLOGY&gt;эхо сознания&lt;&gt;.&#xA;Закрепите чертеж &lt;SPECIAL&gt;Воспоминаний Атлантиды&lt;&gt;, чтобы найти дополнительные ингредиенты." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PURPM_BOAT_MSG_COMMS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Ретранслятор связи содержит &lt;TRANS_BUI&gt;отклонение&lt;&gt;.&#xA;Чтобы ответить, нажмите &lt;IMG&gt;QUICK_MENU&lt;&gt;.
                                { "Russian", "Ретранслятор связи содержит &lt;TRANS_BUI&gt;отклонение&lt;&gt;&#xA;Ответьте по коммуникатору из быстрого меню &lt;IMG&gt;QUICK_MENU&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PURPM_BOAT11_LANG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Меня распаляет — %SIGNAL_GREEK% — представившаяся возможность, и я не был достаточно открыт. Я хочу попросить тебя о помощи.&#xA;Это возможность восстановить то, что было давным-давно — %SIGNAL_GREEK% — утеряно.&lt;NEWLINE&gt;У нас есть все, что нужно. Атлантидий. Твой аномальный сигнал. Атлас.&lt;NEWLINE&gt;Остается лишь выполнить сборку.
                                { "Russian", "Меня распаляет — %SIGNAL_GREEK% — представившаяся возможность, и я не был достаточно открыт. Я хочу попросить тебя о помощи.&#xA;Это возможность восстановить то, что было давным-давно — %SIGNAL_GREEK% — утеряно. У нас есть все, что нужно. Атлантидий. Твой аномальный сигнал. Атлас. Остается лишь выполнить сборку." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PURPM1_OBJ2_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Воспоминания Атлантиды&lt;&gt; собраны в семя.&#xA;&#xA;Посоветуйтесь с &lt;TRANS_BUI&gt;отклоняющимся фрагментом Ябли-α&lt;&gt;, чтобы узнать следующую фазу сборки.&#xA;Находясь в космосе, активируйте &lt;TECHNOLOGY&gt;импульсный двигатель&lt;&gt; (&lt;IMG&gt;PULSEJUMP&lt;&gt;), чтобы найти его сигнал.
                                { "Russian", "&lt;SPECIAL&gt;Воспоминания Атлантиды&lt;&gt; собраны в семя.&#xA;&#xA;Посоветуйтесь с &lt;TRANS_BUI&gt;дивергентным фрагментом Ябли-α&lt;&gt;, чтобы узнать следующий этап сборки.&#xA;Находясь в космосе, активируйте &lt;TECHNOLOGY&gt;импульсный двигатель&lt;&gt; (&lt;IMG&gt;PULSEJUMP&lt;&gt;), чтобы найти его сигнал." },
                            }
                        },

                        --#region UI_PURPM1_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PURPM1_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите &lt;SPECIAL&gt;воспоминания Атлантиды&lt;&gt; в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;).&#xA;Чтобы начать сборку, выберите пустую ячейку и используйте &lt;IMG&gt;PRODMENU&lt;&gt;.&#xA;Воспоминания могут напомнить Атласу о том, что было &lt;SPECIAL&gt;утеряно&lt;&gt;.
                                { "Russian", "Соберите &lt;SPECIAL&gt;воспоминания Атлантиды&lt;&gt; в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;)&#xA;Чтобы начать сборку, выберите пустую ячейку и используйте &lt;IMG&gt;PRODMENU&lt;&gt;&#xA;Воспоминания могут напомнить Атласу о том, что было &lt;SPECIAL&gt;утеряно&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PURPM1_MSG1A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите &lt;SPECIAL&gt;воспоминания Атлантиды&lt;&gt;, чтобы показать их Атласу.&#xA;Сканируйте &lt;SPECIAL&gt;лишенные гармонии&lt;&gt; планеты в поисках семян эха: %CURRENT%/%AMOUNT%&#xA;Находясь в космосе, используйте &lt;IMG&gt;галактическую карту&lt;&gt;, чтобы найти &lt;SPECIAL&gt;лишенные гармонии&lt;&gt; миры.
                                { "Russian", "Соберите &lt;SPECIAL&gt;воспоминания Атлантиды&lt;&gt;, чтобы показать их Атласу&#xA;Сканируйте &lt;SPECIAL&gt;лишенные гармонии&lt;&gt; планеты в поисках семян эха: %CURRENT%/%AMOUNT%&#xA;Находясь в космосе, используйте галактическую карту (&lt;IMG&gt;QUICK_MENU&lt;&gt;),&#xA;чтобы найти &lt;SPECIAL&gt;лишенные гармонии&lt;&gt; миры" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PURPM1_MSG1B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите &lt;SPECIAL&gt;воспоминания Атлантиды&lt;&gt;, чтобы показать их Атласу.&#xA;Сканируйте &lt;SPECIAL&gt;лишенные гармонии&lt;&gt; планеты в поисках семян эха: %CURRENT%/%AMOUNT%&#xA;Неподалеку обнаружена лишенная гармонии планета.&#xA;Сканируйте миры из космоса (&lt;IMG&gt;SCAN&lt;&gt;), чтобы проверить данные планеты.
                                { "Russian", "Соберите &lt;SPECIAL&gt;воспоминания Атлантиды&lt;&gt;, чтобы показать их Атласу&#xA;Сканируйте &lt;SPECIAL&gt;лишенные гармонии&lt;&gt; планеты в поисках семян эха: %CURRENT%/%AMOUNT%&#xA;Неподалеку обнаружена лишенная гармонии планета&#xA;Сканируйте планеты из космоса (&lt;IMG&gt;SCAN&lt;&gt;), чтобы проверить их данные" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PURPM1_MSG1C" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите &lt;SPECIAL&gt;семена эха&lt;&gt;, чтобы собрать воспоминания Атлантиды: %CURRENT%/%AMOUNT%&#xA;Используйте анализирующий визор (&lt;IMG&gt;AIM&lt;&gt;), чтобы найти &lt;TECHNOLOGY&gt;эхо сознания&lt;&gt;.&#xA;По прибытии туда, где находится эхо, запустите &lt;TECHNOLOGY&gt;%BUI_SCAN%&lt;&gt; с помощью &lt;IMG&gt;SCAN&lt;&gt;.
                                { "Russian", "Найдите &lt;SPECIAL&gt;семена эха&lt;&gt;, чтобы собрать Воспоминания Атлантиды: %CURRENT%/%AMOUNT%&#xA;Используйте анализирующий визор (&lt;IMG&gt;AIM&lt;&gt;), чтобы найти &lt;TECHNOLOGY&gt;эхо сознания&lt;&gt;&#xA;В месте, где находится эхо, запустите &lt;TECHNOLOGY&gt;%BUI_SCAN%&lt;&gt;&#xA;с помощью &lt;IMG&gt;SCAN&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PURPM1_MSG1C_OFF" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите семена эха, чтобы собрать из них &lt;SPECIAL&gt;воспоминания Атлантиды&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Используйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt;, чтобы установить местоположение &lt;TECHNOLOGY&gt;эха сознания&lt;&gt;.&#xA;По прибытии туда, где находится эхо, запустите &lt;TECHNOLOGY&gt;%BUI_SCAN%&lt;&gt; с помощью &lt;IMG&gt;SCAN&lt;&gt;.
                                { "Russian", "Найдите семена эха, чтобы собрать из них &lt;SPECIAL&gt;воспоминания Атлантиды&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Используйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt;, чтобы найти &lt;TECHNOLOGY&gt;эха сознания&lt;&gt;&#xA;В месте, где находится эхо, запустите &lt;TECHNOLOGY&gt;%BUI_SCAN%&lt;&gt;&#xA;с помощью &lt;IMG&gt;SCAN&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PURPM1_MSG1C_SWAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите &lt;SPECIAL&gt;воспоминания Атлантиды&lt;&gt;, чтобы показать их Атласу.&#xA;Найдите семена эха: %CURRENT%/%AMOUNT%&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы найти &lt;TECHNOLOGY&gt;эхо сознания&lt;&gt;.&#xA;По прибытии туда, где находится эхо, запустите &lt;TECHNOLOGY&gt;%BUI_SCAN%&lt;&gt; с помощью &lt;IMG&gt;SCAN&lt;&gt;.
                                { "Russian", "Соберите &lt;SPECIAL&gt;воспоминания Атлантиды&lt;&gt;, чтобы показать их Атласу&#xA;Найдите семена эха: %CURRENT%/%AMOUNT%&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы найти &lt;TECHNOLOGY&gt;эхо сознания&lt;&gt;&#xA;В месте, где находится эхо, запустите &lt;TECHNOLOGY&gt;%BUI_SCAN%&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PURPM1_MSG1C_SURVEY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите &lt;SPECIAL&gt;воспоминания Атлантиды&lt;&gt;, чтобы показать их Атласу.&#xA;Найдите семена эха: %CURRENT%/%AMOUNT%&#xA;Выберите &lt;STELLAR&gt;разведку цели&lt;&gt; (&lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;), чтобы найти &lt;TECHNOLOGY&gt;эхо сознания&lt;&gt;.&#xA;По прибытии туда, где находится эхо, запустите &lt;TECHNOLOGY&gt;%BUI_SCAN%&lt;&gt; с помощью &lt;IMG&gt;SCAN&lt;&gt;.
                                { "Russian", "Соберите &lt;SPECIAL&gt;воспоминания Атлантиды&lt;&gt;, чтобы показать их Атласу&#xA;Найдите семена эха: %CURRENT%/%AMOUNT%&#xA;Выберите &lt;STELLAR&gt;разведку цели&lt;&gt; (&lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;), чтобы найти &lt;TECHNOLOGY&gt;эхо сознания&lt;&gt;&#xA;В месте, где находится эхо, запустите &lt;TECHNOLOGY&gt;%BUI_SCAN%&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PURPM1_MSG1C_CAR" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите &lt;SPECIAL&gt;воспоминания Атлантиды&lt;&gt;, чтобы показать их Атласу.&#xA;Найдите семена эха: %CURRENT%/%AMOUNT%&#xA;&lt;TECHNOLOGY&gt;Разведка цели&lt;&gt; позволит определить точное местоположение &lt;TECHNOLOGY&gt;эха сознания&lt;&gt;.&#xA;Чтобы подтвердить направление разведки, покиньте свой транспорт.
                                { "Russian", "Соберите &lt;SPECIAL&gt;воспоминания Атлантиды&lt;&gt;, чтобы показать их Атласу&#xA;Найдите семена эха: %CURRENT%/%AMOUNT%&#xA;&lt;TECHNOLOGY&gt;Разведка цели&lt;&gt; позволит определить местоположение &lt;TECHNOLOGY&gt;эха сознания&lt;&gt;&#xA;Чтобы подтвердить направление разведки, покиньте транспорт" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PURPM1_MSG1D" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите &lt;SPECIAL&gt;воспоминания Атлантиды&lt;&gt;, чтобы показать их Атласу.&#xA;Установите &lt;TECHNOLOGY&gt;%BUI_SCAN%&lt;&gt; или переключитесь на подходящий мультитул&#xA;.Сменить активный мультитул можно в быстром меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)&#xA;Установите технологию в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;) с помощью &lt;IMG&gt;TECHMENU&lt;&gt;.
                                { "Russian", "Соберите &lt;SPECIAL&gt;воспоминания Атлантиды&lt;&gt;, чтобы показать их Атласу&#xA;Установите &lt;TECHNOLOGY&gt;%BUI_SCAN%&lt;&gt; или смените мультитул&#xA;Сменить мультитул можно в быстром меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)&#xA;Установите технологию в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;) с помощью &lt;IMG&gt;TECHMENU&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PURPM1_MSG1E" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите &lt;SPECIAL&gt;воспоминания Атлантиды&lt;&gt;, чтобы показать их Атласу.&#xA;Изучите схему: &lt;COMMODITY&gt;%ITEM%&lt;&gt;&#xA;Сделать это можно на борту Космической Аномалии.&#xA;Для изучения схемы нужны &lt;TECHNOLOGY&gt;наниты&lt;&gt;: %NANITES_CURRENT%/%NANITES_NEEDED%
                                { "Russian", "Соберите &lt;SPECIAL&gt;воспоминания Атлантиды&lt;&gt;, чтобы показать их Атласу&#xA;Изучите чертеж &lt;COMMODITY&gt;%ITEM%&lt;&gt;&#xA;Сделать это можно на Космической Аномалии&#xA;Для изучения нужны &lt;TECHNOLOGY&gt;наниты&lt;&gt;: %NANITES_CURRENT%/%NANITES_NEEDED%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PURPM1_MSG1F" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите &lt;SPECIAL&gt;воспоминания Атлантиды&lt;&gt;, чтобы показать их Атласу.&#xA;Соберите: &lt;COMMODITY&gt;%ITEM%&lt;&gt; (%CURRENT%/%AMOUNT%)&#xA;&lt;COMMODITY&gt;Закрепите&lt;&gt; схему, чтобы найти нужные предметы.
                                { "Russian", "Соберите &lt;SPECIAL&gt;воспоминания Атлантиды&lt;&gt;, чтобы показать их Атласу&#xA;Соберите &lt;COMMODITY&gt;%ITEM%&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;&lt;COMMODITY&gt;Закрепите&lt;&gt; чертеж, чтобы найти нужные предметы" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PURPM1_MSG1G" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите &lt;SPECIAL&gt;воспоминания Атлантиды&lt;&gt;, чтобы показать их Атласу.&#xA;Соберите: &lt;COMMODITY&gt;%ITEM%&lt;&gt; (%CURRENT%/%AMOUNT%)&#xA;Создавайте продукты в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;).&#xA;Выберите пустую ячейку и начните сборку с помощью &lt;IMG&gt;PRODMENU&lt;&gt;.
                                { "Russian", "Соберите &lt;SPECIAL&gt;воспоминания Атлантиды&lt;&gt;, чтобы показать их Атласу&#xA;Соберите &lt;COMMODITY&gt;%ITEM%&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Создавайте продукты в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;)&#xA;Выберите пустую ячейку и начните сборку с помощью &lt;IMG&gt;PRODMENU&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PURPM1_MSG_PACKET_LOST" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Воспоминания Атлантиды оказались &lt;FUEL&gt;потеряны&lt;&gt;.&#xA;Соберите еще несколько &lt;SPECIAL&gt;воспоминаний Атлантиды&lt;&gt; в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;).&#xA;Чтобы начать сборку, выберите пустую ячейку и используйте &lt;IMG&gt;PRODMENU&lt;&gt;.
                                { "Russian", "Воспоминания Атлантиды оказались &lt;FUEL&gt;потеряны&lt;&gt;&#xA;Соберите еще несколько &lt;SPECIAL&gt;воспоминаний Атлантиды&lt;&gt; в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;)&#xA;Чтобы начать сборку, выберите пустую ячейку и используйте &lt;IMG&gt;PRODMENU&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PURPM1_MSG_PACKET_LOST2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Воспоминания Атлантиды оказались &lt;FUEL&gt;потеряны&lt;&gt;.&#xA;Соберите еще одно семя &lt;SPECIAL&gt;воспоминаний Атлантиды&lt;&gt;.&#xA;&lt;COMMODITY&gt;Закрепите&lt;&gt; схему, чтобы найти дополнительные ингредиенты.
                                { "Russian", "Воспоминания Атлантиды оказались &lt;FUEL&gt;потеряны&lt;&gt;&#xA;Соберите еще одно семя &lt;SPECIAL&gt;воспоминаний Атлантиды&lt;&gt;&#xA;&lt;COMMODITY&gt;Закрепите&lt;&gt; чертеж, чтобы найти дополнительные ингредиенты" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PURPM1_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поиск &lt;TRANS_BUI&gt;отклоняющегося фрагмента Ябли-α&lt;&gt;...&#xA;Волна зондирования: %SIGNAL_GREEK%...
                                { "Russian", "Поиск &lt;TRANS_BUI&gt;дивергентного фрагмента Ябли-α&lt;&gt;...&#xA;Волна зондирования: %SIGNAL_GREEK%..." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PURPM1_MSG2A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Свяжитесь с &lt;TRANS_BUI&gt;отклоняющимся фрагментом Ябли-α&lt;&gt;.&#xA;Вернитесь на корабль и выйдите в космос.
                                { "Russian", "Свяжитесь с &lt;TRANS_BUI&gt;дивергентным фрагментом Ябли-α&lt;&gt;&#xA;Вернитесь на корабль и выйдите в космос" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PURPM1_MSG2B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Свяжитесь с &lt;TRANS_BUI&gt;отклоняющимся фрагментом Ябли-α&lt;&gt;.&#xA;Активируйте &lt;TECHNOLOGY&gt;импульсный привод&lt;&gt; (&lt;IMG&gt;PULSEJUMP&lt;&gt;), чтобы найти его частоту.
                                { "Russian", "Свяжитесь с &lt;TRANS_BUI&gt;дивергентным фрагментом Ябли-α&lt;&gt;&#xA;Активируйте &lt;TECHNOLOGY&gt;импульсный двигатель&lt;&gt; (&lt;IMG&gt;PULSEJUMP&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PURPM1_MSG2_ERR" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поиск отклоняющегося фрагмента Ябли-α: &lt;FUEL&gt;провал&lt;&gt;.&#xA;Ответьте на вызов &lt;STELLAR&gt;коммуникатора&lt;&gt;.
                                -- Probe for Divergence Fragment Yabli-α: &lt;FUEL&gt;failed&lt;&gt;&#xA;Answer the &lt;STELLAR&gt;Communicator&lt;&gt;
                                { "Russian", "Поиск дивергентного фрагмента Ябли-α: &lt;FUEL&gt;провал&lt;&gt;&#xA;Ответьте на вызов &lt;STELLAR&gt;коммуникатора&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PURPM1_MSG3A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Подгрузите &lt;SPECIAL&gt;воспоминания Атлантиды&lt;&gt; в &lt;FUEL&gt;Интерфейс Атласа&lt;&gt;.&#xA;Откройте &lt;TECHNOLOGY&gt;галактическую карту&lt;&gt; с помощью быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)&#xA;Изменить курс на галактической карте можно, используя &lt;IMG&gt;GALAXY_NAV_L&lt;&gt;&lt;IMG&gt;GALAXY_NAV_R&lt;&gt;
                                { "Russian", "Загрузите &lt;SPECIAL&gt;воспоминания Атлантиды&lt;&gt; в &lt;FUEL&gt;Интерфейс Атласа&lt;&gt;&#xA;Откройте &lt;TECHNOLOGY&gt;галактическую карту&lt;&gt; из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)&#xA;Изменить курс на карте можно, используя &lt;IMG&gt;GALAXY_NAV_L&lt;&gt;&lt;IMG&gt;GALAXY_NAV_R&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PURPM1_MSG3B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Подгрузите &lt;SPECIAL&gt;воспоминания Атлантиды&lt;&gt; в &lt;FUEL&gt;Интерфейс Атласа&lt;&gt;.&#xA;Вернитесь в космос и откройте &lt;TECHNOLOGY&gt;галактическую карту&lt;&gt;.
                                { "Russian", "Загрузите &lt;SPECIAL&gt;воспоминания Атлантиды&lt;&gt; в &lt;FUEL&gt;Интерфейс Атласа&lt;&gt;&#xA;Вернитесь в космос и откройте &lt;TECHNOLOGY&gt;галактическую карту&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PURPM1_MSG3C" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Доберитесь до &lt;FUEL&gt;станции Атласа&lt;&gt;.&#xA;Подгрузите &lt;SPECIAL&gt;воспоминания Атлантиды&lt;&gt; в находящийся внутри интерфейс.
                                { "Russian", "Доберитесь до &lt;FUEL&gt;станции Атласа&lt;&gt;&#xA;Загрузите &lt;SPECIAL&gt;воспоминания Атлантиды&lt;&gt; в находящийся внутри интерфейс" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PURPM1_MSG3D" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Доберитесь до &lt;FUEL&gt;интерфейса площадки&lt;&gt;.&#xA;Подгрузите &lt;SPECIAL&gt;воспоминания Атлантиды&lt;&gt; в архитектуру реальности.
                                -- Approach the &lt;FUEL&gt;Scaffold Interface&lt;&gt;&#xA;Sideload the &lt;SPECIAL&gt;Memories of Atlantid&lt;&gt; into the architecture of reality
                                { "Russian", "Подойдите к &lt;FUEL&gt;интерфейсу площадки&lt;&gt;&#xA;Загрузите &lt;SPECIAL&gt;воспоминания Атлантиды&lt;&gt; в архитектуру реальности" },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PURPM2_OBJ2_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Гипердвигатель звездолета нужно оснастить &lt;TECHNOLOGY&gt;атлантидиевым приводом&lt;&gt;, чтобы отправиться в &lt;SPECIAL&gt;лишенное гармонии пространство&lt;&gt;.&#xA;&#xA;Ябли-α предлагает посоветоваться с &lt;TRANS_BUI&gt;Собранным Конструктом&lt;&gt;.&#xA;Находясь в космосе, вызовите &lt;SPECIAL&gt;Аномалию&lt;&gt; с помощью быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                { "Russian", "Гипердвигатель звездолёта нужно оснастить &lt;TECHNOLOGY&gt;атлантидиевым приводом&lt;&gt;, чтобы отправиться в &lt;SPECIAL&gt;лишенное гармонии пространство&lt;&gt;.&#xA;&#xA;Ябли-α предлагает посоветоваться с &lt;TRANS_BUI&gt;Собранным Конструктом&lt;&gt;.&#xA;Находясь в космосе, вызовите &lt;SPECIAL&gt;Аномалию&lt;&gt; с помощью быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PURPM2_OBJ3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Установить &lt;TECHNOLOGY&gt;атлантидиевый привод&lt;&gt;.
                                -- Install an &lt;TECHNOLOGY&gt;Atlantid Drive&lt;&gt;
                                { "Russian", "Установить &lt;TECHNOLOGY&gt;атлантидиевый привод&lt;&gt;" },
                            }
                        },

                        --#region UI_PURPM2_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PURPM2_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Воспоминания Атлантиды изменили архитектуру реальности.&#xA;Во Вселенной что-то &lt;SPECIAL&gt;воплотилось&lt;&gt;...&#xA;Покиньте станцию Атласа и вернитесь в космос.
                                { "Russian", "Воспоминания Атлантиды изменили архитектуру реальности&#xA;Во вселенной что-то &lt;SPECIAL&gt;воплотилось&lt;&gt;...&#xA;Покиньте станцию Атласа и вернитесь в космос" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PURPM2_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Чтобы отправиться в &lt;SPECIAL&gt;лишенное гармонии пространство&lt;&gt;, нужно улучшить гипердвигатель.&#xA;Посоветуйтесь с &lt;TRANS_BUI&gt;Собранным Конструктом&lt;&gt;.&#xA;Находясь в космосе, вызовите &lt;SPECIAL&gt;Аномалию&lt;&gt; с помощью быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                { "Russian", "Чтобы отправиться в &lt;SPECIAL&gt;лишенное гармонии пространство&lt;&gt;,&#xA;нужно улучшить гипердвигатель&#xA;Посоветуйтесь с &lt;TRANS_BUI&gt;Собранным Конструктом&lt;&gt;&#xA;Находясь в космосе, вызовите &lt;SPECIAL&gt;Аномалию&lt;&gt; из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PURPM2_MSG2_NEXUS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Чтобы отправиться в &lt;SPECIAL&gt;лишенное гармонии пространство&lt;&gt;, нужно улучшить гипердвигатель.&#xA;Посоветуйтесь с &lt;TRANS_BUI&gt;Собранным Конструктом&lt;&gt;.
                                { "Russian", "Чтобы отправиться в &lt;SPECIAL&gt;лишенное гармонии пространство&lt;&gt;,&#xA;нужно улучшить гипердвигатель&#xA;Посоветуйтесь с &lt;TRANS_BUI&gt;Собранным Конструктом&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PURPM2_MSG3A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Чтобы отправиться в &lt;SPECIAL&gt;лишенное гармонии пространство&lt;&gt;, нужно улучшить гипердвигатель.&#xA;Установите &lt;TECHNOLOGY&gt;атлантидиевый привод&lt;&gt; на свой звездолет.&#xA;Используйте &lt;IMG&gt;TECHMENU&lt;&gt;, чтобы установить его в пустую ячейку &lt;STELLAR&gt;технологии&lt;&gt;.
                                { "Russian", "Чтобы отправиться в &lt;SPECIAL&gt;лишенное гармонии пространство&lt;&gt;,&#xA;нужно улучшить гипердвигатель&#xA;Установите &lt;TECHNOLOGY&gt;атлантидиевый привод&lt;&gt; на звездолёт&#xA;Используйте &lt;IMG&gt;TECHMENU&lt;&gt;, чтобы установить его в пустую ячейку &lt;STELLAR&gt;технологии&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PURPM2_MSG3B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Завершите установку &lt;TECHNOLOGY&gt;атлантидиевого привода&lt;&gt;.&#xA;Откройте инвентарь звездолета с помощью &lt;IMG&gt;INVENTORY&lt;&gt;.&#xA;Чтобы закрепить необходимые компоненты, используйте &lt;IMG&gt;PIN&lt;&gt;.&#xA;Собрать: %ITEM1% (%CURRENT1%/%AMOUNT1%)
                                { "Russian", "Завершите установку &lt;TECHNOLOGY&gt;атлантидиевого привода&lt;&gt;&#xA;Откройте инвентарь звездолёта с помощью &lt;IMG&gt;INVENTORY&lt;&gt;&#xA;Чтобы закрепить необходимые компоненты, используйте &lt;IMG&gt;PIN&lt;&gt;&#xA;Соберите %ITEM1%: %CURRENT1%/%AMOUNT1%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PURPM2_MSG3C" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Завершите установку &lt;TECHNOLOGY&gt;атлантидиевого привода&lt;&gt;.&#xA;Откройте инвентарь звездолета с помощью &lt;IMG&gt;INVENTORY&lt;&gt;.&#xA;Чтобы закрепить необходимые компоненты, используйте &lt;IMG&gt;PIN&lt;&gt;.&#xA;Продолжите установку с помощью &lt;IMG&gt;REPAIR&lt;&gt;.
                                { "Russian", "Завершите установку &lt;TECHNOLOGY&gt;атлантидиевого привода&lt;&gt;&#xA;Откройте инвентарь звездолёта с помощью &lt;IMG&gt;INVENTORY&lt;&gt;&#xA;Чтобы закрепить необходимые компоненты, используйте &lt;IMG&gt;PIN&lt;&gt;&#xA;Продолжите установку с помощью &lt;IMG&gt;REPAIR&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PURPM2_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Доберитесь до восстановленной системы &lt;SPECIAL&gt;%SYSTEM%&lt;&gt;.&#xA;&lt;SPECIAL&gt;Космическая Аномалия&lt;&gt; может последовать за вашим сигналом.&#xA;Находясь в космосе, откройте галактическую карту с помощью &lt;IMG&gt;QUICK_MENU&lt;&gt;.
                                { "Russian", "Доберитесь до восстановленной системы &lt;SPECIAL&gt;%SYSTEM%&lt;&gt;&#xA;&lt;SPECIAL&gt;Космическая Аномалия&lt;&gt; может последовать за вашим сигналом&#xA;Находясь в космосе, откройте галактическую карту с помощью &lt;IMG&gt;QUICK_MENU&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PURPM2_MSG4_TELE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Доберитесь до восстановленной системы &lt;SPECIAL&gt;%SYSTEM%&lt;&gt;.&#xA;&lt;SPECIAL&gt;Космическая Аномалия&lt;&gt; может последовать за вашим сигналом.&#xA;Используйте &lt;TECHNOLOGY&gt;телепорт&lt;&gt;, чтобы вернуться в соседнюю систему.
                                { "Russian", "Доберитесь до восстановленной системы &lt;SPECIAL&gt;%SYSTEM%&lt;&gt;&#xA;&lt;SPECIAL&gt;Космическая Аномалия&lt;&gt; может последовать за вашим сигналом&#xA;Используйте &lt;TECHNOLOGY&gt;телепорт&lt;&gt;, чтобы вернуться в соседнюю систему" },
                            }
                        },
                        --#endregion

                        --#region UI_PURPM3_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PURPM3_MSG0" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Закрепите Космическую Аномалию в этой &lt;SPECIAL&gt;лишенной гармонии системе&lt;&gt;.&#xA;Находясь в космосе, вызовите &lt;SPECIAL&gt;Аномалию&lt;&gt; через быстрое меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                -- Anchor the Space Anomaly to this &lt;SPECIAL&gt;dissonant system&lt;&gt;&#xA;In space, summon the &lt;SPECIAL&gt;Anomaly&lt;&gt; from the Quick Menu (&lt;IMG&gt;QUICK_MENU&lt;&gt;)
                                { "Russian", "Закрепите Космическую Аномалию в этой &lt;SPECIAL&gt;лишенной гармонии системе&lt;&gt;&#xA;Находясь в космосе, вызовите &lt;SPECIAL&gt;Аномалию&lt;&gt; из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PURPM3_MSG_RETURN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вернитесь в восстановленную систему &lt;SPECIAL&gt;%SYSTEM%&lt;&gt;.&#xA;Находясь в космосе, откройте галактическую карту через быстрое меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                { "Russian", "Вернитесь в восстановленную систему &lt;SPECIAL&gt;%SYSTEM%&lt;&gt;&#xA;Находясь в космосе, откройте галактическую карту из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PURPM3_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Космическая Аномалия закреплена в &lt;SPECIAL&gt;лишенном гармонии пространстве&lt;&gt;.&#xA;Сообщите &lt;TRANS_BUI&gt;Собранному Конструкту&lt;&gt; на борту о ее прибытии.
                                -- The Space Anomaly is anchored in &lt;SPECIAL&gt;dissonant space&lt;&gt;&#xA;Notify the &lt;TRANS_BUI&gt;Assembled Construct&lt;&gt; of their safe arrival
                                { "Russian", "Космическая Аномалия закреплена в &lt;SPECIAL&gt;лишенном гармонии пространстве&lt;&gt;&#xA;Сообщите &lt;TRANS_BUI&gt;Собранному Конструкту&lt;&gt; о её безопасном прибытии" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PURPM3_MSG1_NEXUS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Космическая Аномалия закреплена в &lt;SPECIAL&gt;лишенном гармонии пространстве&lt;&gt;.&#xA;Сообщите &lt;TRANS_BUI&gt;Собранному Конструкту&lt;&gt; на борту о ее прибытии.
                                { "Russian", "Космическая Аномалия закреплена в &lt;SPECIAL&gt;лишенном гармонии пространстве&lt;&gt;&#xA;Сообщите &lt;TRANS_BUI&gt;Собранному Конструкту&lt;&gt; о её безопасном прибытии" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PURPM3_MSG1B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поговорите со &lt;TRANS_TRA&gt;специалистом Поло&lt;&gt; по поводу &lt;SPECIAL&gt;несвязанной системы&lt;&gt;.&#xA;Находясь в космосе, вызовите &lt;SPECIAL&gt;Аномалию&lt;&gt; через быстрое меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                { "Russian", "Поговорите со &lt;TRANS_TRA&gt;специалистом Поло&lt;&gt; по поводу &lt;SPECIAL&gt;несвязанной системы&lt;&gt;&#xA;Находясь в космосе, вызовите &lt;SPECIAL&gt;Аномалию&lt;&gt; из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PURPM3_MSG1B_NEXUS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Космическая Аномалия закреплена в &lt;SPECIAL&gt;лишенном гармонии пространстве&lt;&gt;.&#xA;Поговорите со &lt;TRANS_TRA&gt;специалистом Поло&lt;&gt; по поводу несвязанной системы.
                                { "Russian", "Космическая Аномалия закреплена в &lt;SPECIAL&gt;лишенном гармонии пространстве&lt;&gt;&#xA;Поговорите со &lt;TRANS_TRA&gt;специалистом Поло&lt;&gt; по поводу несвязанной системы" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PURPM3_MSG1C" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поговорите с &lt;TRANS_EXP&gt;сущностью-священником Нада&lt;&gt; по поводу &lt;SPECIAL&gt;несвязанной системы&lt;&gt;.&#xA;Находясь в космосе, вызовите &lt;SPECIAL&gt;Аномалию&lt;&gt; через быстрое меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                { "Russian", "Поговорите с &lt;TRANS_EXP&gt;сущностью-священником Нада&lt;&gt; по поводу &lt;SPECIAL&gt;несвязанной системы&lt;&gt;&#xA;Находясь в космосе, вызовите &lt;SPECIAL&gt;Аномалию&lt;&gt; из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PURPM3_MSG1C_NEXUS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поло считает, что он может расширить доступ в систему %SYSTEM%.&#xA;Поговорите с &lt;TRANS_EXP&gt;сущностью-священником Нада&lt;&gt; по поводу несвязанной системы.
                                -- Polo believes they could expand access to %SYSTEM%&#xA;Consult with &lt;TRANS_EXP&gt;Priest Entity Nada&lt;&gt; about the unbound system
                                { "Russian", "Поло считает, что знает как попасть в систему %SYSTEM%&#xA;Поговорите с &lt;TRANS_EXP&gt;сущностью-священником Нада&lt;&gt; по поводу несвязанной системы" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PURPM3_MSG1D" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поло считает, что может расширить доступ к системе %SYSTEM%.&#xA;Поговорите со &lt;TRANS_TRA&gt;специалистом Поло&lt;&gt; о том, как можно привязать реальность.&#xA;Находясь в космосе, вызовите &lt;SPECIAL&gt;Аномалию&lt;&gt; через быстрое меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                { "Russian", "Поло считает, что знает как попасть в систему %SYSTEM%&#xA;Поговорите со &lt;TRANS_TRA&gt;специалистом Поло&lt;&gt; о том, как можно привязать реальность&#xA;Находясь в космосе, вызовите &lt;SPECIAL&gt;Аномалию&lt;&gt; из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PURPM3_MSG1D_NEXUS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поло считает, что может расширить доступ к системе %SYSTEM%.&#xA;Поговорите со &lt;TRANS_TRA&gt;специалистом Поло&lt;&gt; о том, как можно привязать реальность.
                                { "Russian", "Поло считает, что знает как попасть в систему %SYSTEM%&#xA;Поговорите со &lt;TRANS_TRA&gt;специалистом Поло&lt;&gt; о том, как можно привязать реальность" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PURPM3_MSG2A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Изготовьте &lt;SPECIAL&gt;якорь реальности&lt;&gt;, чтобы &lt;TECHNOLOGY&gt;привязать&lt;&gt; эту систему.&#xA;Собрать: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;Покиньте Космическую Аномалию, чтобы исследовать систему и найти ресурсы.
                                { "Russian", "Изготовьте &lt;SPECIAL&gt;якорь реальности&lt;&gt;, чтобы &lt;TECHNOLOGY&gt;привязать&lt;&gt; эту систему&#xA;Соберите %ITEM%: %CURRENT%/%AMOUNT%&#xA;Покиньте Космическую Аномалию, чтобы исследовать систему и найти ресурсы" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PURPM3_MSG2B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Изготовьте &lt;SPECIAL&gt;якорь реальности&lt;&gt;, чтобы &lt;TECHNOLOGY&gt;привязать&lt;&gt; эту систему.&#xA;Собрать: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;Исследуйте &lt;STELLAR&gt;планетарное воспоминание β&lt;&gt;, чтобы найти материалы.
                                { "Russian", "Изготовьте &lt;SPECIAL&gt;якорь реальности&lt;&gt;, чтобы &lt;TECHNOLOGY&gt;привязать&lt;&gt; эту систему&#xA;Соберите %ITEM%: %CURRENT%/%AMOUNT%&#xA;Исследуйте &lt;STELLAR&gt;планетарное воспоминание β&lt;&gt;, чтобы найти материалы" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PURPM3_MSG2C" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Изготовьте &lt;SPECIAL&gt;якорь реальности&lt;&gt;, чтобы &lt;TECHNOLOGY&gt;привязать&lt;&gt; эту систему.&#xA;Собрать: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;Находясь в космосе, сканируйте (&lt;IMG&gt;SCAN&lt;&gt;) планеты или спутники, чтобы найти доступные ресурсы.
                                { "Russian", "Изготовьте &lt;SPECIAL&gt;якорь реальности&lt;&gt;, чтобы &lt;TECHNOLOGY&gt;привязать&lt;&gt; эту систему&#xA;Соберите %ITEM%: %CURRENT%/%AMOUNT%&#xA;Находясь в космосе, сканируйте (&lt;IMG&gt;SCAN&lt;&gt;) планеты или спутники, чтобы найти доступные ресурсы" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PURPM3_MSG2D" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Изготовьте &lt;SPECIAL&gt;якорь реальности&lt;&gt;, чтобы &lt;TECHNOLOGY&gt;привязать&lt;&gt; эту систему.&#xA;Собрать: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;Используйте анализирующий визор (&lt;IMG&gt;AIM&lt;&gt;), чтобы найти: %ITEM%.
                                { "Russian", "Изготовьте &lt;SPECIAL&gt;якорь реальности&lt;&gt;, чтобы &lt;TECHNOLOGY&gt;привязать&lt;&gt; эту систему&#xA;Соберите %ITEM%: %CURRENT%/%AMOUNT%&#xA;Анализирующий визор (&lt;IMG&gt;AIM&lt;&gt;) поможет в поисках" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PURPM3_MSG2E" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Изготовьте &lt;SPECIAL&gt;якорь реальности&lt;&gt;, чтобы &lt;TECHNOLOGY&gt;привязать&lt;&gt; эту систему.&#xA;Изготавливайте предметы в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;).&#xA;Выберите пустую ячейку и начните процесс с помощью &lt;IMG&gt;PRODMENU&lt;&gt;.
                                { "Russian", "Изготовьте &lt;SPECIAL&gt;якорь реальности&lt;&gt;, чтобы &lt;TECHNOLOGY&gt;привязать&lt;&gt; эту систему&#xA;Изготавливайте предметы в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;)&#xA;Выберите пустую ячейку и начните процесс с помощью &lt;IMG&gt;PRODMENU&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PURPM3_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Разработанный Поло &lt;SPECIAL&gt;якорь реальности&lt;&gt; должен &lt;TECHNOLOGY&gt;привязать&lt;&gt; эту систему.&#xA;Покажите собранный якорь &lt;TRANS_TRA&gt;специалисту Поло&lt;&gt;.&#xA;Находясь в космосе, вызовите &lt;SPECIAL&gt;Аномалию&lt;&gt; через быстрое меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                { "Russian", "Разработанный Поло &lt;SPECIAL&gt;якорь реальности&lt;&gt; должен &lt;TECHNOLOGY&gt;привязать&lt;&gt; эту систему&#xA;Покажите собранный якорь &lt;TRANS_TRA&gt;специалисту Поло&lt;&gt;&#xA;Находясь в космосе, вызовите &lt;SPECIAL&gt;Аномалию&lt;&gt; из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PURPM3_MSG3_NEXUS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Разработанный Поло &lt;SPECIAL&gt;якорь реальности&lt;&gt; должен &lt;TECHNOLOGY&gt;привязать&lt;&gt; эту систему.&#xA;Покажите собранный якорь &lt;TRANS_TRA&gt;специалисту Поло&lt;&gt;.
                                { "Russian", "Разработанный Поло &lt;SPECIAL&gt;якорь реальности&lt;&gt; должен &lt;TECHNOLOGY&gt;привязать&lt;&gt; эту систему&#xA;Покажите собранный якорь &lt;TRANS_TRA&gt;специалисту Поло&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PURPM3_MSG3B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- У Нада есть предложение, как &lt;TECHNOLOGY&gt;привязать&lt;&gt; эту систему.&#xA;Поговорите с &lt;TRANS_EXP&gt;сущностью-священником Нада&lt;&gt; и узнайте, что он придумал.&#xA;Находясь в космосе, вызовите &lt;SPECIAL&gt;Аномалию&lt;&gt; через быстрое меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                { "Russian", "У Нада есть предложение, как &lt;TECHNOLOGY&gt;привязать&lt;&gt; эту систему&#xA;Поговорите с &lt;TRANS_EXP&gt;сущностью-священником Нада&lt;&gt; и узнайте о его плане&#xA;Находясь в космосе, вызовите &lt;SPECIAL&gt;Аномалию&lt;&gt; из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PURPM3_MSG3B_NEXUS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- У Нада есть предложение, как &lt;TECHNOLOGY&gt;привязать&lt;&gt; эту систему.&#xA;Поговорите с &lt;TRANS_EXP&gt;сущностью-священником Нада&lt;&gt; и узнайте, что он придумал.
                                { "Russian", "У Нада есть предложение, как &lt;TECHNOLOGY&gt;привязать&lt;&gt; эту систему&#xA;Поговорите с &lt;TRANS_EXP&gt;сущностью-священником Нада&lt;&gt; и узнайте, что он придумал" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PURPM3_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Принесите &lt;SPECIAL&gt;якорь реальности&lt;&gt; к &lt;TECHNOLOGY&gt;главному терминалу&lt;&gt; Нада.&#xA;Привяжите лишенную гармонии систему к остальной реальности.&#xA;Находясь в космосе, вызовите &lt;SPECIAL&gt;Аномалию&lt;&gt; через быстрое меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                { "Russian", "Принесите &lt;SPECIAL&gt;якорь реальности&lt;&gt; к &lt;TECHNOLOGY&gt;главному терминалу&lt;&gt; Нада&#xA;Привяжите лишенную гармонии систему к остальной реальности&#xA;Находясь в космосе, вызовите &lt;SPECIAL&gt;Аномалию&lt;&gt; из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PURPM3_MSG4_NEXUS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Принесите &lt;SPECIAL&gt;якорь реальности&lt;&gt; к &lt;TECHNOLOGY&gt;главному терминалу&lt;&gt; Нада.&#xA;Привяжите лишенную гармонии систему к остальной реальности.
                                { "Russian", "Принесите &lt;SPECIAL&gt;якорь реальности&lt;&gt; к &lt;TECHNOLOGY&gt;главному терминалу&lt;&gt; Нада&#xA;Привяжите лишенную гармонии систему к остальной реальности" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PURPM3_MSG5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Подготовьте &lt;SPECIAL&gt;аномальную площадку&lt;&gt;, чтобы создать мост между реальностями.&#xA;Изготавливайте предметы в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;).&#xA;Выберите пустую ячейку и начните процесс с помощью &lt;IMG&gt;PRODMENU&lt;&gt;.
                                { "Russian", "Подготовьте &lt;SPECIAL&gt;аномальную площадку&lt;&gt;, чтобы создать мост между реальностями&#xA;Изготавливайте предметы в инвентаре (&lt;IMG&gt;INVENTORY&lt;&gt;)&#xA;Выберите пустую ячейку и начните процесс с помощью &lt;IMG&gt;PRODMENU&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PURPM3_MSG5A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Подготовьте &lt;SPECIAL&gt;аномальную площадку&lt;&gt;, чтобы создать мост между реальностями.&#xA;Соберите материалы с астероидов: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;Добывайте ресурсы на астероидах с помощью оружия корабля (&lt;IMG&gt;SHIPFIRE&lt;&gt;).
                                { "Russian", "Подготовьте &lt;SPECIAL&gt;аномальную площадку&lt;&gt;, чтобы создать мост между реальностями&#xA;Соберите %ITEM%: %CURRENT%/%AMOUNT%&#xA;Добывайте ресурсы на астероидах с помощью орудий корабля (&lt;IMG&gt;SHIPFIRE&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PURPM3_MSG5B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Подготовьте &lt;SPECIAL&gt;аномальную площадку&lt;&gt;, чтобы создать мост между реальностями.&#xA;Найдите материалы на &lt;SPECIAL&gt;лишенных гармонии&lt;&gt; мирах: %ITEM% (%CURRENT%/%AMOUNT%).&#xA;Находясь в космосе, воспользуйтесь галактической картой (&lt;IMG&gt;QUICK_MENU&lt;&gt;), чтобы найти &lt;SPECIAL&gt;лишенные гармонии&lt;&gt; миры.
                                { "Russian", "Подготовьте &lt;SPECIAL&gt;аномальную площадку&lt;&gt;, чтобы создать мост между реальностями&#xA;Соберите %ITEM%: %CURRENT%/%AMOUNT%&#xA;Находясь в космосе, найдите &lt;SPECIAL&gt;лишенные гармонии&lt;&gt; миры на галактической карте (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PURPM3_MSG5C" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Подготовьте &lt;SPECIAL&gt;аномальную площадку&lt;&gt;, чтобы создать мост между реальностями.&#xA;Извлеките материалы на &lt;SPECIAL&gt;лишенных гармонии&lt;&gt; мирах: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;Неподалеку обнаружен лишенный гармонии мир.&#xA;Сканируйте миры из космоса (&lt;IMG&gt;SCAN&lt;&gt;), чтобы проверить данные планеты.
                                { "Russian", "Подготовьте &lt;SPECIAL&gt;аномальную площадку&lt;&gt;, чтобы создать мост между реальностями&#xA;Соберите %ITEM%: %CURRENT%/%AMOUNT%&#xA;Неподалеку обнаружен лишенный гармонии мир&#xA;Изучите данные планет, сканируя их из космоса (&lt;IMG&gt;SCAN&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PURPM3_MSG5D" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добудьте материалы для создания &lt;SPECIAL&gt;аномальной площадки&lt;&gt;: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;Используйте анализирующий визор (&lt;IMG&gt;AIM&lt;&gt;), чтобы найти &lt;SPECIAL&gt;резонатор диссонанса&lt;&gt;.
                                { "Russian", "Добудьте материалы для создания &lt;SPECIAL&gt;аномальной площадки&lt;&gt;&#xA;Соберите %ITEM%: %CURRENT%/%AMOUNT%&#xA;Найдите &lt;SPECIAL&gt;резонатор диссонанса&lt;&gt; с помощью анализирующего визора (&lt;IMG&gt;AIM&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PURPM3_MSG5D_OFF" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Подготовьте &lt;SPECIAL&gt;аномальную площадку&lt;&gt;.&#xA;Извлеките материалы: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы найти &lt;SPECIAL&gt;резонаторы диссонанса&lt;&gt; неподалеку.
                                { "Russian", "Подготовьте &lt;SPECIAL&gt;аномальную площадку&lt;&gt;&#xA;Соберите %ITEM%: %CURRENT%/%AMOUNT%&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы найти &lt;SPECIAL&gt;резонаторы диссонанса&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PURPM3_MSG5D_SWAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Подготовьте &lt;SPECIAL&gt;аномальную площадку&lt;&gt;.&#xA;Извлеките материалы: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;Выберите &lt;STELLAR&gt;разведку цели&lt;&gt; (&lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;), чтобы найти &lt;SPECIAL&gt;резонаторы диссонанса&lt;&gt; поблизости.
                                { "Russian", "Подготовьте &lt;SPECIAL&gt;аномальную площадку&lt;&gt;&#xA;Соберите %ITEM%: %CURRENT%/%AMOUNT%&#xA;Выберите &lt;STELLAR&gt;разведку цели&lt;&gt; (&lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;), чтобы найти &lt;SPECIAL&gt;резонаторы диссонанса&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PURPM3_MSG5D_SURVEY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Подготовьте &lt;SPECIAL&gt;аномальную площадку&lt;&gt;.&#xA;Извлеките материалы: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;&lt;TECHNOLOGY&gt;Разведка цели&lt;&gt; поможет найти &lt;SPECIAL&gt;резонаторы диссонанса&lt;&gt; неподалеку.
                                { "Russian", "Подготовьте &lt;SPECIAL&gt;аномальную площадку&lt;&gt;&#xA;Соберите %ITEM%: %CURRENT%/%AMOUNT%&#xA;&lt;TECHNOLOGY&gt;Разведка цели&lt;&gt; поможет найти &lt;SPECIAL&gt;резонаторы диссонанса&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PURPM3_MSG5D_CAR" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Подготовьте &lt;SPECIAL&gt;аномальную площадку&lt;&gt;.&#xA;Извлеките материалы: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;&lt;TECHNOLOGY&gt;Разведка цели&lt;&gt; поможет найти &lt;SPECIAL&gt;резонаторы диссонанса&lt;&gt; неподалеку.&#xA;Чтобы подтвердить направление разведки, покиньте свой транспорт.
                                { "Russian", "Подготовьте &lt;SPECIAL&gt;аномальную площадку&lt;&gt;&#xA;Соберите %ITEM%: %CURRENT%/%AMOUNT%&#xA;&lt;TECHNOLOGY&gt;Разведка цели&lt;&gt; поможет найти &lt;SPECIAL&gt;резонаторы диссонанса&lt;&gt;&#xA;Чтобы подтвердить направление разведки, покиньте транспорт" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PURPM3_MSG5E" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Совместите &lt;SPECIAL&gt;аномальную площадку&lt;&gt; с &lt;TECHNOLOGY&gt;главным терминалом&lt;&gt;.&#xA;Воспользуйтесь площадкой, чтобы создать мост между реальностями.&#xA;Находясь в космосе, вызовите &lt;SPECIAL&gt;Аномалию&lt;&gt; через быстрое меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)
                                { "Russian", "Совместите &lt;SPECIAL&gt;аномальную площадку&lt;&gt; с &lt;TECHNOLOGY&gt;главным терминалом&lt;&gt;&#xA;Воспользуйтесь площадкой, чтобы создать мост между реальностями&#xA;Находясь в космосе, вызовите &lt;SPECIAL&gt;Аномалию&lt;&gt; из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PURPM3_MSG5E_NEXUS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Совместите &lt;SPECIAL&gt;аномальную площадку&lt;&gt; с &lt;TECHNOLOGY&gt;главным терминалом&lt;&gt;.&#xA;Воспользуйтесь площадкой, чтобы создать мост между реальностями.
                                { "Russian", "Совместите &lt;SPECIAL&gt;аномальную площадку&lt;&gt; с &lt;TECHNOLOGY&gt;главным терминалом&lt;&gt;&#xA;Воспользуйтесь площадкой, чтобы создать мост между реальностями" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PURPM3_MSG6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Архитектура реальности изменилась.&#xA;Система %SYSTEM% теперь привязана ко вселенной.&#xA;Вернитесь в космос и свяжитесь с &lt;TRANS_BUI&gt;Ябли-α&lt;&gt;.
                                { "Russian", "Архитектура реальности изменилась&#xA;Система %SYSTEM% теперь привязана ко вселенной&#xA;Вернитесь в космос и свяжитесь с &lt;TRANS_BUI&gt;Ябли-α&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MARKED_PLANET_ACTION_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Убрать местоположение планеты из системы навигации.
                                -- Unpin %PLANETCLASS% location from navigation systems
                                { "Russian", "Убрать местоположение из системы навигации" },
                            }
                        },

                        -- т.к. все переделано на лад планета/луна/малая планета,
                        -- то нужен синоним в женском роде
                        --#region DISC_TYPE_GIANT
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "DISC_TYPE_GIANT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Гигантск.
                                { "Russian", "Громадина" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "DISC_TYPE_GIANT_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- гигантск.
                                { "Russian", "громадина" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "DISC_TYPE_GIANT_U" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ГИГАНТСК.
                                { "Russian", "ГРОМАДИНА" },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_GALMAP_GAS_GIANT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- // Газовый гигант
                                -- // Gas Giant
                                { "Russian", " // Газовый гигант" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RUINEDHOT2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Опаленная реликвия
                                -- Scorched Relic
                                { "Russian", "Опалённая реликвия" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RUINEDHOT3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Потеряно в огне
                                -- Lost to Fire
                                { "Russian", "Потерянная в огне" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RUINEDCOLD3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Замерзшая реликвия
                                -- Frozen Relic
                                { "Russian", "Замёрзшая реликвия" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FOS_HEAD_AN_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- череп хищника
                                -- Predator Skull
                                { "Russian", "Череп хищника" },
                            }
                        },

                        --#region UI_FOS_LIMBS_B_NAME
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FOS_LIMBS_B_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ОКАМЕНЕВШЕЕ КОПЫТНОЕ ЖИВОТНОЕ
                                -- UNGULATE FOSSIL
                                { "Russian", "ОСТАНКИ КОПЫТНОГО" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FOS_LIMBS_B_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Окаменевшее копытное животное
                                -- Ungulate Fossil
                                { "Russian", "Останки копытного" },
                            }
                        },
                        --#endregion

                        --#region UI_FOS_LIMBS_J_NAME
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FOS_LIMBS_J_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ОКАМЕНЕВШИЕ ОБРУБКИ КРЫЛЬЕВ
                                -- FOSSILISED WING STUBS
                                { "Russian", "ОСТАНКИ КРЫЛЬЕВ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FOS_LIMBS_J_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Окаменевшие обрубки крыльев
                                -- Fossilised Wing Stubs
                                { "Russian", "Останки крыльев" },
                            }
                        },
                        --#endregion

                        --#region UI_FOS_BI_BODY_AD_NAME
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FOS_BI_BODY_AD_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ДЛИННАЯ РАСШИРЯЮЩАЯСЯ ГРУДНАЯ КЛЕТКА
                                { "Russian", "ДЛИННАЯ РАСКЛЁШЕННАЯ ГРУДНАЯ КЛЕТКА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FOS_BI_BODY_AD_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Длинная расширяющаяся грудная клетка
                                { "Russian", "Длинная расклёшенная грудная клетка" },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PLAYER_TITLE_FOSSILS2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Окаменевш. %NAME%
                                -- Fossilised %NAME%
                                { "Russian", "Окаменевший %NAME%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RUINEDRAD2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Полностью разрушилось
                                -- Claimed by Decay
                                { "Russian", "Полностью разрушилась" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BUILD_GRID_BONES" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КОСТЕЙ
                                -- PLACEABLE FOSSILS
                                { "Russian", "ОКАМЕНЕЛЫЕ КОСТИ" },
                            }
                        },

                        --#region НАСТРОЙКИ ИГРЫ
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FISHING_LONG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- расслабленная
                                -- Relaxed
                                { "Russian", "Расслабленная" },
                            }
                        },
                        --#endregion

                        --#region UI_FISH_BIOME_.*_DESC
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FISH_BIOME_ALL_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Это &lt;STELLAR&gt;%SIZE%&lt;&gt; водное существо, обитающее в различных биомах по всей галактике.
                                { "Russian", "&lt;STELLAR&gt;%SIZE%&lt;&gt; водное существо, обитающее в различных биомах по всей галактике." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FISH_BIOME_LUSH_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Это &lt;STELLAR&gt;%SIZE%&lt;&gt; водное существо, обитающее на лесистых, влажных планетах и планетах с умеренным климатом.
                                { "Russian", "&lt;STELLAR&gt;%SIZE%&lt;&gt; водное существо, обитающее на лесистых, влажных планетах и планетах с умеренным климатом." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FISH_BIOME_HOT_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Это &lt;STELLAR&gt;%SIZE%&lt;&gt; водное существо, адаптировавшееся к горячим водам высокотемпературных планет.
                                { "Russian", "&lt;STELLAR&gt;%SIZE%&lt;&gt; водное существо, адаптировавшееся к горячим водам высокотемпературных планет." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FISH_BIOME_COLD_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Это &lt;STELLAR&gt;%SIZE%&lt;&gt; водное существо, обитающее в ледяных холодных водах.
                                { "Russian", "&lt;STELLAR&gt;%SIZE%&lt;&gt; водное существо, обитающее в ледяных холодных водах." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FISH_BIOME_RAD_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Это &lt;STELLAR&gt;%SIZE%&lt;&gt; водное существо, обитающее в водах радиоактивных миров.
                                { "Russian", "&lt;STELLAR&gt;%SIZE%&lt;&gt; водное существо, обитающее в водах радиоактивных миров." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FISH_BIOME_TOX_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Это &lt;STELLAR&gt;%SIZE%&lt;&gt; водное существо, обитающее в ядовитых и кислых средах.
                                { "Russian", "&lt;STELLAR&gt;%SIZE%&lt;&gt; водное существо, обитающее в ядовитых и кислых средах." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FISH_BIOME_DUST_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Это &lt;STELLAR&gt;%SIZE%&lt;&gt; водное существо, которое выживает в скудных водах своих сухих и негостеприимных планет.
                                { "Russian", "&lt;STELLAR&gt;%SIZE%&lt;&gt; водное существо, которое выживает в скудных водах своих сухих и негостеприимных планет." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FISH_BIOME_ODD_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Это &lt;STELLAR&gt;%SIZE%&lt;&gt; водное существо, обитающее в пугающих водах проклятых миров.
                                { "Russian", "&lt;STELLAR&gt;%SIZE%&lt;&gt; водное существо, обитающее в пугающих водах проклятых миров." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FISH_BIOME_GAS_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Это &lt;STELLAR&gt;%SIZE%&lt;&gt; — это водное существо, которое каким-то образом научилось выживать в суровых водоемах, образующихся в глубинах газовых гигантов.
                                { "Russian", "&lt;STELLAR&gt;%SIZE%&lt;&gt; водное существо, которое каким-то образом научилось выживать в суровых водоемах, образующихся в глубинах газовых гигантов." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FISH_BIOME_DEEP_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Это &lt;STELLAR&gt;%SIZE%&lt;&gt; — это водное существо, которое обитает в глубоких мутных водах, покрывающих поверхность их океанических планет.
                                { "Russian", "&lt;STELLAR&gt;%SIZE%&lt;&gt; водное существо, которое обитает в глубоких мутных водах, покрывающих поверхность их океанических планет." },
                            }
                        },
                        --#endregion

                        -- не влазеет, урезается на "прежде чем он присоединится к"
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FISH_DEEP_LEG_XL_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- «Такой молодой и хрупкий, несмотря на проведенные под волнами годы. И все же должны пройти еще тысячи лет, прежде чем он присоединится к великому стаду среди звезд...»
                                -- &quot;So young and fragile, despite its years beneath the waves. And yet thousands more years must pass before it joins the great herd in the stars...&quot;
                                { "Russian", "«Такой молодой и хрупкий, несмотря на годы под волнами. Пройдут тысячи лет, прежде чем он присоединится к великому стаду среди звёзд...»" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FOOD_UNIT_LABEL_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поместите съедобные продукты в систему управления нутриентами.
                                -- Insert edible products into nutrient management system
                                { "Russian", "Поместите съедобные продукты в систему управления нутриентами" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FOOD_UNIT_WAIT_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Выберите пункт &lt;COMMODITY&gt;«Начать поглощение»&lt;&gt;, чтобы автоматически усваивать вводимые ингредиенты.&#xA;&#xA;Следующий источник нутриентов: &lt;%NAMETAG%&gt;%NAME%&lt;&gt;&#xA;Длительность: &lt;%TIMETAG%&gt;%TIME%&lt;&gt;&#xA;Эффект: &lt;%EFFECTTAG%&gt;%EFFECT%&lt;&gt;
                                { "Russian", "Выберите пункт &lt;COMMODITY&gt;«Начать поглощение»&lt;&gt;, чтобы автоматически усваивать вводимые ингредиенты.&#xA;&#xA;Источник: &lt;%NAMETAG%&gt;%NAME%&lt;&gt;&#xA;Длительность: &lt;%TIMETAG%&gt;%TIME%&lt;&gt;&#xA;Эффект: &lt;%EFFECTTAG%&gt;%EFFECT%&lt;&gt;" },
                            }
                        },

                        --#region UI_FOOD_FORMAT
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FOOD_FORMAT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %DESC%&#xA;&#xA;Профиль вкуса: &lt;STELLAR&gt;%FLAVOUR1%&lt;&gt;, &lt;STELLAR&gt;%FLAVOUR2%&lt;&gt;, &lt;STELLAR&gt;%FLAVOUR3%&lt;&gt;.&#xA;Сложность рецепта: &lt;STELLAR&gt;%NUM%%&lt;&gt;.
                                -- %DESC%&#xA;&#xA;Flavour profile: &lt;STELLAR&gt;%FLAVOUR1%&lt;&gt;, &lt;STELLAR&gt;%FLAVOUR2%&lt;&gt;, &lt;STELLAR&gt;%FLAVOUR3%&lt;&gt;.&#xA;Recipe Complexity: &lt;STELLAR&gt;%NUM%%&lt;&gt;
                                { "Russian", "%DESC%&#xA;&#xA;На вкус: &lt;STELLAR&gt;%FLAVOUR1%&lt;&gt;, &lt;STELLAR&gt;%FLAVOUR2%&lt;&gt;, &lt;STELLAR&gt;%FLAVOUR3%&lt;&gt;.&#xA;Сложность рецепта: &lt;STELLAR&gt;%NUM%%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FOOD_FORMAT_WIKI" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %DESC%&#xA;&#xA;Профиль вкуса: &lt;STELLAR&gt;%FLAVOUR1%&lt;&gt;, &lt;STELLAR&gt;%FLAVOUR2%&lt;&gt;, &lt;STELLAR&gt;%FLAVOUR3%&lt;&gt;.&#xA;Сложность рецепта: &lt;STELLAR&gt;%NUM%%&lt;&gt;.&#xA;&#xA;Эффект переработчика нутриентов: &lt;TECHNOLOGY&gt;%EFFECT%&lt;&gt; на &lt;STELLAR&gt;%TIME%&lt;&gt;.
                                -- %DESC%&#xA;&#xA;Flavour profile: &lt;STELLAR&gt;%FLAVOUR1%&lt;&gt;, &lt;STELLAR&gt;%FLAVOUR2%&lt;&gt;, &lt;STELLAR&gt;%FLAVOUR3%&lt;&gt;.&#xA;Recipe Complexity: &lt;STELLAR&gt;%NUM%%&lt;&gt;&#xA;&#xA;Nutrient Processor effect: &lt;TECHNOLOGY&gt;%EFFECT%&lt;&gt; for &lt;STELLAR&gt;%TIME%&lt;&gt;
                                { "Russian", "%DESC%&#xA;&#xA;На вкус: &lt;STELLAR&gt;%FLAVOUR1%&lt;&gt;, &lt;STELLAR&gt;%FLAVOUR2%&lt;&gt;, &lt;STELLAR&gt;%FLAVOUR3%&lt;&gt;.&#xA;Сложность рецепта: &lt;STELLAR&gt;%NUM%%&lt;&gt;&#xA;&#xA;Эффект переработчика нутриентов: &lt;TECHNOLOGY&gt;%EFFECT%&lt;&gt; на &lt;STELLAR&gt;%TIME%&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FOOD_FORMAT_EFFECT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %DESC%&#xA;&#xA;Эффект переработчика нутриентов: &lt;TECHNOLOGY&gt;%EFFECT%&lt;&gt; на &lt;STELLAR&gt;%TIME%&lt;&gt;.
                                -- %DESC%&#xA;&#xA;Nutrient Processor effect: &lt;TECHNOLOGY&gt;%EFFECT%&lt;&gt; for &lt;STELLAR&gt;%TIME%&lt;&gt;
                                { "Russian", "%DESC%&#xA;&#xA;Эффект переработчика нутриентов: &lt;TECHNOLOGY&gt;%EFFECT%&lt;&gt; на &lt;STELLAR&gt;%TIME%&lt;&gt;" },
                            }
                        },
                        --#endregion

                        -- по картинке похожа на макрелещуку
                        -- по типу воды не совсем верно, деление: речные, морские, пресноводные
                        --#region UI_FISH_COLD_RARE_M1_NAME
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FISH_COLD_RARE_M1_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- СОЛЕНАЯ МАКРЕЛЕЩУКА
                                -- BRINESKIPPER
                                { "Russian", "МОРСКАЯ МАКРЕЛЕЩУКА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FISH_COLD_RARE_M1_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соленая макрелещука
                                { "Russian", "Морская макрелещука" },
                            }
                        },
                        --#endregion

                        --#region UI_FISH_FOOD_LARGE_2_NAME
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FISH_FOOD_LARGE_2_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- СОЛЕНАЯ РЫБА
                                -- BRINED FLESH
                                { "Russian", "СОЛЁНАЯ РЫБА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FISH_FOOD_LARGE_2_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соленая рыба
                                { "Russian", "Солёная рыба" },
                            }
                        },
                        --#endregion

                        --#region АРХИВ ЗВЕЗДОЛЁТОВ
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ARCHIVE_SHIP_OPT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Управление архивом звездолетов
                                -- Manage Starship Archive
                                { "Russian", "Управление архивом звездолётов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ARCHIVE_SHIP_ACTIVE_HEADER" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- АКТИВНЫЕ ЗВЕЗДОЛЕТЫ
                                -- ACTIVE STARSHIPS
                                { "Russian", "АКТИВНЫЕ ЗВЕЗДОЛЁТЫ" },
                            }
                        },
                        -- обрезается на "для" (37 букв)
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ARCHIVE_SHIP_STORE_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Позволяет архивировать звездолеты для долгосрочного хранения.
                                -- Archive starships for long-term storage
                                { "Russian", "Архивируйте звездолёты для хранения" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ARCHIVE_SHIP_STORE_EMPTY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Архивированные звездолеты будут помещены на долгосрочное хранение в холодном трюме грузового судна.&#xA;&#xA;Архивированные корабли сохранят все установленные &lt;TECHNOLOGY&gt;технологии&lt;&gt; для повторного использования. Излишки &lt;STELLAR&gt;груза&lt;&gt; будут уничтожены.
                                -- Archived starships will be placed into long-term storage in the freighter's cold-cargo hold.&#xA;&#xA;Stored ships keep all installed &lt;TECHNOLOGY&gt;technology&lt;&gt; ready for redeployment. Any surplus &lt;STELLAR&gt;cargo&lt;&gt; will be destroyed.
                                { "Russian", "Архивированные звездолёты будут помещены на долгосрочное хранение в холодном трюме грузового судна.&#xA;&#xA;Архивированные корабли сохранят все установленные &lt;TECHNOLOGY&gt;технологии&lt;&gt; для повторного использования. Излишки &lt;STELLAR&gt;груза&lt;&gt; будут уничтожены." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ARCHIVE_SHIP_PRIMARY_POP_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Текущий основной звездолет
                                -- Current Primary Starship
                                { "Russian", "Текущий основной звездолёт" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ARCHIVE_SHIP_STORE_POP_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Резервный звездолет
                                -- Decommissioned Starship
                                { "Russian", "Резервный звездолёт" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ARCHIVE_SHIP_ACTIVE_POP_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Активный звездолет
                                -- Active Starship
                                { "Russian", "Активный звездолёт" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ARCHIVE_SHIP_POP_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Статус звездолета: &lt;STELLAR&gt;используется в действующем флоте&lt;&gt;.&#xA;&#xA;Корабли, помещенные на долгосрочное хранение, нельзя использовать во время странствий. Так &lt;STELLAR&gt;освобождается место&lt;&gt; для новых звездолетов. Их установленные &lt;TECHNOLOGY&gt;технологии&lt;&gt; сохраняются, но груз удаляется.&#xA;&#xA;Звездолеты, помещенные на долгосрочное хранение, можно &lt;STELLAR&gt;восстановить&lt;&gt; и вернуть в действующий флот позднее.
                                -- Starship status: &lt;STELLAR&gt;commissioned in active fleet&lt;&gt;.&#xA;&#xA;Ships placed in long-term storage are unavailable for use during your travels, &lt;STELLAR&gt;freeing up space&lt;&gt; to aquire additional starships. Their installed &lt;TECHNOLOGY&gt;technology&lt;&gt; is preserved, but all cargo is removed.&#xA;&#xA;Starships in your long-term storage hangar remain available for &lt;STELLAR&gt;restoration&lt;&gt; to your active fleet at a later date.
                                { "Russian", "Статус звездолёта: &lt;STELLAR&gt;используется в действующем флоте&lt;&gt;.&#xA;&#xA;Корабли, помещенные на долгосрочное хранение, нельзя использовать во время странствий. Так &lt;STELLAR&gt;освобождается место&lt;&gt; для новых звездолётов. Их установленные &lt;TECHNOLOGY&gt;технологии&lt;&gt; сохраняются, но груз удаляется.&#xA;&#xA;Звездолёты, помещенные на долгосрочное хранение, можно &lt;STELLAR&gt;восстановить&lt;&gt; и вернуть в действующий флот позднее." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ARCHIVE_SHIP_PRIMARY_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Статус звездолета: &lt;TRADEABLE&gt;текущий основной звездолет&lt;&gt;.&#xA;&#xA;Корабли, помещенные на долгосрочное хранение, нельзя использовать во время странствий. Так &lt;STELLAR&gt;освобождается место&lt;&gt; для новых звездолетов. Их установленные &lt;TECHNOLOGY&gt;технологии&lt;&gt; сохраняются, но груз удаляется.&#xA;&#xA;Звездолеты, помещенные на долгосрочное хранение, можно &lt;STELLAR&gt;восстановить&lt;&gt; и вернуть в действующий флот позднее.
                                -- Starship status: &lt;TRADEABLE&gt;current primary starship&lt;&gt;.&#xA;&#xA;Ships placed in long-term storage are unavailable for use during your travels, &lt;STELLAR&gt;freeing up space&lt;&gt; to aquire additional starships. Their installed &lt;TECHNOLOGY&gt;technology&lt;&gt; is preserved, but all cargo is removed.&#xA;&#xA;Starships in your long-term storage hangar remain available for &lt;STELLAR&gt;restoration&lt;&gt; to your active fleet at a later date.
                                { "Russian", "Статус звездолёта: &lt;TRADEABLE&gt;текущий основной звездолёт&lt;&gt;.&#xA;&#xA;Корабли, помещенные на долгосрочное хранение, нельзя использовать во время странствий. Так &lt;STELLAR&gt;освобождается место&lt;&gt; для новых звездолётов. Их установленные &lt;TECHNOLOGY&gt;технологии&lt;&gt; сохраняются, но груз удаляется.&#xA;&#xA;Звездолёты, помещенные на долгосрочное хранение, можно &lt;STELLAR&gt;восстановить&lt;&gt; и вернуть в действующий флот позднее." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ARCHIVE_SHIP_STORE_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Статус звездолета: &lt;TECHNOLOGY&gt;разобран для долгосрочного хранения&lt;&gt;.&#xA;&#xA;Корабли, помещенные на долгосрочное хранение, нельзя использовать во время странствий. Так &lt;STELLAR&gt;освобождается место&lt;&gt; для новых звездолетов. Их установленные &lt;TECHNOLOGY&gt;технологии&lt;&gt; сохраняются, но груз удаляется.&#xA;&#xA;Звездолеты, помещенные на долгосрочное хранение, можно &lt;STELLAR&gt;восстановить&lt;&gt; и вернуть в действующий флот позднее.
                                -- Starship status: &lt;TECHNOLOGY&gt;stripped for long-term storage&lt;&gt;.&#xA;&#xA;Ships placed in long-term storage are unavailable for use during your travels, &lt;STELLAR&gt;freeing up space&lt;&gt; to aquire additional starships. Their installed &lt;TECHNOLOGY&gt;technology&lt;&gt; is preserved, but all cargo is removed.&#xA;&#xA;Starships in your long-term storage hangar remain available for &lt;STELLAR&gt;restoration&lt;&gt; to your active fleet at a later date.
                                { "Russian", "Статус звездолёта: &lt;TECHNOLOGY&gt;разобран для долгосрочного хранения&lt;&gt;.&#xA;&#xA;Корабли, помещенные на долгосрочное хранение, нельзя использовать во время странствий. Так &lt;STELLAR&gt;освобождается место&lt;&gt; для новых звездолётов. Их установленные &lt;TECHNOLOGY&gt;технологии&lt;&gt; сохраняются, но груз удаляется.&#xA;&#xA;Звездолёты, помещенные на долгосрочное хранение, можно &lt;STELLAR&gt;восстановить&lt;&gt; и вернуть в действующий флот позднее." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ARCHIVE_SHIP_ACTIVE_BTN_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поместить звездолет на долгосрочное хранение.
                                -- Place starship in long-term storage
                                { "Russian", "Поместить звездолёт на долгосрочное хранение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ARCHIVE_SHIP_STORE_BTN_ERR" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Нет доступных ячеек звездолетов
                                -- No starship slots available
                                { "Russian", "Нет свободных ячеек для звездолётов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ARCHIVE_SHIP_STORE_ERR_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Нельзя восстановить звездолет &lt;IMG&gt;SLASH&lt;&gt; Активный флот переполнен
                                -- Cannot restore starship &lt;IMG&gt;SLASH&lt;&gt; Active fleet at max capacity
                                { "Russian", "Сначала освободите место во флоте" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ARCHIVE_SHIP_PRIME_BTN_ERR" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Нельзя заархивировать единственный звездолет
                                -- Cannot archive only starship
                                { "Russian", "Нельзя архивировать единственный звездолёт" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ARCHIVE_SHIP_PRIME_BTN_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Внимание &lt;IMG&gt;SLASH&lt;&gt; Нельзя поместить единственный звездолет на долгосрочное хранение
                                -- Warning &lt;IMG&gt;SLASH&lt;&gt; Cannot place only starship into long-term storage
                                { "Russian", "Невозможно архивировать единственный звездолёт" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ARCHIVE_SHIP_DEST_BTN_HEAD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- УНИЧТОЖИТЬ ЗВЕЗДОЛЕТ
                                -- DESTROY STARSHIP
                                { "Russian", "УНИЧТОЖИТЬ ЗВЕЗДОЛЁТ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ARCHIVE_SHIP_DEST_BTN_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Навсегда удалить звездолет из коллекции.
                                -- Permanently remove starship from collection
                                { "Russian", "Навсегда удалить звездолёт из коллекции" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ARCHIVE_SHIP_DEST_WARNING" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;FUEL&gt;Внимание&lt;&gt;: звездолет «%NAME%» будет навсегда уничтожен.&#xA;&#xA;Продолжить?
                                -- &lt;FUEL&gt;Warning&lt;&gt;: this will irretrievably destroy the starship %NAME%.&#xA;&#xA;Do you wish to continue?
                                { "Russian", "&lt;FUEL&gt;ВНИМАНИЕ!&lt;&gt; Звездолёт &lt;STELLAR&gt;%NAME%&lt;&gt; будет навсегда уничтожен.&#xA;&#xA;Продолжить?" },
                            }
                        },
                        --#endregion

                        --#region UI_FISH_FOOD_MIX_NAME
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FISH_FOOD_MIX_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- СОЛЕНОЕ АССОРТИ
                                { "Russian", "СОЛЁНОЕ АССОРТИ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FISH_FOOD_MIX_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соленое ассорти
                                { "Russian", "Солёное ассорти" },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ARCHIVE_WEAP_STORE_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Позволяет архивировать мультитулы для долгосрочного хранения.
                                -- Archive Multi-Tools for long-term storage
                                { "Russian", "Архивируйте мультитулы для хранения" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ARCHIVE_WEAP_POP_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Статус мультитула: &lt;TRADEABLE&gt;активен&lt;&gt;.&#xA;&#xA;Мультитулы, помещенные на долгосрочное хранение, нельзя использовать во время странствий. Так &lt;STELLAR&gt;освобождается место&lt;&gt; для новых мультитулов.&#xA;&#xA;Но они сами и всех их &lt;TECHNOLOGY&gt;установленные технологии&lt;&gt; сохраняются, их можно вернуть в список активного снаряжения позднее.
                                -- This Multi-Tool is currently &lt;TRADEABLE&gt;active&lt;&gt;.&#xA;&#xA;Multi-Tools placed in long-term storage are unavailable for use during your travels, freeing up space for &lt;STELLAR&gt;additional Multi-Tools&lt;&gt;.&#xA;&#xA;However, they and all their &lt;TECHNOLOGY&gt;installed technology&lt;&gt; remain available for restoration to your active equipment list at a later date.
                                { "Russian", "Статус мультитула: &lt;TRADEABLE&gt;активен&lt;&gt;.&#xA;&#xA;Мультитулы, помещенные на долгосрочное хранение, нельзя использовать во время странствий. Так &lt;STELLAR&gt;освобождается место&lt;&gt; для новых мультитулов.&#xA;&#xA;Однако, сами мультитулы и все их &lt;TECHNOLOGY&gt;установленные технологии&lt;&gt; сохраняются. Их можно вернуть в список активного снаряжения позднее." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ARCHIVE_WEAP_PRIMARY_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Это ваш &lt;TRADEABLE&gt;текущий основной мультитул&lt;&gt;.&#xA;&#xA;Мультитулы, помещенные на долгосрочное хранение, нельзя использовать во время странствий. Так &lt;STELLAR&gt;освобождается место&lt;&gt; для новых мультитулов.&#xA;&#xA;Но они сами и всех их &lt;TECHNOLOGY&gt;установленные технологии&lt;&gt; сохраняются, их можно вернуть в список активного снаряжения позднее.
                                -- This is your &lt;TRADEABLE&gt;current primary Multi-Tool&lt;&gt;.&#xA;&#xA;Multi-Tools placed in long-term storage are unavailable for use during your travels, freeing up space for &lt;STELLAR&gt;additional Multi-Tools&lt;&gt;.&#xA;&#xA;However, they and all their &lt;TECHNOLOGY&gt;installed technology&lt;&gt; remain available for restoration to your active equipment list at a later date.
                                { "Russian", "Это ваш &lt;TRADEABLE&gt;текущий основной мультитул&lt;&gt;.&#xA;&#xA;Мультитулы, помещенные на долгосрочное хранение, нельзя использовать во время странствий. Так &lt;STELLAR&gt;освобождается место&lt;&gt; для новых мультитулов.&#xA;&#xA;Однако, сами мультитулы и все их &lt;TECHNOLOGY&gt;установленные технологии&lt;&gt; сохраняются. Их можно вернуть в список активного снаряжения позднее." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ARCHIVE_WEAP_STORE_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Статус мультитула: &lt;TECHNOLOGY&gt;отправлен в резерв&lt;&gt;.&#xA;&#xA;Мультитулы, помещенные на долгосрочное хранение, нельзя использовать во время странствий. Так &lt;STELLAR&gt;освобождается место&lt;&gt; для новых мультитулов.&#xA;&#xA;Но они сами и всех их &lt;TECHNOLOGY&gt;установленные технологии&lt;&gt; сохраняются, их можно вернуть в список активного снаряжения позднее.
                                -- This Multi-Tool is currently &lt;TECHNOLOGY&gt;decommissioned&lt;&gt;.&#xA;&#xA;Multi-Tools placed in long-term storage are unavailable for use during your travels, freeing up space for &lt;STELLAR&gt;additional Multi-Tools&lt;&gt;.&#xA;&#xA;However, they and all their &lt;TECHNOLOGY&gt;installed technology&lt;&gt; remain available for restoration to your active equipment list at a later date.
                                { "Russian", "Статус мультитула: &lt;TECHNOLOGY&gt;отправлен на склад&lt;&gt;.&#xA;&#xA;Мультитулы, помещенные на долгосрочное хранение, нельзя использовать во время странствий. Так &lt;STELLAR&gt;освобождается место&lt;&gt; для новых мультитулов.&#xA;&#xA;Однако, сами мультитулы и все их &lt;TECHNOLOGY&gt;установленные технологии&lt;&gt; сохраняются. Их можно вернуть в список активного снаряжения позднее." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ARCHIVE_WEAP_STORE_BTN_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Приготовьте мультитул для активного использования
                                -- Prepare Multi-Tool for active use
                                { "Russian", "Подготовить мультитул для активного использования" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ARCHIVE_WEAP_DEST_BTN_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Навсегда удалить мультитул из коллекции.
                                -- Permanently remove Multi-Tool from collection
                                { "Russian", "Навсегда удалить мультитул из коллекции" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ARCHIVE_WEAP_ACTIVE_BTN_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поместить мультитул на долгосрочное хранение.
                                -- Place Multi-Tool in long-term storage
                                { "Russian", "Поместить мультитул на долгосрочное хранение" },
                            }
                        },

                        --#region UI_INV_SORT_BY_.*_TIP
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_INV_SORT_BY_VALUE_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Перебрать инвентарь по стоимости
                                { "Russian", "Сортировка инвентаря по стоимости" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_INV_SORT_BY_TYPE_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Перебрать инвентарь по типу
                                { "Russian", "Сортировка инвентаря по типу" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_INV_SORT_BY_COLOUR_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Перебрать инвентарь по цвету
                                { "Russian", "Сортировка инвентаря по цвету" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_INV_SORT_BY_NAME_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Перебрать инвентарь по названию
                                { "Russian", "Сортировка инвентаря по названию" },
                            }
                        },
                        --#endregion

                        --#region UI_INV_SORT_BY_.*_OSD
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_INV_SORT_BY_VALUE_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Перебрали инвентарь по стоимости
                                { "Russian", "Инвентарь отсортирован по стоимости" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_INV_SORT_BY_TYPE_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Перебрали инвентарь по типам
                                { "Russian", "Инвентарь отсортирован по типу" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_INV_SORT_BY_COLOUR_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Перебрали инвентарь по цветам
                                { "Russian", "Инвентарь отсортирован по цвету" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_INV_SORT_BY_NAME_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Перебрали инвентарь по названиям
                                { "Russian", "Инвентарь отсортирован по названию" },
                            }
                        },
                        --#endregion

                        -- везде латинские сокращения, кроме тут
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_RUIN_SUB_SYM" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПМ
                                -- R
                                { "Russian", "R" },
                            }
                        },

                        --#region UI_REFINER_DETAILS_LABEL
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_REFINER_DETAILS_LABEL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- СМОТРЕТЬ СХЕМУ ОЧИСТИТЕЛЯ
                                -- VIEW REFINER RECIPE
                                { "Russian", "ПОКАЗАТЬ ЭТАПЫ ОЧИСТКИ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_REFINER_DETAILS_LABEL_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Показать необходимые команды
                                -- Display required inputs
                                { "Russian", "Показать необходимые субстанции для очистителя" },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PURPLE2_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Очищенный звездный металл: пурпурный
                                -- Refined Stellar Metal: Purple
                                { "Russian", "Очищенный звёздный металл: пурпурный" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NO_LOAD_INVALID_SAVE_CLOUD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Файл сохранения из более новой версии No Man’s Sky и не может быть загружен.
                                -- Cross-Save Version Incompatible: Latest update not yet deployed on this platform
                                { "Russian", "Ошибка Cross-Save: последнее обновление для данной платформы еще не вышло" },
                            }
                        },
                        -- в русском не принято разделять минералы на цветные/чёрные как принято с металлами
                        -- в реальности кварцит бывает белым, серым, красноватым; в игре он фиолетовый...
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PURPLE2_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Хроматический минерал&lt;&gt;, получаемый в ходе синтеза в центре звезды. Такие звездные материалы в итоге обнаруживаются в виде залежей в коре окружающих планет.&#xA;&#xA;Кварцит можно найти на планетах, вращающихся вокруг &lt;SPECIAL&gt;пурпурных звезд&lt;&gt;. Его можно обработать в &lt;TECHNOLOGY&gt;очистителе&lt;&gt;, чтобы создать &lt;STELLAR&gt;хроматический металл&lt;&gt;, использующийся в производстве продвинутых технологий.
                                -- A &lt;STELLAR&gt;chromatic mineral&lt;&gt;, generated by fusion in the heart of a star. Such stellar material ends up forming deposits in the crust of local planets.&#xA;&#xA;Quartzite is found on planets orbiting &lt;SPECIAL&gt;purple stars&lt;&gt;, and can be placed in a &lt;TECHNOLOGY&gt;Refiner&lt;&gt; to create purified &lt;STELLAR&gt;Chromatic Metal&lt;&gt; for use in the manufacture of advanced technologies.
                                { "Russian", "&lt;STELLAR&gt;Минерал&lt;&gt;, получаемый в ходе синтеза в центре звезды. Такие звёздные материалы в итоге обнаруживаются в виде залежей в коре окружающих планет.&#xA;&#xA;Кварцит можно найти на планетах, вращающихся вокруг &lt;SPECIAL&gt;пурпурных звёзд﻿.&lt;&gt; Его можно обработать в &lt;TECHNOLOGY&gt;очистителе﻿,&lt;&gt; чтобы создать &lt;STELLAR&gt;хроматический металл﻿,&lt;&gt; использующийся в производстве продвинутых технологий." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EX_PURPLE_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Хроматический минерал&lt;&gt;, получаемый в ходе синтеза в центре звезды.&#xA;&#xA;Кварцит можно найти на планетах, вращающихся вокруг &lt;SPECIAL&gt;пурпурных звезд&lt;&gt;. Его можно обработать в &lt;TECHNOLOGY&gt;очистителе&lt;&gt;, чтобы создать &lt;STELLAR&gt;хроматический металл&lt;&gt;.&#xA;&#xA;Этот кварцит был сформирован под воздействием экстремальных условий. Имеет высокую ценность.
                                -- A &lt;STELLAR&gt;chromatic mineral&lt;&gt;, generated by fusion in the heart of a star.&#xA;&#xA;Quartzite is found on planets orbiting &lt;SPECIAL&gt;purple stars&lt;&gt;, and can be placed in a &lt;TECHNOLOGY&gt;Refiner&lt;&gt; to create purified &lt;STELLAR&gt;Chromatic Metal&lt;&gt;.&#xA;&#xA;This quartzite has been activated by the extreme conditions in which it was formed, and is highly valuable.
                                { "Russian", "&lt;STELLAR&gt;Минерал&lt;&gt;, получаемый в ходе синтеза в центре звезды.&#xA;&#xA;Кварцит можно найти на планетах, вращающихся вокруг &lt;SPECIAL&gt;пурпурных звёзд﻿.&lt;&gt; Его можно обработать в &lt;TECHNOLOGY&gt;очистителе﻿,&lt;&gt; чтобы создать &lt;STELLAR&gt;хроматический металл﻿.&lt;&gt;&#xA;&#xA;Этот кварцит был сформирован под воздействием экстремальных условий. Имеет высокую ценность." },
                            }
                        },
                        -- обрезается снизу "ДОСТУПНО" в моменг получения предмета у синтеза ртути
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SHIP_TGA_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Эксклюзивный &lt;STELLAR&gt;переделанный звездолет&lt;&gt;, созданный в честь времен, когда старые и новые Странники вместе отправлялись в путешествие среди звезд.&#xA;&#xA;Этот необычный звездолет оптимизирован для эффективного планирования, а векторное поле позволяет ему парить над твердыми поверхностями.&#xA;&#xA;&lt;STELLAR&gt;Получите&lt;&gt; этот корабль, чтобы добавить его в свою коллекцию или использовать &lt;STELLAR&gt;вместо&lt;&gt; текущего корабля. Находясь на планете, вы можете призывать корабли через быстрое меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                -- An exclusive &lt;STELLAR&gt;reforged starship&lt;&gt;, commemorating a time when Travellers old and new joined together to voyage across the stars.&#xA;&#xA;This unusual ship is optimised for effortless gliding during flight, while a localised vector field allows the craft to hover above solid planes.&#xA;&#xA;&lt;STELLAR&gt;Claim&lt;&gt; this ship to add it to your collection, or &lt;STELLAR&gt;Exchange&lt;&gt; it with your current ship. While on a planet, summon ships from the Quick Menu (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                { "Russian", "Эксклюзивный &lt;STELLAR&gt;переделанный звездолёт&lt;&gt; в память о временах, когда старые и новые Странники вместе отправлялись в путешествие среди звёзд.&#xA;&#xA;Этот необычный звездолёт оптимизирован для эффективного пилотирования, а векторное поле позволяет ему парить над твердыми поверхностями.&#xA;&#xA;&lt;STELLAR&gt;Добавьте&lt;&gt; его в свою коллекцию или используйте &lt;STELLAR&gt;вместо&lt;&gt; текущего корабля. Будучи на планете, вызовите корабль из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)." },
                            }
                        },
                        -- дословного перевода нет - все бури/шторма/циклоны основаны на перепадах давления
                        -- в англ. "pressure storm" также является отсебятиной в простонародье
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "WEATHER_GASGIANT4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Постоянные вызванные давлением бури
                                -- Constant Pressure Storms
                                { "Russian", "Постоянные вихри" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MARKED_PLANET_LABEL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %PLANETCLASS%: отмечена
                                -- Marked %PLANETCLASS%
                                { "Russian", "%PLANETCLASS% с вашей меткой" },
                            }
                        },
                    }
                }
            }
        }
    }
}
