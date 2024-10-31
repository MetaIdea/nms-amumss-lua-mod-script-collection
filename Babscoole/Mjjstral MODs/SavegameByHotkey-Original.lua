NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "z-SavegameByHotkey-Org.pak",
["MOD_AUTHOR"]      = "Mjjstral & Babscoole",
["MOD_DESCRIPTION"] = "Enable hotkey saving (quick action emote menu)",
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
                            ["SPECIAL_KEY_WORDS"] = {"Anim", "0H_TURN_L"},
                            ["SEC_SAVE_TO"] = "ADD_ANIM",
                        },
                        {
                            ["SEC_EDIT"] = "ADD_ANIM",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Anim",     "SAVEGAME"},
                                {"Filename", "MODELS/TESTS/EFFECTTEST.ANIM.MBIN"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Anim", "0H_GREET_MOB_04"},
                            ["SECTION_ACTIVE"] = {2},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["SEC_ADD_NAMED"] = "ADD_ANIM",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Template", "GcPlayerEffectsComponentData.xml"},
                            ["SECTION_UP"] = 1,
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] =
[[
    <Property value="LinkableNMSTemplate.xml">
      <Property name="Template" value="GcSimpleInteractionComponentData.xml">
        <Property name="SimpleInteractionType" value="Save" />
        <Property name="InteractDistance" value="0" />
        <Property name="Use2dInteractDistance" value="False" />
        <Property name="Id" value="" />
        <Property name="Rarity" value="GcRarity.xml">
          <Property name="Rarity" value="Common" />
        </Property>
        <Property name="Size" value="GcSizeIndicator.xml">
          <Property name="SizeIndicator" value="Medium" />
        </Property>
        <Property name="TriggerAction" value="INACTIVE" />
        <Property name="TriggerActionOnPrepare" value="" />
        <Property name="TriggerActionToggle" value="" />
        <Property name="BroadcastTriggerAction" value="False" />
        <Property name="Delay" value="0" />
        <Property name="HideContents" value="True" />
        <Property name="InteractIsCrime" value="False" />
        <Property name="InteractFiendCrimeType" value="GcFiendCrime.xml">
          <Property name="FiendCrime" value="None" />
        </Property>
        <Property name="InteractFiendCrimeChance" value="1" />
        <Property name="InteractCrimeLevel" value="0" />
        <Property name="IncreaseCorruptSentinelWanted" value="0" />
        <Property name="NotifyEncounter" value="False" />
        <Property name="ActivationCost" value="GcInteractionActivationCost.xml">
          <Property name="SubstanceId" value="" />
          <Property name="AltIds" />
          <Property name="Cost" value="0" />
          <Property name="Repeat" value="False" />
          <Property name="RequiredTech" value="" />
          <Property name="UseCostID" value="" />
          <Property name="StartMissionOnCantAfford" value="" />
          <Property name="OnlyChargeDuringSeasons" />
        </Property>
        <Property name="StatToTrack" value="GcStatsEnum.xml">
          <Property name="StatEnum" value="None" />
        </Property>
        <Property name="StartsBuried" value="False" />
        <Property name="MustBeVisibleToInteract" value="False" />
        <Property name="NeedsStorm" value="False" />
        <Property name="Name" value="" />
        <Property name="VRInteractMessage" value="" />
        <Property name="TerminalHeading" value="" />
        <Property name="TerminalMessage" value="" />
        <Property name="ScanType" value="" />
        <Property name="ScanData" value="" />
        <Property name="ScanIcon" value="">
          <Property name="DiscoveryType" value="Unknown" />
        </Property>
        <Property name="ActivateLocatorsFromRarity" value="False" />
        <Property name="RarityLocators">
          <Property name="Common" value="NMSString0x10.xml">
            <Property name="Value" value="" />
          </Property>
          <Property name="Uncommon" value="NMSString0x10.xml">
            <Property name="Value" value="" />
          </Property>
          <Property name="Rare" value="NMSString0x10.xml">
            <Property name="Value" value="" />
          </Property>
        </Property>
        <Property name="BaseBuildingTriggerActions" />
        <Property name="RewardOverrideTable" />
        <Property name="PersistencyBufferOverride" />
        <Property name="UsePersonalPersistentBuffer" value="False" />
        <Property name="ReseedOnRewardSuccess" value="False" />
        <Property name="CanCollectInMech" value="False" />
      </Property>
      <Property name="Linked" value="" />
    </Property>
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
                  <Property name="UseMissionClock" value="False" />
                </Property>
                <Property name="Action">
                  <Property value="GcGoToStateAction.xml">
                    <Property name="State" value="WAIT_FOR_SAVE" />
                    <Property name="Broadcast" value="False" />
                    <Property name="BroadcastLevel" value="GcBroadcastLevel.xml">
                      <Property name="BroadcastLevel" value="Local" />
                    </Property>
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
          <Property value="GcActionTriggerState.xml">
            <Property name="StateID" value="SAVE" />
            <Property name="Triggers">
              <Property value="GcActionTrigger.xml">
                <Property name="Event" value="GcStateTimeEvent.xml">
                  <Property name="Seconds" value="0" />
                  <Property name="RandomSeconds" value="0" />
                  <Property name="UseMissionClock" value="False" />
                </Property>
                <Property name="Action">
                  <Property value="GcPlayAudioAction.xml">
                    <Property name="Sound" value="SignalScanner" />
                    <Property name="UseOcclusion" value="False" />
                    <Property name="OcclusionRadius" value="2" />
                  </Property>
                  <Property value="GcFireSimpleInteractionAction.xml" />
                  <Property value="GcGoToStateAction.xml">
                    <Property name="State" value="WAIT_FOR_SAVE" />
                    <Property name="Broadcast" value="False" />
                    <Property name="BroadcastLevel" value="GcBroadcastLevel.xml">
                      <Property name="BroadcastLevel" value="Local" />
                    </Property>
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
          <Property value="GcActionTriggerState.xml">
            <Property name="StateID" value="WAIT_FOR_SAVE" />
            <Property name="Triggers">
              <Property value="GcActionTrigger.xml">
                <Property name="Event" value="GcAnimFrameEvent.xml">
                  <Property name="Anim" value="SAVEGAME" />
                  <Property name="FrameStart" value="0" />
                  <Property name="StartFromEnd" value="False" />
                </Property>
                <Property name="Action">
                  <Property value="GcGoToStateAction.xml">
                    <Property name="State" value="SAVE" />
                    <Property name="Broadcast" value="False" />
                    <Property name="BroadcastLevel" value="GcBroadcastLevel.xml">
                      <Property name="BroadcastLevel" value="Local" />
                    </Property>
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
                            ["SPECIAL_KEY_WORDS"] = {"Title", "EMOTE_WAVE"},
                            ["SEC_SAVE_TO"] = "ADD_EMOTE",
                        },
                        {
                            ["SEC_EDIT"] = "ADD_EMOTE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Title",               "Save"},
                                {"ChatText",            ""},
                                {"ChatUsesPrefix",      "False"},
                                {"EmoteID",             "SAVEGAME"},
                                {"AnimationName",       "SAVEGAME"},
                                {"Filename",            "TEXTURES/UI/HUD/ICONS/PLAYER/SAVE.DDS"},
                                {"MoveToCancel",        "True"},
                                {"RidingAnimationName", "SAVEGAME"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Emotes"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["SEC_ADD_NAMED"] = "ADD_EMOTE",
                        },
                        {
                            ["SEC_EDIT"] = "ADD_EMOTE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"EmoteID",             "SAVEGAMEW"},
                                {"AvailableUnderwater", "True"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Emotes"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["SEC_ADD_NAMED"] = "ADD_EMOTE",
                        },
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