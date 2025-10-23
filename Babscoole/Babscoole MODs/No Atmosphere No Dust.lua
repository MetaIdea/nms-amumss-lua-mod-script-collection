NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "No Atmo No Dust",
["MOD_AUTHOR"]      = "degraaaff & Babscoole",
["NMS_VERSION"]     = "6.10",
["MOD_DESCRIPTION"] = "Removes flying dust (and optionally, fog) from no-atmosphere planets.",
["MODIFICATIONS"] =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\CLEARCOLD.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                { "HeavyAir", "MODELS/EFFECTS/HEAVYAIR/MARS/MARS.SCENE.MBIN" }, --Original ""
              }
            }
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\CLEARWEATHER.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                { "HeavyAir", "MODELS/EFFECTS/HEAVYAIR/MARS/MARS.SCENE.MBIN" }, --Original ""
              }
            }
          }
        }
      }
    }
  }
}
