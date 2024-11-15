local modfilename = "Biomes.RobotFaunaSpawns"
local lua_author  = "Silent"
local lua_version = "1.5"
local mod_author  = "Silent369"
local nms_version = "5.12"
local maintenance = mod_author
local description = [[

Robotic Fauna life forms (Robot Antelope primarily) spawn in more
biomes without impacting the fauna within those additional biomes.
Especially, anomaly planets where only one unique fauna spawns.

]]

--|-------------------------------------------------------------------------------------------------------
--| Scale Multipliers
--|-------------------------------------------------------------------------------------------------------

local _Minimum_Scale     = 3.0  -- Original "0.4"
local _Maximum_Scale     = 9.0  -- Original "3"
local _MinScale_Variance = 0.01 -- Original "0"
local _MaxScale_Variance = 0.01 -- Original "0"
local _WeightingValue    = 0.1  -- Original "1"

--|-------------------------------------------------------------------------------------------------------
--| Biome Archetypes (you can filter the biome lists, remove / comment them out with a double dash --)
--|-------------------------------------------------------------------------------------------------------

--Biome types that have no specific Archetype.
--NEVER use "Weird" = Anomaly Planets
local _BiomeSpecific = {
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
    "Waterworld"
}

--SubBiome types that have no specific Archetype.
local _SubBiomeSpecific = {
    --"Standard",
    "HighQuality",
    --"HugePlant",
    --"HugeLush",
    --"HugeRing",
    --"HugeRock",
    --"HugeScorch",
    --"HugeToxic",
    "Variant_A",
    "Variant_B",
    "Variant_C",
    "Variant_D",
    --"Infested",
    "Swamp",
    "Lava"
}

local _AbandonedBiomes = {
    "AbandonedSystemSpecific"
}

--|-------------------------------------------------------------------------------------------------------
--| MOD DEFINITION CONTAINER
--|-------------------------------------------------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER =
{
    MOD_FILENAME    = string.format("_%s%s.pak", modfilename, "v"..lua_version),
    LUA_AUTHOR      = lua_author,
    MOD_AUTHOR      = mod_author,
    NMS_VERSION     = nms_version,
    MOD_DESCRIPTION = description,
    MAINTENANCE     = maintenance,
    MODIFICATIONS   =
    {
        {
            MBIN_CT =
            {
                {
                    MBIN_FS = [[METADATA\SIMULATION\ECOSYSTEM\CREATUREGENERATIONDATA.MBIN]],
                    EXML_CT = {}
                },
                {
                    MBIN_FS = [[METADATA\SIMULATION\ECOSYSTEM\CREATUREDATATABLE.MBIN]],
                    EXML_CT =
                    {
                        {
                            SKW = {"Id", "ROBOTANTELOPE"},
                            MATH_OP = "*",
                            REPLACE_TYPE = "ALL",
                            ITF = "FORCE",
                            VCT = {
                                {"MinScale", _Minimum_Scale}, -- Original "0.4"
                                {"MaxScale", _Maximum_Scale}, -- Original "3"
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
                    EXML_CT =
                    {
                        {
                            MATH_OP = "+",
                            REPLACE_TYPE = "ALL",
                            ITF = "FORCE",
                            VCT = {
                                {"IncreasedSpawnDistance",          "1"}, -- Original "1"
                                {"MinScaleVariance", _MinScale_Variance}, -- Original "0"
                                {"MaxScaleVariance", _MaxScale_Variance}, -- Original "0"
                            }
                        },
                        {   --OnlyDay, MostlyDay, AnyTime, MostlyNight, OnlyNight
                            SKW = {"ActiveTime", "GcCreatureActiveTime.xml"},
                            REPLACE_TYPE = "ALL",
                            VCT = {{"CreatureActiveTime", "AnyTime"},}
                        },
                        {   --Ensure they will be enabled
                            PKW = {"GcCreatureRoleDescription.xml"},
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

local CreatureGenerationData = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CT"][1]["EXML_CT"]

--|-------------------------------------------------------------------------------------------------------
--| Checks for mismatches between entry.[PKW,SKW] and existingEntry.[PKW,SKW] in CreatureGenerationData
--|-------------------------------------------------------------------------------------------------------

local function isEntryExist(entry)
    for _, existingEntry in ipairs(CreatureGenerationData) do
        -- Early exit if lengths of SKW or PKW don't match
        if #entry.SKW ~= #existingEntry.SKW or #entry.PKW ~= #existingEntry.PKW then
            goto continue
        end

        local isMatch = true
        for i = 1, #entry.SKW do
            if entry.SKW[i] ~= existingEntry.SKW[i] or entry.PKW[i] ~= existingEntry.PKW[i] then
                isMatch = false
                break
            end
        end

        if isMatch then
            return true
        end

        ::continue::
    end
    return false
end

--|-------------------------------------------------------------------------------------------------------
--| Function to Insert Or Modify Biome Ground Data
--|-------------------------------------------------------------------------------------------------------

local function insertOrModifyBiome(CreatureGenerationData, biomeName)
    local biomeSKW = {biomeName, "GcCreatureGenerationOptionalWeightedList.xml"}
    local basePKW = {"Archetypes", "Ground"}

    -- Check if the Ground property exists for the current biome
    if not isEntryExist({
        SKW = biomeSKW,
        PKW = basePKW
    }) then
        -- Insert new data into the Ground property
        table.insert(CreatureGenerationData, {
            SKW = biomeSKW,
            PKW = basePKW,
            CREATE_HOS = true,
            REPLACE_TYPE = "ALL",
            ADD = [[
                <Property value="GcCreatureGenerationWeightedListDomainEntry.xml">
                    <Property name="Weight" value="]].._WeightingValue..[[" />
                    <Property name="Archetype" value="ROBOT" />
                </Property>
            ]]
        })
        -- Modify the Probability for this biome
        table.insert(CreatureGenerationData, {
            SKW = biomeSKW,
            PKW = {"Probability"},
            ITF = "FORCE",
            VCT = {{"Probability", 0.1},}
        })
    end
end

--|-------------------------------------------------------------------------------------------------------
--| Process Specific Biome Entries
--|-------------------------------------------------------------------------------------------------------

-- Process BiomeSpecific
for _, biomeName in ipairs(_BiomeSpecific) do
    insertOrModifyBiome(CreatureGenerationData, biomeName)
end

-- Process SubBiomeSpecific
for _, biomeName in ipairs(_SubBiomeSpecific) do
    insertOrModifyBiome(CreatureGenerationData, biomeName)
end

-- Process Abandoned Biomes
for _, biomeName in ipairs(_AbandonedBiomes) do
    insertOrModifyBiome(CreatureGenerationData, biomeName)
end
