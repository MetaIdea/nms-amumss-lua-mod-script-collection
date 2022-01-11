
--[[ Summery Description:
GREATLY decreases the growth time of plants in the hydroponics bays.
]]--

GROWTH_TIME_MULTIPLIER = 0.2

NMS_MOD_DEFINITION_CONTAINER = 
{
    ["MOD_FILENAME"] 			= "Greatly_decrease_Growth_And_Harvest_Times.pak",
    ["MOD_AUTHOR"]				= "idea by bvstarmaiden, script by Mjjstral",
    ["NMS_VERSION"]				= "3.21",
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
						--"MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\FARMSNOW\ENTITIES\PLANTBASELRG.ENTITY.MBIN",  --this one should not be here, it will give errors in output! INTENDED!
						"MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\FARMSNOW\ENTITIES\PLANTINTERACTION.ENTITY.MBIN",  
						"MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\FARMTOXIC\ENTITIES\PLANTINTERACTION.ENTITY.MBIN",  
						"MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\FARMVENOMSAC\ENTITIES\PLANTINTERACTION.ENTITY.MBIN" 			
					},
                    ["EXML_CHANGE_TABLE"] 	= 
                    {
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"TriggerAction","STEP0",},
                            ["MATH_OPERATION"] 		= "*",
                            ["VALUE_CHANGE_TABLE"] 	= 
                            {						
                                { "Time", GROWTH_TIME_MULTIPLIER},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"TriggerAction","STEP1",},
                            ["MATH_OPERATION"] 	    = "*",
                            ["VALUE_CHANGE_TABLE"] 	= 
                            {						
                                { "Time", GROWTH_TIME_MULTIPLIER},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"TriggerAction","STEP2",},
                            ["MATH_OPERATION"] 		= "*",
                            ["VALUE_CHANGE_TABLE"] 	= 
                            {						
                                { "Time", GROWTH_TIME_MULTIPLIER},
                            }
                        }						
                    }
				}
			}
		}
	}	
}