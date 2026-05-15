NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Hide Orange Warning Caution Platform",
["MOD_AUTHOR"]      = "Grouch",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.36",
["MOD_DESCRIPTION"] = "Removes the camera distance based caution/hazard platform hologram that appears when standing on the corvette holopad",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\BIGGS\BIGGSLANDINGZONE\BIGGSATMOSFIELDMAT.MATERIAL.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"EnableLodFade", "false"},
                {"UseShaderMill", "false"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] =
              {
                {"Flags"},
                {"Uniforms_Float"},
                {"Uniforms_UInt"},
                {"Samplers"},
              },
              ["CREATE_HOES"] = "TRUE",
            },
          }
        },
      }
    }
  }
}