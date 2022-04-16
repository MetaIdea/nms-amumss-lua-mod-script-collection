APOLLOBOBBLEHEAD	= [[MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PROPS/BOBBLEHEADS/APOLLOBOBBLEHEAD.SCENE.MBIN]]
ARTEMISBOBBLEHEAD	= [[MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PROPS/BOBBLEHEADS/ARTEMISBOBBLEHEAD.SCENE.MBIN]]
ATLASBOBBLEHEAD		= [[MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PROPS/BOBBLEHEADS/ATLASBOBBLEHEAD.SCENE.MBIN]]
NADABOBBLEHEAD		= [[MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PROPS/BOBBLEHEADS/NADABOBBLEHEAD.SCENE.MBIN]]
NULBOBBLEHEAD		= [[MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PROPS/BOBBLEHEADS/NULBOBBLEHEAD.SCENE.MBIN]]
POLOBOBBLEHEAD		= [[MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PROPS/BOBBLEHEADS/POLOBOBBLEHEAD.SCENE.MBIN]]

SCENE				= NADABOBBLEHEAD
ENTITY 				= [[MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PROPS/BOBBLEHEADS/BOBBLEHEAD/ENTITIES/NADA_ACTION.ENTITY.MBIN]]

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "ShipTechnologyFigurines-Nada-Shield.pak",
["MOD_AUTHOR"]				= "Mjstral",
["MOD_DESCRIPTION"]			= "Installable shield technology by using the Nada figurine/booblehead",
["NMS_VERSION"]				= "3.53+",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{
				{
					["MBIN_FILE_SOURCE"]     = 
					{ 
						{ 
							[[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\LARGEBUILDINGS\SHARED\ENTITIES\PHYSICS.ENTITY.MBIN]],
							ENTITY,
							"REMOVE"
						}, 
					},
				},
				{
					["MBIN_FILE_SOURCE"] 	= {SCENE},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] 	= {"Name", "ATTACHMENT"},
							["LINE_OFFSET"] 		= "+3",
							["ADD"] 				= 
[[
		<Property value="TkSceneNodeAttributeData.xml">
		  <Property name="Name" value="ATTACHMENT" />
		  <Property name="AltID" value="" />
		  <Property name="Value" value="]] .. ENTITY .. [[" />
		</Property>
]]
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	=  { ENTITY },
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] 	= { "Components" },
							["ADD"] 				= 
[[	
    <Property value="GcTriggerActionComponentData.xml">
      <Property name="HideModel" value="False" />
      <Property name="StartInactive" value="False" />
      <Property name="States">
        <Property value="GcActionTriggerState.xml">
          <Property name="StateID" value="BOOT" />
          <Property name="Triggers">
            <Property value="GcActionTrigger.xml">
              <Property name="Trigger" value="GcStateTimeEvent.xml">
                <Property name="Seconds" value="1" />
                <Property name="RandomSeconds" value="0" />
              </Property>
              <Property name="Action">
                <Property value="GcNodeActivationAction.xml">
                  <Property name="NodeActiveState" value="Activate" />
                  <Property name="Name" value="BubbleShield" />
                  <Property name="SceneToAdd" value="" />
                  <Property name="IncludePhysics" value="True" />
                  <Property name="IncludeChildPhysics" value="True" />
                  <Property name="NotifyNPC" value="False" />
                  <Property name="UseMasterModel" value="True" />
                  <Property name="UseLocalNode" value="False" />
                  <Property name="RestartEmitters" value="False" />
                  <Property name="AffectModels" value="True" />
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
      </Property>
      <Property name="Persistent" value="False" />
      <Property name="PersistentState" value="" />
      <Property name="ResetShotTimeOnStateChange" value="False" />
      <Property name="LinkStateToBaseGrid" value="False" />
    </Property>
]]
						}
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= {SCENE},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = { "Children" },
							["ADD"] 				= 
[[
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Shield" />
          <Property name="NameHash" value="0" />
          <Property name="Type" value="REFERENCE" />
          <Property name="Transform" value="TkTransformData.xml">
			<Property name="TransX" value="0" />
			<Property name="TransY" value="-2" />
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
              <Property name="Name" value="SCENEGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\SHIELD.SCENE.MBIN" />
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
}