-- ClearRoute
-- Thicker, brighter current-mission galactic-map path for easier spotting.
-- Visited / free-explore trails stay at vanilla visibility (globals can't toggle by map mode).

NMS_MOD_DEFINITION_CONTAINER =
{
  ["MOD_FILENAME"]    = "ClearRoute",
  ["MOD_AUTHOR"]      = "calma",
  ["LUA_AUTHOR"]      = "Cursor",
  ["NMS_VERSION"]     = "6.45",
  ["MOD_DESCRIPTION"] = "Thicker high-contrast mission path on the galactic map",
  ["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "GCGALAXYGLOBALS.GLOBAL.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              -- Thicker path ribbon + livelier dash pattern
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PathUIWidth",     "14"},   -- Original "4.5"
                {"StarPathUIWidth", "10"},   -- Original "3.0"
                {"PathUIDotLength", "0.45"}, -- Original "0.8"
                {"PathUIGapLength", "0.35"}, -- Original "1.0"

                -- Faster path/indicator animation (reads more like a pulse)
                {"PathToTargetLineTimeFactor",      "0.12"}, -- Original "0.3"
                {"PathToTargetIndicatorTimeFactor", "0.05"}, -- Original "0.15"

                -- Keep the active route bright all the way to the goal
                {"Path Rendering Selected Start Alpha", "1.0"},  -- Original "0.8"
                {"Path Rendering Selected End Alpha",   "0.85"}, -- Original "0.075"
                {"Path Rendering Selected Step Alpha",  "0.75"}, -- Original "0.1"

                -- Stronger selection-tree path visibility
                {"Selection Tree Alpha", "0.95"}, -- Original "0.5"
              }
            },
            {
              -- High-contrast cyan route colour (clearer than green for many colorblind users)
              ["PRECEDING_KEY_WORDS"] = {"Selection Tree Colour"},
              ["INTEGER_TO_FLOAT"]    = "FORCE",
              ["VALUE_CHANGE_TABLE"]  =
              {
                {"R", "0.05"}, -- Original ~0.59
                {"G", "0.95"}, -- Original ~0.74
                {"B", "1.00"}, -- Original ~0.79
                {"A", "1.00"},
              }
            },
            {
              -- Enlarge mission scan-event (target system) marker
              ["SPECIAL_KEY_WORDS"] = {"ScanEvent", "GcGalaxyMarkerSettings"},
              ["INTEGER_TO_FLOAT"]  = "FORCE",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"LineWidth",     "6"},   -- Original "3"
                {"SizeScale",     "160"}, -- Original "100"
                {"RadiusFixed",   "22"},  -- Original "16"
                {"RadiusMinimum", "14"},  -- Original "10"
              }
            },
            {
              ["SPECIAL_KEY_WORDS"]   = {"ScanEvent", "GcGalaxyMarkerSettings"},
              ["PRECEDING_KEY_WORDS"] = {"IconSize"},
              ["INTEGER_TO_FLOAT"]    = "FORCE",
              ["VALUE_CHANGE_TABLE"]  =
              {
                {"X", "80"}, -- Original "50"
                {"Y", "80"},
              }
            },
            {
              -- Bigger path waypoint ticks along the route
              ["SPECIAL_KEY_WORDS"] = {"PathIcon", "GcGalaxyMarkerSettings"},
              ["INTEGER_TO_FLOAT"]  = "FORCE",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"LineWidth",   "5"},  -- Original "2"
                {"SizeScale",   "40"}, -- Original "20"
                {"RadiusFixed", "18"}, -- Original "12"
              }
            },
            {
              ["SPECIAL_KEY_WORDS"]   = {"PathIcon", "GcGalaxyMarkerSettings"},
              ["PRECEDING_KEY_WORDS"] = {"IconSize"},
              ["INTEGER_TO_FLOAT"]    = "FORCE",
              ["VALUE_CHANGE_TABLE"]  =
              {
                {"X", "70"}, -- Original "50"
                {"Y", "70"},
              }
            },
          }
        },
      }
    },
  }
}