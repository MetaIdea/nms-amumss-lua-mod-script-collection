NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "zNautilon Headlights",
["MOD_AUTHOR"]      = "JMZawodny",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.45",
["MOD_DESCRIPTION"] = "zNautilon Headlights makes the headlights and spot lights useful",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "GCCAMERAGLOBALS.GLOBAL.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"VehicleCam", "GcCameraFollowSettings"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"LookStickLimitAngle", "60.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"SubmarineFollowCam", "GcCameraFollowSettings"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"OffsetY",    "4.500000"},
                {"OffsetYAlt", "6.500000"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\VEHICLES\SUBMARINE\SUBMARINEPRES.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "LeftFinLight",  "Name", "VOLUMETRIC"},
                {"Name", "RightFinLight", "Name", "VOLUMETRIC"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "pointLight1",  "Name", "VOLUMETRIC"},
                {"Name", "pointLight2",  "Name", "VOLUMETRIC"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "0.500000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "spotLight5",  "Name", "FALLOFF"},
                {"Name", "spotLight6",  "Name", "FALLOFF"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "spotLight5",  "Name", "INTENSITY"},
                {"Name", "spotLight6",  "Name", "INTENSITY"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "1000.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "spotLight5",  "Name", "RADIUS"},
                {"Name", "spotLight6",  "Name", "RADIUS"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "200.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "spotLight5",  "Name", "VOLUMETRIC"},
                {"Name", "spotLight6",  "Name", "VOLUMETRIC"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "0.001000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "spotLight1",  "Name", "FOV"},
                {"Name", "spotLight2",  "Name", "FOV"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "45.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "spotLight1",  "Name", "INTENSITY"},
                {"Name", "spotLight2",  "Name", "INTENSITY"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "2000.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "spotLight1",  "Name", "RADIUS"},
                {"Name", "spotLight2",  "Name", "RADIUS"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "500.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "spotLight1",  "Name", "VOLUMETRIC"},
                {"Name", "spotLight2",  "Name", "VOLUMETRIC"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "0.000200"},
              }
            },
          }
        },
      }
    }
  }
}
