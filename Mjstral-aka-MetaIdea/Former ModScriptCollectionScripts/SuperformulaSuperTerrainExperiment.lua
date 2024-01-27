--UNFINISHED, NOT FIXED

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "SuperformulaSuperTerrainExperiment.pak",
["MOD_AUTHOR"]				= "based on TheFisher's mod and conversion by Mjjstral",
["NMS_VERSION"]				= "1.77",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 		
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\SIMULATION\SOLARSYSTEM\VOXELGENERATORSETTINGS.MBIN",
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"] = "Large",				
							["REPLACE_TYPE"] 		= "ALL",			
							["VALUE_CHANGE_TABLE"] 	= 					
							{
								{"NoiseGridType",	"SuperFormulaRandom" }   -- "SuperFormula_03"
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "Large",				
							["REPLACE_TYPE"] 		= "ALL",			
							["VALUE_CHANGE_TABLE"] 	= 					
							{
								{"NoiseGridType",	"SuperPrimitiveRandom" } --will overwrite the previous changes, see above
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "Large",				
							["REPLACE_TYPE"] 		= "ALL",			
							["VALUE_CHANGE_TABLE"] 	= 					
							{
								{"Active",			"True" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "Small",				
							["REPLACE_TYPE"] 		= "ALL",			
							["VALUE_CHANGE_TABLE"] 	= 					
							{
								{"NoiseGridType",	"SuperFormulaRandom" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "Small",				
							["REPLACE_TYPE"] 		= "ALL",			
							["VALUE_CHANGE_TABLE"] 	= 					
							{
								{"NoiseGridType",	"SuperPrimitiveRandom" } --will overwrite the previous changes, see section above
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "Small",				
							["REPLACE_TYPE"] 		= "ALL",			
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
