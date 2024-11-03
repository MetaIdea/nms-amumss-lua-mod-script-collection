REWARD_ID       = "RS_S13_SHIP"
REWARD_ICON     = "TEXTURES/UI/FRONTEND/ICONS/NOTIFICATIONS/ICON.SHIP.DDS"
REWARD_TITLE    = "Iron Vulture"


NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Iron Vulture Unlocker.pak",
["MOD_AUTHOR"]      = "Mjstral & Babscoole",
["MOD_DESCRIPTION"] = "Unlock a reward via speical emote menu quick action",
["NMS_VERSION"]     = "5.22",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\PLAYER\PLAYERCHARACTER\PLAYERCHARACTER\ENTITIES\PLAYERCHARACTER.ENTITY.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Anim", "0H_GREET_MOB_04"},
                            ["SECTION_ACTIVE"] = {2},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] =
[[
          <Property value="TkAnimationData.xml">
            <Property name="Anim" value="TRIGGERANIM" />
            <Property name="Filename" value="MODELS/TESTS/EFFECTTEST.ANIM.MBIN" />
            <Property name="AnimType" value="OneShot" />
            <Property name="AnimGroupOverride" value="False" />
            <Property name="Priority" value="0" />
            <Property name="FrameStart" value="0" />
            <Property name="FrameEnd" value="0" />
            <Property name="FrameEndGame" value="0" />
            <Property name="StartNode" value="" />
            <Property name="ExtraStartNodes" />
            <Property name="AdditiveBaseAnim" value="" />
            <Property name="AdditiveBaseFrame" value="0" />
            <Property name="Mask" value="" />
            <Property name="OffsetMin" value="0" />
            <Property name="OffsetMax" value="0" />
            <Property name="Delay" value="0" />
            <Property name="Speed" value="1" />
            <Property name="ActionStartFrame" value="0" />
            <Property name="ActionFrame" value="-1" />
            <Property name="Actions" />
            <Property name="CreatureSize" value="AllSizes" />
            <Property name="Additive" value="False" />
            <Property name="Mirrored" value="False" />
            <Property name="Active" value="True" />
            <Property name="Has30HzFrames" value="False" />
            <Property name="GameData" value="TkAnimationGameData.xml">
              <Property name="RootMotion" value="None" />
              <Property name="BlockPlayerMovement" value="False" />
              <Property name="BlockPlayerWeapon" value="Unblocked" />
            </Property>
          </Property>
]]

                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Template", "GcPlayerEffectsComponentData.xml"},
                            ["SECTION_UP"] = 1,
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] =
[[
    <Property value="LinkableNMSTemplate.xml">
      <Property name="Template" value="GcTriggerActionComponentData.xml">
        <Property name="HideModel" value="False" />
        <Property name="StartInactive" value="False" />
        <Property name="States">
          <Property value="GcActionTriggerState.xml">
            <Property name="StateID" value="BOOT" />
            <Property name="Triggers">
              <Property value="GcActionTrigger.xml">
                <Property name="Event" value="GcStateTimeEvent.xml">
                  <Property name="Seconds" value="0" />
                  <Property name="RandomSeconds" value="0" />
                </Property>
                <Property name="Action">
                  <Property value="GcGoToStateAction.xml">
                    <Property name="State" value="WAIT_FOR_ACTION" />
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
                <Property name="Event" value="GcStateTimeEvent.xml">
                  <Property name="Seconds" value="0" />
                  <Property name="RandomSeconds" value="0" />
                </Property>
                <Property name="Action">
                  <Property value="GcRewardAction.xml">
                    <Property name="Reward" value="]] .. REWARD_ID .. [[" />
                  </Property>
                  <Property value="GcGoToStateAction.xml">
                    <Property name="State" value="WAIT_FOR_ACTION" />
                    <Property name="Broadcast" value="False" />
                    <Property name="BroadcastLevel" value="Local" />
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
          <Property value="GcActionTriggerState.xml">
            <Property name="StateID" value="WAIT_FOR_ACTION" />
            <Property name="Triggers">
              <Property value="GcActionTrigger.xml">
                <Property name="Event" value="GcAnimFrameEvent.xml">
                  <Property name="Anim" value="TRIGGERANIM" />
                  <Property name="FrameStart" value="0" />
                  <Property name="StartFromEnd" value="False" />
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
      <Property name="Linked" value="" />
    </Property>
]]
                        }
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\UI\EMOTEMENU.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Emotes"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["ADD"] =
[[
    <Property value="GcPlayerEmote.xml">
      <Property name="Title" value="]] .. REWARD_TITLE .. [[" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="False" />
      <Property name="EmoteID" value="TRIGGERANIM" />
      <Property name="AnimationName" value="TRIGGERANIM" />
      <Property name="PropData" value="GcPlayerEmotePropData.xml">
        <Property name="Model" value="" />
        <Property name="Scale" value="0" />
        <Property name="Hand" value="GcHand.xml">
          <Property name="Hand" value="Right" />
        </Property>
        <Property name="IsHologram" value="False" />
        <Property name="ScanEffectNodeName" value="" />
        <Property name="ScanEffect" value="GcScanEffectData.xml">
          <Property name="Id" value="" />
          <Property name="ScanEffectType" value="Building" />
          <Property name="Colour" value="Colour.xml">
            <Property name="R" value="0.823" />
            <Property name="G" value="0.475" />
            <Property name="B" value="0.432" />
            <Property name="A" value="1" />
          </Property>
          <Property name="BasecolourIntensity" value="0.2" />
          <Property name="ScanlinesSeparation" value="0.1" />
          <Property name="FresnelIntensity" value="3" />
          <Property name="GlowIntensity" value="0" />
          <Property name="WaveOffset" value="0" />
          <Property name="WaveActive" value="True" />
          <Property name="FixedUpAxis" value="False" />
          <Property name="Transparent" value="False" />
          <Property name="ModelFade" value="False" />
          <Property name="FadeInTime" value="0.2" />
          <Property name="FadeOutTime" value="0.2" />
        </Property>
        <Property name="DelayTime" value="0" />
      </Property>
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="]] .. REWARD_ICON .. [[" />
        <Property name="ResHandle" value="GcResource.xml">
          <Property name="ResourceID" value="0" />
        </Property>
      </Property>
      <Property name="LinkedSpecialID" value="" />
      <Property name="NeverShowInMenu" value="False" />
      <Property name="LoopAnimUntilMove" value="" />
      <Property name="CloseMenuOnSelect" value="False" />
      <Property name="MoveToCancel" value="False" />
      <Property name="GekAnimationName" value="" />
      <Property name="GekLoopAnimUntilMove" value="" />
      <Property name="AvailableUnderwater" value="False" />
      <Property name="RidingAnimationName" value="TRIGGERANIM" />
      <Property name="IsPetCommand" value="False" />
      <Property name="PetCommandTitle" value="" />
      <Property name="PetCommandIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
        <Property name="ResHandle" value="GcResource.xml">
          <Property name="ResourceID" value="0" />
        </Property>
      </Property>
      <Property name="IconResource" value="GcResource.xml">
        <Property name="ResourceID" value="0" />
      </Property>
      <Property name="IconPetCommandResource" value="GcResource.xml">
        <Property name="ResourceID" value="0" />
      </Property>
    </Property>
    <Property value="GcPlayerEmote.xml">
      <Property name="Title" value="]] .. REWARD_TITLE .. [[" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="False" />
      <Property name="EmoteID" value="TRIGGERANIMW" />
      <Property name="AnimationName" value="TRIGGERANIM" />
      <Property name="PropData" value="GcPlayerEmotePropData.xml">
        <Property name="Model" value="" />
        <Property name="Scale" value="0" />
        <Property name="Hand" value="GcHand.xml">
          <Property name="Hand" value="Right" />
        </Property>
        <Property name="IsHologram" value="False" />
        <Property name="ScanEffectNodeName" value="" />
        <Property name="ScanEffect" value="GcScanEffectData.xml">
          <Property name="Id" value="" />
          <Property name="ScanEffectType" value="Building" />
          <Property name="Colour" value="Colour.xml">
            <Property name="R" value="0.823" />
            <Property name="G" value="0.475" />
            <Property name="B" value="0.432" />
            <Property name="A" value="1" />
          </Property>
          <Property name="BasecolourIntensity" value="0.2" />
          <Property name="ScanlinesSeparation" value="0.1" />
          <Property name="FresnelIntensity" value="3" />
          <Property name="GlowIntensity" value="0" />
          <Property name="WaveOffset" value="0" />
          <Property name="WaveActive" value="True" />
          <Property name="FixedUpAxis" value="False" />
          <Property name="Transparent" value="False" />
          <Property name="ModelFade" value="False" />
          <Property name="FadeInTime" value="0.2" />
          <Property name="FadeOutTime" value="0.2" />
        </Property>
        <Property name="DelayTime" value="0" />
      </Property>
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="]] .. REWARD_ICON .. [[" />
        <Property name="ResHandle" value="GcResource.xml">
          <Property name="ResourceID" value="0" />
        </Property>
      </Property>
      <Property name="LinkedSpecialID" value="" />
      <Property name="NeverShowInMenu" value="False" />
      <Property name="LoopAnimUntilMove" value="" />
      <Property name="CloseMenuOnSelect" value="False" />
      <Property name="MoveToCancel" value="False" />
      <Property name="GekAnimationName" value="" />
      <Property name="GekLoopAnimUntilMove" value="" />
      <Property name="AvailableUnderwater" value="True" />
      <Property name="RidingAnimationName" value="TRIGGERANIM" />
      <Property name="IsPetCommand" value="False" />
      <Property name="PetCommandTitle" value="" />
      <Property name="PetCommandIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
        <Property name="ResHandle" value="GcResource.xml">
          <Property name="ResourceID" value="0" />
        </Property>
      </Property>
      <Property name="IconResource" value="GcResource.xml">
        <Property name="ResourceID" value="0" />
      </Property>
      <Property name="IconPetCommandResource" value="GcResource.xml">
        <Property name="ResourceID" value="0" />
      </Property>
    </Property>
]]
                        }
                    }
                },
            }
        }
    },
