NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Quick Breeder (Instant)",
["MOD_AUTHOR"]      = "Mantidae",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "4.23",
["MOD_DESCRIPTION"] = "This mod drastically shortens the timers for each step of the creature breeding process",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "GCCREATUREGLOBALS.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PetGrowthTime",        "0"},
                {"PetIncubationTime",    "0"},
                {"PetEggLayingInterval", "0"},
                {"PetEggFirstEggDelay",  "0"},
              }
            },
          }
        },
      }
    }
  }
}
