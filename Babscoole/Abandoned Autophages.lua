NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Abandoned Autophages",
["MOD_AUTHOR"]      = "Unedjis",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "5.63",
["MOD_DESCRIPTION"] = "Enables Autophages and random NPCs on Freighters in Abandoned Systems",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\NPCS\NPCSPAWNTABLE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"PlacementRuleId", "FREIGHT_GENERIC"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SpawnInAbandoned", "true"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"PlacementRuleId", "FREIGHT_HANGAR"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MustPlace",          "true"},
                {"SpawnAnyMajorRace",  "true"},
                {"SpawnInAbandoned",   "true"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"PlacementRuleId", "NPC_ROBOT"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SpawnInAbandoned", "true"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"PlacementRuleId", "NPC_ROBOT_STAND"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SpawnInAbandoned", "true"},
              }
            },
          }
        },
      }
    }
  }
}