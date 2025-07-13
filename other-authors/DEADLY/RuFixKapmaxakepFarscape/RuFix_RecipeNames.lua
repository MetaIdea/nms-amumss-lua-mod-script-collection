NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]    = "_RuFix_RecipeNames.pak",
    ["MOD_AUTHOR"]      = "gh0stwizard",
    ["MOD_DESCRIPTION"] = "Shorten names of recipes.",
    ["NMS_VERSION"]     = "5.72",
    ["EXML_CREATE"]     = "false",
    ["MODIFICATIONS"]   = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                { -- LANGUAGE/NMS_LOC4_RUSSIAN.MBIN
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_LOC4_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        --#region Запрошенная процедура:
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_BURIEDTECH" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: извлечение нанитов
                                { "Russian", "Извлечение нанитов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_CLAMPEARL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: трансмутация кальцита
                                { "Russian", "Трансмутация кальцита" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_EYEBALL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: биологическая чистка
                                { "Russian", "Биологическая чистка" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_FISHCORE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: цикл умерщвления
                                { "Russian", "Цикл умерщвления" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_VENTGEM" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: выпуск серы
                                { "Russian", "Выпуск серы" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_FIENDCORE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: НЕ РЕКОМЕНДУЕТСЯ
                                { "Russian", "НЕ РЕКОМЕНДУЕТСЯ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_WATERPLANT_SALT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: засолка водорослей
                                { "Russian", "Засолка водорослей" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_SALT_GLASS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: шлифовка кристаллов соли
                                { "Russian", "Шлифовка кристаллов соли" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_WATERPLANT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: переработка водорослей
                                { "Russian", "Переработка водорослей" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_REFINER_NO_RECIPE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: недоступно
                                { "Russian", "Недоступно" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_RUST" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: окисление металла
                                { "Russian", "Окисление металла" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_LAUNCHSUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: сжатие дигидрогена
                                { "Russian", "Сжатие дигидрогена" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_CAVE2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: деионизация минерала
                                { "Russian", "Деионизация минерала" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_LAUNCHFUEL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: сжатие дигидрогена
                                { "Russian", "Сжатие дигидрогена" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_FUEL2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: высвобождение углерода
                                { "Russian", "Высвобождение углерода" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_FUEL1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: сжатие углерода
                                { "Russian", "Сжатие углерода" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_CATALYST1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: обработка натрия
                                { "Russian", "Обработка натрия" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_CATALYST2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: бесплатный натрий
                                { "Russian", "Бесплатный натрий" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_LAND1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: извлечение металлов
                                { "Russian", "Извлечение металлов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_LAND2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: намагничивание металла
                                { "Russian", "Намагничивание металла" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_LAND3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: размагничивание металла
                                { "Russian", "Размагничивание металла" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_RED1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: очистка звездной руды
                                { "Russian", "Очистка звездной руды" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_BLUE1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: очистка звездной руды
                                { "Russian", "Очистка звездной руды" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_GREEN1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: очистка звездной руды
                                { "Russian", "Очистка звездной руды" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_YELLOW1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: очистка звездной руды
                                { "Russian", "Очистка звездной руды" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_RED2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: извлечение хроматического материала
                                { "Russian", "Извлечение хроматического материала" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_BLUE2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: извлечение хроматического материала
                                { "Russian", "Извлечение хроматического материала" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_GREEN2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: извлечение хроматического материала
                                { "Russian", "Извлечение хроматического материала" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_YELLOW2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: извлечение хроматического материала
                                { "Russian", "Извлечение хроматического материала" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_LUSH1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: извлечение ферритной пыли
                                { "Russian", "Извлечение ферритной пыли" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_DUSTY1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: извлечение ферритной пыли
                                { "Russian", "Извлечение ферритной пыли" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_TOXIC1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: извлечение ферритной пыли
                                { "Russian", "Извлечение ферритной пыли" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_RADIO1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: извлечение ферритной пыли
                                { "Russian", "Извлечение ферритной пыли" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_COLD1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: извлечение ферритной пыли
                                { "Russian", "Извлечение ферритной пыли" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_HOT1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: извлечение ферритной пыли
                                { "Russian", "Извлечение ферритной пыли" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_WATER1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: концентрация соли
                                { "Russian", "Концентрация соли" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_WATER2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: производство соли
                                { "Russian", "Производство соли" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_CAVE1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: ионизация минерала
                                { "Russian", "Ионизация минерала" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_ASTEROID1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: полировка кристаллов
                                { "Russian", "Полировка кристаллов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_ASTEROID2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: реструктуризация металла
                                { "Russian", "Реструктуризация металла" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_ASTEROID3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: искажение реальности
                                { "Russian", "Искажение реальности" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_GAS1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: передача газа
                                { "Russian", "Передача газа" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_GAS2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: передача газа
                                { "Russian", "Передача газа" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_GAS3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: передача газа
                                { "Russian", "Передача газа" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_SPACEGUNK1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: переработка отходов
                                { "Russian", "Переработка отходов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_SPACEGUNK2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: переработка отходов
                                { "Russian", "Переработка отходов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_SPACEGUNK3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: переработка отходов
                                { "Russian", "Переработка отходов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_SPACEGUNK4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: переработка отходов
                                { "Russian", "Переработка отходов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_SPACEGUNK5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: переработка отходов
                                { "Russian", "Переработка отходов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_ROCKETSUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: циркуляция трития
                                { "Russian", "Циркуляция трития" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_PLANT_TOXIC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: сжигание растительности
                                { "Russian", "Сжигание растительности" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_PLANT_SNOW" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: сжигание растительности
                                { "Russian", "Сжигание растительности" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_PLANT_RADIO" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: сжигание растительности
                                { "Russian", "Сжигание растительности" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_PLANT_DUST" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: сжигание растительности
                                { "Russian", "Сжигание растительности" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_PLANT_HOT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: сжигание растительности
                                { "Russian", "Сжигание растительности" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_PLANT_LUSH" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: сжигание растительности
                                { "Russian", "Сжигание растительности" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_PLANT_CAVE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: извлечение органического натрия
                                { "Russian", "Извлечение органического натрия" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_PLANT_WATER" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: извлечение микропузырьков
                                { "Russian", "Извлечение микропузырьков" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_PLANT_POOP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: пересборка органики
                                { "Russian", "Пересборка органики" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_OXYGEN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: неэффективное сжигание
                                { "Russian", "Неэффективное сжигание" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_CREATURE1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: принудительное разложение
                                { "Russian", "Принудительное разложение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_ROBOT1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: фильтрация реальности
                                { "Russian", "Фильтрация реальности" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_LAUNCHSUB_OXYGEN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: быстрое образование/испарение
                                { "Russian", "Быстрое образование/испарение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_LAUNCHSUB_GAS1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: впрыск серы
                                { "Russian", "Впрыск серы" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_LAUNCHSUB_GAS2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: катализация радиации
                                { "Russian", "Катализация радиации" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_LAUNCHSUB_GAS3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: органический синтез
                                { "Russian", "Органический синтез" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_LAUNCHSUB_RADIO" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: покорение энергии
                                { "Russian", "Покорение энергии" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_FUEL1_OXYGEN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: окисление углерода
                                { "Russian", "Окисление углерода" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_FUEL2_OXYGEN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: окисление углерода
                                { "Russian", "Окисление углерода" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_CATALYST1_OXYGEN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: окисление натрия
                                { "Russian", "Окисление натрия" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_CATALYST2_OXYGEN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: окисление натрия
                                { "Russian", "Окисление натрия" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_FUEL1_CATALYST1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: катализация углерода
                                { "Russian", "Катализация углерода" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_FUEL2_CATALYST1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: катализация углерода
                                { "Russian", "Катализация углерода" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_FUEL1_CATALYST2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: продвинутая обработка углерода
                                { "Russian", "Продвинутая обработка углерода" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_FUEL2_CATALYST2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: продвинутая обработка углерода
                                { "Russian", "Продвинутая обработка углерода" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_FUEL1_ROBOT1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: гибридизация аномалии/органики
                                { "Russian", "Гибридизация аномалии/органики" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_FUEL2_ROBOT1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: гибридизация аномалии/органики
                                { "Russian", "Гибридизация аномалии/органики" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_GROW_PLANT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: поддержка роста
                                { "Russian", "Поддержка роста" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_CATALYST1_ROBOT1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: катализация стража
                                { "Russian", "Катализация стража" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_CATALYST2_ROBOT1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: катализация стража
                                { "Russian", "Катализация стража" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_FUEL1_CREATURE1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: неконтролируемое разложение
                                { "Russian", "Неконтролируемое разложение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_FUEL2_CREATURE1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: неконтролируемое разложение
                                { "Russian", "Неконтролируемое разложение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_CATALYST1_CREATURE1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: синтез удобрения
                                { "Russian", "Синтез удобрения" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_CATALYST2_CREATURE1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: синтез удобрения
                                { "Russian", "Синтез удобрения" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_LAND1_ROBOT1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: расширение материи
                                { "Russian", "Расширение материи" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_LAND2_ROBOT1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: расширение материи
                                { "Russian", "Расширение материи" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_LAND3_ROBOT1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: расширение материи
                                { "Russian", "Расширение материи" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_RED1_STELLAR2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: хроматическое расширение
                                { "Russian", "Хроматическое расширение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_BLUE1_STELLAR2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: хроматическое расширение
                                { "Russian", "Хроматическое расширение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_GREEN1_STELLAR2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: хроматическое расширение
                                { "Russian", "Хроматическое расширение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_YELLOW1_STELLAR2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: хроматическое расширение
                                { "Russian", "Хроматическое расширение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_RED2_STELLAR2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: хроматическое расширение
                                { "Russian", "Хроматическое расширение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_BLUE2_STELLAR2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: хроматическое расширение
                                { "Russian", "Хроматическое расширение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_GREEN2_STELLAR2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: хроматическое расширение
                                { "Russian", "Хроматическое расширение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_YELLOW2_STELLAR2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: хроматическое расширение
                                { "Russian", "Хроматическое расширение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_LUSH1_PLANT_LUSH" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: органическое расширение
                                { "Russian", "Органическое расширение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_DUSTY1_PLANT_DUST" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: органическое расширение
                                { "Russian", "Органическое расширение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_TOXIC1_PLANT_TOXIC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: органическое расширение
                                { "Russian", "Органическое расширение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_RADIO1_PLANT_RADIO" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: органическое расширение
                                { "Russian", "Органическое расширение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_COLD1_PLANT_SNOW" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: органическое расширение
                                { "Russian", "Органическое расширение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_HOT1_PLANT_HOT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: органическое расширение
                                { "Russian", "Органическое расширение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_WATER1_OXYGEN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: эффективное выпаривание соли
                                { "Russian", "Эффективное выпаривание соли" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_WATER2_OXYGEN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: расширение хлора
                                { "Russian", "Расширение хлора" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_CAVE1_OXYGEN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: эффективная ионизация кобальта
                                { "Russian", "Эффективная ионизация кобальта" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_CAVE2_OXYGEN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: эффективная ионизация кобальта
                                { "Russian", "Эффективная ионизация кобальта" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_CREATURE1_ROBOT1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: синтез органики/аномалии
                                { "Russian", "Синтез органики/аномалии" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_POOP_ALCHEMY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: алхимическая конструкция
                                { "Russian", "Алхимическая конструкция" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_ASTEROID1_OXYGEN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: минеральная алхимия
                                { "Russian", "Минеральная алхимия" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_ASTEROID2_OXYGEN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: минеральная алхимия
                                { "Russian", "Минеральная алхимия" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_ASTEROID3_OXYGEN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: минеральная алхимия
                                { "Russian", "Минеральная алхимия" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_GAS1_OXYGEN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: передача газа
                                { "Russian", "Передача газа" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_GAS2_OXYGEN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: передача газа
                                { "Russian", "Передача газа" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_GAS3_OXYGEN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: передача газа
                                { "Russian", "Передача газа" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_GAS1_LAND" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: ослабление связей
                                { "Russian", "Ослабление связей" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_GAS2_LAND" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: обогащение металла
                                { "Russian", "Обогащение металла" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_GAS1_CATALYST1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: катализация газа
                                { "Russian", "Катализация газа" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_GAS2_CATALYST1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: катализация газа
                                { "Russian", "Катализация газа" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_GAS3_CATALYST1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: катализация газа
                                { "Russian", "Катализация газа" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_GAS1_CATALYST2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: катализация газа
                                { "Russian", "Катализация газа" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_GAS2_CATALYST2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: катализация газа
                                { "Russian", "Катализация газа" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_GAS3_CATALYST2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: катализация газа
                                { "Russian", "Катализация газа" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_SPACEGUNK1_TECHFRAG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: переработка трития
                                { "Russian", "Переработка трития" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_SPACEGUNK2_TECHFRAG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: переработка трития
                                { "Russian", "Переработка трития" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_SPACEGUNK3_TECHFRAG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: переработка трития
                                { "Russian", "Переработка трития" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_SPACEGUNK4_TECHFRAG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: переработка трития
                                { "Russian", "Переработка трития" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_SPACEGUNK5_TECHFRAG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: переработка трития
                                { "Russian", "Переработка трития" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_PLANT_CAVE_OXYGEN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: извлечение связанного кобальта
                                { "Russian", "Извлечение связанного кобальта" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_PLANT_WATER_OXYGEN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: извлечение связанного хлора
                                { "Russian", "Извлечение связанного хлора" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_PLANT_POOP_OXYGEN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: насыщающие кислородом микробы
                                { "Russian", "Насыщающие кислородом микробы" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_PLANT_CAVE_ROBOT1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: промывка пугния
                                { "Russian", "Промывка пугния" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_PLANT_WATER_ROBOT1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: промывка пугния
                                { "Russian", "Промывка пугния" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_PLANT_POOP_ROBOT1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: алхимическая обработка пугния
                                { "Russian", "Алхимическая обработка пугния" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_PLANT_CAVE_FUEL1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: извлечение органического натрия
                                { "Russian", "Извлечение органического натрия" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_PLANT_WATER_FUEL1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: высвобождение захваченного кислорода
                                { "Russian", "Высвобождение захваченного кислорода" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_PLANT_POOP_FUEL1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: кормление микробов
                                { "Russian", "Кормление микробов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_PLANT_CAVE_CATALYST1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: обработка органического азота
                                { "Russian", "Обработка органического азота" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_PLANT_WATER_CATALYST1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: обработка органического азота
                                { "Russian", "Обработка органического азота" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_PLANT_POOP_CATALYST1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: кормление микробов
                                { "Russian", "Кормление микробов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_PLANT_CAVE_FUEL2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: извлечение органического натрия
                                { "Russian", "Извлечение органического натрия" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_PLANT_WATER_FUEL2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: высвобождение захваченного кислорода
                                { "Russian", "Высвобождение захваченного кислорода" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_PLANT_POOP_FUEL2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: кормление микробов
                                { "Russian", "Кормление микробов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_PLANT_CAVE_CATALYST2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: обработка органического азота
                                { "Russian", "Обработка органического азота" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_PLANT_WATER_CATALYST2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: обработка органического азота
                                { "Russian", "Обработка органического азота" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_PLANT_POOP_CATALYST2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: кормление микробов
                                { "Russian", "Кормление микробов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_PLANT_CAVE_CAVE1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: ионизация сосудов
                                { "Russian", "Ионизация сосудов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_PLANT_WATER_WATER1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: растворение природных солей
                                { "Russian", "Растворение природных солей" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_PLANT_CAVE_CAVE2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: ионизация сосудов
                                { "Russian", "Ионизация сосудов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_PLANT_WATER_WATER2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: растворение природных солей
                                { "Russian", "Растворение природных солей" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_PLANT_POOP_CREATURE1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: кормление микробов
                                { "Russian", "Кормление микробов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_LAND_FROM_STELLAR" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: синтез звезд/металла
                                { "Russian", "Синтез звезд/металла" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_RED1_LAND1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: синтез звезд/металла
                                { "Russian", "Синтез звезд/металла" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_BLUE1_LAND1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: синтез звезд/металла
                                { "Russian", "Синтез звезд/металла" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_GREEN1_LAND1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: синтез звезд/металла
                                { "Russian", "Синтез звезд/металла" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_YELLOW1_LAND1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: синтез звезд/металла
                                { "Russian", "Синтез звезд/металла" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_RED1_LAND2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: синтез звезд/металла
                                { "Russian", "Синтез звезд/металла" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_BLUE1_LAND2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: синтез звезд/металла
                                { "Russian", "Синтез звезд/металла" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_GREEN1_LAND2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: синтез звезд/металла
                                { "Russian", "Синтез звезд/металла" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_YELLOW1_LAND2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: синтез звезд/металла
                                { "Russian", "Синтез звезд/металла" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_STELLAR_FROM_LAND" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: синтез хроматического металла
                                { "Russian", "Синтез хроматического металла" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_RED2_LAND1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: сплав хроматического металла
                                { "Russian", "Сплав хроматического металла" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_BLUE2_LAND1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: сплав хроматического металла
                                { "Russian", "Сплав хроматического металла" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_GREEN2_LAND1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: сплав хроматического металла
                                { "Russian", "Сплав хроматического металла" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_YELLOW2_LAND1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: сплав хроматического металла
                                { "Russian", "Сплав хроматического металла" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_RED2_LAND2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: сплав хроматического металла
                                { "Russian", "Сплав хроматического металла" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_BLUE2_LAND2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: сплав хроматического металла
                                { "Russian", "Сплав хроматического металла" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_GREEN2_LAND2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: сплав хроматического металла
                                { "Russian", "Сплав хроматического металла" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_YELLOW2_LAND2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: сплав хроматического металла
                                { "Russian", "Сплав хроматического металла" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_TECHFRAG_FUEL1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: дублирование трития
                                { "Russian", "Дублирование трития" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_TECHFRAG_FUEL2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: дублирование трития
                                { "Russian", "Дублирование трития" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_TECHFRAG_CATALYST1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: дублирование трития
                                { "Russian", "Дублирование трития" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_TECHFRAG_CATALYST2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: дублирование трития
                                { "Russian", "Дублирование трития" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_TECHFRAG_OXYGEN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: дублирование трития
                                { "Russian", "Дублирование трития" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_TECHFRAG_LAND1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: дублирование трития
                                { "Russian", "Дублирование трития" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_TECHFRAG_LAND2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: дублирование трития
                                { "Russian", "Дублирование трития" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_TECHFRAG_LAND3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: дублирование трития
                                { "Russian", "Дублирование трития" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_TECHFRAG_RED1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: дублирование трития
                                { "Russian", "Дублирование трития" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_TECHFRAG_BLUE1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: дублирование трития
                                { "Russian", "Дублирование трития" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_TECHFRAG_GREEN1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: дублирование трития
                                { "Russian", "Дублирование трития" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_TECHFRAG_YELLOW1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: дублирование трития
                                { "Russian", "Дублирование трития" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_TECHFRAG_RED2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: дублирование трития
                                { "Russian", "Дублирование трития" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_TECHFRAG_BLUE2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: дублирование трития
                                { "Russian", "Дублирование трития" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_TECHFRAG_GREEN2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: дублирование трития
                                { "Russian", "Дублирование трития" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_TECHFRAG_YELLOW2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: дублирование трития
                                { "Russian", "Дублирование трития" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_TECHFRAG_STELLAR2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: дублирование трития
                                { "Russian", "Дублирование трития" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_TECHFRAG_LUSH1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: дублирование трития
                                { "Russian", "Дублирование трития" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_TECHFRAG_DUSTY1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: дублирование трития
                                { "Russian", "Дублирование трития" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_TECHFRAG_TOXIC1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: дублирование трития
                                { "Russian", "Дублирование трития" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_TECHFRAG_RADIO1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: дублирование трития
                                { "Russian", "Дублирование трития" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_TECHFRAG_COLD1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: дублирование трития
                                { "Russian", "Дублирование трития" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_TECHFRAG_HOT1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: дублирование трития
                                { "Russian", "Дублирование трития" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_TECHFRAG_WATER1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: дублирование трития
                                { "Russian", "Дублирование трития" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_TECHFRAG_WATER2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: дублирование трития
                                { "Russian", "Дублирование трития" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_TECHFRAG_CAVE1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: дублирование трития
                                { "Russian", "Дублирование трития" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_TECHFRAG_CAVE2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: дублирование трития
                                { "Russian", "Дублирование трития" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_TECHFRAG_CREATURE1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: дублирование трития
                                { "Russian", "Дублирование трития" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_TECHFRAG_ROBOT1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: дублирование трития
                                { "Russian", "Дублирование трития" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_TECHFRAG_ASTEROID1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: дублирование трития
                                { "Russian", "Дублирование трития" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_TECHFRAG_ASTEROID2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: дублирование трития
                                { "Russian", "Дублирование трития" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_TECHFRAG_ASTEROID3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: дублирование трития
                                { "Russian", "Дублирование трития" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_TECHFRAG_GAS1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: дублирование трития
                                { "Russian", "Дублирование трития" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_TECHFRAG_GAS2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: дублирование трития
                                { "Russian", "Дублирование трития" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_TECHFRAG_GAS3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: дублирование трития
                                { "Russian", "Дублирование трития" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_TECHFRAG_PLANT_TOXIC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: дублирование трития
                                { "Russian", "Дублирование трития" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_TECHFRAG_PLANT_SNOW" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: дублирование трития
                                { "Russian", "Дублирование трития" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_TECHFRAG_PLANT_RADIO" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: дублирование трития
                                { "Russian", "Дублирование трития" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_TECHFRAG_PLANT_DUST" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: дублирование трития
                                { "Russian", "Дублирование трития" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_TECHFRAG_PLANT_HOT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: дублирование трития
                                { "Russian", "Дублирование трития" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_TECHFRAG_PLANT_LUSH" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: дублирование трития
                                { "Russian", "Дублирование трития" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_TECHFRAG_PLANT_CAVE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: дублирование трития
                                { "Russian", "Дублирование трития" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_TECHFRAG_PLANT_WATER" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: дублирование трития
                                { "Russian", "Дублирование трития" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_TECHFRAG_PLANT_POOP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: дублирование трития
                                { "Russian", "Дублирование трития" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_PRODUCT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: продвинутый синтез продукта
                                { "Russian", "Продвинутый синтез продукта" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_LUSH1_LAND1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: передача элемента среды
                                { "Russian", "Передача элемента среды" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_DUSTY1_LAND1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: передача элемента среды
                                { "Russian", "Передача элемента среды" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_TOXIC1_LAND1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: передача элемента среды
                                { "Russian", "Передача элемента среды" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_RADIO1_LAND1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: передача элемента среды
                                { "Russian", "Передача элемента среды" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_COLD1_LAND1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: передача элемента среды
                                { "Russian", "Передача элемента среды" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_HOT1_LAND1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: передача элемента среды
                                { "Russian", "Передача элемента среды" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_PLANT_TOXIC_WATER1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: титрация флоры
                                { "Russian", "Титрация флоры" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_PLANT_SNOW_WATER1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: титрация флоры
                                { "Russian", "Титрация флоры" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_PLANT_RADIO_WATER1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: титрация флоры
                                { "Russian", "Титрация флоры" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_PLANT_DUST_WATER1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: титрация флоры
                                { "Russian", "Титрация флоры" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_PLANT_HOT_WATER1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: титрация флоры
                                { "Russian", "Титрация флоры" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_PLANT_LUSH_WATER1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: титрация флоры
                                { "Russian", "Титрация флоры" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_ALLOY1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: разделение предельных сплавов
                                { "Russian", "Разделение предельных сплавов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_ALLOY2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: разделение предельных сплавов
                                { "Russian", "Разделение предельных сплавов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_ALLOY3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: разделение предельных сплавов
                                { "Russian", "Разделение предельных сплавов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_ALLOY4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: разделение предельных сплавов
                                { "Russian", "Разделение предельных сплавов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_ALLOY5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: разделение предельных сплавов
                                { "Russian", "Разделение предельных сплавов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_ALLOY6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: разделение предельных сплавов
                                { "Russian", "Разделение предельных сплавов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_ALLOY7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: разделение предельных сплавов
                                { "Russian", "Разделение предельных сплавов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_ALLOY8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: разделение предельных сплавов
                                { "Russian", "Разделение предельных сплавов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_3INPUT_OXYGEN_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: искусственный фотосинтез
                                { "Russian", "Искусственный фотосинтез" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_3INPUT_OXYGEN_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: искусственный фотосинтез
                                { "Russian", "Искусственный фотосинтез" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_3INPUT_OXYGEN_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: искусственный фотосинтез
                                { "Russian", "Искусственный фотосинтез" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_3INPUT_OXYGEN_4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: искусственный фотосинтез
                                { "Russian", "Искусственный фотосинтез" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_3INPUT_OXYGEN_5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: искусственный фотосинтез
                                { "Russian", "Искусственный фотосинтез" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_3INPUT_OXYGEN_6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: искусственный фотосинтез
                                { "Russian", "Искусственный фотосинтез" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_3INPUT_LAND3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: глубокое сжатие металла
                                { "Russian", "Глубокое сжатие металла" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_3INPUT_STELLAR2_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: хроматический звездный сплав
                                { "Russian", "Хроматический звездный сплав" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_3INPUT_STELLAR2_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: хроматический звездный сплав
                                { "Russian", "Хроматический звездный сплав" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_3INPUT_STELLAR2_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: хроматический звездный сплав
                                { "Russian", "Хроматический звездный сплав" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_3INPUT_STELLAR2_4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: хроматический звездный сплав
                                { "Russian", "Хроматический звездный сплав" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_3INPUT_STELLAR2_5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: хроматический звездный сплав
                                { "Russian", "Хроматический звездный сплав" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_3INPUT_STELLAR2_6" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: хроматический звездный сплав
                                { "Russian", "Хроматический звездный сплав" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_3INPUT_STELLAR2_7" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: хроматический звездный сплав
                                { "Russian", "Хроматический звездный сплав" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_3INPUT_STELLAR2_8" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: хроматический звездный сплав
                                { "Russian", "Хроматический звездный сплав" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_3INPUT_STELLAR2_9" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: хроматический звездный сплав
                                { "Russian", "Хроматический звездный сплав" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_3INPUT_STELLAR2_10" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: хроматический звездный сплав
                                { "Russian", "Хроматический звездный сплав" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_3INPUT_STELLAR2_11" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: хроматический звездный сплав
                                { "Russian", "Хроматический звездный сплав" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_3INPUT_STELLAR2_12" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: хроматический звездный сплав
                                { "Russian", "Хроматический звездный сплав" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_3INPUT_ASTEROID1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: хроматическая алхимия
                                { "Russian", "Хроматическая алхимия" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_3INPUT_ASTEROID2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: хроматическая алхимия
                                { "Russian", "Хроматическая алхимия" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_3INPUT_ASTEROID3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: хроматическая алхимия
                                { "Russian", "Хроматическая алхимия" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_ASTEROID_MIX" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: трансмутация
                                { "Russian", "Трансмутация" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_3INPUT_HYPERFUEL1_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: обход антиматерии
                                { "Russian", "Обход антиматерии" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_3INPUT_HYPERFUEL1_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: обход антиматерии
                                { "Russian", "Обход антиматерии" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_3INPUT_HYPERFUEL1_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: обход антиматерии
                                { "Russian", "Обход антиматерии" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_3INPUT_HYPERFUEL1_4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: обход антиматерии
                                { "Russian", "Обход антиматерии" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_3INPUT_GRENFUEL1_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: герметизация плазмы
                                { "Russian", "Герметизация плазмы" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_3INPUT_GRENFUEL1_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: герметизация плазмы
                                { "Russian", "Герметизация плазмы" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_3INPUT_GRENFUEL1_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: герметизация плазмы
                                { "Russian", "Герметизация плазмы" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_3INPUT_GRENFUEL1_4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: герметизация плазмы
                                { "Russian", "Герметизация плазмы" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_3INPUT_PRODFUEL1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: захват кислорода
                                { "Russian", "Захват кислорода" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_3INPUT_PRODFUEL2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: продвинутый захват кислорода
                                { "Russian", "Продвинутый захват кислорода" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_3INPUT_LAUNCHFUEL_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: захват дигидрогена
                                { "Russian", "Захват дигидрогена" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_3INPUT_LAUNCHFUEL_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: захват дигидрогена
                                { "Russian", "Захват дигидрогена" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_3INPUT_LAUNCHFUEL_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: захват дигидрогена
                                { "Russian", "Захват дигидрогена" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_3INPUT_LAUNCHFUEL_4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: захват дигидрогена
                                { "Russian", "Захват дигидрогена" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_3INPUT_POWERCELL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: захват ионов
                                { "Russian", "Захват ионов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_3INPUT_POWERCELL2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: продвинутый захват ионов
                                { "Russian", "Продвинутый захват ионов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_3INPUT_ALLOY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: создание сетки сплава
                                { "Russian", "Создание сетки сплава" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_3INPUT_ALLOY1_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: создание сетки сплава
                                { "Russian", "Создание сетки сплава" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_3INPUT_ALLOY2_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: создание сетки сплава
                                { "Russian", "Создание сетки сплава" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_3INPUT_ALLOY3_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: создание сетки сплава
                                { "Russian", "Создание сетки сплава" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_3INPUT_ALLOY4_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: создание сетки сплава
                                { "Russian", "Создание сетки сплава" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_3INPUT_ALLOY5_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: создание сетки сплава
                                { "Russian", "Создание сетки сплава" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_3INPUT_ALLOY6_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: создание сетки сплава
                                { "Russian", "Создание сетки сплава" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_3INPUT_ALLOY1_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: создание сетки сплава
                                { "Russian", "Создание сетки сплава" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_3INPUT_ALLOY2_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: создание сетки сплава
                                { "Russian", "Создание сетки сплава" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_3INPUT_ALLOY3_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: создание сетки сплава
                                { "Russian", "Создание сетки сплава" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_3INPUT_ALLOY4_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: создание сетки сплава
                                { "Russian", "Создание сетки сплава" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_3INPUT_ALLOY5_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: создание сетки сплава
                                { "Russian", "Создание сетки сплава" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_3INPUT_ALLOY6_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: создание сетки сплава
                                { "Russian", "Создание сетки сплава" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_3INPUT_ALLOY1_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: создание сетки сплава
                                { "Russian", "Создание сетки сплава" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_3INPUT_ALLOY2_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: создание сетки сплава
                                { "Russian", "Создание сетки сплава" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_3INPUT_ALLOY3_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: создание сетки сплава
                                { "Russian", "Создание сетки сплава" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_3INPUT_ALLOY4_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: создание сетки сплава
                                { "Russian", "Создание сетки сплава" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_3INPUT_ALLOY5_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: создание сетки сплава
                                { "Russian", "Создание сетки сплава" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_3INPUT_ALLOY6_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: создание сетки сплава
                                { "Russian", "Создание сетки сплава" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_3INPUT_REACTION1_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: высокоскоростная сублимация
                                { "Russian", "Высокоскоростная сублимация" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_3INPUT_REACTION2_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: высокоскоростная сублимация
                                { "Russian", "Высокоскоростная сублимация" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_3INPUT_REACTION3_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: высокоскоростная сублимация
                                { "Russian", "Высокоскоростная сублимация" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_3INPUT_REACTION1_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: высокоскоростная сублимация
                                { "Russian", "Высокоскоростная сублимация" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_3INPUT_REACTION2_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: высокоскоростная сублимация
                                { "Russian", "Высокоскоростная сублимация" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_3INPUT_REACTION3_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: высокоскоростная сублимация
                                { "Russian", "Высокоскоростная сублимация" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_3INPUT_REACTION1_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: высокоскоростная сублимация
                                { "Russian", "Высокоскоростная сублимация" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_3INPUT_REACTION2_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: высокоскоростная сублимация
                                { "Russian", "Высокоскоростная сублимация" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_3INPUT_REACTION3_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: высокоскоростная сублимация
                                { "Russian", "Высокоскоростная сублимация" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_3INPUT_REACTION1_4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: высокоскоростная сублимация
                                { "Russian", "Высокоскоростная сублимация" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_3INPUT_REACTION2_4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: высокоскоростная сублимация
                                { "Russian", "Высокоскоростная сублимация" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_3INPUT_REACTION3_4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: высокоскоростная сублимация
                                { "Russian", "Высокоскоростная сублимация" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_SILICATE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: Ковка силиката
                                -- Requested Operation: Silicate Forging
                                { "Russian", "Ковка силиката" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_REINFORCE_METAL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: углеродизация металла
                                { "Russian", "Углеродизация металла" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_JELLY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: циркуляция дигидрогена
                                { "Russian", "Циркуляция дигидрогена" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_FUELPROD3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: плавление углерода
                                { "Russian", "Плавление углерода" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_LANDPROD3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: детоксикация редких металлов
                                { "Russian", "Детоксикация редких металлов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_CATAPROD3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: стабилизация натрия
                                { "Russian", "Стабилизация натрия" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_WATERPROD3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: разрушение структуры хлорида
                                { "Russian", "Разрушение структуры хлорида" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_CAVEPROD3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: дробление кобальта
                                { "Russian", "Дробление кобальта" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_OXYPROD3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: декомпрессия кислорода
                                { "Russian", "Декомпрессия кислорода" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_FUELPROD3_UP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: кристаллизация углерода
                                { "Russian", "Кристаллизация углерода" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_LANDPROD3_UP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: синтез редких металлов
                                { "Russian", "Синтез редких металлов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_CATAPROD3_UP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: дестабилизация натрия
                                { "Russian", "Дестабилизация натрия" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_WATERPROD3_UP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: создание сетки хлора
                                { "Russian", "Создание сетки хлора" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_CAVEPROD3_UP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: перегрузка кобальта
                                { "Russian", "Перегрузка кобальта" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_OXYPROD3_UP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: нуклеация кислорода
                                { "Russian", "Нуклеация кислорода" },
                            }
                        },
                        --#endregion

                        --#region Настройка переработчика:
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COOK_BAKE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Настройка переработчика: конвекционный нагрев
                                { "Russian", "Конвекционный нагрев" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COOK_BISCUIT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Настройка переработчика: улучшение теста
                                { "Russian", "Улучшение теста" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COOK_VEG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Настройка переработчика: пропаривание растительной массы
                                { "Russian", "Пропаривание растительной массы" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COOK_MEAT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Настройка переработчика: сжигание плоти
                                { "Russian", "Сжигание плоти" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COOK_SMOKED_MEAT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Настройка переработчика: консервирование плоти
                                { "Russian", "Консервирование плоти" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COOK_JAM" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Настройка переработчика: консервирование плодов
                                { "Russian", "Консервирование плодов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COOK_PIE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Настройка переработчика: создание пирога
                                { "Russian", "Создание пирога" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COOK_CAKE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Настройка переработчика: создание выпечки
                                { "Russian", "Создание выпечки" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COOK_DRINK" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Настройка переработчика: разжижение
                                { "Russian", "Разжижение" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COOK_PROCESS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Настройка переработчика: извлечение нутриентов
                                { "Russian", "Извлечение нутриентов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_YEAST_PROCESS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Настройка переработчика: ферментация
                                { "Russian", "Ферментация" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EGG_PROCESS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Настройка переработчика: формирование яркого желтка
                                { "Russian", "Формирование яркого желтка" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COOK_REFINE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Настройка переработчика: очистка нутриентов
                                { "Russian", "Очистка нутриентов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COOK_DOUGNUT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Настройка переработчика: внедрение нутриентов
                                { "Russian", "Внедрение нутриентов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COOK_FRY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Настройка переработчика: ускоренная обжарка
                                { "Russian", "Ускоренная обжарка" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COOK_MIX" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Настройка переработчика: смешивание компонентов
                                { "Russian", "Смешивание компонентов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COOK_EGGS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Настройка переработчика: соединение белков
                                { "Russian", "Соединение белков" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COOK_STEW" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Настройка переработчика: измельчение и уваривание
                                { "Russian", "Измельчение и уваривание" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COOK_ICE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Настройка переработчика: быстрое охлаждение
                                { "Russian", "Быстрое охлаждение" },
                            }
                        },
                        --#endregion

                    }
                },
                { -- LANGUAGE/NMS_LOC5_RUSSIAN.MBIN
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_LOC5_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        --#region Настройка переработчика:
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COOK_BAIT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Настройка переработчика: приготовление приманки
                                { "Russian", "Приготовление приманки" },
                            }
                        },
                        --#endregion
                    }
                },
                { -- LANGUAGE/NMS_LOC8_RUSSIAN.MBIN
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_LOC8_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        --#region Запрошенная процедура:
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_GUNKHEART" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: реанимация
                                { "Russian", "Реанимация" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_LAVA1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: вулканическая трансмутация
                                { "Russian", "Вулканическая трансмутация" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_DRONESHARD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: подчинение стекла
                                { "Russian", "Подчинение стекла" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_DRONESCRAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: устранение порчи
                                { "Russian", "Устранение порчи" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_SHIPBRAIN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: извлечение разума
                                { "Russian", "Извлечение разума" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_ROBOT2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: восстановление гармонии
                                { "Russian", "Восстановление гармонии" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_ROBOT_FUSION" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: загрязнение реальности
                                { "Russian", "Загрязнение реальности" },
                            }
                        },
                        --#endregion

                        --#region Настройка переработчика:
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COOK_GRUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Настройка переработчика: ликвидация
                                { "Russian", "Ликвидация" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COOK_FIEND" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Настройка переработчика: очистка огнем
                                { "Russian", "Очистка огнем" },
                            }
                        },
                        --#endregion

                    }
                },
                { -- LANGUAGE/NMS_LOC9_RUSSIAN.MBIN
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_LOC9_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        --#region Запрошенная процедура:
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RECIPE_RUINSUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Запрошенная процедура: переработка камня
                                { "Russian", "Переработка камня" },
                            }
                        },
                        --#endregion

                        --#region Настройка переработчика:
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COOK_BONE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Настройка переработчика: тушение костей
                                { "Russian", "Тушение костей" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COOK_FISH_EGGS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Настройка переработчика: извлечение икры
                                { "Russian", "Извлечение икры" },
                            }
                        },
                        --#endregion

                        --#region Настройка процессора:
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COOK_FISH" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Настройка процессора: различные морепродукты
                                -- Processor Setting: Seafood Assembly
                                { "Russian", "Обработка морепродуктов" },
                            }
                        },
                        --#endregion

                    }
                },
            }
        }
    }
}
