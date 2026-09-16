NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "zNo Lumps",
["MOD_AUTHOR"]      = "JMZawodny",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.05",
["MOD_DESCRIPTION"] = "zNo Lumps prevents you from being rewarded with useless blobs of animal remains",
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
                {"Id", "PROC_PROD_BIO"},
                {"Id", "DE_RARE_LUMP"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance", "0.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "DE_PET_ROCK", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 7,
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
