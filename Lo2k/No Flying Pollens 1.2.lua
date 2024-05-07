NMS_MOD_DEFINITION_CONTAINER = 
{
    ["MOD_FILENAME"]    = "No Flying Pollens 1.2.pak",
    ["MOD_DESCRIPTION"] = "Removes flying pollens from lush planets",
    ["MOD_AUTHOR"]      = "Lo2k",
	["LUA_AUTHOR"]      = "Lo2k",
    ["NMS_VERSION"]     = "4.65",
    ["MODIFICATIONS"]   = 
	{
        {
            ["MBIN_CHANGE_TABLE"] = 
			{
                {
                    ["MBIN_FILE_SOURCE"] = 
					{
					"MODELS\EFFECTS\HEAVYAIR\EARTH\EARTH.HEAVYAIR.MBIN",
					"MODELS\EFFECTS\HEAVYAIR\EARTH\EARTH2.HEAVYAIR.MBIN",
					"MODELS\EFFECTS\HEAVYAIR\EARTH\NIGHTTIME.HEAVYAIR.MBIN"
					},
                    ["EXML_CHANGE_TABLE"] = 
					{
                        {
                            ["VALUE_CHANGE_TABLE"] = {{"NumberOfParticles","0"},},
                        },
                    }
                },
            }
        },
    }
}