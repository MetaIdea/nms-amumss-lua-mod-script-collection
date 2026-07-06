NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Nautilon Alternate Camera",
["MOD_AUTHOR"]      = "HowardCLH",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.45",
["MOD_DESCRIPTION"] = "Adjusts the third-person Nautilon camera to be less obnoxious",
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
              ["SPECIAL_KEY_WORDS"] = {"SubmarineFollowCam", "GcCameraFollowSettings"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"OffsetY",    "4.500000"},
                {"OffsetYAlt", "6.500000"},
              }
            },
          }
        },
      }
    }
  }
}
