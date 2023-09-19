NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "MinotaurCameraFix.pak", 
["MOD_AUTHOR"]				= "HowardCLH",
["NMS_VERSION"]				= "4.4",
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
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"MechCameraArmShootOffsetY",	"2.8"},  --original "1"
							},
						},
					}
				}
			}
		}
	}	
}