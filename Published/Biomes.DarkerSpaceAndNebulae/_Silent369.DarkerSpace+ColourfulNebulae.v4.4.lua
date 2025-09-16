local modfilename = "DarkerSpace+ColourfulNebulae"
local lua_author  = "Silent"
local lua_version = "4.4"
local mod_author  = "Silent369"
local nms_version = "6.04"
local maintenance = mod_author
local exmlcreate  = true
local description = [[

This mod creates a truly dark, near-black space environment, retaining the
colourful nebulae fields.

The following variables in the USER CONFIGURATION section can be altered
to change the mod's behaviour:

• [colourSeed]: Change this number to generate a completely new, but
  repeatable set of colour palettes. The same seed will always produce
  the same results.

• [isOverRide] & [Iterations]: Set [isOverRide] to [true] to override the
  default number of colour presets and use the value set in [Iterations]
  instead. This allows for a wider variety of colour combinations to
  appear in-game.

  ** NOTE: The script sets a hard-upper-limit to mitigate against any
  potential issues when excessively high values are entered and will
  fallback to the hard-upper-limit if the value is too high or fallback
  to the game defaults if this value is too low.

• [Saturation]: A single multiplier (0.0 to 1.0) that controls the overall
  saturation of the generated colours. A value of 1.0 will use the full
  range of saturation, while 0.5 will result in colours that are half as
  saturated.

• [Brightness]: A single multiplier (0.0 to 1.0) that controls the overall
  lightness of the generated colours. A value of 1.0 will use the full
  range of lightness, while 0.5 will result in colours that are half as
  bright.

• [col_Scheme]: A variable that controls the colour relationships of
  the generated nebulae. Choose from 'Triadic', 'Complementary', or
  'Analogous'.

]]

--======================================================================================--
-- 1. USER CONFIGURATION
--======================================================================================--

local isOverRide = false             -- Set to 'true' to override default Iterations
local Iterations = 256               -- Number of Iterations when override is 'true'
------------------------------------------------------------------------------------------
local colourSeed = 369               -- Seed for generating repeatable colour palettes
------------------------------------------------------------------------------------------
local numPresets = 128               -- Number of generation presets for nebula colours
local Saturation = 1.0               -- Controls the overall Saturation: (0.0 to 1.0)
local Brightness = 0.8               -- Controls the overall Brightness: (0.0 to 1.0)
------------------------------------------------------------------------------------------
local col_Scheme = "Complementary"   -- Colour Scheme: Analogous, Triadic, Complementary
------------------------------------------------------------------------------------------
local fog_Offset = true              -- Whether to slightly vary the base fog colour
                                     -- within a very small margin: (0.01)
------------------------------------------------------------------------------------------
local spaceValue = 0.01              -- Determines how close to black the space sky is.
                                     -- Higher values re-introduce coloured Space Skies
                                     -- The range is: (0.0 to 1.0)

--======================================================================================--
-- 1.1 IF ISOVERRIDE = TRUE THEN NUMPRESETS = ITERATIONS
--======================================================================================--

-- This ensures each node always receives a unique palette preset for each iteration.
if isOverRide then
    numPresets = Iterations
end

--======================================================================================--
-- 1.2 MBIN FILE CONFIGURATION
--======================================================================================--

-- Default node totals used as fallback
local SRareSkyColours = 47
local SpaceSkyColours = 9

-- Mbin Files to be modified
local mbin_files = {
    [[METADATA\SIMULATION\SOLARSYSTEM\WEATHER\SKYSETTINGS\SPACERARESKYCOLOURS.MBIN]],
    [[METADATA\SIMULATION\SOLARSYSTEM\WEATHER\SKYSETTINGS\SPACESKYCOLOURS.MBIN]]
}

--======================================================================================--
-- 2. PSEUDO-RANDOM NUMBER GENERATOR
--======================================================================================--

-- A PRNG to ensure full determinism and repeatability
-- regardless of the system's global math.random state.
local PRNG = {}
local function new(seed)
    local x = seed % 2147483647
    if x <= 0 then x = 1 end

    local function random(min, max)
        x = x * 16807 % 2147483647
        local value = x / 2147483647
        -- Normalize to a value between 0 and 1
        if min and max then
            return min + (value * (max - min))
        elseif min then
            return math.floor(min + (1 + min) * value)
        else
            return value
        end
    end
    return { random = random }
end
PRNG.new = new

-- Create a single, seeded PRNG instance for the entire script
local prng_instance = PRNG.new(colourSeed)

--======================================================================================--
-- 3. CORE UTILITY FUNCTIONS
--======================================================================================--

-- Clamp a number within a given range
local function clamp(num, min, max)
    return math.max(min, math.min(max, num))
end

-- HSL to RGB conversion
local function HSLtoRGB(h, s, l, a)
    local function hue2rgb(p, q, t)
        if t < 0 then t = t + 1 end
        if t > 1 then t = t - 1 end
        if t < 1/6 then return p + (q - p) * 6 * t end
        if t < 1/2 then return q end
        if t < 2/3 then return p + (q - p) * (2/3 - t) * 6 end
        return p
    end

    h = h / 360
    s = clamp(s, 0, 1)
    l = clamp(l, 0, 1)
    a = clamp(a, 0, 1)

    local r, g, b
    if s == 0 then
        r, g, b = l, l, l -- achromatic
    else
        local q = l < 0.5 and l * (1 + s) or l + s - l * s
        local p = 2 * l - q
        r = hue2rgb(p, q, h + 1/3)
        g = hue2rgb(p, q, h)
        b = hue2rgb(p, q, h - 1/3)
    end
    return r, g, b, a
end

-- RGB to HSL conversion
local function RGBtoHSL(r, g, b)
    local max = math.max(r, g, b)
    local min = math.min(r, g, b)
    local h, s, l
    l = (max + min) / 2
    if max == min then
        h, s = 0, 0 -- achromatic
    else
        local d = max - min
        s = (l > 0.5) and d / (2 - max - min) or d / (max + min)
        if max == r then
            h = (g - b) / d + (g < b and 6 or 0)
        elseif max == g then
            h = (b - r) / d + 2
        elseif max == b then
            h = (r - g) / d + 4
        end
        h = h / 6
    end
    return h * 360, s, l
end

-- Generates a set of hues based on a specific colour scheme
local function get_hues(base_h, scheme)
    if scheme == "Analogous" then
        -- Hues are close to each other on the colour wheel
        return {
            (base_h - 30) % 360,
            base_h,
            (base_h + 30) % 360,
        }
    elseif scheme == "Triadic" then
        -- Hues are equidistant on the colour wheel (120 degrees apart)
        return {
            base_h,
            (base_h + 120) % 360,
            (base_h + 240) % 360,
        }
    elseif scheme == "Complementary" then
        -- Hues are opposite each other on the colour wheel
        return {
            base_h,
            (base_h + 180) % 360,
            (base_h + 180 + prng_instance.random(-10, 10)) % 360, -- Slight variation
        }
    else
        -- Fallback to a simple, related scheme
        return {
            base_h,
            (base_h + 30) % 360,
            (base_h + 60) % 360,
        }
    end
end

--======================================================================================--
-- 4. GENERATION FUNCTIONS
--======================================================================================--

-- Generates a set of nebula colours based on the chosen colour scheme
local function generate_nebula_colours()
    -- Create a unique, repeatable seed for this nebula
    local prng = PRNG.new(math.floor(prng_instance.random() * 1000000))

    -- Randomly determine the base HSL values
    local base_h = prng.random(0, 360)
    local s = clamp(prng.random(0.4, 0.8) * Saturation, 0, 1)
    local l = clamp(prng.random(0.4, 0.8) * Brightness, 0, 1)

    -- Get the hues based on the selected colour scheme
    local hues = get_hues(base_h, col_Scheme)

    -- Define the three derived colours based on lightness offsets
    local l1 = l
    local l2 = clamp(l + 0.3, 0, 1)
    local l3 = clamp(l - 0.1, 0, 1)

    -- Convert the HSL variants back to RGB
    local c1 = { HSLtoRGB(hues[1], s, l1, 1.0) }
    local c2 = { HSLtoRGB(hues[2], s, l2, 1.0) }
    local c3 = { HSLtoRGB(hues[3], s, l3, 1.0) }

    -- Return the three generated nebula colours
    return { NebulaColours = {c1, c2, c3}, base_h = base_h, base_s = s, base_l = l }
