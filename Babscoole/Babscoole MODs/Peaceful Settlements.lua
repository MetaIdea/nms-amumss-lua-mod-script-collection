NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Peaceful Settlements",
["MOD_DESCRIPTION"] = "Increases time between settlement attacks",
["MOD_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.18",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "GCSETTLEMENTGLOBALS.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"AlertCycleDurationInSeconds",     "720000"},  --original 2600
                {"BugAttackCycleDurationInSeconds", "720000"},  --original 9000
              }
            }
          }
        }
      }
    }
  }
}