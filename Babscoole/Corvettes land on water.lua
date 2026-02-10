NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Corvettes land on water",
["MOD_AUTHOR"]      = "GLITCHED MATRIX",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.18",
["MOD_DESCRIPTION"] = "Your ship will hover closer to the water's surface",
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
                {"LandingHoverOffset",              "0.000000"},
                {"LandingWaterHoverOffset",         "0.000000"},
                {"LandingWaterHoverHeight",         "0.000000"},
                {"LandingWaterHoverHeightCorvette", "0.000000"},
              }
            }
          }
        }
      }
    }
  }
}
