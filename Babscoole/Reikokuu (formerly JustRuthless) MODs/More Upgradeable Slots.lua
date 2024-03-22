ShipMaxUpgradeChanges =
{
  { -- Type
    {"Dropship"}, -- Hauler
    { -- InvType,                    C,  B,  A,  S,     Originals
      {"MaxInventoryCapacity",      60, 80, 100, 120}, -- 60 80 100 120
      {"MaxTechInventoryCapacity",  33, 55, 77, 99},  -- 30 40 50 60
    }
  },
  {
    {"Fighter"},
    {
      {"MaxInventoryCapacity",      60, 80, 100, 120}, -- 50 70 80 100
      {"MaxTechInventoryCapacity",  33, 55, 77, 99},  -- 30 40 50 60
    }
  },
  {
    {"Scientific"}, -- Explorer
    {
      {"MaxInventoryCapacity",      60, 80, 100, 120}, -- 60 80 90 110
      {"MaxTechInventoryCapacity",  33, 55, 77, 99},  -- 30 40 50 60
    }
  },
  {
    {"Shuttle"},
    {
      {"MaxInventoryCapacity",      60, 80, 100, 120}, -- 50 80 90 110
      {"MaxTechInventoryCapacity",  33, 55, 77, 99},  -- 25 40 50 60
    }
  },
  {
    {"Royal"}, -- Exotic
    {
      {"MaxInventoryCapacity",      120, 120, 120, 120}, -- 105 105 105 105
      {"MaxTechInventoryCapacity",  99,  99,  99,  99},  -- 60 60 60 60
    }
  },
  {
    {"Alien"}, -- Living
    {
      {"MaxInventoryCapacity",      120, 120, 120, 120}, -- 120 120 120 120
      {"MaxTechInventoryCapacity",  99,  99,  99,  99},  -- 60 60 60 60
    }
  },
  {
    {"Sail"}, -- Solar
    {
      {"MaxInventoryCapacity",      60, 80, 100, 120}, -- 50 70 90 110
      {"MaxTechInventoryCapacity",  33, 55, 77, 99},  -- 30 40 50 60
    }
  },
  {
    {"Robot"}, -- Interceptor
    {
      {"MaxInventoryCapacity",      60, 80, 100, 120}, -- 60 80 100 120
      {"MaxTechInventoryCapacity",  33, 55, 77, 99},  -- 30 40 50 60
    }
  },
  {
    {"Freighter"},
    {
      {"MaxInventoryCapacity",      60, 80, 100, 120}, -- 60 80 100 120
      {"MaxTechInventoryCapacity",  33, 55, 77, 99},  -- 30 40 50 60
    }
  },
}

WeaponMaxUpgradeChanges =
{
  { -- InvType
      {"MaxInventoryCapacity"},
    {-- C,  B,  A,  S,     Originals
      {33, 55, 77, 99}, -- 21 30 45 60
    }
  },
}

VehicleMaxUpgradeChanges =
{
  { -- VehicleType
    {"VehicleSmall"}, -- Nomad and Pilgrim
    { -- Min, Max, Tech     Originals
      {120, 120, 60, 60}, -- 30 30, 26 26
    }
  },
  { -- VehicleType
    {"VehicleMedium"}, -- Roamer, Minotaur, and Nautilon
    { -- Min, Max, Tech     Originals
      {120, 120, 60, 60}, -- 40 40, 28 28
    }
  },
  { -- VehicleType
    {"VehicleLarge"}, -- Colossus
    { -- Min, Max, Tech     Originals
      {120, 120, 60, 60}, -- 50 50, 30 30
    }
  },
}
-----------------------------------------------------
NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "More Upgradeable Slots.pak",
["MOD_AUTHOR"]      = "Reikokuu & Babscoole",
["MOD_DESCRIPTION"] = "Adds more upgradeable inventory, technology, and cargo slots to exocrafts, multitools, ships, and freighters",
["NMS_VERSION"]     = "4.52",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\INVENTORYTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Suit", "GcInventoryLayoutGenerationDataEntry.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinSlots",     120},
                                {"MaxSlots",     120},
                                {"MinTechSlots", 60},
                                {"MaxTechSlots", 60}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Suit", "GcInventoryLayoutGenerationDataEntry.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"Bounds"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxWidthSmall",     10},
                                {"MaxHeightSmall",    12},
                                {"MaxWidthStandard",  10},
                                {"MaxHeightStandard", 12}
                            }
                        },
                    }
                },
            }
        },
    }
}

local InventoryTable = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]

-- Ship Max Upgrade Table --
for i = 1, #ShipMaxUpgradeChanges do
  local Type   = ShipMaxUpgradeChanges[i][1][1]
  local Change = ShipMaxUpgradeChanges[i][2]

  for j = 1, #Change do
    local InvType = Change[j][1]
    local C       = Change[j][2]
    local B       = Change[j][3]
    local A       = Change[j][4]
    local S       = Change[j][5]

    InventoryTable[#InventoryTable+1] =
    {
      ["PRECEDING_KEY_WORDS"] = {"ShipInventoryMaxUpgradeSize", Type, InvType},
      ["LINE_OFFSET"] = "+1",
      ["VALUE_CHANGE_TABLE"] =
      {
        {"IGNORE", C},
        {"IGNORE", B},
        {"IGNORE", A},
        {"IGNORE", S},
      },
    }
  end
end
-- Weapon Max Upgrade Table --
for i = 1, #WeaponMaxUpgradeChanges do
  local InvType = WeaponMaxUpgradeChanges[i][1][1]
  local Change  = WeaponMaxUpgradeChanges[i][2]

  for j = 1, #Change do
    local C = Change[j][1]
    local B = Change[j][2]
    local A = Change[j][3]
    local S = Change[j][4]

    InventoryTable[#InventoryTable+1] =
    {
      ["PRECEDING_KEY_WORDS"] = {"WeaponInventoryMaxUpgradeSize", InvType},
      ["VALUE_CHANGE_TABLE"] =
      {
        {"C", C},
        {"B", B},
        {"A", A},
        {"S", S},
      },
    }
  end
end

-- Vehicle Inventory Slots Table --
for i = 1, #VehicleMaxUpgradeChanges do
  local VehicleType = VehicleMaxUpgradeChanges[i][1][1]
  local Change      = VehicleMaxUpgradeChanges[i][2]

  for j = 1, #Change do
    local Min     = Change[j][1]
    local Max     = Change[j][2]
    local techMin = Change[j][3]
    local techMax = Change[j][4]

    InventoryTable[#InventoryTable+1] =
    {
      ["PRECEDING_KEY_WORDS"] = {"GenerationDataPerSizeType", VehicleType},
      ["VALUE_CHANGE_TABLE"] =
      {
        {"MinSlots",     Min},
        {"MaxSlots",     Max},
        {"MinTechSlots", techMin},
        {"MaxTechSlots", techMax},
      },
    }
  end
end