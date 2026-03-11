----------------------------------------------------------------------
-- Fix Settlement Production
-- Author: DracoSys
--
-- Fixes the inverse productivity bug where upgrading a settlement
-- makes production slower. Zeroes the stat-to-timer weights so
-- productivity/happiness/population no longer penalize cycle time.
-- Also halves the base production cycle and doubles output rates
-- to make settlements a worthwhile passive income source.
--
-- All values are configurable via the variables below.
--
-- NMS Version: 5.5+
----------------------------------------------------------------------

---------------------------------------
-- CONFIGURATION
-- Adjust these values to taste.
---------------------------------------

-- Production cycle duration in seconds (vanilla: 72000 = 20 hours)
CYCLE_DURATION = 36000     -- 10 hours

-- Stagger between production slot 1 and slot 2 (vanilla: 30000 = 8.3 hours)
SLOT_OFFSET = 15000        -- 4.2 hours

-- Base units produced per cycle for crafted products (vanilla: 5)
PRODUCT_RATE = 10

-- Base units produced per cycle for raw substances (vanilla: 500)
SUBSTANCE_RATE = 1000

---------------------------------------

NMS_MOD_DEFINITION_CONTAINER =
{
  ["MOD_FILENAME"]    = "FixSettlementProduction.pak",
  ["MOD_AUTHOR"]      = "DracoSys",
  ["LUA_AUTHOR"]      = "DracoSys",
  ["MOD_DESCRIPTION"] = "Fixes inverse productivity bug and rebalances settlement production rates",
  ["NMS_VERSION"]     = "5.5+",
  ["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = [[GLOBALS\GCSETTLEMENTGLOBALS.MBIN]],
          ["MXML_CHANGE_TABLE"] =
          {
            ---------------------------------------------------------
            -- 1. Fix the inverse productivity bug
            --    Zero out stat-to-timer weights so settlement stats
            --    no longer increase production cycle duration.
            --    Vanilla weights: MaxPopulation=100, Happiness=30,
            --    Production=30 -- all scale the timer UP, not down.
            ---------------------------------------------------------
            {
              ["PRECEDING_KEY_WORDS"] = {"StatProductivityContributionModifiers"},
              ["VALUE_CHANGE_TABLE"]  =
              {
                {"MaxPopulation", "0"},
                {"Happiness",     "0"},
                {"Production",    "0"},
              }
            },

            ---------------------------------------------------------
            -- 2. Reduce base production cycle time
            --    Vanilla 72000s (20h) means ~1 collection per day.
            --    Halved to 36000s (10h) for ~2 collections per day.
            --    Slot offset halved proportionally.
            ---------------------------------------------------------
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ProductionCycleDurationInSeconds",  CYCLE_DURATION},
                {"ProductionSlotTimerOffsetInSeconds", SLOT_OFFSET},
              }
            },

            ---------------------------------------------------------
            -- 3. Boost output per cycle
            --    Doubles the base rate modifiers so each production
            --    cycle yields more items. Combined with the halved
            --    cycle time, total throughput is ~4x vanilla.
            ---------------------------------------------------------
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ProductUnitsPerCycleRateModifier",    PRODUCT_RATE},
                {"SubstanceUnitsPerCycleRateModifier",  SUBSTANCE_RATE},
              }
            },
          }
        },
      }
    }
  }
}