NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]  = "starproject.pak",
["MOD_AUTHOR"]    = "VonBraunZ, CodenameAwesome, and darkmessenger84",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "5.00",
["MODIFICATIONS"] = 
    {
        {
            ["MBIN_CHANGE_TABLE"] = 
            { 
                {
                    ["MBIN_FILE_SOURCE"] = "GCGALAXYGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] = 
                    {
                        {
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["REPLACE_TYPE"] = "ALL",                           
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"StarGenerationThreshold", "0"}, -- Original "0.68"
                            }
                        },                  
                    }
                },
            }
        },
    }   
}
