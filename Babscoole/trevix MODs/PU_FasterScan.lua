NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "PU_FasterScan",
["MOD_AUTHOR"]      = "Trevix",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.30",
["MOD_DESCRIPTION"] = "Scaning is fast. very fast",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BinocTimeBeforeScan",   "0.200000"},
                {"BinocMinScanTime",      "0.500000"},
                {"BinocScanTime",         "0.500000"},
                {"BinocCreatureScanTime", "0.750000"},
              },
            },
          }
        },
      }
    },
  }
}