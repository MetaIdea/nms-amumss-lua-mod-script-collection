-- =====================================================================
--  VoidBlack 1.4 — Black Space, Black Galaxy Map, Quiet Void
-- =====================================================================
--  AMUMSS script (AMUMSS >= 5.6.x, NMS 6.45 MXML format)
--  Author: robmac367
--
--  ---------------------------------------------------------------
--  HOW THIS MOD IS DELIVERED
--  ---------------------------------------------------------------
--  Current AMUMSS -- the v5.6.x line, for NMS >= 5.5 -- does NOT
--  produce a .pak. It writes the finished mod as a loose folder under
--  CreatedMODS\ and copies it into the game for you:
--
--      GAMEDATA\MODS\VoidBlack\<vanilla relative path>\<file>.MBIN
--
--  To rebuild after a game update: put this script in
--  AMUMSS\ModScript\, run BUILDMOD.bat, read REPORT.lua and search
--  it for WARNING and "not found", then copy CreatedMODS\VoidBlack\
--  to any other machine that needs it.
--
--  [corrected 22 Aug 2026, from a user comment on the Nexus page]
--  This header used to say the script produces a .pak that must be
--  unpacked and copied by hand. That was true of the pre-5.5 AMUMSS
--  line only. NMS 5.50 "Worlds Part II" reworked the mod system so
--  mods no longer need packing, and AMUMSS >= 5.6 builds straight to
--  the loose-folder layout. PCBANKS\MODS being dead was right; the
--  pak step in front of it was not.
--
--  Globals files are the exception to the path rule: vanilla globals
--  sit flat at the pak root, so GCGALAXYGLOBALS.GLOBAL.MBIN goes at
--  the ROOT of the mod folder, not under a GLOBALS\ subfolder.
--  Verified working in game 9 Aug 2026 — GcGalaxyGlobals accepts a
--  whole-file MBIN replacement (GcGraphicsGlobals does not; do not
--  assume one globals template behaves like another).
--
--  ---------------------------------------------------------------
--  WHAT THIS MOD DOES — five independent changes
--  ---------------------------------------------------------------
--  1. GALAXY MAP  (GCGALAXYGLOBALS.GLOBAL.MBIN)
--     - Zeroes the nebula fog / background wash so the map reads as
--       stars on pure black. Applied to BOTH render setups: the normal
--       one and the centre-jump animation one.
--     - Replaces the five star colours with unmistakable extremes.
--       The three colourblind palettes are deliberately left vanilla
--       so the accessibility modes keep working.
--
--  2. IN-SYSTEM SPACE  (SPACESKYCOLOURS + SPACERARESKYCOLOURS)
--     - Every sky / fog / cloud / nebula colour to pure black in every
--       palette entry.
--     - LightColour is DELIBERATELY NOT TOUCHED, so the system's star
--       still lights your ship. Alpha is left alone too.
--
--  3. HEAVY AIR EMITTERS  (5 files under MODELS\EFFECTS\HEAVYAIR\SPACE)

--  REMOVED 13 September 2026: the PLASMA and ANIMATEDDUST material edits.
--  They were redundant, not broken. ANIMATEDDUST.MATERIAL is referenced
--  only by SPACE2.HEAVYAIR and PLASMA.MATERIAL only by SPACEPLASMA.HEAVYAIR,
--  checked against all 82 heavy air files in the game, and section 3 below
--  already sets both of those emitters to zero particles. With no particles
--  drawn the material is never used, so zeroing its colour changed nothing.
--  Full record: DOCS/VOIDBLACK-VANILLA-DIFF-2026-09-13.md

--     - Particle count set to zero. This is strictly better than
--       hiding them: nothing spawns at all, so there is no particle
--       simulation cost either.
--     - Field confirmed as TkHeavyAirData.NumberOfParticles (int,
--       struct 0xC4) by matching the file GUID 0x880FCBADA158F525
--       against libMBIN.
--
--  NOT INCLUDED: BACKGROUND SPACE ENCOUNTERS
--     - Versions up to 22 Aug 2026 zeroed SpawnChance on the drifting
--       space storms and gas clouds in EXPERIENCESPAWNTABLE.MBIN.
--     - REMOVED FROM THE MOD 23 Aug 2026. It was the only
--       gameplay-visible change in VoidBlack, the storms are harmless
--       to fly through, and this is meant to be a visual mod. That
--       file no longer ships; background encounters are vanilla.
--
--  ---------------------------------------------------------------
--  TUNING — everything adjustable lives in the tables below.
--  Colour components are floats 0..1 (divide 0..255 values by 255).
-- =====================================================================

