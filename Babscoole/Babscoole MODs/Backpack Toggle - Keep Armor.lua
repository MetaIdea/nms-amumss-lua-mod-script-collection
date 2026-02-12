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
  "_Cape_Seed",
  "_Cape_Ruin",
}

function GetPack(Pack)
  return
[[
                  <Property name="Action" value="GcNodeActivationAction">
                    <Property name="GcNodeActivationAction">
                      <Property name="NodeActiveState" value="Toggle" />
                      <Property name="Name" value="]]..Pack..[[" />
                      <Property name="SceneToAdd" value="" />
                      <Property name="IncludePhysics" value="true" />
                      <Property name="IncludeChildPhysics" value="true" />
                      <Property name="NotifyNPC" value="false" />
                      <Property name="UseMasterModel" value="true" />
                      <Property name="UseLocalNode" value="false" />
                      <Property name="RestartEmitters" value="false" />
                      <Property name="AffectModels" value="true" />
                    </Property>
                  </Property>
]]
end

PACKS_ADDING_ALL = {}

for i=1,#PacksList,1 do
  table.insert(PACKS_ADDING_ALL,GetPack(PacksList[i]))
end

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Backpack Toggle - Keep Armor",
["MOD_AUTHOR"]      = "Mjjstral & Babscoole",
["MOD_DESCRIPTION"] = "Turn on and off your backpack, toggleable in the quick action menu (gestures tab)",
["NMS_VERSION"]     = "6.20",
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
                  {"Anim",     "BACKPACK_TOGGLE"},
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
                    <Property name="Anim" value="BACKPACK_TOGGLE" />
                    <Property name="FrameStart" value="0" />
                    <Property name="StartFromEnd" value="false" />
                  </Property>
                </Property>
                <Property name="Action">
]] .. table.concat(PACKS_ADDING_ALL) .. [[
                  <Property name="Action" value="GcPlayAudioAction">
                    <Property name="GcPlayAudioAction">
                      <Property name="Sound" value="Obj_Shield_Repairer_Off" />
                      <Property name="UseOcclusion" value="false" />
                      <Property name="OcclusionRadius" value="2.000000" />
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
                {"Title",               "Toggle Backpack"},
                {"ChatText",            ""},
                {"ChatUsesPrefix",      "false"},
                {"EmoteID",             "BACKPACK_TOGGLE"},
                {"AnimationName",       "BACKPACK_TOGGLE"},
                {"Filename",            "TEXTURES/UI/FRONTEND/COMPONENTS/CHARCUSTOMISE/BACKPACK.DDS"},
                {"MoveToCancel",        "true"},
                {"RidingAnimationName", "BACKPACK_TOGGLE"},
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

<Data template="cTkLocalisationTable">
  <Property name="Table">
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="Toggle Backpack" />
      <Property name="English" value="Toggle Backpack" />
      <Property name="French" value="Toggle Backpack" />
      <Property name="Italian" value="Toggle Backpack" />
      <Property name="German" value="Toggle Backpack" />
      <Property name="Spanish" value="Toggle Backpack" />
      <Property name="Russian" value="Toggle Backpack" />
      <Property name="Polish" value="Toggle Backpack" />
      <Property name="Dutch" value="Toggle Backpack" />
      <Property name="Portuguese" value="Toggle Backpack" />
      <Property name="LatinAmericanSpanish" value="Toggle Backpack" />
      <Property name="BrazilianPortuguese" value="Toggle Backpack" />
      <Property name="SimplifiedChinese" value="Toggle Backpack" />
      <Property name="TraditionalChinese" value="Toggle Backpack" />
      <Property name="TencentChinese" value="Toggle Backpack" />
      <Property name="Korean" value="Toggle Backpack" />
      <Property name="Japanese" value="Toggle Backpack" />
      <Property name="USEnglish" value="Toggle Backpack" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="BACKPACK_TOGGLE" />
      <Property name="English" value="BACKPACK_TOGGLE" />
      <Property name="French" value="BACKPACK_TOGGLE" />
      <Property name="Italian" value="BACKPACK_TOGGLE" />
      <Property name="German" value="BACKPACK_TOGGLE" />
      <Property name="Spanish" value="BACKPACK_TOGGLE" />
      <Property name="Russian" value="BACKPACK_TOGGLE" />
      <Property name="Polish" value="BACKPACK_TOGGLE" />
      <Property name="Dutch" value="BACKPACK_TOGGLE" />
      <Property name="Portuguese" value="BACKPACK_TOGGLE" />
      <Property name="LatinAmericanSpanish" value="BACKPACK_TOGGLE" />
      <Property name="BrazilianPortuguese" value="BACKPACK_TOGGLE" />
      <Property name="SimplifiedChinese" value="BACKPACK_TOGGLE" />
      <Property name="TraditionalChinese" value="BACKPACK_TOGGLE" />
      <Property name="TencentChinese" value="BACKPACK_TOGGLE" />
      <Property name="Korean" value="BACKPACK_TOGGLE" />
      <Property name="Japanese" value="BACKPACK_TOGGLE" />
      <Property name="USEnglish" value="BACKPACK_TOGGLE" />
    </Property>
  </Property>
</Data>
]]
    },
  }
}