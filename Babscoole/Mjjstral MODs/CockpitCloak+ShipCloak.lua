NodeActiveState =
{
    activate = "Activate",
    deactivate = "Deactivate"
}

Name =
{
    cockpits =
    {
        "MODELS/COMMON/SPACECRAFT/DROPSHIPS/COCKPIT/COCKPITA_INTERIOR",
        "MODELS/COMMON/SPACECRAFT/DROPSHIPS/COCKPIT/COCKPITB_INTERIOR",
        "MODELS/COMMON/SPACECRAFT/FIGHTERS/COCKPIT/COCKPITA_INTERIOR",
        "MODELS/COMMON/SPACECRAFT/FIGHTERS/COCKPIT/COCKPITB_INTERIOR",
        "MODELS/COMMON/SPACECRAFT/FIGHTERS/COCKPIT/COCKPIT_A/GOLDCOCKPITA",
        "MODELS/COMMON/SPACECRAFT/SCIENTIFIC/INTERIORS/CANOPYA_INTERIOR",
        "MODELS/COMMON/SPACECRAFT/SHUTTLE/INTERIORS/CANOPYA_INTERIOR/CANOPYA_INTERIOR",
        "MODELS/COMMON/SPACECRAFT/S-CLASS/INTERIORS/CANOPYA_INTERIOR",
        "MODELS/COMMON/SPACECRAFT/SAILSHIP/SAILSHIPPARTS/COCKPIT/SAILSHIPCOCKPITA_INTERIOR",
        "MODELS/COMMON/SPACECRAFT/SENTINELSHIP/SENTINELCOCKPIT",
    },
    procgens =
    {
        "MODELS/COMMON/SPACECRAFT/FIGHTERS/FIGHTER_PROC",
        "MODELS/COMMON/SPACECRAFT/FIGHTERS/FIGHTERCLASSICGOLD",
        "MODELS/COMMON/SPACECRAFT/DROPSHIPS/DROPSHIP_PROC",
        "MODELS/COMMON/SPACECRAFT/SCIENTIFIC/SCIENTIFIC_PROC",
        "MODELS/COMMON/SPACECRAFT/SHUTTLE/SHUTTLE_PROC",
        "MODELS/COMMON/SPACECRAFT/S-CLASS/S-CLASS_PROC",
        "MODELS/COMMON/SPACECRAFT/SAILSHIP/SAILSHIP_PROC",
        "MODELS/COMMON/SPACECRAFT/S-CLASS/BIOPARTS/BIOSHIP_PROC",
        "MODELS/COMMON/SPACECRAFT/SENTINELSHIP/SENTINELSHIP_PROC",
    }
}

function buildBlocks(nodeActiveState, PATH)
    return
[[
                <Property value="GcNodeActivationAction.xml">
                  <Property name="NodeActiveState" value="]] .. nodeActiveState .. [[" />
                  <Property name="Name" value="]] .. PATH .. [[" />
                  <Property name="SceneToAdd" value="" />
                  <Property name="IncludePhysics" value="True" />
                  <Property name="IncludeChildPhysics" value="True" />
                  <Property name="NotifyNPC" value="False" />
                  <Property name="UseMasterModel" value="True" />
                  <Property name="UseLocalNode" value="False" />
                  <Property name="RestartEmitters" value="False" />
                  <Property name="AffectModels" value="True" />
                </Property>
]]
end

cockpitsActivate = {}
cockpitsDeactivate = {}
procgenActivate = {}
procgenDeactivate = {}

for j=1,#Name.cockpits do
  table.insert(cockpitsActivate,buildBlocks(NodeActiveState.activate, Name.cockpits[j]))
  table.insert(cockpitsDeactivate,buildBlocks(NodeActiveState.deactivate, Name.cockpits[j]))
end
for j=1,#Name.procgens do
  table.insert(procgenActivate,buildBlocks(NodeActiveState.activate, Name.procgens[j]))
  table.insert(procgenDeactivate,buildBlocks(NodeActiveState.deactivate, Name.procgens[j]))
