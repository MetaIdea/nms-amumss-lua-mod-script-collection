NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "SensitivityFix+Zoom",
["MOD_AUTHOR"]    = "ItsOnlyTyrus",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "5.03",
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
              ["SPECIAL_KEY_WORDS"] = {"CharacterUnarmedCam", "GcCameraFollowSettings"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HorizRotationAngleMaxPerFrame", "25"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"CharacterRunCam", "GcCameraFollowSettings"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HorizRotationAngleMaxPerFrame", "20"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"CharacterIndoorCam", "GcCameraFollowSettings"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HorizRotationAngleMaxPerFrame", "20"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"CharacterAirborneCam", "GcCameraFollowSettings"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HorizRotationAngleMaxPerFrame", "20"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"CharacterMeleeBoostCam", "GcCameraFollowSettings"},
              ["VALUE_CHANGE_TABLE"] =
                {
                  {"HorizRotationAngleMaxPerFrame", "0"},
                }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"CharacterRocketBootsCam", "GcCameraFollowSettings"},
              ["VALUE_CHANGE_TABLE"] =
                {
                  {"HorizRotationAngleMaxPerFrame", "20"},
                }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"CharacterFallingCam", "GcCameraFollowSettings"},
              ["VALUE_CHANGE_TABLE"] =
                {
                  {"HorizRotationAngleMaxPerFrame", "20"},
                }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"CharacterCombatCam", "GcCameraFollowSettings"},
              ["VALUE_CHANGE_TABLE"] =
                {
                  {"BackMinDistance", "4.5"},
                  {"BackMaxDistance", "6"},
                }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"CharacterAirborneCombatCam", "GcCameraFollowSettings"},
              ["VALUE_CHANGE_TABLE"] =
                {
                  {"HorizRotationAngleMaxPerFrame", "25"},
                }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"CharacterRocketBootsCam", "GcCameraFollowSettings"},
              ["VALUE_CHANGE_TABLE"] =
                {
                  {"HorizRotationAngleMaxPerFrame", "20"},
                }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"MechJetpackCam", "GcCameraFollowSettings"},
              ["VALUE_CHANGE_TABLE"] =
              {
                  {"HorizRotationAngleMaxPerFrame", "15"},
              }
            },
          }
        }
      }
    }
  }
}