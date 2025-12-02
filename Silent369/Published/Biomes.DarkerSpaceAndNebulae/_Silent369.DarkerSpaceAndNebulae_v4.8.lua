local modfilename = "DarkerSpace+ColourfulNebulae"
local lua_author  = "Silent"
local lua_version = "4.8"
local mod_author  = "Silent369"
local nms_version = "6.18"
local maintenance = mod_author
local exmlcreate  = true
local description = [[

Space is much darker and Nebulae colours more subtle visually.

Uses a seed value to determine repeatable colour palettes. You
can optionally set this value to 'nil' or 'os.time()' for a new,
random palette every time.

]]

--======================================================================================--
-- USER CONFIGURATION
--======================================================================================--

local spaceCols  = 0.0001 -- Space Colour (Fixed Dark Value)
local colourStr  = 1.0    -- Colour Strength (Maximum value for randomized R/G/B)
local colourSeed = 369    -- <<-- SET YOUR SEED HERE for repeatable palettes.
                          -- Set to nil or os.time() for a new, random palette every time.

--======================================================================================--
-- PRNG IMPLEMENTATION (MINSTD LCG - High Compatibility)
-- This LCG method ensures full determinism and maximum compatibility (Lua 5.1+).
--======================================================================================--

local PRNG = {}

local function new(input_seed)
    -- Initialize state 'x'. The modulus is 2^31 - 1.
    local x = (input_seed or os.time()) % 2147483647
    if x <= 0 then x = 1 end
    local function random_float()
        -- LCG: X = (A * X) mod M
        -- A = 16807, M = 2147483647 (2^31 - 1)
        x = (x * 16807) % 2147483647
        -- Normalize to a value between 0 and 1
        return x / 2147483647
    end
    return { random_float = random_float }
end
PRNG.new = new

-- Create a single, seeded PRNG instance
local prng_instance = PRNG.new(colourSeed)

--======================================================================================--
-- FILE CONFIGURATION
--======================================================================================--

local mbin_files = {
    [[METADATA\SIMULATION\SOLARSYSTEM\WEATHER\SKYSETTINGS\SPACERARESKYCOLOURS.MBIN]],
    [[METADATA\SIMULATION\SOLARSYSTEM\WEATHER\SKYSETTINGS\SPACESKYCOLOURS.MBIN]]
}

--======================================================================================--
-- RGB VECTOR FUNCTIONS
--======================================================================================--

-- Helper function for dark space background
local function fixed_rgb_vector(value, alpha)
    return {value, value, value, alpha or 1.0}
end

-- Generate seeded, random RGB components
local function random_rgb_vector(strength, alpha)
    -- Calls the new prng_instance:random_float()
    local r = prng_instance.random_float() * strength
    local g = prng_instance.random_float() * strength
    local b = prng_instance.random_float() * strength
    return {r, g, b, alpha or 1.0}
end

--======================================================================================--
-- SPACE SKY COLOURS (SEEDED VIA MINSTD LCG)
--======================================================================================--

local SpaceColours = {
    -- Space Colours remain fixed and dark
    TopColour          = fixed_rgb_vector(spaceCols),
    MidColour          = fixed_rgb_vector(spaceCols),
    BottomColour       = fixed_rgb_vector(spaceCols),

    -- Randomized based on the seed, capped by colourStr
    TopColourPlanet    = random_rgb_vector(colourStr),
    MidColourPlanet    = random_rgb_vector(colourStr),
    BottomColourPlanet = random_rgb_vector(colourStr),
    CloudColour        = random_rgb_vector(colourStr),

    -- Light colour remains near-white (static)
    LightColour        = {0.92, 0.94, 0.96, 1.0},

    -- Nebula and Fog colours are randomly generated
    NebulaColour1      = random_rgb_vector(colourStr),
    NebulaColour2      = random_rgb_vector(colourStr),
    NebulaColour3      = random_rgb_vector(colourStr),
    FogColour          = random_rgb_vector(colourStr),
    FogColour2         = random_rgb_vector(colourStr),
}

--======================================================================================--
-- FINAL MODIFICATIONS
--======================================================================================--

local modifications = {}

for _, filepath in ipairs(mbin_files) do
    local vct_entries = {}
    for property, value in pairs(SpaceColours) do
        table.insert(vct_entries, {
            SKW = {"Settings", "GcSolarSystemSkyColourData"},
            PKW = {property},
            MATH_OP = "*",
            REPLACE_TYPE = "ALL",
            VCT = {
                {"R", value[1]},
                {"G", value[2]},
                {"B", value[3]},
                {"A", value[4]}
            }
        })
    end
    table.insert(modifications, {
        MBIN_CT = {
            {
                MBIN_FS = filepath,
                MXML_CT = vct_entries
            }
        }
    })
end

--======================================================================================--
-- MOD DEFINITION CONTAINER
--======================================================================================--

NMS_MOD_DEFINITION_CONTAINER =
{
    MOD_FILENAME    = table.concat({modfilename, ".v", lua_version}),
    LUA_AUTHOR      = lua_author,
    MOD_AUTHOR      = mod_author,
    NMS_VERSION     = nms_version,
    MOD_MAINTENANCE = maintenance,
    MOD_DESCRIPTION = description,
    EXML_CREATE     = exmlcreate,
    MODIFICATIONS   = modifications,
}
