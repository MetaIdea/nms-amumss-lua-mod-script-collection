NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "Exotic Booster",
["MOD_AUTHOR"]    = "Exosolar & Babscoole",
["NMS_VERSION"]   = "6.18",
["MODIFICATIONS"] =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BIOMELISTPERSTARTYPE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Green", "GcBiomeList"},
              ["PRECEDING_KEY_WORDS"] = {"BiomeProbability"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Green", "1000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Blue", "GcBiomeList"},
              ["PRECEDING_KEY_WORDS"] = {"BiomeProbability"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Blue", "1000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Red", "GcBiomeList"},
              ["PRECEDING_KEY_WORDS"] = {"BiomeProbability"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Red", "1000000"},
              }
            },
          }
        }
      }
    }
  }
}