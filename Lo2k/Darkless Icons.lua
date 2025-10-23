NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Borderless Icons 1.0.pak", 
["MOD_AUTHOR"]				= "Lo2k",
["LUA_AUTHOR"]				= "Lo2k",
["NMS_VERSION"]				= "6.10",
["MOD_DESCRIPTION"]			= "This mod removes icon black gradient",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					MBIN_FILE_SOURCE 	= "UI\COMPONENTS\INVENTORY\SQU_SLOT_ITEM.MBIN",
					MXML_CHANGE_TABLE 	= 
					{
						{
							SPECIAL_KEY_WORDS = {"Gradient", "Vertical",},
							["SECTION_UP"] = 1,
							REPLACE_TYPE    = "ALL", 
							VALUE_CHANGE_TABLE 	= 
							{
								{"A",	"0.000000"},		-- Original transparency "0.909803927"   
							}
						},  
					}
				},			
			}
		}
	}	
}