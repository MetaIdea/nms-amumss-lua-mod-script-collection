NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Subtler Pulse Drive Effects",
["MOD_AUTHOR"]      = "CodenameAwesome",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "5.58",
["MOD_DESCRIPTION"] = "Reduces the intensity of pulse drive particles by increasing their spawn radius from the camera",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\SPEEDLINES\MINIJUMPSPEEDLINES.SPEEDLINE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"NumberOfParticles",    "5000"},
                {"Radius",               "35000"},
                {"RemoveCylinderRadius", "10000"},
                {"Alpha",                "0.250000"},
                {"Lifetime",             "5"},
              },
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\SPEEDLINES\MINIJUMPSPEEDLINES2.SPEEDLINE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"NumberOfParticles",    "10000"},
                {"Radius",               "100000"},
                {"RemoveCylinderRadius", "50000"},
                {"Alpha",                "1.000000"},
                {"Lifetime",             "5"},
              },
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\SPEEDLINES\MINIJUMPSPEEDLINES3.SPEEDLINE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"NumberOfParticles",    "10000"},
                {"Radius",               "100000"},
                {"RemoveCylinderRadius", "10000"},
                {"Alpha",                "1.000000"},
                {"Lifetime",             "10"},
              },
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\SPEEDLINES\MINIJUMPSPEEDLINES4.SPEEDLINE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"NumberOfParticles",    "1500"},
                {"Radius",               "5000"},
                {"RemoveCylinderRadius", "10"},
                {"Alpha",                "1.000000"},
                {"Lifetime",             "10"},
              },
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\SPEEDLINES\SPACE.SPEEDLINE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"NumberOfParticles",    "25000"},
                {"Radius",               "2000"},
                {"RemoveCylinderRadius", "0"},
                {"Alpha",                "0.200000"},
                {"Lifetime",             "50"},
              },
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\SPEEDLINES\SPACE2.SPEEDLINE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"NumberOfParticles",    "20000"},
                {"Radius",               "1100"},
                {"RemoveCylinderRadius", "25"},
                {"Alpha",                "0.250000"},
                {"Lifetime",             "50"},
              },
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\SPEEDLINES\SPACEBIG.SPEEDLINE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"NumberOfParticles",    "12500"},
                {"Radius",               "1500"},
                {"RemoveCylinderRadius", "50"},
                {"Alpha",                "0.250000"},
                {"Lifetime",             "50"},
              },
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\WARP\SPEEDTUNNEL\SPEEDTUNNELMAT.MATERIAL.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "gMaterialColourVec4"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"W", "0.000000"},
              },
            },
          }
        },
      }
    },
  }
}