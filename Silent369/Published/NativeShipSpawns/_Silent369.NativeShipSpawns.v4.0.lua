local modfilename = "NativeShipSpawns"
local lua_author  = "Silent"
local lua_version = "4.0"
local mod_author  = "Silent369"
local nms_version = "6.45.1"
local maintenance = mod_author
local description = [[

Make it so Non-Native Ships can spawn natively, anywhere.

Currrently:
    Alien (Living Ship)
    Sentinel (Robot Ship)

They all use the same probability as Exotic Ships,
so don't expect them to show up very often at all.

You can alter the <Class>SpawnWeighting values below
to greatly increase their spawn chance. (Max: 100).

Modifies:
GCSOLARGENERATIONGLOBALS.GLOBAL.MBIN
METADATA\SIMULATION\SPACE\AISPACESHIPMANAGER.MBIN

]]

------------------------------------------------------------------------------------------------------
local AlienSpawnWeighting = 1   --Original "0" (Alien, living ship)
local RobotSpawnWeighting = 1   --Original "0" (Sentinel, robot)
local SpawnFrequencyValue = 1.2 --Spawn Frequencies within T1-T3 and Outlaw economies.
------------------------------------------------------------------------------------------------------
local mbin_file_source1 = [[METADATA\SIMULATION\SPACE\AISPACESHIPMANAGER.MXML]]
local mbin_file_source2 = [[GCSOLARGENERATIONGLOBALS.GLOBAL.MXML]]
------------------------------------------------------------------------------------------------------

function AddSentinelModelData(source)
    if source == "Civilian" then
        return [[
            <Property name="Spaceships" value="ROBOT" _index="23" />
        ]]
    elseif source == "Pirate" then
        return [[
            <Property name="Spaceships" value="ROBOT" _index="8" />
        ]]
    end
end

function SystemSpaceshipsDataArray()
    local change_table = {}
    local sources = {"Civilian", "Pirate"} --Civilian, Pirate, Player

    for _, source in ipairs(sources) do
        local change_entry = {
            SKW = {source, "GcAISpaceshipModelDataArray", "Spaceships", "IGNORE"},
            EXML_FLAGS = "OVERWRITE",
            ADD_OPTION = "ADDendSECTION",
            ADD = AddSentinelModelData(source)
        }
        table.insert(change_table, change_entry)
    end

    return { { MBIN_FS = mbin_file_source1, MXML_CT = change_table } }
end

------------------------------------------------------------------------------------------------------

-- Spawn Frequencies for T1-T3 + Outlaw System
function SpaceshipSpawnFreqMultipliers()
    local change_table = {}

        local change_entry = {
            PKW = {"SpaceshipSpawnFreqMultipliers"},
            MATH_OP = "*",
            EXML_FLAGS = "OVERWRITE",
            REPLACE_TYPE = "ALLINSECTION",
            VCT = {{"IGNORE", SpawnFrequencyValue}}
        }
        table.insert(change_table, change_entry)

    return { { MBIN_FS = mbin_file_source2, MXML_CT = change_table } }
end

------------------------------------------------------------------------------------------------------

-- Class weighting so Alien and Robot can spawn
function CivilianClassWeightings()
    local change_table = {}

        local change_entry = {
            SKW = {"SpaceshipWeightings", "GcAISpaceshipWeightingData"},
            PKW = { "CivilianClassWeightings" },
            EXML_FLAGS = "OVERWRITE",
            REPLACE_TYPE = "ALL",
            VCT = {
                {"Robot", RobotSpawnWeighting},
                {"Alien", AlienSpawnWeighting},
            }
        }
        table.insert(change_table, change_entry)

    return { { MBIN_FS = mbin_file_source2, MXML_CT = change_table } }
end

------------------------------------------------------------------------------------------------------

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
        {MBIN_CT = SystemSpaceshipsDataArray()},
        {MBIN_CT = SpaceshipSpawnFreqMultipliers()},
        {MBIN_CT = CivilianClassWeightings()}
    },
}
