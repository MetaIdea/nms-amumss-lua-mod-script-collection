NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "Disable Upload All",
["MOD_AUTHOR"]    = "DY230",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "6.18",
["MODIFICATIONS"] =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "UI\DISCOVERYPAGE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "UPLOAD_ALL"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Is Hidden", "true"},
              }
            },
          }
        },
      }
    },
  }
}
