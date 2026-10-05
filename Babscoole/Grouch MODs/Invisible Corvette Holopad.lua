NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Invisible Corvette Holopad",
["MOD_AUTHOR"]      = "Grouch",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.36",
["MOD_DESCRIPTION"] = "Removes the visuals for the corvette holopad completely, aside from the orange warning/caution thing that appears when very close to it/standing on it",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\BIGGS\BIGGSLANDINGZONE\BIGGSLANDINGMAT.MATERIAL.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MaterialClass", "Opaque"},
                {"EnableLodFade", "false"},
                {"UseShaderMill", "false"},
                {"Map",           ""},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Flags"},
              ["CREATE_HOES"] = "TRUE",
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\SPACECRAFT\LANDINGZONE.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["PRECEDING_KEY_WORDS"] = {"Children"},
              ["CREATE_HOES"] = "TRUE",
            },
          }
        },
      }
    }
  }
}