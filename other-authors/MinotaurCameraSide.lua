NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "MinotaurCameraSide.pak", 
["MOD_AUTHOR"]				= "HowardCLH",
["NMS_VERSION"]				= "3.88",
["MOD_DESCRIPTION"]			= "Adjusts minotaur hardframe camera angle",
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
					}
				}
			}
		}
	}	
}