["ADD_FILES"] =
    {
        {
            ["FILE_DESTINATION"] = "MODELS\TESTS\EFFECTTEST.ANIM.EXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkAnimMetadata">
  <Property name="NodeData">
    <Property value="TkAnimNodeData.xml">
      <Property name="Node" value="AnimatedTrans" />
      <Property name="RotIndex" value="0" />
      <Property name="TransIndex" value="0" />
      <Property name="ScaleIndex" value="0" />
    </Property>
  </Property>
  <Property name="AnimFrameData">
    <Property value="TkAnimNodeFrameData.xml">
      <Property name="Rotations" />
      <Property name="Translations" />
      <Property name="Scales" />
    </Property>
    <Property value="TkAnimNodeFrameData.xml">
      <Property name="Rotations" />
      <Property name="Translations" />
      <Property name="Scales" />
    </Property>
    <Property value="TkAnimNodeFrameData.xml">
      <Property name="Rotations" />
      <Property name="Translations" />
      <Property name="Scales" />
    </Property>
  </Property>
  <Property name="StillFrameData" value="TkAnimNodeFrameData.xml">
    <Property name="Rotations">
      <Property value="Quaternion.xml">
        <Property name="x" value="0" />
        <Property name="y" value="0" />
        <Property name="z" value="0" />
        <Property name="w" value="1" />
        <Property name="dropComponent" value="3" />
      </Property>
    </Property>
    <Property name="Translations">
      <Property value="Vector4f.xml">
        <Property name="x" value="-0.73121876" />
        <Property name="y" value="0.08333181" />
        <Property name="z" value="-0.02858855" />
        <Property name="t" value="1" />
      </Property>
    </Property>
    <Property name="Scales">
      <Property value="Vector4f.xml">
        <Property name="x" value="1" />
        <Property name="y" value="1" />
        <Property name="z" value="1" />
        <Property name="t" value="1" />
      </Property>
    </Property>
  </Property>
  <Property name="FrameCount" value="10" />
  <Property name="NodeCount" value="0" />
  <Property name="Has30HzFrames" value="False" />
</Data>
]]
        },
    }
}
