NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "AutoPhageFreighterCrew.pak",
["MOD_AUTHOR"]    = "cataclysmiccpu",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.72",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\NMS_DIALOG_GCALIENPUZZLETABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "FLEET_NAVIGATOR_NEW"},
                            ["SECTION_ACTIVE"] = 2,
                            ["SEC_SAVE_TO"] = "SaveNavNew",
                        },
                        {
                            ["SEC_EDIT"] = "SaveNavNew",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AlienRace", "Builders"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "FLEET_NAVIGATOR_NEW"},
                            ["ADD_OPTION"] = "ADDbeforeSECTION",
                            ["SEC_ADD_NAMED"] = "SaveNavNew",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "FLEET_NAVIGATOR","TextAlien", "TRA_NAVIGATOR_LANG_1"},
                            ["SEC_SAVE_TO"] = "SaveNavLang1",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "FLEET_NAVIGATOR","TextAlien", "TRA_NAVIGATOR_LANG_2"},
                            ["SEC_SAVE_TO"] = "SaveNavLang2",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "FLEET_NAVIGATOR","TextAlien", "TRA_NAVIGATOR_LANG_3"},
                            ["SEC_SAVE_TO"] = "SaveNavLang3",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "FLEET_NAVIGATOR","TextAlien", "TRA_NAVIGATOR_LANG_4"},
                            ["SEC_SAVE_TO"] = "SaveNavLang4",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "FLEET_NAVIGATOR","TextAlien", "TRA_NAVIGATOR_LANG_5"},
                            ["SEC_SAVE_TO"] = "SaveNavLang5",
                        },
                        {
                            ["SEC_EDIT"] = "SaveNavLang1",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AlienRace", "Builders"}
                            }
                        },
                        {
                            ["SEC_EDIT"] = "SaveNavLang2",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AlienRace", "Builders"}
                            }
                        },
                        {
                            ["SEC_EDIT"] = "SaveNavLang3",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AlienRace", "Builders"}
                            }
                        },
                        {
                            ["SEC_EDIT"] = "SaveNavLang4",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AlienRace", "Builders"}
                            }
                        },
                        {
                            ["SEC_EDIT"] = "SaveNavLang5",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AlienRace", "Builders"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "FLEET_NAVIGATOR"},
                            ["ADD_OPTION"] = "ADDbeforeSECTION",
                            ["SEC_ADD_NAMED"] = "SaveNavLang5",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "FLEET_NAVIGATOR"},
                            ["ADD_OPTION"] = "ADDbeforeSECTION",
                            ["SEC_ADD_NAMED"] = "SaveNavLang4",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "FLEET_NAVIGATOR"},
                            ["ADD_OPTION"] = "ADDbeforeSECTION",
                            ["SEC_ADD_NAMED"] = "SaveNavLang3",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "FLEET_NAVIGATOR"},
                            ["ADD_OPTION"] = "ADDbeforeSECTION",
                            ["SEC_ADD_NAMED"] = "SaveNavLang2",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "FLEET_NAVIGATOR"},
                            ["ADD_OPTION"] = "ADDbeforeSECTION",
                            ["SEC_ADD_NAMED"] = "SaveNavLang1",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "FLEET_NAVIGATOR"},
                            ["ADD_OPTION"] = "ADDbeforeSECTION",
                            ["SEC_ADD_NAMED"] = "SaveNavLang5",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "FLEET_NAVIGATOR"},
                            ["ADD_OPTION"] = "ADDbeforeSECTION",
                            ["SEC_ADD_NAMED"] = "SaveNavLang4",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "FLEET_NAVIGATOR"},
                            ["ADD_OPTION"] = "ADDbeforeSECTION",
                            ["SEC_ADD_NAMED"] = "SaveNavLang3",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "FLEET_NAVIGATOR"},
                            ["ADD_OPTION"] = "ADDbeforeSECTION",
                            ["SEC_ADD_NAMED"] = "SaveNavLang2",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "FLEET_NAVIGATOR"},
                            ["ADD_OPTION"] = "ADDbeforeSECTION",
                            ["SEC_ADD_NAMED"] = "SaveNavLang1",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "FLEET_NAVIGATOR_NO_POST"},
                            ["SECTION_ACTIVE"] = 2,
                            ["SEC_SAVE_TO"] = "SaveNavNo",
                        },
                        {
                            ["SEC_EDIT"] = "SaveNavNo",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AlienRace", "Builders"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "FLEET_NAVIGATOR_NO_POST"},
                            ["ADD_OPTION"] = "ADDbeforeSECTION",
                            ["SEC_ADD_NAMED"] = "SaveNavNo",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "FLEET_NAVIGATOR_FULL_POST"},
                            ["SECTION_ACTIVE"] = 2,
                            ["SEC_SAVE_TO"] = "SaveNavFull",
                        },
                        {
                            ["SEC_EDIT"] = "SaveNavFull",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AlienRace", "Builders"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "FLEET_NAVIGATOR_FULL_POST"},
                            ["ADD_OPTION"] = "ADDbeforeSECTION",
                            ["SEC_ADD_NAMED"] = "SaveNavFull",
                        },
                    }
                },
            }
        }
    }
}