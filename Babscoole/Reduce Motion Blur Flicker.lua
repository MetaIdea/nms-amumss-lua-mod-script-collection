NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Reduce Motion Blur Flicker",
["MOD_AUTHOR"]      = "Kilvoctu",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.32",
["MOD_DESCRIPTION"] = "Reduce the flickering of lines/small lights caused by motion blur",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "GCGRAPHICSGLOBALS.GLOBAL.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MotionBlurThresholdOnFoot",    "28.000000"},
                {"MotionBlurThresholdInVehicle", "12.000000"},
                {"MotionBlurThresholdDefault",   "12.000000"},
              }
            },
          }
        }
      }
    }
  }
}