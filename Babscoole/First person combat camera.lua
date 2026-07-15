NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "First person combat camera",
["MOD_AUTHOR"]      = "Phantom7z1",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.45",
["MOD_DESCRIPTION"] = "When playing in third-person mode, selecting the multi-tool's combat mode automatically switches to first-person view",
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
              ["SPECIAL_KEY_WORDS"] = {"CharacterCombatCam", "GcCameraFollowSettings"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinSpeed",                 "4.000000"},
                {"SpeedRange",               "20.000000"},
                {"OffsetX",                  "0.000000"}, 
                {"OffsetY",                  "-0.72000"},  
                {"OffsetYAlt",               "0.000000"},
                {"BackMinDistance",          "0.900000"},
                {"BackMaxDistance",          "0.900000"},
                {"BackSlopeAdjust",          "0.000000"},
                {"BackSlopeRotationAdjust",  "0.000000"},
                {"UpSlopeAdjust",            "0.000000"},
                {"SpringSpeed",              "0.02000"},
              }
            },
          }
        },
      }
    }
  }
}