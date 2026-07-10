NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Afraid Of The Dark",
["MOD_AUTHOR"]      = "Markroft",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.45",
["MOD_DESCRIPTION"] = "Buffs your spotlight and also restores derelict freighter emergency power supply, so you can actually see where you're going",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "GCENVIRONMENTGLOBALS.GLOBAL.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["PRECEDING_KEY_WORDS"] = {"IndoorsLightingFactorFreighterAbandoned"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "1.000000"},
                {"G", "1.000000"},
                {"B", "1.000000"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PlayerAmbientSpotLightIntensity", "2.500000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"PlayerAmbientSpotLightColour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.950000"},
                {"G", "0.993000"},
                {"B", "0.944000"},
              }
            },
          }
        },
      }
    },
  }
}