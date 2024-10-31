NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "RelicGateWarp.pak",
["NMS_VERSION"]     = "5.22",
["MOD_AUTHOR"]      = "Babscoole",
["MOD_DESCRIPTION"] = "WTFAI",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\SPACE\POI\GATE_POI\ENTITIES\GATEPOI.ENTITY.MBIN",
                    ["MBIN_FS_DISCARD"] = "TRUE",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"WarpType", "SpacePOI"},
                            ["SEC_SAVE_TO"] = "ADD_REWARDACTION",
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\ROBOTS\SPIDER_QUADRUPED\ENTITIES\SPIDERQUAD.ENTITY.MBIN",
                    ["MBIN_FS_DISCARD"] = "TRUE",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Template", "GcTriggerActionComponentData.xml"},
                            ["SECTION_UP"] = 1,
                            ["SEC_SAVE_TO"] = "ADD_TRIGGER",
                        },
                        {
                            ["SEC_EDIT"] = "ADD_TRIGGER",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"StateID",    "BOOT"},
                                {"Anim",       "RELIC_GATE_WARP"},
                                {"FrameStart", "0"},
                            }
                        },
                        {
                            ["SEC_EDIT"] = "ADD_TRIGGER",
                            ["PRECEDING_KEY_WORDS"] = {"GcCameraShakeAction.xml"},
                            ["REMOVE"] = "SECTION"
                        },
                        {
                            ["SEC_EDIT"] = "ADD_TRIGGER",
                            ["PRECEDING_KEY_WORDS"] = {"Action"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["SEC_ADD_NAMED"] = "ADD_REWARDACTION"
                        },
                    }
                },
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
                                {"Anim",     "RELIC_GATE_WARP"},
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
                            ["SEC_ADD_NAMED"] = "ADD_TRIGGER",
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
                                {"Title",               "Relic Gate Warp"},
                                {"ChatText",            ""},
                                {"ChatUsesPrefix",      "False"},
                                {"EmoteID",             "RELIC_GATE_WARP"},
                                {"AnimationName",       "RELIC_GATE_WARP"},
                                {"Filename",            "TEXTURES/UI/FRONTEND/ICONS/EXPEDITION/PATCH.WARPFIX.DDS"},
                                {"MoveToCancel",        "True"},
                                {"RidingAnimationName", "RELIC_GATE_WARP"},
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
                                {"EmoteID",             "RELIC_GATE_WARPW"},
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