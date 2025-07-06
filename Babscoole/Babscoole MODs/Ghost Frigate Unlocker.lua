REWARD_ID       = "RS_S13_FRIGATE"
REWARD_ICON     = "TEXTURES/UI/FRONTEND/ICONS/SPECIALSHOP/SPECIAL1.EXPEDITION.GHOSTFRIG.DDS"
REWARD_TITLE    = "GHOST_FRIGATE"
REWARD_ABBR     = "GF"


NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Ghost Frigate Unlocker",
["MOD_AUTHOR"]      = "Babscoole & Mjstral",
["MOD_DESCRIPTION"] = "Unlock a reward via special emote menu quick action",
["NMS_VERSION"]     = "5.73",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\HEALTHSTATION\ENTITIES\HEALTHSTATION.ENTITY.MBIN",
                    ["MBIN_FS_DISCARD"] = "TRUE",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Action", "GcRewardAction"},
                            ["SEC_SAVE_TO"] = "ADD_REWARDACTION",
                        },
                        {
                            ["SEC_EDIT"] =  {"ADD_REWARDACTION"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Reward", REWARD_ID},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\ROBOTS\SPIDER_QUADRUPED\ENTITIES\SPIDERQUAD.ENTITY.MBIN",
                    ["MBIN_FS_DISCARD"] = "TRUE",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Components", "GcTriggerActionComponentData"},
                            ["SEC_KEEP"] = "TRUE",
                            ["SEC_SAVE_TO"] = "ADD_TRIGGER",
                        },
                        {
                            ["SEC_EDIT"] = "ADD_TRIGGER",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"StateID",    "BOOT"},
                                {"Anim",       REWARD_TITLE},
                                {"FrameStart", "0"},
                            }
                        },
                        {
                            ["SEC_EDIT"] = "ADD_TRIGGER",
                            ["PRECEDING_KEY_WORDS"] = {"GcCameraShakeAction"},
                            ["SECTION_UP"] = 1,
                            ["SEC_KEEP"] = "TRUE",
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
                                {"Anim",     REWARD_TITLE},
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
                            ["SEC_ADD_NAMED"] = "ADD_TRIGGER",
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
                                {"Title",               REWARD_TITLE},
                                {"ChatText",            ""},
                                {"ChatUsesPrefix",      "false"},
                                {"EmoteID",             "EMOTE_" .. REWARD_ABBR},
                                {"AnimationName",       REWARD_TITLE},
                                {"Filename",            REWARD_ICON},
                                {"MoveToCancel",        "true"},
                                {"RidingAnimationName", REWARD_TITLE},
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
    }
}