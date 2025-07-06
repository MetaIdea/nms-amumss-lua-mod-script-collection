local ModName = "FireArmsUnlimitedCoolKeeper.pak"
local Author = "Striker0420"
local Version = "6.05"

local TechnologyTablePath = "METADATA\REALITY\TABLES\NMS_REALITY_GCTECHNOLOGYTABLE.EXML"
local SpaceShipGlobals =  "GCSPACESHIPGLOBALS.GLOBAL.EXML"

local ShipWeaponsOverheatTime = 999999
local ShipWeaponsFireRate = 55
local ShipWeaponsRange = 15000

NMS_MOD_DEFINITION_CONTAINER = {
  ["MOD_FILENAME"]  = ModName,
  ["MOD_AUTHOR"]    = Author,
  ["LUA_AUTHOR"]    = Author,
  ["NMS_VERSION"]   = Version,
  ["MODIFICATIONS"] = {{
    ["MBIN_CHANGE_TABLE"] = {
      {
        ["MBIN_FILE_SOURCE"] = TechnologyTablePath,
        ["MXML_CHANGE_TABLE"] = {
          {["SPECIAL_KEY_WORDS"] = {"ID","SHIPROCKETS"},     ["PRECEDING_KEY_WORDS"] = {"Ship_Weapons_Guns_HeatTime"}, ["SECTION_UP"] = 1, ["VALUE_CHANGE_TABLE"] = {{"Bonus", ShipWeaponsOverheatTime}}},
          {["SPECIAL_KEY_WORDS"] = {"ID","SHIPROCKETS"},     ["PRECEDING_KEY_WORDS"] = {"Ship_Weapons_Guns_Rate"},     ["SECTION_UP"] = 1, ["VALUE_CHANGE_TABLE"] = {{"Bonus", ShipWeaponsFireRate}}},
          {["SPECIAL_KEY_WORDS"] = {"ID","SHIPROCKETS"},     ["PRECEDING_KEY_WORDS"] = {"Ship_Weapons_Guns_Range"},    ["SECTION_UP"] = 1, ["VALUE_CHANGE_TABLE"] = {{"Bonus", ShipWeaponsRange}}},

          {["SPECIAL_KEY_WORDS"] = {"ID","SHIPGUN1"},         ["PRECEDING_KEY_WORDS"] = {"Ship_Weapons_Guns_HeatTime"}, ["SECTION_UP"] = 1, ["VALUE_CHANGE_TABLE"] = {{"Bonus", ShipWeaponsOverheatTime}}},
          {["SPECIAL_KEY_WORDS"] = {"ID","SHIPGUN1"},         ["PRECEDING_KEY_WORDS"] = {"Ship_Weapons_Guns_Range"},    ["SECTION_UP"] = 1, ["VALUE_CHANGE_TABLE"] = {{"Bonus", ShipWeaponsRange}}},
          {["SPECIAL_KEY_WORDS"] = {"ID","SHIPGUN1"},         ["PRECEDING_KEY_WORDS"] = {"Ship_Weapons_Guns_Rate"},     ["SECTION_UP"] = 1, ["VALUE_CHANGE_TABLE"] = {{"Bonus", ShipWeaponsFireRate}}},

          {["SPECIAL_KEY_WORDS"] = {"ID","UT_SHIPGUN"},       ["PRECEDING_KEY_WORDS"] = {"Ship_Weapons_Guns_HeatTime"}, ["SECTION_UP"] = 1, ["VALUE_CHANGE_TABLE"] = {{"Bonus", ShipWeaponsOverheatTime}}},

          {["SPECIAL_KEY_WORDS"] = {"ID","SHIPSHOTGUN"},      ["PRECEDING_KEY_WORDS"] = {"Ship_Weapons_Guns_HeatTime"}, ["SECTION_UP"] = 1, ["VALUE_CHANGE_TABLE"] = {{"Bonus", ShipWeaponsOverheatTime}}},
          {["SPECIAL_KEY_WORDS"] = {"ID","SHIPSHOTGUN"},      ["PRECEDING_KEY_WORDS"] = {"Ship_Weapons_Guns_Range"},    ["SECTION_UP"] = 1, ["VALUE_CHANGE_TABLE"] = {{"Bonus", ShipWeaponsRange}}},
          {["SPECIAL_KEY_WORDS"] = {"ID","SHIPSHOTGUN"},      ["PRECEDING_KEY_WORDS"] = {"Ship_Weapons_Guns_Rate"},     ["SECTION_UP"] = 1, ["VALUE_CHANGE_TABLE"] = {{"Bonus", ShipWeaponsFireRate}}},

          {["SPECIAL_KEY_WORDS"] = {"ID","SHIPMINIGUN"},      ["PRECEDING_KEY_WORDS"] = {"Ship_Weapons_Guns_HeatTime"}, ["SECTION_UP"] = 1, ["VALUE_CHANGE_TABLE"] = {{"Bonus", ShipWeaponsOverheatTime}}},
          {["SPECIAL_KEY_WORDS"] = {"ID","SHIPMINIGUN"},      ["PRECEDING_KEY_WORDS"] = {"Ship_Weapons_Guns_Range"},    ["SECTION_UP"] = 1, ["VALUE_CHANGE_TABLE"] = {{"Bonus", "20000"}}},
          {["SPECIAL_KEY_WORDS"] = {"ID","SHIPMINIGUN"},      ["PRECEDING_KEY_WORDS"] = {"Ship_Weapons_Guns_Rate"},     ["SECTION_UP"] = 1, ["VALUE_CHANGE_TABLE"] = {{"Bonus", ShipWeaponsFireRate}}},

          {["SPECIAL_KEY_WORDS"] = {"ID","SHIPPLASMA"},       ["PRECEDING_KEY_WORDS"] = {"Ship_Weapons_Guns_HeatTime"}, ["SECTION_UP"] = 1, ["VALUE_CHANGE_TABLE"] = {{"Bonus", ShipWeaponsOverheatTime}}},
          {["SPECIAL_KEY_WORDS"] = {"ID","SHIPPLASMA"},       ["PRECEDING_KEY_WORDS"] = {"Ship_Weapons_Guns_Rate"},     ["SECTION_UP"] = 1, ["VALUE_CHANGE_TABLE"] = {{"Bonus", ShipWeaponsFireRate}}},
          {["SPECIAL_KEY_WORDS"] = {"ID","SHIPPLASMA"},       ["PRECEDING_KEY_WORDS"] = {"Ship_Weapons_Guns_Range"},    ["SECTION_UP"] = 1, ["VALUE_CHANGE_TABLE"] = {{"Bonus", ShipWeaponsRange}}},

          {["SPECIAL_KEY_WORDS"] = {"ID","UT_SHIPBLOB"},      ["PRECEDING_KEY_WORDS"] = {"Ship_Weapons_Guns_HeatTime"}, ["SECTION_UP"] = 1, ["VALUE_CHANGE_TABLE"] = {{"Bonus", ShipWeaponsOverheatTime}}},

          {["SPECIAL_KEY_WORDS"] = {"ID","SHIPLAS1"},         ["PRECEDING_KEY_WORDS"] = {"Ship_Weapons_Lasers_HeatTime"}, ["SECTION_UP"] = 1, ["VALUE_CHANGE_TABLE"] = {{"Bonus", ShipWeaponsOverheatTime}}},
          {["SPECIAL_KEY_WORDS"] = {"ID","UT_SHIPLAS"},       ["PRECEDING_KEY_WORDS"] = {"Ship_Weapons_Lasers_HeatTime"}, ["SECTION_UP"] = 1, ["VALUE_CHANGE_TABLE"] = {{"Bonus", ShipWeaponsOverheatTime}}},
          {["SPECIAL_KEY_WORDS"] = {"ID","SHIPLAS_ALIEN"},    ["PRECEDING_KEY_WORDS"] = {"Ship_Weapons_Lasers_HeatTime"}, ["SECTION_UP"] = 1, ["VALUE_CHANGE_TABLE"] = {{"Bonus", ShipWeaponsOverheatTime}}},

          {["SPECIAL_KEY_WORDS"] = {"ID","UT_SHIPSHOT"},      ["PRECEDING_KEY_WORDS"] = {"Ship_Weapons_Guns_Range"}, ["SECTION_UP"] = 1, ["VALUE_CHANGE_TABLE"] = {{"Bonus", "5"}}},

          {["SPECIAL_KEY_WORDS"] = {"ID","SHIPGUN_ALIEN"},    ["PRECEDING_KEY_WORDS"] = {"Ship_Weapons_Guns_HeatTime"}, ["SECTION_UP"] = 1, ["VALUE_CHANGE_TABLE"] = {{"Bonus", ShipWeaponsOverheatTime}}},
          {["SPECIAL_KEY_WORDS"] = {"ID","SHIPGUN_ALIEN"},    ["PRECEDING_KEY_WORDS"] = {"Ship_Weapons_Guns_Range"},    ["SECTION_UP"] = 1, ["VALUE_CHANGE_TABLE"] = {{"Bonus", ShipWeaponsRange}}},
          {["SPECIAL_KEY_WORDS"] = {"ID","SHIPGUN_ALIEN"},    ["PRECEDING_KEY_WORDS"] = {"Ship_Weapons_Guns_Rate"},     ["SECTION_UP"] = 1, ["VALUE_CHANGE_TABLE"] = {{"Bonus", ShipWeaponsFireRate}}},

          {["SPECIAL_KEY_WORDS"] = {"ID","SHIPGUN_ROBO"},    ["PRECEDING_KEY_WORDS"] = {"Ship_Weapons_Guns_HeatTime"}, ["SECTION_UP"] = 1, ["VALUE_CHANGE_TABLE"] = {{"Bonus", ShipWeaponsOverheatTime}}},
          {["SPECIAL_KEY_WORDS"] = {"ID","SHIPGUN_ROBO"},    ["PRECEDING_KEY_WORDS"] = {"Ship_Weapons_Guns_Range"},    ["SECTION_UP"] = 1, ["VALUE_CHANGE_TABLE"] = {{"Bonus", ShipWeaponsRange}}},
          {["SPECIAL_KEY_WORDS"] = {"ID","SHIPGUN_ROBO"},    ["PRECEDING_KEY_WORDS"] = {"Ship_Weapons_Guns_Rate"},     ["SECTION_UP"] = 1, ["VALUE_CHANGE_TABLE"] = {{"Bonus", ShipWeaponsFireRate}}},

          



          {["REPLACE_TYPE"] = "ALL", ["VALUE_CHANGE_TABLE"] = {{"UsesAmmo", "False"}}}
        }
      },
      {
        ["MBIN_FILE_SOURCE"] = SpaceShipGlobals,
        ["MXML_CHANGE_TABLE"] = {{
          ["REPLACE_TYPE"] = "ALL",
          ["VALUE_CHANGE_TABLE"] = {
            {"LockTargetRange",     ShipWeaponsRange},
            {"TargetLockRange",     ShipWeaponsRange},
            {"MissileLockTime",     "0"},
            {"MissileLockSpeedUp",  "10"},
            {"AimDistanceRange",    ShipWeaponsRange},
            {"ShipEnterRange",      "20"}
          }
        }}
      }
    }
  }}
}