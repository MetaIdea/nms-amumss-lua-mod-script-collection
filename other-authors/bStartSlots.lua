NMS_MOD_DEFINITION_CONTAINER = {
  ["MOD_FILENAME"] = "bStartSlots.pak",
  ["MOD_DESCRIPTION"] = [[ 
    Provides the player at start with 48 suit and cargo inventory slots, 48 
    ship inventory slots, 24 multitool slots, 21 ship tech and cargo slots,
    and 14 suit tech slots.  It further unlocks thes full 48 suit tech slots
    so that they can be upgraded at the space station or suit drop stations.
]],
  ["MOD_AUTHOR"] = "Bladehawke",
  ["NMS_VERSION"] = "3.91", 

  ["MODIFICATIONS"] = {
    {
      ["MBIN_CHANGE_TABLE"] = {
        {
          ["MBIN_FILE_SOURCE"] = "METADATA/REALITY/DEFAULTREALITY.MBIN",
          ["EXML_CHANGE_TABLE"] = {
            {
              ["PRECEDING_KEY_WORDS"] = {"SuitStartingSlotLayout"},
              ["REPLACE_TYPE"] = "",
              ["VALUE_CHANGE_TABLE"] = {
                {"Slots", "48"},
              },
            },

            {
              ["PRECEDING_KEY_WORDS"] = {"SuitTechOnlyStartingSlotLayout"},
              ["REPLACE_TYPE"] = "",
              ["VALUE_CHANGE_TABLE"] = {
                {"Slots", "48"},
              },
            },

            {
              ["PRECEDING_KEY_WORDS"] = {"SuitCargoStartingSlotLayout"},
              ["REPLACE_TYPE"] = "",
              ["VALUE_CHANGE_TABLE"] = {
                {"Slots", "48"},
              },
            },

            {
              ["PRECEDING_KEY_WORDS"] = {"ShipStartingLayout"},
              ["REPLACE_TYPE"] = "",
              ["VALUE_CHANGE_TABLE"] = {
                {"Slots", "48"},
              },
            },

            {
              ["PRECEDING_KEY_WORDS"] = {"ShipTechOnlyStartingLayout"},
              ["REPLACE_TYPE"] = "",
              ["VALUE_CHANGE_TABLE"] = {
                {"Slots", "48"},
              },
            },

            {
              ["PRECEDING_KEY_WORDS"] = {"ShipCargoOnlyStartingLayout"},
              ["REPLACE_TYPE"] = "",
              ["VALUE_CHANGE_TABLE"] = {
                {"Slots", "48"},
              },
            },
          },
        },

        {
          ["MBIN_FILE_SOURCE"] = {
            "METADATA/GAMESTATE/DEFAULTSAVEDATA.MBIN",
            "METADATA/GAMESTATE/DEFAULTSAVEDATACREATIVE.MBIN"
          },
          ["EXML_CHANGE_TABLE"] = {
            {
              ["PRECEDING_KEY_WORDS"] = {"State", "WeaponLayout"},
              ["REPLACE_TYPE"] = "",
              ["VALUE_CHANGE_TABLE"] = {
                {"Slots", "48"},
              }
            }
          }
        },

        {
          ["MBIN_FILE_SOURCE"] = {
            "METADATA/GAMESTATE/DEFAULTINVENTORYBALANCE.MBIN",
            "METADATA/GAMESTATE/DEFAULTINVENTORYBALANCESURVIVAL.MBIN"
          },
          ["EXML_CHANGE_TABLE"] = {
            {
              ["PRECEDING_KEY_WORDS"] = {""},
              ["REPLACE_TYPE"] = "",
              ["VALUE_CHANGE_TABLE"] = {
                {"PlayerPersonalInventoryTechWidth", "8"},
                {"PlayerPersonalInventoryTechHeight", "6"},
              }
            }
          }
        }
      }
    }
  }
}