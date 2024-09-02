NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "RemoveOverheatWarning.pak",
["MOD_AUTHOR"]    = "Nero2258",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "5.05",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "UI\HUD\HUDCROSSHAIR.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Width",  "0"},
                                {"Height", "0"},
                            }
                        },
                    }
                },
            }
        }
    }
}