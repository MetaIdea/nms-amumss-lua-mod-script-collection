NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]    = "No Space Plasma 1.3.pak",
    ["MOD_DESCRIPTION"]    = "Removes space plasma effect",
    ["MOD_AUTHOR"]        = "Lo2k (script by Droseran)",
    ["NMS_VERSION"]        = "3.82",
    ["MODIFICATIONS"]    = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\HEAVYAIR\SPACE\SPACEPLASMA.HEAVYAIR.MBIN",
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