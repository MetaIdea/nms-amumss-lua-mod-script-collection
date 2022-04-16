MOD_FILENAME	= "FlybyTest.pak"
MOD_AUTHOR		= "Winder"
MOD_DESCRIPTION	= "Test"
NMS_VERSION		= "3.21+"

--override created material with existing mat
OVER_MAT_PATH = [[MODELS\EFFECTS\BLOOD\FIENDDEATH\EMITTERS\FBLOODSPLATEMITTER.MATERIAL.MBIN]]
OVERRIDE_MAT = true

--override created animation with existing anim
--if NOT overriding, uncomment the block in ADD_FILES section
OVER_ANIM = [[MODELS/COMMON/PLAYER/PLAYERCHARACTER/ANIMS/INTERACTION/GENERAL/0H_SPOTTER_SHIPS_ARRIVE.ANIM.MBIN]]
OVERRIDE_ANIM = true

--config var going into exmls
ROOT_PATH = [[CUSTOMMODELS/WINDER/PISS/]]
EMOTE_ACTION =	{	["NAME"] 		= "Flyby test",
					["ICON"] 		= "TEXTURES\UI\FRONTEND\ICONS\EXPEDITION/PATCH.EXPEDITION.2.ALT.DDS",
					["CHAT_MSG"] 	= "%NAME% is summoning a flyby",
					["CHAT_NAME"] 	= "False",
				}
PISS_ACTION = "FLYBY"

PENIS_JOINT = "player01_ROOTSHJnt"
REWARD_ID = "FLYBY_THREE"
				
REWARD_ENTRY =
{
[[
	<Property value="GcGenericRewardTableEntry.xml">
      <Property name="Id" value="FLYBY_ONE" />
      <Property name="List" value="GcRewardTableItemList.xml">
        <Property name="RewardChoice" value="GiveAll" />
        <Property name="OverrideZeroSeed" value="False" />
        <Property name="List">
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
            <Property name="Reward" value="GcRewardFrigateFlyby.xml">
              <Property name="FlybyType" value="GcFrigateFlybyType.xml">
                <Property name="FrigateFlybyType" value="SingleShip" />
              </Property>
              <Property name="AppearanceDelay" value="-1" />
              <Property name="CommunicatorOSDLocId" value="UI_HAIL_ALIEN_OSD" />
              <Property name="CommunicatorMessage" value="GcPlayerCommunicatorMessage.xml">
                <Property name="Dialog" value="FLEET_PURCHASE" />
                <Property name="ShowHologram" value="True" />
                <Property name="CommunicatorType" value="Generic" />
                <Property name="RaceOverride" value="GcAlienRace.xml">
                  <Property name="AlienRace" value="None" />
                </Property>
                <Property name="ShipHUDOverride" value="" />
              </Property>
              <Property name="MarkerIcon" value="TkTextureResource.xml">
                <Property name="Filename" value="TEXTURES/UI/HUD/ICONS/BUILDINGS/BUILDING.POI.DDS" />
              </Property>
              <Property name="PulseAudio" value="GcAudioWwiseEvents.xml">
                    <Property name="AkEvent" value="UI_INCOMING_NORMANDY_WARNING" />
                  </Property>
                  <Property name="AudioSting" value="GcAudioWwiseEvents.xml">
                    <Property name="AkEvent" value="SHIP_NORMANDY_REVEAL" />
                  </Property>
                  <Property name="CameraShake" value="FRG_FLYBY_PREP" />
            </Property>
            <Property name="LabelID" value="" />
          </Property>
        </Property>
      </Property>
    </Property>
]],
[[
	<Property value="GcGenericRewardTableEntry.xml">
      <Property name="Id" value="FLYBY_TWO" />
      <Property name="List" value="GcRewardTableItemList.xml">
        <Property name="RewardChoice" value="GiveAll" />
        <Property name="OverrideZeroSeed" value="False" />
        <Property name="List">
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
            <Property name="Reward" value="GcRewardFrigateFlyby.xml">
              <Property name="FlybyType" value="GcFrigateFlybyType.xml">
                <Property name="FrigateFlybyType" value="Diplomatic" />
              </Property>
              <Property name="AppearanceDelay" value="-1" />
              <Property name="CommunicatorOSDLocId" value="UI_HAIL_ALIEN_OSD" />
              <Property name="CommunicatorMessage" value="GcPlayerCommunicatorMessage.xml">
                <Property name="Dialog" value="FLEET_PURCHASE" />
                <Property name="ShowHologram" value="True" />
                <Property name="CommunicatorType" value="Generic" />
                <Property name="RaceOverride" value="GcAlienRace.xml">
                  <Property name="AlienRace" value="None" />
                </Property>
                <Property name="ShipHUDOverride" value="" />
              </Property>
              <Property name="MarkerIcon" value="TkTextureResource.xml">
                <Property name="Filename" value="TEXTURES/UI/HUD/ICONS/BUILDINGS/BUILDING.POI.DDS" />
              </Property>
              <Property name="PulseAudio" value="GcAudioWwiseEvents.xml">
                    <Property name="AkEvent" value="UI_INCOMING_NORMANDY_WARNING" />
                  </Property>
                  <Property name="AudioSting" value="GcAudioWwiseEvents.xml">
                    <Property name="AkEvent" value="SHIP_NORMANDY_REVEAL" />
                  </Property>
                  <Property name="CameraShake" value="FRG_FLYBY_PREP" />
            </Property>
            <Property name="LabelID" value="" />
          </Property>
        </Property>
      </Property>
    </Property>
]],
[[
	<Property value="GcGenericRewardTableEntry.xml">
      <Property name="Id" value="FLYBY_THREE" />
      <Property name="List" value="GcRewardTableItemList.xml">
        <Property name="RewardChoice" value="GiveAll" />
        <Property name="OverrideZeroSeed" value="False" />
        <Property name="List">
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
            <Property name="Reward" value="GcRewardFrigateFlyby.xml">
              <Property name="FlybyType" value="GcFrigateFlybyType.xml">
                <Property name="FrigateFlybyType" value="69" />
              </Property>
              <Property name="AppearanceDelay" value="-1" />
              <Property name="CommunicatorOSDLocId" value="UI_HAIL_ALIEN_OSD" />
              <Property name="CommunicatorMessage" value="GcPlayerCommunicatorMessage.xml">
                <Property name="Dialog" value="FLEET_PURCHASE" />
                <Property name="ShowHologram" value="True" />
                <Property name="CommunicatorType" value="Generic" />
                <Property name="RaceOverride" value="GcAlienRace.xml">
                  <Property name="AlienRace" value="None" />
                </Property>
                <Property name="ShipHUDOverride" value="" />
              </Property>
              <Property name="MarkerIcon" value="TkTextureResource.xml">
                <Property name="Filename" value="TEXTURES/UI/HUD/ICONS/BUILDINGS/BUILDING.POI.DDS" />
              </Property>
              <Property name="PulseAudio" value="GcAudioWwiseEvents.xml">
                    <Property name="AkEvent" value="UI_INCOMING_NORMANDY_WARNING" />
                  </Property>
                  <Property name="AudioSting" value="GcAudioWwiseEvents.xml">
                    <Property name="AkEvent" value="SHIP_NORMANDY_REVEAL" />
                  </Property>
                  <Property name="CameraShake" value="FRG_FLYBY_PREP" />
            </Property>
            <Property name="LabelID" value="" />
          </Property>
        </Property>
      </Property>
    </Property>
]],
}

