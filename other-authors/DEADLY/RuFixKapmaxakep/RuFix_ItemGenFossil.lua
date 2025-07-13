NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]    = "_RuFix_ItemGenFossil.pak",
    ["MOD_AUTHOR"]      = "gh0stwizard",
    ["MOD_DESCRIPTION"] = "Fix names of generated fossils.",
    ["NMS_VERSION"]     = "5.72",
    ["EXML_CREATE"]     = "false",
    ["MODIFICATIONS"]   = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                {
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_UPDATE3_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        -- Затвердевш. Рог Моллюска
                        -- Затвердевш. Кости Моллюска
                        -- Затвердевш. Киста Моллюска
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_FORMAT_FOSSIL_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %FOSSILADJ% %FOSSILANIMAL% %FOSSILPART%
                                -- %FOSSILADJ% %FOSSILANIMAL% %FOSSILPART%
                                { "Russian", "%FOSSILADJ% %FOSSILPART% %FOSSILANIMAL%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_FORMAT_FOSSIL_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %FOSSILADJ% %FOSSILANIMAL% %FOSSILPART%
                                -- %FOSSILADJ% %FOSSILANIMAL% %FOSSILPART%
                                { "Russian", "%FOSSILADJ% %FOSSILPART% %FOSSILANIMAL%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_FOSSIL_ADJ_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сохраненный
                                { "Russian", "Сохраненн." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_FOSSIL_ADJ_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Окаменевшие
                                { "Russian", "Окаменевш." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_FOSSIL_ADJ_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Окаменелые
                                { "Russian", "Окаменел." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_FOSSIL_ADJ_4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Затвердевшие
                                { "Russian", "Затвердевш." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_FOSSIL_ADJ_5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Уплотнившиеся
                                { "Russian", "Уплотнивш." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_FOSSIL_ADJ_6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обугленные
                                { "Russian", "Обугленн." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_FOSSIL_ADJ_7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Иссушенная
                                { "Russian", "Иссушенн." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_FOSSIL_ADJ_8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Мумифицированные
                                { "Russian", "Мумифицированн." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_FOSSIL_ADJ_9" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Древнее
                                { "Russian", "Древн." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_FOSSIL_ADJ_10" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сохраненный
                                { "Russian", "Сохраненн." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_FOSSIL_ADJ_11" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Окаменевшие
                                { "Russian", "Окаменевш." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_FOSSIL_ADJ_12" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сохраненный
                                { "Russian", "Сохраненн." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_FOSSIL_ADJ_13" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Окаменевшие
                                { "Russian", "Окаменевш." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_FOSSIL_ADJ_14" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Уплотнившиеся
                                { "Russian", "Уплотнивш." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_FOSSIL_ADJ_15" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Искаженные
                                { "Russian", "Искаженн." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_FOSSIL_ADJ_16" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Своеобразная (Unusual)
                                { "Russian", "Необычн." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_FOSSIL_ADJ_17" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Первобытные
                                { "Russian", "Первобытн." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_FOSSIL_ADJ_18" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Исконные
                                { "Russian", "Исконн." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_FOSSIL_ADJ_19" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Примитивный
                                { "Russian", "Примитивн." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_FOSSIL_ADJ_20" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Стеклянный
                                { "Russian", "Стеклянн." },
                            }
                        },
                        --
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_FOSSIL_ANIMAL_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Копытные (Ungulate)
                                { "Russian", "копытного" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_FOSSIL_ANIMAL_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Бычьи
                                { "Russian", "быка" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_FOSSIL_ANIMAL_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Трилобиты (Trilobite)
                                { "Russian", "трилобита" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_FOSSIL_ANIMAL_4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Креветки
                                { "Russian", "креветки" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_FOSSIL_ANIMAL_5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Аммониты (Ammonite)
                                { "Russian", "аммонита" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_FOSSIL_ANIMAL_6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Животное
                                { "Russian", "животного" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_FOSSIL_ANIMAL_7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Брюхоногие
                                { "Russian", "брюхоногого" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_FOSSIL_ANIMAL_8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Членистоногие
                                { "Russian", "членистоногого" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_FOSSIL_ANIMAL_9" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Приматы
                                { "Russian", "примата" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_FOSSIL_ANIMAL_10" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Хищник
                                { "Russian", "хищника" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_FOSSIL_ANIMAL_11" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Травоядное
                                { "Russian", "травоядного" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_FOSSIL_ANIMAL_12" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Динозавры
                                { "Russian", "динозавра" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_FOSSIL_ANIMAL_13" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Ящеры
                                { "Russian", "ящера" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_FOSSIL_ANIMAL_14" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Китовые
                                { "Russian", "кита" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_FOSSIL_ANIMAL_15" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Жвачные
                                { "Russian", "жвачного" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_FOSSIL_ANIMAL_16" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Собачьи
                                { "Russian", "собаки" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_FOSSIL_ANIMAL_17" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Грызуны
                                { "Russian", "грызуна" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_FOSSIL_ANIMAL_18" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Кошачьи
                                { "Russian", "кошки" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_FOSSIL_ANIMAL_19" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Арахниды
                                { "Russian", "арахнида" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_FOSSIL_ANIMAL_20" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Рыбы
                                { "Russian", "рыбы" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_FOSSIL_ANIMAL_21" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Зауроподы (Sauropod)
                                { "Russian", "зауропода" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_FOSSIL_ANIMAL_22" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Тераподы (Therapod)
                                { "Russian", "терапода" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_FOSSIL_ANIMAL_23" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Цератопсы (Ceratops)
                                { "Russian", "цератопса" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_FOSSIL_ANIMAL_24" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Орнтиоды (Ornthiod)
                                { "Russian", "орнтиода" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_FOSSIL_ANIMAL_25" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Геки
                                { "Russian", "гека" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_FOSSIL_ANIMAL_26" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вай’кины
                                { "Russian", "вай’кина" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_FOSSIL_ANIMAL_27" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Насекомые
                                { "Russian", "насекомого" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_FOSSIL_ANIMAL_28" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Жуки
                                { "Russian", "жука" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_FOSSIL_ANIMAL_29" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Головоногие
                                { "Russian", "головоногого" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_FOSSIL_ANIMAL_30" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Моллюски
                                { "Russian", "моллюска" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_FOSSIL_ANIMAL_31" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Рептилии
                                { "Russian", "рептилии" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_FOSSIL_ANIMAL_32" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Амфибии
                                { "Russian", "амфибии" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_FOSSIL_ANIMAL_33" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Млекопитающие
                                { "Russian", "млекопитающего" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_FOSSIL_ANIMAL_34" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Крабы
                                { "Russian", "краба" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_FOSSIL_ANIMAL_35" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Ракообразные
                                { "Russian", "ракообразного" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_FOSSIL_ANIMAL_36" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Одногорбые
                                { "Russian", "одногорбого" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_FOSSIL_ANIMAL_37" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Черепахи
                                { "Russian", "черепахи" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_FOSSIL_ANIMAL_38" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Крокодилы
                                { "Russian", "крокодила" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_FOSSIL_ANIMAL_39" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Змеи
                                { "Russian", "змеи" },
                            }
                        },
                        --
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_FOSSIL_PART_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- костей (Bones)
                                { "Russian", "кости" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_FOSSIL_PART_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Лапы
                                { "Russian", "лапы" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_FOSSIL_PART_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Копыта
                                { "Russian", "копыта" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_FOSSIL_PART_4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Следы (Prints)
                                { "Russian", "следы" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_FOSSIL_PART_5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Голова (Skull)
                                { "Russian", "голова" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_FOSSIL_PART_6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Ткани (Tissue)
                                { "Russian", "ткани" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_FOSSIL_PART_7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Череп (Cranium)
                                { "Russian", "череп" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_FOSSIL_PART_8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Усики
                                { "Russian", "усики" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_FOSSIL_PART_9" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Позвоночник
                                { "Russian", "позвоночник" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_FOSSIL_PART_10" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Позвонки
                                { "Russian", "позвонки" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_FOSSIL_PART_11" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Грудная клетка
                                { "Russian", "грудная клетка" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_FOSSIL_PART_12" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Челюсть
                                { "Russian", "челюсть" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_FOSSIL_PART_13" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Зубы
                                { "Russian", "зубы" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_FOSSIL_PART_14" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Экзоскелет (Exoskeleton)
                                { "Russian", "экзоскелет" },
                            }
                        },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_FOSSIL_PART_15" },
                        --     --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- ДНК
                        --         { "Russian", "ДНК" },
                        --     }
                        -- },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_FOSSIL_PART_16" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Кровь
                                { "Russian", "кровь" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_FOSSIL_PART_17" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Яйцо
                                { "Russian", "яйцо" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_FOSSIL_PART_18" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Гнездо (Nest)
                                { "Russian", "гнездо" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_FOSSIL_PART_19" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Перо
                                { "Russian", "перо" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_FOSSIL_PART_20" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Стопа
                                { "Russian", "стопа" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_FOSSIL_PART_21" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Коготь
                                { "Russian", "коготь" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_FOSSIL_PART_22" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Органы
                                { "Russian", "органы" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_FOSSIL_PART_23" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Грудь
                                { "Russian", "грудь" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_FOSSIL_PART_24" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Брюхо (Abdomen)
                                { "Russian", "брюхо" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_FOSSIL_PART_25" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Мешок (Sac)
                                { "Russian", "железы" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_FOSSIL_PART_26" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Крылья
                                { "Russian", "крылья" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_FOSSIL_PART_27" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Волосяной покров (Hair)
                                { "Russian", "волосы" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_FOSSIL_PART_28" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Клаксон (Horn)
                                { "Russian", "рог" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_FOSSIL_PART_29" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Панцирь (Shell)
                                { "Russian", "панцирь" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ITEMGEN_FOSSIL_PART_30" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Клюв (Beak)
                                { "Russian", "клюв" },
                            }
                        },
                    }
                }
            }
        }
    }
}
