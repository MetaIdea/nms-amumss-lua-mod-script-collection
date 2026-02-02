TIME_FACTOR = 2

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "More Pirate Freighter Battle Time",
["MOD_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "6.18",
["MODIFICATIONS"] =
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
                {"PirateFreighterWarpChargeTime",          "@*"..TIME_FACTOR},  --Default 35.000000
                {"PirateFreighterBeginFleeHealthFraction", "@/"..TIME_FACTOR},  --Default 0.250000
                {"MaxTorpedoesInFlight",                   "@/"..TIME_FACTOR},  --Default 12
              }
            },
          }
        },
      }
    }
  }
}