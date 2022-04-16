NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "ChestAlwaysPowered.pak",
["MOD_AUTHOR"]				= "Mjjstral",
["NMS_VERSION"]				= "2.2+",
["MOD_DESCRIPTION"]			= "",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\STORAGECHEST\ENTITIES\STORAGECHEST.ENTITY.MBIN",
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
                <Property name="Seconds" value="0" />
                <Property name="RandomSeconds" value="0" />
              </Property>            
              <Property name="Action">
                <Property value="GcPowerStateAction.xml">
                  <Property name="SetRateEnabled" value="True" />
                  <Property name="SetConnectionEnabled" value="True" />
                </Property>
                <Property value="GcGoToStateAction.xml">
                  <Property name="State" value="CONON1" />
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
	}
}