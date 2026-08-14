NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Better Black Holes",
["MOD_AUTHOR"]      = "Xdiablo6six6X",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.45",
["MOD_DESCRIPTION"] = "Made black holes bigger",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\SPACE\BLACKHOLE\BLACKHOLE.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "MODELS\SPACE\BLACKHOLE\BLACKHOLE"},
                {"Name", "Blackhole"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ScaleX", "20.000000"},
                {"ScaleY", "20.000000"},
                {"ScaleZ", "20.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight1", "Name", "INTENSITY"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "250000.000000"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\SPACE\BLACKHOLE\BLACKHOLE\ENTITIES\BLACKHOLE.ENTITY.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Components", "GcCameraShakeComponentData"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"FalloffDistanceMin", "8000.000000"},
                {"FalloffDistanceMax", "80000.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"RequirePlayerAction", "OnFoot" },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Distance", "2500.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"RequirePlayerAction", "InShip" },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Distance", "10000.000000"},
              }
            },
          }
        },
      }
    }
  }
}