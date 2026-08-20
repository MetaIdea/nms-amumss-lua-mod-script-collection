NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Oceanus All Abilities",
["MOD_AUTHOR"]      = "Mariti",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.45.1",
["MOD_DESCRIPTION"] = "Unlocks the functionality to cycle the Xeno Arena movesets for all of the Oceanus Milestone creatures, which in vanilla have curated movesets",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\ECOSYSTEM\CREATUREDATATABLE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Id", "WALKER_CRAB"},
                {"Id", "FISHBOWL_PET3"},
                {"Id", "LANDSQUID_PET"},
                {"Id", "SPIDERQUAD_PET"},
                {"Id", "HORROR_PET"},
              },
              ["PRECEDING_KEY_WORDS"] = {"MoveSets"},
              ["CREATE_HOES"] = "TRUE",
            },
          }
        }
      }
    }
  }
}