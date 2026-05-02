NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Balanced Runaway Mould",
["MOD_AUTHOR"]      = "zchott",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.34",
["MOD_DESCRIPTION"] = "Rebalances runaway mould",
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
              ["SPECIAL_KEY_WORDS"] = {"Id", "DE_RARE_ROLLER", "ID", "SPACEGUNK2"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"AmountMin", "20"},
                {"AmountMax", "40"},
              }
            },
          }
        }
      }
    }
  }
}