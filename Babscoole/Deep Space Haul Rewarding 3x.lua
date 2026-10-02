MULTIPLIER = 3

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Deep Space Haul Rewarding 3x",
["MOD_AUTHOR"]      = "razpdr",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "7.01",
["MOD_DESCRIPTION"] = "More items from recovered hulk cargo",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\REWARDTABLE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"ID", "DE_H_SMUGGLE",  "Reward", "GcRewardSpecificProduct"},
                {"ID", "DE_H_BLACKBOX", "Reward", "GcRewardSpecificProduct"},
                {"ID", "DE_H_LOCKBOX",  "Reward", "GcRewardSpecificProduct"},
                {"ID", "DE_H_REACTOR",  "Reward", "GcRewardSpecificProduct"},
                {"ID", "DE_H_CORE",     "Reward", "GcRewardSpecificProduct"},
                {"ID", "DE_H_AUX",      "Reward", "GcRewardSpecificProduct"},
                {"ID", "DE_H_DATACORE", "Reward", "GcRewardSpecificProduct"},
                {"ID", "DE_H_CANISTER", "Reward", "GcRewardSpecificProduct"},
                {"ID", "DE_SLIME_STAR", "Reward", "GcRewardSpecificProduct"},
                {"ID", "DE_SLIME_BLOB", "Reward", "GcRewardSpecificProduct"},
                {"ID", "DE_ASTCRYST_P", "Reward", "GcRewardSpecificProduct"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"AmountMin", "@*"..MULTIPLIER},
                {"AmountMax", "@*"..MULTIPLIER},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"ID", "DE_HULK1",        "Reward", "GcRewardSpecificSubstance"},
                {"ID", "DE_SLIMEPOST1",   "Reward", "GcRewardSpecificSubstance"},
                {"ID", "DE_SLIME_BIG",    "Reward", "GcRewardSpecificSubstance"},
                {"ID", "DE_ASTCRYST_BRK", "Reward", "GcRewardSpecificSubstance"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"AmountMin", "@*"..MULTIPLIER},
                {"AmountMax", "@*"..MULTIPLIER},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "DE_H_COMMON"},
              ["REPLACE_TYPE"] = "ALL", 
              ["VALUE_CHANGE_TABLE"] =
              {
                {"AmountMin", "@*"..MULTIPLIER},
                {"AmountMax", "@*"..MULTIPLIER},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"ID", "DE_SLIME_ORG",    "Reward", "GcRewardSpecificSubstance"},
                {"ID", "DE_ASTCRYST",     "Reward", "GcRewardSpecificSubstance"},
                {"ID", "DE_ASTBELT_FILL", "Reward", "GcRewardSpecificSubstance"},
              },
              ["REPLACE_TYPE"] = "ALL", 
              ["VALUE_CHANGE_TABLE"] =
              {
                {"AmountMin", "@*"..MULTIPLIER},
                {"AmountMax", "@*"..MULTIPLIER},
              }
            },
          }
        },
      }
    },
  }
}
