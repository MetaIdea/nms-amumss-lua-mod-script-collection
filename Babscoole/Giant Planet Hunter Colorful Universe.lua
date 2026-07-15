NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Giant Planet Hunter Colorful Universe",
["MOD_AUTHOR"]      = "beihaixingchen",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "5.58",
["MOD_DESCRIPTION"] = "Lightweight visual tweaks to help players spot WPII Giant Planets faster",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "GCGALAXYGLOBALS.GLOBAL.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["PRECEDING_KEY_WORDS"] =
              {
                {"Star Size", "Yellow"},
                {"Star Size", "Green"},
                {"Star Size", "Blue"},
                {"Star Size", "Red"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"X", "1.000000"},
                {"Y", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Star Size", "Purple"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"X", "3.000000"},
                {"Y", "3.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"BaseStarDefaultColours", "GcGalaxyStarColours"},
              ["REPLACE_TYPE"] = "ALL",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"A", "0.100000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"BaseStarDefaultColours", "GcGalaxyStarColours"},
              ["PRECEDING_KEY_WORDS"] = {"Purple"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"A", "0.900000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"PlanetRadii"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Large",  "10.000000"},
                {"Medium", "7.000000"},
                {"Small",  "4.000000"},
                {"Moon",   "2.000000"},
                {"Giant",  "40.000000"},
              }
            },
          }
        },
      }
    }
  }
}