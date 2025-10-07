-- All robots passive
local MOD_NAME      = "HardcoreSky_Abandoned_RobotFauna_AllRobotsPassive"
local GAME_VERSION  = "6.06"
local MOD_FILENAME  = MOD_NAME..".zip"

local ROBOT_GROUND_ONLY = [[
  <Property name="Archetypes" value="GcCreatureGenerationWeightedList">
    <Property name="Ground">
      <Property name="Ground" value="GcCreatureGenerationWeightedListDomainEntry">
        <Property name="Weight" value="1.000000" />
        <Property name="Archetype" value="ROBOT" />
      </Property>
    </Property>
    <Property name="Air" />
    <Property name="Cave" />
    <Property name="Water" />
  </Property>
]]

local CHANGES_GEN = {
  {
    SPECIAL_KEY_WORDS = {"AbandonedSystemSpecific","GcCreatureGenerationOptionalWeightedList"},
    VALUE_CHANGE_TABLE = {
      {"Probability",        "1"},
      {"OverrideAllDomains", "true"}
    }
  },
  {
    SPECIAL_KEY_WORDS   = {"AbandonedSystemSpecific","GcCreatureGenerationOptionalWeightedList"},
    PRECEDING_KEY_WORDS = {"Archetypes"},
    ADD_OPTION          = "REPLACEwholeSECTION",
    ADD                 = ROBOT_GROUND_ONLY
  }
}

local CHANGES_ROBOT_PASSIVE = {
  {
    REPLACE_TYPE       = "ALL",
    VALUE_CHANGE_TABLE = {{"CreatureRole","Passive"}}
  }
}

NMS_MOD_DEFINITION_CONTAINER = {
  MOD_FILENAME    = MOD_FILENAME,
  MOD_AUTHOR      = "Azunain",
  LUA_AUTHOR      = "Azunain",
  NMS_VERSION     = GAME_VERSION,
  MOD_DESCRIPTION = "Abandoned systems spawn only ground robots; all robot creatures are passive (non-aggressive).",
  MODIFICATIONS   = {{
    MBIN_CHANGE_TABLE = {
      {
        MBIN_FILE_SOURCE = {
          {"METADATA/SIMULATION/ECOSYSTEM/CREATUREGENERATIONDATA.MXML",
           "METADATA/SIMULATION/ECOSYSTEM/CREATUREGENERATIONDATA.MBIN"}
        },
        MXML_CHANGE_TABLE = CHANGES_GEN
      },
      {
        MBIN_FILE_SOURCE  = "METADATA/SIMULATION/ECOSYSTEM/GROUND/GROUNDTABLEROBOT.MBIN",
        MXML_CHANGE_TABLE = CHANGES_ROBOT_PASSIVE
      }
    }
  }}
}