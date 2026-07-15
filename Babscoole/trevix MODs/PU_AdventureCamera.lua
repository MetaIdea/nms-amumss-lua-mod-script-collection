NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "PU_AdventureCamera",
["MOD_AUTHOR"]      = "Trevix",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.30",
["MOD_DESCRIPTION"] = "Changes third person camera farther from the player",
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
                {"MinFirstPersonCameraPitch", "89"},  
                {"MaxFirstPersonCameraPitch", "89"},
                {"BobAmount",                 "0.13"},
                {"BobFactor",                 "0.13"},
                {"BobFocus",                  "100"},
                {"BobRollFactor",             "0.200000"},
                {"BobRollAmount",             "0.01000"},
                {"BobFwdAmount",              "0.02500000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"CharacterUnarmedCam", "GcCameraFollowSettings"},
              ["VALUE_CHANGE_TABLE"] = 
              {
                {"Name",            "CHARUNARMED"},
                {"OffsetX",         "0.800000"},
                {"OffsetY",         "-0.10000"},
                {"BackMinDistance", "9.00000"},
                {"BackMaxDistance", "10.40000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"CharacterRunCam", "GcCameraFollowSettings"},
              ["VALUE_CHANGE_TABLE"] = 
              {
                {"Name",            "CHARRUN"},
                {"OffsetX",         "0.600000"},
                {"OffsetY",         "-0.35000"},
                {"BackMinDistance", "9.00000"},
                {"BackMaxDistance", "11.50000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"CharacterCombatCam", "GcCameraFollowSettings"},
              ["VALUE_CHANGE_TABLE"] = 
              {
                {"Name",            "CHARCOMBAT"},
                {"OffsetX",         "0.700000"},
                {"OffsetY",         "0.05000"},
                {"BackMinDistance", "6.50000"},
                {"BackMaxDistance", "10.20000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"CharacterMiningCam", "GcCameraFollowSettings"},
              ["VALUE_CHANGE_TABLE"] = 
              {
                {"Name",            "CHARMINE"},
                {"OffsetX",         "0.650000"},
                {"OffsetY",         "-0.10000"},
                {"BackMinDistance", "7.00000"},
                {"BackMaxDistance", "10.20000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"CharacterNexusCam", "GcCameraFollowSettings"},
              ["VALUE_CHANGE_TABLE"] = 
              {
                {"Name",            "CHARNEXUS"},
                {"OffsetX",         "0.400000"},
                {"OffsetY",         "-0.30000"},
                {"BackMinDistance", "8.50000"},
                {"BackMaxDistance", "9.20000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"CharacterAirborneCam", "GcCameraFollowSettings"},
              ["VALUE_CHANGE_TABLE"] = 
              {
                {"Name",            "CHARJETPACK"},
                {"OffsetX",         "0.800000"},
                {"OffsetY",         "-0.10000"},
                {"BackMinDistance", "9.00000"},
                {"BackMaxDistance", "12.20000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"CharacterMeleeBoostCam", "GcCameraFollowSettings"},
              ["VALUE_CHANGE_TABLE"] = 
              {
                {"Name",            "CHARMELBOOST"},
                {"OffsetX",         "0.600000"},
                {"OffsetY",         "-0.35000"},
                {"BackMinDistance", "7.50000"},
                {"BackMaxDistance", "15.00000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"CharacterRocketBootsCam", "GcCameraFollowSettings"},
              ["VALUE_CHANGE_TABLE"] = 
              {
                {"Name",            "ROCKETBOOTS"},
                {"OffsetX",         "0.600000"},
                {"OffsetY",         "0.00000"},
                {"BackMinDistance", "8.50000"},
                {"BackMaxDistance", "12.00000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"CharacterRocketBootsChargeCam", "GcCameraFollowSettings"},
              ["VALUE_CHANGE_TABLE"] = 
              {
                {"Name",            "ROCKETBOOTSCHRG"},
                {"OffsetX",         "0.800000"},
                {"OffsetY",         "-0.30000"},
                {"BackMinDistance", "7.50000"},
                {"BackMaxDistance", "8.50000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"CharacterFallingCam", "GcCameraFollowSettings"},
              ["VALUE_CHANGE_TABLE"] = 
              {
                {"Name",            "CHARFALL"},
                {"OffsetX",         "0.800000"},
                {"OffsetY",         "-0.10000"},
                {"BackMinDistance", "9.00000"},
                {"BackMaxDistance", "25.00000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"CharacterAirborneCombatCam", "GcCameraFollowSettings"},
              ["VALUE_CHANGE_TABLE"] = 
              {
                {"Name",            "CHARJETCOMBAT"},
                {"OffsetX",         "0.600000"},
                {"OffsetY",         "0.00000"},
                {"BackMinDistance", "8.50000"},
                {"BackMaxDistance", "12.00000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"CharacterSpaceCam", "GcCameraFollowSettings"},
              ["VALUE_CHANGE_TABLE"] = 
              {
                {"Name",            "CHARUNDERWATER"},
                {"OffsetX",         "0.200000"},
                {"OffsetY",         "-0.10000"},
                {"BackMinDistance", "13.00000"},
                {"BackMaxDistance", "15.00000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"CharacterSteepSlopeCam", "GcCameraFollowSettings"},
              ["VALUE_CHANGE_TABLE"] = 
              {
                {"Name",            "CHARSLOPE"},
                {"OffsetX",         "0.400000"},
                {"OffsetY",         "-0.70000"},
                {"BackMinDistance", "8.00000"},
                {"BackMaxDistance", "11.00000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"CharacterSurfaceWaterCam", "GcCameraFollowSettings"},
              ["VALUE_CHANGE_TABLE"] = 
              {
                {"Name",            "CHARWATER"},
                {"OffsetX",         "0.550000"},
                {"OffsetY",         "0.83000"},
                {"BackMinDistance", "11.00000"},
                {"BackMaxDistance", "9.50000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"CharacterUnderwaterCam", "GcCameraFollowSettings"},
              ["VALUE_CHANGE_TABLE"] = 
              {
                {"Name",            "CHARUNDERWATER"},
                {"OffsetX",         "0.550000"},
                {"OffsetY",         "-0.10000"},
                {"BackMinDistance", "8.35000"},
                {"BackMaxDistance", "10.50000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"CharacterUnderwaterCombatCam", "GcCameraFollowSettings"},
              ["VALUE_CHANGE_TABLE"] = 
              {
                {"Name",            "WETCOMBAT"},
                {"OffsetX",         "0.700000"},
                {"OffsetY",         "-0.10000"},
                {"BackMinDistance", "8.60000"},
                {"BackMaxDistance", "13.00000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"CharacterUnderwaterJetpackCam", "GcCameraFollowSettings"},
              ["VALUE_CHANGE_TABLE"] = 
              {
                {"Name",            "WETJETPACK"},
                {"OffsetX",         "0.550000"},
                {"OffsetY",         "-0.10000"},
                {"BackMinDistance", "8.35000"},
                {"BackMaxDistance", "12.00000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"CharacterUnderwaterJetpackAscentCam", "GcCameraFollowSettings"},
              ["VALUE_CHANGE_TABLE"] = 
              {
                {"Name",            "WATERASCENT"},
                {"OffsetX",         "0.000000"},
                {"OffsetY",         "-0.50000"},
                {"BackMinDistance", "8.35000"},
                {"BackMaxDistance", "14.00000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"CharacterSitCam", "GcCameraFollowSettings"},
              ["VALUE_CHANGE_TABLE"] = 
              {
                {"Name",            "CHARSIT"},
                {"OffsetX",         "0.400000"},
                {"OffsetY",         "-0.70000"},
                {"BackMinDistance", "9.00000"},
                {"BackMaxDistance", "9.90000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"CharacterRideCam", "GcCameraFollowSettings"},
              ["VALUE_CHANGE_TABLE"] = 
              {
                {"Name",            "CHARRIDEMED"},
                {"OffsetX",         "0.000000"},
                {"OffsetY",         "0.50000"},
                {"BackMinDistance", "15.00000"},
                {"BackMaxDistance", "20.00000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"CharacterRideCamMedium", "GcCameraFollowSettings"},
              ["VALUE_CHANGE_TABLE"] = 
              {
                {"Name",            "CHARRIDEMED"},
                {"OffsetX",         "0.000000"},
                {"OffsetY",         "0.50000"},
                {"BackMinDistance", "15.00000"},
                {"BackMaxDistance", "20.00000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"CharacterRideCamLarge", "GcCameraFollowSettings"},
              ["VALUE_CHANGE_TABLE"] = 
              {
                {"Name",            "CHARRIDELRG"},
                {"OffsetX",         "0.000000"},
                {"OffsetY",         "0.50000"},
                {"BackMinDistance", "23.00000"},
                {"BackMaxDistance", "30.00000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"CharacterRideCamHuge", "GcCameraFollowSettings"},
              ["VALUE_CHANGE_TABLE"] = 
              {
                {"Name",            "CHARRIDEHUGE"},
                {"OffsetX",         "0.000000"},
                {"OffsetY",         "0.50000"},
                {"BackMinDistance", "43.00000"},
                {"BackMaxDistance", "55.00000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"FlatbedFollowCam", "GcCameraFollowSettings"},
              ["VALUE_CHANGE_TABLE"] = 
              {
                {"Name",               "FLATBED"},
                {"OffsetY",            "6.600000"},
                {"OffsetYMinSpeed",    "4.000000"},
                {"OffsetYAlt",         "5.000000"},
                {"OffsetYSlopeExtra",  "3.000000"},
                {"OffsetZFlat",        "4.500000"},
                {"UseMinSpeedYOffset", "false"},
                {"BackMinDistance",    "24.000000"},
                {"BackMaxDistance",    "32.000000"},
                {"BackSlopeAdjust",    "0.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"SpaceshipFollowCam", "GcCameraFollowSettings"},
              ["VALUE_CHANGE_TABLE"] = 
              {
                {"Name",            "SPACESHIP"},
                {"OffsetX",         "0.000000"},
                {"OffsetY",         "1.70000"},
                {"BackMinDistance", "25.00000"},
                {"BackMaxDistance", "83.00000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"DropshipFollowCam", "GcCameraFollowSettings"},
              ["VALUE_CHANGE_TABLE"] = 
              {
                {"Name",            "DROPSHIP"},
                {"OffsetX",         "0.000000"},
                {"OffsetY",         "1.00000"},
                {"BackMinDistance", "25.00000"},
                {"BackMaxDistance", "45.00000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ShuttleFollowCam", "GcCameraFollowSettings"},
              ["VALUE_CHANGE_TABLE"] = 
              {
                {"Name",            "SHUTTLE"},
                {"OffsetX",         "0.000000"},
                {"OffsetY",         "4.70000"},
                {"BackMinDistance", "27.00000"},
                {"BackMaxDistance", "50.00000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"RoyalShipFollowCam", "GcCameraFollowSettings"},
              ["VALUE_CHANGE_TABLE"] = 
              {
                {"Name",            "ROYAL"},
                {"OffsetX",         "0.000000"},
                {"OffsetY",         "4.10000"},
                {"BackMinDistance", "25.00000"},
                {"BackMaxDistance", "45.00000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"SailShipFollowCam", "GcCameraFollowSettings"},
              ["VALUE_CHANGE_TABLE"] = 
              {
                {"Name",            "SAILSHIP"},
                {"OffsetX",         "0.000000"},
                {"OffsetY",         "3.70000"},
                {"BackMinDistance", "25.00000"},
                {"BackMaxDistance", "45.00000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ScienceShipFollowCam", "GcCameraFollowSettings"},
              ["VALUE_CHANGE_TABLE"] = 
              {
                {"Name",            "SCIENCE"},
                {"OffsetX",         "0.000000"},
                {"OffsetY",         "3.50000"},
                {"BackMinDistance", "25.00000"},
                {"BackMaxDistance", "40.00000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"AlienShipFollowCam", "GcCameraFollowSettings"},
              ["VALUE_CHANGE_TABLE"] = 
              {
                {"Name",            "ALIENSHIP"},
                {"OffsetX",         "0.000000"},
                {"OffsetY",         "3.50000"},
                {"BackMinDistance", "25.00000"},
                {"BackMaxDistance", "35.00000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"RobotShipFollowCam", "GcCameraFollowSettings"},
              ["VALUE_CHANGE_TABLE"] = 
              {
                {"Name",            "ROBOTSHIP"},
                {"OffsetX",         "0.000000"},
                {"OffsetY",         "1.00000"},
                {"BackMinDistance", "23.00000"},
                {"BackMaxDistance", "45.00000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"CorvetteFollowCam", "GcCameraFollowSettings"},
              ["VALUE_CHANGE_TABLE"] = 
              {
                {"Name",            "CORVETTE"},
                {"OffsetX",         "0.000000"},
                {"OffsetY",         "10.50000"},
                {"BackMinDistance", "33.00000"},
                {"BackMaxDistance", "45.00000"},
              }
            },
          }
        },
      }
    },
  }
}