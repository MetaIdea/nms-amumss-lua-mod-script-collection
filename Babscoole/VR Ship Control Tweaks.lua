NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "VR Ship Control Tweaks",
["MOD_AUTHOR"]      = "Aceship",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.10",
["MOD_DESCRIPTION"] = "Make the Ship controls in VR less sensitive while making the joystick/throttle cover larger area for a more precise small aiming",
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
                {"HandControllerXReorientationMove", "40.000000"},
                {"HandControllerZReorientationMove", "10.000000"},
                {"HandControllerXReorientation",     "10.000000"},
                {"HandControllerZReorientation",     "0.000000"},
                {"HandControllerThrottleDistance",   "0.060000"},
                {"HandControllerThrottleRange",      "30.000000"},
                {"HandControllerThrottleDeadZone",   "0.000000"},
                {"HandControllerDirOffsetAngle",     "20.000000"},
                {"HandControllerDirOffsetAngleMove", "0.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HandControllerValueMultiplier"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"X", "1.000000"},
                {"Y", "0.800000"},
                {"Z", "0.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HandControllerValueMultiplierSpace"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"X", "1.000000"},
                {"Y", "1.000000"},
                {"Z", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HandControllerDeadZone"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"X", "0.200000"},
                {"Y", "0.200000"},
                {"Z", "0.200000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HandControllerExtents"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"X", "1.000000"},
                {"Y", "0.800000"},
                {"Z", "0.800000"},
              }
            },
          }
        },
      }
    }
  }
}