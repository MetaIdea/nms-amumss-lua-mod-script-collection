NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "NGT_Extreme UnderHaul",
["MOD_AUTHOR"]      = "NightySama",
["LUA_AUTHOR"]      = "NightySama",
["NMS_VERSION"]     = "6.45",
["MOD_DESCRIPTION"] = "Changes inventory parameters",
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
              ["PRECEDING_KEY_WORDS"] = {"InventoryStackLimitsOptionData", "Normal", "MaxSubstanceStackSizes"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Default", "80"},
                {"Personal", "100"},
                {"PersonalCargo", "250"},
                {"Ship", "250"},
                {"ShipCargo", "500"},
                {"Freighter", "2500"},
                {"FreighterCargo", "5000"},
                {"Vehicle", "200"},
                {"Chest", "1000"},
                {"BaseCapsule", "1500"},
                {"MaintenanceObject", "250"},
                {"UIPopup", "250"},
                {"SeasonTransfer", "9999"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"InventoryStackLimitsOptionData", "Normal", "MaxProductStackSizes"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Default", "2"},
                {"Personal", "5"},
                {"PersonalCargo", "10"},
                {"Ship", "10"},
                {"ShipCargo", "15"},
                {"Freighter", "30"},
                {"FreighterCargo", "75"},
                {"Vehicle", "5"},
                {"Chest", "15"},
                {"BaseCapsule", "25"},
                {"MaintenanceObject", "10"},
                {"UIPopup", "1"},
                {"SeasonTransfer", "20"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"InventoryStackLimitsOptionData", "Low", "MaxSubstanceStackSizes"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Default", "80"},
                {"Personal", "50"},
                {"PersonalCargo", "100"},
                {"Ship", "150"},
                {"ShipCargo", "250"},
                {"Freighter", "1500"},
                {"FreighterCargo", "2500"},
                {"Vehicle", "100"},
                {"Chest", "1000"},
                {"BaseCapsule", "750"},
                {"MaintenanceObject", "150"},
                {"UIPopup", "150"},
                {"SeasonTransfer", "9999"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"InventoryStackLimitsOptionData", "Low", "MaxProductStackSizes"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Default", "2"},
                {"Personal", "1"},
                {"PersonalCargo", "3"},
                {"Ship", "3"},
                {"ShipCargo", "5"},
                {"Freighter", "20"},
                {"FreighterCargo", "50"},
                {"Vehicle", "3"},
                {"Chest", "10"},
                {"BaseCapsule", "15"},
                {"MaintenanceObject", "5"},
                {"UIPopup", "5"},
                {"SeasonTransfer", "20"},
              }
            }
          }
        }
      }
    }
  }
}