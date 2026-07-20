NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "All Unused Features",
["MOD_AUTHOR"]      = "ThatBomberBoi",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "5.58",
["MOD_DESCRIPTION"] = "Re-implements every functional, yet unused, feature found in the game to best of our modding capabilities",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "GCBUILDINGGLOBALS.GLOBAL.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseBuildingCameraMode", "FocusCam"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\ENVIRONMENT\PLANETBUILDINGTABLE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Traders",   "GcBuildingFilenameList", "Beacon", "GcBuildingFilename"},
                {"Warriors",  "GcBuildingFilenameList", "Beacon", "GcBuildingFilename"},
                {"Explorers", "GcBuildingFilenameList", "Beacon", "GcBuildingFilename"},
              },
              ["PRECEDING_KEY_WORDS"] = {"Scene"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Normal",          "MODELS/PLANETS/COMMON/WRECKS/IRONGIANT.SCENE.MBIN"},
                {"AbandonedSystem", "MODELS/PLANETS/COMMON/WRECKS/IRONGIANT.SCENE.MBIN"},
              }
            },
          }
        },
      }
    }
  }
}