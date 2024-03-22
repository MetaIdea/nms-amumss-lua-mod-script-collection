NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "z-SavegameByHotkey-Org.pak",
["MOD_AUTHOR"]      = "Mjjstral",
["MOD_MAINTENANCE"] = "Babscoole",
["MOD_DESCRIPTION"] = "Enable hotkey saving (quick action emote menu)",
["NMS_VERSION"]     = "4.52",
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
                            ["PRECEDING_KEY_WORDS"] = {"GcPlayerEffectsComponentData.xml"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] =
[[
    <Property value="GcSimpleInteractionComponentData.xml">
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
    <Property value="GcTriggerActionComponentData.xml">
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
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\TESTS\EFFECTTEST.ANIM.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FrameCount", "10"},
                                {"NodeCount",  "0"},
                            }
                        },
                    }
                },
            }
        }
    }
}