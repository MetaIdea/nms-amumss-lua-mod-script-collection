RefinerProd = 2000 
RefinerSubs = 250000
RefinerProdSurvival = 1000
RefinerSubsSurvival = 100000


NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "FastRefiner.pak",
["MOD_AUTHOR"]    = "Onykron",
["LUA_AUTHOR"]    = "Onykron",
["NMS_VERSION"]   = "5.3.0",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"RefinerProductsMadeInTime",	RefinerProd},
								{"RefinerSubsMadeInTime",	RefinerSubs},
								{"RefinerProductsMadeInTimeSurvival",	RefinerProdSurvival},
								{"RefinerSubsMadeInTimeSurvival",	RefinerSubsSurvival},
								
							}
                        }
                    }
                },
				
            }
        }
    }
}