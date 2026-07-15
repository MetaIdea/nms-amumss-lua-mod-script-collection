NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "5x Freighters",
["MOD_AUTHOR"]      = "Grouch",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.43",
["MOD_DESCRIPTION"] = "Multiplies how many freighters can spawn from 2-5 to 18-25",
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
              ["PRECEDING_KEY_WORDS"] = {"Spread"},
              ["SUB_LEVEL"] = 4,
              ["SECTION_ACTIVE"] = {0,4},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"X", "6000.000000"},
                {"Y", "6000.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"AmbientSpawns", "GcAIShipSpawnData"},
              ["PRECEDING_KEY_WORDS"] = {"Count"},
              ["SUB_LEVEL"] = 4,
              ["SECTION_ACTIVE"] = {0,4},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"X", "18.000000"},
                {"Y", "25.000000"},
              }
            },
          }
        },
      }
    }
  }
}