FLYBY_ENTRY =
{
[[
    <Property value="GcFrigateFlybyLayout.xml">
      <Property name="FlybyType" value="GcFrigateFlybyType.xml">
        <Property name="FrigateFlybyType" value="SingleShip" />
      </Property>
      <Property name="Frigate">
        <Property value="GcFrigateFlybyOption.xml">
          <Property name="FrigateClass" value="GcFrigateClass.xml">
            <Property name="FrigateClass" value="Support" />
          </Property>
          <Property name="MinCount" value="1" />
          <Property name="MaxCount" value="2" />
          <Property name="Weight" value="0.5" />
        </Property>
        <Property value="GcFrigateFlybyOption.xml">
          <Property name="FrigateClass" value="GcFrigateClass.xml">
            <Property name="FrigateClass" value="Combat" />
          </Property>
          <Property name="MinCount" value="1" />
          <Property name="MaxCount" value="2" />
          <Property name="Weight" value="1" />
        </Property>
        <Property value="GcFrigateFlybyOption.xml">
          <Property name="FrigateClass" value="GcFrigateClass.xml">
            <Property name="FrigateClass" value="Diplomacy" />
          </Property>
          <Property name="MinCount" value="1" />
          <Property name="MaxCount" value="2" />
          <Property name="Weight" value="1" />
        </Property>
       <!-- <Property value="GcFrigateFlybyOption.xml">
          <Property name="FrigateClass" value="GcFrigateClass.xml">
            <Property name="FrigateClass" value="Normandy" />
          </Property>
          <Property name="MinCount" value="2" />
          <Property name="MaxCount" value="3" />
          <Property name="Weight" value="1" />
        </Property> -->
      </Property>
    </Property>
]]
}

function GetQuickAction(TITLE, ANIM, ICON, UNDERWATER, CHATTEXT, CHATPREFIX)
return [[
    <Property value="GcPlayerEmote.xml">
      <Property name="Title" value="]] .. TITLE .. [[" />
      <Property name="ChatText" value="]] .. CHATTEXT .. [[" />
      <Property name="ChatUsesPrefix" value="]] .. CHATPREFIX .. [[" />
      <Property name="AnimationName" value="]] .. ANIM .. [[" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="]] .. ICON .. [[" />
      </Property>
      <Property name="LinkedSpecialID" value="" />
      <Property name="NeverShowInMenu" value="False" />
      <Property name="LoopAnimUntilMove" value="" />
      <Property name="CloseMenuOnSelect" value="True" />
      <Property name="MoveToCancel" value="True" />
      <Property name="GekAnimationName" value="" />
      <Property name="GekLoopAnimUntilMove" value="" />
      <Property name="AvailableUnderwater" value="]] .. UNDERWATER .. [[" />
      <Property name="RidingAnimationName" value="" />
      <Property name="IsPetCommand" value="False" />
      <Property name="PetCommandTitle" value="" />
      <Property name="PetCommandIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
      </Property>
    </Property>
]]
end

