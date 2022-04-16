NUMBER_SAME_TECH = 48	-- maximum number of mods of the same type; DEFAULT 3

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]             = "Remove_Tech_Overload_1_1c.pak", 
["MOD_AUTHOR"]               = "chronicallybored",
["NMS_VERSION"]              = "3.84",
["MOD_DESCRIPTION"]          = "Raises the technology overload cap to 48",
["MODIFICATIONS"]            = 

{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.59B126E2.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
										
						{								
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxNumSameGroupTech", 		NUMBER_SAME_TECH},					
							}
						}
					}	
				}
			}
		}	
	}
}