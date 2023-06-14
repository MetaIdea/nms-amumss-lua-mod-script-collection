Author = "PyronoxOmega"
ModName = "Ultimate_Production_harvest_All"
GameVersion = "4.30"
ModVersion = "1.5"
Description = "Freighter Production Enhancement"


FileSource3 ="MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/FREIGHTERBASE/ROOMS/PLANTROOM/PARTS/FLOOR0/ENTITIES/INTERACTION.ENTITY.MBIN"





NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]	= ModName..""..-GameVersion..-ModVersion..".pak",
["MOD_DESCRIPTION"]	= Description,
["MOD_AUTHOR"]		= Author,
["NMS_VERSION"]		= GameVersion,
["MODIFICATIONS"] = 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				
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