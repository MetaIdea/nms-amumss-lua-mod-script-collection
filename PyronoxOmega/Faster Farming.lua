Author = "PyronoxOmega"
ModName = "Ultimate_Production"
GameVersion = "3.97"
ModVersion = "1.1"
Description = "Farming Overhaul"
STK = 100
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
FileSource3 = "METADATA/GAMESTATE/DEFAULTINVENTORYBALANCE.MBIN"
FileSource4 = "METADATA/GAMESTATE/DEFAULTINVENTORYBALANCESURVIVAL.MBIN"



NMS_MOD_DEFINITION_CONTAINER = {
	["MOD_FILENAME"] = ModName .. "" .. GameVersion .. ModVersion .. ".pak",
	["MOD_DESCRIPTION"] = Description,
	["MOD_AUTHOR"] = Author,
	["NMS_VERSION"] = GameVersion,
	["MODIFICATIONS"] = {
		{
			["MBIN_CHANGE_TABLE"] = {
				{
					["MBIN_FILE_SOURCE"] = Filesource,
					["INTEGER_TO_FLOAT"] = "FORCE",
					["REPLACE_TYPE"] = "ALL",
					["EXML_CHANGE_TABLE"] = {
						{
							--["PRECEDING_KEY_WORDS"] = "GcInteractionBaseBuildingState.xml",
							["SPECIAL_KEY_WORDS"] = {"TriggerAction", "STEP1_ENTER"},
							["VALUE_CHANGE_TABLE"] = {
								{"Time", "59"}
							}
						},
						{
							--["PRECEDING_KEY_WORDS"] = "GcInteractionBaseBuildingState.xml",
							["SPECIAL_KEY_WORDS"] = {"TriggerAction", "STEP1"},
							["VALUE_CHANGE_TABLE"] = {
								{"Time", "60"}
							}
						},
						{
							--["PRECEDING_KEY_WORDS"] = "GcInteractionBaseBuildingState.xml",
							["SPECIAL_KEY_WORDS"] = {"TriggerAction", "STEP2_ENTER"},
							["VALUE_CHANGE_TABLE"] = {
								{"Time", "90"}
							}
						},
						{
							--["PRECEDING_KEY_WORDS"] = "GcInteractionBaseBuildingState.xml",
							["SPECIAL_KEY_WORDS"] = {"TriggerAction", "STEP2"},
							["VALUE_CHANGE_TABLE"] = {
								{"Time", "120"}
							}
						}
					}
				},
				{
					["MBIN_FILE_SOURCE"] = FileSource2,
					["EXML_CHANGE_TABLE"] = {
						{
							["INTEGER_TO_FLOAT"] = "FORCE",
							["SPECIAL_KEY_WORDS"] = {"Cooking", "True"},
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] = {
								{"TimeToMake", "0.1"},
								
							}
						}
					}
				},
				{
					["MBIN_FILE_SOURCE"] = FileSource2,
					["EXML_CHANGE_TABLE"] = {
						{
							["INTEGER_TO_FLOAT"] = "FORCE",
							["SPECIAL_KEY_WORDS"] = {"Cooking", "True","Result","GcRefinerRecipeElement.xml"},
							--["PRCEEDING_KEY_WORDS"] = {},
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] = {
								
								{"Amount", "200"}
							}
						}
					}
				},


				{
					["MBIN_FILE_SOURCE"] = FileSource2,
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {"Cooking", "False",},
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] = {
								{"TimeToMake", "1"}
							}
						}
					}
				},
				{
					["MBIN_FILE_SOURCE"] = {FileSource3,FileSource4},
					["EXML_CHANGE_TABLE"] = {
						{
							["MATH_OPERATION"] = "*",
							["VALUE_CHANGE_TABLE"] = {
								{"DefaultSubstanceMaxAmount",STK},
								{"DefaultProductMaxAmount",STK},
								{"SubstanceMaxAmountLimit",STK},
								{"ProductMaxAmountLimit",STK},
							},
						},
					}
				},


			}

			
				
					
				
			
		}
	}
}
