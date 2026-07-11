NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "No Parallax Effect",
["MOD_AUTHOR"]      = "AlexVium",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.45",
["MOD_DESCRIPTION"] = "Mod Disables The Parallax Effect In The Interface",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "GCUIGLOBALS.GLOBAL.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["PRECEDING_KEY_WORDS"] =
              {
                {"ControlsPageParallax"},
                {"InWorldNGuiParallax"},
                {"RefinerParallax"},
                {"ModelViewWorldParallax"},
                {"NGuiMin2DParallax"},
                {"NGuiMax2DParallax"},
                {"NGuiModelParallax"},
                {"NGuiShipInteractParallax"},
                {"InteractionWorldParallax"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"X", "0.000000"},
                {"Y", "0.000000"},
              },
            },
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"TargetParallaxMouseMultiplier",           "0.000000"},
                {"TargetParallaxMaintenancePageMultiplier", "0.000000"},
              },
            },
          }
        },
      }
    },
  }
}