NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Borderless Icons 1.5.pak", 
["MOD_AUTHOR"]				= "Lo2k",
["LUA_AUTHOR"]				= "Lo2k&IMonk",
["NMS_VERSION"]				= "6.13",
["MOD_DESCRIPTION"]			= "This mod removes borders from inventory icons",
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
							SPECIAL_KEY_WORDS = {"ID","BACKGROUND",},
							VALUE_CHANGE_TABLE 	= 
							{
								{"Width",	"100"},		-- Original "93.456700"   
								{"Height",	"100"}		-- Original "93.000000"  
							}
						},  
						{
						    REPLACE_TYPE    = "ALL", 
							VALUE_CHANGE_TABLE 	= 
							{
								{"Auto Adjust Font Height",	"false"},		-- Original "true"    
							}
						}, 
					}
				},
				{  -- IMonk
				  MBIN_FILE_SOURCE  = 'UI/SLOTS/SLOT_ITEM.MBIN',
				  MXML_CHANGE_TABLE = {
					{
					  SPECIAL_KEY_WORDS  = {'ID', 'TITLE'},
					  SECTION_UP         = 1,
					  VALUE_CHANGE_TABLE = {
						{'Position Y', 1}  -- 2
					  }
					},
					{
					  SPECIAL_KEY_WORDS  = {'ID','BACKGROUND'},
					  VALUE_CHANGE_TABLE = {
						{'Width',  100},   -- 93.4567
						{'Height', 86.55}  -- 80
					  }
					}
				  }
				}				
			}
		}
	}	
}