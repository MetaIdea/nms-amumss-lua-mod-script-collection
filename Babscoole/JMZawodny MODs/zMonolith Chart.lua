NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "zMonolith Chart",
["MOD_AUTHOR"]      = "JMZawodny",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "5.75",
["MOD_DESCRIPTION"] = "zMonolith Chart will force Alien Cartographic Charts to return the location of the nearest Monolith",
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
              ["SPECIAL_KEY_WORDS"] = {"Id", "R_STARCHART_D", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 0,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance", "0.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "R_STARCHART_D", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"DoAerialScan", "false"},
                {"StartDelay",   "2.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "R_STARCHART_D", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 2,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance", "0.000000"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SCANNING\SCANEVENTTABLEPLANET.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "MONOLITH"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ForceWideRandom",    "false"},
                {"MessageDisplayTime", "1.000000"},
                {"IconTime",           "1.000000"},
                {"TooltipTime",        "2.000000"},
                {"ShowEndTooltip",     "false"},
              }
            },
          }
        },
      }
    }
  }
}
