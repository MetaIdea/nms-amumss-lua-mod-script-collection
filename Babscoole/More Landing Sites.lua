NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "More Landing Sites",
["MOD_AUTHOR"]      = "Bladehawke",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.00",
["MOD_DESCRIPTION"] = "Converts the Waypoints at Abandoned Buildings, Terminals, Depots and Hives into Landing Waypoints",
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
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Abandoned", "GcBuildingDefinitionData"},
                {"Terminal",  "GcBuildingDefinitionData"},
                {"Depot",     "GcBuildingDefinitionData"},
                {"DroneHive", "GcBuildingDefinitionData"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ClusterLayout", "LAND_WAYPOINT"},
              }
            },
          }
        },
      }
    }
  }
}