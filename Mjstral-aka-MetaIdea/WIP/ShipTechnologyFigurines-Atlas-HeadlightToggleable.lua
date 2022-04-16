APOLLOBOBBLEHEAD	= [[MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PROPS/BOBBLEHEADS/APOLLOBOBBLEHEAD.SCENE.MBIN]]
ARTEMISBOBBLEHEAD	= [[MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PROPS/BOBBLEHEADS/ARTEMISBOBBLEHEAD.SCENE.MBIN]]
ATLASBOBBLEHEAD		= [[MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PROPS/BOBBLEHEADS/ATLASBOBBLEHEAD.SCENE.MBIN]]
NADABOBBLEHEAD		= [[MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PROPS/BOBBLEHEADS/NADABOBBLEHEAD.SCENE.MBIN]]
NULBOBBLEHEAD		= [[MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PROPS/BOBBLEHEADS/NULBOBBLEHEAD.SCENE.MBIN]]
POLOBOBBLEHEAD		= [[MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PROPS/BOBBLEHEADS/POLOBOBBLEHEAD.SCENE.MBIN]]

ENTITY 				= [[MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PROPS/BOBBLEHEADS/BOBBLEHEAD/ENTITIES/ATLAS_ACTION.ENTITY.MBIN]]

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
				{--Clone entity as start templates
					["MBIN_FILE_SOURCE"]     = 
					{ 
						{ 
							[[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\DAMAGEDMACHINERY\DAMAGEDWARRIOR\ENTITIES\DAMAGEDMACHINERY.ENTITY.MBIN]],
							[[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\BOBBLEHEADS\BOBBLEHEAD\ENTITIES\ATLASBOBBLEHEAD_ACTION.ENTITY.MBIN]],
							"REMOVE"
						}, 
					},
				},
				{--Attach action entity to bobble head figurine
					["MBIN_FILE_SOURCE"] 	= {ATLASBOBBLEHEAD},
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
		  <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\BOBBLEHEADS\BOBBLEHEAD\ENTITIES\ATLASBOBBLEHEAD_ACTION.ENTITY.MBIN" />
		</Property>
]]
						},
					}
				},
				{--Add actions to entity
					["MBIN_FILE_SOURCE"] 	=  { [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\BOBBLEHEADS\BOBBLEHEAD\ENTITIES\ATLASBOBBLEHEAD_ACTION.ENTITY.MBIN]] },
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TriggerAction", "TOGGLE_LIGHT"},
								{"InteractDistance", "4"},
							}
						},
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
            <!-- <Property value="GcActionTrigger.xml"> -->
              <!-- <Property name="Trigger" value="GcPlayerNearbyEvent.xml"> -->
                <!-- <Property name="RequirePlayerAction" value="None" /> -->
                <!-- <Property name="Distance" value="0.1" /> -->
                <!-- <Property name="Angle" value="360" /> -->
                <!-- <Property name="AnglePlayerRelative" value="False" /> -->
                <!-- <Property name="AngleOffset" value="0" /> -->
                <!-- <Property name="AngleReflected" value="False" /> -->
                <!-- <Property name="AngleMinDistance" value="0.1" /> -->
                <!-- <Property name="DistanceCheckType" value="Radius" /> -->
                <!-- <Property name="Inverse" value="False" /> -->
                <!-- <Property name="OnlyForLocalPlayer" value="False" /> -->
                <!-- <Property name="IncludeAllPhysics" value="True" /> -->
                <!-- <Property name="IncludeMobileNPCs" value="False" /> -->
                <!-- <Property name="TeleporterCountsAsPlayer" value="True" /> -->
              <!-- </Property> -->
              <!-- <Property name="Action"> -->
                <!-- <Property value="GcGoToStateAction.xml"> -->
                  <!-- <Property name="State" value="TOGGLE_LIGHT" /> -->
                  <!-- <Property name="Broadcast" value="False" /> -->
                  <!-- <Property name="BroadcastLevel" value="Local" /> -->
                <!-- </Property> -->
                <!-- <Property value="GcPlayAudioAction.xml"> -->
                  <!-- <Property name="Sound" value="Obj_Shield_Repairer_Off" /> -->
                  <!-- <Property name="UseOcclusion" value="False" /> -->
                  <!-- <Property name="OcclusionRadius" value="2" /> -->
                <!-- </Property> -->
              <!-- </Property> -->
            <!-- </Property> -->
          </Property>
        </Property>
        <Property value="GcActionTriggerState.xml">
          <Property name="StateID" value="TOGGLE_LIGHT" />
          <Property name="Triggers">
            <Property value="GcActionTrigger.xml">
              <Property name="Trigger" value="GcStateTimeEvent.xml">
                <Property name="Seconds" value="0.2" />
                <Property name="RandomSeconds" value="0" />
              </Property>
              <Property name="Action">
                <Property value="GcNodeActivationAction.xml">
                  <Property name="NodeActiveState" value="Toggle" />
                  <Property name="Name" value="HEADLIGHTS" />
                  <Property name="SceneToAdd" value="" />
                  <Property name="IncludePhysics" value="False" />
                  <Property name="IncludeChildPhysics" value="False" />
                  <Property name="NotifyNPC" value="False" />
                  <Property name="UseMasterModel" value="True" />
                  <Property name="UseLocalNode" value="False" />
                  <Property name="RestartEmitters" value="False" />
                  <Property name="AffectModels" value="False" />
                </Property>
                <Property value="GcPlayAudioAction.xml">
                  <Property name="Sound" value="Obj_Shield_Repairer_On" />
                  <Property name="UseOcclusion" value="False" />
                  <Property name="OcclusionRadius" value="2" />
                </Property>
                <Property value="GcGoToStateAction.xml">
                  <Property name="State" value="BOOT" />
                  <Property name="Broadcast" value="False" />
                  <Property name="BroadcastLevel" value="Local" />
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
				{--attach headlight to bobble head figurine
					["MBIN_FILE_SOURCE"] 	= {ATLASBOBBLEHEAD},
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
		<Property name="RotY" value="20" />
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