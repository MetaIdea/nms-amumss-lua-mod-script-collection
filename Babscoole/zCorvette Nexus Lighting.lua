NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "zCorvette Nexus Lighting",
["MOD_AUTHOR"]      = "JMZawodny",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.20",
["MOD_DESCRIPTION"] = "zCorvette Nexus Lighting improves the lighting around the Corvette landing pads in the Nexus",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\SPACE\NEXUS\PARTS\LANDINGBAYS\BIGGSPLATFORMNEXUS.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "CentreFillLight"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"TransY", "75.000000"},
                {"RotX",   "-90.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "CentreFillLight", "Name", "FOV"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "120.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "CentreFillLight", "Name", "FALLOFF"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "CentreFillLight", "Name", "INTENSITY"},
                {"Name", "CentreFillLight", "Name", "RADIUS"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "150.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "CentreFillLight", "Name", "COL_R"},
                {"Name", "CentreFillLight", "Name", "COL_G"},
                {"Name", "CentreFillLight", "Name", "COL_B"},
                {"Name", "QuickLight5",     "Name", "COL_G"},
                {"Name", "QuickLight5",     "Name", "COL_B"},
                {"Name", "QuickLight6",     "Name", "COL_G"},
                {"Name", "QuickLight6",     "Name", "COL_B"},
                {"Name", "QuickLight7",     "Name", "COL_G"},
                {"Name", "QuickLight7",     "Name", "COL_B"},
                {"Name", "QuickLight8",     "Name", "COL_G"},
                {"Name", "QuickLight8",     "Name", "COL_B"},
                {"Name", "QuickLight4",     "Name", "COL_G"},
                {"Name", "QuickLight4",     "Name", "COL_B"},
                {"Name", "QuickLight3",     "Name", "COL_G"},
                {"Name", "QuickLight3",     "Name", "COL_B"},
                {"Name", "QuickLight2",     "Name", "COL_G"},
                {"Name", "QuickLight2",     "Name", "COL_B"},
                {"Name", "QuickLight1",     "Name", "COL_G"},
                {"Name", "QuickLight1",     "Name", "COL_B"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "Volumetric1", "Name", "FALLOFF"},
                {"Name", "Volumetric2", "Name", "FALLOFF"},
                {"Name", "Volumetric3", "Name", "FALLOFF"},
                {"Name", "Volumetric4", "Name", "FALLOFF"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "1.500000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "Volumetric1", "Name", "INTENSITY"},
                {"Name", "Volumetric2", "Name", "INTENSITY"},
                {"Name", "Volumetric3", "Name", "INTENSITY"},
                {"Name", "Volumetric4", "Name", "INTENSITY"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "70.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "Volumetric1", "Name", "VOLUMETRIC"},
                {"Name", "Volumetric2", "Name", "VOLUMETRIC"},
                {"Name", "Volumetric3", "Name", "VOLUMETRIC"},
                {"Name", "Volumetric4", "Name", "VOLUMETRIC"},
                {"Name", "QuickLight5", "Name", "VOLUMETRIC"},
                {"Name", "QuickLight6", "Name", "VOLUMETRIC"},
                {"Name", "QuickLight7", "Name", "VOLUMETRIC"},
                {"Name", "QuickLight8", "Name", "VOLUMETRIC"},
                
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "0.001000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "QuickLight5", "Name", "FOV"},
                {"Name", "QuickLight6", "Name", "FOV"},
                {"Name", "QuickLight7", "Name", "FOV"},
                {"Name", "QuickLight8", "Name", "FOV"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "170.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "QuickLight4"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RotX", "60.000000"},
                {"RotY", "90.000010"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "QuickLight4", "Name", "FOV"},
                {"Name", "QuickLight3", "Name", "FOV"},
                {"Name", "QuickLight2", "Name", "FOV"},
                {"Name", "QuickLight1", "Name", "FOV"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "150.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "QuickLight3"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RotX", "60.000000"},
                {"RotY", "-0.000002"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "QuickLight2"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RotX", "60.000000"},
                {"RotY", "-90.000010"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "QuickLight1"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RotX", "60.000000"},
                {"RotY", "180.000000"},
              }
            },
          }
        },
      }
    }
  }
}
