NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Savegame By Hotkey",
["MOD_AUTHOR"]      = "Mjjstral and Babscoole",
["MOD_DESCRIPTION"] = "Enable hotkey saving (quick action emote menu)",
["NMS_VERSION"]     = "6.00",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\PLAYER\PLAYERCHARACTER\PLAYERCHARACTER\ENTITIES\PLAYERCHARACTER.ENTITY.MBIN",
                    ["MXML_CHANGE_TABLE"] =
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
                            ["SPECIAL_KEY_WORDS"] = {"Components", "TkAnimationComponentData"},
                            ["PRECEDING_KEY_WORDS"] = {"Anims"},
                            ["SEC_ADD_NAMED"] = "ADD_ANIM",
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Components"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["ADD"] =
[[
    <Property name="Components" value="GcTriggerActionComponentData">
      <Property name="GcTriggerActionComponentData">
        <Property name="HideModel" value="false" />
        <Property name="StartInactive" value="false" />
        <Property name="States">
          <Property name="States" value="GcActionTriggerState">
            <Property name="StateID" value="BOOT" />
            <Property name="Triggers">
              <Property name="Triggers" value="GcActionTrigger">
                <Property name="Event" value="GcAnimFrameEvent">
                  <Property name="GcAnimFrameEvent">
                    <Property name="Anim" value="SAVEGAME" />
                    <Property name="FrameStart" value="0" />
                    <Property name="StartFromEnd" value="false" />
                  </Property>
                </Property>
                <Property name="Action">
                  <Property name="Action" value="GcGoToStateAction">
                    <Property name="GcGoToStateAction">
                      <Property name="State" value="SAVE" />
                      <Property name="Broadcast" value="true" />
                      <Property name="BroadcastLevel" value="GcBroadcastLevel">
                        <Property name="BroadcastLevel" value="Scene" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property name="Persistent" value="false" />
        <Property name="PersistentState" value="" />
        <Property name="ResetShotTimeOnStateChange" value="false" />
        <Property name="LinkStateToBaseGrid" value="false" />
      </Property>
    </Property>
]]
                        }
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\UI\EMOTEMENU.MBIN",
                    ["MXML_CHANGE_TABLE"] =
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
                                {"ChatUsesPrefix",      "false"},
                                {"EmoteID",             "SAVEGAME"},
                                {"AnimationName",       "SAVEGAME"},
                                {"Filename",            "TEXTURES/UI/HUD/ICONS/PLAYER/SAVE.DDS"},
                                {"MoveToCancel",        "true"},
                                {"RidingAnimationName", "SAVEGAME"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Emotes"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["SEC_ADD_NAMED"] = "ADD_EMOTE",
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\PLAYER\PLAYERCHARACTER\PLAYERCHARACTER.SCENE.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "MODELS\COMMON\PLAYER\PLAYERCHARACTER\PLAYERCHARACTER|collisionCapsule"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] =
[[
        <Property name="Children" value="TkSceneNodeData">
          <Property name="Name" value="REFSaveData" />
          <Property name="NameHash" value="96205072" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="0.000000" />
            <Property name="TransY" value="0.000000" />
            <Property name="TransZ" value="0.000000" />
            <Property name="RotX" value="0.000000" />
            <Property name="RotY" value="0.000000" />
            <Property name="RotZ" value="0.000000" />
            <Property name="ScaleX" value="1.000000" />
            <Property name="ScaleY" value="1.000000" />
            <Property name="ScaleZ" value="1.000000" />
          </Property>
          <Property name="PlatformExclusion" value="0" />
          <Property name="Attributes">
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="ATTACHMENT" />
              <Property name="Value" value="MODELS\COMMON\PLAYER\PLAYERCHARACTER\CUSTOM\SAVE\ENTITIES\SAVE.ENTITY.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
]]
                        },
                    }
                },
            }
        }
    },
