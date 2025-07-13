NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]    = "_RuFixLOC_Tech_BreakageAlert.pak",
    ["MOD_AUTHOR"]      = "gh0stwizard",
    ["MOD_DESCRIPTION"] = "Fixes breakage alert messages",
    ["NMS_VERSION"]     = "5.72",
    ["EXML_CREATE"]     = "false",
    ["MODIFICATIONS"]   = {
        {
            --
            -- Формат: Технология «%TECH%» сломана %DAMAGE%
            -- Пример: Технология «Обход помощи при полете» сломана системой защиты грузового судна
            -- Добавил перенос строки перед "сломана". Игра не жалуется и выглядит лучше.
            -- В оригинале: "%TECH% critically damaged by %DAMAGE%"
            --
            ["MBIN_CHANGE_TABLE"] = {
                { -- LANGUAGE/NMS_LOC6_RUSSIAN.MBIN
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_LOC6_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DAMAGE_ASTEROID" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- столкновение с астероидом
                                -- asteroid collision
                                { "Russian", "при столкновении с астероидом" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DAMAGE_BARRELEXPLODE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- взрыв
                                -- explosive impact
                                { "Russian", "от взрыва" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DAMAGE_COLD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- экстремальный холод
                                -- extreme cold
                                { "Russian", "от переохлаждения" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DAMAGE_CLAM" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- панцирная устрица
                                -- an armoured clam
                                { "Russian", "панцирной устрицей" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DAMAGE_CREATURE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- планетарный хищник
                                -- a planetary predator
                                { "Russian", "планетарным хищником" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DAMAGE_DROWN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- нехватка кислорода
                                -- oxygen starvation
                                { "Russian", "при нехватке кислорода" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DAMAGE_ENERGY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- отказ системы жизнеобеспечения
                                -- life support system failure
                                { "Russian", "при отказе системы жизнеобеспечения" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DAMAGE_EXOCRAFT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- выстрел из вооружения вездехода
                                -- exocraft weapon fire
                                { "Russian", "выстрелом вездехода" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DAMAGE_FIEND" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- бродячая тварь
                                -- a stalking monstrosity
                                { "Russian", "бродячьей тварью" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DAMAGE_FISHFIEND" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- глубинный ужас
                                -- an abyssal horror
                                { "Russian", "глубинным ужасом" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DAMAGE_FLOATER" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- обреченный ужас
                                -- a doomed horror
                                { "Russian", "обреченным ужасом" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DAMAGE_FLORA" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- опасная флора
                                -- hazardous flora
                                { "Russian", "опасной флорой" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DAMAGE_FREIGHTER" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- система защиты грузового судна
                                -- freighter defence systems
                                { "Russian", "системой защиты грузового судна" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DAMAGE_GRABPLANT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- глубинный ужас
                                -- an abyssal horror
                                { "Russian", "глубинным ужасом" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DAMAGE_HEAT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- высокая температура
                                -- heat exposure
                                { "Russian", "от перегрева" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DAMAGE_JELLYFISH" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- желеобразное морское существо
                                -- a gelatinous sea creature
                                { "Russian", "желеобразным морским существом" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DAMAGE_LANDING" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- удар о землю
                                -- ground impact
                                { "Russian", "ударом о землю" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DAMAGE_LASER" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- лазерный ожог
                                -- laser burns
                                { "Russian", "лазером" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DAMAGE_LAVA" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- раскаленная лава
                                -- searing lava
                                { "Russian", "раскаленной лавой" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DAMAGE_LIGHTNING" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- удар током
                                -- electric shock
                                { "Russian", "ударом тока" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DAMAGE_LOSTINSPACE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- бомбардировка космическими лучами
                                -- cosmic ray bombardment
                                { "Russian", "при бомбардировке космическими лучами" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DAMAGE_METEOR" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- столкновение в космосе
                                -- cosmic impact
                                { "Russian", "при столкновении" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DAMAGE_PLAYER" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- аномальная враждебность
                                -- anomalous hostility
                                { "Russian", "аномальной враждебностью" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DAMAGE_PLAYER_WEAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- выстрел из мультитула
                                -- Multi-Tool fire
                                { "Russian", "выстрелом из мультитула" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DAMAGE_POLICE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- власти системы стражей
                                -- Sentinel system authorities
                                { "Russian", "властями системы" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DAMAGE_RADIATION" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- радиация
                                -- radiation
                                { "Russian", "от облучения" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DAMAGE_SCUTTLER" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- космический ужас
                                -- a space horror
                                { "Russian", "космическим ужасом" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DAMAGE_SENTINEL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- выстрел стража
                                -- Sentinel fire
                                { "Russian", "выстрелом стража" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DAMAGE_SENTINEL_WALKER" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- выстрел шагающего стража
                                -- Sentinel Walker fire
                                { "Russian", "выстрелом шагающего стража" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DAMAGE_SHIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- выстрел звездолета
                                -- starship fire
                                { "Russian", "выстрелом из звездолёта" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DAMAGE_STANDSTONE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- таинственная реликвия
                                -- a mysterious relic
                                { "Russian", "таинственной реликвией" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DAMAGE_TERRAIN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- столкновение с планетой
                                -- planetary impact
                                { "Russian", "при столкновении" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DAMAGE_TORNADO" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- сильный ветер
                                -- extreme winds
                                { "Russian", "сильным ветром" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DAMAGE_TOXIC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- вдыхание ядовитого газа
                                -- toxic inhalation
                                { "Russian", "от интоксикации" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DAMAGE_TURRET" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- система защиты грузового судна
                                -- freighter defence systems
                                { "Russian", "системой защиты грузового судна" },
                            }
                        },
                    }
                },
                { -- LANGUAGE/NMS_LOC7_RUSSIAN.MBIN
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_LOC7_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TECH_BREAKAGE_ALERT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %TECH% получает критические повреждения (%DAMAGE%)
                                -- %TECH% critically damaged by %DAMAGE%
                                { "Russian", "Технология «%TECH%»&#xA;сломана %DAMAGE%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DAMAGE_WORM" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- алчущий отросток
                                -- a hungering tendril
                                { "Russian", "алчущим отростком" },
                            }
                        },
                    }
                },
                { -- LANGUAGE/NMS_LOC8_RUSSIAN.MBIN
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_LOC8_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_DAMAGE_BUG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- мерзкая стая
                                -- the vile brood
                                { "Russian", "мерзкой стаей" },
                            }
                        },
                    }
                },
            }
        }
    }
}
