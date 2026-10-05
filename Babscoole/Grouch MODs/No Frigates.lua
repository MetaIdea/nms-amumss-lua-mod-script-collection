NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "No Frigates",
["MOD_AUTHOR"]      = "Grouch",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.43",
["MOD_DESCRIPTION"] = "Stops frigates from spawning, including pirate frigates",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SCENE\EXPERIENCESPAWNTABLE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"ChildSpawns", "GcAIShipSpawnData"},
              ["PRECEDING_KEY_WORDS"] = {"Count"},
              ["SUB_LEVEL"] = 6,
              ["SECTION_ACTIVE"] = {0,3},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Y", "0.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"PirateFreighter", "GcSpaceBattleSpawnData", "HostileFlagshipSpawn", "GcAIShipSpawnData", "ChildSpawns", "GcAIShipSpawnData"},
              ["PRECEDING_KEY_WORDS"] = {"Count"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"X", "0.000000"},
                {"Y", "0.000000"},
              }
            },
          }
        },
      }
    }
  }
}