["ADD_FILES"] =
    {
        {
            ["FILE_DESTINATION"] = "MODELS\COMMON\PLAYER\PLAYERCHARACTER\CUSTOM\SAVE\ENTITIES\SAVE.ENTITY.MXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkAttachmentData">
  <Property name="AdditionalData" />
  <Property name="Components">
    <Property name="Components" value="GcSimpleInteractionComponentData">
      <Property name="GcSimpleInteractionComponentData">
        <Property name="SimpleInteractionType" value="Save" />
        <Property name="InteractDistance" value="0.000000" />
        <Property name="Use2dInteractDistance" value="false" />
        <Property name="Id" value="" />
        <Property name="Rarity" value="GcRarity">
          <Property name="Rarity" value="Common" />
        </Property>
        <Property name="Size" value="GcSizeIndicator">
          <Property name="SizeIndicator" value="Medium" />
        </Property>
        <Property name="TriggerAction" value="INACTIVE" />
        <Property name="TriggerActionOnPrepare" value="" />
        <Property name="TriggerActionToggle" value="" />
        <Property name="DeactivateSimilarInteractionsNearbyRadius" value="0.000000" />
        <Property name="BroadcastTriggerAction" value="false" />
        <Property name="Delay" value="0.000000" />
        <Property name="HideContents" value="true" />
        <Property name="InteractIsCrime" value="false" />
        <Property name="InteractFiendCrimeType" value="GcFiendCrime">
          <Property name="FiendCrime" value="None" />
        </Property>
        <Property name="InteractFiendCrimeChance" value="1.000000" />
        <Property name="InteractCrimeLevel" value="0" />
        <Property name="IncreaseCorruptSentinelWanted" value="0" />
        <Property name="NotifyEncounter" value="false" />
        <Property name="ActivationCost" value="GcInteractionActivationCost">
          <Property name="SubstanceId" value="" />
          <Property name="AltIds" />
          <Property name="Cost" value="0" />
          <Property name="Repeat" value="false" />
          <Property name="RequiredTech" value="" />
          <Property name="UseCostID" value="" />
          <Property name="StartMissionOnCantAfford" value="" />
          <Property name="OnlyChargeDuringSeasons" />
        </Property>
        <Property name="StatToTrack" value="GcStatsEnum">
          <Property name="StatEnum" value="None" />
        </Property>
        <Property name="StartsBuried" value="false" />
        <Property name="MustBeVisibleToInteract" value="false" />
        <Property name="NeedsStorm" value="false" />
        <Property name="Name" value="" />
        <Property name="ForceSubtitle" value="" />
        <Property name="VRInteractMessage" value="" />
        <Property name="TerminalHeading" value="" />
        <Property name="TerminalMessage" value="" />
        <Property name="ScanType" value="" />
        <Property name="ScanData" value="" />
        <Property name="ScanIcon" value="">
          <Property name="DiscoveryType" value="Unknown" />
        </Property>
        <Property name="ActivateLocatorsFromRarity" value="false" />
        <Property name="RarityLocators">
          <Property name="Common" value="" />
          <Property name="Uncommon" value="" />
          <Property name="Rare" value="" />
        </Property>
        <Property name="BaseBuildingTriggerActions" />
        <Property name="RewardOverrideTable" />
        <Property name="PersistencyBufferOverride" />
        <Property name="UsePersonalPersistentBuffer" value="false" />
        <Property name="ReseedOnRewardSuccess" value="false" />
        <Property name="CanCollectInMech" value="false" />
      </Property>
    </Property>
    <Property name="Components" value="GcTriggerActionComponentData">
      <Property name="GcTriggerActionComponentData">
        <Property name="HideModel" value="false" />
        <Property name="StartInactive" value="false" />
        <Property name="States">
          <Property name="States" value="GcActionTriggerState">
            <Property name="StateID" value="BOOT" />
            <Property name="Triggers">
              <Property name="Triggers" value="GcActionTrigger">
                <Property name="Event" value="GcStateTimeEvent">
                  <Property name="GcStateTimeEvent">
                    <Property name="Seconds" value="0.000000" />
                    <Property name="RandomSeconds" value="0.000000" />
                    <Property name="UseMissionClock" value="false" />
                  </Property>
                </Property>
                <Property name="Action">
                  <Property name="Action" value="GcGoToStateAction">
                    <Property name="GcGoToStateAction">
                      <Property name="State" value="WAIT_FOR_SAVE" />
                      <Property name="Broadcast" value="false" />
                      <Property name="BroadcastLevel" value="GcBroadcastLevel">
                        <Property name="BroadcastLevel" value="Local" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
          <Property name="States" value="GcActionTriggerState">
            <Property name="StateID" value="SAVE" />
            <Property name="Triggers">
              <Property name="Triggers" value="GcActionTrigger">
                <Property name="Event" value="GcStateTimeEvent">
                  <Property name="GcStateTimeEvent">
                    <Property name="Seconds" value="0.000000" />
                    <Property name="RandomSeconds" value="0.000000" />
                    <Property name="UseMissionClock" value="false" />
                  </Property>
                </Property>
                <Property name="Action">
                  <Property name="Action" value="GcPlayAudioAction">
                    <Property name="GcPlayAudioAction">
                      <Property name="Sound" value="SignalScanner" />
                      <Property name="UseOcclusion" value="false" />
                      <Property name="OcclusionRadius" value="2.000000" />
                    </Property>
                  </Property>
                  <Property name="Action" value="GcFireSimpleInteractionAction">
                    <Property name="GcFireSimpleInteractionAction" />
                  </Property>
                  <Property name="Action" value="GcGoToStateAction">
                    <Property name="GcGoToStateAction">
                      <Property name="State" value="WAIT_FOR_SAVE" />
                      <Property name="Broadcast" value="false" />
                      <Property name="BroadcastLevel" value="GcBroadcastLevel">
                        <Property name="BroadcastLevel" value="Local" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
          <Property name="States" value="GcActionTriggerState">
            <Property name="StateID" value="WAIT_FOR_SAVE" />
            <Property name="Triggers">
              <Property name="Triggers" value="GcActionTrigger">
                <Property name="Event" value="GcAnimFrameEvent">
                  <Property name="GcAnimFrameEvent">
                    <Property name="Anim" value="SAVEGAME" />
                    <Property name="FrameStart" value="0" />
                    <Property name="StartFromEnd" value="false" />
                  </Property>
                </Property>
                <Property name="Action">
                  <Property name="Action" value="GcGoToStateAction">
                    <Property name="GcGoToStateAction">
                      <Property name="State" value="SAVE" />
                      <Property name="Broadcast" value="false" />
                      <Property name="BroadcastLevel" value="GcBroadcastLevel">
                        <Property name="BroadcastLevel" value="Local" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property name="Persistent" value="false" />
        <Property name="PersistentState" value="" />
        <Property name="ResetShotTimeOnStateChange" value="false" />
        <Property name="LinkStateToBaseGrid" value="false" />
      </Property>
    </Property>
  </Property>
  <Property name="LodDistances">
    <Property value="0" />
    <Property value="50" />
    <Property value="80" />
    <Property value="150" />
    <Property value="500" />
  </Property>
</Data>
]]
        },
        {
            ["FILE_DESTINATION"] = "MODELS\TESTS\EFFECTTEST.ANIM.MXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkAnimMetadata">
  <Property name="NodeData">
    <Property name="NodeData" value="TkAnimNodeData">
      <Property name="Node" value="AnimatedTrans" />
      <Property name="RotIndex" value="0" />
      <Property name="TransIndex" value="0" />
      <Property name="ScaleIndex" value="0" />
    </Property>
  </Property>
  <Property name="AnimFrameData">
    <Property name="AnimFrameData" value="TkAnimNodeFrameData">
      <Property name="Rotations" />
      <Property name="Translations" />
      <Property name="Scales" />
    </Property>
    <Property name="AnimFrameData" value="TkAnimNodeFrameData">
      <Property name="Rotations" />
      <Property name="Translations" />
      <Property name="Scales" />
    </Property>
    <Property name="AnimFrameData" value="TkAnimNodeFrameData">
      <Property name="Rotations" />
      <Property name="Translations" />
      <Property name="Scales" />
    </Property>
  </Property>
  <Property name="StillFrameData" value="TkAnimNodeFrameData">
    <Property name="Rotations">
      <Property name="Rotations" value="Quaternion">
        <Property name="X" value="0" />
        <Property name="Y" value="0" />
        <Property name="Z" value="0" />
        <Property name="W" value="1" />
        <Property name="dropComponent" value="3" />
      </Property>
    </Property>
    <Property name="Translations">
      <Property name="Translations">
        <Property name="X" value="-0.73121876" />
        <Property name="Y" value="0.08333181" />
        <Property name="Z" value="-0.02858855" />
      </Property>
    </Property>
    <Property name="Scales">
      <Property name="Scales">
        <Property name="X" value="1.000000" />
        <Property name="Y" value="1.000000" />
        <Property name="Z" value="1.000000" />
      </Property>
    </Property>
  </Property>
  <Property name="FrameCount" value="10" />
  <Property name="NodeCount" value="0" />
  <Property name="Has30HzFrames" value="false" />
</Data>
]]
        },
        {
            ["FILE_DESTINATION"] = "LocTable.MXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>
<Data template="TkLocalisationTable">
  <Property name="Table">
    <Property value="TkLocalisationEntry">
      <Property name="Id" value="Save" />
      <Property name="English" value="Save" />
      <Property name="French" value="Save" />
      <Property name="Italian" value="Save" />
      <Property name="German" value="Save" />
      <Property name="Spanish" value="Save" />
      <Property name="Russian" value="Save" />
      <Property name="Polish" value="Save" />
      <Property name="Dutch" value="Save" />
      <Property name="Portuguese" value="Save" />
      <Property name="LatinAmericanSpanish" value="Save" />
      <Property name="BrazilianPortuguese" value="Save" />
      <Property name="SimplifiedChinese" value="Save" />
      <Property name="TraditionalChinese" value="Save" />
      <Property name="TencentChinese" value="Save" />
      <Property name="Korean" value="Save" />
      <Property name="Japanese" value="Save" />
      <Property name="USEnglish" value="Save" />
    </Property>
    <Property value="TkLocalisationEntry">
      <Property name="Id" value="SAVEGAME" />
      <Property name="English" value="SAVEGAME" />
      <Property name="French" value="SAVEGAME" />
      <Property name="Italian" value="SAVEGAME" />
      <Property name="German" value="SAVEGAME" />
      <Property name="Spanish" value="SAVEGAME" />
      <Property name="Russian" value="SAVEGAME" />
      <Property name="Polish" value="SAVEGAME" />
      <Property name="Dutch" value="SAVEGAME" />
      <Property name="Portuguese" value="SAVEGAME" />
      <Property name="LatinAmericanSpanish" value="SAVEGAME" />
      <Property name="BrazilianPortuguese" value="SAVEGAME" />
      <Property name="SimplifiedChinese" value="SAVEGAME" />
      <Property name="TraditionalChinese" value="SAVEGAME" />
      <Property name="TencentChinese" value="SAVEGAME" />
      <Property name="Korean" value="SAVEGAME" />
      <Property name="Japanese" value="SAVEGAME" />
      <Property name="USEnglish" value="SAVEGAME" />
    </Property>
  </Property>
</Data>
]]
        },
    }
}