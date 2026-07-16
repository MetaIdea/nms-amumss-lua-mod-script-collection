NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "PU_MorePlanetaryBuildings",
["MOD_AUTHOR"]      = "Trevix",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.30",
["MOD_DESCRIPTION"] = "Increase planetary building density, good for on foot exploration",
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
                {"UnknownBuildingRange", "1600.000000"},
                {"MaxIconRange",         "1600.000000"},
                {"MinShipScanBuildings", "1"},
                {"MaxShipScanBuildings", "2"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "GCSETTLEMENTGLOBALS.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"TowerRechargeTime",       "8640"},
                {"InitialBuildingCountMin", "15"},
                {"InitialBuildingCountMax", "20"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"TowerPowerRechargeTime"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"EarnNavigationData",  "8640"},
                {"ScanForBuildings",    "8640"},
                {"ScanForAnomalies",    "8640"},
                {"ScanForCrashedShips", "8640"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"SettlementBuildingTimes"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"None",                        "0"},
                {"TerrainResource",             "0"},
                {"Shelter",                     "0"},
                {"Abandoned",                   "0"},
                {"Terminal",                    "0"},
                {"Shop",                        "0"},
                {"Outpost",                     "0"},
                {"Waypoint",                    "0"},
                {"Beacon",                      "0"},
                {"RadioTower",                  "0"},
                {"Observatory",                 "0"},
                {"Depot",                       "0"},
                {"Factory",                     "0"},
                {"Harvester",                   "0"},
                {"Plaque",                      "0"},
                {"Monolith",                    "0"},
                {"Portal",                      "0"},
                {"Ruin",                        "0"},
                {"Debris",                      "0"},
                {"DamagedMachine",              "0"},
                {"DistressSignal",              "0"},
                {"LandingPad",                  "0"},
                {"Base",                        "0"},
                {"MissionTower",                "0"},
                {"CrashedFreighter",            "0"},
                {"GraveInCave",                 "0"},
                {"StoryGlitch",                 "0"},
                {"TreasureRuins",               "0"},
                {"GameStartSpawn",              "0"},
                {"WaterCrashedFreighter",       "0"},
                {"WaterTreasureRuins",          "0"},
                {"WaterAbandoned",              "0"},
                {"WaterDistressSignal",         "0"},
                {"NPCDistressSignal",           "0"},
                {"NPCDebris",                   "0"},
                {"LargeBuilding",               "0"},
                {"Settlement_Hub",              "0"},
                {"Settlement_LandingZone",      "360"},
                {"Settlement_Bar",              "360"},
                {"Settlement_Tower",            "360"},
                {"Settlement_Market",           "720"},
                {"Settlement_Small",            "120"},
                {"Settlement_SmallIndustrial",  "120"},
                {"Settlement_Medium",           "280"},
                {"Settlement_Large",            "720"},
                {"Settlement_Monument",         "0"},
                {"Settlement_SheriffsOffice",   "90"},
                {"Settlement_Double",           "360"},
                {"Settlement_Farm",             "560"},
                {"Settlement_Factory",          "560"},
                {"Settlement_Clump",            "0"},
                {"DroneHive",                   "0"},
                {"SentinelDistressSignal",      "0"},
                {"AbandonedRobotCamp",          "0"},
                {"RobotHead",                   "0"},
                {"DigSite",                     "0"},
                {"AncientGuardian",             "0"},
                {"Settlement_Hub_Builders",     "0"},
                {"Settlement_FishPond",         "120"},
                {"Settlement_Builders_RoboArm", "360"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\ENVIRONMENT\PLANETBUILDINGTABLE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Shelter", "GcBuildingDefinitionData"},
              ["PRECEDING_KEY_WORDS"] = {"Density"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Dead", "0.000000"},
                {"Low", "1900.000000"},
                {"Mid", "1900.000000"},
                {"Full", "1900.000000"},
                {"Weird", "0.000000"},
                {"HalfWeird", "800.000000"},
                {"Waterworld", "800.000000"},
                {"GasGiant", "800.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Abandoned", "GcBuildingDefinitionData"},
              ["PRECEDING_KEY_WORDS"] = {"Density"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Dead", "100.000000"},
                {"Low", "300.000000"},
                {"Mid", "300.000000"},
                {"Full", "300.000000"},
                {"Weird", "200.000000"},
                {"HalfWeird", "300.000000"},
                {"Waterworld", "0.000000"},
                {"GasGiant", "100.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Terminal", "GcBuildingDefinitionData"},
              ["PRECEDING_KEY_WORDS"] = {"Density"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Dead", "0.000000"},
                {"Low", "500.000000"},
                {"Mid", "500.000000"},
                {"Full", "500.000000"},
                {"Weird", "0.000000"},
                {"HalfWeird", "100.000000"},
                {"Waterworld", "100.000000"},
                {"GasGiant", "0.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Shop", "GcBuildingDefinitionData"},
              ["PRECEDING_KEY_WORDS"] = {"Density"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Dead", "0.000000"},
                {"Low", "300.000000"},
                {"Mid", "300.000000"},
                {"Full", "300.000000"},
                {"Weird", "0.000000"},
                {"HalfWeird", "100.000000"},
                {"Waterworld", "100.000000"},
                {"GasGiant", "0.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Outpost", "GcBuildingDefinitionData"},
              ["PRECEDING_KEY_WORDS"] = {"Density"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Dead", "0.000000"},
                {"Low", "400.000000"},
                {"Mid", "400.000000"},
                {"Full", "400.000000"},
                {"Weird", "0.000000"},
                {"HalfWeird", "400.000000"},
                {"Waterworld", "0.000000"},
                {"GasGiant", "10.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Waypoint", "GcBuildingDefinitionData"},
              ["PRECEDING_KEY_WORDS"] = {"Density"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Dead", "0.000000"},
                {"Low", "1500.000000"},
                {"Mid", "1500.000000"},
                {"Full", "1500.000000"},
                {"Weird", "1000.000000"},
                {"HalfWeird", "500.000000"},
                {"Waterworld", "500.000000"},
                {"GasGiant", "0.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Beacon", "GcBuildingDefinitionData"},
              ["PRECEDING_KEY_WORDS"] = {"Density"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Dead", "0.000000"},
                {"Low", "1700.000000"},
                {"Mid", "1700.000000"},
                {"Full", "1700.000000"},
                {"Weird", "0.000000"},
                {"HalfWeird", "1000.000000"},
                {"Waterworld", "1000.000000"},
                {"GasGiant", "150.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"RadioTower", "GcBuildingDefinitionData"},
              ["PRECEDING_KEY_WORDS"] = {"Density"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Dead", "100.000000"},
                {"Low", "300.000000"},
                {"Mid", "300.000000"},
                {"Full", "300.000000"},
                {"Weird", "100.000000"},
                {"HalfWeird", "100.000000"},
                {"Waterworld", "100.000000"},
                {"GasGiant", "100.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Observatory", "GcBuildingDefinitionData"},
              ["PRECEDING_KEY_WORDS"] = {"Density"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Dead", "200.000000"},
                {"Low", "500.000000"},
                {"Mid", "500.000000"},
                {"Full", "500.000000"},
                {"Weird", "300.000000"},
                {"HalfWeird", "200.000000"},
                {"Waterworld", "200.000000"},
                {"GasGiant", "150.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Depot", "GcBuildingDefinitionData"},
              ["PRECEDING_KEY_WORDS"] = {"Density"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Dead", "0.000000"},
                {"Low", "800.000000"},
                {"Mid", "800.000000"},
                {"Full", "800.000000"},
                {"Weird", "0.000000"},
                {"HalfWeird", "400.000000"},
                {"Waterworld", "400.000000"},
                {"GasGiant", "50.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Factory", "GcBuildingDefinitionData"},
              ["PRECEDING_KEY_WORDS"] = {"Density"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Dead", "0.000000"},
                {"Low", "300.000000"},
                {"Mid", "300.000000"},
                {"Full", "300.000000"},
                {"Weird", "0.000000"},
                {"HalfWeird", "0.000000"},
                {"Waterworld", "0.000000"},
                {"GasGiant", "0.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Harvester", "GcBuildingDefinitionData"},
              ["PRECEDING_KEY_WORDS"] = {"Density"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Dead", "0.000000"},
                {"Low", "500.000000"},
                {"Mid", "500.000000"},
                {"Full", "500.000000"},
                {"Weird", "200.000000"},
                {"HalfWeird", "200.000000"},
                {"Waterworld", "0.000000"},
                {"GasGiant", "0.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Plaque", "GcBuildingDefinitionData"},
              ["PRECEDING_KEY_WORDS"] = {"Density"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Dead", "300.000000"},
                {"Low", "500.000000"},
                {"Mid", "500.000000"},
                {"Full", "500.000000"},
                {"Weird", "300.000000"},
                {"HalfWeird", "300.000000"},
                {"Waterworld", "200.000000"},
                {"GasGiant", "0.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Monolith", "GcBuildingDefinitionData"},
              ["PRECEDING_KEY_WORDS"] = {"Density"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Dead", "100.000000"},
                {"Low", "300.000000"},
                {"Mid", "300.000000"},
                {"Full", "300.000000"},
                {"Weird", "100.000000"},
                {"HalfWeird", "100.000000"},
                {"Waterworld", "100.000000"},
                {"GasGiant", "0.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Portal", "GcBuildingDefinitionData"},
              ["PRECEDING_KEY_WORDS"] = {"Density"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Dead", "0.000000"},
                {"Low", "0.000000"},
                {"Mid", "0.000000"},
                {"Full", "0.000000"},
                {"Weird", "0.000000"},
                {"HalfWeird", "0.000000"},
                {"Waterworld", "0.000000"},
                {"GasGiant", "0.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Ruin", "GcBuildingDefinitionData"},
              ["PRECEDING_KEY_WORDS"] = {"Density"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Dead", "400.000000"},
                {"Low", "400.000000"},
                {"Mid", "400.000000"},
                {"Full", "400.000000"},
                {"Weird", "0.000000"},
                {"HalfWeird", "400.000000"},
                {"Waterworld", "0.000000"},
                {"GasGiant", "0.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Debris", "GcBuildingDefinitionData"},
              ["PRECEDING_KEY_WORDS"] = {"Density"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Dead", "0.000000"},
                {"Low", "300.000000"},
                {"Mid", "300.000000"},
                {"Full", "300.000000"},
                {"Weird", "100.000000"},
                {"HalfWeird", "100.000000"},
                {"Waterworld", "100.000000"},
                {"GasGiant", "300.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"DamagedMachine", "GcBuildingDefinitionData"},
              ["PRECEDING_KEY_WORDS"] = {"Density"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Dead", "0.000000"},
                {"Low", "600.000000"},
                {"Mid", "600.000000"},
                {"Full", "600.000000"},
                {"Weird", "300.000000"},
                {"HalfWeird", "300.000000"},
                {"Waterworld", "300.000000"},
                {"GasGiant", "300.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"DistressSignal", "GcBuildingDefinitionData"},
              ["PRECEDING_KEY_WORDS"] = {"Density"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Dead", "100.000000"},
                {"Low", "100.000000"},
                {"Mid", "100.000000"},
                {"Full", "100.000000"},
                {"Weird", "100.000000"},
                {"HalfWeird", "100.000000"},
                {"Waterworld", "0.000000"},
                {"GasGiant", "100.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"LandingPad", "GcBuildingDefinitionData"},
              ["PRECEDING_KEY_WORDS"] = {"Density"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Dead", "0.000000"},
                {"Low", "0.000000"},
                {"Mid", "0.000000"},
                {"Full", "0.000000"},
                {"Weird", "0.000000"},
                {"HalfWeird", "0.000000"},
                {"Waterworld", "0.000000"},
                {"GasGiant", "0.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"CrashedFreighter", "GcBuildingDefinitionData"},
              ["PRECEDING_KEY_WORDS"] = {"Density"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Dead", "100.000000"},
                {"Low", "100.000000"},
                {"Mid", "100.000000"},
                {"Full", "100.000000"},
                {"Weird", "100.000000"},
                {"HalfWeird", "100.000000"},
                {"Waterworld", "0.000000"},
                {"GasGiant", "100.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"TreasureRuins", "GcBuildingDefinitionData"},
              ["PRECEDING_KEY_WORDS"] = {"Density"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Dead", "300.000000"},
                {"Low", "300.000000"},
                {"Mid", "300.000000"},
                {"Full", "300.000000"},
                {"Weird", "300.000000"},
                {"HalfWeird", "300.000000"},
                {"Waterworld", "0.000000"},
                {"GasGiant", "0.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"LargeBuilding", "GcBuildingDefinitionData"},
              ["PRECEDING_KEY_WORDS"] = {"Density"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Dead", "0.000000"},
                {"Low", "400.000000"},
                {"Mid", "400.000000"},
                {"Full", "400.000000"},
                {"Weird", "0.000000"},
                {"HalfWeird", "400.000000"},
                {"Waterworld", "400.000000"},
                {"GasGiant", "0.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"DroneHive", "GcBuildingDefinitionData"},
              ["PRECEDING_KEY_WORDS"] = {"Density"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Dead", "0.000000"},
                {"Low", "50.000000"},
                {"Mid", "50.000000"},
                {"Full", "50.000000"},
                {"Weird", "0.000000"},
                {"HalfWeird", "100.000000"},
                {"Waterworld", "100.000000"},
                {"GasGiant", "0.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"SentinelDistressSignal", "GcBuildingDefinitionData"},
              ["PRECEDING_KEY_WORDS"] = {"Density"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Dead", "0.000000"},
                {"Low", "100.000000"},
                {"Mid", "100.000000"},
                {"Full", "100.000000"},
                {"Weird", "0.000000"},
                {"HalfWeird", "100.000000"},
                {"Waterworld", "0.000000"},
                {"GasGiant", "0.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"AbandonedRobotCamp", "GcBuildingDefinitionData"},
              ["PRECEDING_KEY_WORDS"] = {"Density"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Dead", "0.000000"},
                {"Low", "100.000000"},
                {"Mid", "100.000000"},
                {"Full", "100.000000"},
                {"Weird", "0.000000"},
                {"HalfWeird", "100.000000"},
                {"Waterworld", "0.000000"},
                {"GasGiant", "50.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"RobotHead", "GcBuildingDefinitionData"},
              ["PRECEDING_KEY_WORDS"] = {"Density"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Dead", "0.000000"},
                {"Low", "50.000000"},
                {"Mid", "50.000000"},
                {"Full", "100.000000"},
                {"Weird", "0.000000"},
                {"HalfWeird", "0.000000"},
                {"Waterworld", "0.000000"},
                {"GasGiant", "50.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"DigSite", "GcBuildingDefinitionData"},
              ["PRECEDING_KEY_WORDS"] = {"Density"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Dead", "0.000000"},
                {"Low", "0.500000"},
                {"Mid", "0.500000"},
                {"Full", "100.000000"},
                {"Weird", "0.000000"},
                {"HalfWeird", "0.000000"},
                {"Waterworld", "0.000000"},
                {"GasGiant", "0.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"CargoDrop", "GcBuildingDefinitionData"},
              ["PRECEDING_KEY_WORDS"] = {"Density"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Dead", "0.000000"},
                {"Low", "100.500000"},
                {"Mid", "300.000000"},
                {"Full", "300.000000"},
                {"Weird", "0.000000"},
                {"HalfWeird", "0.000000"},
                {"Waterworld", "0.000000"},
                {"GasGiant", "0.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ScrapYard", "GcBuildingDefinitionData"},
              ["PRECEDING_KEY_WORDS"] = {"Density"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Dead", "0.000000"},
                {"Low", "100.000000"},
                {"Mid", "100.000000"},
                {"Full", "100.000000"},
                {"Weird", "0.000000"},
                {"HalfWeird", "0.000000"},
                {"Waterworld", "0.000000"},
                {"GasGiant", "0.000000"},
              }
            },
          }
        },
      }
    }
  }
}