NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "2x Cargo Ships",
["MOD_AUTHOR"]      = "Grouch",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.43",
["MOD_DESCRIPTION"] = "Makes more cargo ships spawn per freighter, up from 0-5 to 3-10",
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
              ["PRECEDING_KEY_WORDS"] = {"Spread"},
              ["SUB_LEVEL"] = 6,
              ["SECTION_ACTIVE"] = {1},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"X", "1250.000000"},
                {"Y", "2100.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"AmbientSpawns", "GcAIShipSpawnData","ChildSpawns", "GcAIShipSpawnData"},
              ["PRECEDING_KEY_WORDS"] = {"Spread"},
              ["SUB_LEVEL"] = 6,
              ["SECTION_ACTIVE"] = {4},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"X", "1250.000000"},
                {"Y", "1250.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"AmbientSpawns", "GcAIShipSpawnData","ChildSpawns", "GcAIShipSpawnData"},
              ["PRECEDING_KEY_WORDS"] = {"Count"},
              ["SUB_LEVEL"] = 6,
              ["SECTION_ACTIVE"] = {1,4},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"X", "3.000000"},
                {"Y", "10.000000"},
              }
            },
          }
        },
      }
    }
  }
}