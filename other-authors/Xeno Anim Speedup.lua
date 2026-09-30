NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Xeno Anim Speedup",
["MOD_AUTHOR"]      = "Mariti",
["LUA_AUTHOR"]      = "Mariti",
["NMS_VERSION"]     = "7.04",
["MOD_DESCRIPTION"] = "Makes all editable Xeno Arena animation timers instant",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "GLOBALS\GCGAMETABLEGLOBALS.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] = {
                {"OutroTimer", "0.000000"},
                {"AIWaitTimeMin", "0.000000"},
                {"AIWaitTimeMax", "0.000000"},
                {"MoveIntroTime", "0.000000"},
                {"MultiMovePause", "0.000000"},
                {"MoveOutroTime", "0.000000"},
                {"PostMovePauseTime", "0.000000"},
                {"PetKOSwapDelayTime", "0.000000"},
                {"PerPetXPAnimDelay", "0.000000"},
              }
            },
          }
        }
      }
    }
  }
}