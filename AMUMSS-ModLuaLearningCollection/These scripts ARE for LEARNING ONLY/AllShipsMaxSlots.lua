NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "AllShipsMaxSlots.pak",
["MOD_DESCRIPTION"]			= "",
["MOD_AUTHOR"]				= "Mjjstral",
["NMS_VERSION"]				= "1.77",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\INVENTORYTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{			
							["MATH_OPERATION"] 		= "*F:MaxSlots",  			
							["REPLACE_TYPE"] 		= "ALL",			
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"MinSlots",		"1"}				
							}
						},
						{			
							["MATH_OPERATION"] 		= "*F:MaxTechSlots",  			
							["REPLACE_TYPE"] 		= "ALL",			
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"MinTechSlots",	"1"}
							}
						} --75 global replacements
					}
				}
			}
		}
	}	
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
