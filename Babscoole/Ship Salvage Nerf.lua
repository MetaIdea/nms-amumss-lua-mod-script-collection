NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Ship Salvage Nerf",
["MOD_AUTHOR"]      = "zchott",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.34",
["MOD_DESCRIPTION"] = "lowers the trade in multiplier of all ship to 50% from 70% and sentinel ship to 15%",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\INVENTORYTABLE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Dropship",   "GcInventoryCostDataEntry"},
                {"Fighter",    "GcInventoryCostDataEntry"},
                {"Scientific", "GcInventoryCostDataEntry"},
                {"Shuttle",    "GcInventoryCostDataEntry"},
                {"Royal",      "GcInventoryCostDataEntry"},
                {"Alien",      "GcInventoryCostDataEntry"},
                {"Sail",       "GcInventoryCostDataEntry"},
                {"Corvette",   "GcInventoryCostDataEntry"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"TradeInMultiplier", "50.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Robot", "GcInventoryCostDataEntry"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"TradeInMultiplier", "15.000000"},
              }
            },
          }
        }
      }
    }
  }
}