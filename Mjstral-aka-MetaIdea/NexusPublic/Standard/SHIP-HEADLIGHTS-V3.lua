NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "SHIP-HEADLIGHTS.pak",
["MOD_AUTHOR"]				= "Mjjstral",
["NMS_VERSION"]				= "2.24+",
["DESCRIPTION"]				= "Ship headlights that activate when in ship and turn off when exiting ship",
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
						"MODELS\COMMON\SPACECRAFT\FIGHTERS\COCKPIT\COCKPIT_E\COCKPIT_E.SCENE.MBIN",
						"MODELS\COMMON\SPACECRAFT\FIGHTERS\COCKPIT\COCKPIT_F\COCKPTF.SCENE.MBIN",
						
						"MODELS\COMMON\SPACECRAFT\DROPSHIPS\COCKPIT\COCKPITA.SCENE.MBIN",
						"MODELS\COMMON\SPACECRAFT\DROPSHIPS\COCKPIT\COCKPITB.SCENE.MBIN",
						
						"MODELS\COMMON\SPACECRAFT\SCIENTIFIC\COCKPIT\COCKPITA\COCKPITA.SCENE.MBIN",
						"MODELS\COMMON\SPACECRAFT\SCIENTIFIC\COCKPIT\COCKPITB\COCKPITB.SCENE.MBIN",
						"MODELS\COMMON\SPACECRAFT\SCIENTIFIC\COCKPIT\COCKPITC\COCKPITC.SCENE.MBIN",
						"MODELS\COMMON\SPACECRAFT\SCIENTIFIC\COCKPIT\COCKPITD\COCKPITD.SCENE.MBIN",
						"MODELS\COMMON\SPACECRAFT\SCIENTIFIC\CANOPY\CANOPYA\CANOPYA.SCENE.MBIN",
						"MODELS\COMMON\SPACECRAFT\SCIENTIFIC\CANOPY\CANOPYB\CANOPYB.SCENE.MBIN",
						
						"MODELS\COMMON\SPACECRAFT\SHUTTLE\CANOPY\CANOPYA.SCENE.MBIN",
						"MODELS\COMMON\SPACECRAFT\SHUTTLE\CANOPY\CANOPYB.SCENE.MBIN",
						
						"MODELS\COMMON\SPACECRAFT\S-CLASS\SQUIDPARTS\COCKPIT\COCKPIT_A.SCENE.MBIN",
						"MODELS\COMMON\SPACECRAFT\S-CLASS\ROYALPARTS\COCKPIT\COCKPIT_A.SCENE.MBIN",
						
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = { "Children" },
							--["REPLACE_TYPE"] 		= "ADDAFTERSECTION",
							["ADD"] 				= 
