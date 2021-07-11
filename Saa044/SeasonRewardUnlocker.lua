REWARDS = {
-----SEASON 1 REWARDS-------
	"R_RANDOM_TRAIL",
	"RS_S1_COMPLETE",
	"RS_S1_SHIP",
	"RS_S1_PHASE1",
	"RS_S1_PHASE2",
	"RS_S1_PHASE3",
	"RS_S1_PHASE4",
	"RS_S1_PHASE5",
	"RS_S1_PARTY",
	"RS_S1_FIREWORKS",
	"RS_NANITES_S",
	"RS_NANITES_M",
	"RS_NANITES_L",
	"RS_MONEY_S",
	"RS_MONEY_M",
	"RS_MONEY_L",
	"RS_QUICKSILV_S",
	"RS_QUICKSILV_M",
	"RS_QUICKSILV_L",
	"RS_INV_SLOT",
	"RS_BASE_TOKENS",
	"RS_FRIG_TOKENS",
	"RS_WEAP_TOKENS",
	"RS_SHIP_TOKENS",
	"RS_FREI_TOKENS",
	"RS_ABAND_FINDER",
	"RS_WARP2_PLANS",
	"RS_LAUNCHER",
	"RS_VISOR_TECH",
	"RS_WARP_TECH",
	"RS_GLYPHS",
	"RS_VOIDEGG",
	"RS_S1_S1M0",
	"RS_S1_S1M1",
	"RS_S1_S1M3",
	"RS_S1_S1M4",
	"RS_S1_S1M5",
	"RS_S1_S1M7",
	"RS_S1_S2M3",
	"RS_S1_S2M6",
	"RS_S1_S2M7",
	"RS_S1_S2M8",
	"RS_S1_S3M2",
	"RS_S1_S3M3",
	"RS_S1_S3M4",
	"RS_S1_S3M5",
	"RS_S1_S3M6",
	"RS_S1_S3M7",
	"RS_S1_S3M8",
	"RS_S1_S4M2",
	"RS_S1_S4M3",
	"RS_S1_S4M4",
	"RS_S1_S4M5",
	"RS_S1_S4M6",
	"RS_S1_S4M7",
	"RS_S1_S4M8",
	"RS_S1_S5M2",
	"RS_S1_S5M4",
	"RS_S1_S5M5",
	"RS_S1_S5M6",
	"RS_S1_S5M7",
	"RS_S1_S5M8",

----SEASON 2 REWARDS-------
	"RS_S2_COMPLETE",
	"RS_S2_SPEC",
	"RS_S2_PHASE1",
	"RS_S2_PHASE2",
	"RS_S2_PHASE3",
	"RS_S2_PHASE4",
	"RS_S2_PHASE5",
	"RS_S2_PARTY",
	"RS_S2_S1M1",
	"RS_S2_S1M2",
	"RS_S2_S1M3",
	"RS_S2_S1M4",
	"RS_S2_S2M1",
	"RS_S2_S2M2",
	"RS_S2_S2M3",
	"RS_S2_S2M4",
	"RS_S2_S3M1",
	"RS_S2_S3M2",
	"RS_S2_S3M3",
	"RS_S2_S3M4",
	"RS_S2_S3M5",
	"RS_S2_S3M6",
	"RS_S2_S4M1",
	"RS_S2_S4M2",
	"RS_S2_S4M3",
	"RS_S2_S4M4",
	"RS_S2_S4M5",
	"RS_S2_S5M0",
	"RS_S2_S5M1",
	"RS_S2_S5M2",
	"RS_S2_S5M3",
	"RS_S2_S5M4",

----SEASON 3 REWARDS-------
	"RS_S3_COMPLETE",
	"RS_S2_PHASE1",
	"RS_S2_PHASE2",
	"RS_S2_PHASE3",
	"RS_S2_PHASE4",
	"RS_S2_PHASE5",
	"RS_S3_PARTY",
	"RS_S3_S1M1",
	"RS_S3_S1M3",
	"RS_S3_S5M6",	
}

REWARD_ACTIONS = ""

for i=1,#REWARDS,1 do
	REWARD_ACTIONS = REWARD_ACTIONS .. [[<Property value="GcRewardAction.xml"> <Property name="Reward" value="]] .. REWARDS[i] .. [[" /> </Property>]] .. "\n"
