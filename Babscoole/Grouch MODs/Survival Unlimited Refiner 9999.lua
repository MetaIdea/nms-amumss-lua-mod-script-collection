NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Survival Unlimited Refiner 9999",
["MOD_AUTHOR"]      = "Grouch",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "7.05",
["MOD_DESCRIPTION"] = "Sets the refiner stack size limit on Options > Difficulty > Inventory Stack Limits = Restricted/Harsh to 9,999",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\GAMESTATE\DIFFICULTYCONFIG.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Normal", "GcDifficultyInventoryStackSizeOptionData"},
              ["PRECEDING_KEY_WORDS"] = {"MaxSubstanceStackSizes"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MaintenanceObject", "9999"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Low", "GcDifficultyInventoryStackSizeOptionData"},
              ["PRECEDING_KEY_WORDS"] = {"MaxSubstanceStackSizes"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MaintenanceObject", "9999"},
              }
            },
          }
        },
      }
    }
  }
}