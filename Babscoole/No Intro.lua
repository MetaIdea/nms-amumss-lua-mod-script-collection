NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "No Intro.pak",
["MOD_AUTHOR"]    = "Flugelwulff",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.51",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\UI\BOOTLOGOPC.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"DisplayTime"},
                            ["LINE_OFFSET"] = "+1",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IGNORE", "0"}, -- Original "3"
                                {"IGNORE", "0"}, -- Original "2"
                                {"IGNORE", "0"}, -- Original "1"
                                {"IGNORE", "0"}  -- Original "1"
                            }
                        },
                    }
                },
            }
        }
    }
}