end

-- Generates a single cohesive colour for a specific celestial object by
-- applying a set of predefined transformations to a base space colour palette.
local function get_unified_colour(type, space_palette)

    local prng = PRNG.new(math.floor(prng_instance.random() * 100000))

    if type == "TopColour" then return space_palette.top end
    if type == "MidColour" then return space_palette.mid end
    if type == "BottomColour" then return space_palette.bot end

    if type == "TopColourPlanet" or type == "MidColourPlanet" or type == "BottomColourPlanet" then
        -- Random chance to make planet colours identical to space colours
        if prng.random() > 0.5 then
            local mapping = {
                ["TopColourPlanet"] = space_palette.top,
                ["MidColourPlanet"] = space_palette.mid,
                ["BottomColourPlanet"] = space_palette.bot,
            }
            return mapping[type]
        else
            -- Otherwise, derive a new, slightly different colour from the base space palette
            local source_color
            if type == "TopColourPlanet" then source_color = space_palette.top
            elseif type == "MidColourPlanet" then source_color = space_palette.mid
            elseif type == "BottomColourPlanet" then source_color = space_palette.bot
            end

            local h, s, l = RGBtoHSL(source_color[1], source_color[2], source_color[3])

            -- Darken and desaturate for a more muted planetary atmosphere
            l = clamp(l * 0.5, 0.01, 1)
            s = clamp(s * 0.3, 0.01, 1)

            return { HSLtoRGB(h, s, l, 1.0) }
        end
    end

    if type == "CloudColour" then
        local h, s, l = RGBtoHSL(space_palette.mid[1], space_palette.mid[2], space_palette.mid[3])
        -- Darken and desaturate the mid-sky colour
        s = clamp(s * 0.5, 0.0, 1.0)
        l = clamp(l * 0.4, 0.0, 1.0)
        return { HSLtoRGB(h, s, l, 1.0) }
    end

    if type == "FogColour" then
        -- Fog colour is very often a direct copy of the bottom sky colour
        local r, g, b, a = table.unpack(space_palette.bot)
        if fog_Offset then
            -- Add a very small random offset for a subtle effect (fogOffset)
            local offset = (prng_instance.random() * (0.01 * 2) - 0.01)
            r = clamp(r + offset, 0, 1)
            g = clamp(g + offset, 0, 1)
            b = clamp(b + offset, 0, 1)
        end
        return {r, g, b, a}
    end

    if type == "LightColour" then
        -- Light colour generation is independent
        local h, s, l = 200, 0.1, 0.95
        return { HSLtoRGB(h, s, l, 1.0) }
    end

    -- Fallback to a black colour if type is not recognized
    return {0, 0, 0, 1.0}
end

--======================================================================================--
-- 5. SAFE ITERATIONS
--======================================================================================--

-- Ensure a minimum iteration count equal to each mbin's node count.
-- Checks against the hardMax if iteration count is excessively high,
-- otherwise fallback to the files defaults if Iterations is too low.

local function get_max_Iterations()
    local hardMax = 0x800
    local userItr = Iterations
    local result  = {}

    if isOverRide then
        local clmpItr = math.min(userItr, hardMax)
        result.srare_sky = math.max(clmpItr, SRareSkyColours)
        result.space_sky = math.max(clmpItr, SpaceSkyColours)
    else
        result.srare_sky = SRareSkyColours
        result.space_sky = SpaceSkyColours
    end
    return result
end

local maxItr = get_max_Iterations()

