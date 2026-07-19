NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "zNo Junk",
["MOD_AUTHOR"]      = "JMZawodny",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.20",
["MOD_DESCRIPTION"] = "zNo Junk eliminates the junk piles",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\PLACEMENTVALUES\SPAWNDENSITYLIST.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "P_JUNK_SMALL"},
                {"Name", "P_JUNK_LARGE"},
              },
              ["REMOVE"] = "SECTION"
            },
          }
        },
      }
    }
  }
}
