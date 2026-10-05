NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "No Cargo Ships",
["MOD_AUTHOR"]      = "Grouch",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.43",
["MOD_DESCRIPTION"] = "Stops cargo ships (internally referred to as Small Freighters and Tiny Freighters) from spawning",
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
              ["SPECIAL_KEY_WORDS"] = {"AmbientSpawns", "GcAIShipSpawnData","ChildSpawns", "GcAIShipSpawnData"},
              ["PRECEDING_KEY_WORDS"] = {"Count"},
              ["SUB_LEVEL"] = 6,
              ["SECTION_ACTIVE"] = {1,4},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Y", "0.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"PirateShipsEasy", "GcSpaceBattleSpawnData", "ChildSpawns", "GcAIShipSpawnData", "ChildSpawns", "GcAIShipSpawnData"},
                {"PirateShipsStandard", "GcSpaceBattleSpawnData", "ChildSpawns", "GcAIShipSpawnData", "ChildSpawns", "GcAIShipSpawnData"},
              },
              ["PRECEDING_KEY_WORDS"] = {"Count"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"X", "0.000000"},
                {"Y", "0.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"PirateShipsHard", "GcSpaceBattleSpawnData", "ChildSpawns", "GcAIShipSpawnData"},
                {"PirateFreighter", "GcSpaceBattleSpawnData", "ChildSpawns", "GcAIShipSpawnData"},
              },
              ["PRECEDING_KEY_WORDS"] = {"Count"},
              ["SECTION_ACTIVE"] = {2},
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