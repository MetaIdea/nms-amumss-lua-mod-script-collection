NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]   = "Hyper HyperDrive",
["MOD_AUTHOR"]     = "courtykat and Babscoole",
["NMS_VERSION"]    = "6.18",
["MOD_DESCRIPTION"] = "Unlimited hyperdrive range — Makes it possible to jump to the center of the galaxy from any distance",
["MODIFICATIONS"]  =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "HYPERDRIVE", "StatsType", "Ship_Hyperdrive_JumpDistance"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus", "1000000"}, -- Original "100"
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "WARP_ALIEN", "StatsType", "Ship_Hyperdrive_JumpDistance"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus", "1000000"}, -- Original "100"
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "F_HYPERDRIVE", "StatsType", "Freighter_Hyperdrive_JumpDistance"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus", "1000000"}, -- Original "100"
              }
            },
          }
        },
      }
    },
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "GCGALAXYGLOBALS.GLOBAL.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Free Pan Speed",             "1.25"}, -- Original "0.8"
                {"Free Pan Speed Turbo",       "275"},  -- Original "2.75"
                -- {"Star Blur Intro Multiplier", "0"},    -- Original "0.8"
                -- {"Anostreak Alpha",            "0"},    -- Original "2.75"
              }
            },
            -- {
              -- ["SPECIAL_KEY_WORDS"] =
              -- {
                -- {"StartingLocation", "GcGalaxyMarkerSettings"},
                -- {"Home",             "GcGalaxyMarkerSettings"},
                -- {"Waypoint",         "GcGalaxyMarkerSettings"},
                -- {"Contact",          "GcGalaxyMarkerSettings"},
                -- {"Blackhole",        "GcGalaxyMarkerSettings"},
                -- {"AtlasStation",     "GcGalaxyMarkerSettings"},
                -- {"Selection",        "GcGalaxyMarkerSettings"},
                -- {"PlanetBase",       "GcGalaxyMarkerSettings"},
                -- {"Visited",          "GcGalaxyMarkerSettings"},
                -- {"ScanEvent",        "GcGalaxyMarkerSettings"},
                -- {"Expedition",       "GcGalaxyMarkerSettings"},
                -- {"NetworkPlayer",    "GcGalaxyMarkerSettings"},
                -- {"Freighter",        "GcGalaxyMarkerSettings"},
                -- {"PathIcon",         "GcGalaxyMarkerSettings"},
                -- {"SeasonParty",      "GcGalaxyMarkerSettings"},
                -- {"Settlement",       "GcGalaxyMarkerSettings"},
                -- {"Blackhole",        "GcGalaxyMarkerSettings"},
                -- {"AtlasStation",     "GcGalaxyMarkerSettings"},
              -- },
              -- ["VALUE_CHANGE_TABLE"] =
              -- {
                -- {"RadiusFixed",      "0"},
                -- {"RadiusMinimum",    "0"},
                -- {"RadiusBaseOffset", "0"},
                -- {"RadiusEdge",       "0"},
                -- {"Icon",             ""},
                -- {"MarkerLabel",      ""},
              -- }
            -- },
            -- {
              -- ["SPECIAL_KEY_WORDS"] =
              -- {
                  -- {"StartingLocation", "GcGalaxyMarkerSettings"},
                  -- {"Home",             "GcGalaxyMarkerSettings"},
                  -- {"Waypoint",         "GcGalaxyMarkerSettings"},
                  -- {"Contact",          "GcGalaxyMarkerSettings"},
                  -- {"Blackhole",        "GcGalaxyMarkerSettings"},
                  -- {"AtlasStation",     "GcGalaxyMarkerSettings"},
                  -- {"Selection",        "GcGalaxyMarkerSettings"},
                  -- {"PlanetBase",       "GcGalaxyMarkerSettings"},
                  -- {"Visited",          "GcGalaxyMarkerSettings"},
                  -- {"ScanEvent",        "GcGalaxyMarkerSettings"},
                  -- {"Expedition",       "GcGalaxyMarkerSettings"},
                  -- {"NetworkPlayer",    "GcGalaxyMarkerSettings"},
                  -- {"Freighter",        "GcGalaxyMarkerSettings"},
                  -- {"PathIcon",         "GcGalaxyMarkerSettings"},
                  -- {"SeasonParty",      "GcGalaxyMarkerSettings"},
                  -- {"Settlement",       "GcGalaxyMarkerSettings"},
                  -- {"Blackhole",        "GcGalaxyMarkerSettings"},
                  -- {"AtlasStation",     "GcGalaxyMarkerSettings"},
              -- },
              -- ["PRECEDING_KEY_WORDS"] = {"IconSize"},
              -- ["VALUE_CHANGE_TABLE"] =
              -- {
                  -- {"X", "0"},
                  -- {"Y", "0"},
              -- }
          -- },
          -- {
              -- ["SPECIAL_KEY_WORDS"] =
              -- {
                -- {"Anostreak Alpha Curve", "TkCurveType"},
                -- {"Anostreak Value Curve", "TkCurveType"},
              -- },
              -- ["VALUE_CHANGE_TABLE"] =
              -- {
                -- {"Curve", "Linear"},
              -- }
          -- },
          }
        },
      }
    },
  }
}