
NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "No Mans Land Slow Terrain Manipulator", 
["MOD_AUTHOR"]				= "Youngneil1",				
["NMS_VERSION"]				= "4.23",
["MOD_DESCRIPTION"]			= "This mods slows down the Terrain Manipulators edits and substracts to about 5% of their original speed",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCTERRAINGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						
						{
							
							["SPECIAL_KEY_WORDS"] = {"SubtractEditFrequency", "0.2"},				
							--["PRECEDING_KEY_WORDS"] = {"EnableTeleporters"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"SubtractEditFrequency",	"4.0"}			
							}
						}
					}
				}
								
			}
		}
		
	}	
}
