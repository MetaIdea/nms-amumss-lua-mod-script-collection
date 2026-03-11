----------------------------------------------------------------------
-- 10x Multiplied Cave & Water Spawn
-- Author: DracoSys
--
-- Multiplies cave and water creature group density by 10x across all
-- density tiers (Sparse/Normal/Dense/VeryDense). Does not affect
-- rarity weights — rare creatures stay rare, you just encounter more
-- creatures overall in caves and underwater.
--
-- NMS Version: 5.5+
----------------------------------------------------------------------

SPAWN_RATE_MULTIPLIER = 10

NMS_MOD_DEFINITION_CONTAINER =
{
  ["MOD_FILENAME"]    = "10xMultipliedCaveWaterSpawn.pak",
  ["MOD_AUTHOR"]      = "DracoSys",
  ["LUA_AUTHOR"]      = "DracoSys",
  ["MOD_DESCRIPTION"] = "Multiplies cave and water creature spawn density by 10x without affecting rarity",
  ["NMS_VERSION"]     = "5.5+",
  ["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = [[METADATA\SIMULATION\ECOSYSTEM\CREATUREGENERATIONDATA.MBIN]],
          ["MXML_CHANGE_TABLE"] =
          {
            ---------------------------------------------------------
            -- Cave creature groups: multiply all density tiers
            ---------------------------------------------------------
            {
              ["PRECEDING_KEY_WORDS"] = {"CaveGroupsPerKm"},
              ["MATH_OPERATION"]      = "*",
              ["REPLACE_TYPE"]        = "ALL",
              ["VALUE_MATCH"]         = "",
              ["VALUE_CHANGE_TABLE"]  =
              {
                {"Sparse",    SPAWN_RATE_MULTIPLIER},
                {"Normal",    SPAWN_RATE_MULTIPLIER},
                {"Dense",     SPAWN_RATE_MULTIPLIER},
                {"VeryDense", SPAWN_RATE_MULTIPLIER},
              }
            },
            ---------------------------------------------------------
            -- Water creature groups: multiply all density tiers
            ---------------------------------------------------------
            {
              ["PRECEDING_KEY_WORDS"] = {"WaterGroupsPerKm"},
              ["MATH_OPERATION"]      = "*",
              ["REPLACE_TYPE"]        = "ALL",
              ["VALUE_MATCH"]         = "",
              ["VALUE_CHANGE_TABLE"]  =
              {
                {"Sparse",    SPAWN_RATE_MULTIPLIER},
                {"Normal",    SPAWN_RATE_MULTIPLIER},
                {"Dense",     SPAWN_RATE_MULTIPLIER},
                {"VeryDense", SPAWN_RATE_MULTIPLIER},
              }
            },
          }
        },
      }
    },
  }
}