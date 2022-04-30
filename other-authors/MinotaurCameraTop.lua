NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "MinotaurCameraTop.pak", 
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
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"MechCameraArmShootOffsetY",	"3"},  --original "1"
							},
						},
					}
				}
			}
		}
	}	
}