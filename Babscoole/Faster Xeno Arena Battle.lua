NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Faster Xeno Arena Battle",
["MOD_AUTHOR"]      = "Kilvoctu",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.32",
["MOD_DESCRIPTION"] = "Speeds up Xeno Arena battling",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "GCGAMETABLEGLOBALS.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"AIWaitTimeMin",         "0.000000"},
                {"AIWaitTimeMax",         "0.000000"},
                {"MoveIntroTime",         "0.000000"},
                {"MoveOutroTime",         "0.000000"},
                {"PostMovePauseTime",     "0.000000"},
                {"PetKOSwapDelayTime",    "0.000000"},
                {"PetEffectCooldownTime", "0.500000"},
                {"PetHealthBarAnimSpeed", "300.000000"},
              }
            },
          }
        }
      }
    }
  }
}