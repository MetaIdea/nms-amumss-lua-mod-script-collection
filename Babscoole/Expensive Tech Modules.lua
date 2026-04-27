CCLASS =  {"U_LASER1","U_SCANNER1","U_BOLT1","U_GRENADE1","U_TGRENADE1","U_RAIL1","U_SHOTGUN1","U_SMG1","U_CANNON1","U_ENERGY1","U_JETBOOST1","U_SHIELDBOOST1","U_UNW1","U_RAD1","U_TOX1","U_COLDPROT1","U_HOTPROT1","U_PULSE1","U_LAUNCH1","U_HYPER1","U_SHIPSHIELD1","U_SHIPGUN1","U_SHIPLAS1","U_SHIPSHOT1","U_SHIPMINI1","U_SHIPBLOB1","U_EXOGUN1","U_EXOLAS1","U_EXOBOOST1","U_EXO_ENG1","U_EXO_SUB1","U_EXO_SUBGUN1","U_SENTGUN","U_ROBOSUIT","U_SENTSUIT"}
BCLASS =  {"U_LASER2","U_SCANNER2","U_BOLT2","U_GRENADE2","U_TGRENADE2","U_RAIL2","U_SHOTGUN2","U_SMG2","U_CANNON2","U_ENERGY2","U_JETBOOST2","U_SHIELDBOOST2","U_UNW2","U_RAD2","U_TOX2","U_COLDPROT2","U_HOTPROT2","U_PULSE2","U_LAUNCH2","U_HYPER2","U_SHIPSHIELD2","U_SHIPGUN2","U_SHIPLAS2","U_SHIPSHOT2","U_SHIPMINI2","U_SHIPBLOB2","U_EXOGUN2","U_EXOLAS2","U_EXOBOOST2","U_EXO_ENG2","U_EXO_SUB2","U_EXO_SUBGUN2","U_MECH_ENG2","U_MECHLAS2","U_MECHFLAME2","U_MECHGUN2"}
ACLASS =  {"U_LASER3","U_SCANNER3","U_BOLT3","U_GRENADE3","U_TGRENADE3","U_RAIL3","U_SHOTGUN3","U_SMG3","U_CANNON3","U_ENERGY3","U_JETBOOST3","U_SHIELDBOOST3","U_UNW3","U_RAD3","U_TOX3","U_COLDPROT3","U_HOTPROT3","U_PULSE3","U_LAUNCH3","U_HYPER3","U_SHIPSHIELD3","U_SHIPGUN3","U_SHIPLAS3","U_SHIPSHOT3","U_SHIPMINI3","U_SHIPBLOB3","U_EXOGUN3","U_EXOLAS3","U_EXOBOOST3","U_EXO_ENG3","U_EXO_SUB3","U_EXO_SUBGUN3","U_MECH_ENG3","U_MECHLAS3","U_MECHFLAME3","U_MECHGUN3"}
SCLASS =  {"U_LASER4","U_SCANNER4","U_BOLT4","U_GRENADE4","U_TGRENADE4","U_RAIL4","U_SHOTGUN4","U_SMG4","U_CANNON4","U_JETBOOST4","U_SHIELDBOOST4","U_PULSE4","U_LAUNCH4","U_HYPER4","U_SHIPSHIELD4","U_SHIPGUN4","U_SHIPLAS4","U_SHIPSHOT4","U_SHIPMINI4","U_SHIPBLOB4","U_EXOGUN4","U_EXOLAS4","U_EXOBOOST4","U_EXO_ENG4","U_EXO_SUB4","U_EXO_SUBGUN4","U_MECH_ENG4","U_MECHLAS4","U_MECHFLAME4","U_MECHGUN4"}
XCLASS =  {"U_LASERX","U_SCANNERX","U_BOLTX","U_GRENADEX","U_TGRENADEX","U_RAILX","U_SHOTGUNX","U_SMGX","U_CANNONX","U_ENERGYX","U_HAZARDX","U_JETBOOSTX","U_SHIELDBOOSTX","U_PULSEX","U_LAUNCHX","U_HYPERX","U_SHIPSHIELDX","U_SHIPGUNX","U_SHIPLASX","U_SHIPSHOTX","U_SHIPMINIX","U_SHIPBLOBX"}

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Expensive Tech Modules",
["MOD_AUTHOR"]      = "zchott",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.34",
["MOD_DESCRIPTION"] = "This mod changes the price of tech modules when buying them from a vendor, but without changing the selling price",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\NMS_REALITY_GCPRODUCTTABLE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"ID", "U_LASERX"},
                {"ID", "U_SCANNERX"},                
                {"ID", "U_GRENADEX"},
                {"ID", "U_TGRENADEX"},
                {"ID", "U_ENERGYX"},
                {"ID", "U_JETBOOSTX"},
                {"ID", "U_SHIELDBOOSTX"},
                {"ID", "U_PULSEX"},
                {"ID", "U_LAUNCHX"},
                {"ID", "U_HYPERX"},
                {"ID", "U_SHIPSHIELDX"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "70"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"ID", "U_BOLTX"},
                {"ID", "U_RAILX"},
                {"ID", "U_SHOTGUNX"},
                {"ID", "U_SMGX"},
                {"ID", "U_CANNONX"},
                {"ID", "U_SHIPGUNX"},
                {"ID", "U_SHIPLASX"},
                {"ID", "U_SHIPSHOTX"},
                {"ID", "U_SHIPMINIX"},
                {"ID", "U_SHIPBLOBX"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "80"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "U_HAZARDX"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "150"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"ID", "U_EXOGUN1"},
                {"ID", "U_EXOGUN2"},
                {"ID", "U_EXOGUN3"},
                {"ID", "U_EXOGUN4"},
                {"ID", "U_EXOLAS1"},
                {"ID", "U_EXOLAS2"},
                {"ID", "U_EXOLAS3"},
                {"ID", "U_EXOLAS4"},
                {"ID", "U_EXOBOOST1"},
                {"ID", "U_EXOBOOST2"},
                {"ID", "U_EXOBOOST3"},
                {"ID", "U_EXOBOOST4"},
                {"ID", "U_EXO_ENG1"},
                {"ID", "U_EXO_ENG2"},
                {"ID", "U_EXO_ENG3"},
                {"ID", "U_EXO_ENG4"},
                {"ID", "U_EXO_SUB1"},
                {"ID", "U_EXO_SUB2"},
                {"ID", "U_EXO_SUB3"},
                {"ID", "U_EXO_SUB4"},
                {"ID", "U_EXO_SUBGUN1"},
                {"ID", "U_EXO_SUBGUN2"},
                {"ID", "U_EXO_SUBGUN3"},
                {"ID", "U_EXO_SUBGUN4"},
                {"ID", "U_MECH_ENG2"},
                {"ID", "U_MECH_ENG3"},
                {"ID", "U_MECH_ENG4"},
                {"ID", "U_MECHLAS2"},
                {"ID", "U_MECHLAS3"},
                {"ID", "U_MECHLAS4"},
                {"ID", "U_MECHFLAME2"},
                {"ID", "U_MECHFLAME3"},
                {"ID", "U_MECHFLAME4"},
                {"ID", "U_MECHGUN2"},
                {"ID", "U_MECHGUN3"},
                {"ID", "U_MECHGUN4"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"LowPriceMod",   "-0.100000"},
                {"HighPriceMod",  "0.100000"},
                {"BuyBaseMarkup", "0.200000"},
              }
            },
          }
        }
      }
    }
  }
}
local UpModuleTable = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["MXML_CHANGE_TABLE"]

