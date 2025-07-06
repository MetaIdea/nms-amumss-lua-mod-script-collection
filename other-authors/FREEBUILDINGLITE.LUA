local ModName = "_FreeBuilding.pak"
local Author = "Striker0420"
local Version = "4.65"

local BaseBuildingObjectsTable = "METADATA\REALITY\TABLES\BASEBUILDINGOBJECTSTABLE.EXML"
local DebugGlobals             = "GCDEBUGOPTIONS.GLOBAL.EXML"
local PlayerGlobals            = "GCPLAYERGLOBALS.GLOBAL.EXML"
local BuildingGlobals          = "GCBUILDINGGLOBALS.GLOBAL.EXML"

NMS_MOD_DEFINITION_CONTAINER = {
  ["MOD_FILENAME"]  = ModName,
  ["MOD_AUTHOR"]    = Author,
  ["LUA_AUTHOR"]    = Author,
  ["NMS_VERSION"]   = Version,
  ["MODIFICATIONS"] = {{
    ["MBIN_CHANGE_TABLE"] = {
      {
        ["MBIN_FILE_SOURCE"] = BaseBuildingObjectsTable,
        ["MXML_CHANGE_TABLE"] = {{
          ["REPLACE_TYPE"] = "ALL",
          ["VALUE_CHANGE_TABLE"] = {
            {"BuildableOnPlanetBase", "True"},
            {"BuildableOnSpaceBase", "True"},
            {"BuildableOnFreighter", "True"},
            {"BuildableOnPlanet", "True"},
            {"BuildableOnPlanetWithProduct", "True"},
            {"BuildableUnderwater", "True"},
            {"BuildableAboveWater", "True"},
            {"PlanetLimit", 0},
            {"RegionLimit", "0"},
            {"PlanetBaseLimit", "0"},
            {"FreighterBaseLimit", "0"},
            {"CheckPlaceholderCollision", "False"},
            {"CanRotate3D", true},
            {"CanScale", true}
          }
        }}
      },
      {
        ["MBIN_FILE_SOURCE"] = DebugGlobals,
        ["MXML_CHANGE_TABLE"] = {{
          ["VALUE_CHANGE_TABLE"] = {
            {"DisableLimits", "True"},
            {"DisableBaseBuildingLimits", "True"},
            {"BaseDownloadTimeout", "120"},
            {"InfiniteInteractions", "True"},
            {"AlwaysAllowShipOperations", "True"},
            {"AlwaysAllowVehicleOperations", "True"},
            {"AlwaysAllowFreighterInventoryAccess", "True"},
            {"IgnoreFreighterSpawnWarpRequirement", "True"},
            {"EverythingIsFree", "True"},
            {"EverythingIsStar", "True"}
          }
        }}
      },
      {
        ["MBIN_FILE_SOURCE"] = PlayerGlobals,
        ["MXML_CHANGE_TABLE"] = {{
          ["VALUE_CHANGE_TABLE"] = {
            {"MaxBuildHeight", "1024"}
          }
        }}
      },
      {
        ["MBIN_FILE_SOURCE"] = BuildingGlobals,
        ["MXML_CHANGE_TABLE"] = {{
          ["PRECEDING_KEY_WORDS"] = {"BuildingPlacementScaleMinMax"},
          ["VALUE_CHANGE_TABLE"] = {
            {"x", "0.00025"},
            {"y", "3000"}
          }
        }}
      }
    }
  }}
}