NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Longer and Shorter Days-1sec",
["MOD_AUTHOR"]      = "Florian B. & Babscoole",
["NMS_VERSION"]     = "6.18",
["MOD_DESCRIPTION"] = "30 minutes - is it too short or too long? You can now make days longer or shorter.",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "GCSKYGLOBALS.GLOBALS.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"DayLength", "1"},
              }
            },
          }
        },
      }
    },
  }
}