for i=1,#CCLASS do
  local value = CCLASS[i]
  UpModuleTable[#UpModuleTable +1] =
  {
    ["SPECIAL_KEY_WORDS"] = {"ID", value},
    ["VALUE_CHANGE_TABLE"] =
    {
      {"BuyMarkupMod", "1.500000"},
    }
  }
end

for i=1,#BCLASS do
  local value = BCLASS[i]
  UpModuleTable[#UpModuleTable +1] =
  {
    ["SPECIAL_KEY_WORDS"] = {"ID", value},
    ["VALUE_CHANGE_TABLE"] =
    {
      {"BuyMarkupMod", "2.000000"},
    }
  }
end

for i=1,#ACLASS do
  local value = ACLASS[i]
  UpModuleTable[#UpModuleTable +1] =
  {
    ["SPECIAL_KEY_WORDS"] = {"ID", value},
    ["VALUE_CHANGE_TABLE"] =
    {
      {"BuyMarkupMod", "3.000000"},
    }
  }
end

for i=1,#SCLASS do
  local value = SCLASS[i]
  UpModuleTable[#UpModuleTable +1] =
  {
    ["SPECIAL_KEY_WORDS"] = {"ID", value},
    ["VALUE_CHANGE_TABLE"] =
    {
      {"BuyMarkupMod", "4.000000"},
    }
  }
end

for i=1,#XCLASS do
  local value = XCLASS[i]
  UpModuleTable[#UpModuleTable +1] =
  {
    ["SPECIAL_KEY_WORDS"] = {"ID", value},
    ["VALUE_CHANGE_TABLE"] =
    {
      {"BuyMarkupMod", "20.000000"},
    }
  }
end