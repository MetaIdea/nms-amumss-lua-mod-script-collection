local modfilename = "RobotFaunaSpawns"
local lua_author  = "Silent"
local lua_version = "1.1"
local mod_author  = "Silent369"
local nms_version = "5.73"
local maintenance = mod_author
local description = [[

Robotic Fauna life forms (Robot Antelope primarily) spawn in more
biomes that have no specific Archetype, without impacting the fauna
within biomes with Archetypes already set. Taking care to not spawn
on Anomaly planets where only one unique fauna spawns.

]]

--|-------------------------------------------------------------------------------------------------------
--| Scale Multipliers
--|-------------------------------------------------------------------------------------------------------

local Minimum_Scale     = 3.0  -- Original "0.4"
local Maximum_Scale     = 9.0  -- Original "3"
local MinScale_Variance = 0.01 -- Original "0"
local MaxScale_Variance = 0.01 -- Original "0"
local WeightingValue    = 0.1  -- Original "1"

--|-------------------------------------------------------------------------------------------------------
--| Biome types that have no specific Archetype.
--| NOTE: "NEVER" use "Weird" = Anomaly Planets
--|-------------------------------------------------------------------------------------------------------

local BiomeSpecific = {
    "Lush",
    --"Toxic",
    --"Scorched",
    --"Radioactive",
    "Frozen",
    --"Barren",
    "Red",
    "Green",
    "Blue",
    "Swamp",
    "Lava",
    "GasGiant"
}

--|-------------------------------------------------------------------------------------------------------
--| SubBiome types that have no specific Archetype.
--|-------------------------------------------------------------------------------------------------------

local SubBiomeSpecific = {
    "Standard",
    "HighQuality",
    "HugePlant",
    "HugeLush",
    "HugeRing",
    "HugeRock",
    "HugeScorch",
    "HugeToxic",
    "Variant_A",
    "Variant_B",
    "Variant_C",
    "Variant_D",
    "Infested",
    "Swamp",
    "Lava",
    "Worlds",
    "Remix_A",
    "Remix_B",
    "Remix_C",
    "Remix_D"
}

local AbandonedBiomes = {
    "AbandonedSystemSpecific"
}

--|-------------------------------------------------------------------------------------------------------
--| MOD DEFINITION CONTAINER
--|-------------------------------------------------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER =
{
    MOD_FILENAME    = table.concat({modfilename, ".v", lua_version}),
    LUA_AUTHOR      = lua_author,
    MOD_AUTHOR      = mod_author,
    NMS_VERSION     = nms_version,
    MOD_DESCRIPTION = description,
    MOD_MAINTENANCE = maintenance,
    MODIFICATIONS   =
    {
        {
            MBIN_CT =
            {
                {
                    MBIN_FS = [[METADATA\SIMULATION\ECOSYSTEM\CREATUREGENERATIONDATA.MBIN]],
                    MXML_CT = {}
                },
                {
                    MBIN_FS = [[METADATA\SIMULATION\ECOSYSTEM\CREATUREDATATABLE.MBIN]],
                    MXML_CT =
                    {
                        {
                            SKW = {"Id", "ROBOTANTELOPE"},
                            MATH_OP = "*",
                            REPLACE_TYPE = "ALL",
                            VCT = {
                                {"MinScale", Minimum_Scale}, -- Original "0.4"
                                {"MaxScale", Maximum_Scale}, -- Original "3"
                            }
                        },
                        {
                            SKW = {"Id", "ROBOTANTELOPE"},
                            REPLACE_TYPE = "ALL",
                            VCT = {{"OnlySpawnWhenIdIsForced", "False"},}
                        },
                    }
                },
                {
                    MBIN_FS = [[METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEROBOT.MBIN]],
                    MXML_CT =
                    {
                        {
                            MATH_OP = "+",
                            REPLACE_TYPE = "ALL",
                            VCT = {
                                {"IncreasedSpawnDistance",          "1"}, -- Original "1"
                                {"MinScaleVariance", MinScale_Variance}, -- Original "0"
                                {"MaxScaleVariance", MaxScale_Variance}, -- Original "0"
                            }
                        },
                        {   --OnlyDay, MostlyDay, AnyTime, MostlyNight, OnlyNight
                            SKW = {"ActiveTime", "GcCreatureActiveTime"},
                            REPLACE_TYPE = "ALL",
                            VCT = {{"CreatureActiveTime", "AnyTime"},}
                        },
                        {   --Ensure they will be enabled
                            SKW = {"RoleDescription", "GcCreatureRoleDescription"},
                            REPLACE_TYPE = "ALL",
                            VCT = {{"ProbabilityOfBeingEnabled", "1"},}
                        },
                        {   --Small, Medium, Large, Huge
                            SKW = {"ForceID", "ROBOTANTELOPE"},
                            PKW = {"MinSize"},
                            REPLACE_TYPE = "ALL",
                            VCT = {{"CreatureSizeClass", "Large"},}
                        },
                        {    --Small, Medium, Large, Huge
                            SKW = {"ForceID", "ROBOTANTELOPE"},
                            PKW = {"MaxSize"},
                            REPLACE_TYPE = "ALL",
                            VCT = {{"CreatureSizeClass", "Huge"},}
                        },
                    }
                },
            }
        },
    }
}

