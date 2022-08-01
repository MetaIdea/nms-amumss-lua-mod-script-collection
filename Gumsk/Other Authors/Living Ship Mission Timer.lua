NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Living Ship Mission Timer (30 Seconds).pak",
["MOD_AUTHOR"]				= "Framby",
["LUA_AUTHOR"]				= "Babscoole",
["NMS_VERSION"]				= "3.88",
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
							["SPECIAL_KEY_WORDS"] = {"Message","UI_BIO_SHIP_MISSION1_MSG3",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Time",	"30"} 
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Message","UI_BIO_SHIP_MISSION2_MSG3",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Time",	"30"} 
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Message","UI_BIO_SHIP_MISSION3_MSG3",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Time",	"30"} 
							}
						},	
						{
							["SPECIAL_KEY_WORDS"] = {"Message","UI_BIO_SHIP_MISSION4_MSG3",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Time",	"30"} 
							}
						},							
					}
				},				
			}
		}
	}	
}