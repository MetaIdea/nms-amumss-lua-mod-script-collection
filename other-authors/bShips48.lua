-- Taking a page out of Gumsk's book here.  Eventually I want to make this more robust and programatic, but it looks
-- like I have to go entry by entry to avoid going back to undo changes. That normally wouldn't be too bad (and would)
-- result in a shorter script, but I'm trying to modularize these particular scripts so we can mix and match the effects

local AuthorName = "Bladehawke"
local ModName = "bShips48"
local GameVersion = "3.91"
local ModVersion = "a"
local ModDesc = "Makes ships spawn with 48 inventory, technology, and cargo slots"
local ModBatch = "bInventoryTweaks"
local BatchVersion = "a"

NMS_MOD_DEFINITION_CONTAINER = {
  ["MOD_FILENAME"] = ModName .. " " .. GameVersion .. ModVersion .. ".pak",
  --   ["MOD_BATCHNAME"] = ModBatch .. " " .. GameVersion .. BatchVersion .. ".pak",
  ["MOD_DESCRIPTION"] = ModDesc,
  ["MOD_AUTHOR"] = AuthorName,
  ["NMS_VERSION"] = GameVersion,
  ["MODIFICATIONS"] = {
    {
      ["MBIN_CHANGE_TABLE"] = {
        {
          ["MBIN_FILE_SOURCE"] = "METADATA/REALITY/TABLES/INVENTORYTABLE.MBIN",
          ["EXML_CHANGE_TABLE"] = {
            {
              ["PRECEDING_KEY_WORDS"] = {"GenerationDataPerSizeType", "SciSmall"},
              ["REPLACE_TYPE"] = "",
              ["VALUE_CHANGE_TABLE"] = {
                {"MinSlots", "48"},
                {"MaxSlots", "48"},
                {"MinTechSlots", "48"},
                {"MaxTechSlots", "48"},
                {"MinCargoSlots", "48"},
                {"MaxCargoSlots", "48"}
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GenerationDataPerSizeType", "SciSmall"},
              ["REPLACE_TYPE"] = "",
              ["VALUE_CHANGE_TABLE"] = {
                {"MinSlots", "48"},
                {"MaxSlots", "48"},
                {"MinTechSlots", "48"},
                {"MaxTechSlots", "48"},
                {"MinCargoSlots", "48"},
                {"MaxCargoSlots", "48"}
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GenerationDataPerSizeType", "SciMedium"},
              ["REPLACE_TYPE"] = "",
              ["VALUE_CHANGE_TABLE"] = {
                {"MinSlots", "48"},
                {"MaxSlots", "48"},
                {"MinTechSlots", "48"},
                {"MaxTechSlots", "48"},
                {"MinCargoSlots", "48"},
                {"MaxCargoSlots", "48"}
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GenerationDataPerSizeType", "SciLarge"},
              ["REPLACE_TYPE"] = "",
              ["VALUE_CHANGE_TABLE"] = {
                {"MinSlots", "48"},
                {"MaxSlots", "48"},
                {"MinTechSlots", "48"},
                {"MaxTechSlots", "48"},
                {"MinCargoSlots", "48"},
                {"MaxCargoSlots", "48"}
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GenerationDataPerSizeType", "FgtSmall"},
              ["REPLACE_TYPE"] = "",
              ["VALUE_CHANGE_TABLE"] = {
                {"MinSlots", "48"},
                {"MaxSlots", "48"},
                {"MinTechSlots", "48"},
                {"MaxTechSlots", "48"},
                {"MinCargoSlots", "48"},
                {"MaxCargoSlots", "48"}
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GenerationDataPerSizeType", "FgtMedium"},
              ["REPLACE_TYPE"] = "",
              ["VALUE_CHANGE_TABLE"] = {
                {"MinSlots", "48"},
                {"MaxSlots", "48"},
                {"MinTechSlots", "48"},
                {"MaxTechSlots", "48"},
                {"MinCargoSlots", "48"},
                {"MaxCargoSlots", "48"}
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GenerationDataPerSizeType", "FgtLarge"},
              ["REPLACE_TYPE"] = "",
              ["VALUE_CHANGE_TABLE"] = {
                {"MinSlots", "48"},
                {"MaxSlots", "48"},
                {"MinTechSlots", "48"},
                {"MaxTechSlots", "48"},
                {"MinCargoSlots", "48"},
                {"MaxCargoSlots", "48"}
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GenerationDataPerSizeType", "ShuSmall"},
              ["REPLACE_TYPE"] = "",
              ["VALUE_CHANGE_TABLE"] = {
                {"MinSlots", "48"},
                {"MaxSlots", "48"},
                {"MinTechSlots", "48"},
                {"MaxTechSlots", "48"},
                {"MinCargoSlots", "48"},
                {"MaxCargoSlots", "48"}
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GenerationDataPerSizeType", "ShtMedium"},
              ["REPLACE_TYPE"] = "",
              ["VALUE_CHANGE_TABLE"] = {
                {"MinSlots", "48"},
                {"MaxSlots", "48"},
                {"MinTechSlots", "48"},
                {"MaxTechSlots", "48"},
                {"MinCargoSlots", "48"},
                {"MaxCargoSlots", "48"}
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GenerationDataPerSizeType", "ShtLarge"},
              ["REPLACE_TYPE"] = "",
              ["VALUE_CHANGE_TABLE"] = {
                {"MinSlots", "48"},
                {"MaxSlots", "48"},
                {"MinTechSlots", "48"},
                {"MaxTechSlots", "48"},
                {"MinCargoSlots", "48"},
                {"MaxCargoSlots", "48"}
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GenerationDataPerSizeType", "DrpSmall"},
              ["REPLACE_TYPE"] = "",
              ["VALUE_CHANGE_TABLE"] = {
                {"MinSlots", "48"},
                {"MaxSlots", "48"},
                {"MinTechSlots", "48"},
                {"MaxTechSlots", "48"},
                {"MinCargoSlots", "48"},
                {"MaxCargoSlots", "48"}
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GenerationDataPerSizeType", "DrpMedium"},
              ["REPLACE_TYPE"] = "",
              ["VALUE_CHANGE_TABLE"] = {
                {"MinSlots", "48"},
                {"MaxSlots", "48"},
                {"MinTechSlots", "48"},
                {"MaxTechSlots", "48"},
                {"MinCargoSlots", "48"},
                {"MaxCargoSlots", "48"}
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GenerationDataPerSizeType", "DrpLarge"},
              ["REPLACE_TYPE"] = "",
              ["VALUE_CHANGE_TABLE"] = {
                {"MinSlots", "48"},
                {"MaxSlots", "48"},
                {"MinTechSlots", "48"},
                {"MaxTechSlots", "48"},
                {"MinCargoSlots", "48"},
                {"MaxCargoSlots", "48"}
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GenerationDataPerSizeType", "RoySmall"},
              ["REPLACE_TYPE"] = "",
              ["VALUE_CHANGE_TABLE"] = {
                {"MinSlots", "48"},
                {"MaxSlots", "48"},
                {"MinTechSlots", "48"},
                {"MaxTechSlots", "48"},
                {"MinCargoSlots", "48"},
                {"MaxCargoSlots", "48"}
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GenerationDataPerSizeType", "RoyMedium"},
              ["REPLACE_TYPE"] = "",
              ["VALUE_CHANGE_TABLE"] = {
                {"MinSlots", "48"},
                {"MaxSlots", "48"},
                {"MinTechSlots", "48"},
                {"MaxTechSlots", "48"},
                {"MinCargoSlots", "48"},
                {"MaxCargoSlots", "48"}
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GenerationDataPerSizeType", "RoyLarge"},
              ["REPLACE_TYPE"] = "",
              ["VALUE_CHANGE_TABLE"] = {
                {"MinSlots", "48"},
                {"MaxSlots", "48"},
                {"MinTechSlots", "48"},
                {"MaxTechSlots", "48"},
                {"MinCargoSlots", "48"},
                {"MaxCargoSlots", "48"}
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GenerationDataPerSizeType", "AlienSmall"},
              ["REPLACE_TYPE"] = "",
              ["VALUE_CHANGE_TABLE"] = {
                {"MinSlots", "48"},
                {"MaxSlots", "48"},
                {"MinTechSlots", "48"},
                {"MaxTechSlots", "48"},
                {"MinCargoSlots", "48"},
                {"MaxCargoSlots", "48"}
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GenerationDataPerSizeType", "AlienMedium"},
              ["REPLACE_TYPE"] = "",
              ["VALUE_CHANGE_TABLE"] = {
                {"MinSlots", "48"},
                {"MaxSlots", "48"},
                {"MinTechSlots", "48"},
                {"MaxTechSlots", "48"},
                {"MinCargoSlots", "48"},
                {"MaxCargoSlots", "48"}
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GenerationDataPerSizeType", "AlienLarge"},
              ["REPLACE_TYPE"] = "",
              ["VALUE_CHANGE_TABLE"] = {
                {"MinSlots", "48"},
                {"MaxSlots", "48"},
                {"MinTechSlots", "48"},
                {"MaxTechSlots", "48"},
                {"MinCargoSlots", "48"},
                {"MaxCargoSlots", "48"}
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GenerationDataPerSizeType", "SailSmall"},
              ["REPLACE_TYPE"] = "",
              ["VALUE_CHANGE_TABLE"] = {
                {"MinSlots", "48"},
                {"MaxSlots", "48"},
                {"MinTechSlots", "48"},
                {"MaxTechSlots", "48"},
                {"MinCargoSlots", "48"},
                {"MaxCargoSlots", "48"}
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GenerationDataPerSizeType", "SailMedium"},
              ["REPLACE_TYPE"] = "",
              ["VALUE_CHANGE_TABLE"] = {
                {"MinSlots", "48"},
                {"MaxSlots", "48"},
                {"MinTechSlots", "48"},
                {"MaxTechSlots", "48"},
                {"MinCargoSlots", "48"},
                {"MaxCargoSlots", "48"}
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GenerationDataPerSizeType", "SailLarge"},
              ["REPLACE_TYPE"] = "",
              ["VALUE_CHANGE_TABLE"] = {
                {"MinSlots", "48"},
                {"MaxSlots", "48"},
                {"MinTechSlots", "48"},
                {"MaxTechSlots", "48"},
                {"MinCargoSlots", "48"},
                {"MaxCargoSlots", "48"}
              }
            }
          }
        }
      }
    }
  }
}

--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE
