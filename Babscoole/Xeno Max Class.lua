NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Xeno Max Class",
["MOD_AUTHOR"]      = "Mariti",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "7.04",
["MOD_DESCRIPTION"] = "All wild creatures will now be SSS class with their stat values maxed for Combat, Agility, and HP",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "GCGAMETABLEGLOBALS.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"MaxHealth",       "GcPetBattlerCoreStatRollData"},
                {"Speed",           "GcPetBattlerCoreStatRollData"},
                {"CombatPotential", "GcPetBattlerCoreStatRollData"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"C", "0"},
                {"B", "0"},
                {"A", "0"},
                {"S", "100"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"MaxHealth", "GcPetBattlerCoreStatRangeData"},
              ["PRECEDING_KEY_WORDS"] = {"Range", "C"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"X", "525.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"MaxHealth", "GcPetBattlerCoreStatRangeData"},
              ["PRECEDING_KEY_WORDS"] = {"Range", "B"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"X", "625.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"MaxHealth", "GcPetBattlerCoreStatRangeData"},
              ["PRECEDING_KEY_WORDS"] = {"Range", "A"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"X", "650.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"MaxHealth", "GcPetBattlerCoreStatRangeData"},
              ["PRECEDING_KEY_WORDS"] = {"Range", "S"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"X", "725.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Speed", "GcPetBattlerCoreStatRangeData"},
              ["PRECEDING_KEY_WORDS"] = {"Range", "C"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"X", "50.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Speed", "GcPetBattlerCoreStatRangeData"},
              ["PRECEDING_KEY_WORDS"] = {"Range", "B"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"X", "60.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Speed", "GcPetBattlerCoreStatRangeData"},
              ["PRECEDING_KEY_WORDS"] = {"Range", "A"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"X", "80.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Speed", "GcPetBattlerCoreStatRangeData"},
              ["PRECEDING_KEY_WORDS"] = {"Range", "S"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"X", "100.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"CombatPotential", "GcPetBattlerCoreStatRangeData"},
              ["PRECEDING_KEY_WORDS"] = {"Range", "C"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"X", "120.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"CombatPotential", "GcPetBattlerCoreStatRangeData"},
              ["PRECEDING_KEY_WORDS"] = {"Range", "B"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"X", "140.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"CombatPotential", "GcPetBattlerCoreStatRangeData"},
              ["PRECEDING_KEY_WORDS"] = {"Range", "A"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"X", "180.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"CombatPotential", "GcPetBattlerCoreStatRangeData"},
              ["PRECEDING_KEY_WORDS"] = {"Range", "S"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"X", "200.000000"},
              }
            },
          }
        }
      }
    }
  }
}