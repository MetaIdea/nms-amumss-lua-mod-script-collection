NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "Larger System Holograms (Giant Seeker)",
["MOD_AUTHOR"]    = "Grouch",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "6.60",
["MODIFICATIONS"] =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "GCGALAXYGLOBALS.GLOBAL.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"PlanetParameters", "GcGalaxySolarSystemOrbitParams"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"FirstOrbitRadiusMin",  "260.000000"},
                {"FirstOrbitRadiusMax",  "320.000000"},
                {"OrbitRadiusOffsetMin", "150.000000"},
                {"OrbitRadiusOffsetMax", "180.000000"},
                {"OrbitLineWidth",       "1.200000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"MoonParameters", "GcGalaxySolarSystemOrbitParams"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"FirstOrbitRadiusMin",  "90.000000"},
                {"FirstOrbitRadiusMax",  "100.000000"},
                {"OrbitRadiusOffsetMin", "30.000000"},
                {"OrbitRadiusOffsetMax", "38.000000"},
                {"OrbitLineWidth",       "0.900000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"PlanetRadii"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Large",  "25.000000"},
                {"Medium", "18.000000"},
                {"Small",  "14.000000"},
                {"Moon",   "9.000000"},
                {"Giant",  "65.000000"},
              }
            },
          }
        }
      }
    }
  }
}