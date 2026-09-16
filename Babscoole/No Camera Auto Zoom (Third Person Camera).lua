NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "No Camera Auto Zoom (Third Person Camera)",
["MOD_AUTHOR"]    = "docex",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "7.00",
["MODIFICATIONS"] =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "GCCAMERAGLOBALS.GLOBAL.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"CharacterMiningCam",  "GcCameraFollowSettings"},
                {"CharacterCombatCam",  "GcCameraFollowSettings"},
                {"CharacterFishingCam", "GcCameraFollowSettings"},
                {"CharacterRunCam",     "GcCameraFollowSettings"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BackMinDistance", "4.000000"},
                {"BackMaxDistance", "5.500000"},
                {"OffsetX",         "0.800000"},
                {"OffsetY",         "-0.600000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"CharacterRunCam", "GcCameraFollowSettings"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HorizRotationAngleMaxPerFrame", "20.000000"},
              }
            },
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ThirdPersonCombatFoV", "70.000000"},
              }
            },
          }
        },
      }
    },
  }
}
