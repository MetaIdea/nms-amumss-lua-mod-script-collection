OBJECT = [[MODELS\SPACE\ATLASSTATION\MODULARPARTS\ATLASCORE\ATLASCORE.SCENE.MBIN]]
--OBJECT = [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\OBSERVATORY\OBSERVATORYSCIENTIFIC.SCENE.MBIN]]
--OBJECT = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\PARTS\OBJECTSPAWNER\BALL.SCENE.MBIN"
OBJECT_CLONE = string.gsub(OBJECT, ".SCENE", "_CLONE.SCENE")
	MODELS\PLANETS\BIOMES\COMMON\COOKING\CREATUREPELLETS.SCENE.MBIN
NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "PokeballBait.pak",
["MOD_AUTHOR"]				= "Mjstral",
["NMS_VERSION"]				= "3.22+",
["MOD_DESCRIPTION"]			= "Replace creature food with another object",
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.86055253.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"]     = 
					{ 
						{ 
							OBJECT,
							OBJECT_CLONE,
							"REMOVE"
						}
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= OBJECT_CLONE,
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["MATH_OPERATION"] 		= "*",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ScaleX", 0.1},
								{"ScaleY", 0.1},
								{"ScaleZ", 0.1},
							}							
						}
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\EFFECTS\PLANETEFFECTS.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"]	= { "Id", "ENZYMEFLUID"},
							["REPLACE_TYPE"] = "RAW",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{[[<Property name="Filename" value="MODELS/PLANETS/BIOMES/COMMON/COOKING/ENZYMEFLUID.SCENE.MBIN" />]], [[<Property name="Filename" value="]] .. OBJECT_CLONE .. [[" />]]},
							}							
						}
					}
				}
			}
		}
	}	
}