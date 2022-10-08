NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Camera Enhancements (Minotaur+Naultion).pak", 
["MOD_AUTHOR"]				= "Tareku",
["NMS_VERSION"]				= "4.03",
["MOD_DESCRIPTION"]			= "This is a merged mod with Minotaur, Naultion and Third Person Camera settings changes",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCCAMERAGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"MechFollowCam",},
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"OffsetX",	"4.5"},  --original "2.2"
								{"OffsetYAlt",	"1.5"},  --original "2.5"
								{"PanNear",	"10"},  --original "6"
							},
						},
						{
							["PRECEDING_KEY_WORDS"] = {"SubmarineFollowCam",},
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"OffsetY",	"5"},  --original "0"
								{"OffsetYAlt",	"7"},  --original "-2"
							},
						},
					}
				}
			}
		}
	}	
}