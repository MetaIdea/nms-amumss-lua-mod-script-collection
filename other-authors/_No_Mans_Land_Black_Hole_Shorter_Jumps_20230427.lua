
NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "No Mans Land Shorter Black Hole jumps.", 
["MOD_AUTHOR"]				= "Youngneil1",				
["NMS_VERSION"]				= "4.23",
["MOD_DESCRIPTION"]			= "1 to 3 voxels/systems only.",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						
						{
							
							--["SPECIAL_KEY_WORDS"] = {"CreaturesToFeedForTutorial", "10"},				
							--["PRECEDING_KEY_WORDS"] = {"EnableTeleporters"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"BlackHoleJumpVoxelDist",	"2"},
								{"BlackHoleJumpVoxelDist",	"1"}
										
							}
						}	
					}	
				}
			}
								
		}
	}
		
}	
