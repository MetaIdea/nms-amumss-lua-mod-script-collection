NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Small Panels - No Symbols option 5.3.pak", 
["MOD_AUTHOR"]				= "Lo2k",
["LUA_AUTHOR"]				= "Lo2k",
["NMS_VERSION"]				= "6.21",
["MOD_DESCRIPTION"]			= "This mod removes substance symbol from inventory icons",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "UI\COMPONENTS\INVENTORY\SQU_SLOT_ITEM.MBIN",
					["MXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"ID","SYMBOL",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Is Hidden",	"True"}		-- Original "False"   
							}
						},
					}
				}	
			}
		}
	}	
}