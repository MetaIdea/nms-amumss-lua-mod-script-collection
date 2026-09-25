-- HardcoreSky - Gel-Fed Life Support  (v1.1.0)
--   La vida soporte dura mucho, pero solo el Life Support Gel la recarga (1 gel = barra llena).
--   El oxigeno y la dioxita dejan de cargar (ChargeValue = 0).
--   Receta del gel por variante (sustituye la lista entera):
--     * x30min (facil, materiales de inicio en GRANDES cantidades): 5 JELLY + 2 LAUNCHFUEL + 250 CATALYST1
--     * x20min / x15min: ingrediente duro unico (como en v1.0)
local PROT       = 900
local GEL_CHARGE = 150
local ING1_ID, ING1_TYPE, ING1_AMOUNT = "JELLY", "Product", 5
local ING2_ID, ING2_TYPE, ING2_AMOUNT = "LAUNCHFUEL", "Product", 2
local ING3_ID, ING3_TYPE, ING3_AMOUNT = "CATALYST1", "Substance", 250

local function REQ(id_, itype, amount)
  return string.format(
    '<Property name="Requirements" value="GcTechnologyRequirement" _id="%s">' ..
    '<Property name="ID" value="%s" />' ..
    '<Property name="Type" value="GcInventoryType"><Property name="InventoryType" value="%s" /></Property>' ..
    '<Property name="Amount" value="%d" /></Property>', id_, id_, itype, amount)
end

local GEL_REQS = ""
if ING1_ID ~= "" then GEL_REQS = GEL_REQS .. REQ(ING1_ID, ING1_TYPE, ING1_AMOUNT) end
if ING2_ID ~= "" then GEL_REQS = GEL_REQS .. REQ(ING2_ID, ING2_TYPE, ING2_AMOUNT) end
if ING3_ID ~= "" then GEL_REQS = GEL_REQS .. REQ(ING3_ID, ING3_TYPE, ING3_AMOUNT) end

local HAZARD_CHANGES = {
  {
    PRECEDING_KEY_WORDS = { "Table", "NoOxygen", "ProtectionTime" },
    VALUE_CHANGE_TABLE  = { { "X", PROT }, { "Y", PROT } }
  },
}

local SUBSTANCE_CHANGES = {
  {
    SPECIAL_KEY_WORDS  = { "ChargeValue", "2" },
    WHERE_IN_SECTION   = { { "ID", "OXYGEN" } },
    VALUE_CHANGE_TABLE = { { "ChargeValue", 0 } }
  },
  {
    SPECIAL_KEY_WORDS  = { "ChargeValue", "5" },
    WHERE_IN_SECTION   = { { "ID", "COLD1" } },
    VALUE_CHANGE_TABLE = { { "ChargeValue", 0 } }
  },
}

local PROD_CHANGES = {
  {
    SPECIAL_KEY_WORDS  = { "ChargeValue", "100" },
    WHERE_IN_SECTION   = { { "ID", "PRODFUEL2" } },
    VALUE_CHANGE_TABLE = { { "ChargeValue", GEL_CHARGE } }
  },
  {
    SPECIAL_KEY_WORDS   = { "ID", "PRODFUEL2" },
    PRECEDING_KEY_WORDS = { "Requirements" },
    ADD_OPTION          = "ADDendSECTION",
    ADD                 = GEL_REQS
  },
}

NMS_MOD_DEFINITION_CONTAINER = {
  MOD_FILENAME    = "HardcoreSky_GelFedLifeSupport_x15min.zip",
  MOD_AUTHOR      = "Azunain",
  LUA_AUTHOR      = "Azunain",
  NMS_VERSION     = "7.02",
  MOD_DESCRIPTION = string.format(
    "Life support lasts %d s and only Life Support Gel refills it (1 gel = full bar). Gel recipe: %d %s + %d %s",
    PROT, ING1_AMOUNT, ING1_ID, ING2_AMOUNT, ING2_ID
  ),
  MODIFICATIONS   = {{
    MBIN_CHANGE_TABLE = {
      {
        MBIN_FILE_SOURCE  = "METADATA/SIMULATION/ENVIRONMENT/HAZARDTABLE.MBIN",
        MXML_CHANGE_TABLE = HAZARD_CHANGES
      },
      {
        MBIN_FILE_SOURCE  = "METADATA/REALITY/TABLES/NMS_REALITY_GCSUBSTANCETABLE.MBIN",
        MXML_CHANGE_TABLE = SUBSTANCE_CHANGES
      },
      {
        MBIN_FILE_SOURCE  = "METADATA/REALITY/TABLES/NMS_REALITY_GCPRODUCTTABLE.MBIN",
        MXML_CHANGE_TABLE = PROD_CHANGES
      }
    }
  }}
}