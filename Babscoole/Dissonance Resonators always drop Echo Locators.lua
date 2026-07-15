NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Dissonance Resonators always drop Echo Locators",
["MOD_AUTHOR"]      = "VelocityFTW",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.36",
["MOD_DESCRIPTION"] = "A focused gameplay mod that makes Dissonance Resonators always drop Echo Locators while preserving their normal rewards. While adding a 10x multiplier to Echo Locators",
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
              ["SPECIAL_KEY_WORDS"] = {"Id", "DE_MINIHIVE"},
              ["REPLACE_TYPE"] = "ALL",        
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance", "100.000000"},
                {"RewardChoice", "GiveAll"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "DE_MINIHIVE", "ID", "CHART_ROBOT"},            
              ["REPLACE_TYPE"] = "ALL",        
              ["VALUE_CHANGE_TABLE"] =
              {
                {"AmountMin", "10"},
                {"AmountMax", "10"},
              }
            },
          }
        },
      }
    }
  }
}