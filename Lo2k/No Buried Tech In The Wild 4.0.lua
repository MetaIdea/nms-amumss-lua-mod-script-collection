NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "No Buried Tech In The Wild 4.0.pak", 
["MOD_AUTHOR"]				= "Lo2k",
["LUA_AUTHOR"]				= "Lo2k",
["NMS_VERSION"]				= "4.41",
["MOD_DESCRIPTION"]			= "This mod removes buried technologies from planet landscape",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
					"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\LEVELONEOBJECTS\FULL.MBIN", "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\LEVELONEOBJECTS\FULLSAFE.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Placement", "UNDERGROUND",},
							["REMOVE"] 	= "SECTION",
						},
					},
				}	
			}
		}
	}	
}