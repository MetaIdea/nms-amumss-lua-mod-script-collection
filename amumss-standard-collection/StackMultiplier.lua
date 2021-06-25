STACK = 1 --can be a number (like 5) (will be converted to a string) or a string (like "5") of the right type if appropriate as a replacement
STACK_MULTIPLIER = STACK * 5 --a script user operation on the variable value prior to it being replacment inside NMS_MOD_DEFINITION_CONTAINER by the tool

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "StackMultiplierX5.pak",   -- for adaptive modname use: "StackMultiplierX" .. STACK_MULTIPLIER .. ".pak", 
["MOD_AUTHOR"]				= "Mjjstral",				 -- mod author, only mentioned for documentaion
["NMS_VERSION"]				= "1.77",					 -- NMS version on first mod release, only mentioned for documentaion
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.515F1D3.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\NMS_REALITY_GCSUBSTANCETABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = "",				-- what key words must occur in lines prior your desired value you want to change
							["MATH_OPERATION"] 		= "*", 				-- "*", "+", "-", "/" or leave empty for normal replacement
							["REPLACE_TYPE"] 		= "ALL",			  -- "ALL" to change every matching values or leave empty for single replacement
							["VALUE_MATCH"] 		= "", 				  -- only change value(s) that match this value
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"StackMultiplier",	STACK_MULTIPLIER} 	-- Original 1 --one or many Property/Value combo
							}
						}
					}
				},			
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\NMS_REALITY_GCPRODUCTTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"] = "",				
							["MATH_OPERATION"] 		= "*",  			
							["REPLACE_TYPE"] 		= "ALL",			
							["VALUE_MATCH"] 		= "",        		
							["VALUE_CHANGE_TABLE"] 	= 					
							{
								{"StackMultiplier",	STACK_MULTIPLIER} 	-- Original 1
							}
						}
					}
				},		
			} --1145 global replacements
		}
	}	
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE