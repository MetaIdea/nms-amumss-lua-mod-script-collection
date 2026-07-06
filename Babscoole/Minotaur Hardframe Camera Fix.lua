NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Minotaur Hardframe Camera Fix",
["MOD_AUTHOR"]      = "HowardCLH",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.45",
["MOD_DESCRIPTION"] = "Adjusts the camera for the Hardframe mech so you can see what you're shooting",
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
                {"MechCameraArmShootOffsetY", "1.800000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"MechFollowCam",  "GcCameraFollowSettings"},
                {"MechCombatCam",  "GcCameraFollowSettings"},
                {"MechJetpackCam", "GcCameraFollowSettings"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"OffsetX",         "2.600000"},
                {"OffsetY",         "1.600000"},
                {"BackMinDistance", "8.000000"},
                {"UpMinDistance",   "0.000000"},
              }
            },
          }
        },
      }
    }
  }
}
