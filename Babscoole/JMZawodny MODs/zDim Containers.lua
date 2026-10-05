NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "zDim Containers",
["MOD_AUTHOR"]      = "JMZawodny",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "7.00",
["MOD_DESCRIPTION"] = "zDim Containers Reduces the lights inside containers so you can scale them down in size without blinding you",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBECRATE.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "RefTerminalCubeCrate", "Name", "SCENEGRAPH"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "MODELS\JMZ\TERMINAL_CUBECRATE.SCENE.MBIN"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "SnapGroup_Roof_", "Name", "SCENEGRAPH"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "MODELS\JMZ\CUBEROOM_ROOF.SCENE.MBIN"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] =
          {
            {"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TERMINAL_CUBECRATE.SCENE.MBIN", "MODELS\JMZ\TERMINAL_CUBECRATE.SCENE.MBIN", "REMOVE"},
          },
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\JMZ\TERMINAL_CUBECRATE.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Light", "Name", "INTENSITY"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "0.020000"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] =
          {
            {"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_ROOF.SCENE.MBIN", "MODELS\JMZ\CUBEROOM_ROOF.SCENE.MBIN", "REMOVE"},
          },
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\JMZ\CUBEROOM_ROOF.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight1", "Name", "FOV"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "120.000000"},
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
                {"Value", "0.020000"},
              }
            },
          }
        },
      }
    }
  }
}
