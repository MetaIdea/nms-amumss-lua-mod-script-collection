NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]  = "CuriosityFinder.pak",
["MOD_AUTHOR"]    = "Pyronox",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "3.91",
["MODIFICATIONS"] = 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"] = 
						{
							"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/RARE/METALFORMATION.MBIN",
							"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/RARE/PHYSICSPROPS.MBIN",
						},	
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["VALUE_CHANGE_TABLE"] = 
							{
								{"PlacementPriority",	"Normal"},				
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"]  = "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/RARE/PHYSICSPROPS.MBIN",
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["VALUE_CHANGE_TABLE"] = 
							{
								{"PlacementPriority",	"Normal"},				
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"]  = "MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/ROLLINGPLANT/ENTITIES/ROLLINGPROP.ENTITY.MBIN",
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["VALUE_CHANGE_TABLE"] = 
							{
								{"ScanRange",				"4000"},
								{"ScanTime",				"999999"},
								{"CompassRangeMultiplier",	"501.25"},
								{"ClearTagOnArrival",		"False"},
								{"ScannableType",			"Scanner"},				
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"]  = "MODELS/PLANETS/BIOMES/COMMON/RARERESOURCE/GROUND/METALFORMATION/ENTITIES/METALFORMATION.ENTITY.MBIN",
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["VALUE_CHANGE_TABLE"] = 
							{
								{"ScanRange",				"4000"},
								{"ScanTime",				"999999"},
								{"CompassRangeMultiplier",	"501.15"},
								{"ScannableType",			"Scanner"},				
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"]  = "MODELS/PLANETS/BIOMES/COMMON/RARERESOURCE/UNDERWATER/SEAURCHIN/ENTITIES/_URCHIN_1.ENTITY.MBIN",
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["VALUE_CHANGE_TABLE"] = 
							{
								{"ScanRange",				"4000"},
								{"ScanTime",				"999999"},
								{"CompassRangeMultiplier",	"501.2"},
								{"ScannableType",			"Scanner"},				
							}
						},
					}
				},				
			}
		}
	}	
}