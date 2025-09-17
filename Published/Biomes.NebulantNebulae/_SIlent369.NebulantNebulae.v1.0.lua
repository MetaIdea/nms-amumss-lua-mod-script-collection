local modfilename = "NebulantNebulae"
local lua_author  = "Silent"
local lua_version = "1.0"
local mod_author  = "Silent369"
local nms_version = "6.04"
local maintenance = mod_author
local exmlcreate  = true
local description = [[

The script uses a single master seed to generate and select a unique,
repeatable set of nebula properties. It does this by first creating a
large, distinct collection of nebulae properties, then using the same
master seed to deterministically choose one specific nebula from that
collection to apply to the game. This ensures that every time you use
the same seed, you will get the exact same nebula properties.

]]

--======================================================================================--
-- 1. USER CONFIGURATION
--======================================================================================--

local cfgMasterSeed = 125

--======================================================================================--
-- 1.1 FILE CONFIGURATION
--======================================================================================--

local cfgFiles = {
    [[GCSKYGLOBALS.GLOBALS.MBIN]]
}

--======================================================================================--
-- 2. GENERATION FUNCTIONS
--======================================================================================--

-- A simple, seeded pseudo-random number generator.
local function create_prng(seed)
    local x = seed % 2147483647
    if x <= 0 then x = 1 end
    return function()
        x = x * 16807 % 2147483647
        return x / 2147483647
    end
end

-- Function to generate a series of unique, deterministic seeds.
local function generate_nebula_seeds(master_seed, count)
    local seeds = {}
    local rng = create_prng(master_seed)
    local min_seed, max_seed = 1, 0x800
    for i = 1, count do
        local generated_value = min_seed + rng() * (max_seed - min_seed)
        seeds[i] = math.floor(generated_value)
    end
    return seeds
end

-- Function to generate a set of nebula properties with min/max ranges.
local function generate_dynamic_ranges(seed, game_defaults)
    local ranges = { min = {}, max = {} }
    local rng = create_prng(seed)

    for _, props in ipairs(game_defaults) do
        local prop_name, default_min, default_max = table.unpack(props)

        local final_min
        local final_max

        -- Special case: Keep NebulaSeed's min/max values fixed.
        if prop_name == "NebulaSeed" then
            final_min = default_min
            final_max = default_max
        else
            -- Generate two random values and sort them to ensure min <= max.
            local r1 = rng()
            local r2 = rng()
            local random_min = math.min(r1, r2)
            local random_max = math.max(r1, r2)

            -- Map the sorted random values to the property's default min/max range.
            final_min = default_min + random_min * (default_max - default_min)
            final_max = default_min + random_max * (default_max - default_min)
        end

        -- Store the generated values, rounded to two decimal places.
        ranges.min[prop_name] = math.floor(final_min * 100) / 100
        ranges.max[prop_name] = math.floor(final_max * 100) / 100
    end

    return ranges
end

-- Default nebula settings, used as min/max reference.
local default_data = {
    {"NebulaFrequency",          1.75,  2.50},
    {"NebulaSparseness",         0.70,  0.90},
    {"NebulaWispyness",          0.20,  0.99},
    {"NebulaBrightness",         1.00,  3.00},
    {"NebulaSeed",               0.00,  100.00},
    {"NebulaTendrilStrength",    0.00,  4.50},
    {"NebulaFogAmount",          0.00,  0.50},
    {"NebulaCloudStrength",      0.00,  1.10},
    {"NebulaNoiseFrequency",     0.50,  0.55},
    {"CloudNoiseFrequency",      0.25,  0.50},
    {"NebulaTurbulenceStrength", 0.25,  2.00},
    {"NebulaFBMStrength",        0.25,  1.00},
    {"NebulaDistortionStrength", 0.01,  0.20}
}

-- Static properties are applied to both Min/Max values
local nebula_fixed = {
    NebulaWispyness1     = 1.00,
    NebulaCloudStrength1 = 0.55,
    NebulaFBMStrength1   = 1.00
}

-- The total number of unique nebulae to generate (internal).
local total_nebulae = 0x800

-- This table maps each nebula to a unique seed.
local nebula_seeds = generate_nebula_seeds(cfgMasterSeed, total_nebulae)

-- Deterministically select one seed from the generated list.
local selection_rng = create_prng(cfgMasterSeed)
local selected_index = math.floor(selection_rng() * total_nebulae) + 1
local nebula_props = generate_dynamic_ranges(nebula_seeds[selected_index], default_data)

--======================================================================================--
-- 3. FINAL MODIFICATIONS
--======================================================================================--

local modifications = {}
local vct_entries = {}

if nebula_props then
    -- Populate SpaceSkyMin with min values
    for property, value in pairs(nebula_props.min) do
        table.insert(vct_entries, {
            SKW = {"SpaceSkyMin", "GcSpaceSkyProperties"},
            VCT = {{ property, value }}
        })
    end

    -- Populate SpaceSkyMax with max values
    for property, value in pairs(nebula_props.max) do
        table.insert(vct_entries, {
            SKW = {"SpaceSkyMax", "GcSpaceSkyProperties"},
            VCT = {{ property, value }}
        })
    end
    table.insert(modifications, {
        MBIN_CT = {
            {
                MBIN_FS = {cfgFiles[1]},
                MXML_CT = vct_entries
            }
        }
    })

    -- Populate fixed properties
    local vct_fixed_entries = {}
    for property, value in pairs(nebula_fixed) do
        table.insert(vct_fixed_entries, {
            SKW = {
                {"SpaceSkyMin", "GcSpaceSkyProperties"},
                {"SpaceSkyMax", "GcSpaceSkyProperties"},
            },
            REPLACE_TYPE = "ALL",
            VCT = {{ property, value }}
        })
    end
    table.insert(modifications, {
        MBIN_CT = {
            {
                MBIN_FS = {cfgFiles[1]},
                MXML_CT = vct_fixed_entries
            }
        }
    })
end

--======================================================================================--
-- 4. MOD DEFINITION CONTAINER
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
