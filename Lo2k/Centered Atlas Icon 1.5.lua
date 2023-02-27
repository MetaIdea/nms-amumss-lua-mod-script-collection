NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Centered Atlas Icon 1.5.pak", 
["MOD_AUTHOR"]				= "Lo2k",
["LUA_AUTHOR"]				= "Lo2k",
["NMS_VERSION"]				= "4.10",
["MOD_DESCRIPTION"]			= "This mod simply centers the Atlas icon on the first menu screen",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "UI\BOOT\TWOLINEBUTTON.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"ID","ICON",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PositionX",	"50"},		-- Original "41.364212"  
								{"Horizontal",	"Center"},		-- Original "Left"  
							}
						},
					}
				}	
			}
		}
	}	
}