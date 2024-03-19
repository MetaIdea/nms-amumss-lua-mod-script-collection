NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Cheaper Multitool and Ship Class Upgrades.pak",
["MOD_AUTHOR"]      = "Babscoole",
["MOD_DESCRIPTION"] = "Cuts MultiTool and Ship Upgrade costs in half",
["NMS_VERSION"]     = "4.52",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\COSTTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Id", "C_WEAP_UPGRADE"},
                                {"Id", "C_CLASS_UPGRADE"},
                            },
                            ["PRECEDING_KEY_WORDS"] = {"Costs"},
                            ["LINE_OFFSET"] = "+1",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IGNORE", "5000"},  -- Original "10000"
                                {"IGNORE", "12500"}, -- Original "25000"
                                {"IGNORE", "25000"}, -- Original "50000"
                            }
                        },
                    }
                },
            }
        },
    }
}