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
              ["SPECIAL_KEY_WORDS"] = {"SpaceshipFollowCam", "GcCameraFollowSettings"},
              ["VALUE_CHANGE_TABLE"] = 
              {
                {"Name",            "SPACESHIP"},
                {"OffsetX",         "7.000000"},
                {"OffsetY",         "2.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"DropshipFollowCam", "GcCameraFollowSettings"},
              ["VALUE_CHANGE_TABLE"] = 
              {
                {"Name",            "DROPSHIP"},
                {"OffsetX",         "7.000000"},
                {"OffsetY",         "1.500000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ShuttleFollowCam", "GcCameraFollowSettings"},
              ["VALUE_CHANGE_TABLE"] = 
              {
                {"Name",            "SHUTTLE"},
                {"OffsetX",         "7.000000"},
                {"OffsetY",         "4.700000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"RoyalShipFollowCam", "GcCameraFollowSettings"},
              ["VALUE_CHANGE_TABLE"] = 
              {
                {"Name",            "ROYAL"},
                {"OffsetX",         "7.000000"},
                {"OffsetY",         "4.100000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"SailShipFollowCam", "GcCameraFollowSettings"},
              ["VALUE_CHANGE_TABLE"] = 
              {
                {"Name",            "SAILSHIP"},
                {"OffsetX",         "7.000000"},
                {"OffsetY",         "3.700000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ScienceShipFollowCam", "GcCameraFollowSettings"},
              ["VALUE_CHANGE_TABLE"] = 
              {
                {"Name",            "SCIENCE"},
                {"OffsetX",         "7.000000"},
                {"OffsetY",         "3.500000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"AlienShipFollowCam", "GcCameraFollowSettings"},
              ["VALUE_CHANGE_TABLE"] = 
              {
                {"Name",            "ALIENSHIP"},
                {"OffsetX",         "7.000000"},
                {"OffsetY",         "3.500000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"RobotShipFollowCam", "GcCameraFollowSettings"},
              ["VALUE_CHANGE_TABLE"] = 
              {
                {"Name",            "ROBOTSHIP"},
                {"OffsetX",         "7.000000"},
                {"OffsetY",         "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"CorvetteFollowCam", "GcCameraFollowSettings"},
              ["VALUE_CHANGE_TABLE"] = 
              {
                {"Name",            "CORVETTE"},
                {"OffsetX",         "7.000000"},
                {"OffsetY",         "10.500000"},
              }
            },
          }
        },
      }
    },
  }
}