function GetTriggerAnim(ANIM, FILEPATH)
return [[
        <Property value="TkAnimationData.xml">
          <Property name="Anim" value="]] .. ANIM .. [[" />
          <Property name="Filename" value="]] .. FILEPATH .. [[" />
          <Property name="AnimType" value="OneShot" />
          <Property name="FrameStart" value="0" />
          <Property name="FrameEnd" value="0" />
          <Property name="StartNode" value="" />
          <Property name="ExtraStartNodes" />
          <Property name="Priority" value="0" />
          <Property name="OffsetMin" value="0" />
          <Property name="OffsetMax" value="0" />
          <Property name="Delay" value="0" />
          <Property name="Speed" value="1" />
          <Property name="ActionStartFrame" value="0" />
          <Property name="ActionFrame" value="-1" />
          <Property name="CreatureSize" value="AllSizes" />
          <Property name="Additive" value="False" />
          <Property name="Mirrored" value="False" />
          <Property name="Active" value="True" />
          <Property name="AdditiveBaseAnim" value="" />
          <Property name="AdditiveBaseFrame" value="0" />
          <Property name="GameData" value="TkAnimationGameData.xml">
            <Property name="RootMotionEnabled" value="False" />
            <Property name="BlockPlayerMovement" value="True" />
            <Property name="BlockPlayerWeapon" value="Unblocked" />
          </Property>
        </Property>
]]
end

function GetTriggerAction(ANIM, REWARD)
return [[
    <Property value="GcTriggerActionComponentData.xml">
      <Property name="HideModel" value="False" />
      <Property name="StartInactive" value="False" />
      <Property name="States">
        <Property value="GcActionTriggerState.xml">
          <Property name="StateID" value="BOOT" />
          <Property name="Triggers">
            <Property value="GcActionTrigger.xml">
              <Property name="Trigger" value="GcAnimFrameEvent.xml">
                <Property name="Anim" value="]] .. ANIM .. [[" />
                <Property name="FrameStart" value="0" />
                <Property name="StartFromEnd" value="False" />
              </Property>	
              <Property name="Action">
                <Property value="GcRewardAction.xml">
                  <Property name="Reward" value="]] .. REWARD .. [[" />
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
end

--make files with functions
ACTIVATE_ACTION = GetQuickAction(EMOTE_ACTION["NAME"], PISS_ACTION, EMOTE_ACTION["ICON"], "False", EMOTE_ACTION["CHAT_MSG"], EMOTE_ACTION["CHAT_NAME"])

-- if OVERRIDE_MAT then use override material in scene, else use new mat and create mat file
ANIM_OUTPUT = ""
if OVERRIDE_ANIM then
ANIM_OUTPUT = OVER_ANIM
else ANIM_OUTPUT = [[MODELS/COMMON/PLAYER/PLAYERCHARACTER/ANIMS/EMOTES/NULL.ANIM.MBIN]]
end
TRIGGER_ANIM = GetTriggerAnim(PISS_ACTION, ANIM_OUTPUT)

TRIGGER_ACTION = GetTriggerAction(PISS_ACTION, REWARD_ID)

REWARD_EXPORT = table.concat(REWARD_ENTRY)
FLYBY_EXPORT = table.concat(FLYBY_ENTRY)

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "~~~~~~~~FlybyTest.pak",
["MOD_AUTHOR"]				= "Winder",
["MOD_DESCRIPTION"]			= "Test",
["NMS_VERSION"]				= "3.21+",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{  
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS/COMMON/PLAYER/PLAYERCHARACTER/PLAYERCHARACTER/ENTITIES/PLAYERCHARACTER.ENTITY.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"Trees"},  
							["LINE_OFFSET"] 		= "-2",
							["ADD"] 				= TRIGGER_ANIM
						},
						{
							["PRECEDING_KEY_WORDS"] = {"LodDistances"}, 
							["LINE_OFFSET"] 		= "-2",
							["ADD"] 				= TRIGGER_ACTION
						}
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA/UI/EMOTEMENU.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"PetCommandTitle", "UI_EMOTE_OVER_HERE_PET"}, 
							["REPLACE_TYPE"] 		= "ADDAFTERSECTION",
							["ADD"] 				= ACTIVATE_ACTION
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\REWARDTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"GenericTable"}, 
							["LINE_OFFSET"] 		= "+0",
							["ADD"] 				= REWARD_EXPORT
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\FRIGATEFLYBYTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"GcFrigateFlybyLayout.xml"}, 
							["LINE_OFFSET"] 		= "+0",
							["REMOVE"]				= "SECTION"
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Entries"}, 
							["LINE_OFFSET"] 		= "+0",
							["ADD"] 				= FLYBY_EXPORT
						},
					}
				},
			}
		},
	}
}