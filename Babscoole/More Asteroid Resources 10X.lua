NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "More Asteroid Resources 10X",
["MOD_AUTHOR"]      = "BeardWeasel",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "5.52",
["MOD_DESCRIPTION"] = "Modifies asteroids to provide more resources",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "GCSOLARGENERATIONGLOBALS.GLOBAL.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Rare Asteroid Min Resources",              "50"},
                {"Rare Asteroid Max Resources",              "100"},
                {"Common Asteroid Min Resources",            "30"},
                {"Common Asteroid Max Resources",            "50"},
                {"Fuel Asteroid Multiplier",                 "20"},
                {"Common Asteroid Resource Fuel Multiplier", "10"},
              }
            },
          }
        },
      }
    },
  }
}
