MULTIPLIER = 100

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "More Nanites From Recycling x10",
["MOD_AUTHOR"]      = "JeanLucPicardNMS",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.45",
["MOD_DESCRIPTION"] = "Gain more nanites from recycling waste",
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
                {"Id", "R_CARGO_SCRAP"},
                {"Id", "R_CARGO_FURNACE"},
                {"Id", "R_CARGO_DRONE"},
                {"Id", "R_CARGO_QUAD"},
                {"Id", "R_CARGO_MECH"},
                {"Id", "R_CARGO_CORR"},
                {"Id", "R_CARGO_SPIDER"},
                {"Id", "R_CARGO_TOX_L"},
                {"Id", "R_CARGO_TOX_M"},
                {"Id", "R_CARGO_TOX_S"},
                {"Id", "R_CARGO_RAD_L"},
                {"Id", "R_CARGO_RAD_M"},
                {"Id", "R_CARGO_RAD_S"},
                {"Id", "R_CARGO_EXP_L"},
                {"Id", "R_CARGO_EXP_M"},
                {"Id", "R_CARGO_EXP_S"},
              },
              ["PRECEDING_KEY_WORDS"] = {"GcRewardRecycleSpecificObject"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "@*"..MULTIPLIER}
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "R_CARGO_DESTROY"},
              ["PRECEDING_KEY_WORDS"] = {"GcRewardRecycleAllObjInVolume"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "@*"..MULTIPLIER}
              }
            },
          }
        },
      }
    }
  }
}