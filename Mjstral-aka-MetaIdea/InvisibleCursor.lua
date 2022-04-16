NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "InvisibleCursor.pak",
["MOD_AUTHOR"]				= "Mjjstral",
["NMS_VERSION"]				= "2.0+",
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.59B126E2.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= { "GCUIGLOBALS.GLOBAL.MBIN" },
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = "CursorColour",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R",  "1.0"},
								{"G",  "1.0"},
								{"B",  "1.0"},
								{"A",  "1.0"}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "DialogPageCursorOffset",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"x",  "0"},
								{"y",  "1080"}
							}
						},
						{
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"FrontendCursorSize",  	"0"},
								{"FrontendCursorWidth",  	"0"},
								{"FrontendCursorOffset",  	"200"}		
							}
						}						
					}
				}
			}
		}
	}	
}