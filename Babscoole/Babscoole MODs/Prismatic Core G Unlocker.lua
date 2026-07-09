REWARD_ID    = "RS_S22_S3M4_G"
REWARD_ICON  = "TEXTURES/UI/FRONTEND/ICONS/SPECIALSHOP/EXPEDITION.S22.TROPHYG.DDS"
REWARD_TITLE = "PRISMATIC_CORE_G"
REWARD_ABBR  = "PCG"

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Prismatic Core G Unlocker",
["MOD_AUTHOR"]      = "Babscoole & Mjstral",
["NMS_VERSION"]     = "6.40",
["MOD_DESCRIPTION"] = "Unlock a reward via speical emote menu quick action",
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
              ["SPECIAL_KEY_WORDS"] = {"Triggers", "GcActionTrigger"},
              ["SEC_KEEP"] = "TRUE",
              ["SEC_SAVE_TO"] = "ADD_TRIGGER",
            },
            {
              ["SEC_EDIT"] = "ADD_TRIGGER",
              ["VALUE_CHANGE_TABLE"] =
              {
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
              ["SPECIAL_KEY_WORDS"] = {"Components", "GcTriggerActionComponentData", "StateID", "BOOT"},
              ["PRECEDING_KEY_WORDS"] = {"Triggers"},
              ["ADD_OPTION"] = "ADDafterLINE",
              ["SEC_ADD_NAMED"] = "ADD_TRIGGER",
            },
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
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\REWARDTABLE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", REWARD_ID, "List", "GcRewardTableItemList"},
              ["PRECEDING_KEY_WORDS"] = {"List"},
              ["ADD_OPTION"] = "ADDendSECTION",
              ["ADD"] =
[[
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardSpecificSpecial">
							<Property name="GcRewardSpecificSpecial">
								<Property name="ID" value="SWARM_TROPHY_G" />
								<Property name="Message" value="" />
								<Property name="ShowSpecialProductPopup" value="true" />
								<Property name="UseSpecialFormatting" value="false" />
								<Property name="MilestoneRewardOverrideText" value="" />
								<Property name="HideInSeasonRewards" value="false" />
								<Property name="FailIfAlreadyKnown" value="false" />
							</Property>
						</Property>
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
      <Property name="Id" value="]] .. REWARD_TITLE .. [[" />
      <Property name="English" value="]] .. REWARD_TITLE .. [[" />
      <Property name="French" value="]] .. REWARD_TITLE .. [[" />
      <Property name="Italian" value="]] .. REWARD_TITLE .. [[" />
      <Property name="German" value="]] .. REWARD_TITLE .. [[" />
      <Property name="Spanish" value="]] .. REWARD_TITLE .. [[" />
      <Property name="Russian" value="]] .. REWARD_TITLE .. [[" />
      <Property name="Polish" value="]] .. REWARD_TITLE .. [[" />
      <Property name="Dutch" value="]] .. REWARD_TITLE .. [[" />
      <Property name="Portuguese" value="]] .. REWARD_TITLE .. [[" />
      <Property name="LatinAmericanSpanish" value="]] .. REWARD_TITLE .. [[" />
      <Property name="BrazilianPortuguese" value="]] .. REWARD_TITLE .. [[" />
      <Property name="SimplifiedChinese" value="]] .. REWARD_TITLE .. [[" />
      <Property name="TraditionalChinese" value="]] .. REWARD_TITLE .. [[" />
      <Property name="TencentChinese" value="]] .. REWARD_TITLE .. [[" />
      <Property name="Korean" value="]] .. REWARD_TITLE .. [[" />
      <Property name="Japanese" value="]] .. REWARD_TITLE .. [[" />
      <Property name="USEnglish" value="]] .. REWARD_TITLE .. [[" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="EMOTE_]] .. REWARD_ABBR .. [[" />
      <Property name="English" value="EMOTE_]] .. REWARD_ABBR .. [[" />
      <Property name="French" value="EMOTE_]] .. REWARD_ABBR .. [[" />
      <Property name="Italian" value="EMOTE_]] .. REWARD_ABBR .. [[" />
      <Property name="German" value="EMOTE_]] .. REWARD_ABBR .. [[" />
      <Property name="Spanish" value="EMOTE_]] .. REWARD_ABBR .. [[" />
      <Property name="Russian" value="EMOTE_]] .. REWARD_ABBR .. [[" />
      <Property name="Polish" value="EMOTE_]] .. REWARD_ABBR .. [[" />
      <Property name="Dutch" value="EMOTE_]] .. REWARD_ABBR .. [[" />
      <Property name="Portuguese" value="EMOTE_]] .. REWARD_ABBR .. [[" />
      <Property name="LatinAmericanSpanish" value="EMOTE_]] .. REWARD_ABBR .. [[" />
      <Property name="BrazilianPortuguese" value="EMOTE_]] .. REWARD_ABBR .. [[" />
      <Property name="SimplifiedChinese" value="EMOTE_]] .. REWARD_ABBR .. [[" />
      <Property name="TraditionalChinese" value="EMOTE_]] .. REWARD_ABBR .. [[" />
      <Property name="TencentChinese" value="EMOTE_]] .. REWARD_ABBR .. [[" />
      <Property name="Korean" value="EMOTE_]] .. REWARD_ABBR .. [[" />
      <Property name="Japanese" value="EMOTE_]] .. REWARD_ABBR .. [[" />
      <Property name="USEnglish" value="EMOTE_]] .. REWARD_ABBR .. [[" />
    </Property>
  </Property>
</Data>
]]
    },
  }
}