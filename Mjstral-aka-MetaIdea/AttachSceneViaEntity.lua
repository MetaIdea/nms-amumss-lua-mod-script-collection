NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "AttachSceneViaEntity.pak",
["MOD_AUTHOR"]				= "Mjjstral",
["NMS_VERSION"]				= "2.0+",
["MOD_DESCRIPTION"]			= "",
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.86055253.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"MODELS\SPACE\ASTEROIDS\SMALLASTEROID\ENTITIES\ASTEROID.ENTITY.MBIN",
						"MODELS\SPACE\ASTEROIDS\NONDESTRUCTIBLE\BIGASTEROID01\ENTITIES\BIGASTEROID.ENTITY.MBIN",
						"MODELS\SPACE\ASTEROIDS\DESTRUCTIBLE\ASTEROID01\ENTITIES\ASTEROID.ENTITY.MBIN",
						"MODELS\SPACE\ASTEROIDS\GIANTASTEROID\ENTITIES\ASTEROID_01.ENTITY.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							--["SPECIAL_KEY_WORDS"]	= {},
							["PRECEDING_KEY_WORDS"] = { "Components" },
							["LINE_OFFSET"] 		= "+0",
							["ADD"] 				= 
[[
    <Property value="TkReferenceComponentData.xml">
      <Property name="Reference" value="MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/LANDINGPAD.SCENE.MBIN" />
      <Property name="LSystem" value="" />
    </Property>
]]
						}
					}
				}
			}
		}		
	}
}