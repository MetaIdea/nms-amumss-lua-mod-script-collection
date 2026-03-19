--Must get the TEXTURES folder from the orignal .pak and place into ModScript\GlobalMEFTI

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "MOD_DUD_RainFX_v624-A",
["MOD_AUTHOR"]    = "jasondude7116",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "6.24",
["MODIFICATIONS"] =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] =
          {
            "MODELS\EFFECTS\HEAVYAIR\ALPINE\ALPINE2.HEAVYAIR.MBIN",
            "MODELS\EFFECTS\HEAVYAIR\ALPINE\ALPINE3.HEAVYAIR.MBIN",
          },
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Number Of Particles",   "3000"},
                {"Radius",                "50.000000"},
                {"Min Particle Lifetime", "0.750000"},
                {"Max Particle Lifetime", "1.250000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Major Direction"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Y", "-2.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Scale Range"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"X", "1.000000"},
                {"Y", "1.000000"},
                {"Z", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Amplitude Min"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"X", "-0.100000"},
                {"Y", "0.000000"},
                {"Z", "-0.100000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Amplitude Max"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"X", "0.100000"},
                {"Y", "0.000000"},
                {"Z", "0.100000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Colour 1"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "1.000000"},
                {"G", "1.000000"},
                {"B", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Colour 2"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "1.000000"},
                {"G", "1.000000"},
                {"B", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"WindDrift", "TkEmitterWindDrift"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Strength", "35.000000"},
                {"Speed",    "0.000000"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\HEAVYAIR\SWAMP\SWAMP2.HEAVYAIR.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Number Of Particles",   "3000"},
                {"Radius",                "50.000000"},
                {"Min Particle Lifetime", "0.750000"},
                {"Max Particle Lifetime", "1.250000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Major Direction"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Y", "-2.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Scale Range"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"X", "1.000000"},
                {"Y", "1.000000"},
                {"Z", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Amplitude Min"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"X", "-0.100000"},
                {"Y", "0.000000"},
                {"Z", "-0.100000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Amplitude Max"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"X", "0.100000"},
                {"Y", "0.000000"},
                {"Z", "0.100000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Colour 1"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "1.000000"},
                {"G", "1.000000"},
                {"B", "1.000000"},
                {"A", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Colour 2"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "1.000000"},
                {"G", "1.000000"},
                {"B", "1.000000"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"WindDrift", "TkEmitterWindDrift"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Strength", "35.000000"},
                {"Speed",    "0.000000"},
              }
            },
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"VelocityAlignment", "true"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\HEAVYAIR\TOXIC\TOXICRAIN1.HEAVYAIR.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Number Of Particles",   "3000"},
                {"Radius",                "50.000000"},
                {"Min Particle Lifetime", "0.750000"},
                {"Max Particle Lifetime", "1.250000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Major Direction"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Y", "-2.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Scale Range"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"X", "1.000000"},
                {"Y", "1.000000"},
                {"Z", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Amplitude Min"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"X", "-0.100000"},
                {"Y", "0.000000"},
                {"Z", "-0.100000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Amplitude Max"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"X", "0.100000"},
                {"Y", "0.000000"},
                {"Z", "0.100000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Colour 1"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "1.000000"},
                {"G", "1.000000"},
                {"B", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Colour 2"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "1.000000"},
                {"G", "1.000000"},
                {"B", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"WindDrift", "TkEmitterWindDrift"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Strength", "35.000000"},
                {"Speed",    "0.000000"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\HEAVYAIR\TOXIC\TOXICRAIN2.HEAVYAIR.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Number Of Particles",   "3000"},
                {"Radius",                "50.000000"},
                {"RadiusY",               "25.000000"},
                {"Min Particle Lifetime", "0.750000"},
                {"Max Particle Lifetime", "1.250000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Major Direction"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Y", "-2.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Scale Range"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"X", "1.000000"},
                {"Y", "1.000000"},
                {"Z", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Amplitude Min"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"X", "-0.100000"},
                {"Y", "0.000000"},
                {"Z", "-0.100000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Amplitude Max"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"X", "0.100000"},
                {"Y", "0.000000"},
                {"Z", "0.100000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Colour 1"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "1.000000"},
                {"G", "1.000000"},
                {"B", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Colour 2"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "1.000000"},
                {"G", "1.000000"},
                {"B", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"WindDrift", "TkEmitterWindDrift"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Strength", "35.000000"},
                {"Speed",    "0.000000"},
              }
            },
          }
        },
      }
    },
  },
}