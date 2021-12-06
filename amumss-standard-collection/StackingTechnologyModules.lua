NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "StackingTechnologyModules.pak",
["MOD_AUTHOR"]				= "Wbertro", --suggested by Seekker
["NMS_VERSION"]				= "3.75",
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
								{"MaxNumSameGroupTech",	"48"}  --Original "3"						
							}
						}
					}
				} --1 global replacements
			}
		}
	}	
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE