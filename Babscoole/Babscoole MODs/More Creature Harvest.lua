Divisor = "@/10"
Multiplier = "@*10"

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "More Creature Harvest",
["MOD_DESCRIPTION"] = "Fauna produce more products and the harvesting cooldown time is greatly reduced.",
["MOD_AUTHOR"]      = "chickazee4 & Babscoole",
["NMS_VERSION"]     = "5.73",
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
                {"CreatureHarvestAmountSmall", Multiplier},
                {"CreatureHarvestAmountMed",   Multiplier},
                {"CreatureHarvestAmountLarge", Multiplier},
                {"CreatureHarvestAmountHuge",  Multiplier},
                {"HarvestCooldownMin",         Divisor},
                {"HarvestCooldownMax",         Divisor},
              }
            },
          }
        }
      }
    }
  }
}
