NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Longer Shadow Distance", 
["MOD_AUTHOR"]				= "PC Mystic",
["LUA_AUTHOR"]				= "PC Mystic",
["NMS_VERSION"]				= "4.0",
["MOD_DESCRIPTION"]			= "Changes Shadow view distance on foot from 600 to 1000 to avoid shadow draw pop in",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCGRAPHICSGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ShadowLength", "1000"},			
							}
						}
					}
				}	
			}
		}
	}	
}