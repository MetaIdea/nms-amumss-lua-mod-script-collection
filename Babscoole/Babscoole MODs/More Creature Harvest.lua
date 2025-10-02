DIVISOR = 10
MULTIPLIER = 10

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "More Creature Harvest",
["MOD_DESCRIPTION"] = "Fauna produce more products and the harvesting cooldown time is greatly reduced.",
["MOD_AUTHOR"]      = "chickazee4 & Babscoole",
["NMS_VERSION"]     = "6.00",
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
                {"CreatureHarvestAmountSmall", "@*"..MULTIPLIER},
                {"CreatureHarvestAmountMed",   "@*"..MULTIPLIER},
                {"CreatureHarvestAmountLarge", "@*"..MULTIPLIER},
                {"CreatureHarvestAmountHuge",  "@*"..MULTIPLIER},
                {"HarvestCooldownMin",         "@/"..DIVISOR},
                {"HarvestCooldownMax",         "@/"..DIVISOR},
              }
            },
          }
        }
      }
    }
  }
}