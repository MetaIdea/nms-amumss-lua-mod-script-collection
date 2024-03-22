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
["MOD_AUTHOR"]      = "Mjjstral",
["MOD_MAINTENANCE"] = "Babscoole",
["MOD_DESCRIPTION"] = "Turn on and off your backpack, toggleable in the quick action menu (gestures tab)",
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
                            ["PRECEDING_KEY_WORDS"] = {"GcPlayerEffectsComponentData.xml"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
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