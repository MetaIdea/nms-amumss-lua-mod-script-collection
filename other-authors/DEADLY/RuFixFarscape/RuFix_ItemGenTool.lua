NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]    = "_RuFix_ItemGenTool.pak",
    ["MOD_AUTHOR"]      = "gh0stwizard",
    ["MOD_DESCRIPTION"] = "Fix names of generated tools.",
    ["NMS_VERSION"]     = "5.72",
    ["EXML_CREATE"]     = "false",
    ["MODIFICATIONS"]   = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                {
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_UPDATE3_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        -- Красивый инструмент для шитья
                        -- Красивое зеркало для шитья
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_FORMAT_TOOL_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %TOOLADJ% %TOOLUSE% %TOOLNOUN%
                                -- %TOOLADJ% %TOOLUSE% %TOOLNOUN%
                                { "Russian", "%TOOLADJ% %TOOLNOUN% для %TOOLUSE%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_FORMAT_TOOL_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %TOOLADJ% %TOOLUSE% %TOOLNOUN%
                                -- %TOOLADJ% %TOOLUSE% %TOOLNOUN%
                                { "Russian", "%TOOLADJ% %TOOLNOUN% для %TOOLUSE%" },
                            }
                        },
                        --
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_TOOL_ADJ_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Прекрасн. (Beautiful)
                                { "Russian", "Красив." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_TOOL_ADJ_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Потенциальный
                                { "Russian", "Потенциальн." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_TOOL_ADJ_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Точеный
                                { "Russian", "Точен." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_TOOL_ADJ_4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Примитивный
                                { "Russian", "Примитивн." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_TOOL_ADJ_5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Хитрый
                                { "Russian", "Хитр." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_TOOL_ADJ_6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Изящный
                                { "Russian", "Изящн." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_TOOL_ADJ_7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Утончен.
                                { "Russian", "Утончен." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_TOOL_ADJ_8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Доисторический
                                { "Russian", "Доисторич." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_TOOL_ADJ_9" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Эксцентричный
                                { "Russian", "Эксцентричн." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_TOOL_ADJ_10" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Призматический
                                { "Russian", "Призматич." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_TOOL_ADJ_11" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Пыльный
                                { "Russian", "Пыльн." },
                            }
                        },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_TOOL_ADJ_12" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Поврежден.
                        --         { "Russian", "Поврежден." },
                        --     }
                        -- },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_TOOL_ADJ_13" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Тесаный
                                { "Russian", "Тесанн." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_TOOL_ADJ_14" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Гравированный
                                { "Russian", "Гравированн." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_TOOL_ADJ_15" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Неуклюжий
                                { "Russian", "Неуклюж." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_TOOL_ADJ_16" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вылепленный
                                { "Russian", "Вылепленн." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_TOOL_ADJ_17" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Выдолбленный
                                { "Russian", "Выдолбленн." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_TOOL_ADJ_18" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Крашеный (Painted)
                                { "Russian", "Покрашенн." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_TOOL_ADJ_19" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Украшенный
                                { "Russian", "Украшенн." },
                            }
                        },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_TOOL_ADJ_20" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Гнил.
                        --         { "Russian", "Гнил." },
                        --     }
                        -- },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_TOOL_ADJ_21" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запачканный
                                { "Russian", "Запачканн." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_TOOL_ADJ_22" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Ржавый
                                { "Russian", "Ржав." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_TOOL_ADJ_23" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Проржавевший
                                { "Russian", "Проржавевш." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_TOOL_ADJ_24" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Грубый
                                { "Russian", "Груб." },
                            }
                        },
                        -- предмет назначения (для чего)
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_TOOL_USE_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Настроечный
                                { "Russian", "настройки" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_TOOL_USE_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Охотничий (Hunting)
                                { "Russian", "охоты" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_TOOL_USE_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Фигурный (Carving)
                                { "Russian", "резьбы" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_TOOL_USE_4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Рыболовный (Fishing)
                                { "Russian", "рыбалки" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_TOOL_USE_5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Музыкальный (Musical)
                                { "Russian", "музыкантов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_TOOL_USE_6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Кремневый (Flint)
                                { "Russian", "кремня" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_TOOL_USE_7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Каменный
                                { "Russian", "камня" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_TOOL_USE_8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Базальтовый
                                { "Russian", "базальта" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_TOOL_USE_9" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Промышленность (Industrial)
                                { "Russian", "промышленности" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_TOOL_USE_10" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Связывающий (Binding)
                                { "Russian", "переплета" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_TOOL_USE_11" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Столярный (Woodworking)
                                { "Russian", "деревообработки" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_TOOL_USE_12" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Металлургический (Metalworking)
                                { "Russian", "металлургии" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_TOOL_USE_13" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Мясницкий (Butcher's)
                                { "Russian", "мяса" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_TOOL_USE_14" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Ударный (Punching)
                                { "Russian", "штамповки" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_TOOL_USE_15" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Крако (Paint)
                                { "Russian", "рисования" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_TOOL_USE_16" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Смешивающий (Mixing)
                                { "Russian", "смешивания" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_TOOL_USE_17" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Металлич. (Metal)
                                { "Russian", "металла" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_TOOL_USE_18" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Бронзовый (Bronze)
                                { "Russian", "бронзы" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_TOOL_USE_19" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Фермерский (Farming)
                                { "Russian", "фермеров" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_TOOL_USE_20" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сельскохозяйственный (Agricultural)
                                { "Russian", "сельского хозяйства" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_TOOL_USE_21" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Садовый (Horticultural)
                                { "Russian", "садоводчества" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_TOOL_USE_22" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Художественный (Artist's)
                                { "Russian", "артистов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_TOOL_USE_23" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Ритуальный (Sacrificial)
                                { "Russian", "ритуалов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_TOOL_USE_24" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Швейный (Sewing)
                                { "Russian", "шитья" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_TOOL_USE_25" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Огненный (Firemaking)
                                { "Russian", "разведения огня" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_TOOL_USE_26" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Костровой (Bonfire)
                                { "Russian", "костра" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_TOOL_USE_27" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Часовой (Clockwork)
                                { "Russian", "часов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_TOOL_USE_28" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Чистящий (Cleaning)
                                { "Russian", "очистки" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_TOOL_USE_29" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Капканный (Trapper's)
                                { "Russian", "охотников" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_TOOL_USE_30" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Крутящийся (Spinning)
                                { "Russian", "прялок" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_TOOL_USE_31" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Пивоварный (Brewer's)
                                { "Russian", "пивоваров" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_TOOL_USE_32" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Ферментационный (Fermenting)
                                { "Russian", "брожения" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_TOOL_USE_33" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Лечебный (Medical)
                                { "Russian", "медицины" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_TOOL_USE_34" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Садоводческий (Gardener's)
                                { "Russian", "садовников" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_TOOL_USE_35" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Крабы (Crab)
                                { "Russian", "краболовов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_TOOL_USE_36" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Кулинарный (Cooking)
                                { "Russian", "приготовления пищи" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_TOOL_USE_37" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сварочный (Welder's)
                                { "Russian", "сварщиков" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_TOOL_USE_38" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Корабельный (Shipwright's)
                                { "Russian", "кораблестроителей" },
                            }
                        },
                        -- существительные (предмет)
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_TOOL_NOUN_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- штырь (Stick)
                                { "Russian", "палка" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_TOOL_NOUN_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- черпак (Spoon)
                                { "Russian", "ложка" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_TOOL_NOUN_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- вилочник (Fork)
                                { "Russian", "вилка" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_TOOL_NOUN_4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- кол (Spear)
                                { "Russian", "копье" },
                            }
                        },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_TOOL_NOUN_5" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- магнит (Magnet)
                        --         { "Russian", "магнит" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_TOOL_NOUN_6" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- инструмент (Tool)
                        --         { "Russian", "инструмент" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_TOOL_NOUN_7" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- крюк (Hook)
                        --         { "Russian", "крюк" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_TOOL_NOUN_8" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- нож (Knife)
                        --         { "Russian", "нож" },
                        --     }
                        -- },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_TOOL_NOUN_9" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- резак (Chisel)
                                { "Russian", "долото" },
                            }
                        },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_TOOL_NOUN_10" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- прибор (Instrument)
                        --         { "Russian", "прибор" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_TOOL_NOUN_11" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- совок (Spade)
                        --         { "Russian", "совок" },
                        --     }
                        -- },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_TOOL_NOUN_12" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- гребок (Trowel)
                                { "Russian", "мастерок" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_TOOL_NOUN_13" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- секатор (Shears)
                                { "Russian", "ножницы" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_TOOL_NOUN_14" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- клинок (Blade)
                                { "Russian", "лезвие" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_TOOL_NOUN_15" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- сошник (Shovel)
                                { "Russian", "лопата" },
                            }
                        },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_TOOL_NOUN_16" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- гарпун (Harpoon)
                        --         { "Russian", "гарпун" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_TOOL_NOUN_17" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- колышек (Peg)
                        --         { "Russian", "колышек" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_TOOL_NOUN_18" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- топор (Axe)
                        --         { "Russian", "топор" },
                        --     }
                        -- },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_TOOL_NOUN_19" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Молот (Hammer)
                                { "Russian", "молот" },
                            }
                        },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_TOOL_NOUN_20" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- круг (Wheel)
                        --         { "Russian", "круг" },
                        --     }
                        -- },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_TOOL_NOUN_21" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- упор (Anvil)
                                { "Russian", "наковальня" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_TOOL_NOUN_22" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- схват (Tongs)
                                { "Russian", "щипцы" },
                            }
                        },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_TOOL_NOUN_23" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- бур (Drill)
                        --         { "Russian", "бур" },
                        --     }
                        -- },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_TOOL_NOUN_24" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- валик (Dauber)
                                { "Russian", "мазилка" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_TOOL_NOUN_25" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- навильник (Pitchfork)
                                { "Russian", "вилы" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_TOOL_NOUN_26" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- кухонный прибор (Utensil)
                                { "Russian", "посуда" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_TOOL_NOUN_27" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- арсенал (Weapon)
                                { "Russian", "оружие" },
                            }
                        },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_TOOL_NOUN_28" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- механизм (Gadget)
                        --         { "Russian", "механизм" },
                        --     }
                        -- },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_TOOL_NOUN_29" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- автомат (Machine)
                                { "Russian", "машина" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_TOOL_NOUN_30" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- аппарат (Device)
                                { "Russian", "устройство" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_TOOL_NOUN_31" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- калькулятор (Abacus)
                                { "Russian", "счеты" },
                            }
                        },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_TOOL_NOUN_32" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- агрегат (Contraption)
                        --         { "Russian", "агрегат" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_TOOL_NOUN_33" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- шип (Spike)
                        --         { "Russian", "шип" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_TOOL_NOUN_34" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- тесак (Cleaver)
                        --         { "Russian", "тесак" },
                        --     }
                        -- },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_TOOL_NOUN_35" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- поддон (Dish)
                                { "Russian", "блюдо" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_TOOL_NOUN_36" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Зеркало (Mirror)
                                { "Russian", "зеркало" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_TOOL_NOUN_37" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- запас (Supplies)
                                { "Russian", "запасы" },
                            }
                        },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_TOOL_NOUN_38" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- телескоп (Telescope)
                        --         { "Russian", "телескоп" },
                        --     }
                        -- },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_TOOL_NOUN_39" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- контейнер (Canister)
                                { "Russian", "канистра" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_TOOL_NOUN_40" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ерш (Brush)
                                { "Russian", "кисть" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_TOOL_NOUN_41" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Губко (Sponge)
                                { "Russian", "губка" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_TOOL_NOUN_42" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- шлем (Mask)
                                { "Russian", "маска" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_TOOL_NOUN_43" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- трубка (Tube)
                                { "Russian", "труба" },
                            }
                        },
                    }
                }
            }
        }
    }
}
