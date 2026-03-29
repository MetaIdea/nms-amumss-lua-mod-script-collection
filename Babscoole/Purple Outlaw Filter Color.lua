NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Purple Outlaw Filter Color",
["MOD_AUTHOR"]      = "frostnburn",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.20",
["MOD_DESCRIPTION"] = "Changes the conflict filter color so that the outlaw conflict stars now has its own color (purple), rather than sharing its color with high conflict stars for easier distinguishing",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"]   =
      {
        {
          ["MBIN_FILE_SOURCE"]  = "GCGALAXYGLOBALS.GLOBAL.MBIN",
          ["MXML_CHANGE_TABLE"]   =
          {
            {
              ["PRECEDING_KEY_WORDS"] = {"ConflictFilterDefaultColours", "Pirate"},
              ["VALUE_CHANGE_TABLE"]  =
              {
                {"R", "0.563000"},
                {"G", "0.246000"},
                {"B", "1.000000"},
                {"A", "0.550000"},
              }
            },
          }
        },
      }
    }
  }
}