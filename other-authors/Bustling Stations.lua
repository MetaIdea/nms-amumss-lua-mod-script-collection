-- Configuration constants
local NMS_VERSION = "6.34"
local MOD_VERSION = "0"

local GUIF_WAIT = 0

-- Percentage of nodes that should be active for NPC spawning
local DEFAULT_NODES_ACTIVE = 50 -- default 25
-- Percentage chance that NPCs will spawn in a node
local DEFAULT_SPAWN_CHANCE = 80 -- default 100

-- Input validation and clamping utility
local function clamp_percentage(value)
    local rounded = math.floor(value + 0.5) -- Round to nearest integer
    return math.max(1, math.min(100, rounded))
end

-- Convert percentage to decimal with proper formatting
local function percentage_to_decimal(percentage)
    return string.format("%.6f", percentage / 100)
end

-- User input configuration for node activation percentage
local input_nodes_active = {
    DEFAULT_NODES_ACTIVE,
    string.format([[
    What percentage of nodes should be active for NPC spawning?
    Default = 25%% | Current = >> %d%% <<
    Enter a value between 1-100:
]], DEFAULT_NODES_ACTIVE)
}

-- User input configuration for spawn chance percentage
local input_spawn_chance = {
    DEFAULT_SPAWN_CHANCE,
    string.format([[
    What percentage chance should NPCs have to spawn?
    Default = 100%% | Current = >> %d%% <<
    Enter a value between 1-100:
]], DEFAULT_SPAWN_CHANCE)
}

-- Get and validate user inputs
local nodes_active_percent = clamp_percentage(GUIF(input_nodes_active, GUIF_WAIT))
local spawn_chance_percent = clamp_percentage(GUIF(input_spawn_chance, GUIF_WAIT))

-- Convert percentages to decimal values
local FRACTION_OF_NODES_ACTIVE = percentage_to_decimal(nodes_active_percent)
local SPAWN_CHANCE = percentage_to_decimal(spawn_chance_percent)

NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"] = string.format("Bustling Stations %s.%s", NMS_VERSION, MOD_VERSION),
    ["MOD_AUTHOR"] = "NilOutput",
    ["LUA_AUTHOR"] = "NilOutput",
    ["MOD_DESCRIPTION"] = "So much space, yet so few aliens. This mod adds more NPCs to space stations. Useful for rapidly learning languages and increasing faction standing.",
    ["NMS_VERSION"] = NMS_VERSION,
    
    ["MODIFICATIONS"] = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA/SIMULATION/NPCS/NPCSPAWNTABLE.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"PlacementInfos"},
                            ["SECTION_ACTIVE"] = 8,
                            ["VALUE_CHANGE_TABLE"] = {
                                {"PlacementRuleId", "FILLER"},
                                {"SpawnUnderNodeName", "INTERIOR_"},
                                {"PlacmentNodeName", "NPCHIREABLE_"},
                                {"MustPlace", "false"},
                                {"FractionOfNodesActive", FRACTION_OF_NODES_ACTIVE},
                                {"SpawnChance", SPAWN_CHANCE}
                            }
                        }
                    }
                }
            }
        }
    }
}