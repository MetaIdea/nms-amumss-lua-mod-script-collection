--UNFINISHED, TEMPLATE

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "PlanetGenerationModTemplate.pak",
["MOD_AUTHOR"]				= "Mjjstral",
["NMS_VERSION"]				= "1.77",
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.515F1D3.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 		
				{
					["MBIN_FILE_SOURCE"] 	= 
					{ --INCOMPLETE LIST
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENBIOME.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENHQBIOME.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHBIOME.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHHQBIOME.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICBIOME.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENBIOME.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENHQBIOME.MBIN"
					
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"] = "",				
							["MATH_OPERATION"] 		= "",  			
							["REPLACE_TYPE"] 		= "ALL",			
							["VALUE_MATCH"] 		= "",    
							["VALUE_MATCH_TYPE"] 	= "",
							["VALUE_CHANGE_TABLE"] 	= 					
							{ --BARREN VALUES
								{ "Base", "1" },
								{ "Hill", "1" },
								{ "Mountain", "1" },
								{ "Rock", "1" },
								{ "UnderWater", "1" },
								{ "Texture", "0" },
								{ "Elevation", "1" },
								{ "Continent", "0" },
								{ "Small", "1" },
								{ "Large", "1" },
								{ "Resources_Heridium", "1" },
								{ "Resources_Iridium", "1" },
								{ "Resources_Copper", "1" },
								{ "Resources_Nickel", "0" },
								{ "Resources_Aluminium", "0" },
								{ "Resources_Gold", "0" },
								{ "Resources_Emeril", "0" },
								{ "River", "1" },
								{ "Crater", "1" },
								{ "Arches", "1" },
								{ "ArchesSmall", "1" },
								{ "Blobs", "1" },
								{ "BlobsSmall", "1" },
								{ "Substance", "0" },
								{ "Underground", "1" },
								{ "WaterActiveFrequency", "0.3" },
								{ "HighWaterActiveFrequency", "0.2" },
								{ "RockTileFrequency", "0.25" },
								{ "SubstanceTileFrequency", "0.25" },
								{ "Clear", "0" },
								{ "Dust", "1" },
								{ "Humid", "0" },
								{ "Snow", "0" },
								{ "Toxic", "0" },
								{ "Scorched", "0" },
								{ "Radioactive", "0" },
								{ "RedWeather", "0" },
								{ "GreenWeather", "0" },
								{ "BlueWeather", "0" }								
							}
						} --483 global replacements						
					}
				}		
			}
		}
	}	
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE