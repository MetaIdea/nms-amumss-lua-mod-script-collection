NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Disable Profanity Filter",
["MOD_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.20",
["MOD_DESCRIPTION"] = "Disabled profanity filter in chat",
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
                {"DisableProfanityFilter", "true"},
              }
            },
          }
        },
      }
    }
  }
}