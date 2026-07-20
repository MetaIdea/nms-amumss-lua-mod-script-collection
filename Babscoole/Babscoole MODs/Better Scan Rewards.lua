MULTIPLIER = 2

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Better Scan Rewards",
["MOD_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.40",
["MOD_DESCRIPTION"] = "Doubles base scan rewards for Fauna, Flora, and Minerals",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] =  "METADATA\REALITY\DEFAULTREALITY.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Animal",  "GcDiscoveryWorth"},
                {"Flora",   "GcDiscoveryWorth"},
                {"Mineral", "GcDiscoveryWorth"},
              },
              ["PRECEDING_KEY_WORDS"] =
              {
                {"Record"},
                {"OnScan"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Common",   "@*"..MULTIPLIER},
                {"Uncommon", "@*"..MULTIPLIER},
                {"Rare",     "@*"..MULTIPLIER},
              }
            },
          }
        },
      }
    },
  },
}