-- ---------- user tunables -------------------------------------------

-- Galaxy map star colours (extremes; edit to taste)
local STAR_COLOURS = {
  { name = "Yellow", R = "1",    G = "0.9",  B = "0.15" },
  { name = "Green",  R = "0.1",  G = "1",    B = "0.1"  },
  { name = "Blue",   R = "0.15", G = "0.45", B = "1"    },  -- pure 0,0,1 reads too dark on black
  { name = "Red",    R = "1",    G = "0.05", B = "0.05" },
  { name = "Purple", R = "0.65", G = "0.15", B = "1"    },
}

-- In-system space colour. Raise slightly (e.g. "0.01") for a
-- barely-visible deep grey instead of true black.
local SPACE_R, SPACE_G, SPACE_B = "0", "0", "0"

-- Heavy-air particle count. 0 = the emitter spawns nothing at all.
local HEAVYAIR_PARTICLES = "0"

-- ---------- end of user tunables ------------------------------------

local ZERO = "0"

-- Galaxy map nebula/background fields. MXML names verified against
-- libMBIN GcGalaxyRenderSetupData (10 Aug 2026).
local NEBULA_FIELDS = {
  {"Nebulae Alpha Pow",            ZERO},   -- vanilla 1.4
  {"Nebulae Trace Value Mult",     ZERO},   -- vanilla 0.65
  {"Nebulae Trace Scale",          ZERO},   -- vanilla -0.06
  {"Nebulae Trace Density",        ZERO},   -- vanilla 0.75
  {"Nebulae Trace Density Cutoff", ZERO},   -- vanilla 0.998
  {"Star Field Blend Amount",      ZERO},   -- vanilla 0.75
}

-- Both galaxy render setups get identical treatment
local RENDER_SETUPS = { "DefaultRenderSetup", "FinalAnimationRenderSetup" }

-- In-system palette colour fields (template GcSolarSystemSkyColourData),
-- every field EXCEPT LightColour.
-- Note: "TopColour" as a keyword also matches "TopColourPlanet"; the
-- explicit Planet entries are kept for readability and the overlap is
-- harmless because the values are identical.
local SKY_FIELDS_TO_BLACK = {
  "TopColour", "MidColour", "BottomColour",
  "TopColourPlanet", "MidColourPlanet", "BottomColourPlanet",
  "CloudColour", "FogColour", "FogColour2",
  "NebulaColour1", "NebulaColour2", "NebulaColour3",
}

-- ---------- build the change tables ---------------------------------

-- 1. GCGALAXYGLOBALS
local GALAXY_MXML_CT = {}

for _, setup in ipairs(RENDER_SETUPS) do
  table.insert(GALAXY_MXML_CT, {
    ["COMMENT"]            = "Zero nebulae + star field wash in " .. setup,
    ["SPECIAL_KEY_WORDS"]  = { setup, "GcGalaxyRenderSetupData" },
    ["VALUE_CHANGE_TABLE"] = NEBULA_FIELDS,
  })
  -- Nebulae Trace Step Range is a Vector2f, so X and Y separately
  table.insert(GALAXY_MXML_CT, {
    ["COMMENT"]             = "Zero Nebulae Trace Step Range in " .. setup,
    ["SPECIAL_KEY_WORDS"]   = { setup, "GcGalaxyRenderSetupData" },
    ["PRECEDING_KEY_WORDS"] = { "Nebulae Trace Step Range" },
    ["VALUE_CHANGE_TABLE"]  = { {"X", ZERO}, {"Y", ZERO} },
  })
end

-- Star colours: BaseStarDefaultColours -> ColourByStarType -> per-star.
-- BaseStarDeuteranopiaColours / Protanopia / Tritanopia are NOT touched.
for _, star in ipairs(STAR_COLOURS) do
  table.insert(GALAXY_MXML_CT, {
    ["COMMENT"]             = "Galaxy map star colour: " .. star.name,
    ["PRECEDING_KEY_WORDS"] = { "BaseStarDefaultColours", "ColourByStarType", star.name },
    ["VALUE_CHANGE_TABLE"]  = {
      {"R", star.R}, {"G", star.G}, {"B", star.B}, {"A", "1"},
    },
  })
end

