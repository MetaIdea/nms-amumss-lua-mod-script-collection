APOLLOBOBBLEHEAD	= [[MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PROPS/BOBBLEHEADS/APOLLOBOBBLEHEAD.SCENE.MBIN]]
ARTEMISBOBBLEHEAD	= [[MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PROPS/BOBBLEHEADS/ARTEMISBOBBLEHEAD.SCENE.MBIN]]
ATLASBOBBLEHEAD		= [[MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PROPS/BOBBLEHEADS/ATLASBOBBLEHEAD.SCENE.MBIN]]
NADABOBBLEHEAD		= [[MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PROPS/BOBBLEHEADS/NADABOBBLEHEAD.SCENE.MBIN]]
NULBOBBLEHEAD		= [[MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PROPS/BOBBLEHEADS/NULBOBBLEHEAD.SCENE.MBIN]]
POLOBOBBLEHEAD		= [[MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PROPS/BOBBLEHEADS/POLOBOBBLEHEAD.SCENE.MBIN]]

SCENE				= ATLASBOBBLEHEAD

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "ShipTechnologyFigurines-Atlas-Headlights.pak",
["MOD_AUTHOR"]				= "Mjstral",
["MOD_DESCRIPTION"]			= "Installable headlight technology by using the Atlas figurine/booblehead",
["NMS_VERSION"]				= "3.53+",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{
				{
					["MBIN_FILE_SOURCE"] 	= {SCENE},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = { "Children" },
							["ADD"] 				= 
[[
	<Property value="TkSceneNodeData.xml">
	<Property name="Name" value="HEADLIGHTS" />
	  <Property name="NameHash" value="0" />
	  <Property name="Type" value="LIGHT" />
	  <Property name="Transform" value="TkTransformData.xml">
		<Property name="TransX" value="1" />
		<Property name="TransY" value="-2" />
		<Property name="TransZ" value="0" />
		<Property name="RotX" value="180" />
		<Property name="RotY" value="-20" />
		<Property name="RotZ" value="0" />
		<Property name="ScaleX" value="1" />
		<Property name="ScaleY" value="1" />
		<Property name="ScaleZ" value="1" />
	  </Property>
	  <Property name="Attributes">
		<Property value="TkSceneNodeAttributeData.xml">
		  <Property name="Name" value="FOV" />
		  <Property name="AltID" value="" />
		  <Property name="Value" value="100" />
		</Property>
		<Property value="TkSceneNodeAttributeData.xml">
		  <Property name="Name" value="FALLOFF" />
		  <Property name="AltID" value="" />
		  <Property name="Value" value="linear" />
		</Property>
		<Property value="TkSceneNodeAttributeData.xml">
		  <Property name="Name" value="INTENSITY" />
		  <Property name="AltID" value="" />
		  <Property name="Value" value="250000" />
		</Property>
		<Property value="TkSceneNodeAttributeData.xml">
		  <Property name="Name" value="COL_R" />
		  <Property name="AltID" value="" />
		  <Property name="Value" value="1.0" />
		</Property>
		<Property value="TkSceneNodeAttributeData.xml">
		  <Property name="Name" value="COL_G" />
		  <Property name="AltID" value="" />
		  <Property name="Value" value="0.64" />
		</Property>
		<Property value="TkSceneNodeAttributeData.xml">
		  <Property name="Name" value="COL_B" />
		  <Property name="AltID" value="" />
		  <Property name="Value" value="0.36" />
		</Property>
		<Property value="TkSceneNodeAttributeData.xml">
		  <Property name="Name" value="MATERIAL" />
		  <Property name="AltID" value="" />
		  <Property name="Value" value="MATERIALS/LIGHT.MATERIAL.MBIN" />
		</Property>
	  </Property>
	  <Property name="Children" />
	</Property>]]
						}
					}
				}
			}
		}
	}	
}