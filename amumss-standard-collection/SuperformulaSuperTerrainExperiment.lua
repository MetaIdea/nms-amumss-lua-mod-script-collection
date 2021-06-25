--UNFINISHED, NOT FIXED

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "SuperformulaSuperTerrainExperiment.pak",
["MOD_AUTHOR"]				= "based on TheFisher's mod and conversion by Mjjstral",
["NMS_VERSION"]				= "1.77",
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.515F1D3.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 		
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\SIMULATION\SOLARSYSTEM\VOXELGENERATORSETTINGS.MBIN",
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"] = "Large",				
							["MATH_OPERATION"] 		= "",  			
							["REPLACE_TYPE"] 		= "ALL",			
							["VALUE_MATCH"] 		= "",    
							["VALUE_MATCH_TYPE"] 	= "",
							["VALUE_CHANGE_TABLE"] 	= 					
							{
								{"NoiseGridType",	"SuperFormulaRandom" }   -- "SuperFormula_03"
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "Large",				
							["MATH_OPERATION"] 		= "",  			
							["REPLACE_TYPE"] 		= "ALL",			
							["VALUE_MATCH"] 		= "",    
							["VALUE_MATCH_TYPE"] 	= "",
							["VALUE_CHANGE_TABLE"] 	= 					
							{
								{"NoiseGridType",	"SuperPrimitiveRandom" } --will overwrite the previous changes, see above
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "Large",				
							["MATH_OPERATION"] 		= "",  			
							["REPLACE_TYPE"] 		= "ALL",			
							["VALUE_MATCH"] 		= "",    
							["VALUE_MATCH_TYPE"] 	= "",
							["VALUE_CHANGE_TABLE"] 	= 					
							{
								{"Active",			"True" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "Small",				
							["MATH_OPERATION"] 		= "",  			
							["REPLACE_TYPE"] 		= "ALL",			
							["VALUE_MATCH"] 		= "",    
							["VALUE_MATCH_TYPE"] 	= "",
							["VALUE_CHANGE_TABLE"] 	= 					
							{
								{"NoiseGridType",	"SuperFormulaRandom" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "Small",				
							["MATH_OPERATION"] 		= "",  			
							["REPLACE_TYPE"] 		= "ALL",			
							["VALUE_MATCH"] 		= "",    
							["VALUE_MATCH_TYPE"] 	= "",
							["VALUE_CHANGE_TABLE"] 	= 					
							{
								{"NoiseGridType",	"SuperPrimitiveRandom" } --will overwrite the previous changes, see section above
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "Small",				
							["MATH_OPERATION"] 		= "",  			
							["REPLACE_TYPE"] 		= "ALL",			
							["VALUE_MATCH"] 		= "",    
							["VALUE_MATCH_TYPE"] 	= "",
							["VALUE_CHANGE_TABLE"] 	= 					
							{
								{"Active",			"True" }
							}
						}							
					}
				}		
			} --160 global replacements
		}
	}	
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE