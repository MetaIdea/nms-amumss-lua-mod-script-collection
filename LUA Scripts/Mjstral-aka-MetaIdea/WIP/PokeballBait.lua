NEW_OBJECT = [[MODELS\SPACE\ATLASSTATION\MODULARPARTS\ATLASCORE\ATLASCORE.SCENE.MBIN]]
BAIT_OBJECT = [[MODELS\PLANETS\BIOMES\COMMON\COOKING\CREATUREPELLETS.SCENE.MBIN]]

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "PokeballBait.pak",
["MOD_AUTHOR"]				= "Mjstral",
["NMS_VERSION"]				= "3.22+",
["MOD_DESCRIPTION"]			= "Replace creature food with a different object",
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
							NEW_OBJECT,
							BAIT_OBJECT,
							"REMOVE"
						}
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= BAIT_OBJECT,
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"] 	= "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ScaleX", 0.1},
								{"ScaleY", 0.1},
								{"ScaleZ", 0.1},
							}
						},
						{
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Name", [[MODELS\PLANETS\BIOMES\COMMON\COOKING\CREATUREPELLETS]]},
							}							
						}
					}
				}
			}
		}
	}	
}