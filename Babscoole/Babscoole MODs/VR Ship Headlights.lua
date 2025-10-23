--POSSIBLE DUAL COMBOS:
--"HND_CTRL_CPIT_R", "HND_CPIT_EJCT_L"
--"HND_CTRL_CPIT_L", "HND_CPIT_EJCT_R"
--"HND_CPIT_EJCT_L", "HND_CPIT_EJCT_R"

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "VR Ship Headlights",
["MOD_AUTHOR"]      = "Mjjstral",
["NMS_VERSION"]     = "6.10",
["MOD_DESCRIPTION"] = "Activate: Hold the right ship control lever and grab the left exit handle, Disable: Grab the left or right exit handle",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\PLAYER\PLAYERCHARACTER\PLAYERCHARACTER.SCENE.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "_PlayerCharacter_Mesh"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] =
[[
    <Property name="Children" value="TkSceneNodeData">
      <Property name="Name" value="HEADLIGHTS" />
      <Property name="NameHash" value="2058273975" />
      <Property name="Type" value="LIGHT" />
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
          <Property name="Name" value="FOV" />
          <Property name="Value" value="100.000000" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData">
          <Property name="Name" value="FALLOFF" />
          <Property name="Value" value="linear" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData">
          <Property name="Name" value="FALLOFF_RATE" />
          <Property name="Value" value="2.000000" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData">
          <Property name="Name" value="INTENSITY" />
          <Property name="Value" value="250000.000000" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData">
          <Property name="Name" value="COL_R" />
          <Property name="Value" value="1.000000" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData">
          <Property name="Name" value="COL_G" />
          <Property name="Value" value="0.640000" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData">
          <Property name="Name" value="COL_B" />
          <Property name="Value" value="0.360000" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData">
          <Property name="Name" value="COOKIE_IDX" />
          <Property name="Value" value="-1" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData">
          <Property name="Name" value="VOLUMETRIC" />
          <Property name="Value" value="0.000000" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData">
          <Property name="Name" value="LIGHTLAYERS" />
          <Property name="Value" value="3" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData">
          <Property name="Name" value="MATERIAL" />
          <Property name="Value" value="MATERIALS/LIGHT.MATERIAL.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
]]
                        }
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\PLAYER\PLAYERCHARACTER\PLAYERCHARACTER\ENTITIES\PLAYERCHARACTER.ENTITY.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Components"},
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
                      <Property name="State" value="DISABLE_LIGHT" />
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
            <Property name="StateID" value="BASE_STATE" />
            <Property name="Triggers">
              <Property name="Triggers" value="GcActionTrigger">
                <Property name="Event" value="GcAnimFrameEvent">
                  <Property name="GcAnimFrameEvent">
                    <Property name="Anim" value="HND_CTRL_CPIT_R" />
                    <Property name="FrameStart" value="0" />
                    <Property name="StartFromEnd" value="false" />
                  </Property>
                </Property>
                <Property name="Action">
                  <Property name="Action" value="GcGoToStateAction">
                    <Property name="GcGoToStateAction">
                      <Property name="State" value="HND_CTRL_CPIT_R" />
                      <Property name="Broadcast" value="false" />
                      <Property name="BroadcastLevel" value="GcBroadcastLevel">
                        <Property name="BroadcastLevel" value="Local" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
              <Property name="Triggers" value="GcActionTrigger">
                <Property name="Event" value="GcAnimFrameEvent">
                  <Property name="GcAnimFrameEvent">
                    <Property name="Anim" value="HND_CPIT_EJCT_L" />
                    <Property name="FrameStart" value="0" />
                    <Property name="StartFromEnd" value="false" />
                  </Property>
                </Property>
                <Property name="Action">
                  <Property name="Action" value="GcGoToStateAction">
                    <Property name="GcGoToStateAction">
                      <Property name="State" value="DISABLE_LIGHT" />
                      <Property name="Broadcast" value="false" />
                      <Property name="BroadcastLevel" value="GcBroadcastLevel">
                        <Property name="BroadcastLevel" value="Local" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
              <Property name="Triggers" value="GcActionTrigger">
                <Property name="Event" value="GcAnimFrameEvent">
                  <Property name="GcAnimFrameEvent">
                    <Property name="Anim" value="HND_CPIT_EJCT_R" />
                    <Property name="FrameStart" value="0" />
                    <Property name="StartFromEnd" value="false" />
                  </Property>
                </Property>
                <Property name="Action">
                  <Property name="Action" value="GcGoToStateAction">
                    <Property name="GcGoToStateAction">
                      <Property name="State" value="DISABLE_LIGHT" />
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
            <Property name="StateID" value="HND_CTRL_CPIT_R" />
            <Property name="Triggers">
              <Property name="Triggers" value="GcActionTrigger">
                <Property name="Event" value="GcAnimFrameEvent">
                  <Property name="GcAnimFrameEvent">
                    <Property name="Anim" value="HND_CPIT_EJCT_L" />
                    <Property name="FrameStart" value="0" />
                    <Property name="StartFromEnd" value="false" />
                  </Property>
                </Property>
                <Property name="Action">
                  <Property name="Action" value="GcGoToStateAction">
                    <Property name="GcGoToStateAction">
                      <Property name="State" value="ENABLE_LIGHT" />
                      <Property name="Broadcast" value="false" />
                      <Property name="BroadcastLevel" value="GcBroadcastLevel">
                        <Property name="BroadcastLevel" value="Local" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
              <Property name="Triggers" value="GcActionTrigger">
                <Property name="Event" value="GcStateTimeEvent">
                  <Property name="GcStateTimeEvent">
                    <Property name="Seconds" value="1.000000" />
                    <Property name="RandomSeconds" value="0.000000" />
                    <Property name="UseMissionClock" value="false" />
                  </Property>
                </Property>
                <Property name="Action">
                  <Property name="Action" value="GcGoToStateAction">
                    <Property name="GcGoToStateAction">
                      <Property name="State" value="BASE_STATE" />
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
            <Property name="StateID" value="DISABLE_LIGHT" />
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
                  <Property name="Action" value="GcNodeActivationAction">
                    <Property name="GcNodeActivationAction">
                      <Property name="NodeActiveState" value="Deactivate" />
                      <Property name="Name" value="HEADLIGHTS" />
                      <Property name="SceneToAdd" value="" />
                      <Property name="IncludePhysics" value="false" />
                      <Property name="IncludeChildPhysics" value="false" />
                      <Property name="NotifyNPC" value="false" />
                      <Property name="UseMasterModel" value="true" />
                      <Property name="UseLocalNode" value="false" />
                      <Property name="RestartEmitters" value="false" />
                      <Property name="AffectModels" value="false" />
                    </Property>
                  </Property>
                  <Property name="Action" value="GcGoToStateAction">
                    <Property name="GcGoToStateAction">
                      <Property name="State" value="BASE_STATE" />
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
            <Property name="StateID" value="ENABLE_LIGHT" />
            <Property name="Triggers">
              <Property name="Triggers" value="GcActionTrigger">
                <Property name="Event" value="GcStateTimeEvent">
                  <Property name="GcStateTimeEvent">
                    <Property name="Seconds" value="1.000000" />
                    <Property name="RandomSeconds" value="0.000000" />
                    <Property name="UseMissionClock" value="false" />
                  </Property>
                </Property>
                <Property name="Action">
                  <Property name="Action" value="GcNodeActivationAction">
                    <Property name="GcNodeActivationAction">
                      <Property name="NodeActiveState" value="Activate" />
                      <Property name="Name" value="HEADLIGHTS" />
                      <Property name="SceneToAdd" value="" />
                      <Property name="IncludePhysics" value="false" />
                      <Property name="IncludeChildPhysics" value="false" />
                      <Property name="NotifyNPC" value="false" />
                      <Property name="UseMasterModel" value="true" />
                      <Property name="UseLocalNode" value="false" />
                      <Property name="RestartEmitters" value="false" />
                      <Property name="AffectModels" value="false" />
                    </Property>
                  </Property>
                  <Property name="Action" value="GcGoToStateAction">
                    <Property name="GcGoToStateAction">
                      <Property name="State" value="BASE_STATE" />
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
]]
                        }
                    }
                }
            }
        }
    }
}