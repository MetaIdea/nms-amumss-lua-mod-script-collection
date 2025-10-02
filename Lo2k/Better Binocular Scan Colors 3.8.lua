NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Better Binocular Scan Colors 4.0", 
["MOD_AUTHOR"]				= "Sefer",
["LUA_AUTHOR"]				= "Lo2k",
["NMS_VERSION"]				= "6.00",
["MOD_DESCRIPTION"]			= "This mods improves identification colors",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"BinocularSelectedColour"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"R",	"0"},  
								{"G",	"1"},  
								{"B",	"0"},  
								{"A",	"0"},  
							},
						},
						{
							["PRECEDING_KEY_WORDS"] = {"BinocularSelectedUnknownColour"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"R",	"1"},  
								{"G",	"0"},  
								{"B",	"0"},  
								{"A",	"1"},  
							},
						},
					}
				},
				{
			        ["MBIN_FILE_SOURCE"] = "METADATA/EFFECTS/SCREENFILTERS.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = "Binoculars",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Filename", "TEXTURES/LUT/FILTERS/DEFAULT.DDS"}
                            }
                        },
					}
				}
			}
		}
	}	
}