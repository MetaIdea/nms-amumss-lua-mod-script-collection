NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "No Atmo No Fog",
["MOD_AUTHOR"]      = "degraaaff & Babscoole",
["NMS_VERSION"]     = "5.73",
["MOD_DESCRIPTION"] = "Now with add-on to remove fog as well!",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "GCSKYGLOBALS.GLOBALS.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                { "NoAtmosphereFogStrength", "0" }, --Original "0.3"
                { "NoAtmosphereFogMax",      "0" }, --Original "0.97"
              }
            }
          }
        }
      }
    }
  }
}