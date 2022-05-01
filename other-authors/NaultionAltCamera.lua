NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "NaultionAltCamera.pak", 
["MOD_AUTHOR"]				= "HowardCLH",
["NMS_VERSION"]				= "3.88",
["MOD_DESCRIPTION"]			= "Adjusts Nautilon camera angle",
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