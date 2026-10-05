NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Actually Extreme Gas Giants-EXGasGiantsDangerousWater",
["MOD_AUTHOR"]      = "Grouch",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "7.05",
["MOD_DESCRIPTION"] = "Increases Gas Giant water hazard strength to storm levels",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\GASGIANTWEATHER.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["PRECEDING_KEY_WORDS"] = {"Temperature", "Water"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Extreme", "92.000000"},
              }
            },
          }
        },
      }
    }
  }
}