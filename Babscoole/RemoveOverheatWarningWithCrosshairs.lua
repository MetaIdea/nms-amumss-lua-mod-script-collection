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
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"Colour"},
                                {"ShadowColour"},
                                {"IconColour"},
                                {"OutlineColour"},
                                {"StrokeColour"},
                                {"StrokeGradientColour"},
                                {"GradientColour"},
                            },
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "0"},
                                {"G", "1"},
                                {"B", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ElementData"},
                            ["SECTION_ACTIVE"] = {2,3,6,8,9,12,65,66,67,75,139,141,142,143,155,157,158,159},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IsHidden", "True"},
                                {"Width",    "0"},
                                {"Height",   "0"},
                            }
                        },
                    }
                },
            }
        }
    }
}