NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "No Ramnant",
["MOD_AUTHOR"]      = "Grouch",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.45",
["MOD_DESCRIPTION"] = "Removes many things added for Remnant update",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\RARE\PROCSALVAGE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Objects", "GcEnvironmentSpawnData"},
              ["PRECEDING_KEY_WORDS"] = {"Objects"},
              ["CREATE_HOES"] = "TRUE",
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\ENVIRONMENT\PLANETBUILDINGTABLE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"CargoDrop", "GcBuildingDefinitionData"},
                {"ScrapYard", "GcBuildingDefinitionData"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinHeight", "99999.000000"},
              }
            },
          }
        },
      }
    }
  }
}