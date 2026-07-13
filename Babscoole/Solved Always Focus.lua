NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Solved Always Focus",
["MOD_AUTHOR"]      = "Solved",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.00",
["MOD_DESCRIPTION"] = "Prevents the game from losing focus and therefore pausing when alt tab",
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
              }
            },
          }
        },
      }
    }
  }
}