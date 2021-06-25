NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "HeadlightForShips.pak",
["MOD_AUTHOR"]				= "Mod Idea by Bonacausa, script by Mjjstral",
["NMS_VERSION"]				= "2.2+",
["DESCRIPTION"]				= "Ship headlights that toggle when entering and exiting ship",
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.4C482859.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 		
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"MODELS\COMMON\SPACECRAFT\FIGHTERS\COCKPIT\COCKPIT_A\COCKPITA.SCENE.MBIN",
						"MODELS\COMMON\SPACECRAFT\FIGHTERS\COCKPIT\COCKPIT_B\COCKPITB.SCENE.MBIN",
						"MODELS\COMMON\SPACECRAFT\FIGHTERS\COCKPIT\COCKPIT_C\COCKPITC.SCENE.MBIN",
						"MODELS\COMMON\SPACECRAFT\FIGHTERS\COCKPIT\COCKPIT_D\COCKPITD.SCENE.MBIN",
						--"MODELS\COMMON\SPACECRAFT\FIGHTERS\COCKPIT\COCKPIT_E\COCKPITE.SCENE.MBIN",
						--"MODELS\COMMON\SPACECRAFT\FIGHTERS\COCKPIT\COCKPIT_F\COCKPITF.SCENE.MBIN",
						
						"MODELS\COMMON\SPACECRAFT\DROPSHIPS\COCKPIT\COCKPITA.SCENE.MBIN",
						"MODELS\COMMON\SPACECRAFT\DROPSHIPS\COCKPIT\COCKPITB.SCENE.MBIN",
						
						"MODELS\COMMON\SPACECRAFT\SCIENTIFIC\COCKPIT\COCKPITA\COCKPITA.SCENE.MBIN",
						"MODELS\COMMON\SPACECRAFT\SCIENTIFIC\COCKPIT\COCKPITB\COCKPITB.SCENE.MBIN",
						"MODELS\COMMON\SPACECRAFT\SCIENTIFIC\COCKPIT\COCKPITC\COCKPITC.SCENE.MBIN",
						"MODELS\COMMON\SPACECRAFT\SCIENTIFIC\COCKPIT\COCKPITD\COCKPITD.SCENE.MBIN",
						"MODELS\COMMON\SPACECRAFT\SCIENTIFIC\CANOPY\CANOPYA\CANOPYA.SCENE.MBIN",
						"MODELS\COMMON\SPACECRAFT\SCIENTIFIC\CANOPY\CANOPYB\CANOPYB.SCENE.MBIN",
						
						"MODELS\COMMON\SPACECRAFT\SHUTTLE\COCKPIT\COCKPITASINGLE.SCENE.MBIN",
						"MODELS\COMMON\SPACECRAFT\SHUTTLE\COCKPIT\COCKPITADOUBLE.SCENE.MBIN",
						"MODELS\COMMON\SPACECRAFT\SHUTTLE\COCKPIT\COCKPITBDOUBLEBOX.SCENE.MBIN",
						"MODELS\COMMON\SPACECRAFT\SHUTTLE\COCKPIT\COCKPITBSINGLE.SCENE.MBIN",
						"MODELS\COMMON\SPACECRAFT\SHUTTLE\COCKPIT\COCKPITBSINGLEBOX.SCENE.MBIN",
						"MODELS\COMMON\SPACECRAFT\SHUTTLE\COCKPIT\COCKPITBSINGLECYLINDER.SCENE.MBIN",
						"MODELS\COMMON\SPACECRAFT\SHUTTLE\CANOPY\CANOPYA.SCENE.MBIN",
						"MODELS\COMMON\SPACECRAFT\SHUTTLE\CANOPY\CANOPYB.SCENE.MBIN",
						
						"MODELS\COMMON\SPACECRAFT\S-CLASS\SQUIDPARTS\COCKPIT\COCKPIT_A.SCENE.MBIN",
						"MODELS\COMMON\SPACECRAFT\S-CLASS\ROYALPARTS\COCKPIT\COCKPIT_A.SCENE.MBIN",
						
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] 	= { "Children" },
							["LINE_OFFSET"] 			= "+0",
							["ADD"] 	= 
