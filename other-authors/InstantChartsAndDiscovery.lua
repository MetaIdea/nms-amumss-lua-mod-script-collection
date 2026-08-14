-- InstantChartsAndDiscovery
-- (renamed/evolved from FastSaveAndChart)
-- Near-zero discovery / Save-and-Chart lock + planetary chart scans.
-- Camera snap cannot be fully deleted from data; distance/times crushed to ~0.
-- Leaves ROBO_REVEAL aerial alone (story beat).

NMS_MOD_DEFINITION_CONTAINER =
{
  ["MOD_FILENAME"]    = "InstantChartsAndDiscovery",
  ["MOD_AUTHOR"]      = "calma",
  ["LUA_AUTHOR"]      = "calma",
  ["NMS_VERSION"]     = "6.45",
  ["MOD_DESCRIPTION"] =
    "Near-instant Save-and-Chart, discovery fade/banner, and planetary chart scans.",
  ["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "GCCAMERAGLOBALS.GLOBAL.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["INTEGER_TO_FLOAT"] = "FORCE",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"AerialViewDownDistance", "0.01"}, -- vanilla 40
                {"AerialViewPause",        "0.01"}, -- vanilla 2.0
                {"AerialViewStartTime",    "0.01"}, -- vanilla 1.5
                {"AerialViewBackTime",     "0.01"}, -- vanilla 1.5
                {"AerialViewBlendTime",    "0.01"}, -- vanilla 1.0
                {"ScreenshotInTime",       "0.01"}, -- vanilla 1.5
                {"ScreenshotOutTime",      "0.01"}, -- vanilla 0.3
              }
            },
            -- Distance 0 = no pull-back snap; times ~cancel the hold
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "WAYPOINT"},
              ["INTEGER_TO_FLOAT"] = "FORCE",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Time", "0.01"}, {"TimeBack", "0.01"}, {"StartTime", "0.01"},
                {"PauseTime", "0.01"}, {"LookTime", "0.01"}, {"Distance", "0"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BEACON"},
              ["INTEGER_TO_FLOAT"] = "FORCE",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Time", "0.01"}, {"TimeBack", "0.01"}, {"StartTime", "0.01"},
                {"PauseTime", "0.01"}, {"LookTime", "0.01"}, {"Distance", "0"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SIGNAL"},
              ["INTEGER_TO_FLOAT"] = "FORCE",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Time", "0.01"}, {"TimeBack", "0.01"}, {"StartTime", "0.01"},
                {"PauseTime", "0.01"}, {"LookTime", "0.01"}, {"Distance", "0"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "RADIO_TOWER"},
              ["INTEGER_TO_FLOAT"] = "FORCE",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Time", "0.01"}, {"TimeBack", "0.01"}, {"StartTime", "0.01"},
                {"PauseTime", "0.01"}, {"LookTime", "0.01"}, {"Distance", "0"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "VISUAL_ONLY"},
              ["INTEGER_TO_FLOAT"] = "FORCE",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Time", "0.01"}, {"TimeBack", "0.01"}, {"StartTime", "0.01"},
                {"PauseTime", "0.01"}, {"LookTime", "0.01"}, {"Distance", "0"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["INTEGER_TO_FLOAT"] = "FORCE",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"WaypointScanTime",                  "0.01"}, -- vanilla 3.0
                {"NewDiscoveryDisplayTime",           "0.05"}, -- vanilla 2.0
                {"SimpleInteractionMessageTime",      "0.05"}, -- vanilla 2.0
                {"InteractionMessageModuleDisplayTime","0.05"}, -- vanilla 4.0
                {"TimeToDisplayScanResults",           "0.05"}, -- vanilla 5.0
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "GCUIGLOBALS.GLOBAL.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["INTEGER_TO_FLOAT"] = "FORCE",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MilestoneStingDisplayTime", "0.05"}, -- vanilla 6.0
                {"StageStingDisplayTime",     "0.05"}, -- vanilla 6.0
                {"StandingRewardOSDTime",     "0.05"}, -- vanilla 1.5
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"DiscoveryHelperTimings", "GcDiscoveryHelperTimings"},
              ["INTEGER_TO_FLOAT"] = "FORCE",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"DiscoverPlanetTotalTime",   "0.2"},  -- vanilla 10
                {"DiscoverPlanetMessageWait", "0.01"}, -- vanilla 1
                {"DiscoverPlanetMessageTime", "0.05"}, -- vanilla 7
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "METADATA/REALITY/TABLES/REWARDTABLE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["REPLACE_TYPE"] = "ALL",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"DoAerialScan", "False"},
              }
            },
            {
              ["REPLACE_TYPE"] = "ALL",
              ["INTEGER_TO_FLOAT"] = "FORCE",
              ["VALUE_MATCH"] = "6",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"StartDelay", "0.01"}, -- vanilla chart scans use 6.0
              }
            },
          }
        },
      }
    },
  }
}