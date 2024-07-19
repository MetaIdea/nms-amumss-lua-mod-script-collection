NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]     = "No Space Dust 1.5.pak",
    ["MOD_DESCRIPTION"]  = "Removes space dust effect",
    ["MOD_AUTHOR"]       = "Lo2k",
	["LUA_AUTHOR"]       = "Droseran",
    ["NMS_VERSION"]      = "5.0",
    ["MODIFICATIONS"]    = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\HEAVYAIR\SPACE\SPACE2.HEAVYAIR.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["VALUE_CHANGE_TABLE"] = 
							{
                                {"NumberOfParticles","0"},
                            }
                        },
                    }
                },
            }
        },
    }
}