--see also StandardSchemeExtended.lua

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] 			= "zzAssets-TreeLOD.pak",     --the name of the pak created (if not combined) - REQUIRED
  ["MOD_DESCRIPTION"]		= "",         --optional, for reference
  ["MOD_AUTHOR"]				= "",         --optional, for reference
  ["NMS_VERSION"]				= "2.0",     --optional, for reference
  ["MODIFICATIONS"] 		=             --REQUIRED SECTION
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{--Add a COLLISION to the TREELOD model.
					["MBIN_FILE_SOURCE"] 	= {
					"MODELS\PLANETS\BIOMES\COMMON\TREES\TREELOD.SCENE.MBIN"
					},
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {"Name","NewTreeLODs_LOD0"},
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] =
[[<Property value="TkSceneNodeData.xml">
          <Property name="Name" value="MODELS\PLANETS\BIOMES\COMMON\TREES\TREELOD" />
          <Property name="NameHash" value="202008799" />
          <Property name="Type" value="COLLISION" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="-0.064209" />
            <Property name="TransY" value="1.370305" />
            <Property name="TransZ" value="0.11368" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="TYPE" />
              <Property name="AltID" value="" />
              <Property name="Value" value="Capsule" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="RADIUS" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.350000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HEIGHT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="3.800000" />
            </Property>
			<Property value="TkSceneNodeAttributeData.xml">
			  <Property name="Name" value="ATTACHMENT" />
			  <Property name="AltID" value="" />
			  <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\TREES\PARTS\TRUNKA\ENTITIES\_TRUNK_A.ENTITY.MBIN" />
			</Property>
          </Property>
          <Property name="Children" />
        </Property>]]
						}
					}
				}
			}
		},
	}
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE