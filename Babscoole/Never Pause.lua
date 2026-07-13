NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Never Pause",
["MOD_AUTHOR"]      = "SarcasticBlackcat",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.00",
["MOD_DESCRIPTION"] = "Disables all pausing",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "GCDEBUGOPTIONS.GLOBAL.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"AlwaysHaveFocus", "true"},
                {"AllowPause",      "false"},
              }
            },
          }
        },
      }
    }
  }
}