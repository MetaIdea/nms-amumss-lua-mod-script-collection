NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "PurplePortal.pak",
["MOD_AUTHOR"]    = "FriendlyFire & Babscoole",
["NMS_VERSION"]   = "4.52",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\REWARDTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_NUB_UNLOCKED"},
                            ["SEC_SAVE_TO"] = "ADD_REWARDT",
                        },
                        {
                            ["SEC_EDIT"] = "ADD_REWARDT",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Id", "R_PURPLEPORTAL"},
                            }
                        },
                        {
                            ["SEC_EDIT"] = "ADD_REWARDT",
                            ["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml"},
                            ["SECTION_ACTIVE"] = {2,3},
                            ["REMOVE"] = "SECTION"
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GenericTable"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["SEC_ADD_NAMED"] = "ADD_REWARDT",
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\NMS_DIALOG_GCALIENPUZZLETABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Value", "GIVE_HYPERDRIVE"},
                            ["SEC_SAVE_TO"] = "ADD_ALIENPUZZLE_REWARD",
                        },
                        {
                            ["SEC_EDIT"] = "ADD_ALIENPUZZLE_REWARD",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "R_PURPLEPORTAL"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Value", "ADVANCE_PORTAL"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["SEC_ADD_NAMED"] = "ADD_ALIENPUZZLE_REWARD"
                        },
                    }
                },
            }
        }
    }
}