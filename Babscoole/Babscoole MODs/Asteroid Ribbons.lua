NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Asteroid Ribbons",
["MOD_AUTHOR"]      = "Exosolar & Babscoole",
["NMS_VERSION"]     = "6.18",
["MOD_DESCRIPTION"] = "Forms asteroids into sheets as well as making them visible at far greater ranges",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "GCENVIRONMENTGLOBALS.GLOBAL.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["REPLACE_TYPE"] = "ALL",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MaxAsteroidGenerationPerFrame",          "120000"}, --org 5000
                {"MaxAsteroidGenerationPerFramePulseJump", "10000"},  --org 1000
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "GCSOLARGENERATIONGLOBALS.GLOBAL.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Planet Invalid Asteroid Zone",             "40000.000000"},
                {"Sparse Asteroid Spread",                   "-25.000000"},
                {"Asteroid Noise Octaves",                   "1"},
                {"Asteroid Space Station Avoid Radius",      "10000.000000"},
                {"Asteroid Anomaly Avoid Radius",            "10000.000000"},
                {"Asteroid Warp In Area Avoid Radius",       "10000.000000"},
                {"Asteroid Some Rares Odds",                 "0.520000"},
                {"Rare Asteroid Min Resources",              "8"},
                {"Rare Asteroid Max Resources",              "20"},
                {"Common Asteroid Min Resources",            "7"},
                {"Common Asteroid Max Resources",            "16"},
                {"Common Asteroid Resource Fuel Multiplier", "3"},
                {"Common Asteroid Resource Fuel Odds",       "0.750000"},
                {"Rare Asteroid Resource Fuel Odds",         "0.250000"},
                {"Large Asteroid Fade Time",                 "1.200000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Common Asteroid Data"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Spacing",    "387.000000"},
                {"Fade Range",  "1000.000000"},
                {"Noise Scale", "100000.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Common Asteroid Data", "Scale Variance"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Y", "1.300000"}
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Common Asteroid Data", "Noise Range"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"X", "0.499000"},
                {"Y", "0.501000"}
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Ring Asteroid Data"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Fade Range", "1000.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Ring Asteroid Data", "Scale Variance"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Y", "1.300000"}
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Large Asteroid Data"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Spacing",    "3500.000000"},
                {"Fade Range",  "3500.000000"},
                {"Noise Scale", "100000.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Large Asteroid Data", "Noise Range"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"X", "0.495000"},
                {"Y", "0.505000"}
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Rare Asteroid Data"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Spacing",     "510.000000"},
                {"Fade Range",  "1000.000000"},
                {"Noise Scale", "100000.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Rare Asteroid Data", "Scale Variance"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Y", "1.300000"}
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Rare Asteroid Data", "Noise Range"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"X", "0.499000"},
                {"Y", "0.501000"}
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Rare Asteroid Noise Range Some Rares"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"X", "0.498500"},
                {"Y", "0.501500"}
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Rare Asteroid Noise Range Lots Of Rares"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"X", "0.498000"},
                {"Y", "0.502000"}
              }
            },
          }
        },
      }
    }
  }
}