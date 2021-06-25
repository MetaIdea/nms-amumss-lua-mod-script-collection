CreatureType =
{
"None", "Bird", "FlyingLizard", "FlyingSnake", "Butterfly", "Beetle", "Fish", "Shark", "Crab", "Snake", "Dino", "Antelope", "Rodent",
"Cat", "Fiend", "Drone", "Quad", "Walker", "Predator", "PlayerPredator", "Prey", "Passive", "FishPredator", "FishPrey", "FiendFishSmall", "FiendFishBig", "Jellyfish",
"RockCreature", "MiniFiend", "Weird", "Brainless"
}

function CreateAlertEntry(AlertTarget, AlertInitiator)
local CREATURE_ALERT_DATA =
[[
				  <Property value="GcCreatureAlertData.xml">
				    <Property name="AlertTarget" value="GcCreatureTypes.xml">
					  <Property name="CreatureType" value="]] .. AlertTarget .. [[" />
				    </Property>
				    <Property name="AlertInitiator" value="GcCreatureTypes.xml">
					  <Property name="CreatureType" value="]] .. AlertInitiator .. [[" />
				    </Property>
				    <Property name="HearingRange" value="15" />
				    <Property name="SightRange" value="15" />
				    <Property name="SightAngle" value="60" />
				    <Property name="FleeRange" value="10" />
				  </Property>
]]
return CREATURE_ALERT_DATA
end

function CreateRewardEntry(AlertTarget, AlertInitiator)
local REWARD =
[[
    <Property value="GcGenericRewardTableEntry.xml">
      <Property name="Id" value="]] .. "CD_" .. AlertTarget .. AlertInitiator .. [[" />
      <Property name="Common" value="GcRewardTableItemList.xml">
        <Property name="RewardChoice" value="GiveAll" />
        <Property name="OverrideZeroSeed" value="False" />
        <Property name="List">
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
            <Property name="Reward" value="GcRewardSendChatMessage.xml">
              <Property name="StatusMessageID" value="]] .. StatusMessageID .. [[" />
              <Property name="CustomText" value="]] .. AlertInitiator .. " triggered alarm for " .. AlertTarget .. [[" />
            </Property>
            <Property name="LabelID" value="" />
          </Property>
        </Property>
      </Property>
    </Property>
]]
return REWARD
end

REWARDTABLE_ALL = ""

for i=1,#CreatureType,1 do
	for j=1,#CreatureType,1 do
		CREATURE_ALERT_DATA_LIST = CREATURE_ALERT_DATA_LIST .. CreateAlertEntry(CreatureType[i], CreatureType[j])
		REWARDTABLE_ALL = REWARDTABLE_ALL .. CreateRewardEntry(CreatureType[i], CreatureType[j])
	end
end

EVENTACTION = --loop through all STATE IDS again and again
[[
    <Property value="GcTriggerActionComponentData.xml">
      <Property name="HideModel" value="False" />
      <Property name="StartInactive" value="False" />
      <Property name="States">
        <Property value="GcActionTriggerState.xml">
          <Property name="StateID" value="BOOT" />
          <Property name="Triggers">
            <Property value="GcActionTrigger.xml">
			  <Property value="GcCreatureNearbyEvent.xml">
			    <Property name="AlertTable">]] .. CREATURE_ALERT_DATA_LIST .. [[
			    <Property name="Inverse" value="False" />
			  </Property>
              <Property name="Action">
                <Property value="GcRewardAction.xml">
                  <Property name="Reward" value="MIXER_HEAL" />
                </Property>			  
                <Property value="GcGoToStateAction.xml">
                  <Property name="State" value="DEACTIVATE" />
                  <Property name="Broadcast" value="False" />
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



PLAYER_CHARACTER_INSERTION =
[[
    </Property>
	<Property value="TkSceneNodeData.xml">
	<Property name="Name" value="SHIELD" />
	<Property name="NameHash" value="0" />	
	  <Property name="Type" value="REFERENCE" />
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
		  <Property name="Name" value="SCENEGRAPH" />
		  <Property name="AltID" value="" />
		  <Property name="Value" value="MODELS\COMMON\PLAYER\PLAYERCHARACTER\SHIELD\SHIELD.SCENE.MBIN" />
		</Property>			
	  </Property>
	  <Property name="Children" />
	</Property>	
]]

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "CreatureDetector.pak",
["MOD_AUTHOR"]				= "Mjjstral",
["MOD_DESCRIPTION"]			= "",
["NMS_VERSION"]				= "2+",
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.4C482859.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\COMMON\PLAYER\PLAYERCHARACTER\PLAYERCHARACTER.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"Components"},
							["LINE_OFFSET"] 		= "-2",
							["ADD"] 				= PLAYER_CHARACTER_INSERTION
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
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\REWARDTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"EntitlementTable"},
							["LINE_OFFSET"] 		= "+0",
							["ADD"] 				= REWARDTABLE_ALL
						}
					}
				}
			}
		}
	}
}