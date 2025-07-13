NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]    = "_RuFixLOC_AlienSpeech.pak",
    ["MOD_AUTHOR"]      = "gh0stwizard",
    ["MOD_DESCRIPTION"] = "Fixes alien speech issues",
    ["NMS_VERSION"]     = "5.72",
    ["EXML_CREATE"]     = "false",
    ["MODIFICATIONS"]   = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                { -- LANGUAGE/NMS_LOC1_RUSSIAN.MBIN
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_LOC1_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        --#region не переведенные слова
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "WAR_INTERLOPING" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- interloping
                                { "Russian", "вмешиваться" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "EXP_AIEE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- aiee
                                { "Russian", "ай" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TRA_BALARON" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- balaron
                                { "Russian", "баларон" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BUI_I" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- i
                                { "Russian", "я" },
                            }
                        },
                        --#endregion

                        --#region исправления перевода
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "EXP_AM" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- я
                                -- am
                                { "Russian", "есть" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "WAR_AM" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- я
                                -- am
                                { "Russian", "есть" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "EXP_FREIGHTER" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- грузовой корабль
                                -- freighter
                                { "Russian", "грузовое судно" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BUI_DOCK" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- швартоваться
                                { "Russian", "стыковаться" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "EXP_DOCK" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- швартоваться
                                { "Russian", "стыковаться" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TRA_DOCK" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- швартоваться
                                { "Russian", "стыковаться" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "WAR_DOCK" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- швартоваться
                                { "Russian", "стыковаться" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TRA_INTERSTELLAR" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- межзвездный
                                { "Russian", "межзвёздный" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BUI_STARS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- звездами
                                -- stars
                                { "Russian", "звёзды" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "EXP_STARS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- звезды
                                -- stars
                                { "Russian", "звёзды" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TRA_STARS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- звезды
                                -- stars
                                { "Russian", "звёзды" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "WAR_STARS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- звезды
                                -- stars
                                { "Russian", "звёзды" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BUI_STARSHIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- звездолет
                                -- starship
                                { "Russian", "звездолёт" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "EXP_STARSHIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- звездолет
                                -- starship
                                { "Russian", "звездолёт" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "TRA_STARSHIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- звездолет
                                -- starship
                                { "Russian", "звездолёт" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "WAR_STARSHIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- звездолет
                                -- starship
                                { "Russian", "звездолёт" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BUI_STARSHIPS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- звездолеты
                                -- starships
                                { "Russian", "звездолёты" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "EXP_STARSHIPS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- звездолеты
                                -- starships
                                { "Russian", "звездолёты" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BUI_INCINERATED" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- испепеленный
                                { "Russian", "испепелённый" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "EXP_INCINERATED" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- испепеленный
                                { "Russian", "испепелённый" },
                            }
                        },
                        --#endregion
                    }
                },
                { -- LANGUAGE/NMS_LOC4_RUSSIAN.MBIN
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_LOC4_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        { -- word "extreme" doesn't exist
                            ["SPECIAL_KEY_WORDS"] = { "Id", "DNT_WAR_TRADER_REPAIR_LANG_2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Ship status extreme! Doom! Doom! Doom!
                                { "Russian", "Ship status dangerous! Doom! Doom! Doom!" },
                            }
                        },
                        { -- WAR_DAY doesn't exist, but there is TRA_DAY
                            ["SPECIAL_KEY_WORDS"] = { "Id", "DNT_WAR_TRADER_TRADE_LANG_1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Glorious day! Ship is heavy with tribute from foes. Interloper wishes to purchase? Already removed most blood.
                                { "Russian", "Glorious time! Ship is heavy with tribute from foes. Interloper wishes to purchase? Already removed most blood." },
                            }
                        },
                        -- EXP_PAYMENT doesn't exist, but there are TRA_PAYMENT & WAR_PAYMENT
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "DNT_EXP_TRADER_TRADE_LANG_5" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Ship is great pleasure for Korvax! Only one payment to sales gek remains. Purchase goods, entity?
                                { "Russian", "Ship is great pleasure for Korvax! Only one pay to sales gek remains. Purchase goods, entity?" },
                            }
                        },
                    }
                },
                { -- LANGUAGE/NMS_LOC6_RUSSIAN.MBIN
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_LOC6_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        { -- word "unusual" doesn't exist
                            ["SPECIAL_KEY_WORDS"] = { "Id", "DNT_EXP_LANDED_PILOT_LANG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Traveller seeks unusual Korvax technology?
                                { "Russian", "Traveller seeks uncommon Korvax technology?" },
                            }
                        },
                        { -- words "extra", "defeat", "scum" don't exist
                            ["SPECIAL_KEY_WORDS"] = { "Id", "DNT_WAR_LANDED_PILOT_LANG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Special weapon, interloper? Extra power to defeat Sentinel scum!
                                { "Russian", "Special weapon, interloper? More power to fight against Sentinel!" },
                            }
                        },
                    }
                },
                { -- LANGUAGE/NMS_LOC7_RUSSIAN.MBIN
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_LOC7_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        { -- parsing of single quotes issue (&quot; doesn't work too)
                            ["SPECIAL_KEY_WORDS"] = { "Id", "DNT_EXP_OUTLAW_PILOT_LANG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Rare to meet traveller here... you seek 'special' work?
                                { "Russian", "Rare to meet traveller here... you seek special work?" },
                            }
                        },
                        { -- EXP_USEFUL doesn't exist, but there is TRA_USEFUL
                            ["SPECIAL_KEY_WORDS"] = { "Id", "DNT_EXP_SETTLEMENT_MISS_LANG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Traveller-Entity is most effective at Sentinel intervention. A useful skill. Worlds are hostile to life. Perhaps Traveller-Entity will become Settler-Entity and assist our small Convergence?
                                { "Russian", "Traveller-Entity is most effective at Sentinel intervention. A good skill. Worlds are hostile to life. Perhaps Traveller-Entity will become Settler-Entity and assist our small Convergence?" },
                            }
                        },
                    }
                },
                { -- LANGUAGE/NMS_UPDATE3_RUSSIAN.MBIN
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_UPDATE3_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        { -- EXP_TRUE doesn't exist, but there are WAR_TRUE & TRA_TRUE
                            ["SPECIAL_KEY_WORDS"] = { "Id", "DNT_EXP_FILLER_LANG_13" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Hello Friend! Do not be alarmed. I am real Korvax, it is true.
                                { "Russian", "Hello Friend! Do not be alarmed. I am real Korvax, it is truth." },
                            }
                        },
                    }
                },
            }
        }
    }
}
