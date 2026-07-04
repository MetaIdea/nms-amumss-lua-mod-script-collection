NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"] = "FastGMap",
["MOD_AUTHOR"] = "stone",
["LUA_AUTHOR"] = "Codex",
["NMS_VERSION"] = "6.40",
["MOD_DESCRIPTION"] = "Aggressively speeds up galaxy map push flight, bumper accelerate movement, route selection, zooming, and center-transition travel.",
["MODIFICATIONS"] =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "GCGALAXYGLOBALS.GLOBAL.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HandControlRotateSpeed", "80.000000"},
                {"HandControlPitchSpeed", "60.000000"},
                {"HandControlMoveSpeed", "500.000000"},
                {"HandControlMoveSpeedTurbo", "5000.000000"},
                {"HandControlMaxOffset", "1500.000000"},
                {"HandControlMoveBlendRate", "30.000000"},
                {"HandControlFreeMoveMaxOffset", "1500.000000"},
                {"HandControlFreeMoveAngleOffset", "60.000000"},
                {"HandControlZoomSpeed", "500.000000"},
                {"PathToTargetLineTimeFactor", "0.005000"},
                {"PathToTargetIndicatorTimeFactor", "0.005000"},
                {"PathUISelectionMultiplierPad", "25.000000"},
                {"PathUISelectionMultiplierMouse", "10.000000"},
                {"PathUIConfirmSelectionMultiplier", "30.000000"},
                {"PathUISelectionMultiplierPushing", "200.000000"},
                {"PathUISelectionGenerosity", "8.000000"},
                {"PathUISelectionMouseDeadZone", "0.020000"},
                {"GalacticPathMaximumJumpDistanceLightyears", "200000.000000"},
                {"GalacticPathPreferGuideStarsTillJump", "1.000000"},
                {"FinalTransitionMaxSpeed", "50000.000000"},
                {"FinalTransitionAcceleration", "50.000000"},
                {"Early Stage Multiplier", "10.000000"}
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Camera"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Movement Blend Rate Free", "80.000000"},
                {"Movement Blend Rate Locked", "40.000000"},
                {"Movement Blend Rate Look Locked", "80.000000"},
                {"Lock Transition Rate", "40.000000"},
                {"Locked Spin Speed", "2.000000"},
                {"Locked Scaled Push Speed", "50000.000000"},
                {"Locked Scaled Elevation Speed", "30.000000"},
                {"Free Pan Speed", "250.000000"},
                {"Free Pan Speed Turbo", "50000.000000"},
                {"Free UpDown Speed", "30.000000"},
                {"Free UpDown Speed Turbo", "120.000000"},
                {"Free Rotate Speed", "4.000000"},
                {"Zoom Out Push Dist", "250.000000"},
                {"Fixed Zoom Rate", "20.000000"},
                {"Zoom Out Rate", "20.000000"},
                {"Zoom In Rate", "50.000000"},
                {"MaxZoomDistance", "10000.000000"},
                {"MinPushingZoomDistance", "5000.000000"},
                {"MinPushingZoomDistanceScaler", "2500.000000"}
              }
            }
          }
        }
      }
    }
  }
}
