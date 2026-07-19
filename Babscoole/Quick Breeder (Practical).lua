NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Quick Breeder (Practical)",
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
                {"PetGrowthTime",        "86400"},
                {"PetIncubationTime",    "7200"},
                {"PetEggLayingInterval", "1800"},
                {"PetEggFirstEggDelay",  "1800"},
              }
            },
          }
        },
      }
    }
  }
}
