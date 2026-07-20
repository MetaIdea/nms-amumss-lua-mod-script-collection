NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]      = "Aerial Camera Zoom Reduction",
["MOD_AUTHOR"]        = "Penitence",
["NMS_VERSION"]       = "5.58",
["MOD_DESCRIPTION"]     = "Disables Aerial Camera Zoom on Waypoints, Beacons, Signals, and Transmission Towers",
["MODIFICATIONS"]       =
  {
    {
      ["MBIN_CHANGE_TABLE"]   =
      {
        {
          ["MBIN_FILE_SOURCE"]  = "GCCAMERAGLOBALS.GLOBAL.MBIN",
          ["EXML_CHANGE_TABLE"]   =
          {
            {
              ["VALUE_CHANGE_TABLE"]  =
              {
                {"AerialViewDownDistance",    "0"}, --original "40"
                {"AerialViewPause",   "0"}, --original "2"
                {"AerialViewStartTime",   "0"}, --original "1.5"
                {"AerialViewBackTime",    "0"}, --original "1.5"
                {"AerialViewBlendTime",   "0"}, --original "1"
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BEACON"},
              ["PRECEDING_KEY_WORDS"] = {"CameraAerialViewData"},
              ["VALUE_CHANGE_TABLE"]  =
              {
                {"Time", "0.1"},
                {"TimeBack", "0.1"},
                {"StartTime", "0.1"},
                {"PauseTime", "0.1"},
                {"LookTime", "0.1"},
                {"Distance", "0.1"},
                {"SpeedLineDist", "0.1"}
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SIGNAL"},
              ["PRECEDING_KEY_WORDS"] = {"CameraAerialViewData"},
              ["VALUE_CHANGE_TABLE"]  =
              {
                {"Time", "0"},
                {"TimeBack", "0"},
                {"StartTime", "0"},
                {"PauseTime", "0"},
                {"LookTime", "0"},
                {"Distance", "0"},
                {"TargetOffsetAngle", "30"},
                {"SpeedLineDist", "0"}
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "WAYPOINT"},
              ["PRECEDING_KEY_WORDS"] = {"CameraAerialViewData"},
              ["VALUE_CHANGE_TABLE"]  =
              {
                {"Time", "0.1"},
                {"TimeBack", "0.1"},
                {"StartTime", "0"},
                {"PauseTime", "0"},
                {"LookTime", "0"},
                {"Distance", "0"},
                {"SpeedLineDist", "0"}
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "RADIO_TOWER"},
              ["PRECEDING_KEY_WORDS"] = {"CameraAerialViewData"},
              ["VALUE_CHANGE_TABLE"]  =
              {
                {"Time", "0"},
                {"TimeBack", "0"},
                {"StartTime", "0"},
                {"PauseTime", "0"},
                {"LookTime", "0"},
                {"Distance", "0"},
                {"SpeedLineDist", "0"}
              },
            },
          }
        }
      }
    }
  }
}