NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Quick Breeder (Crazy)",
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
                {"PetGrowthTime",        "1800"},
                {"PetIncubationTime",    "600"},
                {"PetEggLayingInterval", "600"},
                {"PetEggFirstEggDelay",  "600"},
              }
            },
          }
        },
      }
    }
  }
}
