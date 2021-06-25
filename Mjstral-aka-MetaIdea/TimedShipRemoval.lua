REMOVAL_DELAY = 1.0

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "TimedShipRemoval.pak",
["MOD_AUTHOR"]				= "Mjjstral",
["NMS_VERSION"]				= "2.0+",
["MOD_DESCRIPTION"]			= "Remove ships after n seconds when appearing ingame",
["MODIFICATIONS"] 			= 
	{
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
						"MODELS\COMMON\SPACECRAFT\S-CLASS\BIOPARTS\COCKPIT\COCKPITA\ENTITIES\COCKPIT_A.ENTITY.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = { "Components" },
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
                <Property name="Seconds" value="]] .. REMOVAL_DELAY .. [[" />
                <Property name="RandomSeconds" value="0" />
              </Property>
              <Property name="Action">
                <Property value="GcNodeActivationAction.xml">
                  <Property name="NodeActiveState" value="Remove" />
                  <Property name="Name" value="MODELS\COMMON\SPACECRAFT\FIGHTERS\FIGHTER_PROC" />
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
                  <Property name="NodeActiveState" value="Remove" />
                  <Property name="Name" value="MODELS\COMMON\SPACECRAFT\DROPSHIPS\DROPSHIP_PROC" />
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
                  <Property name="NodeActiveState" value="Remove" />
                  <Property name="Name" value="MODELS\COMMON\SPACECRAFT\SCIENTIFIC\SCIENTIFIC_PROC" />
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
                  <Property name="NodeActiveState" value="Remove" />
                  <Property name="Name" value="MODELS\COMMON\SPACECRAFT\SHUTTLE\SHUTTLE_PROC" />
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
                  <Property name="NodeActiveState" value="Remove" />
                  <Property name="Name" value="MODELS\COMMON\SPACECRAFT\S-CLASS\S-CLASS_PROC" />
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
                  <Property name="NodeActiveState" value="Remove" />
                  <Property name="Name" value="MODELS\COMMON\SPACECRAFT\S-CLASS\BIOPARTS\BIOSHIP_PROC" />
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
				}
			}
		},
	}
}