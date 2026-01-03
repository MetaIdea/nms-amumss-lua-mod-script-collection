NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "Peaceful Permanent Rain",
["MOD_AUTHOR"]    = "Exosolar",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "2.62",
["MODIFICATIONS"] =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\WEATHERLIST.MBIN",
          ["EXML_CHANGE_TABLE"] =
          {
            {
              ["PRECEDING_KEY_WORDS"] = {"Table", "Humid"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"value", "METADATA/SIMULATION/SOLARSYSTEM/WEATHER/RAINWEATHER.MXML"}
              }
            },
          }
        },
      }
    }
  }
}