local CreatureGenerationData = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CT"][1]["MXML_CT"]

--|-------------------------------------------------------------------------------------------------------
--| Checks for mismatches between entry.[PKW,SKW] and existingEntry.[PKW,SKW] in CreatureGenerationData
--|-------------------------------------------------------------------------------------------------------

local function isEntryExist(entry)
    for _, existingEntry in ipairs(CreatureGenerationData) do
        -- Check if SKW arrays are identical
        local skw_match = #entry.SKW == #existingEntry.SKW
        if skw_match then
            for i = 1, #entry.SKW do
                if entry.SKW[i] ~= existingEntry.SKW[i] then
                    skw_match = false
                    break -- Exit inner loop if mismatch found
                end
            end
        end
        -- Check if PKW arrays are identical
        local pkw_match = #entry.PKW == #existingEntry.PKW
        if pkw_match then
            for i = 1, #entry.PKW do
                if entry.PKW[i] ~= existingEntry.PKW[i] then
                    pkw_match = false
                    break -- Exit inner loop if mismatch found
                end
            end
        end
        -- If both SKW and PKW match, the entry exists
        if skw_match and pkw_match then
            return true
        end
    end
    return false -- No matching entry found
end

--|-------------------------------------------------------------------------------------------------------
--| Function to Insert Or Modify Biome Ground Data
--|-------------------------------------------------------------------------------------------------------

local function insertOrModifyBiome(CreatureGenerationData, biomeName)
    local biomeSKW = {biomeName, "GcCreatureGenerationOptionalWeightedList"}
    local basePKW = {"Archetypes", "Ground"}

    -- Check if the Ground property exists for the current biome
    -- If not, we add both the Archetype and Probability modifications.
    -- This ensures we only add these entries once per biome.
    if not isEntryExist({
        SKW = biomeSKW,
        PKW = basePKW
    }) then
        table.insert(CreatureGenerationData, {
            SKW = biomeSKW,
            PKW = basePKW,
            CREATE_HOS = true,
            REPLACE_TYPE = "ALL",
            ADD = [[
                <Property value="GcCreatureGenerationWeightedListDomainEntry">
                    <Property name="Weight" value="]] .. WeightingValue .. [[" />
                    <Property name="Archetype" value="ROBOT" />
                </Property>
            ]]
        })
        -- Modify the Probability for this biome
        table.insert(CreatureGenerationData, {
            SKW = biomeSKW,
            PKW = {"Probability"},
            VCT = {{"Probability", 0.1},}
        })
    end
end

--|-------------------------------------------------------------------------------------------------------
--| Process Specific Biome Entries
--|-------------------------------------------------------------------------------------------------------

-- Process Biome Specific
for _, biomeName in ipairs(BiomeSpecific) do
    insertOrModifyBiome(CreatureGenerationData, biomeName)
end

-- Process SubBiome Specific
for _, biomeName in ipairs(SubBiomeSpecific) do
    insertOrModifyBiome(CreatureGenerationData, biomeName)
end

-- Process Abandoned Biomes
for _, biomeName in ipairs(AbandonedBiomes) do
    insertOrModifyBiome(CreatureGenerationData, biomeName)
end
