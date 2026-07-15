NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "No Extra Freighters",
["MOD_AUTHOR"]      = "Grouch",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.43",
["MOD_DESCRIPTION"] = "Makes all fleets only consist of one freighter, the one that can be boarded and bought",
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
              ["SPECIAL_KEY_WORDS"] = {"AmbientSpawns", "GcAIShipSpawnData"},
              ["PRECEDING_KEY_WORDS"] = {"Count"},
              ["SUB_LEVEL"] = 4,
              ["SECTION_ACTIVE"] = {0,4},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"X", "1.000000"},
                {"Y", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"PirateShipsEasy", "GcSpaceBattleSpawnData", "ChildSpawns", "GcAIShipSpawnData"},
                {"PirateShipsStandard", "GcSpaceBattleSpawnData", "ChildSpawns", "GcAIShipSpawnData"},
                {"PirateShipsHard", "GcSpaceBattleSpawnData", "ChildSpawns", "GcAIShipSpawnData"},
                {"PirateFreighter", "GcSpaceBattleSpawnData", "ChildSpawns", "GcAIShipSpawnData"},
              },
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