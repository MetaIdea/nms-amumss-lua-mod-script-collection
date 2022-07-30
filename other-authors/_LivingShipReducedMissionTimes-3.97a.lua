local MISSION_TIME = 30
local change_table = {}

for mission = 1,4 do
  local mission_msg = "UI_BIO_SHIP_MISSION" .. mission .. "_MSG3"
  local current_change = 
  {
    ["SPECIAL_KEY_WORDS"] = { "MissionID", "BIO_SHIP" .. mission, "Message", mission_msg },
    ["VALUE_CHANGE_TABLE"] = {
      { "Time", MISSION_TIME }
    }
  }
  table.insert(change_table, current_change)
end

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] 			= "_LivingShipReducedMissionTimes-3.97a.pak",
  ["MOD_DESCRIPTION"]		= "Reduces the real time wait on the Living ship missions",
  ["MOD_AUTHOR"]			= "Zay", --username: wizardFu
  ["NMS_VERSION"]			= "3.97", -- updated for Endurance
  ["MODIFICATIONS"] 		=
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"]  = {"METADATA\SIMULATION\MISSIONS\SPACEPOIMISSIONTABLE.MBIN"},
					["EXML_CHANGE_TABLE"] = change_table
				},
			}
		},
	}
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE