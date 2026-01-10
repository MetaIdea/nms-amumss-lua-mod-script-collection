NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Better Dusk",
["MOD_AUTHOR"]      = "Florian B. & Babscoole",
["NMS_VERSION"]     = "6.18",
["MOD_DESCRIPTION"] = "Better dusks by changing colors and the sunrise and sunset levels.",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "GCSKYGLOBALS.GLOBALS.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinNightFade",            "0.600000"},  -- Original "0.620000"
                {"MaxNightFade",            "0.850000"},  -- Original "0.680000"
                {"MinSunsetFade",           "0.433333"},  -- Original "0.40000"
                {"MaxSunsetFade",           "0.666667"},  -- Original "0.50000"
                {"MinSunsetHorizonFade",    "0.416667"},  -- Original "0.40000"
                {"MaxSunsetHorizonFade",    "0.666667"},  -- Original "0.50000"
                {"MinSunsetAtmosphereFade", "0.466667"},  -- Original "0.40000"
                {"MaxSunsetAtmosphereFade", "0.733333"},  -- Original "0.50000"
                {"MinSunsetColourFade",     "0.500000"},  -- Original "0.650000"
                {"MaxSunsetColourFade",     "0.666667"},  -- Original "0.70000"
                {"AmbientFactor",           "0.400000"},  -- Original "0.40000"
                {"SunClampAngle",           "90.000000"}, -- Original "55.000000"
                {"HorizonMultiplier",       "1.000000"},  -- Original "1.000000"
                {"DuskHorizonMultiplier",   "0.900000"},  -- Original "1.200000"
                {"NightHorizonMultiplier",  "0.100000"},  -- Original "1.554867"
              }
            },
          }
        },
      }
    },
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\SKYSETTINGS\DUSKSKYCOLOURS.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["PRECEDING_KEY_WORDS"] = {"GenericSettings", "Settings", "SkyColour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.124000"},
                {"G", "0.355000"},
                {"B", "0.500000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GenericSettings", "Settings", "SkyUpperColour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.000000"},
                {"G", "0.007000"},
                {"B", "0.050000"},
                {"A", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GenericSettings", "Settings", "SkySolarColour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.144000"},
                {"G", "0.392000"},
                {"B", "0.650000"},
                {"A", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GenericSettings", "Settings", "HorizonColour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.903000"},
                {"G", "0.832000"},
                {"B", "0.253000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GenericSettings", "Settings", "LightColour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.000000"},
                {"G", "0.000000"},
                {"B", "0.000000"},
                {"A", "0.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GenericSettings", "Settings", "SkyGradientSpeed"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"x", "2.000000"},
                {"y", "1.000000"},
                {"z", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GenericSettings", "Settings", "CloudColour1"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.200000"},
                {"G", "0.200000"},
                {"B", "0.300000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GenericSettings", "Settings", "CloudColour2"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.100000"},
                {"G", "0.100000"},
                {"B", "0.150000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"PerBiomeSettings", "Swamp", "Settings", "SkyColour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.324000"},
                {"G", "0.411000"},
                {"B", "0.643000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"PerBiomeSettings", "Swamp", "Settings", "SkyUpperColour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.043000"},
                {"G", "0.141000"},
                {"B", "0.256000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"PerBiomeSettings", "Swamp", "Settings", "HorizonColour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.052000"},
                {"G", "0.170000"},
                {"B", "0.308000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"PerBiomeSettings", "Swamp", "Settings", "CloudColour1"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.100000"},
                {"G", "0.100000"},
                {"B", "0.200000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"PerBiomeSettings", "Swamp", "Settings", "CloudColour2"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.100000"},
                {"G", "0.100000"},
                {"B", "0.200000"},
              }
            },
          }
        },
      }
    },
  }
}