NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Fast Actions 5.8.pak", 
["MOD_AUTHOR"]				= "Lo2k",
["LUA_AUTHOR"]				= "Lo2k",
["NMS_VERSION"]				= "4.42",
["MOD_DESCRIPTION"]			= "This mods reduces clicks and keys press duration",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCUIGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["INTEGER_TO_FLOAT"] 	= "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"RefinerPadStartTime",	"0.5"}, --"E" press time to process material
								{"FrontendConfirmTimeMouseMultiplier",	"1.0"},
								{"FrontendConfirmTime",	"0.35"},
								{"FrontendConfirmTimeSlow",	"0.7"}  --salvage time
							}
						}
					}
				}
			}
		}
	}	
}