[[
	<Property value="TkSceneNodeData.xml">
	  <Property name="Name" value="HEADLIGHTS" />
	  <Property name="NameHash" value="0" />
	  <Property name="Type" value="LIGHT" />
	  <Property name="Transform" value="TkTransformData.xml">
		<Property name="TransX" value="0" />
		<Property name="TransY" value="-2" />
		<Property name="TransZ" value="0" />
		<Property name="RotX" value="180" />
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
						"MODELS\COMMON\SPACECRAFT\SCIENTIFIC\CANOPY\CANOPYA\CANOPYA\ENTITIES\CANOPYA.ENTITY.MBIN",
						"MODELS\COMMON\SPACECRAFT\SCIENTIFIC\CANOPY\CANOPYB\CANOPYB\ENTITIES\CANOPYB.ENTITY.MBIN",
						"MODELS\COMMON\SPACECRAFT\SCIENTIFIC\COCKPIT\COCKPITA\COCKPITA\ENTITIES\COCKPITA.ENTITY.MBIN",
						"MODELS\COMMON\SPACECRAFT\SCIENTIFIC\COCKPIT\COCKPITD\COCKPITD\ENTITIES\COCKPITD.ENTITY.MBIN",	
						"MODELS\COMMON\SPACECRAFT\SHUTTLE\CANOPY\ENTITIES\CANOPY_A.ENTITY.MBIN",
						"MODELS\COMMON\SPACECRAFT\S-CLASS\SHAREDDATA\ENTITIES\S_CLASS.ENTITY.MBIN",
						-- "MODELS\COMMON\SPACECRAFT\SCIENTIFIC\ACCESSORIES\LANDINGGEAR\LANDINGGEAR_POD\ENTITIES\LANDINGGEAR.ENTITY.MBIN",
						-- "MODELS\COMMON\SPACECRAFT\SHUTTLE\ACCESSORIES\LANDINGGEAR_LEG\ENTITIES\LANDINGGEAR.ENTITY.MBIN",
						-- "MODELS\COMMON\SPACECRAFT\S-CLASS\ROYALPARTS\LANDINGGEAR\LANDINGGEAR_A\ENTITIES\S_CLASS_LANDINGGEAR_A.ENTITY.MBIN",
						-- "MODELS\COMMON\SPACECRAFT\S-CLASS\SQUIDPARTS\LANDINGGEAR\LANDINGGEAR_A\ENTITIES\LANDINGGEAR_A.ENTITY.MBIN",							
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] 	= { "Components" },
							["LINE_OFFSET"] 			= "+0",
							["ADD"] 	= 
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
              <Property name="Action">
                <Property value="GcGoToStateAction.xml">
                  <Property name="State" value="DISABLE_LIGHT" />
                  <Property name="Broadcast" value="False" />
                  <Property name="BroadcastLevel" value="Local" />
                </Property>	
              </Property>
            </Property>
          </Property>
        </Property>	  
        <Property value="GcActionTriggerState.xml">
          <Property name="StateID" value="BASE_STATE" />
          <Property name="Triggers">
            <Property value="GcActionTrigger.xml">
			  <Property name="Trigger" value="GcPlayerNearbyEvent.xml">
				<Property name="RequirePlayerAction" value="InShip" />
				<Property name="Distance" value="35" />
				<Property name="Angle" value="360" />
				<Property name="AnglePlayerRelative" value="False" />
				<Property name="AngleOffset" value="0" />
				<Property name="AngleReflected" value="False" />
				<Property name="AngleMinDistance" value="1" />
				<Property name="DistanceCheckType" value="Radius" />
				<Property name="Inverse" value="False" />
				<Property name="OnlyForLocalPlayer" value="True" />
				<Property name="IncludeAllPhysics" value="False" />
				<Property name="IncludeMobileNPCs" value="False" />
				<Property name="TeleporterCountsAsPlayer" value="False" />
			  </Property>
              <Property name="Action">
                <Property value="GcGoToStateAction.xml">
                  <Property name="State" value="ENABLE_LIGHT" />
                  <Property name="Broadcast" value="False" />
                  <Property name="BroadcastLevel" value="Local" />
                </Property>	
              </Property>
            </Property>	
            <Property value="GcActionTrigger.xml">
			  <Property name="Trigger" value="GcPlayerNearbyEvent.xml">
				<Property name="RequirePlayerAction" value="OnFoot" />
				<Property name="Distance" value="35" />
				<Property name="Angle" value="360" />
				<Property name="AnglePlayerRelative" value="False" />
				<Property name="AngleOffset" value="0" />
				<Property name="AngleReflected" value="False" />
				<Property name="AngleMinDistance" value="1" />
				<Property name="DistanceCheckType" value="Radius" />
				<Property name="Inverse" value="False" />
				<Property name="OnlyForLocalPlayer" value="True" />
				<Property name="IncludeAllPhysics" value="False" />
				<Property name="IncludeMobileNPCs" value="False" />
				<Property name="TeleporterCountsAsPlayer" value="False" />
			  </Property>
              <Property name="Action">
                <Property value="GcGoToStateAction.xml">
                  <Property name="State" value="DISABLE_LIGHT" />
                  <Property name="Broadcast" value="False" />
                  <Property name="BroadcastLevel" value="Local" />
                </Property>	
              </Property>
            </Property>	
          </Property>
        </Property>
        <Property value="GcActionTriggerState.xml">
          <Property name="StateID" value="DISABLE_LIGHT" />
          <Property name="Triggers">
            <Property value="GcActionTrigger.xml">
              <Property name="Trigger" value="GcStateTimeEvent.xml">
                <Property name="Seconds" value="0.2" />
                <Property name="RandomSeconds" value="0" />
              </Property>
              <Property name="Action">
                <Property value="GcNodeActivationAction.xml">
                  <Property name="NodeActiveState" value="Deactivate" />
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
                <Property value="GcGoToStateAction.xml">
                  <Property name="State" value="BASE_STATE" />
                  <Property name="Broadcast" value="False" />
                  <Property name="BroadcastLevel" value="Local" />
                </Property>	
              </Property>
            </Property>	
          </Property>
        </Property>		
        <Property value="GcActionTriggerState.xml">
          <Property name="StateID" value="ENABLE_LIGHT" />
          <Property name="Triggers">
            <Property value="GcActionTrigger.xml">
              <Property name="Trigger" value="GcStateTimeEvent.xml">
                <Property name="Seconds" value="1" />
                <Property name="RandomSeconds" value="0" />
              </Property>
              <Property name="Action">
                <Property value="GcNodeActivationAction.xml">
                  <Property name="NodeActiveState" value="Activate" />
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
                <Property value="GcGoToStateAction.xml">
                  <Property name="State" value="BASE_STATE" />
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
				}		
			}
		}		
	}
}