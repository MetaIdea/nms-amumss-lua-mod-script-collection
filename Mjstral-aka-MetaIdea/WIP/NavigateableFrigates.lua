NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "NavigateableFrigates.pak",
["MOD_AUTHOR"]				= "Mjjstral",
["NMS_VERSION"]				= "2.0+",
["DESCRIPTION"]				= "Cockpitable frigates",
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.4C482859.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 		
				{
					["MBIN_FILE_SOURCE"] 	= 
						{
							"MODELS\COMMON\SPACECRAFT\FRIGATES\SCIENCEFRIGATE.SCENE.MBIN",
							"MODELS\COMMON\SPACECRAFT\FRIGATES\SUPPORTFRIGATE.SCENE.MBIN",
							"MODELS\COMMON\SPACECRAFT\FRIGATES\INDUSTRIALFRIGATE.SCENE.MBIN",
							"MODELS\COMMON\SPACECRAFT\FRIGATES\COMBATFRIGATE.SCENE.MBIN",
							"MODELS\COMMON\SPACECRAFT\FRIGATES\DIPLOMATICFRIGATE.SCENE.MBIN",
							
						}
					["EXML_CHANGE_TABLE"] 	= 
					{
							--["SPECIAL_KEY_WORDS"]	= {"Children"},
							["PRECEDING_KEY_WORDS"] = { "Children" },
							--["REPLACE_TYPE"] 		= "ADDAFTERSECTION",
							["LINE_OFFSET"] 		= "+0",
							["ADD"] 				= 
[[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Data" />
      <Property name="NameHash" value="200504717" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="0" />
        <Property name="TransZ" value="0" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="ATTACHMENT" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS\COMMON\SPACECRAFT\FIGHTERS\COCKPIT\COCKPIT_A\COCKPITA\ENTITIES\COCKPIT_A.ENTITY.MBIN" />
        </Property>
      </Property>
	  <Property name="Children" />
    </Property>
]]					
					}
				}
			}
		}
	}
}