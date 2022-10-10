Author = "PyronoxOmega"
ModName = "Ultimate_Production"
GameVersion = "4"
ModVersion = "1.2"
Description = "Freighter Production Enhancement"
Filesource = {
"MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/FARMALBUMEN/ENTITIES/PLANTINTERACTION.ENTITY.MBIN", 
"MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/FARMGRAVITINO/ENTITIES/PLANTINTERACTION.ENTITY.MBIN",
"MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/FARMBARREN/ENTITIES/PLANTINTERACTION.ENTITY.MBIN",
"MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/FARMDEADCREATURE/ENTITIES/PLANTINTERACTION.ENTITY.MBIN",
"MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/FARMLUSH/ENTITIES/PLANTINTERACTION.ENTITY.MBIN",
"MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/FARMNIP/ENTITIES/PLANTINTERACTION.ENTITY.MBIN",
"MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/FARMPOOP/ENTITIES/PLANTINTERACTION.ENTITY.MBIN",
"MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/FARMRADIOACTIVE/ENTITIES/PLANTINTERACTION.ENTITY.MBIN",
"MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/FARMSCORCHED/ENTITIES/PLANTINTERACTION.ENTITY.MBIN",
"MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/FARMSNOW/ENTITIES/PLANTINTERACTION.ENTITY.MBIN",
"MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/FARMTOXIC/ENTITIES/PLANTINTERACTION.ENTITY.MBIN",
"MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/FARMVENOMSAC/ENTITIES/PLANTINTERACTION.ENTITY.MBIN"
}
FileSource2 = "METADATA/REALITY/TABLES/NMS_REALITY_GCRECIPETABLE.MBIN"

FileSource3 ="MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/FREIGHTERBASE/ROOMS/PLANTROOM/PARTS/FLOOR0/ENTITIES/INTERACTION.ENTITY.MBIN"

--Plants regen timing-
Time_1 = 59
Time_2 = 60
Time_3 = 90
Time_4 = 120

--Cooking variables
C_Time = 0.1  --Cooking Time
Batch = 200 -- Stack Size

--refiner speed

R_Time = 1 --refiner timer



NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]	= ModName..""..GameVersion..ModVersion..".pak",
["MOD_DESCRIPTION"]	= Description,
["MOD_AUTHOR"]		= Author,
["NMS_VERSION"]		= GameVersion,
["MODIFICATIONS"] = 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"]  = Filesource,
					--["INTEGER_TO_FLOAT"] ="FORCE",
					["REPLACE_TYPE"] ="ALL",
					["EXML_CHANGE_TABLE"] = 
					{
						{
							--plants regenerate in 2 mins--
							["SPECIAL_KEY_WORDS"] = {"TriggerAction", "STEP1_ENTER",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Time",       Time_1},
							}
						},
						
						{
							--["PRECEDING_KEY_WORDS"] = "GcInteractionBaseBuildingState.xml",
							["SPECIAL_KEY_WORDS"] = {"TriggerAction", "STEP1",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Time",       Time_2},
							}
						},
						
						{
							--["PRECEDING_KEY_WORDS"] = "GcInteractionBaseBuildingState.xml",
							["SPECIAL_KEY_WORDS"] = {"TriggerAction", "STEP2_ENTER",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Time",       Time_3},
							}
						},
						
						{
							--["PRECEDING_KEY_WORDS"] = "GcInteractionBaseBuildingState.xml",
							["SPECIAL_KEY_WORDS"] = {"TriggerAction", "STEP2",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Time",       Time_4},
							}
						},
						
						
						
						
					
					}
				},
				
				-- reduced cooking time --
				{
					["MBIN_FILE_SOURCE"]  = FileSource2,							
					["EXML_CHANGE_TABLE"] = 
					{ 
						{
							["INTEGER_TO_FLOAT"] ="FORCE",
							
							["SPECIAL_KEY_WORDS"] = {"Cooking","True","Result","GcRefinerRecipeElement.xml"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] =
							{		
								--{"TimeToMake", C_Time},	
								{"Amount", Batch},								
							}
						}
					}
				},
								{
					["MBIN_FILE_SOURCE"]  = FileSource2,							
					["EXML_CHANGE_TABLE"] = 
					{ 
						{
							["INTEGER_TO_FLOAT"] ="FORCE",
							--["MATH_OPERATION"] 		= "*",
							["SPECIAL_KEY_WORDS"] = {"Cooking","True"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] =
							{		
								{"TimeToMake", C_Time},	
															
							}
						}
					}
				},
				
				
				
				
			    --reduced refiners speed --	
				{
					["MBIN_FILE_SOURCE"]  = FileSource2,							
					["EXML_CHANGE_TABLE"] = 
					{ 
						{
							["SPECIAL_KEY_WORDS"] = {"Cooking","False"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] =
							{		
								{"TimeToMake", R_Time},	
																
							}
						}
					}
				},
				--Hasrvest all freighter farm in 1 go-- 
				{
					["MBIN_FILE_SOURCE"]  = FileSource3,							
					["EXML_CHANGE_TABLE"] = 
					{ 
						{
							["PRECEDING_KEY_WORDS"] = {"GcHarvestPlantAction.xml"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] =
							{		
								{"Radius","1e+7"},	
															
							}
						}
					}
				},
				
				
			}
		},
	}	
}