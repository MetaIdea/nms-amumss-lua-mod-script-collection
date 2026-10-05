NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Obvious Star Colors",
["MOD_AUTHOR"]      = "Grouch",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.41",
["MOD_DESCRIPTION"] = "Replaces the star colors on the galaxy map with their extremes, making them the exact color that they are supposed to represent. This makes it extremely obvious which star is which color.",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = {"GCGALAXYGLOBALS.GLOBAL.MBIN"},
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["PRECEDING_KEY_WORDS"] =
              {
                {"BaseStarDefaultColours",      "Yellow"},
                {"BaseStarProtanopiaColours",   "Yellow"},
                {"BaseStarDeuteranopiaColours", "Yellow"},
                {"BaseStarTritanopiaColours",   "Yellow"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "1.000000"},
                {"G", "1.000000"},
                {"B", "0.000000"},
                {"A", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] =
              {
                {"BaseStarDefaultColours",      "Green"},
                {"BaseStarProtanopiaColours",   "Green"},
                {"BaseStarDeuteranopiaColours", "Green"},
                {"BaseStarTritanopiaColours",   "Green"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.000000"},
                {"G", "1.000000"},
                {"B", "0.000000"},
                {"A", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] =
              {
                {"BaseStarDefaultColours",      "Blue"},
                {"BaseStarProtanopiaColours",   "Blue"},
                {"BaseStarDeuteranopiaColours", "Blue"},
                {"BaseStarTritanopiaColours",   "Blue"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.000000"},
                {"G", "0.000000"},
                {"B", "1.000000"},
                {"A", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] =
              {
                {"BaseStarDefaultColours",      "Red"},
                {"BaseStarProtanopiaColours",   "Red"},
                {"BaseStarDeuteranopiaColours", "Red"},
                {"BaseStarTritanopiaColours",   "Red"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "1.000000"},
                {"G", "0.000000"},
                {"B", "0.000000"},
                {"A", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] =
              {
                {"BaseStarDefaultColours",      "Purple"},
                {"BaseStarProtanopiaColours",   "Purple"},
                {"BaseStarDeuteranopiaColours", "Purple"},
                {"BaseStarTritanopiaColours",   "Purple"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "1.000000"},
                {"G", "0.000000"},
                {"B", "1.000000"},
                {"A", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] =
              {
                {"ConflictFilterProtanopiaColours",   "Low"},
                {"ConflictFilterDeuteranopiaColours", "Low"},
                {"ConflictFilterTritanopiaColours",   "Low"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.424000"},
                {"G", "1.000000"},
                {"B", "0.243000"},
                {"A", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] =
              {
                {"ConflictFilterProtanopiaColours",   "Default"},
                {"ConflictFilterDeuteranopiaColours", "Default"},
                {"ConflictFilterTritanopiaColours",   "Default"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "1.000000"},
                {"G", "0.751000"},
                {"B", "0.109000"},
                {"A", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] =
              {
                {"ConflictFilterProtanopiaColours",   "High"},
                {"ConflictFilterDeuteranopiaColours", "High"},
                {"ConflictFilterTritanopiaColours",   "High"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "1.000000"},
                {"G", "0.204000"},
                {"B", "0.204000"},
                {"A", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] =
              {
                {"ConflictFilterDefaultColours",      "Pirate"},
                {"ConflictFilterProtanopiaColours",   "Pirate"},
                {"ConflictFilterDeuteranopiaColours", "Pirate"},
                {"ConflictFilterTritanopiaColours",   "Pirate"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.800000"},
                {"G", "0.333333"},
                {"B", "0.000000"},
                {"A", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] =
              {
                {"GalacticWaypointProtanopiaColours"},
                {"GalacticWaypointDeuteranopiaColours"},
                {"GalacticWaypointTritanopiaColours"},
              },
              ["SECTION_ACTIVE"] = {0},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "1.000000"},
                {"G", "0.613000"},
                {"B", "0.000000"},
                {"A", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] =
              {
                {"GalacticWaypointProtanopiaColours"},
                {"GalacticWaypointDeuteranopiaColours"},
                {"GalacticWaypointTritanopiaColours"},
              },
              ["SECTION_ACTIVE"] = {1},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.820000"},
                {"G", "0.788000"},
                {"B", "0.788000"},
                {"A", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] =
              {
                {"GalacticWaypointProtanopiaColours"},
                {"GalacticWaypointDeuteranopiaColours"},
                {"GalacticWaypointTritanopiaColours"},
              },
              ["SECTION_ACTIVE"] = {2},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.180000"},
                {"G", "0.652000"},
                {"B", "0.967000"},
                {"A", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] =
              {
                {"GalacticWaypointProtanopiaColours"},
                {"GalacticWaypointDeuteranopiaColours"},
                {"GalacticWaypointTritanopiaColours"},
              },
              ["SECTION_ACTIVE"] = {3},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.648000"},
                {"G", "0.162000"},
                {"B", "1.000000"},
                {"A", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] =
              {
                {"GalacticWaypointProtanopiaColours"},
                {"GalacticWaypointDeuteranopiaColours"},
                {"GalacticWaypointTritanopiaColours"},
              },
              ["SECTION_ACTIVE"] = {4},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.877000"},
                {"G", "0.123000"},
                {"B", "0.123000"},
                {"A", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] =
              {
                {"GalacticWaypointProtanopiaColours"},
                {"GalacticWaypointDeuteranopiaColours"},
                {"GalacticWaypointTritanopiaColours"},
              },
              ["SECTION_ACTIVE"] = {5},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.000000"},
                {"G", "0.877000"},
                {"B", "0.070000"},
                {"A", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] =
              {
                {"GalacticWaypointProtanopiaColours"},
                {"GalacticWaypointDeuteranopiaColours"},
                {"GalacticWaypointTritanopiaColours"},
              },
              ["SECTION_ACTIVE"] = {6},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.000000"},
                {"G", "0.877000"},
                {"B", "0.070000"},
                {"A", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] =
              {
                {"RaceFilterProtanopiaColours",   "Traders"},
                {"RaceFilterDeuteranopiaColours", "Traders"},
                {"RaceFilterTritanopiaColours",   "Traders"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "1.000000"},
                {"G", "0.962000"},
                {"B", "0.370000"},
                {"A", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] =
              {
                {"RaceFilterProtanopiaColours",   "Warriors"},
                {"RaceFilterDeuteranopiaColours", "Warriors"},
                {"RaceFilterTritanopiaColours",   "Warriors"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "1.000000"},
                {"G", "0.282000"},
                {"B", "0.282000"},
                {"A", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] =
              {
                {"RaceFilterProtanopiaColours",   "Explorers"},
                {"RaceFilterDeuteranopiaColours", "Explorers"},
                {"RaceFilterTritanopiaColours",   "Explorers"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.500000"},
                {"G", "0.910000"},
                {"B", "1.000000"},
                {"A", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] =
              {
                {"RaceFilterProtanopiaColours",   "Robots"},
                {"RaceFilterDeuteranopiaColours", "Robots"},
                {"RaceFilterTritanopiaColours",   "Robots"},
                {"RaceFilterProtanopiaColours",   "Atlas"},
                {"RaceFilterDeuteranopiaColours", "Atlas"},
                {"RaceFilterTritanopiaColours",   "Atlas"},
                {"RaceFilterProtanopiaColours",   "Diplomats"},
                {"RaceFilterDeuteranopiaColours", "Diplomats"},
                {"RaceFilterTritanopiaColours",   "Diplomats"},
                {"RaceFilterProtanopiaColours",   "Exotics"},
                {"RaceFilterDeuteranopiaColours", "Exotics"},
                {"RaceFilterTritanopiaColours",   "Exotics"},
                {"RaceFilterProtanopiaColours",   "None"},
                {"RaceFilterDeuteranopiaColours", "None"},
                {"RaceFilterTritanopiaColours",   "None"},
                {"RaceFilterProtanopiaColours",   "Builders"},
                {"RaceFilterDeuteranopiaColours", "Builders"},
                {"RaceFilterTritanopiaColours",   "Builders"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "1.000000"},
                {"G", "1.000000"},
                {"B", "1.000000"},
                {"A", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] =
              {
                {"EconomyFilterProtanopiaColours",   "Mining"},
                {"EconomyFilterDeuteranopiaColours", "Mining"},
                {"EconomyFilterTritanopiaColours",   "Mining"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "1.000000"},
                {"G", "0.538000"},
                {"B", "0.204000"},
                {"A", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] =
              {
                {"EconomyFilterProtanopiaColours",   "HighTech"},
                {"EconomyFilterDeuteranopiaColours", "HighTech"},
                {"EconomyFilterTritanopiaColours",   "HighTech"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.000000"},
                {"G", "1.000000"},
                {"B", "1.000000"},
                {"A", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] =
              {
                {"EconomyFilterProtanopiaColours",   "Trading"},
                {"EconomyFilterDeuteranopiaColours", "Trading"},
                {"EconomyFilterTritanopiaColours",   "Trading"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.398000"},
                {"G", "1.000000"},
                {"B", "0.446000"},
                {"A", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] =
              {
                {"EconomyFilterProtanopiaColours",   "Manufacturing"},
                {"EconomyFilterDeuteranopiaColours", "Manufacturing"},
                {"EconomyFilterTritanopiaColours",   "Manufacturing"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "1.000000"},
                {"G", "1.000000"},
                {"B", "0.000000"},
                {"A", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] =
              {
                {"EconomyFilterProtanopiaColours",   "Fusion"},
                {"EconomyFilterDeuteranopiaColours", "Fusion"},
                {"EconomyFilterTritanopiaColours",   "Fusion"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.655000"},
                {"G", "0.521000"},
                {"B", "1.000000"},
                {"A", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] =
              {
                {"EconomyFilterProtanopiaColours",   "Scientific"},
                {"EconomyFilterDeuteranopiaColours", "Scientific"},
                {"EconomyFilterTritanopiaColours",   "Scientific"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.401000"},
                {"G", "0.545000"},
                {"B", "1.000000"},
                {"A", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] =
              {
                {"EconomyFilterProtanopiaColours",   "PowerGeneration"},
                {"EconomyFilterDeuteranopiaColours", "PowerGeneration"},
                {"EconomyFilterTritanopiaColours",   "PowerGeneration"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "1.000000"},
                {"G", "0.179000"},
                {"B", "0.127000"},
                {"A", "1.000000"},
              }
            },
          }
        },
      }
    },
  }
}