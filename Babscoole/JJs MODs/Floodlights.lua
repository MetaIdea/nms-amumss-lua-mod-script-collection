NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "Floodlights.V.2.2",
["MOD_AUTHOR"]    = "JJHookah",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "6.24",
["MODIFICATIONS"] =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\EXTERIORPROPS\FLOODLIGHTS.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "spotLight1"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RotX", "-15.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "spotLight1", "Name", "FOV"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "170.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "spotLight1", "Name", "INTENSITY"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "650.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight1"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"NameHash",  "422545419"},
                {"Type",      "LIGHT"},
                {"Transform", "TkTransformData"},
                {"TransX",    "0"},
                {"TransY",    "6.432164"},
                {"TransZ",    "1.028947"},
                {"RotX",      "43.1797523"},
                {"RotY",      "180"},
                {"RotZ",      "180"},
                {"Name",      "spotLight2"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "spotLight2", "Name", "FOV"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "170.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "spotLight2", "Name", "FALLOFF"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "2.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "spotLight2", "Name", "INTENSITY"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "650.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "spotLight2", "Name", "RADIUS"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "30.000000"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] =
          {
            "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\LANDINGPAD\TRADERTILED_MAT9.MATERIAL.MBIN",
            "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\PARTS\TRADINGPOST_COMMON\TRADERTILED_MAT.MATERIAL.MBIN",
          },
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "gDynamicFlags"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"X", "0"},
              }
            },
          }
        },
      }
    }
  }
}