NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Know All Glyphs",
["MOD_AUTHOR"]      = "Grouch",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.44",
["MOD_DESCRIPTION"] = "An extra mod that makes it so all of the portal glyphs are already known",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Portal", "GcPortalData"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"KnowAllRunes", "true"},
              }
            },
          }
        },
      }
    }
  }
}