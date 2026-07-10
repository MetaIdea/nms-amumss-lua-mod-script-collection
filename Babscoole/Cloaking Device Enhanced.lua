NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Cloaking Device Enhanced",
["MOD_AUTHOR"]      = "Mumbles",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.45",
["MOD_DESCRIPTION"] = "Makes the Cloaking Device Last Longer",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "GCPLAYERGLOBALS.GLOBAL.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"StealthMinLevel",     "0.150000"},
                {"StealthDrainRate",    "1.000000"},
                {"StealthRechargeRate", "200.000000"},
                {"StealthBaseCharge",   "500"},
              }
            },
          }
        },
      }
    },
  }
}