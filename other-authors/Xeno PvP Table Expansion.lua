NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]     = "Xeno PvP Table Expansion",
["MOD_AUTHOR"]       = "Mariti",
["LUA_AUTHOR"]       = "Mariti",
["NMS_VERSION"]      = "7.04",
["MOD_DESCRIPTION"]  = "Changes the Xeno Arena tables for Space Stations (Normal & Pirate) and Settlements to be PvP instead of PvE",
["MODIFICATIONS"]    =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\GAMETABLES\GAMETABLESDATATABLE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "PETBATTLE_SYSTEM_STANDARD"},
              ["VALUE_CHANGE_TABLE"] = {
                {"SpawnDataId", "PB_SPAWN_PVP_STANDARD"},
                {"GameConfigId", "PB_GAME_PVP_STANDARD"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "PETBATTLE_SETTLEMENT"},
              ["VALUE_CHANGE_TABLE"] = {
                {"SpawnDataId", "PB_SPAWN_PVP_STANDARD"},
                {"GameConfigId", "PB_GAME_PVP_STANDARD"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "PETBATTLE_PIRATES"},
              ["VALUE_CHANGE_TABLE"] = {
                {"SpawnDataId", "PB_SPAWN_PVP_STANDARD"},
                {"GameConfigId", "PB_GAME_PVP_STANDARD"},
              }
            },
          }
        }
      }
    }
  }
}