[[
	<Property value="TkSceneNodeData.xml">
	  <Property name="Name" value="HEADLIGHTS" />
	  <Property name="NameHash" value="0" />
	  <Property name="Type" value="LOCATOR" />
	  <Property name="Transform" value="TkTransformData.xml">
		<Property name="TransX" value="0" />
		<Property name="TransY" value="0.845441" />
		<Property name="TransZ" value="5.251217" />
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
		  <Property name="Value" value="MODELS\COMMON\SPACECRAFT\SHARED\ENTITIES\HEADLIGHTS.ENTITY.MBIN" />
		</Property>
	  </Property>
	  <Property name="Children">
		<Property value="TkSceneNodeData.xml">
		  <Property name="Name" value="Spotlight" />
		  <Property name="NameHash" value="0" />
		  <Property name="Type" value="LIGHT" />
		  <Property name="Transform" value="TkTransformData.xml">
			<Property name="TransX" value="0" />
			<Property name="TransY" value="-3.2" />
			<Property name="TransZ" value="5.2" />
			<Property name="RotX" value="153.5" />
			<Property name="RotY" value="0" />
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
			  <Property name="Value" value="265000" />
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
		</Property>
	  </Property>
	</Property>]] 
						}
					}
				}
			}
		},
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.515F1D3.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"MODELS\COMMON\SPACECRAFT\FIGHTERS\COCKPIT\COCKPIT_A\COCKPITA\ENTITIES\COCKPIT_A.ENTITY.MBIN",
						"MODELS\COMMON\SPACECRAFT\FIGHTERS\COCKPIT\COCKPIT_B\COCKPITB\ENTITIES\COCKPIT_B.ENTITY.MBIN",
						"MODELS\COMMON\SPACECRAFT\FIGHTERS\COCKPIT\COCKPIT_D\COCKPITD\ENTITIES\COCKPITD.ENTITY.MBIN",
						"MODELS\COMMON\SPACECRAFT\FIGHTERS\COCKPIT\COCKPIT_E\COCKPIT_E\ENTITIES\COCKPTE.ENTITY.MBIN",
						"MODELS\COMMON\SPACECRAFT\FIGHTERS\COCKPIT\COCKPIT_F\COCKPTF\ENTITIES\COCKPITF.ENTITY.MBIN",
						"MODELS\COMMON\SPACECRAFT\DROPSHIPS\COCKPIT\COCKPITA\ENTITIES\COCKPIT_A.ENTITY.MBIN",
						"MODELS\COMMON\SPACECRAFT\DROPSHIPS\COCKPIT\COCKPITB\ENTITIES\COCKPIT_B.ENTITY.MBIN",
						"MODELS\COMMON\SPACECRAFT\SCIENTIFIC\ACCESSORIES\LANDINGGEAR\LANDINGGEAR_POD\ENTITIES\LANDINGGEAR.ENTITY.MBIN",
						"MODELS\COMMON\SPACECRAFT\SHUTTLE\ACCESSORIES\LANDINGGEAR_LEG\ENTITIES\LANDINGGEAR.ENTITY.MBIN",
						"MODELS\COMMON\SPACECRAFT\S-CLASS\ROYALPARTS\LANDINGGEAR\LANDINGGEAR_A\ENTITIES\S_CLASS_LANDINGGEAR_A.ENTITY.MBIN",
						"MODELS\COMMON\SPACECRAFT\S-CLASS\SQUIDPARTS\LANDINGGEAR\LANDINGGEAR_A\ENTITIES\LANDINGGEAR_A.ENTITY.MBIN",							
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = { "Components" },
							["LINE_OFFSET"] 		= "+0",
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
                <Property name="Seconds" value="0" />
                <Property name="RandomSeconds" value="0" />
              </Property>		  
              <Property name="Action" />
            </Property>
          </Property>
        </Property>
        <Property value="GcActionTriggerState.xml">
          <Property name="StateID" value="TAKEOFF" />
          <Property name="Triggers">
            <Property value="GcActionTrigger.xml">
              <Property name="Trigger" value="GcStateTimeEvent.xml">
                <Property name="Seconds" value="0" />
                <Property name="RandomSeconds" value="0" />
              </Property>
              <Property name="Action">
                <Property value="GcGoToStateAction.xml">
                  <Property name="State" value="TOGGLE_LIGHT" />
                  <Property name="Broadcast" value="True" />
                  <Property name="BroadcastLevel" value="Scene" />
                </Property>			
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcActionTriggerState.xml">
          <Property name="StateID" value="LANDING" />
          <Property name="Triggers">
            <Property value="GcActionTrigger.xml">
              <Property name="Trigger" value="GcStateTimeEvent.xml">
                <Property name="Seconds" value="0" />
                <Property name="RandomSeconds" value="0" />
              </Property>			  
              <Property name="Action">
                <Property value="GcGoToStateAction.xml">
                  <Property name="State" value="TOGGLE_LIGHT" />
                  <Property name="Broadcast" value="True" />
                  <Property name="BroadcastLevel" value="Scene" />
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
				}		
			}
		}		
	},
