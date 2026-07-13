NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Pissed Off Freighters",
["MOD_AUTHOR"]      = "Bluescreen800832",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.10",
["MOD_DESCRIPTION"] = "All Freighter will be agro even before you shoot them",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "GCAISPACESHIPGLOBALS.GLOBAL.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"FreighterAlertThreshold",          "0.000000"},
                {"FreighterAttackDisengageDistance", "8000.000000"},
                {"FreighterAttackAlertThreshold",    "0.000000"},
                {"VisibleDistance",                  "8500.000000"},
                {"MinAggroDamage",                   "0"},
                {"FreightersAlwaysAttackPlayer",     "true"},
              }
            },
          }
        },
      }
    }
  }
}