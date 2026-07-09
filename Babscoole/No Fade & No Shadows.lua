NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "No Fade & No Shadows",
["MOD_AUTHOR"]      = "AlexVium",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.45",
["MOD_DESCRIPTION"] = "No Fade And No Shadows",
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
              ["VALUE_CHANGE_TABLE"] =
              {
                {"TerrainFadeTime",       "0.000000"},
                {"TerrainFadeTimeInShip", "0.000000"},
                {"CreatureFadeTime",      "0.000000"},
                {"FloraFadeTimeMin",      "0.000000"},
                {"FloraFadeTimeMax",      "0.000000"},
              },
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "GCGRAPHICSGLOBALS.GLOBAL.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ShadowMapSize",                                 "0"},
                {"ShadowLength",                                  "0.000000"},
                {"ShadowLengthShip",                              "0.000000"},
                {"ShadowLengthSpace",                             "0.000000"},
                {"ShadowLengthStation",                           "0.000000"},
                {"ShadowLengthFreighter",                         "0.000000"},
                {"ShadowLengthFreighterAbandoned",                "0.000000"},
                {"ShadowLengthCameraView",                        "0.000000"},
                {"ShadowBillboardOffset",                         "0.000000"},
                {"MinPixelSizeOfObjectsInShadowsPlanet",          "18.000000"},
                {"MinPixelSizeOfObjectsInShadowsCockpitOnPlanet", "18.000000"},
              },
            },
            {
              ["PRECEDING_KEY_WORDS"] =
              {
                {"ShadowSplit"},
                {"ShadowSplitShip"},
                {"ShadowSplitSpace"},
                {"ShadowSplitStation"},
                {"ShadowSplitCameraView"},
                {"ShadowBias"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"X", "0.000000"},
                {"Y", "0.000000"},
                {"Z", "0.000000"},
              },
            },
          }
        },
      }
    },
  }
}