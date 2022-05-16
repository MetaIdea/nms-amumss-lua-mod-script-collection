CREATURE_SCALE_INCREASE = 5
CREATURE_COUNT_INCREASE = 2
SPAWN_RATE_INCREASE 	= 2
GROUP_SCALE 			= 2
BIOME_PROBABILITY_MULTIPLIER = 2

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "CreatureSizeAndSpawnRateIncrease.pak",
["MOD_AUTHOR"]				= "Biostar Ten Repair of Mjjstral's mod",
["NMS_VERSION"]				= "3.87",
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.515F1D3.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\SIMULATION\ECOSYSTEM\CREATUREDATATABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = "",
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 		= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinScale",		CREATURE_SCALE_INCREASE },
								{"MaxScale",		CREATURE_SCALE_INCREASE },
								{"MinCount",		CREATURE_COUNT_INCREASE },
								{"MaxCount",		CREATURE_COUNT_INCREASE },
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= 
					{ 
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = "",
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 		= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "MinGroupScale", 				GROUP_SCALE },
								{ "MaxGroupScale", 				GROUP_SCALE },
								--{"MinGroupSize", 				"1" },
								--{"MaxGroupSize", 				"1" },
								{ "GroupsPerSquareKm", 			SPAWN_RATE_INCREASE },
								--{"FractionActiveInDay", 		"1" },
								--{"FractionActiveInNight", 		"1" },
								--{"ProbabilityOfBeingEnabled", 	"1" },
								--{"IncreasedSpawnDistance", 		"2" },					
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\SIMULATION\ECOSYSTEM\CREATUREROLEDESCRIPTIONTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = "BiomeProbability",
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 		= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Dead",		BIOME_PROBABILITY_MULTIPLIER },					
								{"Low",			BIOME_PROBABILITY_MULTIPLIER },
								{"Mid",			BIOME_PROBABILITY_MULTIPLIER },							
								{"Full",		BIOME_PROBABILITY_MULTIPLIER },						
							}
						},
					}
				},
			}
		}, --752 global replacements
	}	
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE