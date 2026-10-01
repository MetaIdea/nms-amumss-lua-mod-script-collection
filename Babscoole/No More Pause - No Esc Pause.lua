NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "No More Pause - No Esc Pause",
["MOD_AUTHOR"]      = "EdgeTypE",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "7.04",
["MOD_DESCRIPTION"] = "Stops No Man's Sky from pausing and freezing when you Alt-Tab away",
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