NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "All ships have a stop",
["MOD_AUTHOR"]      = "Phantom7z1",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.40",
["MOD_DESCRIPTION"] = "All ships have a stop",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "GCSPACESHIPGLOBALS.GLOBAL.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["PRECEDING_KEY_WORDS"] =
              {
                {"Control",           "PlanetEngine"},
                {"ControlLight",      "PlanetEngine"},
                {"ControlHeavy",      "PlanetEngine"},
                {"ControlHeavyHover", "PlanetEngine"},
                {"ControlHover",      "PlanetEngine"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinSpeed", "0.100000"},
              }
            },
          }
        },
      }
    }
  }
}