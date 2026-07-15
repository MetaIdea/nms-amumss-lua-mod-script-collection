NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "PU_NoAutoAim",
["MOD_AUTHOR"]      = "Trevix",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.30",
["MOD_DESCRIPTION"] = "Decreases auto aim strenght when playing on controller",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "GCPLAYERGLOBALS.GLOBAL.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"AutoAim", "false"}
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"StickData", "GcPlayerStickData"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"AcceleratorStickPoint", "1.750000"},
                {"AcceleratorMinTime",    "0.000000"},
                {"Accelerate",            "0.0000"},
                {"AccelerateAngle",       "5.000000"},
                {"Turn",                  "2.400000"},
                {"TurnFast",              "2.400000"},
                {"StickyFactor",          "0.2500000"},
              }
            },
          }
        },
      }
    }
  }
}