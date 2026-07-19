NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "MemFrag Inventory",
["MOD_AUTHOR"]      = "JMZawodny",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "5.75",
["MOD_DESCRIPTION"] = "zMemFrag Inventory will force the Memory Fragment Inventory item to work only on StarShips",
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
              ["SPECIAL_KEY_WORDS"] = {"Id", "R_ROGUE_INV", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 0,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance", "0.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "R_ROGUE_INV", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance", "100.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "R_ROGUE_INV", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 2,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance", "0.000000"},
              }
            },
          }
        },
      }
    }
  }
}
