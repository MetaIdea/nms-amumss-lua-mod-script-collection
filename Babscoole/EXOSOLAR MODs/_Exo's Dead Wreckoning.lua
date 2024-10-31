PB_TABLE =
{
-- Name                      Dead    Weird
  {"Shelter",                "3",    "0"},
  {"Abandoned",              "1",    "2"},
  {"Terminal",               "0",    "0"},
  {"Shop",                   "0",    "0"},
  {"Outpost",                "0",    "0"},
  {"Waypoint",               "0",    "1"},
  {"Beacon",                 "7",    "7"},
  {"RadioTower",             "1",    "1"},
  {"Observatory",            "1",    "1"},
  {"Depot",                  "4",    "4"},
  {"Factory",                "0",    "0"},
  {"Harvester",              "0",    "0"},
  {"Plaque",                 "5",    "3"},
  {"Monolith",               "3",    "1"},
  {"Portal",                 "0",    "0"},
  {"Ruin",                   "1",    "0"},
  {"Debris",                 "3",    "3"},
  {"DamagedMachine",         "4",    "4"},
  {"DistressSignal",         "2",    "1"},
  {"LandingPad",             "0",    "0"},
  {"Base",                   "2",    "2"},
  {"MissionTower",           "0",    "1"},
  {"CrashedFreighter",       "2",    "1"},
  {"GraveInCave",            "1",    "3"},
  {"StoryGlitch",            "0",    "9"},
  {"TreasureRuins",          "1",    "0"},
  {"NPCDistressSignal",      "0",    "0"},
  {"NPCDebris",              "1",    "0"},
  {"LargeBuilding",          "0",    "0"},
  {"SentinelDistressSignal", "1",    "0"},
  {"AbandonedRobotCamp",     "1",    "0"},
}

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "_Exo's Dead Wreckoning.pak",
["MOD_AUTHOR"]    = "Exosolar",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "5.22",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\ENVIRONMENT\PLANETBUILDINGTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"BuildingPlacement", "Factory"},
                                {"BuildingPlacement", "Harvester"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"GivesShelter", "True"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"BuildingPlacement", "DistressSignal"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"OverrideRadius", "45"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"BuildingPlacement", "Base"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"WaterPlacement", "Underwater"},
                            }
                        },
                    }
                }
            }
        }
    }
}
local ChangeTable = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]

for i = 1, #PB_TABLE do
  local BUILDING = PB_TABLE[i][1]
  local DEAD     = PB_TABLE[i][2]
  local WEIRD    = PB_TABLE[i][3]

  ChangeTable[#ChangeTable+1] =
  {
    ["PRECEDING_KEY_WORDS"] = {"BuildingPlacement", BUILDING},
    ["VALUE_CHANGE_TABLE"] =
    {
      {"Dead",  DEAD},
      {"Weird", WEIRD},
    },
  }
end