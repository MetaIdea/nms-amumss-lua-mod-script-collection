local cooldown_timer_in_minutes = 5
local cooldown_timer_in_seconds = cooldown_timer_in_minutes * 60

local change_table = {}

for quest_number = 1,21 do
  local quest_id = "BASE_UPGRADE" .. quest_number
  local current_change = 
  {
    ["SPECIAL_KEY_WORDS"] = {"MissionID", quest_id, "Message", "UI_BASEFLAG_COOLDOWN_MSG"},
    ["VALUE_CHANGE_TABLE"] = {
      {"Time", cooldown_timer_in_seconds}
    }
  }
  table.insert(change_table, current_change)
end

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] = "BaseComputerMissionsTimer.pak",
  ["MOD_DESCRIPTION"] = "Changes the cooldown timer for base computer repetitive missions",
  ["MOD_AUTHOR"] = "clampi",
  ["NMS_VERSION"] = "2.11",
  ["MODIFICATIONS"] = 
  {
    {
    ["PAK_FILE_SOURCE"] = "NMSARC.515F1D3.pak",
    ["MBIN_CHANGE_TABLE"] = 
      {
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\MISSIONS\BASECOMPUTERMISSIONTABLE.MBIN",
          ["EXML_CHANGE_TABLE"] = change_table
        },
      }
    },
  } --21 global replacements
}