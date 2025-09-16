NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]    = "WaterImprovements.pak",
["MOD_DESCRIPTION"] = "",
["LUA_AUTHOR"]      = "CodenameAwesome",
["MODIFICATIONS"]   = 
    {
        {
            ["MBIN_CHANGE_TABLE"] = 
            { 
                {
                    ["MBIN_FILE_SOURCE"]  = "GCWATERGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] = 
                    {
                        {
							["MATH_OPERATION"] = "*",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"WaveHeight",	-0.5},
								{"WaveFrequency",	4},
								{"NormalMap1Scale",	0.5},
								{"NormalMap2Scale",	0.5},
							}	
						},
                        {--Changes partially ripped off from Invalidcod3 https://www.nexusmods.com/nomanssky/mods/2882
                            ["SPECIAL_KEY_WORDS"] = {"WaterDataDay","GcPlanetWaterData.xml",},
                            ["VALUE_CHANGE_TABLE"] =     
                            {
                                {"WaterStrength",         0.005},
                                {"WaterColourStrength",   0.5},
                                {"FoamFadeHeight",        -10},
                                {"Foam1Scale",            1},
                                {"Foam1Speed",            0.05},
                                {"Foam2Scale",            1},
                                {"Foam2Speed",            0.05},
                            }
                        },
                    }
                }
            }
        }
    }    
}