end

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "CockpitCloak+ShipCloak.pak",
["MOD_AUTHOR"]    = "Original mod and toggle idea by Mjjstral, original concept Gmr_Leon, Current author Babscoole",
["NMS_VERSION"]   = "4.52",
["DESCRIPTION"]   = "Makes the cockpit interior and ship invisible when flying",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] =
                    {
                        "MODELS\COMMON\SPACECRAFT\FIGHTERS\COCKPIT\COCKPITA_INTERIOR\ENTITIES\COCKPITA_INTERIOR.ENTITY.MBIN",
                        "MODELS\COMMON\SPACECRAFT\DROPSHIPS\COCKPIT\COCKPITA_INTERIOR\ENTITIES\COCKPITA.ENTITY.MBIN",
                        "MODELS\COMMON\SPACECRAFT\DROPSHIPS\COCKPIT\COCKPITB_INTERIOR\ENTITIES\COCKPITB.ENTITY.MBIN",
                        "MODELS\COMMON\SPACECRAFT\SCIENTIFIC\INTERIORS\CANOPYA_INTERIOR\ENTITIES\CANOPYA_INTERIOR.ENTITY.MBIN",
                        "MODELS\COMMON\SPACECRAFT\SHUTTLE\INTERIORS\CANOPYA_INTERIOR\ENTITIES\CANOPYA.ENTITY.MBIN",
                        "MODELS\COMMON\SPACECRAFT\S-CLASS\INTERIORS\CANOPYA_INTERIOR\ENTITIES\COCKPIT.ENTITY.MBIN",
                        "MODELS\COMMON\SPACECRAFT\SAILSHIP\SAILSHIPPARTS\COCKPIT\SAILSHIPCOCKPITA_INTERIOR\ENTITIES\COCKPIT.ENTITY.MBIN",
                        "MODELS\COMMON\SPACECRAFT\S-CLASS\BIOPARTS\INTERIOR\CANOPYA_INTERIOR\ENTITIES\COCKPIT.ENTITY.MBIN",
                        "MODELS\COMMON\SPACECRAFT\SENTINELSHIP\SENTINELCOCKPIT\ENTITIES\COCKPITINTERIOR.ENTITY.MBIN",
                    },
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Components"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["ADD"] =
[[
    <Property value="GcTriggerActionComponentData.xml">
      <Property name="HideModel" value="False" />
      <Property name="StartInactive" value="False" />
      <Property name="States">
        <Property value="GcActionTriggerState.xml">
          <Property name="StateID" value="BOOT" />
          <Property name="Triggers">
            <Property value="GcActionTrigger.xml">
              <Property name="Event" value="GcAnimFrameEvent.xml">
                <Property name="Anim" value="ENTER" />
                <Property name="FrameStart" value="0" />
                <Property name="StartFromEnd" value="False" />
              </Property>
              <Property name="Action">
                <Property value="GcGoToStateAction.xml">
                  <Property name="State" value="HIDE" />
                  <Property name="Broadcast" value="False" />
                  <Property name="BroadcastLevel" value="GcBroadcastLevel.xml">
                    <Property name="BroadcastLevel" value="Local" />
                  </Property>
                </Property>
              </Property>
            </Property>
            <Property value="GcActionTrigger.xml">
              <Property name="Event" value="GcAnimFrameEvent.xml">
                <Property name="Anim" value="EXIT" />
                <Property name="FrameStart" value="0" />
                <Property name="StartFromEnd" value="False" />
              </Property>
              <Property name="Action">
                <Property value="GcGoToStateAction.xml">
                  <Property name="State" value="UNHIDE" />
                  <Property name="Broadcast" value="False" />
                  <Property name="BroadcastLevel" value="GcBroadcastLevel.xml">
                    <Property name="BroadcastLevel" value="Local" />
                  </Property>
                </Property>
              </Property>
            </Property>
            <Property value="GcActionTrigger.xml">
              <Property name="Event" value="GcAnimFrameEvent.xml">
                <Property name="Anim" value="EJECT" />
                <Property name="FrameStart" value="0" />
                <Property name="StartFromEnd" value="False" />
              </Property>
              <Property name="Action">
                <Property value="GcGoToStateAction.xml">
                  <Property name="State" value="UNHIDE" />
                  <Property name="Broadcast" value="False" />
                  <Property name="BroadcastLevel" value="GcBroadcastLevel.xml">
                    <Property name="BroadcastLevel" value="Local" />
                  </Property>
                </Property>
              </Property>
            </Property>
            <Property value="GcActionTrigger.xml">
              <Property name="Event" value="GcStateTimeEvent.xml">
                <Property name="Seconds" value="3" />
                <Property name="RandomSeconds" value="0" />
                <Property name="UseMissionClock" value="False" />
              </Property>
              <Property name="Action">
                <Property value="GcGoToStateAction.xml">
                  <Property name="State" value="HIDE" />
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
          <Property name="StateID" value="HIDE" />
          <Property name="Triggers">
            <Property value="GcActionTrigger.xml">
              <Property name="Event" value="GcStateTimeEvent.xml">
                <Property name="Seconds" value="9.25" />
                <Property name="RandomSeconds" value="0" />
                <Property name="UseMissionClock" value="False" />
              </Property>
              <Property name="Action">
]] .. table.concat(cockpitsDeactivate) .. [[
                <Property value="GcGoToStateAction.xml">
                  <Property name="State" value="BOOT" />
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
          <Property name="StateID" value="UNHIDE" />
          <Property name="Triggers">
            <Property value="GcActionTrigger.xml">
              <Property name="Event" value="GcStateTimeEvent.xml">
                <Property name="Seconds" value="3" />
                <Property name="RandomSeconds" value="0" />
                <Property name="UseMissionClock" value="False" />
              </Property>
              <Property name="Action">
]] .. table.concat(cockpitsActivate) .. [[
                <Property value="GcGoToStateAction.xml">
                  <Property name="State" value="BOOT" />
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
]]                        }
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] =
                    {
                        "MODELS\COMMON\SPACECRAFT\FIGHTERS\COCKPIT\COCKPIT_A\COCKPITA\ENTITIES\COCKPIT_A.ENTITY.MBIN",
                        "MODELS\COMMON\SPACECRAFT\FIGHTERS\COCKPIT\COCKPIT_B\COCKPITB\ENTITIES\COCKPIT_B.ENTITY.MBIN",
                        "MODELS\COMMON\SPACECRAFT\FIGHTERS\COCKPIT\COCKPIT_D\COCKPITD\ENTITIES\COCKPITD.ENTITY.MBIN",
                        "MODELS\COMMON\SPACECRAFT\FIGHTERS\COCKPIT\COCKPIT_E\COCKPIT_E\ENTITIES\COCKPTE.ENTITY.MBIN",
                        "MODELS\COMMON\SPACECRAFT\FIGHTERS\COCKPIT\COCKPIT_F\COCKPTF\ENTITIES\COCKPITF.ENTITY.MBIN",
                        "MODELS\COMMON\SPACECRAFT\DROPSHIPS\COCKPIT\COCKPITA\ENTITIES\COCKPIT_A.ENTITY.MBIN",
                        "MODELS\COMMON\SPACECRAFT\DROPSHIPS\COCKPIT\COCKPITB\ENTITIES\COCKPIT_B.ENTITY.MBIN",
                        "MODELS\COMMON\SPACECRAFT\SCIENTIFIC\ACCESSORIES\LANDINGGEAR\LANDINGGEAR_POD\ENTITIES\LANDINGGEAR.ENTITY.MBIN",
                        "MODELS\COMMON\SPACECRAFT\SHUTTLE\ACCESSORIES\LANDINGGEAR_LEG\ENTITIES\LANDINGGEAR.ENTITY.MBIN",
                        "MODELS\COMMON\SPACECRAFT\S-CLASS\ROYALPARTS\LANDINGGEAR\LANDINGGEAR_A\ENTITIES\S_CLASS_LANDINGGEAR_A.ENTITY.MBIN",
                        "MODELS\COMMON\SPACECRAFT\S-CLASS\SQUIDPARTS\LANDINGGEAR\LANDINGGEAR_A\ENTITIES\LANDINGGEAR_A.ENTITY.MBIN",
                        -- "MODELS\COMMON\SPACECRAFT\S-CLASS\BIOPARTS\COCKPIT\COCKPITA\ENTITIES\COCKPIT_A.ENTITY.MBIN",
                        -- "MODELS\COMMON\SPACECRAFT\S-CLASS\BIOPARTS\ENGINE\ENGINE_A\ENTITIES\ENGINEA.ENTITY.MBIN",
                        -- "MODELS\COMMON\SPACECRAFT\S-CLASS\BIOPARTS\INTERIOR\CANOPYA_INTERIOR\ENTITIES\COCKPIT.ENTITY.MBIN",
                        "MODELS\COMMON\SPACECRAFT\SAILSHIP\SAILSHIPPARTS\COCKPIT\SAILSHIPCOCKPITA_INTERIOR\ENTITIES\COCKPIT.ENTITY.MBIN",
                        "MODELS\COMMON\SPACECRAFT\SENTINELSHIP\SENTINELCOCKPIT\ENTITIES\COCKPITINTERIOR.ENTITY.MBIN",
                    },
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Components"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["ADD"] =
[[
    <Property value="GcTriggerActionComponentData.xml">
      <Property name="HideModel" value="False" />
      <Property name="StartInactive" value="False" />
      <Property name="States">
        <Property value="GcActionTriggerState.xml">
          <Property name="StateID" value="BOOT" />
          <Property name="Triggers">
            <Property value="GcActionTrigger.xml">
              <Property name="Event" value="GcAnimFrameEvent.xml">
                <Property name="Anim" value="TAKEOFF" />
                <Property name="FrameStart" value="5" />
                <Property name="StartFromEnd" value="False" />
              </Property>
              <Property name="Action">
                <Property value="GcGoToStateAction.xml">
                  <Property name="State" value="HIDE" />
                  <Property name="Broadcast" value="False" />
                  <Property name="BroadcastLevel" value="GcBroadcastLevel.xml">
                    <Property name="BroadcastLevel" value="Local" />
                  </Property>
                </Property>
              </Property>
            </Property>
            <Property value="GcActionTrigger.xml">
              <Property name="Event" value="GcAnimFrameEvent.xml">
                <Property name="Anim" value="LANDING" />
                <Property name="FrameStart" value="0" />
                <Property name="StartFromEnd" value="False" />
              </Property>
              <Property name="Action">
                <Property value="GcGoToStateAction.xml">
                  <Property name="State" value="UNHIDE" />
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
          <Property name="StateID" value="HIDE" />
          <Property name="Triggers">
            <Property value="GcActionTrigger.xml">
              <Property name="Event" value="GcStateTimeEvent.xml">
                <Property name="Seconds" value="9.5 " />
                <Property name="RandomSeconds" value="0" />
                <Property name="UseMissionClock" value="False" />
              </Property>
              <Property name="Action">
]] .. table.concat(procgenDeactivate) .. [[
                <Property value="GcGoToStateAction.xml">
                  <Property name="State" value="BOOT" />
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
          <Property name="StateID" value="UNHIDE" />
          <Property name="Triggers">
            <Property value="GcActionTrigger.xml">
              <Property name="Event" value="GcStateTimeEvent.xml">
                <Property name="Seconds" value="9.5" />
                <Property name="RandomSeconds" value="0" />
                <Property name="UseMissionClock" value="False" />
              </Property>
              <Property name="Action">
]] .. table.concat(procgenActivate) .. [[
                <Property value="GcGoToStateAction.xml">
                  <Property name="State" value="BOOT" />
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
]]                        }
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] =
                    {
                        "MODELS\COMMON\SPACECRAFT\DROPSHIPS\COCKPIT\COCKPITA_INTERIOR.SCENE.MBIN",
                        "MODELS\COMMON\SPACECRAFT\DROPSHIPS\COCKPIT\COCKPITB_INTERIOR.SCENE.MBIN",
                        "MODELS\COMMON\SPACECRAFT\FIGHTERS\COCKPIT\COCKPITCOMMON_INTERIOR.SCENE.MBIN",
                        "MODELS\COMMON\SPACECRAFT\S-CLASS\BIOPARTS\INTERIOR\CANOPYA_INTERIOR.SCENE.MBIN",
                        "MODELS\COMMON\SPACECRAFT\S-CLASS\INTERIORS\CANOPYA_INTERIOR.SCENE.MBIN",
                        "MODELS\COMMON\SPACECRAFT\SCIENTIFIC\INTERIORS\CANOPYA_INTERIOR.SCENE.MBIN",
                        "MODELS\COMMON\SPACECRAFT\SHUTTLE\INTERIORS\CANOPYA_INTERIOR\CANOPYA_INTERIOR.SCENE.MBIN",
                        "MODELS\COMMON\SPACECRAFT\SENTINELSHIP\SENTINELCOCKPIT.SCENE.MBIN",
                    },
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Spacemap"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TransZ", "-3"},
                            }
                        }
                    }
                }
            }
        }
    },
}