end

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "zzz-SeasonRewardUnlocker.pak",
["MOD_AUTHOR"]				= "Mjstral",
["MOD_DESCRIPTION"]			= "Instant access to season rewards with the quick action emote/gesture menu",
["NMS_VERSION"]				= "3.52",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{  
				{
					["MBIN_FILE_SOURCE"] 	= [[MODELS\COMMON\PLAYER\PLAYERCHARACTER\PLAYERCHARACTER\ENTITIES\PLAYERCHARACTER.ENTITY.MBIN]],
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"]   = {"Anim","EMOTE_CALL_PET"}, 
							["LINE_OFFSET"] 		= "+0",
							["REPLACE_TYPE"]        = "ADDAFTERSECTION",
							["ADD"] 				= 
[[
        <Property value="TkAnimationData.xml">
          <Property name="Anim" value="UNLOCK_REWARD" />
          <Property name="Filename" value="MODELS/COMMON/PLAYER/PLAYERCHARACTER/ANIMS/EMOTES/NULL.ANIM.MBIN" />
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
            <Property name="BlockPlayerMovement" value="False" />
            <Property name="BlockPlayerWeapon" value="Unblocked" />
          </Property>
        </Property>
]]
						},
						{
							["PRECEDING_KEY_WORDS"] = {"LodDistances"}, 
							["LINE_OFFSET"] 		= "-2",
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
              <Property name="Trigger" value="GcAnimFrameEvent.xml">
                <Property name="Anim" value="UNLOCK_REWARD" />
                <Property name="FrameStart" value="0" />
                <Property name="StartFromEnd" value="False" />
              </Property>	
              <Property name="Action">]] .. REWARD_ACTIONS .. [[
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
					["MBIN_FILE_SOURCE"] 	= [[METADATA\UI\EMOTEMENU.MBIN]],
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"Emotes"}, 
							["LINE_OFFSET"] 		= "+0",
							["ADD"] 				= 
[[
    <Property value="GcPlayerEmote.xml">
      <Property name="Title" value="Unlock Season Reward" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="False" />
      <Property name="AnimationName" value="UNLOCK_REWARD" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/BANNERICONS/BANNERICON.COG.DDS" />
      </Property>
      <Property name="LinkedSpecialID" value="" />
      <Property name="NeverShowInMenu" value="False" />
      <Property name="LoopAnimUntilMove" value="" />
      <Property name="CloseMenuOnSelect" value="False" />
      <Property name="MoveToCancel" value="False" />
      <Property name="GekAnimationName" value="" />
      <Property name="GekLoopAnimUntilMove" value="" />
      <Property name="AvailableUnderwater" value="False" />
      <Property name="RidingAnimationName" value="UNLOCK_REWARD" />
      <Property name="IsPetCommand" value="False" />
      <Property name="PetCommandTitle" value="" />
      <Property name="PetCommandIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
      </Property>
    </Property>
    <Property value="GcPlayerEmote.xml">
      <Property name="Title" value="Unlock Season Reward" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="False" />
      <Property name="AnimationName" value="UNLOCK_REWARD" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/BANNERICONS/BANNERICON.COG.DDS" />
      </Property>
      <Property name="LinkedSpecialID" value="" />
      <Property name="NeverShowInMenu" value="False" />
      <Property name="LoopAnimUntilMove" value="" />
      <Property name="CloseMenuOnSelect" value="False" />
      <Property name="MoveToCancel" value="False" />
      <Property name="GekAnimationName" value="" />
      <Property name="GekLoopAnimUntilMove" value="" />
      <Property name="AvailableUnderwater" value="True" />
      <Property name="RidingAnimationName" value="UNLOCK_REWARD" />
      <Property name="IsPetCommand" value="False" />
      <Property name="PetCommandTitle" value="" />
      <Property name="PetCommandIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
      </Property>
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
			["FILE_DESTINATION"] = [[MODELS\COMMON\PLAYER\PLAYERCHARACTER\ANIMS\EMOTES\NULL.ANIM.EXML]],
			["FILE_CONTENT"] 	 = 
[[
<?xml version="1.0" encoding="utf-8"?>
<Data template="TkAnimMetadata">
  <Property name="FrameCount" value="10" />
  <Property name="NodeCount" value="0" />
  <Property name="NodeData" /> 
  <Property name="AnimFrameData">
    <Property value="TkAnimNodeFrameData.xml">
    <Property name="Rotations" />  
	<Property name="Translations" /> 
	<Property name="Scales" />
    </Property>  
  </Property>	
  <Property name="StillFrameData" value="TkAnimNodeFrameData.xml">
    <Property name="Rotations" />  
	<Property name="Translations" /> 
	<Property name="Scales" />	  
 </Property>
</Data>	
]]			
		}
	}
}

