NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "VR Hand Commands",
["MOD_AUTHOR"]      = "Mjjstral & Babscoole",
["NMS_VERSION"]     = "6.00",
["MOD_DESCRIPTION"] = "Adds trigger-action hand combos, savegame: left-right-left, teleport to base: right-left-right",
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
                      <Property name="State" value="BASESTATE" />
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
            <Property name="StateID" value="BASESTATE" />
            <Property name="Triggers">
              <Property name="Triggers" value="GcActionTrigger">
                <Property name="Event" value="GcAnimFrameEvent">
                  <Property name="GcAnimFrameEvent">
                    <Property name="Anim" value="POSE_HND_FIST_L" />
                    <Property name="FrameStart" value="0" />
                    <Property name="StartFromEnd" value="false" />
                  </Property>
                </Property>
                <Property name="Action">
                  <Property name="Action" value="GcGoToStateAction">
                    <Property name="GcGoToStateAction">
                      <Property name="State" value="STATE02_S_TRANS" />
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
                    <Property name="Anim" value="POSE_HND_FIST_R" />
                    <Property name="FrameStart" value="0" />
                    <Property name="StartFromEnd" value="false" />
                  </Property>
                </Property>
                <Property name="Action">
                  <Property name="Action" value="GcGoToStateAction">
                    <Property name="GcGoToStateAction">
                      <Property name="State" value="STATE02_T_TRANS" />
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
            <Property name="StateID" value="STATE02_S_TRANS" />
            <Property name="Triggers">
              <Property name="Triggers" value="GcActionTrigger">
                <Property name="Event" value="GcStateTimeEvent">
                  <Property name="GcStateTimeEvent">
                    <Property name="Seconds" value="0.200000" />
                    <Property name="RandomSeconds" value="0.000000" />
                    <Property name="UseMissionClock" value="false" />
                  </Property>
                </Property>
                <Property name="Action">
                  <Property name="Action" value="GcGoToStateAction">
                    <Property name="GcGoToStateAction">
                      <Property name="State" value="STATE02_S" />
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
                    <Property name="Anim" value="POSE_HND_FIST_L" />
                    <Property name="FrameStart" value="0" />
                    <Property name="StartFromEnd" value="false" />
                  </Property>
                </Property>
                <Property name="Action">
                  <Property name="Action" value="GcGoToStateAction">
                    <Property name="GcGoToStateAction">
                      <Property name="State" value="STATE02_S_TRANS_" />
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
                    <Property name="Anim" value="POSE_HND_FIST_R" />
                    <Property name="FrameStart" value="0" />
                    <Property name="StartFromEnd" value="false" />
                  </Property>
                </Property>
                <Property name="Action">
                  <Property name="Action" value="GcGoToStateAction">
                    <Property name="GcGoToStateAction">
                      <Property name="State" value="STATE02_S_TRANS_" />
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
            <Property name="StateID" value="STATE02_S_TRANS_" />
            <Property name="Triggers">
              <Property name="Triggers" value="GcActionTrigger">
                <Property name="Event" value="GcStateTimeEvent">
                  <Property name="GcStateTimeEvent">
                    <Property name="Seconds" value="0.100000" />
                    <Property name="RandomSeconds" value="0.000000" />
                    <Property name="UseMissionClock" value="false" />
                  </Property>
                </Property>
                <Property name="Action">
                  <Property name="Action" value="GcGoToStateAction">
                    <Property name="GcGoToStateAction">
                      <Property name="State" value="STATE02_S" />
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
                    <Property name="Anim" value="POSE_HND_FIST_L" />
                    <Property name="FrameStart" value="0" />
                    <Property name="StartFromEnd" value="false" />
                  </Property>
                </Property>
                <Property name="Action">
                  <Property name="Action" value="GcGoToStateAction">
                    <Property name="GcGoToStateAction">
                      <Property name="State" value="STATE02_S_TRANS" />
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
                    <Property name="Anim" value="POSE_HND_FIST_R" />
                    <Property name="FrameStart" value="0" />
                    <Property name="StartFromEnd" value="false" />
                  </Property>
                </Property>
                <Property name="Action">
                  <Property name="Action" value="GcGoToStateAction">
                    <Property name="GcGoToStateAction">
                      <Property name="State" value="STATE02_S_TRANS" />
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
            <Property name="StateID" value="STATE02_S" />
            <Property name="Triggers">
              <Property name="Triggers" value="GcActionTrigger">
                <Property name="Event" value="GcAnimFrameEvent">
                  <Property name="GcAnimFrameEvent">
                    <Property name="Anim" value="POSE_HND_FIST_R" />
                    <Property name="FrameStart" value="0" />
                    <Property name="StartFromEnd" value="false" />
                  </Property>
                </Property>
                <Property name="Action">
                  <Property name="Action" value="GcGoToStateAction">
                    <Property name="GcGoToStateAction">
                      <Property name="State" value="STATE03_S_TRANS" />
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
                    <Property name="Seconds" value="1.200000" />
                    <Property name="RandomSeconds" value="0.000000" />
                    <Property name="UseMissionClock" value="false" />
                  </Property>
                </Property>
                <Property name="Action">
                  <Property name="Action" value="GcGoToStateAction">
                    <Property name="GcGoToStateAction">
                      <Property name="State" value="BASESTATE" />
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
            <Property name="StateID" value="STATE03_S_TRANS" />
            <Property name="Triggers">
              <Property name="Triggers" value="GcActionTrigger">
                <Property name="Event" value="GcStateTimeEvent">
                  <Property name="GcStateTimeEvent">
                    <Property name="Seconds" value="0.200000" />
                    <Property name="RandomSeconds" value="0.000000" />
                    <Property name="UseMissionClock" value="false" />
                  </Property>
                </Property>
                <Property name="Action">
                  <Property name="Action" value="GcGoToStateAction">
                    <Property name="GcGoToStateAction">
                      <Property name="State" value="STATE03_S" />
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
                    <Property name="Anim" value="POSE_HND_FIST_L" />
                    <Property name="FrameStart" value="0" />
                    <Property name="StartFromEnd" value="false" />
                  </Property>
                </Property>
                <Property name="Action">
                  <Property name="Action" value="GcGoToStateAction">
                    <Property name="GcGoToStateAction">
                      <Property name="State" value="STATE03_S_TRANS_" />
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
                    <Property name="Anim" value="POSE_HND_FIST_R" />
                    <Property name="FrameStart" value="0" />
                    <Property name="StartFromEnd" value="false" />
                  </Property>
                </Property>
                <Property name="Action">
                  <Property name="Action" value="GcGoToStateAction">
                    <Property name="GcGoToStateAction">
                      <Property name="State" value="STATE03_S_TRANS_" />
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
            <Property name="StateID" value="STATE03_S_TRANS_" />
            <Property name="Triggers">
              <Property name="Triggers" value="GcActionTrigger">
                <Property name="Event" value="GcStateTimeEvent">
                  <Property name="GcStateTimeEvent">
                    <Property name="Seconds" value="0.100000" />
                    <Property name="RandomSeconds" value="0.000000" />
                    <Property name="UseMissionClock" value="false" />
                  </Property>
                </Property>
                <Property name="Action">
                  <Property name="Action" value="GcGoToStateAction">
                    <Property name="GcGoToStateAction">
                      <Property name="State" value="STATE03_S" />
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
                    <Property name="Anim" value="POSE_HND_FIST_L" />
                    <Property name="FrameStart" value="0" />
                    <Property name="StartFromEnd" value="false" />
                  </Property>
                </Property>
                <Property name="Action">
                  <Property name="Action" value="GcGoToStateAction">
                    <Property name="GcGoToStateAction">
                      <Property name="State" value="STATE03_S_TRANS" />
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
                    <Property name="Anim" value="POSE_HND_FIST_R" />
                    <Property name="FrameStart" value="0" />
                    <Property name="StartFromEnd" value="false" />
                  </Property>
                </Property>
                <Property name="Action">
                  <Property name="Action" value="GcGoToStateAction">
                    <Property name="GcGoToStateAction">
                      <Property name="State" value="STATE03_S_TRANS" />
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
            <Property name="StateID" value="STATE03_S" />
            <Property name="Triggers">
              <Property name="Triggers" value="GcActionTrigger">
                <Property name="Event" value="GcAnimFrameEvent">
                  <Property name="GcAnimFrameEvent">
                    <Property name="Anim" value="POSE_HND_FIST_L" />
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
              <Property name="Triggers" value="GcActionTrigger">
                <Property name="Event" value="GcStateTimeEvent">
                  <Property name="GcStateTimeEvent">
                    <Property name="Seconds" value="1.200000" />
                    <Property name="RandomSeconds" value="0.000000" />
                    <Property name="UseMissionClock" value="false" />
                  </Property>
                </Property>
                <Property name="Action">
                  <Property name="Action" value="GcGoToStateAction">
                    <Property name="GcGoToStateAction">
                      <Property name="State" value="BASESTATE" />
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
            <Property name="StateID" value="STATE02_T_TRANS" />
            <Property name="Triggers">
              <Property name="Triggers" value="GcActionTrigger">
                <Property name="Event" value="GcStateTimeEvent">
                  <Property name="GcStateTimeEvent">
                    <Property name="Seconds" value="0.200000" />
                    <Property name="RandomSeconds" value="0.000000" />
                    <Property name="UseMissionClock" value="false" />
                  </Property>
                </Property>
                <Property name="Action">
                  <Property name="Action" value="GcGoToStateAction">
                    <Property name="GcGoToStateAction">
                      <Property name="State" value="STATE02_T" />
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
                    <Property name="Anim" value="POSE_HND_FIST_L" />
                    <Property name="FrameStart" value="0" />
                    <Property name="StartFromEnd" value="false" />
                  </Property>
                </Property>
                <Property name="Action">
                  <Property name="Action" value="GcGoToStateAction">
                    <Property name="GcGoToStateAction">
                      <Property name="State" value="STATE02_T_TRANS_" />
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
                    <Property name="Anim" value="POSE_HND_FIST_R" />
                    <Property name="FrameStart" value="0" />
                    <Property name="StartFromEnd" value="false" />
                  </Property>
                </Property>
                <Property name="Action">
                  <Property name="Action" value="GcGoToStateAction">
                    <Property name="GcGoToStateAction">
                      <Property name="State" value="STATE02_T_TRANS_" />
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
            <Property name="StateID" value="STATE02_T_TRANS_" />
            <Property name="Triggers">
              <Property name="Triggers" value="GcActionTrigger">
                <Property name="Event" value="GcStateTimeEvent">
                  <Property name="GcStateTimeEvent">
                    <Property name="Seconds" value="0.100000" />
                    <Property name="RandomSeconds" value="0.000000" />
                    <Property name="UseMissionClock" value="false" />
                  </Property>
                </Property>
                <Property name="Action">
                  <Property name="Action" value="GcGoToStateAction">
                    <Property name="GcGoToStateAction">
                      <Property name="State" value="STATE02_T" />
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
                    <Property name="Anim" value="POSE_HND_FIST_L" />
                    <Property name="FrameStart" value="0" />
                    <Property name="StartFromEnd" value="false" />
                  </Property>
                </Property>
                <Property name="Action">
                  <Property name="Action" value="GcGoToStateAction">
                    <Property name="GcGoToStateAction">
                      <Property name="State" value="STATE02_T_TRANS_" />
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
                    <Property name="Anim" value="POSE_HND_FIST_R" />
                    <Property name="FrameStart" value="0" />
                    <Property name="StartFromEnd" value="false" />
                  </Property>
                </Property>
                <Property name="Action">
                  <Property name="Action" value="GcGoToStateAction">
                    <Property name="GcGoToStateAction">
                      <Property name="State" value="STATE02_T_TRANS" />
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
            <Property name="StateID" value="STATE02_T" />
            <Property name="Triggers">
              <Property name="Triggers" value="GcActionTrigger">
                <Property name="Event" value="GcAnimFrameEvent">
                  <Property name="GcAnimFrameEvent">
                    <Property name="Anim" value="POSE_HND_FIST_L" />
                    <Property name="FrameStart" value="0" />
                    <Property name="StartFromEnd" value="false" />
                  </Property>
                </Property>
                <Property name="Action">
                  <Property name="Action" value="GcGoToStateAction">
                    <Property name="GcGoToStateAction">
                      <Property name="State" value="STATE03_T_TRANS" />
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
                    <Property name="Seconds" value="1.200000" />
                    <Property name="RandomSeconds" value="0.000000" />
                    <Property name="UseMissionClock" value="false" />
                  </Property>
                </Property>
                <Property name="Action">
                  <Property name="Action" value="GcGoToStateAction">
                    <Property name="GcGoToStateAction">
                      <Property name="State" value="BASESTATE" />
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
            <Property name="StateID" value="STATE03_T_TRANS" />
            <Property name="Triggers">
              <Property name="Triggers" value="GcActionTrigger">
                <Property name="Event" value="GcStateTimeEvent">
                  <Property name="GcStateTimeEvent">
                    <Property name="Seconds" value="0.100000" />
                    <Property name="RandomSeconds" value="0.000000" />
                    <Property name="UseMissionClock" value="false" />
                  </Property>
                </Property>
                <Property name="Action">
                  <Property name="Action" value="GcGoToStateAction">
                    <Property name="GcGoToStateAction">
                      <Property name="State" value="STATE03_T" />
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
                    <Property name="Anim" value="POSE_HND_FIST_L" />
                    <Property name="FrameStart" value="0" />
                    <Property name="StartFromEnd" value="false" />
                  </Property>
                </Property>
                <Property name="Action">
                  <Property name="Action" value="GcGoToStateAction">
                    <Property name="GcGoToStateAction">
                      <Property name="State" value="STATE03_T_TRANS_" />
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
                    <Property name="Anim" value="POSE_HND_FIST_R" />
                    <Property name="FrameStart" value="0" />
                    <Property name="StartFromEnd" value="false" />
                  </Property>
                </Property>
                <Property name="Action">
                  <Property name="Action" value="GcGoToStateAction">
                    <Property name="GcGoToStateAction">
                      <Property name="State" value="STATE03_T_TRANS_" />
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
            <Property name="StateID" value="STATE03_T_TRANS_" />
            <Property name="Triggers">
              <Property name="Triggers" value="GcActionTrigger">
                <Property name="Event" value="GcStateTimeEvent">
                  <Property name="GcStateTimeEvent">
                    <Property name="Seconds" value="0.100000" />
                    <Property name="RandomSeconds" value="0.000000" />
                    <Property name="UseMissionClock" value="false" />
                  </Property>
                </Property>
                <Property name="Action">
                  <Property name="Action" value="GcGoToStateAction">
                    <Property name="GcGoToStateAction">
                      <Property name="State" value="STATE03_T" />
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
                    <Property name="Anim" value="POSE_HND_FIST_L" />
                    <Property name="FrameStart" value="0" />
                    <Property name="StartFromEnd" value="false" />
                  </Property>
                </Property>
                <Property name="Action">
                  <Property name="Action" value="GcGoToStateAction">
                    <Property name="GcGoToStateAction">
                      <Property name="State" value="STATE03_T_TRANS" />
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
                    <Property name="Anim" value="POSE_HND_FIST_R" />
                    <Property name="FrameStart" value="0" />
                    <Property name="StartFromEnd" value="false" />
                  </Property>
                </Property>
                <Property name="Action">
                  <Property name="Action" value="GcGoToStateAction">
                    <Property name="GcGoToStateAction">
                      <Property name="State" value="STATE03_T_TRANS" />
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
            <Property name="StateID" value="STATE03_T" />
            <Property name="Triggers">
              <Property name="Triggers" value="GcActionTrigger">
                <Property name="Event" value="GcAnimFrameEvent">
                  <Property name="GcAnimFrameEvent">
                    <Property name="Anim" value="POSE_HND_FIST_R" />
                    <Property name="FrameStart" value="0" />
                    <Property name="StartFromEnd" value="false" />
                  </Property>
                </Property>
                <Property name="Action">
                  <Property name="Action" value="GcGoToStateAction">
                    <Property name="GcGoToStateAction">
                      <Property name="State" value="TELEPORT_BASE" />
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
                    <Property name="Seconds" value="1.200000" />
                    <Property name="RandomSeconds" value="0.000000" />
                    <Property name="UseMissionClock" value="false" />
                  </Property>
                </Property>
                <Property name="Action">
                  <Property name="Action" value="GcGoToStateAction">
                    <Property name="GcGoToStateAction">
                      <Property name="State" value="BASESTATE" />
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
                    <Property name="Seconds" value="0.200000" />
                    <Property name="RandomSeconds" value="0.000000" />
                    <Property name="UseMissionClock" value="false" />
                  </Property>
                </Property>
                <Property name="Action">
                  <Property name="Action" value="GcFireSimpleInteractionAction">
                    <Property name="GcFireSimpleInteractionAction" />
                  </Property>
                  <Property name="Action" value="GcGoToStateAction">
                    <Property name="GcGoToStateAction">
                      <Property name="State" value="TRANS_STATE" />
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
            <Property name="StateID" value="TELEPORT_BASE" />
            <Property name="Triggers">
              <Property name="Triggers" value="GcActionTrigger">
                <Property name="Event" value="GcStateTimeEvent">
                  <Property name="GcStateTimeEvent">
                    <Property name="Seconds" value="0.200000" />
                    <Property name="RandomSeconds" value="0.000000" />
                    <Property name="UseMissionClock" value="false" />
                  </Property>
                </Property>
                <Property name="Action">
                  <Property name="Action" value="GcRewardAction">
                    <Property name="GcRewardAction">
                      <Property name="Reward" value="TELEPORT_BASE" />
                    </Property>
                  </Property>
                  <Property name="Action" value="GcGoToStateAction">
                    <Property name="GcGoToStateAction">
                      <Property name="State" value="TRANS_STATE" />
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
            <Property name="StateID" value="TRANS_STATE" />
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
                  <Property name="Action" value="GcGoToStateAction">
                    <Property name="GcGoToStateAction">
                      <Property name="State" value="BASESTATE" />
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
]]
                        }
                    }
                }
            }
        }
    }
}