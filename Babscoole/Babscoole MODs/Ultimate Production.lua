Filesource1 =
{
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
Batch = 999 -- Stack Size

--refiner speed
R_Time = 1 --refiner timer

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]	  = "Ultimate_Production",
["MOD_DESCRIPTION"]	= "Freighter Production Enhancement",
["MOD_AUTHOR"]		  = "PyronoxOmega and Babscoole",
["NMS_VERSION"]		  = "6.10",
["MODIFICATIONS"]   = 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"] = Filesource1,
					["MXML_CHANGE_TABLE"] = 
					{
						{
							--plants regenerate in 2 mins--
							["SPECIAL_KEY_WORDS"] = {"TriggerAction", "STEP1_ENTER"},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"Time", Time_1},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"TriggerAction", "STEP1"},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"Time", Time_2},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"TriggerAction", "STEP2_ENTER"},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"Time", Time_3},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"TriggerAction", "STEP2"},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"Time", Time_4},
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] = FileSource2,							
					["MXML_CHANGE_TABLE"] = 
					{ 
						{-- reduced cooking time --
							["SPECIAL_KEY_WORDS"] = {"Cooking","true","Result","GcRefinerRecipeElement"},
							["REPLACE_TYPE"] = "ALL", 
							["VALUE_CHANGE_TABLE"] =
							{		
								--{"TimeToMake", C_Time},	
								{"Amount", Batch},								
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Cooking","true"},
							["REPLACE_TYPE"] = "ALL", 
							["VALUE_CHANGE_TABLE"] =
							{		
								{"TimeToMake", C_Time},	
							}
						},
						{--reduced refiners speed --	
							["SPECIAL_KEY_WORDS"] = {"Cooking","false"},
							["REPLACE_TYPE"] = "ALL", 
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
					["MXML_CHANGE_TABLE"] = 
					{ 
						{
							["PRECEDING_KEY_WORDS"] = {"GcHarvestPlantAction"},
							["VALUE_CHANGE_TABLE"] =
							{		
								{"Radius", "10000000"},
							}
						}
					}
				},
			}
		},
	}	
}