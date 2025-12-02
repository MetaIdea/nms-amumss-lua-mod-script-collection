local modfilename = "NativeShipSpawns"
local lua_author  = "Silent"
local lua_version = "3.5"
local mod_author  = "Silent369"
local nms_version = "6.18"
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
local mbin_file_source = [[GCSOLARGENERATIONGLOBALS.GLOBAL.MBIN]]
------------------------------------------------------------------------------------------------------

local ShipSpawnerData = {
    {"MODELS/COMMON/SPACECRAFT/SENTINELSHIP/SENTINELSHIP_PROC.SCENE.MBIN", "Robot"},
}

function AddShipModelData(Model, Class)
    local result = [[
				<Property name="Spaceships" value="GcAISpaceshipModelData">
					<Property name="Filename" value="]]..Model..[[" />
					<Property name="Class" value="GcSpaceshipClasses">
						<Property name="ShipClass" value="]]..Class..[[" />
					</Property>
					<Property name="AIRole" value="GcAISpaceshipRoles">
						<Property name="AIShipRole" value="Standard" />
					</Property>
					<Property name="FrigateClass" value="GcFrigateClass">
						<Property name="FrigateClass" value="Combat" />
					</Property>
				</Property>]]
    return result
end

function GcAISpaceshipModelDataArray()
    local change_table = {}
    local sources = {"Civilian"} --Civilian, Pirate, Player

    for _, shipEntry in ipairs(ShipSpawnerData) do
        local model, class = table.unpack(shipEntry)
        for _, source in ipairs(sources) do
            local change_entry = {
                SKW = {source, "GcAISpaceshipModelDataArray"},
                PKW = {"Spaceships"},
                ADD_OPTION = "ADDendSECTION",
                ADD = AddShipModelData(model, class),
            }
            table.insert(change_table, change_entry)
        end
    end
    return {{MBIN_FS = [[METADATA\SIMULATION\SPACE\AISPACESHIPMANAGER.MBIN]], MXML_CT = change_table}}
end

------------------------------------------------------------------------------------------------------

-- Spawn Frequencies for T1-T3 + Outlaw System
function SpaceshipSpawnFreqMultipliers()
    return {{
            MBIN_FS = {mbin_file_source},
            MXML_CT = {{
                    PKW = {"SpaceshipSpawnFreqMultipliers"},
                    MATH_OP = "*",
                    REPLACE_TYPE = "ALLINSIDESECTION",
                    VCT = {{"IGNORE", SpawnFrequencyValue},}
            },}
        },
    }
end

-- Class weighting so Alien and Robot can spawn
function CivilianClassWeightings()
    return {{
            MBIN_FS = {mbin_file_source},
            MXML_CT = {{
                    SKW = {"SpaceshipWeightings", "GcAISpaceshipWeightingData"},
                    PKW = {"CivilianClassWeightings"},
                    REPLACE_TYPE = "ALL",
                    EXML_FLAGS = "OVERWRITE",
                    VCT = {
                        {"Alien", AlienSpawnWeighting},
                        {"Robot", RobotSpawnWeighting},
                    }
            },}
        },
    }
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
        {MBIN_CT = GcAISpaceshipModelDataArray()},
        {MBIN_CT = SpaceshipSpawnFreqMultipliers()},
        {MBIN_CT = CivilianClassWeightings()}
    },
}
