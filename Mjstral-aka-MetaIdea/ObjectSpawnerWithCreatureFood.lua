OBJECT = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/TECH/PARTS/OBJECTSPAWNER/BALL.SCENE.MBIN"
SEED   = 0

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "ObjectSpawnerWithCreatureFood.pak",
["MOD_AUTHOR"]				= "Mjjstral",
["NMS_VERSION"]				= "2.0+",
["MOD_DESCRIPTION"]			= "Replace creature food with another (procedural) object with optionally custom seed value",
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.86055253.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\EFFECTS\PLANETEFFECTS.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"]	= { "Id", "ENZYMEFLUID"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"UseSeedValue", "True"},
								{"Seed", 		 SEED},
							}
						},
						{
							["SPECIAL_KEY_WORDS"]	= { "Id", "ENZYMEFLUID"},
							["REPLACE_TYPE"] = "RAW",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{[[<Property name="Filename" value="MODELS/PLANETS/BIOMES/COMMON/COOKING/ENZYMEFLUID.SCENE.MBIN" />]], [[<Property name="Filename" value="]] .. OBJECT .. [[" />]]},
							}							
						}
					}
				}
			}
		}
	}	
}