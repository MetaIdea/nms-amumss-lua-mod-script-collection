NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]     = "No Space Plasma 1.7",
    ["MOD_DESCRIPTION"]  = "Removes space plasma effect",
    ["MOD_AUTHOR"]       = "Lo2k",
	  ["LUA_AUTHOR"]       = "Droseran",
    ["NMS_VERSION"]      = "7.0",
    ["MODIFICATIONS"]    = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\HEAVYAIR\SPACE\SPACEPLASMA.HEAVYAIR.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
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