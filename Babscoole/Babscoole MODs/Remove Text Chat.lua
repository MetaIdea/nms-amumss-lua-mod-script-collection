NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Remove Text Chat",
["MOD_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.30",
["MOD_DESCRIPTION"] = "Hides the multiplayer (and Laylaps) text chat",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "GCUIGLOBALS.GLOBAL.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"TextChatMaxDisplayTime",        "0"},
                {"TextChatStayBigAfterTextInput", "0"},
              }
            },
          }
        },
      }
    }
  }
}