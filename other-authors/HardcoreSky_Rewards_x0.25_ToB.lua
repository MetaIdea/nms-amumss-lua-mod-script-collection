NMS_MOD_DEFINITION_CONTAINER = {
  ["MOD_FILENAME"]    = "HardcoreSky_Rewards_x0.25_ToB.pak",
  ["MOD_AUTHOR"]      = "Azunain",
  ["LUA_AUTHOR"]      = "Azunain",
  ["MOD_DESCRIPTION"] = "Reduce rewards to 25% and downgrade outcomes to B-class",
  ["NMS_VERSION"]     = "151220",

  ["MODIFICATIONS"] = {{
    ["MBIN_CHANGE_TABLE"] = {

      -- 1) REWARDTABLE: Dinero/Substancias a 25% + degradar clase/calidad
      {
        ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\REWARDTABLE.MBIN",
        ["EXML_CHANGE_TABLE"] = {
          -- Money (Units/Nanites/Quicksilver)
          {
            ["SPECIAL_KEY_WORDS"]  = {"Reward","GcRewardMoney"},
            ["INTEGER_TO_FLOAT"]   = "PRESERVE",
            ["MATH_OPERATION"]      = "*",
            ["VALUE_CHANGE_TABLE"]  = {
              {"AmountMin", 0.25},
              {"AmountMax", 0.25},
            }
          },
          -- SpecificSubstance (pilas de materiales)
          {
            ["SPECIAL_KEY_WORDS"]  = {"Reward","GcRewardSpecificSubstance"},
            ["INTEGER_TO_FLOAT"]   = "PRESERVE",
            ["MATH_OPERATION"]      = "*",
            ["VALUE_CHANGE_TABLE"]  = {
              {"AmountMin", 0.25},
              {"AmountMax", 0.25},
            }
          },

          -- Downgrade de clase de inventario (ToB)
          {
            -- “No key_word specified, Replace ALL … matching "S" → "B"”
            ["REPLACE_TYPE"]       = "ALL",
            ["VALUE_MATCH"]        = "S",
            ["VALUE_CHANGE_TABLE"] = {{"InventoryClass", "B"}}
          },
          {
            -- “No key_word specified, Replace ALL … matching "A" → "B"”
            ["REPLACE_TYPE"]       = "ALL",
            ["VALUE_MATCH"]        = "A",
            ["VALUE_CHANGE_TABLE"] = {{"InventoryClass", "B"}}
          },

          -- Bajar calidad proc tech a 2
          {
            ["REPLACE_TYPE"]       = "ALL",
            ["VALUE_MATCH"]        = 4,
            ["VALUE_CHANGE_TABLE"] = {{"ProcTechQuality", 2}}
          },
          {
            ["REPLACE_TYPE"]       = "ALL",
            ["VALUE_MATCH"]        = 3,
            ["VALUE_CHANGE_TABLE"] = {{"ProcTechQuality", 2}}
          },
        }
      },

      -- 2) MISSIONTABLE: Dinero a 25% (no hay SpecificSubstance aquí en tu build)
      {
        ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\MISSIONS\TABLES\MISSIONTABLE.MBIN",
        ["EXML_CHANGE_TABLE"] = {
          {
            ["SPECIAL_KEY_WORDS"]  = {"Reward","GcRewardMoney"},
            ["INTEGER_TO_FLOAT"]   = "PRESERVE",
            ["MATH_OPERATION"]      = "*",
            ["VALUE_CHANGE_TABLE"]  = {
              {"AmountMin", 0.25},
              {"AmountMax", 0.25},
            }
          },
        }
      },

      -- Nota: SEASONALMISSIONTABLE no trae GcRewardMoney/SpecificSubstance en 151220,
      -- por eso lo omito para no spamear warnings.
      -- Si querés forzar seasonal también, después te paso una variante “global”.
    }
  }}
}