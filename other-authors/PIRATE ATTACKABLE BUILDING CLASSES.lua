NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "PIRATE ATTACKABLE BUILDING CLASSES",
["MOD_AUTHOR"]      = "ALEX VIUM",
["NMS_VERSION"]     = "5.73",
["MOD_DESCRIPTION"] = "PIRATES WILL NOW ATTACK ALL BUILDING CLASSES LISTED IN THE TABLE",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "GCAISPACESHIPGLOBALS.GLOBAL.MBIN",
          ["EXML_CHANGE_TABLE"] =
          {
            {
              ["PRECEDING_KEY_WORDS"] = {"PirateAttackableBuildingClasses"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Abandoned",                   "true"},
                {"AbandonedRobotCamp",          "true"},
                {"AncientGuardian",             "true"},
                {"Base",                        "true"},
                {"Beacon",                      "true"},
                {"CrashedFreighter",            "true"},
                {"DamagedMachine",              "true"},
                {"Debris",                      "true"},
                {"Depot",                       "true"},
                {"DigSite",                     "true"},
                {"DistressSignal",              "true"},
                {"DroneHive",                   "true"},
                {"Factory",                     "true"},
                {"GameStartSpawn",              "true"},
                {"GraveInCave",                 "true"},
                {"Harvester",                   "true"},
                {"LandingPad",                  "true"},
                {"LargeBuilding",               "true"},
                {"MissionTower",                "true"},
                {"Monolith",                    "true"},
                {"NPCDebris",                   "true"},
                {"NPCDistressSignal",           "true"},
                {"Observatory",                 "true"},
                {"Outpost",                     "true"},
                {"Plaque",                      "true"},
                {"Portal",                      "true"},
                {"RadioTower",                  "true"},
                {"RobotHead",                   "true"},
                {"Ruin",                        "true"},
                {"SentinelDistressSignal",      "true"},
                {"Settlement_Bar",              "true"},
                {"Settlement_Builders_RoboArm", "true"},
                {"Settlement_Clump",            "true"},
                {"Settlement_Double",           "true"},
                {"Settlement_Factory",          "true"},
                {"Settlement_Farm",             "true"},
                {"Settlement_FishPond",         "true"},
                {"Settlement_Hub",              "true"},
                {"Settlement_Hub_Builders",     "true"},
                {"Settlement_LandingZone",      "true"},
                {"Settlement_Large",            "true"},
                {"Settlement_Market",           "true"},
                {"Settlement_Medium",           "true"},
                {"Settlement_Monument",         "true"},
                {"Settlement_SheriffsOffice",   "true"},
                {"Settlement_Small",            "true"},
                {"Settlement_SmallIndustrial",  "true"},
                {"Settlement_Tower",            "true"},
                {"Shelter",                     "true"},
                {"Shop",                        "true"},
                {"StoryGlitch",                 "true"},
                {"Terminal",                    "true"},
                {"TerrainResource",             "true"},
                {"TreasureRuins",               "true"},
                {"WaterAbandoned",              "true"},
                {"WaterCrashedFreighter",       "true"},
                {"WaterDistressSignal",         "true"},
                {"WaterTreasureRuins",          "true"},
                {"Waypoint",                    "true"},
              }
            },
          }
        },
      }
    },
  }
}