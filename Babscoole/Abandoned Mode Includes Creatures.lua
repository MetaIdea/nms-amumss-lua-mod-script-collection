NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Abandoned Mode Includes Creatures",
["MOD_AUTHOR"]      = "Raevyxn",
["MUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.23",
["MOD_DESCRIPTION"] = "AMIC brings Normal creature spawn rates to Abandoned solar systems",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\ECOSYSTEM\CREATUREGENERATIONDATA.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"AbandonedSystemSpecific", "GcCreatureGenerationOptionalWeightedList"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"OverrideAllDomains", "false"},
              }
            },
          }
        },
      }
    },
  }
}