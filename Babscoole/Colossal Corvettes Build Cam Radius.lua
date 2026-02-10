NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Colossal Corvettes Build Cam Radius",
["MOD_AUTHOR"]      = "Ulfyn",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.18",
["MOD_DESCRIPTION"] = "increases the camera radius",
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
              ["SPECIAL_KEY_WORDS"] = {"ShipConstructionFreeCameraSettings", "GcCameraFreeSettings"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MaxDistance", "40000.000000"},
              }
            }
          }
        }
      }
    }
  }
}