["ADD_FILES"] = 
	{
		{
			["FILE_DESTINATION"] = [[MODELS\COMMON\SPACECRAFT\SHARED\ENTITIES\HEADLIGHTS.ENTITY.EXML]],
			["FILE_CONTENT"] 	 = 
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkAttachmentData">
  <Property name="Components">
    <Property value="GcTriggerActionComponentData.xml">
      <Property name="HideModel" value="False" />
      <Property name="StartInactive" value="False" />
      <Property name="States">
        <Property value="GcActionTriggerState.xml">
          <Property name="StateID" value="BOOT" />
          <Property name="Triggers">
            <Property value="GcActionTrigger.xml">
              <Property name="Trigger" value="GcStateTimeEvent.xml">
                <Property name="Seconds" value="0" />
                <Property name="RandomSeconds" value="0" />
              </Property>		  
              <Property name="Action">
                <Property value="GcGoToStateAction.xml">
                  <Property name="State" value="TOGGLE_LIGHT" />
                  <Property name="Broadcast" value="False" />
                  <Property name="BroadcastLevel" value="Local" />
                </Property>			
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcActionTriggerState.xml">
          <Property name="StateID" value="ACTION" />
          <Property name="Triggers">
            <Property value="GcActionTrigger.xml">
              <Property name="Trigger" value="GcStateTimeEvent.xml">
                <Property name="Seconds" value="0" />
                <Property name="RandomSeconds" value="0" />
              </Property>
              <Property name="Action">
                <Property value="GcNodeActivationAction.xml">
                  <Property name="NodeActiveState" value="Toggle" />
                  <Property name="Name" value="Spotlight" />
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
        <Property value="GcActionTriggerState.xml">
          <Property name="StateID" value="TOGGLE_LIGHT" />
          <Property name="Triggers">
            <Property value="GcActionTrigger.xml">
              <Property name="Trigger" value="GcStateTimeEvent.xml">
                <Property name="Seconds" value="0" />
                <Property name="RandomSeconds" value="0" />
              </Property>			  
              <Property name="Action">
                <Property value="GcGoToStateAction.xml">
                  <Property name="State" value="ACTION" />
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
    <Property value="TkPhysicsComponentData.xml">
      <Property name="Data" value="TkPhysicsData.xml">
        <Property name="Mass" value="10" />
        <Property name="Friction" value="0.5" />
        <Property name="RollingFriction" value="0.2" />
        <Property name="AngularDamping" value="0.2" />
        <Property name="LinearDamping" value="0.1" />
        <Property name="Gravity" value="20" />
      </Property>
      <Property name="VolumeTriggerType" value="TkVolumeTriggerType.xml">
        <Property name="VolumeTriggerType" value="Open" />
      </Property>
      <Property name="SurfaceProperties" value="None" />
      <Property name="TriggerVolume" value="False" />
      <Property name="Climbable" value="False" />
      <Property name="IgnoreModelOwner" value="False" />
      <Property name="NoVehicleCollide" value="False" />
      <Property name="NoPlayerCollide" value="False" />
      <Property name="CameraInvisible" value="False" />
      <Property name="InvisibleForInteraction" value="False" />
      <Property name="AllowTeleporter" value="False" />
      <Property name="BlockTeleporter" value="False" />
    </Property>
  </Property>
  <Property name="LodDistances">
    <Property value="0" />
    <Property value="50" />
    <Property value="80" />
    <Property value="150" />
    <Property value="500" />
  </Property>
</Data>
]]			
		}
	}
}