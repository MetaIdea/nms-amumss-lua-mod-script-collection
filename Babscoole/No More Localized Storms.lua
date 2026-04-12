NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "No More Localized Storms",
["MOD_AUTHOR"]      = "HadToRegister",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "5.58",
["MOD_DESCRIPTION"] = "This mod removes those newly added, and annoying Localized Storms",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\WEATHERHAZARDS.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Id", "GRAVANOMALY"},
                {"Id", "ELECANOMALY"},
                {"Id", "RADIOANOMALY"},
                {"Id", "TOXICCLOUD"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MaxHazardsOfThisTypeActive",     "0"},
                {"SpawnAttemptsPerRegion",         "0"},
                {"SpawnChancePerSecondPerAttempt", "0.000000"},
              }
            },
          }
        }
      }
    }
  }
}