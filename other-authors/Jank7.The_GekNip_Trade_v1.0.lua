-- =====================================================================
--  The GekNip Trade  v1.0
--  1x NipNip Buds + 6x Carbon + 12x Oxygen -> 2x GekNip
--  Large refiner only (3 ingredients). CO2 extraction fiction.
--  Also doubles the NipNip Buds stack, quadruples GekNip's, and
--  flags GekNip as contraband.
-- =====================================================================

local TEST_MODE     = false
local TEST_TIME     = "0.1"
local TIME_TO_MAKE  = "15"   -- per OPERATION. 20 ops per load -> 5 min.

local OUTPUT_AMOUNT = "2"
local BUD_AMOUNT    = "1"
local CARBON_AMOUNT = "6"    -- keep carbon:oxygen at 1:2
local OXYGEN_AMOUNT = "12"

-- StackMultiplier is a multiplier over the category base (10).
-- Buds 2 -> 20/slot, GekNip 4 -> 40/slot. The 2:1 ratio matches
-- OUTPUT_AMOUNT, so one load of buds fills exactly one output stack.
-- One load draws 120 carbon and 240 oxygen, both under a 250 cap.
local BUD_STACK         = "2"
local GEKNIP_STACK      = "4"
local LEGALITY          = "Illegal"
local ECONOMY_INFLUENCE = "0.100000"

local ID_BUDS   = "NIPNIPBUDS"
local ID_GEKNIP = "TRA_CURIO2"
local ID_CARBON = "FUEL1"
local ID_OXYGEN = "OXYGEN"

-- Text for these keys lives in LocTable.txt, in the same folder as
-- this script. RECIPE_ carries the "Requested Operation:" prefix as
-- part of the string; R_NAME_ is the bare label.
local RECIPE_TYPE = "RECIPE_CO2EXTRACT"
local RECIPE_NAME = "R_NAME_CO2EXTRACT"

-- =====================================================================

local ACTIVE_TIME = TEST_MODE and TEST_TIME or TIME_TO_MAKE

local function Ingredient(id, itype, amount)
  return [[
            <Property value="GcRefinerRecipeElement.xml">
              <Property name="Id" value="]] .. id .. [[" />
              <Property name="Type" value="GcInventoryType.xml">
                <Property name="InventoryType" value="]] .. itype .. [[" />
              </Property>
              <Property name="Amount" value="]] .. amount .. [[" />
            </Property>]]
end

local INGREDIENTS =
  Ingredient(ID_BUDS,   "Product",   BUD_AMOUNT) ..
  Ingredient(ID_CARBON, "Substance", CARBON_AMOUNT) ..
  Ingredient(ID_OXYGEN, "Substance", OXYGEN_AMOUNT)


NMS_MOD_DEFINITION_CONTAINER = {
  MOD_FILENAME    = "Jank7.The_GekNip_Trade_v1.0",
  MOD_AUTHOR      = "Jank",
  LUA_AUTHOR      = "Jank",
  MOD_DESCRIPTION = "Refine NipNip to GekNip -- CO2 extraction of NipNip Buds into GekNip packets in a large refiner. Packets are reclassified as contraband, and both items stack deeper.",
  NMS_VERSION     = "6.45",

  MODIFICATIONS = {{
    MBIN_CHANGE_TABLE = {


      {
        MBIN_FILE_SOURCE = "METADATA\REALITY\TABLES\NMS_REALITY_GCRECIPETABLE.MBIN",
        MXML_CHANGE_TABLE = {{
          PRECEDING_KEY_WORDS = {"Table"},
          ADD = [[
        <Property value="GcRefinerRecipe.xml">
          <Property name="Id" value="REFINERECIPE_NIPNIPPRESS" />
          <Property name="RecipeType" value="]] .. RECIPE_TYPE .. [[" />
          <Property name="RecipeName" value="]] .. RECIPE_NAME .. [[" />
          <Property name="TimeToMake" value="]] .. ACTIVE_TIME .. [[" />
          <Property name="Cooking" value="False" />
          <Property name="Result" value="GcRefinerRecipeElement.xml">
            <Property name="Id" value="]] .. ID_GEKNIP .. [[" />
            <Property name="Type" value="GcInventoryType.xml">
              <Property name="InventoryType" value="Product" />
            </Property>
            <Property name="Amount" value="]] .. OUTPUT_AMOUNT .. [[" />
          </Property>
          <Property name="Ingredients">]] .. INGREDIENTS .. [[

          </Property>
        </Property>
]]
        }}
      },

      {
        MBIN_FILE_SOURCE = "METADATA\REALITY\TABLES\NMS_REALITY_GCPRODUCTTABLE.MBIN",
        MXML_CHANGE_TABLE = {

          {
            SPECIAL_KEY_WORDS = {"ID", ID_GEKNIP},
            VALUE_CHANGE_TABLE = {
              {"StackMultiplier", GEKNIP_STACK},
              {"EconomyInfluenceMultiplier", ECONOMY_INFLUENCE}
            }
          },

          -- Buds already ship as Illegal, so only the stack changes.
          {
            SPECIAL_KEY_WORDS = {"ID", ID_BUDS},
            VALUE_CHANGE_TABLE = {
              {"StackMultiplier", BUD_STACK}
            }
          },

          -- Two properties are named "Legality": the GcLegality section
          -- header and the value inside it. The chained key words select
          -- the section; ONCEINSIDE excludes the section start, so the
          -- change lands on the inner line. Without it, REPLACE_TYPE
          -- defaults to ONCE and overwrites the wrapper's type string.
          {
            SPECIAL_KEY_WORDS  = {"ID", ID_GEKNIP, "Legality", "GcLegality"},
            REPLACE_TYPE       = "ONCEINSIDE",
            VALUE_CHANGE_TABLE = {
              {"Legality", LEGALITY}
            }
          }

        }
      }

    }
  }}
}