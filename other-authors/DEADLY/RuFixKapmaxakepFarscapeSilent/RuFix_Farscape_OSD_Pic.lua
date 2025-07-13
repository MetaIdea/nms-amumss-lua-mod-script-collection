NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]    = "_RuFix_Farscape_OSD_Pic.pak",
    ["MOD_AUTHOR"]      = "gh0stwizard",
    ["MOD_DESCRIPTION"] = "OSD text with pictures",
    ["NMS_VERSION"]     = "5.72",
    ["EXML_CREATE"]     = "false",
    ["MODIFICATIONS"]   = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                { -- LANGUAGE/NMS_LOC1_RUSSIAN.MBIN
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_LOC1_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BASEBUILD_CANT_REMOVE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Убрать невозможно
                                -- Not removable
                                { "Russian", "НЕВОЗМОЖНО УБРАТЬ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TECH_INSUFFICIENT_FRAGS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Недостаточно скоплений нанитов
                                -- Insufficient Nanite Clusters
                                { "Russian", "НЕДОСТАТОЧНО СКОПЛЕНИЙ НАНИТОВ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "INTRCT_SAVE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Точка восстановления сохранена
                                { "Russian", "ТОЧКА ВОССТАНОВЛЕНИЯ СОХРАНЕНА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "INTRCT_SAVE_NO_POS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Игра сохранена &lt;IMG&gt;SLASH&lt;&gt; Положение в многопользовательской игре не сохранено
                                -- Progress Saved &lt;IMG&gt;SLASH&lt;&gt; Position Not Saved In Multiplayer
                                { "Russian", "ПРОГРЕСС СОХРАНЕН&#xA;МЕСТОПОЛОЖЕНИЕ НЕ СОХРАНЕНО" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "INTRCT_SAVE_NO_POS_NEXUS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Игра сохранена &lt;IMG&gt;SLASH&lt;&gt; Положение во время задания Нексуса не сохранено
                                -- Progress Saved &lt;IMG&gt;SLASH&lt;&gt; Position Not Saved During Nexus Mission
                                { "Russian", "ПРОГРЕСС СОХРАНЕН&#xA;МЕСТОПОЛОЖЕНИЕ НЕ СОХРАНЕНО" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TECH_AWARDED" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Получен чертеж технологии
                                -- Technology blueprint acquired
                                { "Russian", "ПОЛУЧЕН ЧЕРТЕЖ ТЕХНОЛОГИИ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TECH_INSUFFICIENT_STANDING" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Недостаточный ранг
                                -- Insufficient Rank
                                { "Russian", "СЛИШКОМ НИЗКИЙ РАНГ" },
                            }
                        },

                        --#region сигналы от планетарных карт и не только (сканер экономики итд)
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SIGNAL_DISRUPT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Работа усилителей сигнала прервана
                                -- Signal Boosters Disrupted
                                { "Russian", "РАБОТА УСИЛИТЕЛЕЙ СИГНАЛА ПРЕРВАНА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SIGNAL_DISTRESS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Пойман сигнал бедствия
                                { "Russian", "ПОЙМАН СИГНАЛ БЕДСТВИЯ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SIGNAL_BEACON" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружен маяк
                                { "Russian", "ОБНАРУЖЕН МАЯК" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SIGNAL_COMPLETE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Место назначения достигнуто
                                { "Russian", "МЕСТО НАЗНАЧЕНИЯ ДОСТИГНУТО" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SIGNAL_BASE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружена планетарная база
                                -- Planet Base Detected
                                { "Russian", "ОБНАРУЖЕНА ПЛАНЕТАРНАЯ БАЗА" },
                            }
                        },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "SIGNAL_OTHER_BASE" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Обнаружена база игрока %PLAYER%
                        --         { "Russian", "Обнаружена база игрока %PLAYER%" },
                        --     }
                        -- },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SIGNAL_TIME_FAIL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вы потерпели неудачу.
                                -- Event Failed
                                { "Russian", "ВЫ ПОТЕРПЕЛИ НЕУДАЧУ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SIGNAL_ABANDONED" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружено заброшенное здание
                                { "Russian", "ОБНАРУЖЕНО ЗАБРОШЕННОЕ ЗДАНИЕ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SIGNAL_TERMINAL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружен удаленный терминал
                                { "Russian", "ОБНАРУЖЕН УДАЛЕННЫЙ ТЕРМИНАЛ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SIGNAL_SHOP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружено небольшое поселение
                                { "Russian", "ОБНАРУЖЕНО НЕБОЛЬШОЕ ПОСЕЛЕНИЕ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SIGNAL_LIBRARY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружен планетарный архив
                                { "Russian", "ОБНАРУЖЕН ПЛАНЕТАРНЫЙ АРХИВ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SIGNAL_OUTPOST" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружен торговый пункт
                                { "Russian", "ОБНАРУЖЕН ТОРГОВЫЙ ПУНКТ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SIGNAL_WAYPOINT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружена точка маршрута
                                { "Russian", "ОБНАРУЖЕНА ТОЧКА МАРШРУТА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SIGNAL_RADIOTOWER" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружена радиомачта
                                { "Russian", "ОБНАРУЖЕНА РАДИОМАЧТА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SIGNAL_OBSERVATORY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружена обсерватория
                                { "Russian", "ОБНАРУЖЕНА ОБСЕРВАТОРИЯ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SIGNAL_DEPOT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружен склад
                                { "Russian", "ОБНАРУЖЕН СКЛАД" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SIGNAL_FACTORY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружен завод
                                { "Russian", "ОБНАРУЖЕН ЗАВОД" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SIGNAL_HARVESTER" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружен центр управления
                                { "Russian", "ОБНАРУЖЕН ЦЕНТР УПРАВЛЕНИЯ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SIGNAL_PLAQUE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружен инопланетный артефакт
                                { "Russian", "ОБНАРУЖЕН ИНОПЛАНЕТНЫЙ АРТЕФАКТ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SIGNAL_MONOLITH" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружен инопланетный монолит
                                { "Russian", "ОБНАРУЖЕН ИНОПЛАНЕТНЫЙ МОНОЛИТ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SIGNAL_PORTAL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружен портал
                                { "Russian", "ОБНАРУЖЕН ПОРТАЛ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SIGNAL_DEBRIS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружено место крушения
                                { "Russian", "ОБНАРУЖЕНО МЕСТО КРУШЕНИЯ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SIGNAL_DAMAGEDMACHINE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружена капсула
                                { "Russian", "ОБНАРУЖЕНА КАПСУЛА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SIGNAL_DISTRESSSIGNAL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Пойман сигнал бедствия
                                { "Russian", "ПОЙМАН СИГНАЛ БЕДСТВИЯ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SIGNAL_SPACESTATION" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружена космическая станция
                                { "Russian", "ОБНАРУЖЕНА КОСМИЧЕСКАЯ СТАНЦИЯ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SIGNAL_SHELTER" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружено убежище
                                { "Russian", "ОБНАРУЖЕНО УБЕЖИЩЕ" },
                            }
                        },
                        -- XXX: это должно быть исправлено в файлах:
                        -- METADATA/SIMULATION/SCANNING/SCANEVENTTABLETUTORIAL.MBIN
                        -- METADATA/SIMULATION/SCANNING/SCANEVENTTABLEVEHICLE.MBIN
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "SIGNAL_UNKNOWN" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Пойман сигнал
                        --         -- Signal Detected
                        --         { "Russian", "ПОЙМАН СИГНАЛ" },
                        --     }
                        -- },
                        --#endregion

                        -- в данном формате все тупо не влезет
                        -- какой беглец можно узнать из подсказки, ну или на месте
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "PIRATE_BOUNTY1_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружен звездолет беглеца &lt;IMG&gt;SLASH&lt;&gt; Уровень угрозы: значительный
                                -- Fugitive Starship Detected &lt;IMG&gt;SLASH&lt;&gt; Threat Level: Significant
                                { "Russian", "ОБНАРУЖЕН ЗВЕЗДОЛЁТ БЕГЛЕЦА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "PIRATE_BOUNTY2_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружен звездолет беглеца &lt;IMG&gt;SLASH&lt;&gt; Уровень угрозы: опасный
                                -- Fugitive Starship Detected &lt;IMG&gt;SLASH&lt;&gt; Threat Level: Dangerous
                                { "Russian", "ОБНАРУЖЕН ЗВЕЗДОЛЁТ БЕГЛЕЦА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "PIRATE_BOUNTY3_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружен звездолет беглеца &lt;IMG&gt;SLASH&lt;&gt; Уровень угрозы: элитный
                                -- Fugitive Starship Detected &lt;IMG&gt;SLASH&lt;&gt; Threat Level: Elite
                                { "Russian", "ОБНАРУЖЕН ЗВЕЗДОЛЁТ БЕГЛЕЦА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "WARN_HOSTILE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ВНИМАНИЕ: ПРИБЛИЖАЮТСЯ ВРАЖЕСКИЕ КОРАБЛИ
                                -- WARNING - HOSTILE SHIPS ON APPROACH
                                { "Russian", "ПРИБЛИЖАЮТСЯ ВРАЖЕСКИЕ КОРАБЛИ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NOTIFY_PIRATE_WIN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- НАПАДАЮЩИЕ КОРАБЛИ УНИЧТОЖЕНЫ
                                -- ATTACK SHIPS DEFEATED
                                { "Russian", "ВРАЖЕСКИЕ КОРАБЛИ УНИЧТОЖЕНЫ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NOTIFY_PIRATE_BATTLE_WIN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- НАПАДАЮЩИЕ КОРАБЛИ УНИЧТОЖЕНЫ
                                -- ATTACK SHIPS DEFEATED
                                { "Russian", "ВРАЖЕСКИЕ КОРАБЛИ УНИЧТОЖЕНЫ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "PIRATE_BOUNTY_DONE_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Звездолет беглеца: УНИЧТОЖЕН
                                -- Fugitive Starship: ELIMINATED
                                { "Russian", "ЗВЕЗДОЛЁТ БЕГЛЕЦА УНИЧТОЖЕН" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SENTINELS_EVADED" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Стражи деактивированы
                                { "Russian", "СТРАЖИ ДЕАКТИВИРОВАНЫ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "PIRATE_PROBE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Зафиксировано враждебное сканирование
                                -- Hostile sub-space scan detected
                                { "Russian", "ЗАФИКСИРОВАНО ВРАЖДЕБНОЕ СКАНИРОВАНИЕ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SIGNAL_FREIGHTER" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Пойман сигнал грузового корабля
                                -- Freighter Signal Detected
                                { "Russian", "ПОЛУЧЕН ПОЗЫВНОЙ ГРУЗОВОГО КОРАБЛЯ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NEW_TECH" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Открыта новая технология!
                                -- New technology discovered!
                                { "Russian", "ИЗУЧЕН НОВЫЙ ЧЕРТЕЖ ТЕХНОЛОГИИ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NOTIFY_ENERGY_PERCENT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Состояние системы жизнеобеспечения: %PERCENT%
                                -- LIFE SUPPORT SYSTEMS AT %PERCENT%
                                { "Russian", "СИСТЕМА ЖИЗНЕОБЕСПЕЧЕНИЯ — %PERCENT%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BASEBUILD_OUT_OF_RANGE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Строительство недоступно &lt;IMG&gt;SLASH&lt;&gt; База вне досягаемости
                                { "Russian", "НЕЛЬЗЯ СТРОИТЬ ВНЕ ДОСЯГАЕМОСТИ БАЗЫ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BASEBUILD_INSUFFRESOURCES" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Строительство недоступно &lt;IMG&gt;SLASH&lt;&gt; Недостаточно компонентов
                                { "Russian", "НЕДОСТАТОЧНО КОМПОНЕНТОВ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BASEBUILD_INVALID_POS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Строительство недоступно &lt;IMG&gt;SLASH&lt;&gt; Неверное расположение
                                { "Russian", "НЕЛЬЗЯ СТРОИТЬ ПРИ НЕВЕРНОМ РАСПОЛОЖЕНИИ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NEW_BUILD_PRODUCT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вы изучили новый строительный элемент!
                                -- New building part learned!
                                { "Russian", "ИЗУЧЕН НОВЫЙ СТРОИТЕЛЬНЫЙ ЧЕРТЕЖ" },
                            }
                        },
                        -- перезаряжать или нет, это пилот решит
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NOTIFY_SHIELD_DOWN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ЩИТ ОТКЛЮЧЕН &lt;IMG&gt;SLASH&lt;&gt; ТРЕБУЕТСЯ НЕМЕДЛЕННАЯ ПЕРЕЗАРЯДКА
                                { "Russian", "ЩИТ ОТКЛЮЧЁН" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ATLAS_STATION_DISC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружен Интерфейс Атласа
                                -- Atlas Interface Discovered
                                { "Russian", "ОБНАРУЖЕН ИНТЕРФЕЙС АТЛАСА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLACK_HOLE_DISC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружена черная дыра
                                { "Russian", "ОБНАРУЖЕНА КРОТОВАЯ НОРА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "CORRUPT_EVADED" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Испорченный рой стихает
                                -- Corrupt Swarm Abating
                                { "Russian", "ИСПОРЧЕННЫЙ РОЙ СТИХАЕТ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NOTIFY_CRITIAL_HIT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПОЛУЧЕН КРИТИЧЕСКИЙ УРОН &lt;IMG&gt;SLASH&lt;&gt; ПЕРЕЗАРЯДИТЕ ЩИТЫ
                                -- CRITICAL DAMAGE TAKEN &lt;IMG&gt;SLASH&lt;&gt; RECHARGE SHIELDS
                                { "Russian", "ПОЛУЧЕНЫ КРИТИЧЕСКИЕ ПОВРЕЖДЕНИЯ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "JUMP_NOFUEL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %ITEM% Недоступно &lt;IMG&gt;SLASH&lt;&gt; Мало топлива
                                -- %ITEM% Unavailable &lt;IMG&gt;SLASH&lt;&gt; Insufficient Fuel
                                { "Russian", "В ПЛАЗМОДВИГАТЕЛЕ НЕДОСТАТОЧНО ТОПЛИВА" },
                            }
                        },
                        -- отображается в инвентарях
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TECH_ALREADY_INSTALLED" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Технология уже установлена
                                -- Technology already installed
                                { "Russian", "ТЕХНОЛОГИЯ УЖЕ УСТАНОВЛЕНА" },
                            }
                        },
                        --
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "TECH_ALREADY_KNOWN" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Вам уже известен этот чертеж технологии
                        --         -- Technology blueprint already known
                        --         { "Russian", "ЧЕРТЕЖ УЖЕ ИЗВЕСТЕН" },
                        --     }
                        -- },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NEW_PRODUCT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Изучена новая схема продукта!
                                -- New product formula learned!
                                { "Russian", "ИЗУЧЕНА НОВАЯ СХЕМА ПРОДУКТА" },
                            }
                        },

                        --#region ОПАСНАЯ ПОГОДА
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "WEATHER_WARN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ОПАСНАЯ ПОГОДА: ПРИБЛИЖАЕТСЯ БУРЯ
                                { "Russian", "НАДВИГАЕТСЯ БУРЯ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "WEATHER_WARN_LUSH" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ОПАСНАЯ ПОГОДА: ПРИБЛИЖАЕТСЯ РАСКАЛЕННЫЙ ЛИВЕНЬ
                                { "Russian", "НАДВИГАЕТСЯ РАСКАЛЁННЫЙ ЛИВЕНЬ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "WEATHER_WARN_HOT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ОПАСНАЯ ПОГОДА: ПРИБЛИЖАЕТСЯ ОГНЕННАЯ БУРЯ
                                { "Russian", "НАДВИГАЕТСЯ ОГНЕННАЯ БУРЯ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "WEATHER_WARN_COLD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ОПАСНАЯ ПОГОДА: ПРИБЛИЖАЕТСЯ МЕТЕЛЬ
                                { "Russian", "НАДВИГАЕТСЯ МЕТЕЛЬ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "WEATHER_WARN_TOXIC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ОПАСНАЯ ПОГОДА: ПРИБЛИЖАЕТСЯ ТОКСИЧНЫЙ ЛИВЕНЬ
                                { "Russian", "НАДВИГАЕТСЯ ТОКСИЧНЫЙ ЛИВЕНЬ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "WEATHER_WARN_RADIO" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ОПАСНАЯ ПОГОДА: ПРИБЛИЖАЕТСЯ РАДИОАКТИВНАЯ СВЕРХЯЧЕЙКА
                                { "Russian", "ПРИБЛИЖАЕТСЯ РАДИОАКТИВНАЯ СУПЕРЪЯЧЕЙКА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "WEATHER_OVER" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ИЗМЕНЕНИЕ ПОГОДЫ: БУРЯ ЗАКАНЧИВАЕТСЯ
                                { "Russian", "БУРЯ ЗАКАНЧИВАЕТСЯ" },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "WARN_HOSTILE2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Отправлен локальный сигнал бедствия
                                -- Local distress signal issued
                                { "Russian", "ОТПРАВЛЕН ЛОКАЛЬНЫЙ СИГНАЛ БЕДСТВИЯ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "POLICE_DISTRESS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Отправлен локальный сигнал бедствия
                                -- Local distress signal issued
                                { "Russian", "ОТПРАВЛЕН ЛОКАЛЬНЫЙ СИГНАЛ БЕДСТВИЯ" },
                            }
                        },
                    }
                },
                { -- LANGUAGE/NMS_LOC4_RUSSIAN.MBIN
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_LOC4_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_RETURN_MPMISSION_OBJ1_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вернуться на Космическую Аномалию
                                -- Return to the Space Anomaly
                                { "Russian", "ВЕРНИТЕСЬ НА КОСМИЧЕСКУЮ АНОМАЛИЮ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENTINEL_WARNING_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ВНИМАНИЕ &lt;IMG&gt;SLASH&lt;&gt; ДРОНЫ СТРАЖЕЙ ИЗУЧАЮТ МЕСТНОСТЬ
                                -- WARNING &lt;IMG&gt;SLASH&lt;&gt; SENTINEL DRONES INVESTIGATING
                                { "Russian", "ДРОНЫ СТРАЖЕЙ ИЗУЧАЮТ МЕСТНОСТЬ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORRUPT_WARNING_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ВНИМАНИЕ &lt;IMG&gt;SLASH&lt;&gt; ДРОНЫ СТРАЖЕЙ ИЗУЧАЮТ МЕСТНОСТЬ
                                -- WARNING &lt;IMG&gt;SLASH&lt;&gt; CORRUPT SWARM ON ALERT
                                { "Russian", "ИСПОРЧЕННЫЙ РОЙ ВСТРЕВОЖЕН" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_RARE_PRODUCT_RECEIVED" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найден редкий предмет!
                                -- Rare Item Found!
                                { "Russian", "НАЙДЕН РЕДКИЙ ПРЕДМЕТ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TECH_DEPLOY_ERROR" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Нельзя установить в этом типе инвентаря
                                -- Cannot install in this Inventory Type
                                { "Russian", "НЕЛЬЗЯ УСТАНОВИТЬ В ЭТОМ ТИПЕ ИНВЕНТАРЯ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TECH_SLOT_ERROR" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Нельзя разместить в технологической ячейке
                                -- Cannot place item in Technology Slot
                                { "Russian", "НЕЛЬЗЯ РАЗМЕСТИТЬ В ТЕХНОЛОГИЧЕСКОЙ ЯЧЕЙКЕ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_GENERAL_SCAN_OSD_MAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ОБНАРУЖЕН СИГНАЛ ФЛОТА &lt;IMG&gt;SLASH&lt;&gt; ОТКРОЙТЕ ГАЛАКТИЧЕСКУЮ КАРТУ
                                -- FLEET SIGNAL ACQUIRED &lt;IMG&gt;SLASH&lt;&gt; CONSULT GALAXY MAP
                                { "Russian", "ПОЛУЧЕНЫ КООРДИНАТЫ ФЛОТА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_DISTRESS_SCAN_OSD_MAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ОБНАРУЖЕН СИГНАЛ БЕДСТВИЯ ФЛОТА &lt;IMG&gt;SLASH&lt;&gt; ОТКРОЙТЕ ГАЛАКТИЧЕСКУЮ КАРТУ
                                -- FLEET DISTRESS SIGNAL ACQUIRED &lt;IMG&gt;SLASH&lt;&gt; CONSULT GALAXY MAP
                                { "Russian", "ПОЙМАН СИГНАЛ БЕДСТВИЯ ФЛОТА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_SHIP_CLAIM_OSD_MAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПОЛУЧЕНЫ КООРДИНАТЫ ЗВЕЗДОЛЕТА &lt;IMG&gt;SLASH&lt;&gt; ОТКРОЙТЕ ГАЛАКТИЧЕСКУЮ КАРТУ
                                -- STARSHIP COORDINATES RECEIVED &lt;IMG&gt;SLASH&lt;&gt; CONSULT GALAXY MAP
                                { "Russian", "ПОЛУЧЕНЫ КООРДИНАТЫ ЗВЕЗДОЛЁТА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_TRADING_SPECIAL_1_OSD_MAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ОБНАРУЖЕН ЗАЩИЩЕННЫЙ ТОРГОВЫЙ МОДУЛЬ &lt;IMG&gt;SLASH&lt;&gt; ОТКРОЙТЕ ГАЛАКТИЧЕСКУЮ КАРТУ
                                -- SECURE TRADE MODULE LOCATED &lt;IMG&gt;SLASH&lt;&gt; CONSULT GALAXY MAP
                                { "Russian", "ОБНАРУЖЕН ЗАЩИЩЕННЫЙ ТОРГОВЫЙ МОДУЛЬ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_EXP_TRANSLATE_1_OSD_MAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- НАЙДЕН ТАЙНИК С ЗАШИФРОВАННЫМИ ДАННЫМИ &lt;IMG&gt;SLASH&lt;&gt; ОТКРОЙТЕ ГАЛАКТИЧЕСКУЮ КАРТУ
                                -- ENCRYPTED DATA DROP LOCATED &lt;IMG&gt;SLASH&lt;&gt; CONSULT GALAXY MAP
                                { "Russian", "НАЙДЕН ТАЙНИК С ЗАШИФРОВАННЫМИ ДАННЫМИ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_EXPLORE_4_SCAN_OSD_MAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ОБНАРУЖЕНА НЕОБЫЧНАЯ ФОРМА ЖИЗНИ &lt;IMG&gt;SLASH&lt;&gt; ОТКРОЙТЕ ГАЛАКТИЧЕСКУЮ КАРТУ
                                -- ATYPICAL LIFE DETECTED &lt;IMG&gt;SLASH&lt;&gt; CONSULT GALAXY MAP
                                { "Russian", "ОБНАРУЖЕНА НЕОБЫЧНАЯ ФОРМА ЖИЗНИ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_BOUNTY_SCAN_OSD_MAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ЦЕЛЬ КОНТРАКТА ЗАХВАЧЕНА &lt;IMG&gt;SLASH&lt;&gt; ОТКРОЙТЕ ГАЛАКТИЧЕСКУЮ КАРТУ
                                -- BOUNTY TARGET ACQUIRED &lt;IMG&gt;SLASH&lt;&gt; CONSULT GALAXY MAP
                                { "Russian", "ПОЛУЧЕНЫ КООРДИНАТЫ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TRADE_BUY_BUILDING_NO_ITEMS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Недостаточно модулей сбора
                                -- Insufficient Salvage Modules
                                { "Russian", "НЕДОСТАТОЧНО ИЗВЛЕЧЕННЫХ ДАННЫХ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SUB_RADAR_OSD_ABANDON" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружено затонувшее здание
                                { "Russian", "ОБНАРУЖЕНО ЗАТОНУВШЕЕ ЗДАНИЕ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SUB_RADAR_OSD_CRASH" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружен затонувший звездолет
                                { "Russian", "ОБНАРУЖЕН ЗАТОНУВШИЙ ЗВЕЗДОЛЁТ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SUB_RADAR_OSD_FREIGHTER" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружены затонувшие обломки
                                -- Sunken Wreck Detected
                                { "Russian", "ОБНАРУЖЕНО ЗАТОНУВШЕЕ ГРУЗОВОЕ СУДНО" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SUB_RADAR_OSD_RUIN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружены затопленные руины
                                { "Russian", "ОБНАРУЖЕНЫ ЗАТОПЛЕННЫЕ РУИНЫ" },
                            }
                        },

                        --#region UI_STARTALT_OSD
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_STARTALT_OSD2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ОТКАЗ СИСТЕМЫ ЗАЩИТЫ ОТ ВРЕДНЫХ ФАКТОРОВ &lt;IMG&gt;SLASH&lt;&gt; ТРЕБУЕТСЯ НЕМЕДЛЕННАЯ ПЕРЕЗАРЯДКА
                                -- HAZARD PROTECTION FAILING &lt;IMG&gt;SLASH&lt;&gt; RECHARGE IMMEDIATELY
                                { "Russian", "ОТКАЗ СИСТЕМЫ ЗАЩИТЫ ОТ ВРЕДНЫХ ФАКТОРОВ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_STARTALT_OSD_HOT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ВНИМАНИЕ &lt;IMG&gt;SLASH&lt;&gt; ЗАФИКСИРОВАН ОПАСНЫЙ УРОВЕНЬ ТЕПЛА
                                -- WARNING &lt;IMG&gt;SLASH&lt;&gt; HAZARDOUS HEAT LEVELS DETECTED
                                { "Russian", "ЗАФИКСИРОВАНА ОЧЕНЬ ВЫСОКАЯ ОКРУЖАЮЩАЯ ТЕМПЕРАТУРА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_STARTALT_OSD_COLD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ВНИМАНИЕ &lt;IMG&gt;SLASH&lt;&gt; ОКРУЖАЮЩАЯ ТЕМПЕРАТУРА НА КРИТИЧЕСКИ НИЗКОМ УРОВНЕ
                                -- WARNING &lt;IMG&gt;SLASH&lt;&gt; EXTERNAL TEMPERATURE DANGEROUSLY LOW
                                { "Russian", "ЗАФИКСИРОВАНА ОЧЕНЬ НИЗКАЯ ОКРУЖАЮЩАЯ ТЕМПЕРАТУРА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_STARTALT_OSD_TOX" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ВНИМАНИЕ &lt;IMG&gt;SLASH&lt;&gt; ОБНАРУЖЕНЫ КРИТИЧЕСКИ ОПАСНЫЕ ТОКСИНЫ
                                { "Russian", "ОБНАРУЖЕНЫ КРИТИЧЕСКИ ОПАСНЫЕ ТОКСИНЫ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_STARTALT_OSD_RAD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ВНИМАНИЕ &lt;IMG&gt;SLASH&lt;&gt; ЗАФИКСИРОВАН ОПАСНЫЙ УРОВЕНЬ РАДИАЦИИ
                                { "Russian", "ЗАФИКСИРОВАН ОПАСНЫЙ УРОВЕНЬ РАДИАЦИИ" },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TRADE_BUY_RESEARCH_NO_TOKEN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Недостаточно жетонов исследования
                                -- Insufficient Research Tokens
                                { "Russian", "НЕДОСТАТОЧНО МОДУЛЕЙ ФРЕГАТА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FLEET_EXPLORE_1_SCAN_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ФЛОТ ОБНАРУЖЕН &lt;IMG&gt;SLASH&lt;&gt; НАЙДЕНА ТОКСИЧНАЯ ПЛАНЕТА
                                -- FLEET LOCATED &lt;IMG&gt;SLASH&lt;&gt; TOXIC PLANET IDENTIFIED
                                { "Russian", "НАЙДЕНА ТОКСИЧНАЯ ПЛАНЕТА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ALL_FLEET_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ВХОДЯЩЕЕ СООБЩЕНИЕ &lt;IMG&gt;SLASH&lt;&gt; ЧАСТОТА ФЛОТА
                                -- INCOMING MESSAGE &lt;IMG&gt;SLASH&lt;&gt; FLEET FREQUENCY
                                { "Russian", "ВХОДЯЩЕЕ СООБЩЕНИЕ НА ЧАСТОТЕ ФЛОТА" },
                            }
                        },
                    }
                },
                { -- LANGUAGE/NMS_LOC5_RUSSIAN.MBIN
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_LOC5_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COLLECT_FIEND_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружена зараженная планета
                                -- Infested Planet Detected
                                { "Russian", "ОБНАРУЖЕНА ЗАРАЖЕННАЯ ПЛАНЕТА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COLLECT_FISH_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружена океаническая планета
                                -- Ocean Planet Detected
                                { "Russian", "ОБНАРУЖЕНА ОКЕАНИЧЕСКАЯ ПЛАНЕТА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_DEPOT_RAID_FACT_SURV_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружена уязвимость стражей &lt;IMG&gt;SLASH&lt;&gt; Отмечено примерное местоположение
                                -- Sentinel Vulnerability Detected &lt;IMG&gt;SLASH&lt;&gt; Approximate Location Marked
                                { "Russian", "ОБНАРУЖЕНА УЯЗВИМАЯ ПОСТРОЙКА СТРАЖЕЙ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_DEPOT_RAID_FACT_SURV_OSD2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружена постройка со стражами!
                                -- Sentinel Facility Located!
                                { "Russian", "ОБНАРУЖЕН ЗАВОД СТРАЖЕЙ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_DEPOT_RAID_FACT_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружена уязвимость стражей &lt;IMG&gt;SLASH&lt;&gt; Отмечена сигнатура комплекса
                                -- Sentinel Vulnerability Detected &lt;IMG&gt;SLASH&lt;&gt; Facility Signature Marked
                                { "Russian", "ОБНАРУЖЕН УЯЗВИМЫЙ ЗАВОД" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_SPACEBATTLE_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ВНИМАНИЕ: ПРИБЛИЖАЕТСЯ ПОДКРЕПЛЕНИЕ ПРОТИВНИКА
                                -- WARNING - HOSTILE REINFORCEMENTS ARRIVING
                                { "Russian", "ПРИБЛИЖАЕТСЯ ПОДКРЕПЛЕНИЕ ПРОТИВНИКА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_SPACEBATTLE_OSD_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ВНИМАНИЕ: ПОСЛЕДНЯЯ ВОЛНА ПОДКРЕПЛЕНИЙ
                                -- WARNING - FINAL REINFORCEMENT WAVE
                                { "Russian", "ПОСЛЕДНЯЯ ВОЛНА ПОДКРЕПЛЕНИЙ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_COLLECT_DELIVERY_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Охраняемый склад обнаружен!
                                -- Secure Depot Located!
                                { "Russian", "ОХРАНЯЕМЫЙ СКЛАД ОБНАРУЖЕН" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_FEEDING_PLANET_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружена планета животных
                                -- Fauna Dense Planet Located
                                { "Russian", "ОБНАРУЖЕНА ПЛАНЕТА С БОГАТОЙ ФАУНОЙ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_PLANTKILL_GRAVE_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружен сигнал экзокостюма &lt;IMG&gt;SLASH&lt;&gt; Координаты отмечены
                                -- Exosuit Signature Detected &lt;IMG&gt;SLASH&lt;&gt; Coordinates Marked
                                { "Russian", "ОБНАРУЖЕНА СИГНАТУРА ЭКЗОКОСТЮМА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_PLANTKILL_GRAVE_SURV_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружена сигнатура экзокостюма &lt;IMG&gt;SLASH&lt;&gt; Отмечено примерное местоположение
                                -- Exosuit Signature Detected &lt;IMG&gt;SLASH&lt;&gt; Approximate Location Marked
                                { "Russian", "ОБНАРУЖЕНА СИГНАТУРА ЭКЗОКОСТЮМА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_PLANTKILL_GRAVE_SURV_OSD2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Могила Странника обнаружена!
                                -- Traveller Grave Located!
                                { "Russian", "НАЙДЕНА МОГИЛА СТРАННИКА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_DIGSITE_NPC_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Передача сигнала &lt;IMG&gt;SLASH&lt;&gt; Связной обнаружен
                                -- Signal Broadcast &lt;IMG&gt;SLASH&lt;&gt; Contact Located
                                { "Russian", "СВЯЗНОЙ ОБНАРУЖЕН" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_DIGSITE_SENTINEL_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Перехвачен незаконный сигнал! &lt;IMG&gt;SLASH&lt;&gt; Стражи вас заметили
                                -- Illegal Signal Intercepted! &lt;IMG&gt;SLASH&lt;&gt; Sentinels Alerted
                                { "Russian", "ПЕРЕХВАЧЕН НЕЗАКОННЫЙ СИГНАЛ&#xA;СТРАЖИ ПРЕДУПРЕЖДЕНЫ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_FIEND_KILL_TERM_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Входящее сообщение &lt;IMG&gt;SLASH&lt;&gt; Активирован ближайший терминал
                                -- Incoming Message &lt;IMG&gt;SLASH&lt;&gt; Nearby Terminal Activated
                                { "Russian", "АКТИВИРОВАН БЛИЖАЙШИЙ ТЕРМИНАЛ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_REPAIR_NPC_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Последние известные координаты отмечены
                                -- Last Known Coordinates Marked
                                { "Russian", "ПОСЛЕДНИЕ ИЗВЕСТНЫЕ КООРДИНАТЫ ОТМЕЧЕНЫ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_REPAIR_NPC_SURV_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Нуждающееся существо обнаружено!
                                -- Stranded Lifeform Located!
                                { "Russian", "ОБНАРУЖЕНО СУЩЕСТВО В БЕДЕ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_REPAIR_DRONE_DEFEAT_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Испорченные дроны побеждены!
                                -- Corrupted Drones Defeated!
                                { "Russian", "ИСПОРЧЕННЫЕ ДРОНЫ ПОБЕЖДЕНЫ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_REPAIR_BUILDING_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружен терминал расшифровки
                                -- Decryption Terminal Located
                                { "Russian", "ОБНАРУЖЕН ТЕРМИНАЛ РАСШИФРОВКИ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_REPAIR_BUILDING_FAIL_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Идентификатор компонента поврежден &lt;IMG&gt;SLASH&lt;&gt; Терминал не найден
                                -- Component Signature Corrupt &lt;IMG&gt;SLASH&lt;&gt; Terminal Not Located
                                { "Russian", "ИДЕНТИФИКАТОР КОМПОНЕНТА ПОВРЕЖДЕН&#xA;ТЕРМИНАЛ НЕ НАЙДЕН" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_DISCOVER_PLANET_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружена неизученная планета
                                -- Unsurveyed Planet Located
                                { "Russian", "ОБНАРУЖЕНА НЕИЗУЧЕННАЯ ПЛАНЕТА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_DISCOVER_BUILDING_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Строение обнаружено &lt;IMG&gt;SLASH&lt;&gt; Идет взлом терминала
                                -- Structure Located &lt;IMG&gt;SLASH&lt;&gt; Overriding Terminal
                                { "Russian", "СТРОЕНИЕ ОБНАРУЖЕНО • ПЕРЕНАСТРАИВАЕМ ТЕРМИНАЛ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_PORTALQUEST_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружены камни знаний
                                -- Knowledge Stones Detected
                                { "Russian", "ОБНАРУЖЕНЫ КАМНИ ЗНАНИЙ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_PORTALQUEST_STONES_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вход в атмосферу &lt;IMG&gt;SLASH&lt;&gt; Обнаружены камни знаний
                                -- Entering Atmosphere &lt;IMG&gt;SLASH&lt;&gt; Knowledge Stones Detected
                                { "Russian", "ВХОД В АТМОСФЕРУ • КАМНИ ЗНАНИЙ ОБНАРУЖЕНЫ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_PORTALQUEST_HAZARD_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ВНИМАНИЕ &lt;IMG&gt;SLASH&lt;&gt; ОБНАРУЖЕНА НЕСТАБИЛЬНОСТЬ
                                -- CAUTION &lt;IMG&gt;SLASH&lt;&gt; INSTABILITY DETECTED
                                { "Russian", "ОБНАРУЖЕНА НЕСТАБИЛЬНОСТЬ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_PORTALQUEST_RIFT_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружено нарушение
                                -- Disturbance Detected
                                { "Russian", "ОБНАРУЖЕНО ИСКАЖЕНИЕ" },
                            }
                        },
                        --
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PULSE_DRIVE_BLOCKED" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %ITEM% — ОТКЛЮЧЕН &lt;IMG&gt;SLASH&lt;&gt; РЯДОМ ВРАЖДЕБНЫЕ КОРАБЛИ
                                { "Russian", "ПЛАЗМОДВИГАТЕЛЬ ОТКЛЮЧЁН&#xA;РЯДОМ ВРАЖДЕБНЫЕ КОРАБЛИ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PULSE_DRIVE_UNLOCKED" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %ITEM% — ВКЛЮЧЕН &lt;IMG&gt;SLASH&lt;&gt; ПОБЕГ ВОЗМОЖЕН
                                { "Russian", "ПЛАЗМОДВИГАТЕЛЬ ВКЛЮЧЕН&#xA;ПОБЕГ ВОЗМОЖЕН" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SALVAGE_SCRAP_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Звездолет разобран на лом &lt;IMG&gt;SLASH&lt;&gt; Получены компоненты
                                -- Starship Destroyed for Scrap &lt;IMG&gt;SLASH&lt;&gt; Components Awarded
                                { "Russian", "ЗВЕЗДОЛЁТ РАЗОБРАН НА ЛОМ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SALVAGE_CLASS_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Класс звездолета улучшен!
                                -- Starship Class Upgraded!
                                { "Russian", "КЛАСС ЗВЕЗДОЛЁТА УЛУЧШЕН" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SALVAGE_SLOTS_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Инвентарь звездолета увеличен!
                                -- Starship Inventory Size Increased!
                                { "Russian", "ИНВЕНТАРЬ ЗВЕЗДОЛЁТА УВЕЛИЧЕН" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_MISSION_PLANET_ARRIVE_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вы добрались до нужной планеты
                                -- Target Planet Reached
                                { "Russian", "ДОСТИГНУТА НУЖНАЯ ПЛАНЕТА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COST_NO_SLOTS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Достигнут максимальный размер хранилища
                                -- Max Storage Reached
                                { "Russian", "Достигнут предел" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_COST_NO_CLASS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Достигнут максимальный класс
                                -- Max Class Reached
                                { "Russian", "ДОСТИГНУТ МАКСИМАЛЬНЫЙ КЛАСС" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CS_FACTORY_OBJ1_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПОЛУЧЕНЫ КООРДИНАТЫ ЦЕЛИ
                                -- TARGET COORDINATES RECEIVED
                                { "Russian", "ПОЛУЧЕНЫ КООРДИНАТЫ" },
                            }
                        },
                    }
                },
                { -- LANGUAGE/NMS_LOC6_RUSSIAN.MBIN
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_LOC6_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FREIGHT_SLOTS_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Инвентарь грузового судна увеличен!
                                -- Freighter Inventory Size Increased!
                                { "Russian", "ИНВЕНТАРЬ ГРУЗОВОГО СУДНА УВЕЛИЧЕН" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MISSIONMARKER_DISC_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Цель задания обнаружена!
                                -- Mission Objective Located!
                                { "Russian", "ЦЕЛЬ ЗАДАНИЯ ОБНАРУЖЕНА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FREIGHTER_TELEPORTER_ERROR" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Нет доступных терминалов назначения &lt;IMG&gt;SLASH&lt;&gt; Требуется перезагрузка сети
                                -- No Destination Terminals Available &lt;IMG&gt;SLASH&lt;&gt; Network Reactivation Required
                                { "Russian", "НЕТ ДОСТУПНЫХ ТЕРМИНАЛОВ ДЛЯ ТЕЛЕПОРТАЦИИ" },
                            }
                        },

                        --#region ВХОДЯЩЕЕ СООБЩЕНИЕ // АВТОМАТИЧЕСКАЯ ЧАСТОТА
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_RELAY_POI_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ВХОДЯЩЕЕ СООБЩЕНИЕ &lt;IMG&gt;SLASH&lt;&gt; АВТОМАТИЧЕСКАЯ ЧАСТОТА
                                -- INCOMING MESSAGE &lt;IMG&gt;SLASH&lt;&gt; AUTOMATED FREQUENCY
                                { "Russian", "СООБЩЕНИЕ ОТ АВТОМАТИЗИРОВАННОЙ СИСТЕМЫ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_LISTENER_POI_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ВХОДЯЩЕЕ СООБЩЕНИЕ &lt;IMG&gt;SLASH&lt;&gt; АВТОМАТИЧЕСКАЯ ЧАСТОТА
                                { "Russian", "СООБЩЕНИЕ ОТ АВТОМАТИЗИРОВАННОЙ СИСТЕМЫ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CLOCK_POI_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ВХОДЯЩЕЕ СООБЩЕНИЕ &lt;IMG&gt;SLASH&lt;&gt; АВТОМАТИЧЕСКАЯ ЧАСТОТА
                                { "Russian", "СООБЩЕНИЕ ОТ АВТОМАТИЗИРОВАННОЙ СИСТЕМЫ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PRISON_POI_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ВХОДЯЩЕЕ СООБЩЕНИЕ &lt;IMG&gt;SLASH&lt;&gt; АВТОМАТИЧЕСКАЯ ЧАСТОТА
                                { "Russian", "СООБЩЕНИЕ ОТ АВТОМАТИЗИРОВАННОЙ СИСТЕМЫ" },
                            }
                        },
                        --#endregion

                        --#region АНОМАЛЬНАЯ ЧАСТОТА
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WEIRD_OBJ3_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ВХОДЯЩЕЕ СООБЩЕНИЕ &lt;IMG&gt;SLASH&lt;&gt; АНОМАЛЬНАЯ ЧАСТОТА
                                -- INCOMING MESSAGE &lt;IMG&gt;SLASH&lt;&gt; ANOMALOUS FREQUENCY
                                { "Russian", "ВХОДЯЩЕЕ СООБЩЕНИЕ НА АНОМАЛЬНОЙ ЧАСТОТЕ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WEIRD_OBJ5_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ВХОДЯЩЕЕ СООБЩЕНИЕ &lt;IMG&gt;SLASH&lt;&gt; АНОМАЛЬНАЯ ЧАСТОТА
                                { "Russian", "ВХОДЯЩЕЕ СООБЩЕНИЕ НА АНОМАЛЬНОЙ ЧАСТОТЕ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ATLAS_BEACON_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ВХОДЯЩЕЕ СООБЩЕНИЕ &lt;IMG&gt;SLASH&lt;&gt; АНОМАЛЬНАЯ ЧАСТОТА
                                { "Russian", "ВХОДЯЩЕЕ СООБЩЕНИЕ НА АНОМАЛЬНОЙ ЧАСТОТЕ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JELLY_POI_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ВХОДЯЩЕЕ СООБЩЕНИЕ &lt;IMG&gt;SLASH&lt;&gt; АНОМАЛЬНАЯ ЧАСТОТА
                                { "Russian", "ВХОДЯЩЕЕ СООБЩЕНИЕ НА АНОМАЛЬНОЙ ЧАСТОТЕ" },
                            }
                        },
                        --#endregion

                        -- по идее должна быть "экстренная частота", но как-то это не звучит или просто непривычно
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WEIRD_OBJ13_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ВХОДЯЩЕЕ СООБЩЕНИЕ &lt;IMG&gt;SLASH&lt;&gt; АВАРИЙНАЯ ЧАСТОТА
                                -- INCOMING MESSAGE &lt;IMG&gt;SLASH&lt;&gt; EMERGENCY FREQUENCY
                                { "Russian", "ЭКСТРЕННОЕ СООБЩЕНИЕ" },
                            }
                        },
                        --
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MISSIONSURVEY_APPROX_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Достигнуто место выполнения задания &lt;IMG&gt;SLASH&lt;&gt; Приземлитесь, чтобы начать поиск
                                -- Mission destination reached &lt;IMG&gt;SLASH&lt;&gt; Land to begin search
                                { "Russian", "ДОСТИГНУТО МЕСТО НАЗНАЧЕНИЯ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "PULSE_ENCOUNTER_OSD_ABAND" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ОБНАРУЖЕН АВАРИЙНЫЙ СИГНАЛ&lt;IMG&gt;SLASH&lt;&gt; ПРЕРВИТЕ ИМПУЛЬС ДЛЯ ПЕРЕХВАТА
                                -- EMERGENCY BROADCAST DETECTED &lt;IMG&gt;SLASH&lt;&gt; EXIT PULSE TO INTERCEPT
                                { "Russian", "ОБНАРУЖЕН АВАРИЙНЫЙ СИГНАЛ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "PULSE_ENCOUNTER_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ОБНАРУЖЕНА АНОМАЛИЯ &lt;IMG&gt;SLASH&lt;&gt; СНИЗЬТЕ СКОРОСТЬ, ЧТОБЫ ЕЕ ИЗУЧИТЬ
                                { "Russian", "ОБНАРУЖЕНА АНОМАЛИЯ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "PULSE_ENCOUNTER_OSD_NORM" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ОБНАРУЖЕН ВАЖНЫЙ ОБЪЕКТ &lt;IMG&gt;SLASH&lt;&gt; СНИЗЬТЕ СКОРОСТЬ, ЧТОБЫ ЕГО ИЗУЧИТЬ
                                { "Russian", "ОБНАРУЖЕН ВАЖНЫЙ ОБЪЕКТ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "PULSE_ENCOUNTER_OSD_EGG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ОБНАРУЖЕНА ИНОПЛАНЕТНАЯ МЕЛОДИЯ &lt;IMG&gt;SLASH&lt;&gt; СНИЗЬТЕ СКОРОСТЬ, ЧТОБЫ ЕЕ ИЗУЧИТЬ
                                { "Russian", "ОБНАРУЖЕНА ИНОПЛАНЕТНАЯ МЕЛОДИЯ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WEAPON_CLASS_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Класс мультитула повышен!
                                -- Multi-Tool Class Upgraded!
                                { "Russian", "КЛАСС МУЛЬТИТУЛА ПОВЫШЕН" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SUIT_SLOTS_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Инвентарь экзокостюма улучшен
                                -- Exosuit Inventory Upgraded!
                                { "Russian", "ИНВЕНТАРЬ ЭКЗОКОСТЮМА УЛУЧШЕН" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_RESCUE_FREIGHTER_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Рядом находится грузовой корабль, атакованный пиратами &lt;IMG&gt;SLASH&lt;&gt; Уничтожьте пиратов, чтобы спасти флот
                                -- Nearby freighter under attack &lt;IMG&gt;SLASH&lt;&gt; Destroy pirates to save the fleet
                                { "Russian", "ГРУЗОВОЙ КОРАБЛЬ АТАКОВАН ПИРАТАМИ!&#xA;УНИЧТОЖЬТЕ ПИРАТОВ И СПАСИТЕ ФЛОТ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_METEOR_WARNING_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПРЕДУПРЕЖДЕНИЕ &lt;IMG&gt;SLASH&lt;&gt; ОПАСНОСТЬ МЕТЕОРИТНОГО ДОЖДЯ
                                -- WARNING &lt;IMG&gt;SLASH&lt;&gt; INCOMING METEOR SHOWER
                                { "Russian", "НАДВИГАЕТСЯ МЕТЕОРИТНЫЙ ДОЖДЬ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_LIGHTNING_WARNING_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПРЕДУПРЕЖДЕНИЕ &lt;IMG&gt;SLASH&lt;&gt; ЭЛЕКТРИЧЕСКОЕ ВОЗМУЩЕНИЕ
                                -- WARNING &lt;IMG&gt;SLASH&lt;&gt; ELECTRICAL DISTURBANCE DETECTED
                                { "Russian", "ЗАМЕЧЕНО ЭЛЕКТРИЧЕСКОЕ ВОЗМУЩЕНИЕ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TORNADO_WARNING_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПРЕДУПРЕЖДЕНИЕ &lt;IMG&gt;SLASH&lt;&gt; УРАГАННЫЙ ВЕТЕР
                                -- WARNING &lt;IMG&gt;SLASH&lt;&gt; EXTREME WIND EVENT DETECTED
                                { "Russian", "НАДВИГАЕТСЯ УРАГАННЫЙ ВЕТЕР" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_GRAVITY_WARNING_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПРЕДУПРЕЖДЕНИЕ &lt;IMG&gt;SLASH&lt;&gt; ГРАВИТАЦИОННАЯ АНОМАЛИЯ
                                -- WARNING &lt;IMG&gt;SLASH&lt;&gt; GRAVITATIONAL ANOMALY DETECTED
                                { "Russian", "ЗАМЕЧЕНА ГРАВИТАЦИОННАЯ АНОМАЛИЯ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ABAND_DOOR_OPEN_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ДВЕРЬ РАЗБЛОКИРОВАНА &lt;IMG&gt;SLASH&lt;&gt; БУДЬТЕ ОСТОРОЖНЫ
                                -- DOOR SEAL REMOVED &lt;IMG&gt;SLASH&lt;&gt; PROCEED WITH CAUTION
                                { "Russian", "ДВЕРЬ РАЗБЛОКИРОВАНА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NO_ABAND_SAVE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ВНИМАНИЕ: ИГРА НЕ СОХРАНЯЕТСЯ НА БОРТУ ЗАБРОШЕННЫХ КОРАБЛЕЙ
                                -- WARNING: GAME NOT SAVED ABOARD DERELICTS
                                { "Russian", "ИГРА НЕ СОХРАНЯЕТСЯ НА БОРТУ ЗАБРОШЕННЫХ КОРАБЛЕЙ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_LOCKED_ITEM_ERROR" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Чертеж заблокирован &lt;IMG&gt;SLASH&lt;&gt; Чтобы его открыть, исследуйте предыдущий чертеж
                                -- Blueprint is Locked &lt;IMG&gt;SLASH&lt;&gt; Research Parent to Unlock
                                { "Russian", "СНАЧАЛА ИЗУЧИТЕ ПРЕДЫДУЩИЙ ЧЕРТЕЖ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JELLY_SCREAM" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;SLASH&lt;&gt; ОБНАРУЖЕНЫ ВЫСОКИЕ НЕСЛЫШИМЫЕ КОЛЕБАНИЯ &lt;IMG&gt;SLASH&lt;&gt;
                                -- &lt;IMG&gt;SLASH&lt;&gt; EXTREME SUB-AUDIBLE RESONANCE DETECTED &lt;IMG&gt;SLASH&lt;&gt;
                                { "Russian", "ОБНАРУЖЕНЫ ВЫСОКИЕ НЕСЛЫШИМЫЕ КОЛЕБАНИЯ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CONTAINMENT_FAILURE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КОНТЕЙНЕР РАЗРУШЕН &lt;IMG&gt;SLASH&lt;&gt; ОБРАЗЕЦ ВЫБРОШЕН ЗА БОРТ
                                -- CONTAINMENT DESTROYED &lt;IMG&gt;SLASH&lt;&gt; SAMPLE JETTISONED
                                { "Russian", "КОНТЕЙНЕР РАЗРУШЕН&#xA;ОБРАЗЕЦ ВЫБРОШЕН ЗА БОРТ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NO_MAP_HERE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Не удается использовать карту &lt;IMG&gt;SLASH&lt;&gt; Помехи от Космической Аномалии
                                -- Cannot use chart &lt;IMG&gt;SLASH&lt;&gt; Space Anomaly locational interference
                                { "Russian", "КОСМИЧЕСКАЯ АНОМАЛИЯ МЕШАЕТ ВЫЧИСЛИТЬ МАРШРУТ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EVENT_DUPE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Не удается использовать карту &lt;IMG&gt;SLASH&lt;&gt; Похожее строение уже отмечено
                                -- Cannot use chart &lt;IMG&gt;SLASH&lt;&gt; Similar building target already marked
                                { "Russian", "ПОХОЖЕЕ СТРОЕНИЕ УЖЕ ОТМЕЧЕНО" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EVENT_FAILURE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Не удается использовать карту &lt;IMG&gt;SLASH&lt;&gt; Локальные помехи
                                -- Cannot use chart &lt;IMG&gt;SLASH&lt;&gt; Locational interference
                                { "Russian", "МЕСТНЫЕ ПОМЕХИ МЕШАЮТ ВЫЧИСЛИТЬ МАРШРУТ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TECH_DEPLOY_ERROR_BIO" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Нельзя вырастить на неорганическом судне
                                -- Cannot be grown in inorganic vessels
                                { "Russian", "НЕЛЬЗЯ ВЫРАСТИТЬ НА НЕОРГАНИЧЕСКОМ СУДНЕ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TECH_DEPLOY_ERROR_NONBIO" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Нельзя установить на разумный корабль
                                -- Cannot be grafted to sentient vessel
                                { "Russian", "НЕЛЬЗЯ УСТАНОВИТЬ НА РАЗУМНЫЙ КОРАБЛЬ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PHOTO_BIO_GUIDED_PLANET_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Нужная планета обнаружена
                                -- Target Planet Located
                                { "Russian", "ОБНАРУЖЕНА НУЖНАЯ ПЛАНЕТА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SIGNAL_TREASURERUIN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружены древние руины
                                -- Ancient Ruined Site Detected
                                { "Russian", "ОБНАРУЖЕНЫ ДРЕВНИЕ РУИНЫ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ABAND_REVEAL_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- АКТИВИРОВАН СКАНЕР АВАРИЙНЫХ СИГНАЛОВ... НАСТРОЙКА...
                                -- EMERGENCY SIGNAL SCANNER ACTIVATED... TUNING...
                                { "Russian", "НАСТРОЙКА... ПОИСК АВАРИЙНЫХ СИГНАЛОВ..." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NO_REPAIR_KIT_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- В инвентаре нет ремонтных комплектов
                                -- No Repair Kit In Inventory
                                { "Russian", "В ИНВЕНТАРЕ НЕТ РЕМОНТНЫХ КОМПЛЕКТОВ" },
                            }
                        },
                    }
                },
                { -- LANGUAGE/NMS_LOC7_RUSSIAN.MBIN
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_LOC7_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_LOCKED_ITEM_ERROR_SEASON" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Память о технологии потеряна &lt;IMG&gt;SLASH&lt;&gt; Невозможно разблокировать
                                -- Technology Memory Lost &lt;IMG&gt;SLASH&lt;&gt; Cannot Unlock
                                { "Russian", "ИНФОРМАЦИЯ О ТЕХНОЛОГИИ УТЕРЯНА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_LOCATED_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружено планетарное поселение
                                -- Planetary Settlement Located
                                { "Russian", "ОБНАРУЖЕНО ПЛАНЕТАРНОЕ ПОСЕЛЕНИЕ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NO_EDIT_SETTLEMENT_TERRAIN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Нельзя добывать ресурсы на территории поселения
                                -- Cannot mine within settlement limits
                                { "Russian", "НЕЛЬЗЯ ДОБЫВАТЬ РЕСУРСЫ НА ТЕРРИТОРИИ ПОСЕЛЕНИЯ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_INFEST_PLANET_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружена зараженная планета
                                { "Russian", "ОБНАРУЖЕНА ЗАРАЖЁННАЯ ПЛАНЕТА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_HIVE_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружена активность стражей
                                -- Sentinel Activity Detected
                                { "Russian", "ОБНАРУЖЕНА АКТИВНОСТЬ СТРАЖЕЙ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENTINEL_HIVE_COMBAT_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ТРЕВОГА &lt;IMG&gt;SLASH&lt;&gt; ТЕРМИНАЛ ЗАБЛОКИРОВАН
                                -- SECURITY ALERT &lt;IMG&gt;SLASH&lt;&gt; TERMINAL IN LOCKDOWN
                                { "Russian", "ТЕРМИНАЛ ЗАБЛОКИРОВАН" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_HIVE_INTERACT_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- СТОЛП СТРАЖЕЙ УЯЗВИМ &lt;IMG&gt;SLASH&lt;&gt; УЗЕЛ ТЕРМИНАЛА ОТКРЫТ
                                -- SENTINEL PILLAR VULNERABLE &lt;IMG&gt;SLASH&lt;&gt; TERMINAL NODE NOW OPEN
                                { "Russian", "ДОСТУП К ТЕРМИНАЛУ СТОЛПА СТРАЖЕЙ ОТКРЫТ" },
                            }
                        },
                        --
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_HAIL_BIOFRIG_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ВХОДЯЩЕЕ СООБЩЕНИЕ &lt;IMG&gt;SLASH&lt;&gt; АНОМАЛЬНАЯ ЧАСТОТА
                                -- INCOMING MESSAGE &lt;IMG&gt;SLASH&lt;&gt; ANOMALOUS FREQUENCY
                                { "Russian", "ВХОДЯЩЕЕ СООБЩЕНИЕ НА АНОМАЛЬНОЙ ЧАСТОТЕ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SCAN_BLOCKER_SUCCESS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сканирование груза пресечено!
                                -- Incoming Cargo Probe Scambled!
                                { "Russian", "СКАНИРОВАНИЕ ГРУЗА ПРЕСЕЧЕНО" },
                            }
                        },
                        -- как-то это не по-русски и вообще не очень понятно
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIRATE_RAID_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Определено направление атаки пиратов &lt;IMG&gt;SLASH&lt;&gt; Цель: близлежащее строение
                                -- Pirate Attack Vector Detected &lt;IMG&gt;SLASH&lt;&gt; Nearby Structure Targeted
                                { "Russian", "ПИРАТЫ АТАКУЮТ БЛИЗЛЕЖАЩЕЕ СТРОЕНИЕ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIRATE_RAID_OSD_ALT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ВНИМАНИЕ &lt;IMG&gt;SLASH&lt;&gt; Определено направление вражеской атаки!
                                -- WARNING &lt;IMG&gt;SLASH&lt;&gt; Hostile Attack Vector Detected!
                                { "Russian", "ЗАФИКСИРОВАН ВРАЖЕСКИЙ ОГОНЬ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "POLICE_SCAN_APPROACH" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Приближаются стражи-перехватчики!
                                -- Sentinel Interceptors Approaching Combat Range!
                                { "Russian", "ПРИБЛИЖАЮТСЯ СТРАЖИ-ПЕРЕХВАТЧИКИ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "POLICE_SCAN_WANTED" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Внимание &lt;IMG&gt;SLASH&lt;&gt; Замечен вылет стражей-перехватчиков звездолетов
                                -- Alert &lt;IMG&gt;SLASH&lt;&gt; Sentinel Starship Interceptors Deploying
                                { "Russian", "ЗАМЕЧЕН ВЫЛЕТ СТРАЖЕЙ-ПЕРЕХВАТЧИКОВ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TRADER_ATTACK_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Конвой торговцев перехвачен!
                                -- Trader Convoy Intercepted!
                                { "Russian", "КОНВОЙ ТОРГОВЦЕВ ПЕРЕХВАЧЕН" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENTINELS_DISABLED" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ТРЕВОГА &lt;IMG&gt;SLASH&lt;&gt; Локальная сеть стражей отключена!
                                -- ALERT &lt;IMG&gt;SLASH&lt;&gt; Local Sentinel network has been disabled!
                                { "Russian", "ЛОКАЛЬНАЯ СЕТЬ СТРАЖЕЙ ОТКЛЮЧЕНА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENTINELS_DISABLED_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Перезапуск: успешно &lt;IMG&gt;SLASH&lt;&gt; Планетарные стражи отключены!
                                -- Override Success &lt;IMG&gt;SLASH&lt;&gt; Planetary Sentinels Disabled!
                                { "Russian", "ПЕРЕЗАПУСК УСПЕШНО ВЫПОЛНЕН" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_POLICE_HAIL_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;SLASH&lt;&gt; Обнаружено зондирование груза службой охраны станции! &lt;IMG&gt;SLASH&lt;&gt;
                                -- &lt;IMG&gt;SLASH&lt;&gt; Station Authority Cargo Probe Detected! &lt;IMG&gt;SLASH&lt;&gt;
                                { "Russian", "СЛУЖБА ОХРАНЫ СТАНЦИИ ПРОВОДИТ ДОСМОТР ГРУЗА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "POLICE_SCAN_FOUND_ILLEGAL_CARGO" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сканирование груза завершено &lt;IMG&gt;SLASH&lt;&gt; ОБНАРУЖЕНЫ ЗАПРЕЩЕННЫЕ ТОВАРЫ!
                                -- Cargo Scan Complete &lt;IMG&gt;SLASH&lt;&gt; BANNED GOODS DETECTED!
                                { "Russian", "ДОСМОТР ГРУЗА ЗАВЕРШЕН&#xA;ОБНАРУЖЕНЫ ЗАПРЕЩЕННЫЕ ТОВАРЫ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "POLICE_SCAN_NO_ILLEGAL_CARGO" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сканирование груза завершено &lt;IMG&gt;SLASH&lt;&gt; РАЗРЕШЕНИЕ ПОЛУЧЕНО
                                -- Cargo Scan Complete &lt;IMG&gt;SLASH&lt;&gt; CLEAR TO PROCEED
                                { "Russian", "ДОСМОТР ГРУЗА ЗАВЕРШЕН&#xA;РАЗРЕШЕНИЕ ПОЛУЧЕНО" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "POLICE_SCAN_DODGED" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сканирование груза заблокировано &lt;IMG&gt;SLASH&lt;&gt; РАЗРЕШЕНИЕ ПОЛУЧЕНО
                                -- Cargo Scan Blocked &lt;IMG&gt;SLASH&lt;&gt; CLEAR TO PROCEED
                                { "Russian", "ДОСМОТР ГРУЗА ОТВЕДЕН&#xA;РАЗРЕШЕНИЕ ПОЛУЧЕНО" },
                            }
                        },
                        -- хз где используется, но на всякий случай
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CANT_PIN_INSTALLED" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Технология уже установлена
                                -- Technology already installed
                                { "Russian", "ТЕХНОЛОГИЯ УЖЕ УСТАНОВЛЕНА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BASEBUILD_INSIDE_DEL_ERROR" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Нельзя удалить &lt;IMG&gt;SLASH&lt;&gt; Игрок находится внутри модуля
                                -- Cannot delete &lt;IMG&gt;SLASH&lt;&gt; Player is inside this module
                                { "Russian", "НЕЛЬЗЯ УДАЛИТЬ • ИГРОК ВНУТРИ МОДУЛЯ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BASEBUILD_INSIDE_DEL_ERROR_ALT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Нельзя удалить &lt;IMG&gt;SLASH&lt;&gt; %NAME% находится внутри модуля
                                -- Cannot delete &lt;IMG&gt;SLASH&lt;&gt; %NAME% is inside this module
                                { "Russian", "НЕЛЬЗЯ УДАЛИТЬ • ВНУТРИ МОДУЛЯ: %NAME%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ALIEN_INV_ERROR" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Достигнут максимальный размер хранилища
                                -- Max Storage Reached
                                { "Russian", "Предел хранилища" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WEAPON_INV_CLASS_MAX" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Максимум ячеек для текущего класса мультитула
                                -- Max slots for current Multi-Tool class
                                { "Russian", "Максимум ячеек для класса" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SHIP_INV_CLASS_MAX" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Максимум ячеек для текущего класса корабля
                                -- Max slots for current ship class
                                { "Russian", "Максимум ячеек для класса" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PULSE_ENCOUNTER_OSD_BIOFRIG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- УСЛЫШАНА КИТОВАЯ ПЕСНЯ &lt;IMG&gt;SLASH&lt;&gt; СНИЗЬТЕ СКОРОСТЬ, ЧТОБЫ ЕЕ ИЗУЧИТЬ
                                -- WHALESONG DETECTED &lt;IMG&gt;SLASH&lt;&gt; EXIT PULSE TO EXAMINE
                                { "Russian", "ПОБЛИЗОСТИ СЛЫШНА ПЕСНЬ КИТА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIRATECLUE_POI_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ВХОДЯЩЕЕ СООБЩЕНИЕ &lt;IMG&gt;SLASH&lt;&gt; АВАРИЙНАЯ ЧАСТОТА
                                -- INCOMING MESSAGE &lt;IMG&gt;SLASH&lt;&gt; DISTRESS FREQUENCY
                                { "Russian", "ВХОДЯЩЕЕ СООБЩЕНИЕ НА АВАРИЙНОЙ ЧАСТОТЕ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CRAFT_ERROR_NEVER_CRAFTED" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Предмет не создавался &lt;IMG&gt;SLASH&lt;&gt; Закрепите, чтобы найти предмет
                                -- Item is Never Crafted &lt;IMG&gt;SLASH&lt;&gt; Pin to Locate Item
                                { "Russian", "ПРЕДМЕТ НЕВОЗМОЖНО ИЗГОТОВИТЬ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIRATECLUE_POI_ALERT_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ОБНАРУЖЕН АВАРИЙНЫЙ СИГНАЛ &lt;IMG&gt;SLASH&lt;&gt; ПРЕРВИТЕ ИМПУЛЬС ДЛЯ ПЕРЕХВАТА
                                -- EMERGENCY BROADCAST DETECTED &lt;IMG&gt;SLASH&lt;&gt; EXIT PULSE TO INTERCEPT
                                { "Russian", "ОБНАРУЖЕН АВАРИЙНЫЙ СИГНАЛ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIRATES1_ABAND_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ВХОДЯЩЕЕ СООБЩЕНИЕ &lt;IMG&gt;SLASH&lt;&gt; НЕИЗВЕСТНАЯ ЧАСТОТА
                                -- INCOMING MESSAGE &lt;IMG&gt;SLASH&lt;&gt; UNKNOWN FREQUENCY
                                { "Russian", "ВХОДЯЩЕЕ СООБЩЕНИЕ НА НЕИЗВЕСТНОЙ ЧАСТОТЕ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SETTLEMENT_CLAIMED_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Доступ к управлению поселением получен!
                                -- Settlement Management Request Granted!
                                { "Russian", "ПОЛУЧЕН ДОСТУП К УПРАВЛЕНИЮ ПОСЕЛЕНИЕМ" },
                            }
                        },
                    }
                },
                { -- LANGUAGE/NMS_LOC8_RUSSIAN.MBIN
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_LOC8_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TECH_DEPLOY_ERROR_ROBOT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Протокол Эрона запрещает установку
                                -- Aeron Protocol forbids installation
                                { "Russian", "ПРОТОКОЛ ЭРОНА ЗАПРЕЩАЕТ УСТАНОВКУ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TECH_DEPLOY_ERROR_NONROBOT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Протокол Эрона отторгает инопланетную технологию
                                -- Aeron Protocol rejects alien technology
                                { "Russian", "ПРОТОКОЛ ЭРОНА ОТТОРГАЕТ ИНОПЛАНЕТНУЮ ТЕХНОЛОГИЮ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_INSUFFICIENT_BUI_SCRAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Недостаточно пыли пустоты
                                -- Insufficient Void Motes
                                { "Russian", "НЕДОСТАТОЧНО ПЫЛИ ПУСТОТЫ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_BUGS_PLANET_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружено место расположения стаи
                                -- Broodling Site Detected
                                { "Russian", "ОБНАРУЖЕНО ГНЕЗДО СТАИ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_CORRUPT_PLANET_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружен всплеск диссонанса
                                -- Dissonance Spike Detected
                                { "Russian", "ОБНАРУЖЕН ВСПЛЕСК ДИССОНАНСА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SIGNAL_S13_FAIL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Нет сигналов поблизости
                                -- No Nearby Signals Detected
                                { "Russian", "НЕТ СИГНАЛОВ ПОБЛИЗОСТИ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SALVAGE_SCRAP_MT_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Мультитул разобран на лом &lt;IMG&gt;SLASH&lt;&gt; Получены компоненты
                                -- Multi-Tool Destroyed for Scrap &lt;IMG&gt;SLASH&lt;&gt; Components Awarded
                                { "Russian", "МУЛЬТИТУЛ РАЗОБРАН НА ЛОМ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_POLICE_FREIGHT_DESTROYED_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Крупный корабль побежден &lt;IMG&gt;SLASH&lt;&gt; Стражи отступают
                                -- Capital Ship Defeated &lt;IMG&gt;SLASH&lt;&gt; Sentinel Forces Retreating
                                { "Russian", "КРУПНЫЙ КОРАБЛЬ ПОБЕЖДЕН&#xA;СТРАЖИ ОТСТУПАЮТ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NOTIFY_HOSTILE_PLANT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружена опасная флора
                                -- Hazardous Flora Detected
                                { "Russian", "ОБНАРУЖЕНА ОПАСНАЯ ФЛОРА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BATTLE_BAR_DEFEAT_HINT_ALT1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Гражданский флот спасен от пиратов!
                                -- Civilian fleet saved from pirates!
                                { "Russian", "ГРАЖДАНСКИЙ ФЛОТ СПАСЕН" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIRATE_SURRENDER_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Получен сигнал бедствия &lt;IMG&gt;SLASH&lt;&gt; Пиратский дредноут сдался
                                -- Distress signal detected &lt;IMG&gt;SLASH&lt;&gt; Pirate Dreadnought has surrendered
                                { "Russian", "ПОЛУЧЕН СИГНАЛ БЕДСТВИЯ&#xA;ПИРАТСКИЙ ДРЕДНОУТ СДАЛСЯ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIRATE_FREIGHTER_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружен пиратский крупный корабль! &lt;IMG&gt;SLASH&lt;&gt; Дредноут атакует гражданский флот!
                                -- Pirate capital ship detected &lt;IMG&gt;SLASH&lt;&gt; Dreadnought attacking civilian fleet!
                                { "Russian", "ПИРАТСКИЙ ДРЕДНОУТ АТАКУЕТ ГРАЖДАНСКИЙ ФЛОТ!" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIRATE_FREI_SHIELD_DOWN_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ГЕНЕРАТОРЫ ЩИТОВ УНИЧТОЖЕНЫ &lt;IMG&gt;SLASH&lt;&gt; ДРЕДНОУТ УЯЗВИМ
                                -- SHIELD GENERATORS DESTROYED &lt;IMG&gt;SLASH&lt;&gt; DREADNOUGHT VULNERABLE
                                { "Russian", "ГЕНЕРАТОРЫ ЩИТОВ УНИЧТОЖЕНЫ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIRATE_FLEE_CANCEL_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ДВИГАТЕЛИ ДРЕДНОУТА УНИЧТОЖЕНЫ &lt;IMG&gt;SLASH&lt;&gt; ВАРП-ПРЫЖОК НЕВОЗМОЖЕН
                                -- DREADNOUGHT ENGINES DESTROYED &lt;IMG&gt;SLASH&lt;&gt; WARP DISABLED
                                { "Russian", "ДВИГАТЕЛИ ДРЕДНОУТА УНИЧТОЖЕНЫ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CIVILIAN_FLEET_SHIELD_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ВНИМАНИЕ &lt;IMG&gt;SLASH&lt;&gt; ГРАЖДАНСКИЙ ФЛОТ УЯЗВИМ
                                -- WARNING &lt;IMG&gt;SLASH&lt;&gt; CIVILIAN FLEET VULNERABLE
                                { "Russian", "ГРАЖДАНСКИЙ ФЛОТ УЯЗВИМ!" },
                            }
                        },
                        -- это же сообщение используется и при установке...
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CANNOT_REPAIR_ERROR" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Нельзя завершить ремонт &lt;IMG&gt;SLASH&lt;&gt; Не хватает ресурсов
                                -- Cannot complete repair &lt;IMG&gt;SLASH&lt;&gt; Insufficient resources
                                { "Russian", "НЕДОСТАТОЧНО РЕСУРСОВ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PULSE_ENCOUNTER_OSD_SENT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ОБНАРУЖЕН СИГНАЛ БЕДСТВИЯ &lt;IMG&gt;SLASH&lt;&gt; ПРЕРВИТЕ ИМПУЛЬС ДЛЯ ПЕРЕХВАТА
                                -- DISTRESS SIGNAL DETECTED &lt;IMG&gt;SLASH&lt;&gt; EXIT PULSE TO INTERCEPT
                                { "Russian", "ОБНАРУЖЕН СИГНАЛ БЕДСТВИЯ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENTINEL_DISTRESS_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сигнатура корабля зарегистрирована &lt;IMG&gt;SLASH&lt;&gt; Сигнал отслежен
                                -- Ship Signature Recorded &lt;IMG&gt;SLASH&lt;&gt; Signal Traced
                                { "Russian", "СИГНАТУРА КОРАБЛЯ ЗАРЕГИСТРИРОВАНА&#xA;СИГНАЛ ОТСЛЕЖЕН" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENTINEL_DISTRESS_OSD_MAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сигнатура корабля зарегистрирована &lt;IMG&gt;SLASH&lt;&gt; Путь прыжка отслежен
                                -- Ship Signature Recorded &lt;IMG&gt;SLASH&lt;&gt; Warp Path Traced
                                { "Russian", "СИГНАТУРА КОРАБЛЯ ЗАРЕГИСТРИРОВАНА&#xA;ПУТЬ ПРЫЖКА ОТСЛЕЖЕН" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENTINEL_DISTRESS_DISC_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Место крушения стража-перехватчика обнаружено!
                                -- Sentinel Interceptor Crash Located!
                                { "Russian", "ОБНАРУЖЕНО МЕСТО КРУШЕНИЯ СТРАЖА-ПЕРЕХВАТЧИКА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_QUICK_MENU_COMMS_NO_SHIP_ERR" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Нельзя использовать сканер за пределами звездолета
                                -- Cannot deploy Economy Scanner from outside the starship
                                { "Russian", "НЕЛЬЗЯ ИСПОЛЬЗОВАТЬ СКАНЕР ВНЕ ЗВЕЗДОЛЁТА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TORPEDO_LAUNCH_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ОБНАРУЖЕН СИГНАЛ ТОРПЕДЫ &lt;IMG&gt;SLASH&lt;&gt; 10 СЕКУНД ДО ЗАПУСКА
                                -- TORPEDO SIGNAL DETECTED &lt;IMG&gt;SLASH&lt;&gt; 10 SECONDS TO LAUNCH
                                { "Russian", "ДО ЗАПУСКА ТОРПЕД — 10 СЕКУНД" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ROBOMISS_1_HEAD_OSD_MAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- НАВИГАЦИОННАЯ ЦЕЛЬ ЗАХВАЧЕНА &lt;IMG&gt;SLASH&lt;&gt; ОТКРОЙТЕ ГАЛАКТИЧЕСКУЮ КАРТУ
                                -- NAVIGATIONAL TARGET ACQUIRED &lt;IMG&gt;SLASH&lt;&gt; CONSULT GALAXY MAP
                                { "Russian", "ПОЛУЧЕНЫ КООРДИНАТЫ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SEASON_TERMINAL_DISABLED" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Терминал недоступен &lt;IMG&gt;SLASH&lt;&gt; Завершите текущую экспедицию
                                -- Terminus Inaccessible &lt;IMG&gt;SLASH&lt;&gt; Complete the current Expedition
                                { "Russian", "СНАЧАЛА ЗАВЕРШИТЕ ТЕКУЩУЮ ЭКСПЕДИЦИЮ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ROBOMISS_1_HEAD_SUR_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружен источник взлома!
                                -- Hijack Source Located!
                                { "Russian", "ОБНАРУЖЕН ИСТОЧНИК ВЗЛОМА!" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ROBOMISS_4_PORTAL_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ОТСЛЕЖИВАНИЕ ЗАВЕРШЕНО &lt;IMG&gt;SLASH&lt;&gt; ОБНАРУЖЕНЫ СИЛОВЫЕ ЛИНИИ ПОРТАЛА
                                -- TRACE SUCCESSFUL &lt;IMG&gt;SLASH&lt;&gt; PORTAL LEYLINES DETECTED
                                { "Russian", "ОБНАРУЖЕНЫ СИЛОВЫЕ ЛИНИИ ПОРТАЛА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ROBOMISS_4_PORTAL_OSD_MAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ОТСЛЕЖИВАНИЕ ЗАВЕРШЕНО &lt;IMG&gt;SLASH&lt;&gt; ОБНАРУЖЕНЫ СИЛОВЫЕ ЛИНИИ ПОРТАЛА
                                -- TRACE SUCCESSFUL &lt;IMG&gt;SLASH&lt;&gt; PORTAL LEYLINES DETECTED
                                { "Russian", "ОБНАРУЖЕНЫ СИЛОВЫЕ ЛИНИИ ПОРТАЛА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CUSTOM_REWARD_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Разблокирована новая настройка внешнего вида
                                -- New Customisation Option Unlocked
                                { "Russian", "РАЗБЛОКИРОВАН НОВЫЙ ЭЛЕМЕНТ ВНЕШНЕГО ВИДА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED13_GRAVE_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружен разрыв в границе
                                -- Boundary Failure Detected
                                { "Russian", "ОБНАРУЖЕН РАЗРЫВ В ГРАНИЦЕ" },
                            }
                        },
                    }
                },
                { -- LANGUAGE/NMS_UPDATE3_RUSSIAN.MBIN
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_UPDATE3_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NOTIFY_LASER_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- РАСЩЕПИТЕЛЬ РАЗРЯЖЕН &lt;IMG&gt;SLASH&lt;&gt; ПЕРЕЗАРЯДИТЕ
                                -- MINING BEAM LOW &lt;IMG&gt;SLASH&lt;&gt; RECHARGE
                                { "Russian", "РАСЩЕПИТЕЛЬ РАЗРЯЖЕН" },
                            }
                        },
                        -- везде использовалось "входящее сообщение" и вдруг передача
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_HIDE_SEEK_ALERT_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;SLASH&lt;&gt; ВХОДЯЩАЯ ПЕРЕДАЧА — ЗАШИФРОВАННАЯ ЧАСТОТА &lt;IMG&gt;SLASH&lt;&gt;
                                -- &lt;IMG&gt;SLASH&lt;&gt; INCOMING TRANSMISSION - ENCODED FREQUENCY &lt;IMG&gt;SLASH&lt;&gt;
                                { "Russian", "ВХОДЯЩЕЕ СООБЩЕНИЕ ПО ЗАШИФРОВАННОМУ КАНАЛУ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "PIRATE_PROBE_NOCARGO" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Враждебные силы отведены: груз бесполезен
                                -- Hostile forces disengaged - worthless cargo
                                { "Russian", "СКАНИРОВАНИЕ ОТРАЖЕНО&#xA;ГРУЗ БЕСПОЛЕЗЕН" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENTINEL_WARNING_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ВНИМАНИЕ &lt;IMG&gt;SLASH&lt;&gt; АКТИВИРОВАНЫ СРЕДСТВА ПОДАВЛЕНИЯ
                                -- WARNING &lt;IMG&gt;SLASH&lt;&gt; SUPPRESSION MEASURES TRIGGERED
                                { "Russian", "ВНИМАНИЕ • АКТИВИРОВАНЫ СРЕДСТВА ПОДАВЛЕНИЯ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENTINEL_WARNING_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ВНИМАНИЕ &lt;IMG&gt;SLASH&lt;&gt; ПОДАВЛЕНИЕ 2 УРОВНЯ: УМЕРЕННОЕ
                                -- WARNING &lt;IMG&gt;SLASH&lt;&gt; SUPPRESSION LEVEL 2 : MODERATE
                                { "Russian", "ВНИМАНИЕ • ПОДАВЛЕНИЕ 2 УРОВНЯ • УМЕРЕННОЕ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENTINEL_WARNING_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ВНИМАНИЕ &lt;IMG&gt;SLASH&lt;&gt; ПОДАВЛЕНИЕ 3 УРОВНЯ: СРОЧНОЕ
                                -- WARNING &lt;IMG&gt;SLASH&lt;&gt; SUPPRESSION LEVEL 3 : URGENT
                                { "Russian", "ВНИМАНИЕ • ПОДАВЛЕНИЕ 3 УРОВНЯ • СРОЧНОЕ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENTINEL_WARNING_4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ВНИМАНИЕ &lt;IMG&gt;SLASH&lt;&gt; ПОДАВЛЕНИЕ 4 УРОВНЯ: СТРЕМИТЕЛЬНОЕ
                                -- WARNING &lt;IMG&gt;SLASH&lt;&gt; SUPPRESSION LEVEL 4 : SEVERE
                                { "Russian", "ВНИМАНИЕ • ПОДАВЛЕНИЕ 4 УРОВНЯ • СТРЕМИТЕЛЬНОЕ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENTINEL_WARNING_5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ВНИМАНИЕ &lt;IMG&gt;SLASH&lt;&gt; ПОДАВЛЕНИЕ 5 УРОВНЯ: МАКСИМАЛЬНОЕ
                                -- WARNING &lt;IMG&gt;SLASH&lt;&gt; SUPPRESSION LEVEL 5 : MAXIMUM
                                { "Russian", "ВНИМАНИЕ • ПОДАВЛЕНИЕ 5 УРОВНЯ • МАКСИМАЛЬНОЕ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SENTINEL_WARNING" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ВНИМАНИЕ &lt;IMG&gt;SLASH&lt;&gt; %NUM% УРОВЕНЬ СТРАЖА
                                -- WARNING &lt;IMG&gt;SLASH&lt;&gt; SENTINEL LEVEL %NUM%
                                { "Russian", "ВНИМАНИЕ • %NUM% УРОВЕНЬ СТРАЖА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FREIGHT_ASSIST_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Установлена экстренная связь
                                -- Emergency Comms Established
                                { "Russian", "УСТАНОВЛЕНА ЭКСТРЕННАЯ СВЯЗЬ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIRATE_HAIL_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Установлена экстренная связь
                                -- Emergency Comms Established
                                { "Russian", "УСТАНОВЛЕНА ЭКСТРЕННАЯ СВЯЗЬ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DELIVERY_OBJ1_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Доставить предмет «%PRIMARYITEM%» на защищенный склад
                                -- Deliver the %PRIMARYITEM% to the secure depot
                                { "Russian", "ДОСТАВЬТЕ ПРЕДМЕТ НА СКЛАД" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DELIVERY_OBJ1_OSD_FAIL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Товары для доставки утеряны
                                -- Delivery goods misplaced
                                { "Russian", "ТОВАРЫ ДЛЯ ДОСТАВКИ УТЕРЯНЫ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_REPAIR_OBJ1_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Получены координаты места ремонта
                                -- Repair Site Coordinates Received
                                { "Russian", "ПОЛУЧЕНЫ КООРДИНАТЫ МЕСТА РЕМОНТА" },
                            }
                        },
                        -- тут надо балансировать обе стороны или использовать среднюю точку
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_COMMS_OSD1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;SLASH&lt;&gt; ВХОДЯЩЕЕ СООБЩЕНИЕ &lt;IMG&gt;SLASH&lt;&gt;  ЧАСТОТА: ИЗВЕСТНЫЙ СОБЕСЕДНИК &lt;IMG&gt;SLASH&lt;&gt;
                                -- &lt;IMG&gt;SLASH&lt;&gt; INCOMING MESSAGE &lt;IMG&gt;SLASH&lt;&gt;  FREQUENCY : KNOWN CONTACT &lt;IMG&gt;SLASH&lt;&gt;
                                { "Russian", "ВХОДЯЩЕЕ СООБЩЕНИЕ ОТ ЗНАКОМОГО СОБЕСЕДНИКА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_COMMS_OSD2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;SLASH&lt;&gt;ВХОДЯЩЕЕ СООБЩЕНИЕ &lt;IMG&gt;SLASH&lt;&gt;  ЧАСТОТА: НЕИЗВЕСТНЫЙ ИСТОЧНИК&lt;IMG&gt;SLASH&lt;&gt;
                                -- &lt;IMG&gt;SLASH&lt;&gt; INCOMING MESSAGE &lt;IMG&gt;SLASH&lt;&gt;  FREQUENCY : SOURCE UNKNOWN &lt;IMG&gt;SLASH&lt;&gt;
                                { "Russian", "ВХОДЯЩЕЕ СООБЩЕНИЕ ОТ НЕЗНАКОМЦА" },
                            }
                        },
                        -- частота какая-то, надо делать по-русски!
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_COMMS_APL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;SLASH&lt;&gt;ВХОДЯЩЕЕ СООБЩЕНИЕ &lt;IMG&gt;SLASH&lt;&gt;  ЧАСТОТА: АПОЛЛОН &lt;IMG&gt;SLASH&lt;&gt;
                                -- &lt;IMG&gt;SLASH&lt;&gt; INCOMING MESSAGE &lt;IMG&gt;SLASH&lt;&gt;  FREQUENCY : APOLLO &lt;IMG&gt;SLASH&lt;&gt;
                                { "Russian", "ВХОДЯЩЕЕ СООБЩЕНИЕ ОТ АПОЛЛОНА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_COMMS_ART" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;SLASH&lt;&gt; ВХОДЯЩЕЕ СООБЩЕНИЕ &lt;IMG&gt;SLASH&lt;&gt;  ЧАСТОТА: АРТЕМИДА &lt;IMG&gt;SLASH&lt;&gt;
                                -- &lt;IMG&gt;SLASH&lt;&gt; INCOMING MESSAGE &lt;IMG&gt;SLASH&lt;&gt;  FREQUENCY : ARTEMIS &lt;IMG&gt;SLASH&lt;&gt;
                                { "Russian", "ВХОДЯЩЕЕ СООБЩЕНИЕ ОТ АРТЕМИДЫ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_COMMS_NLL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;SLASH&lt;&gt; ВХОДЯЩЕЕ СООБЩЕНИЕ &lt;IMG&gt;SLASH&lt;&gt;  ЧАСТОТА: -ПУСТО- &lt;IMG&gt;SLASH&lt;&gt;
                                -- &lt;IMG&gt;SLASH&lt;&gt; INCOMING MESSAGE &lt;IMG&gt;SLASH&lt;&gt;  FREQUENCY : -NULL- &lt;IMG&gt;SLASH&lt;&gt;
                                { "Russian", "ВХОДЯЩЕЕ СООБЩЕНИЕ ОТ -ПУСТО-" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CORE_COMMS_STATION" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;SLASH&lt;&gt; ВХОДЯЩЕЕ СООБЩЕНИЕ &lt;IMG&gt;SLASH&lt;&gt;  ЧАСТОТА: КОСМИЧЕСКАЯ СТАНЦИЯ &lt;IMG&gt;SLASH&lt;&gt;
                                -- &lt;IMG&gt;SLASH&lt;&gt; INCOMING MESSAGE &lt;IMG&gt;SLASH&lt;&gt; FREQUENCY : SPACE STATION &lt;IMG&gt;SLASH&lt;&gt;
                                { "Russian", "ВХОДЯЩЕЕ СООБЩЕНИЕ ОТ КОСМИЧЕСКОЙ СТАНЦИИ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TREASURE_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружены исторические данные
                                -- Historical Data Revealed
                                { "Russian", "РАСКРЫТА ТАЙНА ПРОШЛОГО" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TREE_SCAN_TARGET_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружена неизвестная планета для исследования растений. &lt;IMG&gt;SLASH&lt;&gt; Откройте галактическую карту.
                                -- Undiscovered Planet located for Floral Survey &lt;IMG&gt;SLASH&lt;&gt; Consult Galaxy Map
                                { "Russian", "НАЙДЕНА НЕИЗВЕСТНАЯ ПЛАНЕТА ДЛЯ ИССЛЕДОВАНИЯ РАСТЕНИЙ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MIN_SCAN_TARGET_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружена неизвестная планета для исследования минералов. &lt;IMG&gt;SLASH&lt;&gt; Откройте галактическую карту.
                                -- Undiscovered Planet located for Mineral Survey &lt;IMG&gt;SLASH&lt;&gt; Consult Galaxy Map
                                { "Russian", "НАЙДЕНА НЕИЗВЕСТНАЯ ПЛАНЕТА ДЛЯ ИССЛЕДОВАНИЯ МИНЕРАЛОВ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CRE_SCAN_TARGET_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружена неизвестная планета для исследования существ. &lt;IMG&gt;SLASH&lt;&gt; Откройте галактическую карту.
                                -- Undiscovered Planet located for Creature Survey &lt;IMG&gt;SLASH&lt;&gt; Consult Galaxy Map
                                { "Russian", "НАЙДЕНА НЕИЗВЕСТНАЯ ПЛАНЕТА ДЛЯ ИССЛЕДОВАНИЯ СУЩЕСТВ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WEAPGUY5_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найден склад стражей
                                -- Sentinel Depot Detected
                                { "Russian", "НАЙДЕН СКЛАД СТРАЖЕЙ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WEAPGUY7_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- СТРАЖИ УНИЧТОЖЕНЫ // ВЕРНИТЕСЬ К ОРУЖЕЙНИКУ
                                -- SENTINELS DEFEATED // RETURN TO THE ARMOURER
                                { "Russian", "СТРАЖИ УНИЧТОЖЕНЫ • ВЕРНИТЕСЬ К ОРУЖЕЙНИКУ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FACTORY_TIMED_OSD1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ВНИМАНИЕ: &lt;IMG&gt;SLASH&lt;&gt; ЗАЩИТА ВКЛЮЧЕНА &lt;IMG&gt;SLASH&lt;&gt; ДАННЫЕ УДАЛЯЮТСЯ
                                -- WARNING &lt;IMG&gt;SLASH&lt;&gt; DEFENCES ACTIVE &lt;IMG&gt;SLASH&lt;&gt; DATA WIPE INITIATED
                                { "Russian", "АКТИВИРОВАНА ЗАЩИТА • ДАННЫЕ УДАЛЯЮТСЯ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FACTORY_TIMED_OSD2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ВНИМАНИЕ: &lt;IMG&gt;SLASH&lt;&gt; НЕМИНУЕМАЯ ПОТЕРЯ ДАННЫХ
                                -- WARNING &lt;IMG&gt;SLASH&lt;&gt; DATA WIPE IMMINENT
                                { "Russian", "НЕМИНУЕМАЯ ПОТЕРЯ ДАННЫХ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "QUICK_MENU_SUM_SHIP_NO_SPACE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Здесь сесть нельзя
                                -- Cannot Land Here
                                { "Russian", "ЗДЕСЬ НЕВОЗМОЖНО ПРИЗЕМЛИТЬСЯ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FACTORY_OBJ1_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПОЛУЧЕНЫ КООРДИНАТЫ ЦЕЛИ
                                -- TARGET COORDINATES RECEIVED
                                { "Russian", "ПОЛУЧЕНЫ КООРДИНАТЫ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DEPOT_OBJ1_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПОЛУЧЕНЫ КООРДИНАТЫ ЦЕЛИ
                                -- TARGET COORDINATES RECEIVED
                                { "Russian", "ПОЛУЧЕНЫ КООРДИНАТЫ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MISSION_RESET_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;SLASH&lt;&gt; Перезапуск миссии &lt;IMG&gt;SLASH&lt;&gt;
                                -- &lt;IMG&gt;SLASH&lt;&gt; Mission Restarted &lt;IMG&gt;SLASH&lt;&gt;
                                { "Russian", "ЗАДАНИЕ ПЕРЕЗАПУЩЕНО" },
                            }
                        },
                    }
                },
                { -- LANGUAGE/NMS_LOC9_RUSSIAN.MBIN
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_LOC9_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_STONE_ENEMY_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Стражи просыпаются!
                                -- The guardians awaken!
                                { "Russian", "СТРАЖИ ПРОСЫПАЮТСЯ!" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FISH_CATCH_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поймали!
                                -- Catch landed!
                                { "Russian", "ПОЙМАЛИ!" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FISH_CAST_ERROR" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Нужно закинуть в воду
                                -- Must cast into water
                                { "Russian", "НУЖНО ЗАКИНУТЬ В ВОДУ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_REELED_EARLY_ERROR_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Рыба потеряна
                                -- Fish escaped!
                                { "Russian", "РЫБА СОРВАЛАСЬ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_REELED_EMPTY_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Ничего не поймано
                                -- No fish hooked
                                { "Russian", "НИЧЕГО НЕ ПОЙМАНО" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_RELEASE_FISH_ERROR_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Чтобы выпустить рыбу, нужно находиться в воде
                                -- Must be in water to release fish
                                { "Russian", "РЫБУ МОЖНО ВЫПУСТИТЬ ТОЛЬКО В ВОДЕ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_MP_FISH_PLANET_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдено место для рыбалки
                                -- Fishing Spot Located
                                { "Russian", "НАЙДЕНО МЕСТО ДЛЯ РЫБАЛКИ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NOTIFY_HAZ_SPOOK_OFFLINE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Внимание, граница нарушена
                                -- Warning - Boundary Compromised
                                { "Russian", "ГРАНИЦА НАРУШЕНА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NOTIFY_HAZ_SPOOK_FALL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Внимание, прочность границы падает
                                -- Warning - Boundary Strength Failing
                                { "Russian", "ПРОЧНОСТЬ ГРАНИЦЫ ПАДАЕТ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NOTIFY_HAZ_RECOVER_SPOOK" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Стабилизация прочности границ
                                -- Boundary Strength Stabilising
                                { "Russian", "СТАБИЛИЗАЦИЯ ПРОЧНОСТИ ГРАНИЦ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SKELETON_COMPLETE_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Витрина с окаменелым скелетом
                                -- Skeletal Display Complete!
                                { "Russian", "ЭКСПОНАТ СКЛЕТА СОЗДАН!" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PURPM_BOAT_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ВЫЗОВ С ОТКЛОНЯЮЩЕГОСЯ КОММУНИКАТОРА &lt;IMG&gt;SLASH&lt;&gt; ВЫЙДИТЕ ИЗ ИМПУЛЬСНОГО ДВИЖЕНИЯ, ЧТОБЫ ОТВЕТИТЬ
                                -- DIVERGENT COMMUNICATOR HAIL &lt;IMG&gt;SLASH&lt;&gt; EXIT PULSE TO RECEIVE
                                { "Russian", "ПОЛУЧЕНО ПРИВЕТСТВИЕ ОТ ДИВЕРГЕНТНОГО ИСТОЧНИКА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PURPM_BOAT_OSD_COMMS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ВХОДЯЩЕЕ СООБЩЕНИЕ &lt;IMG&gt;SLASH&lt;&gt; ОТКЛОНЯЮЩАЯСЯ ЧАСТОТА
                                -- INCOMING MESSAGE &lt;IMG&gt;SLASH&lt;&gt; DIVERGENT FREQUENCY
                                { "Russian", "ВХОДЯЩЕЕ СООБЩЕНИЕ НА ДИВЕРГЕНТНОЙ ЧАСТОТЕ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NOTIFY_HAZ_LOCAL_RAD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ОБНАРУЖЕНА ЛОКАЛЬНАЯ ЭКСТРЕМАЛЬНАЯ РАДИОАКТИВНОСТЬ
                                { "Russian", "ОБНАРУЖЕНА ЭКСТРЕМАЛЬНАЯ РАДИОАКТИВНОСТЬ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NOTIFY_HAZ_LOCAL_TOX" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ОБНАРУЖЕНА ЛОКАЛЬНАЯ ЭКСТРЕМАЛЬНАЯ ТОКСИЧНОСТЬ
                                { "Russian", "ОБНАРУЖЕНА ЭКСТРЕМАЛЬНАЯ ТОКСИЧНОСТЬ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NOTIFY_HAZ_LOCAL_GEYSER" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПРЕДУПРЕЖДЕНИЕ &lt;IMG&gt;SLASH&lt;&gt; ОБНАРУЖЕНА ГЕОТЕРМАЛЬНАЯ АКТИВНОСТЬ
                                { "Russian", "ОБНАРУЖЕНА ГЕОТЕРМАЛЬНАЯ АКТИВНОСТЬ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NOTIFY_HAZ_LOCAL_GRAV" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПРЕДУПРЕЖДЕНИЕ &lt;IMG&gt;SLASH&lt;&gt; ОБНАРУЖЕНА ЛОКАЛЬНАЯ ИНВЕРСИЯ ГРАВИТАЦИИ
                                { "Russian", "ОБНАРУЖЕНА ИНВЕРСИЯ ГРАВИТАЦИИ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NOTIFY_HAZ_LOCAL_LAVA" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПРЕДУПРЕЖДЕНИЕ &lt;IMG&gt;SLASH&lt;&gt; ОБНАРУЖЕНА ВУЛКАНИЧЕСКАЯ АКТИВНОСТЬ
                                { "Russian", "ОБНАРУЖЕНА ВУЛКАНИЧЕСКАЯ АКТИВНОСТЬ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "SIGNAL_DIGSITE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдены палеонтологические раскопки
                                -- Palaeontological Dig Detected
                                { "Russian", "НАЙДЕНЫ ПАЛЕОНТОЛОГИЧЕСКИЕ РАСКОПКИ" },
                            }
                        },

                        --#region UI_GALAXYMAP_PURPLE_REVEAL
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_GALAXYMAP_PURPLE_REVEAL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Воплощение звезды &lt;IMG&gt;SLASH&lt;&gt; Удаленный сектор восстановлен
                                { "Russian", "УДАЛЁННЫЙ СЕКТОР ВОССТАНОВЛЕН" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_GALAXYMAP_PURPLE_REVEAL_ALL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Воплощение звезды &lt;IMG&gt;SLASH&lt;&gt; Все удаленные сектора восстановлены
                                { "Russian", "ВСЕ УДАЛЁННЫЕ СЕКТОРА ВОССТАНОВЛЕНЫ" },
                            }
                        },
                        --#endregion

                        --#region UI_INV_SORT_BY_.*_OSD
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_INV_SORT_BY_VALUE_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Перебрали инвентарь по стоимости
                                { "Russian", "ИНВЕНТАРЬ ОТСОРТИРОВАН ПО СТОИМОСТИ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_INV_SORT_BY_TYPE_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Перебрали инвентарь по типам
                                { "Russian", "ИНВЕНТАРЬ ОТСОРТИРОВАН ПО ТИПУ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_INV_SORT_BY_COLOUR_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Перебрали инвентарь по цветам
                                { "Russian", "ИНВЕНТАРЬ ОТСОРТИРОВАН ПО ЦВЕТУ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_INV_SORT_BY_NAME_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Перебрали инвентарь по названиям
                                { "Russian", "ИНВЕНТАРЬ ОТСОРТИРОВАН ПО НАЗВАНИЮ" },
                            }
                        },
                        --#endregion

                    }
                },
            }
        }
    }
}
