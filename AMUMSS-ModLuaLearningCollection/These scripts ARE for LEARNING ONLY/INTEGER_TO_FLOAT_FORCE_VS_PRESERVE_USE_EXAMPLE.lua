GROWTH_TIME_MULTIPLIER = 0.137 --will cause the values to become FLOATs (ex.: 3600 * 0.137 = 493.2)

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "SpeedIncreaseGrowthAndHarvest.pak",
["MOD_AUTHOR"]				= "idea by bvstarmaiden, script by Mjjstral",
["NMS_VERSION"]				= "1.77",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\FARMALBUMEN\ENTITIES\PLANTINTERACTION.ENTITY.MBIN",  
                        "MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\FARMBARREN\ENTITIES\PLANTINTERACTION.ENTITY.MBIN",  
						"MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\FARMDEADCREATURE\ENTITIES\PLANTINTERACTION.ENTITY.MBIN",  
						"MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\FARMGRAVITINO\ENTITIES\PLANTINTERACTION.ENTITY.MBIN",  
						"MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\FARMLUSH\ENTITIES\PLANTINTERACTION.ENTITY.MBIN",  
						"MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\FARMNIP\ENTITIES\PLANTINTERACTION.ENTITY.MBIN",  
						"MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\FARMPOOP\ENTITIES\PLANTINTERACTION.ENTITY.MBIN",  
						"MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\FARMRADIOACTIVE\ENTITIES\PLANTINTERACTION.ENTITY.MBIN",  
						"MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\FARMSCORCHED\ENTITIES\PLANTINTERACTION.ENTITY.MBIN",  
						"MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\FARMSNOW\ENTITIES\PLANTINTERACTION.ENTITY.MBIN",  
						"MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\FARMTOXIC\ENTITIES\PLANTINTERACTION.ENTITY.MBIN",  
						"MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\FARMVENOMSAC\ENTITIES\PLANTINTERACTION.ENTITY.MBIN" 			
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
                            ["SPECIAL_KEY_WORDS"]   = {"TriggerAction","STEP0",},
							["MATH_OPERATION"] 		  = "*",
                            --["INTEGER_TO_FLOAT"] = "PRESERVE", --if this line is activated, no more [NOTICE]
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Time", GROWTH_TIME_MULTIPLIER}, --a '[NOTICE]: ORIGINAL value below is INTEGER' issued, correct behavior
							}                                    -- MBINCompiler will have no problem with the value, "Time" value is still an INTEGER
						},
						{
                            ["SPECIAL_KEY_WORDS"]   = {"TriggerAction","STEP1",},
							["MATH_OPERATION"] 		  = "*",
							["INTEGER_TO_FLOAT"] = "PRESERVE", --will tell AMUMSS to 'PRESERVE' the INTEGER type (no [NOTICE] message), correct AMUMSS behavior
                            ["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Time", GROWTH_TIME_MULTIPLIER}, -- MBINCompiler will have no problem with the value, "Time" value is still an INTEGER
							}
						},
						{
                            ["SPECIAL_KEY_WORDS"]   = {"TriggerAction","STEP2",},
							["MATH_OPERATION"] 		  = "*",
							--["INTEGER_TO_FLOAT"] = "PRESERVE", --if this line is activated instead of the next one, no more [NOTICE] and MBINCompiler [ERROR}
                            ["INTEGER_TO_FLOAT"] = "FORCE", --will tell AMUMSS to 'force' the INTEGER to become a FLOAT (no [NOTICE] message), correct AMUMSS behavior
                            ["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Time", GROWTH_TIME_MULTIPLIER}, --MBINCompiler will throw an [ERROR]
							}                                    -- because the resulting "Time" value is really not a FLOAT but an INTEGER, correct MBINCompiler behavior
						}						
					} --36 global replacements
				}
			}
		}
	}	
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
