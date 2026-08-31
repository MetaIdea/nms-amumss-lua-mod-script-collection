NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "No Random Junk",
["MOD_AUTHOR"]      = "Grouch",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.45",
["MOD_DESCRIPTION"] = "Removes the tiny random waste piles",
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
      }
    }
  }
}