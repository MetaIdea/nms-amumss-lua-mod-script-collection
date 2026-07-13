NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "gShip Pulse Blocking Radius Decrease",
["MOD_AUTHOR"]      = "Gumsk",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.05",
["MOD_DESCRIPTION"] = "Decreases the blocking radius around various objects that prevents you from pulsing",
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
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MiniWarpPlanetRadius",         "200.000000"},
                {"MiniWarpStationRadius",        "300.000000"},
                {"MiniWarpStoppingMarginPlanet", "2000.000000"},
                {"MiniWarpMinPlanetDistance",    "1000.000000"},
              }
            },
          }
        },
      }
    }
  }
}