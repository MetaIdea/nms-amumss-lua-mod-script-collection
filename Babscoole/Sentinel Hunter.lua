NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Sentinel Hunter",
["MOD_AUTHOR"]      = "erThewin",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.10",
["MOD_DESCRIPTION"] = "Find crashed Sentinel Ships anywhere, doesn't need to be in dissonant system or planet",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\ENVIRONMENT\PLANETBUILDINGTABLE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"SentinelDistressSignal", "GcBuildingDefinitionData"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ClusterLayout", "LAND_WAYPOINT"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"SentinelDistressSignal", "GcBuildingDefinitionData", "PlanetRestrictions", "GcPlanetaryBuildingRestrictions"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RequiresCorruptSentinels", "false"},
              }
            },
          }
        },
      }
    }
  }
}