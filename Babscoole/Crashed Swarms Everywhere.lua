NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Crashed Swarms Everywhere",
["MOD_AUTHOR"]      = "IgorGaming",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.45",
["MOD_DESCRIPTION"] = "No limits to where crashed swarm ships can be found. No need for dissonance",
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
              ["SPECIAL_KEY_WORDS"] = {"Crashed_Swarm", "GcBuildingDefinitionData"},
              ["PRECEDING_KEY_WORDS"] = {"Density"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Weird", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Crashed_Swarm", "GcBuildingDefinitionData", "PlanetRestrictions", "GcPlanetaryBuildingRestrictions"},
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