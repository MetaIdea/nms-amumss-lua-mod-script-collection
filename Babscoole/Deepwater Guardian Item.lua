REWARD_ID    = "R_JELLYCHILD"
REWARD_ICON  = "TEXTURES/UI/FRONTEND/ICONS/FISH/PRODUCT2.FISH.JELLY.DDS"
REWARD_TITLE = "L_JELLYCHILD"
LANG_TITLE   = "Precious Spawn"
REWARD_ABBR  = "FJC"


NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Deepwater Guardian Item",
["MOD_AUTHOR"]      = "Mariti",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.45.1",
["MOD_DESCRIPTION"] = "Gives the player the Child of Aquarius fish that spawns the Deepwater Guardian Boss",
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
              ["SPECIAL_KEY_WORDS"] = {"Anim", "EMOTE_SPC_10_IN"},
              ["SECTION_ACTIVE"] = 1,
              ["SEC_SAVE_TO"] = "ADD_ANIM",
            },
            {
              ["SEC_EDIT"] = "ADD_ANIM",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Anim", REWARD_TITLE},
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
		    			["SPECIAL_KEY_WORDS"] = {"Id", "WEAP_TOKEN"},
		    			["SEC_SAVE_TO"] = "ADD_REWARD",
            },
            {
		    			["SEC_EDIT"] = "ADD_REWARD",
		    			["VALUE_CHANGE_TABLE"] =
		    			{
		    				{"Id", REWARD_ID},
		    				{"ID", "F_JELLYCHILD"},
		    			}
		    		},
		    		{
		    			["PRECEDING_KEY_WORDS"] = {"GenericTable"},
		    			["ADD_OPTION"] = "ADDendSECTION",
		    			["SEC_ADD_NAMED"] = "ADD_REWARD",
		    		},
		    	}
		    },
      }
    }
  },
["ADD_FILES"] =
  {
    {
      ["FILE_DESTINATION"] = "LocTable.MXML",
      ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>
<Data template="cTkLocalisationTable">
  <Property name="Table">
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="]] .. REWARD_TITLE .. [[" />
      <Property name="English" value="]] .. LANG_TITLE .. [[" />
      <Property name="French" value="]] .. LANG_TITLE .. [[" />
      <Property name="Italian" value="]] .. LANG_TITLE .. [[" />
      <Property name="German" value="]] .. LANG_TITLE .. [[" />
      <Property name="Spanish" value="]] .. LANG_TITLE .. [[" />
      <Property name="Russian" value="]] .. LANG_TITLE .. [[" />
      <Property name="Polish" value="]] .. LANG_TITLE .. [[" />
      <Property name="Dutch" value="]] .. LANG_TITLE .. [[" />
      <Property name="Portuguese" value="]] .. LANG_TITLE .. [[" />
      <Property name="LatinAmericanSpanish" value="]] .. LANG_TITLE .. [[" />
      <Property name="BrazilianPortuguese" value="]] .. LANG_TITLE .. [[" />
      <Property name="SimplifiedChinese" value="]] .. LANG_TITLE .. [[" />
      <Property name="TraditionalChinese" value="]] .. LANG_TITLE .. [[" />
      <Property name="TencentChinese" value="]] .. LANG_TITLE .. [[" />
      <Property name="Korean" value="]] .. LANG_TITLE .. [[" />
      <Property name="Japanese" value="]] .. LANG_TITLE .. [[" />
      <Property name="USEnglish" value="]] .. LANG_TITLE .. [[" />
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