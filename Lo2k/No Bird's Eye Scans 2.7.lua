NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]   = "No Bird's Eye Scans 2.7",
["MOD_AUTHOR"]     = "Lo2k (based on Penitence)",
["LUA_AUTHOR"]     = "Lo2k (based on Penitence)",
["NMS_VERSION"]    = "6.23",
["MOD_DESCRIPTION" = "Disables Aerial Camera Zoom on Waypoints, Beacons, Signals, and Transmission Towers",
["MODIFICATIONS"]  =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "GCCAMERAGLOBALS.GLOBAL.MBIN",
          ["EXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"FocusBuildingModePlanarControlSettings",   "GcCameraFocusBuildingControlSettings"},
                {"FocusBuildingModeVerticalControlSettings", "GcCameraFocusBuildingControlSettings"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"StepSize", "0.000000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BEACON"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Time",                      "0.000000"},
                {"AerialViewMode",            "FaceDown"},
                {"TimeBack",                  "0.000000"},
                {"StartTime",                 "0.000000"},
                {"PauseTime",                 "0.000000"},
                {"LookTime",                  "0.000000"},
                {"Distance",                  "0.100000"},
                {"FocusTargetOffsetDistance", "0.000000"},
                {"SpeedLineDist",             "0.000000"},
              },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "WAYPOINT"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Time",                      "0.500000"},
                {"TimeBack",                  "0.200000"},
                {"StartTime",                 "0.000000"},
                {"PauseTime",                 "0.000000"},
                {"LookTime",                  "0.000000"},
                {"Distance",                  "-0.5000000"},
                {"FocusTargetOffsetDistance", "0.000000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "RADIO_TOWER"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Time",                      "0.000000"},
                {"TimeBack",                  "0.000000"},
                {"StartTime",                 "0.000000"},
                {"PauseTime",                 "0.000000"},
                {"LookTime",                  "0.000000"},
                {"Distance",                  "0.100000"},
                {"FocusTargetOffsetDistance", "0.000000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "RADIO_TOWER", "CurveDown", "TkCurveType"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Curve", "SmoothInOut"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "RADIO_TOWER", "SlerpCurve", "TkCurveType"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Curve", "FastInSlowOut"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "VISUAL_ONLY"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Time",                      "0.000000"},
                {"AerialViewMode",            "FaceDown"},
                {"TimeBack",                  "0.000000"},
                {"StartTime",                 "0.000000"},
                {"PauseTime",                 "0.000000"},
                {"LookTime",                  "0.000000"},
                {"Distance",                  "0.1000000"},
                {"FocusTargetOffsetDistance", "0.000000"},
                {"SpeedLineDist",             "0.000000"},
              },
            },
          }
        }
      }
    }
  }
}