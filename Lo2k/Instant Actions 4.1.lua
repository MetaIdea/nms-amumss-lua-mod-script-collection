NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Instant Actions 4.1.pak", 
["MOD_AUTHOR"]				= "Lo2k",
["NMS_VERSION"]				= "3.8",
["MOD_DESCRIPTION"]			= "This mods makes clicks and keys press instant",
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
								{"RefinerPadStartTime",	"0.01"}, --"E" time to process material
								{"FrontendConfirmTimeMouseMultiplier",	"6.0"},
								{"FrontendConfirmTime",	"0.02"},
								{"FrontendConfirmTimeSlow",	"0.7"}  --salvage time
							}
						}
					}
				}
			}
		}
	}	
}