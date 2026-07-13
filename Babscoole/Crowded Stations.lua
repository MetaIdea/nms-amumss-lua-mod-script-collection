NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Crowded Stations",
["MOD_AUTHOR"]      = "Unedjis",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "5.63",
["MOD_DESCRIPTION"] = "Greatly increases the number of generic NPCs on Space Stations",
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
              ["SPECIAL_KEY_WORDS"] = {"PlacementRuleId", "FILLER"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MustPlace",             "false"},
                {"SpawnChance",           "0.800000"},
                {"FractionOfNodesActive", "1.000000"},
              }
            },
          }
        },
      }
    }
  }
}