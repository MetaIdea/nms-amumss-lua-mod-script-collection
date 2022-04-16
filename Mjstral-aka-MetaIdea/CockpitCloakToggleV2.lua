NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "CockpitCloakToggle.pak",
["MOD_AUTHOR"]				= "Mod and toggle idea by Mjjstral, original concept Gmr_Leon",
["NMS_VERSION"]				= "2.0+",
["DESCRIPTION"]				= "Toggle the cockpit from ships outside",
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.515F1D3.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 		
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"MODELS\COMMON\SPACECRAFT\FIGHTERS\COCKPIT\COCKPITA_INTERIOR\ENTITIES\COCKPITA_INTERIOR.ENTITY.MBIN",
						"MODELS\COMMON\SPACECRAFT\DROPSHIPS\COCKPIT\COCKPITA_INTERIOR\ENTITIES\COCKPITA.ENTITY.MBIN",
						"MODELS\COMMON\SPACECRAFT\DROPSHIPS\COCKPIT\COCKPITB_INTERIOR\ENTITIES\COCKPITB.ENTITY.MBIN",
						"MODELS\COMMON\SPACECRAFT\SCIENTIFIC\INTERIORS\CANOPYA_INTERIOR\ENTITIES\CANOPYA_INTERIOR.ENTITY.MBIN",
						"MODELS\COMMON\SPACECRAFT\SHUTTLE\INTERIORS\CANOPYA_INTERIOR\ENTITIES\CANOPYA.ENTITY.MBIN",
						"MODELS\COMMON\SPACECRAFT\S-CLASS\INTERIORS\CANOPYA_INTERIOR\ENTITIES\COCKPIT.ENTITY.MBIN",
				
						--UNUSED: EXTERIOR ENTITY--
						-- "MODELS\COMMON\SPACECRAFT\FIGHTERS\COCKPIT\COCKPIT_A\COCKPITA\ENTITIES\COCKPIT_A.ENTITY.MBIN",
						-- "MODELS\COMMON\SPACECRAFT\FIGHTERS\COCKPIT\COCKPIT_B\COCKPITB\ENTITIES\COCKPIT_B.ENTITY.MBIN",
						-- "MODELS\COMMON\SPACECRAFT\FIGHTERS\COCKPIT\COCKPIT_D\COCKPITD\ENTITIES\COCKPITD.ENTITY.MBIN",
						-- "MODELS\COMMON\SPACECRAFT\FIGHTERS\COCKPIT\COCKPIT_E\COCKPIT_E\ENTITIES\COCKPTE.ENTITY.MBIN",
						-- "MODELS\COMMON\SPACECRAFT\FIGHTERS\COCKPIT\COCKPIT_F\COCKPTF\ENTITIES\COCKPITF.ENTITY.MBIN",
						-- "MODELS\COMMON\SPACECRAFT\DROPSHIPS\COCKPIT\COCKPITA\ENTITIES\COCKPIT_A.ENTITY.MBIN",
						-- "MODELS\COMMON\SPACECRAFT\DROPSHIPS\COCKPIT\COCKPITB\ENTITIES\COCKPIT_B.ENTITY.MBIN",
						-- "MODELS\COMMON\SPACECRAFT\SCIENTIFIC\COCKPIT\COCKPITA\COCKPITA\ENTITIES\COCKPITA.ENTITY.MBIN",
						-- "MODELS\COMMON\SPACECRAFT\SCIENTIFIC\COCKPIT\COCKPITD\COCKPITD\ENTITIES\COCKPITD.ENTITY.MBIN",
						-- "MODELS\COMMON\SPACECRAFT\SCIENTIFIC\CANOPY\CANOPYA\CANOPYA\CANOPYA.ENTITY.MBIN",
						-- "MODELS\COMMON\SPACECRAFT\SCIENTIFIC\CANOPY\CANOPYB\CANOPYB\ENTITIES\CANOPYB.ENTITY.MBIN",
						-- "MODELS\COMMON\SPACECRAFT\SHUTTLE\CANOPY\ENTITIES\CANOPY_A.ENTITY.MBIN",
						-- "MODELS\COMMON\SPACECRAFT\S-CLASS\SHAREDDATA\ENTITIES\S_CLASS.ENTITY.MBIN",	

						--UNUSED: INTERIOR SCENES--
						-- "MODELS\COMMON\SPACECRAFT\DROPSHIPS\COCKPIT\COCKPITA_INTERIOR.SCENE.MBIN"
						-- "MODELS\COMMON\SPACECRAFT\DROPSHIPS\COCKPIT\COCKPITB_INTERIOR.SCENE.MBIN"
						-- "MODELS\COMMON\SPACECRAFT\FIGHTERS\COCKPIT\COCKPITA_INTERIOR.SCENE.MBIN"
						-- "MODELS\COMMON\SPACECRAFT\FIGHTERS\COCKPIT\COCKPITB_INTERIOR.SCENE.MBIN"
						-- "MODELS\COMMON\SPACECRAFT\SCIENTIFIC\INTERIORS\CANOPYA_INTERIOR.SCENE.MBIN"
						-- "MODELS\COMMON\SPACECRAFT\SHUTTLE\INTERIORS\CANOPYA_INTERIOR\CANOPYA_INTERIOR.SCENE.MBIN"
						-- "MODELS\COMMON\SPACECRAFT\S-CLASS\INTERIORS\CANOPYA_INTERIOR.SCENE.MBIN"
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
              <Property name="Action">
                <Property value="GcNodeActivationAction.xml">
                  <Property name="NodeActiveState" value="Toggle" />
                  <Property name="Name" value="MODELS\COMMON\SPACECRAFT\DROPSHIPS\COCKPIT\COCKPITA_INTERIOR" />
                  <Property name="SceneToAdd" value="" />
                  <Property name="IncludePhysics" value="True" />
                  <Property name="IncludeChildPhysics" value="True" />
                  <Property name="NotifyNPC" value="False" />
                  <Property name="UseMasterModel" value="True" />
                  <Property name="UseLocalNode" value="False" />
                  <Property name="RestartEmitters" value="False" />
                  <Property name="AffectModels" value="True" />
                </Property>
                <Property value="GcNodeActivationAction.xml">
                  <Property name="NodeActiveState" value="Toggle" />
                  <Property name="Name" value="MODELS\COMMON\SPACECRAFT\DROPSHIPS\COCKPIT\COCKPITB_INTERIOR" />
                  <Property name="SceneToAdd" value="" />
                  <Property name="IncludePhysics" value="True" />
                  <Property name="IncludeChildPhysics" value="True" />
                  <Property name="NotifyNPC" value="False" />
                  <Property name="UseMasterModel" value="True" />
                  <Property name="UseLocalNode" value="False" />
                  <Property name="RestartEmitters" value="False" />
                  <Property name="AffectModels" value="True" />
                </Property>
                <Property value="GcNodeActivationAction.xml">
                  <Property name="NodeActiveState" value="Toggle" />
                  <Property name="Name" value="MODELS\COMMON\SPACECRAFT\FIGHTERS\COCKPIT\COCKPITA_INTERIOR" />
                  <Property name="SceneToAdd" value="" />
                  <Property name="IncludePhysics" value="True" />
                  <Property name="IncludeChildPhysics" value="True" />
                  <Property name="NotifyNPC" value="False" />
                  <Property name="UseMasterModel" value="True" />
                  <Property name="UseLocalNode" value="False" />
                  <Property name="RestartEmitters" value="False" />
                  <Property name="AffectModels" value="True" />
                </Property>
                <Property value="GcNodeActivationAction.xml">
                  <Property name="NodeActiveState" value="Toggle" />
                  <Property name="Name" value="MODELS\COMMON\SPACECRAFT\FIGHTERS\COCKPIT\COCKPITB_INTERIOR" />
                  <Property name="SceneToAdd" value="" />
                  <Property name="IncludePhysics" value="True" />
                  <Property name="IncludeChildPhysics" value="True" />
                  <Property name="NotifyNPC" value="False" />
                  <Property name="UseMasterModel" value="True" />
                  <Property name="UseLocalNode" value="False" />
                  <Property name="RestartEmitters" value="False" />
                  <Property name="AffectModels" value="True" />
                </Property>
                <Property value="GcNodeActivationAction.xml">
                  <Property name="NodeActiveState" value="Toggle" />
                  <Property name="Name" value="MODELS\COMMON\SPACECRAFT\SCIENTIFIC\INTERIORS\CANOPYA_INTERIOR" />
                  <Property name="SceneToAdd" value="" />
                  <Property name="IncludePhysics" value="True" />
                  <Property name="IncludeChildPhysics" value="True" />
                  <Property name="NotifyNPC" value="False" />
                  <Property name="UseMasterModel" value="True" />
                  <Property name="UseLocalNode" value="False" />
                  <Property name="RestartEmitters" value="False" />
                  <Property name="AffectModels" value="True" />
                </Property>	
                <Property value="GcNodeActivationAction.xml">
                  <Property name="NodeActiveState" value="Toggle" />
                  <Property name="Name" value="MODELS\COMMON\SPACECRAFT\SHUTTLE\INTERIORS\CANOPYA_INTERIOR\CANOPYA_INTERIOR" />
                  <Property name="SceneToAdd" value="" />
                  <Property name="IncludePhysics" value="True" />
                  <Property name="IncludeChildPhysics" value="True" />
                  <Property name="NotifyNPC" value="False" />
                  <Property name="UseMasterModel" value="True" />
                  <Property name="UseLocalNode" value="False" />
                  <Property name="RestartEmitters" value="False" />
                  <Property name="AffectModels" value="True" />
                </Property>	
                <Property value="GcNodeActivationAction.xml">
                  <Property name="NodeActiveState" value="Toggle" />
                  <Property name="Name" value="MODELS\COMMON\SPACECRAFT\S-CLASS\INTERIORS\CANOPYA_INTERIOR" />
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
]]						}
					}
				}		
			}
		}
	}	
}