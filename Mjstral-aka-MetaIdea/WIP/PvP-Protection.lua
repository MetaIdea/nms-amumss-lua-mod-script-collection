NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "PvP-Protection.pak",
["MOD_AUTHOR"]				= "Mjstral",
["MOD_DESCRIPTION"]			= "Immune to other player weapons",
["NMS_VERSION"]				= "3.52",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{  
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\COMMON\PLAYER\PLAYERCHARACTER\PLAYERCHARACTER\ENTITIES\PLAYERCHARACTER.ENTITY.MBIN",
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
              <Property name="Trigger" value="GcBeenShotEvent.xml">
                <Property name="ShotBy" value="Player" />
                <Property name="DamageThreshold" value="0" />
                <Property name="HealthThreshold" value="101" />
              </Property>	  
              <Property name="Action">
				<Property value="GcRewardAction.xml">
                  <Property name="Reward" value="HEALTHLARGE" />
                </Property>
                <Property value="GcRewardAction.xml">
                  <Property name="Reward" value="SHIELDLARGE" />
                </Property>
                <Property value="GcRewardAction.xml">
                  <Property name="Reward" value="HAZARDLARGE" />
                </Property>		
                <Property value="GcRewardAction.xml">
                  <Property name="Reward" value="ENERGY" />
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

