-- Mod_Version = "1.12"

ShipMaxUpgradeChanges =
{
  { -- Type
    {"Shuttle"},
    { -- InvType,                    C,  B,  A,  S,     Originals
      {"MaxInventoryCapacity",      48, 72, 96, 120}, -- 46 74 96 110
      {"MaxTechInventoryCapacity",  33, 55, 77, 99},  -- 25 35 45 60
    }
  },
  {
    {"Fighter"},
    {
      {"MaxInventoryCapacity",      48, 72, 96, 120}, -- 32 48 72 96
      {"MaxTechInventoryCapacity",  33, 55, 77, 99},  -- 30 40 50 60
    }
  },
  {
    {"Scientific"}, -- Explorer
    {
      {"MaxInventoryCapacity",      48, 72, 96, 120}, -- 42 72 94 105
      {"MaxTechInventoryCapacity",  33, 55, 77, 99},  -- 30 40 50 60
    }
  },
  {
    {"Dropship"}, -- Hauler
    {
      {"MaxInventoryCapacity",      48, 72, 96, 120}, -- 48 72 96 120
      {"MaxTechInventoryCapacity",  33, 55, 77, 99},  -- 21 30 40 60
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
      {"MaxInventoryCapacity",      48, 72, 96, 120}, -- 48 72 92 105
      {"MaxTechInventoryCapacity",  33, 55, 77, 99},  -- 25 35 45 60
    }
  },
  {
    {"Freighter"},
    {
      {"MaxInventoryCapacity",      48, 72, 96, 120}, -- 48 72 96 120
      {"MaxTechInventoryCapacity",  33, 55, 77, 99},  -- 25 30 45 60
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

-- File Settings --
FileName    = "More Upgradeable Slots.pak"
ModAuthor   = "JustRuthless"
LuaAuthor   = "JustRuthless"
ModMaintenance = "Babscoole and DarkScythe"
Description = ""
NMS_Version = "4.05"

-- File Sources --
FileSource1 = "METADATA/REALITY/TABLES/INVENTORYTABLE.MBIN"

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"]    = FileName,
  ["MOD_AUTHOR"]      = ModAuthor,
  ["LUA_AUTHOR"]      = LuaAuthor,
  ["MOD_MAINTENANCE"] = ModMaintenance,
  ["MOD_DESCRIPTION"] = Description,
  ["NMS_VERSION"]     = NMS_Version,
  ["MODIFICATIONS"]   =                     
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      { 
        {
          ["MBIN_FILE_SOURCE"]  = FileSource1,
          ["EXML_CHANGE_TABLE"] =
          {
            -- InventoryTable
          }
        },
      }
    },
  }
}

local InventoryTable           = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]

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
      ["LINE_OFFSET"] 	= "+1",
      ["VALUE_CHANGE_TABLE"]  =
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
      ["VALUE_CHANGE_TABLE"]  =
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
    local Min = Change[j][1]
    local Max = Change[j][2]
    local techMin = Change[j][3]
    local techMax = Change[j][4]

    InventoryTable[#InventoryTable+1] =
    {
      ["PRECEDING_KEY_WORDS"] = {"GenerationDataPerSizeType", VehicleType},
      ["VALUE_CHANGE_TABLE"]  =
      {
        {"MinSlots", Min},
        {"MaxSlots", Max},
        {"MinTechSlots", techMin},
        {"MaxTechSlots", techMax},
      },
    }
  end
end