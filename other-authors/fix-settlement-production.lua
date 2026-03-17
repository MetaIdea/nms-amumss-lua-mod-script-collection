----------------------------------------------------------------------
-- Fix Settlement Production
-- Author: DracoSys
--
-- Fixes the inverse productivity bug where upgrading a settlement
-- makes production slower. Reduces the stat-to-timer weights to
-- near-zero so productivity/happiness/population no longer
-- meaningfully penalize cycle time. Also halves the base production
-- cycle, doubles output rates, and boosts the debt repayment
-- modifier to prevent debt death spirals.
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

-- Stat-to-timer weights (vanilla: 100, 30, 30)
-- Set to 1 instead of 0 to keep debt repayment formula functional.
-- At 1, the timer penalty is negligible (<0.01%) but the surplus
-- calculation stays non-zero so debt can be paid off.
STAT_WEIGHT = 1

-- Debt repayment multiplier (vanilla: 2000000)
-- Boosted to compensate for reduced stat weights. With weights at 1
-- the computed surplus is tiny, so the multiplier must be large
-- enough to clear debt in a reasonable time.
DEBT_REPAYMENT = 200000000

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
            --    Reduce stat-to-timer weights to near-zero so
            --    settlement stats no longer meaningfully increase
            --    production cycle duration. Using 1 instead of 0
            --    keeps the debt repayment surplus calculation
            --    functional (weights=0 makes surplus=0, causing
            --    a debt death spiral).
            --    Vanilla weights: MaxPopulation=100, Happiness=30,
            --    Production=30, all scale the timer UP, not down.
            ---------------------------------------------------------
            {
              ["PRECEDING_KEY_WORDS"] = {"StatProductivityContributionModifiers"},
              ["VALUE_CHANGE_TABLE"]  =
              {
                {"MaxPopulation", STAT_WEIGHT},
                {"Happiness",     STAT_WEIGHT},
                {"Production",    STAT_WEIGHT},
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

            ---------------------------------------------------------
            -- 4. Boost debt repayment modifier
            --    With stat weights reduced to 1, the surplus feeding
            --    the debt formula is tiny. Compensate by increasing
            --    the multiplier 100x so debt clears quickly when
            --    judgement events introduce it.
            ---------------------------------------------------------
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"DailyDebtPaymentModifier", DEBT_REPAYMENT},
              }
            },
          }
        },
      }
    }
  }
}