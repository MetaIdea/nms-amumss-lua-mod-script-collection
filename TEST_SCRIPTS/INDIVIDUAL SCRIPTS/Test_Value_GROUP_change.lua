NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]             = "Value_GROUP_change.pak",
["MOD_DESCRIPTION"]            = "",
["MOD_AUTHOR"]                = "Wbertro",
["NMS_VERSION"]                = "",
["MODIFICATIONS"]             = 
    {
        {
            ["MBIN_CHANGE_TABLE"]     = 
            { 
                {
                    ["MBIN_FILE_SOURCE"]     = "METADATA/REALITY/TABLES/INVENTORYTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"]     = 
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MaxTechInventoryCapacity",},
                            ["LINE_OFFSET"]     = "1",
                            ["REPLACE_TYPE"]        = "ALL",                            
                            ["VALUE_CHANGE_TABLE"]     = 
                            {
                                {"IGNORE", "24",},
                                {"IGNORE", "32",},
                                {"IGNORE", "40",},
                                {"IGNORE", "48",},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ShipInventoryMaxUpgradeSize","Freighter","MaxTechInventoryCapacity",},
                            ["LINE_OFFSET"]         = "+1",
                            ["REPLACE_TYPE"]        = "ALL",                            
                            ["VALUE_CHANGE_TABLE"]     =
                            {
                                {"IGNORE", "99",}, --7
                            },
                        },
                    },
                },
                {
                    ["MBIN_FILE_SOURCE"]     = "METADATA/REALITY/TABLES/COSTTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"]     = 
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID","C_PET_SLOT",},
                            ["PRECEDING_KEY_WORDS"] = {"Costs",},
                            ["LINE_OFFSET"]     = "1",
                            ["REPLACE_TYPE"]        = "ALL",                            
                            ["VALUE_CHANGE_TABLE"]     = 
                            {
                                {"IGNORE", "1",},
                                {"IGNORE", "2",},
                                {"IGNORE", "3",},
                                {"IGNORE", "4",},
                                {"IGNORE", "5",},
                                {"IGNORE", "6",},
                            },
                        },
                    },
                },
            },
        },
    }, --47 global replacements
}