NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "No Frigate Damage for Fleet Expeditions",
["MOD_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.18",
["MOD_DESCRIPTION"] = "No Frigate Damage from Fleet Expeditions",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "GCFLEETGLOBALS.GLOBAL.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["PRECEDING_KEY_WORDS"] = {"PercentChanceOfDamageOnFailedEvent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Y", "0.000000"}, -- Original 20.000000
              }
            }
          }
        }
      }
    }
  }
}