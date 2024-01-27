TechnologyStackingSize = 3 --original value, change for new value 

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "StackingTechnologyModules.pak",
["MOD_AUTHOR"]				= "Wbertro", --suggested by Seekker
["NMS_VERSION"]				= "1.77",
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
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxNumSameGroupTech",	TechnologyStackingSize}  --Original "3"						
							}
						}
					}
				} --1 global replacements
			}
		}
	}	
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