-- 2. SPACESKYCOLOURS / SPACERARESKYCOLOURS
local SKY_MXML_CT = {}
for _, field in ipairs(SKY_FIELDS_TO_BLACK) do
  table.insert(SKY_MXML_CT, {
    ["COMMENT"]             = "Black out " .. field .. " in every palette entry",
    ["PRECEDING_KEY_WORDS"] = { field },
    ["REPLACE_TYPE"]        = "ALL",
    ["VALUE_CHANGE_TABLE"]  = {
      {"R", SPACE_R}, {"G", SPACE_G}, {"B", SPACE_B},
      -- Alpha intentionally untouched
    },
  })
end
-- LightColour is intentionally absent: it is the star's light on your
-- ship and HUD and stays vanilla.

-- 3. Heavy-air emitters. MXML name has spaces: "Number Of Particles"
-- (TkHeavyAirData Index 1, MxmlName = "Number Of Particles").
local HEAVYAIR_CT = {
  {
    ["COMMENT"]            = "Emitter spawns no particles at all",
    ["VALUE_CHANGE_TABLE"] = { {"Number Of Particles", HEAVYAIR_PARTICLES} },
  },
}

-- ---------- mod container -------------------------------------------

NMS_MOD_DEFINITION_CONTAINER =
{
  ["MOD_FILENAME"]    = "VoidBlack.pak",   -- build artifact only; ship the loose folder (see header)
  ["MOD_AUTHOR"]      = "robmac367",
  ["LUA_AUTHOR"]      = "robmac367",
  ["MOD_DESCRIPTION"] = "Black space in-system (star light preserved), black galaxy map background, unmistakable galaxy-map star colours, no heavy-air particles",
  ["NMS_VERSION"]     = "6.45",   -- reference only; rebuild after game updates

  ["MODIFICATIONS"] =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["COMMENT"]           = "1. Galaxy map: black background + obvious star colours",
          ["MBIN_FILE_SOURCE"]  = [[GCGALAXYGLOBALS.GLOBAL.MBIN]],
          ["MXML_CHANGE_TABLE"] = GALAXY_MXML_CT,
        },
        {
          ["COMMENT"]           = "2. In-system space: black sky, star light kept (common + rare palettes)",
          ["MBIN_FILE_SOURCE"]  =
          {
            [[METADATA\SIMULATION\SOLARSYSTEM\WEATHER\SKYSETTINGS\SPACESKYCOLOURS.MBIN]],
            [[METADATA\SIMULATION\SOLARSYSTEM\WEATHER\SKYSETTINGS\SPACERARESKYCOLOURS.MBIN]],
          },
          ["MXML_CHANGE_TABLE"] = SKY_MXML_CT,
        },
        {
          ["COMMENT"]           = "3. Heavy air: zero particle counts in open space",
          ["MBIN_FILE_SOURCE"]  =
          {
            [[MODELS\EFFECTS\HEAVYAIR\SPACE\NEBULABITS.HEAVYAIR.MBIN]],    -- vanilla 20
            [[MODELS\EFFECTS\HEAVYAIR\SPACE\NEBULADUST.HEAVYAIR.MBIN]],    -- vanilla 200
            [[MODELS\EFFECTS\HEAVYAIR\SPACE\SPACE.HEAVYAIR.MBIN]],         -- vanilla 1000
            [[MODELS\EFFECTS\HEAVYAIR\SPACE\SPACE2.HEAVYAIR.MBIN]],        -- vanilla 500
            [[MODELS\EFFECTS\HEAVYAIR\SPACE\SPACEPLASMA.HEAVYAIR.MBIN]],   -- vanilla 100
          },
          ["MXML_CHANGE_TABLE"] = HEAVYAIR_CT,
        },
      },
    },
  },
}

-- =====================================================================
--  VERIFICATION NOTES (10 Aug 2026)
--  Every edit above was confirmed by byte-diffing the shipped mod
--  against pak-extracted vanilla, and every field name was resolved
--  from libMBIN template definitions rather than guessed:
--
--    TkHeavyAirData                    GUID 0x880FCBADA158F525
--    GcGalaxyGlobals                   GUID 0xE03AE967EB72F7D0
--    GcGalaxyRenderSetupData           all six nebula MxmlNames
--    GcGalaxyStarColours               ColourByStarType[5]
--
--  MBIN header is 0x20 bytes; struct offset = file offset - 0x20.
-- =====================================================================