--======================================================================================--
-- 6. FINAL MODIFICATIONS
--======================================================================================--

local modifications = {}

-- Generates a single XML property node.
local function format_property(name, r, g, b, a)
    return string.format([[
        <Property name="%s">
            <Property name="R" value="%.6f" />
            <Property name="G" value="%.6f" />
            <Property name="B" value="%.6f" />
            <Property name="A" value="%.6f" />
        </Property>]], name, r, g, b, a)
end

-- Generate and store a set of repeatable colour palettes.
local repeatable_palettes = {}
for i = 1, numPresets do
    repeatable_palettes[i] = generate_nebula_colours()
end

-- Generate and add the modifications for the space sky colours
for mbin_file, count in pairs({
    [mbin_files[1]] = maxItr.srare_sky,
    [mbin_files[2]] = maxItr.space_sky
}) do
    local space_coloursGen = {}
    for i = 0, count do
        -- Use the pre-generated palettes in a repeatable manner
        local palette = repeatable_palettes[ (i % numPresets) + 1 ]
        local base_h, base_s, base_l = palette.base_h, palette.base_s, palette.base_l

        -- Generate the base space gradient first
        local space_palette = {
            top = { HSLtoRGB(base_h, base_s * spaceValue, base_l * spaceValue, 1.0) },
            mid = { HSLtoRGB(base_h, base_s * spaceValue, base_l * spaceValue, 1.0) },
            --bot = { HSLtoRGB(base_h, base_s * spaceValue, base_l * spaceValue, 1.0) },
            bot = { HSLtoRGB(base_h, base_s * spaceValue, clamp(base_l * spaceValue, 0.01, 1.0), 1.0) },
        }

        local properties = {
            {"TopColour",          space_palette.top},
            {"MidColour",          space_palette.mid},
            {"BottomColour",       space_palette.bot},
            {"TopColourPlanet",    get_unified_colour("TopColourPlanet", space_palette)},
            {"MidColourPlanet",    get_unified_colour("MidColourPlanet", space_palette)},
            {"BottomColourPlanet", get_unified_colour("BottomColourPlanet", space_palette)},
            {"CloudColour",        get_unified_colour("CloudColour", space_palette)},
            {"LightColour",        get_unified_colour("LightColour", space_palette)},
        }

        -- Assign the generated nebula colours
        for j = 1, #palette.NebulaColours do
            table.insert(properties, {"NebulaColour" .. j, palette.NebulaColours[j]})
        end

        -- Now add the generated fog colours
        local fog_c = get_unified_colour("FogColour", space_palette)
        table.insert(properties, {"FogColour", fog_c})
        table.insert(properties, {"FogColour2", fog_c})

        local property_strings = {}
        for _, prop in ipairs(properties) do
            table.insert(property_strings, format_property(prop[1], table.unpack(prop[2])))
        end

        table.insert(space_coloursGen, string.format([[
        <Property name="Settings" value="GcSolarSystemSkyColourData" _index="%.0f">%s
        </Property>]], i, table.concat(property_strings)))
    end

    table.insert(modifications, {
        MBIN_CT = {
            {
                MBIN_FS = {mbin_file},
                MXML_CT = {
                    {
                        SKW = {"Settings", "GcSolarSystemSkyColourData"},
                        REPLACE_TYPE = "ALL",
                        REMOVE = "SECTION"
                    },
                    {
                        PKW = {"Settings"},
                        ADD = table.concat(space_coloursGen)
                    }
                },
            },
        },
    })
end

--======================================================================================--
-- 7. MOD DEFINITION
--======================================================================================--

NMS_MOD_DEFINITION_CONTAINER = {
    MOD_FILENAME    = table.concat({modfilename,".v",lua_version}),
    LUA_AUTHOR      = lua_author,
    MOD_AUTHOR      = mod_author,
    NMS_VERSION     = nms_version,
    MOD_DESCRIPTION = description,
    MOD_MAINTENANCE = maintenance,
    EXML_CREATE     = exmlcreate,
    MODIFICATIONS   = modifications
}
