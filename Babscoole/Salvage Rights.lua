NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Salvage Rights",
["MOD_AUTHOR"]      = "robmac367",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.45",
["MOD_DESCRIPTION"] = "Corvette salvage always hands you a real part. Vanilla puts every cockpit, shield, generator, turret and landing gear behind a 40% roll; this makes that roll certain.",
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
              ["SPECIAL_KEY_WORDS"] = {"Id", "R_SCRAPHEAP"},
              ["REPLACE_TYPE"] = "ALL",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance", "100.000000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "R_SCRAPHEAP", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 3,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance", "10.000000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "R_SPACEBIGGS", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance", "100.000000"},
              },
            },
          }
        },
      }
    }
  }
}