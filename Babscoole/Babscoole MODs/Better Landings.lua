NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Better Landings",
["MOD_AUTHOR"]      = "degraaaff and Babscoole",
["NMS_VERSION"]     = "5.73",
["MOD_DESCRIPTION"] = "This mod improves the way that spaceships land by reducing the height at which they drop down to the ground. They will also descend a bit more flat.",
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
                { "LandingHoverOffset",       "0" },    --Original "3"
                { "HoverSpeedFactor",         "10" },   --Original "20"
                { "HoverLandReachedDistance", "4" },    --Original "10"
                { "LandingPushNoseUpFactor",  "-0.05" },  --Original "0.15"
                { "Curve",                    "SlowOut" }, --Original "ReallySlowOut"
              }
            }
          }
        }
      }
    }
  }
}
