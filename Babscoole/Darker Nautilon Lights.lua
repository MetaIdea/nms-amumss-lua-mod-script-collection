NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Darker Nautilon Lights",
["MOD_AUTHOR"]      = "Kilvoctu",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.32",
["MOD_DESCRIPTION"] = "Reduces the intensity of several lights on the Nautilon",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\VEHICLES\SUBMARINE\SUBMARINEPRES.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "LeftFinLight",  "Name", "FALLOFF"},
                {"Name", "RightFinLight", "Name", "FALLOFF"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "3.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "LeftFinLight",  "Name", "INTENSITY"},
                {"Name", "RightFinLight", "Name", "INTENSITY"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "0.000900"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = 
              {
                {"Name", "LeftFinLight",  "Name", "VOLUMETRIC"},
                {"Name", "RightFinLight", "Name", "VOLUMETRIC"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "0.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "pointLight1", "Name", "INTENSITY"},
                {"Name", "pointLight2", "Name", "INTENSITY"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "0.100000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "pointLight1", "Name", "COL_R"},
                {"Name", "pointLight2", "Name", "COL_R"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "0.300000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "pointLight1", "Name", "COL_G"},
                {"Name", "pointLight2", "Name", "COL_G"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "0.700000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "pointLight1", "Name", "VOLUMETRIC"},
                {"Name", "pointLight2", "Name", "VOLUMETRIC"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "0.250000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "spotLight5", "Name", "COL_R"},
                {"Name", "spotLight6", "Name", "COL_R"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "spotLight5", "Name", "COL_G"},
                {"Name", "spotLight6", "Name", "COL_G"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "0.950000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "spotLight5", "Name", "COL_B"},
                {"Name", "spotLight6", "Name", "COL_B"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "0.850000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "spotLight5", "Name", "VOLUMETRIC"},
                {"Name", "spotLight6", "Name", "VOLUMETRIC"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "0.015000"},
              }
            },
            
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "spotLight1", "Name", "FOV"},
                {"Name", "spotLight2", "Name", "FOV"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "65.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "spotLight1", "Name", "FALLOFF"},
                {"Name", "spotLight2", "Name", "FALLOFF"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "0.500000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "spotLight1", "Name", "COL_R"},
                {"Name", "spotLight2", "Name", "COL_R"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "spotLight1", "Name", "COL_G"},
                {"Name", "spotLight2", "Name", "COL_G"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "0.950000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "spotLight1", "Name", "COL_B"},
                {"Name", "spotLight2", "Name", "COL_B"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "0.850000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "spotLight1", "Name", "VOLUMETRIC"},
                {"Name", "spotLight2", "Name", "VOLUMETRIC"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "0.000000"},
              }
            },
          }
        }
      }
    }
  }
}