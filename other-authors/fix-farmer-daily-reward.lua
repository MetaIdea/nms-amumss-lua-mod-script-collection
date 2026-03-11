----------------------------------------------------------------------
-- Fix Farmer Daily Reward
-- Author: DracoSys
--
-- The Farmer NPC's daily recurring mission (DM_FARMER / D_FARMER in
-- RECURRINGMISSIONTABLE) rewards a "Plant"-type Delicate Flora —
-- an ancient botanical specimen. This mod changes that reward to the
-- "Farm" type, giving a genetically engineered cross-bred Delicate
-- Flora ("mutated genes") which is otherwise unobtainable.
--
-- Farm and Plant Delicate Flora share identical name generation
-- (same word lists and LegacyRolls=11), producing indistinguishable
-- names. This mod also changes Farm's NameGeneratorLegacyRolls so
-- the two types produce distinct procedural names.
--
-- NMS Version: 5.5+ (Build 161765)
----------------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER =
{
  ["MOD_FILENAME"]    = "FixFarmerDailyReward.pak",
  ["MOD_AUTHOR"]      = "DracoSys",
  ["LUA_AUTHOR"]      = "DracoSys",
  ["MOD_DESCRIPTION"] = "Farmer NPC daily quest rewards the unobtainable Farm-type Delicate Flora (mutated genes) instead of the common Plant type",
  ["NMS_VERSION"]     = "5.5+",
  ["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        ---------------------------------------------------------
        -- 1. PROCEDURALPRODUCTTABLE: Differentiate Farm names
        --    Change NameGeneratorLegacyRolls from 11 to 7 so
        --    Farm flora generate different names than Plant flora.
        ---------------------------------------------------------
        {
          ["MBIN_FILE_SOURCE"] = [[METADATA\REALITY\TABLES\PROCEDURALPRODUCTTABLE.MBIN]],
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Farm", "GcProceduralProductData"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"NameGeneratorLegacyRolls", "7"},
              }
            },
          }
        },

        ---------------------------------------------------------
        -- 2. RECURRINGMISSIONTABLE: Change D_FARMER reward
        --    The R_D_FARMER reward gives a GcRewardProceduralProduct
        --    with category "Plant". Change to "Farm" so the daily
        --    quest gives cross-bred flora (mutated genes) instead
        --    of ancient specimens (years old).
        ---------------------------------------------------------
        {
          ["MBIN_FILE_SOURCE"] = [[METADATA\SIMULATION\MISSIONS\TABLES\RECURRINGMISSIONTABLE.MBIN]],
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "R_D_FARMER", "ProceduralProductCategory", "Plant"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ProceduralProductCategory", "Farm"},
              }
            },
          }
        },
      }
    }
  }
}