NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Living Ship Mission Timer (2 Hours).pak",
["MOD_AUTHOR"]				= "Framby",
["LUA_AUTHOR"]				= "Babscoole",
["NMS_VERSION"]				= "3.89",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\SIMULATION\MISSIONS\SPACEPOIMISSIONTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["FOREACH_SKW_GROUP"] = 
							{  
								{"Message","UI_BIO_SHIP_MISSION1_MSG3",},  
								{"Message","UI_BIO_SHIP_MISSION2_MSG3",},
								{"Message","UI_BIO_SHIP_MISSION3_MSG3",}, 
								{"Message","UI_BIO_SHIP_MISSION4_MSG3",},
							},  
							["VCT"] 	= 
							{
								{"Time",	"7200"} 
							} 
						}, 						
					}
				},				
			}
		}
	}	
}