NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Fewer Space Rocks",
["MOD_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.00",
["MOD_DESCRIPTION"] = "Less Asteroids",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "GCSOLARGENERATIONGLOBALS.GLOBAL.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Sparse Asteroid Spread", "10"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Common Asteroid Data", "GcAsteroidGenerationData"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Spacing",     "6450"},
                {"Noise Scale", "200000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Ring Asteroid Data", "GcAsteroidGenerationData"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Spacing", "3000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Rare Asteroid Data", "GcAsteroidGenerationData"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Spacing",     "8500"},
                {"Noise Scale", "200000"},
              }
            },
          }
        }
      }
    }
  }
}