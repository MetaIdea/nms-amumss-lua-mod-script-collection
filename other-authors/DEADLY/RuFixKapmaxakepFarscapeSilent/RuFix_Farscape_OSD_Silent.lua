NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]    = "_RuFix_Farscape_OSD_Silent.pak",
    ["MOD_AUTHOR"]      = "gh0stwizard",
    ["MOD_DESCRIPTION"] = "OSD text without pictures - silenced",
    ["NMS_VERSION"]     = "5.72",
    ["EXML_CREATE"]     = "false",
    ["MODIFICATIONS"]   = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                { -- LANGUAGE/NMS_LOC1_RUSSIAN.MBIN
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_LOC1_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "PRIMARY_SHIP_SWITCH" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;SLASH&lt;&gt; Основной звездолет заменен &lt;IMG&gt;SLASH&lt;&gt;
                                -- &lt;IMG&gt;SLASH&lt;&gt; Primary Starship switched &lt;IMG&gt;SLASH&lt;&gt;
                                { "Russian", " " },
                            }
                        },
                        -- то что он основной это и так ясно, игра двумя одновременно пользоваться не даст
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "PRIMARY_VEHICLE_SWITCH" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Выбран новый основной вездеход
                                -- Primary Exocraft Switched
                                { "Russian", " " },
                            }
                        },
                        -- где-то внизу есть правка для "процедура посадки недоступна"
                        -- значит пишем по аналогии
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NOTIFY_LANDING" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;SLASH&lt;&gt; Запущен процесс приземления &lt;IMG&gt;SLASH&lt;&gt;
                                -- &lt;IMG&gt;SLASH&lt;&gt; Initiating landing sequence &lt;IMG&gt;SLASH&lt;&gt;
                                { "Russian", " " },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NOTIFY_LAND_TOOHIGH" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;SLASH&lt;&gt; Слишком высоко, чтобы начинать посадку &lt;IMG&gt;SLASH&lt;&gt;
                                -- &lt;IMG&gt;SLASH&lt;&gt; Too high to initiate landing &lt;IMG&gt;SLASH&lt;&gt;
                                { "Russian", " " },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NOTIFY_CANT_LAND" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Не удалось начать приземление &lt;IMG&gt;SLASH&lt;&gt; Зона высадки занята
                                -- Unable to initiate landing &lt;IMG&gt;SLASH&lt;&gt; Landing area not clear
                                { "Russian", " " },
                            }
                        },
                        -- во всех случаях ITEM будет либо импульсный двигатель или какой-то там двигатель живого корабля
                        -- а его название всегда в нормальном виде (заглавная + прописные буквы), а нам нужен капс
                        -- поэтому делаем ход конем и зашиваем весь текст капсом
                        -- да не идеально, это потому что я не идеальный и Шон не идеальный, иначе бы он продумал этот случай
                        -- еще не идеально то, что у строки ограничение по символам (150 байт?) ... мде
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "JUMP_ORBIT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %ITEM% Отключено &lt;IMG&gt;SLASH&lt;&gt; Начинается суборбитальный полет
                                -- %ITEM% Disengaged &lt;IMG&gt;SLASH&lt;&gt; Beginning sub-orbital flight
                                { "Russian", " " },
                            }
                        },
                        -- согласно космической практике есть три процесса: дрифт по орбите, сближение и стыковка
                        -- стыковка происходит на расстоянии менее 10 метров, все что до этого называется сближение (approach / proximity operations)
                        -- кстати, в игре не используется термин стыковка для космической станции, а только посадка и это неправильно
                        -- "заход на стыковку" - это отсебятина, по типу захода на посадку, но в космопрактике так не говорят и никаких заходов нет,
                        -- кроме как захода солнца
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "JUMP_STATION_ENTRY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %ITEM% Отключено &lt;IMG&gt;SLASH&lt;&gt; Начинается заход на стыковку
                                -- %ITEM% Disengaged &lt;IMG&gt;SLASH&lt;&gt; Beginning docking approach
                                { "Russian", " " },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "JUMP_OBSTRUCT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %ITEM% Недоступно &lt;IMG&gt;SLASH&lt;&gt; Планетарные помехи
                                -- %ITEM% Unavailable &lt;IMG&gt;SLASH&lt;&gt; Planetary Interference
                                { "Russian", " " },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "JUMP_ENEMY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %ITEM% Недоступно &lt;IMG&gt;SLASH&lt;&gt; Вражеская угроза
                                -- %ITEM% Unavailable &lt;IMG&gt;SLASH&lt;&gt; Local Enemy Disruption
                                { "Russian", " " },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "JUMP_ATMOS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %ITEM% Недоступно &lt;IMG&gt;SLASH&lt;&gt; Атмосферные помехи
                                -- %ITEM% Unavailable &lt;IMG&gt;SLASH&lt;&gt; Atmospheric Interference
                                { "Russian", " " },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "JUMP_FREIGHTER" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %ITEM% Недоступно &lt;IMG&gt;SLASH&lt;&gt; Рядом крупное судно
                                -- %ITEM% Unavailable &lt;IMG&gt;SLASH&lt;&gt; Large Ship Proximity
                                { "Russian", " " },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "JUMP_STATION" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %ITEM% Недоступно &lt;IMG&gt;SLASH&lt;&gt; Рядом космическая станция
                                -- %ITEM% Unavailable &lt;IMG&gt;SLASH&lt;&gt; Space Station Proximity
                                { "Russian", " " },
                            }
                        },
                        {
                            -- "Критические гравитационные помехи" не влезают, максимум это см. строку выше
                            ["SPECIAL_KEY_WORDS"] = { "Id", "JUMP_BLACKHOLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %ITEM% Недоступно &lt;IMG&gt;SLASH&lt;&gt; Критические гравитационные помехи
                                -- %ITEM% Unavailable &lt;IMG&gt;SLASH&lt;&gt; Extreme Gravitational Interference
                                { "Russian", " " },
                            }
                        },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "JUMP_NOFUEL" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- %ITEM% Недоступно &lt;IMG&gt;SLASH&lt;&gt; Мало топлива
                        --         -- %ITEM% Unavailable &lt;IMG&gt;SLASH&lt;&gt; Insufficient Fuel
                        --         { "Russian", " " },
                        --     }
                        -- },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "JUMP_BADPATH" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %ITEM% Недоступно &lt;IMG&gt;SLASH&lt;&gt; Небезопасная траектория
                                -- %ITEM% Unavailable &lt;IMG&gt;SLASH&lt;&gt; Unsafe Trajectory
                                { "Russian", " " },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "JUMP_ATLAS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %ITEM% Недоступно &lt;IMG&gt;SLASH&lt;&gt; Обнаружены помехи Атласа
                                -- %ITEM% Unavailable &lt;IMG&gt;SLASH&lt;&gt; Atlas Interference Detected
                                { "Russian", " " },
                            }
                        },
                        -- появляется на секунду при успешном взаимодействии с постройкой инопланетян (перед тем как лететь к порталу)
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "INTRCT_NO_TECH_TO_REPAIR" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Все технологии работают. Ремонт не требуется
                                -- All technology in working order. Nothing to repair
                                { "Russian", " " },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "INTRCT_HEALTH" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;SLASH&lt;&gt; СООБЩЕНИЕ ЭКЗОКОСТЮМА: здоровье восстановлено &lt;IMG&gt;SLASH&lt;&gt;
                                { "Russian", " " },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "INTRCT_HEALTH_ALT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;SLASH&lt;&gt;СООБЩЕНИЕ ЭКЗОКОСТЮМА: здоровье восстановлено&lt;IMG&gt;SLASH&lt;&gt;
                                { "Russian", " " },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "INTRCT_ENERGY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;SLASH&lt;&gt;СООБЩЕНИЕ ЭКЗОКОСТЮМА: система жизнеобеспечения подзаряжена&lt;IMG&gt;SLASH&lt;&gt;
                                { "Russian", " " },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "INTRCT_HAZARD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;SLASH&lt;&gt; СООБЩЕНИЕ ЭКЗОКОСТЮМА: защита от вредных факторов подзаряжена &lt;IMG&gt;SLASH&lt;&gt;
                                { "Russian", " " },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "INTRCT_FULLHEALTH" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;SLASH&lt;&gt; СООБЩЕНИЕ ЭКЗОКОСТЮМА: здоровье на максимуме &lt;IMG&gt;SLASH&lt;&gt;
                                { "Russian", " " },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "INTRCT_FULLSHIELD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;SLASH&lt;&gt; СООБЩЕНИЕ ЭКЗОКОСТЮМА: щит на максимуме &lt;IMG&gt;SLASH&lt;&gt;
                                { "Russian", " " },
                            }
                        },
                        -- вот эти два сообщения самые "жестокие", иди гадай че не так =)
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "WPN_NOAMMO" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ОРУЖИЕ РАЗРЯЖЕНО
                                -- WEAPON CHARGE DEPLETED
                                { "Russian", " " },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "WPN_NOAMMO_ALT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- В ИНВЕНТАРЕ НЕТ БОЕПРИПАСОВ
                                -- NO AMMO IN INVENTORY
                                { "Russian", " " },
                            }
                        },
                        -- 
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RELOAD_IMG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПЕРЕЗАРЯДКА &lt;IMG&gt;RELOAD&lt;&gt;
                                -- RELOAD &lt;IMG&gt;RELOAD&lt;&gt;
                                { "Russian", " " },
                            }
                        },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "SCAN_RECHARGE" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Перезарядка сканера
                        --         -- Scanner recharging
                        --         { "Russian", " " },
                        --     }
                        -- },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "INTRCT_WORDKNOWN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Не выучено ничего нового
                                -- Learned nothing new
                                { "Russian", " " },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "INTRCT_EMPTY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Ничего не найдено
                                -- Nothing found
                                { "Russian", " " },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "INTRCT_DAMAGE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;SLASH&lt;&gt;ОПАСНОСТЬ: замечено повреждение экзокостюма&lt;IMG&gt;SLASH&lt;&gt;
                                { "Russian", " " },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "INTRCT_SHIELDDAMAGE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;SLASH&lt;&gt;ОПАСНОСТЬ: щит экзокостюма истощен&lt;IMG&gt;SLASH&lt;&gt;
                                { "Russian", " " },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NOTIFY_HAZ_OVER_OXYGEN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ЗАПАС КИСЛОРОДА ВОСПОЛНЕН
                                { "Russian", " " },
                            }
                        },
                    }
                },
                { -- LANGUAGE/NMS_LOC4_RUSSIAN.MBIN
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_LOC4_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FIEND_START_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ЗАМЕЧЕН БИОЛОГИЧЕСКИЙ УЖАС
                                -- BIOLOGICAL HORROR DETECTED
                                { "Russian", " " },
                            }
                        },
                        -- при неверной посадке пилоту нужна краткая и четкая информация
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NOTIFY_LAND_TOOFAST" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;SLASH&lt;&gt; Не удается начать посадку :: Слишком большая скорость полета &lt;IMG&gt;SLASH&lt;&gt;
                                { "Russian", " " },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NOTIFY_LAND_INVERTED" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;SLASH&lt;&gt; Не удается начать посадку :: Звездолет развернут &lt;IMG&gt;SLASH&lt;&gt;
                                { "Russian", " " },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JETPACK_BOOST_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ВСПЛЕСК МОЩНОСТИ РЕАКТИВНОГО РАНЦА
                                -- JETPACK POWER SURGE DETECTED
                                { "Russian", " " },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_JETPACK_BOOST_OVER_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- СПАД ВСПЛЕСКА МОЩНОСТИ РЕАКТИВНОГО РАНЦА
                                -- JETPACK POWER SURGE FADING
                                { "Russian", " " },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SPRINT_BOOST_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ЗАМЕЧЕН ПИК МОЩНОСТИ УСКОРЕНИЯ
                                -- SPRINT POWER SURGE DETECTED
                                { "Russian", " " },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SPRINT_BOOST_OVER_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- СПАД МОЩНОСТИ УСКОРЕНИЯ
                                -- SPRINT POWER SURGE FADING
                                { "Russian", " " },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "ALL_TRADER_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ВХОДЯЩЕЕ СООБЩЕНИЕ // ТОРГОВАЯ ЧАСТОТА
                                -- INCOMING MESSAGE // TRADE FREQUENCY
                                { "Russian", " " },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FIEND_END_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- РОЙ УТИХАЕТ
                                -- SWARM SUBSIDING
                                { "Russian", " " },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_HEALTH_RECHARGED" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;SLASH&lt;&gt;СООБЩЕНИЕ ЭКЗОКОСТЮМА: здоровье восстановлено&lt;IMG&gt;SLASH&lt;&gt;
                                { "Russian", " " },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_NOTIFY_FULL_LOBBY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ЛОББИ ЗАПОЛНЕНО
                                { "Russian", " " },
                            }
                        },
                    }
                },
                { -- LANGUAGE/NMS_LOC5_RUSSIAN.MBIN
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_LOC5_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_LANDING_UNAVAILABLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;SLASH&lt;&gt; Процедура посадки недоступна &lt;IMG&gt;SLASH&lt;&gt;
                                -- &lt;IMG&gt;SLASH&lt;&gt; Landing Sequence Unavailable &lt;IMG&gt;SLASH&lt;&gt;
                                { "Russian", " " },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PART_UNPOWERED" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- НЕДОСТАТОЧНО ЭНЕРГИИ
                                -- INSUFFICIENT POWER
                                { "Russian", " " },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_HOTSPOT_DISC_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;SLASH&lt;&gt; АНАЛИЗ ЗАВЕРШЕН &lt;IMG&gt;SLASH&lt;&gt;
                                -- &lt;IMG&gt;SLASH&lt;&gt; ANALYSIS COMPLETE &lt;IMG&gt;SLASH&lt;&gt;
                                { "Russian", " " },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_STARSHIP_OWNER_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ЗВЕЗДОЛЕТ ПУСТУЕТ &lt;IMG&gt;SLASH&lt;&gt; НАЙДИТЕ ПИЛОТА, ЧТОБЫ НАЧАТЬ ОБМЕН
                                -- STARSHIP UNOCCUPIED &lt;IMG&gt;SLASH&lt;&gt; LOCATE PILOT TO BEGIN TRADE
                                { "Russian", " " },
                            }
                        },
                    }
                },
                { -- LANGUAGE/NMS_LOC6_RUSSIAN.MBIN
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_LOC6_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SPACE_POI_PIRATE_SUMMON" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Станция уничтожена &lt;IMG&gt;SLASH&lt;&gt; Отправлен защитный отряд пиратов
                                -- Station Destroyed &lt;IMG&gt;SLASH&lt;&gt; Pirate Defense Force Deployed
                                { "Russian", " " },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ATLAS_WORD_KNOWN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Передачи Атласа полностью изучены
                                -- Atlas communications fully mapped
                                { "Russian", " " },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SAC_BURST_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ОБНАРУЖЕНА ВСПЫШКА ЗАРАЖЕНИЯ
                                -- INFESTATION OUTBREAK DETECTED
                                { "Russian", " " },
                            }
                        },
                        { -- яйцо пустоты
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_HAIL_ALIEN_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ВХОДЯЩЕЕ СООБЩЕНИЕ &lt;IMG&gt;SLASH&lt;&gt; НЕИЗВЕСТНАЯ ЧАСТОТА
                                -- INCOMING MESSAGE &lt;IMG&gt;SLASH&lt;&gt; UNKNOWN FREQUENCY
                                { "Russian", " " },
                            }
                        },
                    }
                },
                { -- LANGUAGE/NMS_LOC7_RUSSIAN.MBIN
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_LOC7_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SCFM_ENABLED" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Включено автоматическое наведение!
                                -- Autopilot Target Lock Engaged!
                                { "Russian", " " },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SCFM_DISABLED" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Автоматическое наведение отключено
                                -- Autopilot Target Lock Disengaged
                                { "Russian", " " },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SCFM_NO_TARGET" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Нет подходящей цели для боевого автопилота!
                                -- No Valid Target for Combat Autopilot
                                { "Russian", " " },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXOHEALTH_RECHARGED" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;IMG&gt;SLASH&lt;&gt;Важнейшие системы вездехода отремонтированы!&lt;IMG&gt;SLASH&lt;&gt;
                                -- &lt;IMG&gt;SLASH&lt;&gt;Exocraft Critical Systems Repaired!&lt;IMG&gt;SLASH&lt;&gt;
                                { "Russian", " " },
                            }
                        },
                    }
                },
                { -- LANGUAGE/NMS_LOC8_RUSSIAN.MBIN
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_LOC8_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WATER_LANDING_NOTIFY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Начата посадка на воду
                                -- Aquatic Landing Initiated
                                { "Russian", " " },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_ROBOT_LOCKED_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Выполнена гармоническая блокировка. &lt;IMG&gt;SLASH&lt;&gt; Найдите интерфейс, чтобы ее снять.
                                -- Harmonic lockdown in progress &lt;IMG&gt;SLASH&lt;&gt; Locate interface to break seal
                                { "Russian", " " },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NOTIFY_CANT_LAND_WATER" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Посадка на воду невозможна &lt;IMG&gt;SLASH&lt;&gt; Технология посадки на воду не установлена
                                -- Water landing unavailable &lt;IMG&gt;SLASH&lt;&gt; Aquatic landing technology not installed
                                { "Russian", " " },
                            }
                        },
                    }
                },
                { -- LANGUAGE/NMS_UPDATE3_RUSSIAN.MBIN
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_UPDATE3_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        -- где где, а тут обозначение кнопки не ожидал
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "OSD_OVERHEAT_SWITCH" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Режим прокрутки &lt;IMG&gt;CYCLEWEAPON&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt; Перегрев системы вооружения!
                                -- Cycle mode &lt;IMG&gt;CYCLEWEAPON&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt; Weapon Systems Overheated!
                                { "Russian", " " },
                            }
                        },
                    }
                },
            }
        }
    }
}
