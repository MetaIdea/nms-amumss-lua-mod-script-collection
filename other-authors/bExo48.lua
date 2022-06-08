local AuthorName = "Bladehawke"
local ModName = "bExo48"
local GameVersion = "3.21"
local ModVersion = "a"
local ModDesc = "Makes exocraft have 48 slots"
local ModBatch = "bInventoryTweaks"
local BatchVersion = "a"

NMS_MOD_DEFINITION_CONTAINER = {
  ["MOD_FILENAME"] = ModName .. " " .. GameVersion .. ModVersion .. ".pak",
--	["MOD_BATCHNAME"] = ModBatch .. " " .. GameVersion .. BatchVersion .. ".pak",
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
              ["PRECEDING_KEY_WORDS"] = {"GenerationDataPerSizeType", "VehicleSmall"},
              ["VALUE_CHANGE_TABLE"] = {
                {"MinSlots", "48"},
                {"MaxSlots", "48"}
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GenerationDataPerSizeType", "VehicleMedium"},
              ["VALUE_CHANGE_TABLE"] = {
                {"MinSlots", "48"},
                {"MaxSlots", "48"}
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GenerationDataPerSizeType", "VehicleLarge"},
              ["VALUE_CHANGE_TABLE"] = {
                {"MinSlots", "48"},
                {"MaxSlots", "48"}
              }
            }
          } -- total 6 actions
        }
      }
    }
  }
}

--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE
