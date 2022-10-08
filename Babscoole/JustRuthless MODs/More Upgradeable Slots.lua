-- Mod_Version = "1.11"

ShipMaxUpgradeChanges =
{
  { -- Type
    {"Shuttle"},
    { -- InvType,                    C,  B,  A,  S,     Originals
      {"MaxInventoryCapacity",      24, 32, 40, 48}, -- 24, 32, 40, 48
      {"MaxTechInventoryCapacity",  24, 32, 40, 48}, --  0,  7, 14, 21
      {"MaxCargoInventoryCapacity", 24, 32, 40, 48}, --  6,  9, 14, 21
    }
  },
  {
    {"Fighter"},
    {
      {"MaxInventoryCapacity",      24, 32, 40, 48}, -- 24, 32, 40, 48
      {"MaxTechInventoryCapacity",  24, 32, 40, 48}, --  0,  7, 14, 21
      {"MaxCargoInventoryCapacity", 24, 32, 40, 48}, --  6,  9, 14, 21
    }
  },
  {
    {"Scientific"}, -- Explorer
    {
      {"MaxInventoryCapacity",      24, 32, 40, 48}, -- 24, 32, 40, 48
      {"MaxTechInventoryCapacity",  24, 32, 40, 48}, --  0,  7, 14, 21
      {"MaxCargoInventoryCapacity", 24, 32, 40, 48}, --  6,  9, 14, 21
    }
  },
  {
    {"Dropship"}, -- Hauler
    {
      {"MaxInventoryCapacity",      24, 32, 40, 48}, -- 24, 32, 40, 48
      {"MaxTechInventoryCapacity",  24, 32, 40, 48}, --  0,  7, 14, 21
      {"MaxCargoInventoryCapacity", 24, 32, 40, 48}, -- 12, 12, 24, 36
    }
  },
  {
    {"Royal"}, -- Exotic
    {
      {"MaxInventoryCapacity",      24, 32, 40, 48}, -- 24, 32, 40, 48
      {"MaxTechInventoryCapacity",  24, 32, 40, 48}, --  0,  7, 14, 21
      {"MaxCargoInventoryCapacity", 24, 32, 40, 48}, --  5,  9, 14, 21
    }
  },
  {
    {"Alien"}, -- Living
    {
      {"MaxInventoryCapacity",       0,  0,  0, 48}, --  0,  0,  0, 35
      {"MaxTechInventoryCapacity",   0,  0,  0, 48}, --  0,  0,  0, 48
      {"MaxCargoInventoryCapacity",  0,  0,  0, 48}, --  0,  0,  0, 32
    }
  },
  {
    {"Sail"}, -- Solar
    {
      {"MaxInventoryCapacity",      24, 32, 40, 48}, -- 24, 32, 40, 48
      {"MaxTechInventoryCapacity",  24, 32, 40, 48}, --  0,  7, 14, 21
      {"MaxCargoInventoryCapacity", 24, 32, 40, 48}, --  6,  9, 14, 21
    }
  },
  {
    {"Freighter"},
    {
      {"MaxInventoryCapacity",      24, 32, 40, 48}, -- 24, 32, 40, 48
      {"MaxTechInventoryCapacity",  24, 32, 40, 48}, --  7,  7, 14, 21
    }
  },
}

WeaponMaxUpgradeChanges =
{
  { -- InvType
  	{"MaxInventoryCapacity"},
    {-- C,  B,  A,  S,     Originals
      {24, 32, 40, 48}, -- 12, 16, 20, 24
    }
  },
}

VehicleMaxUpgradeChanges =
{
  { -- VehicleType
    {"VehicleSmall"}, -- Nomad and Pilgrim
    { -- Min, Max, Originals
      {48, 48}, -- 16, 16
    }
  },
  { -- VehicleType
    {"VehicleMedium"}, -- Roamer, Minotaur, and Nautilon
    { -- Min, Max, Originals
      {48, 48}, -- 28, 28
    }
  },
  { -- VehicleType
    {"VehicleLarge"}, -- Colossus
    { -- Min, Max, Originals
      {48, 48}, -- 42, 42
    }
  },
}

ExosuitNormalChanges = -- Normal Mode
{ -- TechWidth, TechHeight, CargoWidth, CargoHeight, Originals
  {8, 6, 8, 6}, -- 7, 2, 8, 6
}

ExosuitSurvivalChanges = -- Survival Mode
{
  {8, 6, 8, 6}, -- 7, 2, 8, 6
}

-- File Settings --
FileName    = "More Upgradeable Slots.pak"
ModAuthor   = "JustRuthless"
LuaAuthor   = "JustRuthless"
ModMaintenance = "Babscoole"
Description = ""
NMS_Version = "4.00"

-- File Sources --
FileSource1 = "METADATA/REALITY/TABLES/INVENTORYTABLE.MBIN"
FileSource2 = "METADATA/GAMESTATE/DEFAULTINVENTORYBALANCE.MBIN"
FileSource3 = "METADATA/GAMESTATE/DEFAULTINVENTORYBALANCESURVIVAL.MBIN"

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
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"]  = FileSource2,
          ["EXML_CHANGE_TABLE"] = 
          {
            -- InventoryBalanceNormal
          }
        },
        {
          ["MBIN_FILE_SOURCE"]  = FileSource3,
          ["EXML_CHANGE_TABLE"] =
          {
            -- InventoryBalanceSurvival
          }
        },
      }
    },
  }
}

local InventoryTable           = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]
local InventoryBalanceNormal   = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][2]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]
local InventoryBalanceSurvival = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][2]["MBIN_CHANGE_TABLE"][2]["EXML_CHANGE_TABLE"]

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
      },
    }
    InventoryTable[#InventoryTable+1] =
    {
      ["PRECEDING_KEY_WORDS"] = {"ShipInventoryMaxUpgradeSize", Type, InvType},
      ["LINE_OFFSET"] 	= "+2",
      ["VALUE_CHANGE_TABLE"]  =
      {
        {"IGNORE", B},
      },
    }
    InventoryTable[#InventoryTable+1] =
    {
      ["PRECEDING_KEY_WORDS"] = {"ShipInventoryMaxUpgradeSize", Type, InvType},
      ["LINE_OFFSET"] 	= "+3",
      ["VALUE_CHANGE_TABLE"]  =
      {
        {"IGNORE", A},
      },
    }
    InventoryTable[#InventoryTable+1] =
    {
      ["PRECEDING_KEY_WORDS"] = {"ShipInventoryMaxUpgradeSize", Type, InvType},
      ["LINE_OFFSET"] 	= "+4",
      ["VALUE_CHANGE_TABLE"]  =
      {
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

    InventoryTable[#InventoryTable+1] =
    {
      ["PRECEDING_KEY_WORDS"] = {"GenerationDataPerSizeType", VehicleType},
      ["VALUE_CHANGE_TABLE"]  =
      {
        {"MinSlots", Min},
        {"MaxSlots", Max},
      },
    }
  end
end

-- Exosuit Normal Mode Inventory Size Table --
for i = 1, #ExosuitNormalChanges do
  local TechWidth   = ExosuitSurvivalChanges[i][1]
  local TechHeight  = ExosuitSurvivalChanges[i][2]
  local CargoWidth  = ExosuitSurvivalChanges[i][3]
  local CargoHeight = ExosuitSurvivalChanges[i][4]

  InventoryBalanceNormal[#InventoryBalanceNormal+1] =
  {
    ["VALUE_CHANGE_TABLE"] =
    {
      {"PlayerPersonalInventoryTechWidth", TechWidth},
      {"PlayerPersonalInventoryTechHeight", TechHeight},
      {"PlayerPersonalInventoryCargoWidth", CargoWidth},
      {"PlayerPersonalInventoryCargoHeight", CargoHeight},
    },
  }
end

-- Exosuit Survival Mode Inventory Size Table --
for i = 1, #ExosuitSurvivalChanges do
  local TechWidth   = ExosuitSurvivalChanges[i][1]
  local TechHeight  = ExosuitSurvivalChanges[i][2]
  local CargoWidth  = ExosuitSurvivalChanges[i][3]
  local CargoHeight = ExosuitSurvivalChanges[i][4]

  InventoryBalanceSurvival[#InventoryBalanceSurvival+1] =
  {
    ["VALUE_CHANGE_TABLE"] =
    {
      {"PlayerPersonalInventoryTechWidth", TechWidth},
      {"PlayerPersonalInventoryTechHeight", TechHeight},
      {"PlayerPersonalInventoryCargoWidth", CargoWidth},
      {"PlayerPersonalInventoryCargoHeight", CargoHeight},
    },
  }
end