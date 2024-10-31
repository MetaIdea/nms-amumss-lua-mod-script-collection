PacksList =
{
    "Backpack",
    "_Cape_Frigate",
    "_Cape_Sandworm",
    "_Cape_Jelly",
    "_Cape_Freighter",
    "_Cape_Infinity",
    "_Cape_Pirate",
    "_Cape_Atlas",
    "_Cape_Proto",
}

function GetPack(Pack)
    return
[[
                  <Property value="GcNodeActivationAction.xml">
                    <Property name="NodeActiveState" value="Toggle" />
                    <Property name="Name" value="]]..Pack..[[" />
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

PACKS_ADDING_ALL = {}

for i=1,#PacksList,1 do
    table.insert(PACKS_ADDING_ALL,GetPack(PacksList[i]))
end

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "BackpackToggleKeepArmor.pak",
["MOD_AUTHOR"]      = "Mjjstral & Babscoole",
["MOD_DESCRIPTION"] = "Turn on and off your backpack, toggleable in the quick action menu (gestures tab)",
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
                                {"Anim",     "BACKPACK_TOGGLE"},
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
      <Property name="Template" value="GcTriggerActionComponentData.xml">
        <Property name="HideModel" value="False" />
        <Property name="StartInactive" value="False" />
        <Property name="States">
          <Property value="GcActionTriggerState.xml">
            <Property name="StateID" value="BOOT" />
            <Property name="Triggers">
              <Property value="GcActionTrigger.xml">
                <Property name="Event" value="GcAnimFrameEvent.xml">
                  <Property name="Anim" value="BACKPACK_TOGGLE" />
                  <Property name="FrameStart" value="0" />
                  <Property name="StartFromEnd" value="False" />
                </Property>
                <Property name="Action">
]] .. table.concat(PACKS_ADDING_ALL) .. [[
                  <Property value="GcPlayAudioAction.xml">
                    <Property name="Sound" value="Obj_Shield_Repairer_Off" />
                    <Property name="UseOcclusion" value="False" />
                    <Property name="OcclusionRadius" value="2" />
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
                                {"Title",               "Toggle Backpack"},
                                {"ChatText",            ""},
                                {"ChatUsesPrefix",      "False"},
                                {"EmoteID",             "BACKPACK_TOGGLE"},
                                {"AnimationName",       "BACKPACK_TOGGLE"},
                                {"Filename",            "TEXTURES/UI/FRONTEND/COMPONENTS/CHARCUSTOMISE/BACKPACK.DDS"},
                                {"MoveToCancel",        "True"},
                                {"RidingAnimationName", "BACKPACK_TOGGLE"},
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
                                {"EmoteID",             "BACKPACK_TOGGLEW"},
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