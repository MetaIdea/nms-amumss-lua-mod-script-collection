TimeExpEZ = "0" --time for easy expedition 900
TimeExpEV = "0" --time for expedition event 5400
NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "Ultimate_Fleet_S_Instant_Time",
["MOD_DESCRIPTION"] = "Mostly S-class with high Stats based on RNG",
["MOD_AUTHOR"]    = "PyronoxOmega and Babscoole",
["NMS_VERSION"]   = "5.73",
["MODIFICATIONS"] =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\FRIGATETRAITTABLE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"ID", "FUEL_BAD_1"},
                {"ID", "FUEL_BAD_2"},
                {"ID", "FUEL_BAD_3"},
                {"ID", "FUEL_BAD_4"},
                {"ID", "FUEL_BAD_5"},
                {"ID", "COMBAT_BAD_1"},
                {"ID", "COMBAT_BAD_2"},
                {"ID", "COMBAT_BAD_3"},
                {"ID", "COMBAT_BAD_4"},
                {"ID", "COMBAT_BAD_5"},
                {"ID", "MINING_BAD_1"},
                {"ID", "MINING_BAD_2"},
                {"ID", "MINING_BAD_3"},
                {"ID", "MINING_BAD_4"},
                {"ID", "MINING_BAD_5"},
                {"ID", "TRADING_BAD_1"},
                {"ID", "TRADING_BAD_2"},
                {"ID", "TRADING_BAD_3"},
                {"ID", "TRADING_BAD_4"},
                {"ID", "TRADING_BAD_5"},
                {"ID", "EXPLORE_BAD_1"},
                {"ID", "EXPLORE_BAD_2"},
                {"ID", "EXPLORE_BAD_3"},
                {"ID", "EXPLORE_BAD_4"},
                {"ID", "EXPLORE_BAD_5"},
              },
              ["PRECEDING_KEY_WORDS"] = {"ChanceOfBeingOffered"},
              ["REPLACE_TYPE"] = "ALL",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Combat",          "0"},
                {"Exploration",     "0"},
                {"Mining",          "0"},
                {"Diplomacy",       "0"},
                {"Support",         "0"},
                {"Normandy",        "0"},
                {"DeepSpace",       "0"},
                {"DeepSpaceCommon", "0"},
                {"Pirate",          "0"},
                {"GhostShip",       "0"},
              }
            },
          }
        },
       --Globals
        {
          ["MBIN_FILE_SOURCE"] = "GCFLEETGLOBALS.GLOBAL.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentChangeOfFrigateBeingPurchasable",  100},
                --{"MinFrigateStatValue", 50},
                {"PercentChanceOfFrigateAdditionalSpawnedTrait",  100},
                --{"MaximumSpeedDecrease",  50},-- -50
                --{"MaximumSpeedDecrease",  50},--50
                {"MaxNumberOfPlayerShipsInFreighterHangar", 8},--6 all ships visible in hanger.
                {"TimeTakenForExpeditionEvent_Easy", TimeExpEZ},      -- Original 900
                {"TimeTakenForExpeditionEvent",    TimeExpEV},      -- Original 5400
              },
            },
            --Combat
            {
              ["SPECIAL_KEY_WORDS"] = {"Combat", "GcFrigateStats"},
              ["PRECEDING_KEY_WORDS"] = {"Stats", "Combat"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Minimum", 5},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Combat", "GcFrigateStats"},
              ["PRECEDING_KEY_WORDS"] = {"Stats", "Exploration"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Minimum", 2},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Combat", "GcFrigateStats"},
              ["PRECEDING_KEY_WORDS"] = {"Stats", "Mining"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Minimum", 4},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Combat", "GcFrigateStats"},
              ["PRECEDING_KEY_WORDS"] = {"Stats", "Diplomatic"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Minimum", 2},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Combat", "GcFrigateStats"},
              ["PRECEDING_KEY_WORDS"] = {"Stats", "FuelBurnRate"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Minimum", 8},
                {"Maximum", 8},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Combat", "GcFrigateStats"},
              ["PRECEDING_KEY_WORDS"] = {"Stats", "Stealth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Minimum", 4},
                {"Maximum", 4},
              },
            },
            --Exploration
            {
              ["SPECIAL_KEY_WORDS"] = {"Exploration", "GcFrigateStats"},
              ["PRECEDING_KEY_WORDS"] = {"Stats", "Combat"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Minimum", 2},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Exploration", "GcFrigateStats"},
              ["PRECEDING_KEY_WORDS"] = {"Stats", "Exploration"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Minimum", 5},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Exploration", "GcFrigateStats"},
              ["PRECEDING_KEY_WORDS"] = {"Stats", "Mining"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Minimum", 2},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Exploration", "GcFrigateStats"},
              ["PRECEDING_KEY_WORDS"] = {"Stats", "Diplomatic"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Minimum", 4},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Exploration", "GcFrigateStats"},
              ["PRECEDING_KEY_WORDS"] = {"Stats", "FuelBurnRate"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Minimum", 8},
                {"Maximum", 8},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Exploration", "GcFrigateStats"},
              ["PRECEDING_KEY_WORDS"] = {"Stats", "Stealth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Minimum", 4},
                {"Maximum", 4},
              },
            },
            --Mining
                 {
              ["SPECIAL_KEY_WORDS"] = {"Mining", "GcFrigateStats"},
              ["PRECEDING_KEY_WORDS"] = {"Stats", "Combat"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Minimum", 3},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Mining", "GcFrigateStats"},
              ["PRECEDING_KEY_WORDS"] = {"Stats", "Exploration"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Minimum", 1},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Mining", "GcFrigateStats"},
              ["PRECEDING_KEY_WORDS"] = {"Stats", "Mining"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Minimum", 5},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Mining", "GcFrigateStats"},
              ["PRECEDING_KEY_WORDS"] = {"Stats", "Diplomatic"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Minimum", 3},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Mining", "GcFrigateStats"},
              ["PRECEDING_KEY_WORDS"] = {"Stats", "FuelBurnRate"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Minimum", 8},
                {"Maximum", 8},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Mining", "GcFrigateStats"},
              ["PRECEDING_KEY_WORDS"] = {"Stats", "Stealth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Minimum", 4},
                {"Maximum", 4},
              },
            },
            --Diplomacy
              {
              ["SPECIAL_KEY_WORDS"] = {"Diplomacy", "GcFrigateStats"},
              ["PRECEDING_KEY_WORDS"] = {"Stats", "Combat"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Minimum", 1},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Diplomacy", "GcFrigateStats"},
              ["PRECEDING_KEY_WORDS"] = {"Stats", "Exploration"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Minimum", 2},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Diplomacy", "GcFrigateStats"},
              ["PRECEDING_KEY_WORDS"] = {"Stats", "Mining"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Minimum", 4},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Diplomacy", "GcFrigateStats"},
              ["PRECEDING_KEY_WORDS"] = {"Stats", "Diplomatic"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Minimum", 5},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Diplomacy", "GcFrigateStats"},
              ["PRECEDING_KEY_WORDS"] = {"Stats", "FuelBurnRate"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Minimum", 8},
                {"Maximum", 8},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Diplomacy", "GcFrigateStats"},
              ["PRECEDING_KEY_WORDS"] = {"Stats", "Stealth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Minimum", 4},
                {"Maximum", 4},
              },
            },
            --Support
            {
              ["SPECIAL_KEY_WORDS"] = {"Support", "GcFrigateStats"},
              ["PRECEDING_KEY_WORDS"] = {"Stats", "Combat"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Minimum", 4},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Support", "GcFrigateStats"},
              ["PRECEDING_KEY_WORDS"] = {"Stats", "Exploration"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Minimum", 4},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Support", "GcFrigateStats"},
              ["PRECEDING_KEY_WORDS"] = {"Stats", "Mining"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Minimum", 4},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Support", "GcFrigateStats"},
              ["PRECEDING_KEY_WORDS"] = {"Stats", "Diplomatic"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Minimum", 4},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Support", "GcFrigateStats"},
              ["PRECEDING_KEY_WORDS"] = {"Stats", "FuelBurnRate"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Minimum", 2},
                {"Maximum", 2},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Support", "GcFrigateStats"},
              ["PRECEDING_KEY_WORDS"] = {"Stats", "FuelCapacity"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Minimum", 5},
                {"Maximum", 5},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Support", "GcFrigateStats"},
              ["PRECEDING_KEY_WORDS"] = {"Stats", "Stealth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Minimum", 4},
                {"Maximum", 4},
              },
            },
            --Normandy
            {
              ["SPECIAL_KEY_WORDS"] = {"Normandy", "GcFrigateStats"},
              ["PRECEDING_KEY_WORDS"] = {"Stats", "Stealth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Minimum", 4},
                {"Maximum", 4},
              },
            },
            --DeepSpace
            {
              ["SPECIAL_KEY_WORDS"] = {"DeepSpace", "GcFrigateStats"},
              ["PRECEDING_KEY_WORDS"] = {"Stats", "Stealth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Minimum", 4},
                {"Maximum", 4},
              },
            },
            --DeepSpaceCommon
            {
              ["SPECIAL_KEY_WORDS"] = {"DeepSpaceCommon", "GcFrigateStats"},
              ["PRECEDING_KEY_WORDS"] = {"Stats", "Combat"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Minimum", 3},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"DeepSpaceCommon", "GcFrigateStats"},
              ["PRECEDING_KEY_WORDS"] = {"Stats", "Exploration"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Minimum", 3},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"DeepSpaceCommon", "GcFrigateStats"},
              ["PRECEDING_KEY_WORDS"] = {"Stats", "Mining"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Minimum", 3},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"DeepSpaceCommon", "GcFrigateStats"},
              ["PRECEDING_KEY_WORDS"] = {"Stats", "Diplomatic"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Minimum", 3},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"DeepSpaceCommon", "GcFrigateStats"},
              ["PRECEDING_KEY_WORDS"] = {"Stats", "FuelBurnRate"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Minimum", 8},
                {"Maximum", 8},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"DeepSpaceCommon", "GcFrigateStats"},
              ["PRECEDING_KEY_WORDS"] = {"Stats", "Stealth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Minimum", 4},
                {"Maximum", 4},
              },
            },
            --Pirate
            {
              ["SPECIAL_KEY_WORDS"] = {"Pirate", "GcFrigateStats"},
              ["PRECEDING_KEY_WORDS"] = {"Stats", "Combat"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Minimum", 5},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Pirate", "GcFrigateStats"},
              ["PRECEDING_KEY_WORDS"] = {"Stats", "Exploration"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Minimum", 2},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Pirate", "GcFrigateStats"},
              ["PRECEDING_KEY_WORDS"] = {"Stats", "Mining"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Minimum", 4},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Pirate", "GcFrigateStats"},
              ["PRECEDING_KEY_WORDS"] = {"Stats", "Diplomatic"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Minimum", 2},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Pirate", "GcFrigateStats"},
              ["PRECEDING_KEY_WORDS"] = {"Stats", "FuelBurnRate"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Minimum", 12},
                {"Maximum", 12},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Pirate", "GcFrigateStats"},
              ["PRECEDING_KEY_WORDS"] = {"Stats", "Stealth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Minimum", 4},
                {"Maximum", 4},
              },
            },
            --GhostShip
            {
              ["SPECIAL_KEY_WORDS"] = {"GhostShip", "GcFrigateStats"},
              ["PRECEDING_KEY_WORDS"] = {"Stats", "Combat"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Minimum", 4},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"GhostShip", "GcFrigateStats"},
              ["PRECEDING_KEY_WORDS"] = {"Stats", "Exploration"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Minimum", 4},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"GhostShip", "GcFrigateStats"},
              ["PRECEDING_KEY_WORDS"] = {"Stats", "Mining"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Minimum", 4},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"GhostShip", "GcFrigateStats"},
              ["PRECEDING_KEY_WORDS"] = {"Stats", "Diplomatic"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Minimum", 4},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"GhostShip", "GcFrigateStats"},
              ["PRECEDING_KEY_WORDS"] = {"Stats", "FuelBurnRate"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Minimum", 4},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"GhostShip", "GcFrigateStats"},
              ["PRECEDING_KEY_WORDS"] = {"Stats", "Stealth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Minimum", 4},
              },
            }
          }
        }
      }
    }
  }
}