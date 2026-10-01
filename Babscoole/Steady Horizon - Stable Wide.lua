NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Steady Horizon - Stable Wide",
["MOD_AUTHOR"]      = "razpdr",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "7.01",
["MOD_DESCRIPTION"] = "reduces residual wander, bob, landing shake and optional ship-camera motion",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "GCCAMERAGLOBALS.GLOBAL.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"CamWander1Amplitude",          "0"},
                {"CamWander2Amplitude",          "0"},
                {"BobAmount",                    "0"},
                {"BobAmountAbandFreighter",      "0"},
                {"BobFwdAmount",                 "0"},
                {"BobRollAmount",                "0"},
                {"RunningFoVAdjust",             "0"},
                {"SClassLandingShakeMultiplier", "0"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
               {"CharacterUnarmedCam", "GcCameraFollowSettings"},
               {"CharacterMiningCam",  "GcCameraFollowSettings"},
               {"CharacterCombatCam",  "GcCameraFollowSettings"},
             },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BackMinDistance", "6.500000"},
                {"BackMaxDistance", "6.500000"},
              }
            },
          }
        },
      }
    },
  }
}
