local modfilename = "NativeSentinelShips"
local lua_author  = "Silent"
local lua_version = "3.1"
local mod_author  = "Silent369"
local nms_version = "5.73"
local maintenance = mod_author
local exmlcreate  = true
local description = [[

Make it so Sentinel Ships can spawn natively and not be
restricted to recovering them from sentinel crash sites.

They use the same probability as Royal (Exotic) Ships so
don't expect them to show up very often at all.

You can increase Spaceship Spawn Frequency Multipliers
if you like but, i've left them at the default values.

You can alter the _RobotSpawnWeighting value below to
greatly increase their spawn chance. (Max: 100).

]]

--Modifies:
--GCSOLARGENERATIONGLOBALS.GLOBAL.MBIN
--METADATA\SIMULATION\SPACE\AISPACESHIPMANAGER.MBIN

------------------------------------------------------------------------------------------------------
ClassSpawnWeighting = 1 --Original "0"
SpawnFrequencyMulti = 2 --Spawn Frequencies within T1-T3 and Pirate economies. Resumed Default!
------------------------------------------------------------------------------------------------------
local mbin_file_source1 = [[METADATA\SIMULATION\SPACE\AISPACESHIPMANAGER.MBIN]]
local mbin_file_source2 = [[GCSOLARGENERATIONGLOBALS.GLOBAL.MBIN]]
------------------------------------------------------------------------------------------------------

function AddAISpaceshipModelData()
    return
[[
				<Property name="Spaceships" value="GcAISpaceshipModelData">
					<Property name="Filename" value="MODELS/COMMON/SPACECRAFT/SENTINELSHIP/SENTINELSHIP_PROC.SCENE.MBIN" />
					<Property name="Class" value="GcSpaceshipClasses">
						<Property name="ShipClass" value="Robot" />
					</Property>
					<Property name="AIRole" value="GcAISpaceshipRoles">
						<Property name="AIShipRole" value="Standard" />
					</Property>
					<Property name="FrigateClass" value="GcFrigateClass">
						<Property name="FrigateClass" value="Combat" />
					</Property>
				</Property>
]]
end

function GcAISpaceshipModelDataArray()
    local change_table = {}
    local sources = {"Civilian", "Pirate"} --Civilian, Pirate, Player

    for _, source in ipairs(sources) do
        local change_entry = {
            SKW = {source, "GcAISpaceshipModelDataArray"},
            PKW = {"Spaceships"},
            EXML_FLAGS = "OVERWRITE",
            ADD_OPTION = "ADDendSECTION",
            ADD = AddAISpaceshipModelData()
        }
        table.insert(change_table, change_entry)
    end

    return { { MBIN_FS = mbin_file_source1, MXML_CT = change_table } }
end

function SpaceshipSpawnFreqMultipliers()
    return {
        {
            MBIN_FS = {mbin_file_source2},
            MXML_CT =
            {
                {
                    PKW = {"SpaceshipSpawnFreqMultipliers"},
                    MATH_OP = "*",
                    REPLACE_TYPE = "ALLINSECTION",
                    VCT = {{"IGNORE", SpawnFrequencyMulti}}
                },
            }
        },
    }
end

function CivilianClassWeightings()
    return {
        {
            MBIN_FS = {mbin_file_source2},
            MXML_CT =
            {
                {
                    SKW = {"SpaceshipWeightings", "GcAISpaceshipWeightingData"},
                    PKW = {"CivilianClassWeightings"},
                    REPLACE_TYPE = "ALL",
                    VCT = {{"Robot", ClassSpawnWeighting},}
                },
            }
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
    EXML_CREATE     = exmlcreate,
    MODIFICATIONS   =
    {
        {MBIN_CT = GcAISpaceshipModelDataArray()},
        {MBIN_CT = SpaceshipSpawnFreqMultipliers()},
        {MBIN_CT = CivilianClassWeightings()}
    },
}
