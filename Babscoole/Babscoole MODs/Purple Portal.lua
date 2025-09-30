NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Purple Portal",
["MOD_AUTHOR"]      = "FriendlyFire & Babscoole",
["NMS_VERSION"]     = "6.00",
["MOD_DESCRIPTION"] = "Changes portal activation lighting effects to purple",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\REWARDTABLE.MBIN",
                    ["MXML_CHANGE_TABLE"] =
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
                            ["SPECIAL_KEY_WORDS"] = {"List", "GcRewardTableItem"},
                            ["SECTION_ACTIVE"] = {1,2},
                            ["REMOVE"] = "SECTION"
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"SpecialRewardTable"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["SEC_ADD_NAMED"] = "ADD_REWARDT",
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\NMS_DIALOG_GCALIENPUZZLETABLE.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Rewards", "GIVE_HYPERDRIVE"},
                            ["SEC_SAVE_TO"] = "ADD_ALIENPUZZLE_REWARD",
                        },
                        {
                            ["SEC_EDIT"] = "ADD_ALIENPUZZLE_REWARD",
                            ["PRECEDING_KEY_WORDS"] = {"Rewards"},
                            ["REMOVE"] = "HBOS"
                        },
                        {
                            ["SEC_EDIT"] = "ADD_ALIENPUZZLE_REWARD",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Rewards", "R_PURPLEPORTAL"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Rewards", "ADVANCE_PORTAL"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["SEC_ADD_NAMED"] = "ADD_ALIENPUZZLE_REWARD"
                        },
                    }
                },
            }
        }
    }
}