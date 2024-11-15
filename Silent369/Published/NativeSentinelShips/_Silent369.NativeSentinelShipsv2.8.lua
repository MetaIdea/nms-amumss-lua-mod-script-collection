local modfilename = "NativeSentinelShips"
local lua_author  = "Silent"
local lua_version = "2.8"
local mod_author  = "Silent369"
local nms_version = "5.26"
local maintenance = mod_author
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
SpawnFrequencyMulti = 1 --Spawn Frequencies within T1-T3 and Pirate economies. Resumed Default!
------------------------------------------------------------------------------------------------------
local mbin_file_source = [[GCSOLARGENERATIONGLOBALS.GLOBAL.MBIN]]
------------------------------------------------------------------------------------------------------

function AddAISpaceshipModelData()
    return
[[
        <Property value="GcAISpaceshipModelData.xml">
          <Property name="Filename" value="MODELS/COMMON/SPACECRAFT/SENTINELSHIP/SENTINELSHIP_PROC.SCENE.MBIN" />
          <Property name="Class" value="GcSpaceshipClasses.xml">
            <Property name="ShipClass" value="Robot" />
          </Property>
          <Property name="AIRole" value="GcAISpaceshipRoles.xml">
            <Property name="AIShipRole" value="Standard" />
          </Property>
          <Property name="FrigateClass" value="GcFrigateClass.xml">
            <Property name="FrigateClass" value="Combat" />
          </Property>
        </Property>
]]
end

function GcAISpaceshipModelDataArray()
    local change_table = {}
    local sources = {"Civilian"} --Civilian, Pirate, Player

    for _, source in ipairs(sources) do
        local change_entry          = {
            SKW = {source, "GcAISpaceshipModelDataArray.xml"},
            PKW = {"Spaceships"},
            ADD_OPTION = "ADDendSECTION",
            ADD = AddAISpaceshipModelData()
        }
        table.insert(change_table, change_entry)
    end

    return { { MBIN_FS = [[METADATA\SIMULATION\SPACE\AISPACESHIPMANAGER.MBIN]], EXML_CT = change_table } }
end

function SpaceshipSpawnFreqMultipliers()
    return {
        {
            MBIN_FS = {mbin_file_source},
            EXML_CT = {
                {
                    PKW = {"SpaceshipSpawnFreqMultipliers"},
                    MATH_OP = "*",
                    ITF = "PRESERVE",
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
            MBIN_FS = {mbin_file_source},
            EXML_CT = {
                {
                    PKW = {"CivilianClassWeightings"},
                    ITF = "PRESERVE",
                    REPLACE_TYPE = "ALL",
                    VCT = {{"Robot", ClassSpawnWeighting},}
                },
            }
        },
    }
end

NMS_MOD_DEFINITION_CONTAINER =
{
    MOD_FILENAME    = string.format("_%s%s.pak", modfilename, "v"..lua_version),
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
