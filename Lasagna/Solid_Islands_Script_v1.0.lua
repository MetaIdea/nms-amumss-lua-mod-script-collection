NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Solid_Islands_v1.0.pak", 
["MOD_AUTHOR"]				= "GooseTehMoose",
["NMS_VERSION"]				= "",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	=
					{
						"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/ROCKY/ROCKOBJECTSFULL.MBIN"
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"DebugName", "ISLAND_L_INST"},
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Type",	"Single"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"DebugName", "ISLAND_M_INST"},
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Type",	"Single"},
							}
						},
					},
				},
				{
					["MBIN_FILE_SOURCE"] 	=
					{
						"MODELS/PLANETS/BIOMES/ROCKY/LARGEPROPS/ISLANDLARGEBARE.SCENE.MBIN"
						
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Value","MODELS\PLANETS\BIOMES\LAVA\LARGEPROPS\LARGEVOLCANO\ENTITIES\VOLCANOLODDATA.ENTITY.MBIN"},
							["VALUE_CHANGE_TABLE"] 	=
							{			
								{ "Value",	"MODELS\PLANETS\BIOMES\UNDERWATER\LARGEPLANTS\ENTITIES\LARGEPLANTWATER.ENTITY.MBIN" },
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","IslandLargeBare_imposter",},
							["REMOVE"] = "SECTION"
						},
					},
				},
				{
					["MBIN_FILE_SOURCE"] 	=
					{
						"MODELS/PLANETS/BIOMES/ROCKY/MEDIUMPROPS/ISLANDMEDIUMBARE.SCENE.MBIN"
						
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						--{
							--["SPECIAL_KEY_WORDS"] = {"Value","MODELS\PLANETS\BIOMES\ROCKY\MEDIUMPROPS\ISLANDMEDIUM\ENTITIES\ISLANDMEDIUMLODDATA.ENTITY.MBIN"},
							--["VALUE_CHANGE_TABLE"] 	=
							--{			
							--	{ "Value",	"MODELS\PLANETS\BIOMES\UNDERWATER\LARGEPLANTS\ENTITIES\LARGEPLANTWATER.ENTITY.MBIN" },
							--}
						--},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","IslandMediumBare_imposter",},
							["REMOVE"] = "SECTION"
						},
					},
				},
			}
		}
	}
}