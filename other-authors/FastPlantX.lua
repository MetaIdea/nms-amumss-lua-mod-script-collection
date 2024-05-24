GS1=420 --Stage 1
GS2=450 --Stage 2
GS3=840 --Stage 3
GS4=900 --Stage 4 (Final)

-- Values are in seconds
--5 min; 140,150,280,300
--15 min; 420,450,840,900
--30 min; 840,900,1680,1800
--60 min; 1680,1800,3360,3600

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] 			= "Fast Plants X",
  ["MOD_DESCRIPTION"]		= "Tired of dying of old age waiting for your crops to grow? Want to be able to finally make a living as a farmer? Look no further! Here at Fast Plants X our special fertilizer allows your crops to sprout to harvest as much time as it takes to eat dinner! Grow time options consist of 5 min, 15 min (standard), 30 min, and 1 hour.",
  ["MOD_AUTHOR"]			= "Masternetra",
  ["LUA_AUTHOR"]            = "MasterNetra",
  ["NMS_VERSION"]           = "4.65",
  ["MOD_VERSION"]			= "1.0.1",
  ["MODIFICATIONS"] 		=
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"] = {"MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/FARMALBUMEN/ENTITIES/PLANTINTERACTION.ENTITY.MBIN",
											"MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/FARMBARREN/ENTITIES/PLANTINTERACTION.ENTITY.MBIN",
											"MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/FARMDEADCREATURE/ENTITIES/PLANTINTERACTION.ENTITY.MBIN",
											"MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/FARMGRAVITINO/ENTITIES/PLANTINTERACTION.ENTITY.MBIN",
											"MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/FARMLUSH/ENTITIES/PLANTINTERACTION.ENTITY.MBIN",
											"MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/FARMNIP/ENTITIES/PLANTINTERACTION.ENTITY.MBIN",
											"MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/FARMPOOP/ENTITIES/PLANTINTERACTION.ENTITY.MBIN",
											"MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/FARMRADIOACTIVE/ENTITIES/PLANTINTERACTION.ENTITY.MBIN",
											"MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/FARMSCORCHED/ENTITIES/PLANTINTERACTION.ENTITY.MBIN",
											"MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/FARMSNOW/ENTITIES/PLANTINTERACTION.ENTITY.MBIN",
											"MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/FARMTOXIC/ENTITIES/PLANTINTERACTION.ENTITY.MBIN",
											"MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/FARMVENOMSAC/ENTITIES/PLANTINTERACTION.ENTITY.MBIN",},
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"TriggerAction","STEP0",},
							["CHANGE_TYPE"] = "ONCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Time",	"1"},
							}	
						},
						{
							["SPECIAL_KEY_WORDS"] = {"TriggerAction","STEP1_ENTER",},
							["CHANGE_TYPE"] = "ONCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Time",	GS1},
							}	
						},
						{
							["SPECIAL_KEY_WORDS"] = {"TriggerAction","STEP1",},
							["CHANGE_TYPE"] = "ONCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Time",	GS2},
							}	
						},
						{
							["SPECIAL_KEY_WORDS"] = {"TriggerAction","STEP2_ENTER",},
							["CHANGE_TYPE"] = "ONCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Time",	GS3},
							}	
						},
						{
							["SPECIAL_KEY_WORDS"] = {"TriggerAction","STEP2",},
							["CHANGE_TYPE"] = "ONCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Time",	GS4},
							}	
						},
					}
				},
			}
		},
	}
}