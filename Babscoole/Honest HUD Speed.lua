NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Honest HUD Speed",
["MOD_AUTHOR"]      = "Metachs",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.18",
["MOD_DESCRIPTION"] = "Makes the game honestly display your ship's actual speed by disabling several HUD speed readout multipliers",
["MODIFICATIONS"]   =
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
                {"SpeedReadoutMultiplier",       "1.000000"},
                {"SpaceSpeedReadoutMultiplier",  "1.000000"},
                {"CombatSpeedReadoutMultiplier", "1.000000"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "GCSPACESHIPGLOBALS.GLOBAL.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HUDBoostUpgradeMultiplier", "0.000000"},
              }
            },
          }
        },
      }
    }
  }
}