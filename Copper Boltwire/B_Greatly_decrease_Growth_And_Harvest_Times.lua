
--[[ Summery Description:
GREATLY decreases the growth time of plants in the hydroponics bays.
]]--

GROWTH_TIME_MULTIPLIER = 0.1 -- 0.2
-- Set the time to only a 10th of the original time, making the plants grow VERY VERY fast compared to vanilla.

NMS_MOD_DEFINITION_CONTAINER = 
{
    ["MOD_FILENAME"]    = "B_Greatly_decrease_Growth_And_Harvest_Times.pak",
    ["MOD_AUTHOR"]      = "idea by bvstarmaiden, script by Mjjstral",
    ["NMS_VERSION"]     = "4.46",
    ["MODIFICATIONS"]   = 
    {
        {
            ["MBIN_CHANGE_TABLE"] = 
            { 
                {
                    ["MBIN_FILE_SOURCE"] = 
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
                    ["EXML_CHANGE_TABLE"] = 
                    {
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"TriggerAction","STEP0",},
                            ["MATH_OPERATION"]      = "*",
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                { "Time", GROWTH_TIME_MULTIPLIER},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"TriggerAction","STEP1",},
                            ["MATH_OPERATION"]      = "*",
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                { "Time", GROWTH_TIME_MULTIPLIER},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"TriggerAction","STEP2",},
                            ["MATH_OPERATION"]      = "*",
                            ["VALUE_CHANGE_TABLE"]  = 
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