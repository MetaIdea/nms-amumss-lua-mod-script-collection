-- Place in AMUMSS\ModScript\
-- Run BUILDMOD.bat, enter your multiplier when prompted (e.g., 2 => ~double jumps/charge)
-- Copy the built .pak from AMUMSS\CreatedMODS\ to NMS\GAMEDATA\PCBANKS\MODS\ (delete DISABLEMODS.txt if present)

local BASE_CHARGE        = 120      -- vanilla freighter hyperdrive capacity
local DEFAULT_MULT       = 2        -- used if user presses ENTER / times out
local DEFAULT_MATCH_FUEL = true     -- also scale fuel effectiveness by the same multiplier?

-- AMUMSS prompts (GUIF). ASCII-only text, 60s timeouts.
local askMult = {DEFAULT_MULT, [[
Enter freighter jumps-per-charge multiplier.
Default ~ 5 jumps/charge -> multiplier 2 ~ 10 jumps, 5 ~ 25.
Press ENTER to keep current.
Current default = >> ]] .. DEFAULT_MULT .. [[ <<
]]}

local askFuel = {DEFAULT_MATCH_FUEL, [[
Also scale fuel effectiveness so one Warp Cell/Hypercore fills the same relative amount? (Y/N)
Default = Y | Current = >> ]] .. (DEFAULT_MATCH_FUEL and "Y" or "N") .. [[ <<
]]}

local USER_MULT       = GUIF(askMult, 60)
local MATCH_FUEL_FILL = GUIF(askFuel, 60)

-- Clamp & type safety
if type(USER_MULT) ~= "number" then USER_MULT = DEFAULT_MULT end
if USER_MULT < 0.1 then USER_MULT = 0.1 end
if USER_MULT > 10000 then USER_MULT = 10000 end

-- Compute values
local NEW_CHARGE_AMOUNT     = math.floor(BASE_CHARGE * USER_MULT + 0.5)     -- integer required
local NEW_CHARGE_MULTIPLIER = MATCH_FUEL_FILL and USER_MULT or 1            -- float ok

-- Name the PAK to reflect choices
local function fmtMult(m)
  local s = tostring(m)
  s = s:gsub("[^0-9%.]", ""):gsub("%.(%d%d).*", ".%1")
  return s
end
local PAKNAME = "FreighterHyperdrive_x" .. fmtMult(USER_MULT) .. (MATCH_FUEL_FILL and "_matchfuel" or "_caponly") .. ".pak"

NMS_MOD_DEFINITION_CONTAINER = {
  ["MOD_FILENAME"]    = PAKNAME,
  ["MOD_AUTHOR"]      = "Noobinc1",
  ["NMS_VERSION"]     = "4.x+",
  ["MOD_DESCRIPTION"] = "Choose freighter jumps-per-charge multiplier at build time via AMUMSS prompt.",
  ["MODIFICATIONS"]   = {{
    ["MBIN_CHANGE_TABLE"] = {{
      ["MBIN_FILE_SOURCE"] = "METADATA/REALITY/TABLES/NMS_REALITY_GCTECHNOLOGYTABLE.MBIN",
      ["MXML_CHANGE_TABLE"] = {
        {
          ["SPECIAL_KEY_WORDS"]  = {"Table","GcTechnology","ID","F_HYPERDRIVE"},
          ["VALUE_CHANGE_TABLE"] = {
            {"ChargeAmount", NEW_CHARGE_AMOUNT}
          }
        },
        {
          ["SPECIAL_KEY_WORDS"]  = {"Table","GcTechnology","ID","F_HYPERDRIVE"},
          ["INTEGER_TO_FLOAT"]   = "FORCE",
          ["VALUE_CHANGE_TABLE"] = {
            {"ChargeMultiplier", NEW_CHARGE_MULTIPLIER}
          }
        },
      }
    }}
  }}
}